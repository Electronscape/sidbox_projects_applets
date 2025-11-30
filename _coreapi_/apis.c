#include <stdarg.h>
#include <stdio.h>
#include <stdint-gcc.h>
#include <string.h>
#include <ctype.h>
#include "apis.h"

//#####################################################################################################
//#                                                                                                   #//
//#   SIDBOX SYSTEMS API V0.525                                                                       #//
//#   Written Wayne H (2025)                                                                          #//
//#   sorry its taken so long everyone                                                                #//
//#                                                                                                   #//
//#   systems:                                                                                        #//
//#      super user - OS, HW level controls (becareful with these)                                    #//
//#      systems    - more OS but safer things                                                        #//
//#      filesystem - limited to just 4 files at the same time                                        #//
//#      maths      - some precalculated sin cos and more will be added - non accurate, for SPEED     #//
//#                                                                                                   #//
//#      graphics   - direct drawing routines, memory locations                                       #//
//#      music      - load sidbox ready music routines, just becareful which you need                 #//
//#      sound      - a simple sample playback system with a built in programmable synth (sid-like)   #//
//#                                                                                                   #//
//#####################################################################################################

volatile uint8_t *original_backlayerbuffer;	// backup for the original backbufferlayer 
volatile uint8_t *fgmem;	// painter to the forground draw buffer
volatile uint8_t *bgmem;	// pointer to backbuffer memory
__weak void initDisplayBuffers(){	// run this at the start of your program, not strickly a requirement, but might safe a few headaches
	*SBAPI->gfx.ActiveBuffer = RAM_LCD_DISPLAYBUFFER1;	// base address
	*SBAPI->gfx.DrawBuffer 	= RAM_LCD_DISPLAYBUFFER1;	// base address

	fgmem = *SBAPI->gfx.DrawBuffer;	// DrawGround access	// going to only draw at the active buffer CRAP no double buffering
	bgmem = SBAPI->gfx.ActiveBackLayerBuffer;	// background access
	original_backlayerbuffer = *SBAPI->gfx.ActiveBackLayerBuffer;	// backup the original address, we might redirect the backbuffer to another location
}

__weak void ShowBuffer(int db){	// will concentrate on the foreground layer, setting draw buffer and active buffers 
	if(db){
		*SBAPI->gfx.ActiveBuffer = RAM_LCD_DISPLAYBUFFER1;	// Default locations - used in the OS, but safe to use
		*SBAPI->gfx.DrawBuffer 	= RAM_LCD_DISPLAYBUFFER2;
	} else {
		*SBAPI->gfx.ActiveBuffer = RAM_LCD_DISPLAYBUFFER2;	// Default locations - used in the OS, but safe to use
		*SBAPI->gfx.DrawBuffer 	= RAM_LCD_DISPLAYBUFFER1;
	}
}

uint32_t original_drawbuffer;
__weak void CaptureDrawBuffer(){	// a simple Remember where the draw buffer is right now before changing it
	original_drawbuffer = *SBAPI->gfx.DrawBuffer;
}

__weak void SetDrawToBackLayer(){	// this will only work if you've not changed the original backlayerbuffer (or changed it)
	original_drawbuffer = *SBAPI->gfx.DrawBuffer;
	*SBAPI->gfx.DrawBuffer = original_backlayerbuffer;	
}

__weak void ReleaseDrawBuffer(){	// return the drawbuffer to the original before capturing
	*SBAPI->gfx.DrawBuffer = original_drawbuffer;
}

// Random Generator (crude but works)
long _Randseed = 402;		// random seed

int16_t randomi(unsigned short range){
    _Randseed = _Randseed * 11 + 125;
    return ((signed short)(_Randseed >> 16) % range);
}

uint16_t urandomi(unsigned short range){
    _Randseed = _Randseed * 11 + 125;
    return ((uint16_t)(_Randseed >> 16) % range);
}

// Case-insensitive string compare up to 'n' characters
int stringcmp(const char *s1, const char *s2, size_t n) {
    while (n--) {
        char c1 = ((unsigned char)*s1++);
        char c2 = ((unsigned char)*s2++);
        if (c1 != c2) return (unsigned char)c1 - (unsigned char)c2;
        if (c1 == '\0') break;
    }
    return 0;
}

