#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>

// #### DOS COMMANDS ///
// chmod <Fields1> <Fields2> <Fields3> ...

#include "../../../_coreapi_/apis.h"

// SIDBOX chmod flags (Amiga-inspired)
#define CHMOD_READ     0x01   // r
#define CHMOD_WRITE    0x02   // w
#define CHMOD_EXEC     0x04   // e
#define CHMOD_DELETE   0x08   // d
#define CHMOD_SCRIPT   0x10   // s
#define CHMOD_HIDDEN   0x20   // h

uint8_t flag_char_to_bit(char c) {
    switch (c) {
        case 'r': return CHMOD_READ;
        case 'w': return CHMOD_WRITE;
        case 'e': return CHMOD_EXEC;
        case 'd': return CHMOD_DELETE;
        case 's': return CHMOD_SCRIPT;
        case 'h': return CHMOD_HIDDEN;
        default: return 0;
    }
}

#define API	((volatile SidboxAPI *)0x2001F000)
#define MAXARGUMENTS	2
int main(int argc, char *argv[]) {
    if (argc < 3) {
        API->sys.printf(" \r\nUsage: chmod [+r -w ...] <filename>\r\n");
        API->sys.printf("Flags: r=read, w=write, e=exec, d=delete, s=script, h=hidden\r\n \r\n");
        return 1;
    }

    const char *filename = argv[argc - 1];
    uint8_t set = 0;
    uint8_t mask = 0;

    for (int i = 1; i < argc - 1; i++) {
        const char *flag = argv[i];
        if (flag[0] != '+' && flag[0] != '-') {
            API->sys.printf(" \r\nInvalid flag: %s\r\n", flag);
            return 1;
        }

        for (int j = 1; flag[j]; j++) {
            uint8_t bit = flag_char_to_bit(flag[j]);
            if (!bit) {
                API->sys.printf(" \r\nUnknown flag: %c\r\n", flag[j]);
                return 1;
            }
            mask |= bit;
            if (flag[0] == '+') {
                set |= bit;
            }
        }
    }

    uint32_t res = API->filesys.chmod(filename, set, mask);
    if (res != 0) {
        API->sys.printf(" \r\nchmod failed on: %s (code %lu)\r\n", filename, res);
        return 1;
    }

    API->sys.printf(" \r\nchmod updated: %s\r\n", filename);
    return 0;
}




