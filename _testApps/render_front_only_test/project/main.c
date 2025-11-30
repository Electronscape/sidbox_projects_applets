#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>

#include "../../../_coreapi_/apis.h"

static uint8_t hwbutts;		// buffer for hardware button presses

volatile uint32_t tickme=0, vbcount=0, buttonpresses=0;
volatile uint8_t hours = 0, minutes = 0, seconds = 0;



// MAIN PROGRAM :)
int main(int arg){
    uint8_t txt[128];
	uint8_t exitCnt=0;

	DIVZEROOFF;			// turn off DIV BY ZERO error - sometimes the CPU just farts at random with this on
	SBAPI->gfx.setBacklightBrightness(255);	// turn off backlight	// so we hide all the messy graphics initialisation startup

	_Randseed=0;	// reset random seed to zero (boring, i know)
	dbug("Single Layer Draw\r\n\r\n"); // send message to UART 
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
	SBAPI->gfx.displaymode(480, 320, 480, 320, 0 );	// the big bitmap is double the height -- essential startup // singleLayer


	// clear forground (drawbuffer) to pallete index 0
	SBAPI->gfx.clearDrawBuffer(1);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)
	SBAPI->gfx.clearBackLayerBuffer(1);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)



	int8_t hr, mn, sc, day, wday, mon, year;
	int8_t lsc;

	// our main loop
	while(1){
		hwbutts = SBHWButtons();	// get button presses
       	if(hwbutts & BTN_FIRE2) {	// pressed, exit back out to the OS
			exitCnt++;
			if(exitCnt>4){	// hold for 1 second (50fps)
				return(0x7);
			}
			
       	} else exitCnt=0;



		SBAPI->sys.gettime(&hr, &mn, &sc);
		SBAPI->sys.getdate(&year, &mon, &day, &wday);

		sprintf(txt, "TIME: %02d:%02d:%02d - %02d/%02d/20%02d", hr, mn, sc, day, mon, year);

		if (lsc != sc){
			*SBAPI->gfx.forecolour = 255;
			*SBAPI->gfx.backcolour = 3;
			SBAPI->gfx.drawtextb(8, 8, txt);
		}

		// do the display bits after --------------
		//ShowBuffer(idb);	// swap the active and drawbuffer around
		//idb = 1 - idb;		// toggle buffer id
		// time to display it!
		SBAPI->gfx.waitvsync();
		if (lsc != sc){	// this is to stop the screen from sort of flickering (since we're drawing on the same buffer that might be already being drawn - not really good but tis is just to demonstrate)
			SBAPI->gfx.render(0);		// 1 = dual layer render, vwait already done :)
			lsc = sc;
		}
		SBAPI->music.UpdatePlayer();			// need this to enable to the sound
	}
	return 0;	// exited with success
}






