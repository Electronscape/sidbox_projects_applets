#include "main.h"


#include "patternbank.h"
#include "trackerui.h"
#include "player.h"

MEMALIGN32
uint8_t sampleRamSpace[SAMPLE_RAM_SPACE_SIZE];

extern const uint8_t sample2Test[];
extern const uint8_t sample4Test[];
extern const uint8_t sample8Test[];
extern const uint8_t dk01[];
extern const uint8_t dk02[];
extern const uint8_t dk03[];
extern const uint8_t demoNotesSampleID1[];
extern const uint8_t demoNotes[];
extern const uint8_t demoNotesSampleID2[];
extern const uint8_t demoNotes2[];




bool_t bKFMPlayer_Playing  = false;
bool_t bKFMPlayer_PlayPattern = false; 

bool_t bChannelEnabled[8] = {
    true, true, true, true,
    true, true, true, true,
};

tPlayer KFMSong;


void initKFMSong(){
    bKFMPlayer_Playing = false;
    bKFMPlayer_PlayPattern = false;
    KFMSong.speed = KFMPLAY_SPEED_DEFAULT;
    KFMSong.tempo = KFMPLAY_TEMPO_DEFAULT;
    // re-enable channels
    bChannelEnabled[0] = true;
    bChannelEnabled[1] = true;
    bChannelEnabled[2] = true;
    bChannelEnabled[3] = true;
    bChannelEnabled[4] = true;
    bChannelEnabled[5] = true;
    bChannelEnabled[6] = true;
    bChannelEnabled[7] = true;


    RestartPlayer();
}

const uint16_t noteFrequencies[NOTES_PER_OCTAVE * OCTAVES] = {  // for sample sounds, basic on frequency fork tuning (by ear... god this was hard!)
/*     C      C#     D      D#     E      F      F#     G      G#     A      A#     B
  0   0      1      2      3      4      5      6      7      8      9      10     11
  1   12     13     14     15     16     17     18     19     20     21     22     23
  2   24     25     26     27     28     29     30     31     32     33     34     35
  3   36     37     38     39     40     41     42     43     44     45     46     47
  4   48     49     50     51     52     53     54     55     56     57     58     59
  5   60     61     62     63     64     65     66     67     68     69     70     71
       C      C#     D      D#     E      F      F#     G      G#     A      A#     B
*/
/*0*/ 1023,  1088,  1147,  1239,  1304,  1373,  1477,  1558,  1663,  1756,  1848,  1970,   // Octave 0
/*1*/ 2047,  2177,  2294,  2479,  2608,  2746,  2955,  3116,  3326,  3512,  3697,  3940,   // Octave 1
/*2*/ 4151,  4399,  4652,  4932,  5237,  5553,  5908,  6225,  6627,  7007,  7392,  7803,   // Octave 2
/*3*/ 8287,  8742,  9357,  9871,  10462, 10988, 11805, 12516, 13161, 14006, 14827, 15740,  // Octave 3
/*4*/ 16672, 17663, 18525, 19665, 20822, 22165, 23382, 24815, 26286, 27962, 29456, 31355,  // Octave 4
/*5*/ 32983, 35014, 37570, 39190, 41493, 43996, 47070, 49583, 52379, 55533, 59091, 63148   // Octave 5
};

const char *noteNames[NOTES_PER_OCTAVE] = {
    "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"
};

char noteLabels[OCTAVES * NOTES_PER_OCTAVE][4]; // max 3 chars + null

const char* getNoteLabel(uint8_t note) {
    if (note == NOTE_NONE) return "---";
    if (note == NOTE_HOLD) return "-|-";
    if (note >= (OCTAVES * NOTES_PER_OCTAVE)) return "???";
    return noteLabels[note];
}

void initNoteLabels() {
    for (int octave = 0; octave < OCTAVES; octave++) {
        for (int note = 0; note < NOTES_PER_OCTAVE; note++) {
            char *dst = noteLabels[octave * NOTES_PER_OCTAVE + note];

            const char *name = noteNames[note];

            if (name[1] == '#') {
                // Sharp: format as C#1
                snprintf(dst, 4, "%s%d", name, octave);
            } else {
                // Natural: format as C-1
                snprintf(dst, 4, "%c-%d", name[0], octave);
            }
        }
    }
}

void doTrackerTicks();

