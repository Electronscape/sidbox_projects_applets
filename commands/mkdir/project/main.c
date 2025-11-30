#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>

// #### DOS COMMANDS ///
// mkdir <newdir> 
// do not create a folder if it exists
// allowable characters: a..z, A..Z, 0..9, !,£,$,%,(,) and . 

#include "../../../_coreapi_/apis.h"


#define API ((volatile SidboxAPI *)0x2001F000)
#define MAX_ALLOWED_CHARS "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!£$%()."

int is_valid_name(const char *name) {
    while (*name) {
        if (strchr(MAX_ALLOWED_CHARS, *name) == NULL)
            return 0;
        name++;
    }
    return 1;
}

#define API	((volatile SidboxAPI *)0x2001F000)
#define MAXARGUMENTS	2

int main(int argc, char *argv[]){
	DIVZEROOFF;			// turn off DIV BY ZERO error - sometimes the CPU just farts at random with this on


    if (argc < 2) {
        API->sys.printf("Usage: mkdir <newdirectory>\n");
        return 1;
    }
 
 // arguments, [1][2]....
    const char *arg1 = argv[1];
    const char *arg2 = argv[2];

    // User code BEGIN

    const char *newDir = argv[1];

    if (!is_valid_name(newDir)) {
        API->sys.printf("Invalid characters in directory name: %s\n", newDir);
        return 1;
    }

    FILINFO info;
    if (API->filesys.stat(newDir, &info) == 0) {
        API->sys.printf("Directory already exists: %s\n", newDir);
        return 1;
    }

    if (API->filesys.mkdir(newDir) != 0) {
        API->sys.printf("Failed to create directory: %s\n", newDir);
        return 1;
    }

    API->sys.printf("Directory created: %s\n", newDir);
    
    // User Code END



	return 0;	// exited with success
}