void ChannelAssign(uint8_t chan, uint8_t *addr, uint32_t freq, int vol, uint32_t len, uint8_t loop){
	if (!SBAPI->snd.channel[chan]) {
		SBAPI->sys.printf("AssignSound: api_aud[%u] is NULL!\r\n", chan);
		return;
	}
	SBAPI->snd.channel[chan]->lSampPtr = addr;	// sample pointer, your sound variable 
	SBAPI->snd.channel[chan]->volume = vol * 2;
	SBAPI->snd.channel[chan]->lFreq = freq;		// frequency RAW, corresponds to 44.1khz
	SBAPI->snd.channel[chan]->lSampleLen = len;	// the length of your sample!
	SBAPI->snd.channel[chan]->bLooping = loop;	// bool is this a looping sample?
	SBAPI->snd.channel[chan]->lSampleOffset = 0;	// force a replay

	//default loop
	SBAPI->snd.channel[chan]->lLoopStart = 0;	// where to begin the loop from, relative from your sound pointer
	SBAPI->snd.channel[chan]->lLoopEnd = len;	// the length of the loop.
}

void SetChannelLoop(uint8_t chan, uint32_t loopFrom, uint32_t loopTo){
	SBAPI->snd.channel[chan]->lLoopStart = loopFrom;
	SBAPI->snd.channel[chan]->lLoopEnd = loopTo;
	
}

void PlayChannel(uint8_t chan){
	SBAPI->snd.channel[chan]->bPlaying = 1;
}

void RePlayChannel(uint8_t chan){
	SBAPI->snd.channel[chan]->lSampleOffset = 0;	// force a replay
	SBAPI->snd.channel[chan]->bPlaying = 1;
}

void StopChannel(uint8_t chan){
	SBAPI->snd.channel[chan]->bPlaying = 0;
}

void SetChannelFrequency(uint8_t chan, int freq){
	SBAPI->snd.channel[chan]->lFreq = freq;
}

void SetChannelVolume(uint8_t chan, int vol){
	SBAPI->snd.channel[chan]->volume = vol;
}

int GetChannelVolume(uint8_t chan){
	return SBAPI->snd.channel[chan]->volume;
}

/// INTERRUPT HELPERS ///
__weak void ISRTimerA(){
	// this is the Timer A - 
	/*
	// example
	SBAPI->sys.timer[0]->isr = &ISRTimerA;
	SBAPI->sys.timer[0]->Prescale = 22550;	// Timer Bus speed 225.5Mhz
	SBAPI->sys.timer[0]->AutoReload = 9999;	// eg. 1 second roll over (1000ms x 10) - 1
	SBAPI->sys.timerAConf(3);	// enable, and interupt 
	*/
}

__weak void ISRTimerB(){
    // this is the Timer B - 
	/*
	// example
	SBAPI->sys.timer[1]->isr = &ISRTimerB;
	SBAPI->sys.timer[1]->Prescale = 22550;	// Timer Bus speed 225.5Mhz
	SBAPI->sys.timer[1]->AutoReload = 9999;	// 1 second roll over (1000ms x 10) - 1
	SBAPI->sys.timerBConf(3);	// enable, and interupt 
	*/
}

__weak void ISRVBL(){	
	// vblank interrupt/ interrupts at the refresh you set your lcd to
	/*
	// example
	SBAPI->sys.interruptVector->vb_isr = &ISRVBL;
	*/
}

__weak void ISRHWButtons(uint8_t *portbits){
	// interrupt on button press/release (also these are joyport up/down/left/right, Fire1, fire2 / mouse buttons left/right)
	// is compatible with the megadrive, but only buttons B and C, DPAD work
	// buttons are active low, so when not pressed, a 1 showsup in the bits.
	// !!(joyportbits & BTN_UP) will bool to a 1 if pressed (a work around?)
	//joyportbits = *portbits;
	/*
	// example
	SBAPI->sys.interruptVector->hwbuttons_isr = &ISRHWButtons;
	*/
	
}

__weak void ISRKBInput(uint8_t *packet){
	// interrupt for keyboard input (comes in from the Serial port)
	// comes in as 8 bytes
	// take a look at example "ISRTEST", kbsupport.c, kbsupport.h for more detail
	/*
	// example
	SBAPI->sys.interruptVector->keyboard_isr = &KB_ISR;
	*/
}





