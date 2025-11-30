#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>

#include "../../../_coreapi_/apis.h"
#include "game.h"

//extern unsigned char bigback[];


#define KEY_SPACE	0x2c	// fire
#define KEY_UP		0x52	// thrust
#define KEY_DOWN	0x51	// teleport
#define KEY_LEFT	0x50	// rotate left
#define KEY_RIGHT 	0x4f	// rotate right

volatile uint8_t kbjoystick;
volatile uint8_t jpjoystick;
volatile uint8_t *jpjoystickLptr;	// use this to clear the bits 

void ISR_KB(uint8_t *packet){
	kbjoystick = 0x00;
	jpjoystickLptr = packet;

	for (const uint8_t *p = packet + 2; p < packet + 8; ++p) {
        switch (*p) {
			case KEY_SPACE: kbjoystick |= BTN_FIRE;		break; 
			case KEY_UP:	kbjoystick |= BTN_UP;		break; 
			case KEY_DOWN:	kbjoystick |= BTN_DOWN;		break; 
			case KEY_LEFT:	kbjoystick |= BTN_LEFT;		break; 
			case KEY_RIGHT:	kbjoystick |= BTN_RIGHT;	break; 
		}
	}
}

void ISR_JP(uint8_t *bits){
	jpjoystick = *bits;
}

void IMGtoBG(uint8_t *scr){
	memcpy(*SBAPI->gfx.ActiveBackLayerBuffer, scr, 480*320);	// direct memory copy
	/*

	if you want to blit
	
	*SBAPI->lcd_DrawBuffer 	= original_backlayerbuffer;	// setting the draw buffer for blitting
	SBAPI->api_blitsolid(0, 0, 480, 320, scr);	// blit to the selected drawbuffer
	*SBAPI->lcd_DrawBuffer 	= RAM_LCD_DISPLAYBUFFER1;	// return back to something else, clsa(0) will still see backbuffer as drawbuffer ;)

	*SBAPI->lcd_BackBuffer = original_backlayerbuffer;		// set the background layer to OSCBackBuffer
	
	*/
}

#define DEG_TO_RAD(x) ((x) * 3.14159f / 180.0f)
#define PI 	3.141594



volatile uint32_t oldAudioFlags;


//"editor.tokenColorCustomizations":

void ShowBuffer(int db){
	if(db){
		*SBAPI->gfx.ActiveBuffer = RAM_LCD_DISPLAYBUFFER1;	// Buffer to be rendered to the screen
		*SBAPI->gfx.DrawBuffer 	= RAM_LCD_DISPLAYBUFFER2;	// buffer to be drawn to
	} else {
		*SBAPI->gfx.ActiveBuffer = RAM_LCD_DISPLAYBUFFER2;	// Buffer to be rendered to the screen
		*SBAPI->gfx.DrawBuffer 	= RAM_LCD_DISPLAYBUFFER1;	// buffer to be drawn to
	}
}

int sbx, sby;

static uint32_t sndOffsets = 		0xD0000000;
static uint8_t *sndfirem;			// 4,260 bytes
static uint32_t sndfiremLen;

static uint8_t *sndbangsmall;		// 9,601 bytes
static uint32_t sndbangsmallLen;	// 9,601 bytes

static uint8_t *sndthrust2;			// 43,958 bytes
static uint32_t sndthrust2Len;		// 43,958 bytes

static uint8_t *sndsaucerm;			// 12,040 bytes
static uint32_t sndsaucermLen;		// 12,040 bytes

static uint8_t *snddeadm;			// 42,156 bytes
static uint32_t snddeadmLen;		// 42,156 bytes

static uint8_t *teleportm;			// 16,946 bytes
static uint32_t teleportmLen;		// 16,946 bytes

static uint8_t *extralifem;			// 16,946 bytes
static uint32_t extralifeLen;		// 16,946 bytes

static SpriteX = 0;
#define MAX_SPRITES 0
int flashBank=0;

#define ALIGN4(x) (((x) + 3) & ~3)

