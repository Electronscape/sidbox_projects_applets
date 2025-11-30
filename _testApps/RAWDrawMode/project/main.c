#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>

#include "../../../_coreapi_/apis.h"
#include "bit16pic.h"


/*
############################################################################################

	DEMONSTRATES THE DIRECT TO LCD DRAWING.
	This allows each pixel to be coloured in RGB565 mode
	0..31 - RED
	0..63 - GREEN
	0..31 - BLUE
	=> 16BIT colour scheme.

	there is NO colour look up table here, and can be ANY colour in any pixel technically
	a full 64k can be displayed.
	Using a 16bit Graphics Buffer.

	Limitations are that there is NO blending, and no DMA to screen.
	No layers, what ever you have in the buffer is drawn directly to the LCD

############################################################################################
*/

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


extern const uint16_t RawPic[];



#define SCREEN_W 480
#define SCREEN_H 320

__attribute__((aligned(4)))
static uint16_t PicFit[480 * 320] = {0};

#define MAX_POINTS 	5
#define NUM_TRAIL_FRAMES 36
#define GAPSIZE		3

typedef struct {
    int x1, y1, x2, y2;
    uint16_t color;
} TrailLine;

TrailLine trailFrames[NUM_TRAIL_FRAMES][MAX_POINTS];
int currentTrailFrame = 0;


int trail_head = 0;

typedef struct { int x, y, dx, dy; } Point;
Point pts[MAX_POINTS];

float globalHue = 0.0f; // 0..360 degrees

void updateHue() {
    globalHue += 1.0f; // Speed of hue change (degrees per frame)
    if (globalHue >= 360.0f) globalHue -= 360.0f;
}


float wrapHue(float h) {
    while (h >= 360.0f) h -= 360.0f;
    while (h < 0.0f) h += 360.0f;
    return h;
}



float fmodf_custom(float x, float y) {
    while (x >= y) x -= y;
    while (x < 0) x += y;
    return x;
}


// Convert HSV (h: 0-360, s,v: 0-1) to RGB565
uint16_t HSVtoRGB565(float h, float s, float v) {
    float c = v * s;
    //float x = c * (1 - fabsf(fmodf(h / 60.0f, 2) - 1));
	float x = c * (1 - fabsf(fmodf_custom(h / 60.0f, 2) - 1));

    float m = v - c;

    float r=0, g=0, b=0;
    if (h < 60) { r = c; g = x; b = 0; }
    else if (h < 120) { r = x; g = c; b = 0; }
    else if (h < 180) { r = 0; g = c; b = x; }
    else if (h < 240) { r = 0; g = x; b = c; }
    else if (h < 300) { r = x; g = 0; b = c; }
    else { r = c; g = 0; b = x; }

    uint8_t R = (uint8_t)((r + m) * 31); // 5 bits
    uint8_t G = (uint8_t)((g + m) * 63); // 6 bits
    uint8_t B = (uint8_t)((b + m) * 31); // 5 bits

    return (R << 11) | (G << 5) | B;
}

uint16_t fadeColor(uint16_t color, float factor) {
    int r = (color >> 11) & 0x1F;
    int g = (color >> 5)  & 0x3F;
    int b = (color >> 0)  & 0x1F;

    r = (int)(r * factor);
    g = (int)(g * factor);
    b = (int)(b * factor);

    if (r > 31) r = 31;
    if (g > 63) g = 63;
    if (b > 31) b = 31;

    return (r << 11) | (g << 5) | b;
}


void initMystify() {
    for (int i = 0; i < MAX_POINTS; i++) {
        pts[i].x = rand() % SCREEN_W;
        pts[i].y = rand() % SCREEN_H;
        pts[i].dx = (rand() % GAPSIZE) + (GAPSIZE/2);
        pts[i].dy = (rand() % GAPSIZE) + (GAPSIZE/2);
        if (rand() & 1) pts[i].dx = -pts[i].dx;
        if (rand() & 1) pts[i].dy = -pts[i].dy;
    }

    memset(trailFrames, 0, sizeof(trailFrames));
}


