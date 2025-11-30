#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>

#include "../../_coreapi_/apis.h"

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

void HWBUTTISRR(){
	buttonpresses++;
}


// MAIN PROGRAM :)
int main(int arg){
    uint8_t txt[128];
    uint8_t idb;
	DIVZEROOFF;			// turn off DIV BY ZERO error - sometimes the CPU just farts at random with this on
	SBAPI->gfx.setBacklightBrightness(255);	// turn off backlight	// so we hide all the messy graphics initialisation startup

	_Randseed=0;	// reset random seed to zero (boring, i know)
	dbug("Dual Play\r\n\r\n"); // send message to UART 
	SBAPI->sys.delayMs(10);	// wait for a moment

	initDisplayBuffers();	// setup graphics buffer pointers

	// Stop all active channels playing
	StopChannel(0);
	StopChannel(1);
	StopChannel(2);
	StopChannel(3);
	StopChannel(4);
	StopChannel(5);
	StopChannel(6);
	StopChannel(7);
	
	//SBAPI->api_lcdinit(220, FPS_50hz);	// 50fps landscape mode -- dont need to change stick to 40hz OS framerate for now ;)
	SBAPI->gfx.displaymode(480, 320, 480, 320, 0 );	// the big bitmap is double the height -- essential startup 
	//SBAPI->api_showbg(0,0);			// ensure that backbuffer offsets start at 0,0
	//SBAPI->api_lcdrender(0);		// render what we have on layer 0 (front) only

	
	int exitCnt = 0;

	int bx = 140, by = 140;
	int sbx = 4, sby = 4;

	// our main loop
	while(1){
		hwbutts = SBHWButtons();	// get button presses
       	if(hwbutts & BTN_FIRE2) {	// pressed, exit back out to the OS
			exitCnt++;
			if(exitCnt>50){	// hold for 1 second (50fps)
				return(0x7);
			}
			
       	} else exitCnt=0;

		// clear forground (drawbuffer) to pallete index 0
		SBAPI->gfx.clearDrawBuffer(0);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)
		SBAPI->gfx.clearBackLayerBuffer(0);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)

		sprintf(txt, "Hello world!");

		*SBAPI->gfx.forecolour = 255;
		SBAPI->gfx.drawtextf(8, 8, txt);


		bx += sbx;
		by += sby;

		if(bx< 10 || bx>440) sbx = -sbx;
		if(by< 10 || by>280) sby = -sby;

		SBAPI->gfx.rectf(bx, by, bx+40, by+40);


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






