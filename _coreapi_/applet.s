    .syntax unified
    .cpu cortex-m7
    .thumb

	/* First 8 bytes: "SDEXPROG" marker */
	.section .header, "a", %progbits
	.align 2
	.ascii "SDEXPROG"    /* Exactly 8 bytes, no null terminator */

    .section .isr_vector, "a", %progbits
    .align  2
    .word   _estack               /* Initial stack pointer */
    .word   reset_handler         /* Reset handler */

    /* you can add other exception vectors here */

    .section .text.reset_handler
    .global reset_handler
    .type reset_handler, %function

reset_handler:
    /* Just branch to main */
    b main

    .size reset_handler, .-reset_handler

    /* Reserve stack pointer symbol */
    .global _estack
    .equ _estack, 0xD0000000 + 0x2000 /* example stack top: 8KB stack */

