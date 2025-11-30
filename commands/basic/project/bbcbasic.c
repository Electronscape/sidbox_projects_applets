#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <stdbool.h>
#include <stdint.h>

#include "../../../_coreapi_/apis.h"
#define API ((volatile SidboxAPI *)0x2001F000)

#define MAX_LINES 100
#define MAX_STACK 16

// Variable table: A-Z
int vars[26];

// Basic program lines
typedef struct {
    int lineNumber;
    char content[64];
} BasicLine;

BasicLine program[MAX_LINES];
int lineCount = 0;

int call_stack[MAX_STACK];
int call_sp = 0;

#define MAX_SCREEN_LINES 19   // Number of visible lines on screen
#define MAX_BUFFER_LINES 100  // Number of lines stored in the scroll buffer
#define LINE_HEIGHT 16

static char screen_buffer[MAX_BUFFER_LINES][80];  // store up to 100 lines, max 80 chars each
static int buffer_line_count = 0;                 // total lines in buffer
static int scroll_pos = 0;                         // current scroll position (0 = bottom)

static int y = 0;  // vertical pixel start for printing (not used directly now)
static bool ifBlockActive = true;
int skip_block_if = 0;
int nested_if_level = 0;

//static int y = 0;
int getPrintrowvline(){
    return y * 16;
}

void CLS(){
    // Clear internal buffer
    for (int i = 0; i < MAX_BUFFER_LINES; i++)
        screen_buffer[i][0] = '\0';

    buffer_line_count = 0;
    scroll_pos = 0;
    y=0;

    // Clear display
    *SBAPI->gfx.forecolour = 0;
    FlipBuff();
    API->gfx.rectf(0, 0, 480, 320);
    FlipBuff();
    API->gfx.rectf(0, 0, 480, 320);


}

void print(const char *msg) {
    // Add line to buffer (scroll buffer)
    if (buffer_line_count < MAX_BUFFER_LINES) {
        strncpy(screen_buffer[buffer_line_count], msg, 79);
        screen_buffer[buffer_line_count][79] = '\0';
        buffer_line_count++;
    } else {
        // buffer full, shift all lines up, discard top line
        memmove(screen_buffer, screen_buffer[1], sizeof(screen_buffer) - sizeof(screen_buffer[0]));
        strncpy(screen_buffer[MAX_BUFFER_LINES-1], msg, 79);
        screen_buffer[MAX_BUFFER_LINES-1][79] = '\0';
    }
    
    // Always scroll to bottom on new print
    scroll_pos = buffer_line_count - MAX_SCREEN_LINES;
    if (scroll_pos < 0) scroll_pos = 0;

    // Clear screen
    *SBAPI->gfx.forecolour = 0;
    FlipBuff();
    API->gfx.rectf(0, 0, 480, LINE_HEIGHT * MAX_SCREEN_LINES);
    FlipBuff();
    API->gfx.rectf(0, 0, 480, LINE_HEIGHT * MAX_SCREEN_LINES);

    // Draw visible lines from scroll_pos to scroll_pos + MAX_SCREEN_LINES
    *SBAPI->gfx.forecolour = 46;
    y=0;
    for (int i = 0; i < MAX_SCREEN_LINES; i++) {
        int line_index = scroll_pos + i;
        if (line_index >= buffer_line_count) break;
        y ++;
        FlipBuff();
        API->gfx.drawtextf(0, i * LINE_HEIGHT, (const unsigned char *)screen_buffer[line_index]);
        FlipBuff();
        API->gfx.drawtextf(0, i * LINE_HEIGHT, (const unsigned char *)screen_buffer[line_index]);
    }
}

// Utility: Find line index by number
int find_line(int target) {
    for (int i = 0; i < lineCount; ++i)
        if (program[i].lineNumber == target) return i;
    return -1;
}

// Expression evaluator: basic recursive parser
const char *expr_ptr;

int parse_number();
int parse_factor();
int parse_term();
int parse_expr();

void skip_ws() {
    while (isspace(*expr_ptr)) expr_ptr++;
}

