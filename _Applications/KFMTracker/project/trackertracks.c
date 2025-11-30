#include "main.h"

#include "trackerui.h"
#include "patternbank.h"
#include "player.h"



uint8_t KeyboardNotes[] = {
    // note Id, KeyCode Associated 
    0,  0x1d, // C -- 1d
    1,  0x16, // C# - 16
    2,  0x1b, // D -- 1b
    3,  0x07, // D# - 07
    4,  0x06, // E -- 06
    5,  0x19, // F -- 19
    6,  0x0a, // F# - 0a
    7,  0x05, // G -- 05
    8,  0x0b, // G# - 0b
    9,  0x11, // A -- 11
    10, 0x0d, // A# - 0d
    11, 0x10, // B -- 10
    12, 0x36, // c -- 36

    12, 0x14, // C -- 14
    13, 0x1f, // C# - 1f
    14, 0x1a, // D -- 1a
    15, 0x20, // D# - 20
    16, 0x08, // E -- 08
    17, 0x15, // F -- 15
    18, 0x22, // F# - 22
    19, 0x17, // G -- 17
    20, 0x23, // G# - 23
    21, 0x1c, // A -- 1c
    22, 0x24, // A# - 24
    23, 0x18, // B -- 18
    24, 0x0C, // c -- 0c
};

uint8_t KeyboardToBase16[] = {  // acceptable number ranges
    0,  0x27,   // number 0
    1,  0x1E,   // number 1
    2,  0x1F,   // number 2
    3,  0x20,   // number 3
    4,  0x21,   // number 4
    5,  0x22,   // number 5
    6,  0x23,   // number 6
    7,  0x24,   // number 7
    8,  0x25,   // number 8
    9,  0x26,   // number 9
    10, 0x04,   // number 10 (A)
    11, 0x05,   // number 11 (B)
    12, 0x06,   // number 12 (C)
    13, 0x07,   // number 13 (D)
    14, 0x08,   // number 12 (E)
    15, 0x09,   // number 13 (F)
};



void RenderTrackerBackGnd(){
    int colg;
    int row, col, txtY;
    int dwidth;

    SBGfxDColour = 0;
    uiDrawBeval(0, 137, 478, 181, GUIColourHiLight, GUIColourShadow);

    // pattern row info column
    SBGfxDColour = 0;
    SBGfxRectF (6, 167, 36,  159+153);
    uiDrawBeval(6, 167, 30,  146, GUIColourShadow, GUIColourHiLight);

    SBGfxDColour = GUIColourFace;
    SBGfxRectF (10, 232, 10 + 23, 232 + 18);
    uiDrawBeval(10, 232, 22, 16, GUIColourHiLight, GUIColourShadow);

    // pattern ID row 
    SBGfxDColour = 0;
    SBGfxRectF (6, 143, 36,  143 + 20);
    uiDrawBeval(6, 143, 30,  20, GUIColourShadow, GUIColourHiLight);


    // channel columns
    colg = 54;
    for(col = 0; col < 4; col++){
        dwidth = (col * 82);
        SBGfxDColour = 0;
        SBGfxRectF (40 + dwidth, 167, dwidth + 40 + 77, 160+153);
        uiDrawBeval(40 + dwidth, 167, 78, 146, GUIColourShadow, GUIColourHiLight);
        
        // middle section
        SBGfxDColour = 5;
        SBGfxRectF (44 + dwidth, 232, dwidth + 40 + 75, 232 + 18);
        uiDrawBeval(44 + dwidth, 232, 70, 16, GUIColourHiLight, GUIColourShadow);
    }
}

void MovePatternRow(int8_t direction){
    int8_t newPos;

    newPos = KFMSong.lRow;

    newPos += direction;

    if((newPos > 63))
        newPos = 0;
    if((newPos < 0))
        newPos = 63;

    KFMSong.cRow = KFMSong.lRow = newPos;
    
}

extern char noteLabels[OCTAVES * NOTES_PER_OCTAVE][4];
static char focusTmr = 0;
static char focusOn = 0;

