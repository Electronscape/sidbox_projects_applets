#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>

// #### DOS COMMANDS ///
// DOSCMD <Fields1> <Fields2> <Fields3> ...

#include "../../../_coreapi_/apis.h"


#define TILE_SIZE 20
#define MAP_WIDTH 20
#define MAP_HEIGHT 16

#define BIG_MAP_WIDTH  40
#define BIG_MAP_HEIGHT 30




uint8_t bigMap[BIG_MAP_HEIGHT][BIG_MAP_WIDTH];

// Initialize a simple patterned map
void initBigMap() {
    for (int y = 0; y < BIG_MAP_HEIGHT; y++) {
        for (int x = 0; x < BIG_MAP_WIDTH; x++) {
            // Borders are walls
            if (x == 0 || y == 0 || x == BIG_MAP_WIDTH - 1 || y == BIG_MAP_HEIGHT - 1) {
                bigMap[y][x] = 1;  // wall
            } else if ((x % 5 == 0) && (y % 5 == 0)) {
                bigMap[y][x] = 1;  // pillars every 5 tiles
            } else {
                bigMap[y][x] = 0;  // floor
            }
        }
    }
}

// Simple map data (0 = floor, 1 = wall)
uint8_t map[MAP_HEIGHT][MAP_WIDTH] = {
    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
    {1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1},
    {1,0,1,1,1,0,1,1,1,0,1,0,1,0,1,1,1,0,0,1},
    {1,0,1,0,1,0,0,0,1,0,1,0,1,0,0,0,1,0,1,1},
    {1,0,1,0,0,0,1,0,1,0,1,0,1,1,1,0,1,0,0,1},
    {1,0,1,1,1,1,1,0,1,0,1,0,0,0,1,0,1,1,0,1},
    {1,0,0,0,0,0,0,0,1,0,0,0,1,0,1,0,0,0,0,1},
    {1,0,1,1,1,1,1,1,1,1,1,0,1,0,1,1,1,1,0,1},
    {1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,1},
    {1,1,1,1,1,1,1,0,1,0,1,1,1,1,1,1,0,1,0,1},
    {1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,1,0,1},
    {1,0,1,1,1,1,1,0,1,1,1,1,1,1,0,1,0,1,0,1},
    {1,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,1},
    {1,0,1,1,1,1,1,1,1,1,0,1,0,1,1,1,1,1,0,1},
    {1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1},
    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
};

int playerX = 1, playerY =1;
uint8_t playerSprite[] = {
    0x00,0x18,0x3C,0x7E,0x7E,0x3C,0x18,0x00,
    0x00,0x18,0x3C,0x7E,0x7E,0x3C,0x18,0x00,
    0x00,0x18,0x3C,0x7E,0x7E,0x3C,0x18,0x00,
    0x00,0x18,0x3C,0x7E,0x7E,0x3C,0x18,0x00,
    0x00,0x18,0x3C,0x7E,0x7E,0x3C,0x18,0x00,
    0x00,0x18,0x3C,0x7E,0x7E,0x3C,0x18,0x00,
    0x00,0x18,0x3C,0x7E,0x7E,0x3C,0x18,0x00,
    0x00,0x18,0x3C,0x7E,0x7E,0x3C,0x18,0x00
};

void drawTile(int tx, int ty, uint8_t type) {
    int px = tx * TILE_SIZE;
    int py = ty * TILE_SIZE;
    if (type == 1) {
        *API->gfx.forecolour = 29;
    } else {
        //API->gfx.clearActiveDrawBuffer(0); // Clear as background
        *API->gfx.forecolour = 16;
    }
    API->gfx.rectf(px, py, px+TILE_SIZE, py+TILE_SIZE);
}


void drawMap() {
    for (int y = 0; y < MAP_HEIGHT; y++) {
        for (int x = 0; x < MAP_WIDTH; x++) {
            drawTile(x, y, map[y][x]);
        }
    }
}

void drawPlayer() {
    //api_blitSolid(4+playerX * TILE_SIZE, playerY * TILE_SIZE, 8, 16, playerSprite);
    SBAPI->gfx.blit(4+playerX * TILE_SIZE, playerY * TILE_SIZE, 8, 16, playerSprite);
}
 
#define DRAWBUFFA   RAM_LCD_DISPLAYBUFFER1
#define DRAWBUFFB   RAM_LCD_DISPLAYBUFFER2

void ShowBuffer(int db){
	if(db){
		*SBAPI->gfx.ActiveBuffer = DRAWBUFFA;	// Default locations - used in the OS, but safe to use
		*SBAPI->gfx.DrawBuffer 	= DRAWBUFFB;
	} else {
		*SBAPI->gfx.ActiveBuffer = DRAWBUFFB;	// Default locations - used in the OS, but safe to use
		*SBAPI->gfx.DrawBuffer 	= DRAWBUFFA;
	}
}

void clear_screen() {
    ShowBuffer(0);	// swap the active and drawbuffer around
    SBAPI->gfx.clearDrawBuffer(0);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)
    ShowBuffer(1);	// swap the active and drawbuffer around
    SBAPI->gfx.clearDrawBuffer(0);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)
}



int main(int argc, char *argv[]){
    uint8_t txt[128];
	DIVZEROOFF;			// turn off DIV BY ZERO error - sometimes the CPU just farts at random with this on
    SBAPI->gfx.setBacklightBrightness(255);	// turn off backlight	// so we hide all the messy graphics initialisation startup

	_Randseed=0;	// reset random seed to zero (boring, i know)
	dbug("Valhoola\n"); // send message to UART 
	SBAPI->sys.delayMs(30);	// wait for a moment

	initDisplayBuffers();	// setup graphics buffer pointers
    SBAPI->gfx.displaymode(480, 320, 480, 320, 0 );	// the big bitmap is double the height -- essential startup 
 
    *SBAPI->gfx.forecolour = 1;

    clear_screen();
    
    int db = 0;
    
    while (1) {
        

        // do the display bits after --------------
        // using the same screen buffer for draw and active buffer 
        API->gfx.clearDrawBuffer(0); // Clear screen

        

        drawMap();
        drawPlayer();

        //SBAPI->api_drawtextb(20,20, "Hello world!");

        uint32_t keys = API->sys.hwbuttons();
        int dx = 0, dy = 0;
        if (keys & BTN_UP) dy = -1;
        if (keys & BTN_DOWN) dy = 1;
        if (keys & BTN_LEFT) dx = -1;
        if (keys & BTN_RIGHT) dx = 1;

        int newX = playerX + dx;
        int newY = playerY + dy;

        if (map[newY][newX] == 0) {
            playerX = newX;
            playerY = newY;
        }

        ShowBuffer(db);
        db = 1 - db;
        
		// time to display it!
		SBAPI->gfx.waitvsync();
		SBAPI->gfx.render(1);		// 1 = dual layer render, vwait already done :)
        SBAPI->sys.delayMs(30);
		SBAPI->music.UpdatePlayer();			// need this to enable to the sound
    }

	return 0;	// exited with success
}