const uint32_t clutSrcBigBack[256] = {
	0x000A0A22, 0xFF02020A, 0xFF272676, 0xFF111134, 0xFF161648, 0xFF2D2D8F, 0xFFDCD8F2, 0xFF1A1B54, 0xFF080412, 0xFF3331A2, 0xFF080818, 0xFF5F5E96, 0xFF2A2955, 0xFF59576E, 0xFF1B1A64, 0xFF030311, 
	0xFF11112A, 0xFF0C0D2A, 0xFF060630, 0xFF2A2838, 0xFF000003, 0xFF0A0912, 0xFF08041A, 0xFF222066, 0xFF6562C7, 0xFF02021C, 0xFF1D1D5B, 0xFF100B24, 0xFF1A1C4E, 0xFF413F95, 0xFF0F0E3B, 0xFF04071E, 
	0xFF0D0B1B, 0xFF9793CB, 0xFF14121E, 0xFF080840, 0xFF3F3D53, 0xFF1E2075, 0xFF1E1C2A, 0xFF1B1987, 0xFF140F40, 0xFF08030C, 0xFF111343, 0xFF272884, 0xFF4F3DCA, 0xFF0C0C31, 0xFF3F3DAE, 0xFF08080C, 
	0xFF0A0953, 0xFF3E3D6F, 0xFF020912, 0xFF131256, 0xFF030F1A, 0xFF191A3C, 0xFF3837BA, 0xFF01090B, 0xFF82809A, 0xFF10000B, 0xFF090102, 0xFF252495, 0xFF25091B, 0xFF363342, 0xFF2A299F, 0xFF030503, 
	0xFF282828, 0xFFFF0000, 0xFF00FF00, 0xFFFFFF00, 0xFF0000FF, 0xFFFF00FF, 0xFF00FFFF, 0xFFFFFFFF, 0xFFFFFF00, 0xFF12FF55, 0xFF12EE55, 0xFF12B6FF, 0xFF001FFF, 0xFF9D0EC7, 0xFFF10000, 0xFF375200, 
	0xFF000000, 0xFFC80000, 0xFF00C800, 0xFFC8C800, 0xFF0000C8, 0xFFC800C8, 0xFF00C8C8, 0xFFE6E6E6, 0xFFFF7700, 0xFF375355, 0xFF3754AA, 0xFF3755FF, 0xFF495600, 0xFF495855, 0xFF4959AA, 0xFF495AFF, 
	0xFF593400, 0xFF7C4B00, 0xFF9F6200, 0xFFC27900, 0xFF6D6000, 0xFF6D6155, 0xFF6D62AA, 0xFF6D63FF, 0xFF6D6400, 0xFF806555, 0xFF8066AA, 0xFF8067FF, 0xFF926900, 0xFF926A55, 0xFF926BAA, 0xFF926CFF, 
	0xFFEB6D00, 0xFFF28D37, 0xFFF8AE6F, 0xFFFFCEA6, 0xFFB67200, 0xFFB67355, 0xFFB674AA, 0xFFB675FF, 0xFFC97600, 0xFFC97755, 0xFFC979AA, 0xFFC97AFF, 0xFFDB7B00, 0xFFDB7C55, 0xFFDB7DAA, 0xFFDB7EFF, 
	0xFFD3CEBE, 0xFFE2D9C8, 0xFFF0E4D1, 0xFFFFEFDB, 0xFFFF8400, 0xFFFF8555, 0xFFFF86AA, 0xFFFF87FF, 0xFF008800, 0xFF008A55, 0xFF008BAA, 0xFF008CFF, 0xFF128D00, 0xFF128E55, 0xFF128FAA, 0xFF1290FF, 
	0xFF249200, 0xFF249355, 0xFF2494AA, 0xFF2495FF, 0xFF379600, 0xFF379755, 0xFF3798AA, 0xFF3799FF, 0xFF499B00, 0xFF499C55, 0xFF499DAA, 0xFF499EFF, 0xFF5B9F00, 0xFF5BA055, 0xFF5BA1AA, 0xFF5BA3FF, 
	0xFFA4B5D5, 0xFFA0B0F8, 0xFF94A3E6, 0xFF7C89C1, 0xFF6281C0, 0xFF1C62A1, 0xFF4254EA, 0xFF62A1BD, 0xFF7093C0, 0xFF4977A1, 0xFF003FAA, 0xFF1554FF, 0xFF1C50B9, 0xFF00B3FF, 0xFF0088AA, 0xFF00B5FF, 
	0xFF0E62FF, 0xFF5EB7E3, 0xFFBDC0B9, 0xFF85B9FF, 0xFF006CAF, 0xFF1F81B9, 0xFF3F5BAA, 0xFFC9BEFF, 0xFF5BAFCB, 0xFFDBC055, 0xFFDBC1AA, 0xFFBDC0C0, 0xFFEDC400, 0xFFEDC555, 0xFFEDC6AA, 0xFFEDC7FF, 
	0xFFFFC800, 0xFFFFC955, 0xFFFFCAAA, 0xFFFFCCFF, 0xFF00CD00, 0xFF00CE55, 0xFF00CFAA, 0xFF00D0FF, 0xFF12D100, 0xFF12D255, 0xFF12D3AA, 0xFF12D5FF, 0xFF24D600, 0xFF24D755, 0xFF24D8AA, 0xFF24D9FF, 
	0xFF37DA00, 0xFF37DB55, 0xFF37DDAA, 0xFF37DEFF, 0xFF49DF00, 0xFF49E055, 0xFF49E1AA, 0xFF49E2FF, 0xFF5BE300, 0xFF5BE555, 0xFF5BE6AA, 0xFF5BE7FF, 0xFF6DE800, 0xFF6DE955, 0xFF6DEAAA, 0xFF6DEBFF, 
	0xFF6DEC00, 0xFF80EE55, 0xFF80EFAA, 0xFF80F0FF, 0xFF93CEA2, 0xFF92F255, 0xFF92F3AA, 0xFF92F4FF, 0xFFA4F600, 0xFFA4F755, 0xFFA4F8AA, 0xFFA4F9FF, 0xFFB6FA00, 0xFFB6FB55, 0xFFB6FCAA, 0xFFB6FEFF, 
	0xFFC9FF00, 0xFFC9FF55, 0xFFC9FFAA, 0xFFC9FFFF, 0xFFDBFF00, 0xFFDBFF55, 0xFFDBFFAA, 0xFFDBFFFF, 0xFFEDFF00, 0xFFEDFF55, 0xFFEDFFAA, 0xFFEDFFFF, 0xFFFFFF00, 0xFFFFFF55, 0xFFFFFFAA, 0xFFFFFFFF, 
};

