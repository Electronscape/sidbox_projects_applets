#include <stdint.h>
#include <stdbool.h>
#include <string.h>

#include "../../../_coreapi_/apis.h"




#define MAX_TASKS 4
#define TASK_NAME_LEN 16

typedef void (*task_func_t)(void);

typedef struct {
    char name[TASK_NAME_LEN];
    task_func_t func;
    bool active;
    bool yielded;  // did task yield voluntarily?
} Task;

static Task tasks[MAX_TASKS];
static int current_task = -1;

void task_yield(void) {
    if (current_task >= 0 && current_task < MAX_TASKS) {
        tasks[current_task].yielded = true;
    }
}

// Simple scheduler: cycle through active tasks in round robin
void scheduler_run(void) {
    int start = current_task;
    for (int i = 0; i < MAX_TASKS; i++) {
        current_task = (current_task + 1) % MAX_TASKS;
        if (tasks[current_task].active) {
            tasks[current_task].yielded = false;
            tasks[current_task].func();

            if (tasks[current_task].yielded) {
                // task yielded, scheduler switches to next
                return;
            }
        }
    }
}

// Task add function
bool task_add(const char *name, task_func_t func) {
    for (int i = 0; i < MAX_TASKS; i++) {
        if (!tasks[i].active) {
            strncpy(tasks[i].name, name, TASK_NAME_LEN - 1);
            tasks[i].name[TASK_NAME_LEN - 1] = '\0';
            tasks[i].func = func;
            tasks[i].active = true;
            tasks[i].yielded = false;
            return true;
        }
    }
    return false; // no free slot
}

// Task remove by name
void task_remove(const char *name) {
    for (int i = 0; i < MAX_TASKS; i++) {
        if (tasks[i].active && strcmp(tasks[i].name, name) == 0) {
            tasks[i].active = false;
        }
    }
}

void draw_text_with_bg(int x, int y, const char *text, int fg_color, int bg_color) {
    const int CHAR_WIDTH = 8;   // adjust to your font width
    const int CHAR_HEIGHT = 16; // adjust to your font height
    int text_len = strlen(text);
    int rect_w = CHAR_WIDTH * text_len;
    int rect_h = CHAR_HEIGHT;

    SBGfxFGColour = bg_color;
    SBAPI->gfx.rectf(x, y, x+rect_w, y+rect_h);   // draw background rectangle

    SBGfxFGColour = fg_color;
    SBAPI->gfx.drawtextf(x, y, (const unsigned char *)text);
}

// Demo Task 1: simple blinking box with yield
void task1(void) {
    static bool on = false;
    on = !on;

    SBAPI->gfx.rect(10, 10, 100, 50);
    if (on) {
        SBAPI->gfx.rectf(10, 10, 100, 50);
    }
    //SBAPI->api_drawtextf(15, 30, (const unsigned char*)"Task1 running");

	draw_text_with_bg(15, 30, "Task 1 Running", 255, 0);

    //SBAPI->api_waitvsync();
    task_yield();
}

// Demo Task 2: simple counter print
void task2(void) {
    static int count = 0;
    char buf[32];
    snprintf(buf, sizeof(buf), "Count: %d", count++);

    SBAPI->gfx.rect(120, 10, 150, 50);
    draw_text_with_bg(125, 30, (const unsigned char*)buf, 255, 0);

    //SBAPI->api_waitvsync();
    //task_yield();
}

void ShowBuffer(int db){
	if(db){
		*SBAPI->gfx.ActiveBuffer = RAM_LCD_DISPLAYBUFFER1;	// Default locations - used in the OS, but safe to use
		*SBAPI->gfx.DrawBuffer 	= RAM_LCD_DISPLAYBUFFER2;
	} else {
		*SBAPI->gfx.ActiveBuffer = RAM_LCD_DISPLAYBUFFER2;	// Default locations - used in the OS, but safe to use
		*SBAPI->gfx.DrawBuffer 	= RAM_LCD_DISPLAYBUFFER1;
	}
}

int main(int argc, char *argv[]){
	uint8_t txt[128];
    uint8_t idb;
	
	SBAPI->gfx.setBacklightBrightness(255);	// turn off backlight	// so we hide all the messy graphics initialisation startup
	dbug("OS V0.01\r\n");
	SBAPI->sys.delayMs(10);

	initDisplayBuffers();
	
	// Init SBAPI graphics mode for simplicity
	SBAPI->gfx.initdisplay(220, FPS_50hz);	// 60fps landscape mode
    SBAPI->gfx.displaymode(480, 320, 480, 320, DISPFLAG_DUALLAYER );	// the big bitmap is double the height -- essential startup 
	SBAPI->gfx.waitvsync();	// dont need this if using the APILCDRender(this uses a vsync)
	SBAPI->gfx.render(1);
	SBAPI->gfx.setBGViewport(0, 0);
	SBAPI->gfx.setFGViewport(0, 0);

	SBGfxFGColour = 255;
    // Clear screen
	ShowBuffer(0);	// active (being uploaded to LCD)
    SBAPI->gfx.clearDrawBuffer(0);
	ShowBuffer(1);	// active back buffer draw
    SBAPI->gfx.clearDrawBuffer(0);
	SBAPI->gfx.clearBackLayerBuffer(0);

    // Add demo tasks
    task_add("Blinker", task1);
    task_add("Counter", task2);

	int timetoremove=0;

    while (1) {
        

		SBAPI->gfx.clearDrawBuffer(0);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)
		//SBAPI->api_clsb(0);		// clear foreground (this is now done via DMA so ensure you do something, about 100 microseconds)

		scheduler_run();

		if(timetoremove < 150) timetoremove++;
		
		if(timetoremove== 120){
			timetoremove = 122;
			task_remove("Blinker");
		}

		SBGfxFGColour = 15;
		SBAPI->gfx.rectf(10, 100, 10+100, 100+100);

		SBAPI->gfx.rect(50, 80, 50+100, 80+50);


		ShowBuffer(idb);	// swap the active and drawbuffer around
		idb = 1 - idb;		// toggle buffer id
		// time to display it!
		SBAPI->gfx.waitvsync();
		SBAPI->gfx.render(1);		// 1 = dual layer render, vwait already done :)
		SBAPI->music.UpdatePlayer();			// need this to enable to the sound
    }




	return(0xB16B00B5);
}