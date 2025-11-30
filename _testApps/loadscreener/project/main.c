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

#define ALIGN4(x) (((x) + 3) & ~3)

void loadScreenFromDisk(int index){
	char filenamer[32];
	int bytesread;
	sprintf(filenamer, "scr%u.bin", index);
	int res = SBAPI->filesys.open(0, filenamer, FA_OPEN_EXISTING | FA_READ);

	uint8_t *ad = *SBAPI->gfx.ActiveBuffer;

	if(res == FR_OK){
		SBAPI->filesys.read(0, ad, (480 * 320), &bytesread);
		SBAPI->filesys.close(0);
		dbug("Screen Loaded OK\r\n");
	} else dbug("file not loaded :( \r\n");
}

int main(int argc, char *argv[]) {
    uint8_t txt[128];
    uint8_t idb;
	DIVZEROOFF;			// turn off DIV BY ZERO error - sometimes the CPU just farts at random with this on
	SBAPI->gfx.setBacklightBrightness(255);	// turn off backlight

	_Randseed=0;
	SBAPI->sys.printf("Screenloader\r\n\r\n");
	SBAPI->sys.delayMs(10);



	SBAPI->gfx.initdisplay(220, FPS_50hz);	// 50fps landscape mode
	SBAPI->gfx.displaymode(480, 320, 480, 320, DISPFLAG_DUALLAYER);	// the big bitmap is double the height
	initDisplayBuffers();

	int screenIndex=0;
	int millisec;

	while(1){
		hwbutts = SBHWButtons();
       	if(hwbutts & BTN_FIRE2) {
           	int id;
			return(0x7);
       	}

		//SBAPI->api_clsa(5);		// clear foreground (i'll get this done with DMA for muuch faster clear)
		//SBAPI->api_clsb(5);		// clear foreground (i'll get this done with DMA for muuch faster clear)

		millisec = SBAPI->sys.systicks();
		loadScreenFromDisk(screenIndex + 1);	
		millisec = SBAPI->sys.systicks() - millisec;
		screenIndex++;
		if(screenIndex>4) screenIndex=0;

		sprintf(txt, "Hello world!! - be sure to have already changed DIR to here");
		SBGfxFGColour = 3;
		SBAPI->gfx.drawtextf(20, 20, txt);

		sprintf(txt, "ms %lu", millisec);
		SBAPI->gfx.drawtextf(20, 40, txt);

		ShowBuffer(idb);
		idb = 1 - idb;

		SBAPI->gfx.waitvsync();	// dont need this if using the APILCDRender(this uses a vsync)
		SBAPI->gfx.render(1);
		SBAPI->music.UpdatePlayer();	// use this if you have music to play
	}
	return 0;	// exited with success
}






