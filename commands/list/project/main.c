#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "../../../_coreapi_/apis.h"

#define API ((volatile SidboxAPI *)0x2001F000)


void print_protection(uint8_t prot) {
    
}

void print_file_info(const FILINFO *finfo, const char *filename, int full) {
    if (!finfo) return;

    // Basic size + date
    API->sys.printf(" \r\n \r\n");
    API->sys.printf("File: %s\r\n", filename);
    API->sys.printf("  Size: %lu bytes\r\n", (unsigned long)finfo->fsize);
    API->sys.printf("  Created: %04u-%02u-%02u %02u:%02u:%02u\r\n",
        (finfo->fdate >> 9) + 1980,
        (finfo->fdate >> 5) & 0x0F,
        finfo->fdate & 0x1F,
        (finfo->ftime >> 11),
        (finfo->ftime >> 5) & 0x3F,
        (finfo->ftime & 0x1F) * 2
    );

    if (full) {
        // Show attributes as flags
        API->sys.printf("  Attributes: ");
        API->sys.printf("%c", (finfo->fattrib & 0x01) ? 'r' : '-'); // Read
        API->sys.printf("%c", (finfo->fattrib & 0x02) ? 'w' : '-'); // Write
        API->sys.printf("%c", (finfo->fattrib & 0x04) ? 'e' : '-'); // Exec
        API->sys.printf("%c", (finfo->fattrib & 0x08) ? 'd' : '-'); // Delete
        API->sys.printf("%c", (finfo->fattrib & 0x10) ? 's' : '-'); // Script
        API->sys.printf("%c", (finfo->fattrib & 0x20) ? 'h' : '-'); // Hidden
        API->sys.printf("\r\n");
        if (finfo->fattrib & 0x01) API->sys.printf(" [READONLY]");
        if (finfo->fattrib & 0x02) API->sys.printf(" [HIDDEN]");
        if (finfo->fattrib & 0x04) API->sys.printf(" [SYSTEM]");
        if (finfo->fattrib & 0x10) API->sys.printf(" [DIR]");
        if (finfo->fattrib & 0x20) API->sys.printf(" [ARCHIVE]");
        API->sys.printf(" \r\n");
    }
    API->sys.printf(" \r\n");
}









int main(int argc, char *argv[]) {
    //DIVZEROOFF;

    if (argc < 2) {
        API->sys.printf("Usage: list <filename> [-o FULL]\r\n");
        return 1;
    }

    const char *filename = argv[1];
    int full = 0;

    if (argc > 2 && strcmp(argv[2], "-o") == 0 && argc > 3) {
        if (strcasecmp(argv[3], "FULL") == 0) {
            full = 1;
        }
    }

    FILINFO finfo;
    memset(&finfo, 0, sizeof(FILINFO));

    if (API->filesys.stat(filename, &finfo) == 0) {
        print_file_info(&finfo, filename, full);
    } else {
        API->sys.printf("Error: File not found: %s\r\n", filename);
        return 1;
    }

    return 0;
}
