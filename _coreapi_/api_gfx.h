#ifndef API_GFX_H
#define API_GFX_H

void drawLineRaw(int x0, int y0, int x1, int y1, uint16_t *buffer, uint16_t col);
void drawPixelRaw(uint16_t *buffer, int x, int y, uint16_t col);

// LCD DEFINES ------
#define SCREEN_FLAGS	220			// rotation 90 to fit landscape you can mess with this if you want, but might get some strange effects though ;)
#define FPS_25hz	0
#define FPS_40hz	1
#define FPS_50hz	2
#define FPS_60hz	3

// GRAPHICS ARCHITECTURE //
#define SF_SCREENWIDTH  			480	// default
#define SF_SCREENHEIGHT 			320
#define SF_STRIDE      				SF_SCREENHEIGHT  // Assuming 320 bytes per column in DBBufferDraw

// API->Drawmode
#define GFX_PIXELNORM				0	// 0 single pixel
#define GFX_PIXELDBL				1	// 1 double width, height size

// DISPLAY FLAGS	-- INIT DISPLAY FLAGS	(DISPFLAG_DISPLAYON | DISPFLAG_DUALLAYER | DISPFLAG_BUFFERWAIT)
#define DISPFLAG_DISPLAYAUTO		0x01	// auto refresh - dont need to call to render (its experimental)
#define DISPFLAG_DUALLAYER			0x02	// enable dual layer mode, otherwise single layer
#define DISPFLAG_BUFFERWAIT			0x80	// (experimental fun)
#define DISPFLAG_DEFAULTS			0x00	// nothing special

// use this on the api_lcdrender(flags)
#define DISPRM_1LAYER				0x00
#define DISPRM_2LAYER				0x01
#define DISPRM_VBLANKWAIT			0x80


// TYPEDEF ----------
__attribute__((packed, aligned(4)))
typedef struct polypoints {
	int x[3];	// 2D X
	int y[3];	// 2D Y
	int z[3];	// 3D Z - not used for DrawPoly, but if you're just doing just 2D, Z might be handy for buffers later
} ;

__attribute__((packed, aligned(4)))
typedef struct points {
	int x, y;
} ;



/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ########################################################################################################### //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
struct __attribute__((aligned(4))) gfx_api  {	// ################### GRAPHICS #################################
	// GRAPHICS HARDWARE API /////////////////////////////////
	void 	(*initdisplay)				(unsigned short dat, char fps);	// initialise the LCD (reset, setup)
	void	(*defauldispbuffers)		(void);						// use this to reset the display buffers to default OS display memories, can then READ ActiveBuffer, ActiveBackLayerBuffer, and DrawBuffer after if needed
	void 	(*render)					(uint8_t mode);				// trigger buffer to LCD update
	void 	(*setBacklightBrightness)	(int bright); 				// 0 - off, 255 - full brightness
	void 	(*waitvsync)				(void);						// wait for LCD VSYNC pulse
	uint8_t (*checkVSync)				(void);						// get vsync flag status, flag vsync interrupt
	void 	(*clearVSyncFlag)			(void);						// clear vsync flag status
	void 	(*clut)						(uint32_t *NEWCLUT, uint8_t layer);	// Colour pallete update (0 background, 1 foregound)

	// RAW WRITES //
	void	(*rawrender)				(uint16_t *src);				// 16bit RGB565 only!! no alpha mapping
	void 	(*drawLineRaw)				(int x0, int y0, int x1, int y1, uint16_t *buffer, uint16_t col);
	void 	(*drawPixelRaw)				(int x, int y, uint16_t *buffer, uint16_t col);

	// set the current buffer (two front display buffers 0 or 1)
	// viewport settings, if your image is bigger than the view port, put the size of the largest image
	void 	(*displaymode)				(int fgwidth, int fgheight, int bgwidth, int bgheight, int flags);

	// double buffering
	uint8_t **ActiveBuffer;				// TopLayer being sent to the LCD
	uint8_t **ActiveBackLayerBuffer;	// BackLayer being sent to the LCD (these are blended together)
	uint8_t **DrawBuffer;				// the buffer that is going to be used for drawing while active is being drawn to LCD (DMA FTW!)

	// colour pen selections
	uint8_t  *forecolour;				// fore colour when using hwgfx	 / mainly used for pixels
	uint8_t  *backcolour;				// back colour when using hwgfx	 / used for the text backblocking
	void 	(*setFGViewport)			(int x, int y);		// adjusts the pointer location of the forground (x,y offsets)
	void 	(*setBGViewport)			(int x, int y);		// adjusts the pointer location of the background (x,y offsets)

	// GRAPHICS ROUTINES AND MEMORIES ////////////////////////////
	uint8_t	 *font;						// [256][8] ASCII 256, with 8 bytes each, system font address  // change this but remember to call the reset font ;)
	void	(*resetfont)				(void);					// calls the ROM font to be loaded back into system font
	uint8_t  *Drawmode;											// uint8_t variable (0 single pixel, 1 = double pixel, above this does nothing)
	void 	(*setBitmapDimentions)		(int w, int h);			// required before doing any bitmap work, default, 480x320 (screensize)
	void 	(*clearDrawBuffer)			(int colour);			// trigger LCD front buffer (front buffer 0 or 1, set by lcdsetbuffer()
	void 	(*clearBackLayerBuffer)		(int colour);			// trigger LCD BACK buffer (there is ONLY ONE no double buffers)
	void 	(*setpixel)					(int x0, int y0);		// set a pixel
	void 	(*drawline)					(int x0, int y0, int x1, int y1);
	void 	(*drawcircle)				(int x, int y, int radius, char fill);
	void 	(*drawellipse)				(int x0, int y0, int rx, int ry, char fill);
	void 	(*drawpoly)					(struct points *points, int count, int closed, int solid, int inverse);
	void 	(*drawtriangle)				(struct polypoints *points, int solid);
	void 	(*rect)						(int x, int y, int w, int h);	// draw rectangle on the current front buffer
	void 	(*rectf)					(int x, int y, int w, int h);	// draw filled rectangle on the current front buffer
	void 	(*drawtextsf)				(int x, int y, const unsigned char* textptr);	// FAST TEXT DRAW 8x8  (non blocking)
	void 	(*drawtextsb)				(int x, int y, const unsigned char* textptr);	// FAST TEXT DRAW 8x8  (non blocking)
	void 	(*drawtextf)				(int x, int y, const unsigned char* textptr);	// FAST TEXT DRAW 8x16 (transparent background, non blocking)
	void 	(*drawtextb)				(int x, int y, const unsigned char* textptr);	// FAST TEXT DRAW 8x16 (opaque, blocking)
	void 	(*blitblock)				(int x, int y, int w, int h, const unsigned char* img);	// BLIT Block (non transparent)
	void 	(*blit)						(int x, int y, int w, int h, const unsigned char* img);	// BLIT Transparency (slower)
	void	(*grabbuffer)				(int x, int y, int w, int h, uint8_t *src, uint8_t *dest);	// Copy Section of a buffer (usually screen area)
};




#endif
