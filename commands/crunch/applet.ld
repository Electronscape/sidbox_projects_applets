/* 
 * applet.ld — Link applet at 0xD0200000
 *
 * Applets are loaded into SDRAM at a fixed offset, with some space
 * reserved for music data (e.g., MOD files) at the beginning.
 *
 * Adjust `_startram` below based on the maximum expected size of your music files.
 */


/* Base and limits */
_offset            = 0xD05E0000;   /* SDRAM base address - an area way up in the ram limit the interferance of other content small app */
_maxramavail       = 0x600000;     /* 6 MB usable RAM for applets + resources */

/* --- CHANGE THIS TO SUIT YOUR NEEDS ------------ */
_largest_modfile   = 0x00000;      /* 0 KB */
_largest_resource  = 0;       	/* 0k KB approx */

/* Align resource+modfile space to 32-byte boundary */
_startram          = ((_largest_modfile + _largest_resource + 31) & ~31);

/* Precompute memory region values */
_applet_origin     = _offset + _startram;
_applet_length     = _maxramavail - _startram;

/* --- ASSERTIONS FOR SAFETY --- */
ASSERT(_startram < _maxramavail, "Reserved space exceeds SDRAM size!")
ASSERT(_applet_length > 0, "No RAM left for applet after reserving music/resource space!")


/* Memory layout */
MEMORY
{
  APPLET (rx) : ORIGIN = (_offset + _startram), LENGTH = (_maxramavail - _startram)
}

/* Define the start address for the applet */
_appstart = ORIGIN(APPLET);

SECTIONS
{
  /* Begin linking at applet start address */
  . = _appstart;

  /* Applet header (8 bytes total) */
  .header _appstart :
  {
    . = ALIGN(4);
    KEEP(*(.header))     /* Magic + optional metadata */
  } > APPLET

  /* Load/entry address (next 8 bytes) */
  .thestart (_appstart + 0x08) :
  {
    . = ALIGN(4);
    KEEP(*(.thestart))   /* Pointer to entry point or relocation address */
    *(.thestart*)
  } > APPLET

  /* Main code section, starts at offset 0x10 */
  .text (_appstart + 0x10) :
  {
    . = ALIGN(4);
    KEEP(*(.text.applet_entry))  /* Main entry point (symbol) */
    *(.text*)
    *(.rodata*)
  } > APPLET

  /* Initialized data */
  .data :
  {
    *(.data*)
  
  } > APPLET

  /* Uninitialized data */
  .bss :
  {
    . = ALIGN(32);
    *(.bss*)
    *(COMMON)
  } > APPLET

  /* Read-only data (redundant but explicit) */
  .rodata :
  {
    *(.rodata*)
  } > APPLET

  /* End of applet image — useful for heap/sbrk() */
  _end = .;
  __app_end = .;
}
