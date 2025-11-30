#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>

#include "../../../_coreapi_/apis.h"
#include "song.h"




static uint8_t hwbutts;		// buffer for hardware button presses

#define WIDTH 		(320/2)
#define HEIGHT 		(480/2)

#define HALF_WIDTH 	(WIDTH/2)
#define HALF_HEIGHT (HEIGHT/2)

#define SINTAB_SIZE 360




#if(1)
#define plasma ((uint8_t (*)[HALF_WIDTH])original_backlayerbuffer)

void ShowBuffer(int db){
	if(db){
		*SBAPI->gfx.ActiveBuffer = RAM_LCD_DISPLAYBUFFER1;	// Default locations - used in the OS, but safe to use
		*SBAPI->gfx.DrawBuffer 	= RAM_LCD_DISPLAYBUFFER2;
	} else {
		*SBAPI->gfx.ActiveBuffer = RAM_LCD_DISPLAYBUFFER2;	// Default locations - used in the OS, but safe to use
		*SBAPI->gfx.DrawBuffer 	= RAM_LCD_DISPLAYBUFFER1;
	}
}
#endif


// Align to 4 byte memory location
#define ALIGN4(x) (((x) + 3) & ~3)



uint32_t palette[256];

void init_palette() {
    for (int i = 0; i < 256; i++) {
        uint8_t r = (i & 0xE0);            // Red shades
        uint8_t g = (i << 1) & 0xE0;       // Green shades
        uint8_t b = (255 - i);             // Blue invert
        palette[i] = (0xFF << 24) | (r << 16) | (g << 8) | b;
    }
	palette[254] = 0x00;
    API->gfx.clut(palette, 0);
	SBAPI->sys.delayMs(10);
	API->gfx.clut(palette, 1);
	SBAPI->sys.delayMs(10);

	
}

void render_plasma_frame(int t) {
	 for (int y = 0; y < HALF_HEIGHT; y++) {
        int yval = (y * 8 + t) % SINTAB_SIZE;      // scaled for half resolution
        int y2val = ((y + t) * 6) % SINTAB_SIZE;

        for (int x = 0; x < HALF_WIDTH; x++) {
            int xval = (x * 10 + t) % SINTAB_SIZE;

            int sum = API->math.sinfi(xval) + API->math.sinfi(yval) + API->math.sinfi((x + y + t) % SINTAB_SIZE) + API->math.sinfi(y2val);
            int val = ((sum + 131072) * 255) / 262140;
            plasma[y][x] = (uint8_t)val;
        }
    }
}

int isqrt(int n) {
    int res = 0;
    int bit = 1 << 30;

    while (bit > n) bit >>= 2;
    while (bit != 0) {
        if (n >= res + bit) {
            n -= res + bit;
            res = (res >> 1) + bit;
        } else {
            res >>= 1;
        }
        bit >>= 2;
    }
    return res;
}

