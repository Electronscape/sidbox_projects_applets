#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>

// #### DOS COMMANDS ///
// join <file1> <file2> [file3..]...

#include "../../../_coreapi_/apis.h"

#define FILEID_OUT  0
#define FILEID_IN   1
#define FILEID_IDX  2


#define API	((volatile SidboxAPI *)0x2001F000)
#define MAXARGUMENTS	2

int main(int argc, char *argv[]){
	DIVZEROOFF;			// turn off DIV BY ZERO error - sometimes the CPU just farts at random with this on
    if (argc < 5) {
        API->sys.printf("Usage: join +o <outputfile> [+i <indexfile>] +a <file1> <file2> [file3..]...\n");
        return 1;
    }

    uint8_t     filenamebuff[128];
    const char *outfilename = NULL;
    const char *indexfilename = NULL;
    int arg_i = 1;

    // Parse +o <outputfile>
    if (strcmp(argv[arg_i], "+o") == 0 && arg_i + 1 < argc) {
        outfilename = argv[arg_i + 1];
        arg_i += 2;
    } else {
        API->sys.printf("Missing +o <outputfile>\n");
        return 1;
    }

    // Optional +i <indexfile>
    if (arg_i + 1 < argc && strcmp(argv[arg_i], "+i") == 0) {
        indexfilename = argv[arg_i + 1];
        arg_i += 2;
    }

    // Next arg must be +a
    if (arg_i >= argc || strcmp(argv[arg_i], "+a") != 0) {
        API->sys.printf("Missing +a <file1> [file2 ...]\n");
        return 1;
    }
    arg_i++;

    if (arg_i >= argc) {
        API->sys.printf("No input files specified\n");
        return 1;
    }

    // Open output file
    if (API->filesys.open(FILEID_OUT, outfilename, FA_CREATE_ALWAYS | FA_WRITE) != FR_OK) {
        API->sys.printf("Failed to open output file: %s\n", outfilename);
        return 1;
    }

    // Open index file if requested
    int has_index = 0;
    if (indexfilename) {
        if (API->filesys.open(FILEID_IDX, indexfilename, FA_CREATE_ALWAYS | FA_WRITE) != FR_OK) {
            API->sys.printf("Failed to open index file: %s\n", indexfilename);
            API->filesys.close(FILEID_OUT);
            return 1;
        }
        has_index = 1;
    }

    uint8_t buffer[4096];
    uint32_t current_offset = 0;

    // Append all input files
    for (; arg_i < argc; arg_i++) {
        const char *filename = argv[arg_i];
        strcpy(filenamebuff, filename);

        if (API->filesys.open(FILEID_IN, filename, FA_READ) != FR_OK) {
            API->sys.printf("Failed to open input file: %s\n", filename);
            continue;
        }

        API->sys.printf("Appending file: %s\n", filename);

        // Write current offset to index file if present
        if (has_index) {
            char offset_line[128];
            int len = snprintf(offset_line, sizeof(offset_line),
                "0x%08X : filename: %s (dec: %u)\n", current_offset, filename, current_offset);
            API->filesys.write(FILEID_IDX, offset_line, len, NULL);
        }

        UINT bytesRead;
        while (1) {
            FRESULT res = API->filesys.read(FILEID_IN, buffer, sizeof(buffer), &bytesRead);
            if (res != FR_OK || bytesRead == 0)
                break;
            API->filesys.write(FILEID_OUT, buffer, bytesRead, NULL);
            current_offset += bytesRead;
        }

        API->filesys.close(FILEID_IN);
    }

    API->filesys.close(FILEID_OUT);
    if (has_index) {
        API->filesys.close(FILEID_IDX);
    }

    API->sys.printf("Files joined into %s\n", outfilename);
    if (has_index) {
        API->sys.printf("Index file created: %s\n", indexfilename);
    }

    return 0;
}






