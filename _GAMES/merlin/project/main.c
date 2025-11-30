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

///////// MERLIN GAME LOGICS ////////////////////////////


const unsigned long colourPallete[] = {
	0x00000000, 0xFFAFAFAF, 0xFFFFFFFF, 0xFF3B67A2, 0xFFAA907C, 0xFF959595, 0xFF7B7B7B, 0xFFFFA997, 0xFF37A91D, 0xFF7CA9FF, 0xFFBF8112, 0xFFEBBF66, 0xFF78C178, 0xFF3D9318, 0xFFB33418, 0xFFD9311C, 
	0xFF000000, 0xFF00000E, 0xFF00001D, 0xFF00002B, 0xFF000139, 0xFF000147, 0xFF000156, 0xFF000164, 0xFF0001D2, 0xFF0001FF, 0xFFCECECE, 0xFF00FF00, 0xFFB2FF00, 0xFFFFE700, 0xFFFF9600, 0xFFFF1100, 
	0xFF491200, 0xFF491355, 0xFF4914AA, 0xFF4916FF, 0xFF5B1700, 0xFF5B1855, 0xFF5B19AA, 0xFF5B1AFF, 0xFF6D1B00, 0xFF6D1C55, 0xFF00E300, 0xFF85FF54, 0xFFC4FF00, 0xFFFFD900, 0xFFFFA41F, 0xFFE05400, 
	0xFFFF0000, 0xFF922655, 0xFF9227AA, 0xFF9228FF, 0xFFA42900, 0xFFA42A55, 0xFFA42BAA, 0xFFA42CFF, 0xFFB62D00, 0xFFB62F55, 0xFFB630AA, 0xFFB631FF, 0xFFC93200, 0xFFC93355, 0xFFC934AA, 0xFFC935FF, 
	0xFFDB3700, 0xFFDB3855, 0xFFDB39AA, 0xFFDB3AFF, 0xFFED3B00, 0xFFED3C55, 0xFFED3DAA, 0xFFED3FFF, 0xFFFF4000, 0xFFFF4155, 0xFFFF42AA, 0xFFFF43FF, 0xFF004400, 0xFF004555, 0xFF0046AA, 0xFF0048FF, 
	0xFFFFFF00, 0xFF12FF55, 0xFF12EE55, 0xFF12B6FF, 0xFF001FFF, 0xFF9D0EC7, 0xFFF10000, 0xFFFF7700, 0xFF375200, 0xFF375355, 0xFF3754AA, 0xFF3755FF, 0xFF495600, 0xFF495855, 0xFF4959AA, 0xFF495AFF, 
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

#define LED_COLOUR  31  // a faux colour pallete id 31 is bright red.

uint8_t MAP[3][3] = {
    1, 1, 1,
    1, 0, 1,
    1, 1, 1
};


#define LED_OFFSET_X    100
#define LED_OFFSET_Y    60

#define LED_SPACING     90
#define LED_SIZE        40


void renderPanel(){
    int8_t row, col, index;
    int16_t prow, pcol;
    int8_t state;

    SBGfxFGColour = LED_COLOUR;

    pcol = LED_OFFSET_X;
    prow = LED_OFFSET_Y;
    
    index = 0;
    for(row = 0; row < 3; row ++){
        for(col = 0; col < 3; col ++){
            state = MAP[row][col];

            if(state)
                SBGfxCircle(pcol, prow, LED_SIZE, 1);


            index ++;
            pcol += LED_SPACING;
        }
        pcol = LED_OFFSET_X;

        prow+= LED_SPACING;
    }


}

#define mousePointerSize 8
int msx, msy;

void renderMouse(){
    SBGfxFGColour = 2;

    SBGfxDrawline(msx - mousePointerSize, msy, msx + mousePointerSize, msy);
    SBGfxDrawline(msx, msy - mousePointerSize, msx, msy + mousePointerSize);
}

void processPanel(int x, int y){
    int tmx, tmy;
    int rmx, rmy;
    int indexout;
    uint8_t texti[8];
    // work out the button ids from the position the buttons are take into account the LED_OFFSETS and SIZES collision detects are going to be
    // bounding boxes simplez


    tmx = (((msx-LED_OFFSET_X)+LED_SIZE) / LED_SPACING);
    tmy = (((msy-LED_OFFSET_Y)+LED_SIZE) / LED_SPACING);

    if(tmx>2) tmx=2;
    if(tmy>2) tmy=2;

    rmx = tmx * LED_SPACING;
    rmy = tmy * LED_SPACING;


    //SBGfxFGColour = 25;
    //SBGfxCircle(rmx, rmy, LED_SIZE, 1);

    indexout = tmx + (tmy * 3);

    SBGfxFGColour = 2;
    sprintf(texti, "%lu", indexout);
    SBGfxDrawTextDBB(400,2, texti);


    // this is where the switchy bits happen :)
    switch(indexout){
        case 0:{    // top left
            MAP[0][0] = 1 - MAP[0][0];
            MAP[0][1] = 1 - MAP[0][1];
            MAP[1][0] = 1 - MAP[1][0];
            MAP[1][1] = 1 - MAP[1][1];
        }break;

        case 1:{    // top middle 
            MAP[0][0] = 1 - MAP[0][0];
            MAP[0][1] = 1 - MAP[0][1];
            MAP[0][2] = 1 - MAP[0][2];
        }break;

        case 2:{    // top right
            MAP[0][1] = 1 - MAP[0][1];
            MAP[0][2] = 1 - MAP[0][2];
            MAP[1][1] = 1 - MAP[1][1];
            MAP[1][2] = 1 - MAP[1][2];
        }break;

        case 3:{    // mid left
            MAP[0][0] = 1 - MAP[0][0];
            MAP[1][0] = 1 - MAP[1][0];
            MAP[2][0] = 1 - MAP[2][0];
        }break;

        case 4:{    // mid mid
            MAP[1][0] = 1 - MAP[1][0];
            MAP[1][1] = 1 - MAP[1][1];
            MAP[1][2] = 1 - MAP[1][2];
            MAP[0][1] = 1 - MAP[0][1];
            MAP[2][1] = 1 - MAP[2][1];
        }break;

        case 5:{    // mid left
            MAP[0][2] = 1 - MAP[0][2];
            MAP[1][2] = 1 - MAP[1][2];
            MAP[2][2] = 1 - MAP[2][2];
        }break;

        case 6:{    // bottom left
            MAP[1][0] = 1 - MAP[1][0];
            MAP[2][0] = 1 - MAP[2][0];
            MAP[1][1] = 1 - MAP[1][1];
            MAP[2][1] = 1 - MAP[2][1];
        }break;

        case 7:{    // bottom middle
            MAP[2][0] = 1 - MAP[2][0];
            MAP[2][1] = 1 - MAP[2][1];
            MAP[2][2] = 1 - MAP[2][2];
        }break;

        case 8:{    // bottom middle
            MAP[1][1] = 1 - MAP[1][1];
            MAP[1][2] = 1 - MAP[1][2];
            MAP[2][1] = 1 - MAP[2][1];
            MAP[2][2] = 1 - MAP[2][2];
        }break;




    }


}


/////////////////////////////////////////////////////////
 
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

void clear_screen() {
    ShowBuffer(0);	// swap the active and drawbuffer around
    SBAPI->gfx.clearDrawBuffer(0);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)
    ShowBuffer(1);	// swap the active and drawbuffer around
    SBAPI->gfx.clearDrawBuffer(0);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)
}