void stepMystify() {
   // Erase oldest frame
	int eraseFrame = (currentTrailFrame + 1) % NUM_TRAIL_FRAMES;
	for (int j = 0; j < MAX_POINTS; j++) {
		API->gfx.drawLineRaw(
			trailFrames[eraseFrame][j].x1,
			trailFrames[eraseFrame][j].y1,
			trailFrames[eraseFrame][j].x2,
			trailFrames[eraseFrame][j].y2,
			PicFit,
			0x0000 // black
		);
	}
		
	// Store new lines into current frame FIRST
	for (int i = 0; i < MAX_POINTS; i++) {
		int next = (i + 1) % MAX_POINTS;
		trailFrames[currentTrailFrame][i].x1 = pts[i].x;
		trailFrames[currentTrailFrame][i].y1 = pts[i].y;
		trailFrames[currentTrailFrame][i].x2 = pts[next].x;
		trailFrames[currentTrailFrame][i].y2 = pts[next].y;
		trailFrames[currentTrailFrame][i].color = 0xFFFF;  // bright white
	}

	// Then fade & draw
	for (int i = 0; i < NUM_TRAIL_FRAMES; i++) {
		int fadeIndex = (currentTrailFrame + i + 1) % NUM_TRAIL_FRAMES;
		float fadeFactor = (float)(i + 1) / NUM_TRAIL_FRAMES;

		for (int j = 0; j < MAX_POINTS; j++) {
			//uint16_t color = (i == 0) ? 0x0000 : fadeColor(trailFrames[fadeIndex][j].color, fadeFactor);

			
			float hue = wrapHue(globalHue + (i * (360.0f / 43)));
			uint16_t color = (i==0) ? 0x0000 : fadeColor(HSVtoRGB565(hue, 1.0f, 1.0f), fadeFactor);
			trailFrames[currentTrailFrame][i].color = color;
			


			API->gfx.drawLineRaw(
				trailFrames[fadeIndex][j].x1,
				trailFrames[fadeIndex][j].y1,
				trailFrames[fadeIndex][j].x2,
				trailFrames[fadeIndex][j].y2,
				PicFit,
				color
			);
		}
	}

    // Advance trail frame ring
    currentTrailFrame = (currentTrailFrame + 1) % NUM_TRAIL_FRAMES;

    // Move points...
    for (int i = 0; i < MAX_POINTS; i++) {
        pts[i].x += pts[i].dx;
        pts[i].y += pts[i].dy;

        if (pts[i].x < 1 || pts[i].x >= SCREEN_W - 1) pts[i].dx = -pts[i].dx;
        if (pts[i].y < 1 || pts[i].y >= SCREEN_H - 1) pts[i].dy = -pts[i].dy;

        if (pts[i].x < 1) pts[i].x = 1;
        if (pts[i].x > SCREEN_W - 1) pts[i].x = SCREEN_W - 1;

        if (pts[i].y < 1) pts[i].y = 1;
        if (pts[i].y > SCREEN_H - 1) pts[i].y = SCREEN_H - 1;
    }
}




// MAIN PROGRAM :)
int main(int arg){
    uint8_t txt[128];
    uint8_t idb;
	DIVZEROOFF;			// turn off DIV BY ZERO error - sometimes the CPU just farts at random with this on
	SBAPI->gfx.setBacklightBrightness(255);	// turn off backlight	// so we hide all the messy graphics initialisation startup

	_Randseed=0;	// reset random seed to zero (boring, i know)
	dbug("Draw Direct to LCD DRAWDRAWDemo V1.0\r\n\r\n"); // send message to UART 
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

	// render the image direct to the Image port! by pass all of the graphics engine
	SBAPI->gfx.rawrender(PicFit);

	
	int exitCnt = 0;
	int16_t xx = 10;
	int16_t yy = 10;
	int16_t xb, yb;
	uint16_t colourB;
	int tmr1=0;

	initMystify();

	memset(PicFit, 0x00, (480 * 320) * 2 );

	// our main loop
	while(1){
		hwbutts = SBHWButtons();	// get button presses
       	if(hwbutts & BTN_FIRE2) {	// pressed, exit back out to the OS
			exitCnt++;
			if(exitCnt>4){	// hold for 1 second (50fps)
				return(0x7);
			}
			
       	} else exitCnt=0;

		//xx++;
		//if(xx>400) {
		//	xx=10;
		//	yy++;
		//	if(yy>300) yy=10;
		//}

		xx = randomi(240);
		yy = randomi(160);
		xb = randomi(240);
		yb = randomi(160);

		if(xx<-240)	xx=-240;
		if(xx> 240) xx= 240;
		if(yy<-160)	yy=-160;
		if(yy> 160)	yy= 160;

		if(xb<-240)	xb=-240;
		if(xb> 240) xb= 240;
		if(yb<-160)	yb=-160;
		if(yb> 160)	yb= 160;

		xx += 240;
		xb += 240;

		yy += 160;
		yb += 160;

		//SBAPI->sys.printf("XX:%d, YY: %d, XB:%d, YB:%d\n", xx, yy, xb, yb);

		colourB = randomi(0xffff);

		//drawLineRaw(xx, yy, xb, yb, PicFit, colourB);
		//drawLineRaw(xx, yy, xb, yb, PicFit, colourB);

		updateHue();
		stepMystify();

		//drawLineRaw(400, 100, 10, 100, PicFit, colourB);

		//SBAPI->sys.delayMs(100);
		//drawPixelRaw(RawPic, xx, yy, 0xFF00);
		SBAPI->gfx.waitvsync();
		//if(tmr1++> 1)
		{	// since we dont have to keep updating the rawrender every time, it IS an intense update tho MUUUUUUUCH slower than gfx engine
			//tmr1=0;
			SBAPI->gfx.rawrender(PicFit);
		}
		
		SBAPI->music.UpdatePlayer();			// need this to enable to the sound
	}
	return 0;	// exited with success
}






