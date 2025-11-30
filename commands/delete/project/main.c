#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>

// #### DOS COMMANDS ///
// delete <filename> or delete -f <filename>

#include "../../../_coreapi_/apis.h"


#define API	((volatile SidboxAPI *)0x2001F000)

int main(int argc, char *argv[]){
	DIVZEROOFF;	// Disable div-by-zero trap (SIDBOX specific)

    if (argc < 2 || strcmp(argv[1], "?") == 0) {
        API->sys.printf("Usage:\n");
        API->sys.printf("  delete <filename>       - delete file (fails on hidden/readonly)\n");
        API->sys.printf("  delete -f <filename>    - force delete (ignores hidden/readonly)\n");
        API->sys.printf("Note: Cannot delete directories.\n");
        return 0;
    }

    int force = 0;
    const char *filename = NULL;

    // Parse args (very simple)
    for (int i = 1; i < argc; i++) {
        if (strcmp(argv[i], "-f") == 0) {
            force = 1;
        } else {
            filename = argv[i];
        }
    }

    if (!filename) {
        API->sys.printf("Usage: delete [-f] filename\n");
        return 1;
    }

    FILINFO finfo;
    uint32_t res = API->filesys.stat(filename, &finfo);
    if (res != FR_OK) {
        API->sys.printf("File not found or error %lu\n", res);
        return 1;
    }

    if (finfo.fattrib & AM_DIR) {
        API->sys.printf("Error: Cannot delete directories\n");
        return 1;
    }

    if ((finfo.fattrib & AM_RDO) && !force) {
        API->sys.printf("File is read-only. Use -f to force delete.\n");
        return 1;
    }

    if ((finfo.fattrib & AM_RDO) && force) {
        // Clear read-only attribute before deletion
        res = API->filesys.chmod(filename, 0, AM_RDO);
        if (res != FR_OK) {
            API->sys.printf("Failed to clear read-only attribute: %lu\n", res);
            return 1;
        }
    }

    res = API->filesys.delete(filename);
    if (res != FR_OK) {
        API->sys.printf("Failed to delete file: %lu\n", res);
        return 1;
    }

    API->sys.printf("File deleted successfully.\n");
    return 0;
}