const uint32_t titleclut32[] = {
	0x00000036, 0x00A25500, 0x00000004, 0x00000026, 0x00000016, 0x00000046, 0x00DFDFEA, 0x00D7A602, 0x004D0400, 0x00000056, 0x0001006A, 0x00722900, 0x00242434, 0x000E0094, 0x00565666, 0x00343445,
	0x00320104, 0x004A4A5A, 0x00B9B9CD, 0x00676777, 0x009898A8, 0x00777788, 0x00A8A8B9, 0x00888898, 0x00ECD20F, 0x001B1B2B, 0x00641400, 0x00F0E462, 0x00F2EEAA, 0x008E4100, 0x00171735, 0x00C58B01,
	0x00130024, 0x00150002, 0x00B96E00, 0x001A0016, 0x0029021E, 0x00D6AE3F, 0x00100032, 0x00541D07, 0x007D3A00, 0x001D1D44, 0x00DDC18F, 0x004701D7, 0x0010101E, 0x00A16A40, 0x00C08F41, 0x002900B5,
	0x000C0044, 0x000C0160, 0x00080944, 0x00272757, 0x004D2220, 0x00A37C89, 0x00161457, 0x006A351D, 0x00401016, 0x000D0D38, 0x00210B3E, 0x00090A51, 0x000E007E, 0x00C39D7B, 0x003F3F4F, 0x00090A2B,
	0x00DB3700, 0x00DB3855, 0x00DB39AA, 0x00DB3AFF, 0x00ED3B00, 0x00ED3C55, 0x00ED3DAA, 0x00ED3FFF, 0x00FF4000, 0x00FF4155, 0x00FF42AA, 0x00FF43FF, 0x00004400, 0x00004555, 0x000046AA, 0x000048FF,
	0x00FFFF00, 0x0012FF55, 0x0012EE55, 0x0012B6FF, 0x00001FFF, 0x009D0EC7, 0x00F10000, 0x00FF7700, 0x00375200, 0x00375355, 0x003754AA, 0x003755FF, 0x00495600, 0x00495855, 0x004959AA, 0x00495AFF,
	0x005B5B00, 0x005B5C55, 0x005B5DAA, 0x005B5EFF, 0x006D6000, 0x006D6155, 0x006D62AA, 0x006D63FF, 0x006D6400, 0x00806555, 0x008066AA, 0x008067FF, 0x00926900, 0x00926A55, 0x00926BAA, 0x00926CFF,
	0x00A46D00, 0x00A46E55, 0x00A46FAA, 0x00A471FF, 0x00B67200, 0x00B67355, 0x00B674AA, 0x00B675FF, 0x00C97600, 0x00C97755, 0x00C979AA, 0x00C97AFF, 0x00DB7B00, 0x00DB7C55, 0x00DB7DAA, 0x00DB7EFF,
	0x00ED7F00, 0x00ED8055, 0x00ED82AA, 0x00ED83FF, 0x00FF8400, 0x00FF8555, 0x00FF86AA, 0x00FF87FF, 0x00008800, 0x00008A55, 0x00008BAA, 0x00008CFF, 0x00128D00, 0x00128E55, 0x00128FAA, 0x001290FF,
	0x00249200, 0x00249355, 0x002494AA, 0x002495FF, 0x00379600, 0x00379755, 0x003798AA, 0x003799FF, 0x00499B00, 0x00499C55, 0x00499DAA, 0x00499EFF, 0x005B9F00, 0x005BA055, 0x005BA1AA, 0x005BA3FF,
	0x00A4B5D5, 0x00A0B0F8, 0x0094A3E6, 0x007C89C1, 0x006281C0, 0x001C62A1, 0x004254EA, 0x0062A1BD, 0x007093C0, 0x004977A1, 0x00003FAA, 0x001554FF, 0x001C50B9, 0x0000B3FF, 0x000088AA, 0x0000B5FF,
	0x000E62FF, 0x005EB7E3, 0x00BDC0B9, 0x0085B9FF, 0x00006CAF, 0x001F81B9, 0x003F5BAA, 0x00C9BEFF, 0x005BAFCB, 0x00DBC055, 0x00DBC1AA, 0x00BDC0C0, 0x00EDC400, 0x00EDC555, 0x00EDC6AA, 0x00EDC7FF,
	0x00FFC800, 0x00FFC955, 0x00FFCAAA, 0x00FFCCFF, 0x0000CD00, 0x0000CE55, 0x0000CFAA, 0x0000D0FF, 0x0012D100, 0x0012D255, 0x0012D3AA, 0x0012D5FF, 0x0024D600, 0x0024D755, 0x0024D8AA, 0x0024D9FF,
	0x0037DA00, 0x0037DB55, 0x0037DDAA, 0x0037DEFF, 0x0049DF00, 0x0049E055, 0x0049E1AA, 0x0049E2FF, 0x005BE300, 0x005BE555, 0x005BE6AA, 0x005BE7FF, 0x006DE800, 0x006DE955, 0x006DEAAA, 0x006DEBFF,
	0x006DEC00, 0x0080EE55, 0x0080EFAA, 0x0080F0FF, 0x0093CEA2, 0x0092F255, 0x0092F3AA, 0x0092F4FF, 0x00A4F600, 0x00A4F755, 0x00A4F8AA, 0x00A4F9FF, 0x00B6FA00, 0x00B6FB55, 0x00B6FCAA, 0x00B6FEFF,
	0x00C9FF00, 0x00C9FF55, 0x00C9FFAA, 0x00C9FFFF, 0x00DBFF00, 0x00DBFF55, 0x00DBFFAA, 0x00DBFFFF, 0x00EDFF00, 0x00EDFF55, 0x00EDFFAA, 0x00EDFFFF, 0x00FFFF00, 0x00FFFF55, 0x00FFFFAA, 0x00FFFFFF,
};

