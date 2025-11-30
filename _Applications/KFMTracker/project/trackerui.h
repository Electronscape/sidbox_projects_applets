#ifndef TRACKERUI_H
#define TRACKERUI_H




extern const uint8_t catsplat[];

#define     MAX_BUTTONS_GUI         64
#define     GLBUTTON_HEIGHT			25
#define     GLBUTTON_SUB_HEIGHT		22


#define     GUIColourBlack          16

#define     GUIColourFileText       9
#define     GUIColourDirectoryText  29

#define     GUIColourText           GUIColourBlack
#define     GUIColourTextInfo       2

#define     GUIColourRowID          8
#define     GUIColourNotes          8
#define     GUIColourSampleID       9
#define     GUIColourNoteCommand    10
#define     GUIColourNoteEffect     11

#define     GUIColourFocus          31

#define     GUIColourHiLight        6
#define     GUIColourFace           5   //
#define     GUIColourShadow         4

#define     gbStatReleased  (1 << 0)
#define     gbStatPressed   (1 << 1)
#define     gbStatDisabled  (1 << 2)
#define     gbStatEnabled   (1 << 3)
#define     gbStatHidden    (1 << 4)
#define     gbStatToplayer  (1 << 5)
#define     gbStatGhost     (1 << 6)    // still enabled, but uses the ghost colour



#define     DEBOUNCE_MS	            5
#define     HOLDREPEATSTART         30 // start timer (usually raise a click event here)
#define     HOLDREPEATTMR           0  // the restart point so the repeats are more frequent


#define EVENTS_MOUSE_LEFTCLICK 	    (1 << 0)
#define EVENTS_MOUSE_RIGHTCLICK     (1 << 1)
#define EVENTS_MOUSE_LEFTDOWN	    (1 << 2)
#define EVENTS_MOUSE_LEFTUP		    (1 << 3)
#define EVENTS_MOUSE_RIGHTDOWN	    (1 << 4)
#define EVENTS_MOUSE_RIGHTUP	    (1 << 5)


#define EVENT_TYPE_BUTTONHIT        0x01    // clicked on a GUI button
#define EVENT_TYPE_MOUSEMOVE        0x02    // mouse moved a bit
#define EVENT_TYPE_MOUSECLICK       0x04    // mouse click (left or right)
#define EVENT_TYPE_SCROLLERMOVE     0x08    // scrolled a scroll bar
#define EVENT_TYPE_KBHIT            0x10    // a keyboard input received.
#define EVENT_TYPE_KBKEYDOWN        0x20    // a keyboard from up, to press down event 
#define EVENT_TYPE_KBKEYUP          0x40    // a keyboard from pressed, to release event 


#define KEYIN_LEFT                  0x50
#define KEYIN_RIGHT                 0x4F
#define KEYIN_UP                    0x52
#define KEYIN_DOWN                  0x51
#define KEYIN_SPACE                 0x2C

#define KEYIN_OCTIVE0               0x70
#define KEYIN_OCTIVE1               0x71
#define KEYIN_OCTIVE2               0x72
#define KEYIN_OCTIVE3               0x73
#define KEYIN_OCTIVE4               0x74

//#define KEYIN_SHIFT                 
#define KEYIN_DELETE                0x4C    // delete a note 
#define KEYIN_RETURN                0x28    // return key - pushes notes down (WITH SHIFT, otherwise just toggles editmode off)
#define KEYIN_BACKSPACE             0x2A    // backspace - deletes notes on the way up, pulls notes up  (only works with shift, otherwise toggles editmode off)



// OUR BUTTONS
#define GLYPH_UP                    "\x1E"
#define GLYPH_TICK                  "\x02"
#define GLYPH_NOTICK                "\x03"
#define GLYPH_DOWN                  "\x1F"
#define GLYPH_LEFT                  "\x11"
#define GLYPH_RIGHT                 "\x10"

