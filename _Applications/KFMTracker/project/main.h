#ifndef MAINKFM_H
#define MAINKFM_H


#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>

#include "../../../_coreapi_/apis.h"
#include "../../../_coreapi_/api_kbsupport.h"

#define bool_t  uint8_t
#define true    0x01
#define false   0x00

#define cursorBlinkTime 	20	// time before cursorBlink is toggled.


enum {
    bShowConfigNULL,    // the home screen
    bShowConfigPatternEdit,
    bShowConfigSampleIDEdit,
    bShowFileRequest,
} CONFIGSCREENMODE ;

extern uint8_t nConfigScreenMode;

extern bool_t bShowingPatternEditor;
extern uint8_t editorTrackerChannelsOffset;



extern int 	    cursorBlinkTmr;
extern bool_t 	cursorBlinkStat;




#endif