void render_plasma_frame2(int t, int mode) {
    for (int y = 0; y < HALF_HEIGHT; y++) {
        for (int x = 0; x < HALF_WIDTH; x++) {
            int sum = 0;

            switch (mode) {
				case 0: {
					int dx = x - HALF_WIDTH / 2;
					int dy = y - HALF_HEIGHT / 2;
					int r = (dx * dx + dy * dy * dx) >> 4;
					int ang = ((dx * 3 + dy * 5 + t * 2) % SINTAB_SIZE);

					sum = API->math.sinfi(r + t * 4) + API->math.cosfi(ang*2);
				}	break;

                case 1:
                    sum = API->math.sinfi((x * 10 + t) % SINTAB_SIZE)
                        + API->math.sinfi((y * 8 + t) % SINTAB_SIZE)
                        + API->math.sinfi((x + y + t) % SINTAB_SIZE)
                        + API->math.sinfi((y + t) * 6 % SINTAB_SIZE);
                    break;

                case 2:
                    sum = API->math.cosfi((x * 5 + t * 2) % SINTAB_SIZE)
                        + API->math.cosfi((y * 4 + t * 3) % SINTAB_SIZE);
                    break;

                case 3: {
                    int dx = x - HALF_WIDTH / 2;
                    int dy = y - HALF_HEIGHT / 2;
                    int dist = sqrtf(dx * dx + dy * dy);
                    sum = API->math.sinfi((dist * 4 + t * 2) % SINTAB_SIZE)
                        + API->math.cosfi(((x ^ y) + t * 3) % SINTAB_SIZE);
                } break;

				case 4:{
					int a = API->math.sinfi((x * 8 + t) % SINTAB_SIZE);
					int b = API->math.cosfi((y * 8 + t * 2) % SINTAB_SIZE);
					int c = API->math.sinfi(((x ^ y) + t * 3) % SINTAB_SIZE);
					sum = (a + b + c );//+ 131072) * 255) / 262140;
				} break;

				case 5:{	// Spiral Tunnel
					int dx = x - HALF_WIDTH / 2;
					int dy = y - HALF_HEIGHT / 2;

					int fake_angle = (dx * 7 + dy * 3 + t * 4) % 360;
					int fake_dist  = ((dx * dx + dy * dy) >> 5) + t * 2;  // Simulate distance

					sum = API->math.sinfi(fake_angle) + API->math.cosfi(fake_dist % 360);
				} break;

				case 6:{	// Radial Pulse
					int dx = x - HALF_WIDTH / 2;
					int dy = y - HALF_HEIGHT / 2;
					int dist2 = dx * dx + dy * dy; // No sqrt!

					sum = API->math.sinfi((dist2 >> 2) + t * 4);	
				}	break;

				case 7: {	// Wave Dance
					sum = API->math.sinfi((x * 6 + t * 3) % SINTAB_SIZE)
							+ API->math.sinfi((y * 3 + t * 2) % SINTAB_SIZE)
							+ API->math.cosfi((x * y + t) % SINTAB_SIZE);
				}break;

				case 8:{	// Plasma Explosion
					int dx = x - HALF_WIDTH / 2;
					int dy = y - HALF_HEIGHT / 2;
					int dist = dx * dx + dy * dy;
					sum = API->math.sinfi((dist / 2 + t * 4) % SINTAB_SIZE);
				} break;

				case 9:{ 	// Spinning Spiral Vortex
					int dx = x - HALF_WIDTH / 2;
					int dy = y - HALF_HEIGHT / 2;
					int dist = (dx * dx + dy * dy) >> 4;
					int angle = ((t * 5 + (dx * 3 - dy * 2)) % SINTAB_SIZE);
					sum = API->math.sinfi(angle) + API->math.cosfi(dist % SINTAB_SIZE);
				} break;

				case 10:{	// Lissajous Interference
					int a = API->math.sinfi((x * 6 + t * 3) % SINTAB_SIZE);
					int b = API->math.sinfi((y * 9 + t * 2) % SINTAB_SIZE);
					sum = (a ^ b) + API->math.cosfi((x + y + t) % SINTAB_SIZE);
				} break;

				case 11:{	// Circular Pulse Rings
					int dx = x - HALF_WIDTH / 2;
					int dy = y - HALF_HEIGHT / 2;
					int dist = (dx * dx + dy * dy) >> 3;

					sum = API->math.sinfi((dist + t * 4) % SINTAB_SIZE);
				} break;

				case 12:{	// Diagonal Shimmer
					sum = API->math.sinfi((x * 8 + y * 8 + t * 4) % SINTAB_SIZE)
							+ API->math.cosfi(((x ^ y) + t * 2) % SINTAB_SIZE);
				} break; 

				case 13:{	// Rotating Grid Tunnel
					int dx = x - HALF_WIDTH / 2;
					int dy = y - HALF_HEIGHT / 2;
					int r = (dx * dx + dy * dy) >> 4;
					int ang = ((dx * 3 + dy * 5 + t * 3) % SINTAB_SIZE);

					sum = API->math.sinfi(r + t * 2) + API->math.cosfi(ang);
					
				} break;

				case 14: {	// Ripple Outward
					int dx = x - HALF_WIDTH / 2;
					int dy = y - HALF_HEIGHT / 2;
					int dist = ((dx * dx + dy * dy) >> 3) + t * 3;
					sum = API->math.cosfi(dist % SINTAB_SIZE);
				} break;

				case 15: {	//
					int dx = x - HALF_WIDTH / 2;
					int dy = y - HALF_HEIGHT / 2;
					int angle = ((dx * 4 + dy * 3 + t * 4) % SINTAB_SIZE);
					int radius = ((dx * dx + dy * dy) >> 3) + t;

					sum = API->math.sinfi(angle) - API->math.cosfi(radius % SINTAB_SIZE);
				} break;

                default:
                    break;
            }

            int val = ((sum + 131072) * 255) / 262140;
            plasma[y][x] = (uint8_t)val;
        }
    }
}

