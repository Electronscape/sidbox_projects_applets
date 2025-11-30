#include "main.h"

#include "player.h"


void setupTestSynths(){

    	// configure the audio systems
	//SBAPI->snd.channelconfigs->reg = 0xAAFF;	// disable effects, but enable channels 0-7 and assign left and right bits
    //SBAPI->snd.channelconfigs->reg = 0x266FF;
	SBAPI->snd.channelconfigs->reg = 0xA66FF;


	EnableKFM();

    SBAPI->snd.channelconfigs->channel_0_On = 1;

	SBAPI->snd.SYNTHGate(0, 0);	// everything off
	SBAPI->snd.SYNTHGate(1, 0);	// everything off
	SBAPI->snd.SYNTHGate(2, 0);	// everything off
	SBAPI->snd.SYNTHGate(3, 0);	// everything off
	SBAPI->snd.SYNTHGate(4, 0);	// everything off
	SBAPI->snd.SYNTHGate(5, 0);	// everything off
	SBAPI->snd.SYNTHGate(6, 0);	// everything off
	SBAPI->snd.SYNTHGate(7, 0);	// everything off

	SBAPI->snd.SYNTHfreq(0, 0);
	SBAPI->snd.SYNTHVol(0, 127);
	SBAPI->snd.SYNTHpwm(0, 64);


    SBAPI->snd.channel[0]->lFreq = 0;   // as a synth, change the channel sampler speed to 0, since it will use the KFM-Periods only

}


void noteSynth(uint8_t channel, uint8_t note){
    if(note == NOTE_NONE){
        SBAPI->snd.SYNTHGate(0, 2);	// everything off
    }

    if(note < 76)
        SBAPI->snd.SYNTHGate(0, 3);	// everything off
}