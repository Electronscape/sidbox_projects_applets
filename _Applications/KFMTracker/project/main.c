#include "main.h"

#include "font.h"

#include "trackerui.h"
#include "player.h"

#include "filerequest.h"

static uint8_t hwbutts;		// buffer for hardware button presses
static int mouseX, mouseY;
static bool_t ExitKFMTracker = false;
static bool_t ExitKFMConfirm = false;

const unsigned long clut32[] = {
	0x00000000, 0xFFAFAFAF, 0xFFFFFFFF, 0xFF3B67A2, 0xFF755533, 0xFFAA907C, 0xFFFFCAAA, 0xFFFFA997, 0xFF59A9FF, 0xFF8EE769, 0xFFFFB6A2, 0xFF3CC6CA, 0xFF3C5185, 0xFF3D9318, 0xFFB33418, 0xFFD9311C, 
	0xFF000000, 0x33000000, 0xFF00001D, 0xFF00002B, 0xFF000139, 0xFF000147, 0xFF000156, 0xFF000164, 0xFF0001D2, 0xFF0001FF, 0xFFCECECE, 0xFF00FF00, 0xFFB2FF00, 0xFFFFE700, 0xFFFF9600, 0xFFFF1100, 
	0xFF491200, 0xFF491355, 0xFF4914AA, 0xFF4916FF, 0xFF5B1700, 0xFF5B1855, 0xFF5B19AA, 0xFF5B1AFF, 0xFF6D1B00, 0xFF6D1C55, 0xFF00E300, 0xFF85FF54, 0xFFC4FF00, 0xFFFFD900, 0xFFFFA41F, 0xFFE05400, 
	0xFFFF0000, 0xFF922655, 0xFF9227AA, 0xFF9228FF, 0xFFA42900, 0xFFA42A55, 0xFFA42BAA, 0xFFA42CFF, 0xFFB62D00, 0xFFB62F55, 0xFFB630AA, 0xFFB631FF, 0xFFC93200, 0xFFC93355, 0xFFC934AA, 0xFFC935FF, 
	0xFFDB3700, 0xFFDB3855, 0xFFDB39AA, 0xFFDB3AFF, 0xFFED3B00, 0xFFED3C55, 0xFFED3DAA, 0xFFED3FFF, 0xFFFF4000, 0xFFFF4155, 0xFFFF42AA, 0xFFFF43FF, 0xFF004400, 0xFF004555, 0xFF0046AA, 0xFF0048FF, 
	0xFFFFFF00, 0xFF12FF55, 0xFF12EE55, 0xFF12B6FF, 0xFF001FFF, 0xFF9D0EC7, 0xFFF10000, 0xFFFF7700, 0xFF514020, 0xFF375355, 0xFF3754AA, 0xFF3755FF, 0xFF495600, 0xFF495855, 0xFF4959AA, 0xFF495AFF, 
	0xFF5B5B00, 0xFF5B5C55, 0xFF5B5DAA, 0xFF5B5EFF, 0xFF6D6000, 0xFF6D6155, 0xFF6D62AA, 0xFF6D63FF, 0xFF6D6400, 0xFF806555, 0xFF8066AA, 0xFF8067FF, 0xFF926900, 0xFF926A55, 0xFF926BAA, 0xFF926CFF, 
	0xFFA46D00, 0xFFA46E55, 0xFFA46FAA, 0xFFA471FF, 0xFFB67200, 0xFFB67355, 0xFFB674AA, 0xFFB675FF, 0xFFC97600, 0xFFC97755, 0xFFC979AA, 0xFFC97AFF, 0xFFDB7B00, 0xFFDB7C55, 0xFFDB7DAA, 0xFFDB7EFF, 
	0xFFED7F00, 0xFFED8055, 0xFFED82AA, 0xFFED83FF, 0xFFFF8400, 0xFFFF8555, 0xFFFF86AA, 0xFFFF87FF, 0xFF008800, 0xFF008A55, 0xFF008BAA, 0xFF008CFF, 0xFF128D00, 0xFF128E55, 0xFF128FAA, 0xFF1290FF, 
	0xFF249200, 0xFF249355, 0xFF2494AA, 0xFF2495FF, 0xFF379600, 0xFF379755, 0xFF3798AA, 0xFF3799FF, 0xFF499B00, 0xFF499C55, 0xFF499DAA, 0xFF499EFF, 0xFF5B9F00, 0xFF5BA055, 0xFF5BA1AA, 0xFF5BA3FF, 
	0xFFA4B5D5, 0xFFA0B0F8, 0xFF94A3E6, 0xFF7C89C1, 0xFF6281C0, 0xFF1C62A1, 0xFF4254EA, 0xFF62A1BD, 0xFF7093C0, 0xFF4977A1, 0xFF003FAA, 0xFF1554FF, 0xFF1C50B9, 0xFF00B3FF, 0xFF0088AA, 0xFF00B5FF, 
	0xFF0E62FF, 0xFF5EB7E3, 0xFFBDC0B9, 0xFF85B9FF, 0xFF006CAF, 0xFF1F81B9, 0xFF3F5BAA, 0xFFC9BEFF, 0xFF5BAFCB, 0xFFDBC055, 0xFFDBC1AA, 0xFFBDC0C0, 0xFFEDC400, 0xFFEDC555, 0xFFEDC6AA, 0xFFEDC7FF, 
	0xFFFFC800, 0xFFFFC955, 0xFFFFCAAA, 0xFFFFCCFF, 0xFF00CD00, 0xFF00CE55, 0xFF00CFAA, 0xFF00D0FF, 0xFF12D100, 0xFF12D255, 0xFF12D3AA, 0xFF12D5FF, 0xFF24D600, 0xFF24D755, 0xFF24D8AA, 0xFF24D9FF, 
	0xFF37DA00, 0xFF37DB55, 0xFF37DDAA, 0xFF37DEFF, 0xFF49DF00, 0xFF49E055, 0xFF49E1AA, 0xFF49E2FF, 0xFF5BE300, 0xFF5BE555, 0xFF5BE6AA, 0xFF5BE7FF, 0xFF6DE800, 0xFF6DE955, 0xFF6DEAAA, 0xFF6DEBFF, 
	0xFF6DEC00, 0xFF80EE55, 0xFF80EFAA, 0xFF80F0FF, 0xFF93CEA2, 0xFF92F255, 0xFF92F3AA, 0xFF92F4FF, 0xFFA4F600, 0xFFA4F755, 0xFFA4F8AA, 0xFFA4F9FF, 0xFFB6FA00, 0xFFB6FB55, 0xFFB6FCAA, 0xFFB6FEFF, 
	0xFFC9FF00, 0xFFC9FF55, 0xFFC9FFAA, 0xFFC9FFFF, 0xFFDBFF00, 0xFFDBFF55, 0xFFDBFFAA, 0xFFDBFFFF, 0xFFEDFF00, 0xFFEDFF55, 0xFFEDFFAA, 0xFFEDFFFF, 0xFFFFFF00, 0xFFFFFF55, 0xFFFFFFAA, 0xFFFFFFFF, 
};