int parse_number() {
    skip_ws();
    if (isalpha(*expr_ptr)) {
        int idx = toupper(*expr_ptr++) - 'A';
        return vars[idx];
    }
    int val = 0;
    while (isdigit(*expr_ptr)) {
        val = val * 10 + (*expr_ptr++ - '0');
    }
    return val;
}

int parse_factor() {
    skip_ws();
    if (*expr_ptr == '(') {
        expr_ptr++;
        int val = parse_expr();
        if (*expr_ptr == ')') expr_ptr++;
        return val;
    }
    return parse_number();
}

int parse_term() {
    int val = parse_factor();
    skip_ws();
    while (*expr_ptr == '*' || *expr_ptr == '/') {
        char op = *expr_ptr++;
        int right = parse_factor();
        if (op == '*') val *= right;
        else if (op == '/') val /= right;
    }
    return val;
}

int parse_expr() {
    int val = parse_term();
    skip_ws();
    while (*expr_ptr == '+' || *expr_ptr == '-') {
        char op = *expr_ptr++;
        int right = parse_term();
        if (op == '+') val += right;
        else if (op == '-') val -= right;
    }
    return val;
}

void interpret_line(const char *line);

int ilineStep = 0;
static int iProgramRunning = 0;

int getProgramRunning(){
    return iProgramRunning;
}

void strtoupper(char *s) {
    while (*s) {
        *s = toupper((unsigned char)*s);
        s++;
    }
}

int step_program() {
    char cmd[80];
    char *cmdO = program[ilineStep].content;    // original command

    strcpy(cmd, cmdO);
    strtoupper(cmd);

    // --- SKIP LINES INSIDE FALSE IF BLOCK ---
    if (skip_block_if) {
        if (strncmp(cmd, "IF ", 3) == 0) {
            nested_if_level++;  // nested IF found, increase level
        } else if (strncmp(cmd, "END IF", 6) == 0) {
            if (nested_if_level == 0) {
                skip_block_if = 0;  // done skipping
            } else {
                nested_if_level--;  // end one nested IF level
            }
        }
        ilineStep++;
        return 1;  // skip this line, continue running program
    }

    // --- NORMAL LINE EXECUTION ---

    if (strncmp(cmd, "LET ", 4) == 0) {
        char var = toupper(cmd[4]);
        if (var < 'A' || var > 'Z') { print("?Bad var"); iProgramRunning = 0; }
        char *eq = strchr(cmd, '=');
        if (!eq) { print("?Missing ="); iProgramRunning = 0; }
        expr_ptr = eq + 1;
        vars[var - 'A'] = parse_expr();
    }
    else if (strncmp(cmd, "PRINT ", 6) == 0) {
        expr_ptr = cmdO + 6;
        skip_ws();

        if (*expr_ptr == '\"') {
            expr_ptr++;
            char out[64] = {0};
            char *dst = out;
            while (*expr_ptr && *expr_ptr != '\"' && (dst - out) < 63) {
                *dst++ = *expr_ptr++;
            }
            *dst = 0;
            print(out);
        } else {
            int val = parse_expr();
            char buf[32];
            snprintf(buf, sizeof(buf), "%d", val);
            print(buf);
        }
    }
    else if (strncmp(cmd, "GOTO ", 5) == 0) {
        int target = atoi(cmd + 5);
        int idx = find_line(target);
        if (idx >= 0) ilineStep = idx; else { print("?Bad GOTO"); iProgramRunning = 0; }
        return 1;
    }
    else if (strncmp(cmd, "GOSUB ", 6) == 0) {
        int target = atoi(cmd + 6);
        if (call_sp < MAX_STACK) {
            call_stack[call_sp++] = ilineStep + 1;
            int idx = find_line(target);
            if (idx >= 0) {
                ilineStep = idx;
                return 1;  // prevent auto-increment after jump
            } else {
                print("?Bad GOSUB"); iProgramRunning = 0;
            }
        } else {
            print("?Stack Overflow"); iProgramRunning = 0;
        }
    }
    else if (strncmp(cmd, "RETURN", 6) == 0) {
        if (call_sp > 0) ilineStep = call_stack[--call_sp];
        else { print("?Return without GOSUB"); iProgramRunning = 0; }
        return 1;
    }
    else if (strncmp(cmd, "IF ", 3) == 0) {
        char *then = strstr(cmd, "THEN");
        if (!then) { print("?Missing THEN"); iProgramRunning = 0; return 0; }
        *then = 0;
        expr_ptr = cmd + 3;
        int cond = parse_expr();

        if (cond) {
            // Condition true: execute THEN clause as a normal line
            interpret_line(then + 4);
        } else {
            // Condition false: skip all lines until matching END IF
            skip_block_if = 1;
            nested_if_level = 0;
        }
        return 1;  // done with IF line
    }
    else if (strncmp(cmd, "END IF", 6) == 0) {
        // Just proceed normally
        return 1;
    }
    else if (strncmp(cmd, "END", 3) == 0) {
        iProgramRunning = 0;
    }
    else if (strncmp(cmd, "CLS", 3) == 0) {
        CLS();
    }

    ilineStep++;
    if (ilineStep >= lineCount) {
        iProgramRunning = 0;
        return 0;
    }
    if (iProgramRunning == 0) return 0;
    return 1;
}



