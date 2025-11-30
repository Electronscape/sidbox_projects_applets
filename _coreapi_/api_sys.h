/*
 * api_sys.h
 *
 *  Created on: 25 Jun 2025
 *      Author: electronscape
 */

#ifndef OS_APPAPI_API_SYS_H_
#define OS_APPAPI_API_SYS_H_

struct timers_isrconf {
	unsigned long	Prescale;			// Prescaler	(16bit number only!)
	unsigned long 	AutoReload;			// auto reload  (16bit number only!) (int for alignment only do not put bigger than 16bits in this address)
	unsigned long	controls;			// need a function to pass these
	void 		(*isr)(void);			// Callback address, set to the function the ISR will raise the IRQ to
} ;

// interrupt vectors, defaults are hidden, but can assign your own function to these
// *vb_isr = &yourfunction()
struct isr_conf {
	uint32_t	reserved;
	void	(*vb_isr)(void);		// response do vblank
	void	(*hwbuttons_isr)(uint8_t *buttons);	// response to hardware buttons
	void	(*keyboard_isr)(uint8_t *packet);	// keyboard packet received
	void	(*screentouch_isr)();	// response to touch screen
} ;


// TIMER FLAGS  ################
#define	TMRCTRL_ENABLE		0x01	// Enable the timer
#define TMRCTRL_ENABLEIRQ	0x02	// Enable the IRQ for this timer





/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ########################################################################################################### //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
struct __attribute__((aligned(4))) sys_api {//############################## SYSTEMS API ########################
	void 	 (*printf)			(const char *fmt, ...);		// serial port output - (ascii style but will accept binary)
	void 	 (*delayMs)			(unsigned short milli);		// delay in milliseconds
	void 	 (*memcpy)			(void *dst, const void *src, size_t len);	// memcpy
	void	 (*cleancache)		(uint32_t *buffer, uint32_t length);		// clean D Cache might be needed
	int 	 (*systicks)		(void);						// current system ticks
	uint32_t (*hwbuttons)		(void);						// button presses
	int 	  *mousePosX;		// mouse coords X			// sys variable
	int 	  *mousePosY;		// mouse coords Y			// sys variable
	int 	  *mousePosDX;		// mouse coords XD			// sys variable	DELTA SPEED
	int 	  *mousePosDY;		// mouse coords YD			// sys variable	DELTA SPEED
	void 	 (*clearmousedelta)	(void);						// use this to clear the mouse deltaspeed
	void	 (*drawmouse)		(void);						// use this to draw the mouse on the current buffer

	// Timers Setups
	struct timers_isrconf
			*timer[4];	// 4 timers, , Timer A, B, C, D (C and D dont yet work)

	void 	(*timerAConf)		(unsigned long ctrl);	// set to 0 to stop everything
	void 	(*timerBConf)		(unsigned long ctrl);	// set to 0 to stop everything
	//void 	(*timerCConf)		(unsigned long ctrl);
	//void 	(*timerDConf)		(unsigned long ctrl);

	// ISR Setups
	struct isr_conf
			*interruptVector;

	void 	(*settime)			(uint8_t hours, uint8_t minutes, uint8_t seconds);
	void 	(*setdate)			(uint8_t year, uint8_t month, uint8_t day, uint8_t weekday);
	void 	(*gettime)			(uint8_t* hour, uint8_t* min, uint8_t* sec);
	void 	(*getdate)			(uint8_t* year, uint8_t* month, uint8_t* day, uint8_t* weekday);
};


#define 	GetMouseX()		*SBAPI->sys.mousePosX
#define 	GetMouseY()		*SBAPI->sys.mousePosY











#endif /* OS_APPAPI_API_SYS_H_ */
