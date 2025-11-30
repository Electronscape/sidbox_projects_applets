/*
 * api_filesys.h
 *
 *  Created on: 25 Jun 2025
 *      Author: electronscape
 */

#include <stdint.h>

#ifndef OS_APPAPI_API_FILESYS_H_
#define OS_APPAPI_API_FILESYS_H_

#ifdef FILESYSAPI			// FILESYSAPI INCLUDE IN THIS
typedef enum {
	FR_OK = 0,				/* (0) Succeeded */
	FR_DISK_ERR,			/* (1) A hard error occurred in the low level disk I/O layer */
	FR_INT_ERR,				/* (2) Assertion failed */
	FR_NOT_READY,			/* (3) The physical drive cannot work */
	FR_NO_FILE,				/* (4) Could not find the file */
	FR_NO_PATH,				/* (5) Could not find the path */
	FR_INVALID_NAME,		/* (6) The path name format is invalid */
	FR_DENIED,				/* (7) Access denied due to prohibited access or directory full */
	FR_EXIST,				/* (8) Access denied due to prohibited access */
	FR_INVALID_OBJECT,		/* (9) The file/directory object is invalid */
	FR_WRITE_PROTECTED,		/* (10) The physical drive is write protected */
	FR_INVALID_DRIVE,		/* (11) The logical drive number is invalid */
	FR_NOT_ENABLED,			/* (12) The volume has no work area */
	FR_NO_FILESYSTEM,		/* (13) There is no valid FAT volume */
	FR_MKFS_ABORTED,		/* (14) The f_mkfs() aborted due to any problem */
	FR_TIMEOUT,				/* (15) Could not get a grant to access the volume within defined period */
	FR_LOCKED,				/* (16) The operation is rejected according to the file sharing policy */
	FR_NOT_ENOUGH_CORE,		/* (17) LFN working buffer could not be allocated */
	FR_TOO_MANY_OPEN_FILES,	/* (18) Number of open files > _FS_LOCK */
	FR_INVALID_PARAMETER,	/* (19) Given parameter is invalid */
	FR_INVALIDFILENUMBER	/* (20) trying to access a file id out of range */
} FRESULT;

#define _MAX_LFN     		128  /* Maximum LFN length to handle (12 to 255) */
#define	AM_RDO				0x01	/* Read only */
#define	AM_HID				0x02	/* Hidden */
#define	AM_SYS				0x04	/* System */
#define AM_DIR				0x10	/* Directory */
#define AM_ARC				0x20	/* Archive */
typedef struct {
	FSIZE_t	fsize;					/* File size */
	WORD	fdate;					/* Modified date */
	WORD	ftime;					/* Modified time */
	BYTE	fattrib;				/* File attribute */
	TCHAR	altname[13];			/* Alternative file name */
	TCHAR	fname[_MAX_LFN + 1];	/* Primary file name */
} FILINFO;

// ### FILESYSTEM ACCESS #######
#define	FA_READ				0x01
#define	FA_WRITE			0x02
#define	FA_OPEN_EXISTING	0x00
#define	FA_CREATE_NEW		0x04	// will only create if the file is not present
#define	FA_CREATE_ALWAYS	0x08	// will open and create over-writing anything there
#define	FA_OPEN_ALWAYS		0x10
#define	FA_OPEN_APPEND		0x30
#endif


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ########################################################################################################### //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
struct __attribute__((aligned(4))) fs_api { //############################## FILE SYSTEMS API ###################
	// FILE OPERATIONS	//////////////////////////////
	// file operations - LOAD file is a basic OPEN, READ, CLOSE operations,
	// anything loaded will be stored at destAddr (BE SURE you have enough
	// memory no checking is performed!)
	// Up to 4 files can be open at the same time

	// directory operations
	uint32_t (*changedir)	(const TCHAR* path);			// change directory
	uint32_t (*getcwd)		(const TCHAR *returnpath);		// get current directory
	uint32_t (*mkdir)		(const TCHAR *newdirectory);	// make a new directory
	uint32_t (*opendir)		(int dirindex, const TCHAR *path);
	uint32_t (*closedir)	(int dirindex);
	uint32_t (*readdir)		(int dirindex, FILINFO *finfo);

	// file access
	uint32_t (*chmod)		(const TCHAR *path, BYTE set, BYTE mask);
	uint32_t (*delete)		(const TCHAR* path);			// delete file or directory
	uint32_t (*rename)		(const TCHAR* oldname, const TCHAR* newname);		// delete file or directory

	uint32_t (*stat)		(const TCHAR *filename, FILINFO *stat);
	uint32_t (*size)		(int fileid);					// get file size
	uint32_t (*tell)		(int fileid);					// where is the filepointer now?
	uint32_t (*open)		(int fileid, const char *filename, uint32_t access);	// open a file
	uint32_t (*close)		(int fileid);					// close the file

	// file io
	uint32_t (*loadfile)	(int filenum, const char *filename, uint8_t *destAddr);		// simple direct read file, open, read into buffer return length
	uint32_t (*read) 		(int fileid, void *destmem, uint32_t len, uint32_t *br);	// read bytes into a buffer, return actual bytes.
	uint32_t (*write)		(int fileid, void *destmem, uint32_t len, uint32_t *br);	// write bytes from a buffer, return bytes saved.

	// file control
	uint32_t (*seek)		(int fileid, uint32_t offset);	// move the file point to new location
};

#endif /* OS_APPAPI_API_FILESYS_H_ */
