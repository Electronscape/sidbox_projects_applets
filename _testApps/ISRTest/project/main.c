#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>

#include "../../../_coreapi_/api_kbsupport.h"

#include "../../../_coreapi_/apis.h"

static uint8_t hwbutts;		// buffer for hardware button presses

void ShowBuffer(int db){
	if(db){
		*SBAPI->gfx.ActiveBuffer = RAM_LCD_DISPLAYBUFFER1;	// Default locations - used in the OS, but safe to use
		*SBAPI->gfx.DrawBuffer 	= RAM_LCD_DISPLAYBUFFER2;
	} else {
		*SBAPI->gfx.ActiveBuffer = RAM_LCD_DISPLAYBUFFER2;	// Default locations - used in the OS, but safe to use
		*SBAPI->gfx.DrawBuffer 	= RAM_LCD_DISPLAYBUFFER1;
	}
}

// Align to 4 byte memory location
#define ALIGN4(x) (((x) + 3) & ~3)


volatile uint32_t tickme=0, vbcount=0, buttonpresses=0;
volatile uint8_t hours = 0, minutes = 0, seconds = 0;

void ISRTimerA(){
	tickme ++;
}

void ISRTimerB(){
    seconds++;
    if (seconds >= 60) {
        seconds = 0;
        minutes++;

        if (minutes >= 60) {
            minutes = 0;
            hours++;

            if (hours >= 24)
                hours = 0;
        }
    }
}


void VBISRR(){
	vbcount++;
}

uint8_t joyportbits;
void JP_ISR(uint8_t *portbits){
	buttonpresses++;
	joyportbits = *portbits;
}




long timeG=0;
// MAIN PROGRAM :)
int main(int arg, char *argv[]){
    uint8_t txt[128];
    uint8_t idb;
	DIVZEROOFF;			// turn off DIV BY ZERO error - sometimes the CPU just farts at random with this on
	SBAPI->gfx.setBacklightBrightness(255);	// turn off backlight	// so we hide all the messy graphics initialisation startup

	_Randseed=0;	// reset random seed to zero (boring, i know)
	dbug("ISR test launch\r\n\r\n"); // send message to UART 
	SBAPI->sys.delayMs(10);	// wait for a moment

	initDisplayBuffers();	// setup graphics buffer pointers

	textbuffer_index=0;
	memset(textbuffer, 0x00, 64);

	// Stop all active channels playing
	StopChannel(0);
	StopChannel(1);
	StopChannel(2);
	StopChannel(3);
	StopChannel(4);
	StopChannel(5);
	StopChannel(6);
	StopChannel(7);
	
	SBAPI->gfx.displaymode(480, 320, 480, 320, DISPFLAG_DUALLAYER );	// the big bitmap is double the height -- essential startup 

	SBAPI->sys.timer[0]->isr = &ISRTimerA;
	SBAPI->sys.timer[0]->Prescale = 22550;	// Timer Buss speed 225.5Mhz
	SBAPI->sys.timer[0]->AutoReload = 991;	// 1 second roll over (1000 * 10) - 1
	

	SBAPI->sys.timer[1]->isr = &ISRTimerB;
	SBAPI->sys.timer[1]->Prescale = 22550;	// Timer Buss speed 225.5Mhz
	SBAPI->sys.timer[1]->AutoReload = 9999;	// 1 second roll over (1000 * 10) - 1
	
	SBAPI->sys.timerAConf(3);	// enable, and interupt 
	SBAPI->sys.timerBConf(3);	// enable, and interupt 

	SBAPI->sys.interruptVector->vb_isr = &VBISRR;
	SBAPI->sys.interruptVector->hwbuttons_isr = &JP_ISR;
	SBAPI->sys.interruptVector->keyboard_isr = &KB_ISR;
	
	int exitCnt = 0;

	int bx = 140, by = 140;
	int sbx = 4, sby = 4;

	// our main loop
	while(1){
		hwbutts = SBHWButtons();	// get button presses
       	if(hwbutts & BTN_FIRE2) {	// pressed, exit back out to the OS
			exitCnt++;
			if(exitCnt>4){	// hold for 1 second (50fps)
				return(0x7);
			}
			
       	} else exitCnt=0;

		// clear forground (drawbuffer) to pallete index 0
		SBAPI->gfx.clearDrawBuffer(0);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)
		SBAPI->gfx.clearBackLayerBuffer(0);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)

		sprintf(txt, "Hello world!\r\nTIMER: %02u:%02u:%02u\r\nTicks: %lu\r\nVBs:%lu\r\nButton Hits: %lu", hours, minutes, seconds, tickme, vbcount, buttonpresses);
		*SBAPI->gfx.forecolour = 46;
		SBAPI->gfx.drawtextf(8, 8, txt);

		sprintf(txt, "KB: %02X %02X %02X %02X %02X %02X %02X %02X ", 
			last_keyReport[0], last_keyReport[1], last_keyReport[2], last_keyReport[3], 
			last_keyReport[4], last_keyReport[5], last_keyReport[6], last_keyReport[7]);
		SBAPI->gfx.drawtextf(8, 160, txt);


		sprintf(txt, "U:%u D:%u L:%u R:%u F1:%u F2:%u", 
			!!(joyportbits & BTN_UP),
			!!(joyportbits & BTN_DOWN),
			!!(joyportbits & BTN_LEFT),
			!!(joyportbits & BTN_RIGHT),
			!!(joyportbits & BTN_FIRE),
			!!(joyportbits & BTN_FIRE2)
		);
		SBAPI->gfx.drawtextf(8, 190, txt);



		// Keyboard interface (Crude but may work?)
		SBAPI->gfx.drawtextf(8, 300, textbuffer);



		bx += sbx;
		by += sby;

		if(bx< 40 || bx>440) sbx = -sbx;
		if(by< 40 || by>280) sby = -sby;

		SBAPI->gfx.rectf(bx, by, bx+40, by+40);

		timeG++;
		if(timeG>30){
			//dbug("BX: %lu  BY: %lu    ", bx, by);
			timeG=0;
		}


		// do the display bits after --------------
		ShowBuffer(idb);	// swap the active and drawbuffer around
		idb = 1 - idb;		// toggle buffer id
		// time to display it!
		SBAPI->gfx.waitvsync();
		SBAPI->gfx.render(1);		// 1 = dual layer render, vwait already done :)
		SBAPI->music.UpdatePlayer();			// need this to enable to the sound
	}
	return 0;	// exited with success
}






