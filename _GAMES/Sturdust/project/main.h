/*
 * main.h
 *
 *  Created on: Jun 10, 2025
 *      Author: electronscape
 */

#ifndef SRC_MAIN_H_
#define SRC_MAIN_H_

//#include <stdio.h>
#include <stdint.h>
//#include <inttypes.h>
//#include <string.h>

//#include <math.h>
//#include <stdarg.h>
//#include <stdio.h>
//#include <stdlib.h>


extern uint32_t OCSBackBuffer;

extern const uint32_t clutSrcBigBack[256];
extern const uint32_t titleclut32[];
extern const uint32_t leveldoneclut32[];

#define fast_cos 	api_cosff
#define fast_sin 	api_sinff

#define drawPixel 	SBGfxDrawPoint
#define draw_line 	SBGfxDrawline


signed short randomx(unsigned short range);

#endif /* SRC_MAIN_H_ */