#define BUTTON_NULL                 0
#define BUTTON_CLOSE			    1
#define BUTTON_PLAY				    2
#define BUTTON_PLAYPATTERN		    3
#define BUTTON_EDITPATTERN		    4
#define BUTTON_NEWMODFILE 		    5
#define BUTTON_STOP				    6
#define BUTTON_POSITION_UP		    7
#define BUTTON_POSITION_DOWN	    8
#define BUTTON_PATTERNID_UP		    9
#define BUTTON_PATTERNID_DOWN	    10
#define BUTTON_SONGLEN_UP		    11
#define BUTTON_SONGLEN_DOWN		    12
#define BUTTON_SAMPID_UP		    13
#define BUTTON_SAMPID_DOWN		    14
#define BUTTON_TEMPO_UP			    15
#define BUTTON_TEMPO_DOWN		    16
#define BUTTON_CHANNEL_LEFT		    17
#define BUTTON_CHANNEL_RIGHT	    18

#define BUTTON_FREQDOWN             19
#define BUTTON_FREQUP               20

#define BUTTON_LOAD                 21
#define BUTTON_SAVE                 22
#define BUTTON_OPT_SAMPLES          23
#define BUTTON_OPT_KFMSYNTHS        24
#define BUTTON_PATTERNS             25
#define BUTTON_SAMPLEID             26  


#define BUTTON_CHANONOF_1           27
#define BUTTON_CHANONOF_2           28
#define BUTTON_CHANONOF_3           29
#define BUTTON_CHANONOF_4           30
#define BUTTON_CHANONOF_5           31
#define BUTTON_CHANONOF_6           32
#define BUTTON_CHANONOF_7           33
#define BUTTON_CHANONOF_8           34


// buttons here are buttons that will be in the config window... so expect same number buttons
// must keep a tight control over the buttons and states!! otherwise events clicks will probably do other things instead of the intended function
#define BUTTON_CONFIG_START_        35  // this is the start of the config window location!

// scroll and close (do not reuse these button ids)
#define BUTTON_EXIT_CONF            BUTTON_CONFIG_START_
#define BUTTON_CONF_SCR_UP          36
#define BUTTON_CONF_SCR_DOWN        37

// for the Sample ID
#define BUTTON_CONF_SAMP_VOL_UP     38
#define BUTTON_CONF_SAMP_VOL_DN     39
#define BUTTON_CONF_SAMP_LEN_UP     40
#define BUTTON_CONF_SAMP_LEN_DN     41
#define BUTTON_CONF_SAMP_REPEAT_UP  42
#define BUTTON_CONF_SAMP_REPEAT_DN  43
#define BUTTON_CONF_SAMP_REPLEN_UP  44
#define BUTTON_CONF_SAMP_REPLEN_DN  45
#define BUTTON_CONF_SAMP_FINETN_UP  46
#define BUTTON_CONF_SAMP_FINETN_DN  47
#define BUTTON_CONF_SAMP_LOADBUTTON 48
#define BUTTON_CONF_SAMP_TOGLOOP    49

// for File Requester - so can USE the same IDs here
#define BUTTON_FILEREQ_OPEN         38
#define BUTTON_FILEREQ_PARENT       39

#define BUTTON_CONFIG_END_          BUTTON_CONF_SAMP_TOGLOOP  // The last button of the config window, since will be doing a sweep disable / enables

#define BUTTON_YES				    (MAX_BUTTONS_GUI-1)
#define BUTTON_NO				    (MAX_BUTTONS_GUI-2)


#define SHOW_LOGO 1

extern uint8_t nConfigScreenMode;

extern uint8_t editorSampleID;

#define COLUMN_ID_NOTE      0
#define COLUMN_ID_SAMPLEHN  1
#define COLUMN_ID_SAMPLELN  2
#define COLUMN_ID_COMMAND   3
#define COLUMN_ID_PARAMHB   4
#define COLUMN_ID_PARAMLB   5

extern uint8_t editorTrackerColumn; // this is the column editor selection
extern uint8_t editorTrackerEditMode;
extern uint8_t editorTrackerCurrentOctave;  // current octive notes will be set/loaded/played

extern const uint16_t editColumnXCoords[];
extern const uint16_t editColumnChannelCoords[];


// editable lookup tables
extern uint8_t KeyboardNotes[];
extern uint8_t KeyboardToBase16[];

void HWBUTTISRR(uint8_t *portbits);


#endif