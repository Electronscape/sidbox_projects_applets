#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>
#include <stdbool.h>

#include "kbsupport.h"

#include "../../../_coreapi_/apis.h"

#if(0)

#define HID_BACKSPACE 0x2A
#define HID_RETURN    0x28
#define HID_ESCAPE    0x29

// Very basic UK HID keymap (extend as needed)
char hid_keymap_us[128] = {
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
char hid_keymap_us_shift[128] = {
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


char hid_keymap_uk[128] = {
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

char hid_keymap_uk_shift[128] = {
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

#define TEXTBUFFER_SIZE 64
uint8_t textbuffer_index = 0;
char textbuffer[TEXTBUFFER_SIZE];
uint8_t last_keyReport[8];

int returnKey=0;


void KB_ISR(uint8_t *packet) {
bool shift = (packet[0] & (1 << 1)) || (packet[0] & (1 << 5));

    for (int i = 2; i < 8; i++) {
        uint8_t code = packet[i];
        if (code == 0) continue;

        bool already_held = false;
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
        }
        if(code == HID_RETURN){
            returnKey = 1;
            continue;
        }
        if(code == HID_ESCAPE){
            returnKey=0xff; // escape!
            continue;
        }

        char ch = shift ? hid_keymap_uk_shift[code] : hid_keymap_uk[code];
        if (ch == 0) continue;

        if (textbuffer_index < TEXTBUFFER_SIZE - 1) {
            textbuffer[textbuffer_index++] = ch;
            textbuffer[textbuffer_index] = '\0';
        }
    }
    memcpy(last_keyReport, packet, 8);
}

#endif