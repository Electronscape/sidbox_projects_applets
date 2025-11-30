#include <stdio.h>
#include <stdint-gcc.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>
#include <stdbool.h>
#include "apis.h"


#include "api_kbsupport.h"



uint8_t textbuffer_index = 0;
char textbuffer[TEXTBUFFER_SIZE];
uint8_t last_keyReport[8];

#define KEYBUFFER_SIZE  8
static uint8_t keyPressBuffer[KEYBUFFER_SIZE];
static uint8_t keyPressWrite = 0;
static uint8_t keyPressRead = 0;
uint8_t bShift;

void push_key(uint8_t code) {
    if (code == 0) return;
    uint8_t next = (keyPressWrite + 1) % KEYBUFFER_SIZE;
    if (next != keyPressRead) {  // avoid overwrite
        keyPressBuffer[keyPressWrite] = code;
        keyPressWrite = next;
    }
}

uint8_t pop_key() {
    if (keyPressRead == keyPressWrite) return 0;
    uint8_t code = keyPressBuffer[keyPressRead];
    keyPressRead = (keyPressRead + 1) % KEYBUFFER_SIZE;
    return code;
}

void flush_keys(){
    keyPressWrite = 0;
    keyPressRead = 0;
    bShift = 0;
}

int returnKey=0;


// Very basic UK HID keymap (extend as needed)
const char hid_keymap_us[128] = {
    [0x04] = 'a', [0x05] = 'b', [0x06] = 'c', [0x07] = 'd',
    [0x08] = 'e', [0x09] = 'f', [0x0A] = 'g', [0x0B] = 'h',
    [0x0C] = 'i', [0x0D] = 'j', [0x0E] = 'k', [0x0F] = 'l',
    [0x10] = 'm', [0x11] = 'n', [0x12] = 'o', [0x13] = 'p',
    [0x14] = 'q', [0x15] = 'r', [0x16] = 's', [0x17] = 't',
    [0x18] = 'u', [0x19] = 'v', [0x1A] = 'w', [0x1B] = 'x',
    [0x1C] = 'y', [0x1D] = 'z',
    [0x1E] = '1', [0x1F] = '2', [0x20] = '3', [0x21] = '4',
    [0x22] = '5', [0x23] = '6', [0x24] = '7', [0x25] = '8',
    [0x26] = '9', [0x27] = '0',
    [0x28] = '\n', [0x2C] = ' ', [0x2D] = '-', [0x2E] = '=',
    [0x2F] = '[', [0x30] = ']', [0x31] = '\\',
    [0x33] = ';', [0x34] = '\'', [0x35] = '`',
    [0x36] = ',', [0x37] = '.', [0x38] = '/',
};

// Shifted version
const char hid_keymap_us_shift[128] = {
    [0x04] = 'A', [0x05] = 'B', [0x06] = 'C', [0x07] = 'D',
    [0x08] = 'E', [0x09] = 'F', [0x0A] = 'G', [0x0B] = 'H',
    [0x0C] = 'I', [0x0D] = 'J', [0x0E] = 'K', [0x0F] = 'L',
    [0x10] = 'M', [0x11] = 'N', [0x12] = 'O', [0x13] = 'P',
    [0x14] = 'Q', [0x15] = 'R', [0x16] = 'S', [0x17] = 'T',
    [0x18] = 'U', [0x19] = 'V', [0x1A] = 'W', [0x1B] = 'X',
    [0x1C] = 'Y', [0x1D] = 'Z',
    [0x1E] = '!', [0x1F] = '@', [0x20] = '#', [0x21] = '$',
    [0x22] = '%', [0x23] = '^', [0x24] = '&', [0x25] = '*',
    [0x26] = '(', [0x27] = ')',
    [0x2D] = '_', [0x2E] = '+',
    [0x2F] = '{', [0x30] = '}', [0x31] = '|',
    [0x33] = ':', [0x34] = '"', [0x35] = '~',
    [0x36] = '<', [0x37] = '>', [0x38] = '?',
};


const char hid_keymap_uk[128] = {
    [0x04] = 'a', [0x05] = 'b', [0x06] = 'c', [0x07] = 'd',
    [0x08] = 'e', [0x09] = 'f', [0x0A] = 'g', [0x0B] = 'h',
    [0x0C] = 'i', [0x0D] = 'j', [0x0E] = 'k', [0x0F] = 'l',
    [0x10] = 'm', [0x11] = 'n', [0x12] = 'o', [0x13] = 'p',
    [0x14] = 'q', [0x15] = 'r', [0x16] = 's', [0x17] = 't',
    [0x18] = 'u', [0x19] = 'v', [0x1A] = 'w', [0x1B] = 'x',
    [0x1C] = 'y', [0x1D] = 'z',
    [0x1E] = '1', [0x1F] = '2', [0x20] = '3', [0x21] = '4',
    [0x22] = '5', [0x23] = '6', [0x24] = '7', [0x25] = '8',
    [0x26] = '9', [0x27] = '0',
    [0x28] = '\n', [0x2C] = ' ', [0x2D] = '-', [0x2E] = '=',
    [0x2F] = '[', [0x30] = ']', [0x31] = '#',     // UK: '#' key instead of '\'
    [0x32] = '\\',                            // UK: '\' key near Enter (often 0x32)
    [0x33] = ';', [0x34] = '\'', [0x35] = '`',
    [0x36] = ',', [0x37] = '.', [0x38] = '/',
};