void RenderTracker(){
    uint8_t rowtxt[4];
    int16_t rowIndex;
    int16_t beatRow ;

    uint8_t notestxt[4];
    uint8_t notessampid[4];
    uint8_t notescmd[2];
    uint8_t noteseffect[4];

    uint8_t notename[4];
    tPattern *patt;
    tPatternRow *prow;
    int theRowID;
    int rowOffset;
    int tmpx, tmpy;

    patt = &KFMSong.Patterns[KFMSong.patternID];    // demo test

    int16_t row, col, txtY;

    rowIndex = KFMSong.lRow - 6;
    beatRow = rowIndex;


    // ensure this only draws on the front buffer

    // will need to make sure that this only renders if the sample editor window is not open (this is not implemented yet)
    SBGfxDColour = GUIColourNotes;
    SBGfxBGColour = GUIColourBlack;
    sprintf(rowtxt, "%02u", KFMSong.patternID);
    SBGfxDrawTextFGF (14 , 144 + 2, rowtxt);


    txtY = 0;
    for(row = 0; row < 13; row++){
        rowOffset = row + rowIndex;
        if ((rowOffset >= 0) && (rowOffset < 64)) {
            sprintf(rowtxt, "%02u", rowOffset);   

            // row id draw
            if(row == 6){
                SBGfxDColour = 16;
                SBGfxDrawTextFGF (14 , 174 + (txtY * 10), rowtxt);
            } else {
                SBGfxDColour = GUIColourRowID;
                SBGfxDrawTextSFGF(14 , 172 + (txtY * 10), rowtxt);
            }

            for(col = 0; col < 4; col++){
                prow = &patt->therow[rowOffset][col + editorTrackerChannelsOffset];
                // NOTE|SAMPID|CMD|PARAM

                const char* noteStr = getNoteLabel(prow->note);
                sprintf(notestxt, "%s", noteStr);
                sprintf(notessampid, "%02X", prow->sampleID);
                sprintf(notescmd, "%1X", prow->cmd);
                sprintf(noteseffect, "%02X", prow->param);

                tmpx = (col * 82);

                

                if(row == 6){
                    tmpy = 174 + (txtY * 10);
                    SBGfxDrawTextFGF (46 + tmpx, tmpy, notestxt);
                    SBGfxDrawTextFGF (73 + tmpx, tmpy, notessampid);
                    SBGfxDrawTextFGF (90 + tmpx, tmpy, notescmd);
                    SBGfxDrawTextFGF (98 + tmpx, tmpy, noteseffect);

                } else {
                    tmpy = 172 + (txtY * 10);
                    if(beatRow==0){
                        // a beat row
                        SBGfxDColour = 12;
                        SBGfxRectF(44 + tmpx, tmpy-2, 115 + tmpx, tmpy+10);
                    }

                    SBGfxDColour = GUIColourNotes;          SBGfxDrawTextSFGF(46 + tmpx, tmpy, notestxt);
                    SBGfxDColour = GUIColourSampleID;       SBGfxDrawTextSFGF(73 + tmpx, tmpy, notessampid);
                    SBGfxDColour = GUIColourNoteCommand;    SBGfxDrawTextSFGF(90 + tmpx, tmpy, notescmd);
                    SBGfxDColour = GUIColourNoteEffect;     SBGfxDrawTextSFGF(98 + tmpx, tmpy, noteseffect);
                }
            }
        }
        beatRow++;
        beatRow %= 4;

        txtY ++;
        if(row == 6)
            txtY ++;
    }

    // render the edit selection over forcusser
    //GUIColourFocus
    // only show this if the edit mode is on since we'll flash this every 250ms (or every 25 frames)
    uint16_t selectColumn, chanSelect, xeditcoords, weditcoords,
        xchaneditcoords, wchaneditcoords;

    selectColumn = editorTrackerColumn;
    chanSelect = (selectColumn / 6) * 2;

    xeditcoords = editColumnXCoords[(selectColumn * 2)];
    weditcoords = xeditcoords + editColumnXCoords[(selectColumn * 2) + 1];

    xchaneditcoords = editColumnChannelCoords[chanSelect];
    wchaneditcoords = xchaneditcoords + editColumnChannelCoords[chanSelect + 1];

    focusTmr++;
    if(focusTmr>25) {
        focusTmr = 0;
        focusOn = 1 - focusOn;
    }

    if(editorTrackerEditMode){
        SBGfxDColour = GUIColourFocus;
        if(focusOn){
            SBGfxRect(xeditcoords, 232,   weditcoords, 232 + 17);
            SBGfxRect(xeditcoords+1, 233, weditcoords-1, 231 + 17);
        }
        SBGfxRect(xchaneditcoords, 230,   wchaneditcoords, 234 + 17);
        SBGfxRect(xchaneditcoords+1, 231, wchaneditcoords-1, 233 + 17);
    }
}