const uint32_t leveldoneclut32[] = {
	0x00000000, 0x008C8C8C, 0x00383837, 0x00001000, 0x00A7A7A7, 0x00434343, 0x00000100, 0x00606060, 0x00575757, 0x006B6B6B, 0x00DFF2F3, 0x00768EA0, 0x00817060, 0x003A4C5E, 0x00B7D3DC, 0x006A7A8A,
	0x00493B1D, 0x004A5C6D, 0x00576777, 0x0087A5B9, 0x00162716, 0x007D6955, 0x00756D66, 0x002B3B4B, 0x00848380, 0x00141915, 0x00879AAB, 0x003A4139, 0x00473E2E, 0x00414650, 0x005E6C7C, 0x00B6BBBF,
	0x00301F02, 0x00432E07, 0x002A2C2B, 0x00465360, 0x007D746B, 0x00151601, 0x00716D70, 0x00635D59, 0x003E3E3E, 0x004F4F4F, 0x004A534B, 0x00120C03, 0x001E2221, 0x00737477, 0x00797979, 0x00535252,
	0x006E6E6E, 0x0009190B, 0x00080909, 0x0068625E, 0x00656565, 0x00605B63, 0x00969696, 0x006D6864, 0x005B5B5B, 0x0064686B, 0x000F0F11, 0x004A4A4A, 0x00A0A0A0, 0x0068686A, 0x00A3A3A3, 0x00636269,
	0x00707070, 0x00DB3855, 0x00DB39AA, 0x00DB3AFF, 0x00ED3B00, 0x00ED3C55, 0x00ED3DAA, 0x00ED3FFF, 0x00FF4000, 0x00FF4155, 0x00FF42AA, 0x00FF43FF, 0x00004400, 0x00004555, 0x000046AA, 0x000048FF,
	0x00FFFF00, 0x0012FF55, 0x0012EE55, 0x0012B6FF, 0x00001FFF, 0x009D0EC7, 0x00F10000, 0x00FF7700, 0x00375200, 0x00375355, 0x003754AA, 0x003755FF, 0x00495600, 0x00495855, 0x004959AA, 0x00495AFF,
	0x005B5B00, 0x005B5C55, 0x005B5DAA, 0x005B5EFF, 0x006D6000, 0x006D6155, 0x006D62AA, 0x006D63FF, 0x006D6400, 0x00806555, 0x008066AA, 0x008067FF, 0x00926900, 0x00926A55, 0x00926BAA, 0x00926CFF,
	0x00A46D00, 0x00A46E55, 0x00A46FAA, 0x00A471FF, 0x00B67200, 0x00B67355, 0x00B674AA, 0x00B675FF, 0x00C97600, 0x00C97755, 0x00C979AA, 0x00C97AFF, 0x00DB7B00, 0x00DB7C55, 0x00DB7DAA, 0x00DB7EFF,
	0x00ED7F00, 0x00ED8055, 0x00ED82AA, 0x00ED83FF, 0x00FF8400, 0x00FF8555, 0x00FF86AA, 0x00FF87FF, 0x00008800, 0x00008A55, 0x00008BAA, 0x00008CFF, 0x00128D00, 0x00128E55, 0x00128FAA, 0x001290FF,
	0x00249200, 0x00249355, 0x002494AA, 0x002495FF, 0x00379600, 0x00379755, 0x003798AA, 0x003799FF, 0x00499B00, 0x00499C55, 0x00499DAA, 0x00499EFF, 0x005B9F00, 0x005BA055, 0x005BA1AA, 0x005BA3FF,
	0x00A4B5D5, 0x00A0B0F8, 0x0094A3E6, 0x007C89C1, 0x006281C0, 0x001C62A1, 0x004254EA, 0x0062A1BD, 0x007093C0, 0x004977A1, 0x00003FAA, 0x001554FF, 0x001C50B9, 0x0000B3FF, 0x000088AA, 0x0000B5FF,
	0x000E62FF, 0x005EB7E3, 0x00BDC0B9, 0x0085B9FF, 0x00006CAF, 0x001F81B9, 0x003F5BAA, 0x00C9BEFF, 0x005BAFCB, 0x00DBC055, 0x00DBC1AA, 0x00BDC0C0, 0x00EDC400, 0x00EDC555, 0x00EDC6AA, 0x00EDC7FF,
	0x00FFC800, 0x00FFC955, 0x00FFCAAA, 0x00FFCCFF, 0x0000CD00, 0x0000CE55, 0x0000CFAA, 0x0000D0FF, 0x0012D100, 0x0012D255, 0x0012D3AA, 0x0012D5FF, 0x0024D600, 0x0024D755, 0x0024D8AA, 0x0024D9FF,
	0x0037DA00, 0x0037DB55, 0x0037DDAA, 0x0037DEFF, 0x0049DF00, 0x0049E055, 0x0049E1AA, 0x0049E2FF, 0x005BE300, 0x005BE555, 0x005BE6AA, 0x005BE7FF, 0x006DE800, 0x006DE955, 0x006DEAAA, 0x006DEBFF,
	0x006DEC00, 0x0080EE55, 0x0080EFAA, 0x0080F0FF, 0x0093CEA2, 0x0092F255, 0x0092F3AA, 0x0092F4FF, 0x00A4F600, 0x00A4F755, 0x00A4F8AA, 0x00A4F9FF, 0x00B6FA00, 0x00B6FB55, 0x00B6FCAA, 0x00B6FEFF,
	0x00C9FF00, 0x00C9FF55, 0x00C9FFAA, 0x00C9FFFF, 0x00DBFF00, 0x00DBFF55, 0x00DBFFAA, 0x00DBFFFF, 0x00EDFF00, 0x00EDFF55, 0x00EDFFAA, 0x00EDFFFF, 0x00FFFF00, 0x00FFFF55, 0x00FFFFAA, 0x00FFFFFF,
};