void vblHandler(){
    KFMSong.tickCounter++;
    if(KFMSong.tickCounter >= KFMSong.speed){
        KFMSong.tickCounter=0;
        processRow();
    } else 
        doTrackerTicks(); // Sliders, Portamento,... blahh blahh
}

void RestartPlayer(){
    StopTimer();
    SetupCIATiming();

    KFMSong.tickCounter = 0;
    KFMSong.cRow = 0;
    KFMSong.lRow = 0;

    KFMSong.songPosition = 0;
    KFMSong.patternID = KFMSong.songPatternSequence[KFMSong.songPosition];
    
    processRow();
}

void ClearSong(){
    uint8_t *song;
    uint32_t llen, lrow, lchan;

    tSampleInfo *samp;
    tPattern *patt;
    tPatternRow *pattrow;


    StopTimer();
    SetupCIATiming();


    // scan through all possible tracks
    for(llen = 0; llen < KFMMAXPATTERNS; llen++){
        patt = &KFMSong.Patterns[llen];
        for(lrow = 0; lrow < KFMPATTERNLEN; lrow++){
            for(lchan = 0; lchan < 8; lchan++){
                pattrow = &patt->therow[lrow][lchan];
                pattrow->cmd = 0x0;
                pattrow->note = NOTE_NONE;
                pattrow->param = 0x00;
                pattrow->sampleID = 0;
            }
        }
    }

    // clear the play sequences
    for(llen = 0; llen < KFMMAXSONGLEN; llen++){
        KFMSong.songPatternSequence[0] = 0; // reset all to pattern 0
    }

    // clear all the sample informations (might need to need a sample load tracker tho like a malloc system)
    for(llen = 0; llen < KFMMAXSAMPLES; llen++){
        samp = &KFMSong.SampleInf[llen];
        samp->sampleAddr      = 0;
        samp->sampleFrequency = 0;
        samp->sampleLength    = 0;
        samp->sampleLoop      = false;
        samp->sampleLoopFrom  = 0;
        samp->sampleLoopTo    = 0;
        samp->sampleOffset    = 0;
        samp->sampleVolume    = 0;
    }


    KFMSong.songLength = 1;
    KFMSong.cRow = 0;
    KFMSong.lRow = 0;

    KFMSong.patternID = 0;
    KFMSong.songPosition = 0;
 


    updateSongTrackUI();

}

uint32_t timeDD;
uint32_t timeDR;
uint32_t msTime;


void PlayerCIA_ISR(){
	vblHandler();
    timeDR = SBAPI->sys.systicks();
    msTime = timeDR - timeDD;
    timeDD = timeDR;  // update previous after diff
}

void setTempoSpeed(uint16_t tempo, uint16_t speed){
    KFMSong.tempo = tempo;
    KFMSong.speed = speed;

    StopTimer();
    SetupCIATiming();
    if(bKFMPlayer_Playing) 
        StartTimer();
}

void SetupCIATiming(){
    uint32_t bmpReal = (600000 / (KFMSong.tempo * KFMPLAY_ROWS_PER_BEAT * KFMSong.speed));    // should give 10000
    SBAPI->sys.timer[0]->Prescale   = 22550-1;
    SBAPI->sys.timer[0]->AutoReload = bmpReal-1;
    SBAPI->sys.timer[0]->isr = &PlayerCIA_ISR;
}

void StartTimer(){
    SBAPI->sys.timerAConf(TMRCTRL_ENABLE | TMRCTRL_ENABLEIRQ);
}

void StopTimer(){
    SBAPI->sys.timerAConf(TMRCTRL_ENABLEIRQ);
}

void InitSamples(){ // demo sample setups
    tSampleInfo *smp;

    smp = &KFMSong.SampleInf[0];
        smp->sampleAddr = sample2Test;
        smp->sampleLoop = true;
        smp->sampleLoopFrom = 5910;
        smp->sampleLoopTo = 8604;
        smp->sampleLength = 8604;
        smp->sampleVolume = 63;

    smp = &KFMSong.SampleInf[1];
        smp->sampleAddr = dk01;
        smp->sampleLoop = false;
        smp->sampleLoopFrom = 0;
        smp->sampleLoopTo = 2094;
        smp->sampleLength = 2094;
        smp->sampleVolume = 63;

    smp = &KFMSong.SampleInf[2];
        smp->sampleAddr = dk02;
        smp->sampleLoop = false;
        smp->sampleLoopFrom = 0;
        smp->sampleLoopTo = 2218;
        smp->sampleLength = 2218;
        smp->sampleVolume = 63;

    smp = &KFMSong.SampleInf[3];
        smp->sampleAddr = dk03;
        smp->sampleLoop = false;
        smp->sampleLoopFrom = 0;
        smp->sampleLoopTo = 2718;
        smp->sampleLength = 2718;
        smp->sampleVolume = 63;
}


