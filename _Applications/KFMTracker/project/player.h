#include <stdint.h>

#ifndef KFMPLAYER_H
#define KFMPLAYER_H




#define FIXED_SHIFT 16
#define FIXED_ONE   (1 << FIXED_SHIFT)
#define FIXED_NOTESHIFT 65536

#define KFMPLAY_SPEED_DEFAULT   6   // speed, sticking with much of the protracker timing as best we can
#define KFMPLAY_TEMPO_DEFAULT   150 // default TEMPO, so TEMPO / SPEED
//#define KFMPLAY_TEMPO_DEFAULT   32 // default TEMPO, so TEMPO / SPEED
#define KFMPLAY_ROWS_PER_BEAT   4


#define OCTAVES                 6
#define NOTES_PER_OCTAVE        12
#define FINE_STEPS              8

#define MAX_NOTES               (OCTAVES * NOTES_PER_OCTAVE)



#define NOTE_NONE   0xFF    // no note at all (empty)
#define NOTE_HOLD   0xFE    // note sustain/gate hold - for KFM



// player status
extern bool_t bKFMPlayer_Playing;
extern bool_t bKFMPlayer_PlayPattern;

extern uint8_t editorSampleID;
extern uint8_t editorTrackerColumn;

extern const uint8_t sample2Test[];
extern const uint8_t sample4Test[];
extern const uint8_t sample8Test[];

extern bool_t bChannelEnabled[];

// SOURCE NOTES PER FREQUENCY TABLE TEST
/*
 Source notes:

    c-0 2047
    c#0 2177
    d-0 2294
    d#0 2479
    e 0 2608
    f 0 2746
    f#0 2955
    G 0 3116
    g#0 3326
    A 0 3512
    a#0 3697
    B 0 3940

    c-1 4151
    c#1 4399
    d-1 4652
    d#1 4932
    e 1 5237
    f 1 5553
    f#1 5908
    G 1 6225
    g#1 6627
    A 1 7007
    a#1 7392
    B 1 7803

    c-2 8287
    c#2 8742
    d-2 9357
    d#2 9871
    e 2 10462
    f 2 10988
    f#2 11805
    G 2 12516
    g#2 13161
    A 2 14006
    a#2 18427
    B 2 15740

    C 3 16672
    C#3 17663
    D 3 18525
    d#3 19665
    e 3 20822
    f 3 22165
    f#3 23382
    G 3 24815
    g#3 26286
    A 3 27962
    a#3 29456
    B 3 31355

    C 4 32983
    C#4 35014
    D 4 37570
    d#4 39190
    e 4 41493
    f 4 43996
    f#4 47070
    G 4 49583
    g#4 52379
    A 4 55533
    a#4 59091
    B 4 63148
*/







#define KFMCHANNELS         8
#define KFMPATTERNLEN       64
#define KFMMAXPATTERNS      64
#define KFMMAXSAMPLES       31
#define KFMMAXSONGLEN       64
#define KFMMAXSAMPVOL       63

#define BYES                1
#define BNO                 0


typedef struct {
    uint32_t sampleAddr;        // address of where the sample is in memory
    uint32_t sampleOffset;      // play start offset (if needed)
    uint32_t sampleLength;      // length of the sample
    uint32_t sampleFrequency;   // the base frequency of the sample (adjustable via the note)
    uint32_t sampleLoopFrom;    // sample Loop start    (ADDR + location of loop start)
    uint32_t sampleLoopTo;      // sample loop to, absolute address  (ADDR + location of loop end)
    bool_t   sampleLoop;        // is a looping sample
    uint8_t  sampleVolume;      // volume of the sample (which is going to be added to note volume)
    uint8_t  padding[2];        // padding
} tSampleInfo;

typedef struct {
    uint8_t note;           // note id
    uint8_t sampleID;       // sample id
    uint8_t cmd;

    uint8_t param;
    //uint8_t reserved[3];    // padding
    
} tPatternRow;


typedef struct {
    tPatternRow therow[KFMPATTERNLEN][KFMCHANNELS];    // maximum of 64 rows
} tPattern;


// Song Status information
typedef struct {
    tPattern    Patterns[KFMMAXPATTERNS];   // The Patterns Music Sheet :)
    tSampleInfo SampleInf[KFMMAXSAMPLES];   

    uint16_t tempo;   
    uint16_t speed;

    // crow=current row, lrow=lastrow, tickperrow=ticks per row, used for effects, slide up, slide down, portamento....... blah blah
    uint32_t cRow,  lRow, tickCounter;            // last row, current row  
    
    uint16_t patternID;              // current pattern being played
    uint16_t songPosition;           // the position of the song
    uint16_t songLength;             // length of the song
    uint16_t songPatternSequence[KFMMAXSONGLEN];    // patterns sequence list

    // RowTick Memory
    uint32_t chanFreq[KFMCHANNELS];  

    int8_t   chanVolume[KFMCHANNELS];    // the channels volume to play at
    uint8_t  lastNote[KFMCHANNELS];     // remember the last Note Played, reference note
    uint8_t  padding[2];
} tPlayer;

extern tPlayer KFMSong;

#define KFM_EFF_ARPEGIO         0x0     // PER TICK // Arpegio, with our timing system - Yeah, this is going to be fun! :/
#define KFM_EFF_PORTAMENTOUP    0x1     // PER TICK/ROW // portamento UP
#define KFM_EFF_PORTAMENTODN    0x2     // PER TICK/ROW // portamento DOWN
#define KFM_EFF_VOLUMESLIDE     0xA     // PER TICK
#define KFM_EFF_SETVOLUME       0xC     // PER ROW

#define KFM_EFF_EXTENDED        0xE     // PER ROW
#define KFM_EFF_EXT_VOLSDN      0xA     // PER ROW - Extended Volume Slide down
#define KFM_EFF_EXT_VOLSUP      0xB     // PER ROW - Extended Volume Slide down

#define SAMPLE_RAM_SPACE_SIZE        (0x10000 * (KFMMAXSAMPLES+1)) // a sample max len of 64k
extern uint8_t sampleRamSpace[];



#endif