int getIsProgramRunning(){
    return iProgramRunning;
}
void run_program() {
    ilineStep = 0;
    iProgramRunning = 1;
    call_sp = 0;
}

void break_program(){
    char msg[80];
    ilineStep = 0;
    iProgramRunning = 0;
    print(" ");
    sprintf(msg, "BREAK ON LINE %lu", program[ilineStep].lineNumber);
    print(msg);
}

int compare_lines(const void *a, const void *b) {
    const BasicLine *lineA = (const BasicLine *)a;
    const BasicLine *lineB = (const BasicLine *)b;
    return lineA->lineNumber - lineB->lineNumber;
}

void interpret_line(const char *line) {
    char copy[64];
    strcpy(copy, line);
    

    char *ptr = copy;
    while (isspace(*ptr)) ptr++;

    if (isdigit(*ptr)) {
        int linenum = atoi(ptr);
        while (isdigit(*ptr)) ptr++;
        while (isspace(*ptr)) ptr++;

        if (*ptr == '\0') {
            // Delete line if exists
            int idx = find_line(linenum);
            if (idx >= 0) {
                for (int i = idx; i < lineCount - 1; i++) {
                    program[i] = program[i + 1];
                }
                lineCount--;
                print("Line deleted");
            }
            return;
        }

        int idx = find_line(linenum);
        if (idx >= 0) {
            // Replace existing line content
            strcpy(program[idx].content, ptr);
        } else {
            // Insert new line
            if (lineCount < MAX_LINES) {
                program[lineCount].lineNumber = linenum;
                strcpy(program[lineCount].content, ptr);
                lineCount++;

                // Sort the program by line number
                qsort(program, lineCount, sizeof(BasicLine), compare_lines);
            } else {
                print("Program full");
            }
        }
        return;
    }

    strtoupper(copy);

    if (strncmp(ptr, "LIST", 4) == 0) {
        for (int i = 0; i < lineCount; ++i) {
            char buf[80];
            snprintf(buf, 80, "%d %s", program[i].lineNumber, program[i].content);
            print(buf);
        }
    } else if (strncmp(ptr, "RUN", 3) == 0) {
        run_program();
    } else if (strncmp(ptr, "CLS", 3) == 0) {
        CLS();
    } else if (strncmp(ptr, "NEW", 3) == 0) {
        lineCount = 0;
        memset(program, 0x00, sizeof(program));
        print("New program");
    } else if (strncmp(ptr, "HELP", 4) == 0) {
        print("Commands: LIST, RUN, NEW, PRINT, LET, GOTO, GOSUB, RETURN");
        print("IF, THEN");
    } else {
        print("?Syntax error");
    }
}