void ShowSongLength(){
    CaptureDrawBuffer();
    SetDrawToBackLayer();
    
    uiTextDrawNumberU(88, 89, KFMSong.songLength);
    ReleaseDrawBuffer();
}

void ShowSongPosition(){
    CaptureDrawBuffer();
    SetDrawToBackLayer();
    uiTextDrawNumberU(88, 35, KFMSong.songPosition);
    ReleaseDrawBuffer();
}

void ShowCurrentPatternSelect(){
    CaptureDrawBuffer();
    SetDrawToBackLayer();
    uiTextDrawNumberU(88, 62, KFMSong.patternID);
    ReleaseDrawBuffer();
}


void SetSongPosition(uint16_t songPosition){
    uint16_t pattID;

    KFMSong.songPosition = songPosition;

    pattID = KFMSong.songPatternSequence[songPosition];
    KFMSong.patternID = pattID;

    ShowSongPosition();
    ShowCurrentPatternSelect();
}

void SetCurrentPatternSelect(uint16_t patternID){
    KFMSong.patternID = patternID;

    KFMSong.songPatternSequence[KFMSong.songPosition] = patternID;
    ShowCurrentPatternSelect();
}



void SetSongLength(uint16_t length){
    KFMSong.songLength = length;
    ShowSongLength();
}

void updateSongTrackUI(){
    if( nConfigScreenMode != bShowFileRequest ){
        ShowCurrentPatternSelect();
        ShowSongPosition();
        ShowSongLength();
        ConfigScreenUpdate();
    }
}
//////////----------- PLAYER PROCESSORS --------------------///////////

tPatternRow lastRowStats[KFMCHANNELS];

//###########################################################################################################
//###########################################################################################################
//###########################################################################################################
void doTrackerTicks(){
    uint8_t chan = 0;
    tPattern *patt;     // the pattern currently
    tSampleInfo *smp;   // the sample info


    uint8_t paramS, paramX, paramY, paramCMD;
    int newVol, newFreq, newNote;

    patt = &KFMSong.Patterns[KFMSong.patternID];    // pattern 0 

    for( chan = 0; chan < KFMCHANNELS; chan ++ ){
        tPatternRow *patrow = &patt->therow[KFMSong.lRow][chan];
        paramCMD = patrow->cmd & 0xf;   // ensure this is only 4 bit commands (up up 15, commands, like i said, VERY basic player)
        paramS   = patrow->param;
        paramX   = (paramS) >> 4;       // upper nibble
        paramY   = (paramS) & 0xF;      // lower nibble
        
        switch(paramCMD){ // [CMD|X|Y]


            case KFM_EFF_ARPEGIO:
                switch(KFMSong.tickCounter % 3){
                    case 0:{    // return to base frequency
                        newFreq = noteFrequencies[KFMSong.lastNote[chan]];
                        ChannelAssignSetFreq(chan, newFreq);
                    } break;

                    case 1:{
                        newNote = KFMSong.lastNote[chan] + paramX;
                        if(newNote > MAX_NOTES) newNote = MAX_NOTES;
                        newFreq = noteFrequencies[newNote];
                        ChannelAssignSetFreq(chan, newFreq);

                    } break;

                    case 2:{
                        newNote = KFMSong.lastNote[chan] + paramY;
                        if(newNote > MAX_NOTES) newNote = MAX_NOTES;
                        newFreq = noteFrequencies[newNote];
                        ChannelAssignSetFreq(chan, newFreq);

                    } break;


                }
            break;


            case KFM_EFF_VOLUMESLIDE:
                newVol = KFMSong.chanVolume[chan];
                newVol += (paramX - paramY);
                if(newVol < 0) newVol = 0;
                if(newVol > 63) newVol = 63;
                KFMSong.chanVolume[chan] = (uint8_t)newVol;
                ChannelAssignSetVol(chan, KFMSong.chanVolume[chan]);    // the volume of the channel to be played
            break;

            case KFM_EFF_PORTAMENTOUP:
                newFreq = KFMSong.chanFreq[chan];
                newFreq += (paramS * 2);    // our frequencies are much higher, the low 255 steps might not be felt on higher note ranges 
                if((newFreq > noteFrequencies[MAX_NOTES-1]))
                    newFreq = noteFrequencies[MAX_NOTES-1];   // lowest note 
                KFMSong.chanFreq[chan] = newFreq;
                ChannelAssignSetFreq(chan, KFMSong.chanFreq[chan]);
            break;

            case KFM_EFF_PORTAMENTODN:
                newFreq = KFMSong.chanFreq[chan];
                newFreq -= (paramS * 2);    // our frequencies are much higher, the low 255 steps might not be felt on higher note ranges 
                if((newFreq < noteFrequencies[0]))
                    newFreq = noteFrequencies[0];   // lowest note 
                KFMSong.chanFreq[chan] = newFreq;
                ChannelAssignSetFreq(chan, KFMSong.chanFreq[chan]);
            break;
        }


    }
}

