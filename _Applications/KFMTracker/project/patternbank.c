#include "main.h"

#include "player.h"
#include "trackerui.h"
#include "patternbank.h"



int patternstotal = 1;


extern const uint8_t demoNotes[];
extern const uint8_t demoNotes2[];

const uint8_t demoNotesSampleID1[64];
const uint8_t demoNotesSampleID2[64];

void initPatternTest(){
    tPattern *patt;
    tPatternRow *prow;
    int row, chan;
    patt = &KFMSong.Patterns[0];
    
    // notes test melody
    for(row = 0; row < 64; row++){
        prow = &patt->therow[row][0];
        if(demoNotes[row] != NOTE_NONE) {
            prow->note = demoNotes[row] + (1 * 12);
            prow->sampleID = 1;
        } 
        else {
            prow->note = NOTE_NONE;
            prow->sampleID = 0;
        }
    }

    // drum sequence
    for(row = 0; row < 64; row++){
        prow = &patt->therow[row][1];
        if(demoNotes2[row] != NOTE_NONE) {
            prow->note = demoNotes2[row]  + (2 * 12);
            prow->sampleID = demoNotesSampleID2[row] - 3;
        } else {
            prow->note = NOTE_NONE;
            prow->sampleID = 0x00;
        }
    }
}