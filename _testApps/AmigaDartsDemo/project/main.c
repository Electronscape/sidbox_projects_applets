#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>

#include "../../../_coreapi_/apis.h"
//#include <api.h>

//#define api_cosfi(x) SBAPI->math.cosfi(x)
//#define api_sinfi(x) SBAPI->math.sinfi(x)

#define MAX_NME     6
#define MAX_FIRE    5
#define MAX_BANG    10
#define FIXED_SHIFT 16
#define SCREEN_CX   240
#define SCREEN_CY   160

// === Fixed-Point Macros ===
#define TOFIX(x)    ((x) << FIXED_SHIFT)
#define FROMFIX(x)  ((x) >> FIXED_SHIFT)

// === Types ===
typedef struct {
    int16_t x, y;
} vertex2d_t;

typedef struct {
    int32_t x, y, z;
    int32_t vx, vy, vz;
    int16_t rot_x, rot_y, rot_z;
    int16_t rvx, rvy, rvz;
    int32_t thrust;
    vertex2d_t projected[16];
    int32_t model[16][3]; // 3D local vertices
    uint8_t visible;      // used for culling
} object3d_t;

object3d_t nmes[MAX_NME];
object3d_t fire[MAX_FIRE];
object3d_t bangs[MAX_BANG];

// === Globals ===
int sincos_table[2048]; // interleaved sin/cos: sin(i), cos(i)
int frame = 0;
int reload = 0;
int mouseX = 0, mouseY = 0;

// === Precomputed Trig Table ===
void init_trig() {
    for (int i = 0; i < 1024; i++) {
        sincos_table[i * 2 + 0] = SBMathsinfi(i * 360 / 1024); 
        sincos_table[i * 2 + 1] = SBMathcosfi(i * 360 / 1024);
    }
}


static inline int fast_sinx(int deg) {
    deg &= 1023;
    return sincos_table[deg * 2 + 0];
}

static inline int fast_cosx(int deg) {
    deg &= 1023;
    return sincos_table[deg * 2 + 1];
}


// Rotates and projects a 3D point
void project_vertex(object3d_t *obj, int idx, int zoom) {
    int32_t x = obj->model[idx][0];
    int32_t y = obj->model[idx][1];
    int32_t z = obj->model[idx][2];

    // Rotation angles
    int ax = obj->rot_x & 1023;
    int ay = obj->rot_y & 1023;
    int az = obj->rot_z & 1023;

    // Get rotation values
    int sx = fast_sinx(ax), cx = fast_cosx(ax);
    int sy = fast_sinx(ay), cy = fast_cosx(ay);
    int sz = fast_sinx(az), cz = fast_cosx(az);

    // Rotate around X
    int ty = (y * cx - z * sx) >> 15;
    int tz = (y * sx + z * cx) >> 15;
    y = ty; z = tz;

    // Rotate around Y
    int tx = (x * cy + z * sy) >> 15;
    tz = (-x * sy + z * cy) >> 15;
    x = tx; z = tz;

    // Rotate around Z
    tx = (x * cz - y * sz) >> 15;
    ty = (x * sz + y * cz) >> 15;
    x = tx; y = ty;

    // Translate
    x += obj->x >> FIXED_SHIFT;
    y += obj->y >> FIXED_SHIFT;
    z += obj->z >> FIXED_SHIFT;

    if (z <= 32) {
        obj->visible = 0;
        return;
    }

    obj->projected[idx].x = SCREEN_CX + (x * zoom / z);
    obj->projected[idx].y = SCREEN_CY + (y * zoom / z);
    obj->visible = 1;
}


// === Model: Dart ===
void define_dart(object3d_t *obj) {
    memset(obj->model, 0, sizeof(obj->model));

    obj->model[0][2] = -1000; // tip
    obj->model[1][0] = -100; obj->model[1][2] = 0;
    obj->model[2][0] =  100; obj->model[2][2] = 0;
    obj->model[3][1] =  100; obj->model[3][2] = 0;
    obj->model[4][1] = -100; obj->model[4][2] = 0;
    obj->model[5][0] = -50;  obj->model[5][1] = 50; obj->model[5][2] = 200;
    obj->model[6][0] =  50;  obj->model[6][1] = 50; obj->model[6][2] = 200;
    obj->model[7][0] = -50;  obj->model[7][1] =-50; obj->model[7][2] = 200;
    obj->model[8][0] =  50;  obj->model[8][1] =-50; obj->model[8][2] = 200;
}

// === Drawing Dart ===
void draw_dart(object3d_t *obj) {
    if (!obj->visible) return;

    // Simple triangle fan (hardcoded faces)
    struct points poly[4];

    // Tip -> base quad
    for (int i = 1; i <= 4; i++) {
        poly[0].x = obj->projected[0].x;
        poly[0].y = obj->projected[0].y;
        poly[1].x = obj->projected[i].x;
        poly[1].y = obj->projected[i].y;
        poly[2].x = obj->projected[i % 4 + 1].x;
        poly[2].y = obj->projected[i % 4 + 1].y;
        SBAPI->gfx.drawpoly(poly, 3, 1, 1, 0);
    }

    // Back fins (5,6,7,8)
    for (int i = 5; i <= 8; i++) {
        poly[0].x = obj->projected[i].x;
        poly[0].y = obj->projected[i].y;
        poly[1].x = obj->projected[0].x;
        poly[1].y = obj->projected[0].y;
        poly[2].x = obj->projected[i == 8 ? 5 : i + 1].x;
        poly[2].y = obj->projected[i == 8 ? 5 : i + 1].y;
        SBAPI->gfx.drawpoly(poly, 3, 1, 1, 0);
    }
}


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

	init_trig();
	
	//SBAPI->api_lcdinit(220, FPS_50hz);	// 50fps landscape mode -- dont need to change stick to 40hz OS framerate for now ;)
	SBAPI->gfx.displaymode(480, 320, 480, 320, 0 );	// the big bitmap is double the height -- essential startup 
	//SBAPI->api_showbg(0,0);			// ensure that backbuffer offsets start at 0,0
	//SBAPI->api_lcdrender(0);		// render what we have on layer 0 (front) only

	
	int exitCnt = 0;

	int bx = 140, by = 140;
	int sbx = 4, sby = 4;

	object3d_t dart;
    memset(&dart, 0, sizeof(dart));
    define_dart(&dart);
    dart.z = TOFIX(3000);
	// our main loop
	while(1){
		hwbutts = SBHWButtons();	// get button presses
       	if(hwbutts & BTN_FIRE2) {	// pressed, exit back out to the OS
			exitCnt++;
			if(exitCnt>3){	// hold for 1 second (50fps)
				return(0x7);
			}
			
       	} else exitCnt=0;

		// clear forground (drawbuffer) to pallete index 0
		SBAPI->gfx.clearDrawBuffer(0);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)
		SBAPI->gfx.clearBackLayerBuffer(0);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)

		sprintf(txt, "Hello world!");

		*SBAPI->gfx.forecolour = 255;
		SBAPI->gfx.drawtextf(8, 8, txt);


		dart.rot_y += 2;
        if (dart.rot_y >= 1024) dart.rot_y = 0;

        for (int i = 0; i < 9; i++) project_vertex(&dart, i,1000);
        draw_dart(&dart);


		// do the display bits after --------------
		ShowBuffer(idb);	// swap the active and drawbuffer around
		idb = 1 - idb;		// toggle buffer id
		// time to display it!
		SBAPI->gfx.waitvsync();
		SBAPI->gfx.render(1);		// 1 = dual layer render, vwait already done :)
	}
	return 0;	// exited with success
}






