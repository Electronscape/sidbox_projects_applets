#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>
#include "apis.h"


/*
Source ASM code

// a compiler should be with the API_SDK kit
    op  par1, par2
    ATT 8
    DCY 20
    SUS 80
    REL 2
    GTE 3
    STV XV0, 10
    _start:
    STV XV1, 8
    _reset: 
    nop
    _loop: 
    ADD XV0, XV1
    PWM XV0
    NOP 2
    CMP XV0 8
    JIL _goforward
    CMP XV0 62
    JIL _loop
    STV XV1, -2
    JMP _loop
    _goforward:
    STV XV1, 2
    JMP _reset
    END


    RAW BYTECODE:
    0E0800
    0F1400
    105000
    110200
    020300
    1C800A
    1C8108
    000000
    088081
    078000
    000200
    128008
    160500
    12803E
    16FA00
    1C81FE
    1BF800
    1C8102
    1BF500
    3F0000
    

*/

// this is a test demo of a sweeping PWM
const uint8_t KFMProg[] = { // 19 lines
    0x0F, 0x08, 0x00, 
    0x10, 0x14, 0x00, 
    0x11, 0x50, 0x00, 
    0x12, 0x02, 0x00, 
    0x02, 0x03, 0x00, 
    0x1D, 0x80, 0x0A, 
    0x1D, 0x81, 0x08, 
    0x00, 0x00, 0x00, 
    0x09, 0x80, 0x81, 
    0x08, 0x80, 0x00, 
    0x00, 0x02, 0x00, 
    0x13, 0x80, 0x08, 
    0x17, 0x05, 0x00, 
    0x13, 0x80, 0x3E, 
    0x17, 0xFA, 0x00, 
    0x1D, 0x81, 0xFE, 
    0x1C, 0xF8, 0x00, 
    0x1D, 0x81, 0x02, 
    0x1C, 0xF5, 0x00, 
    0x3F, 0x00, 0x00,   

};

// DEMO code for uploading a small KFM program
void uploadKFMCode(uint8_t ch, uint8_t *bytecode){
	uint8_t *c;
	uint8_t opc, p1, p2;
	uint16_t line;

	SBAPI->snd.SYNTHClrProg(0);	// clear the program
	//SBAPI->snd.SYNTHProg(0, 0, STV, XV0, 0x06);	// Low byte of 262 (C4)

	c = bytecode;
	for(line = 0; line < 19; line++){
		opc = c[0];
		p1  = c[1];
		p2  = c[2];
		SBAPI->snd.SYNTHProg(ch, line, opc, p1, p2);	// Low byte of 262 (C4)
		c += 3;
	}
}

// the Synth Generator Virtual machine systems
void EnableKFM(){
	uint32_t bCtrl = SBAPI->snd.channelconfigs->reg;	// get current channel config
	bCtrl |= AUDIOENABLEKFM;
	SBAPI->snd.channelconfigs->reg = bCtrl;
}

void DisableKFM(){
	uint32_t bCtrl = SBAPI->snd.channelconfigs->reg;	// get current channel config
	bCtrl &= ~AUDIOENABLEKFM;
	SBAPI->snd.channelconfigs->reg = bCtrl;
}