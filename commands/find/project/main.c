#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "../../../_coreapi_/apis.h"

// Define Sidbox API and constants as needed, e.g.:
#define API ((volatile SidboxAPI *)0x2001F000)
#define AM_DIR 0x10
#define MAX_DEPTH 512

typedef struct {
    char path[256];  // absolute directory path without trailing slash (except for root)
} DirEntry;

void normalize_path(char *path) {
    size_t len = strlen(path);
    while (len > 1 && path[len - 1] == '/') {
        path[len - 1] = '\0';
        len--;
    }
}

void join_path(char *out, size_t outSize, const char *dir, const char *file) {
    // Build absolute path without double slashes
    size_t dir_len = strlen(dir);

    // Trim trailing slashes from dir except root
    while (dir_len > 1 && dir[dir_len - 1] == '/') {
        dir_len--;
    }

    // Skip leading slashes in file
    while (*file == '/') {
        file++;
    }

    if (dir_len >= outSize) {
        dir_len = outSize - 1;
    }

    strncpy(out, dir, dir_len);
    out[dir_len] = '\0';

    if (*file) {
        if (dir_len + 1 < outSize) {
            strcat(out, "/");
            strncat(out, file, outSize - strlen(out) - 1);
        }
    }
}

int wildcard_match(const char *pattern, const char *text) {
    while (*pattern && *text) {
        if (*pattern == '*') {
            pattern++;
            if (!*pattern) return 1;
            while (*text) {
                if (wildcard_match(pattern, text))
                    return 1;
                text++;
            }
            return 0;
        } else if (tolower((unsigned char)*pattern) == tolower((unsigned char)*text)) {
            pattern++;
            text++;
        } else {
            return 0;
        }
    }
    return (*pattern == *text || (*pattern == '*' && !*(pattern + 1)));
}

int strcasestr_custom(const char *haystack, const char *needle) {
    size_t needle_len = strlen(needle);
    if (needle_len == 0) return 1;

    for (; *haystack; haystack++) {
        if (tolower((unsigned char)*haystack) == tolower((unsigned char)*needle)) {
            if (strncasecmp(haystack, needle, needle_len) == 0) {
                return 1;
            }
        }
    }
    return 0;
}

#include <ctype.h>

int wildcard_match_case_insensitive(const char *pattern, const char *text) {
    while (*pattern && *text) {
        if (*pattern == '*') {
            pattern++;
            if (!*pattern) return 1;
            while (*text) {
                if (wildcard_match_case_insensitive(pattern, text)) return 1;
                text++;
            }
            return 0;
        } else if (tolower((unsigned char)*pattern) == tolower((unsigned char)*text)) {
            pattern++;
            text++;
        } else {
            return 0;
        }
    }
    return (*pattern == *text || (*pattern == '*' && !*(pattern + 1)));
}


#define MAX_PATH_LEN 256

int main(int argc, char *argv[]) {
    char cwd[MAX_PATH_LEN];

    if (argc < 2 || (argc == 2 && strcmp(argv[1], "?") == 0)) {
        API->sys.printf(
            "Usage: find <pattern> [-w] [startdir]\r\n"
            "  - pattern: filename or wildcard pattern (use * for wildcards)\r\n"
            "  - -w: enable wildcard matching (case-insensitive)\r\n"
            "  - startdir: optional starting directory (default current dir)\r\n"
            "Examples:\r\n"
            "  find sonic -w /music\r\n"
            "  find file.txt\r\n"
            "  find ?  (show this help)\r\n"
        );
        return 1;
    }

    const char *target = argv[1];
    int wildcard = 0;
    const char *startdir = NULL;

    for (int i = 2; i < argc; i++) {
        if (strcmp(argv[i], "-w") == 0) {
            wildcard = 1;
        } else {
            startdir = argv[i];
        }
    }

    if (!startdir) {
        // Get current working directory from API
        uint32_t res = API->filesys.getcwd((TCHAR *)cwd);
        if (res == 0) {
            // Success
            startdir = cwd;
        } else {
            // Fallback to root if getcwd fails
            startdir = "/";
        }
    }

    DirEntry stack[MAX_DEPTH];
    int pushIndex = 0;
    int popIndex = 0;

    strncpy(stack[pushIndex].path, startdir, sizeof(stack[0].path) - 1);
    stack[pushIndex].path[sizeof(stack[0].path) - 1] = '\0';
    normalize_path(stack[pushIndex].path);
    pushIndex++;

    // ... continue with your existing search queue loop ...


    FILINFO finfo;
    int matches = 0;

    API->sys.printf("Searching for: %s\r\n", target);

    while (popIndex < pushIndex) {
        char *dir = stack[popIndex].path;
        popIndex++;

        if (API->filesys.opendir(0, dir) != 0) {
            API->sys.printf("Cannot open directory: %s\r\n", dir);
            continue;
        }

        while (1) {
            memset(&finfo, 0, sizeof(FILINFO));
            if (API->filesys.readdir(0, &finfo) != 0 || finfo.fname[0] == 0)
                break;

            if (strcmp(finfo.fname, ".") == 0 || strcmp(finfo.fname, "..") == 0)
                continue;

            char fullpath[256];
            join_path(fullpath, sizeof(fullpath), dir, finfo.fname);
            normalize_path(fullpath);

            // Match logic here (wildcard or exact)
            int match = 0;
            if (wildcard) {
                if (strchr(target, '*')) {
                    // Pattern contains '*', do wildcard case-insensitive match
                    match = wildcard_match_case_insensitive(target, finfo.fname);
                } else {
                    // No '*' wildcard, do case-insensitive substring match
                    match = strcasestr_custom(finfo.fname, target) != 0;
                }
            } else {
                // Exact match but case-insensitive
                match = (strcasecmp(finfo.fname, target) == 0);
            }

            if (match) {
                matches++;
                API->sys.printf("Match: %s\r\n", fullpath);
            }

            if ((finfo.fattrib & AM_DIR) && pushIndex < MAX_DEPTH) {
                // Push absolute directory path, normalized, no trailing slash except root
                strncpy(stack[pushIndex].path, fullpath, sizeof(stack[0].path) - 1);
                stack[pushIndex].path[sizeof(stack[0].path) - 1] = '\0';
                normalize_path(stack[pushIndex].path);
                pushIndex++;

                //API->sys.printf("Depth: %d, Pushing directory: %s\r\n", pushIndex, stack[pushIndex - 1].path);
            }
        }

        API->filesys.closedir(0);
    }

    API->sys.printf("Search complete - %d match%s\r\n", matches, matches == 1 ? "" : "es");
    API->sys.printf("Current dir: %s\r\n", cwd);
    return 0;
}
