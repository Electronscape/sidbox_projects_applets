#include <stdint.h>

//############################################################################################################//
//#                                                                                                          #//
//#   SIDBOX SYSTEMS API V0.525                                                                              #//
//#   Written Wayne H (2025)                                                                                 #//
//#   sorry its taken so long everyone                                                                       #//
//#                                                                                                          #//
//#   systems:                                                                                               #//
//#      super user - OS, HW level controls (becareful with these)                                           #//
//#      systems    - more OS but safer things                                                               #//
//#      filesystem - limited to just 4 files at the same time                                               #//
//#      maths      - some precalculated sin cos and more will be added - non accurate, for SPEED            #//
//#                                                                                                          #//
//#      graphics   - direct drawing routines, memory locations                                              #//
//#      music      - load sidbox ready music routines, just becareful which you need                        #//
//#      sound      - a simple sample playback system with a built in programmable synth (sid-like)          #//
//#                                                                                                          #//
//############################################################################################################//
//  Please note, that applets are meant to be small, or simple, while there is enough RAM for large programs  //
//  please keep your variables small inside functions, IF you need large variables, use globals!              //
//  varibles inside functions use stack which is only about 1kb, globals use external RAM                     //
//  STACK is intended to stay on the L2 cache on the sidbox for SPEED, use it wisely :)                       //
//############################################################################################################//
	
#ifndef SIDBOX_OS_API_H_
#define SIDBOX_OS_API_H_

#define FILESYSAPI

#define __weak __attribute__((weak)) 

/* These types MUST be 16-bit or 32-bit */
typedef int				INT;
typedef unsigned int	UINT;

/* This type MUST be 8-bit */
typedef unsigned char	BYTE;

/* These types MUST be 16-bit */
typedef short			SHORT;
typedef unsigned short	WORD;
typedef unsigned short	WCHAR;

/* These types MUST be 32-bit */
typedef long			LONG;
typedef unsigned long	DWORD;

/* This type MUST be 64-bit (Remove this for ANSI C (C89) compatibility) */
typedef unsigned long long QWORD;
typedef DWORD FSIZE_t;
typedef char TCHAR;

#define MAX_DEPTH 256

extern long _Randseed;
int16_t randomi(unsigned short range);		// random from -range to +range
uint16_t urandomi(unsigned short range);	// random from 0 to range


extern volatile uint8_t *original_backlayerbuffer;	// backup for the original backbufferlayer 
extern volatile uint8_t *fgmem;	// painter to the forground draw buffer
extern volatile uint8_t *bgmem;	// pointer to backbuffer memory

__weak void initDisplayBuffers();
__weak void ShowBuffer(int db);

#ifndef MAX
#define MAX(a,b) (((a) > (b)) ? (a) : (b))
#endif

// Align to 4 byte memory location
#define ALIGN4(x) (((x) + 3) & ~3)

// SIDBOX EXTERNAL RAM STARTS AT 0xD0000000
#define RAMLOCATION		0xD0000000
// Exported applet entry point function (must match ENTRY in ld script)
extern _largest_modfile;


// ## MEMORY ALIGNMENT FOR DMA AND PERFORMANCE ##
// These alignment attributes help ensure that memory structures are placed at
// boundaries compatible with DMA hardware and faster memory access.
// Use them for large graphics buffers, tightly timed variables, and
// anywhere unaligned memory access may cause issues or slowdowns.
#define MEMALIGN4    __attribute__((aligned(4)))    // Align to 4-byte boundary (basic word alignment)
#define MEMALIGN8    __attribute__((aligned(8)))    // Align to 8-byte boundary (often used for 64-bit types)
#define MEMALIGN16   __attribute__((aligned(16)))   // Align to 16-byte boundary (good for SIMD and cache lines)
#define MEMALIGN32   __attribute__((aligned(32)))   // Align to 32-byte boundary (ideal for DMA transfers and large buffers)


// STM32H743 REGISTER ADDRESSES  (DO NOT EDIT THESE VALUES)
#define SCB_CCR              (*(volatile uint32_t *)0xE000ED14)
#define SCB_CCR_DIV_0_TRP    (1 << 4)

// USE THESE
#define DIVZEROON			SCB_CCR |=  SCB_CCR_DIV_0_TRP;
#define DIVZEROOFF			SCB_CCR &= ~SCB_CCR_DIV_0_TRP;

