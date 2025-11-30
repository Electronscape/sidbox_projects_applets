#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>

// #### DOS COMMANDS ///
// RENAME <oldname> <newname>

#include "../../../_coreapi_/apis.h"

#define API	((volatile SidboxAPI *)0x2001F000)

// Code Begin

// Code End

int main(int argc, char *argv[]){
	DIVZEROOFF;			// turn off DIV BY ZERO error - sometimes the CPU just farts at random with this on

	const int srcFileID = 0;
    const int dstFileID = 1;

    if (argc < 3) {
        API->sys.printf("Usage: rename <oldname> <newname>\n");
        return 1;
    }
 
 
    const char *srcPath = argv[1];
    const char *dstArg = argv[2];

    // User code BEGIN


    FILINFO finfo;

    // Check if source exists
    if (API->filesys.stat(srcPath, &finfo) != 0) {
        API->sys.printf("Source not found: %s\n", srcPath);
        return 4;
    }

    // Check if destination contains a folder path — block slashes/backslashes
    if (strchr(dstArg, '/') || strchr(dstArg, '\\')) {
        API->sys.printf("Error: Destination must not include folder path.\n");
        return 6;
    }

    // Check if destination already exists
    if (API->filesys.stat(dstArg, &finfo) == 0) {
        API->sys.printf("Target already exists: %s\n", dstArg);
        return 3;
    }

    #if(0)  // renaming folders is a good idea
    // Prevent renaming a folder (for safety)
    if (finfo.fattrib & AM_DIR) {
        API->api_dbug("Error: Cannot rename directories.\n");
        return 7;
    }
    #endif

    // Perform rename
    API->sys.printf("Renaming: %s -> %s\n", srcPath, dstArg);
    uint32_t result = API->filesys.rename(srcPath, dstArg);

    if (result != 0) {
        API->sys.printf("Rename failed with code: %lu\n", (unsigned long)result);
        return 2;
    }

    API->sys.printf("Rename successful.\n");



    // User Code END



	return 0;	// exited with success
}