volatile uint32_t clut[256];	// this is the CLUT we're loading then sending to GFX

void CLUTAlpha(uint32_t *src){	// a quick pallete fix helper
	uint32_t val, g;
	for(g = 0; g < 256; g++){
		val = src[g];
		val |= 0xFF000000;	// whack the alpha channels to full opacity
		clut[g] = val;
	}
	clut[0] = 0x00;
}

#define LOADSFX(id, var, lenvar, path) do { \
    var = sndOffsets; \
    lenvar = SBFSfileload(id, path, var); \
    if (!lenvar) { \
        SBAPI->sys.printf("Failed to load file: %s\r\n", path); \
        return; \
    } \
    sndOffsets = ALIGN4(sndOffsets + lenvar); \
} while (0)


typedef struct {
    int x, y;       // Position
    int dx, dy;     // Velocity
    int w, h;       // Size
    const uint8_t *img; // Pointer to sprite image
} Sprite;

Sprite sprites[MAX_SPRITES];

void InitSprites(){
	int i;
	int dx, dy;
	for(i = 0; i < MAX_SPRITES; i++){

		sprites[i].x = randomi(480-80)+5;
		sprites[i].y = randomi(320-80)+5;
		sprites[i].dx = -3 + randomi(6);
		sprites[i].dy = -3 + randomi(6);

		sprites[i].w = 64;
		sprites[i].h = 64;
		sprites[i].img = sprite_bomb;
		

		if(sprites[i].dx == 0) sprites[i].dx = 1;
		if(sprites[i].dy == 0) sprites[i].dy = 1;

	}
}

