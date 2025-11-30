#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>

#include "../../../_coreapi_/apis.h"

#include "musicdat.h"

static uint8_t hwbutts;		// buffer for hardware button presses

const unsigned long clut32[] = {
	0x00000000, 0xFFFF5500, 0x440055FF, 0xFF3B67A2, 0xFFAA907C, 0xFF959595, 0xFF5D5D5D, 0xFFFFA997, 0xFF37A91D, 0xFF7CA9FF, 0xFFBF8112, 0xFFEBBF66, 0xFF78C178, 0xFF3D9318, 0xFFB33418, 0xFFD9311C, 
	0xFF000000, 0xFF00000E, 0xFF00001D, 0xFF00002B, 0xFF000139, 0xFF000147, 0xFF000156, 0xFF000164, 0xFF0001D2, 0xFF0001FF, 0xFFCECECE, 0xFF00FF00, 0xFFB2FF00, 0xFFFFE700, 0xFFFF9600, 0xFFFF1100, 
	0xFF491200, 0xFF491355, 0xFF4914AA, 0xFF4916FF, 0xFF5B1700, 0xFF5B1855, 0xFF5B19AA, 0xFF5B1AFF, 0xFF6D1B00, 0xFF6D1C55, 0xFF00E300, 0xFF85FF54, 0xFFC4FF00, 0xFFFFD900, 0xFFFFA41F, 0xFFE05400, 
	0xFFFF0000, 0xFF922655, 0xFF9227AA, 0xFF9228FF, 0xFFA42900, 0xFFA42A55, 0xFFA42BAA, 0xFFA42CFF, 0xFFB62D00, 0xFFB62F55, 0xFFB630AA, 0xFFB631FF, 0xFFC93200, 0xFFC93355, 0xFFC934AA, 0xFFC935FF, 
	0xFFDB3700, 0xFFDB3855, 0xFFDB39AA, 0xFFDB3AFF, 0xFFED3B00, 0xFFED3C55, 0xFFED3DAA, 0xFFED3FFF, 0xFFFF4000, 0xFFFF4155, 0xFFFF42AA, 0xFFFF43FF, 0xFF004400, 0xFF004555, 0xFF0046AA, 0xFF0048FF, 
	0xFFFFFF00, 0xFF12FF55, 0xFF12EE55, 0xFF12B6FF, 0xFF001FFF, 0xFF9D0EC7, 0xFFF10000, 0xFFFF7700, 0xFF375200, 0xFF375355, 0xFF3754AA, 0xFF3755FF, 0xFF495600, 0xFF495855, 0xFF4959AA, 0xFF495AFF, 
	0xFF5B5B00, 0xFF5B5C55, 0xFF5B5DAA, 0xFF5B5EFF, 0xFF6D6000, 0xFF6D6155, 0xFF6D62AA, 0xFF6D63FF, 0xFF6D6400, 0xFF806555, 0xFF8066AA, 0xFF8067FF, 0xFF926900, 0xFF926A55, 0xFF926BAA, 0xFF926CFF, 
	0xFFA46D00, 0xFFA46E55, 0xFFA46FAA, 0xFFA471FF, 0xFFB67200, 0xFFB67355, 0xFFB674AA, 0xFFB675FF, 0xFFC97600, 0xFFC97755, 0xFFC979AA, 0xFFC97AFF, 0xFFDB7B00, 0xFFDB7C55, 0xFFDB7DAA, 0xFFDB7EFF, 
	0xFFED7F00, 0xFFED8055, 0xFFED82AA, 0xFFED83FF, 0xFFFF8400, 0xFFFF8555, 0xFFFF86AA, 0xFFFF87FF, 0xFF008800, 0xFF008A55, 0xFF008BAA, 0xFF008CFF, 0xFF128D00, 0xFF128E55, 0xFF128FAA, 0xFF1290FF, 
	0xFF249200, 0xFF249355, 0xFF2494AA, 0xFF2495FF, 0xFF379600, 0xFF379755, 0xFF3798AA, 0xFF3799FF, 0xFF499B00, 0xFF499C55, 0xFF499DAA, 0xFF499EFF, 0xFF5B9F00, 0xFF5BA055, 0xFF5BA1AA, 0xFF5BA3FF, 
	0xFFA4B5D5, 0xFFA0B0F8, 0xFF94A3E6, 0xFF7C89C1, 0xFF6281C0, 0xFF1C62A1, 0xFF4254EA, 0xFF62A1BD, 0xFF7093C0, 0xFF4977A1, 0xFF003FAA, 0xFF1554FF, 0xFF1C50B9, 0xFF00B3FF, 0xFF0088AA, 0xFF00B5FF, 
	0xFF0E62FF, 0xFF5EB7E3, 0xFFBDC0B9, 0xFF85B9FF, 0xFF006CAF, 0xFF1F81B9, 0xFF3F5BAA, 0xFFC9BEFF, 0xFF5BAFCB, 0xFFDBC055, 0xFFDBC1AA, 0xFFBDC0C0, 0xFFEDC400, 0xFFEDC555, 0xFFEDC6AA, 0xFFEDC7FF, 
	0xFFFFC800, 0xFFFFC955, 0xFFFFCAAA, 0xFFFFCCFF, 0xFF00CD00, 0xFF00CE55, 0xFF00CFAA, 0xFF00D0FF, 0xFF12D100, 0xFF12D255, 0xFF12D3AA, 0xFF12D5FF, 0xFF24D600, 0xFF24D755, 0xFF24D8AA, 0xFF24D9FF, 
	0xFF37DA00, 0xFF37DB55, 0xFF37DDAA, 0xFF37DEFF, 0xFF49DF00, 0xFF49E055, 0xFF49E1AA, 0xFF49E2FF, 0xFF5BE300, 0xFF5BE555, 0xFF5BE6AA, 0xFF5BE7FF, 0xFF6DE800, 0xFF6DE955, 0xFF6DEAAA, 0xFF6DEBFF, 
	0xFF6DEC00, 0xFF80EE55, 0xFF80EFAA, 0xFF80F0FF, 0xFF93CEA2, 0xFF92F255, 0xFF92F3AA, 0xFF92F4FF, 0xFFA4F600, 0xFFA4F755, 0xFFA4F8AA, 0xFFA4F9FF, 0xFFB6FA00, 0xFFB6FB55, 0xFFB6FCAA, 0xFFB6FEFF, 
	0xFFC9FF00, 0xFFC9FF55, 0xFFC9FFAA, 0xFFC9FFFF, 0xFFDBFF00, 0xFFDBFF55, 0xFFDBFFAA, 0xFFDBFFFF, 0xFFEDFF00, 0xFFEDFF55, 0xFFEDFFAA, 0xFFEDFFFF, 0xFFFFFF00, 0xFFFFFF55, 0xFFFFFFAA, 0xFFFFFFFF, 
};

