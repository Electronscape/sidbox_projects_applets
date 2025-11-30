/*
File format V1.0

uint8_t songmagic[8] = "KFCMODV1";      // magic header for song type
typedef struct {} tPlayer;

*/


#include <stdint.h>
#include "player.h"


#ifndef KFMFILEFORMAT_H
#define KFMFILEFORMAT_H


// file container information.

// FILE CONTAINER INFORMATION

/*  ////// THE HEADER ////////////////
    u8[8]:  "KFMMODV1"              // magic header
    u16:    tempo                   // tempo of song
    u16:    speed                   // speed of song
    u16:    songLen                 // song length
    u16:    songSequences[64]       // pattern sequence order
    u16:    highestPattern          // highest pattern id
    u16:    reserved                // padding
*/

/*  ////// PATTERNS //////////////////
    u8[8]:  "PATTERNS"              // section header

    repeat (highestPattern+1) times:
        u8[4]: "PATT"               // pattern marker
        u8[]:  pattern data         // (64 rows × 8 channels × sizeof(tPatternRow))
*/

/*  ////// SAMPLE INFORMATIONS ///////
    u8[8]:  "SAMPINFO"              // section header

    repeat 32 times:
        u32:    sampleOffset        // start offset
        u32:    sampleLength        // length of sample
        u32:    sampleFrequency     // base frequency
        u32:    sampleLoopFrom      // loop start
        u32:    sampleLoopTo        // loop end
        u8:     sampleLoop          // looping enabled
        u8:     sampleVolume        // default volume
*/

/*  ////// SAMPLE DATA ///////////////
    u8[8]:  "8BWSAMPS"              // section header

    repeat 32 times:
        u8[4]:  "8BWD"              // per-sample marker
        u8[]:   sample bytes        // (sampleLength)

    u8[8]:  "SDATEND."              // end marker

*/



__attribute__((packed))
typedef struct {

    uint8_t songmagic[8];// = "KFCMODV1";      // magic header for song type

    uint16_t tempo; // KFMPLAY_TEMPO_DEFAULT
    uint16_t speed; // KFMPLAY_SPEED_DEFAULT

    uint16_t songLength;             // length of the song
    uint16_t songPatternSequence[KFMMAXSONGLEN];    // patterns sequence list

    uint16_t highestPatternID;
    uint16_t reserved;

    // RowTick Memory
} tFileContainer;











#endif