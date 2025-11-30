/*
 * api_music.h
 *
 *  Created on: 25 Jun 2025
 *      Author: electronscape
 */

#ifndef OS_APPAPI_API_MUSIC_H_
#define OS_APPAPI_API_MUSIC_H_


// MUSIC TYPES - SIDBOX API SPECIFICS
// used in LoadAndplay  initplayer
#define	AUDIO_MODE_NULL			0x00	// stops the audio altogether
#define	AUDIO_MODE_WAV			0x02	// basic wave player ;)
#define	AUDIO_MODE_SID			0x03	// this is our signature function for the SIDBOX
#define	AUDIO_MODE_STP2			0x04	// Maddi's function win! PLEASE... work!
#define	AUDIO_MODE_MOD			0x05	// the protracker mod play
#define	AUDIO_MODE_YM			0x06	// the Atari ST YM playback
#define	AUDIO_MODE_S3M			0x07	// S3M Play back
#define	AUDIO_MODE_AY			0x08	// Spectrum AY Track
#define	AUDIO_MODE_POKEY		0x09	// Pokey audio systems
#define	AUDIO_MODE_TFMX			0x0B	// TFMX Play back
#define	AUDIO_MODE_MED			0x12	// Amiga OctaMED MDD0/1

// MUSIC AUTO PLAY SYSTEM	// default is off as it uses the interrupt which might cause some framerate drops if not used properly.
// since this is default off, you must call the UpdatePlayer at each frame (or however many times you need)
#define AUDIO_AUTOPLAYMODE_OFF	0x00	// DEFAULT mode, does NOT use the interrupt based player
#define AUDIO_AUTOPLAYMODE_ON	0x01	// enable interrupt based player (internal management)

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ########################################################################################################### //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
struct __attribute__((aligned(4))) music_api { //########################### MUSIC PLAYER API ###################
	void (*UpdatePlayer)		(void);					// run the player (music routines time keeping, use on every frame or so)
	void (*EnableAutoPlayer)	(uint8_t mode);			// default AUDIO_AUTOPLAYMODE_OFF
	void (*LoadAndplay)			(char* filename, uint8_t player, uint8_t param1);	// to stop use ("",0,0) nothing to load, no player, no parameters
	void (*musiccom)			(uint32_t commandbits);	// will figure something out for this (doesnt do anything right now)

	// initplayer(musictype, param1);						// ensure music is loaded in memory address starting 0xD0000000
	// embedded music in files, copy memory from the source data to 0xD0000000, sizeof(music)
	// then use initplayer, choose the right musictype (EG. AUDIO_MODE_MOD)
	int (*initplayer)			(uint8_t musictype, uint8_t param1);	// use if music is loaded in memory (param 1 if your tune has sub tunes)
};


#endif /* OS_APPAPI_API_MUSIC_H_ */
