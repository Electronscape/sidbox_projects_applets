#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>

#include "../../../_coreapi_/apis.h"


static uint8_t hwbutts;

void ShowBuffer(int db){
	if(db){
		*SBAPI->gfx.ActiveBuffer = RAM_LCD_DISPLAYBUFFER1;	// Default locations - used in the OS, but safe to use
		*SBAPI->gfx.DrawBuffer 	= RAM_LCD_DISPLAYBUFFER2;
	} else {
		*SBAPI->gfx.ActiveBuffer = RAM_LCD_DISPLAYBUFFER2;	// Default locations - used in the OS, but safe to use
		*SBAPI->gfx.DrawBuffer 	= RAM_LCD_DISPLAYBUFFER1;
	}
}

int main(int arg, char *argv[]){
    uint8_t txt[128];
    uint8_t idb;
	DIVZEROOFF;			// turn off DIV BY ZERO error - sometimes the CPU just farts at random with this on
	SBAPI->gfx.setBacklightBrightness(255);	// turn off backlight

	_Randseed=0;
	dbug("Astroids Demo\r\n\r\n");
	SBAPI->sys.delayMs(10);


	initDisplayBuffers();
	SBAPI->gfx.initdisplay(220, FPS_50hz);	// 50fps landscape mode
	SBAPI->gfx.displaymode(480, 320, 480, 320, DISPFLAG_DUALLAYER);	// the big bitmap is double the height



	while(1){
		hwbutts = SBHWButtons();
       	if(hwbutts & BTN_FIRE2) {
           	int id;
			return(0x7);
       	}

		SBAPI->gfx.clearDrawBuffer(5);		// clear foreground (i'll get this done with DMA for muuch faster clear)
		SBAPI->gfx.clearBackLayerBuffer(5);		// clear foreground (i'll get this done with DMA for muuch faster clear)

		sprintf(txt, "Hello world!!");
		SBGfxFGColour = 3;
		SBAPI->gfx.drawtextf(20, 20, txt);

		ShowBuffer(idb);
		idb = 1 - idb;

		SBAPI->gfx.waitvsync();	// dont need this if using the APILCDRender(this uses a vsync)
		SBAPI->gfx.render(1);
		SBAPI->music.UpdatePlayer();	// use this if you have music to play
	}
	return 0;	// exited with success
}






