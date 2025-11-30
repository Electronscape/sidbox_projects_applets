#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>

#include "../../../_coreapi_/apis.h"

#define API ((volatile SidboxAPI *)0x2001F000)

#define MAX_DEPTH       64
#define MAX_PATH        256
#define MAXARGUMENTS    2

typedef struct {
    char path[MAX_PATH];
    int state;  // 0 = needs scan, 1 = pending delete
} FolderEntry;

static FolderEntry path_stack[MAX_DEPTH];
static int stack_ptr = 0;

static int push_path(const char *path, int state) {
    if (stack_ptr >= MAX_DEPTH) return -1;
    strncpy(path_stack[stack_ptr].path, path, MAX_PATH - 1);
    path_stack[stack_ptr].path[MAX_PATH - 1] = 0;
    path_stack[stack_ptr].state = state;
    stack_ptr++;
    return 0;
}

static FolderEntry* pop_path(void) {
    if (stack_ptr <= 0) return NULL;
    return &path_stack[--stack_ptr];
}

volatile     int attempts = 0;
volatile    int totalfilesKilled, totalFoldersKilled;

int rmdir_iterative(const char *startPath, int force) {
    typedef struct {
        char path[256];
    } DirEntry;

    DirEntry stack[MAX_DEPTH];
    int depth = 0, totalDeleted = 0;

    strncpy(stack[depth++].path, startPath, sizeof(stack[0].path) - 1);

    FILINFO finfo;

    // Reset counters if global
    //totalFoldersKilled = 0;
    //totalfilesKilled = 0;

    while (depth > 0) {
        depth--;
        const char *currentPath = stack[depth].path;

        if (API->filesys.opendir(0, currentPath) != 0) {
            //API->api_dbug("Could not open directory: %s\n", currentPath);
            continue;
        }

        while (1) {
            memset(&finfo, 0, sizeof(FILINFO));
            if (API->filesys.readdir(0, &finfo) != 0 || finfo.fname[0] == 0)
                break;

            if (strcmp(finfo.fname, ".") == 0 || strcmp(finfo.fname, "..") == 0)
                continue;

            char fullpath[256];
            snprintf(fullpath, sizeof(fullpath), "%s/%s", currentPath, finfo.fname);

            if (finfo.fattrib & AM_DIR) {
                // Push directory to stack if we have room
                if (depth < MAX_DEPTH) {
                    strncpy(stack[depth++].path, fullpath, sizeof(stack[0].path) - 1);
                } else {
                    API->sys.printf("Max depth reached: %s\n", fullpath);
                }
            } else {
                // File delete
                if (API->filesys.delete(fullpath) == 0) {
                    totalDeleted++;
                    totalfilesKilled++;
                    attempts = 0;  // reset attempts on successful delete
                }
            }
        }
        API->filesys.closedir(0);

        // Now delete the directory itself
        if (API->filesys.delete(currentPath) == 0) {
            totalDeleted++;
            totalFoldersKilled++;
            attempts = 0;  // reset attempts on successful delete
        }
    }

    return totalDeleted;
}


int main(int argc, char *argv[]) {
    DIVZEROOFF;

    if (argc < 2 || strcmp(argv[1], "?") == 0) {
        API->sys.printf("Usage: rmdir <folder> [-r] [-f]\n");
        API->sys.printf("  -r   Recursive delete (required for non-empty folders)\n");
        API->sys.printf("  -f   Force delete (same as -r, but ignores some errors)\n");
        return 1;
    }

    const char *target = argv[1];
    int force = 0, recurse = 0;
    int totalfilesDeleted = 0;
    totalfilesKilled = totalFoldersKilled = 0;

    for (int i = 2; i < argc; i++) {
        if (strcmp(argv[i], "-r") == 0) recurse = 1;
        else if (strcmp(argv[i], "-f") == 0) { recurse = 1; force = 1; }
    }

    FILINFO info;
    if (API->filesys.stat(target, &info) != 0 || !(info.fattrib & AM_DIR)) {
        API->sys.printf("Target is not a folder: %s\n", target);
        return 1;
    }

    if (!recurse) {
        // Try single folder delete
        if (API->filesys.delete(target) != 0) {
            API->sys.printf("Failed to delete folder (not empty?): %s\n", target);
            return 1;
        } else {
            API->sys.printf("Deleted folder: %s\n", target);
            return 0;
        }
    }

    int deletedThisPass = 0;

    totalfilesDeleted = 0;

    do {
        deletedThisPass = rmdir_iterative(target, force);
        totalfilesDeleted += deletedThisPass;
        attempts++;

        //API->api_dbug("Pass %d: Deleted %d items\n", attempts, deletedThisPass);

        FILINFO check;
        if (API->filesys.stat(target, &check) != 0 || !(check.fattrib & AM_DIR)) {
            API->sys.printf("\r\nFiles: %lu, Folders: %lu \r\n", totalfilesKilled, totalFoldersKilled);
            API->sys.printf("rmdir: Successfully removed: %s\r\n", target);
            attempts = 255;
            break;
        }

        if (deletedThisPass == 0) {
            API->sys.printf("\r\nSome files left behind. \r\n");
            API->sys.printf("rmdir: No progress on this pass — giving up\n");
            attempts = 255;
            break;
        }

    } while (attempts < 16);  // Raise the cap if needed


    return 0;
}