//###########################################################################################################
//###########################################################################################################
void processRow(){
    char *tmp[32];
   
    tPattern *patt;    // pattern 0 
    tSampleInfo *smp;

    uint8_t chan = 0;
    //uint32_t freqTarg;

    uint32_t sampPtr;
    uint32_t sampLoopFrom, sampLoopTo, sampLen;
    uint16_t volume;
    uint8_t  reStartNote = 0;
    int newVol;
    uint8_t  tSampleID;
    bool_t sampLoop;

    KFMSong.lRow = KFMSong.cRow;
    KFMSong.cRow ++;

    if(KFMSong.cRow > 63) {
        KFMSong.cRow = 0;
        if(!bKFMPlayer_PlayPattern) // if we're not editing or playing just the pattern, then move on to the next one.
            KFMSong.songPosition ++;
        if(KFMSong.songPosition > KFMSong.songLength - 1){
            KFMSong.songPosition = 0;
        }

    }
    if(KFMSong.lRow == 0){
        KFMSong.patternID = KFMSong.songPatternSequence[KFMSong.songPosition];
    
        updateSongTrackUI();
    }
    
    
    patt = &KFMSong.Patterns[KFMSong.patternID];    // pattern 0 

    for(chan = 0; chan < 8; chan++){
        tPatternRow *patrow = &patt->therow[KFMSong.lRow][chan];
        uint8_t note = patrow->note;
        uint8_t paramS, paramX, paramY, paramCMD;

        ///////////////////////////////////////////////////////////////////////////////////////////////////
        // Part A, Detirmin the note and frequencies intended for this channel
        if(note != NOTE_NONE){
            KFMSong.chanFreq[chan] = noteFrequencies[note];
            KFMSong.lastNote[chan] = note;
        }

        tSampleID = patrow->sampleID;
        if((tSampleID == 0)) {
            tSampleID = lastRowStats[chan].sampleID;    // remember the last knowin information
        } else {
            // its a good sample selection, update the lsampleID(last known sample)
            lastRowStats[chan].sampleID = patrow->sampleID;
        }
        smp = &KFMSong.SampleInf[tSampleID-1];   // true area of memory
        
        //if(patrow->sampleID)
            reStartNote = 1;    // alway retrigger sample... might make an instruction to be able to turn this on and off- per channel
        //else
        //    reStartNote = 0;
        sampPtr      = smp->sampleAddr;
        sampLoop     = smp->sampleLoop;
        sampLoopFrom = smp->sampleLoopFrom;
        sampLoopTo   = smp->sampleLoopTo;
        sampLen      = smp->sampleLength;

        if(patrow->sampleID){
            // only set if there is a sampleid assigned, if its 0, its likely a no note or held
            KFMSong.chanVolume[chan] = smp->sampleVolume;
        }

        paramCMD = patrow->cmd & 0xf;   // ensure this is only 4 bit commands (up up 15, commands, like i said, VERY basic player)
        paramS   = patrow->param;
        paramX   = (paramS) >> 4;    // upper nibble
        paramY   = (paramS) & 0xF;   // lower nibble
        ///////////////////////////////////////////////////////////////////////////////////////////////////
        // Part B, Process any commands ON this row -*-

        //
        switch(paramCMD){   // PER ROW COMMANDER

            case KFM_EFF_SETVOLUME:
                if(paramS > 63) KFMSong.chanVolume[chan] = 63;
                else            KFMSong.chanVolume[chan] = paramS;
            break;

            case KFM_EFF_EXTENDED:
                switch(paramX){
                    case KFM_EFF_EXT_VOLSDN:    // fine volume slide down
                        newVol = KFMSong.chanVolume[chan];
                        newVol -= paramY;
                        if(newVol < 0) newVol = 0;
                        KFMSong.chanVolume[chan] = (uint8_t)newVol;
                        ChannelAssignSetVol(chan, KFMSong.chanVolume[chan]);    // the volume of the channel to be played
                    break;

                    case KFM_EFF_EXT_VOLSUP:    // fine volume slide up
                        newVol = KFMSong.chanVolume[chan];
                        newVol += paramY;
                        if(newVol > 63) newVol = 63;
                        KFMSong.chanVolume[chan] = (uint8_t)newVol;
                        ChannelAssignSetVol(chan, KFMSong.chanVolume[chan]);    // the volume of the channel to be played
                    break;
                }
            break;
        }

        ///////////////////////////////////////////////////////////////////////////////////////////////////
        // Part C, set the channel and if a note is set, play it :)
        // Assign the sample information to the channel
        // NOTE: this will only take effect if the channel is enabled (EDITOR Specific) - Comments, love em
        if(note != NOTE_NONE && note != NOTE_HOLD){
            if ( bChannelEnabled[chan] ) { // only play if this channel is enabled
                ChannelAssignTRKR(chan,            // what channel
                                  sampPtr,         // Where is the sample in memory?
                                  sampLen,         // the length of the sample data
                                  sampLoop,        // is Sample Looping? (bool)
                                  sampLoopFrom,    // From Where is the Sample Looping
                                  sampLoopTo       // Sample Loop Target, to return to FROM (ughh english!)
                );
                ChannelAssignSetFreq(chan, KFMSong.chanFreq[chan]); // the frequencie of the channel being played
                KFMReplayChannel(chan, reStartNote);// crude replay trigger, basically telling the KFM Sampler to Play this sample
            }
        }

        ChannelAssignSetVol(chan, KFMSong.chanVolume[chan]);    // the volume of the channel to be played
    }
}
//###########################################################################################################
//###########################################################################################################
//###########################################################################################################
//###########################################################################################################





