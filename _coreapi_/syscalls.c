// Standard System Calls, 
// needed for basic applet softwares.


#include <sys/stat.h>
#include <errno.h>
#include <unistd.h>
#include "apis.h"

extern uint32_t _appstart;
extern uint8_t  __app_end;

#define SDRAM_BASE      0xD0000000
#define SDRAM_SIZE      (6 * 1024 * 1024) // 4MB total

extern int main(int argc, char *argv[]);

void* heap_base = (void*)(&__app_end);
uint32_t heap_size;

extern char _end; // defined in linker script


int ExitTimer = 0;
int ExitCode(){
    uint8_t hwbutts = SBHWButtons();	// get button presses
    if(hwbutts & BTN_FIRE2) {	// pressed, exit back out to the OS
        ExitTimer++;
        if(ExitTimer>25){	// hold for some frames
            //APIMusicCMD(0);	// stop music
            SBAPI->music.LoadAndplay("", 0, 0);
            return(0x7);
        }
        
    } else ExitTimer=0;
    return(0);
}


void initMalloc(){
    heap_size = (SDRAM_BASE + SDRAM_SIZE) - (uint32_t)&__app_end;
}

__attribute__((section(".header")))
const char sdex_header[8] = { 'S', 'D', 'E', 'X', 'P', 'R', 'O', 'G' };

__attribute__((section(".thestart")))
const uint32_t sdex_startaddr = (uint32_t)&_appstart;

__attribute__((section(".text.applet_entry")))
int applet_entry(int argc, char *argv[]) {
    return main(argc, argv);	// function returned without issues
}

int _write(int fd, const void *buf, size_t count) {
    return count;
}

int _read(int fd, void *buf, size_t count) {
    errno = ENOSYS;
    return -1;
}

int _close(int fd) {
    return -1;
}

int _fstat(int fd, struct stat *st) {
    st->st_mode = S_IFCHR;
    return 0;
}

int _lseek(int fd, int ptr, int dir) {
    return 0;
}

void *_sbrk(ptrdiff_t incr) {
    extern char _end; // defined in linker script
    static char *heap_end;
    if (!heap_end) heap_end = &_end;
    char *prev_heap_end = heap_end;
    heap_end += incr;
    return prev_heap_end;
}

int _isatty(int fd) {
    return 1;
}

void _exit(int code) {
    (void)code;
    while (1); // Trap here forever
}

int _getpid(void) {
    return 1;
}

int _kill(int pid, int sig) {
    (void)pid;
    (void)sig;
    return -1;
}