void blit_to_lcd() { 

    uint32_t *buf1 = (uint32_t *)*API->gfx.DrawBuffer;
	uint32_t *buf2 = (uint32_t *)*API->gfx.DrawBuffer + 80;
	uint32_t *buf3 = (uint32_t *)*API->gfx.DrawBuffer + 160;
	uint32_t *buf4 = (uint32_t *)*API->gfx.DrawBuffer + 240;

	for (int py = 0; py < HALF_HEIGHT; py++) {
		for (int px = 0; px < HALF_WIDTH; px++) {
            uint8_t idx = plasma[py][px];
            uint8_t color = palette[idx];
			uint32_t color32 = (color << 24) | (color << 16) | (color << 8) | color;

			*(buf1++) = color32;
			*(buf2++) = color32;
			*(buf3++) = color32;
			*(buf4++) = color32;
        }
		buf1+=240;
		buf2+=240;
		buf3+=240;
		buf4+=240;
    }
}

// MAIN PROGRAM :)
int main(int arg){
    uint8_t txt[128];
    uint8_t idb;
	uint32_t palette[256];

	DIVZEROOFF;			// turn off DIV BY ZERO error - sometimes the CPU just farts at random with this on
	SBAPI->gfx.setBacklightBrightness(255);	// turn off backlight	// so we hide all the messy graphics initialisation startup
	uint8_t *frame = *API->gfx.DrawBuffer;

	_Randseed=0;	// reset random seed to zero (boring, i know)
	dbug("plasma fire\r\n\r\n"); // send message to UART 
	SBAPI->sys.delayMs(10);	// wait for a moment

	SBGfxDrawLineMode = 0;

	initDisplayBuffers();	// setup graphics buffer pointers

	// copy mod tune data to beginning of ram //
	// making sure the .ld file is adjusted to know the size of the mod 4478 in this case
	uint8_t *moddat = 0xD0000000;
	memcpy(moddat, tune, 4478);


	// Stop all active channels playing
	StopChannel(0);
	StopChannel(1);
	StopChannel(2);
	StopChannel(3);
	StopChannel(4);
	StopChannel(5);
	StopChannel(6);
	StopChannel(7);
	
	SBAPI->gfx.displaymode(480, 320, 480, 320, 0 );	// the big bitmap is double the height -- essential startup 

	init_palette();
	
	ShowBuffer(0);	// swap the active and drawbuffer around
	SBAPI->gfx.clearDrawBuffer(254);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)
	ShowBuffer(1);	// swap the active and drawbuffer around
	SBAPI->gfx.clearDrawBuffer(254);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)
	SBAPI->gfx.clearBackLayerBuffer(254);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)

	//SBAPI->filesys.changedir("/applets");
	//SBAPI->music.LoadAndplay("dt-funcky-sr.mod", AUDIO_MODE_MOD, 0);

	if(SBAPI->music.initplayer(AUDIO_MODE_MOD, 0) == AUDIO_MODE_MOD){
		dbug("MOD PLAY initiated!\n");
	}


	int exitCnt = 0;
	int t = 0;
	// our main loop
	int effectChangeTimer =0;
	int effect = 0;

	while(1){
		//uint8_t exiter = ExitCode();
		//if(exiter) return(exiter);
		

		effectChangeTimer++;
		if(effectChangeTimer>50){
			effectChangeTimer=0;
			effect ++;
			if(effect>15) effect =0;
		}
		
		render_plasma_frame2(t,effect);
		blit_to_lcd();

		t += 2;


		// do the display bits after --------------
		ShowBuffer(idb);	// swap the active and drawbuffer around
		idb = 1 - idb;		// toggle buffer id
		// time to display it!
		SBAPI->gfx.waitvsync();
		SBAPI->gfx.render(0);		// 1 = dual layer render, vwait already done :)
		SBAPI->music.UpdatePlayer();			// need this to enable to the sound

		EXITME;	// optional, hold right click to exit program
	}
	return 0;	// exited with success
}






