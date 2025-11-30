#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>

#include "../../../_coreapi_/apis.h"
#include "../../../_coreapi_/api_kfm.h"

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
	
	SBAPI->gfx.initdisplay(220, FPS_50hz);	// 50fps landscape mode -- dont need to change stick to 40hz OS framerate for now ;)
	SBAPI->gfx.displaymode(480, 320, 480, 320, 0 );	// the big bitmap is double the height -- essential startup 
	//SBAPI->api_showbg(0,0);			// ensure that backbuffer offsets start at 0,0
	//SBAPI->api_lcdrender(0);		// render what we have on layer 0 (front) only

	
	int exitCnt = 0;

	uint32_t oChannelConf, nChannelConf;
	
	// configure the audio systems
	SBAPI->snd.channelconfigs->reg = 0xAAFF;	// disable effects, but enable channels 0-7 and assign left and right bits
	EnableKFM();

	SBAPI->snd.AudioBufferSize(64);	// very low latency but might be scratchy
	SBAPI->snd.channelconfigs->channel_0_On = 1;

	SBAPI->snd.SYNTHGate(0, 0);	// everything off
	SBAPI->snd.SYNTHGate(1, 0);	// everything off
	SBAPI->snd.SYNTHGate(2, 0);	// everything off
	SBAPI->snd.SYNTHGate(3, 0);	// everything off
	SBAPI->snd.SYNTHGate(4, 0);	// everything off
	SBAPI->snd.SYNTHGate(5, 0);	// everything off
	SBAPI->snd.SYNTHGate(6, 0);	// everything off
	SBAPI->snd.SYNTHGate(7, 0);	// everything off

	SBAPI->snd.SYNTHfreq(0, 0);
	SBAPI->snd.SYNTHVol(0, 127);
	SBAPI->snd.SYNTHpwm(0, 64);


	
	uploadKFMCode(0, KFMProg);


	SBAPI->snd.channel[0]->lFreq = 0;
	SBAPI->music.EnableAutoPlayer(1);	// this enables the auto music update. it runs in the the internal DMA interrupt

	int kTimer=0;
	int inote = 0;

	SBAPI->snd.SYNTHGate(0, SYNTHBIT_PULSE | SYNTHBIT_ON);
	while(1){
		hwbutts = SBHWButtons();	// get button presses
       	if(hwbutts & BTN_FIRE2) {	// pressed, exit back out to the OS
			exitCnt++;
			if(exitCnt>5){	// hold for 1 second (50fps)
				SBAPI->snd.SYNTHGate(0, 0);
				return(0x7);
			}
			
       	} else exitCnt=0;

		SBAPI->gfx.clearDrawBuffer(0);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)
		SBAPI->gfx.clearBackLayerBuffer(0);	// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)

		kTimer++;
		if(kTimer>1){
			kTimer = 0;
			inote += 1;
			SBAPI->snd.channel[0]->lFreq = inote;
		}

		sprintf(txt, "Synth Audio Test VIA program: %lu", SBAPI->snd.channel[0]->lFreq);

		*SBAPI->gfx.forecolour = 255;
		SBAPI->gfx.drawtextf(8, 8, txt);


		ShowBuffer(idb);	// swap the active and drawbuffer around
		idb = 1 - idb;		// toggle buffer id
	
		// time to display it!
		SBAPI->gfx.waitvsync();
		SBAPI->gfx.render(0);		// 1 = dual layer render, vwait already done :)
		
	}

	return 0;	// exited with success
}






