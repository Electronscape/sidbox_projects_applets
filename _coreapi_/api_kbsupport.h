#include <stdint.h>
#include <stdbool.h>
#include "apis.h"


#ifndef API_KBSUPPORT_H
#define API_KBSUPPORT_H







#define TEXTBUFFER_SIZE 64
#define KEY_BACKSPACE   0x08

#define HID_BACKSPACE   0x2A
#define HID_RETURN      0x28

// top row numbers
#define KB_0            0x27
#define KB_1            0x1E
#define KB_2            0x1F
#define KB_3            0x20
#define KB_4            0x21
#define KB_5            0x22
#define KB_6            0x23
#define KB_7            0x24
#define KB_8            0x25
#define KB_9            0x26

// letters
#define KB_A            0x04
#define KB_B            0x05
#define KB_C            0x06
#define KB_D            0x07
#define KB_E            0x08
#define KB_F            0x09
#define KB_G            0x0A
#define KB_H            0x0B
#define KB_I            0x0C
#define KB_J            0x0D
#define KB_K            0x0E
#define KB_L            0x0F
#define KB_M            0x10
#define KB_N            0x11
#define KB_O            0x12
#define KB_P            0x13
#define KB_Q            0x14
#define KB_R            0x15
#define KB_S            0x16
#define KB_T            0x17
#define KB_U            0x18
#define KB_V            0x19
#define KB_W            0x1A
#define KB_X            0x1B
#define KB_Y            0x1C
#define KB_Z            0x1D

// arrow keys
#define KB_UP           0x52
#define KB_DOWN         0x51
#define KB_LEFT         0x50
#define KB_RIGHT        0x4F

// special keys
#define KB_RETURN       0x28
#define KB_SPACE        0x2C
#define KB_BACKSPACE    0x2A

// MODIFIER
#define KB_LSHIFT       0x02
#define KB_RSHIFT       0x20




extern uint8_t textbuffer_index;
extern char textbuffer[TEXTBUFFER_SIZE];
extern uint8_t last_keyReport[];


// our interrupt prototype function
// eg. SBAPI->sys.interruptVector->keyboard_isr = &KB_ISR;
__weak void KB_ISR(uint8_t *packet);



#endif