// Align to 4 byte memory location
#define ALIGN4(x) (((x) + 3) & ~3)

void setFont(){
	uint8_t (*fontAddr)[8] = SBAPI->gfx.font;
	uint16_t addx, addy;
	for(addx = 0; addx<256; addx++){
		for(addy = 0; addy<8; addy++){
			fontAddr[addx][addy] = font[addx][addy];
		}
	}
}

extern uint32_t ui_events;

uint8_t last_keyReport[8];
uint8_t keyReportRaw[8];

uint8_t GetKeyIn(uint8_t keycode){
	uint8_t keyindex;
	// scan the packet for the key we want
	for(keyindex = 0; keyindex < 8; keyindex ++){
		if(keyReportRaw[keyindex] == keycode) return(keyReportRaw[keyindex]);
	}
	return (0);
}

extern uint8_t bShift;

void KB_ISR2(uint8_t *packet) {
    bool shift = (packet[0] & (1 << 1)) || (packet[0] & (1 << 5));
	bShift = shift;

	keyReportRaw[8] = '\0';
	keyReportRaw[9] = '\0';

	ui_events |= EVENT_TYPE_KBHIT;	// keyboard input event
    for (int i = 2; i < 8; i++) {
        uint8_t code = packet[i];
		keyReportRaw[i-2] = code;
        if (code == 0) continue;

		bool already_held = false;
        
        for (int j = 2; j < 8; j++) {
            if (code == last_keyReport[j]) {
                already_held = true;
                break;
            }
        }

        if (already_held) continue;

        if (code == HID_BACKSPACE) {
            //if (textbuffer_index > 0) {
            //    textbuffer_index--;
            //    textbuffer[textbuffer_index] = '\0';
            //}
            //continue;
        } else
			push_key(code);  // <-- your key press gets buffered here

        if(code == HID_RETURN){
            //returnKey = 1;
        }

		ui_events |= EVENT_TYPE_KBKEYDOWN;
		

        //char ch = shift ? hid_keymap_uk_shift[code] : hid_keymap_uk[code];
        //if (ch == 0) {
        //    continue;
        //}

        //if (textbuffer_index < TEXTBUFFER_SIZE - 1) {
        //    textbuffer[textbuffer_index++] = ch;
        //    textbuffer[textbuffer_index] = '\0';
        //}
    }



    // Detect key UPs (released keys)
    for (int i = 2; i < 8; i++) {
        uint8_t old_code = last_keyReport[i];
        if (old_code == 0) continue;

        bool still_held = false;
        for (int j = 2; j < 8; j++) {
            if (packet[j] == old_code) {
                still_held = true;
                break;
            }
        }

        if (!still_held) {
            ui_events |= EVENT_TYPE_KBKEYUP;
            // optionally store keyUpCode = old_code;
        }
    }

    // Save report for next comparison
    memcpy(last_keyReport, packet, 8);

    //if(returnKey){
    //    returnKey=0;
    //    memset(textbuffer, 0x00, TEXTBUFFER_SIZE);
    //    textbuffer_index=0;
   // }

}


