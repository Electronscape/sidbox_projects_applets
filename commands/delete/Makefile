# Applet Makefile for SIDBOX

# GIVE YOUR PROJECT A NAME (this name will be copied to the target drive)
PROJECTNAME := delete

# LOCATION of the compile output, can be safely deleted / cleaned after
BUILD_DIR := compiled

# the location of your project files (do not change this unless you know exactly what you're doing)
PROJECT_DIR := project
FINAL_COPY_PATH := /media/ben/16GDEM/c/$(PROJECTNAME)

# Locate the CoreAPI directory here
CORE_DIR := ../../_coreapi_

# Toolchain
# Use STM32-provided GCC 9.3.1 toolchain (OR DOWNLOAD IT)
include $(CORE_DIR)/toolchain.mk  # OPEN THIS TO ALTER THE TOOLCHAIN LOCATIONS 

# OPTIMISATION FLAGS | these are great for speedy programs
OPT_CORE := -Ofast
OPT_APP := -Ofast

# PLEASE DO NOT EDIT THE FOLLOWING BELOW - AGAIN unless you know what you're doing
# this is intended to scan directories and include what it finds automatically
TARGET_ELF := $(BUILD_DIR)/applet.elf
TARGET_BIN := applet.app
TARGET_FINAL_BIN := $(PROJECTNAME)
TARGET_ASM := applet.asm

CORE_SRCS := $(wildcard $(CORE_DIR)/*.c)
CORE_OBJS := $(patsubst $(CORE_DIR)/%.c,$(BUILD_DIR)/%.o,$(CORE_SRCS))

PROJECT_SRCS := $(shell find $(PROJECT_DIR) -type f -name '*.c')
PROJECT_OBJS := $(patsubst %.c,$(BUILD_DIR)/%.o,$(PROJECT_SRCS))

# --- PROGRESS BAR SETUP ---

# Total number of project source files (for progress bar scale)
TOTAL_PROJECT_FILES := $(words $(PROJECT_SRCS))

.PHONY: all clean show-size init_progress

all: prep init_progress $(TARGET_ELF) postbuild

prep:
	@echo "\033[1;32m############ BEGIN COMPILING APPLET FOR SIDBOX!! ( Y E Y ! ! ) ############\033[0m"
	@echo "\033[1;37;42m PROJECT NAME : $(PROJECTNAME) \033[0m"
	@rm -rf $(BUILD_DIR)
	@mkdir -p $(BUILD_DIR)

# Initialize progress count file
init_progress:
	@echo 0 > $(BUILD_DIR)/.progress_count

# Helper function to print a progress bar (20 characters wide)
define print_progress
	count=$$(cat $(BUILD_DIR)/.progress_count); \
	count=$$((count + 1)); \
	echo $$count > $(BUILD_DIR)/.progress_count; \
	total=$(TOTAL_PROJECT_FILES); \
	percent=$$((100 * $$count / $$total)); \
	filled=$$((percent / 5)); \
	empty=$$((20 - filled)); \
	bar=$$(printf "%0.s#" $$(seq 1 $$filled)); \
	space=$$(printf "%0.s." $$(seq 1 $$empty)); \
	echo -ne "\033[1;36mProgress:\033[0m [\033[1;32m$$bar\033[0m\033[1;30m$$space\033[0m] \033[1;33m$$percent%%\033[0m (\033[1;35m$$count\033[0m/\033[1;35m$$total\033[0m)\r"; \
	if [ $$count -eq $$total ]; then echo ""; fi
endef

# Compile core sources (no progress bar for core files)
$(BUILD_DIR)/%.o: $(CORE_DIR)/%.c
	@echo "\033[1;35mCompiling core file $< \033[0m"
	@$(CC) $(CFLAGS) $(OPT_CORE) -o $@ $<

# Compile project sources with progress bar
$(BUILD_DIR)/%.o: %.c
	@mkdir -p $(dir $@)
	@bash -c '\
		progress_file="$(BUILD_DIR)/.progress_count"; \
		if [ ! -f "$$progress_file" ]; then echo 0 > "$$progress_file"; fi; \
		count=$$(cat "$$progress_file"); \
		count=$$((count + 1)); \
		echo $$count > "$$progress_file"; \
		total=$(TOTAL_PROJECT_FILES); \
		percent=$$((100 * $$count / $$total)); \
		bar_width=20; \
		filled=$$((bar_width * $$count / $$total)); \
		empty=$$((bar_width - filled)); \
		if [ $$percent -eq 100 ]; then \
			space=$$(printf "%0.s" $$(seq 1 $$empty)); \
		else \
			space=$$(printf "%0.s-" $$(seq 1 $$empty)); \
		fi; \
		bar=$$(printf "%0.s#" $$(seq 1 $$filled)); \
		printf "\r\033[K\033[1;36mProgress:\033[0m [\033[1;32m%s\033[0m\033[1;30m%s\033[0m] \033[1;33m%d%%\033[0m (\033[1;35m%d\033[0m/\033[1;35m%d\033[0m) Compiling project file \033[10;36m%s\033[0m" "$$bar" "$$space" "$$percent" "$$count" "$$total" "$<"; \
		$(CC) $(CFLAGS) $(OPT_APP) -o $@ $< > /dev/null 2>&1; \
		if [ $$count -eq $$total ]; then printf "\n"; fi; \
	'


# Link everything
$(TARGET_ELF): $(CORE_OBJS) $(PROJECT_OBJS)
	@echo "Linking..."
	@$(CC) $(LDFLAGS) -T applet.ld -Wl,-Map=$(BUILD_DIR)/output.map $^ -o $@
	@if [ ! -f $@ ]; then echo "Linking failed!"; exit 1; fi

# Post build: convert and analyze
postbuild: $(TARGET_ELF)
	@echo "Generating binary..."
	@$(OBJCOPY) -O binary $(TARGET_ELF) ../.c/$(TARGET_FINAL_BIN)
	@echo "Generating disassembly..."
	@$(OBJDUMP) -d $< > $(TARGET_ASM)
	@echo
	@$(SIZE) $<
	@echo
	@$(NM) -n $< | grep applet_entry || true
	@$(NM) -n $< | grep main || true
	@echo
	@echo "\033[1;32m---- COMPILE COMPLETED ----\033[0m"
	@echo
	@$(MAKE) show-size --no-print-directory
	@cp ../.c/$(TARGET_FINAL_BIN) $(FINAL_COPY_PATH) > /dev/null 2>&1

# Pretty-print size
show-size:
	@FILE=../.c/$(TARGET_FINAL_BIN); \
	if [ ! -f "$$FILE" ]; then \
	  echo "\033[1;31mFile not found: $$FILE\033[0m"; exit 1; \
	fi; \
	SIZE=$$(stat -c%s "$$FILE"); \
	FORMATTED=$$(echo $$SIZE | rev | sed -E 's/([0-9]{3})/\1,/g' | rev | sed 's/^,//'); \
	echo "\033[1;33m--- > Size of $$FILE is $$FORMATTED bytes\033[0m"

# Clean build
clean:
	@echo "Cleaning..."
	@rm -rf $(BUILD_DIR) ../.c/$(TARGET_FINAL_BIN) $(TARGET_ASM)