const char hid_keymap_uk_shift[128] = {
    [0x04] = 'A', [0x05] = 'B', [0x06] = 'C', [0x07] = 'D',
    [0x08] = 'E', [0x09] = 'F', [0x0A] = 'G', [0x0B] = 'H',
    [0x0C] = 'I', [0x0D] = 'J', [0x0E] = 'K', [0x0F] = 'L',
    [0x10] = 'M', [0x11] = 'N', [0x12] = 'O', [0x13] = 'P',
    [0x14] = 'Q', [0x15] = 'R', [0x16] = 'S', [0x17] = 'T',
    [0x18] = 'U', [0x19] = 'V', [0x1A] = 'W', [0x1B] = 'X',
    [0x1C] = 'Y', [0x1D] = 'Z',
    [0x1E] = '!', [0x1F] = '"', [0x20] = '£', [0x21] = '$',
    [0x22] = '%', [0x23] = '^', [0x24] = '&', [0x25] = '*',
    [0x26] = '(', [0x27] = ')',
    [0x2D] = '_', [0x2E] = '+',
    [0x2F] = '{', [0x30] = '}', [0x31] = '~',     // UK: '~' here instead of '|'
    [0x32] = '|',                            // UK: '|' near Enter (shifted '\')
    [0x33] = ':', [0x34] = '@', [0x35] = '¬',    // UK: '@' and '¬' swapped with US
    [0x36] = '<', [0x37] = '>', [0x38] = '?',
};


bool is_valid_filename_char(char ch) {
    // Reject nulls or non-printables
    if (ch < 32 || ch >= 127) return false;

    // Disallowed characters
    switch (ch) {
        case '"': case '*': case '/': case ':': case '<':
        case '>': case '?': case '\\': case '|': case '+':
        case ',': case ';': case '=': case '[': case ']':
            return false;
    }

    // Everything else is okay
    return true;
}

// These functions are __weak, meaning you can create your own function and reference these for help. 
// These are by no means perfect by the way (sorry, lazy code time: ran out of coffee) ;)

static uint8_t keyStateStack[8]; // 
static uint8_t keyStackPtr;        // for a string of pressed keys, pack them in a buffer that will then be read out later

__weak void KB_ISR(uint8_t *packet) {
    // capture if its left-shift, or right-shift key held
    bool shift = (packet[0] & (1 << 1)) || (packet[0] & (1 << 5));
    bShift = shift;

    keyStackPtr = 0;

    for (int i = 2; i < 8; i++) {
        uint8_t code = packet[i];   // the raw data package from the interface 
        keyStateStack[i-2] = code;  // storing the key packet using the GetKeyIn later

        if (code == 0) continue;    // go to next code if this one is zero

        // this is to control weather the keys you're holding are already held down, may be useful to control repeating keystrokes
        bool already_held = false;  // reset already_held
        for (int j = 2; j < 8; j++) {
            if (code == last_keyReport[j]) {
                already_held = true;
                break;
            }
        }

        

        if (already_held) continue;

        if (code == HID_BACKSPACE) {
            if (textbuffer_index > 0) {
                textbuffer_index--;
                textbuffer[textbuffer_index] = '\0';
            }
            continue;
        } else
            push_key(code);  // <-- your key press gets buffered here
            


        // custom part for a return key hit for the textbuffer
        if(code == HID_RETURN){
            returnKey = 1;
        }

        // shift uk keymap shift (again this isnt perfect but gives you an area to go)
        char ch = shift ? hid_keymap_uk_shift[code] : hid_keymap_uk[code];
        if (ch == 0) {
            continue;
        }

        // this is a text buffer DEMO, strip this out if you dont need it
        if (textbuffer_index < TEXTBUFFER_SIZE - 1) {
            textbuffer[textbuffer_index++] = ch;
            textbuffer[textbuffer_index] = '\0';
        }
    }
    // Save report for next comparison
    memcpy(last_keyReport, packet, 8);  // copy the last report, helps control the repeated key strokes

    if(returnKey){
        returnKey=0;
        memset(textbuffer, 0x00, TEXTBUFFER_SIZE);
        textbuffer_index=0;
    }

}


// using this to check if your keypacket contains the key you're looking for, returns the keycode you wanted
__weak uint8_t GetKeyIn(uint8_t keycode){
	uint8_t keyindex;
	// scan the packet for the key we want
	for(keyindex = 0; keyindex < 8; keyindex ++){
		if(keyStateStack[keyindex] == keycode) return(keyStateStack[keyindex]);
	}
	return (0);
}

void GetKeyInBufferTest(){
    uint8_t idx, keyB;

    for(idx=0; idx<8; idx++){
        keyB = pop_key();
        dbug("KEYINBUFF: %u=%u\r\n", idx, keyB);
    }
}

__weak uint8_t GetKeyInBuffer(){
    return pop_key();
}

__weak uint8_t GetKeyAsciiInBuffer(){
    uint8_t keyAscii, rawCode;

    rawCode = pop_key();

    keyAscii = bShift ? hid_keymap_uk_shift[rawCode] : hid_keymap_uk[rawCode];
    if (keyAscii == 0) {
        return(0);
    }


    return keyAscii;
}