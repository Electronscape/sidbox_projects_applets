
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0000010 <applet_entry>:
d0000010:	f000 b886 	b.w	d0000120 <main>

d0000014 <uploadKFMCode>:
d0000014:	4b0f      	ldr	r3, [pc, #60]	; (d0000054 <uploadKFMCode+0x40>)
d0000016:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d000001a:	4680      	mov	r8, r0
d000001c:	2000      	movs	r0, #0
d000001e:	4699      	mov	r9, r3
d0000020:	b083      	sub	sp, #12
d0000022:	f8d3 3198 	ldr.w	r3, [r3, #408]	; 0x198
d0000026:	4605      	mov	r5, r0
d0000028:	1ccc      	adds	r4, r1, #3
d000002a:	4798      	blx	r3
d000002c:	f814 7c01 	ldrb.w	r7, [r4, #-1]
d0000030:	b2e9      	uxtb	r1, r5
d0000032:	3501      	adds	r5, #1
d0000034:	f814 3c02 	ldrb.w	r3, [r4, #-2]
d0000038:	f814 2c03 	ldrb.w	r2, [r4, #-3]
d000003c:	4640      	mov	r0, r8
d000003e:	f8d9 619c 	ldr.w	r6, [r9, #412]	; 0x19c
d0000042:	3403      	adds	r4, #3
d0000044:	9700      	str	r7, [sp, #0]
d0000046:	47b0      	blx	r6
d0000048:	2d13      	cmp	r5, #19
d000004a:	d1ef      	bne.n	d000002c <uploadKFMCode+0x18>
d000004c:	b003      	add	sp, #12
d000004e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0000052:	bf00      	nop
d0000054:	2001f000 	.word	0x2001f000

d0000058 <EnableKFM>:
d0000058:	4b04      	ldr	r3, [pc, #16]	; (d000006c <EnableKFM+0x14>)
d000005a:	f8d3 1170 	ldr.w	r1, [r3, #368]	; 0x170
d000005e:	f8d3 2170 	ldr.w	r2, [r3, #368]	; 0x170
d0000062:	680b      	ldr	r3, [r1, #0]
d0000064:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
d0000068:	6013      	str	r3, [r2, #0]
d000006a:	4770      	bx	lr
d000006c:	2001f000 	.word	0x2001f000

d0000070 <initDisplayBuffers>:
d0000070:	4b0c      	ldr	r3, [pc, #48]	; (d00000a4 <initDisplayBuffers+0x34>)
d0000072:	4a0d      	ldr	r2, [pc, #52]	; (d00000a8 <initDisplayBuffers+0x38>)
d0000074:	f8d3 00ec 	ldr.w	r0, [r3, #236]	; 0xec
d0000078:	b410      	push	{r4}
d000007a:	f8d3 40f4 	ldr.w	r4, [r3, #244]	; 0xf4
d000007e:	f8d3 10f4 	ldr.w	r1, [r3, #244]	; 0xf4
d0000082:	6002      	str	r2, [r0, #0]
d0000084:	6022      	str	r2, [r4, #0]
d0000086:	4809      	ldr	r0, [pc, #36]	; (d00000ac <initDisplayBuffers+0x3c>)
d0000088:	680a      	ldr	r2, [r1, #0]
d000008a:	4909      	ldr	r1, [pc, #36]	; (d00000b0 <initDisplayBuffers+0x40>)
d000008c:	6002      	str	r2, [r0, #0]
d000008e:	f8d3 00f0 	ldr.w	r0, [r3, #240]	; 0xf0
d0000092:	f8d3 30f0 	ldr.w	r3, [r3, #240]	; 0xf0
d0000096:	4a07      	ldr	r2, [pc, #28]	; (d00000b4 <initDisplayBuffers+0x44>)
d0000098:	6008      	str	r0, [r1, #0]
d000009a:	681b      	ldr	r3, [r3, #0]
d000009c:	f85d 4b04 	ldr.w	r4, [sp], #4
d00000a0:	6013      	str	r3, [r2, #0]
d00000a2:	4770      	bx	lr
d00000a4:	2001f000 	.word	0x2001f000
d00000a8:	d06b2000 	.word	0xd06b2000
d00000ac:	d0000d2c 	.word	0xd0000d2c
d00000b0:	d0000d30 	.word	0xd0000d30
d00000b4:	d0000d38 	.word	0xd0000d38

d00000b8 <ShowBuffer>:
d00000b8:	4b09      	ldr	r3, [pc, #36]	; (d00000e0 <ShowBuffer+0x28>)
d00000ba:	b140      	cbz	r0, d00000ce <ShowBuffer+0x16>
d00000bc:	f8d3 10ec 	ldr.w	r1, [r3, #236]	; 0xec
d00000c0:	4808      	ldr	r0, [pc, #32]	; (d00000e4 <ShowBuffer+0x2c>)
d00000c2:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d00000c6:	4a08      	ldr	r2, [pc, #32]	; (d00000e8 <ShowBuffer+0x30>)
d00000c8:	6008      	str	r0, [r1, #0]
d00000ca:	601a      	str	r2, [r3, #0]
d00000cc:	4770      	bx	lr
d00000ce:	f8d3 10ec 	ldr.w	r1, [r3, #236]	; 0xec
d00000d2:	4805      	ldr	r0, [pc, #20]	; (d00000e8 <ShowBuffer+0x30>)
d00000d4:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d00000d8:	4a02      	ldr	r2, [pc, #8]	; (d00000e4 <ShowBuffer+0x2c>)
d00000da:	6008      	str	r0, [r1, #0]
d00000dc:	601a      	str	r2, [r3, #0]
d00000de:	4770      	bx	lr
d00000e0:	2001f000 	.word	0x2001f000
d00000e4:	d06b2000 	.word	0xd06b2000
d00000e8:	d06d9000 	.word	0xd06d9000

d00000ec <StopChannel>:
d00000ec:	4b04      	ldr	r3, [pc, #16]	; (d0000100 <StopChannel+0x14>)
d00000ee:	0080      	lsls	r0, r0, #2
d00000f0:	4403      	add	r3, r0
d00000f2:	685b      	ldr	r3, [r3, #4]
d00000f4:	781a      	ldrb	r2, [r3, #0]
d00000f6:	f36f 0200 	bfc	r2, #0, #1
d00000fa:	701a      	strb	r2, [r3, #0]
d00000fc:	4770      	bx	lr
d00000fe:	bf00      	nop
d0000100:	2001f170 	.word	0x2001f170

d0000104 <_sbrk>:
d0000104:	4904      	ldr	r1, [pc, #16]	; (d0000118 <_sbrk+0x14>)
d0000106:	4a05      	ldr	r2, [pc, #20]	; (d000011c <_sbrk+0x18>)
d0000108:	680b      	ldr	r3, [r1, #0]
d000010a:	2b00      	cmp	r3, #0
d000010c:	bf08      	it	eq
d000010e:	4613      	moveq	r3, r2
d0000110:	181a      	adds	r2, r3, r0
d0000112:	4618      	mov	r0, r3
d0000114:	600a      	str	r2, [r1, #0]
d0000116:	4770      	bx	lr
d0000118:	d0000d20 	.word	0xd0000d20
d000011c:	d0000d49 	.word	0xd0000d49

d0000120 <main>:
d0000120:	4a72      	ldr	r2, [pc, #456]	; (d00002ec <main+0x1cc>)
d0000122:	20ff      	movs	r0, #255	; 0xff
d0000124:	6813      	ldr	r3, [r2, #0]
d0000126:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d000012a:	f023 0310 	bic.w	r3, r3, #16
d000012e:	f8df 91cc 	ldr.w	r9, [pc, #460]	; d00002fc <main+0x1dc>
d0000132:	b0a3      	sub	sp, #140	; 0x8c
d0000134:	2500      	movs	r5, #0
d0000136:	6013      	str	r3, [r2, #0]
d0000138:	464c      	mov	r4, r9
d000013a:	f8d9 30c8 	ldr.w	r3, [r9, #200]	; 0xc8
d000013e:	46a8      	mov	r8, r5
d0000140:	4798      	blx	r3
d0000142:	4b6b      	ldr	r3, [pc, #428]	; (d00002f0 <main+0x1d0>)
d0000144:	486b      	ldr	r0, [pc, #428]	; (d00002f4 <main+0x1d4>)
d0000146:	462f      	mov	r7, r5
d0000148:	601d      	str	r5, [r3, #0]
d000014a:	f8d9 3008 	ldr.w	r3, [r9, #8]
d000014e:	4798      	blx	r3
d0000150:	f8d9 300c 	ldr.w	r3, [r9, #12]
d0000154:	200a      	movs	r0, #10
d0000156:	4798      	blx	r3
d0000158:	f7ff ff8a 	bl	d0000070 <initDisplayBuffers>
d000015c:	4628      	mov	r0, r5
d000015e:	f7ff ffc5 	bl	d00000ec <StopChannel>
d0000162:	2001      	movs	r0, #1
d0000164:	f7ff ffc2 	bl	d00000ec <StopChannel>
d0000168:	2002      	movs	r0, #2
d000016a:	f7ff ffbf 	bl	d00000ec <StopChannel>
d000016e:	2003      	movs	r0, #3
d0000170:	f7ff ffbc 	bl	d00000ec <StopChannel>
d0000174:	2004      	movs	r0, #4
d0000176:	f7ff ffb9 	bl	d00000ec <StopChannel>
d000017a:	2005      	movs	r0, #5
d000017c:	f7ff ffb6 	bl	d00000ec <StopChannel>
d0000180:	2006      	movs	r0, #6
d0000182:	f7ff ffb3 	bl	d00000ec <StopChannel>
d0000186:	2007      	movs	r0, #7
d0000188:	f7ff ffb0 	bl	d00000ec <StopChannel>
d000018c:	f8d9 30bc 	ldr.w	r3, [r9, #188]	; 0xbc
d0000190:	2102      	movs	r1, #2
d0000192:	20dc      	movs	r0, #220	; 0xdc
d0000194:	4798      	blx	r3
d0000196:	f44f 73a0 	mov.w	r3, #320	; 0x140
d000019a:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d000019e:	f8d9 60e8 	ldr.w	r6, [r9, #232]	; 0xe8
d00001a2:	4619      	mov	r1, r3
d00001a4:	9500      	str	r5, [sp, #0]
d00001a6:	4610      	mov	r0, r2
d00001a8:	47b0      	blx	r6
d00001aa:	f8d9 3170 	ldr.w	r3, [r9, #368]	; 0x170
d00001ae:	f64a 22ff 	movw	r2, #43775	; 0xaaff
d00001b2:	462e      	mov	r6, r5
d00001b4:	601a      	str	r2, [r3, #0]
d00001b6:	f7ff ff4f 	bl	d0000058 <EnableKFM>
d00001ba:	f8d9 3194 	ldr.w	r3, [r9, #404]	; 0x194
d00001be:	2040      	movs	r0, #64	; 0x40
d00001c0:	4798      	blx	r3
d00001c2:	f8d9 2170 	ldr.w	r2, [r9, #368]	; 0x170
d00001c6:	4629      	mov	r1, r5
d00001c8:	4628      	mov	r0, r5
d00001ca:	7813      	ldrb	r3, [r2, #0]
d00001cc:	f043 0301 	orr.w	r3, r3, #1
d00001d0:	7013      	strb	r3, [r2, #0]
d00001d2:	f8d9 31a4 	ldr.w	r3, [r9, #420]	; 0x1a4
d00001d6:	4798      	blx	r3
d00001d8:	f8d9 31a4 	ldr.w	r3, [r9, #420]	; 0x1a4
d00001dc:	4629      	mov	r1, r5
d00001de:	2001      	movs	r0, #1
d00001e0:	4798      	blx	r3
d00001e2:	f8d9 31a4 	ldr.w	r3, [r9, #420]	; 0x1a4
d00001e6:	4629      	mov	r1, r5
d00001e8:	2002      	movs	r0, #2
d00001ea:	4798      	blx	r3
d00001ec:	f8d9 31a4 	ldr.w	r3, [r9, #420]	; 0x1a4
d00001f0:	4629      	mov	r1, r5
d00001f2:	2003      	movs	r0, #3
d00001f4:	4798      	blx	r3
d00001f6:	f8d9 31a4 	ldr.w	r3, [r9, #420]	; 0x1a4
d00001fa:	4629      	mov	r1, r5
d00001fc:	2004      	movs	r0, #4
d00001fe:	4798      	blx	r3
d0000200:	f8d9 31a4 	ldr.w	r3, [r9, #420]	; 0x1a4
d0000204:	4629      	mov	r1, r5
d0000206:	2005      	movs	r0, #5
d0000208:	4798      	blx	r3
d000020a:	f8d9 31a4 	ldr.w	r3, [r9, #420]	; 0x1a4
d000020e:	4629      	mov	r1, r5
d0000210:	2006      	movs	r0, #6
d0000212:	4798      	blx	r3
d0000214:	f8d9 31a4 	ldr.w	r3, [r9, #420]	; 0x1a4
d0000218:	4629      	mov	r1, r5
d000021a:	2007      	movs	r0, #7
d000021c:	4798      	blx	r3
d000021e:	f8d9 31b0 	ldr.w	r3, [r9, #432]	; 0x1b0
d0000222:	4629      	mov	r1, r5
d0000224:	4628      	mov	r0, r5
d0000226:	4798      	blx	r3
d0000228:	f8d9 31a8 	ldr.w	r3, [r9, #424]	; 0x1a8
d000022c:	4628      	mov	r0, r5
d000022e:	217f      	movs	r1, #127	; 0x7f
d0000230:	4798      	blx	r3
d0000232:	f8d9 31ac 	ldr.w	r3, [r9, #428]	; 0x1ac
d0000236:	4628      	mov	r0, r5
d0000238:	2140      	movs	r1, #64	; 0x40
d000023a:	4798      	blx	r3
d000023c:	492e      	ldr	r1, [pc, #184]	; (d00002f8 <main+0x1d8>)
d000023e:	4628      	mov	r0, r5
d0000240:	f7ff fee8 	bl	d0000014 <uploadKFMCode>
d0000244:	f8d9 3174 	ldr.w	r3, [r9, #372]	; 0x174
d0000248:	2001      	movs	r0, #1
d000024a:	611d      	str	r5, [r3, #16]
d000024c:	f8d9 3160 	ldr.w	r3, [r9, #352]	; 0x160
d0000250:	4798      	blx	r3
d0000252:	f8d9 31a4 	ldr.w	r3, [r9, #420]	; 0x1a4
d0000256:	4628      	mov	r0, r5
d0000258:	2103      	movs	r1, #3
d000025a:	f8df 90a4 	ldr.w	r9, [pc, #164]	; d0000300 <main+0x1e0>
d000025e:	4798      	blx	r3
d0000260:	e02f      	b.n	d00002c2 <main+0x1a2>
d0000262:	2e05      	cmp	r6, #5
d0000264:	dc39      	bgt.n	d00002da <main+0x1ba>
d0000266:	f8d4 3118 	ldr.w	r3, [r4, #280]	; 0x118
d000026a:	4798      	blx	r3
d000026c:	f8d4 311c 	ldr.w	r3, [r4, #284]	; 0x11c
d0000270:	2000      	movs	r0, #0
d0000272:	4798      	blx	r3
d0000274:	b37f      	cbz	r7, d00002d6 <main+0x1b6>
d0000276:	f108 0801 	add.w	r8, r8, #1
d000027a:	f8d4 3174 	ldr.w	r3, [r4, #372]	; 0x174
d000027e:	2700      	movs	r7, #0
d0000280:	f8c3 8010 	str.w	r8, [r3, #16]
d0000284:	f8d4 3174 	ldr.w	r3, [r4, #372]	; 0x174
d0000288:	4649      	mov	r1, r9
d000028a:	a802      	add	r0, sp, #8
d000028c:	691a      	ldr	r2, [r3, #16]
d000028e:	f000 f839 	bl	d0000304 <siprintf>
d0000292:	2108      	movs	r1, #8
d0000294:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d0000298:	20ff      	movs	r0, #255	; 0xff
d000029a:	eb0d 0201 	add.w	r2, sp, r1
d000029e:	7018      	strb	r0, [r3, #0]
d00002a0:	4608      	mov	r0, r1
d00002a2:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d00002a6:	4798      	blx	r3
d00002a8:	4628      	mov	r0, r5
d00002aa:	f7ff ff05 	bl	d00000b8 <ShowBuffer>
d00002ae:	f1c5 0501 	rsb	r5, r5, #1
d00002b2:	f8d4 30cc 	ldr.w	r3, [r4, #204]	; 0xcc
d00002b6:	4798      	blx	r3
d00002b8:	f8d4 30c4 	ldr.w	r3, [r4, #196]	; 0xc4
d00002bc:	2000      	movs	r0, #0
d00002be:	b2ed      	uxtb	r5, r5
d00002c0:	4798      	blx	r3
d00002c2:	69e3      	ldr	r3, [r4, #28]
d00002c4:	3601      	adds	r6, #1
d00002c6:	4798      	blx	r3
d00002c8:	4603      	mov	r3, r0
d00002ca:	2000      	movs	r0, #0
d00002cc:	f013 0302 	ands.w	r3, r3, #2
d00002d0:	d1c7      	bne.n	d0000262 <main+0x142>
d00002d2:	461e      	mov	r6, r3
d00002d4:	e7c7      	b.n	d0000266 <main+0x146>
d00002d6:	2701      	movs	r7, #1
d00002d8:	e7d4      	b.n	d0000284 <main+0x164>
d00002da:	2100      	movs	r1, #0
d00002dc:	f8d4 31a4 	ldr.w	r3, [r4, #420]	; 0x1a4
d00002e0:	4608      	mov	r0, r1
d00002e2:	4798      	blx	r3
d00002e4:	2007      	movs	r0, #7
d00002e6:	b023      	add	sp, #140	; 0x8c
d00002e8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00002ec:	e000ed14 	.word	0xe000ed14
d00002f0:	d0000d1c 	.word	0xd0000d1c
d00002f4:	d0000c48 	.word	0xd0000c48
d00002f8:	d0000c0c 	.word	0xd0000c0c
d00002fc:	2001f000 	.word	0x2001f000
d0000300:	d0000c58 	.word	0xd0000c58

d0000304 <siprintf>:
d0000304:	b40e      	push	{r1, r2, r3}
d0000306:	b500      	push	{lr}
d0000308:	b09c      	sub	sp, #112	; 0x70
d000030a:	ab1d      	add	r3, sp, #116	; 0x74
d000030c:	9002      	str	r0, [sp, #8]
d000030e:	9006      	str	r0, [sp, #24]
d0000310:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d0000314:	4809      	ldr	r0, [pc, #36]	; (d000033c <siprintf+0x38>)
d0000316:	9107      	str	r1, [sp, #28]
d0000318:	9104      	str	r1, [sp, #16]
d000031a:	4909      	ldr	r1, [pc, #36]	; (d0000340 <siprintf+0x3c>)
d000031c:	f853 2b04 	ldr.w	r2, [r3], #4
d0000320:	9105      	str	r1, [sp, #20]
d0000322:	6800      	ldr	r0, [r0, #0]
d0000324:	9301      	str	r3, [sp, #4]
d0000326:	a902      	add	r1, sp, #8
d0000328:	f000 f868 	bl	d00003fc <_svfiprintf_r>
d000032c:	9b02      	ldr	r3, [sp, #8]
d000032e:	2200      	movs	r2, #0
d0000330:	701a      	strb	r2, [r3, #0]
d0000332:	b01c      	add	sp, #112	; 0x70
d0000334:	f85d eb04 	ldr.w	lr, [sp], #4
d0000338:	b003      	add	sp, #12
d000033a:	4770      	bx	lr
d000033c:	d0000cb8 	.word	0xd0000cb8
d0000340:	ffff0208 	.word	0xffff0208

d0000344 <__ssputs_r>:
d0000344:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0000348:	688e      	ldr	r6, [r1, #8]
d000034a:	429e      	cmp	r6, r3
d000034c:	4682      	mov	sl, r0
d000034e:	460c      	mov	r4, r1
d0000350:	4690      	mov	r8, r2
d0000352:	461f      	mov	r7, r3
d0000354:	d838      	bhi.n	d00003c8 <__ssputs_r+0x84>
d0000356:	898a      	ldrh	r2, [r1, #12]
d0000358:	f412 6f90 	tst.w	r2, #1152	; 0x480
d000035c:	d032      	beq.n	d00003c4 <__ssputs_r+0x80>
d000035e:	6825      	ldr	r5, [r4, #0]
d0000360:	6909      	ldr	r1, [r1, #16]
d0000362:	eba5 0901 	sub.w	r9, r5, r1
d0000366:	6965      	ldr	r5, [r4, #20]
d0000368:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d000036c:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0000370:	3301      	adds	r3, #1
d0000372:	444b      	add	r3, r9
d0000374:	106d      	asrs	r5, r5, #1
d0000376:	429d      	cmp	r5, r3
d0000378:	bf38      	it	cc
d000037a:	461d      	movcc	r5, r3
d000037c:	0553      	lsls	r3, r2, #21
d000037e:	d531      	bpl.n	d00003e4 <__ssputs_r+0xa0>
d0000380:	4629      	mov	r1, r5
d0000382:	f000 fb9d 	bl	d0000ac0 <_malloc_r>
d0000386:	4606      	mov	r6, r0
d0000388:	b950      	cbnz	r0, d00003a0 <__ssputs_r+0x5c>
d000038a:	230c      	movs	r3, #12
d000038c:	f8ca 3000 	str.w	r3, [sl]
d0000390:	89a3      	ldrh	r3, [r4, #12]
d0000392:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0000396:	81a3      	strh	r3, [r4, #12]
d0000398:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d000039c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00003a0:	6921      	ldr	r1, [r4, #16]
d00003a2:	464a      	mov	r2, r9
d00003a4:	f000 fb14 	bl	d00009d0 <memcpy>
d00003a8:	89a3      	ldrh	r3, [r4, #12]
d00003aa:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d00003ae:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00003b2:	81a3      	strh	r3, [r4, #12]
d00003b4:	6126      	str	r6, [r4, #16]
d00003b6:	6165      	str	r5, [r4, #20]
d00003b8:	444e      	add	r6, r9
d00003ba:	eba5 0509 	sub.w	r5, r5, r9
d00003be:	6026      	str	r6, [r4, #0]
d00003c0:	60a5      	str	r5, [r4, #8]
d00003c2:	463e      	mov	r6, r7
d00003c4:	42be      	cmp	r6, r7
d00003c6:	d900      	bls.n	d00003ca <__ssputs_r+0x86>
d00003c8:	463e      	mov	r6, r7
d00003ca:	4632      	mov	r2, r6
d00003cc:	6820      	ldr	r0, [r4, #0]
d00003ce:	4641      	mov	r1, r8
d00003d0:	f000 fb0c 	bl	d00009ec <memmove>
d00003d4:	68a3      	ldr	r3, [r4, #8]
d00003d6:	6822      	ldr	r2, [r4, #0]
d00003d8:	1b9b      	subs	r3, r3, r6
d00003da:	4432      	add	r2, r6
d00003dc:	60a3      	str	r3, [r4, #8]
d00003de:	6022      	str	r2, [r4, #0]
d00003e0:	2000      	movs	r0, #0
d00003e2:	e7db      	b.n	d000039c <__ssputs_r+0x58>
d00003e4:	462a      	mov	r2, r5
d00003e6:	f000 fbc5 	bl	d0000b74 <_realloc_r>
d00003ea:	4606      	mov	r6, r0
d00003ec:	2800      	cmp	r0, #0
d00003ee:	d1e1      	bne.n	d00003b4 <__ssputs_r+0x70>
d00003f0:	6921      	ldr	r1, [r4, #16]
d00003f2:	4650      	mov	r0, sl
d00003f4:	f000 fb14 	bl	d0000a20 <_free_r>
d00003f8:	e7c7      	b.n	d000038a <__ssputs_r+0x46>
	...

d00003fc <_svfiprintf_r>:
d00003fc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0000400:	4698      	mov	r8, r3
d0000402:	898b      	ldrh	r3, [r1, #12]
d0000404:	061b      	lsls	r3, r3, #24
d0000406:	b09d      	sub	sp, #116	; 0x74
d0000408:	4607      	mov	r7, r0
d000040a:	460d      	mov	r5, r1
d000040c:	4614      	mov	r4, r2
d000040e:	d50e      	bpl.n	d000042e <_svfiprintf_r+0x32>
d0000410:	690b      	ldr	r3, [r1, #16]
d0000412:	b963      	cbnz	r3, d000042e <_svfiprintf_r+0x32>
d0000414:	2140      	movs	r1, #64	; 0x40
d0000416:	f000 fb53 	bl	d0000ac0 <_malloc_r>
d000041a:	6028      	str	r0, [r5, #0]
d000041c:	6128      	str	r0, [r5, #16]
d000041e:	b920      	cbnz	r0, d000042a <_svfiprintf_r+0x2e>
d0000420:	230c      	movs	r3, #12
d0000422:	603b      	str	r3, [r7, #0]
d0000424:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000428:	e0d1      	b.n	d00005ce <_svfiprintf_r+0x1d2>
d000042a:	2340      	movs	r3, #64	; 0x40
d000042c:	616b      	str	r3, [r5, #20]
d000042e:	2300      	movs	r3, #0
d0000430:	9309      	str	r3, [sp, #36]	; 0x24
d0000432:	2320      	movs	r3, #32
d0000434:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0000438:	f8cd 800c 	str.w	r8, [sp, #12]
d000043c:	2330      	movs	r3, #48	; 0x30
d000043e:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d00005e8 <_svfiprintf_r+0x1ec>
d0000442:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0000446:	f04f 0901 	mov.w	r9, #1
d000044a:	4623      	mov	r3, r4
d000044c:	469a      	mov	sl, r3
d000044e:	f813 2b01 	ldrb.w	r2, [r3], #1
d0000452:	b10a      	cbz	r2, d0000458 <_svfiprintf_r+0x5c>
d0000454:	2a25      	cmp	r2, #37	; 0x25
d0000456:	d1f9      	bne.n	d000044c <_svfiprintf_r+0x50>
d0000458:	ebba 0b04 	subs.w	fp, sl, r4
d000045c:	d00b      	beq.n	d0000476 <_svfiprintf_r+0x7a>
d000045e:	465b      	mov	r3, fp
d0000460:	4622      	mov	r2, r4
d0000462:	4629      	mov	r1, r5
d0000464:	4638      	mov	r0, r7
d0000466:	f7ff ff6d 	bl	d0000344 <__ssputs_r>
d000046a:	3001      	adds	r0, #1
d000046c:	f000 80aa 	beq.w	d00005c4 <_svfiprintf_r+0x1c8>
d0000470:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0000472:	445a      	add	r2, fp
d0000474:	9209      	str	r2, [sp, #36]	; 0x24
d0000476:	f89a 3000 	ldrb.w	r3, [sl]
d000047a:	2b00      	cmp	r3, #0
d000047c:	f000 80a2 	beq.w	d00005c4 <_svfiprintf_r+0x1c8>
d0000480:	2300      	movs	r3, #0
d0000482:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0000486:	e9cd 2305 	strd	r2, r3, [sp, #20]
d000048a:	f10a 0a01 	add.w	sl, sl, #1
d000048e:	9304      	str	r3, [sp, #16]
d0000490:	9307      	str	r3, [sp, #28]
d0000492:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0000496:	931a      	str	r3, [sp, #104]	; 0x68
d0000498:	4654      	mov	r4, sl
d000049a:	2205      	movs	r2, #5
d000049c:	f814 1b01 	ldrb.w	r1, [r4], #1
d00004a0:	4851      	ldr	r0, [pc, #324]	; (d00005e8 <_svfiprintf_r+0x1ec>)
d00004a2:	f000 fa45 	bl	d0000930 <memchr>
d00004a6:	9a04      	ldr	r2, [sp, #16]
d00004a8:	b9d8      	cbnz	r0, d00004e2 <_svfiprintf_r+0xe6>
d00004aa:	06d0      	lsls	r0, r2, #27
d00004ac:	bf44      	itt	mi
d00004ae:	2320      	movmi	r3, #32
d00004b0:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00004b4:	0711      	lsls	r1, r2, #28
d00004b6:	bf44      	itt	mi
d00004b8:	232b      	movmi	r3, #43	; 0x2b
d00004ba:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00004be:	f89a 3000 	ldrb.w	r3, [sl]
d00004c2:	2b2a      	cmp	r3, #42	; 0x2a
d00004c4:	d015      	beq.n	d00004f2 <_svfiprintf_r+0xf6>
d00004c6:	9a07      	ldr	r2, [sp, #28]
d00004c8:	4654      	mov	r4, sl
d00004ca:	2000      	movs	r0, #0
d00004cc:	f04f 0c0a 	mov.w	ip, #10
d00004d0:	4621      	mov	r1, r4
d00004d2:	f811 3b01 	ldrb.w	r3, [r1], #1
d00004d6:	3b30      	subs	r3, #48	; 0x30
d00004d8:	2b09      	cmp	r3, #9
d00004da:	d94e      	bls.n	d000057a <_svfiprintf_r+0x17e>
d00004dc:	b1b0      	cbz	r0, d000050c <_svfiprintf_r+0x110>
d00004de:	9207      	str	r2, [sp, #28]
d00004e0:	e014      	b.n	d000050c <_svfiprintf_r+0x110>
d00004e2:	eba0 0308 	sub.w	r3, r0, r8
d00004e6:	fa09 f303 	lsl.w	r3, r9, r3
d00004ea:	4313      	orrs	r3, r2
d00004ec:	9304      	str	r3, [sp, #16]
d00004ee:	46a2      	mov	sl, r4
d00004f0:	e7d2      	b.n	d0000498 <_svfiprintf_r+0x9c>
d00004f2:	9b03      	ldr	r3, [sp, #12]
d00004f4:	1d19      	adds	r1, r3, #4
d00004f6:	681b      	ldr	r3, [r3, #0]
d00004f8:	9103      	str	r1, [sp, #12]
d00004fa:	2b00      	cmp	r3, #0
d00004fc:	bfbb      	ittet	lt
d00004fe:	425b      	neglt	r3, r3
d0000500:	f042 0202 	orrlt.w	r2, r2, #2
d0000504:	9307      	strge	r3, [sp, #28]
d0000506:	9307      	strlt	r3, [sp, #28]
d0000508:	bfb8      	it	lt
d000050a:	9204      	strlt	r2, [sp, #16]
d000050c:	7823      	ldrb	r3, [r4, #0]
d000050e:	2b2e      	cmp	r3, #46	; 0x2e
d0000510:	d10c      	bne.n	d000052c <_svfiprintf_r+0x130>
d0000512:	7863      	ldrb	r3, [r4, #1]
d0000514:	2b2a      	cmp	r3, #42	; 0x2a
d0000516:	d135      	bne.n	d0000584 <_svfiprintf_r+0x188>
d0000518:	9b03      	ldr	r3, [sp, #12]
d000051a:	1d1a      	adds	r2, r3, #4
d000051c:	681b      	ldr	r3, [r3, #0]
d000051e:	9203      	str	r2, [sp, #12]
d0000520:	2b00      	cmp	r3, #0
d0000522:	bfb8      	it	lt
d0000524:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0000528:	3402      	adds	r4, #2
d000052a:	9305      	str	r3, [sp, #20]
d000052c:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d00005f8 <_svfiprintf_r+0x1fc>
d0000530:	7821      	ldrb	r1, [r4, #0]
d0000532:	2203      	movs	r2, #3
d0000534:	4650      	mov	r0, sl
d0000536:	f000 f9fb 	bl	d0000930 <memchr>
d000053a:	b140      	cbz	r0, d000054e <_svfiprintf_r+0x152>
d000053c:	2340      	movs	r3, #64	; 0x40
d000053e:	eba0 000a 	sub.w	r0, r0, sl
d0000542:	fa03 f000 	lsl.w	r0, r3, r0
d0000546:	9b04      	ldr	r3, [sp, #16]
d0000548:	4303      	orrs	r3, r0
d000054a:	3401      	adds	r4, #1
d000054c:	9304      	str	r3, [sp, #16]
d000054e:	f814 1b01 	ldrb.w	r1, [r4], #1
d0000552:	4826      	ldr	r0, [pc, #152]	; (d00005ec <_svfiprintf_r+0x1f0>)
d0000554:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0000558:	2206      	movs	r2, #6
d000055a:	f000 f9e9 	bl	d0000930 <memchr>
d000055e:	2800      	cmp	r0, #0
d0000560:	d038      	beq.n	d00005d4 <_svfiprintf_r+0x1d8>
d0000562:	4b23      	ldr	r3, [pc, #140]	; (d00005f0 <_svfiprintf_r+0x1f4>)
d0000564:	bb1b      	cbnz	r3, d00005ae <_svfiprintf_r+0x1b2>
d0000566:	9b03      	ldr	r3, [sp, #12]
d0000568:	3307      	adds	r3, #7
d000056a:	f023 0307 	bic.w	r3, r3, #7
d000056e:	3308      	adds	r3, #8
d0000570:	9303      	str	r3, [sp, #12]
d0000572:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0000574:	4433      	add	r3, r6
d0000576:	9309      	str	r3, [sp, #36]	; 0x24
d0000578:	e767      	b.n	d000044a <_svfiprintf_r+0x4e>
d000057a:	fb0c 3202 	mla	r2, ip, r2, r3
d000057e:	460c      	mov	r4, r1
d0000580:	2001      	movs	r0, #1
d0000582:	e7a5      	b.n	d00004d0 <_svfiprintf_r+0xd4>
d0000584:	2300      	movs	r3, #0
d0000586:	3401      	adds	r4, #1
d0000588:	9305      	str	r3, [sp, #20]
d000058a:	4619      	mov	r1, r3
d000058c:	f04f 0c0a 	mov.w	ip, #10
d0000590:	4620      	mov	r0, r4
d0000592:	f810 2b01 	ldrb.w	r2, [r0], #1
d0000596:	3a30      	subs	r2, #48	; 0x30
d0000598:	2a09      	cmp	r2, #9
d000059a:	d903      	bls.n	d00005a4 <_svfiprintf_r+0x1a8>
d000059c:	2b00      	cmp	r3, #0
d000059e:	d0c5      	beq.n	d000052c <_svfiprintf_r+0x130>
d00005a0:	9105      	str	r1, [sp, #20]
d00005a2:	e7c3      	b.n	d000052c <_svfiprintf_r+0x130>
d00005a4:	fb0c 2101 	mla	r1, ip, r1, r2
d00005a8:	4604      	mov	r4, r0
d00005aa:	2301      	movs	r3, #1
d00005ac:	e7f0      	b.n	d0000590 <_svfiprintf_r+0x194>
d00005ae:	ab03      	add	r3, sp, #12
d00005b0:	9300      	str	r3, [sp, #0]
d00005b2:	462a      	mov	r2, r5
d00005b4:	4b0f      	ldr	r3, [pc, #60]	; (d00005f4 <_svfiprintf_r+0x1f8>)
d00005b6:	a904      	add	r1, sp, #16
d00005b8:	4638      	mov	r0, r7
d00005ba:	f3af 8000 	nop.w
d00005be:	1c42      	adds	r2, r0, #1
d00005c0:	4606      	mov	r6, r0
d00005c2:	d1d6      	bne.n	d0000572 <_svfiprintf_r+0x176>
d00005c4:	89ab      	ldrh	r3, [r5, #12]
d00005c6:	065b      	lsls	r3, r3, #25
d00005c8:	f53f af2c 	bmi.w	d0000424 <_svfiprintf_r+0x28>
d00005cc:	9809      	ldr	r0, [sp, #36]	; 0x24
d00005ce:	b01d      	add	sp, #116	; 0x74
d00005d0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00005d4:	ab03      	add	r3, sp, #12
d00005d6:	9300      	str	r3, [sp, #0]
d00005d8:	462a      	mov	r2, r5
d00005da:	4b06      	ldr	r3, [pc, #24]	; (d00005f4 <_svfiprintf_r+0x1f8>)
d00005dc:	a904      	add	r1, sp, #16
d00005de:	4638      	mov	r0, r7
d00005e0:	f000 f87a 	bl	d00006d8 <_printf_i>
d00005e4:	e7eb      	b.n	d00005be <_svfiprintf_r+0x1c2>
d00005e6:	bf00      	nop
d00005e8:	d0000c7a 	.word	0xd0000c7a
d00005ec:	d0000c84 	.word	0xd0000c84
d00005f0:	00000000 	.word	0x00000000
d00005f4:	d0000345 	.word	0xd0000345
d00005f8:	d0000c80 	.word	0xd0000c80

d00005fc <_printf_common>:
d00005fc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0000600:	4616      	mov	r6, r2
d0000602:	4699      	mov	r9, r3
d0000604:	688a      	ldr	r2, [r1, #8]
d0000606:	690b      	ldr	r3, [r1, #16]
d0000608:	f8dd 8020 	ldr.w	r8, [sp, #32]
d000060c:	4293      	cmp	r3, r2
d000060e:	bfb8      	it	lt
d0000610:	4613      	movlt	r3, r2
d0000612:	6033      	str	r3, [r6, #0]
d0000614:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0000618:	4607      	mov	r7, r0
d000061a:	460c      	mov	r4, r1
d000061c:	b10a      	cbz	r2, d0000622 <_printf_common+0x26>
d000061e:	3301      	adds	r3, #1
d0000620:	6033      	str	r3, [r6, #0]
d0000622:	6823      	ldr	r3, [r4, #0]
d0000624:	0699      	lsls	r1, r3, #26
d0000626:	bf42      	ittt	mi
d0000628:	6833      	ldrmi	r3, [r6, #0]
d000062a:	3302      	addmi	r3, #2
d000062c:	6033      	strmi	r3, [r6, #0]
d000062e:	6825      	ldr	r5, [r4, #0]
d0000630:	f015 0506 	ands.w	r5, r5, #6
d0000634:	d106      	bne.n	d0000644 <_printf_common+0x48>
d0000636:	f104 0a19 	add.w	sl, r4, #25
d000063a:	68e3      	ldr	r3, [r4, #12]
d000063c:	6832      	ldr	r2, [r6, #0]
d000063e:	1a9b      	subs	r3, r3, r2
d0000640:	42ab      	cmp	r3, r5
d0000642:	dc26      	bgt.n	d0000692 <_printf_common+0x96>
d0000644:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0000648:	1e13      	subs	r3, r2, #0
d000064a:	6822      	ldr	r2, [r4, #0]
d000064c:	bf18      	it	ne
d000064e:	2301      	movne	r3, #1
d0000650:	0692      	lsls	r2, r2, #26
d0000652:	d42b      	bmi.n	d00006ac <_printf_common+0xb0>
d0000654:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0000658:	4649      	mov	r1, r9
d000065a:	4638      	mov	r0, r7
d000065c:	47c0      	blx	r8
d000065e:	3001      	adds	r0, #1
d0000660:	d01e      	beq.n	d00006a0 <_printf_common+0xa4>
d0000662:	6823      	ldr	r3, [r4, #0]
d0000664:	68e5      	ldr	r5, [r4, #12]
d0000666:	6832      	ldr	r2, [r6, #0]
d0000668:	f003 0306 	and.w	r3, r3, #6
d000066c:	2b04      	cmp	r3, #4
d000066e:	bf08      	it	eq
d0000670:	1aad      	subeq	r5, r5, r2
d0000672:	68a3      	ldr	r3, [r4, #8]
d0000674:	6922      	ldr	r2, [r4, #16]
d0000676:	bf0c      	ite	eq
d0000678:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d000067c:	2500      	movne	r5, #0
d000067e:	4293      	cmp	r3, r2
d0000680:	bfc4      	itt	gt
d0000682:	1a9b      	subgt	r3, r3, r2
d0000684:	18ed      	addgt	r5, r5, r3
d0000686:	2600      	movs	r6, #0
d0000688:	341a      	adds	r4, #26
d000068a:	42b5      	cmp	r5, r6
d000068c:	d11a      	bne.n	d00006c4 <_printf_common+0xc8>
d000068e:	2000      	movs	r0, #0
d0000690:	e008      	b.n	d00006a4 <_printf_common+0xa8>
d0000692:	2301      	movs	r3, #1
d0000694:	4652      	mov	r2, sl
d0000696:	4649      	mov	r1, r9
d0000698:	4638      	mov	r0, r7
d000069a:	47c0      	blx	r8
d000069c:	3001      	adds	r0, #1
d000069e:	d103      	bne.n	d00006a8 <_printf_common+0xac>
d00006a0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00006a4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00006a8:	3501      	adds	r5, #1
d00006aa:	e7c6      	b.n	d000063a <_printf_common+0x3e>
d00006ac:	18e1      	adds	r1, r4, r3
d00006ae:	1c5a      	adds	r2, r3, #1
d00006b0:	2030      	movs	r0, #48	; 0x30
d00006b2:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d00006b6:	4422      	add	r2, r4
d00006b8:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d00006bc:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d00006c0:	3302      	adds	r3, #2
d00006c2:	e7c7      	b.n	d0000654 <_printf_common+0x58>
d00006c4:	2301      	movs	r3, #1
d00006c6:	4622      	mov	r2, r4
d00006c8:	4649      	mov	r1, r9
d00006ca:	4638      	mov	r0, r7
d00006cc:	47c0      	blx	r8
d00006ce:	3001      	adds	r0, #1
d00006d0:	d0e6      	beq.n	d00006a0 <_printf_common+0xa4>
d00006d2:	3601      	adds	r6, #1
d00006d4:	e7d9      	b.n	d000068a <_printf_common+0x8e>
	...

d00006d8 <_printf_i>:
d00006d8:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d00006dc:	460c      	mov	r4, r1
d00006de:	4691      	mov	r9, r2
d00006e0:	7e27      	ldrb	r7, [r4, #24]
d00006e2:	990c      	ldr	r1, [sp, #48]	; 0x30
d00006e4:	2f78      	cmp	r7, #120	; 0x78
d00006e6:	4680      	mov	r8, r0
d00006e8:	469a      	mov	sl, r3
d00006ea:	f104 0243 	add.w	r2, r4, #67	; 0x43
d00006ee:	d807      	bhi.n	d0000700 <_printf_i+0x28>
d00006f0:	2f62      	cmp	r7, #98	; 0x62
d00006f2:	d80a      	bhi.n	d000070a <_printf_i+0x32>
d00006f4:	2f00      	cmp	r7, #0
d00006f6:	f000 80d8 	beq.w	d00008aa <_printf_i+0x1d2>
d00006fa:	2f58      	cmp	r7, #88	; 0x58
d00006fc:	f000 80a3 	beq.w	d0000846 <_printf_i+0x16e>
d0000700:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0000704:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0000708:	e03a      	b.n	d0000780 <_printf_i+0xa8>
d000070a:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d000070e:	2b15      	cmp	r3, #21
d0000710:	d8f6      	bhi.n	d0000700 <_printf_i+0x28>
d0000712:	a001      	add	r0, pc, #4	; (adr r0, d0000718 <_printf_i+0x40>)
d0000714:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0000718:	d0000771 	.word	0xd0000771
d000071c:	d0000785 	.word	0xd0000785
d0000720:	d0000701 	.word	0xd0000701
d0000724:	d0000701 	.word	0xd0000701
d0000728:	d0000701 	.word	0xd0000701
d000072c:	d0000701 	.word	0xd0000701
d0000730:	d0000785 	.word	0xd0000785
d0000734:	d0000701 	.word	0xd0000701
d0000738:	d0000701 	.word	0xd0000701
d000073c:	d0000701 	.word	0xd0000701
d0000740:	d0000701 	.word	0xd0000701
d0000744:	d0000891 	.word	0xd0000891
d0000748:	d00007b5 	.word	0xd00007b5
d000074c:	d0000873 	.word	0xd0000873
d0000750:	d0000701 	.word	0xd0000701
d0000754:	d0000701 	.word	0xd0000701
d0000758:	d00008b3 	.word	0xd00008b3
d000075c:	d0000701 	.word	0xd0000701
d0000760:	d00007b5 	.word	0xd00007b5
d0000764:	d0000701 	.word	0xd0000701
d0000768:	d0000701 	.word	0xd0000701
d000076c:	d000087b 	.word	0xd000087b
d0000770:	680b      	ldr	r3, [r1, #0]
d0000772:	1d1a      	adds	r2, r3, #4
d0000774:	681b      	ldr	r3, [r3, #0]
d0000776:	600a      	str	r2, [r1, #0]
d0000778:	f104 0642 	add.w	r6, r4, #66	; 0x42
d000077c:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0000780:	2301      	movs	r3, #1
d0000782:	e0a3      	b.n	d00008cc <_printf_i+0x1f4>
d0000784:	6825      	ldr	r5, [r4, #0]
d0000786:	6808      	ldr	r0, [r1, #0]
d0000788:	062e      	lsls	r6, r5, #24
d000078a:	f100 0304 	add.w	r3, r0, #4
d000078e:	d50a      	bpl.n	d00007a6 <_printf_i+0xce>
d0000790:	6805      	ldr	r5, [r0, #0]
d0000792:	600b      	str	r3, [r1, #0]
d0000794:	2d00      	cmp	r5, #0
d0000796:	da03      	bge.n	d00007a0 <_printf_i+0xc8>
d0000798:	232d      	movs	r3, #45	; 0x2d
d000079a:	426d      	negs	r5, r5
d000079c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d00007a0:	485e      	ldr	r0, [pc, #376]	; (d000091c <_printf_i+0x244>)
d00007a2:	230a      	movs	r3, #10
d00007a4:	e019      	b.n	d00007da <_printf_i+0x102>
d00007a6:	f015 0f40 	tst.w	r5, #64	; 0x40
d00007aa:	6805      	ldr	r5, [r0, #0]
d00007ac:	600b      	str	r3, [r1, #0]
d00007ae:	bf18      	it	ne
d00007b0:	b22d      	sxthne	r5, r5
d00007b2:	e7ef      	b.n	d0000794 <_printf_i+0xbc>
d00007b4:	680b      	ldr	r3, [r1, #0]
d00007b6:	6825      	ldr	r5, [r4, #0]
d00007b8:	1d18      	adds	r0, r3, #4
d00007ba:	6008      	str	r0, [r1, #0]
d00007bc:	0628      	lsls	r0, r5, #24
d00007be:	d501      	bpl.n	d00007c4 <_printf_i+0xec>
d00007c0:	681d      	ldr	r5, [r3, #0]
d00007c2:	e002      	b.n	d00007ca <_printf_i+0xf2>
d00007c4:	0669      	lsls	r1, r5, #25
d00007c6:	d5fb      	bpl.n	d00007c0 <_printf_i+0xe8>
d00007c8:	881d      	ldrh	r5, [r3, #0]
d00007ca:	4854      	ldr	r0, [pc, #336]	; (d000091c <_printf_i+0x244>)
d00007cc:	2f6f      	cmp	r7, #111	; 0x6f
d00007ce:	bf0c      	ite	eq
d00007d0:	2308      	moveq	r3, #8
d00007d2:	230a      	movne	r3, #10
d00007d4:	2100      	movs	r1, #0
d00007d6:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d00007da:	6866      	ldr	r6, [r4, #4]
d00007dc:	60a6      	str	r6, [r4, #8]
d00007de:	2e00      	cmp	r6, #0
d00007e0:	bfa2      	ittt	ge
d00007e2:	6821      	ldrge	r1, [r4, #0]
d00007e4:	f021 0104 	bicge.w	r1, r1, #4
d00007e8:	6021      	strge	r1, [r4, #0]
d00007ea:	b90d      	cbnz	r5, d00007f0 <_printf_i+0x118>
d00007ec:	2e00      	cmp	r6, #0
d00007ee:	d04d      	beq.n	d000088c <_printf_i+0x1b4>
d00007f0:	4616      	mov	r6, r2
d00007f2:	fbb5 f1f3 	udiv	r1, r5, r3
d00007f6:	fb03 5711 	mls	r7, r3, r1, r5
d00007fa:	5dc7      	ldrb	r7, [r0, r7]
d00007fc:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0000800:	462f      	mov	r7, r5
d0000802:	42bb      	cmp	r3, r7
d0000804:	460d      	mov	r5, r1
d0000806:	d9f4      	bls.n	d00007f2 <_printf_i+0x11a>
d0000808:	2b08      	cmp	r3, #8
d000080a:	d10b      	bne.n	d0000824 <_printf_i+0x14c>
d000080c:	6823      	ldr	r3, [r4, #0]
d000080e:	07df      	lsls	r7, r3, #31
d0000810:	d508      	bpl.n	d0000824 <_printf_i+0x14c>
d0000812:	6923      	ldr	r3, [r4, #16]
d0000814:	6861      	ldr	r1, [r4, #4]
d0000816:	4299      	cmp	r1, r3
d0000818:	bfde      	ittt	le
d000081a:	2330      	movle	r3, #48	; 0x30
d000081c:	f806 3c01 	strble.w	r3, [r6, #-1]
d0000820:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0000824:	1b92      	subs	r2, r2, r6
d0000826:	6122      	str	r2, [r4, #16]
d0000828:	f8cd a000 	str.w	sl, [sp]
d000082c:	464b      	mov	r3, r9
d000082e:	aa03      	add	r2, sp, #12
d0000830:	4621      	mov	r1, r4
d0000832:	4640      	mov	r0, r8
d0000834:	f7ff fee2 	bl	d00005fc <_printf_common>
d0000838:	3001      	adds	r0, #1
d000083a:	d14c      	bne.n	d00008d6 <_printf_i+0x1fe>
d000083c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000840:	b004      	add	sp, #16
d0000842:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0000846:	4835      	ldr	r0, [pc, #212]	; (d000091c <_printf_i+0x244>)
d0000848:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d000084c:	6823      	ldr	r3, [r4, #0]
d000084e:	680e      	ldr	r6, [r1, #0]
d0000850:	061f      	lsls	r7, r3, #24
d0000852:	f856 5b04 	ldr.w	r5, [r6], #4
d0000856:	600e      	str	r6, [r1, #0]
d0000858:	d514      	bpl.n	d0000884 <_printf_i+0x1ac>
d000085a:	07d9      	lsls	r1, r3, #31
d000085c:	bf44      	itt	mi
d000085e:	f043 0320 	orrmi.w	r3, r3, #32
d0000862:	6023      	strmi	r3, [r4, #0]
d0000864:	b91d      	cbnz	r5, d000086e <_printf_i+0x196>
d0000866:	6823      	ldr	r3, [r4, #0]
d0000868:	f023 0320 	bic.w	r3, r3, #32
d000086c:	6023      	str	r3, [r4, #0]
d000086e:	2310      	movs	r3, #16
d0000870:	e7b0      	b.n	d00007d4 <_printf_i+0xfc>
d0000872:	6823      	ldr	r3, [r4, #0]
d0000874:	f043 0320 	orr.w	r3, r3, #32
d0000878:	6023      	str	r3, [r4, #0]
d000087a:	2378      	movs	r3, #120	; 0x78
d000087c:	4828      	ldr	r0, [pc, #160]	; (d0000920 <_printf_i+0x248>)
d000087e:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0000882:	e7e3      	b.n	d000084c <_printf_i+0x174>
d0000884:	065e      	lsls	r6, r3, #25
d0000886:	bf48      	it	mi
d0000888:	b2ad      	uxthmi	r5, r5
d000088a:	e7e6      	b.n	d000085a <_printf_i+0x182>
d000088c:	4616      	mov	r6, r2
d000088e:	e7bb      	b.n	d0000808 <_printf_i+0x130>
d0000890:	680b      	ldr	r3, [r1, #0]
d0000892:	6826      	ldr	r6, [r4, #0]
d0000894:	6960      	ldr	r0, [r4, #20]
d0000896:	1d1d      	adds	r5, r3, #4
d0000898:	600d      	str	r5, [r1, #0]
d000089a:	0635      	lsls	r5, r6, #24
d000089c:	681b      	ldr	r3, [r3, #0]
d000089e:	d501      	bpl.n	d00008a4 <_printf_i+0x1cc>
d00008a0:	6018      	str	r0, [r3, #0]
d00008a2:	e002      	b.n	d00008aa <_printf_i+0x1d2>
d00008a4:	0671      	lsls	r1, r6, #25
d00008a6:	d5fb      	bpl.n	d00008a0 <_printf_i+0x1c8>
d00008a8:	8018      	strh	r0, [r3, #0]
d00008aa:	2300      	movs	r3, #0
d00008ac:	6123      	str	r3, [r4, #16]
d00008ae:	4616      	mov	r6, r2
d00008b0:	e7ba      	b.n	d0000828 <_printf_i+0x150>
d00008b2:	680b      	ldr	r3, [r1, #0]
d00008b4:	1d1a      	adds	r2, r3, #4
d00008b6:	600a      	str	r2, [r1, #0]
d00008b8:	681e      	ldr	r6, [r3, #0]
d00008ba:	6862      	ldr	r2, [r4, #4]
d00008bc:	2100      	movs	r1, #0
d00008be:	4630      	mov	r0, r6
d00008c0:	f000 f836 	bl	d0000930 <memchr>
d00008c4:	b108      	cbz	r0, d00008ca <_printf_i+0x1f2>
d00008c6:	1b80      	subs	r0, r0, r6
d00008c8:	6060      	str	r0, [r4, #4]
d00008ca:	6863      	ldr	r3, [r4, #4]
d00008cc:	6123      	str	r3, [r4, #16]
d00008ce:	2300      	movs	r3, #0
d00008d0:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d00008d4:	e7a8      	b.n	d0000828 <_printf_i+0x150>
d00008d6:	6923      	ldr	r3, [r4, #16]
d00008d8:	4632      	mov	r2, r6
d00008da:	4649      	mov	r1, r9
d00008dc:	4640      	mov	r0, r8
d00008de:	47d0      	blx	sl
d00008e0:	3001      	adds	r0, #1
d00008e2:	d0ab      	beq.n	d000083c <_printf_i+0x164>
d00008e4:	6823      	ldr	r3, [r4, #0]
d00008e6:	079b      	lsls	r3, r3, #30
d00008e8:	d413      	bmi.n	d0000912 <_printf_i+0x23a>
d00008ea:	68e0      	ldr	r0, [r4, #12]
d00008ec:	9b03      	ldr	r3, [sp, #12]
d00008ee:	4298      	cmp	r0, r3
d00008f0:	bfb8      	it	lt
d00008f2:	4618      	movlt	r0, r3
d00008f4:	e7a4      	b.n	d0000840 <_printf_i+0x168>
d00008f6:	2301      	movs	r3, #1
d00008f8:	4632      	mov	r2, r6
d00008fa:	4649      	mov	r1, r9
d00008fc:	4640      	mov	r0, r8
d00008fe:	47d0      	blx	sl
d0000900:	3001      	adds	r0, #1
d0000902:	d09b      	beq.n	d000083c <_printf_i+0x164>
d0000904:	3501      	adds	r5, #1
d0000906:	68e3      	ldr	r3, [r4, #12]
d0000908:	9903      	ldr	r1, [sp, #12]
d000090a:	1a5b      	subs	r3, r3, r1
d000090c:	42ab      	cmp	r3, r5
d000090e:	dcf2      	bgt.n	d00008f6 <_printf_i+0x21e>
d0000910:	e7eb      	b.n	d00008ea <_printf_i+0x212>
d0000912:	2500      	movs	r5, #0
d0000914:	f104 0619 	add.w	r6, r4, #25
d0000918:	e7f5      	b.n	d0000906 <_printf_i+0x22e>
d000091a:	bf00      	nop
d000091c:	d0000c8b 	.word	0xd0000c8b
d0000920:	d0000c9c 	.word	0xd0000c9c
	...

d0000930 <memchr>:
d0000930:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0000934:	2a10      	cmp	r2, #16
d0000936:	db2b      	blt.n	d0000990 <memchr+0x60>
d0000938:	f010 0f07 	tst.w	r0, #7
d000093c:	d008      	beq.n	d0000950 <memchr+0x20>
d000093e:	f810 3b01 	ldrb.w	r3, [r0], #1
d0000942:	3a01      	subs	r2, #1
d0000944:	428b      	cmp	r3, r1
d0000946:	d02d      	beq.n	d00009a4 <memchr+0x74>
d0000948:	f010 0f07 	tst.w	r0, #7
d000094c:	b342      	cbz	r2, d00009a0 <memchr+0x70>
d000094e:	d1f6      	bne.n	d000093e <memchr+0xe>
d0000950:	b4f0      	push	{r4, r5, r6, r7}
d0000952:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0000956:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d000095a:	f022 0407 	bic.w	r4, r2, #7
d000095e:	f07f 0700 	mvns.w	r7, #0
d0000962:	2300      	movs	r3, #0
d0000964:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0000968:	3c08      	subs	r4, #8
d000096a:	ea85 0501 	eor.w	r5, r5, r1
d000096e:	ea86 0601 	eor.w	r6, r6, r1
d0000972:	fa85 f547 	uadd8	r5, r5, r7
d0000976:	faa3 f587 	sel	r5, r3, r7
d000097a:	fa86 f647 	uadd8	r6, r6, r7
d000097e:	faa5 f687 	sel	r6, r5, r7
d0000982:	b98e      	cbnz	r6, d00009a8 <memchr+0x78>
d0000984:	d1ee      	bne.n	d0000964 <memchr+0x34>
d0000986:	bcf0      	pop	{r4, r5, r6, r7}
d0000988:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d000098c:	f002 0207 	and.w	r2, r2, #7
d0000990:	b132      	cbz	r2, d00009a0 <memchr+0x70>
d0000992:	f810 3b01 	ldrb.w	r3, [r0], #1
d0000996:	3a01      	subs	r2, #1
d0000998:	ea83 0301 	eor.w	r3, r3, r1
d000099c:	b113      	cbz	r3, d00009a4 <memchr+0x74>
d000099e:	d1f8      	bne.n	d0000992 <memchr+0x62>
d00009a0:	2000      	movs	r0, #0
d00009a2:	4770      	bx	lr
d00009a4:	3801      	subs	r0, #1
d00009a6:	4770      	bx	lr
d00009a8:	2d00      	cmp	r5, #0
d00009aa:	bf06      	itte	eq
d00009ac:	4635      	moveq	r5, r6
d00009ae:	3803      	subeq	r0, #3
d00009b0:	3807      	subne	r0, #7
d00009b2:	f015 0f01 	tst.w	r5, #1
d00009b6:	d107      	bne.n	d00009c8 <memchr+0x98>
d00009b8:	3001      	adds	r0, #1
d00009ba:	f415 7f80 	tst.w	r5, #256	; 0x100
d00009be:	bf02      	ittt	eq
d00009c0:	3001      	addeq	r0, #1
d00009c2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d00009c6:	3001      	addeq	r0, #1
d00009c8:	bcf0      	pop	{r4, r5, r6, r7}
d00009ca:	3801      	subs	r0, #1
d00009cc:	4770      	bx	lr
d00009ce:	bf00      	nop

d00009d0 <memcpy>:
d00009d0:	440a      	add	r2, r1
d00009d2:	4291      	cmp	r1, r2
d00009d4:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d00009d8:	d100      	bne.n	d00009dc <memcpy+0xc>
d00009da:	4770      	bx	lr
d00009dc:	b510      	push	{r4, lr}
d00009de:	f811 4b01 	ldrb.w	r4, [r1], #1
d00009e2:	f803 4f01 	strb.w	r4, [r3, #1]!
d00009e6:	4291      	cmp	r1, r2
d00009e8:	d1f9      	bne.n	d00009de <memcpy+0xe>
d00009ea:	bd10      	pop	{r4, pc}

d00009ec <memmove>:
d00009ec:	4288      	cmp	r0, r1
d00009ee:	b510      	push	{r4, lr}
d00009f0:	eb01 0402 	add.w	r4, r1, r2
d00009f4:	d902      	bls.n	d00009fc <memmove+0x10>
d00009f6:	4284      	cmp	r4, r0
d00009f8:	4623      	mov	r3, r4
d00009fa:	d807      	bhi.n	d0000a0c <memmove+0x20>
d00009fc:	1e43      	subs	r3, r0, #1
d00009fe:	42a1      	cmp	r1, r4
d0000a00:	d008      	beq.n	d0000a14 <memmove+0x28>
d0000a02:	f811 2b01 	ldrb.w	r2, [r1], #1
d0000a06:	f803 2f01 	strb.w	r2, [r3, #1]!
d0000a0a:	e7f8      	b.n	d00009fe <memmove+0x12>
d0000a0c:	4402      	add	r2, r0
d0000a0e:	4601      	mov	r1, r0
d0000a10:	428a      	cmp	r2, r1
d0000a12:	d100      	bne.n	d0000a16 <memmove+0x2a>
d0000a14:	bd10      	pop	{r4, pc}
d0000a16:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d0000a1a:	f802 4d01 	strb.w	r4, [r2, #-1]!
d0000a1e:	e7f7      	b.n	d0000a10 <memmove+0x24>

d0000a20 <_free_r>:
d0000a20:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0000a22:	2900      	cmp	r1, #0
d0000a24:	d048      	beq.n	d0000ab8 <_free_r+0x98>
d0000a26:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0000a2a:	9001      	str	r0, [sp, #4]
d0000a2c:	2b00      	cmp	r3, #0
d0000a2e:	f1a1 0404 	sub.w	r4, r1, #4
d0000a32:	bfb8      	it	lt
d0000a34:	18e4      	addlt	r4, r4, r3
d0000a36:	f000 f8d3 	bl	d0000be0 <__malloc_lock>
d0000a3a:	4a20      	ldr	r2, [pc, #128]	; (d0000abc <_free_r+0x9c>)
d0000a3c:	9801      	ldr	r0, [sp, #4]
d0000a3e:	6813      	ldr	r3, [r2, #0]
d0000a40:	4615      	mov	r5, r2
d0000a42:	b933      	cbnz	r3, d0000a52 <_free_r+0x32>
d0000a44:	6063      	str	r3, [r4, #4]
d0000a46:	6014      	str	r4, [r2, #0]
d0000a48:	b003      	add	sp, #12
d0000a4a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0000a4e:	f000 b8cd 	b.w	d0000bec <__malloc_unlock>
d0000a52:	42a3      	cmp	r3, r4
d0000a54:	d90b      	bls.n	d0000a6e <_free_r+0x4e>
d0000a56:	6821      	ldr	r1, [r4, #0]
d0000a58:	1862      	adds	r2, r4, r1
d0000a5a:	4293      	cmp	r3, r2
d0000a5c:	bf04      	itt	eq
d0000a5e:	681a      	ldreq	r2, [r3, #0]
d0000a60:	685b      	ldreq	r3, [r3, #4]
d0000a62:	6063      	str	r3, [r4, #4]
d0000a64:	bf04      	itt	eq
d0000a66:	1852      	addeq	r2, r2, r1
d0000a68:	6022      	streq	r2, [r4, #0]
d0000a6a:	602c      	str	r4, [r5, #0]
d0000a6c:	e7ec      	b.n	d0000a48 <_free_r+0x28>
d0000a6e:	461a      	mov	r2, r3
d0000a70:	685b      	ldr	r3, [r3, #4]
d0000a72:	b10b      	cbz	r3, d0000a78 <_free_r+0x58>
d0000a74:	42a3      	cmp	r3, r4
d0000a76:	d9fa      	bls.n	d0000a6e <_free_r+0x4e>
d0000a78:	6811      	ldr	r1, [r2, #0]
d0000a7a:	1855      	adds	r5, r2, r1
d0000a7c:	42a5      	cmp	r5, r4
d0000a7e:	d10b      	bne.n	d0000a98 <_free_r+0x78>
d0000a80:	6824      	ldr	r4, [r4, #0]
d0000a82:	4421      	add	r1, r4
d0000a84:	1854      	adds	r4, r2, r1
d0000a86:	42a3      	cmp	r3, r4
d0000a88:	6011      	str	r1, [r2, #0]
d0000a8a:	d1dd      	bne.n	d0000a48 <_free_r+0x28>
d0000a8c:	681c      	ldr	r4, [r3, #0]
d0000a8e:	685b      	ldr	r3, [r3, #4]
d0000a90:	6053      	str	r3, [r2, #4]
d0000a92:	4421      	add	r1, r4
d0000a94:	6011      	str	r1, [r2, #0]
d0000a96:	e7d7      	b.n	d0000a48 <_free_r+0x28>
d0000a98:	d902      	bls.n	d0000aa0 <_free_r+0x80>
d0000a9a:	230c      	movs	r3, #12
d0000a9c:	6003      	str	r3, [r0, #0]
d0000a9e:	e7d3      	b.n	d0000a48 <_free_r+0x28>
d0000aa0:	6825      	ldr	r5, [r4, #0]
d0000aa2:	1961      	adds	r1, r4, r5
d0000aa4:	428b      	cmp	r3, r1
d0000aa6:	bf04      	itt	eq
d0000aa8:	6819      	ldreq	r1, [r3, #0]
d0000aaa:	685b      	ldreq	r3, [r3, #4]
d0000aac:	6063      	str	r3, [r4, #4]
d0000aae:	bf04      	itt	eq
d0000ab0:	1949      	addeq	r1, r1, r5
d0000ab2:	6021      	streq	r1, [r4, #0]
d0000ab4:	6054      	str	r4, [r2, #4]
d0000ab6:	e7c7      	b.n	d0000a48 <_free_r+0x28>
d0000ab8:	b003      	add	sp, #12
d0000aba:	bd30      	pop	{r4, r5, pc}
d0000abc:	d0000d24 	.word	0xd0000d24

d0000ac0 <_malloc_r>:
d0000ac0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000ac2:	1ccd      	adds	r5, r1, #3
d0000ac4:	f025 0503 	bic.w	r5, r5, #3
d0000ac8:	3508      	adds	r5, #8
d0000aca:	2d0c      	cmp	r5, #12
d0000acc:	bf38      	it	cc
d0000ace:	250c      	movcc	r5, #12
d0000ad0:	2d00      	cmp	r5, #0
d0000ad2:	4606      	mov	r6, r0
d0000ad4:	db01      	blt.n	d0000ada <_malloc_r+0x1a>
d0000ad6:	42a9      	cmp	r1, r5
d0000ad8:	d903      	bls.n	d0000ae2 <_malloc_r+0x22>
d0000ada:	230c      	movs	r3, #12
d0000adc:	6033      	str	r3, [r6, #0]
d0000ade:	2000      	movs	r0, #0
d0000ae0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0000ae2:	f000 f87d 	bl	d0000be0 <__malloc_lock>
d0000ae6:	4921      	ldr	r1, [pc, #132]	; (d0000b6c <_malloc_r+0xac>)
d0000ae8:	680a      	ldr	r2, [r1, #0]
d0000aea:	4614      	mov	r4, r2
d0000aec:	b99c      	cbnz	r4, d0000b16 <_malloc_r+0x56>
d0000aee:	4f20      	ldr	r7, [pc, #128]	; (d0000b70 <_malloc_r+0xb0>)
d0000af0:	683b      	ldr	r3, [r7, #0]
d0000af2:	b923      	cbnz	r3, d0000afe <_malloc_r+0x3e>
d0000af4:	4621      	mov	r1, r4
d0000af6:	4630      	mov	r0, r6
d0000af8:	f000 f862 	bl	d0000bc0 <_sbrk_r>
d0000afc:	6038      	str	r0, [r7, #0]
d0000afe:	4629      	mov	r1, r5
d0000b00:	4630      	mov	r0, r6
d0000b02:	f000 f85d 	bl	d0000bc0 <_sbrk_r>
d0000b06:	1c43      	adds	r3, r0, #1
d0000b08:	d123      	bne.n	d0000b52 <_malloc_r+0x92>
d0000b0a:	230c      	movs	r3, #12
d0000b0c:	6033      	str	r3, [r6, #0]
d0000b0e:	4630      	mov	r0, r6
d0000b10:	f000 f86c 	bl	d0000bec <__malloc_unlock>
d0000b14:	e7e3      	b.n	d0000ade <_malloc_r+0x1e>
d0000b16:	6823      	ldr	r3, [r4, #0]
d0000b18:	1b5b      	subs	r3, r3, r5
d0000b1a:	d417      	bmi.n	d0000b4c <_malloc_r+0x8c>
d0000b1c:	2b0b      	cmp	r3, #11
d0000b1e:	d903      	bls.n	d0000b28 <_malloc_r+0x68>
d0000b20:	6023      	str	r3, [r4, #0]
d0000b22:	441c      	add	r4, r3
d0000b24:	6025      	str	r5, [r4, #0]
d0000b26:	e004      	b.n	d0000b32 <_malloc_r+0x72>
d0000b28:	6863      	ldr	r3, [r4, #4]
d0000b2a:	42a2      	cmp	r2, r4
d0000b2c:	bf0c      	ite	eq
d0000b2e:	600b      	streq	r3, [r1, #0]
d0000b30:	6053      	strne	r3, [r2, #4]
d0000b32:	4630      	mov	r0, r6
d0000b34:	f000 f85a 	bl	d0000bec <__malloc_unlock>
d0000b38:	f104 000b 	add.w	r0, r4, #11
d0000b3c:	1d23      	adds	r3, r4, #4
d0000b3e:	f020 0007 	bic.w	r0, r0, #7
d0000b42:	1ac2      	subs	r2, r0, r3
d0000b44:	d0cc      	beq.n	d0000ae0 <_malloc_r+0x20>
d0000b46:	1a1b      	subs	r3, r3, r0
d0000b48:	50a3      	str	r3, [r4, r2]
d0000b4a:	e7c9      	b.n	d0000ae0 <_malloc_r+0x20>
d0000b4c:	4622      	mov	r2, r4
d0000b4e:	6864      	ldr	r4, [r4, #4]
d0000b50:	e7cc      	b.n	d0000aec <_malloc_r+0x2c>
d0000b52:	1cc4      	adds	r4, r0, #3
d0000b54:	f024 0403 	bic.w	r4, r4, #3
d0000b58:	42a0      	cmp	r0, r4
d0000b5a:	d0e3      	beq.n	d0000b24 <_malloc_r+0x64>
d0000b5c:	1a21      	subs	r1, r4, r0
d0000b5e:	4630      	mov	r0, r6
d0000b60:	f000 f82e 	bl	d0000bc0 <_sbrk_r>
d0000b64:	3001      	adds	r0, #1
d0000b66:	d1dd      	bne.n	d0000b24 <_malloc_r+0x64>
d0000b68:	e7cf      	b.n	d0000b0a <_malloc_r+0x4a>
d0000b6a:	bf00      	nop
d0000b6c:	d0000d24 	.word	0xd0000d24
d0000b70:	d0000d28 	.word	0xd0000d28

d0000b74 <_realloc_r>:
d0000b74:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000b76:	4607      	mov	r7, r0
d0000b78:	4614      	mov	r4, r2
d0000b7a:	460e      	mov	r6, r1
d0000b7c:	b921      	cbnz	r1, d0000b88 <_realloc_r+0x14>
d0000b7e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0000b82:	4611      	mov	r1, r2
d0000b84:	f7ff bf9c 	b.w	d0000ac0 <_malloc_r>
d0000b88:	b922      	cbnz	r2, d0000b94 <_realloc_r+0x20>
d0000b8a:	f7ff ff49 	bl	d0000a20 <_free_r>
d0000b8e:	4625      	mov	r5, r4
d0000b90:	4628      	mov	r0, r5
d0000b92:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0000b94:	f000 f830 	bl	d0000bf8 <_malloc_usable_size_r>
d0000b98:	42a0      	cmp	r0, r4
d0000b9a:	d20f      	bcs.n	d0000bbc <_realloc_r+0x48>
d0000b9c:	4621      	mov	r1, r4
d0000b9e:	4638      	mov	r0, r7
d0000ba0:	f7ff ff8e 	bl	d0000ac0 <_malloc_r>
d0000ba4:	4605      	mov	r5, r0
d0000ba6:	2800      	cmp	r0, #0
d0000ba8:	d0f2      	beq.n	d0000b90 <_realloc_r+0x1c>
d0000baa:	4631      	mov	r1, r6
d0000bac:	4622      	mov	r2, r4
d0000bae:	f7ff ff0f 	bl	d00009d0 <memcpy>
d0000bb2:	4631      	mov	r1, r6
d0000bb4:	4638      	mov	r0, r7
d0000bb6:	f7ff ff33 	bl	d0000a20 <_free_r>
d0000bba:	e7e9      	b.n	d0000b90 <_realloc_r+0x1c>
d0000bbc:	4635      	mov	r5, r6
d0000bbe:	e7e7      	b.n	d0000b90 <_realloc_r+0x1c>

d0000bc0 <_sbrk_r>:
d0000bc0:	b538      	push	{r3, r4, r5, lr}
d0000bc2:	4d06      	ldr	r5, [pc, #24]	; (d0000bdc <_sbrk_r+0x1c>)
d0000bc4:	2300      	movs	r3, #0
d0000bc6:	4604      	mov	r4, r0
d0000bc8:	4608      	mov	r0, r1
d0000bca:	602b      	str	r3, [r5, #0]
d0000bcc:	f7ff fa9a 	bl	d0000104 <_sbrk>
d0000bd0:	1c43      	adds	r3, r0, #1
d0000bd2:	d102      	bne.n	d0000bda <_sbrk_r+0x1a>
d0000bd4:	682b      	ldr	r3, [r5, #0]
d0000bd6:	b103      	cbz	r3, d0000bda <_sbrk_r+0x1a>
d0000bd8:	6023      	str	r3, [r4, #0]
d0000bda:	bd38      	pop	{r3, r4, r5, pc}
d0000bdc:	d0000d3c 	.word	0xd0000d3c

d0000be0 <__malloc_lock>:
d0000be0:	4801      	ldr	r0, [pc, #4]	; (d0000be8 <__malloc_lock+0x8>)
d0000be2:	f000 b811 	b.w	d0000c08 <__retarget_lock_acquire_recursive>
d0000be6:	bf00      	nop
d0000be8:	d0000d44 	.word	0xd0000d44

d0000bec <__malloc_unlock>:
d0000bec:	4801      	ldr	r0, [pc, #4]	; (d0000bf4 <__malloc_unlock+0x8>)
d0000bee:	f000 b80c 	b.w	d0000c0a <__retarget_lock_release_recursive>
d0000bf2:	bf00      	nop
d0000bf4:	d0000d44 	.word	0xd0000d44

d0000bf8 <_malloc_usable_size_r>:
d0000bf8:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0000bfc:	1f18      	subs	r0, r3, #4
d0000bfe:	2b00      	cmp	r3, #0
d0000c00:	bfbc      	itt	lt
d0000c02:	580b      	ldrlt	r3, [r1, r0]
d0000c04:	18c0      	addlt	r0, r0, r3
d0000c06:	4770      	bx	lr

d0000c08 <__retarget_lock_acquire_recursive>:
d0000c08:	4770      	bx	lr

d0000c0a <__retarget_lock_release_recursive>:
d0000c0a:	4770      	bx	lr

d0000c0c <KFMProg>:
d0000c0c:	080f 1000 0014 5011 1200 0002 0302 1d00     .......P........
d0000c1c:	0a80 811d 0008 0000 8009 0881 0080 0200     ................
d0000c2c:	1300 0880 0517 1300 3e80 fa17 1d00 fe81     .........>......
d0000c3c:	f81c 1d00 0281 f51c 3f00 0000 7544 6c61     .........?..Dual
d0000c4c:	5020 616c 0d79 0d0a 000a 0000 7953 746e      Play.......Synt
d0000c5c:	2068 7541 6964 206f 6554 7473 5620 4149     h Audio Test VIA
d0000c6c:	7020 6f72 7267 6d61 203a 6c25 0075 2d23      program: %lu.#-
d0000c7c:	2b30 0020 6c68 004c 6665 4567 4746 3000     0+ .hlL.efgEFG.0
d0000c8c:	3231 3433 3635 3837 4139 4342 4544 0046     123456789ABCDEF.
d0000c9c:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef
	...

Disassembly of section .init:

d0000cb0 <_init>:
d0000cb0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000cb2:	bf00      	nop

Disassembly of section .fini:

d0000cb4 <_fini>:
d0000cb4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000cb6:	bf00      	nop
