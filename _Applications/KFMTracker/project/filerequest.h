#include <stdint-gcc.h>


#ifndef FILEREQUEST_H
#define FILEREQUEST_H

#define FILEREQUEST_MODE_LOAD   0
#define FILEREQUEST_MODE_SAVE   1

#define FILELIST_VIEWSIZE_LOAD  4
#define FILELIST_VIEWSIZE_SAVE  3   // one less than the load since we need space to write our file name in

#define FILENAME_STRINGLEN      64

#define MAX_FILES_LISTED    512
#define FILENAME_LEN        128

extern uint8_t     bLoadSave;


typedef struct {
    char name[128];
    uint32_t size;
    uint8_t attrib;
} FileEntry;

#define fswrite     SBAPI->filesys.write
#define fsread      SBAPI->filesys.read
#define fsseek      SBAPI->filesys.seek
#define fsopen      SBAPI->filesys.open
#define fsclose     SBAPI->filesys.close

#endif