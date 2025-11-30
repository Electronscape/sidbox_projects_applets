/*
 * api_sound.h
 *
 *  Created on: 25 Jun 2025
 *      Author: electronscape
*/

#ifndef OS_APPAPI_API_SOUND_H_
#define OS_APPAPI_API_SOUND_H_

#include "api_kfm.h"

//--------------------------------------------------------------------------------------------------------------------------------//
// CHANNEL SPECIFIC FLAGS
#define AUDIOFLAG_DEFAULT_POWERON	0xFFFF66FF
#define AUDIOFLAG_CHANNEL0ON		(1 << 0 )		// enable channel 0
#define AUDIOFLAG_CHANNEL1ON		(1 << 1 )		// enable channel 1
#define AUDIOFLAG_CHANNEL2ON		(1 << 2 )		// enable channel 2
#define AUDIOFLAG_CHANNEL3ON		(1 << 3 )		// enable channel 3
#define AUDIOFLAG_CHANNEL4ON		(1 << 4 )		// enable channel 4
#define AUDIOFLAG_CHANNEL5ON		(1 << 5 )		// enable channel 5
#define AUDIOFLAG_CHANNEL6ON		(1 << 6 )		// enable channel 6
#define AUDIOFLAG_CHANNEL7ON		(1 << 7 )		// enable channel 7
#define AUDIOFLAG_CHANNEL0LR		(1 << 8 )		// channel 0:left 1:right
#define AUDIOFLAG_CHANNEL1LR		(1 << 9 )		// channel 0:left 1:right
#define AUDIOFLAG_CHANNEL2LR		(1 << 10)		// channel 0:left 1:right
#define AUDIOFLAG_CHANNEL3LR		(1 << 11)		// channel 0:left 1:right
#define AUDIOFLAG_CHANNEL4LR		(1 << 12)		// channel 0:left 1:right
#define AUDIOFLAG_CHANNEL5LR		(1 << 13)		// channel 0:left 1:right
#define AUDIOFLAG_CHANNEL6LR		(1 << 14)		// channel 0:left 1:right
#define AUDIOFLAG_CHANNEL7LR		(1 << 15)		// channel 0:left 1:right
#define AUDIOFLAG_AMIGAFILTON		(1 << 16)		// turn off amiga filter system
#define AUDIOFLAG_EQON				(1 << 17)		// turn off EQ
#define AUDIOFLAG_AGCON				(1 << 18)		// automatic gain feature
#define AUDIOSTEREOMIX				(1 << 19)		// enable stereo mixing (off for full left/right seperation)
#define AUDIOENABLEFADER			(1 << 20)		// enable the mixer fader
#define AUDIOENABLEKFM				(1 << 21)		// enable the internal KFM Synth Processor (bit like SID sound but with a programmable synth) \o/

struct channel_attrib {
	unsigned char bPlaying:1;			// bit instruction
	unsigned char bLooping:1;			// is this sample looping
	unsigned char bReserved1:1;			// reserved bit 1
	unsigned char bReserved2:1;			// reserved bit 2
	unsigned char bReserved3:1;			// reserved bit 3
	unsigned char bReserved4:1;			// reserved bit 4
	unsigned char bReserved5:1;			// reserved bit 6
	unsigned char bReserved6:1;			// reserved bit 7
	// above - 1 byte flag data

	unsigned long long lSampleOffset;	// the offset at which the sample is playing
	unsigned long lFreq;				// the speed at which the sample should be played at (gonna be trick so wont implement this yet)
	unsigned long lSpeedTick;			// controller for phasing speed;
	unsigned char bChannel;				// which sample channel	// probably wont ever need this
	unsigned long lSampleLen;			// length of the sample
	unsigned char *lSampPtr;			// the pointer to the sample from memory
	unsigned long long lLoopStart;		// sample (channel) loop start
	unsigned long long lLoopEnd;		// sample (channel) loop end.
	int volume;				// volume control
} ;

typedef union __attribute__((aligned(4))) {
	uint32_t reg;	// all the bits in one go

	struct {
		// Group 1: Channel on/off flags (bits 0–7)
		uint32_t channel_0_On  : 1;
		uint32_t channel_1_On  : 1;
		uint32_t channel_2_On  : 1;
		uint32_t channel_3_On  : 1;
		uint32_t channel_4_On  : 1;
		uint32_t channel_5_On  : 1;
		uint32_t channel_6_On  : 1;
		uint32_t channel_7_On  : 1;

		// Group 2: Left/Right config (bits 8–15)
		uint32_t channel_0_LR  : 1;
		uint32_t channel_1_LR  : 1;
		uint32_t channel_2_LR  : 1;
		uint32_t channel_3_LR  : 1;
		uint32_t channel_4_LR  : 1;
		uint32_t channel_5_LR  : 1;
		uint32_t channel_6_LR  : 1;
		uint32_t channel_7_LR  : 1;

		// Audio Engine control bits (bits 16-20)
		uint32_t amigafiltEn   : 1;	// enable the amiga filter (when set to 0, it stays disabled ignoring the please of .mod music! hehe
		uint32_t equaliserEn   : 1;	// equalisation TRI-Band processing enable
		uint32_t autogainEn    : 1;	// automatic audio gain feature enable
		uint32_t stereoblendEn : 1;	// Stereo blending (seperation control) Enable
		uint32_t autoMusicFade : 1;	// enable the automatic fade in/fade out system
		// Reserved bits (bits 21–31)
		uint32_t reserved     : 11;
	};

	// Compact byte views
	struct {
		uint8_t activeChannels; // Bits 0-7		// audio on offs
		uint8_t channelLR;      // Bits 8-15	// channel left / right flags
		uint8_t audioControl;	// bits 16-20 + 3 bits reserved bits
		uint8_t reservedByte;	// bits 24-31 	// unused bits
	};


} audio_ctrl_t;


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ########################################################################################################### //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
struct __attribute__((aligned(4))) sound_api {//################################## SOUND INTERFACE API ##########
	audio_ctrl_t	*channelconfigs;
	struct channel_attrib *channel[MAX_AUDIO_CHANNELS];

	void	(*AudioBufferSize)	(uint16_t size);	// default to 2048 for no skip medium latency (balanced)

	// SYNTH VM DEPARTMENT //
	void	(*SYNTHClrProg)		(uint8_t ch);	// CLEAR the channels SYNTH program/ you will have to re-install the command list to the KFM Channel
	void 	(*SYNTHProg)		(uint8_t ch, uint8_t row, synthmcode cmd, uint8_t p1, uint8_t p2 );	// set a program line
	void 	(*SYNTHProgReset)	(uint8_t ch);	// REstart the channels program // tho turning off the channel will reset this anyway

	// DIRECT SYNTH ACCESS
	void	(*SYNTHGate)		(uint8_t ch, uint8_t gatebits);	// use gated controls for the ADSR effects, otherwise just turn off the channel to reset the program if one is installed on this channel
	void	(*SYNTHVol)			(uint8_t ch, uint8_t vol);	// 0-127
	void	(*SYNTHpwm)			(uint8_t ch, uint8_t duty);	// 0-127 (64 - 50% duty cycle)
	void	(*SYNTHfreq)		(uint8_t ch, uint16_t freq);
};

#endif /* OS_APPAPI_API_SOUND_H_ */



