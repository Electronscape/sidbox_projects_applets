/*
 * api_math.h
 *
 *  Created on: 25 Jun 2025
 *      Author: electronscape
 */

#ifndef OS_APPAPI_API_MATH_H_
#define OS_APPAPI_API_MATH_H_


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ########################################################################################################### //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
struct __attribute__((aligned(4))) maths_api {	// ######################### MATH ###############################
	// MATHS /////////////////////////////////////////////////
	float 	(*sinff) (int deg /* 0 - 359 */ );	// returns float, input int
	float 	(*cosff) (int deg /* 0 - 359 */ );	// returns float, input int
	int 	(*sinfi) (int deg /* 0 - 359 */ );	// returns int, input int
	int		(*cosfi) (int deg /* 0 - 359 */ );	// returns int, input int
};

#endif /* OS_APPAPI_API_MATH_H_ */
