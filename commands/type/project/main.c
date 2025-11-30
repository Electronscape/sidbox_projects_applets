#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include "../../../_coreapi_/apis.h"

#define API ((volatile SidboxAPI *)0x2001F000)
#define MAXARGUMENTS 5
#define FILEID 0  // We'll just use file slot 0 for simplicity

#define ANSI_RESET    "\033[0m"
#define ANSI_MAGENTA  "\033[35m"
#define ANSI_CYAN     "\033[96m"
#define ANSI_DARKGRAY "\033[90m"



void print_hex_linecolour(uint8_t *buffer, int length, int addr) {
    API->sys.printf(ANSI_MAGENTA "%08X: " ANSI_RESET, addr);  // Address

    for (int i = 0; i < length; i++) {
        API->sys.printf(ANSI_CYAN "%02X " ANSI_RESET, buffer[i]);  // Hex
    }

    // Pad hex area if not full line
    for (int i = length; i < 16; i++) {
        API->sys.printf("   ");
    }

    API->sys.printf(" ");

    // ASCII part
    for (int i = 0; i < length; i++) {
        char c = buffer[i];
        if (c >= 32 && c < 127)
            API->sys.printf(ANSI_DARKGRAY "%c" ANSI_RESET, c);  // Printable ASCII
        else
            API->sys.printf(ANSI_DARKGRAY "." ANSI_RESET);
    }

    API->sys.printf("\r\n");
}






void print_hex_line(const uint8_t *buf, size_t len, size_t offset) {
    char line[128];
    int pos = snprintf(line, sizeof(line), "%08lX:  ", (unsigned long)offset);

    for (size_t i = 0; i < 16; i++) {
        if (i < len) {
            pos += snprintf(line + pos, sizeof(line) - pos, "%02X ", buf[i]);
        } else {
            pos += snprintf(line + pos, sizeof(line) - pos, "   ");  // maintain spacing
        }

        if (i == 7) {
            pos += snprintf(line + pos, sizeof(line) - pos, " ");  // extra gap every 4 bytes
        }
    }

    pos += snprintf(line + pos, sizeof(line) - pos, " | ");
    for (size_t i = 0; i < len; i++) {
        char c = buf[i];
        line[pos++] = (c >= 32 && c <= 126) ? c : '.';
    }

    line[pos] = '\0';
    API->sys.printf("%s\r\n", line);
}



int main(int argc, char *argv[]) {
    if (argc < 2 || (argc == 2 && strcmp(argv[1], "?") == 0)) {
        API->sys.printf("Usage: type <file> [-o offset] [-l length] [-b]\r\n");
        return 1;
    }

    const char *filename = argv[1];
    unsigned long offset = 0;
    unsigned long length = ~0UL; // max length unlimited
    int hex_output = 0;

    // Parse optional args
    for (int i = 2; i < argc; i++) {
        if (strcmp(argv[i], "-o") == 0 && i + 1 < argc) {
            offset = strtoul(argv[++i], NULL, 0);
        } else if (strcmp(argv[i], "-l") == 0 && i + 1 < argc) {
            length = strtoul(argv[++i], NULL, 0);
        } else if (strcmp(argv[i], "-b") == 0) {
            hex_output = 1;
        } else {
            API->sys.printf("Unknown argument: %s\r\n", argv[i]);
            return 1;
        }
    }

    // Open file for reading (FA_READ is typically 0x01)
    if (API->filesys.open(FILEID, filename, 1) != 0) {
        API->sys.printf("Failed to open file: %s\r\n", filename);
        return 1;
    }

    if (offset != 0) {
        if (API->filesys.seek(FILEID, offset) != 0) {
            API->sys.printf("Failed to seek to offset %lu\r\n", offset);
            API->filesys.close(FILEID);
            return 1;
        }
    }

    uint8_t buffer[256];
    unsigned long bytes_left = length;
    unsigned long total_read = 0;

    while (bytes_left > 0) {
        uint32_t to_read = (bytes_left > sizeof(buffer)) ? sizeof(buffer) : bytes_left;
        uint32_t br = 0;
        if (API->filesys.read(FILEID, buffer, to_read, &br) != 0 || br == 0) {
            break; // error or EOF
        }

        if (hex_output) {
            for (uint32_t i = 0; i < br; i += 16) {
                uint32_t chunk = (br - i > 16) ? 16 : (br - i);
                print_hex_line(buffer + i, chunk, total_read + i + offset);
            }
        } else {
            for (uint32_t i = 0; i < br; i++) {
                char c = buffer[i];
                if (c >= 32 && c <= 126) {
                    char s[2] = {c,0};
                    API->sys.printf("%s", s);
                } else if (c == '\n' || c == '\r') {
                    char s[2] = {c,0};
                    API->sys.printf("%s", s);
                } else {
                    API->sys.printf(".");
                }
            }
        }

        total_read += br;
        if (br < to_read) break; // EOF
        bytes_left -= br;
    }

    if (!hex_output) {
        API->sys.printf("\r\n");
    }

    API->filesys.close(FILEID);

    return 0;
}
