
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0078a50 <applet_entry>:
d0078a50:	f000 b83e 	b.w	d0078ad0 <main>

d0078a54 <initDisplayBuffers>:
d0078a54:	4b0c      	ldr	r3, [pc, #48]	; (d0078a88 <initDisplayBuffers+0x34>)
d0078a56:	4a0d      	ldr	r2, [pc, #52]	; (d0078a8c <initDisplayBuffers+0x38>)
d0078a58:	f8d3 00ec 	ldr.w	r0, [r3, #236]	; 0xec
d0078a5c:	b410      	push	{r4}
d0078a5e:	f8d3 40f4 	ldr.w	r4, [r3, #244]	; 0xf4
d0078a62:	f8d3 10f4 	ldr.w	r1, [r3, #244]	; 0xf4
d0078a66:	6002      	str	r2, [r0, #0]
d0078a68:	6022      	str	r2, [r4, #0]
d0078a6a:	4809      	ldr	r0, [pc, #36]	; (d0078a90 <initDisplayBuffers+0x3c>)
d0078a6c:	680a      	ldr	r2, [r1, #0]
d0078a6e:	4909      	ldr	r1, [pc, #36]	; (d0078a94 <initDisplayBuffers+0x40>)
d0078a70:	6002      	str	r2, [r0, #0]
d0078a72:	f8d3 00f0 	ldr.w	r0, [r3, #240]	; 0xf0
d0078a76:	f8d3 30f0 	ldr.w	r3, [r3, #240]	; 0xf0
d0078a7a:	4a07      	ldr	r2, [pc, #28]	; (d0078a98 <initDisplayBuffers+0x44>)
d0078a7c:	6008      	str	r0, [r1, #0]
d0078a7e:	681b      	ldr	r3, [r3, #0]
d0078a80:	f85d 4b04 	ldr.w	r4, [sp], #4
d0078a84:	6013      	str	r3, [r2, #0]
d0078a86:	4770      	bx	lr
d0078a88:	2001f000 	.word	0x2001f000
d0078a8c:	d06b2000 	.word	0xd06b2000
d0078a90:	d0078bcc 	.word	0xd0078bcc
d0078a94:	d0078bd0 	.word	0xd0078bd0
d0078a98:	d0078bd8 	.word	0xd0078bd8

d0078a9c <ShowBuffer>:
d0078a9c:	4b09      	ldr	r3, [pc, #36]	; (d0078ac4 <ShowBuffer+0x28>)
d0078a9e:	b140      	cbz	r0, d0078ab2 <ShowBuffer+0x16>
d0078aa0:	f8d3 10ec 	ldr.w	r1, [r3, #236]	; 0xec
d0078aa4:	4808      	ldr	r0, [pc, #32]	; (d0078ac8 <ShowBuffer+0x2c>)
d0078aa6:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d0078aaa:	4a08      	ldr	r2, [pc, #32]	; (d0078acc <ShowBuffer+0x30>)
d0078aac:	6008      	str	r0, [r1, #0]
d0078aae:	601a      	str	r2, [r3, #0]
d0078ab0:	4770      	bx	lr
d0078ab2:	f8d3 10ec 	ldr.w	r1, [r3, #236]	; 0xec
d0078ab6:	4805      	ldr	r0, [pc, #20]	; (d0078acc <ShowBuffer+0x30>)
d0078ab8:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d0078abc:	4a02      	ldr	r2, [pc, #8]	; (d0078ac8 <ShowBuffer+0x2c>)
d0078abe:	6008      	str	r0, [r1, #0]
d0078ac0:	601a      	str	r2, [r3, #0]
d0078ac2:	4770      	bx	lr
d0078ac4:	2001f000 	.word	0x2001f000
d0078ac8:	d06b2000 	.word	0xd06b2000
d0078acc:	d06d9000 	.word	0xd06d9000

d0078ad0 <main>:
d0078ad0:	4a2d      	ldr	r2, [pc, #180]	; (d0078b88 <main+0xb8>)
d0078ad2:	20ff      	movs	r0, #255	; 0xff
d0078ad4:	6813      	ldr	r3, [r2, #0]
d0078ad6:	b5f0      	push	{r4, r5, r6, r7, lr}
d0078ad8:	f023 0310 	bic.w	r3, r3, #16
d0078adc:	4d2b      	ldr	r5, [pc, #172]	; (d0078b8c <main+0xbc>)
d0078ade:	b0a3      	sub	sp, #140	; 0x8c
d0078ae0:	2600      	movs	r6, #0
d0078ae2:	6013      	str	r3, [r2, #0]
d0078ae4:	462c      	mov	r4, r5
d0078ae6:	f8d5 30c8 	ldr.w	r3, [r5, #200]	; 0xc8
d0078aea:	4798      	blx	r3
d0078aec:	4b28      	ldr	r3, [pc, #160]	; (d0078b90 <main+0xc0>)
d0078aee:	4829      	ldr	r0, [pc, #164]	; (d0078b94 <main+0xc4>)
d0078af0:	601e      	str	r6, [r3, #0]
d0078af2:	68ab      	ldr	r3, [r5, #8]
d0078af4:	4798      	blx	r3
d0078af6:	68eb      	ldr	r3, [r5, #12]
d0078af8:	200a      	movs	r0, #10
d0078afa:	4f27      	ldr	r7, [pc, #156]	; (d0078b98 <main+0xc8>)
d0078afc:	4798      	blx	r3
d0078afe:	f7ff ffa9 	bl	d0078a54 <initDisplayBuffers>
d0078b02:	f8d5 30bc 	ldr.w	r3, [r5, #188]	; 0xbc
d0078b06:	2102      	movs	r1, #2
d0078b08:	20dc      	movs	r0, #220	; 0xdc
d0078b0a:	4798      	blx	r3
d0078b0c:	2002      	movs	r0, #2
d0078b0e:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0078b12:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0078b16:	f8d5 50e8 	ldr.w	r5, [r5, #232]	; 0xe8
d0078b1a:	4619      	mov	r1, r3
d0078b1c:	9000      	str	r0, [sp, #0]
d0078b1e:	4610      	mov	r0, r2
d0078b20:	47a8      	blx	r5
d0078b22:	e027      	b.n	d0078b74 <main+0xa4>
d0078b24:	f8d4 3118 	ldr.w	r3, [r4, #280]	; 0x118
d0078b28:	ad02      	add	r5, sp, #8
d0078b2a:	4798      	blx	r3
d0078b2c:	f8d4 311c 	ldr.w	r3, [r4, #284]	; 0x11c
d0078b30:	2005      	movs	r0, #5
d0078b32:	4798      	blx	r3
d0078b34:	f04f 0c03 	mov.w	ip, #3
d0078b38:	e897 000f 	ldmia.w	r7, {r0, r1, r2, r3}
d0078b3c:	c507      	stmia	r5!, {r0, r1, r2}
d0078b3e:	2114      	movs	r1, #20
d0078b40:	802b      	strh	r3, [r5, #0]
d0078b42:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d0078b46:	aa02      	add	r2, sp, #8
d0078b48:	4608      	mov	r0, r1
d0078b4a:	f883 c000 	strb.w	ip, [r3]
d0078b4e:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d0078b52:	4798      	blx	r3
d0078b54:	4630      	mov	r0, r6
d0078b56:	f7ff ffa1 	bl	d0078a9c <ShowBuffer>
d0078b5a:	f8d4 30cc 	ldr.w	r3, [r4, #204]	; 0xcc
d0078b5e:	4798      	blx	r3
d0078b60:	f1c6 0601 	rsb	r6, r6, #1
d0078b64:	f8d4 30c4 	ldr.w	r3, [r4, #196]	; 0xc4
d0078b68:	2001      	movs	r0, #1
d0078b6a:	4798      	blx	r3
d0078b6c:	f8d4 315c 	ldr.w	r3, [r4, #348]	; 0x15c
d0078b70:	b2f6      	uxtb	r6, r6
d0078b72:	4798      	blx	r3
d0078b74:	69e3      	ldr	r3, [r4, #28]
d0078b76:	4798      	blx	r3
d0078b78:	4603      	mov	r3, r0
d0078b7a:	2005      	movs	r0, #5
d0078b7c:	079b      	lsls	r3, r3, #30
d0078b7e:	d5d1      	bpl.n	d0078b24 <main+0x54>
d0078b80:	2007      	movs	r0, #7
d0078b82:	b023      	add	sp, #140	; 0x8c
d0078b84:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0078b86:	bf00      	nop
d0078b88:	e000ed14 	.word	0xe000ed14
d0078b8c:	2001f000 	.word	0x2001f000
d0078b90:	d0078bc8 	.word	0xd0078bc8
d0078b94:	d0078b9c 	.word	0xd0078b9c
d0078b98:	d0078bb0 	.word	0xd0078bb0
d0078b9c:	72747341 	.word	0x72747341
d0078ba0:	7364696f 	.word	0x7364696f
d0078ba4:	6d654420 	.word	0x6d654420
d0078ba8:	0d0a0d6f 	.word	0x0d0a0d6f
d0078bac:	0000000a 	.word	0x0000000a
d0078bb0:	6c6c6548 	.word	0x6c6c6548
d0078bb4:	6f77206f 	.word	0x6f77206f
d0078bb8:	21646c72 	.word	0x21646c72
d0078bbc:	Address 0x00000000d0078bbc is out of bounds.


Disassembly of section .init:

d0078bc0 <_init>:
d0078bc0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0078bc2:	bf00      	nop

Disassembly of section .fini:

d0078bc4 <_fini>:
d0078bc4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0078bc6:	bf00      	nop
