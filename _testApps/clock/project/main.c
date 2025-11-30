#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>

#include "../../../_coreapi_/apis.h"

#include "back.h"

// TEST

const unsigned long clut32[] = {
	0x00090410, 0xFF5965BA, 0xFFFFFFFF, 0xFFEB9E00, 0xFF21F904, 0xFF000000, 0xFF00002C, 0xFF000000, 0xFF00E001, 0xFF400100, 0xFF02FF94, 0xFF8FA9CB, 0xFFED0FA3, 0xFF9CB4DA, 0xFF8BB3DE, 0xFFBCFB0F, 
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

typedef struct polypoints inf_polypoints ;
typedef struct points inf_points;


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


#define DEG2RAD(a) ((a) * M_PI / 180.0f)

// Draw clock hands
#define SIN_COS_SCALE 32000


void DrawClockHandsOLD(uint8_t hour, uint8_t min, uint8_t sec) {
    int cx = 240;
    int cy = 180;
    int r = 110;

    // Compute raw angles in degrees
    int angle_sec = (sec * 6) % 360;                    // 6 degrees per second
    int angle_min = (min * 6 + sec / 10) % 360;         // 6 degrees per min + small fraction (sec/10)
    int angle_hour = ((hour % 12) * 30 + min / 2) % 360; // 30 degrees per hour + 0.5 per min (min/2 because integer math)

    // Adjust so 0 deg = 12 o'clock = 270 deg on unit circle
    // Because your sinfi/cosfi probably assume 0 = 0 deg pointing right,
    // and clock 12 o'clock points up, which is 270 deg in math
    angle_sec = (angle_sec + 270) % 360;
    angle_min = (angle_min + 270) % 360;
    angle_hour = (angle_hour + 270) % 360;

    // Calculate hand endpoints using api_cosfi (X) and api_sinfi (Y)
    int x_sec = cx + (r * 9 / 10) * SBAPI->math.cosfi(angle_sec) / SIN_COS_SCALE;
    int y_sec = cy + (r * 9 / 10) * SBAPI->math.sinfi(angle_sec) / SIN_COS_SCALE;

    int x_min = cx + (r * 85 / 100) * SBAPI->math.cosfi(angle_min) / SIN_COS_SCALE;
    int y_min = cy + (r * 85 / 100) * SBAPI->math.sinfi(angle_min) / SIN_COS_SCALE;

    int x_hour = cx + (r * 6 / 10) * SBAPI->math.cosfi(angle_hour) / SIN_COS_SCALE;
    int y_hour = cy + (r * 6 / 10) * SBAPI->math.sinfi(angle_hour) / SIN_COS_SCALE;

    // Draw lines with color
    *SBAPI->gfx.forecolour = 64;  // Hour hand color
    SBAPI->gfx.drawline(cx, cy, x_hour, y_hour);

    *SBAPI->gfx.forecolour = 128; // Minute hand color
    SBAPI->gfx.drawline(cx, cy, x_min, y_min);

    *SBAPI->gfx.forecolour = 255; // Second hand color
    SBAPI->gfx.drawline(cx, cy, x_sec, y_sec);
}





void drawTaperedHandFi(int cx, int cy, int angleDeg, int length, int baseWidth, int midWidth, int tipWidth, int color) {
    // Direction vector (scaled)
    int dx = SBAPI->math.cosfi(angleDeg);   // scaled by SIN_COS_SCALE
    int dy = SBAPI->math.sinfi(angleDeg);

    // Perpendicular vector (angle + 90 degrees)
    int px = SBAPI->math.cosfi((angleDeg + 90) % 360);
    int py = SBAPI->math.sinfi((angleDeg + 90) % 360);

    // Segment lengths (integer)
    int seg1_len = (length * 3) / 10;  // 0.3 * length
    int seg2_len = (length * 6) / 10;  // 0.6 * length
    int seg3_len = length;              // full length

    // Calculate centerline points (integer math, scaled)
    // Note: (dx * seg_len) / SIN_COS_SCALE gives actual offset in pixels
    int x0 = cx;
    int y0 = cy;

    int x1 = cx + (dx * seg1_len) / SIN_COS_SCALE;
    int y1 = cy + (dy * seg1_len) / SIN_COS_SCALE;

    int x2 = cx + (dx * seg2_len) / SIN_COS_SCALE;
    int y2 = cy + (dy * seg2_len) / SIN_COS_SCALE;

    int x3 = cx + (dx * seg3_len) / SIN_COS_SCALE;
    int y3 = cy + (dy * seg3_len) / SIN_COS_SCALE;

    // Half widths
    int bw = baseWidth / 2;
    int mw = midWidth / 2;
    int tw = tipWidth / 2;

    // Calculate trapezoid points for each segment (using perpendicular vector scaled)
    // Note: (px * width) / SIN_COS_SCALE for pixel offset
    int s1_left_x0 = x0 - (px * bw) / SIN_COS_SCALE;
    int s1_left_y0 = y0 - (py * bw) / SIN_COS_SCALE;
    int s1_right_x0 = x0 + (px * bw) / SIN_COS_SCALE;
    int s1_right_y0 = y0 + (py * bw) / SIN_COS_SCALE;

    int s1_left_x1 = x1 - (px * mw) / SIN_COS_SCALE;
    int s1_left_y1 = y1 - (py * mw) / SIN_COS_SCALE;
    int s1_right_x1 = x1 + (px * mw) / SIN_COS_SCALE;
    int s1_right_y1 = y1 + (py * mw) / SIN_COS_SCALE;

    int s2_left_x1 = s1_left_x1;
    int s2_left_y1 = s1_left_y1;
    int s2_right_x1 = s1_right_x1;
    int s2_right_y1 = s1_right_y1;

    int s2_left_x2 = x2 - (px * tw) / SIN_COS_SCALE;
    int s2_left_y2 = y2 - (py * tw) / SIN_COS_SCALE;
    int s2_right_x2 = x2 + (px * tw) / SIN_COS_SCALE;
    int s2_right_y2 = y2 + (py * tw) / SIN_COS_SCALE;

    int s3_left_x2 = s2_left_x2;
    int s3_left_y2 = s2_left_y2;
    int s3_right_x2 = s2_right_x2;
    int s3_right_y2 = s2_right_y2;

    int s3_tip_x = x3;
    int s3_tip_y = y3;

    inf_polypoints tri;
    *SBAPI->gfx.forecolour = color;

    // Segment 1 trapezoid (base -> mid)
    // Triangle 1
    tri.x[0] = s1_left_x0;  tri.y[0] = s1_left_y0;  tri.z[0] = 0;
    tri.x[1] = s1_right_x0; tri.y[1] = s1_right_y0; tri.z[1] = 0;
    tri.x[2] = s1_left_x1;  tri.y[2] = s1_left_y1;  tri.z[2] = 0;
    SBAPI->gfx.drawtriangle(&tri, 1);

    // Triangle 2
    tri.x[0] = s1_right_x0; tri.y[0] = s1_right_y0; tri.z[0] = 0;
    tri.x[1] = s1_right_x1; tri.y[1] = s1_right_y1; tri.z[1] = 0;
    tri.x[2] = s1_left_x1;  tri.y[2] = s1_left_y1;  tri.z[2] = 0;
    SBAPI->gfx.drawtriangle(&tri, 1);

    // Segment 2 trapezoid (mid -> tip base)
    // Triangle 1
    tri.x[0] = s2_left_x1;  tri.y[0] = s2_left_y1;  tri.z[0] = 0;
    tri.x[1] = s2_right_x1; tri.y[1] = s2_right_y1; tri.z[1] = 0;
    tri.x[2] = s2_left_x2;  tri.y[2] = s2_left_y2;  tri.z[2] = 0;
    SBAPI->gfx.drawtriangle(&tri, 1);

    // Triangle 2
    tri.x[0] = s2_right_x1; tri.y[0] = s2_right_y1; tri.z[0] = 0;
    tri.x[1] = s2_right_x2; tri.y[1] = s2_right_y2; tri.z[1] = 0;
    tri.x[2] = s2_left_x2;  tri.y[2] = s2_left_y2;  tri.z[2] = 0;
    SBAPI->gfx.drawtriangle(&tri, 1);

    // Segment 3 triangle (tip base -> tip point)
    tri.x[0] = s3_left_x2; tri.y[0] = s3_left_y2; tri.z[0] = 0;
    tri.x[1] = s3_right_x2; tri.y[1] = s3_right_y2; tri.z[1] = 0;
    tri.x[2] = s3_tip_x; tri.y[2] = s3_tip_y; tri.z[2] = 0;
    SBAPI->gfx.drawtriangle(&tri, 1);
}



void drawDiamondHandFi_2tri(int cx, int cy, int angleDeg, int length,
                            int baseWidth, int midWidth, int midPosPercent,
                            int tipWidth, int color) {
    // direction vector
    int dx = SBAPI->math.cosfi(angleDeg);
    int dy = SBAPI->math.sinfi(angleDeg);
    // perpendicular vector
    int px = SBAPI->math.cosfi((angleDeg + 90) % 360);
    int py = SBAPI->math.sinfi((angleDeg + 90) % 360);

    int mid_len = (length * midPosPercent) / 100;

    // Points on centerline
    int x0 = cx;
    int y0 = cy;
    int x_mid = cx + (dx * mid_len) / SIN_COS_SCALE;
    int y_mid = cy + (dy * mid_len) / SIN_COS_SCALE;
    int x_tip = cx + (dx * length) / SIN_COS_SCALE;
    int y_tip = cy + (dy * length) / SIN_COS_SCALE;

    // Half widths
    int base_half = baseWidth / 2;
    int mid_half = midWidth / 2;
    int tip_half = tipWidth / 2;

    // Base left/right
    int base_left_x = x0 - (px * base_half) / SIN_COS_SCALE;
    int base_left_y = y0 - (py * base_half) / SIN_COS_SCALE;
    int base_right_x = x0 + (px * base_half) / SIN_COS_SCALE;
    int base_right_y = y0 + (py * base_half) / SIN_COS_SCALE;

    // Mid left/right
    int mid_left_x = x_mid - (px * mid_half) / SIN_COS_SCALE;
    int mid_left_y = y_mid - (py * mid_half) / SIN_COS_SCALE;
    int mid_right_x = x_mid + (px * mid_half) / SIN_COS_SCALE;
    int mid_right_y = y_mid + (py * mid_half) / SIN_COS_SCALE;

    // Tip left/right
    int tip_left_x = x_tip - (px * tip_half) / SIN_COS_SCALE;
    int tip_left_y = y_tip - (py * tip_half) / SIN_COS_SCALE;
    int tip_right_x = x_tip + (px * tip_half) / SIN_COS_SCALE;
    int tip_right_y = y_tip + (py * tip_half) / SIN_COS_SCALE;

    inf_polypoints tri;
    *SBAPI->gfx.forecolour = color;

    // Triangle 1: base left, mid left, mid right
    tri.x[0] = base_left_x; tri.y[0] = base_left_y; tri.z[0] = 0;
    tri.x[1] = mid_left_x;  tri.y[1] = mid_left_y;  tri.z[1] = 0;
    tri.x[2] = mid_right_x; tri.y[2] = mid_right_y; tri.z[2] = 0;
    SBAPI->gfx.drawtriangle(&tri, 1);

    // Triangle 2: base left, mid right, base right
    tri.x[0] = base_left_x;  tri.y[0] = base_left_y;  tri.z[0] = 0;
    tri.x[1] = mid_right_x;  tri.y[1] = mid_right_y;  tri.z[1] = 0;
    tri.x[2] = base_right_x; tri.y[2] = base_right_y; tri.z[2] = 0;
    SBAPI->gfx.drawtriangle(&tri, 1);

    // Triangle 3: mid left, tip left, tip right
    tri.x[0] = mid_left_x;  tri.y[0] = mid_left_y;  tri.z[0] = 0;
    tri.x[1] = tip_left_x;  tri.y[1] = tip_left_y;  tri.z[1] = 0;
    tri.x[2] = tip_right_x; tri.y[2] = tip_right_y; tri.z[2] = 0;
    SBAPI->gfx.drawtriangle(&tri, 1);

    // Triangle 4: mid left, tip right, mid right
    tri.x[0] = mid_left_x;  tri.y[0] = mid_left_y;  tri.z[0] = 0;
    tri.x[1] = tip_right_x; tri.y[1] = tip_right_y; tri.z[1] = 0;
    tri.x[2] = mid_right_x; tri.y[2] = mid_right_y; tri.z[2] = 0;
    SBAPI->gfx.drawtriangle(&tri, 1);
}

void DrawClockHandsPolyFi(int cx, int cy, int r, int hour, int min, int sec) {
    int angle_sec = (sec * 6 + 270) % 360;
    int angle_min = (min * 6 + sec / 10 + 270) % 360;
    int angle_hour = ((hour % 12) * 30 + min / 2 + 270) % 360;

    drawDiamondHandFi_2tri(cx, cy, angle_hour, (r * 6) / 10,    4,  14, 85, 2, 16);  // hour
    drawDiamondHandFi_2tri(cx, cy, angle_min, (r * 85) / 100,   4,  14, 85, 2, 16);  // min
    drawDiamondHandFi_2tri(cx, cy, angle_sec, (r * 85) / 100,     2,  2 , 50, 2, 3);   // sec
}

// Draw a short tick mark (line) on the circle at given angle
void drawMinuteTick(int cx, int cy, int angleDeg, int radius, int tickLength, int color) {
    int x_outer = cx + (radius * SBAPI->math.cosfi(angleDeg)) / SIN_COS_SCALE;
    int y_outer = cy + (radius * SBAPI->math.sinfi(angleDeg)) / SIN_COS_SCALE;

    int x_inner = cx + ((radius - tickLength) * SBAPI->math.cosfi(angleDeg)) / SIN_COS_SCALE;
    int y_inner = cy + ((radius - tickLength) * SBAPI->math.sinfi(angleDeg)) / SIN_COS_SCALE;

    *SBAPI->gfx.forecolour = color;
    SBAPI->gfx.drawline(x_inner, y_inner, x_outer, y_outer);
}

// Draw a diamond shape rotated to angleDeg at radius r from center
void drawRotatedDiamond(int cx, int cy, int angleDeg, int radius, int size, int color) {
     // Calculate sin and cos scaled values
    int sin_a = SBAPI->math.sinfi(angleDeg);
    int cos_a = SBAPI->math.cosfi(angleDeg);

    // Center of diamond on circle perimeter
    int cx_diamond = cx + (radius * cos_a) / SIN_COS_SCALE;
    int cy_diamond = cy + (radius * sin_a) / SIN_COS_SCALE;

    // Diamond corners relative to center (origin)
    inf_points corners[4] = {
        {0, size},    // top
        {size, 0},    // right
        {0, -size},   // bottom
        {-size, 0}    // left
    };

    // Rotated corners absolute positions
    inf_points rot_corners[4];

    for (int i = 0; i < 4; i++) {
        rot_corners[i].x = cx_diamond + (corners[i].x * cos_a - corners[i].y * sin_a) / SIN_COS_SCALE;
        rot_corners[i].y = cy_diamond + (corners[i].x * sin_a + corners[i].y * cos_a) / SIN_COS_SCALE;
    }

    // Now draw two triangles:
    // Triangle 1: top, right, bottom
    inf_polypoints tri1 = {
        .x = {rot_corners[0].x, rot_corners[1].x, rot_corners[2].x},
        .y = {rot_corners[0].y, rot_corners[1].y, rot_corners[2].y},
        .z = {0, 0, 0}
    };

    // Triangle 2: bottom, left, top
    inf_polypoints tri2 = {
        .x = {rot_corners[2].x, rot_corners[3].x, rot_corners[0].x},
        .y = {rot_corners[2].y, rot_corners[3].y, rot_corners[0].y},
        .z = {0, 0, 0}
    };

    *SBAPI->gfx.forecolour = color;
    SBAPI->gfx.drawtriangle(&tri1, 1);
    SBAPI->gfx.drawtriangle(&tri2, 1);
}

// Draw all ticks and diamonds around clock
void drawClockTicks(int cx, int cy, int radius, int tickLength, int diamondSize, int colorTick, int colorDiamond) {
    for (int i = 0; i < 60; i++) {
        int angle = (i * 6) % 360;
        if (i % 5 == 0) {
            drawRotatedDiamond(cx, cy, angle, radius-diamondSize, diamondSize, colorDiamond);
        } else {
            drawMinuteTick(cx, cy, angle, radius, tickLength, colorTick);
        }
    }
}


// MAIN PROGRAM :)
int main(int arg){
    uint8_t txt[128];
    uint8_t idb;

	uint8_t day, weekday, month, year, hour, min, second, clockBonker;

	DIVZEROOFF;			// turn off DIV BY ZERO error - sometimes the CPU just farts at random with this on
	SBAPI->gfx.setBacklightBrightness(255);	// turn off backlight	// so we hide all the messy graphics initialisation startup

	_Randseed=0;	// reset random seed to zero (boring, i know)
	//dbug("APPLET: Clock\r\n\r\n"); // send message to UART 
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
	
	SBAPI->gfx.displaymode(480, 320, 480, 320, DISPFLAG_DUALLAYER );	// the big bitmap is double the height -- essential startup 

	int exitCnt = 0;

	SBAPI->sys.gettime(&hour, &min, &second);
	SBAPI->sys.getdate(&year, &month, &day, &weekday);

	SBAPI->gfx.clearBackLayerBuffer(2);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)
	memcpy(original_backlayerbuffer, clockface1, 480 * 320);

    SBAPI->gfx.clut(clut32, 0);
    SBAPI->gfx.clut(clut32, 1);

	// our main loop
	while(1){
		hwbutts = SBHWButtons();	// get button presses
       	if(hwbutts & BTN_FIRE2) {	// pressed, exit back out to the OS
			exitCnt++;
			if(exitCnt>4){	// hold for 1 second (50fps)
				return(0x7);
			}
			
       	} else exitCnt=0;

		// clear forground (drawbuffer) to pallete index 0
		SBAPI->gfx.clearDrawBuffer(0);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)

		clockBonker++;
		SBAPI->sys.gettime(&hour, &min, &second);
		if(second != clockBonker){
			clockBonker = second;
			SBAPI->sys.getdate(&year, &month, &day, &weekday);
		}

		sprintf(txt, "TIME: %02d:%02d:%02d - %02d/%02d/20%02d", hour, min, second , day, month, year);

		drawClockTicks      (206, 172, 103, 10, 7, 16, 3);
		DrawClockHandsPolyFi(206, 172, 95, hour, min, second);

		*SBAPI->gfx.forecolour = 2;
		SBAPI->gfx.drawtextf(8 + (11*8), 290, txt);

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