void UpdateAndDrawSprites(void) {
    for (int i = 0; i < MAX_SPRITES; i++) {
        Sprite *s = &sprites[i];

        // Move
        s->x += s->dx;
        s->y += s->dy;

        // Bounce off screen edges
        if (s->x < 0 || s->x > 480-64) s->dx = -s->dx;
        if (s->y < 0 || s->y > 320-64) s->dy = -s->dy;

        // Draw
        //SBAPI->gfx.blitsolidT(s->x, s->y, s->w, s->h, s->img);
		SBAPI->gfx.blit(s->x, s->y, s->w, s->h, s->img);
    }
}

void SetupGameScreen(){
	SBAPI->gfx.setBacklightBrightness(0);	// turn off backlight

	sbx = 0;
	sby = 0;


	*SBAPI->gfx.ActiveBackLayerBuffer  = (uint8_t*)bigback;					// change the backlayer to our bigbackground (image rotated 90 from source work)
	SBAPI->gfx.displaymode(480, 320, 960, 640, DISPFLAG_DUALLAYER);	// the big bitmap is double the height
	SBAPI->gfx.setFGViewport(0,0);
	SBAPI->gfx.setBGViewport(0,0);

	CLUTAlpha(clutSrcBigBack);
	SBAPI->gfx.clut(clut, 0);	// back ground
	SBAPI->gfx.clut(clut, 1);	// fore ground
	SBAPI->gfx.render(0);
	SBGfxDrawLineMode = 1;

	SBAPI->gfx.setBacklightBrightness(255);	// turn off backlight
}

extern void* heap_base;
extern uint32_t heap_size;

