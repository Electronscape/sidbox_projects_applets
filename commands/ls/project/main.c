#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <stdlib.h>

#include "../../../_coreapi_/apis.h"

#define API ((volatile SidboxAPI *)0x2001F000)
#define MAX_FILES 512

typedef struct {
    char name[128];
    uint32_t size;
    uint8_t attrib;
} FileEntry;

int compare_entries(const void *a, const void *b) {
    const FileEntry *fa = (const FileEntry *)a;
    const FileEntry *fb = (const FileEntry *)b;

    int isDirA = (fa->attrib & AM_DIR) != 0;
    int isDirB = (fb->attrib & AM_DIR) != 0;

    if (isDirA != isDirB)
        return isDirB - isDirA;

    return strcasecmp(fa->name, fb->name);
}

static void print_size_k(uint32_t bytes) {
    uint32_t kb = (bytes + 1023) / 1024;
    /*
    if (kb < 10)
        API->api_dbug("    %uk ", kb);
    else if (kb < 100)
        API->api_dbug("   %2uk ", kb);
    else if (kb < 1000)
        API->api_dbug("  %3uk ", kb);
    else
        API->api_dbug("%5uk ", kb);

    */
    API->sys.printf("%6ldk ", kb);
}

int main(int argc, char *argv[]) {
    DIVZEROOFF;

    uint8_t cwd[256];

    const char *targetPath = "/";
    if (argc > 1) {
        targetPath = argv[1];
        sprintf(cwd, targetPath);
    } else {

        API->filesys.getcwd(cwd);
        sprintf(targetPath, cwd);

    }


    if (API->filesys.opendir(0, targetPath) != 0) {
        API->sys.printf("Could not open directory: %s\r\n", targetPath);
        return 1;
    }

    FileEntry entries[MAX_FILES];
    int count = 0, fileCount = 0, dirCount = 0;
    uint32_t totalSize = 0;

    FILINFO finfo;
    while (count < MAX_FILES) {
        memset(&finfo, 0, sizeof(FILINFO));
        if (API->filesys.readdir(0, &finfo) != 0 || finfo.fname[0] == 0)
            break;

        if (strcmp(finfo.fname, ".") == 0 || strcmp(finfo.fname, "..") == 0)
            continue;

        strncpy(entries[count].name, finfo.fname, sizeof(entries[count].name) - 1);
        entries[count].size = finfo.fsize;
        entries[count].attrib = finfo.fattrib;
        count++;
    }
    API->filesys.closedir(0);

    qsort(entries, count, sizeof(FileEntry), compare_entries);

    API->sys.printf("**DIR_LIST**\r\n");
    API->sys.printf("path: %s\r\n", cwd);

    for (int i = 0; i < count; i++) {
        if (entries[i].attrib & AM_DIR) {
            API->sys.printf("    DIR [%s]\r\n", entries[i].name);
            dirCount++;
        }
    }

    for (int i = 0; i < count; i++) {
        if (!(entries[i].attrib & AM_DIR)) {
            print_size_k(entries[i].size);
            API->sys.printf("%s\r\n", entries[i].name);
            fileCount++;
            totalSize += entries[i].size;
        }
    }

    API->sys.printf("----------------------------\r\n");
    API->sys.printf("%d File(s)\r\n", fileCount);
    API->sys.printf("%d Dir(s)\r\n", dirCount);
    API->sys.printf("Size %luk\r\n", (totalSize + 1023) / 1024);
    API->sys.printf("DIR_OK:>\r\n");

    return 0;
}