const uint16_t editColumnXCoords[12 * 4] = {
    // channel focus area channel 1/5
    44,  28,
    71,  11,
    79,  11,
    88,  11,
    96,  11,
    104, 11,

    (82*1) + 44,  28,
    (82*1) + 71,  11,
    (82*1) + 79,  11,
    (82*1) + 88,  11,
    (82*1) + 96,  11,
    (82*1) + 104, 11,

    (82*2) + 44,  28,
    (82*2) + 71,  11,
    (82*2) + 79,  11,
    (82*2) + 88,  11,
    (82*2) + 96,  11,
    (82*2) + 104, 11,

    (82*3) + 44,  28,
    (82*3) + 71,  11,
    (82*3) + 79,  11,
    (82*3) + 88,  11,
    (82*3) + 96,  11,
    (82*3) + 104, 11,

};

#define channelFocusWidth 75
const uint16_t editColumnChannelCoords[8] = {
    42,     channelFocusWidth,  // channel 1/5
    124,    channelFocusWidth,  // channel 2/6
    206,    channelFocusWidth,  // channel 3/7
    288,    channelFocusWidth   // channel 4/8
};

#define CONFIRM_BOX_LEFT    0
#define CONFIRM_BOX_TOP     0
#define CONFIRM_BOX_RIGHT   140
#define CONFIRM_BOX_BOTTOM  100
#define CONFIRM_BOX_WIDTH   (CONFIRM_BOX_LEFT + CONFIRM_BOX_RIGHT)
#define CONFIRM_BOX_HEIGHT  (CONFIRM_BOX_TOP  + CONFIRM_BOX_BOTTOM)

#define CONFIRM_BOX_QUIT_LEFT   (CONFIRM_BOX_LEFT + 20)
#define CONFIRM_BOX_QUIT_TOP    (CONFIRM_BOX_TOP  + 20)

#define CONFIRM_BOX_YES_LEFT    (CONFIRM_BOX_LEFT + 20)
#define CONFIRM_BOX_YES_TOP     (CONFIRM_BOX_TOP  + 60)

#define CONFIRM_BOX_NO_LEFT     (CONFIRM_BOX_LEFT + 80)
#define CONFIRM_BOX_NO_TOP      CONFIRM_BOX_YES_TOP

int RenderConfirmYESNObox(int x, int y, uint8_t mbclick){

    SBGfxDColour = 17;
    SBGfxRectF(0, 0, 480, 320);

    SBGfxDColour = GUIColourFace;
    SBGfxRectF(CONFIRM_BOX_LEFT, CONFIRM_BOX_TOP, CONFIRM_BOX_WIDTH, CONFIRM_BOX_HEIGHT);
    uiDrawBeval(CONFIRM_BOX_LEFT, CONFIRM_BOX_TOP, CONFIRM_BOX_RIGHT, CONFIRM_BOX_BOTTOM, GUIColourHiLight, GUIColourShadow);
    SBGfxDColour = GUIColourText;
    SBGfxDrawTextFGF (CONFIRM_BOX_QUIT_LEFT, CONFIRM_BOX_QUIT_TOP, "QUIT?");

    // constant render, (this is an unusual overlay thing)
    guiRenderButton(BUTTON_YES, 0);
    guiRenderButton(BUTTON_NO,  0);
}