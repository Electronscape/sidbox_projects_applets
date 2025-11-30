/*
 * api_su.h
 *
 *  Created on: 25 Jun 2025
 *      Author: electronscape
 */

#ifndef OS_APPAPI_API_SU_H_
#define OS_APPAPI_API_SU_H_

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ########################################################################################################### //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
struct __attribute__((aligned(4))) superuser_api { //####################### SUPER USER API #####################
	void (*adm_dfuaccess)		(void);			// DFU access if needed
	void (*adm_setCacheEnabled)	(uint8_t en);	// ENABLE DISABLE cacahe (1 - enable, 0 - disable), use with caution: this can slow the CPU down and DMA sound glitches
};


#endif /* OS_APPAPI_API_SU_H_ */
