#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>

#include "../../../_coreapi_/apis.h"

#include "boingsnd.h"
#include "boingback.h"
#include "boinggfx.h"


static uint8_t hwbutts;		// buffer for hardware button presses

volatile uint8_t *fgmem;	// painter to the forground draw buffer
volatile uint8_t *bgmem;	// pointer to backbuffer memory

uint8_t *boungSound = sndfx;	// point to our Sound Effect in .h file

// Colour pallete data constant
const unsigned long AmigaColourBall[] = {
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00DD813E, 0x00B6B6B6, 0x00FF00FF, 0x00FF0000, 0x00FF0000, 0x00FF0000, 0x00FF0000, 0x00FFFFFF, 0x00FFFFFF, 0x00FFFFFF, 0x00FFFFFF, 
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 
};

volatile uint32_t clut[256];	// out colour pallete, once its processed -> this gets updated and sent to the GFX engine


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

// load const source pallete infomration into the CLUT ram (so we can mess with this later)
void CLUTAlpha(uint32_t *src){
	uint32_t val, g;
	for(g = 0; g < 256; g++){
		val = src[g];
		val |= 0xFF000000;	// whack the alpha channels on full
		clut[g] = val;
	}
	clut[0] = 0x00;
	clut[5] = 0x55808080;	// this is added to give the shadow the grey and half bright look (blendy blendy!! :) 
}

// MAIN PROGRAM :)
int main(int arg, char *argv[]){
    uint8_t txt[128];
    uint8_t idb;
	DIVZEROOFF;			// turn off DIV BY ZERO error - sometimes the CPU just farts at random with this on
	SBAPI->gfx.setBacklightBrightness(255);	// turn off backlight	// so we hide all the messy graphics initialisation startup

	_Randseed=0;	// reset random seed to zero (boring, i know)
	dbug("Boing Demo\r\n\r\n"); // send message to UART 
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

	// assign the channel with what sound pointer.
	ChannelAssign(0, boungSound+72, 22050, 127, 39357-72, 0);	
	ChannelAssign(1, boungSound+72, 22050, 127, 39357-72, 0);
		
	
	// graphics and display setup
	*SBAPI->gfx.ActiveBackLayerBuffer  = (uint8_t*)boingback;	// change the boing background (image preprocessed to rotate 90degrees to fit in our landscape mode)
	
	SBAPI->gfx.initdisplay(220, FPS_50hz);	// 50fps landscape mode
	SBAPI->gfx.displaymode(480, 320, 480, 320, DISPFLAG_DUALLAYER );	// the big bitmap is double the height
	SBAPI->gfx.setFGViewport(0,0);			// ensure that backbuffer offsets start at 0,0

	CLUTAlpha(AmigaColourBall);		// setup the colours for our colour look up
	SBAPI->gfx.clut(clut, 0);	// back ground	send colour information to GFX engine
	SBAPI->gfx.clut(clut, 1);	// fore ground
	SBAPI->gfx.render(0);		// render what we have on layer 0 (front) only

	// Setup the channels we want, channel 0 and 1 - on, channel 0 (left), channel 1 (right), switched off Sound AGC,StereoMix,EQ
	uint32_t audctrlbits =  (uint32_t)( AUDIOFLAG_CHANNEL0ON ) | ( AUDIOFLAG_CHANNEL1ON | AUDIOFLAG_CHANNEL1LR );
	SBAPI->snd.channelconfigs->reg = audctrlbits;


	// Boing Ball Physics
	int ballx = 20, ballsx = 3;
	int bally = 20;
	float vel_y = 0.0f;

	// Cycle timing
	int cycletimer=0;
	int cycledir = 0;

	// our main loop
	while(1){
		hwbutts = SBHWButtons();	// get button presses
       	if(hwbutts & BTN_FIRE2) {	// pressed, exit back out to the OS
			return(0x7);
       	}

		// clear forground (drawbuffer) to pallete index 0
		SBAPI->gfx.clearDrawBuffer(0);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)

		// process the ball physics
		ballx += ballsx;
		vel_y += 0.25f;
		bally += vel_y;

		if(bally> (320-190)){
			bally = (320-190);
			vel_y = - vel_y;
			SBAPI->snd.channel[0]->lSampleOffset = 0;
			SBAPI->snd.channel[1]->lSampleOffset = 0;
			SBAPI->snd.channel[0]->bPlaying = 1;
			SBAPI->snd.channel[1]->bPlaying = 1;
		}

		if(ballx<0 || ballx>(480-192)) {
			ballsx = -ballsx;
			cycledir = 1 - cycledir;

			SBAPI->snd.channel[0]->lSampleOffset = 0;
			SBAPI->snd.channel[1]->lSampleOffset = 0;
			SBAPI->snd.channel[0]->bPlaying = 1;
			SBAPI->snd.channel[1]->bPlaying = 1;
		}
		SBAPI->gfx.blit(ballx, bally, 192, 192, ballgfx);		// blit the boing ball
		
		ShowBuffer(idb);	// swap the active and drawbuffer around
		idb = 1 - idb;		// toggle buffer id

		// crude colour pallet cycle routine.
		uint32_t tempCol;
		if(cycletimer++ > 0){
			cycletimer = 0;
			if(cycledir){
				tempCol = clut[15];	// keep the last colour
				clut[15] = clut[14];
				clut[14] = clut[13];
				clut[13] = clut[12];
				clut[12] = clut[11];
				clut[11] = clut[10];
				clut[10] = clut[9];
				clut[9] = clut[8];
				clut[8] = tempCol;
			} else {
				tempCol = clut[8];	// keep the last colour
				clut[8] = clut[9];
				clut[9] = clut[10];
				clut[10] = clut[11];
				clut[11] = clut[12];
				clut[12] = clut[13];
				clut[13] = clut[14];
				clut[14] = clut[15];
				clut[15] = tempCol;
			}
		}

		// time to display it!
		SBAPI->gfx.clut(clut, 1);						// update colour pallete
		//SBAPI->api_waitvsync();						// vwait - the lcdrender also waits, for slower action here
		SBAPI->gfx.render(DISPRM_VBLANKWAIT | 1);		// 1 = dual layer render and vblank
		SBAPI->music.UpdatePlayer();					// need this to enable music and sound.
	}
	return 0;	// exited with success
}