int main(int argc, char *argv[]){
    uint8_t txt[128];
	DIVZEROOFF;			// turn off DIV BY ZERO error - sometimes the CPU just farts at random with this on
    SBAPI->gfx.setBacklightBrightness(255);	// turn off backlight	// so we hide all the messy graphics initialisation startup

	_Randseed=0;	// reset random seed to zero (boring, i know)
	dbug("Merlin\n"); // send message to UART 
	SBAPI->sys.delayMs(30);	// wait for a moment

	initDisplayBuffers();	// setup graphics buffer pointers
    SBAPI->gfx.displaymode(480, 320, 480, 320, 0 );	// the big bitmap is double the height -- essential startup 


    SBGfxPalleteUpdate(colourPallete, 0);
    SBGfxPalleteUpdate(colourPallete, 1);
 
    *SBAPI->gfx.forecolour = 1;

    clear_screen();
    
    int db = 0;
    uint8_t msbHit;
    uint8_t msbTmp;
    int exitCnt = 0;
    
    while (1) {
        

        // do the display bits after --------------
        // using the same screen buffer for draw and active buffer 
        API->gfx.clearDrawBuffer(0); // Clear screen

        // Game Logic-------------------------
        msx = SBSysGetmouseX;
        msy = SBSysGetmouseY;

        renderPanel();
        renderMouse();

        msbTmp = SBHWButtons() ;    // listen to left mouse button

       	if(msbTmp & BTN_FIRE2) {	// pressed, exit back out to the OS
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


        if(msbHit != (msbTmp & 0x01))
        {

            if(msbHit == 0){  // 0 is ground volt, usually a button press in our case
                // do something here.
                //SBAPI->sys.printf("Do something!");

                processPanel(msx, msy);
            }

            msbHit = (msbTmp & 0x01);
        }
        


        // GameLogic--------------------------

        ShowBuffer(db);
        db = 1 - db;
        
		// time to display it!
		SBAPI->gfx.waitvsync();
		SBAPI->gfx.render(1);		// 1 = dual layer render, vwait already done :)
        //SBAPI->sys.delayMs(30);
		SBAPI->music.UpdatePlayer();			// need this to enable to the sound
    }

	return 0;	// exited with success
}






