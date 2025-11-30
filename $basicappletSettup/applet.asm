
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0000010 <applet_entry>:
d0000010:	f000 b84a 	b.w	d00000a8 <main>

d0000014 <initDisplayBuffers>:
d0000014:	4b0c      	ldr	r3, [pc, #48]	; (d0000048 <initDisplayBuffers+0x34>)
d0000016:	4a0d      	ldr	r2, [pc, #52]	; (d000004c <initDisplayBuffers+0x38>)
d0000018:	f8d3 00ec 	ldr.w	r0, [r3, #236]	; 0xec
d000001c:	b410      	push	{r4}
d000001e:	f8d3 40f4 	ldr.w	r4, [r3, #244]	; 0xf4
d0000022:	f8d3 10f4 	ldr.w	r1, [r3, #244]	; 0xf4
d0000026:	6002      	str	r2, [r0, #0]
d0000028:	6022      	str	r2, [r4, #0]
d000002a:	4809      	ldr	r0, [pc, #36]	; (d0000050 <initDisplayBuffers+0x3c>)
d000002c:	680a      	ldr	r2, [r1, #0]
d000002e:	4909      	ldr	r1, [pc, #36]	; (d0000054 <initDisplayBuffers+0x40>)
d0000030:	6002      	str	r2, [r0, #0]
d0000032:	f8d3 00f0 	ldr.w	r0, [r3, #240]	; 0xf0
d0000036:	f8d3 30f0 	ldr.w	r3, [r3, #240]	; 0xf0
d000003a:	4a07      	ldr	r2, [pc, #28]	; (d0000058 <initDisplayBuffers+0x44>)
d000003c:	6008      	str	r0, [r1, #0]
d000003e:	681b      	ldr	r3, [r3, #0]
d0000040:	f85d 4b04 	ldr.w	r4, [sp], #4
d0000044:	6013      	str	r3, [r2, #0]
d0000046:	4770      	bx	lr
d0000048:	2001f000 	.word	0x2001f000
d000004c:	d06b2000 	.word	0xd06b2000
d0000050:	d000021c 	.word	0xd000021c
d0000054:	d0000220 	.word	0xd0000220
d0000058:	d0000228 	.word	0xd0000228

d000005c <ShowBuffer>:
d000005c:	4b09      	ldr	r3, [pc, #36]	; (d0000084 <ShowBuffer+0x28>)
d000005e:	b140      	cbz	r0, d0000072 <ShowBuffer+0x16>
d0000060:	f8d3 10ec 	ldr.w	r1, [r3, #236]	; 0xec
d0000064:	4808      	ldr	r0, [pc, #32]	; (d0000088 <ShowBuffer+0x2c>)
d0000066:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d000006a:	4a08      	ldr	r2, [pc, #32]	; (d000008c <ShowBuffer+0x30>)
d000006c:	6008      	str	r0, [r1, #0]
d000006e:	601a      	str	r2, [r3, #0]
d0000070:	4770      	bx	lr
d0000072:	f8d3 10ec 	ldr.w	r1, [r3, #236]	; 0xec
d0000076:	4805      	ldr	r0, [pc, #20]	; (d000008c <ShowBuffer+0x30>)
d0000078:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d000007c:	4a02      	ldr	r2, [pc, #8]	; (d0000088 <ShowBuffer+0x2c>)
d000007e:	6008      	str	r0, [r1, #0]
d0000080:	601a      	str	r2, [r3, #0]
d0000082:	4770      	bx	lr
d0000084:	2001f000 	.word	0x2001f000
d0000088:	d06b2000 	.word	0xd06b2000
d000008c:	d06d9000 	.word	0xd06d9000

d0000090 <StopChannel>:
d0000090:	4b04      	ldr	r3, [pc, #16]	; (d00000a4 <StopChannel+0x14>)
d0000092:	0080      	lsls	r0, r0, #2
d0000094:	4403      	add	r3, r0
d0000096:	685b      	ldr	r3, [r3, #4]
d0000098:	781a      	ldrb	r2, [r3, #0]
d000009a:	f36f 0200 	bfc	r2, #0, #1
d000009e:	701a      	strb	r2, [r3, #0]
d00000a0:	4770      	bx	lr
d00000a2:	bf00      	nop
d00000a4:	2001f170 	.word	0x2001f170

d00000a8 <main>:
d00000a8:	4a4c      	ldr	r2, [pc, #304]	; (d00001dc <main+0x134>)
d00000aa:	20ff      	movs	r0, #255	; 0xff
d00000ac:	6813      	ldr	r3, [r2, #0]
d00000ae:	f023 0310 	bic.w	r3, r3, #16
d00000b2:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00000b6:	4f4a      	ldr	r7, [pc, #296]	; (d00001e0 <main+0x138>)
d00000b8:	b0a3      	sub	sp, #140	; 0x8c
d00000ba:	6013      	str	r3, [r2, #0]
d00000bc:	2500      	movs	r5, #0
d00000be:	f8d7 30c8 	ldr.w	r3, [r7, #200]	; 0xc8
d00000c2:	f04f 0904 	mov.w	r9, #4
d00000c6:	4798      	blx	r3
d00000c8:	4b46      	ldr	r3, [pc, #280]	; (d00001e4 <main+0x13c>)
d00000ca:	4847      	ldr	r0, [pc, #284]	; (d00001e8 <main+0x140>)
d00000cc:	268c      	movs	r6, #140	; 0x8c
d00000ce:	601d      	str	r5, [r3, #0]
d00000d0:	463c      	mov	r4, r7
d00000d2:	68bb      	ldr	r3, [r7, #8]
d00000d4:	46a8      	mov	r8, r5
d00000d6:	4798      	blx	r3
d00000d8:	68fb      	ldr	r3, [r7, #12]
d00000da:	200a      	movs	r0, #10
d00000dc:	46ca      	mov	sl, r9
d00000de:	4798      	blx	r3
d00000e0:	f7ff ff98 	bl	d0000014 <initDisplayBuffers>
d00000e4:	4628      	mov	r0, r5
d00000e6:	f7ff ffd3 	bl	d0000090 <StopChannel>
d00000ea:	2001      	movs	r0, #1
d00000ec:	f7ff ffd0 	bl	d0000090 <StopChannel>
d00000f0:	2002      	movs	r0, #2
d00000f2:	f7ff ffcd 	bl	d0000090 <StopChannel>
d00000f6:	2003      	movs	r0, #3
d00000f8:	f7ff ffca 	bl	d0000090 <StopChannel>
d00000fc:	4648      	mov	r0, r9
d00000fe:	f7ff ffc7 	bl	d0000090 <StopChannel>
d0000102:	2005      	movs	r0, #5
d0000104:	f7ff ffc4 	bl	d0000090 <StopChannel>
d0000108:	2006      	movs	r0, #6
d000010a:	f7ff ffc1 	bl	d0000090 <StopChannel>
d000010e:	2007      	movs	r0, #7
d0000110:	f7ff ffbe 	bl	d0000090 <StopChannel>
d0000114:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0000118:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d000011c:	f8d7 70e8 	ldr.w	r7, [r7, #232]	; 0xe8
d0000120:	4619      	mov	r1, r3
d0000122:	9500      	str	r5, [sp, #0]
d0000124:	4610      	mov	r0, r2
d0000126:	47b8      	blx	r7
d0000128:	4637      	mov	r7, r6
d000012a:	e045      	b.n	d00001b8 <main+0x110>
d000012c:	f1b8 0f32 	cmp.w	r8, #50	; 0x32
d0000130:	dc4f      	bgt.n	d00001d2 <main+0x12a>
d0000132:	f8d4 3118 	ldr.w	r3, [r4, #280]	; 0x118
d0000136:	4798      	blx	r3
d0000138:	f8d4 311c 	ldr.w	r3, [r4, #284]	; 0x11c
d000013c:	2000      	movs	r0, #0
d000013e:	4798      	blx	r3
d0000140:	4b2a      	ldr	r3, [pc, #168]	; (d00001ec <main+0x144>)
d0000142:	f10d 0c08 	add.w	ip, sp, #8
d0000146:	f04f 0eff 	mov.w	lr, #255	; 0xff
d000014a:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
d000014c:	e8ac 0007 	stmia.w	ip!, {r0, r1, r2}
d0000150:	2108      	movs	r1, #8
d0000152:	f88c 3000 	strb.w	r3, [ip]
d0000156:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d000015a:	eb0d 0201 	add.w	r2, sp, r1
d000015e:	4608      	mov	r0, r1
d0000160:	f883 e000 	strb.w	lr, [r3]
d0000164:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d0000168:	4798      	blx	r3
d000016a:	f1a7 0c0a 	sub.w	ip, r7, #10
d000016e:	f1a6 0e0a 	sub.w	lr, r6, #10
d0000172:	f107 0228 	add.w	r2, r7, #40	; 0x28
d0000176:	f5bc 7fd7 	cmp.w	ip, #430	; 0x1ae
d000017a:	4631      	mov	r1, r6
d000017c:	f106 0328 	add.w	r3, r6, #40	; 0x28
d0000180:	4638      	mov	r0, r7
d0000182:	bf88      	it	hi
d0000184:	f1ca 0a00 	rsbhi	sl, sl, #0
d0000188:	f5be 7f87 	cmp.w	lr, #270	; 0x10e
d000018c:	f8d4 b13c 	ldr.w	fp, [r4, #316]	; 0x13c
d0000190:	bf88      	it	hi
d0000192:	f1c9 0900 	rsbhi	r9, r9, #0
d0000196:	47d8      	blx	fp
d0000198:	4628      	mov	r0, r5
d000019a:	f1c5 0501 	rsb	r5, r5, #1
d000019e:	f7ff ff5d 	bl	d000005c <ShowBuffer>
d00001a2:	f8d4 30cc 	ldr.w	r3, [r4, #204]	; 0xcc
d00001a6:	4798      	blx	r3
d00001a8:	f8d4 30c4 	ldr.w	r3, [r4, #196]	; 0xc4
d00001ac:	2001      	movs	r0, #1
d00001ae:	b2ed      	uxtb	r5, r5
d00001b0:	4798      	blx	r3
d00001b2:	f8d4 315c 	ldr.w	r3, [r4, #348]	; 0x15c
d00001b6:	4798      	blx	r3
d00001b8:	69e3      	ldr	r3, [r4, #28]
d00001ba:	4457      	add	r7, sl
d00001bc:	4798      	blx	r3
d00001be:	4603      	mov	r3, r0
d00001c0:	f108 0801 	add.w	r8, r8, #1
d00001c4:	2000      	movs	r0, #0
d00001c6:	f013 0302 	ands.w	r3, r3, #2
d00001ca:	444e      	add	r6, r9
d00001cc:	d1ae      	bne.n	d000012c <main+0x84>
d00001ce:	4698      	mov	r8, r3
d00001d0:	e7af      	b.n	d0000132 <main+0x8a>
d00001d2:	2007      	movs	r0, #7
d00001d4:	b023      	add	sp, #140	; 0x8c
d00001d6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00001da:	bf00      	nop
d00001dc:	e000ed14 	.word	0xe000ed14
d00001e0:	2001f000 	.word	0x2001f000
d00001e4:	d0000218 	.word	0xd0000218
d00001e8:	d00001f0 	.word	0xd00001f0
d00001ec:	d0000200 	.word	0xd0000200
d00001f0:	6c617544 	.word	0x6c617544
d00001f4:	616c5020 	.word	0x616c5020
d00001f8:	0d0a0d79 	.word	0x0d0a0d79
d00001fc:	0000000a 	.word	0x0000000a
d0000200:	6c6c6548 	.word	0x6c6c6548
d0000204:	6f77206f 	.word	0x6f77206f
d0000208:	21646c72 	.word	0x21646c72
	...

Disassembly of section .init:

d0000210 <_init>:
d0000210:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000212:	bf00      	nop

Disassembly of section .fini:

d0000214 <_fini>:
d0000214:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000216:	bf00      	nop
