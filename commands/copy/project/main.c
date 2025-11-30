#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>

// #### DOS COMMANDS ///
// COPY <from> <to>

#include "../../../_coreapi_/apis.h"


#define API	((volatile SidboxAPI *)0x2001F000)

// Get filename from full path
const char *get_filename(const char *path) {
    const char *slash1 = strrchr(path, '/');
    const char *slash2 = strrchr(path, '\\');
    const char *last_slash = (slash1 > slash2) ? slash1 : slash2;
    return last_slash ? last_slash + 1 : path;
}



int main(int argc, char *argv[]){
	DIVZEROOFF;			// turn off DIV BY ZERO error - sometimes the CPU just farts at random with this on

	const int srcFileID = 0;
    const int dstFileID = 1;

	/*
    API->sys.printf("PASSING ARGS......... \r\n");
    API->sys.printf("ARG = %lu\r\n", argc);

    for (int i = 0; i < argc; i++) {
        if (argv[i] == NULL) {
            API->sys.printf(" ARG[%d] = NULL ptr\n", i);
            break;
        } else {
            API->sys.printf(" ARG[%d] = %s  ", i, argv[i]);
            API->sys.printf(" ptr = %p\n", (void*)argv[i]);
        }
    }
	*/

    if (argc < 3) {
        API->sys.printf("Usage: copyfile <source> <dest>\n");
        return 1;
    }
 
 
   const char *srcPath = argv[1];
    const char *dstArg = argv[2];

    char dstPath[256];

    // Check if destination ends in slash (implies it's a directory)
    size_t len = strlen(dstArg);
    if (dstArg[len - 1] == '\\' || dstArg[len - 1] == '/') {
        // Build full destination path with same filename
        snprintf(dstPath, sizeof(dstPath), "%s%s", dstArg, get_filename(srcPath));
    } else {
        strncpy(dstPath, dstArg, sizeof(dstPath));
        dstPath[sizeof(dstPath) - 1] = '\0'; // null-terminate just in case
    }

    API->sys.printf("Opening source: %s\n", srcPath);
    if (API->filesys.open(srcFileID, srcPath, FA_READ | FA_OPEN_EXISTING) != 0) {
        API->sys.printf("Failed to open source file.\n");
        return 2;
    }

    API->sys.printf("Opening dest: %s\n", dstPath);
    if (API->filesys.open(dstFileID, dstPath, FA_WRITE | FA_CREATE_ALWAYS) != 0) {
        API->sys.printf("Failed to create destination file.\n");
        API->filesys.close(srcFileID);
        return 3;
    }


    uint8_t buffer[1024];
    uint32_t bytesRead = 0, bytesWritten = 0;
    int total = 0;

    do {
        if (API->filesys.read(srcFileID, buffer, sizeof(buffer), &bytesRead) != 0) break;
        if (bytesRead == 0) break; // EOF

        if (API->filesys.write(dstFileID, buffer, bytesRead, &bytesWritten) != 0) break;
        if (bytesWritten != bytesRead) {
            API->sys.printf("Partial write!\n");
            break;
        }

        total += bytesWritten;
    } while (bytesRead > 0);

    API->filesys.close(srcFileID);
    API->filesys.close(dstFileID);

    API->sys.printf("Copied %d bytes from '%s' to '%s'\n", total, srcPath, dstPath);
	return 0;	// exited with success
}