void ResetProtocol();
int main(int arg, char *argv[]){
	//DIVZEROOFF;			// turn off DIV BY ZERO error - sometimes the CPU just farts at random with this on
	uint8_t filetest[128];
	uint32_t cb;
	int gameOver=0;
	uint8_t txt[16];
	int timer;
	timer = 0;
	int idb = 0;	// for double buffering screen

	

	SBAPI->snd.AudioBufferSize(32);	// very low latency but might be scratchy
	// tested this as low as buffer size 2, while game logic didnt seem to be affected, its too short to exit out of the game
	// recommended LOWEST 64 bytes, BUT does work at 2.. 32byte is next to nothing latency! DAMN!
	SBAPI->music.EnableAutoPlayer(1);	// this enables the auto music update. it runs in the the internal DMA interrupt
	oldAudioFlags = SBAPI->snd.channelconfigs->reg;

	// dont want any fancy stuff on
	//*SBAPI->api_audioctrl = oldAudioFlags & ~(AUDIOFLAG_AMIGAFILTON | AUDIOFLAG_EQON | AUDIOFLAG_AGCON | AUDIOSTEREOMIX);	
	// silly virtual reset trick ;)
	//SBAPI->api_dfuaccess =  &ResetProtocol;							// DFU access if needed

	SBAPI->filesys.changedir("/sturdust");

	SBAPI->gfx.setBacklightBrightness(0);	// turn off backlight

	memset(filetest, 0x00, 128);

	InitSprites();
	_Randseed=0;

	//doAPICheck();
	initMath();
	init_starfield();

	if(!SBAPI->filesys.open(0, "testfile.txt", (FA_READ | FA_OPEN_EXISTING))){
		SBAPI->filesys.read(0, filetest, 128, &cb);
		SBAPI->filesys.close(0);

		dbug("FileLEN: %lu\r\n", cb);
		dbug("File read out was : ");
		dbug(filetest);
	} else
		dbug("unable to open file\r\n");

#if(0)	// this works! but disabling to stop burning the SDCARD out 
	dbug("\r\nWRITE TEST:\r\n");

	if(!SBAPI->api_fopen(0, "/sfxast/output.txt", (FA_CREATE_ALWAYS | FA_WRITE))){
		sprintf(filetest, "I like to play with your SDCARD! IOOOOOR hehe");
		SBAPI->api_fwrite(0, filetest, strlen(filetest), &cb);

		SBAPI->api_fclose(0);
	} else 
		dbug("Unable to create file\r\n");

#endif



	initMalloc();
	dbug("* Heap starts at: %p\r\n", heap_base);
	dbug("* Heap size: %lu bytes\r\n", heap_size);
	
	dbug("Astroids Demo\r\n\r\n");

	SBAPI->sys.interruptVector->keyboard_isr = &ISR_KB;
	SBAPI->sys.interruptVector->hwbuttons_isr = &ISR_JP;

	initDisplayBuffers();
	SBAPI->gfx.initdisplay(220, FPS_50hz);	// 60fps landscape mode
	SBAPI->gfx.displaymode(480, 320, 480, 320, DISPFLAG_DUALLAYER);	// the big bitmap is double the height

	sndOffsets = 0xD0000000 + 0x10000;	// largest mod is about 64kb
	LOADSFX(0, sndfirem,     sndfiremLen,     "firem.wav");
	LOADSFX(0, sndbangsmall, sndbangsmallLen, "bangSmall.wav");
	LOADSFX(0, sndthrust2,   sndthrust2Len,   "thrust2.wav");
	LOADSFX(0, sndsaucerm,   sndsaucermLen,   "saucerm.wav");
	LOADSFX(0, snddeadm,     snddeadmLen,     "deadm.wav");    // reuse ID after close
	LOADSFX(0, teleportm,    teleportmLen,    "teleportm.wav");
	LOADSFX(0, extralifem,   extralifeLen,    "extralife.wav");

	uint32_t audctrlbits =  0x55FF;//(uint32_t)( AUDIOFLAG_CHANNEL0ON ) | ( AUDIOFLAG_CHANNEL1ON | AUDIOFLAG_CHANNEL1LR );
	SBAPI->snd.channelconfigs->reg = audctrlbits;//oldAudioFlags & ~(AUDIOFLAG_AMIGAFILTON | AUDIOFLAG_EQON | AUDIOFLAG_AGCON | AUDIOSTEREOMIX);	

	SBAPI->music.LoadAndplay("stardust.mod", AUDIO_MODE_MOD, 0);

	//void AssignSound(uint8_t chan, uint8_t *addr, uint32_t freq, uint8_t vol, uint32_t len){
	ChannelAssign(SFX_ID_FIRE, sndfirem + 44, 44100, 80, sndfiremLen-54, 0);
	ChannelAssign(SFX_ID_BANG, sndbangsmall + 44, 11050, 80, sndbangsmallLen-54, 0);
	ChannelAssign(SFX_ID_DEAD, snddeadm + 44, 44100, 64, snddeadmLen-54, 0);
	ChannelAssign(SFX_ID_THRUST, sndthrust2 + 44, 44100, 80, sndthrust2Len-54, 1);
	ChannelAssign(SFX_ID_BONUS, sndsaucerm + 44, 44100, 34, sndsaucermLen-54, 1);
	ChannelAssign(SFX_ID_TELEPORT, teleportm + 44, 22050, 80, teleportmLen-54, 0);
	ChannelAssign(SFX_ID_EXTRALIFE, extralifem + 44, 44100, 80, extralifeLen-54, 0);

	//ChannelAssign(5, sndsaucerm + 44, 44100, 34, sndsaucermLen-54, 1);
	StopChannel(SFX_ID_FIRE);
	StopChannel(SFX_ID_BANG);
	StopChannel(SFX_ID_DEAD);
	StopChannel(SFX_ID_THRUST);
	StopChannel(SFX_ID_BONUS);
	StopChannel(SFX_ID_TELEPORT);
	StopChannel(SFX_ID_EXTRALIFE);

	//CLUTAlpha(titleclut32);
	//SBAPI->api_clsa(0);
	//SBAPI->api_lcdclut(clut, 0);	// back ground
	//SBAPI->api_lcdclut(clut, 1);	// fore ground
	//IMGtoBG(titlescr);		// draw the image on to the current backlayer buffer
	SBGfxDrawLineMode = 1;
	//SBAPI->api_lcdrender(0);

	if(!SBAPI->filesys.open(0, "bigback.ppb", (FA_READ | FA_OPEN_EXISTING))){
		SBAPI->filesys.read(0, bigback, 960*640, &cb);
		SBAPI->filesys.close(0);
	} else
		dbug("unable to open file\r\n");


	SBAPI->gfx.displaymode(480, 320, 480, 320, DISPFLAG_DUALLAYER);	// the big bitmap is double the height
	*SBAPI->gfx.ActiveBackLayerBuffer = original_backlayerbuffer;

	CLUTAlpha(titleclut32);
	SBGfxPalleteUpdate(clut, 0);	// back ground
	SBAPI->gfx.waitvsync();

	SBGfxPalleteUpdate(clut, 1);	// fore ground
	SBAPI->gfx.waitvsync();

	//IMGtoBG(titlescr);
	if(!SBAPI->filesys.open(0, "title.ppb", (FA_READ | FA_OPEN_EXISTING))){
		SBAPI->filesys.read(0, *SBAPI->gfx.ActiveBackLayerBuffer, 480*320, &cb);
		SBAPI->filesys.close(0);
	} else
		dbug("unable to open file\r\n");

	if(!SBAPI->filesys.open(0, "levdone.ppb", (FA_READ | FA_OPEN_EXISTING))){
		SBAPI->filesys.read(0, levcompScr, 480*320, &cb);
		SBAPI->filesys.close(0);
	} else
		dbug("unable to open file\r\n");

	SBAPI->gfx.waitvsync();	// wait for the Colour Table to finish DMA transfer

	//SBAPI->api_waitvsync();

	*jpjoystickLptr = 0x00;
	uint32_t ticks;
	uint32_t tticks;
	// turn backlight back on timer for cleaner intro fade;
	int bgltmr = 0;
	while(!((jpjoystick | kbjoystick) & BTN_FIRE)){
		SBAPI->gfx.clearDrawBuffer(0);
		timer++;
		if(timer > 30){
			sprintf(txt, "** PRESS FIRE **");
			SBGfxFGColour = 255; 
			SBAPI->gfx.drawtextf(240 - ((strlen(txt) * 8) / 2), 160, txt);
		}
		if(timer > 60) timer = 0;


		sprintf(txt, "@ %lu ms", tticks);
		SBGfxFGColour = 255;
		SBAPI->gfx.drawtextf(120, 2, txt);


		ShowBuffer(idb);
		idb = 1 - idb;
		SBAPI->gfx.waitvsync();

		ticks = SBAPI->sys.systicks();
		SBAPI->gfx.render(0x01);
		tticks = SBAPI->sys.systicks() - ticks;
		SBAPI->music.UpdatePlayer();

		if(bgltmr==6) SBAPI->gfx.setBacklightBrightness(255);	// turn off backlight
		else bgltmr ++;
	}

	SetupGameScreen();

	SBAPI->music.LoadAndplay("sdlev1.mod", AUDIO_MODE_MOD, 0);
	StarFieldOn=1;	// turn on the starfield

	// set bacground scrolly in center view ;)

	idb = 0;


	int mx, my;
	int updateMusic=0;

	while(1){

		ticks = SBAPI->sys.systicks();
		if(jpjoystick & BTN_FIRE2) {
			int id;
			SBAPI->music.LoadAndplay("", 0, 0);
			for(id=0; id<8; id++)
				StopChannel(id);

			SBAPI->snd.channelconfigs->reg = oldAudioFlags;

			return(0x7);
		}

		SBAPI->gfx.clearDrawBuffer(0);		// clear foreground (i'll get this done with DMA for muuch faster clear)
		//SBAPI->api_clsb(0);	// clear backplane
		sbx += ((100 * getSpeedSX() )/90);
		sby += ((100 * getSpeedSY() )/90);

		if(sbx < 0) sbx = 0;
		if(sbx > 480) sbx = 480;
		if(sby < 0) sby = 0;
		if(sby > 320) sby = 320;

		if(gameOver==0)
			gameOver = doAsterGame();
		else
			gameOver = doGameOverScreen();
	
		SBAPI->gfx.setFGViewport(0,0);

		if(StarFieldOn){
			UpdateAndDrawSprites();
			SBAPI->gfx.setBGViewport(sbx, sby);
		}
		else 
			SBAPI->gfx.setBGViewport(0, 0);

		sprintf(txt, "@ %lu ms", tticks);
		SBGfxFGColour = 255;
		if(idb) SBAPI->gfx.drawtextf(120, 2, txt);

		tticks = SBAPI->sys.systicks() - ticks;


		if(flashBank==1){
			clut[0] = 0xffffffff;
			SBAPI->gfx.clut(clut, 0);	// back ground
			flashBank=2;
		} else if(flashBank==2){
			clut[0] = 0x00;
			SBAPI->gfx.clut(clut, 0);	// back ground
			flashBank=0;
		}
		
		//SBAPI->api_clearmousedelta();
		ShowBuffer(idb);
		idb = 1 - idb;

		//SBAPI->api_waitvsync();	// dont need this if using the APILCDRender(this uses a vsync)
		SBAPI->gfx.render(0x01 | DISPRM_2LAYER | DISPRM_VBLANKWAIT);
		//SBAPI->music.UpdatePlayer();
		
	
	}
	return 0;	// exited with success
}