// DEFAULT BUFFER LOCATION IN RAM
// NOTE: If you change the buffers, make sure aligned ! use __attribute__((aligned(32)))
#define RAM_LCD_DISPLAYBUFFER1	(RAMLOCATION | 0x6B2000)	// DEFAULT RECOMMENDED DISPLAY BUFFERS
#define RAM_LCD_DISPLAYBUFFER2	(RAMLOCATION | 0x6D9000)	// DEFAULT RECOMMENDED DISPLAY BUFFERS


// HARDWARE BUTTONS
#define BTN_NULL	0x00
#define BTN_FIRE 	0x01
#define BTN_FIRE2 	0x02
#define BTN_UP 		0x04
#define BTN_DOWN 	0x08
#define BTN_LEFT 	0x10
#define BTN_RIGHT 	0x20


// HARDWARE BUTTONS / MOUSE BUTTONS DXYD
// its the same port, but for readability
#define MSE_NULL	BTN_NULL
#define MSE_LMB 	BTN_FIRE
#define MSE_RMB 	BTN_FIRE2
#define MSE_DUP		BTN_UP
#define MSE_DDOWN 	BTN_DOWN
#define MSE_DLEFT 	BTN_LEFT
#define MSE_DRIGHT 	BTN_RIGHT
//-------------------------------------------------------------------------------------------------------------//



/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// #################### API INTERFACE HEADER ################################################################# //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ### GLOBAL DEFS // dont alter these since these are hardware limits
#define API_MAX_FILES_FSFIL		4	// maxumum OS files available to applet
#define MAX_AUDIO_CHANNELS		8	// maxumum audio hardware channels (all mixed real time, 8 music, 8 sound 
                                       // effect, 8 KFM .. all mixed together :))

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//##[ API INCLUDES ]#############################################################################################
//																												#
#include "api_gfx.h"			// All our graphics routines are available here                                 #
#include "api_math.h"			// Very basic Pre-calculated math, not for accuracy but for speed               #
#include "api_sys.h"			// Systems access                                                               #
#include "api_filesys.h"		// FileSystem access, works on the MOUNTED SDCARD only                          #
#include "api_su.h"				// Super User access, only some basic parts in this though                      #
#include "api_music.h"			// Music handlers, and helpers                                                  #
#include "api_sound.h"			// Sound engine handlers and helpers                                            #
#include "api_kfm.h"			// Our Synth FM system V1.0. Very basic                                         #
//																												#
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//##[ API INTERFACE ROOT ]#######################################################################################
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
__attribute__((aligned(4)))
typedef struct {
	// Operating system Controls
	struct superuser_api 	su;			// super user access
	struct sys_api			sys;		// system access
	struct fs_api			filesys;	// file system access

	// Integer Mathing!
	struct maths_api		math;		// mathmatic preloaded routines

	// SIDBOX Intended operations
	struct gfx_api 			gfx;		// graphics api
	struct music_api 		music;		// music access
	struct sound_api 		snd;		// channels and audio settings control bits

}  SidboxAPI;
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// #################### END API INTERFACE #################################################################### //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#ifdef __INTELLISENSE__
/// VSCode IntelliSense helper: allow member suggestions on SBAPI->
static volatile SidboxAPI* SBAPI = (volatile SidboxAPI*)0x2001F000;
#define API SBAPI
#else
#define SBAPI ((volatile SidboxAPI *)0x2001F000)
#define API SBAPI
#endif




/////////////////// HELPERS THOUGH BADLY NAMED, SORRY ///////////////////////////////////////////////////////////
// KERNAL API
#define dbug(...)				SBAPI->sys.printf(__VA_ARGS__)	// (const char *fmt, ...)
#define delayMilliSecond		SBAPI->sys.delayMs		// (unsigned short milli);
#define getticks				SBAPI->sys.systicks

// GRAPHICS MEMORIES
/* CLUT[256] of 32bit data,  
	AARRGGBB, 	
	Alpha channels are used to blend, 0=100% transparent, 255=fully opaque
	layer: 0 - backbuffer, 1 - forgroundlayer

*/
#define SBGfxPalleteUpdate		SBAPI->gfx.clut	 // (*clut, layer) change colours 32bit colours 0x00RRGGBB 
                                                   // clut is a 256 array of 32bit colour data

