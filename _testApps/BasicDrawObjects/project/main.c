#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>

//#include "../../_coreapi_/apis.h"
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

struct polypoints poly1, poly2;

struct points polyshape[10];

__attribute__((packed, aligned(4))) 
volatile struct points star[10] = {
	{240,   0},   // Top (outer)
	{278,  78},   // Inner upper right
	{330,  78},   // Outer upper right
	{288, 132},   // Inner right
	{300, 200},   // Bottom-right outer
	{240, 140},   // Inner bottom
	{180, 200},   // Bottom-left outer
	{192, 132},   // Inner left
	{150,  78},   // Outer upper left
	{202,  78},   // Inner upper left
};


volatile struct points starover[10] = {
	{240,  30},   // Top
	{330, 180},   // Right tip
	{150, 180},   // Left tip
	{310,  60},   // Upper right inward
	{170, 300},   // Lower left inward
	{240, 100},   // Inner top
	{280, 270},   // Lower right outward
	{190,  60},   // Upper left inward
	{330, 300},   // Bottom-right spike
	{150,  60},   // Top-left spike
};


// MAIN PROGRAM :)
int main(int arg, char *argv[]){
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
	SBAPI->gfx.displaymode(480, 320, 480, 320, DISPFLAG_DUALLAYER );	// the big bitmap is double the height -- essential startup 
	//SBAPI->api_showbg(0,0);			// ensure that backbuffer offsets start at 0,0
	//SBAPI->api_lcdrender(0);		// render what we have on layer 0 (front) only

	
	int exitCnt = 0;

	int bx = 140, by = 140, bx2 = 200, by2 = 60;
	int sbx = 4, sby = 4, sbx2 = 2, sby2=2;

	poly1.x[0] = 300; poly1.y[0] = 30;
	poly1.x[1] = 420; poly1.y[1] = 300;
	poly1.x[2] = 200; poly1.y[2] = 270;

	poly2.x[0] = 100; poly2.y[0] = 50;
	poly2.x[1] = 300; poly2.y[1] = 260;
	poly2.x[2] = 20; poly2.y[2] = 315;


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

		*SBAPI->gfx.forecolour = 191;
		SBAPI->gfx.drawtextf(8, 8, txt);


		bx += sbx;
		by += sby;
		bx2 += sbx2;
		by2 += sby2;

		if(bx< 10 || bx>470) sbx = -sbx;
		if(by< 10 || by>310) sby = -sby;

		if(bx2< 10 || bx2>470) sbx2 = -sbx2;
		if(by2< 10 || by2>310) sby2 = -sby2;

		*SBAPI->gfx.forecolour = 255;
		//SBAPI->api_rectf(bx, by, bx+40, by+40);
		SBAPI->gfx.drawcircle(bx, by, 20, 0);
		SBAPI->gfx.drawcircle(bx2, by2, 20, 1);

		SBAPI->gfx.drawellipse(bx2, by, 60, 30, 1);


		poly1.x[1] = bx;
		*SBAPI->gfx.forecolour = 44;
		SBAPI->gfx.drawtriangle(&poly1, 1);

		*SBAPI->gfx.forecolour = 31;
		SBAPI->gfx.drawtriangle(&poly2, 0);

		*SBAPI->gfx.forecolour = 255;
		//SBAPI->api_drawpoly(concavePoly, 6, 1, 1);

		*SBAPI->gfx.forecolour = 3;
		//SBAPI->api_drawpoly(star, 10, 1, 1,0);
		//SBAPI->api_drawpoly(concavePoly, 6, 1, 0);
		SBAPI->gfx.drawpoly(starover, 10, 1, 1,0);

		*SBAPI->gfx.forecolour = 31;
		//SBAPI->api_drawpoly(star, 10, 1, 0,0);

		SBAPI->gfx.drawpoly(starover, 10, 1, 0,0);
		
		


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






