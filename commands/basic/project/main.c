#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>

// #### DOS COMMANDS ///
// DOSCMD <Fields1> <Fields2> <Fields3> ...

#include "../../../_coreapi_/apis.h"

#include "bbcbasic.h"
#include "kbsupport.h"

#define DRAWBUFFA   RAM_LCD_DISPLAYBUFFER1
#define DRAWBUFFB   RAM_LCD_DISPLAYBUFFER2

void ShowBuffer(int db){
	if(db){
		*SBAPI->gfx.ActiveBuffer = DRAWBUFFA;	// Default locations - used in the OS, but safe to use
		*SBAPI->gfx.DrawBuffer 	= DRAWBUFFB;
	} else {
		*SBAPI->gfx.ActiveBuffer = DRAWBUFFB;	// Default locations - used in the OS, but safe to use
		*SBAPI->gfx.DrawBuffer 	= DRAWBUFFA;
	}
}

int internalDB = 0;
void FlipBuff(){
    ShowBuffer(internalDB);
    internalDB = 1 - internalDB;
}

void BufferClone(){
    memcpy(*SBAPI->gfx.ActiveBuffer, *SBAPI->gfx.DrawBuffer, 480*320);
}

#define API	((volatile SidboxAPI *)0x2001F000)
#define MAXARGUMENTS	2

#define TEXTBUFFER_SIZE 80

extern char textbuffer[];
extern uint8_t textbuffer_index;
extern int returnKey;

static int cursor_y = 0;

int cursorblinky=0;
int cursorshow =0;
char blinkcur[2];
void prompt() {
    char txtLineRend[120];
    
    cursor_y = getPrintrowvline();

    blinkcur[1]='\0';
    cursorblinky++;
    if(cursorblinky>25){
        cursorblinky = 0;
        cursorshow = 1 - cursorshow;
        if(cursorshow)
            blinkcur[0] = '_';
        else
            blinkcur[0] = ' ';
    }

    sprintf(txtLineRend, "> %s", textbuffer, blinkcur);

    *SBAPI->gfx.forecolour = 0;
    API->gfx.rectf(0, cursor_y, 480, cursor_y+16);

    *SBAPI->gfx.forecolour = 46;
    API->gfx.drawtextf(0, cursor_y, txtLineRend);
    API->gfx.drawtextf((8 * (strlen(txtLineRend))), cursor_y, blinkcur);
}

void clear_screen() {
    ShowBuffer(0);	// swap the active and drawbuffer around
    SBAPI->gfx.clearDrawBuffer(0);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)
    ShowBuffer(1);	// swap the active and drawbuffer around
    SBAPI->gfx.clearDrawBuffer(0);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)
    prompt();
}

uint8_t idb =0;
void KB_ISR(uint8_t *packet);
extern uint8_t last_keyReport[8];

#define MAX_ITTERATIONS 50

int IStop=0;
int main(int argc, char *argv[]){
    uint8_t txt[128];
	DIVZEROOFF;			// turn off DIV BY ZERO error - sometimes the CPU just farts at random with this on
    SBAPI->gfx.setBacklightBrightness(255);	// turn off backlight	// so we hide all the messy graphics initialisation startup

	_Randseed=0;	// reset random seed to zero (boring, i know)
	dbug("BBC BASIX\n"); // send message to UART 
	SBAPI->sys.delayMs(10);	// wait for a moment

	initDisplayBuffers();	// setup graphics buffer pointers
    SBAPI->gfx.displaymode(480, 320, 480, 320, 0 );	// the big bitmap is double the height -- essential startup 
 
    *SBAPI->gfx.forecolour = 46;
    


    SBAPI->sys.interruptVector->keyboard_isr = &KB_ISR; // Install the keyboard ISR

    clear_screen();
    print("SIDBOX BASIC V0.1");
    print("Type HELP for help");

    
    // init program
    interpret_line("10 PRINT \"hello world\"");
    interpret_line("200 PRINT \"This is line 200!!!\"");
    interpret_line("20 GOSUB 200");
    interpret_line("210 RETURN");
    interpret_line("30 PRINT \"should never see this line\"");
    interpret_line("230 PRINT \"bottom\"");

    
    while (1) {
        //SBAPI->api_delayMs(40);
        
        #if(0)
        SBAPI->api_clsa(0);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)
		SBAPI->api_drawtextf(8, 8, "WHOOPS");
        sprintf(txt, "KB: %02X %02X %02X %02X %02X %02X %02X %02X ", 
			last_keyReport[0], last_keyReport[1], last_keyReport[2], last_keyReport[3], 
			last_keyReport[4], last_keyReport[5], last_keyReport[6], last_keyReport[7]);
		SBAPI->api_drawtextf(8, 160, txt);
        #endif

        

        if (returnKey==1) {
            returnKey = 0;

            if (textbuffer_index > 0) {
                char line[TEXTBUFFER_SIZE];
                strcpy(line, textbuffer);
                print(line);
                interpret_line(line);  // <- Core Interpreter Call
                memset(textbuffer, 0, TEXTBUFFER_SIZE);
                textbuffer_index = 0;
            }
        }
        
        prompt();  // <-- move here
        // PROCESS NEXT BASIC LINE WHEN RUNNING

        for(int i = 0; i < MAX_ITTERATIONS; i++){
            if (returnKey==0xff){
                dbug("Break\r\n");
                if(getIsProgramRunning()){
                    break_program();
                }
                
                returnKey = 0;
            }
            if(getIsProgramRunning()){
                step_program();
            }; // <-- Like this?
        }

        

        // do the display bits after --------------
        // using the same screen buffer for draw and active buffer 
		FlipBuff();

        
		// time to display it!
		SBAPI->gfx.waitvsync();
		SBAPI->gfx.render(1);		// 1 = dual layer render, vwait already done :)
		SBAPI->music.UpdatePlayer();			// need this to enable to the sound
    }







	return 0;	// exited with success
}