// buffers
#define SBGfxFGBuffer				*(SBAPI->gfx.ActiveBuffer)	// *uint8_t	// show buffer
#define SBGfxDGBuffer				*(SBAPI->gfx.DrawBuffer)	// uint8_t	// draw buffer
#define SBGfxBKBuffer				*(SBAPI->gfx.BackBuffer)	// uint8_t	// back layer buffer
#define SBGfxCLSBbuffer(colour)		SBAPI->gfx.clearBackLayerBuffer(colour)	// clear back layer buffer
#define SBGfxCLSDbuffer(colour) 	SBAPI->gfx.clearDrawBuffer(colour)		// clear active draw buffer
// colours
#define SBGfxFGColour			*(SBAPI->gfx.forecolour)	// uint8_t	// forecolor
#define SBGfxDColour			*(SBAPI->gfx.forecolour)	// uint8_t	// draw colour
#define SBGfxBGColour			*(SBAPI->gfx.backcolour)	// uint8_t	// backcolor for mainly textblock colour

// font/text routines
#define SBGfxDrawTextFGF		SBAPI->gfx.drawtextf		// DrawText FAST ForeGround 8x16
#define SBGfxDrawTextSFGF		SBAPI->gfx.drawtextsf		// DrawText FAST ForeGround 8x8

#define SBGfxDrawTextDBB		SBAPI->gfx.drawtextb		// DrawText DrawBuffer 8x16 opaque
#define SBGfxDrawTextSDBB		SBAPI->gfx.drawtextsb		// DrawText DrawBuffer 8x8 opaque

// GRAPHICS ROUTINES
// image blits
#define SBGfxBlitSolid			SBAPI->gfx.blitsolid		// (int16_t x, int16_t y, int16_t w, int16_t h);
#define SBGfxBlitSolidT			SBAPI->gfx.blitsolidT		// (int16_t x, int16_t y, int16_t w, int16_t h);
// draw primitives
#define SBGfxRect     			SBAPI->gfx.rect				// (int16_t x, int16_t y, int16_t w, int16_t h);
#define SBGfxRectF	     		SBAPI->gfx.rectf			// (int16_t x, int16_t y, int16_t w, int16_t h);
#define SBGfxCircle				SBAPI->gfx.drawcircle		// (int x, int y, int radius, char fill)
#define SBGfxDrawEllipse		SBAPI->gfx.drawellipse		// (int x0, int y0, int rx, int ry, char fill)

#define SBGfxDrawPoly			SBAPI->gfx.drawpoly			// (struct points *points, int count, int closed, int solid, int inverse);
#define SBGfxDrawTriangle		SBAPI->gfx.drawtriangle		// (struct polypoints *points, int solid);


#define	SBGfxDrawLineMode		*(SBAPI->gfx.Drawmode)	 	// *uint8_t	// thickness of a line, 0 - single pixel, 1 = (2x2 dot)
#define SBGfxDrawline			SBAPI->gfx.drawline			// (short x0, short y0, short x1, short y1);
#define	SBGfxDrawPoint			SBAPI->gfx.setpixel			// (short x0, short y0)


// MUSIC ACCESS
#define SBMusMusicCMD			SBAPI->music.musiccom		// (uint32_t commandbits); 0x00000000 just stops music play back


// SYSTEMS ACCESS 
#define SBHWButtons				SBAPI->sys.hwbuttons		// function()

#define SBSysGetmouseX			*(SBAPI->sys.mousePosX)		// mouse coords x-axis
#define SBSysGetmouseY			*(SBAPI->sys.mousePosY)		// mouse coords y-axit

#define SBSysGetmousexD			*(SBAPI->sys.mousePosDX)	// mouse coords x-axis Delta, differentials
#define SBSysGetmouseyD			*(SBAPI->sys.mousePosDY)	// mouse coords y-axit Delta, differentials


#define SBFSfileload			SBAPI->filesys.loadfile		// opens, loads and closes

// MATHMATICS ROUTINES
// please note these are NOT for accuracy, a very close approximation of 0-360 deg! 
#define	SBMathsinff				SBAPI->math.sinff			// integer in -> fast SIN returns a float
#define	SBMathCosff				SBAPI->math.cosff			// integer in -> fast COS returns a float
#define	SBMathsinfi				SBAPI->math.sinfi			// integer in -> fast SIN returns INTEGER
#define	SBMathcosfi				SBAPI->math.cosfi			// integer in -> fast SIN returns INTEGER
#define fast_cos 				SBMathCosff					// comment these out if you have your own method
#define fast_sin 				SBMathsinff					// comment these out if you have your own method


// --------- ADD THIS IF YOU WANT IT ------------------
// all this does is press and hold a button to exit a program, not strictly required, but handy for a quick QUIT :)
#define EXITME	\
	uint8_t exiter = ExitCode();\
	if(exiter) return(exiter);
#endif