extern uint32_t msTime;;
uint8_t choice = 0;

int tmr1=0;
int holdTimer = 0;
bool_t holdTiming = 0;
int holdButtonID = 0;
int buttonHit;


int 	cursorBlinkTmr = 0;
bool_t 	cursorBlinkStat = 0;


uint32_t original_backBuffers; 


void ShowBufferForce(int db){	// will concentrate on the foreground layer, setting draw buffer and active buffers 
	if(db){
		*SBAPI->gfx.ActiveBuffer = RAM_LCD_DISPLAYBUFFER2;	// Default locations - used in the OS, but safe to use
		*SBAPI->gfx.DrawBuffer 	= RAM_LCD_DISPLAYBUFFER1;
	} else {
		*SBAPI->gfx.ActiveBuffer = RAM_LCD_DISPLAYBUFFER1;	// Default locations - used in the OS, but safe to use
		*SBAPI->gfx.DrawBuffer 	= RAM_LCD_DISPLAYBUFFER2;
	}
}

// MAIN PROGRAM :)
int main(int arg){
    uint8_t txt[128];
    uint8_t idb;
	DIVZEROOFF;			// turn off DIV BY ZERO error - getting div errors indication of miss-aligned memory somewhere

	_Randseed=0;	// reset random seed to zero (boring, i know)
	dbug("KFM Tracker V1.0 - let it sing? or burp!\r\n\r\n"); // send message to UART 
	SBAPI->sys.delayMs(10);	// wait for a moment

	choice = 0;
	ExitKFMTracker = false;
	ExitKFMConfirm = false;

	
	tmr1=0;
	holdTimer = 0;
	holdTiming = 0;
	holdButtonID = 0;
	buttonHit = 0;;
	editorTrackerEditMode = 0;


	// reset "OS" blinky
	cursorBlinkTmr = 0;
	cursorBlinkStat = 0;
	//original_backBuffers = 

	SBAPI->gfx.defauldispbuffers();	// restore default buffers; 
	initDisplayBuffers();	// setup graphics buffer pointers

	// Stop all active channels playing
	InitStates();	// init the state of the UI
	guClearButtons();
	ClearSong();
	initKFMSong();

	StopChannel(0);
	StopChannel(1);
	StopChannel(2);
	StopChannel(3);
	StopChannel(4);
	StopChannel(5);
	StopChannel(6);
	StopChannel(7);
	StopTimer();

	setFont();

	
	//initPatternTest();
	setTempoSpeed(KFMPLAY_TEMPO_DEFAULT, KFMPLAY_SPEED_DEFAULT);
	initNoteLabels();
	setupTestSynths();
	//InitSamples();
	// init alot of other variables
	editorSampleID = 1;


	SBAPI->gfx.initdisplay(220, FPS_60hz);	// 50fps landscape mode -- dont need to change stick to 40hz OS framerate for now ;)
	SBAPI->gfx.displaymode(480, 320, 480, 320, DISPFLAG_DUALLAYER );	// the big bitmap is double the height -- essential startup 

	SBGfxPalleteUpdate(clut32, 0);
	SBGfxPalleteUpdate(clut32, 1);

	SBAPI->gfx.clearDrawBuffer(0);			// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)
	SBAPI->gfx.clearBackLayerBuffer(0);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)

	SBAPI->sys.interruptVector->hwbuttons_isr = &HWBUTTISRR;

	SBAPI->snd.AudioBufferSize(256);	// low enough latency, cant see the note delay!
	SBAPI->music.EnableAutoPlayer(AUDIO_AUTOPLAYMODE_ON);

	SBGfxDrawLineMode = 1;

	SBGfxCLSBbuffer(GUIColourFace);
	SetDrawToBackLayer();

	SBGfxFGColour = 3;

	// title bar
	CreateButton(BUTTON_CLOSE, "\xF0\xF1\0", 0, 0, 28, 27, gbStatEnabled | gbStatReleased);
	uiDrawBeval(30, 0, 344, 27, GUIColourHiLight, GUIColourShadow);
	SBGfxDColour = 255;
	sprintf(txt, "KFM Tracker V0.1 - Sidbox Applet");
	SBGfxDrawTextFGF(40,7, txt);


	CreateButton(BUTTON_YES, "YES",   10, 60, 58, 25, gbStatHidden | gbStatReleased); //gbStatHidden
	CreateButton(BUTTON_NO,  "NOPE!", 70, 60, 58, 25, gbStatHidden | gbStatReleased);

	CreateButton(BUTTON_LOAD, "LOAD", 376, 0, 50, 27, gbStatEnabled | gbStatReleased);
	CreateButton(BUTTON_SAVE, "SAVE", 428, 0, 50, 27, gbStatEnabled | gbStatReleased);




	CreateButton(BUTTON_CHANONOF_1,		"1", 370, 261, 24, GLBUTTON_HEIGHT, gbStatEnabled);
	CreateButton(BUTTON_CHANONOF_2,		"2", 396, 261, 24, GLBUTTON_HEIGHT, gbStatEnabled);
	CreateButton(BUTTON_CHANONOF_3,		"3", 422, 261, 24, GLBUTTON_HEIGHT, gbStatEnabled);
	CreateButton(BUTTON_CHANONOF_4,		"4", 448, 261, 24, GLBUTTON_HEIGHT, gbStatEnabled);

	CreateButton(BUTTON_CHANONOF_5,		"5", 370, 288, 24, GLBUTTON_HEIGHT, gbStatEnabled);
	CreateButton(BUTTON_CHANONOF_6,		"6", 396, 288, 24, GLBUTTON_HEIGHT, gbStatEnabled);
	CreateButton(BUTTON_CHANONOF_7,		"7", 422, 288, 24, GLBUTTON_HEIGHT, gbStatEnabled);
	CreateButton(BUTTON_CHANONOF_8,		"8", 448, 288, 24, GLBUTTON_HEIGHT, gbStatEnabled);
	
	CreateButton(BUTTON_PLAY,           "PLAY",     370, 167, 50, GLBUTTON_HEIGHT, gbStatEnabled);
	CreateButton(BUTTON_PLAYPATTERN,    "PATT",     370, 194, 50, GLBUTTON_HEIGHT, gbStatEnabled);
	CreateButton(BUTTON_EDITPATTERN,    "EDIT",     370, 221, 50, GLBUTTON_HEIGHT, gbStatEnabled);
	CreateButton(BUTTON_NEWMODFILE,     "NEW",      422, 221, 50, GLBUTTON_HEIGHT, gbStatEnabled);

	CreateButton(BUTTON_STOP, 			"STOP",     422, 167, 50, GLBUTTON_HEIGHT, gbStatEnabled);


	ShowDefaultHomeConfigPage();
	//uiDrawBeval(182, 29, 296, 106, GUIColourHiLight, GUIColourShadow);
	//SBAPI->gfx.blit(184, 31, 292, 102, catsplat);


	RenderTrackerBackGnd();

	uiTextDraw(45, 145, "Tempo:");
	uiTextDraw(190, 145, "CHANS:");
	uiTextDrawNumber3(100, 145, KFMSong.tempo);
	CreateButton(BUTTON_TEMPO_UP,       GLYPH_UP,    130, 141, 24, GLBUTTON_SUB_HEIGHT, gbStatEnabled);
	CreateButton(BUTTON_TEMPO_DOWN,     GLYPH_DOWN,  156, 141, 24, GLBUTTON_SUB_HEIGHT, gbStatEnabled);

	CreateButton(BUTTON_CHANNEL_LEFT,   GLYPH_LEFT,  240, 141, 24, GLBUTTON_SUB_HEIGHT, gbStatEnabled);
	CreateButton(BUTTON_CHANNEL_RIGHT,  GLYPH_RIGHT, 300, 141, 24, GLBUTTON_SUB_HEIGHT, gbStatEnabled);

	CreateButton(BUTTON_OPT_SAMPLES,   "S", 340, 141, 24, GLBUTTON_SUB_HEIGHT, gbStatEnabled);
	CreateButton(BUTTON_OPT_KFMSYNTHS, "K", 366, 141, 24, GLBUTTON_SUB_HEIGHT, gbStatEnabled);

	SBGfxDColour = 16;	// black
	sprintf(txt, "1-4");
	SBGfxDrawTextFGF(270,146, txt);

	//CreateButton(BUTTON_FREQUP,   "\x1E", 260,110, 24, GLBUTTON_HEIGHT, gbStatEnabled);
	//CreateButton(BUTTON_FREQDOWN, "\x1F", 286,110, 24, GLBUTTON_HEIGHT, gbStatEnabled);

	SBAPI->sys.interruptVector->keyboard_isr = &KB_ISR2;



	guRenderButtons();
	ShowBuffer(0);
	int x=0;
	int btnClickId  = 0;
	int eventType = 0;

	uint32_t frequencyTR = 27962; //8287;	// C-3


	int exitCnt = 0;
	uint32_t mouseEventID = 0;

	tmr1=0;
	holdTimer = 0;
	holdTiming = 0;
	holdButtonID = 0;
	buttonHit = 0;
	

	//tone256
	
	//StartTimer();

	while(1){
		hwbutts = SBHWButtons();	// get button presses
       	if(hwbutts & BTN_FIRE2) {	// pressed, exit back out to the OS
			exitCnt++;
			if(exitCnt>4){	// hold for 1 second (50fps)
				DIVZEROON;			// turn off DIV BY ZERO error - sometimes the CPU just farts at random with this on
				StopChannel(0);
				StopChannel(1);
				StopChannel(2);
				StopChannel(3);
				StopChannel(4);
				StopChannel(5);
				StopChannel(6);
				StopChannel(7);
				return(0x7);
			}
			
       	} else exitCnt=0;

		// clear forground (drawbuffer) to pallete index 0
		SBGfxCLSDbuffer(0);

		//lmb = (*portbits & MSE_LMB);
	

		if(getEvents()){
			mouseEventID = get_event(EVENTS_MOUSE_LEFTDOWN);	// check if it was the LEFT MOUSE CLICK
			eventType = GUIEvents();

			if(get_event(EVENT_TYPE_KBHIT)){
				if((nConfigScreenMode != bShowFileRequest)) {
					if(editorTrackerEditMode){	// these keys will only work when editorTrackerEditMode is 1
						if(GetKeyIn(KEYIN_LEFT)){
							int8_t newColumn;
							//if((editorTrackerColumn > 0))
								//editorTrackerColumn --;

							newColumn = editorTrackerColumn - 1;
							if((newColumn < 0)){
								newColumn = 0;
								if((editorTrackerChannelsOffset == 4)){
									editorTrackerChannelsOffset = 0;
									newColumn = 23;
									UpdateChannelOffset();
								}
							}
							editorTrackerColumn = newColumn;
						}

						if(GetKeyIn(KEYIN_RIGHT)){
							editorTrackerColumn ++;
							if((editorTrackerColumn > 23)){
								editorTrackerColumn = 23;
								if((editorTrackerChannelsOffset == 0)){
									editorTrackerChannelsOffset = 4;
									editorTrackerColumn = 0;
									UpdateChannelOffset();
								}
							}
						}
						if(GetKeyIn(KEYIN_DOWN)){
							MovePatternRow(1);
						}
						if(GetKeyIn(KEYIN_UP)){
							MovePatternRow(-1);
						}
					}
					if(GetKeyIn(KEYIN_SPACE)){
						editorTrackerEditMode = 1 - editorTrackerEditMode;
					}
					if((GetKeyIn(KEYIN_OCTIVE0))) editorTrackerCurrentOctave = 0;
					if((GetKeyIn(KEYIN_OCTIVE1))) editorTrackerCurrentOctave = 1;
					if((GetKeyIn(KEYIN_OCTIVE2))) editorTrackerCurrentOctave = 2;
					if((GetKeyIn(KEYIN_OCTIVE3))) editorTrackerCurrentOctave = 3;
					if((GetKeyIn(KEYIN_OCTIVE4))) editorTrackerCurrentOctave = 4;
				}
			}
			if(get_event(EVENT_TYPE_KBKEYDOWN)){

				int8_t keyid, noteid, keycode, column;
				column = editorTrackerColumn % 6;

				if((nConfigScreenMode == bShowFileRequest)) 
				{	// when not in the file requester SAVE mode
					uint8_t keyInS;
					do{
						keyInS = GetKeyAsciiInBuffer();
						if(keyInS == 0x0A) continue;// ascii 10 (return)
						// scan to filter out non filename friendly characters
						if(!is_valid_filename_char(keyInS)) continue;
						if(keyInS){
							//dbug("Key Buff: (%u) %c\r\n", keyInS, keyInS);
							FileRequestFileStringInjector(keyInS);
						}
					} while(keyInS);
					if(GetKeyIn(HID_BACKSPACE)){
						//dbug("a back space was hit:\r\n");
						FileRequestFileStringInjector(0x08);
					}
					//FileRequestFileStringInjector();

				}


				if((nConfigScreenMode != bShowFileRequest)) {	// when not in the file requester SAVE mode
					if(editorTrackerEditMode){
						if(GetKeyIn(KEYIN_DELETE)){
							if(column == 0){	// only affect the channel notes at column 0
								PlaceNote(NOTE_NONE);
								MovePatternRow(1);
							}
						}
					}
					// keynote hit test;
					
					if(column == COLUMN_ID_NOTE){	// only work on column 0
						for(keyid = 0; keyid < 26; keyid ++ ){
							noteid  = KeyboardNotes[(keyid * 2) + 0] + (editorTrackerCurrentOctave * 12);
							keycode = KeyboardNotes[(keyid * 2) + 1];
							if(GetKeyIn( keycode )){
								if(noteid < (NOTES_PER_OCTAVE * OCTAVES)){

									PlayNoteKeyDown(noteid);
									if(editorTrackerEditMode){
										PlaceNote(noteid);
										MovePatternRow(1);
									}
									//dbug("noteid :%u\n", noteid);
								}
							}
						}
					} 
					else 
					{	    // if the colum is in range, then do the numbers
						for(keyid = 0; keyid < 16; keyid++){	// go through the possible key strokes
							keycode = KeyboardToBase16[(keyid * 2) + 1]; // get keycode
							noteid  = KeyboardToBase16[(keyid * 2) + 0]; // get the number (though we're using noteid, its going to store a number from 0--15, 0x0--0xF)
							if(GetKeyIn( keycode )){
								if( (column == COLUMN_ID_SAMPLEHN) || (column == COLUMN_ID_SAMPLELN) ){	// sample id HighNibble
									PlaceSampleID(noteid);
									MovePatternRow(1);
								}
								if(column == COLUMN_ID_COMMAND){	// command code
									PlaceCommand(noteid);
									MovePatternRow(1);
								}
								if( (column == COLUMN_ID_PARAMHB) || (column == COLUMN_ID_PARAMLB) ){	// Param High Nibble
									PlaceParam(noteid);	// Control of nibble is done at PlaceParam
									MovePatternRow(1);
								}
							}
						}
					}
				}
			}

			if(get_event(EVENTS_MOUSE_LEFTDOWN)){	// click inside a canvas area (though not strictly elegant, its to the point :) )
				//dbug("Mouse Left Down X:%lu, Y:%lu\n", GetMouseX(), GetMouseY());
				// some open canvas selection bit job
				switch(nConfigScreenMode){

					case bShowFileRequest: {
						FileListedSelect( GetMouseX(), GetMouseY() );
					} break;
				}

			}

			if(eventType & EVENT_TYPE_BUTTONHIT){

				if(get_event(EVENTS_MOUSE_LEFTDOWN)){
					holdTiming = true;
					//dbug("Pressed  BUTTON HIT Was :%lu\n", buttonHit);
					buttonHit = GUIButtonHIT();
					holdTimer = HOLDREPEATSTART;
					holdButtonID = buttonHit;					
				}

				if(get_event(EVENTS_MOUSE_LEFTUP)){	// only go when release button
					buttonHit = GUIButtonHIT();
					//dbug("Released BUTTON HIT Was :%lu\n", buttonHit);
					holdTiming = false;
					holdTimer = HOLDREPEATSTART;
					holdButtonID = BUTTON_NULL;
					switch (buttonHit){

						case BUTTON_OPT_KFMSYNTHS:{
							//LoadTestSong("\\songtext.kfm");
						} break;

						case BUTTON_OPT_SAMPLES:{
							//SaveTestSong("\\songtext.kfm");
						} break;

						case BUTTON_LOAD:{
							ShowFileRequest(FILEREQUEST_MODE_LOAD);
						} break;

						case BUTTON_SAVE:{
							ShowFileRequest(FILEREQUEST_MODE_SAVE);
						} break;

						case BUTTON_CHANNEL_LEFT:{
							editorTrackerChannelsOffset = 0;
							UpdateChannelOffset();
						}
						break;
						case BUTTON_CHANNEL_RIGHT:{
							editorTrackerChannelsOffset = 4;
							UpdateChannelOffset();
						}
						break;

						case BUTTON_CLOSE: {
							guiClrButtonGadgetFlags(BUTTON_YES, gbStatHidden | gbStatDisabled);
							guiClrButtonGadgetFlags(BUTTON_NO,  gbStatHidden | gbStatDisabled);
							guiSetButtonGadgetFlags(BUTTON_YES, gbStatEnabled | gbStatToplayer);
							guiSetButtonGadgetFlags(BUTTON_NO,  gbStatEnabled | gbStatToplayer);
							ExitKFMTracker = true;
						}
						break;

						case BUTTON_CHANONOF_1:
							bChannelEnabled[0] = 1 - bChannelEnabled[0];
							UpdateChannelToggles();
						break;
						case BUTTON_CHANONOF_2:
							bChannelEnabled[1] = 1 - bChannelEnabled[1];
							UpdateChannelToggles();
						break;
						case BUTTON_CHANONOF_3:
							bChannelEnabled[2] = 1 - bChannelEnabled[2];
							UpdateChannelToggles();
						break;
						case BUTTON_CHANONOF_4:
							bChannelEnabled[3] = 1 - bChannelEnabled[3];
							UpdateChannelToggles();
						break;
						case BUTTON_CHANONOF_5:
							bChannelEnabled[4] = 1 - bChannelEnabled[4];
							UpdateChannelToggles();
						break;
						case BUTTON_CHANONOF_6:
							bChannelEnabled[5] = 1 - bChannelEnabled[5];
							UpdateChannelToggles();
						break;
						case BUTTON_CHANONOF_7:
							bChannelEnabled[6] = 1 - bChannelEnabled[6];
							UpdateChannelToggles();
						break;
						case BUTTON_CHANONOF_8:
							bChannelEnabled[7] = 1 - bChannelEnabled[7];
							UpdateChannelToggles();
						break;


						case BUTTON_PLAY:
							bKFMPlayer_Playing = true;
							bKFMPlayer_PlayPattern = false;
							RestartPlayer();
							StartTimer();
							break;
						
						case BUTTON_PLAYPATTERN:
							bKFMPlayer_Playing = true;
							bKFMPlayer_PlayPattern = true;
							//RestartPlayer();
							KFMSong.cRow = 0;
							KFMSong.lRow = 0;
							StartTimer();
							break;

						case BUTTON_STOP:
							bKFMPlayer_Playing = false;
							bKFMPlayer_PlayPattern = false;
							StopTimer();
							StopChannel(0);
							StopChannel(1);
							StopChannel(2);
							StopChannel(3);
							StopChannel(4);
							StopChannel(5);
							StopChannel(6);
							StopChannel(7);
							break;

						case BUTTON_EDITPATTERN:
							editorTrackerEditMode = 1 - editorTrackerEditMode;
						break;

						case BUTTON_SONGLEN_UP:
							if(KFMSong.songLength < KFMMAXSONGLEN)
								KFMSong.songLength++;
							SetSongLength(KFMSong.songLength);
							ConfigScreenUpdate();
						break;

						case BUTTON_SONGLEN_DOWN:
							if(KFMSong.songLength > 1)
								KFMSong.songLength--;
							SetSongLength(KFMSong.songLength);
							ConfigScreenUpdate();
						break;

						case BUTTON_PATTERNID_UP:
							if(KFMSong.patternID < KFMMAXPATTERNS)
								KFMSong.patternID ++;
							SetCurrentPatternSelect(KFMSong.patternID);
							ConfigScreenUpdate();
						break;

						case BUTTON_PATTERNID_DOWN:
							if(KFMSong.patternID > 0)
								KFMSong.patternID --;
							SetCurrentPatternSelect(KFMSong.patternID);
							ConfigScreenUpdate();
						break;

						case BUTTON_POSITION_UP:
							if(KFMSong.songPosition < KFMSong.songLength-1)
								KFMSong.songPosition ++;
							SetSongPosition(KFMSong.songPosition);
							ConfigScreenUpdate();
						break;

						case BUTTON_POSITION_DOWN:
							if(KFMSong.songPosition > 0)
								KFMSong.songPosition --;
							SetSongPosition(KFMSong.songPosition);
							ConfigScreenUpdate();
						break;

						case BUTTON_PATTERNS:
							ShowPatternPositionEditor();
						break;

						case BUTTON_SAMPLEID:
							ShowSampleIDEditor();
						break;

						case BUTTON_SAMPID_UP:
							if( editorSampleID < KFMMAXSAMPLES )
								editorSampleID ++;
							RenderSampleIDEdit();
						break;

						case BUTTON_SAMPID_DOWN:	// anything at sample zero should just remember the last sample id it had.
							if( editorSampleID > 1 )
								editorSampleID --;
							RenderSampleIDEdit();
						break;

						// CONFIG WINDOW BUTTONS ##################################################################################

						case BUTTON_FILEREQ_OPEN:
							switch(nConfigScreenMode){
								case bShowFileRequest:
									if(!CheckDirectorySelect()){	// check if directory and CD to it, if not, its a file or something 
										dbug("clicked ok on file requester\r\n");
										// depending on what the file requester was doing
										// if save or if load 
										// IF SAVE DO
										if(bLoadSave == FILEREQUEST_MODE_SAVE){
											dbug("SAVE operation -> ");
											SaveKMD();
										}
										// end if save

										// IF LOAD DO
										if(bLoadSave == FILEREQUEST_MODE_LOAD){
											dbug("LOAD operation -> ");
											if(LoadKMD()){
												CloseFileRequest();
											}
										}
										// end if load
									}
								break;
							}
						break;

						case BUTTON_FILEREQ_PARENT:
							switch(nConfigScreenMode){
								case bShowFileRequest:
									// Parent Directory Set THIS is going to be a pain.. i just know it :( lets just hope I wrote the OS well enough here
									ParentDirectory();
									
								break;
							}
						break;





						// the CLOSER OF A CONFIG WINDOW// multiple choices to be had
						case BUTTON_EXIT_CONF:{
							CloseConfigScreen();
						}
						
						case BUTTON_CONF_SCR_DOWN:{
							switch(nConfigScreenMode){
								case bShowConfigPatternEdit:{
									if(KFMSong.songPosition < KFMSong.songLength-1)
										KFMSong.songPosition ++;
									SetSongPosition(KFMSong.songPosition);
									ConfigScreenUpdate();
								} break;

								case bShowConfigSampleIDEdit: {
									if(editorSampleID > 1)	// a sample id of 0 just remembers the last sample, 
										editorSampleID--;
									ConfigScreenUpdate();
								} break;

							}
						}
						break;

						case BUTTON_CONF_SCR_UP:{
							switch(nConfigScreenMode){
								case bShowConfigPatternEdit:{
									if(KFMSong.songPosition > 0)
										KFMSong.songPosition --;
									SetSongPosition(KFMSong.songPosition);
									ConfigScreenUpdate();
								} break;

								case bShowConfigSampleIDEdit: {
									if(editorSampleID < KFMMAXSAMPLES)
										editorSampleID++;
									ConfigScreenUpdate();
								} break;
							}
						}
						break;

						case BUTTON_CONF_SAMP_TOGLOOP:
							switch(nConfigScreenMode){
								case bShowConfigSampleIDEdit:
									SampleIDEdit_ChangeLoopToggle();
									ConfigScreenUpdate();
								break;
							}
						break; 

						// CLOSE APPLET
						case BUTTON_YES:
							if (ExitKFMTracker == true ) {
								DIVZEROON;			// turn off DIV BY ZERO error - sometimes the CPU just farts at random with this on
								StopChannel(0);
								StopChannel(1);
								StopChannel(2);
								StopChannel(3);
								StopChannel(4);
								StopChannel(5);
								StopChannel(6);
								StopChannel(7);
								return(0x7);
							}

						case BUTTON_NO:
							if (ExitKFMTracker == true ) {
								guiSetButtonGadgetFlags(BUTTON_YES, gbStatHidden | gbStatDisabled);
								guiSetButtonGadgetFlags(BUTTON_NO,  gbStatHidden | gbStatDisabled);
								guiClrButtonGadgetFlags(BUTTON_YES, gbStatEnabled | gbStatToplayer);
								guiClrButtonGadgetFlags(BUTTON_NO,  gbStatEnabled | gbStatToplayer);
								ExitKFMTracker = false;
							}
						break;
					}
				}
			}

			clearEvents(0xffffffff);	// clear all events
			EventTypeClear(0xffffffff);
		}
		if(ExitKFMTracker==true){
			choice = RenderConfirmYESNObox();			
		}

		if(holdTiming){
			if(holdTimer == 0 || holdTimer == HOLDREPEATSTART){
				switch (buttonHit){
					case BUTTON_CONF_SCR_DOWN:{
						switch(nConfigScreenMode){
							case bShowFileRequest:{
								ScrollFileListDirection(1);
							} break;
						}
					}
					break;

					case BUTTON_CONF_SCR_UP:{
						switch(nConfigScreenMode){
							case bShowFileRequest: {
								ScrollFileListDirection(-1);
							} break;
						}
					}
					break;

					case BUTTON_TEMPO_UP:
						if(KFMSong.tempo < 255) KFMSong.tempo ++;
						setTempoSpeed(KFMSong.tempo, KFMSong.speed);
						CaptureDrawBuffer();
						SetDrawToBackLayer();
						uiTextDrawNumber3(100, 145, KFMSong.tempo);
						ReleaseDrawBuffer();
					break;

					case BUTTON_TEMPO_DOWN:
						if(KFMSong.tempo > 32) KFMSong.tempo --;
						setTempoSpeed(KFMSong.tempo, KFMSong.speed);
						CaptureDrawBuffer();
						SetDrawToBackLayer();
						uiTextDrawNumber3(100, 145, KFMSong.tempo);
						ReleaseDrawBuffer();
					break;

					// CONFIG WINDOW BUTTON HITS ###############################################

					case BUTTON_CONF_SAMP_VOL_UP:
						SampleIDEdit_ChangeVolume(1);
					break;

					case BUTTON_CONF_SAMP_VOL_DN:
						SampleIDEdit_ChangeVolume(-1);
					break;

					case BUTTON_CONF_SAMP_REPEAT_UP:
						SampleIDEdit_ChangeRepeat( 2);
					break;

					case BUTTON_CONF_SAMP_REPEAT_DN:
						SampleIDEdit_ChangeRepeat(-2);
					break;

					case BUTTON_CONF_SAMP_REPLEN_UP:
						SampleIDEdit_ChangeRepeatTo( 2);
					break;

					case BUTTON_CONF_SAMP_REPLEN_DN:
						SampleIDEdit_ChangeRepeatTo(-2);
					break;

					case BUTTON_CONF_SAMP_LEN_UP:
						SampleIDEdit_ChangeSampleLength(2);
					break;

					case BUTTON_CONF_SAMP_LEN_DN:
						SampleIDEdit_ChangeSampleLength(-2);
					break;
	
				}
			}
			//HOLDREPEATSTART
			if(holdTimer <= 0)
				holdTimer = HOLDREPEATTMR;
			else
				holdTimer --;
		}
		
		cursorBlinkTmr++;
		if( (cursorBlinkTmr > cursorBlinkTime) ){
			cursorBlinkTmr = 0;
			cursorBlinkStat = 1 - cursorBlinkStat;
		}

		switch(nConfigScreenMode){
			case bShowFileRequest:{	// only operate this when the file requester is open (in save mode)
				//ScrollFileListDirection(1);
				FileRequestFileStringUpdater();
			} break;
		}

		// since ONLY the tracker data should be updated (since i want to have VU meters and special effects if CPU allows)
		// Glue Crap together, since there is so much going on above, might miss out a buffer return. so.. lets force and make sure (untidy)
		// this is the opposite to ShowBuffer, just returns everything where it was before the flip
		ShowBufferForce(idb);	// Resets the DrawLayers if needed, it should NOT affect the current state of the layers, just ensures the draw pointer is used for the relevent buffer being used
		// rendering the tracks now
		RenderTracker();

		// making sure that the mouse never gets drawn on to the back layer, that would be messy. 
		// might cause a flicker or two, but so far i've not seen it!
		if(*SBAPI->gfx.DrawBuffer != original_backlayerbuffer)	// safe to draw mouse, 
			SBAPI->sys.drawmouse();

		ShowBuffer(idb);	// swap the active and drawbuffer around
		idb = 1 - idb;		// toggle buffer id


		// force a cache clear for back buffer (its crude but needed)
		//   Since we're drawing on the backbuffer, which is the same as the one being rendered, we must clean the cache before render
		//   otherwise we're going to see some crap not rendered.
		SBAPI->sys.cleancache(*SBAPI->gfx.ActiveBackLayerBuffer, 480 * 320);	//
		SBAPI->gfx.render(1 | DISPRM_VBLANKWAIT);		// 1 = dual layer render, vwait already done :)
		//SBAPI->gfx.waitvsync();
		//SBAPI->gfx.render(1);		// 1 = dual layer render, vwait already done :)
	}
	return 0;	// exited with success
}