void PlaceNote(uint8_t keynoteid){
    int chanid, column;
    tPattern *patt;    
    patt = &KFMSong.Patterns[KFMSong.patternID];    // pattern 0 

    chanid = (editorTrackerColumn / 6) + editorTrackerChannelsOffset;

    tPatternRow *patrow = &patt->therow[KFMSong.lRow][chanid];

    column = editorTrackerColumn % 6;
    if(column == 0){
        if((keynoteid != NOTE_NONE)) {
            patrow->note = keynoteid;
            patrow->sampleID = editorSampleID;
        } else {
            patrow->note = NOTE_NONE;
            patrow->sampleID = 0;
            patrow->cmd = 0x0;
            patrow->param = 0x00;
        }
    
    }
}

void PlaceCommand(uint8_t cmd){
    int chanid, column;
    tPattern *patt;    
    patt = &KFMSong.Patterns[KFMSong.patternID];    // pattern 0 

    chanid = (editorTrackerColumn / 6) + editorTrackerChannelsOffset;

    tPatternRow *patrow = &patt->therow[KFMSong.lRow][chanid];

    column = editorTrackerColumn % 6;
    if(column == COLUMN_ID_COMMAND){    // even though this has already been checked, but still, never hurts for a doubler
        patrow->cmd = cmd;
    }
}

void PlaceParam(uint8_t nibble){
    int chanid, column;
    tPattern *patt;    
    patt = &KFMSong.Patterns[KFMSong.patternID];    // pattern 0 

    chanid = (editorTrackerColumn / 6) + editorTrackerChannelsOffset;

    tPatternRow *patrow = &patt->therow[KFMSong.lRow][chanid];

    column = editorTrackerColumn % 6;
    if(column == COLUMN_ID_PARAMHB){
        patrow->param = (patrow->param & 0x0F) | ((nibble << 4) & 0xF0);
    }
    if(column == COLUMN_ID_PARAMLB){
        patrow->param = (patrow->param & 0xF0) | (nibble & 0x0F);
    }
}