__attribute__((aligned(4))) 
volatile uint8_t fielda[960 * 640]; // big ass background image
volatile uint8_t fieldb[960 * 640]; // big ass foreground image

// Align to 4 byte memory location
#define ALIGN4(x) (((x) + 3) & ~3)

// MAIN PROGRAM :)
int main(int arg, char *argv[]){
    uint8_t txt[128];
    //uint8_t idb;
	DIVZEROOFF;			// turn off DIV BY ZERO error - sometimes the CPU just farts at random with this on
	SBAPI->sys.delayMs(100);
	SBAPI->gfx.setBacklightBrightness(255);	// turn off backlight	// so we hide all the messy graphics initialisation startup

	_Randseed=0;	// reset random seed to zero (boring, i know)
	dbug("Dual Play\r\n\r\n"); // send message to UART 
	SBAPI->sys.delayMs(10);	// wait for a moment

	// Stop all active channels playing
	StopChannel(0);
	StopChannel(1);
	StopChannel(2);
	StopChannel(3);
	StopChannel(4);
	StopChannel(5);
	StopChannel(6);
	StopChannel(7);

	// copy musicdata to beginning of ram
	uint8_t *modmem = 0xD0000000;
	memcpy(modmem, music, 56338);
	
	SBAPI->gfx.displaymode(960, 640, 960, 640, DISPFLAG_DUALLAYER );	// the big bitmap is double the height -- essential startup 

	// update the pallete, one of them has the an alpha blend ;)
	SBGfxPalleteUpdate(clut32, 0);
	SBGfxPalleteUpdate(clut32, 1);

	
	// draw foreground image
	*SBAPI->gfx.DrawBuffer 	= fielda;	// set lcd_drawbuffer for the api_graphics routines to work
	SBAPI->gfx.setBitmapDimentions(960, 640);	// set the current bitmap draw dimentions, without it, your draw,pixels,cirlces will look wrong
	static int colorindex=0;
	for(int i=640; i>0; i-=16){
		colorindex = 1 - colorindex;
		*SBAPI->gfx.forecolour = colorindex * 2;
		SBAPI->gfx.drawcircle(480,320, i,1);
	}


	// draw background image
	SBAPI->gfx.setBitmapDimentions(960, 640);	// set dimentions for drawing
	*SBAPI->gfx.DrawBuffer 	= (uint8_t *)fieldb;	// set lcd_drawbuffer for the api_graphics routines to work
	colorindex=1;
	for(int i=640; i>0; i-=16){
		colorindex = 1 - colorindex;
		*SBAPI->gfx.forecolour = colorindex * 1;
		SBAPI->gfx.drawcircle(480,320, i, 1);
	}
	
	SBAPI->snd.AudioBufferSize(512);	// very low latency but might be scratchy
	SBAPI->music.initplayer(AUDIO_MODE_MOD,0);
	SBAPI->music.EnableAutoPlayer(AUDIO_AUTOPLAYMODE_ON);


	dbug("Drawn BigBack Cirlces\r\n");


	// setting the layers - if not set, these could be anywhere in memory ;)
	// note, advised not to use the same buffer for both playfields (unexpected results)
	*SBAPI->gfx.ActiveBuffer		  = fielda;	// set the foreground buffer (playfield A)
	*SBAPI->gfx.ActiveBackLayerBuffer = fieldb;	// set the background buffer (playfield B)

	SBAPI->gfx.setFGViewport(0,0);
	SBAPI->gfx.setBGViewport(0,0);
	//ShowBuffer(0);
	
	
	int exitCnt = 0;

	int bitmap1x, bitmap1y, bitmap2x, bitmap2y;
	int rotation1 = 0;
	int rotation2 = 0;
	int rotation3 = 0;
	int rotation4 = 0;

	// our main loop
	while(1){
		hwbutts = SBHWButtons();	// get button presses
       	if(hwbutts & BTN_FIRE2) {	// pressed, exit back out to the OS
			exitCnt++;
			if(exitCnt>4){	// hold for 1 second (50fps)
				SBAPI->music.LoadAndplay("", 0, 0);	// just stops the music
				DIVZEROON;			// turn on DIV BY ZERO error- CPU would run slower with this left off
				return(0x7);
			}
			
       	} else exitCnt=0;

		rotation1 ++ ;  if(rotation1> 359)rotation1=0;
		rotation2 += 2 ;  if(rotation2> 359)rotation2=0;

		rotation3 += 3; if(rotation3> 359)rotation3=0;
		rotation4 += 4; if(rotation4> 359)rotation4=0;


		bitmap1x = 240 + SBMathCosff(rotation1) * (240);
		bitmap1y = 160 + SBMathsinff(rotation3) * (160);	// since -320 to +320 in a full sinff :)

		bitmap2x = 240 + SBMathCosff(rotation2) * (240);
		bitmap2y = 160 + SBMathsinff(rotation4) * (160);	// since -320 to +320 in a full sinff :)
		
		SBAPI->gfx.setFGViewport(bitmap1x, bitmap1y);
		SBAPI->gfx.setBGViewport(bitmap2x, bitmap2y);
		

		// do the display bits after --------------
		//ShowBuffer(idb);	// swap the active and drawbuffer around
		//idb = 1 - idb;		// toggle buffer id
		// time to display it!
		//SBAPI->gfx.waitvsync();
		SBAPI->gfx.render(1 | DISPRM_VBLANKWAIT | DISPFLAG_DUALLAYER);		// 1 = dual layer render, vwait already done :)
		//SBAPI->music.UpdatePlayer();			// need this to enable to the sound
	}
	return 0;	// exited with success
}






