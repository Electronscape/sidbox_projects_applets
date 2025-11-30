#ifndef KFMAPI_H
#define KFMAPI_H

#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>
#include "apis.h"

extern const uint8_t KFMProg[];    // a demo routine
void uploadKFMCode(uint8_t ch, uint8_t *bytecode);


/////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                 //
//  THIS IS THE SYNTH DEPARTMENT                                                                   //
//                                                                                                 //
/////////////////////////////////////////////////////////////////////////////////////////////////////
// internal synth commander
#define sndSYMC_maxVariables		10
#define sndSYMC_instruction_bank	64


// GTE bits.
#define		SYNTHBIT_ON			(1 << 0)	// 0x01
// waveforms
#define		SYNTHBIT_PULSE		(1 << 1)	// 0x02
#define		SYNTHBIT_SAW     	(1 << 2)	// 0x04
#define		SYNTHBIT_TRI     	(1 << 3)	// 0x08
#define		SYNTHBIT_NOISE   	(1 << 4)	// 0x10
// reserved
#define		SYNTHBIT_RESERVE5	(1 << 5)	
#define		SYNTHBIT_RESERVE6	(1 << 6)
#define		SYNTHBIT_RESERVE7	(1 << 7)	// <-- never use this for GATE controls


typedef enum  {
	NOP,	// 0x00 pause , or NOP n for up to 255 pauses,

	// NOTE GATE/ Frequency
	GTE,	// 0x01 GateBITS
	WAV,	// 0x02 Change only the WAVE Selection
	FRQ,	// 0x03	ABSOLUTE - FREQUENCY, 16bit value needed p1:LB, p2:HB - NOT influenced by channel frequency
	FRA,	// 0x04 RELATIVE - FREQUENCY, 16bit value needed p1:LB, p2:HB - is influenced by channel frequency
	VOL,	// 0x05 VOLUME
	PWM,	// 0x06 PWM setting for PWM n (0-255 %)
	RES,	// 0x07 RESTART - basically restarts the program,

	// MATH
	ADD,	// 0x08 ADDition
	SUB,	// 0x09 SUBtracked
	DIV,	// 0x0A Math Division
	MUL,	// 0x0B Math Multiply
	MOD,	// 0x0C MOD <variable>, <val>
	RND,	// 0x0D Random number for VAR

	// ADSR
	ATT,	// 0x0E Attack value 0-255, preprogrammed attack values, curve values, 0=0, 1=1, 2=2, 3=4, 4=8, 5=16..... ms delays
	DCY,	// 0x0F DCY (Decay time)
	SUS,	// 0x10 Sustain time, in milliseconds same curve
	REL,	// 0x11 Release Time, if channel STOP is triggered, same timing curve values as before

	// PROGRAM FLOW
	CMP,	// 0x12 CMP // compare variables (flag is set when true)
	JNE,	// 0x13 Conditional Jump (used after CMP)
	JSR,	// 0x14 JSR (Jump to Subroutine)
	RET,	// 0x15	RETURNS to the LAST BSR
	JMP,	// 0x16 Jump (relative, absolute)

	// VARIABLES
	STV,    // 0x17 SET A VARIABLE
	MOV,	// 0x18	MOV VAR1, VAR2
	SHL,	// 0x19	SHIFT LEFT
	SHR,	// 0x1A SHIFT RIGHT
	SWP,	// 0x1B Swap the variables
	TGL,	// 0x1C TGL var1 - basically just toggles the value, (invert all bits inside this variable)

	// program end codes
	INF,    // 0x1D DEBUG OUTPUT (wont work in release SIDBOX.bin)
	STP = 0x3E,	// 0x1D STOP program, WHEN audio PLAY channel is trigged, the program is restarted and RAN, default program must have NOP, then STP
	END = 0x3F,	// 0x1E OP _ END
} synthmcode;


// usable variables
#define 	XV0		0x80
#define 	XV1		0x81
#define 	XV2		0x82
#define 	XV3		0x83
#define 	XV4		0x84
#define 	XV5		0x85
#define 	XV6		0x86
#define 	XV7		0x87
#define 	XV8		0x88
#define 	XV9		0x89
/////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                 //
//  END OF THE SYNTH DEPARTMENT                                                                    //
//                                                                                                 //
/////////////////////////////////////////////////////////////////////////////////////////////////////






#endif