void PlaceSampleID(uint8_t nibble){
    int chanid, column;
    tPattern *patt;    
    patt = &KFMSong.Patterns[KFMSong.patternID];    // pattern 0 

    chanid = (editorTrackerColumn / 6) + editorTrackerChannelsOffset;

    tPatternRow *patrow = &patt->therow[KFMSong.lRow][chanid];

    column = editorTrackerColumn % 6;
    if(column == COLUMN_ID_SAMPLEHN){
        patrow->sampleID = (patrow->sampleID & 0x0F) | ((nibble << 4) & 0xF0);

        if((patrow->sampleID > KFMMAXSAMPLES))
            patrow->sampleID = KFMMAXSAMPLES;
    }
    if(column == COLUMN_ID_SAMPLELN){
        patrow->sampleID = (patrow->sampleID & 0xF0) | ((nibble) & 0x0F);
        //patrow->param = (patrow->param & 0xF0) | (nibble & 0x0F);
        if((patrow->sampleID > KFMMAXSAMPLES))
            patrow->sampleID = KFMMAXSAMPLES;
    }
}

void PlayNoteKeyDown(uint8_t keynote){
    uint8_t chan = (editorTrackerColumn / 6) + editorTrackerChannelsOffset;
    uint32_t freqTarg;

    uint32_t sampPtr;
    uint32_t sampLoopFrom, sampLoopTo, sampLen;
    uint16_t volume;
    bool_t sampLoop;


    tSampleInfo *smp;

    smp = &KFMSong.SampleInf[editorSampleID-1];   // true area of memory

    freqTarg = noteFrequencies[keynote];
    KFMSong.chanFreq[chan] = freqTarg;

    sampPtr      = smp->sampleAddr;
    sampLoop     = smp->sampleLoop;
    sampLoopFrom = smp->sampleLoopFrom;
    sampLoopTo   = smp->sampleLoopTo;
    sampLen      = smp->sampleLength;
    KFMSong.chanVolume[chan] = smp->sampleVolume;

    // Assign the sample information to the channel
    ChannelAssignTRKR(chan, sampPtr, sampLen, sampLoop, sampLoopFrom, sampLoopTo);

    ChannelAssignSetVol (chan, KFMSong.chanVolume[chan]);    // the volume of the channel to be played
    ChannelAssignSetFreq(chan, KFMSong.chanFreq[chan]);
    
    KFMReplayChannel(chan, 1);// crude replay trigger, basically telling the KFM Sampler to Play this sample


}

void ChannelAssignTRKR(uint8_t chan, uint8_t *addr, uint32_t len, bool_t loop, uint32_t lfrom, uint32_t lto){
	if (!SBAPI->snd.channel[chan]) {
		SBAPI->sys.printf("AssignSound: api_aud[%u] is NULL!\r\n", chan);
		return;
	}

    SBAPI->snd.channel[chan]->lSampPtr = addr;	// sample pointer, your sound variable 
	
	
	SBAPI->snd.channel[chan]->lSampleLen = len;	// the length of your sample!
	SBAPI->snd.channel[chan]->bLooping = loop;	// bool_t is this a looping sample?
	//SBAPI->snd.channel[chan]->lSampleOffset = 0;	// force a replay

	//default loop
	SBAPI->snd.channel[chan]->lLoopStart = lfrom;	// where to begin the loop from, relative from your sound pointer
	SBAPI->snd.channel[chan]->lLoopEnd = lto;	// the length of the loop.
}

void ChannelAssignSetVol(uint8_t chan, int vol){
    SBAPI->snd.channel[chan]->volume = vol * 2; // set volume
}

void ChannelAssignSetFreq(uint8_t chan, uint32_t f){
    SBAPI->snd.channel[chan]->lFreq = f;		// frequency RAW, corresponds to 44.1khz
}


void KFMReplayChannel(uint8_t chan, uint8_t retrigger){
    if(retrigger)
	    SBAPI->snd.channel[chan]->lSampleOffset = 0;	// force a replay
	SBAPI->snd.channel[chan]->bPlaying = 1;
}