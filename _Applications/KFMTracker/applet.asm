
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0000010 <applet_entry>:
d0000010:	f002 bb14 	b.w	d000263c <main>

d0000014 <memset>:
d0000014:	4402      	add	r2, r0
d0000016:	4603      	mov	r3, r0
d0000018:	4293      	cmp	r3, r2
d000001a:	d100      	bne.n	d000001e <memset+0xa>
d000001c:	4770      	bx	lr
d000001e:	f803 1b01 	strb.w	r1, [r3], #1
d0000022:	e7f9      	b.n	d0000018 <memset+0x4>

d0000024 <push_key>:
d0000024:	b178      	cbz	r0, d0000046 <push_key+0x22>
d0000026:	4908      	ldr	r1, [pc, #32]	; (d0000048 <push_key+0x24>)
d0000028:	4b08      	ldr	r3, [pc, #32]	; (d000004c <push_key+0x28>)
d000002a:	b410      	push	{r4}
d000002c:	780a      	ldrb	r2, [r1, #0]
d000002e:	781c      	ldrb	r4, [r3, #0]
d0000030:	1c53      	adds	r3, r2, #1
d0000032:	f003 0307 	and.w	r3, r3, #7
d0000036:	429c      	cmp	r4, r3
d0000038:	d002      	beq.n	d0000040 <push_key+0x1c>
d000003a:	4c05      	ldr	r4, [pc, #20]	; (d0000050 <push_key+0x2c>)
d000003c:	700b      	strb	r3, [r1, #0]
d000003e:	54a0      	strb	r0, [r4, r2]
d0000040:	f85d 4b04 	ldr.w	r4, [sp], #4
d0000044:	4770      	bx	lr
d0000046:	4770      	bx	lr
d0000048:	d000f009 	.word	0xd000f009
d000004c:	d000f008 	.word	0xd000f008
d0000050:	d000f000 	.word	0xd000f000

d0000054 <flush_keys>:
d0000054:	2300      	movs	r3, #0
d0000056:	4803      	ldr	r0, [pc, #12]	; (d0000064 <flush_keys+0x10>)
d0000058:	4903      	ldr	r1, [pc, #12]	; (d0000068 <flush_keys+0x14>)
d000005a:	4a04      	ldr	r2, [pc, #16]	; (d000006c <flush_keys+0x18>)
d000005c:	7003      	strb	r3, [r0, #0]
d000005e:	700b      	strb	r3, [r1, #0]
d0000060:	7013      	strb	r3, [r2, #0]
d0000062:	4770      	bx	lr
d0000064:	d000f009 	.word	0xd000f009
d0000068:	d000f008 	.word	0xd000f008
d000006c:	d000f058 	.word	0xd000f058

d0000070 <is_valid_filename_char>:
d0000070:	f1a0 0320 	sub.w	r3, r0, #32
d0000074:	2b5e      	cmp	r3, #94	; 0x5e
d0000076:	d826      	bhi.n	d00000c6 <is_valid_filename_char+0x56>
d0000078:	285d      	cmp	r0, #93	; 0x5d
d000007a:	d828      	bhi.n	d00000ce <is_valid_filename_char+0x5e>
d000007c:	2821      	cmp	r0, #33	; 0x21
d000007e:	d924      	bls.n	d00000ca <is_valid_filename_char+0x5a>
d0000080:	3822      	subs	r0, #34	; 0x22
d0000082:	283b      	cmp	r0, #59	; 0x3b
d0000084:	d821      	bhi.n	d00000ca <is_valid_filename_char+0x5a>
d0000086:	e8df f000 	tbb	[pc, r0]
d000008a:	201e      	.short	0x201e
d000008c:	20202020 	.word	0x20202020
d0000090:	1e1e2020 	.word	0x1e1e2020
d0000094:	1e20201e 	.word	0x1e20201e
d0000098:	20202020 	.word	0x20202020
d000009c:	20202020 	.word	0x20202020
d00000a0:	1e1e2020 	.word	0x1e1e2020
d00000a4:	1e1e1e1e 	.word	0x1e1e1e1e
d00000a8:	20202020 	.word	0x20202020
d00000ac:	20202020 	.word	0x20202020
d00000b0:	20202020 	.word	0x20202020
d00000b4:	20202020 	.word	0x20202020
d00000b8:	20202020 	.word	0x20202020
d00000bc:	20202020 	.word	0x20202020
d00000c0:	1e202020 	.word	0x1e202020
d00000c4:	1e1e      	.short	0x1e1e
d00000c6:	2000      	movs	r0, #0
d00000c8:	4770      	bx	lr
d00000ca:	2001      	movs	r0, #1
d00000cc:	4770      	bx	lr
d00000ce:	387c      	subs	r0, #124	; 0x7c
d00000d0:	bf18      	it	ne
d00000d2:	2001      	movne	r0, #1
d00000d4:	4770      	bx	lr
d00000d6:	bf00      	nop

d00000d8 <GetKeyAsciiInBuffer>:
d00000d8:	490b      	ldr	r1, [pc, #44]	; (d0000108 <GetKeyAsciiInBuffer+0x30>)
d00000da:	4a0c      	ldr	r2, [pc, #48]	; (d000010c <GetKeyAsciiInBuffer+0x34>)
d00000dc:	780b      	ldrb	r3, [r1, #0]
d00000de:	7812      	ldrb	r2, [r2, #0]
d00000e0:	429a      	cmp	r2, r3
d00000e2:	d00e      	beq.n	d0000102 <GetKeyAsciiInBuffer+0x2a>
d00000e4:	1c5a      	adds	r2, r3, #1
d00000e6:	480a      	ldr	r0, [pc, #40]	; (d0000110 <GetKeyAsciiInBuffer+0x38>)
d00000e8:	f002 0207 	and.w	r2, r2, #7
d00000ec:	5cc0      	ldrb	r0, [r0, r3]
d00000ee:	700a      	strb	r2, [r1, #0]
d00000f0:	4b08      	ldr	r3, [pc, #32]	; (d0000114 <GetKeyAsciiInBuffer+0x3c>)
d00000f2:	781b      	ldrb	r3, [r3, #0]
d00000f4:	b113      	cbz	r3, d00000fc <GetKeyAsciiInBuffer+0x24>
d00000f6:	4b08      	ldr	r3, [pc, #32]	; (d0000118 <GetKeyAsciiInBuffer+0x40>)
d00000f8:	5c18      	ldrb	r0, [r3, r0]
d00000fa:	4770      	bx	lr
d00000fc:	4b07      	ldr	r3, [pc, #28]	; (d000011c <GetKeyAsciiInBuffer+0x44>)
d00000fe:	5c18      	ldrb	r0, [r3, r0]
d0000100:	4770      	bx	lr
d0000102:	2000      	movs	r0, #0
d0000104:	e7f4      	b.n	d00000f0 <GetKeyAsciiInBuffer+0x18>
d0000106:	bf00      	nop
d0000108:	d000f008 	.word	0xd000f008
d000010c:	d000f009 	.word	0xd000f009
d0000110:	d000f000 	.word	0xd000f000
d0000114:	d000f058 	.word	0xd000f058
d0000118:	d00066fc 	.word	0xd00066fc
d000011c:	d000667c 	.word	0xd000667c

d0000120 <EnableKFM>:
d0000120:	4b04      	ldr	r3, [pc, #16]	; (d0000134 <EnableKFM+0x14>)
d0000122:	f8d3 1170 	ldr.w	r1, [r3, #368]	; 0x170
d0000126:	f8d3 2170 	ldr.w	r2, [r3, #368]	; 0x170
d000012a:	680b      	ldr	r3, [r1, #0]
d000012c:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
d0000130:	6013      	str	r3, [r2, #0]
d0000132:	4770      	bx	lr
d0000134:	2001f000 	.word	0x2001f000

d0000138 <initDisplayBuffers>:
d0000138:	4b0c      	ldr	r3, [pc, #48]	; (d000016c <initDisplayBuffers+0x34>)
d000013a:	4a0d      	ldr	r2, [pc, #52]	; (d0000170 <initDisplayBuffers+0x38>)
d000013c:	f8d3 00ec 	ldr.w	r0, [r3, #236]	; 0xec
d0000140:	b410      	push	{r4}
d0000142:	f8d3 40f4 	ldr.w	r4, [r3, #244]	; 0xf4
d0000146:	f8d3 10f4 	ldr.w	r1, [r3, #244]	; 0xf4
d000014a:	6002      	str	r2, [r0, #0]
d000014c:	6022      	str	r2, [r4, #0]
d000014e:	4809      	ldr	r0, [pc, #36]	; (d0000174 <initDisplayBuffers+0x3c>)
d0000150:	680a      	ldr	r2, [r1, #0]
d0000152:	4909      	ldr	r1, [pc, #36]	; (d0000178 <initDisplayBuffers+0x40>)
d0000154:	6002      	str	r2, [r0, #0]
d0000156:	f8d3 00f0 	ldr.w	r0, [r3, #240]	; 0xf0
d000015a:	f8d3 30f0 	ldr.w	r3, [r3, #240]	; 0xf0
d000015e:	4a07      	ldr	r2, [pc, #28]	; (d000017c <initDisplayBuffers+0x44>)
d0000160:	6008      	str	r0, [r1, #0]
d0000162:	681b      	ldr	r3, [r3, #0]
d0000164:	f85d 4b04 	ldr.w	r4, [sp], #4
d0000168:	6013      	str	r3, [r2, #0]
d000016a:	4770      	bx	lr
d000016c:	2001f000 	.word	0x2001f000
d0000170:	d06b2000 	.word	0xd06b2000
d0000174:	d000f0a4 	.word	0xd000f0a4
d0000178:	d000f0a8 	.word	0xd000f0a8
d000017c:	d000f0b0 	.word	0xd000f0b0

d0000180 <ShowBuffer>:
d0000180:	4b09      	ldr	r3, [pc, #36]	; (d00001a8 <ShowBuffer+0x28>)
d0000182:	b140      	cbz	r0, d0000196 <ShowBuffer+0x16>
d0000184:	f8d3 10ec 	ldr.w	r1, [r3, #236]	; 0xec
d0000188:	4808      	ldr	r0, [pc, #32]	; (d00001ac <ShowBuffer+0x2c>)
d000018a:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d000018e:	4a08      	ldr	r2, [pc, #32]	; (d00001b0 <ShowBuffer+0x30>)
d0000190:	6008      	str	r0, [r1, #0]
d0000192:	601a      	str	r2, [r3, #0]
d0000194:	4770      	bx	lr
d0000196:	f8d3 10ec 	ldr.w	r1, [r3, #236]	; 0xec
d000019a:	4805      	ldr	r0, [pc, #20]	; (d00001b0 <ShowBuffer+0x30>)
d000019c:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d00001a0:	4a02      	ldr	r2, [pc, #8]	; (d00001ac <ShowBuffer+0x2c>)
d00001a2:	6008      	str	r0, [r1, #0]
d00001a4:	601a      	str	r2, [r3, #0]
d00001a6:	4770      	bx	lr
d00001a8:	2001f000 	.word	0x2001f000
d00001ac:	d06b2000 	.word	0xd06b2000
d00001b0:	d06d9000 	.word	0xd06d9000

d00001b4 <CaptureDrawBuffer>:
d00001b4:	4a03      	ldr	r2, [pc, #12]	; (d00001c4 <CaptureDrawBuffer+0x10>)
d00001b6:	4b04      	ldr	r3, [pc, #16]	; (d00001c8 <CaptureDrawBuffer+0x14>)
d00001b8:	f8d2 20f4 	ldr.w	r2, [r2, #244]	; 0xf4
d00001bc:	6812      	ldr	r2, [r2, #0]
d00001be:	601a      	str	r2, [r3, #0]
d00001c0:	4770      	bx	lr
d00001c2:	bf00      	nop
d00001c4:	2001f000 	.word	0x2001f000
d00001c8:	d000f0ac 	.word	0xd000f0ac

d00001cc <SetDrawToBackLayer>:
d00001cc:	4b05      	ldr	r3, [pc, #20]	; (d00001e4 <SetDrawToBackLayer+0x18>)
d00001ce:	4a06      	ldr	r2, [pc, #24]	; (d00001e8 <SetDrawToBackLayer+0x1c>)
d00001d0:	f8d3 00f4 	ldr.w	r0, [r3, #244]	; 0xf4
d00001d4:	4905      	ldr	r1, [pc, #20]	; (d00001ec <SetDrawToBackLayer+0x20>)
d00001d6:	6800      	ldr	r0, [r0, #0]
d00001d8:	6812      	ldr	r2, [r2, #0]
d00001da:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d00001de:	6008      	str	r0, [r1, #0]
d00001e0:	601a      	str	r2, [r3, #0]
d00001e2:	4770      	bx	lr
d00001e4:	2001f000 	.word	0x2001f000
d00001e8:	d000f0b0 	.word	0xd000f0b0
d00001ec:	d000f0ac 	.word	0xd000f0ac

d00001f0 <ReleaseDrawBuffer>:
d00001f0:	4b03      	ldr	r3, [pc, #12]	; (d0000200 <ReleaseDrawBuffer+0x10>)
d00001f2:	4a04      	ldr	r2, [pc, #16]	; (d0000204 <ReleaseDrawBuffer+0x14>)
d00001f4:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d00001f8:	6812      	ldr	r2, [r2, #0]
d00001fa:	601a      	str	r2, [r3, #0]
d00001fc:	4770      	bx	lr
d00001fe:	bf00      	nop
d0000200:	2001f000 	.word	0x2001f000
d0000204:	d000f0ac 	.word	0xd000f0ac

d0000208 <stringcmp>:
d0000208:	4402      	add	r2, r0
d000020a:	4282      	cmp	r2, r0
d000020c:	d01b      	beq.n	d0000246 <stringcmp+0x3e>
d000020e:	b410      	push	{r4}
d0000210:	f811 4b01 	ldrb.w	r4, [r1], #1
d0000214:	f810 3b01 	ldrb.w	r3, [r0], #1
d0000218:	42a3      	cmp	r3, r4
d000021a:	d108      	bne.n	d000022e <stringcmp+0x26>
d000021c:	b17b      	cbz	r3, d000023e <stringcmp+0x36>
d000021e:	4282      	cmp	r2, r0
d0000220:	d009      	beq.n	d0000236 <stringcmp+0x2e>
d0000222:	f810 3b01 	ldrb.w	r3, [r0], #1
d0000226:	f811 4b01 	ldrb.w	r4, [r1], #1
d000022a:	42a3      	cmp	r3, r4
d000022c:	d0f6      	beq.n	d000021c <stringcmp+0x14>
d000022e:	1b18      	subs	r0, r3, r4
d0000230:	f85d 4b04 	ldr.w	r4, [sp], #4
d0000234:	4770      	bx	lr
d0000236:	2000      	movs	r0, #0
d0000238:	f85d 4b04 	ldr.w	r4, [sp], #4
d000023c:	4770      	bx	lr
d000023e:	4618      	mov	r0, r3
d0000240:	f85d 4b04 	ldr.w	r4, [sp], #4
d0000244:	4770      	bx	lr
d0000246:	2000      	movs	r0, #0
d0000248:	4770      	bx	lr
d000024a:	bf00      	nop

d000024c <StopChannel>:
d000024c:	4b04      	ldr	r3, [pc, #16]	; (d0000260 <StopChannel+0x14>)
d000024e:	0080      	lsls	r0, r0, #2
d0000250:	4403      	add	r3, r0
d0000252:	685b      	ldr	r3, [r3, #4]
d0000254:	781a      	ldrb	r2, [r3, #0]
d0000256:	f36f 0200 	bfc	r2, #0, #1
d000025a:	701a      	strb	r2, [r3, #0]
d000025c:	4770      	bx	lr
d000025e:	bf00      	nop
d0000260:	2001f170 	.word	0x2001f170

d0000264 <_sbrk>:
d0000264:	4904      	ldr	r1, [pc, #16]	; (d0000278 <_sbrk+0x14>)
d0000266:	4a05      	ldr	r2, [pc, #20]	; (d000027c <_sbrk+0x18>)
d0000268:	680b      	ldr	r3, [r1, #0]
d000026a:	2b00      	cmp	r3, #0
d000026c:	bf08      	it	eq
d000026e:	4613      	moveq	r3, r2
d0000270:	181a      	adds	r2, r3, r0
d0000272:	4618      	mov	r0, r3
d0000274:	600a      	str	r2, [r1, #0]
d0000276:	4770      	bx	lr
d0000278:	d000f00c 	.word	0xd000f00c
d000027c:	d0252b29 	.word	0xd0252b29

d0000280 <compare_entries>:
d0000280:	f890 2084 	ldrb.w	r2, [r0, #132]	; 0x84
d0000284:	f891 3084 	ldrb.w	r3, [r1, #132]	; 0x84
d0000288:	f3c2 1200 	ubfx	r2, r2, #4, #1
d000028c:	f3c3 1300 	ubfx	r3, r3, #4, #1
d0000290:	429a      	cmp	r2, r3
d0000292:	d001      	beq.n	d0000298 <compare_entries+0x18>
d0000294:	1a98      	subs	r0, r3, r2
d0000296:	4770      	bx	lr
d0000298:	f005 bd76 	b.w	d0005d88 <strcasecmp>

d000029c <FileRequestFileStringUpdater.part.0>:
d000029c:	b538      	push	{r3, r4, r5, lr}
d000029e:	4c1f      	ldr	r4, [pc, #124]	; (d000031c <FileRequestFileStringUpdater.part.0+0x80>)
d00002a0:	f7ff ff88 	bl	d00001b4 <CaptureDrawBuffer>
d00002a4:	f7ff ff92 	bl	d00001cc <SetDrawToBackLayer>
d00002a8:	2010      	movs	r0, #16
d00002aa:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d00002ae:	2505      	movs	r5, #5
d00002b0:	4a1b      	ldr	r2, [pc, #108]	; (d0000320 <FileRequestFileStringUpdater.part.0+0x84>)
d00002b2:	2176      	movs	r1, #118	; 0x76
d00002b4:	7018      	strb	r0, [r3, #0]
d00002b6:	200a      	movs	r0, #10
d00002b8:	f8d4 30fc 	ldr.w	r3, [r4, #252]	; 0xfc
d00002bc:	701d      	strb	r5, [r3, #0]
d00002be:	f8d4 314c 	ldr.w	r3, [r4, #332]	; 0x14c
d00002c2:	4798      	blx	r3
d00002c4:	f8d4 314c 	ldr.w	r3, [r4, #332]	; 0x14c
d00002c8:	4a16      	ldr	r2, [pc, #88]	; (d0000324 <FileRequestFileStringUpdater.part.0+0x88>)
d00002ca:	2176      	movs	r1, #118	; 0x76
d00002cc:	200a      	movs	r0, #10
d00002ce:	4798      	blx	r3
d00002d0:	4b15      	ldr	r3, [pc, #84]	; (d0000328 <FileRequestFileStringUpdater.part.0+0x8c>)
d00002d2:	f9b3 3000 	ldrsh.w	r3, [r3]
d00002d6:	3302      	adds	r3, #2
d00002d8:	d003      	beq.n	d00002e2 <FileRequestFileStringUpdater.part.0+0x46>
d00002da:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d00002de:	f7ff bf87 	b.w	d00001f0 <ReleaseDrawBuffer>
d00002e2:	4b12      	ldr	r3, [pc, #72]	; (d000032c <FileRequestFileStringUpdater.part.0+0x90>)
d00002e4:	200a      	movs	r0, #10
d00002e6:	4a12      	ldr	r2, [pc, #72]	; (d0000330 <FileRequestFileStringUpdater.part.0+0x94>)
d00002e8:	781b      	ldrb	r3, [r3, #0]
d00002ea:	b15b      	cbz	r3, d0000304 <FileRequestFileStringUpdater.part.0+0x68>
d00002ec:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d00002f0:	2176      	movs	r1, #118	; 0x76
d00002f2:	7814      	ldrb	r4, [r2, #0]
d00002f4:	4a0f      	ldr	r2, [pc, #60]	; (d0000334 <FileRequestFileStringUpdater.part.0+0x98>)
d00002f6:	eb00 00c4 	add.w	r0, r0, r4, lsl #3
d00002fa:	4798      	blx	r3
d00002fc:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d0000300:	f7ff bf76 	b.w	d00001f0 <ReleaseDrawBuffer>
d0000304:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d0000308:	2176      	movs	r1, #118	; 0x76
d000030a:	7814      	ldrb	r4, [r2, #0]
d000030c:	4a0a      	ldr	r2, [pc, #40]	; (d0000338 <FileRequestFileStringUpdater.part.0+0x9c>)
d000030e:	eb00 00c4 	add.w	r0, r0, r4, lsl #3
d0000312:	4798      	blx	r3
d0000314:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d0000318:	f7ff bf6a 	b.w	d00001f0 <ReleaseDrawBuffer>
d000031c:	2001f000 	.word	0x2001f000
d0000320:	d000677c 	.word	0xd000677c
d0000324:	d0031190 	.word	0xd0031190
d0000328:	d000f01c 	.word	0xd000f01c
d000032c:	d000f024 	.word	0xd000f024
d0000330:	d000f012 	.word	0xd000f012
d0000334:	d00067b4 	.word	0xd00067b4
d0000338:	d00067b8 	.word	0xd00067b8

d000033c <FileRequestFileStringUpdater>:
d000033c:	4b03      	ldr	r3, [pc, #12]	; (d000034c <FileRequestFileStringUpdater+0x10>)
d000033e:	781b      	ldrb	r3, [r3, #0]
d0000340:	2b01      	cmp	r3, #1
d0000342:	d000      	beq.n	d0000346 <FileRequestFileStringUpdater+0xa>
d0000344:	4770      	bx	lr
d0000346:	f7ff bfa9 	b.w	d000029c <FileRequestFileStringUpdater.part.0>
d000034a:	bf00      	nop
d000034c:	d000f011 	.word	0xd000f011

d0000350 <FileRequestFileStringInjector>:
d0000350:	4b0d      	ldr	r3, [pc, #52]	; (d0000388 <FileRequestFileStringInjector+0x38>)
d0000352:	f9b3 3000 	ldrsh.w	r3, [r3]
d0000356:	3302      	adds	r3, #2
d0000358:	d000      	beq.n	d000035c <FileRequestFileStringInjector+0xc>
d000035a:	4770      	bx	lr
d000035c:	2808      	cmp	r0, #8
d000035e:	d009      	beq.n	d0000374 <FileRequestFileStringInjector+0x24>
d0000360:	4b0a      	ldr	r3, [pc, #40]	; (d000038c <FileRequestFileStringInjector+0x3c>)
d0000362:	b410      	push	{r4}
d0000364:	781a      	ldrb	r2, [r3, #0]
d0000366:	4c0a      	ldr	r4, [pc, #40]	; (d0000390 <FileRequestFileStringInjector+0x40>)
d0000368:	1c51      	adds	r1, r2, #1
d000036a:	54a0      	strb	r0, [r4, r2]
d000036c:	7019      	strb	r1, [r3, #0]
d000036e:	f85d 4b04 	ldr.w	r4, [sp], #4
d0000372:	4770      	bx	lr
d0000374:	4a05      	ldr	r2, [pc, #20]	; (d000038c <FileRequestFileStringInjector+0x3c>)
d0000376:	7813      	ldrb	r3, [r2, #0]
d0000378:	b113      	cbz	r3, d0000380 <FileRequestFileStringInjector+0x30>
d000037a:	3b01      	subs	r3, #1
d000037c:	b2db      	uxtb	r3, r3
d000037e:	7013      	strb	r3, [r2, #0]
d0000380:	4a03      	ldr	r2, [pc, #12]	; (d0000390 <FileRequestFileStringInjector+0x40>)
d0000382:	2100      	movs	r1, #0
d0000384:	54d1      	strb	r1, [r2, r3]
d0000386:	4770      	bx	lr
d0000388:	d000f01c 	.word	0xd000f01c
d000038c:	d000f012 	.word	0xd000f012
d0000390:	d0031190 	.word	0xd0031190

d0000394 <ShowFilesListed>:
d0000394:	4b92      	ldr	r3, [pc, #584]	; (d00005e0 <ShowFilesListed+0x24c>)
d0000396:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d000039a:	881e      	ldrh	r6, [r3, #0]
d000039c:	b0a3      	sub	sp, #140	; 0x8c
d000039e:	b1c6      	cbz	r6, d00003d2 <ShowFilesListed+0x3e>
d00003a0:	4d90      	ldr	r5, [pc, #576]	; (d00005e4 <ShowFilesListed+0x250>)
d00003a2:	eb06 1606 	add.w	r6, r6, r6, lsl #4
d00003a6:	f04f 0800 	mov.w	r8, #0
d00003aa:	f240 19ff 	movw	r9, #511	; 0x1ff
d00003ae:	eb05 06c6 	add.w	r6, r5, r6, lsl #3
d00003b2:	462c      	mov	r4, r5
d00003b4:	f8df a250 	ldr.w	sl, [pc, #592]	; d0000608 <ShowFilesListed+0x274>
d00003b8:	f894 3084 	ldrb.w	r3, [r4, #132]	; 0x84
d00003bc:	06da      	lsls	r2, r3, #27
d00003be:	d501      	bpl.n	d00003c4 <ShowFilesListed+0x30>
d00003c0:	45c8      	cmp	r8, r9
d00003c2:	d97c      	bls.n	d00004be <ShowFilesListed+0x12a>
d00003c4:	3488      	adds	r4, #136	; 0x88
d00003c6:	42a6      	cmp	r6, r4
d00003c8:	d1f6      	bne.n	d00003b8 <ShowFilesListed+0x24>
d00003ca:	f5b8 7f00 	cmp.w	r8, #512	; 0x200
d00003ce:	f0c0 80de 	bcc.w	d000058e <ShowFilesListed+0x1fa>
d00003d2:	f7ff feef 	bl	d00001b4 <CaptureDrawBuffer>
d00003d6:	f7ff fef9 	bl	d00001cc <SetDrawToBackLayer>
d00003da:	4b83      	ldr	r3, [pc, #524]	; (d00005e8 <ShowFilesListed+0x254>)
d00003dc:	2010      	movs	r0, #16
d00003de:	4a83      	ldr	r2, [pc, #524]	; (d00005ec <ShowFilesListed+0x258>)
d00003e0:	f8d3 10f8 	ldr.w	r1, [r3, #248]	; 0xf8
d00003e4:	7008      	strb	r0, [r1, #0]
d00003e6:	7812      	ldrb	r2, [r2, #0]
d00003e8:	2a00      	cmp	r2, #0
d00003ea:	f040 8097 	bne.w	d000051c <ShowFilesListed+0x188>
d00003ee:	f8d3 413c 	ldr.w	r4, [r3, #316]	; 0x13c
d00003f2:	f240 12bf 	movw	r2, #447	; 0x1bf
d00003f6:	2383      	movs	r3, #131	; 0x83
d00003f8:	213c      	movs	r1, #60	; 0x3c
d00003fa:	2006      	movs	r0, #6
d00003fc:	47a0      	blx	r4
d00003fe:	4b7c      	ldr	r3, [pc, #496]	; (d00005f0 <ShowFilesListed+0x25c>)
d0000400:	4f7c      	ldr	r7, [pc, #496]	; (d00005f4 <ShowFilesListed+0x260>)
d0000402:	f9b3 3000 	ldrsh.w	r3, [r3]
d0000406:	783a      	ldrb	r2, [r7, #0]
d0000408:	2b00      	cmp	r3, #0
d000040a:	db02      	blt.n	d0000412 <ShowFilesListed+0x7e>
d000040c:	4293      	cmp	r3, r2
d000040e:	f2c0 808e 	blt.w	d000052e <ShowFilesListed+0x19a>
d0000412:	2a00      	cmp	r2, #0
d0000414:	d03b      	beq.n	d000048e <ShowFilesListed+0xfa>
d0000416:	2400      	movs	r4, #0
d0000418:	f8df 81ec 	ldr.w	r8, [pc, #492]	; d0000608 <ShowFilesListed+0x274>
d000041c:	f8df a1f0 	ldr.w	sl, [pc, #496]	; d0000610 <ShowFilesListed+0x27c>
d0000420:	46a3      	mov	fp, r4
d0000422:	4625      	mov	r5, r4
d0000424:	4e70      	ldr	r6, [pc, #448]	; (d00005e8 <ShowFilesListed+0x254>)
d0000426:	f8da 1000 	ldr.w	r1, [sl]
d000042a:	4459      	add	r1, fp
d000042c:	eb01 1101 	add.w	r1, r1, r1, lsl #4
d0000430:	eb08 01c1 	add.w	r1, r8, r1, lsl #3
d0000434:	4608      	mov	r0, r1
d0000436:	9101      	str	r1, [sp, #4]
d0000438:	f005 fcca 	bl	d0005dd0 <strlen>
d000043c:	4681      	mov	r9, r0
d000043e:	9901      	ldr	r1, [sp, #4]
d0000440:	a802      	add	r0, sp, #8
d0000442:	f109 0201 	add.w	r2, r9, #1
d0000446:	f005 fa8f 	bl	d0005968 <memcpy>
d000044a:	ab22      	add	r3, sp, #136	; 0x88
d000044c:	eb0b 110b 	add.w	r1, fp, fp, lsl #4
d0000450:	f04f 0e05 	mov.w	lr, #5
d0000454:	444b      	add	r3, r9
d0000456:	f04f 0c09 	mov.w	ip, #9
d000045a:	aa02      	add	r2, sp, #8
d000045c:	200a      	movs	r0, #10
d000045e:	f803 5c80 	strb.w	r5, [r3, #-128]
d0000462:	313e      	adds	r1, #62	; 0x3e
d0000464:	f89d 3008 	ldrb.w	r3, [sp, #8]
d0000468:	f88d e02d 	strb.w	lr, [sp, #45]	; 0x2d
d000046c:	2b5b      	cmp	r3, #91	; 0x5b
d000046e:	f88d 502e 	strb.w	r5, [sp, #46]	; 0x2e
d0000472:	d011      	beq.n	d0000498 <ShowFilesListed+0x104>
d0000474:	f8d6 30f8 	ldr.w	r3, [r6, #248]	; 0xf8
d0000478:	3401      	adds	r4, #1
d000047a:	f883 c000 	strb.w	ip, [r3]
d000047e:	fa5f fb84 	uxtb.w	fp, r4
d0000482:	f8d6 3148 	ldr.w	r3, [r6, #328]	; 0x148
d0000486:	4798      	blx	r3
d0000488:	783b      	ldrb	r3, [r7, #0]
d000048a:	455b      	cmp	r3, fp
d000048c:	d8cb      	bhi.n	d0000426 <ShowFilesListed+0x92>
d000048e:	f7ff feaf 	bl	d00001f0 <ReleaseDrawBuffer>
d0000492:	b023      	add	sp, #140	; 0x8c
d0000494:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0000498:	f8d6 30f8 	ldr.w	r3, [r6, #248]	; 0xf8
d000049c:	201d      	movs	r0, #29
d000049e:	3401      	adds	r4, #1
d00004a0:	7018      	strb	r0, [r3, #0]
d00004a2:	200a      	movs	r0, #10
d00004a4:	f8d6 3148 	ldr.w	r3, [r6, #328]	; 0x148
d00004a8:	fa5f fb84 	uxtb.w	fp, r4
d00004ac:	4798      	blx	r3
d00004ae:	783b      	ldrb	r3, [r7, #0]
d00004b0:	455b      	cmp	r3, fp
d00004b2:	d8b8      	bhi.n	d0000426 <ShowFilesListed+0x92>
d00004b4:	f7ff fe9c 	bl	d00001f0 <ReleaseDrawBuffer>
d00004b8:	b023      	add	sp, #140	; 0x8c
d00004ba:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00004be:	eb08 1708 	add.w	r7, r8, r8, lsl #4
d00004c2:	4620      	mov	r0, r4
d00004c4:	f005 fc84 	bl	d0005dd0 <strlen>
d00004c8:	2288      	movs	r2, #136	; 0x88
d00004ca:	b2c3      	uxtb	r3, r0
d00004cc:	4621      	mov	r1, r4
d00004ce:	eb0a 00c7 	add.w	r0, sl, r7, lsl #3
d00004d2:	9301      	str	r3, [sp, #4]
d00004d4:	00ff      	lsls	r7, r7, #3
d00004d6:	f005 fa47 	bl	d0005968 <memcpy>
d00004da:	9b01      	ldr	r3, [sp, #4]
d00004dc:	1e7a      	subs	r2, r7, #1
d00004de:	ea4f 1b08 	mov.w	fp, r8, lsl #4
d00004e2:	1e59      	subs	r1, r3, #1
d00004e4:	441f      	add	r7, r3
d00004e6:	b2c8      	uxtb	r0, r1
d00004e8:	18d1      	adds	r1, r2, r3
d00004ea:	b14b      	cbz	r3, d0000500 <ShowFilesListed+0x16c>
d00004ec:	1a09      	subs	r1, r1, r0
d00004ee:	1a3f      	subs	r7, r7, r0
d00004f0:	1c42      	adds	r2, r0, #1
d00004f2:	9301      	str	r3, [sp, #4]
d00004f4:	eb0a 0007 	add.w	r0, sl, r7
d00004f8:	4451      	add	r1, sl
d00004fa:	f005 fa43 	bl	d0005984 <memmove>
d00004fe:	9b01      	ldr	r3, [sp, #4]
d0000500:	44c3      	add	fp, r8
d0000502:	275b      	movs	r7, #91	; 0x5b
d0000504:	205d      	movs	r0, #93	; 0x5d
d0000506:	2100      	movs	r1, #0
d0000508:	eb0a 02cb 	add.w	r2, sl, fp, lsl #3
d000050c:	f80a 703b 	strb.w	r7, [sl, fp, lsl #3]
d0000510:	f108 0801 	add.w	r8, r8, #1
d0000514:	4413      	add	r3, r2
d0000516:	7058      	strb	r0, [r3, #1]
d0000518:	7099      	strb	r1, [r3, #2]
d000051a:	e753      	b.n	d00003c4 <ShowFilesListed+0x30>
d000051c:	f8d3 413c 	ldr.w	r4, [r3, #316]	; 0x13c
d0000520:	f240 12bf 	movw	r2, #447	; 0x1bf
d0000524:	2371      	movs	r3, #113	; 0x71
d0000526:	213c      	movs	r1, #60	; 0x3c
d0000528:	2006      	movs	r0, #6
d000052a:	47a0      	blx	r4
d000052c:	e767      	b.n	d00003fe <ShowFilesListed+0x6a>
d000052e:	eb03 1103 	add.w	r1, r3, r3, lsl #4
d0000532:	4b2d      	ldr	r3, [pc, #180]	; (d00005e8 <ShowFilesListed+0x254>)
d0000534:	2426      	movs	r4, #38	; 0x26
d0000536:	f240 12bf 	movw	r2, #447	; 0x1bf
d000053a:	313c      	adds	r1, #60	; 0x3c
d000053c:	f8d3 00f8 	ldr.w	r0, [r3, #248]	; 0xf8
d0000540:	f8df 80c4 	ldr.w	r8, [pc, #196]	; d0000608 <ShowFilesListed+0x274>
d0000544:	b2c9      	uxtb	r1, r1
d0000546:	7004      	strb	r4, [r0, #0]
d0000548:	2006      	movs	r0, #6
d000054a:	f8d3 413c 	ldr.w	r4, [r3, #316]	; 0x13c
d000054e:	f101 0313 	add.w	r3, r1, #19
d0000552:	47a0      	blx	r4
d0000554:	4b28      	ldr	r3, [pc, #160]	; (d00005f8 <ShowFilesListed+0x264>)
d0000556:	f9b3 3000 	ldrsh.w	r3, [r3]
d000055a:	eb03 1303 	add.w	r3, r3, r3, lsl #4
d000055e:	f818 2033 	ldrb.w	r2, [r8, r3, lsl #3]
d0000562:	00dc      	lsls	r4, r3, #3
d0000564:	2a5b      	cmp	r2, #91	; 0x5b
d0000566:	d02b      	beq.n	d00005c0 <ShowFilesListed+0x22c>
d0000568:	4d24      	ldr	r5, [pc, #144]	; (d00005fc <ShowFilesListed+0x268>)
d000056a:	2240      	movs	r2, #64	; 0x40
d000056c:	2100      	movs	r1, #0
d000056e:	4628      	mov	r0, r5
d0000570:	f7ff fd50 	bl	d0000014 <memset>
d0000574:	eb08 0104 	add.w	r1, r8, r4
d0000578:	4628      	mov	r0, r5
d000057a:	4c21      	ldr	r4, [pc, #132]	; (d0000600 <ShowFilesListed+0x26c>)
d000057c:	f005 fbfa 	bl	d0005d74 <stpcpy>
d0000580:	2100      	movs	r1, #0
d0000582:	1b40      	subs	r0, r0, r5
d0000584:	4b1f      	ldr	r3, [pc, #124]	; (d0000604 <ShowFilesListed+0x270>)
d0000586:	783a      	ldrb	r2, [r7, #0]
d0000588:	7020      	strb	r0, [r4, #0]
d000058a:	7019      	strb	r1, [r3, #0]
d000058c:	e741      	b.n	d0000412 <ShowFilesListed+0x7e>
d000058e:	f240 14ff 	movw	r4, #511	; 0x1ff
d0000592:	4f1d      	ldr	r7, [pc, #116]	; (d0000608 <ShowFilesListed+0x274>)
d0000594:	e003      	b.n	d000059e <ShowFilesListed+0x20a>
d0000596:	3588      	adds	r5, #136	; 0x88
d0000598:	42b5      	cmp	r5, r6
d000059a:	f43f af1a 	beq.w	d00003d2 <ShowFilesListed+0x3e>
d000059e:	f895 3084 	ldrb.w	r3, [r5, #132]	; 0x84
d00005a2:	06db      	lsls	r3, r3, #27
d00005a4:	d4f7      	bmi.n	d0000596 <ShowFilesListed+0x202>
d00005a6:	45a0      	cmp	r8, r4
d00005a8:	d8f5      	bhi.n	d0000596 <ShowFilesListed+0x202>
d00005aa:	eb08 1008 	add.w	r0, r8, r8, lsl #4
d00005ae:	2288      	movs	r2, #136	; 0x88
d00005b0:	4629      	mov	r1, r5
d00005b2:	f108 0801 	add.w	r8, r8, #1
d00005b6:	eb07 00c0 	add.w	r0, r7, r0, lsl #3
d00005ba:	f005 f9d5 	bl	d0005968 <memcpy>
d00005be:	e7ea      	b.n	d0000596 <ShowFilesListed+0x202>
d00005c0:	2240      	movs	r2, #64	; 0x40
d00005c2:	2100      	movs	r1, #0
d00005c4:	4811      	ldr	r0, [pc, #68]	; (d000060c <ShowFilesListed+0x278>)
d00005c6:	f7ff fd25 	bl	d0000014 <memset>
d00005ca:	2201      	movs	r2, #1
d00005cc:	4b0d      	ldr	r3, [pc, #52]	; (d0000604 <ShowFilesListed+0x270>)
d00005ce:	eb08 0104 	add.w	r1, r8, r4
d00005d2:	480e      	ldr	r0, [pc, #56]	; (d000060c <ShowFilesListed+0x278>)
d00005d4:	701a      	strb	r2, [r3, #0]
d00005d6:	f005 fbf3 	bl	d0005dc0 <strcpy>
d00005da:	783a      	ldrb	r2, [r7, #0]
d00005dc:	e719      	b.n	d0000412 <ShowFilesListed+0x7e>
d00005de:	bf00      	nop
d00005e0:	d000f018 	.word	0xd000f018
d00005e4:	d002014c 	.word	0xd002014c
d00005e8:	2001f000 	.word	0x2001f000
d00005ec:	d000f011 	.word	0xd000f011
d00005f0:	d000f01a 	.word	0xd000f01a
d00005f4:	d000ef68 	.word	0xd000ef68
d00005f8:	d000f01c 	.word	0xd000f01c
d00005fc:	d0031190 	.word	0xd0031190
d0000600:	d000f012 	.word	0xd000f012
d0000604:	d000f010 	.word	0xd000f010
d0000608:	d000f0b4 	.word	0xd000f0b4
d000060c:	d0031150 	.word	0xd0031150
d0000610:	d000f014 	.word	0xd000f014

d0000614 <ScrollFileListDirection>:
d0000614:	b430      	push	{r4, r5}
d0000616:	4a0e      	ldr	r2, [pc, #56]	; (d0000650 <ScrollFileListDirection+0x3c>)
d0000618:	f64f 71ff 	movw	r1, #65535	; 0xffff
d000061c:	4b0d      	ldr	r3, [pc, #52]	; (d0000654 <ScrollFileListDirection+0x40>)
d000061e:	4d0e      	ldr	r5, [pc, #56]	; (d0000658 <ScrollFileListDirection+0x44>)
d0000620:	6814      	ldr	r4, [r2, #0]
d0000622:	782d      	ldrb	r5, [r5, #0]
d0000624:	881b      	ldrh	r3, [r3, #0]
d0000626:	4420      	add	r0, r4
d0000628:	4c0c      	ldr	r4, [pc, #48]	; (d000065c <ScrollFileListDirection+0x48>)
d000062a:	1b5b      	subs	r3, r3, r5
d000062c:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d0000630:	4d0b      	ldr	r5, [pc, #44]	; (d0000660 <ScrollFileListDirection+0x4c>)
d0000632:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0000636:	8021      	strh	r1, [r4, #0]
d0000638:	2400      	movs	r4, #0
d000063a:	8029      	strh	r1, [r5, #0]
d000063c:	4283      	cmp	r3, r0
d000063e:	bfa8      	it	ge
d0000640:	4603      	movge	r3, r0
d0000642:	4808      	ldr	r0, [pc, #32]	; (d0000664 <ScrollFileListDirection+0x50>)
d0000644:	7004      	strb	r4, [r0, #0]
d0000646:	6013      	str	r3, [r2, #0]
d0000648:	bc30      	pop	{r4, r5}
d000064a:	f7ff bea3 	b.w	d0000394 <ShowFilesListed>
d000064e:	bf00      	nop
d0000650:	d000f014 	.word	0xd000f014
d0000654:	d000f018 	.word	0xd000f018
d0000658:	d000ef68 	.word	0xd000ef68
d000065c:	d000f01a 	.word	0xd000f01a
d0000660:	d000f01c 	.word	0xd000f01c
d0000664:	d000f010 	.word	0xd000f010

d0000668 <FileListedSelect>:
d0000668:	3807      	subs	r0, #7
d000066a:	b280      	uxth	r0, r0
d000066c:	f5b0 7fdc 	cmp.w	r0, #440	; 0x1b8
d0000670:	d20c      	bcs.n	d000068c <FileListedSelect+0x24>
d0000672:	293c      	cmp	r1, #60	; 0x3c
d0000674:	b530      	push	{r4, r5, lr}
d0000676:	b083      	sub	sp, #12
d0000678:	dc0a      	bgt.n	d0000690 <FileListedSelect+0x28>
d000067a:	4c1c      	ldr	r4, [pc, #112]	; (d00006ec <FileListedSelect+0x84>)
d000067c:	7823      	ldrb	r3, [r4, #0]
d000067e:	2b01      	cmp	r3, #1
d0000680:	d021      	beq.n	d00006c6 <FileListedSelect+0x5e>
d0000682:	b003      	add	sp, #12
d0000684:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0000688:	f7ff be84 	b.w	d0000394 <ShowFilesListed>
d000068c:	f7ff be82 	b.w	d0000394 <ShowFilesListed>
d0000690:	4b17      	ldr	r3, [pc, #92]	; (d00006f0 <FileListedSelect+0x88>)
d0000692:	881b      	ldrh	r3, [r3, #0]
d0000694:	333b      	adds	r3, #59	; 0x3b
d0000696:	428b      	cmp	r3, r1
d0000698:	dbef      	blt.n	d000067a <FileListedSelect+0x12>
d000069a:	4816      	ldr	r0, [pc, #88]	; (d00006f4 <FileListedSelect+0x8c>)
d000069c:	f1a1 033c 	sub.w	r3, r1, #60	; 0x3c
d00006a0:	4a15      	ldr	r2, [pc, #84]	; (d00006f8 <FileListedSelect+0x90>)
d00006a2:	fba0 0303 	umull	r0, r3, r0, r3
d00006a6:	4c11      	ldr	r4, [pc, #68]	; (d00006ec <FileListedSelect+0x84>)
d00006a8:	6812      	ldr	r2, [r2, #0]
d00006aa:	091b      	lsrs	r3, r3, #4
d00006ac:	4d13      	ldr	r5, [pc, #76]	; (d00006fc <FileListedSelect+0x94>)
d00006ae:	4814      	ldr	r0, [pc, #80]	; (d0000700 <FileListedSelect+0x98>)
d00006b0:	441a      	add	r2, r3
d00006b2:	802b      	strh	r3, [r5, #0]
d00006b4:	7823      	ldrb	r3, [r4, #0]
d00006b6:	8002      	strh	r2, [r0, #0]
d00006b8:	2b01      	cmp	r3, #1
d00006ba:	d1e2      	bne.n	d0000682 <FileListedSelect+0x1a>
d00006bc:	9101      	str	r1, [sp, #4]
d00006be:	f7ff fded 	bl	d000029c <FileRequestFileStringUpdater.part.0>
d00006c2:	9901      	ldr	r1, [sp, #4]
d00006c4:	e7da      	b.n	d000067c <FileListedSelect+0x14>
d00006c6:	3970      	subs	r1, #112	; 0x70
d00006c8:	b289      	uxth	r1, r1
d00006ca:	2915      	cmp	r1, #21
d00006cc:	d8d9      	bhi.n	d0000682 <FileListedSelect+0x1a>
d00006ce:	490b      	ldr	r1, [pc, #44]	; (d00006fc <FileListedSelect+0x94>)
d00006d0:	f64f 72fe 	movw	r2, #65534	; 0xfffe
d00006d4:	4b0a      	ldr	r3, [pc, #40]	; (d0000700 <FileListedSelect+0x98>)
d00006d6:	f64f 70ff 	movw	r0, #65535	; 0xffff
d00006da:	801a      	strh	r2, [r3, #0]
d00006dc:	8008      	strh	r0, [r1, #0]
d00006de:	f7ff fcb9 	bl	d0000054 <flush_keys>
d00006e2:	4b08      	ldr	r3, [pc, #32]	; (d0000704 <FileListedSelect+0x9c>)
d00006e4:	4808      	ldr	r0, [pc, #32]	; (d0000708 <FileListedSelect+0xa0>)
d00006e6:	689b      	ldr	r3, [r3, #8]
d00006e8:	4798      	blx	r3
d00006ea:	e7ca      	b.n	d0000682 <FileListedSelect+0x1a>
d00006ec:	d000f011 	.word	0xd000f011
d00006f0:	d000ef6a 	.word	0xd000ef6a
d00006f4:	f0f0f0f1 	.word	0xf0f0f0f1
d00006f8:	d000f014 	.word	0xd000f014
d00006fc:	d000f01a 	.word	0xd000f01a
d0000700:	d000f01c 	.word	0xd000f01c
d0000704:	2001f000 	.word	0x2001f000
d0000708:	d00067bc 	.word	0xd00067bc

d000070c <ShowFileRequest>:
d000070c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0000710:	4b9d      	ldr	r3, [pc, #628]	; (d0000988 <ShowFileRequest+0x27c>)
d0000712:	2203      	movs	r2, #3
d0000714:	4e9d      	ldr	r6, [pc, #628]	; (d000098c <ShowFileRequest+0x280>)
d0000716:	b0a4      	sub	sp, #144	; 0x90
d0000718:	f8df 92bc 	ldr.w	r9, [pc, #700]	; d00009d8 <ShowFileRequest+0x2cc>
d000071c:	2400      	movs	r4, #0
d000071e:	701a      	strb	r2, [r3, #0]
d0000720:	2705      	movs	r7, #5
d0000722:	f889 0000 	strb.w	r0, [r9]
d0000726:	f004 fb3d 	bl	d0004da4 <DisableConfigButtons>
d000072a:	f7ff fd43 	bl	d00001b4 <CaptureDrawBuffer>
d000072e:	f7ff fd4d 	bl	d00001cc <SetDrawToBackLayer>
d0000732:	f7ff fc8f 	bl	d0000054 <flush_keys>
d0000736:	f8d6 10f8 	ldr.w	r1, [r6, #248]	; 0xf8
d000073a:	2387      	movs	r3, #135	; 0x87
d000073c:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0000740:	700f      	strb	r7, [r1, #0]
d0000742:	4620      	mov	r0, r4
d0000744:	211d      	movs	r1, #29
d0000746:	f8d6 513c 	ldr.w	r5, [r6, #316]	; 0x13c
d000074a:	47a8      	blx	r5
d000074c:	4890      	ldr	r0, [pc, #576]	; (d0000990 <ShowFileRequest+0x284>)
d000074e:	f64f 73ff 	movw	r3, #65535	; 0xffff
d0000752:	4a90      	ldr	r2, [pc, #576]	; (d0000994 <ShowFileRequest+0x288>)
d0000754:	7004      	strb	r4, [r0, #0]
d0000756:	4621      	mov	r1, r4
d0000758:	488f      	ldr	r0, [pc, #572]	; (d0000998 <ShowFileRequest+0x28c>)
d000075a:	4d90      	ldr	r5, [pc, #576]	; (d000099c <ShowFileRequest+0x290>)
d000075c:	8003      	strh	r3, [r0, #0]
d000075e:	4890      	ldr	r0, [pc, #576]	; (d00009a0 <ShowFileRequest+0x294>)
d0000760:	6014      	str	r4, [r2, #0]
d0000762:	f44f 3288 	mov.w	r2, #69632	; 0x11000
d0000766:	8003      	strh	r3, [r0, #0]
d0000768:	488e      	ldr	r0, [pc, #568]	; (d00009a4 <ShowFileRequest+0x298>)
d000076a:	802c      	strh	r4, [r5, #0]
d000076c:	f7ff fc52 	bl	d0000014 <memset>
d0000770:	4621      	mov	r1, r4
d0000772:	f44f 3288 	mov.w	r2, #69632	; 0x11000
d0000776:	488c      	ldr	r0, [pc, #560]	; (d00009a8 <ShowFileRequest+0x29c>)
d0000778:	f7ff fc4c 	bl	d0000014 <memset>
d000077c:	6eb3      	ldr	r3, [r6, #104]	; 0x68
d000077e:	a804      	add	r0, sp, #16
d0000780:	4798      	blx	r3
d0000782:	2800      	cmp	r0, #0
d0000784:	f040 80e5 	bne.w	d0000952 <ShowFileRequest+0x246>
d0000788:	4604      	mov	r4, r0
d000078a:	a804      	add	r0, sp, #16
d000078c:	f005 fb20 	bl	d0005dd0 <strlen>
d0000790:	2825      	cmp	r0, #37	; 0x25
d0000792:	d903      	bls.n	d000079c <ShowFileRequest+0x90>
d0000794:	f88d 7035 	strb.w	r7, [sp, #53]	; 0x35
d0000798:	f88d 4036 	strb.w	r4, [sp, #54]	; 0x36
d000079c:	4c7b      	ldr	r4, [pc, #492]	; (d000098c <ShowFileRequest+0x280>)
d000079e:	a904      	add	r1, sp, #16
d00007a0:	2000      	movs	r0, #0
d00007a2:	6f23      	ldr	r3, [r4, #112]	; 0x70
d00007a4:	4798      	blx	r3
d00007a6:	2800      	cmp	r0, #0
d00007a8:	f040 80d3 	bne.w	d0000952 <ShowFileRequest+0x246>
d00007ac:	aa04      	add	r2, sp, #16
d00007ae:	2123      	movs	r1, #35	; 0x23
d00007b0:	2008      	movs	r0, #8
d00007b2:	f003 f87b 	bl	d00038ac <uiFileText>
d00007b6:	882b      	ldrh	r3, [r5, #0]
d00007b8:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d00007bc:	d234      	bcs.n	d0000828 <ShowFileRequest+0x11c>
d00007be:	4e7b      	ldr	r6, [pc, #492]	; (d00009ac <ShowFileRequest+0x2a0>)
d00007c0:	46a0      	mov	r8, r4
d00007c2:	4637      	mov	r7, r6
d00007c4:	e019      	b.n	d00007fa <ShowFileRequest+0xee>
d00007c6:	428b      	cmp	r3, r1
d00007c8:	f000 80d1 	beq.w	d000096e <ShowFileRequest+0x262>
d00007cc:	882c      	ldrh	r4, [r5, #0]
d00007ce:	227f      	movs	r2, #127	; 0x7f
d00007d0:	4b74      	ldr	r3, [pc, #464]	; (d00009a4 <ShowFileRequest+0x298>)
d00007d2:	eb04 1a04 	add.w	sl, r4, r4, lsl #4
d00007d6:	4976      	ldr	r1, [pc, #472]	; (d00009b0 <ShowFileRequest+0x2a4>)
d00007d8:	eb03 0aca 	add.w	sl, r3, sl, lsl #3
d00007dc:	4650      	mov	r0, sl
d00007de:	f005 faff 	bl	d0005de0 <strncpy>
d00007e2:	1c63      	adds	r3, r4, #1
d00007e4:	6832      	ldr	r2, [r6, #0]
d00007e6:	b29b      	uxth	r3, r3
d00007e8:	7a31      	ldrb	r1, [r6, #8]
d00007ea:	f8ca 2080 	str.w	r2, [sl, #128]	; 0x80
d00007ee:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d00007f2:	802b      	strh	r3, [r5, #0]
d00007f4:	f88a 1084 	strb.w	r1, [sl, #132]	; 0x84
d00007f8:	d216      	bcs.n	d0000828 <ShowFileRequest+0x11c>
d00007fa:	2298      	movs	r2, #152	; 0x98
d00007fc:	2100      	movs	r1, #0
d00007fe:	4638      	mov	r0, r7
d0000800:	f7ff fc08 	bl	d0000014 <memset>
d0000804:	4639      	mov	r1, r7
d0000806:	f8d8 3078 	ldr.w	r3, [r8, #120]	; 0x78
d000080a:	2000      	movs	r0, #0
d000080c:	4798      	blx	r3
d000080e:	4a68      	ldr	r2, [pc, #416]	; (d00009b0 <ShowFileRequest+0x2a4>)
d0000810:	f642 612e 	movw	r1, #11822	; 0x2e2e
d0000814:	b940      	cbnz	r0, d0000828 <ShowFileRequest+0x11c>
d0000816:	7db3      	ldrb	r3, [r6, #22]
d0000818:	b133      	cbz	r3, d0000828 <ShowFileRequest+0x11c>
d000081a:	8813      	ldrh	r3, [r2, #0]
d000081c:	2b2e      	cmp	r3, #46	; 0x2e
d000081e:	d1d2      	bne.n	d00007c6 <ShowFileRequest+0xba>
d0000820:	882b      	ldrh	r3, [r5, #0]
d0000822:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d0000826:	d3e8      	bcc.n	d00007fa <ShowFileRequest+0xee>
d0000828:	4b58      	ldr	r3, [pc, #352]	; (d000098c <ShowFileRequest+0x280>)
d000082a:	2000      	movs	r0, #0
d000082c:	6f5b      	ldr	r3, [r3, #116]	; 0x74
d000082e:	4798      	blx	r3
d0000830:	4b60      	ldr	r3, [pc, #384]	; (d00009b4 <ShowFileRequest+0x2a8>)
d0000832:	2288      	movs	r2, #136	; 0x88
d0000834:	8829      	ldrh	r1, [r5, #0]
d0000836:	485b      	ldr	r0, [pc, #364]	; (d00009a4 <ShowFileRequest+0x298>)
d0000838:	f005 f8f7 	bl	d0005a2a <qsort>
d000083c:	f899 3000 	ldrb.w	r3, [r9]
d0000840:	2b00      	cmp	r3, #0
d0000842:	f000 8090 	beq.w	d0000966 <ShowFileRequest+0x25a>
d0000846:	2203      	movs	r2, #3
d0000848:	2033      	movs	r0, #51	; 0x33
d000084a:	4611      	mov	r1, r2
d000084c:	882b      	ldrh	r3, [r5, #0]
d000084e:	4c5a      	ldr	r4, [pc, #360]	; (d00009b8 <ShowFileRequest+0x2ac>)
d0000850:	4293      	cmp	r3, r2
d0000852:	7021      	strb	r1, [r4, #0]
d0000854:	d803      	bhi.n	d000085e <ShowFileRequest+0x152>
d0000856:	eb03 1303 	add.w	r3, r3, r3, lsl #4
d000085a:	3b01      	subs	r3, #1
d000085c:	b298      	uxth	r0, r3
d000085e:	2404      	movs	r4, #4
d0000860:	2506      	movs	r5, #6
d0000862:	4e56      	ldr	r6, [pc, #344]	; (d00009bc <ShowFileRequest+0x2b0>)
d0000864:	2319      	movs	r3, #25
d0000866:	f44f 72a8 	mov.w	r2, #336	; 0x150
d000086a:	211d      	movs	r1, #29
d000086c:	9401      	str	r4, [sp, #4]
d000086e:	9500      	str	r5, [sp, #0]
d0000870:	8030      	strh	r0, [r6, #0]
d0000872:	2000      	movs	r0, #0
d0000874:	f003 f886 	bl	d0003984 <uiDrawBeval>
d0000878:	236a      	movs	r3, #106	; 0x6a
d000087a:	f44f 72e2 	mov.w	r2, #452	; 0x1c4
d000087e:	211d      	movs	r1, #29
d0000880:	2000      	movs	r0, #0
d0000882:	e9cd 5400 	strd	r5, r4, [sp]
d0000886:	f003 f87d 	bl	d0003984 <uiDrawBeval>
d000088a:	f899 3000 	ldrb.w	r3, [r9]
d000088e:	4620      	mov	r0, r4
d0000890:	9501      	str	r5, [sp, #4]
d0000892:	9400      	str	r4, [sp, #0]
d0000894:	2b00      	cmp	r3, #0
d0000896:	d170      	bne.n	d000097a <ShowFileRequest+0x26e>
d0000898:	2349      	movs	r3, #73	; 0x49
d000089a:	f44f 72de 	mov.w	r2, #444	; 0x1bc
d000089e:	213a      	movs	r1, #58	; 0x3a
d00008a0:	f003 f870 	bl	d0003984 <uiDrawBeval>
d00008a4:	2408      	movs	r4, #8
d00008a6:	2519      	movs	r5, #25
d00008a8:	2618      	movs	r6, #24
d00008aa:	2724      	movs	r7, #36	; 0x24
d00008ac:	f7ff fca0 	bl	d00001f0 <ReleaseDrawBuffer>
d00008b0:	f004 fa78 	bl	d0004da4 <DisableConfigButtons>
d00008b4:	f004 fa9a 	bl	d0004dec <DisableMainWindowButtons>
d00008b8:	231d      	movs	r3, #29
d00008ba:	f44f 72e3 	mov.w	r2, #454	; 0x1c6
d00008be:	4940      	ldr	r1, [pc, #256]	; (d00009c0 <ShowFileRequest+0x2b4>)
d00008c0:	4638      	mov	r0, r7
d00008c2:	9600      	str	r6, [sp, #0]
d00008c4:	e9cd 5401 	strd	r5, r4, [sp, #4]
d00008c8:	f003 f9bc 	bl	d0003c44 <CreateButton>
d00008cc:	2134      	movs	r1, #52	; 0x34
d00008ce:	2338      	movs	r3, #56	; 0x38
d00008d0:	f44f 72e3 	mov.w	r2, #454	; 0x1c6
d00008d4:	9101      	str	r1, [sp, #4]
d00008d6:	2023      	movs	r0, #35	; 0x23
d00008d8:	493a      	ldr	r1, [pc, #232]	; (d00009c4 <ShowFileRequest+0x2b8>)
d00008da:	9402      	str	r4, [sp, #8]
d00008dc:	9600      	str	r6, [sp, #0]
d00008de:	f003 f9b1 	bl	d0003c44 <CreateButton>
d00008e2:	236e      	movs	r3, #110	; 0x6e
d00008e4:	f44f 72e3 	mov.w	r2, #454	; 0x1c6
d00008e8:	4937      	ldr	r1, [pc, #220]	; (d00009c8 <ShowFileRequest+0x2bc>)
d00008ea:	9600      	str	r6, [sp, #0]
d00008ec:	2025      	movs	r0, #37	; 0x25
d00008ee:	e9cd 5401 	strd	r5, r4, [sp, #4]
d00008f2:	f003 f9a7 	bl	d0003c44 <CreateButton>
d00008f6:	231d      	movs	r3, #29
d00008f8:	f44f 72d0 	mov.w	r2, #416	; 0x1a0
d00008fc:	4933      	ldr	r1, [pc, #204]	; (d00009cc <ShowFileRequest+0x2c0>)
d00008fe:	9700      	str	r7, [sp, #0]
d0000900:	2026      	movs	r0, #38	; 0x26
d0000902:	e9cd 5401 	strd	r5, r4, [sp, #4]
d0000906:	f003 f99d 	bl	d0003c44 <CreateButton>
d000090a:	214c      	movs	r1, #76	; 0x4c
d000090c:	231d      	movs	r3, #29
d000090e:	f44f 72a9 	mov.w	r2, #338	; 0x152
d0000912:	9100      	str	r1, [sp, #0]
d0000914:	2027      	movs	r0, #39	; 0x27
d0000916:	492e      	ldr	r1, [pc, #184]	; (d00009d0 <ShowFileRequest+0x2c4>)
d0000918:	9402      	str	r4, [sp, #8]
d000091a:	9501      	str	r5, [sp, #4]
d000091c:	f003 f992 	bl	d0003c44 <CreateButton>
d0000920:	4638      	mov	r0, r7
d0000922:	2100      	movs	r1, #0
d0000924:	f003 f9d6 	bl	d0003cd4 <guiRenderButton>
d0000928:	2100      	movs	r1, #0
d000092a:	2023      	movs	r0, #35	; 0x23
d000092c:	f003 f9d2 	bl	d0003cd4 <guiRenderButton>
d0000930:	2100      	movs	r1, #0
d0000932:	2025      	movs	r0, #37	; 0x25
d0000934:	f003 f9ce 	bl	d0003cd4 <guiRenderButton>
d0000938:	2100      	movs	r1, #0
d000093a:	2026      	movs	r0, #38	; 0x26
d000093c:	f003 f9ca 	bl	d0003cd4 <guiRenderButton>
d0000940:	2100      	movs	r1, #0
d0000942:	2027      	movs	r0, #39	; 0x27
d0000944:	f003 f9c6 	bl	d0003cd4 <guiRenderButton>
d0000948:	f7ff fd24 	bl	d0000394 <ShowFilesListed>
d000094c:	b024      	add	sp, #144	; 0x90
d000094e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0000952:	4a20      	ldr	r2, [pc, #128]	; (d00009d4 <ShowFileRequest+0x2c8>)
d0000954:	2123      	movs	r1, #35	; 0x23
d0000956:	2008      	movs	r0, #8
d0000958:	f002 ffa8 	bl	d00038ac <uiFileText>
d000095c:	f899 3000 	ldrb.w	r3, [r9]
d0000960:	2b00      	cmp	r3, #0
d0000962:	f47f af70 	bne.w	d0000846 <ShowFileRequest+0x13a>
d0000966:	2204      	movs	r2, #4
d0000968:	2044      	movs	r0, #68	; 0x44
d000096a:	4611      	mov	r1, r2
d000096c:	e76e      	b.n	d000084c <ShowFileRequest+0x140>
d000096e:	7893      	ldrb	r3, [r2, #2]
d0000970:	2b00      	cmp	r3, #0
d0000972:	f47f af2b 	bne.w	d00007cc <ShowFileRequest+0xc0>
d0000976:	882b      	ldrh	r3, [r5, #0]
d0000978:	e753      	b.n	d0000822 <ShowFileRequest+0x116>
d000097a:	2337      	movs	r3, #55	; 0x37
d000097c:	f44f 72de 	mov.w	r2, #444	; 0x1bc
d0000980:	213a      	movs	r1, #58	; 0x3a
d0000982:	f002 ffff 	bl	d0003984 <uiDrawBeval>
d0000986:	e78d      	b.n	d00008a4 <ShowFileRequest+0x198>
d0000988:	d000f04c 	.word	0xd000f04c
d000098c:	2001f000 	.word	0x2001f000
d0000990:	d000f010 	.word	0xd000f010
d0000994:	d000f014 	.word	0xd000f014
d0000998:	d000f01a 	.word	0xd000f01a
d000099c:	d000f018 	.word	0xd000f018
d00009a0:	d000f01c 	.word	0xd000f01c
d00009a4:	d002014c 	.word	0xd002014c
d00009a8:	d000f0b4 	.word	0xd000f0b4
d00009ac:	d00200b4 	.word	0xd00200b4
d00009b0:	d00200ca 	.word	0xd00200ca
d00009b4:	d0000281 	.word	0xd0000281
d00009b8:	d000ef68 	.word	0xd000ef68
d00009bc:	d000ef6a 	.word	0xd000ef6a
d00009c0:	d00067f0 	.word	0xd00067f0
d00009c4:	d00067f4 	.word	0xd00067f4
d00009c8:	d00067f8 	.word	0xd00067f8
d00009cc:	d00067fc 	.word	0xd00067fc
d00009d0:	d0006800 	.word	0xd0006800
d00009d4:	d00067d8 	.word	0xd00067d8
d00009d8:	d000f011 	.word	0xd000f011

d00009dc <CloseFileRequest>:
d00009dc:	b508      	push	{r3, lr}
d00009de:	2200      	movs	r2, #0
d00009e0:	4b03      	ldr	r3, [pc, #12]	; (d00009f0 <CloseFileRequest+0x14>)
d00009e2:	701a      	strb	r2, [r3, #0]
d00009e4:	f004 f9de 	bl	d0004da4 <DisableConfigButtons>
d00009e8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d00009ec:	f004 ba58 	b.w	d0004ea0 <ShowDefaultHomeConfigPage>
d00009f0:	d000f04c 	.word	0xd000f04c

d00009f4 <CheckDirectorySelect>:
d00009f4:	4b1a      	ldr	r3, [pc, #104]	; (d0000a60 <CheckDirectorySelect+0x6c>)
d00009f6:	7818      	ldrb	r0, [r3, #0]
d00009f8:	b900      	cbnz	r0, d00009fc <CheckDirectorySelect+0x8>
d00009fa:	4770      	bx	lr
d00009fc:	b530      	push	{r4, r5, lr}
d00009fe:	4819      	ldr	r0, [pc, #100]	; (d0000a64 <CheckDirectorySelect+0x70>)
d0000a00:	b091      	sub	sp, #68	; 0x44
d0000a02:	f005 f9e5 	bl	d0005dd0 <strlen>
d0000a06:	3801      	subs	r0, #1
d0000a08:	2800      	cmp	r0, #0
d0000a0a:	dd25      	ble.n	d0000a58 <CheckDirectorySelect+0x64>
d0000a0c:	2200      	movs	r2, #0
d0000a0e:	4d15      	ldr	r5, [pc, #84]	; (d0000a64 <CheckDirectorySelect+0x70>)
d0000a10:	4613      	mov	r3, r2
d0000a12:	3201      	adds	r2, #1
d0000a14:	a910      	add	r1, sp, #64	; 0x40
d0000a16:	18ec      	adds	r4, r5, r3
d0000a18:	4419      	add	r1, r3
d0000a1a:	b2d3      	uxtb	r3, r2
d0000a1c:	7864      	ldrb	r4, [r4, #1]
d0000a1e:	4283      	cmp	r3, r0
d0000a20:	461a      	mov	r2, r3
d0000a22:	f801 4c40 	strb.w	r4, [r1, #-64]
d0000a26:	dbf4      	blt.n	d0000a12 <CheckDirectorySelect+0x1e>
d0000a28:	1e5a      	subs	r2, r3, #1
d0000a2a:	a910      	add	r1, sp, #64	; 0x40
d0000a2c:	4c0e      	ldr	r4, [pc, #56]	; (d0000a68 <CheckDirectorySelect+0x74>)
d0000a2e:	480f      	ldr	r0, [pc, #60]	; (d0000a6c <CheckDirectorySelect+0x78>)
d0000a30:	440a      	add	r2, r1
d0000a32:	440b      	add	r3, r1
d0000a34:	2100      	movs	r1, #0
d0000a36:	f803 1c40 	strb.w	r1, [r3, #-64]
d0000a3a:	f802 1c40 	strb.w	r1, [r2, #-64]
d0000a3e:	4669      	mov	r1, sp
d0000a40:	68a3      	ldr	r3, [r4, #8]
d0000a42:	4798      	blx	r3
d0000a44:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0000a46:	4668      	mov	r0, sp
d0000a48:	4798      	blx	r3
d0000a4a:	4b09      	ldr	r3, [pc, #36]	; (d0000a70 <CheckDirectorySelect+0x7c>)
d0000a4c:	7818      	ldrb	r0, [r3, #0]
d0000a4e:	f7ff fe5d 	bl	d000070c <ShowFileRequest>
d0000a52:	2001      	movs	r0, #1
d0000a54:	b011      	add	sp, #68	; 0x44
d0000a56:	bd30      	pop	{r4, r5, pc}
d0000a58:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0000a5c:	2300      	movs	r3, #0
d0000a5e:	e7e4      	b.n	d0000a2a <CheckDirectorySelect+0x36>
d0000a60:	d000f010 	.word	0xd000f010
d0000a64:	d0031150 	.word	0xd0031150
d0000a68:	2001f000 	.word	0x2001f000
d0000a6c:	d0006808 	.word	0xd0006808
d0000a70:	d000f011 	.word	0xd000f011

d0000a74 <ParentDirectory>:
d0000a74:	b508      	push	{r3, lr}
d0000a76:	4b05      	ldr	r3, [pc, #20]	; (d0000a8c <ParentDirectory+0x18>)
d0000a78:	4805      	ldr	r0, [pc, #20]	; (d0000a90 <ParentDirectory+0x1c>)
d0000a7a:	6e5b      	ldr	r3, [r3, #100]	; 0x64
d0000a7c:	4798      	blx	r3
d0000a7e:	4b05      	ldr	r3, [pc, #20]	; (d0000a94 <ParentDirectory+0x20>)
d0000a80:	7818      	ldrb	r0, [r3, #0]
d0000a82:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d0000a86:	f7ff be41 	b.w	d000070c <ShowFileRequest>
d0000a8a:	bf00      	nop
d0000a8c:	2001f000 	.word	0x2001f000
d0000a90:	d0007928 	.word	0xd0007928
d0000a94:	d000f011 	.word	0xd000f011

d0000a98 <SaveKMD>:
d0000a98:	b510      	push	{r4, lr}
d0000a9a:	4b05      	ldr	r3, [pc, #20]	; (d0000ab0 <SaveKMD+0x18>)
d0000a9c:	4c05      	ldr	r4, [pc, #20]	; (d0000ab4 <SaveKMD+0x1c>)
d0000a9e:	4806      	ldr	r0, [pc, #24]	; (d0000ab8 <SaveKMD+0x20>)
d0000aa0:	4621      	mov	r1, r4
d0000aa2:	689b      	ldr	r3, [r3, #8]
d0000aa4:	4798      	blx	r3
d0000aa6:	4620      	mov	r0, r4
d0000aa8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0000aac:	f001 ba82 	b.w	d0001fb4 <SaveTestSong>
d0000ab0:	2001f000 	.word	0x2001f000
d0000ab4:	d0031190 	.word	0xd0031190
d0000ab8:	d0006824 	.word	0xd0006824

d0000abc <LoadKMD>:
d0000abc:	b510      	push	{r4, lr}
d0000abe:	4b05      	ldr	r3, [pc, #20]	; (d0000ad4 <LoadKMD+0x18>)
d0000ac0:	4c05      	ldr	r4, [pc, #20]	; (d0000ad8 <LoadKMD+0x1c>)
d0000ac2:	4806      	ldr	r0, [pc, #24]	; (d0000adc <LoadKMD+0x20>)
d0000ac4:	4621      	mov	r1, r4
d0000ac6:	689b      	ldr	r3, [r3, #8]
d0000ac8:	4798      	blx	r3
d0000aca:	4620      	mov	r0, r4
d0000acc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0000ad0:	f001 b918 	b.w	d0001d04 <LoadTestSong>
d0000ad4:	2001f000 	.word	0x2001f000
d0000ad8:	d0031190 	.word	0xd0031190
d0000adc:	d0006840 	.word	0xd0006840

d0000ae0 <getNoteLabel>:
d0000ae0:	28ff      	cmp	r0, #255	; 0xff
d0000ae2:	d009      	beq.n	d0000af8 <getNoteLabel+0x18>
d0000ae4:	28fe      	cmp	r0, #254	; 0xfe
d0000ae6:	d009      	beq.n	d0000afc <getNoteLabel+0x1c>
d0000ae8:	2847      	cmp	r0, #71	; 0x47
d0000aea:	d803      	bhi.n	d0000af4 <getNoteLabel+0x14>
d0000aec:	4b04      	ldr	r3, [pc, #16]	; (d0000b00 <getNoteLabel+0x20>)
d0000aee:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d0000af2:	4770      	bx	lr
d0000af4:	4803      	ldr	r0, [pc, #12]	; (d0000b04 <getNoteLabel+0x24>)
d0000af6:	4770      	bx	lr
d0000af8:	4803      	ldr	r0, [pc, #12]	; (d0000b08 <getNoteLabel+0x28>)
d0000afa:	4770      	bx	lr
d0000afc:	4803      	ldr	r0, [pc, #12]	; (d0000b0c <getNoteLabel+0x2c>)
d0000afe:	4770      	bx	lr
d0000b00:	d0251640 	.word	0xd0251640
d0000b04:	d0006864 	.word	0xd0006864
d0000b08:	d0006860 	.word	0xd0006860
d0000b0c:	d000685c 	.word	0xd000685c

d0000b10 <initNoteLabels>:
d0000b10:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0000b14:	f8df a060 	ldr.w	sl, [pc, #96]	; d0000b78 <initNoteLabels+0x68>
d0000b18:	b082      	sub	sp, #8
d0000b1a:	2600      	movs	r6, #0
d0000b1c:	f8df 805c 	ldr.w	r8, [pc, #92]	; d0000b7c <initNoteLabels+0x6c>
d0000b20:	4f13      	ldr	r7, [pc, #76]	; (d0000b70 <initNoteLabels+0x60>)
d0000b22:	f8df 905c 	ldr.w	r9, [pc, #92]	; d0000b80 <initNoteLabels+0x70>
d0000b26:	4d13      	ldr	r5, [pc, #76]	; (d0000b74 <initNoteLabels+0x64>)
d0000b28:	4654      	mov	r4, sl
d0000b2a:	e006      	b.n	d0000b3a <initNoteLabels+0x2a>
d0000b2c:	781b      	ldrb	r3, [r3, #0]
d0000b2e:	3404      	adds	r4, #4
d0000b30:	9600      	str	r6, [sp, #0]
d0000b32:	f005 f8cb 	bl	d0005ccc <sniprintf>
d0000b36:	45a8      	cmp	r8, r5
d0000b38:	d011      	beq.n	d0000b5e <initNoteLabels+0x4e>
d0000b3a:	f855 3b04 	ldr.w	r3, [r5], #4
d0000b3e:	4620      	mov	r0, r4
d0000b40:	463a      	mov	r2, r7
d0000b42:	2104      	movs	r1, #4
d0000b44:	f893 c001 	ldrb.w	ip, [r3, #1]
d0000b48:	f1bc 0f23 	cmp.w	ip, #35	; 0x23
d0000b4c:	d1ee      	bne.n	d0000b2c <initNoteLabels+0x1c>
d0000b4e:	464a      	mov	r2, r9
d0000b50:	9600      	str	r6, [sp, #0]
d0000b52:	f005 f8bb 	bl	d0005ccc <sniprintf>
d0000b56:	45a8      	cmp	r8, r5
d0000b58:	f104 0404 	add.w	r4, r4, #4
d0000b5c:	d1ed      	bne.n	d0000b3a <initNoteLabels+0x2a>
d0000b5e:	3601      	adds	r6, #1
d0000b60:	f10a 0a30 	add.w	sl, sl, #48	; 0x30
d0000b64:	2e06      	cmp	r6, #6
d0000b66:	d1de      	bne.n	d0000b26 <initNoteLabels+0x16>
d0000b68:	b002      	add	sp, #8
d0000b6a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0000b6e:	bf00      	nop
d0000b70:	d0006870 	.word	0xd0006870
d0000b74:	d000ef74 	.word	0xd000ef74
d0000b78:	d0251640 	.word	0xd0251640
d0000b7c:	d000efa4 	.word	0xd000efa4
d0000b80:	d0006868 	.word	0xd0006868

d0000b84 <ClearSong>:
d0000b84:	b570      	push	{r4, r5, r6, lr}
d0000b86:	4d3a      	ldr	r5, [pc, #232]	; (d0000c70 <ClearSong+0xec>)
d0000b88:	2002      	movs	r0, #2
d0000b8a:	4c3a      	ldr	r4, [pc, #232]	; (d0000c74 <ClearSong+0xf0>)
d0000b8c:	f645 0615 	movw	r6, #22549	; 0x5815
d0000b90:	6cab      	ldr	r3, [r5, #72]	; 0x48
d0000b92:	4798      	blx	r3
d0000b94:	4a38      	ldr	r2, [pc, #224]	; (d0000c78 <ClearSong+0xf4>)
d0000b96:	4b39      	ldr	r3, [pc, #228]	; (d0000c7c <ClearSong+0xf8>)
d0000b98:	f504 6102 	add.w	r1, r4, #2080	; 0x820
d0000b9c:	5aa0      	ldrh	r0, [r4, r2]
d0000b9e:	22ff      	movs	r2, #255	; 0xff
d0000ba0:	5ae3      	ldrh	r3, [r4, r3]
d0000ba2:	fb00 f003 	mul.w	r0, r0, r3
d0000ba6:	4b36      	ldr	r3, [pc, #216]	; (d0000c80 <ClearSong+0xfc>)
d0000ba8:	0080      	lsls	r0, r0, #2
d0000baa:	fbb3 f3f0 	udiv	r3, r3, r0
d0000bae:	6ba8      	ldr	r0, [r5, #56]	; 0x38
d0000bb0:	3b01      	subs	r3, #1
d0000bb2:	6006      	str	r6, [r0, #0]
d0000bb4:	6bae      	ldr	r6, [r5, #56]	; 0x38
d0000bb6:	6ba8      	ldr	r0, [r5, #56]	; 0x38
d0000bb8:	f501 3500 	add.w	r5, r1, #131072	; 0x20000
d0000bbc:	6073      	str	r3, [r6, #4]
d0000bbe:	4b31      	ldr	r3, [pc, #196]	; (d0000c84 <ClearSong+0x100>)
d0000bc0:	60c3      	str	r3, [r0, #12]
d0000bc2:	f5a1 6300 	sub.w	r3, r1, #2048	; 0x800
d0000bc6:	e943 2208 	strd	r2, r2, [r3, #-32]
d0000bca:	e943 2206 	strd	r2, r2, [r3, #-24]
d0000bce:	e943 2204 	strd	r2, r2, [r3, #-16]
d0000bd2:	e943 2202 	strd	r2, r2, [r3, #-8]
d0000bd6:	3320      	adds	r3, #32
d0000bd8:	4299      	cmp	r1, r3
d0000bda:	d1f4      	bne.n	d0000bc6 <ClearSong+0x42>
d0000bdc:	f501 6100 	add.w	r1, r1, #2048	; 0x800
d0000be0:	428d      	cmp	r5, r1
d0000be2:	d1ee      	bne.n	d0000bc2 <ClearSong+0x3e>
d0000be4:	2000      	movs	r0, #0
d0000be6:	4925      	ldr	r1, [pc, #148]	; (d0000c7c <ClearSong+0xf8>)
d0000be8:	4d27      	ldr	r5, [pc, #156]	; (d0000c88 <ClearSong+0x104>)
d0000bea:	4603      	mov	r3, r0
d0000bec:	4421      	add	r1, r4
d0000bee:	4a27      	ldr	r2, [pc, #156]	; (d0000c8c <ClearSong+0x108>)
d0000bf0:	5360      	strh	r0, [r4, r5]
d0000bf2:	6013      	str	r3, [r2, #0]
d0000bf4:	7613      	strb	r3, [r2, #24]
d0000bf6:	6053      	str	r3, [r2, #4]
d0000bf8:	7653      	strb	r3, [r2, #25]
d0000bfa:	e9c2 3302 	strd	r3, r3, [r2, #8]
d0000bfe:	e9c2 3304 	strd	r3, r3, [r2, #16]
d0000c02:	321c      	adds	r2, #28
d0000c04:	428a      	cmp	r2, r1
d0000c06:	d1f4      	bne.n	d0000bf2 <ClearSong+0x6e>
d0000c08:	4a21      	ldr	r2, [pc, #132]	; (d0000c90 <ClearSong+0x10c>)
d0000c0a:	2101      	movs	r1, #1
d0000c0c:	4d21      	ldr	r5, [pc, #132]	; (d0000c94 <ClearSong+0x110>)
d0000c0e:	7812      	ldrb	r2, [r2, #0]
d0000c10:	5163      	str	r3, [r4, r5]
d0000c12:	3510      	adds	r5, #16
d0000c14:	4820      	ldr	r0, [pc, #128]	; (d0000c98 <ClearSong+0x114>)
d0000c16:	2a03      	cmp	r2, #3
d0000c18:	4e20      	ldr	r6, [pc, #128]	; (d0000c9c <ClearSong+0x118>)
d0000c1a:	5023      	str	r3, [r4, r0]
d0000c1c:	51a3      	str	r3, [r4, r6]
d0000c1e:	5361      	strh	r1, [r4, r5]
d0000c20:	d100      	bne.n	d0000c24 <ClearSong+0xa0>
d0000c22:	bd70      	pop	{r4, r5, r6, pc}
d0000c24:	f7ff fac6 	bl	d00001b4 <CaptureDrawBuffer>
d0000c28:	f7ff fad0 	bl	d00001cc <SetDrawToBackLayer>
d0000c2c:	5ba2      	ldrh	r2, [r4, r6]
d0000c2e:	213e      	movs	r1, #62	; 0x3e
d0000c30:	2058      	movs	r0, #88	; 0x58
d0000c32:	f002 fe6b 	bl	d000390c <uiTextDrawNumberU>
d0000c36:	f7ff fadb 	bl	d00001f0 <ReleaseDrawBuffer>
d0000c3a:	f7ff fabb 	bl	d00001b4 <CaptureDrawBuffer>
d0000c3e:	f7ff fac5 	bl	d00001cc <SetDrawToBackLayer>
d0000c42:	4b17      	ldr	r3, [pc, #92]	; (d0000ca0 <ClearSong+0x11c>)
d0000c44:	2123      	movs	r1, #35	; 0x23
d0000c46:	2058      	movs	r0, #88	; 0x58
d0000c48:	5ae2      	ldrh	r2, [r4, r3]
d0000c4a:	f002 fe5f 	bl	d000390c <uiTextDrawNumberU>
d0000c4e:	f7ff facf 	bl	d00001f0 <ReleaseDrawBuffer>
d0000c52:	f7ff faaf 	bl	d00001b4 <CaptureDrawBuffer>
d0000c56:	f7ff fab9 	bl	d00001cc <SetDrawToBackLayer>
d0000c5a:	5b62      	ldrh	r2, [r4, r5]
d0000c5c:	2159      	movs	r1, #89	; 0x59
d0000c5e:	2058      	movs	r0, #88	; 0x58
d0000c60:	f002 fe54 	bl	d000390c <uiTextDrawNumberU>
d0000c64:	f7ff fac4 	bl	d00001f0 <ReleaseDrawBuffer>
d0000c68:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0000c6c:	f004 be10 	b.w	d0005890 <ConfigScreenUpdate>
d0000c70:	2001f000 	.word	0x2001f000
d0000c74:	d00311e0 	.word	0xd00311e0
d0000c78:	00020366 	.word	0x00020366
d0000c7c:	00020364 	.word	0x00020364
d0000c80:	000927c0 	.word	0x000927c0
d0000c84:	d0001375 	.word	0xd0001375
d0000c88:	0002037a 	.word	0x0002037a
d0000c8c:	d00511e0 	.word	0xd00511e0
d0000c90:	d000f04c 	.word	0xd000f04c
d0000c94:	00020368 	.word	0x00020368
d0000c98:	0002036c 	.word	0x0002036c
d0000c9c:	00020374 	.word	0x00020374
d0000ca0:	00020376 	.word	0x00020376

d0000ca4 <setTempoSpeed>:
d0000ca4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0000ca8:	4603      	mov	r3, r0
d0000caa:	4d12      	ldr	r5, [pc, #72]	; (d0000cf4 <setTempoSpeed+0x50>)
d0000cac:	4c12      	ldr	r4, [pc, #72]	; (d0000cf8 <setTempoSpeed+0x54>)
d0000cae:	2002      	movs	r0, #2
d0000cb0:	4e12      	ldr	r6, [pc, #72]	; (d0000cfc <setTempoSpeed+0x58>)
d0000cb2:	4f13      	ldr	r7, [pc, #76]	; (d0000d00 <setTempoSpeed+0x5c>)
d0000cb4:	53a9      	strh	r1, [r5, r6]
d0000cb6:	53eb      	strh	r3, [r5, r7]
d0000cb8:	6ca3      	ldr	r3, [r4, #72]	; 0x48
d0000cba:	4798      	blx	r3
d0000cbc:	5be9      	ldrh	r1, [r5, r7]
d0000cbe:	5baa      	ldrh	r2, [r5, r6]
d0000cc0:	f645 0515 	movw	r5, #22549	; 0x5815
d0000cc4:	4b0f      	ldr	r3, [pc, #60]	; (d0000d04 <setTempoSpeed+0x60>)
d0000cc6:	fb02 f201 	mul.w	r2, r2, r1
d0000cca:	6ba0      	ldr	r0, [r4, #56]	; 0x38
d0000ccc:	490e      	ldr	r1, [pc, #56]	; (d0000d08 <setTempoSpeed+0x64>)
d0000cce:	0092      	lsls	r2, r2, #2
d0000cd0:	6005      	str	r5, [r0, #0]
d0000cd2:	6ba6      	ldr	r6, [r4, #56]	; 0x38
d0000cd4:	4d0d      	ldr	r5, [pc, #52]	; (d0000d0c <setTempoSpeed+0x68>)
d0000cd6:	6ba0      	ldr	r0, [r4, #56]	; 0x38
d0000cd8:	7809      	ldrb	r1, [r1, #0]
d0000cda:	fbb3 f3f2 	udiv	r3, r3, r2
d0000cde:	3b01      	subs	r3, #1
d0000ce0:	6073      	str	r3, [r6, #4]
d0000ce2:	60c5      	str	r5, [r0, #12]
d0000ce4:	b121      	cbz	r1, d0000cf0 <setTempoSpeed+0x4c>
d0000ce6:	6ca3      	ldr	r3, [r4, #72]	; 0x48
d0000ce8:	2003      	movs	r0, #3
d0000cea:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0000cee:	4718      	bx	r3
d0000cf0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0000cf4:	d00311e0 	.word	0xd00311e0
d0000cf8:	2001f000 	.word	0x2001f000
d0000cfc:	00020366 	.word	0x00020366
d0000d00:	00020364 	.word	0x00020364
d0000d04:	000927c0 	.word	0x000927c0
d0000d08:	d000f01f 	.word	0xd000f01f
d0000d0c:	d0001375 	.word	0xd0001375

d0000d10 <StartTimer>:
d0000d10:	4b01      	ldr	r3, [pc, #4]	; (d0000d18 <StartTimer+0x8>)
d0000d12:	2003      	movs	r0, #3
d0000d14:	6c9b      	ldr	r3, [r3, #72]	; 0x48
d0000d16:	4718      	bx	r3
d0000d18:	2001f000 	.word	0x2001f000

d0000d1c <StopTimer>:
d0000d1c:	4b01      	ldr	r3, [pc, #4]	; (d0000d24 <StopTimer+0x8>)
d0000d1e:	2002      	movs	r0, #2
d0000d20:	6c9b      	ldr	r3, [r3, #72]	; 0x48
d0000d22:	4718      	bx	r3
d0000d24:	2001f000 	.word	0x2001f000

d0000d28 <ShowSongLength>:
d0000d28:	b508      	push	{r3, lr}
d0000d2a:	f7ff fa43 	bl	d00001b4 <CaptureDrawBuffer>
d0000d2e:	f7ff fa4d 	bl	d00001cc <SetDrawToBackLayer>
d0000d32:	4b05      	ldr	r3, [pc, #20]	; (d0000d48 <ShowSongLength+0x20>)
d0000d34:	4a05      	ldr	r2, [pc, #20]	; (d0000d4c <ShowSongLength+0x24>)
d0000d36:	2159      	movs	r1, #89	; 0x59
d0000d38:	2058      	movs	r0, #88	; 0x58
d0000d3a:	5ad2      	ldrh	r2, [r2, r3]
d0000d3c:	f002 fde6 	bl	d000390c <uiTextDrawNumberU>
d0000d40:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d0000d44:	f7ff ba54 	b.w	d00001f0 <ReleaseDrawBuffer>
d0000d48:	00020378 	.word	0x00020378
d0000d4c:	d00311e0 	.word	0xd00311e0

d0000d50 <SetSongPosition>:
d0000d50:	4b11      	ldr	r3, [pc, #68]	; (d0000d98 <SetSongPosition+0x48>)
d0000d52:	b570      	push	{r4, r5, r6, lr}
d0000d54:	4403      	add	r3, r0
d0000d56:	4c11      	ldr	r4, [pc, #68]	; (d0000d9c <SetSongPosition+0x4c>)
d0000d58:	4e11      	ldr	r6, [pc, #68]	; (d0000da0 <SetSongPosition+0x50>)
d0000d5a:	eb04 0343 	add.w	r3, r4, r3, lsl #1
d0000d5e:	4d11      	ldr	r5, [pc, #68]	; (d0000da4 <SetSongPosition+0x54>)
d0000d60:	53a0      	strh	r0, [r4, r6]
d0000d62:	885b      	ldrh	r3, [r3, #2]
d0000d64:	5363      	strh	r3, [r4, r5]
d0000d66:	f7ff fa25 	bl	d00001b4 <CaptureDrawBuffer>
d0000d6a:	f7ff fa2f 	bl	d00001cc <SetDrawToBackLayer>
d0000d6e:	5ba2      	ldrh	r2, [r4, r6]
d0000d70:	2123      	movs	r1, #35	; 0x23
d0000d72:	2058      	movs	r0, #88	; 0x58
d0000d74:	f002 fdca 	bl	d000390c <uiTextDrawNumberU>
d0000d78:	f7ff fa3a 	bl	d00001f0 <ReleaseDrawBuffer>
d0000d7c:	f7ff fa1a 	bl	d00001b4 <CaptureDrawBuffer>
d0000d80:	f7ff fa24 	bl	d00001cc <SetDrawToBackLayer>
d0000d84:	5b62      	ldrh	r2, [r4, r5]
d0000d86:	213e      	movs	r1, #62	; 0x3e
d0000d88:	2058      	movs	r0, #88	; 0x58
d0000d8a:	f002 fdbf 	bl	d000390c <uiTextDrawNumberU>
d0000d8e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0000d92:	f7ff ba2d 	b.w	d00001f0 <ReleaseDrawBuffer>
d0000d96:	bf00      	nop
d0000d98:	000101bc 	.word	0x000101bc
d0000d9c:	d00311e0 	.word	0xd00311e0
d0000da0:	00020376 	.word	0x00020376
d0000da4:	00020374 	.word	0x00020374

d0000da8 <SetCurrentPatternSelect>:
d0000da8:	b538      	push	{r3, r4, r5, lr}
d0000daa:	4a0b      	ldr	r2, [pc, #44]	; (d0000dd8 <SetCurrentPatternSelect+0x30>)
d0000dac:	4c0b      	ldr	r4, [pc, #44]	; (d0000ddc <SetCurrentPatternSelect+0x34>)
d0000dae:	4b0c      	ldr	r3, [pc, #48]	; (d0000de0 <SetCurrentPatternSelect+0x38>)
d0000db0:	5aa2      	ldrh	r2, [r4, r2]
d0000db2:	4d0c      	ldr	r5, [pc, #48]	; (d0000de4 <SetCurrentPatternSelect+0x3c>)
d0000db4:	4413      	add	r3, r2
d0000db6:	5360      	strh	r0, [r4, r5]
d0000db8:	eb04 0343 	add.w	r3, r4, r3, lsl #1
d0000dbc:	8058      	strh	r0, [r3, #2]
d0000dbe:	f7ff f9f9 	bl	d00001b4 <CaptureDrawBuffer>
d0000dc2:	f7ff fa03 	bl	d00001cc <SetDrawToBackLayer>
d0000dc6:	5b62      	ldrh	r2, [r4, r5]
d0000dc8:	213e      	movs	r1, #62	; 0x3e
d0000dca:	2058      	movs	r0, #88	; 0x58
d0000dcc:	f002 fd9e 	bl	d000390c <uiTextDrawNumberU>
d0000dd0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d0000dd4:	f7ff ba0c 	b.w	d00001f0 <ReleaseDrawBuffer>
d0000dd8:	00020376 	.word	0x00020376
d0000ddc:	d00311e0 	.word	0xd00311e0
d0000de0:	000101bc 	.word	0x000101bc
d0000de4:	00020374 	.word	0x00020374

d0000de8 <SetSongLength>:
d0000de8:	b538      	push	{r3, r4, r5, lr}
d0000dea:	4d08      	ldr	r5, [pc, #32]	; (d0000e0c <SetSongLength+0x24>)
d0000dec:	4c08      	ldr	r4, [pc, #32]	; (d0000e10 <SetSongLength+0x28>)
d0000dee:	5328      	strh	r0, [r5, r4]
d0000df0:	f7ff f9e0 	bl	d00001b4 <CaptureDrawBuffer>
d0000df4:	f7ff f9ea 	bl	d00001cc <SetDrawToBackLayer>
d0000df8:	5b2a      	ldrh	r2, [r5, r4]
d0000dfa:	2159      	movs	r1, #89	; 0x59
d0000dfc:	2058      	movs	r0, #88	; 0x58
d0000dfe:	f002 fd85 	bl	d000390c <uiTextDrawNumberU>
d0000e02:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d0000e06:	f7ff b9f3 	b.w	d00001f0 <ReleaseDrawBuffer>
d0000e0a:	bf00      	nop
d0000e0c:	d00311e0 	.word	0xd00311e0
d0000e10:	00020378 	.word	0x00020378

d0000e14 <doTrackerTicks>:
d0000e14:	4a5e      	ldr	r2, [pc, #376]	; (d0000f90 <doTrackerTicks+0x17c>)
d0000e16:	2100      	movs	r1, #0
d0000e18:	485e      	ldr	r0, [pc, #376]	; (d0000f94 <doTrackerTicks+0x180>)
d0000e1a:	4b5f      	ldr	r3, [pc, #380]	; (d0000f98 <doTrackerTicks+0x184>)
d0000e1c:	f8df c194 	ldr.w	ip, [pc, #404]	; d0000fb4 <doTrackerTicks+0x1a0>
d0000e20:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0000e24:	5814      	ldr	r4, [r2, r0]
d0000e26:	b083      	sub	sp, #12
d0000e28:	4d5c      	ldr	r5, [pc, #368]	; (d0000f9c <doTrackerTicks+0x188>)
d0000e2a:	f240 39ff 	movw	r9, #1023	; 0x3ff
d0000e2e:	fba3 0304 	umull	r0, r3, r3, r4
d0000e32:	485b      	ldr	r0, [pc, #364]	; (d0000fa0 <doTrackerTicks+0x18c>)
d0000e34:	5b57      	ldrh	r7, [r2, r5]
d0000e36:	f04f 0802 	mov.w	r8, #2
d0000e3a:	f023 0e01 	bic.w	lr, r3, #1
d0000e3e:	5812      	ldr	r2, [r2, r0]
d0000e40:	4e58      	ldr	r6, [pc, #352]	; (d0000fa4 <doTrackerTicks+0x190>)
d0000e42:	02ff      	lsls	r7, r7, #11
d0000e44:	eb0e 0353 	add.w	r3, lr, r3, lsr #1
d0000e48:	4d57      	ldr	r5, [pc, #348]	; (d0000fa8 <doTrackerTicks+0x194>)
d0000e4a:	4858      	ldr	r0, [pc, #352]	; (d0000fac <doTrackerTicks+0x198>)
d0000e4c:	eb06 1642 	add.w	r6, r6, r2, lsl #5
d0000e50:	eba4 0e03 	sub.w	lr, r4, r3
d0000e54:	eb05 1542 	add.w	r5, r5, r2, lsl #5
d0000e58:	f100 0428 	add.w	r4, r0, #40	; 0x28
d0000e5c:	9501      	str	r5, [sp, #4]
d0000e5e:	19c2      	adds	r2, r0, r7
d0000e60:	9d01      	ldr	r5, [sp, #4]
d0000e62:	5d93      	ldrb	r3, [r2, r6]
d0000e64:	5d52      	ldrb	r2, [r2, r5]
d0000e66:	f003 030f 	and.w	r3, r3, #15
d0000e6a:	ea4f 1a12 	mov.w	sl, r2, lsr #4
d0000e6e:	f002 0b0f 	and.w	fp, r2, #15
d0000e72:	2b0a      	cmp	r3, #10
d0000e74:	d817      	bhi.n	d0000ea6 <doTrackerTicks+0x92>
d0000e76:	e8df f003 	tbb	[pc, r3]
d0000e7a:	3606      	.short	0x3606
d0000e7c:	1616164c 	.word	0x1616164c
d0000e80:	16161616 	.word	0x16161616
d0000e84:	1e          	.byte	0x1e
d0000e85:	00          	.byte	0x00
d0000e86:	f1be 0f01 	cmp.w	lr, #1
d0000e8a:	d06a      	beq.n	d0000f62 <doTrackerTicks+0x14e>
d0000e8c:	f101 025c 	add.w	r2, r1, #92	; 0x5c
d0000e90:	f1be 0f02 	cmp.w	lr, #2
d0000e94:	eb0c 0282 	add.w	r2, ip, r2, lsl #2
d0000e98:	d04f      	beq.n	d0000f3a <doTrackerTicks+0x126>
d0000e9a:	6853      	ldr	r3, [r2, #4]
d0000e9c:	4d44      	ldr	r5, [pc, #272]	; (d0000fb0 <doTrackerTicks+0x19c>)
d0000e9e:	7822      	ldrb	r2, [r4, #0]
d0000ea0:	f835 2012 	ldrh.w	r2, [r5, r2, lsl #1]
d0000ea4:	611a      	str	r2, [r3, #16]
d0000ea6:	3101      	adds	r1, #1
d0000ea8:	3004      	adds	r0, #4
d0000eaa:	3401      	adds	r4, #1
d0000eac:	2908      	cmp	r1, #8
d0000eae:	d1d6      	bne.n	d0000e5e <doTrackerTicks+0x4a>
d0000eb0:	b003      	add	sp, #12
d0000eb2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0000eb6:	f914 3c08 	ldrsb.w	r3, [r4, #-8]
d0000eba:	ebaa 0a0b 	sub.w	sl, sl, fp
d0000ebe:	f101 025c 	add.w	r2, r1, #92	; 0x5c
d0000ec2:	3101      	adds	r1, #1
d0000ec4:	449a      	add	sl, r3
d0000ec6:	3004      	adds	r0, #4
d0000ec8:	eb0c 0282 	add.w	r2, ip, r2, lsl #2
d0000ecc:	2908      	cmp	r1, #8
d0000ece:	f38a 0a06 	usat	sl, #6, sl
d0000ed2:	f104 0401 	add.w	r4, r4, #1
d0000ed6:	f804 ac09 	strb.w	sl, [r4, #-9]
d0000eda:	ea4f 034a 	mov.w	r3, sl, lsl #1
d0000ede:	6852      	ldr	r2, [r2, #4]
d0000ee0:	6393      	str	r3, [r2, #56]	; 0x38
d0000ee2:	d1bc      	bne.n	d0000e5e <doTrackerTicks+0x4a>
d0000ee4:	e7e4      	b.n	d0000eb0 <doTrackerTicks+0x9c>
d0000ee6:	6803      	ldr	r3, [r0, #0]
d0000ee8:	f101 0a5c 	add.w	sl, r1, #92	; 0x5c
d0000eec:	f24f 65ac 	movw	r5, #63148	; 0xf6ac
d0000ef0:	3101      	adds	r1, #1
d0000ef2:	fb18 3202 	smlabb	r2, r8, r2, r3
d0000ef6:	eb0c 038a 	add.w	r3, ip, sl, lsl #2
d0000efa:	3004      	adds	r0, #4
d0000efc:	3401      	adds	r4, #1
d0000efe:	42aa      	cmp	r2, r5
d0000f00:	685b      	ldr	r3, [r3, #4]
d0000f02:	bfa8      	it	ge
d0000f04:	462a      	movge	r2, r5
d0000f06:	2908      	cmp	r1, #8
d0000f08:	f840 2c04 	str.w	r2, [r0, #-4]
d0000f0c:	611a      	str	r2, [r3, #16]
d0000f0e:	d1a6      	bne.n	d0000e5e <doTrackerTicks+0x4a>
d0000f10:	e7ce      	b.n	d0000eb0 <doTrackerTicks+0x9c>
d0000f12:	6803      	ldr	r3, [r0, #0]
d0000f14:	f101 0a5c 	add.w	sl, r1, #92	; 0x5c
d0000f18:	3101      	adds	r1, #1
d0000f1a:	3004      	adds	r0, #4
d0000f1c:	eba3 0242 	sub.w	r2, r3, r2, lsl #1
d0000f20:	3401      	adds	r4, #1
d0000f22:	eb0c 038a 	add.w	r3, ip, sl, lsl #2
d0000f26:	454a      	cmp	r2, r9
d0000f28:	685b      	ldr	r3, [r3, #4]
d0000f2a:	bfb8      	it	lt
d0000f2c:	464a      	movlt	r2, r9
d0000f2e:	2908      	cmp	r1, #8
d0000f30:	f840 2c04 	str.w	r2, [r0, #-4]
d0000f34:	611a      	str	r2, [r3, #16]
d0000f36:	d192      	bne.n	d0000e5e <doTrackerTicks+0x4a>
d0000f38:	e7ba      	b.n	d0000eb0 <doTrackerTicks+0x9c>
d0000f3a:	f894 a000 	ldrb.w	sl, [r4]
d0000f3e:	3101      	adds	r1, #1
d0000f40:	6853      	ldr	r3, [r2, #4]
d0000f42:	3004      	adds	r0, #4
d0000f44:	44da      	add	sl, fp
d0000f46:	4a1a      	ldr	r2, [pc, #104]	; (d0000fb0 <doTrackerTicks+0x19c>)
d0000f48:	3401      	adds	r4, #1
d0000f4a:	f1ba 0f48 	cmp.w	sl, #72	; 0x48
d0000f4e:	bfa8      	it	ge
d0000f50:	f04f 0a48 	movge.w	sl, #72	; 0x48
d0000f54:	2908      	cmp	r1, #8
d0000f56:	f832 201a 	ldrh.w	r2, [r2, sl, lsl #1]
d0000f5a:	611a      	str	r2, [r3, #16]
d0000f5c:	f47f af7f 	bne.w	d0000e5e <doTrackerTicks+0x4a>
d0000f60:	e7a6      	b.n	d0000eb0 <doTrackerTicks+0x9c>
d0000f62:	7823      	ldrb	r3, [r4, #0]
d0000f64:	f101 025c 	add.w	r2, r1, #92	; 0x5c
d0000f68:	3101      	adds	r1, #1
d0000f6a:	3004      	adds	r0, #4
d0000f6c:	449a      	add	sl, r3
d0000f6e:	eb0c 0382 	add.w	r3, ip, r2, lsl #2
d0000f72:	4a0f      	ldr	r2, [pc, #60]	; (d0000fb0 <doTrackerTicks+0x19c>)
d0000f74:	3401      	adds	r4, #1
d0000f76:	f1ba 0f48 	cmp.w	sl, #72	; 0x48
d0000f7a:	685b      	ldr	r3, [r3, #4]
d0000f7c:	bfa8      	it	ge
d0000f7e:	f04f 0a48 	movge.w	sl, #72	; 0x48
d0000f82:	2908      	cmp	r1, #8
d0000f84:	f832 201a 	ldrh.w	r2, [r2, sl, lsl #1]
d0000f88:	611a      	str	r2, [r3, #16]
d0000f8a:	f47f af68 	bne.w	d0000e5e <doTrackerTicks+0x4a>
d0000f8e:	e78f      	b.n	d0000eb0 <doTrackerTicks+0x9c>
d0000f90:	d00311e0 	.word	0xd00311e0
d0000f94:	00020370 	.word	0x00020370
d0000f98:	aaaaaaab 	.word	0xaaaaaaab
d0000f9c:	00020374 	.word	0x00020374
d0000fa0:	0002036c 	.word	0x0002036c
d0000fa4:	fffdfc06 	.word	0xfffdfc06
d0000fa8:	fffdfc07 	.word	0xfffdfc07
d0000fac:	d00515dc 	.word	0xd00515dc
d0000fb0:	d00068cc 	.word	0xd00068cc
d0000fb4:	2001f000 	.word	0x2001f000

d0000fb8 <processRow>:
d0000fb8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0000fbc:	4bb7      	ldr	r3, [pc, #732]	; (d000129c <processRow+0x2e4>)
d0000fbe:	b083      	sub	sp, #12
d0000fc0:	4db7      	ldr	r5, [pc, #732]	; (d00012a0 <processRow+0x2e8>)
d0000fc2:	4cb8      	ldr	r4, [pc, #736]	; (d00012a4 <processRow+0x2ec>)
d0000fc4:	58ee      	ldr	r6, [r5, r3]
d0000fc6:	1c72      	adds	r2, r6, #1
d0000fc8:	512e      	str	r6, [r5, r4]
d0000fca:	2a3f      	cmp	r2, #63	; 0x3f
d0000fcc:	50ea      	str	r2, [r5, r3]
d0000fce:	f240 80ec 	bls.w	d00011aa <processRow+0x1f2>
d0000fd2:	4ab5      	ldr	r2, [pc, #724]	; (d00012a8 <processRow+0x2f0>)
d0000fd4:	2100      	movs	r1, #0
d0000fd6:	7812      	ldrb	r2, [r2, #0]
d0000fd8:	50e9      	str	r1, [r5, r3]
d0000fda:	2a00      	cmp	r2, #0
d0000fdc:	f000 814b 	beq.w	d0001276 <processRow+0x2be>
d0000fe0:	330e      	adds	r3, #14
d0000fe2:	4ab2      	ldr	r2, [pc, #712]	; (d00012ac <processRow+0x2f4>)
d0000fe4:	5aeb      	ldrh	r3, [r5, r3]
d0000fe6:	5aaa      	ldrh	r2, [r5, r2]
d0000fe8:	429a      	cmp	r2, r3
d0000fea:	f200 814e 	bhi.w	d000128a <processRow+0x2d2>
d0000fee:	4bb0      	ldr	r3, [pc, #704]	; (d00012b0 <processRow+0x2f8>)
d0000ff0:	2100      	movs	r1, #0
d0000ff2:	4ab0      	ldr	r2, [pc, #704]	; (d00012b4 <processRow+0x2fc>)
d0000ff4:	5aeb      	ldrh	r3, [r5, r3]
d0000ff6:	52a9      	strh	r1, [r5, r2]
d0000ff8:	4faf      	ldr	r7, [pc, #700]	; (d00012b8 <processRow+0x300>)
d0000ffa:	ea4f 1b83 	mov.w	fp, r3, lsl #6
d0000ffe:	2400      	movs	r4, #0
d0001000:	e097      	b.n	d0001132 <processRow+0x17a>
d0001002:	4bae      	ldr	r3, [pc, #696]	; (d00012bc <processRow+0x304>)
d0001004:	4aae      	ldr	r2, [pc, #696]	; (d00012c0 <processRow+0x308>)
d0001006:	f813 1008 	ldrb.w	r1, [r3, r8]
d000100a:	f8df 92d8 	ldr.w	r9, [pc, #728]	; d00012e4 <processRow+0x32c>
d000100e:	3901      	subs	r1, #1
d0001010:	4bac      	ldr	r3, [pc, #688]	; (d00012c4 <processRow+0x30c>)
d0001012:	f8df e2d4 	ldr.w	lr, [pc, #724]	; d00012e8 <processRow+0x330>
d0001016:	ebc1 01c1 	rsb	r1, r1, r1, lsl #3
d000101a:	eb05 0181 	add.w	r1, r5, r1, lsl #2
d000101e:	f501 3000 	add.w	r0, r1, #131072	; 0x20000
d0001022:	58cb      	ldr	r3, [r1, r3]
d0001024:	5c8a      	ldrb	r2, [r1, r2]
d0001026:	f851 a009 	ldr.w	sl, [r1, r9]
d000102a:	6800      	ldr	r0, [r0, #0]
d000102c:	f851 100e 	ldr.w	r1, [r1, lr]
d0001030:	9301      	str	r3, [sp, #4]
d0001032:	445e      	add	r6, fp
d0001034:	eb04 06c6 	add.w	r6, r4, r6, lsl #3
d0001038:	eb05 0686 	add.w	r6, r5, r6, lsl #2
d000103c:	f896 e002 	ldrb.w	lr, [r6, #2]
d0001040:	f896 9003 	ldrb.w	r9, [r6, #3]
d0001044:	f00e 060f 	and.w	r6, lr, #15
d0001048:	2e0c      	cmp	r6, #12
d000104a:	f000 80ee 	beq.w	d000122a <processRow+0x272>
d000104e:	2e0e      	cmp	r6, #14
d0001050:	f040 80e5 	bne.w	d000121e <processRow+0x266>
d0001054:	ea4f 1619 	mov.w	r6, r9, lsr #4
d0001058:	f009 090f 	and.w	r9, r9, #15
d000105c:	2e0a      	cmp	r6, #10
d000105e:	f000 80f6 	beq.w	d000124e <processRow+0x296>
d0001062:	2e0b      	cmp	r6, #11
d0001064:	f040 80db 	bne.w	d000121e <processRow+0x266>
d0001068:	f997 e000 	ldrsb.w	lr, [r7]
d000106c:	f104 065c 	add.w	r6, r4, #92	; 0x5c
d0001070:	4b95      	ldr	r3, [pc, #596]	; (d00012c8 <processRow+0x310>)
d0001072:	44f1      	add	r9, lr
d0001074:	eb03 0e86 	add.w	lr, r3, r6, lsl #2
d0001078:	f1b9 0f3f 	cmp.w	r9, #63	; 0x3f
d000107c:	bfa8      	it	ge
d000107e:	f04f 093f 	movge.w	r9, #63	; 0x3f
d0001082:	f887 9000 	strb.w	r9, [r7]
d0001086:	ea4f 0949 	mov.w	r9, r9, lsl #1
d000108a:	f8de e004 	ldr.w	lr, [lr, #4]
d000108e:	f8ce 9038 	str.w	r9, [lr, #56]	; 0x38
d0001092:	f1bc 0ffd 	cmp.w	ip, #253	; 0xfd
d0001096:	d83d      	bhi.n	d0001114 <processRow+0x15c>
d0001098:	f8df c250 	ldr.w	ip, [pc, #592]	; d00012ec <processRow+0x334>
d000109c:	f814 c00c 	ldrb.w	ip, [r4, ip]
d00010a0:	f1bc 0f00 	cmp.w	ip, #0
d00010a4:	d036      	beq.n	d0001114 <processRow+0x15c>
d00010a6:	f8df 9220 	ldr.w	r9, [pc, #544]	; d00012c8 <processRow+0x310>
d00010aa:	44c1      	add	r9, r8
d00010ac:	f8d9 c174 	ldr.w	ip, [r9, #372]	; 0x174
d00010b0:	f1bc 0f00 	cmp.w	ip, #0
d00010b4:	f000 80ec 	beq.w	d0001290 <processRow+0x2d8>
d00010b8:	f8d9 3174 	ldr.w	r3, [r9, #372]	; 0x174
d00010bc:	f04f 0c00 	mov.w	ip, #0
d00010c0:	f8d9 e174 	ldr.w	lr, [r9, #372]	; 0x174
d00010c4:	6218      	str	r0, [r3, #32]
d00010c6:	f8d9 0174 	ldr.w	r0, [r9, #372]	; 0x174
d00010ca:	f8ce 101c 	str.w	r1, [lr, #28]
d00010ce:	f890 e000 	ldrb.w	lr, [r0]
d00010d2:	f8d9 1174 	ldr.w	r1, [r9, #372]	; 0x174
d00010d6:	f362 0e41 	bfi	lr, r2, #1, #1
d00010da:	9b01      	ldr	r3, [sp, #4]
d00010dc:	f8d9 2174 	ldr.w	r2, [r9, #372]	; 0x174
d00010e0:	f880 e000 	strb.w	lr, [r0]
d00010e4:	e9c1 ac0a 	strd	sl, ip, [r1, #40]	; 0x28
d00010e8:	f8c2 c034 	str.w	ip, [r2, #52]	; 0x34
d00010ec:	6313      	str	r3, [r2, #48]	; 0x30
d00010ee:	4b77      	ldr	r3, [pc, #476]	; (d00012cc <processRow+0x314>)
d00010f0:	2200      	movs	r2, #0
d00010f2:	f8d9 c174 	ldr.w	ip, [r9, #372]	; 0x174
d00010f6:	f853 e008 	ldr.w	lr, [r3, r8]
d00010fa:	2300      	movs	r3, #0
d00010fc:	f8d9 0174 	ldr.w	r0, [r9, #372]	; 0x174
d0001100:	f8d9 1174 	ldr.w	r1, [r9, #372]	; 0x174
d0001104:	f8cc e010 	str.w	lr, [ip, #16]
d0001108:	e9c0 2302 	strd	r2, r3, [r0, #8]
d000110c:	780b      	ldrb	r3, [r1, #0]
d000110e:	f043 0301 	orr.w	r3, r3, #1
d0001112:	700b      	strb	r3, [r1, #0]
d0001114:	4b6c      	ldr	r3, [pc, #432]	; (d00012c8 <processRow+0x310>)
d0001116:	3401      	adds	r4, #1
d0001118:	eb03 0686 	add.w	r6, r3, r6, lsl #2
d000111c:	f917 3b01 	ldrsb.w	r3, [r7], #1
d0001120:	2c08      	cmp	r4, #8
d0001122:	6872      	ldr	r2, [r6, #4]
d0001124:	ea4f 0343 	mov.w	r3, r3, lsl #1
d0001128:	6393      	str	r3, [r2, #56]	; 0x38
d000112a:	f000 808d 	beq.w	d0001248 <processRow+0x290>
d000112e:	4b68      	ldr	r3, [pc, #416]	; (d00012d0 <processRow+0x318>)
d0001130:	681e      	ldr	r6, [r3, #0]
d0001132:	eb0b 0306 	add.w	r3, fp, r6
d0001136:	eb04 03c3 	add.w	r3, r4, r3, lsl #3
d000113a:	f815 c023 	ldrb.w	ip, [r5, r3, lsl #2]
d000113e:	f1bc 0fff 	cmp.w	ip, #255	; 0xff
d0001142:	d06f      	beq.n	d0001224 <processRow+0x26c>
d0001144:	4b63      	ldr	r3, [pc, #396]	; (d00012d4 <processRow+0x31c>)
d0001146:	ea4f 0884 	mov.w	r8, r4, lsl #2
d000114a:	4a60      	ldr	r2, [pc, #384]	; (d00012cc <processRow+0x314>)
d000114c:	f833 301c 	ldrh.w	r3, [r3, ip, lsl #1]
d0001150:	f842 3024 	str.w	r3, [r2, r4, lsl #2]
d0001154:	f887 c008 	strb.w	ip, [r7, #8]
d0001158:	eb0b 0306 	add.w	r3, fp, r6
d000115c:	eb04 03c3 	add.w	r3, r4, r3, lsl #3
d0001160:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0001164:	7858      	ldrb	r0, [r3, #1]
d0001166:	2800      	cmp	r0, #0
d0001168:	f43f af4b 	beq.w	d0001002 <processRow+0x4a>
d000116c:	1e41      	subs	r1, r0, #1
d000116e:	4b53      	ldr	r3, [pc, #332]	; (d00012bc <processRow+0x304>)
d0001170:	f8df e17c 	ldr.w	lr, [pc, #380]	; d00012f0 <processRow+0x338>
d0001174:	ebc1 01c1 	rsb	r1, r1, r1, lsl #3
d0001178:	f803 0008 	strb.w	r0, [r3, r8]
d000117c:	4b51      	ldr	r3, [pc, #324]	; (d00012c4 <processRow+0x30c>)
d000117e:	eb05 0181 	add.w	r1, r5, r1, lsl #2
d0001182:	4a4f      	ldr	r2, [pc, #316]	; (d00012c0 <processRow+0x308>)
d0001184:	f8df a15c 	ldr.w	sl, [pc, #348]	; d00012e4 <processRow+0x32c>
d0001188:	58cb      	ldr	r3, [r1, r3]
d000118a:	f501 3000 	add.w	r0, r1, #131072	; 0x20000
d000118e:	f811 e00e 	ldrb.w	lr, [r1, lr]
d0001192:	f8df 9154 	ldr.w	r9, [pc, #340]	; d00012e8 <processRow+0x330>
d0001196:	5c8a      	ldrb	r2, [r1, r2]
d0001198:	f851 a00a 	ldr.w	sl, [r1, sl]
d000119c:	6800      	ldr	r0, [r0, #0]
d000119e:	f851 1009 	ldr.w	r1, [r1, r9]
d00011a2:	9301      	str	r3, [sp, #4]
d00011a4:	f887 e000 	strb.w	lr, [r7]
d00011a8:	e743      	b.n	d0001032 <processRow+0x7a>
d00011aa:	2e00      	cmp	r6, #0
d00011ac:	d16d      	bne.n	d000128a <processRow+0x2d2>
d00011ae:	f8df 8104 	ldr.w	r8, [pc, #260]	; d00012b4 <processRow+0x2fc>
d00011b2:	4b49      	ldr	r3, [pc, #292]	; (d00012d8 <processRow+0x320>)
d00011b4:	f835 1008 	ldrh.w	r1, [r5, r8]
d00011b8:	4a48      	ldr	r2, [pc, #288]	; (d00012dc <processRow+0x324>)
d00011ba:	440b      	add	r3, r1
d00011bc:	4f3c      	ldr	r7, [pc, #240]	; (d00012b0 <processRow+0x2f8>)
d00011be:	7812      	ldrb	r2, [r2, #0]
d00011c0:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d00011c4:	2a03      	cmp	r2, #3
d00011c6:	885b      	ldrh	r3, [r3, #2]
d00011c8:	53eb      	strh	r3, [r5, r7]
d00011ca:	f43f af15 	beq.w	d0000ff8 <processRow+0x40>
d00011ce:	f7fe fff1 	bl	d00001b4 <CaptureDrawBuffer>
d00011d2:	f7fe fffb 	bl	d00001cc <SetDrawToBackLayer>
d00011d6:	5bea      	ldrh	r2, [r5, r7]
d00011d8:	213e      	movs	r1, #62	; 0x3e
d00011da:	2058      	movs	r0, #88	; 0x58
d00011dc:	f002 fb96 	bl	d000390c <uiTextDrawNumberU>
d00011e0:	f7ff f806 	bl	d00001f0 <ReleaseDrawBuffer>
d00011e4:	f7fe ffe6 	bl	d00001b4 <CaptureDrawBuffer>
d00011e8:	f7fe fff0 	bl	d00001cc <SetDrawToBackLayer>
d00011ec:	f835 2008 	ldrh.w	r2, [r5, r8]
d00011f0:	2123      	movs	r1, #35	; 0x23
d00011f2:	2058      	movs	r0, #88	; 0x58
d00011f4:	f002 fb8a 	bl	d000390c <uiTextDrawNumberU>
d00011f8:	f7fe fffa 	bl	d00001f0 <ReleaseDrawBuffer>
d00011fc:	f7fe ffda 	bl	d00001b4 <CaptureDrawBuffer>
d0001200:	f7fe ffe4 	bl	d00001cc <SetDrawToBackLayer>
d0001204:	4b29      	ldr	r3, [pc, #164]	; (d00012ac <processRow+0x2f4>)
d0001206:	2159      	movs	r1, #89	; 0x59
d0001208:	2058      	movs	r0, #88	; 0x58
d000120a:	5aea      	ldrh	r2, [r5, r3]
d000120c:	f002 fb7e 	bl	d000390c <uiTextDrawNumberU>
d0001210:	f7fe ffee 	bl	d00001f0 <ReleaseDrawBuffer>
d0001214:	f004 fb3c 	bl	d0005890 <ConfigScreenUpdate>
d0001218:	5beb      	ldrh	r3, [r5, r7]
d000121a:	592e      	ldr	r6, [r5, r4]
d000121c:	e6ec      	b.n	d0000ff8 <processRow+0x40>
d000121e:	f104 065c 	add.w	r6, r4, #92	; 0x5c
d0001222:	e736      	b.n	d0001092 <processRow+0xda>
d0001224:	ea4f 0884 	mov.w	r8, r4, lsl #2
d0001228:	e796      	b.n	d0001158 <processRow+0x1a0>
d000122a:	f1b9 0f3f 	cmp.w	r9, #63	; 0x3f
d000122e:	d906      	bls.n	d000123e <processRow+0x286>
d0001230:	f04f 0e3f 	mov.w	lr, #63	; 0x3f
d0001234:	f104 065c 	add.w	r6, r4, #92	; 0x5c
d0001238:	f887 e000 	strb.w	lr, [r7]
d000123c:	e729      	b.n	d0001092 <processRow+0xda>
d000123e:	f104 065c 	add.w	r6, r4, #92	; 0x5c
d0001242:	f887 9000 	strb.w	r9, [r7]
d0001246:	e724      	b.n	d0001092 <processRow+0xda>
d0001248:	b003      	add	sp, #12
d000124a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d000124e:	f997 e000 	ldrsb.w	lr, [r7]
d0001252:	f104 065c 	add.w	r6, r4, #92	; 0x5c
d0001256:	4b1c      	ldr	r3, [pc, #112]	; (d00012c8 <processRow+0x310>)
d0001258:	ebae 0909 	sub.w	r9, lr, r9
d000125c:	eb03 0e86 	add.w	lr, r3, r6, lsl #2
d0001260:	ea29 79e9 	bic.w	r9, r9, r9, asr #31
d0001264:	f887 9000 	strb.w	r9, [r7]
d0001268:	ea4f 0949 	mov.w	r9, r9, lsl #1
d000126c:	f8de e004 	ldr.w	lr, [lr, #4]
d0001270:	f8ce 9038 	str.w	r9, [lr, #56]	; 0x38
d0001274:	e70d      	b.n	d0001092 <processRow+0xda>
d0001276:	4a0f      	ldr	r2, [pc, #60]	; (d00012b4 <processRow+0x2fc>)
d0001278:	5aab      	ldrh	r3, [r5, r2]
d000127a:	3301      	adds	r3, #1
d000127c:	b29b      	uxth	r3, r3
d000127e:	52ab      	strh	r3, [r5, r2]
d0001280:	4a0a      	ldr	r2, [pc, #40]	; (d00012ac <processRow+0x2f4>)
d0001282:	5aaa      	ldrh	r2, [r5, r2]
d0001284:	429a      	cmp	r2, r3
d0001286:	f67f aeb2 	bls.w	d0000fee <processRow+0x36>
d000128a:	4b09      	ldr	r3, [pc, #36]	; (d00012b0 <processRow+0x2f8>)
d000128c:	5aeb      	ldrh	r3, [r5, r3]
d000128e:	e6b3      	b.n	d0000ff8 <processRow+0x40>
d0001290:	4b0d      	ldr	r3, [pc, #52]	; (d00012c8 <processRow+0x310>)
d0001292:	4621      	mov	r1, r4
d0001294:	4812      	ldr	r0, [pc, #72]	; (d00012e0 <processRow+0x328>)
d0001296:	689b      	ldr	r3, [r3, #8]
d0001298:	4798      	blx	r3
d000129a:	e728      	b.n	d00010ee <processRow+0x136>
d000129c:	00020368 	.word	0x00020368
d00012a0:	d00311e0 	.word	0xd00311e0
d00012a4:	0002036c 	.word	0x0002036c
d00012a8:	d000f01e 	.word	0xd000f01e
d00012ac:	00020378 	.word	0x00020378
d00012b0:	00020374 	.word	0x00020374
d00012b4:	00020376 	.word	0x00020376
d00012b8:	d00515fc 	.word	0xd00515fc
d00012bc:	d0051615 	.word	0xd0051615
d00012c0:	00020018 	.word	0x00020018
d00012c4:	00020014 	.word	0x00020014
d00012c8:	2001f000 	.word	0x2001f000
d00012cc:	d00515dc 	.word	0xd00515dc
d00012d0:	d005154c 	.word	0xd005154c
d00012d4:	d00068cc 	.word	0xd00068cc
d00012d8:	000101bc 	.word	0x000101bc
d00012dc:	d000f04c 	.word	0xd000f04c
d00012e0:	d0006878 	.word	0xd0006878
d00012e4:	00020010 	.word	0x00020010
d00012e8:	00020008 	.word	0x00020008
d00012ec:	d000ef6c 	.word	0xd000ef6c
d00012f0:	00020019 	.word	0x00020019

d00012f4 <RestartPlayer>:
d00012f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00012f6:	4c15      	ldr	r4, [pc, #84]	; (d000134c <RestartPlayer+0x58>)
d00012f8:	2002      	movs	r0, #2
d00012fa:	f645 0615 	movw	r6, #22549	; 0x5815
d00012fe:	4f14      	ldr	r7, [pc, #80]	; (d0001350 <RestartPlayer+0x5c>)
d0001300:	6ca3      	ldr	r3, [r4, #72]	; 0x48
d0001302:	4798      	blx	r3
d0001304:	4b13      	ldr	r3, [pc, #76]	; (d0001354 <RestartPlayer+0x60>)
d0001306:	4a14      	ldr	r2, [pc, #80]	; (d0001358 <RestartPlayer+0x64>)
d0001308:	2000      	movs	r0, #0
d000130a:	4914      	ldr	r1, [pc, #80]	; (d000135c <RestartPlayer+0x68>)
d000130c:	5a9a      	ldrh	r2, [r3, r2]
d000130e:	5a59      	ldrh	r1, [r3, r1]
d0001310:	6ba5      	ldr	r5, [r4, #56]	; 0x38
d0001312:	fb01 f102 	mul.w	r1, r1, r2
d0001316:	4a12      	ldr	r2, [pc, #72]	; (d0001360 <RestartPlayer+0x6c>)
d0001318:	0089      	lsls	r1, r1, #2
d000131a:	fbb2 f2f1 	udiv	r2, r2, r1
d000131e:	5bd9      	ldrh	r1, [r3, r7]
d0001320:	3a01      	subs	r2, #1
d0001322:	602e      	str	r6, [r5, #0]
d0001324:	6ba6      	ldr	r6, [r4, #56]	; 0x38
d0001326:	6ba5      	ldr	r5, [r4, #56]	; 0x38
d0001328:	6072      	str	r2, [r6, #4]
d000132a:	4a0e      	ldr	r2, [pc, #56]	; (d0001364 <RestartPlayer+0x70>)
d000132c:	4c0e      	ldr	r4, [pc, #56]	; (d0001368 <RestartPlayer+0x74>)
d000132e:	60ea      	str	r2, [r5, #12]
d0001330:	4a0e      	ldr	r2, [pc, #56]	; (d000136c <RestartPlayer+0x78>)
d0001332:	5118      	str	r0, [r3, r4]
d0001334:	3406      	adds	r4, #6
d0001336:	5098      	str	r0, [r3, r2]
d0001338:	320c      	adds	r2, #12
d000133a:	4d0d      	ldr	r5, [pc, #52]	; (d0001370 <RestartPlayer+0x7c>)
d000133c:	5318      	strh	r0, [r3, r4]
d000133e:	5158      	str	r0, [r3, r5]
d0001340:	5299      	strh	r1, [r3, r2]
d0001342:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0001346:	f7ff be37 	b.w	d0000fb8 <processRow>
d000134a:	bf00      	nop
d000134c:	2001f000 	.word	0x2001f000
d0001350:	0002037a 	.word	0x0002037a
d0001354:	d00311e0 	.word	0xd00311e0
d0001358:	00020364 	.word	0x00020364
d000135c:	00020366 	.word	0x00020366
d0001360:	000927c0 	.word	0x000927c0
d0001364:	d0001375 	.word	0xd0001375
d0001368:	00020370 	.word	0x00020370
d000136c:	00020368 	.word	0x00020368
d0001370:	0002036c 	.word	0x0002036c

d0001374 <PlayerCIA_ISR>:
d0001374:	4a0e      	ldr	r2, [pc, #56]	; (d00013b0 <PlayerCIA_ISR+0x3c>)
d0001376:	490f      	ldr	r1, [pc, #60]	; (d00013b4 <PlayerCIA_ISR+0x40>)
d0001378:	480f      	ldr	r0, [pc, #60]	; (d00013b8 <PlayerCIA_ISR+0x44>)
d000137a:	5853      	ldr	r3, [r2, r1]
d000137c:	5a10      	ldrh	r0, [r2, r0]
d000137e:	3301      	adds	r3, #1
d0001380:	4283      	cmp	r3, r0
d0001382:	b510      	push	{r4, lr}
d0001384:	5053      	str	r3, [r2, r1]
d0001386:	d30f      	bcc.n	d00013a8 <PlayerCIA_ISR+0x34>
d0001388:	2300      	movs	r3, #0
d000138a:	5053      	str	r3, [r2, r1]
d000138c:	f7ff fe14 	bl	d0000fb8 <processRow>
d0001390:	4b0a      	ldr	r3, [pc, #40]	; (d00013bc <PlayerCIA_ISR+0x48>)
d0001392:	4c0b      	ldr	r4, [pc, #44]	; (d00013c0 <PlayerCIA_ISR+0x4c>)
d0001394:	699b      	ldr	r3, [r3, #24]
d0001396:	4798      	blx	r3
d0001398:	4a0a      	ldr	r2, [pc, #40]	; (d00013c4 <PlayerCIA_ISR+0x50>)
d000139a:	490b      	ldr	r1, [pc, #44]	; (d00013c8 <PlayerCIA_ISR+0x54>)
d000139c:	6813      	ldr	r3, [r2, #0]
d000139e:	6020      	str	r0, [r4, #0]
d00013a0:	1ac3      	subs	r3, r0, r3
d00013a2:	6010      	str	r0, [r2, #0]
d00013a4:	600b      	str	r3, [r1, #0]
d00013a6:	bd10      	pop	{r4, pc}
d00013a8:	f7ff fd34 	bl	d0000e14 <doTrackerTicks>
d00013ac:	e7f0      	b.n	d0001390 <PlayerCIA_ISR+0x1c>
d00013ae:	bf00      	nop
d00013b0:	d00311e0 	.word	0xd00311e0
d00013b4:	00020370 	.word	0x00020370
d00013b8:	00020366 	.word	0x00020366
d00013bc:	2001f000 	.word	0x2001f000
d00013c0:	d0251760 	.word	0xd0251760
d00013c4:	d0051610 	.word	0xd0051610
d00013c8:	d0051634 	.word	0xd0051634

d00013cc <initKFMSong>:
d00013cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00013ce:	491b      	ldr	r1, [pc, #108]	; (d000143c <initKFMSong+0x70>)
d00013d0:	2500      	movs	r5, #0
d00013d2:	4c1b      	ldr	r4, [pc, #108]	; (d0001440 <initKFMSong+0x74>)
d00013d4:	f04f 3201 	mov.w	r2, #16843009	; 0x1010101
d00013d8:	4e1a      	ldr	r6, [pc, #104]	; (d0001444 <initKFMSong+0x78>)
d00013da:	2002      	movs	r0, #2
d00013dc:	7025      	strb	r5, [r4, #0]
d00013de:	700d      	strb	r5, [r1, #0]
d00013e0:	4c19      	ldr	r4, [pc, #100]	; (d0001448 <initKFMSong+0x7c>)
d00013e2:	4f1a      	ldr	r7, [pc, #104]	; (d000144c <initKFMSong+0x80>)
d00013e4:	491a      	ldr	r1, [pc, #104]	; (d0001450 <initKFMSong+0x84>)
d00013e6:	4b1b      	ldr	r3, [pc, #108]	; (d0001454 <initKFMSong+0x88>)
d00013e8:	e9c3 2200 	strd	r2, r2, [r3]
d00013ec:	6cb3      	ldr	r3, [r6, #72]	; 0x48
d00013ee:	51e1      	str	r1, [r4, r7]
d00013f0:	4798      	blx	r3
d00013f2:	4b19      	ldr	r3, [pc, #100]	; (d0001458 <initKFMSong+0x8c>)
d00013f4:	5be1      	ldrh	r1, [r4, r7]
d00013f6:	f645 0c15 	movw	ip, #22549	; 0x5815
d00013fa:	5ae2      	ldrh	r2, [r4, r3]
d00013fc:	4b17      	ldr	r3, [pc, #92]	; (d000145c <initKFMSong+0x90>)
d00013fe:	fb02 f201 	mul.w	r2, r2, r1
d0001402:	6bb0      	ldr	r0, [r6, #56]	; 0x38
d0001404:	4916      	ldr	r1, [pc, #88]	; (d0001460 <initKFMSong+0x94>)
d0001406:	0092      	lsls	r2, r2, #2
d0001408:	6bb7      	ldr	r7, [r6, #56]	; 0x38
d000140a:	5a61      	ldrh	r1, [r4, r1]
d000140c:	fbb3 f3f2 	udiv	r3, r3, r2
d0001410:	3b01      	subs	r3, #1
d0001412:	6bb2      	ldr	r2, [r6, #56]	; 0x38
d0001414:	f8c0 c000 	str.w	ip, [r0]
d0001418:	607b      	str	r3, [r7, #4]
d000141a:	4812      	ldr	r0, [pc, #72]	; (d0001464 <initKFMSong+0x98>)
d000141c:	4b12      	ldr	r3, [pc, #72]	; (d0001468 <initKFMSong+0x9c>)
d000141e:	60d0      	str	r0, [r2, #12]
d0001420:	4e12      	ldr	r6, [pc, #72]	; (d000146c <initKFMSong+0xa0>)
d0001422:	50e5      	str	r5, [r4, r3]
d0001424:	3304      	adds	r3, #4
d0001426:	4812      	ldr	r0, [pc, #72]	; (d0001470 <initKFMSong+0xa4>)
d0001428:	4a12      	ldr	r2, [pc, #72]	; (d0001474 <initKFMSong+0xa8>)
d000142a:	51a5      	str	r5, [r4, r6]
d000142c:	5025      	str	r5, [r4, r0]
d000142e:	52a5      	strh	r5, [r4, r2]
d0001430:	52e1      	strh	r1, [r4, r3]
d0001432:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0001436:	f7ff bdbf 	b.w	d0000fb8 <processRow>
d000143a:	bf00      	nop
d000143c:	d000f01e 	.word	0xd000f01e
d0001440:	d000f01f 	.word	0xd000f01f
d0001444:	2001f000 	.word	0x2001f000
d0001448:	d00311e0 	.word	0xd00311e0
d000144c:	00020364 	.word	0x00020364
d0001450:	00060096 	.word	0x00060096
d0001454:	d000ef6c 	.word	0xd000ef6c
d0001458:	00020366 	.word	0x00020366
d000145c:	000927c0 	.word	0x000927c0
d0001460:	0002037a 	.word	0x0002037a
d0001464:	d0001375 	.word	0xd0001375
d0001468:	00020370 	.word	0x00020370
d000146c:	00020368 	.word	0x00020368
d0001470:	0002036c 	.word	0x0002036c
d0001474:	00020376 	.word	0x00020376

d0001478 <PlaceNote>:
d0001478:	4b18      	ldr	r3, [pc, #96]	; (d00014dc <PlaceNote+0x64>)
d000147a:	7819      	ldrb	r1, [r3, #0]
d000147c:	eb01 03c1 	add.w	r3, r1, r1, lsl #3
d0001480:	eb01 0343 	add.w	r3, r1, r3, lsl #1
d0001484:	eb03 03c3 	add.w	r3, r3, r3, lsl #3
d0001488:	f3c3 0246 	ubfx	r2, r3, #1, #7
d000148c:	ea42 13c3 	orr.w	r3, r2, r3, lsl #7
d0001490:	b2db      	uxtb	r3, r3
d0001492:	2b2a      	cmp	r3, #42	; 0x2a
d0001494:	d81b      	bhi.n	d00014ce <PlaceNote+0x56>
d0001496:	4a12      	ldr	r2, [pc, #72]	; (d00014e0 <PlaceNote+0x68>)
d0001498:	28ff      	cmp	r0, #255	; 0xff
d000149a:	4b12      	ldr	r3, [pc, #72]	; (d00014e4 <PlaceNote+0x6c>)
d000149c:	fba2 2101 	umull	r2, r1, r2, r1
d00014a0:	4a11      	ldr	r2, [pc, #68]	; (d00014e8 <PlaceNote+0x70>)
d00014a2:	b430      	push	{r4, r5}
d00014a4:	4c11      	ldr	r4, [pc, #68]	; (d00014ec <PlaceNote+0x74>)
d00014a6:	781b      	ldrb	r3, [r3, #0]
d00014a8:	4d11      	ldr	r5, [pc, #68]	; (d00014f0 <PlaceNote+0x78>)
d00014aa:	eb03 0191 	add.w	r1, r3, r1, lsr #2
d00014ae:	5b14      	ldrh	r4, [r2, r4]
d00014b0:	5953      	ldr	r3, [r2, r5]
d00014b2:	eb03 1384 	add.w	r3, r3, r4, lsl #6
d00014b6:	d00b      	beq.n	d00014d0 <PlaceNote+0x58>
d00014b8:	eb01 01c3 	add.w	r1, r1, r3, lsl #3
d00014bc:	4c0d      	ldr	r4, [pc, #52]	; (d00014f4 <PlaceNote+0x7c>)
d00014be:	eb02 0381 	add.w	r3, r2, r1, lsl #2
d00014c2:	7824      	ldrb	r4, [r4, #0]
d00014c4:	f802 0021 	strb.w	r0, [r2, r1, lsl #2]
d00014c8:	705c      	strb	r4, [r3, #1]
d00014ca:	bc30      	pop	{r4, r5}
d00014cc:	4770      	bx	lr
d00014ce:	4770      	bx	lr
d00014d0:	eb01 01c3 	add.w	r1, r1, r3, lsl #3
d00014d4:	bc30      	pop	{r4, r5}
d00014d6:	f842 0021 	str.w	r0, [r2, r1, lsl #2]
d00014da:	4770      	bx	lr
d00014dc:	d000f041 	.word	0xd000f041
d00014e0:	aaaaaaab 	.word	0xaaaaaaab
d00014e4:	d000f040 	.word	0xd000f040
d00014e8:	d00311e0 	.word	0xd00311e0
d00014ec:	00020374 	.word	0x00020374
d00014f0:	0002036c 	.word	0x0002036c
d00014f4:	d000eff8 	.word	0xd000eff8

d00014f8 <PlaceCommand>:
d00014f8:	4b13      	ldr	r3, [pc, #76]	; (d0001548 <PlaceCommand+0x50>)
d00014fa:	7819      	ldrb	r1, [r3, #0]
d00014fc:	eb01 03c1 	add.w	r3, r1, r1, lsl #3
d0001500:	eb01 0343 	add.w	r3, r1, r3, lsl #1
d0001504:	eb03 03c3 	add.w	r3, r3, r3, lsl #3
d0001508:	3b01      	subs	r3, #1
d000150a:	f3c3 0246 	ubfx	r2, r3, #1, #7
d000150e:	ea42 13c3 	orr.w	r3, r2, r3, lsl #7
d0001512:	b2db      	uxtb	r3, r3
d0001514:	2b2a      	cmp	r3, #42	; 0x2a
d0001516:	d900      	bls.n	d000151a <PlaceCommand+0x22>
d0001518:	4770      	bx	lr
d000151a:	b470      	push	{r4, r5, r6}
d000151c:	4b0b      	ldr	r3, [pc, #44]	; (d000154c <PlaceCommand+0x54>)
d000151e:	4e0c      	ldr	r6, [pc, #48]	; (d0001550 <PlaceCommand+0x58>)
d0001520:	4d0c      	ldr	r5, [pc, #48]	; (d0001554 <PlaceCommand+0x5c>)
d0001522:	4c0d      	ldr	r4, [pc, #52]	; (d0001558 <PlaceCommand+0x60>)
d0001524:	fba6 6101 	umull	r6, r1, r6, r1
d0001528:	4a0c      	ldr	r2, [pc, #48]	; (d000155c <PlaceCommand+0x64>)
d000152a:	5b5d      	ldrh	r5, [r3, r5]
d000152c:	591c      	ldr	r4, [r3, r4]
d000152e:	7812      	ldrb	r2, [r2, #0]
d0001530:	eb04 1485 	add.w	r4, r4, r5, lsl #6
d0001534:	eb02 0191 	add.w	r1, r2, r1, lsr #2
d0001538:	eb01 01c4 	add.w	r1, r1, r4, lsl #3
d000153c:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d0001540:	bc70      	pop	{r4, r5, r6}
d0001542:	7098      	strb	r0, [r3, #2]
d0001544:	4770      	bx	lr
d0001546:	bf00      	nop
d0001548:	d000f041 	.word	0xd000f041
d000154c:	d00311e0 	.word	0xd00311e0
d0001550:	aaaaaaab 	.word	0xaaaaaaab
d0001554:	00020374 	.word	0x00020374
d0001558:	0002036c 	.word	0x0002036c
d000155c:	d000f040 	.word	0xd000f040

d0001560 <PlaceParam>:
d0001560:	4b1a      	ldr	r3, [pc, #104]	; (d00015cc <PlaceParam+0x6c>)
d0001562:	491b      	ldr	r1, [pc, #108]	; (d00015d0 <PlaceParam+0x70>)
d0001564:	4a1b      	ldr	r2, [pc, #108]	; (d00015d4 <PlaceParam+0x74>)
d0001566:	b4f0      	push	{r4, r5, r6, r7}
d0001568:	781b      	ldrb	r3, [r3, #0]
d000156a:	4d1b      	ldr	r5, [pc, #108]	; (d00015d8 <PlaceParam+0x78>)
d000156c:	fba1 4103 	umull	r4, r1, r1, r3
d0001570:	7814      	ldrb	r4, [r2, #0]
d0001572:	4f1a      	ldr	r7, [pc, #104]	; (d00015dc <PlaceParam+0x7c>)
d0001574:	088a      	lsrs	r2, r1, #2
d0001576:	4e1a      	ldr	r6, [pc, #104]	; (d00015e0 <PlaceParam+0x80>)
d0001578:	eb04 0191 	add.w	r1, r4, r1, lsr #2
d000157c:	5bef      	ldrh	r7, [r5, r7]
d000157e:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0001582:	59ac      	ldr	r4, [r5, r6]
d0001584:	eba3 0342 	sub.w	r3, r3, r2, lsl #1
d0001588:	b2db      	uxtb	r3, r3
d000158a:	2b04      	cmp	r3, #4
d000158c:	d010      	beq.n	d00015b0 <PlaceParam+0x50>
d000158e:	2b05      	cmp	r3, #5
d0001590:	d10c      	bne.n	d00015ac <PlaceParam+0x4c>
d0001592:	eb04 1487 	add.w	r4, r4, r7, lsl #6
d0001596:	f000 000f 	and.w	r0, r0, #15
d000159a:	eb01 04c4 	add.w	r4, r1, r4, lsl #3
d000159e:	eb05 0184 	add.w	r1, r5, r4, lsl #2
d00015a2:	78cb      	ldrb	r3, [r1, #3]
d00015a4:	f023 030f 	bic.w	r3, r3, #15
d00015a8:	4318      	orrs	r0, r3
d00015aa:	70c8      	strb	r0, [r1, #3]
d00015ac:	bcf0      	pop	{r4, r5, r6, r7}
d00015ae:	4770      	bx	lr
d00015b0:	eb04 1487 	add.w	r4, r4, r7, lsl #6
d00015b4:	eb01 01c4 	add.w	r1, r1, r4, lsl #3
d00015b8:	eb05 0181 	add.w	r1, r5, r1, lsl #2
d00015bc:	78cb      	ldrb	r3, [r1, #3]
d00015be:	f003 030f 	and.w	r3, r3, #15
d00015c2:	ea43 1000 	orr.w	r0, r3, r0, lsl #4
d00015c6:	bcf0      	pop	{r4, r5, r6, r7}
d00015c8:	70c8      	strb	r0, [r1, #3]
d00015ca:	4770      	bx	lr
d00015cc:	d000f041 	.word	0xd000f041
d00015d0:	aaaaaaab 	.word	0xaaaaaaab
d00015d4:	d000f040 	.word	0xd000f040
d00015d8:	d00311e0 	.word	0xd00311e0
d00015dc:	00020374 	.word	0x00020374
d00015e0:	0002036c 	.word	0x0002036c

d00015e4 <PlaceSampleID>:
d00015e4:	4b1d      	ldr	r3, [pc, #116]	; (d000165c <PlaceSampleID+0x78>)
d00015e6:	491e      	ldr	r1, [pc, #120]	; (d0001660 <PlaceSampleID+0x7c>)
d00015e8:	4a1e      	ldr	r2, [pc, #120]	; (d0001664 <PlaceSampleID+0x80>)
d00015ea:	b4f0      	push	{r4, r5, r6, r7}
d00015ec:	781b      	ldrb	r3, [r3, #0]
d00015ee:	4d1e      	ldr	r5, [pc, #120]	; (d0001668 <PlaceSampleID+0x84>)
d00015f0:	fba1 4103 	umull	r4, r1, r1, r3
d00015f4:	7814      	ldrb	r4, [r2, #0]
d00015f6:	4f1d      	ldr	r7, [pc, #116]	; (d000166c <PlaceSampleID+0x88>)
d00015f8:	088a      	lsrs	r2, r1, #2
d00015fa:	4e1d      	ldr	r6, [pc, #116]	; (d0001670 <PlaceSampleID+0x8c>)
d00015fc:	eb04 0191 	add.w	r1, r4, r1, lsr #2
d0001600:	5bef      	ldrh	r7, [r5, r7]
d0001602:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0001606:	59ac      	ldr	r4, [r5, r6]
d0001608:	eba3 0342 	sub.w	r3, r3, r2, lsl #1
d000160c:	b2db      	uxtb	r3, r3
d000160e:	2b01      	cmp	r3, #1
d0001610:	d013      	beq.n	d000163a <PlaceSampleID+0x56>
d0001612:	2b02      	cmp	r3, #2
d0001614:	d10f      	bne.n	d0001636 <PlaceSampleID+0x52>
d0001616:	eb04 1487 	add.w	r4, r4, r7, lsl #6
d000161a:	f000 000f 	and.w	r0, r0, #15
d000161e:	eb01 04c4 	add.w	r4, r1, r4, lsl #3
d0001622:	eb05 0184 	add.w	r1, r5, r4, lsl #2
d0001626:	784b      	ldrb	r3, [r1, #1]
d0001628:	f023 030f 	bic.w	r3, r3, #15
d000162c:	4318      	orrs	r0, r3
d000162e:	281f      	cmp	r0, #31
d0001630:	d911      	bls.n	d0001656 <PlaceSampleID+0x72>
d0001632:	231f      	movs	r3, #31
d0001634:	704b      	strb	r3, [r1, #1]
d0001636:	bcf0      	pop	{r4, r5, r6, r7}
d0001638:	4770      	bx	lr
d000163a:	eb04 1487 	add.w	r4, r4, r7, lsl #6
d000163e:	eb01 01c4 	add.w	r1, r1, r4, lsl #3
d0001642:	eb05 0181 	add.w	r1, r5, r1, lsl #2
d0001646:	784b      	ldrb	r3, [r1, #1]
d0001648:	f003 030f 	and.w	r3, r3, #15
d000164c:	ea43 1000 	orr.w	r0, r3, r0, lsl #4
d0001650:	b2c0      	uxtb	r0, r0
d0001652:	281f      	cmp	r0, #31
d0001654:	d8ed      	bhi.n	d0001632 <PlaceSampleID+0x4e>
d0001656:	7048      	strb	r0, [r1, #1]
d0001658:	bcf0      	pop	{r4, r5, r6, r7}
d000165a:	4770      	bx	lr
d000165c:	d000f041 	.word	0xd000f041
d0001660:	aaaaaaab 	.word	0xaaaaaaab
d0001664:	d000f040 	.word	0xd000f040
d0001668:	d00311e0 	.word	0xd00311e0
d000166c:	00020374 	.word	0x00020374
d0001670:	0002036c 	.word	0x0002036c

d0001674 <PlayNoteKeyDown>:
d0001674:	4a3e      	ldr	r2, [pc, #248]	; (d0001770 <PlayNoteKeyDown+0xfc>)
d0001676:	4b3f      	ldr	r3, [pc, #252]	; (d0001774 <PlayNoteKeyDown+0x100>)
d0001678:	f8df c114 	ldr.w	ip, [pc, #276]	; d0001790 <PlayNoteKeyDown+0x11c>
d000167c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0001680:	4c3d      	ldr	r4, [pc, #244]	; (d0001778 <PlayNoteKeyDown+0x104>)
d0001682:	b085      	sub	sp, #20
d0001684:	7811      	ldrb	r1, [r2, #0]
d0001686:	f248 06fe 	movw	r6, #33022	; 0x80fe
d000168a:	4a3c      	ldr	r2, [pc, #240]	; (d000177c <PlayNoteKeyDown+0x108>)
d000168c:	781b      	ldrb	r3, [r3, #0]
d000168e:	fba2 1201 	umull	r1, r2, r2, r1
d0001692:	7821      	ldrb	r1, [r4, #0]
d0001694:	3b01      	subs	r3, #1
d0001696:	4d3a      	ldr	r5, [pc, #232]	; (d0001780 <PlayNoteKeyDown+0x10c>)
d0001698:	eb01 0192 	add.w	r1, r1, r2, lsr #2
d000169c:	f8df e0f4 	ldr.w	lr, [pc, #244]	; d0001794 <PlayNoteKeyDown+0x120>
d00016a0:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
d00016a4:	4a37      	ldr	r2, [pc, #220]	; (d0001784 <PlayNoteKeyDown+0x110>)
d00016a6:	b2c9      	uxtb	r1, r1
d00016a8:	f83e 0010 	ldrh.w	r0, [lr, r0, lsl #1]
d00016ac:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d00016b0:	f8df b0e4 	ldr.w	fp, [pc, #228]	; d0001798 <PlayNoteKeyDown+0x124>
d00016b4:	186f      	adds	r7, r5, r1
d00016b6:	eb0c 0481 	add.w	r4, ip, r1, lsl #2
d00016ba:	569a      	ldrsb	r2, [r3, r2]
d00016bc:	440e      	add	r6, r1
d00016be:	9002      	str	r0, [sp, #8]
d00016c0:	f503 3900 	add.w	r9, r3, #131072	; 0x20000
d00016c4:	f807 200b 	strb.w	r2, [r7, fp]
d00016c8:	eb05 0a86 	add.w	sl, r5, r6, lsl #2
d00016cc:	f8d4 0174 	ldr.w	r0, [r4, #372]	; 0x174
d00016d0:	9703      	str	r7, [sp, #12]
d00016d2:	9001      	str	r0, [sp, #4]
d00016d4:	4f2c      	ldr	r7, [pc, #176]	; (d0001788 <PlayNoteKeyDown+0x114>)
d00016d6:	9802      	ldr	r0, [sp, #8]
d00016d8:	f8df 80c0 	ldr.w	r8, [pc, #192]	; d000179c <PlayNoteKeyDown+0x128>
d00016dc:	f8ca 0004 	str.w	r0, [sl, #4]
d00016e0:	f8df e0bc 	ldr.w	lr, [pc, #188]	; d00017a0 <PlayNoteKeyDown+0x12c>
d00016e4:	59d8      	ldr	r0, [r3, r7]
d00016e6:	f8df a0bc 	ldr.w	sl, [pc, #188]	; d00017a4 <PlayNoteKeyDown+0x130>
d00016ea:	9f01      	ldr	r7, [sp, #4]
d00016ec:	f813 8008 	ldrb.w	r8, [r3, r8]
d00016f0:	f853 e00e 	ldr.w	lr, [r3, lr]
d00016f4:	f8d9 9000 	ldr.w	r9, [r9]
d00016f8:	f853 300a 	ldr.w	r3, [r3, sl]
d00016fc:	b387      	cbz	r7, d0001760 <PlayNoteKeyDown+0xec>
d00016fe:	f8d4 c174 	ldr.w	ip, [r4, #372]	; 0x174
d0001702:	2100      	movs	r1, #0
d0001704:	f8d4 7174 	ldr.w	r7, [r4, #372]	; 0x174
d0001708:	f8cc 9020 	str.w	r9, [ip, #32]
d000170c:	f8d4 c174 	ldr.w	ip, [r4, #372]	; 0x174
d0001710:	61fb      	str	r3, [r7, #28]
d0001712:	f89c 9000 	ldrb.w	r9, [ip]
d0001716:	f8d4 7174 	ldr.w	r7, [r4, #372]	; 0x174
d000171a:	f368 0941 	bfi	r9, r8, #1, #1
d000171e:	f8d4 3174 	ldr.w	r3, [r4, #372]	; 0x174
d0001722:	f88c 9000 	strb.w	r9, [ip]
d0001726:	e9c7 e10a 	strd	lr, r1, [r7, #40]	; 0x28
d000172a:	e9c3 010c 	strd	r0, r1, [r3, #48]	; 0x30
d000172e:	f8d4 3174 	ldr.w	r3, [r4, #372]	; 0x174
d0001732:	eb05 0586 	add.w	r5, r5, r6, lsl #2
d0001736:	0052      	lsls	r2, r2, #1
d0001738:	f8d4 6174 	ldr.w	r6, [r4, #372]	; 0x174
d000173c:	686d      	ldr	r5, [r5, #4]
d000173e:	2000      	movs	r0, #0
d0001740:	639a      	str	r2, [r3, #56]	; 0x38
d0001742:	2100      	movs	r1, #0
d0001744:	f8d4 3174 	ldr.w	r3, [r4, #372]	; 0x174
d0001748:	f8d4 2174 	ldr.w	r2, [r4, #372]	; 0x174
d000174c:	6135      	str	r5, [r6, #16]
d000174e:	e9c3 0102 	strd	r0, r1, [r3, #8]
d0001752:	7813      	ldrb	r3, [r2, #0]
d0001754:	f043 0301 	orr.w	r3, r3, #1
d0001758:	7013      	strb	r3, [r2, #0]
d000175a:	b005      	add	sp, #20
d000175c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0001760:	f8dc 3008 	ldr.w	r3, [ip, #8]
d0001764:	4809      	ldr	r0, [pc, #36]	; (d000178c <PlayNoteKeyDown+0x118>)
d0001766:	4798      	blx	r3
d0001768:	9b03      	ldr	r3, [sp, #12]
d000176a:	f913 200b 	ldrsb.w	r2, [r3, fp]
d000176e:	e7de      	b.n	d000172e <PlayNoteKeyDown+0xba>
d0001770:	d000f041 	.word	0xd000f041
d0001774:	d000eff8 	.word	0xd000eff8
d0001778:	d000f040 	.word	0xd000f040
d000177c:	aaaaaaab 	.word	0xaaaaaaab
d0001780:	d00311e0 	.word	0xd00311e0
d0001784:	00020019 	.word	0x00020019
d0001788:	00020014 	.word	0x00020014
d000178c:	d0006878 	.word	0xd0006878
d0001790:	2001f000 	.word	0x2001f000
d0001794:	d00068cc 	.word	0xd00068cc
d0001798:	0002041c 	.word	0x0002041c
d000179c:	00020018 	.word	0x00020018
d00017a0:	00020010 	.word	0x00020010
d00017a4:	00020008 	.word	0x00020008

d00017a8 <setupTestSynths>:
d00017a8:	b538      	push	{r3, r4, r5, lr}
d00017aa:	4c24      	ldr	r4, [pc, #144]	; (d000183c <setupTestSynths+0x94>)
d00017ac:	4a24      	ldr	r2, [pc, #144]	; (d0001840 <setupTestSynths+0x98>)
d00017ae:	f8d4 3170 	ldr.w	r3, [r4, #368]	; 0x170
d00017b2:	601a      	str	r2, [r3, #0]
d00017b4:	f7fe fcb4 	bl	d0000120 <EnableKFM>
d00017b8:	f8d4 2170 	ldr.w	r2, [r4, #368]	; 0x170
d00017bc:	2100      	movs	r1, #0
d00017be:	f8d4 51a4 	ldr.w	r5, [r4, #420]	; 0x1a4
d00017c2:	7813      	ldrb	r3, [r2, #0]
d00017c4:	4608      	mov	r0, r1
d00017c6:	f043 0301 	orr.w	r3, r3, #1
d00017ca:	7013      	strb	r3, [r2, #0]
d00017cc:	47a8      	blx	r5
d00017ce:	f8d4 31a4 	ldr.w	r3, [r4, #420]	; 0x1a4
d00017d2:	2100      	movs	r1, #0
d00017d4:	2001      	movs	r0, #1
d00017d6:	4798      	blx	r3
d00017d8:	f8d4 31a4 	ldr.w	r3, [r4, #420]	; 0x1a4
d00017dc:	2100      	movs	r1, #0
d00017de:	2002      	movs	r0, #2
d00017e0:	4798      	blx	r3
d00017e2:	f8d4 31a4 	ldr.w	r3, [r4, #420]	; 0x1a4
d00017e6:	2100      	movs	r1, #0
d00017e8:	2003      	movs	r0, #3
d00017ea:	4798      	blx	r3
d00017ec:	f8d4 31a4 	ldr.w	r3, [r4, #420]	; 0x1a4
d00017f0:	2100      	movs	r1, #0
d00017f2:	2004      	movs	r0, #4
d00017f4:	4798      	blx	r3
d00017f6:	f8d4 31a4 	ldr.w	r3, [r4, #420]	; 0x1a4
d00017fa:	2100      	movs	r1, #0
d00017fc:	2005      	movs	r0, #5
d00017fe:	4798      	blx	r3
d0001800:	f8d4 31a4 	ldr.w	r3, [r4, #420]	; 0x1a4
d0001804:	2100      	movs	r1, #0
d0001806:	2006      	movs	r0, #6
d0001808:	4798      	blx	r3
d000180a:	f8d4 31a4 	ldr.w	r3, [r4, #420]	; 0x1a4
d000180e:	2100      	movs	r1, #0
d0001810:	2007      	movs	r0, #7
d0001812:	4798      	blx	r3
d0001814:	2100      	movs	r1, #0
d0001816:	f8d4 31b0 	ldr.w	r3, [r4, #432]	; 0x1b0
d000181a:	4608      	mov	r0, r1
d000181c:	4798      	blx	r3
d000181e:	f8d4 31a8 	ldr.w	r3, [r4, #424]	; 0x1a8
d0001822:	217f      	movs	r1, #127	; 0x7f
d0001824:	2000      	movs	r0, #0
d0001826:	4798      	blx	r3
d0001828:	f8d4 31ac 	ldr.w	r3, [r4, #428]	; 0x1ac
d000182c:	2140      	movs	r1, #64	; 0x40
d000182e:	2000      	movs	r0, #0
d0001830:	4798      	blx	r3
d0001832:	f8d4 3174 	ldr.w	r3, [r4, #372]	; 0x174
d0001836:	2200      	movs	r2, #0
d0001838:	611a      	str	r2, [r3, #16]
d000183a:	bd38      	pop	{r3, r4, r5, pc}
d000183c:	2001f000 	.word	0x2001f000
d0001840:	000a66ff 	.word	0x000a66ff

d0001844 <RenderTrackerBackGnd>:
d0001844:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d0001848:	4f43      	ldr	r7, [pc, #268]	; (d0001958 <RenderTrackerBackGnd+0x114>)
d000184a:	b083      	sub	sp, #12
d000184c:	2606      	movs	r6, #6
d000184e:	f04f 0900 	mov.w	r9, #0
d0001852:	f8d7 10f8 	ldr.w	r1, [r7, #248]	; 0xf8
d0001856:	f04f 0804 	mov.w	r8, #4
d000185a:	23b5      	movs	r3, #181	; 0xb5
d000185c:	f44f 72ef 	mov.w	r2, #478	; 0x1de
d0001860:	f881 9000 	strb.w	r9, [r1]
d0001864:	4648      	mov	r0, r9
d0001866:	2189      	movs	r1, #137	; 0x89
d0001868:	f8cd 8004 	str.w	r8, [sp, #4]
d000186c:	9600      	str	r6, [sp, #0]
d000186e:	463d      	mov	r5, r7
d0001870:	f002 f888 	bl	d0003984 <uiDrawBeval>
d0001874:	f8d7 20f8 	ldr.w	r2, [r7, #248]	; 0xf8
d0001878:	4630      	mov	r0, r6
d000187a:	f44f 739c 	mov.w	r3, #312	; 0x138
d000187e:	f882 9000 	strb.w	r9, [r2]
d0001882:	21a7      	movs	r1, #167	; 0xa7
d0001884:	f8d7 413c 	ldr.w	r4, [r7, #316]	; 0x13c
d0001888:	2224      	movs	r2, #36	; 0x24
d000188a:	47a0      	blx	r4
d000188c:	2392      	movs	r3, #146	; 0x92
d000188e:	221e      	movs	r2, #30
d0001890:	21a7      	movs	r1, #167	; 0xa7
d0001892:	4630      	mov	r0, r6
d0001894:	2405      	movs	r4, #5
d0001896:	e9cd 8600 	strd	r8, r6, [sp]
d000189a:	f002 f873 	bl	d0003984 <uiDrawBeval>
d000189e:	f8d7 00f8 	ldr.w	r0, [r7, #248]	; 0xf8
d00018a2:	23fa      	movs	r3, #250	; 0xfa
d00018a4:	2221      	movs	r2, #33	; 0x21
d00018a6:	7004      	strb	r4, [r0, #0]
d00018a8:	21e8      	movs	r1, #232	; 0xe8
d00018aa:	f8d7 413c 	ldr.w	r4, [r7, #316]	; 0x13c
d00018ae:	200a      	movs	r0, #10
d00018b0:	47a0      	blx	r4
d00018b2:	2310      	movs	r3, #16
d00018b4:	2216      	movs	r2, #22
d00018b6:	21e8      	movs	r1, #232	; 0xe8
d00018b8:	200a      	movs	r0, #10
d00018ba:	2428      	movs	r4, #40	; 0x28
d00018bc:	e9cd 6800 	strd	r6, r8, [sp]
d00018c0:	f002 f860 	bl	d0003984 <uiDrawBeval>
d00018c4:	f8d7 20f8 	ldr.w	r2, [r7, #248]	; 0xf8
d00018c8:	4630      	mov	r0, r6
d00018ca:	23a3      	movs	r3, #163	; 0xa3
d00018cc:	f882 9000 	strb.w	r9, [r2]
d00018d0:	218f      	movs	r1, #143	; 0x8f
d00018d2:	2224      	movs	r2, #36	; 0x24
d00018d4:	f8d7 713c 	ldr.w	r7, [r7, #316]	; 0x13c
d00018d8:	47b8      	blx	r7
d00018da:	4630      	mov	r0, r6
d00018dc:	2314      	movs	r3, #20
d00018de:	221e      	movs	r2, #30
d00018e0:	218f      	movs	r1, #143	; 0x8f
d00018e2:	e9cd 8600 	strd	r8, r6, [sp]
d00018e6:	f002 f84d 	bl	d0003984 <uiDrawBeval>
d00018ea:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d00018ee:	2200      	movs	r2, #0
d00018f0:	f04f 0804 	mov.w	r8, #4
d00018f4:	2706      	movs	r7, #6
d00018f6:	701a      	strb	r2, [r3, #0]
d00018f8:	4620      	mov	r0, r4
d00018fa:	f104 024d 	add.w	r2, r4, #77	; 0x4d
d00018fe:	f240 1339 	movw	r3, #313	; 0x139
d0001902:	f8d5 613c 	ldr.w	r6, [r5, #316]	; 0x13c
d0001906:	21a7      	movs	r1, #167	; 0xa7
d0001908:	47b0      	blx	r6
d000190a:	2392      	movs	r3, #146	; 0x92
d000190c:	224e      	movs	r2, #78	; 0x4e
d000190e:	21a7      	movs	r1, #167	; 0xa7
d0001910:	4620      	mov	r0, r4
d0001912:	eb04 0608 	add.w	r6, r4, r8
d0001916:	e9cd 8700 	strd	r8, r7, [sp]
d000191a:	f002 f833 	bl	d0003984 <uiDrawBeval>
d000191e:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d0001922:	f04f 0c05 	mov.w	ip, #5
d0001926:	f104 024b 	add.w	r2, r4, #75	; 0x4b
d000192a:	4630      	mov	r0, r6
d000192c:	23fa      	movs	r3, #250	; 0xfa
d000192e:	f881 c000 	strb.w	ip, [r1]
d0001932:	3452      	adds	r4, #82	; 0x52
d0001934:	21e8      	movs	r1, #232	; 0xe8
d0001936:	f8d5 913c 	ldr.w	r9, [r5, #316]	; 0x13c
d000193a:	47c8      	blx	r9
d000193c:	4630      	mov	r0, r6
d000193e:	2310      	movs	r3, #16
d0001940:	2246      	movs	r2, #70	; 0x46
d0001942:	21e8      	movs	r1, #232	; 0xe8
d0001944:	e9cd 7800 	strd	r7, r8, [sp]
d0001948:	f002 f81c 	bl	d0003984 <uiDrawBeval>
d000194c:	f5b4 7fb8 	cmp.w	r4, #368	; 0x170
d0001950:	d1cb      	bne.n	d00018ea <RenderTrackerBackGnd+0xa6>
d0001952:	b003      	add	sp, #12
d0001954:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0001958:	2001f000 	.word	0x2001f000

d000195c <MovePatternRow>:
d000195c:	4a08      	ldr	r2, [pc, #32]	; (d0001980 <MovePatternRow+0x24>)
d000195e:	4b09      	ldr	r3, [pc, #36]	; (d0001984 <MovePatternRow+0x28>)
d0001960:	58d3      	ldr	r3, [r2, r3]
d0001962:	4418      	add	r0, r3
d0001964:	b240      	sxtb	r0, r0
d0001966:	283f      	cmp	r0, #63	; 0x3f
d0001968:	dc07      	bgt.n	d000197a <MovePatternRow+0x1e>
d000196a:	2800      	cmp	r0, #0
d000196c:	bfb8      	it	lt
d000196e:	203f      	movlt	r0, #63	; 0x3f
d0001970:	4904      	ldr	r1, [pc, #16]	; (d0001984 <MovePatternRow+0x28>)
d0001972:	4b05      	ldr	r3, [pc, #20]	; (d0001988 <MovePatternRow+0x2c>)
d0001974:	5050      	str	r0, [r2, r1]
d0001976:	50d0      	str	r0, [r2, r3]
d0001978:	4770      	bx	lr
d000197a:	2000      	movs	r0, #0
d000197c:	e7f8      	b.n	d0001970 <MovePatternRow+0x14>
d000197e:	bf00      	nop
d0001980:	d00311e0 	.word	0xd00311e0
d0001984:	0002036c 	.word	0x0002036c
d0001988:	00020368 	.word	0x00020368

d000198c <RenderTracker>:
d000198c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0001990:	4bae      	ldr	r3, [pc, #696]	; (d0001c4c <RenderTracker+0x2c0>)
d0001992:	2608      	movs	r6, #8
d0001994:	4fae      	ldr	r7, [pc, #696]	; (d0001c50 <RenderTracker+0x2c4>)
d0001996:	2110      	movs	r1, #16
d0001998:	4cae      	ldr	r4, [pc, #696]	; (d0001c54 <RenderTracker+0x2c8>)
d000199a:	f04f 0a00 	mov.w	sl, #0
d000199e:	58fb      	ldr	r3, [r7, r3]
d00019a0:	f8d4 50f8 	ldr.w	r5, [r4, #248]	; 0xf8
d00019a4:	46a3      	mov	fp, r4
d00019a6:	4aac      	ldr	r2, [pc, #688]	; (d0001c58 <RenderTracker+0x2cc>)
d00019a8:	3b06      	subs	r3, #6
d00019aa:	f837 c002 	ldrh.w	ip, [r7, r2]
d00019ae:	b21f      	sxth	r7, r3
d00019b0:	ed2d 8b02 	vpush	{d8}
d00019b4:	702e      	strb	r6, [r5, #0]
d00019b6:	b08b      	sub	sp, #44	; 0x2c
d00019b8:	f8d4 30fc 	ldr.w	r3, [r4, #252]	; 0xfc
d00019bc:	46b9      	mov	r9, r7
d00019be:	a806      	add	r0, sp, #24
d00019c0:	f8cd c00c 	str.w	ip, [sp, #12]
d00019c4:	7019      	strb	r1, [r3, #0]
d00019c6:	4ba2      	ldr	r3, [pc, #648]	; (d0001c50 <RenderTracker+0x2c4>)
d00019c8:	49a4      	ldr	r1, [pc, #656]	; (d0001c5c <RenderTracker+0x2d0>)
d00019ca:	5a9a      	ldrh	r2, [r3, r2]
d00019cc:	f8cd a000 	str.w	sl, [sp]
d00019d0:	f004 f9b0 	bl	d0005d34 <siprintf>
d00019d4:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d00019d8:	aa06      	add	r2, sp, #24
d00019da:	2192      	movs	r1, #146	; 0x92
d00019dc:	200e      	movs	r0, #14
d00019de:	4798      	blx	r3
d00019e0:	e00a      	b.n	d00019f8 <RenderTracker+0x6c>
d00019e2:	fa1f f38a 	uxth.w	r3, sl
d00019e6:	b212      	sxth	r2, r2
d00019e8:	2b0c      	cmp	r3, #12
d00019ea:	9200      	str	r2, [sp, #0]
d00019ec:	f000 80cb 	beq.w	d0001b86 <RenderTracker+0x1fa>
d00019f0:	f10a 0a01 	add.w	sl, sl, #1
d00019f4:	f109 0901 	add.w	r9, r9, #1
d00019f8:	f1b9 0f3f 	cmp.w	r9, #63	; 0x3f
d00019fc:	d913      	bls.n	d0001a26 <RenderTracker+0x9a>
d00019fe:	3701      	adds	r7, #1
d0001a00:	f8bd 1000 	ldrh.w	r1, [sp]
d0001a04:	b23f      	sxth	r7, r7
d0001a06:	1c4a      	adds	r2, r1, #1
d0001a08:	427b      	negs	r3, r7
d0001a0a:	f007 0703 	and.w	r7, r7, #3
d0001a0e:	b292      	uxth	r2, r2
d0001a10:	f003 0303 	and.w	r3, r3, #3
d0001a14:	bf58      	it	pl
d0001a16:	425f      	negpl	r7, r3
d0001a18:	f1ba 0f06 	cmp.w	sl, #6
d0001a1c:	d1e1      	bne.n	d00019e2 <RenderTracker+0x56>
d0001a1e:	3102      	adds	r1, #2
d0001a20:	b20b      	sxth	r3, r1
d0001a22:	9300      	str	r3, [sp, #0]
d0001a24:	e7e4      	b.n	d00019f0 <RenderTracker+0x64>
d0001a26:	464a      	mov	r2, r9
d0001a28:	498c      	ldr	r1, [pc, #560]	; (d0001c5c <RenderTracker+0x2d0>)
d0001a2a:	a806      	add	r0, sp, #24
d0001a2c:	f004 f982 	bl	d0005d34 <siprintf>
d0001a30:	f1ba 0f06 	cmp.w	sl, #6
d0001a34:	f8db 30f8 	ldr.w	r3, [fp, #248]	; 0xf8
d0001a38:	f000 80fb 	beq.w	d0001c32 <RenderTracker+0x2a6>
d0001a3c:	2208      	movs	r2, #8
d0001a3e:	200a      	movs	r0, #10
d0001a40:	21ac      	movs	r1, #172	; 0xac
d0001a42:	9c00      	ldr	r4, [sp, #0]
d0001a44:	701a      	strb	r2, [r3, #0]
d0001a46:	aa06      	add	r2, sp, #24
d0001a48:	fb04 1100 	mla	r1, r4, r0, r1
d0001a4c:	f8db 3140 	ldr.w	r3, [fp, #320]	; 0x140
d0001a50:	200e      	movs	r0, #14
d0001a52:	4798      	blx	r3
d0001a54:	9b00      	ldr	r3, [sp, #0]
d0001a56:	252e      	movs	r5, #46	; 0x2e
d0001a58:	9a03      	ldr	r2, [sp, #12]
d0001a5a:	2600      	movs	r6, #0
d0001a5c:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0001a60:	f8cd 9008 	str.w	r9, [sp, #8]
d0001a64:	eb09 1282 	add.w	r2, r9, r2, lsl #6
d0001a68:	005b      	lsls	r3, r3, #1
d0001a6a:	00d2      	lsls	r2, r2, #3
d0001a6c:	f103 08ac 	add.w	r8, r3, #172	; 0xac
d0001a70:	9201      	str	r2, [sp, #4]
d0001a72:	f103 02aa 	add.w	r2, r3, #170	; 0xaa
d0001a76:	ee08 2a10 	vmov	s16, r2
d0001a7a:	f103 02b6 	add.w	r2, r3, #182	; 0xb6
d0001a7e:	33ae      	adds	r3, #174	; 0xae
d0001a80:	ee08 2a90 	vmov	s17, r2
d0001a84:	4699      	mov	r9, r3
d0001a86:	4b76      	ldr	r3, [pc, #472]	; (d0001c60 <RenderTracker+0x2d4>)
d0001a88:	781c      	ldrb	r4, [r3, #0]
d0001a8a:	9b01      	ldr	r3, [sp, #4]
d0001a8c:	4434      	add	r4, r6
d0001a8e:	441c      	add	r4, r3
d0001a90:	4b6f      	ldr	r3, [pc, #444]	; (d0001c50 <RenderTracker+0x2c4>)
d0001a92:	f813 0024 	ldrb.w	r0, [r3, r4, lsl #2]
d0001a96:	eb03 0484 	add.w	r4, r3, r4, lsl #2
d0001a9a:	f7ff f821 	bl	d0000ae0 <getNoteLabel>
d0001a9e:	4601      	mov	r1, r0
d0001aa0:	a807      	add	r0, sp, #28
d0001aa2:	f004 f98d 	bl	d0005dc0 <strcpy>
d0001aa6:	7862      	ldrb	r2, [r4, #1]
d0001aa8:	496e      	ldr	r1, [pc, #440]	; (d0001c64 <RenderTracker+0x2d8>)
d0001aaa:	a808      	add	r0, sp, #32
d0001aac:	f004 f942 	bl	d0005d34 <siprintf>
d0001ab0:	78a2      	ldrb	r2, [r4, #2]
d0001ab2:	496d      	ldr	r1, [pc, #436]	; (d0001c68 <RenderTracker+0x2dc>)
d0001ab4:	a805      	add	r0, sp, #20
d0001ab6:	f004 f93d 	bl	d0005d34 <siprintf>
d0001aba:	78e2      	ldrb	r2, [r4, #3]
d0001abc:	4969      	ldr	r1, [pc, #420]	; (d0001c64 <RenderTracker+0x2d8>)
d0001abe:	a809      	add	r0, sp, #36	; 0x24
d0001ac0:	f004 f938 	bl	d0005d34 <siprintf>
d0001ac4:	f1ba 0f06 	cmp.w	sl, #6
d0001ac8:	d041      	beq.n	d0001b4e <RenderTracker+0x1c2>
d0001aca:	240c      	movs	r4, #12
d0001acc:	ee18 3a90 	vmov	r3, s17
d0001ad0:	f105 0245 	add.w	r2, r5, #69	; 0x45
d0001ad4:	1ea8      	subs	r0, r5, #2
d0001ad6:	ee18 1a10 	vmov	r1, s16
d0001ada:	b937      	cbnz	r7, d0001aea <RenderTracker+0x15e>
d0001adc:	f8db c0f8 	ldr.w	ip, [fp, #248]	; 0xf8
d0001ae0:	f88c 4000 	strb.w	r4, [ip]
d0001ae4:	f8db 413c 	ldr.w	r4, [fp, #316]	; 0x13c
d0001ae8:	47a0      	blx	r4
d0001aea:	f8db 30f8 	ldr.w	r3, [fp, #248]	; 0xf8
d0001aee:	2008      	movs	r0, #8
d0001af0:	aa07      	add	r2, sp, #28
d0001af2:	4641      	mov	r1, r8
d0001af4:	7018      	strb	r0, [r3, #0]
d0001af6:	4628      	mov	r0, r5
d0001af8:	f8db 3140 	ldr.w	r3, [fp, #320]	; 0x140
d0001afc:	2409      	movs	r4, #9
d0001afe:	4798      	blx	r3
d0001b00:	f8db 30f8 	ldr.w	r3, [fp, #248]	; 0xf8
d0001b04:	aa08      	add	r2, sp, #32
d0001b06:	4641      	mov	r1, r8
d0001b08:	701c      	strb	r4, [r3, #0]
d0001b0a:	f105 001b 	add.w	r0, r5, #27
d0001b0e:	f8db 3140 	ldr.w	r3, [fp, #320]	; 0x140
d0001b12:	240a      	movs	r4, #10
d0001b14:	4798      	blx	r3
d0001b16:	f8db 30f8 	ldr.w	r3, [fp, #248]	; 0xf8
d0001b1a:	aa05      	add	r2, sp, #20
d0001b1c:	4641      	mov	r1, r8
d0001b1e:	701c      	strb	r4, [r3, #0]
d0001b20:	f105 002c 	add.w	r0, r5, #44	; 0x2c
d0001b24:	f8db 3140 	ldr.w	r3, [fp, #320]	; 0x140
d0001b28:	240b      	movs	r4, #11
d0001b2a:	4798      	blx	r3
d0001b2c:	f8db 30f8 	ldr.w	r3, [fp, #248]	; 0xf8
d0001b30:	aa09      	add	r2, sp, #36	; 0x24
d0001b32:	4641      	mov	r1, r8
d0001b34:	701c      	strb	r4, [r3, #0]
d0001b36:	f105 0034 	add.w	r0, r5, #52	; 0x34
d0001b3a:	f8db 3140 	ldr.w	r3, [fp, #320]	; 0x140
d0001b3e:	4798      	blx	r3
d0001b40:	3601      	adds	r6, #1
d0001b42:	3552      	adds	r5, #82	; 0x52
d0001b44:	2e04      	cmp	r6, #4
d0001b46:	d19e      	bne.n	d0001a86 <RenderTracker+0xfa>
d0001b48:	f8dd 9008 	ldr.w	r9, [sp, #8]
d0001b4c:	e757      	b.n	d00019fe <RenderTracker+0x72>
d0001b4e:	f8db 3148 	ldr.w	r3, [fp, #328]	; 0x148
d0001b52:	aa07      	add	r2, sp, #28
d0001b54:	4649      	mov	r1, r9
d0001b56:	4628      	mov	r0, r5
d0001b58:	4798      	blx	r3
d0001b5a:	f8db 3148 	ldr.w	r3, [fp, #328]	; 0x148
d0001b5e:	aa08      	add	r2, sp, #32
d0001b60:	4649      	mov	r1, r9
d0001b62:	f105 001b 	add.w	r0, r5, #27
d0001b66:	4798      	blx	r3
d0001b68:	f8db 3148 	ldr.w	r3, [fp, #328]	; 0x148
d0001b6c:	aa05      	add	r2, sp, #20
d0001b6e:	4649      	mov	r1, r9
d0001b70:	f105 002c 	add.w	r0, r5, #44	; 0x2c
d0001b74:	4798      	blx	r3
d0001b76:	f8db 3148 	ldr.w	r3, [fp, #328]	; 0x148
d0001b7a:	aa09      	add	r2, sp, #36	; 0x24
d0001b7c:	4649      	mov	r1, r9
d0001b7e:	f105 0034 	add.w	r0, r5, #52	; 0x34
d0001b82:	4798      	blx	r3
d0001b84:	e7dc      	b.n	d0001b40 <RenderTracker+0x1b4>
d0001b86:	4b39      	ldr	r3, [pc, #228]	; (d0001c6c <RenderTracker+0x2e0>)
d0001b88:	4d39      	ldr	r5, [pc, #228]	; (d0001c70 <RenderTracker+0x2e4>)
d0001b8a:	7819      	ldrb	r1, [r3, #0]
d0001b8c:	4839      	ldr	r0, [pc, #228]	; (d0001c74 <RenderTracker+0x2e8>)
d0001b8e:	b28b      	uxth	r3, r1
d0001b90:	782a      	ldrb	r2, [r5, #0]
d0001b92:	4c39      	ldr	r4, [pc, #228]	; (d0001c78 <RenderTracker+0x2ec>)
d0001b94:	fba0 0303 	umull	r0, r3, r0, r3
d0001b98:	3201      	adds	r2, #1
d0001b9a:	4838      	ldr	r0, [pc, #224]	; (d0001c7c <RenderTracker+0x2f0>)
d0001b9c:	089b      	lsrs	r3, r3, #2
d0001b9e:	b2d2      	uxtb	r2, r2
d0001ba0:	f830 7021 	ldrh.w	r7, [r0, r1, lsl #2]
d0001ba4:	eb04 0c83 	add.w	ip, r4, r3, lsl #2
d0001ba8:	f834 6023 	ldrh.w	r6, [r4, r3, lsl #2]
d0001bac:	2a19      	cmp	r2, #25
d0001bae:	eb00 0381 	add.w	r3, r0, r1, lsl #2
d0001bb2:	f8bc 4002 	ldrh.w	r4, [ip, #2]
d0001bb6:	885b      	ldrh	r3, [r3, #2]
d0001bb8:	d822      	bhi.n	d0001c00 <RenderTracker+0x274>
d0001bba:	702a      	strb	r2, [r5, #0]
d0001bbc:	4a30      	ldr	r2, [pc, #192]	; (d0001c80 <RenderTracker+0x2f4>)
d0001bbe:	7812      	ldrb	r2, [r2, #0]
d0001bc0:	b1ca      	cbz	r2, d0001bf6 <RenderTracker+0x26a>
d0001bc2:	f8df 8090 	ldr.w	r8, [pc, #144]	; d0001c54 <RenderTracker+0x2c8>
d0001bc6:	201f      	movs	r0, #31
d0001bc8:	4a2e      	ldr	r2, [pc, #184]	; (d0001c84 <RenderTracker+0x2f8>)
d0001bca:	f8d8 10f8 	ldr.w	r1, [r8, #248]	; 0xf8
d0001bce:	7812      	ldrb	r2, [r2, #0]
d0001bd0:	7008      	strb	r0, [r1, #0]
d0001bd2:	b9ea      	cbnz	r2, d0001c10 <RenderTracker+0x284>
d0001bd4:	4434      	add	r4, r6
d0001bd6:	4d1f      	ldr	r5, [pc, #124]	; (d0001c54 <RenderTracker+0x2c8>)
d0001bd8:	23fb      	movs	r3, #251	; 0xfb
d0001bda:	21e6      	movs	r1, #230	; 0xe6
d0001bdc:	b2a4      	uxth	r4, r4
d0001bde:	4630      	mov	r0, r6
d0001be0:	f8d5 7138 	ldr.w	r7, [r5, #312]	; 0x138
d0001be4:	4622      	mov	r2, r4
d0001be6:	47b8      	blx	r7
d0001be8:	1e62      	subs	r2, r4, #1
d0001bea:	1c70      	adds	r0, r6, #1
d0001bec:	f8d5 4138 	ldr.w	r4, [r5, #312]	; 0x138
d0001bf0:	23fa      	movs	r3, #250	; 0xfa
d0001bf2:	21e7      	movs	r1, #231	; 0xe7
d0001bf4:	47a0      	blx	r4
d0001bf6:	b00b      	add	sp, #44	; 0x2c
d0001bf8:	ecbd 8b02 	vpop	{d8}
d0001bfc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0001c00:	4920      	ldr	r1, [pc, #128]	; (d0001c84 <RenderTracker+0x2f8>)
d0001c02:	2000      	movs	r0, #0
d0001c04:	780a      	ldrb	r2, [r1, #0]
d0001c06:	7028      	strb	r0, [r5, #0]
d0001c08:	f1c2 0201 	rsb	r2, r2, #1
d0001c0c:	700a      	strb	r2, [r1, #0]
d0001c0e:	e7d5      	b.n	d0001bbc <RenderTracker+0x230>
d0001c10:	19dd      	adds	r5, r3, r7
d0001c12:	4638      	mov	r0, r7
d0001c14:	f8d8 9138 	ldr.w	r9, [r8, #312]	; 0x138
d0001c18:	23f9      	movs	r3, #249	; 0xf9
d0001c1a:	b2ad      	uxth	r5, r5
d0001c1c:	21e8      	movs	r1, #232	; 0xe8
d0001c1e:	462a      	mov	r2, r5
d0001c20:	47c8      	blx	r9
d0001c22:	1e6a      	subs	r2, r5, #1
d0001c24:	1c78      	adds	r0, r7, #1
d0001c26:	f8d8 5138 	ldr.w	r5, [r8, #312]	; 0x138
d0001c2a:	23f8      	movs	r3, #248	; 0xf8
d0001c2c:	21e9      	movs	r1, #233	; 0xe9
d0001c2e:	47a8      	blx	r5
d0001c30:	e7d0      	b.n	d0001bd4 <RenderTracker+0x248>
d0001c32:	2210      	movs	r2, #16
d0001c34:	200a      	movs	r0, #10
d0001c36:	9c00      	ldr	r4, [sp, #0]
d0001c38:	21ae      	movs	r1, #174	; 0xae
d0001c3a:	701a      	strb	r2, [r3, #0]
d0001c3c:	aa06      	add	r2, sp, #24
d0001c3e:	fb04 1100 	mla	r1, r4, r0, r1
d0001c42:	f8db 3148 	ldr.w	r3, [fp, #328]	; 0x148
d0001c46:	200e      	movs	r0, #14
d0001c48:	4798      	blx	r3
d0001c4a:	e703      	b.n	d0001a54 <RenderTracker+0xc8>
d0001c4c:	0002036c 	.word	0x0002036c
d0001c50:	d00311e0 	.word	0xd00311e0
d0001c54:	2001f000 	.word	0x2001f000
d0001c58:	00020374 	.word	0x00020374
d0001c5c:	d000695c 	.word	0xd000695c
d0001c60:	d000f040 	.word	0xd000f040
d0001c64:	d0006964 	.word	0xd0006964
d0001c68:	d000696c 	.word	0xd000696c
d0001c6c:	d000f041 	.word	0xd000f041
d0001c70:	d000f021 	.word	0xd000f021
d0001c74:	aaaaaaab 	.word	0xaaaaaaab
d0001c78:	d0006978 	.word	0xd0006978
d0001c7c:	d0006988 	.word	0xd0006988
d0001c80:	d000f043 	.word	0xd000f043
d0001c84:	d000f020 	.word	0xd000f020

d0001c88 <RenderConfirmYESNObox>:
d0001c88:	b570      	push	{r4, r5, r6, lr}
d0001c8a:	4c1c      	ldr	r4, [pc, #112]	; (d0001cfc <RenderConfirmYESNObox+0x74>)
d0001c8c:	2100      	movs	r1, #0
d0001c8e:	2611      	movs	r6, #17
d0001c90:	b082      	sub	sp, #8
d0001c92:	f8d4 50f8 	ldr.w	r5, [r4, #248]	; 0xf8
d0001c96:	4608      	mov	r0, r1
d0001c98:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0001c9c:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0001ca0:	702e      	strb	r6, [r5, #0]
d0001ca2:	f8d4 513c 	ldr.w	r5, [r4, #316]	; 0x13c
d0001ca6:	47a8      	blx	r5
d0001ca8:	f8d4 00f8 	ldr.w	r0, [r4, #248]	; 0xf8
d0001cac:	2100      	movs	r1, #0
d0001cae:	2505      	movs	r5, #5
d0001cb0:	2364      	movs	r3, #100	; 0x64
d0001cb2:	228c      	movs	r2, #140	; 0x8c
d0001cb4:	7005      	strb	r5, [r0, #0]
d0001cb6:	4608      	mov	r0, r1
d0001cb8:	f8d4 513c 	ldr.w	r5, [r4, #316]	; 0x13c
d0001cbc:	47a8      	blx	r5
d0001cbe:	2100      	movs	r1, #0
d0001cc0:	2304      	movs	r3, #4
d0001cc2:	2206      	movs	r2, #6
d0001cc4:	4608      	mov	r0, r1
d0001cc6:	9301      	str	r3, [sp, #4]
d0001cc8:	2364      	movs	r3, #100	; 0x64
d0001cca:	9200      	str	r2, [sp, #0]
d0001ccc:	228c      	movs	r2, #140	; 0x8c
d0001cce:	f001 fe59 	bl	d0003984 <uiDrawBeval>
d0001cd2:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d0001cd6:	2114      	movs	r1, #20
d0001cd8:	2010      	movs	r0, #16
d0001cda:	4a09      	ldr	r2, [pc, #36]	; (d0001d00 <RenderConfirmYESNObox+0x78>)
d0001cdc:	7018      	strb	r0, [r3, #0]
d0001cde:	4608      	mov	r0, r1
d0001ce0:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d0001ce4:	4798      	blx	r3
d0001ce6:	2100      	movs	r1, #0
d0001ce8:	203f      	movs	r0, #63	; 0x3f
d0001cea:	f001 fff3 	bl	d0003cd4 <guiRenderButton>
d0001cee:	2100      	movs	r1, #0
d0001cf0:	203e      	movs	r0, #62	; 0x3e
d0001cf2:	b002      	add	sp, #8
d0001cf4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0001cf8:	f001 bfec 	b.w	d0003cd4 <guiRenderButton>
d0001cfc:	2001f000 	.word	0x2001f000
d0001d00:	d0006970 	.word	0xd0006970

d0001d04 <LoadTestSong>:
d0001d04:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d0001d08:	4c95      	ldr	r4, [pc, #596]	; (d0001f60 <LoadTestSong+0x25c>)
d0001d0a:	b0e7      	sub	sp, #412	; 0x19c
d0001d0c:	4603      	mov	r3, r0
d0001d0e:	4895      	ldr	r0, [pc, #596]	; (d0001f64 <LoadTestSong+0x260>)
d0001d10:	68a2      	ldr	r2, [r4, #8]
d0001d12:	9301      	str	r3, [sp, #4]
d0001d14:	4790      	blx	r2
d0001d16:	6ea2      	ldr	r2, [r4, #104]	; 0x68
d0001d18:	a806      	add	r0, sp, #24
d0001d1a:	4790      	blx	r2
d0001d1c:	aa06      	add	r2, sp, #24
d0001d1e:	9b01      	ldr	r3, [sp, #4]
d0001d20:	a826      	add	r0, sp, #152	; 0x98
d0001d22:	4991      	ldr	r1, [pc, #580]	; (d0001f68 <LoadTestSong+0x264>)
d0001d24:	f004 f806 	bl	d0005d34 <siprintf>
d0001d28:	68a3      	ldr	r3, [r4, #8]
d0001d2a:	a926      	add	r1, sp, #152	; 0x98
d0001d2c:	488f      	ldr	r0, [pc, #572]	; (d0001f6c <LoadTestSong+0x268>)
d0001d2e:	4798      	blx	r3
d0001d30:	4a8f      	ldr	r2, [pc, #572]	; (d0001f70 <LoadTestSong+0x26c>)
d0001d32:	ab04      	add	r3, sp, #16
d0001d34:	ca07      	ldmia	r2, {r0, r1, r2}
d0001d36:	c303      	stmia	r3!, {r0, r1}
d0001d38:	a926      	add	r1, sp, #152	; 0x98
d0001d3a:	701a      	strb	r2, [r3, #0]
d0001d3c:	2000      	movs	r0, #0
d0001d3e:	f8d4 3094 	ldr.w	r3, [r4, #148]	; 0x94
d0001d42:	2201      	movs	r2, #1
d0001d44:	4798      	blx	r3
d0001d46:	ab03      	add	r3, sp, #12
d0001d48:	f8d4 50a0 	ldr.w	r5, [r4, #160]	; 0xa0
d0001d4c:	a904      	add	r1, sp, #16
d0001d4e:	2208      	movs	r2, #8
d0001d50:	2000      	movs	r0, #0
d0001d52:	47a8      	blx	r5
d0001d54:	2208      	movs	r2, #8
d0001d56:	4987      	ldr	r1, [pc, #540]	; (d0001f74 <LoadTestSong+0x270>)
d0001d58:	a804      	add	r0, sp, #16
d0001d5a:	f7fe fa55 	bl	d0000208 <stringcmp>
d0001d5e:	4602      	mov	r2, r0
d0001d60:	68a3      	ldr	r3, [r4, #8]
d0001d62:	a904      	add	r1, sp, #16
d0001d64:	4884      	ldr	r0, [pc, #528]	; (d0001f78 <LoadTestSong+0x274>)
d0001d66:	9203      	str	r2, [sp, #12]
d0001d68:	4798      	blx	r3
d0001d6a:	9d03      	ldr	r5, [sp, #12]
d0001d6c:	2d00      	cmp	r5, #0
d0001d6e:	f040 80e5 	bne.w	d0001f3c <LoadTestSong+0x238>
d0001d72:	4e82      	ldr	r6, [pc, #520]	; (d0001f7c <LoadTestSong+0x278>)
d0001d74:	4629      	mov	r1, r5
d0001d76:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0001d7a:	4628      	mov	r0, r5
d0001d7c:	4798      	blx	r3
d0001d7e:	f8d4 40a0 	ldr.w	r4, [r4, #160]	; 0xa0
d0001d82:	4631      	mov	r1, r6
d0001d84:	ab03      	add	r3, sp, #12
d0001d86:	2292      	movs	r2, #146	; 0x92
d0001d88:	4628      	mov	r0, r5
d0001d8a:	47a0      	blx	r4
d0001d8c:	4f7c      	ldr	r7, [pc, #496]	; (d0001f80 <LoadTestSong+0x27c>)
d0001d8e:	68b1      	ldr	r1, [r6, #8]
d0001d90:	4a7c      	ldr	r2, [pc, #496]	; (d0001f84 <LoadTestSong+0x280>)
d0001d92:	89b4      	ldrh	r4, [r6, #12]
d0001d94:	4b7c      	ldr	r3, [pc, #496]	; (d0001f88 <LoadTestSong+0x284>)
d0001d96:	f8b6 808e 	ldrh.w	r8, [r6, #142]	; 0x8e
d0001d9a:	9503      	str	r5, [sp, #12]
d0001d9c:	50b9      	str	r1, [r7, r2]
d0001d9e:	52fc      	strh	r4, [r7, r3]
d0001da0:	b134      	cbz	r4, d0001db0 <LoadTestSong+0xac>
d0001da2:	f106 010e 	add.w	r1, r6, #14
d0001da6:	0062      	lsls	r2, r4, #1
d0001da8:	4878      	ldr	r0, [pc, #480]	; (d0001f8c <LoadTestSong+0x288>)
d0001daa:	f003 fddd 	bl	d0005968 <memcpy>
d0001dae:	9403      	str	r4, [sp, #12]
d0001db0:	4e6b      	ldr	r6, [pc, #428]	; (d0001f60 <LoadTestSong+0x25c>)
d0001db2:	ab03      	add	r3, sp, #12
d0001db4:	2208      	movs	r2, #8
d0001db6:	a904      	add	r1, sp, #16
d0001db8:	f8d6 40a0 	ldr.w	r4, [r6, #160]	; 0xa0
d0001dbc:	2000      	movs	r0, #0
d0001dbe:	47a0      	blx	r4
d0001dc0:	ab03      	add	r3, sp, #12
d0001dc2:	f8d6 40a0 	ldr.w	r4, [r6, #160]	; 0xa0
d0001dc6:	2208      	movs	r2, #8
d0001dc8:	a904      	add	r1, sp, #16
d0001dca:	2000      	movs	r0, #0
d0001dcc:	47a0      	blx	r4
d0001dce:	2208      	movs	r2, #8
d0001dd0:	496f      	ldr	r1, [pc, #444]	; (d0001f90 <LoadTestSong+0x28c>)
d0001dd2:	a804      	add	r0, sp, #16
d0001dd4:	f7fe fa18 	bl	d0000208 <stringcmp>
d0001dd8:	68b3      	ldr	r3, [r6, #8]
d0001dda:	4604      	mov	r4, r0
d0001ddc:	9003      	str	r0, [sp, #12]
d0001dde:	2800      	cmp	r0, #0
d0001de0:	f040 80a2 	bne.w	d0001f28 <LoadTestSong+0x224>
d0001de4:	4641      	mov	r1, r8
d0001de6:	486b      	ldr	r0, [pc, #428]	; (d0001f94 <LoadTestSong+0x290>)
d0001de8:	4798      	blx	r3
d0001dea:	4a67      	ldr	r2, [pc, #412]	; (d0001f88 <LoadTestSong+0x284>)
d0001dec:	68b3      	ldr	r3, [r6, #8]
d0001dee:	4635      	mov	r5, r6
d0001df0:	5ab9      	ldrh	r1, [r7, r2]
d0001df2:	4869      	ldr	r0, [pc, #420]	; (d0001f98 <LoadTestSong+0x294>)
d0001df4:	4798      	blx	r3
d0001df6:	f8d5 60a0 	ldr.w	r6, [r5, #160]	; 0xa0
d0001dfa:	ab03      	add	r3, sp, #12
d0001dfc:	2204      	movs	r2, #4
d0001dfe:	a904      	add	r1, sp, #16
d0001e00:	2000      	movs	r0, #0
d0001e02:	47b0      	blx	r6
d0001e04:	ab03      	add	r3, sp, #12
d0001e06:	b2a1      	uxth	r1, r4
d0001e08:	3401      	adds	r4, #1
d0001e0a:	f8d5 60a0 	ldr.w	r6, [r5, #160]	; 0xa0
d0001e0e:	f44f 6200 	mov.w	r2, #2048	; 0x800
d0001e12:	eb07 21c1 	add.w	r1, r7, r1, lsl #11
d0001e16:	2000      	movs	r0, #0
d0001e18:	47b0      	blx	r6
d0001e1a:	b2a3      	uxth	r3, r4
d0001e1c:	4598      	cmp	r8, r3
d0001e1e:	d2ea      	bcs.n	d0001df6 <LoadTestSong+0xf2>
d0001e20:	4c5e      	ldr	r4, [pc, #376]	; (d0001f9c <LoadTestSong+0x298>)
d0001e22:	ab03      	add	r3, sp, #12
d0001e24:	f8d5 50a0 	ldr.w	r5, [r5, #160]	; 0xa0
d0001e28:	2208      	movs	r2, #8
d0001e2a:	a904      	add	r1, sp, #16
d0001e2c:	2000      	movs	r0, #0
d0001e2e:	47a8      	blx	r5
d0001e30:	f504 7759 	add.w	r7, r4, #868	; 0x364
d0001e34:	4d4a      	ldr	r5, [pc, #296]	; (d0001f60 <LoadTestSong+0x25c>)
d0001e36:	4621      	mov	r1, r4
d0001e38:	f8d5 60a0 	ldr.w	r6, [r5, #160]	; 0xa0
d0001e3c:	ab03      	add	r3, sp, #12
d0001e3e:	2204      	movs	r2, #4
d0001e40:	2000      	movs	r0, #0
d0001e42:	47b0      	blx	r6
d0001e44:	2204      	movs	r2, #4
d0001e46:	f8d5 60a0 	ldr.w	r6, [r5, #160]	; 0xa0
d0001e4a:	ab03      	add	r3, sp, #12
d0001e4c:	18a1      	adds	r1, r4, r2
d0001e4e:	2000      	movs	r0, #0
d0001e50:	47b0      	blx	r6
d0001e52:	f104 0108 	add.w	r1, r4, #8
d0001e56:	f8d5 60a0 	ldr.w	r6, [r5, #160]	; 0xa0
d0001e5a:	ab03      	add	r3, sp, #12
d0001e5c:	2204      	movs	r2, #4
d0001e5e:	2000      	movs	r0, #0
d0001e60:	47b0      	blx	r6
d0001e62:	f104 010c 	add.w	r1, r4, #12
d0001e66:	f8d5 60a0 	ldr.w	r6, [r5, #160]	; 0xa0
d0001e6a:	ab03      	add	r3, sp, #12
d0001e6c:	2204      	movs	r2, #4
d0001e6e:	2000      	movs	r0, #0
d0001e70:	47b0      	blx	r6
d0001e72:	f104 0110 	add.w	r1, r4, #16
d0001e76:	f8d5 60a0 	ldr.w	r6, [r5, #160]	; 0xa0
d0001e7a:	ab03      	add	r3, sp, #12
d0001e7c:	2204      	movs	r2, #4
d0001e7e:	2000      	movs	r0, #0
d0001e80:	47b0      	blx	r6
d0001e82:	f104 0114 	add.w	r1, r4, #20
d0001e86:	f8d5 60a0 	ldr.w	r6, [r5, #160]	; 0xa0
d0001e8a:	ab03      	add	r3, sp, #12
d0001e8c:	2201      	movs	r2, #1
d0001e8e:	2000      	movs	r0, #0
d0001e90:	47b0      	blx	r6
d0001e92:	f104 0115 	add.w	r1, r4, #21
d0001e96:	341c      	adds	r4, #28
d0001e98:	f8d5 60a0 	ldr.w	r6, [r5, #160]	; 0xa0
d0001e9c:	ab03      	add	r3, sp, #12
d0001e9e:	2201      	movs	r2, #1
d0001ea0:	2000      	movs	r0, #0
d0001ea2:	47b0      	blx	r6
d0001ea4:	42a7      	cmp	r7, r4
d0001ea6:	d1c6      	bne.n	d0001e36 <LoadTestSong+0x132>
d0001ea8:	4e3d      	ldr	r6, [pc, #244]	; (d0001fa0 <LoadTestSong+0x29c>)
d0001eaa:	f04f 0900 	mov.w	r9, #0
d0001eae:	4f3d      	ldr	r7, [pc, #244]	; (d0001fa4 <LoadTestSong+0x2a0>)
d0001eb0:	ab03      	add	r3, sp, #12
d0001eb2:	f8df 80ac 	ldr.w	r8, [pc, #172]	; d0001f60 <LoadTestSong+0x25c>
d0001eb6:	2208      	movs	r2, #8
d0001eb8:	f8d5 40a0 	ldr.w	r4, [r5, #160]	; 0xa0
d0001ebc:	a904      	add	r1, sp, #16
d0001ebe:	2000      	movs	r0, #0
d0001ec0:	47a0      	blx	r4
d0001ec2:	ab03      	add	r3, sp, #12
d0001ec4:	2204      	movs	r2, #4
d0001ec6:	f8d8 40a0 	ldr.w	r4, [r8, #160]	; 0xa0
d0001eca:	a904      	add	r1, sp, #16
d0001ecc:	2000      	movs	r0, #0
d0001ece:	47a0      	blx	r4
d0001ed0:	68b3      	ldr	r3, [r6, #8]
d0001ed2:	eb03 4209 	add.w	r2, r3, r9, lsl #16
d0001ed6:	f5b2 1f00 	cmp.w	r2, #2097152	; 0x200000
d0001eda:	d83a      	bhi.n	d0001f52 <LoadTestSong+0x24e>
d0001edc:	6037      	str	r7, [r6, #0]
d0001ede:	b15b      	cbz	r3, d0001ef8 <LoadTestSong+0x1f4>
d0001ee0:	2400      	movs	r4, #0
d0001ee2:	2201      	movs	r2, #1
d0001ee4:	ab03      	add	r3, sp, #12
d0001ee6:	19e1      	adds	r1, r4, r7
d0001ee8:	f8d8 50a0 	ldr.w	r5, [r8, #160]	; 0xa0
d0001eec:	2000      	movs	r0, #0
d0001eee:	4414      	add	r4, r2
d0001ef0:	47a8      	blx	r5
d0001ef2:	68b3      	ldr	r3, [r6, #8]
d0001ef4:	42a3      	cmp	r3, r4
d0001ef6:	d8f4      	bhi.n	d0001ee2 <LoadTestSong+0x1de>
d0001ef8:	f109 0901 	add.w	r9, r9, #1
d0001efc:	361c      	adds	r6, #28
d0001efe:	f507 3780 	add.w	r7, r7, #65536	; 0x10000
d0001f02:	f1b9 0f1f 	cmp.w	r9, #31
d0001f06:	d1dc      	bne.n	d0001ec2 <LoadTestSong+0x1be>
d0001f08:	4c15      	ldr	r4, [pc, #84]	; (d0001f60 <LoadTestSong+0x25c>)
d0001f0a:	ab03      	add	r3, sp, #12
d0001f0c:	a904      	add	r1, sp, #16
d0001f0e:	2204      	movs	r2, #4
d0001f10:	f8d4 50a0 	ldr.w	r5, [r4, #160]	; 0xa0
d0001f14:	2000      	movs	r0, #0
d0001f16:	47a8      	blx	r5
d0001f18:	f8d4 3098 	ldr.w	r3, [r4, #152]	; 0x98
d0001f1c:	2000      	movs	r0, #0
d0001f1e:	4798      	blx	r3
d0001f20:	2001      	movs	r0, #1
d0001f22:	b067      	add	sp, #412	; 0x19c
d0001f24:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0001f28:	481f      	ldr	r0, [pc, #124]	; (d0001fa8 <LoadTestSong+0x2a4>)
d0001f2a:	4798      	blx	r3
d0001f2c:	f8d6 3098 	ldr.w	r3, [r6, #152]	; 0x98
d0001f30:	2000      	movs	r0, #0
d0001f32:	4798      	blx	r3
d0001f34:	2000      	movs	r0, #0
d0001f36:	b067      	add	sp, #412	; 0x19c
d0001f38:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0001f3c:	68a3      	ldr	r3, [r4, #8]
d0001f3e:	481b      	ldr	r0, [pc, #108]	; (d0001fac <LoadTestSong+0x2a8>)
d0001f40:	4798      	blx	r3
d0001f42:	f8d4 3098 	ldr.w	r3, [r4, #152]	; 0x98
d0001f46:	2000      	movs	r0, #0
d0001f48:	4798      	blx	r3
d0001f4a:	2000      	movs	r0, #0
d0001f4c:	b067      	add	sp, #412	; 0x19c
d0001f4e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0001f52:	f8d8 3008 	ldr.w	r3, [r8, #8]
d0001f56:	4649      	mov	r1, r9
d0001f58:	4815      	ldr	r0, [pc, #84]	; (d0001fb0 <LoadTestSong+0x2ac>)
d0001f5a:	4798      	blx	r3
d0001f5c:	e7d4      	b.n	d0001f08 <LoadTestSong+0x204>
d0001f5e:	bf00      	nop
d0001f60:	2001f000 	.word	0x2001f000
d0001f64:	d00071e8 	.word	0xd00071e8
d0001f68:	d0007204 	.word	0xd0007204
d0001f6c:	d000720c 	.word	0xd000720c
d0001f70:	d0007224 	.word	0xd0007224
d0001f74:	d0007230 	.word	0xd0007230
d0001f78:	d000723c 	.word	0xd000723c
d0001f7c:	d025176c 	.word	0xd025176c
d0001f80:	d00311e0 	.word	0xd00311e0
d0001f84:	00020364 	.word	0x00020364
d0001f88:	00020378 	.word	0x00020378
d0001f8c:	d005155a 	.word	0xd005155a
d0001f90:	d0007274 	.word	0xd0007274
d0001f94:	d00072bc 	.word	0xd00072bc
d0001f98:	d00072d0 	.word	0xd00072d0
d0001f9c:	d00511e4 	.word	0xd00511e4
d0001fa0:	d00511e0 	.word	0xd00511e0
d0001fa4:	d0051640 	.word	0xd0051640
d0001fa8:	d0007280 	.word	0xd0007280
d0001fac:	d0007250 	.word	0xd0007250
d0001fb0:	d00072e0 	.word	0xd00072e0

d0001fb4 <SaveTestSong>:
d0001fb4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0001fb8:	4c89      	ldr	r4, [pc, #548]	; (d00021e0 <SaveTestSong+0x22c>)
d0001fba:	b0e4      	sub	sp, #400	; 0x190
d0001fbc:	2192      	movs	r1, #146	; 0x92
d0001fbe:	4607      	mov	r7, r0
d0001fc0:	68a2      	ldr	r2, [r4, #8]
d0001fc2:	2500      	movs	r5, #0
d0001fc4:	4887      	ldr	r0, [pc, #540]	; (d00021e4 <SaveTestSong+0x230>)
d0001fc6:	4790      	blx	r2
d0001fc8:	68a3      	ldr	r3, [r4, #8]
d0001fca:	4887      	ldr	r0, [pc, #540]	; (d00021e8 <SaveTestSong+0x234>)
d0001fcc:	4798      	blx	r3
d0001fce:	f8df 8260 	ldr.w	r8, [pc, #608]	; d0002230 <SaveTestSong+0x27c>
d0001fd2:	4986      	ldr	r1, [pc, #536]	; (d00021ec <SaveTestSong+0x238>)
d0001fd4:	4b86      	ldr	r3, [pc, #536]	; (d00021f0 <SaveTestSong+0x23c>)
d0001fd6:	4887      	ldr	r0, [pc, #540]	; (d00021f4 <SaveTestSong+0x240>)
d0001fd8:	f858 1001 	ldr.w	r1, [r8, r1]
d0001fdc:	4a86      	ldr	r2, [pc, #536]	; (d00021f8 <SaveTestSong+0x244>)
d0001fde:	f838 c000 	ldrh.w	ip, [r8, r0]
d0001fe2:	6099      	str	r1, [r3, #8]
d0001fe4:	f8a3 c00c 	strh.w	ip, [r3, #12]
d0001fe8:	9501      	str	r5, [sp, #4]
d0001fea:	ca03      	ldmia	r2!, {r0, r1}
d0001fec:	6018      	str	r0, [r3, #0]
d0001fee:	6059      	str	r1, [r3, #4]
d0001ff0:	f1bc 0f00 	cmp.w	ip, #0
d0001ff4:	d00f      	beq.n	d0002016 <SaveTestSong+0x62>
d0001ff6:	4a81      	ldr	r2, [pc, #516]	; (d00021fc <SaveTestSong+0x248>)
d0001ff8:	f103 040c 	add.w	r4, r3, #12
d0001ffc:	eb02 064c 	add.w	r6, r2, ip, lsl #1
d0002000:	f832 1f02 	ldrh.w	r1, [r2, #2]!
d0002004:	428d      	cmp	r5, r1
d0002006:	f824 1f02 	strh.w	r1, [r4, #2]!
d000200a:	bf38      	it	cc
d000200c:	460d      	movcc	r5, r1
d000200e:	4296      	cmp	r6, r2
d0002010:	d1f6      	bne.n	d0002000 <SaveTestSong+0x4c>
d0002012:	f8cd c004 	str.w	ip, [sp, #4]
d0002016:	f8df 91c8 	ldr.w	r9, [pc, #456]	; d00021e0 <SaveTestSong+0x22c>
d000201a:	4629      	mov	r1, r5
d000201c:	4878      	ldr	r0, [pc, #480]	; (d0002200 <SaveTestSong+0x24c>)
d000201e:	f10d 0a08 	add.w	sl, sp, #8
d0002022:	f8a3 508e 	strh.w	r5, [r3, #142]	; 0x8e
d0002026:	464e      	mov	r6, r9
d0002028:	f8d9 3008 	ldr.w	r3, [r9, #8]
d000202c:	4798      	blx	r3
d000202e:	f8d9 3068 	ldr.w	r3, [r9, #104]	; 0x68
d0002032:	a804      	add	r0, sp, #16
d0002034:	4798      	blx	r3
d0002036:	aa04      	add	r2, sp, #16
d0002038:	463b      	mov	r3, r7
d000203a:	4972      	ldr	r1, [pc, #456]	; (d0002204 <SaveTestSong+0x250>)
d000203c:	a824      	add	r0, sp, #144	; 0x90
d000203e:	4f72      	ldr	r7, [pc, #456]	; (d0002208 <SaveTestSong+0x254>)
d0002040:	f003 fe78 	bl	d0005d34 <siprintf>
d0002044:	f8d9 3008 	ldr.w	r3, [r9, #8]
d0002048:	a924      	add	r1, sp, #144	; 0x90
d000204a:	4870      	ldr	r0, [pc, #448]	; (d000220c <SaveTestSong+0x258>)
d000204c:	4798      	blx	r3
d000204e:	f8d9 3094 	ldr.w	r3, [r9, #148]	; 0x94
d0002052:	a924      	add	r1, sp, #144	; 0x90
d0002054:	220a      	movs	r2, #10
d0002056:	2000      	movs	r0, #0
d0002058:	4798      	blx	r3
d000205a:	f8d9 40a4 	ldr.w	r4, [r9, #164]	; 0xa4
d000205e:	ab01      	add	r3, sp, #4
d0002060:	2292      	movs	r2, #146	; 0x92
d0002062:	4963      	ldr	r1, [pc, #396]	; (d00021f0 <SaveTestSong+0x23c>)
d0002064:	2000      	movs	r0, #0
d0002066:	47a0      	blx	r4
d0002068:	4a69      	ldr	r2, [pc, #420]	; (d0002210 <SaveTestSong+0x25c>)
d000206a:	ab01      	add	r3, sp, #4
d000206c:	ca07      	ldmia	r2, {r0, r1, r2}
d000206e:	e8aa 0003 	stmia.w	sl!, {r0, r1}
d0002072:	a902      	add	r1, sp, #8
d0002074:	f88a 2000 	strb.w	r2, [sl]
d0002078:	2000      	movs	r0, #0
d000207a:	f8d9 40a4 	ldr.w	r4, [r9, #164]	; 0xa4
d000207e:	2208      	movs	r2, #8
d0002080:	47a0      	blx	r4
d0002082:	4a64      	ldr	r2, [pc, #400]	; (d0002214 <SaveTestSong+0x260>)
d0002084:	ab02      	add	r3, sp, #8
d0002086:	2400      	movs	r4, #0
d0002088:	ca07      	ldmia	r2, {r0, r1, r2}
d000208a:	c303      	stmia	r3!, {r0, r1}
d000208c:	f88a 2000 	strb.w	r2, [sl]
d0002090:	a902      	add	r1, sp, #8
d0002092:	ab01      	add	r3, sp, #4
d0002094:	f8d9 90a4 	ldr.w	r9, [r9, #164]	; 0xa4
d0002098:	2208      	movs	r2, #8
d000209a:	4620      	mov	r0, r4
d000209c:	47c8      	blx	r9
d000209e:	ab01      	add	r3, sp, #4
d00020a0:	2204      	movs	r2, #4
d00020a2:	e897 0003 	ldmia.w	r7, {r0, r1}
d00020a6:	9002      	str	r0, [sp, #8]
d00020a8:	2000      	movs	r0, #0
d00020aa:	f88d 100c 	strb.w	r1, [sp, #12]
d00020ae:	a902      	add	r1, sp, #8
d00020b0:	f8d6 90a4 	ldr.w	r9, [r6, #164]	; 0xa4
d00020b4:	47c8      	blx	r9
d00020b6:	ab01      	add	r3, sp, #4
d00020b8:	b2a1      	uxth	r1, r4
d00020ba:	3401      	adds	r4, #1
d00020bc:	f8d6 90a4 	ldr.w	r9, [r6, #164]	; 0xa4
d00020c0:	f44f 6200 	mov.w	r2, #2048	; 0x800
d00020c4:	eb08 21c1 	add.w	r1, r8, r1, lsl #11
d00020c8:	2000      	movs	r0, #0
d00020ca:	47c8      	blx	r9
d00020cc:	b2a3      	uxth	r3, r4
d00020ce:	429d      	cmp	r5, r3
d00020d0:	d2e5      	bcs.n	d000209e <SaveTestSong+0xea>
d00020d2:	4b51      	ldr	r3, [pc, #324]	; (d0002218 <SaveTestSong+0x264>)
d00020d4:	ad02      	add	r5, sp, #8
d00020d6:	4c51      	ldr	r4, [pc, #324]	; (d000221c <SaveTestSong+0x268>)
d00020d8:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d00020dc:	ab01      	add	r3, sp, #4
d00020de:	f504 7759 	add.w	r7, r4, #868	; 0x364
d00020e2:	c503      	stmia	r5!, {r0, r1}
d00020e4:	a902      	add	r1, sp, #8
d00020e6:	702a      	strb	r2, [r5, #0]
d00020e8:	2000      	movs	r0, #0
d00020ea:	f8d6 50a4 	ldr.w	r5, [r6, #164]	; 0xa4
d00020ee:	2208      	movs	r2, #8
d00020f0:	47a8      	blx	r5
d00020f2:	4d3b      	ldr	r5, [pc, #236]	; (d00021e0 <SaveTestSong+0x22c>)
d00020f4:	4621      	mov	r1, r4
d00020f6:	f8d5 60a4 	ldr.w	r6, [r5, #164]	; 0xa4
d00020fa:	ab01      	add	r3, sp, #4
d00020fc:	2204      	movs	r2, #4
d00020fe:	2000      	movs	r0, #0
d0002100:	47b0      	blx	r6
d0002102:	2204      	movs	r2, #4
d0002104:	f8d5 60a4 	ldr.w	r6, [r5, #164]	; 0xa4
d0002108:	ab01      	add	r3, sp, #4
d000210a:	18a1      	adds	r1, r4, r2
d000210c:	2000      	movs	r0, #0
d000210e:	47b0      	blx	r6
d0002110:	f104 0108 	add.w	r1, r4, #8
d0002114:	f8d5 60a4 	ldr.w	r6, [r5, #164]	; 0xa4
d0002118:	ab01      	add	r3, sp, #4
d000211a:	2204      	movs	r2, #4
d000211c:	2000      	movs	r0, #0
d000211e:	47b0      	blx	r6
d0002120:	f104 010c 	add.w	r1, r4, #12
d0002124:	f8d5 60a4 	ldr.w	r6, [r5, #164]	; 0xa4
d0002128:	ab01      	add	r3, sp, #4
d000212a:	2204      	movs	r2, #4
d000212c:	2000      	movs	r0, #0
d000212e:	47b0      	blx	r6
d0002130:	f104 0110 	add.w	r1, r4, #16
d0002134:	f8d5 60a4 	ldr.w	r6, [r5, #164]	; 0xa4
d0002138:	ab01      	add	r3, sp, #4
d000213a:	2204      	movs	r2, #4
d000213c:	2000      	movs	r0, #0
d000213e:	47b0      	blx	r6
d0002140:	f104 0114 	add.w	r1, r4, #20
d0002144:	f8d5 60a4 	ldr.w	r6, [r5, #164]	; 0xa4
d0002148:	ab01      	add	r3, sp, #4
d000214a:	2201      	movs	r2, #1
d000214c:	2000      	movs	r0, #0
d000214e:	47b0      	blx	r6
d0002150:	f104 0115 	add.w	r1, r4, #21
d0002154:	341c      	adds	r4, #28
d0002156:	f8d5 60a4 	ldr.w	r6, [r5, #164]	; 0xa4
d000215a:	ab01      	add	r3, sp, #4
d000215c:	2201      	movs	r2, #1
d000215e:	2000      	movs	r0, #0
d0002160:	47b0      	blx	r6
d0002162:	42bc      	cmp	r4, r7
d0002164:	d1c6      	bne.n	d00020f4 <SaveTestSong+0x140>
d0002166:	4a2e      	ldr	r2, [pc, #184]	; (d0002220 <SaveTestSong+0x26c>)
d0002168:	ac02      	add	r4, sp, #8
d000216a:	ab01      	add	r3, sp, #4
d000216c:	f8df 907c 	ldr.w	r9, [pc, #124]	; d00021ec <SaveTestSong+0x238>
d0002170:	ca07      	ldmia	r2, {r0, r1, r2}
d0002172:	c403      	stmia	r4!, {r0, r1}
d0002174:	a902      	add	r1, sp, #8
d0002176:	7022      	strb	r2, [r4, #0]
d0002178:	2000      	movs	r0, #0
d000217a:	f8d5 40a4 	ldr.w	r4, [r5, #164]	; 0xa4
d000217e:	2208      	movs	r2, #8
d0002180:	44c1      	add	r9, r8
d0002182:	47a0      	blx	r4
d0002184:	4b27      	ldr	r3, [pc, #156]	; (d0002224 <SaveTestSong+0x270>)
d0002186:	4c28      	ldr	r4, [pc, #160]	; (d0002228 <SaveTestSong+0x274>)
d0002188:	4d15      	ldr	r5, [pc, #84]	; (d00021e0 <SaveTestSong+0x22c>)
d000218a:	e893 0003 	ldmia.w	r3, {r0, r1}
d000218e:	9002      	str	r0, [sp, #8]
d0002190:	f88d 100c 	strb.w	r1, [sp, #12]
d0002194:	6826      	ldr	r6, [r4, #0]
d0002196:	ab01      	add	r3, sp, #4
d0002198:	2204      	movs	r2, #4
d000219a:	a902      	add	r1, sp, #8
d000219c:	f8d5 70a4 	ldr.w	r7, [r5, #164]	; 0xa4
d00021a0:	2000      	movs	r0, #0
d00021a2:	47b8      	blx	r7
d00021a4:	341c      	adds	r4, #28
d00021a6:	f854 2c14 	ldr.w	r2, [r4, #-20]
d00021aa:	4631      	mov	r1, r6
d00021ac:	ab01      	add	r3, sp, #4
d00021ae:	f8d5 60a4 	ldr.w	r6, [r5, #164]	; 0xa4
d00021b2:	2000      	movs	r0, #0
d00021b4:	47b0      	blx	r6
d00021b6:	454c      	cmp	r4, r9
d00021b8:	d1ec      	bne.n	d0002194 <SaveTestSong+0x1e0>
d00021ba:	4a1c      	ldr	r2, [pc, #112]	; (d000222c <SaveTestSong+0x278>)
d00021bc:	ac02      	add	r4, sp, #8
d00021be:	ab01      	add	r3, sp, #4
d00021c0:	ca07      	ldmia	r2, {r0, r1, r2}
d00021c2:	c403      	stmia	r4!, {r0, r1}
d00021c4:	a902      	add	r1, sp, #8
d00021c6:	7022      	strb	r2, [r4, #0]
d00021c8:	2000      	movs	r0, #0
d00021ca:	2208      	movs	r2, #8
d00021cc:	f8d5 40a4 	ldr.w	r4, [r5, #164]	; 0xa4
d00021d0:	47a0      	blx	r4
d00021d2:	f8d5 3098 	ldr.w	r3, [r5, #152]	; 0x98
d00021d6:	2000      	movs	r0, #0
d00021d8:	4798      	blx	r3
d00021da:	b064      	add	sp, #400	; 0x190
d00021dc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00021e0:	2001f000 	.word	0x2001f000
d00021e4:	d0007318 	.word	0xd0007318
d00021e8:	d0007328 	.word	0xd0007328
d00021ec:	00020364 	.word	0x00020364
d00021f0:	d025176c 	.word	0xd025176c
d00021f4:	00020378 	.word	0x00020378
d00021f8:	d0007230 	.word	0xd0007230
d00021fc:	d0051558 	.word	0xd0051558
d0002200:	d0007340 	.word	0xd0007340
d0002204:	d0007204 	.word	0xd0007204
d0002208:	d0007378 	.word	0xd0007378
d000220c:	d0007354 	.word	0xd0007354
d0002210:	d000736c 	.word	0xd000736c
d0002214:	d0007274 	.word	0xd0007274
d0002218:	d0007380 	.word	0xd0007380
d000221c:	d00511e4 	.word	0xd00511e4
d0002220:	d000738c 	.word	0xd000738c
d0002224:	d0007398 	.word	0xd0007398
d0002228:	d00511e0 	.word	0xd00511e0
d000222c:	d00073a0 	.word	0xd00073a0
d0002230:	d00311e0 	.word	0xd00311e0

d0002234 <KB_ISR2>:
d0002234:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0002236:	4e26      	ldr	r6, [pc, #152]	; (d00022d0 <KB_ISR2+0x9c>)
d0002238:	4604      	mov	r4, r0
d000223a:	7800      	ldrb	r0, [r0, #0]
d000223c:	2200      	movs	r2, #0
d000223e:	6833      	ldr	r3, [r6, #0]
d0002240:	4f24      	ldr	r7, [pc, #144]	; (d00022d4 <KB_ISR2+0xa0>)
d0002242:	f010 0f22 	tst.w	r0, #34	; 0x22
d0002246:	f043 0310 	orr.w	r3, r3, #16
d000224a:	4923      	ldr	r1, [pc, #140]	; (d00022d8 <KB_ISR2+0xa4>)
d000224c:	4d23      	ldr	r5, [pc, #140]	; (d00022dc <KB_ISR2+0xa8>)
d000224e:	6033      	str	r3, [r6, #0]
d0002250:	bf14      	ite	ne
d0002252:	2301      	movne	r3, #1
d0002254:	4613      	moveq	r3, r2
d0002256:	723a      	strb	r2, [r7, #8]
d0002258:	727a      	strb	r2, [r7, #9]
d000225a:	78a0      	ldrb	r0, [r4, #2]
d000225c:	700b      	strb	r3, [r1, #0]
d000225e:	7038      	strb	r0, [r7, #0]
d0002260:	78ab      	ldrb	r3, [r5, #2]
d0002262:	2800      	cmp	r0, #0
d0002264:	d13c      	bne.n	d00022e0 <KB_ISR2+0xac>
d0002266:	78e0      	ldrb	r0, [r4, #3]
d0002268:	7078      	strb	r0, [r7, #1]
d000226a:	2800      	cmp	r0, #0
d000226c:	d154      	bne.n	d0002318 <KB_ISR2+0xe4>
d000226e:	7920      	ldrb	r0, [r4, #4]
d0002270:	70b8      	strb	r0, [r7, #2]
d0002272:	2800      	cmp	r0, #0
d0002274:	d16c      	bne.n	d0002350 <KB_ISR2+0x11c>
d0002276:	7960      	ldrb	r0, [r4, #5]
d0002278:	70f8      	strb	r0, [r7, #3]
d000227a:	2800      	cmp	r0, #0
d000227c:	f040 8085 	bne.w	d000238a <KB_ISR2+0x156>
d0002280:	79a0      	ldrb	r0, [r4, #6]
d0002282:	7138      	strb	r0, [r7, #4]
d0002284:	2800      	cmp	r0, #0
d0002286:	f040 80a3 	bne.w	d00023d0 <KB_ISR2+0x19c>
d000228a:	79e0      	ldrb	r0, [r4, #7]
d000228c:	7178      	strb	r0, [r7, #5]
d000228e:	2800      	cmp	r0, #0
d0002290:	f040 80c1 	bne.w	d0002416 <KB_ISR2+0x1e2>
d0002294:	78ab      	ldrb	r3, [r5, #2]
d0002296:	2b00      	cmp	r3, #0
d0002298:	f040 80df 	bne.w	d000245a <KB_ISR2+0x226>
d000229c:	78eb      	ldrb	r3, [r5, #3]
d000229e:	2b00      	cmp	r3, #0
d00022a0:	f040 80fb 	bne.w	d000249a <KB_ISR2+0x266>
d00022a4:	792b      	ldrb	r3, [r5, #4]
d00022a6:	2b00      	cmp	r3, #0
d00022a8:	f040 8117 	bne.w	d00024da <KB_ISR2+0x2a6>
d00022ac:	796b      	ldrb	r3, [r5, #5]
d00022ae:	2b00      	cmp	r3, #0
d00022b0:	f040 8133 	bne.w	d000251a <KB_ISR2+0x2e6>
d00022b4:	79ab      	ldrb	r3, [r5, #6]
d00022b6:	2b00      	cmp	r3, #0
d00022b8:	f040 814f 	bne.w	d000255a <KB_ISR2+0x326>
d00022bc:	79eb      	ldrb	r3, [r5, #7]
d00022be:	2b00      	cmp	r3, #0
d00022c0:	f040 816b 	bne.w	d000259a <KB_ISR2+0x366>
d00022c4:	6822      	ldr	r2, [r4, #0]
d00022c6:	6863      	ldr	r3, [r4, #4]
d00022c8:	602a      	str	r2, [r5, #0]
d00022ca:	606b      	str	r3, [r5, #4]
d00022cc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00022ce:	bf00      	nop
d00022d0:	d0252b14 	.word	0xd0252b14
d00022d4:	d0251804 	.word	0xd0251804
d00022d8:	d000f058 	.word	0xd000f058
d00022dc:	d000f05c 	.word	0xd000f05c
d00022e0:	4283      	cmp	r3, r0
d00022e2:	d0c0      	beq.n	d0002266 <KB_ISR2+0x32>
d00022e4:	78ea      	ldrb	r2, [r5, #3]
d00022e6:	4282      	cmp	r2, r0
d00022e8:	d0bd      	beq.n	d0002266 <KB_ISR2+0x32>
d00022ea:	792a      	ldrb	r2, [r5, #4]
d00022ec:	4282      	cmp	r2, r0
d00022ee:	d0ba      	beq.n	d0002266 <KB_ISR2+0x32>
d00022f0:	796a      	ldrb	r2, [r5, #5]
d00022f2:	4282      	cmp	r2, r0
d00022f4:	d0b7      	beq.n	d0002266 <KB_ISR2+0x32>
d00022f6:	79aa      	ldrb	r2, [r5, #6]
d00022f8:	4282      	cmp	r2, r0
d00022fa:	d0b4      	beq.n	d0002266 <KB_ISR2+0x32>
d00022fc:	79ea      	ldrb	r2, [r5, #7]
d00022fe:	4282      	cmp	r2, r0
d0002300:	d0b1      	beq.n	d0002266 <KB_ISR2+0x32>
d0002302:	282a      	cmp	r0, #42	; 0x2a
d0002304:	f040 8191 	bne.w	d000262a <KB_ISR2+0x3f6>
d0002308:	6832      	ldr	r2, [r6, #0]
d000230a:	f042 0220 	orr.w	r2, r2, #32
d000230e:	6032      	str	r2, [r6, #0]
d0002310:	78e0      	ldrb	r0, [r4, #3]
d0002312:	7078      	strb	r0, [r7, #1]
d0002314:	2800      	cmp	r0, #0
d0002316:	d0aa      	beq.n	d000226e <KB_ISR2+0x3a>
d0002318:	4283      	cmp	r3, r0
d000231a:	d0a8      	beq.n	d000226e <KB_ISR2+0x3a>
d000231c:	78ea      	ldrb	r2, [r5, #3]
d000231e:	4282      	cmp	r2, r0
d0002320:	d0a5      	beq.n	d000226e <KB_ISR2+0x3a>
d0002322:	792a      	ldrb	r2, [r5, #4]
d0002324:	4282      	cmp	r2, r0
d0002326:	d0a2      	beq.n	d000226e <KB_ISR2+0x3a>
d0002328:	796a      	ldrb	r2, [r5, #5]
d000232a:	4282      	cmp	r2, r0
d000232c:	d09f      	beq.n	d000226e <KB_ISR2+0x3a>
d000232e:	79aa      	ldrb	r2, [r5, #6]
d0002330:	4282      	cmp	r2, r0
d0002332:	d09c      	beq.n	d000226e <KB_ISR2+0x3a>
d0002334:	79ea      	ldrb	r2, [r5, #7]
d0002336:	4282      	cmp	r2, r0
d0002338:	d099      	beq.n	d000226e <KB_ISR2+0x3a>
d000233a:	282a      	cmp	r0, #42	; 0x2a
d000233c:	f040 814e 	bne.w	d00025dc <KB_ISR2+0x3a8>
d0002340:	6832      	ldr	r2, [r6, #0]
d0002342:	f042 0220 	orr.w	r2, r2, #32
d0002346:	6032      	str	r2, [r6, #0]
d0002348:	7920      	ldrb	r0, [r4, #4]
d000234a:	70b8      	strb	r0, [r7, #2]
d000234c:	2800      	cmp	r0, #0
d000234e:	d092      	beq.n	d0002276 <KB_ISR2+0x42>
d0002350:	4283      	cmp	r3, r0
d0002352:	d090      	beq.n	d0002276 <KB_ISR2+0x42>
d0002354:	78ea      	ldrb	r2, [r5, #3]
d0002356:	4282      	cmp	r2, r0
d0002358:	d08d      	beq.n	d0002276 <KB_ISR2+0x42>
d000235a:	792a      	ldrb	r2, [r5, #4]
d000235c:	4282      	cmp	r2, r0
d000235e:	d08a      	beq.n	d0002276 <KB_ISR2+0x42>
d0002360:	796a      	ldrb	r2, [r5, #5]
d0002362:	4282      	cmp	r2, r0
d0002364:	d087      	beq.n	d0002276 <KB_ISR2+0x42>
d0002366:	79aa      	ldrb	r2, [r5, #6]
d0002368:	4282      	cmp	r2, r0
d000236a:	d084      	beq.n	d0002276 <KB_ISR2+0x42>
d000236c:	79ea      	ldrb	r2, [r5, #7]
d000236e:	4282      	cmp	r2, r0
d0002370:	d081      	beq.n	d0002276 <KB_ISR2+0x42>
d0002372:	282a      	cmp	r0, #42	; 0x2a
d0002374:	f040 813a 	bne.w	d00025ec <KB_ISR2+0x3b8>
d0002378:	6832      	ldr	r2, [r6, #0]
d000237a:	f042 0220 	orr.w	r2, r2, #32
d000237e:	6032      	str	r2, [r6, #0]
d0002380:	7960      	ldrb	r0, [r4, #5]
d0002382:	70f8      	strb	r0, [r7, #3]
d0002384:	2800      	cmp	r0, #0
d0002386:	f43f af7b 	beq.w	d0002280 <KB_ISR2+0x4c>
d000238a:	4283      	cmp	r3, r0
d000238c:	f43f af78 	beq.w	d0002280 <KB_ISR2+0x4c>
d0002390:	78ea      	ldrb	r2, [r5, #3]
d0002392:	4282      	cmp	r2, r0
d0002394:	f43f af74 	beq.w	d0002280 <KB_ISR2+0x4c>
d0002398:	792a      	ldrb	r2, [r5, #4]
d000239a:	4282      	cmp	r2, r0
d000239c:	f43f af70 	beq.w	d0002280 <KB_ISR2+0x4c>
d00023a0:	796a      	ldrb	r2, [r5, #5]
d00023a2:	4282      	cmp	r2, r0
d00023a4:	f43f af6c 	beq.w	d0002280 <KB_ISR2+0x4c>
d00023a8:	79aa      	ldrb	r2, [r5, #6]
d00023aa:	4282      	cmp	r2, r0
d00023ac:	f43f af68 	beq.w	d0002280 <KB_ISR2+0x4c>
d00023b0:	79ea      	ldrb	r2, [r5, #7]
d00023b2:	4282      	cmp	r2, r0
d00023b4:	f43f af64 	beq.w	d0002280 <KB_ISR2+0x4c>
d00023b8:	282a      	cmp	r0, #42	; 0x2a
d00023ba:	f040 811f 	bne.w	d00025fc <KB_ISR2+0x3c8>
d00023be:	6832      	ldr	r2, [r6, #0]
d00023c0:	f042 0220 	orr.w	r2, r2, #32
d00023c4:	6032      	str	r2, [r6, #0]
d00023c6:	79a0      	ldrb	r0, [r4, #6]
d00023c8:	7138      	strb	r0, [r7, #4]
d00023ca:	2800      	cmp	r0, #0
d00023cc:	f43f af5d 	beq.w	d000228a <KB_ISR2+0x56>
d00023d0:	4283      	cmp	r3, r0
d00023d2:	f43f af5a 	beq.w	d000228a <KB_ISR2+0x56>
d00023d6:	78ea      	ldrb	r2, [r5, #3]
d00023d8:	4282      	cmp	r2, r0
d00023da:	f43f af56 	beq.w	d000228a <KB_ISR2+0x56>
d00023de:	792a      	ldrb	r2, [r5, #4]
d00023e0:	4282      	cmp	r2, r0
d00023e2:	f43f af52 	beq.w	d000228a <KB_ISR2+0x56>
d00023e6:	796a      	ldrb	r2, [r5, #5]
d00023e8:	4282      	cmp	r2, r0
d00023ea:	f43f af4e 	beq.w	d000228a <KB_ISR2+0x56>
d00023ee:	79aa      	ldrb	r2, [r5, #6]
d00023f0:	4282      	cmp	r2, r0
d00023f2:	f43f af4a 	beq.w	d000228a <KB_ISR2+0x56>
d00023f6:	79ea      	ldrb	r2, [r5, #7]
d00023f8:	4282      	cmp	r2, r0
d00023fa:	f43f af46 	beq.w	d000228a <KB_ISR2+0x56>
d00023fe:	282a      	cmp	r0, #42	; 0x2a
d0002400:	f040 8104 	bne.w	d000260c <KB_ISR2+0x3d8>
d0002404:	6832      	ldr	r2, [r6, #0]
d0002406:	f042 0220 	orr.w	r2, r2, #32
d000240a:	6032      	str	r2, [r6, #0]
d000240c:	79e0      	ldrb	r0, [r4, #7]
d000240e:	7178      	strb	r0, [r7, #5]
d0002410:	2800      	cmp	r0, #0
d0002412:	f43f af3f 	beq.w	d0002294 <KB_ISR2+0x60>
d0002416:	4298      	cmp	r0, r3
d0002418:	f43f af3c 	beq.w	d0002294 <KB_ISR2+0x60>
d000241c:	78eb      	ldrb	r3, [r5, #3]
d000241e:	4283      	cmp	r3, r0
d0002420:	f43f af38 	beq.w	d0002294 <KB_ISR2+0x60>
d0002424:	792b      	ldrb	r3, [r5, #4]
d0002426:	4283      	cmp	r3, r0
d0002428:	f43f af34 	beq.w	d0002294 <KB_ISR2+0x60>
d000242c:	796b      	ldrb	r3, [r5, #5]
d000242e:	4283      	cmp	r3, r0
d0002430:	f43f af30 	beq.w	d0002294 <KB_ISR2+0x60>
d0002434:	79ab      	ldrb	r3, [r5, #6]
d0002436:	4283      	cmp	r3, r0
d0002438:	f43f af2c 	beq.w	d0002294 <KB_ISR2+0x60>
d000243c:	79eb      	ldrb	r3, [r5, #7]
d000243e:	4283      	cmp	r3, r0
d0002440:	f43f af28 	beq.w	d0002294 <KB_ISR2+0x60>
d0002444:	282a      	cmp	r0, #42	; 0x2a
d0002446:	f040 80e9 	bne.w	d000261c <KB_ISR2+0x3e8>
d000244a:	6833      	ldr	r3, [r6, #0]
d000244c:	f043 0320 	orr.w	r3, r3, #32
d0002450:	6033      	str	r3, [r6, #0]
d0002452:	78ab      	ldrb	r3, [r5, #2]
d0002454:	2b00      	cmp	r3, #0
d0002456:	f43f af21 	beq.w	d000229c <KB_ISR2+0x68>
d000245a:	78a2      	ldrb	r2, [r4, #2]
d000245c:	429a      	cmp	r2, r3
d000245e:	f43f af1d 	beq.w	d000229c <KB_ISR2+0x68>
d0002462:	78e2      	ldrb	r2, [r4, #3]
d0002464:	429a      	cmp	r2, r3
d0002466:	f43f af19 	beq.w	d000229c <KB_ISR2+0x68>
d000246a:	7922      	ldrb	r2, [r4, #4]
d000246c:	429a      	cmp	r2, r3
d000246e:	f43f af15 	beq.w	d000229c <KB_ISR2+0x68>
d0002472:	7962      	ldrb	r2, [r4, #5]
d0002474:	429a      	cmp	r2, r3
d0002476:	f43f af11 	beq.w	d000229c <KB_ISR2+0x68>
d000247a:	79a2      	ldrb	r2, [r4, #6]
d000247c:	429a      	cmp	r2, r3
d000247e:	f43f af0d 	beq.w	d000229c <KB_ISR2+0x68>
d0002482:	79e2      	ldrb	r2, [r4, #7]
d0002484:	429a      	cmp	r2, r3
d0002486:	f43f af09 	beq.w	d000229c <KB_ISR2+0x68>
d000248a:	6833      	ldr	r3, [r6, #0]
d000248c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0002490:	6033      	str	r3, [r6, #0]
d0002492:	78eb      	ldrb	r3, [r5, #3]
d0002494:	2b00      	cmp	r3, #0
d0002496:	f43f af05 	beq.w	d00022a4 <KB_ISR2+0x70>
d000249a:	78a2      	ldrb	r2, [r4, #2]
d000249c:	429a      	cmp	r2, r3
d000249e:	f43f af01 	beq.w	d00022a4 <KB_ISR2+0x70>
d00024a2:	78e2      	ldrb	r2, [r4, #3]
d00024a4:	429a      	cmp	r2, r3
d00024a6:	f43f aefd 	beq.w	d00022a4 <KB_ISR2+0x70>
d00024aa:	7922      	ldrb	r2, [r4, #4]
d00024ac:	429a      	cmp	r2, r3
d00024ae:	f43f aef9 	beq.w	d00022a4 <KB_ISR2+0x70>
d00024b2:	7962      	ldrb	r2, [r4, #5]
d00024b4:	429a      	cmp	r2, r3
d00024b6:	f43f aef5 	beq.w	d00022a4 <KB_ISR2+0x70>
d00024ba:	79a2      	ldrb	r2, [r4, #6]
d00024bc:	429a      	cmp	r2, r3
d00024be:	f43f aef1 	beq.w	d00022a4 <KB_ISR2+0x70>
d00024c2:	79e2      	ldrb	r2, [r4, #7]
d00024c4:	429a      	cmp	r2, r3
d00024c6:	f43f aeed 	beq.w	d00022a4 <KB_ISR2+0x70>
d00024ca:	6833      	ldr	r3, [r6, #0]
d00024cc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00024d0:	6033      	str	r3, [r6, #0]
d00024d2:	792b      	ldrb	r3, [r5, #4]
d00024d4:	2b00      	cmp	r3, #0
d00024d6:	f43f aee9 	beq.w	d00022ac <KB_ISR2+0x78>
d00024da:	78a2      	ldrb	r2, [r4, #2]
d00024dc:	429a      	cmp	r2, r3
d00024de:	f43f aee5 	beq.w	d00022ac <KB_ISR2+0x78>
d00024e2:	78e2      	ldrb	r2, [r4, #3]
d00024e4:	429a      	cmp	r2, r3
d00024e6:	f43f aee1 	beq.w	d00022ac <KB_ISR2+0x78>
d00024ea:	7922      	ldrb	r2, [r4, #4]
d00024ec:	429a      	cmp	r2, r3
d00024ee:	f43f aedd 	beq.w	d00022ac <KB_ISR2+0x78>
d00024f2:	7962      	ldrb	r2, [r4, #5]
d00024f4:	429a      	cmp	r2, r3
d00024f6:	f43f aed9 	beq.w	d00022ac <KB_ISR2+0x78>
d00024fa:	79a2      	ldrb	r2, [r4, #6]
d00024fc:	429a      	cmp	r2, r3
d00024fe:	f43f aed5 	beq.w	d00022ac <KB_ISR2+0x78>
d0002502:	79e2      	ldrb	r2, [r4, #7]
d0002504:	429a      	cmp	r2, r3
d0002506:	f43f aed1 	beq.w	d00022ac <KB_ISR2+0x78>
d000250a:	6833      	ldr	r3, [r6, #0]
d000250c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0002510:	6033      	str	r3, [r6, #0]
d0002512:	796b      	ldrb	r3, [r5, #5]
d0002514:	2b00      	cmp	r3, #0
d0002516:	f43f aecd 	beq.w	d00022b4 <KB_ISR2+0x80>
d000251a:	78a2      	ldrb	r2, [r4, #2]
d000251c:	429a      	cmp	r2, r3
d000251e:	f43f aec9 	beq.w	d00022b4 <KB_ISR2+0x80>
d0002522:	78e2      	ldrb	r2, [r4, #3]
d0002524:	429a      	cmp	r2, r3
d0002526:	f43f aec5 	beq.w	d00022b4 <KB_ISR2+0x80>
d000252a:	7922      	ldrb	r2, [r4, #4]
d000252c:	429a      	cmp	r2, r3
d000252e:	f43f aec1 	beq.w	d00022b4 <KB_ISR2+0x80>
d0002532:	7962      	ldrb	r2, [r4, #5]
d0002534:	429a      	cmp	r2, r3
d0002536:	f43f aebd 	beq.w	d00022b4 <KB_ISR2+0x80>
d000253a:	79a2      	ldrb	r2, [r4, #6]
d000253c:	429a      	cmp	r2, r3
d000253e:	f43f aeb9 	beq.w	d00022b4 <KB_ISR2+0x80>
d0002542:	79e2      	ldrb	r2, [r4, #7]
d0002544:	429a      	cmp	r2, r3
d0002546:	f43f aeb5 	beq.w	d00022b4 <KB_ISR2+0x80>
d000254a:	6833      	ldr	r3, [r6, #0]
d000254c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0002550:	6033      	str	r3, [r6, #0]
d0002552:	79ab      	ldrb	r3, [r5, #6]
d0002554:	2b00      	cmp	r3, #0
d0002556:	f43f aeb1 	beq.w	d00022bc <KB_ISR2+0x88>
d000255a:	78a2      	ldrb	r2, [r4, #2]
d000255c:	429a      	cmp	r2, r3
d000255e:	f43f aead 	beq.w	d00022bc <KB_ISR2+0x88>
d0002562:	78e2      	ldrb	r2, [r4, #3]
d0002564:	429a      	cmp	r2, r3
d0002566:	f43f aea9 	beq.w	d00022bc <KB_ISR2+0x88>
d000256a:	7922      	ldrb	r2, [r4, #4]
d000256c:	429a      	cmp	r2, r3
d000256e:	f43f aea5 	beq.w	d00022bc <KB_ISR2+0x88>
d0002572:	7962      	ldrb	r2, [r4, #5]
d0002574:	429a      	cmp	r2, r3
d0002576:	f43f aea1 	beq.w	d00022bc <KB_ISR2+0x88>
d000257a:	79a2      	ldrb	r2, [r4, #6]
d000257c:	429a      	cmp	r2, r3
d000257e:	f43f ae9d 	beq.w	d00022bc <KB_ISR2+0x88>
d0002582:	79e2      	ldrb	r2, [r4, #7]
d0002584:	429a      	cmp	r2, r3
d0002586:	f43f ae99 	beq.w	d00022bc <KB_ISR2+0x88>
d000258a:	6833      	ldr	r3, [r6, #0]
d000258c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0002590:	6033      	str	r3, [r6, #0]
d0002592:	79eb      	ldrb	r3, [r5, #7]
d0002594:	2b00      	cmp	r3, #0
d0002596:	f43f ae95 	beq.w	d00022c4 <KB_ISR2+0x90>
d000259a:	78a2      	ldrb	r2, [r4, #2]
d000259c:	429a      	cmp	r2, r3
d000259e:	f43f ae91 	beq.w	d00022c4 <KB_ISR2+0x90>
d00025a2:	78e2      	ldrb	r2, [r4, #3]
d00025a4:	429a      	cmp	r2, r3
d00025a6:	f43f ae8d 	beq.w	d00022c4 <KB_ISR2+0x90>
d00025aa:	7922      	ldrb	r2, [r4, #4]
d00025ac:	429a      	cmp	r2, r3
d00025ae:	f43f ae89 	beq.w	d00022c4 <KB_ISR2+0x90>
d00025b2:	7962      	ldrb	r2, [r4, #5]
d00025b4:	429a      	cmp	r2, r3
d00025b6:	f43f ae85 	beq.w	d00022c4 <KB_ISR2+0x90>
d00025ba:	79a2      	ldrb	r2, [r4, #6]
d00025bc:	429a      	cmp	r2, r3
d00025be:	f43f ae81 	beq.w	d00022c4 <KB_ISR2+0x90>
d00025c2:	79e2      	ldrb	r2, [r4, #7]
d00025c4:	429a      	cmp	r2, r3
d00025c6:	f43f ae7d 	beq.w	d00022c4 <KB_ISR2+0x90>
d00025ca:	6833      	ldr	r3, [r6, #0]
d00025cc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00025d0:	6033      	str	r3, [r6, #0]
d00025d2:	6863      	ldr	r3, [r4, #4]
d00025d4:	6822      	ldr	r2, [r4, #0]
d00025d6:	606b      	str	r3, [r5, #4]
d00025d8:	602a      	str	r2, [r5, #0]
d00025da:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00025dc:	f7fd fd22 	bl	d0000024 <push_key>
d00025e0:	6832      	ldr	r2, [r6, #0]
d00025e2:	78ab      	ldrb	r3, [r5, #2]
d00025e4:	f042 0220 	orr.w	r2, r2, #32
d00025e8:	6032      	str	r2, [r6, #0]
d00025ea:	e6ad      	b.n	d0002348 <KB_ISR2+0x114>
d00025ec:	f7fd fd1a 	bl	d0000024 <push_key>
d00025f0:	6832      	ldr	r2, [r6, #0]
d00025f2:	78ab      	ldrb	r3, [r5, #2]
d00025f4:	f042 0220 	orr.w	r2, r2, #32
d00025f8:	6032      	str	r2, [r6, #0]
d00025fa:	e6c1      	b.n	d0002380 <KB_ISR2+0x14c>
d00025fc:	f7fd fd12 	bl	d0000024 <push_key>
d0002600:	6832      	ldr	r2, [r6, #0]
d0002602:	78ab      	ldrb	r3, [r5, #2]
d0002604:	f042 0220 	orr.w	r2, r2, #32
d0002608:	6032      	str	r2, [r6, #0]
d000260a:	e6dc      	b.n	d00023c6 <KB_ISR2+0x192>
d000260c:	f7fd fd0a 	bl	d0000024 <push_key>
d0002610:	6832      	ldr	r2, [r6, #0]
d0002612:	78ab      	ldrb	r3, [r5, #2]
d0002614:	f042 0220 	orr.w	r2, r2, #32
d0002618:	6032      	str	r2, [r6, #0]
d000261a:	e6f7      	b.n	d000240c <KB_ISR2+0x1d8>
d000261c:	f7fd fd02 	bl	d0000024 <push_key>
d0002620:	6833      	ldr	r3, [r6, #0]
d0002622:	f043 0320 	orr.w	r3, r3, #32
d0002626:	6033      	str	r3, [r6, #0]
d0002628:	e713      	b.n	d0002452 <KB_ISR2+0x21e>
d000262a:	f7fd fcfb 	bl	d0000024 <push_key>
d000262e:	6832      	ldr	r2, [r6, #0]
d0002630:	78ab      	ldrb	r3, [r5, #2]
d0002632:	f042 0220 	orr.w	r2, r2, #32
d0002636:	6032      	str	r2, [r6, #0]
d0002638:	e66a      	b.n	d0002310 <KB_ISR2+0xdc>
d000263a:	bf00      	nop

d000263c <main>:
d000263c:	4ad8      	ldr	r2, [pc, #864]	; (d00029a0 <main+0x364>)
d000263e:	49d9      	ldr	r1, [pc, #868]	; (d00029a4 <main+0x368>)
d0002640:	6813      	ldr	r3, [r2, #0]
d0002642:	48d9      	ldr	r0, [pc, #868]	; (d00029a8 <main+0x36c>)
d0002644:	f023 0310 	bic.w	r3, r3, #16
d0002648:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d000264c:	2600      	movs	r6, #0
d000264e:	4cd7      	ldr	r4, [pc, #860]	; (d00029ac <main+0x370>)
d0002650:	6013      	str	r3, [r2, #0]
d0002652:	b0a9      	sub	sp, #164	; 0xa4
d0002654:	600e      	str	r6, [r1, #0]
d0002656:	68a3      	ldr	r3, [r4, #8]
d0002658:	4798      	blx	r3
d000265a:	200a      	movs	r0, #10
d000265c:	68e3      	ldr	r3, [r4, #12]
d000265e:	4798      	blx	r3
d0002660:	4bd3      	ldr	r3, [pc, #844]	; (d00029b0 <main+0x374>)
d0002662:	4fd4      	ldr	r7, [pc, #848]	; (d00029b4 <main+0x378>)
d0002664:	701e      	strb	r6, [r3, #0]
d0002666:	4bd4      	ldr	r3, [pc, #848]	; (d00029b8 <main+0x37c>)
d0002668:	603e      	str	r6, [r7, #0]
d000266a:	701e      	strb	r6, [r3, #0]
d000266c:	4bd3      	ldr	r3, [pc, #844]	; (d00029bc <main+0x380>)
d000266e:	601e      	str	r6, [r3, #0]
d0002670:	4bd3      	ldr	r3, [pc, #844]	; (d00029c0 <main+0x384>)
d0002672:	601e      	str	r6, [r3, #0]
d0002674:	4bd3      	ldr	r3, [pc, #844]	; (d00029c4 <main+0x388>)
d0002676:	701e      	strb	r6, [r3, #0]
d0002678:	4bd3      	ldr	r3, [pc, #844]	; (d00029c8 <main+0x38c>)
d000267a:	601e      	str	r6, [r3, #0]
d000267c:	4bd3      	ldr	r3, [pc, #844]	; (d00029cc <main+0x390>)
d000267e:	601e      	str	r6, [r3, #0]
d0002680:	4bd3      	ldr	r3, [pc, #844]	; (d00029d0 <main+0x394>)
d0002682:	701e      	strb	r6, [r3, #0]
d0002684:	4bd3      	ldr	r3, [pc, #844]	; (d00029d4 <main+0x398>)
d0002686:	701e      	strb	r6, [r3, #0]
d0002688:	f8d4 30c0 	ldr.w	r3, [r4, #192]	; 0xc0
d000268c:	4798      	blx	r3
d000268e:	f7fd fd53 	bl	d0000138 <initDisplayBuffers>
d0002692:	f001 fd0f 	bl	d00040b4 <InitStates>
d0002696:	f001 fc59 	bl	d0003f4c <guClearButtons>
d000269a:	f7fe fa73 	bl	d0000b84 <ClearSong>
d000269e:	f7fe fe95 	bl	d00013cc <initKFMSong>
d00026a2:	4630      	mov	r0, r6
d00026a4:	f7fd fdd2 	bl	d000024c <StopChannel>
d00026a8:	2001      	movs	r0, #1
d00026aa:	f7fd fdcf 	bl	d000024c <StopChannel>
d00026ae:	2002      	movs	r0, #2
d00026b0:	f7fd fdcc 	bl	d000024c <StopChannel>
d00026b4:	2003      	movs	r0, #3
d00026b6:	f7fd fdc9 	bl	d000024c <StopChannel>
d00026ba:	2004      	movs	r0, #4
d00026bc:	f7fd fdc6 	bl	d000024c <StopChannel>
d00026c0:	2005      	movs	r0, #5
d00026c2:	f7fd fdc3 	bl	d000024c <StopChannel>
d00026c6:	2006      	movs	r0, #6
d00026c8:	f7fd fdc0 	bl	d000024c <StopChannel>
d00026cc:	2007      	movs	r0, #7
d00026ce:	f7fd fdbd 	bl	d000024c <StopChannel>
d00026d2:	f7fe fb23 	bl	d0000d1c <StopTimer>
d00026d6:	49c0      	ldr	r1, [pc, #768]	; (d00029d8 <main+0x39c>)
d00026d8:	f8d4 3108 	ldr.w	r3, [r4, #264]	; 0x108
d00026dc:	1f0a      	subs	r2, r1, #4
d00026de:	f201 75fc 	addw	r5, r1, #2044	; 0x7fc
d00026e2:	f852 4b08 	ldr.w	r4, [r2], #8
d00026e6:	3308      	adds	r3, #8
d00026e8:	f851 0b08 	ldr.w	r0, [r1], #8
d00026ec:	42aa      	cmp	r2, r5
d00026ee:	f843 4c08 	str.w	r4, [r3, #-8]
d00026f2:	f843 0c04 	str.w	r0, [r3, #-4]
d00026f6:	d1f4      	bne.n	d00026e2 <main+0xa6>
d00026f8:	2106      	movs	r1, #6
d00026fa:	2096      	movs	r0, #150	; 0x96
d00026fc:	f8df 82ac 	ldr.w	r8, [pc, #684]	; d00029ac <main+0x370>
d0002700:	f7fe fad0 	bl	d0000ca4 <setTempoSpeed>
d0002704:	f04f 0901 	mov.w	r9, #1
d0002708:	f7fe fa02 	bl	d0000b10 <initNoteLabels>
d000270c:	f7ff f84c 	bl	d00017a8 <setupTestSynths>
d0002710:	4bb2      	ldr	r3, [pc, #712]	; (d00029dc <main+0x3a0>)
d0002712:	2103      	movs	r1, #3
d0002714:	20dc      	movs	r0, #220	; 0xdc
d0002716:	f883 9000 	strb.w	r9, [r3]
d000271a:	f04f 0a1b 	mov.w	sl, #27
d000271e:	f8d8 30bc 	ldr.w	r3, [r8, #188]	; 0xbc
d0002722:	2519      	movs	r5, #25
d0002724:	4798      	blx	r3
d0002726:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d000272a:	f44f 73a0 	mov.w	r3, #320	; 0x140
d000272e:	2002      	movs	r0, #2
d0002730:	f8d8 40e8 	ldr.w	r4, [r8, #232]	; 0xe8
d0002734:	f04f 0b32 	mov.w	fp, #50	; 0x32
d0002738:	4619      	mov	r1, r3
d000273a:	9000      	str	r0, [sp, #0]
d000273c:	4610      	mov	r0, r2
d000273e:	47a0      	blx	r4
d0002740:	f8d8 30d8 	ldr.w	r3, [r8, #216]	; 0xd8
d0002744:	2100      	movs	r1, #0
d0002746:	48a6      	ldr	r0, [pc, #664]	; (d00029e0 <main+0x3a4>)
d0002748:	4798      	blx	r3
d000274a:	4649      	mov	r1, r9
d000274c:	f8d8 30d8 	ldr.w	r3, [r8, #216]	; 0xd8
d0002750:	48a3      	ldr	r0, [pc, #652]	; (d00029e0 <main+0x3a4>)
d0002752:	4798      	blx	r3
d0002754:	f8d8 3118 	ldr.w	r3, [r8, #280]	; 0x118
d0002758:	2000      	movs	r0, #0
d000275a:	4ca2      	ldr	r4, [pc, #648]	; (d00029e4 <main+0x3a8>)
d000275c:	4798      	blx	r3
d000275e:	f8d8 311c 	ldr.w	r3, [r8, #284]	; 0x11c
d0002762:	2000      	movs	r0, #0
d0002764:	4798      	blx	r3
d0002766:	f8d8 2050 	ldr.w	r2, [r8, #80]	; 0x50
d000276a:	499f      	ldr	r1, [pc, #636]	; (d00029e8 <main+0x3ac>)
d000276c:	f44f 7080 	mov.w	r0, #256	; 0x100
d0002770:	f8d8 3194 	ldr.w	r3, [r8, #404]	; 0x194
d0002774:	6091      	str	r1, [r2, #8]
d0002776:	4798      	blx	r3
d0002778:	4648      	mov	r0, r9
d000277a:	f8d8 3160 	ldr.w	r3, [r8, #352]	; 0x160
d000277e:	4798      	blx	r3
d0002780:	f8d8 3110 	ldr.w	r3, [r8, #272]	; 0x110
d0002784:	2005      	movs	r0, #5
d0002786:	f883 9000 	strb.w	r9, [r3]
d000278a:	f8d8 311c 	ldr.w	r3, [r8, #284]	; 0x11c
d000278e:	4798      	blx	r3
d0002790:	f7fd fd1c 	bl	d00001cc <SetDrawToBackLayer>
d0002794:	f8d8 20f8 	ldr.w	r2, [r8, #248]	; 0xf8
d0002798:	f04f 0103 	mov.w	r1, #3
d000279c:	2300      	movs	r3, #0
d000279e:	4648      	mov	r0, r9
d00027a0:	f04f 0918 	mov.w	r9, #24
d00027a4:	7011      	strb	r1, [r2, #0]
d00027a6:	2109      	movs	r1, #9
d00027a8:	461a      	mov	r2, r3
d00027aa:	e9cd a101 	strd	sl, r1, [sp, #4]
d00027ae:	211c      	movs	r1, #28
d00027b0:	9100      	str	r1, [sp, #0]
d00027b2:	498e      	ldr	r1, [pc, #568]	; (d00029ec <main+0x3b0>)
d00027b4:	f001 fa46 	bl	d0003c44 <CreateButton>
d00027b8:	2204      	movs	r2, #4
d00027ba:	2106      	movs	r1, #6
d00027bc:	4653      	mov	r3, sl
d00027be:	9201      	str	r2, [sp, #4]
d00027c0:	201e      	movs	r0, #30
d00027c2:	f44f 72ac 	mov.w	r2, #344	; 0x158
d00027c6:	9100      	str	r1, [sp, #0]
d00027c8:	2100      	movs	r1, #0
d00027ca:	f001 f8db 	bl	d0003984 <uiDrawBeval>
d00027ce:	f8d8 30f8 	ldr.w	r3, [r8, #248]	; 0xf8
d00027d2:	22ff      	movs	r2, #255	; 0xff
d00027d4:	f10d 0c20 	add.w	ip, sp, #32
d00027d8:	701a      	strb	r2, [r3, #0]
d00027da:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d00027dc:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d00027e0:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d00027e2:	f8d4 e000 	ldr.w	lr, [r4]
d00027e6:	243a      	movs	r4, #58	; 0x3a
d00027e8:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d00027ec:	aa08      	add	r2, sp, #32
d00027ee:	f88c e000 	strb.w	lr, [ip]
d00027f2:	2107      	movs	r1, #7
d00027f4:	f8d8 3148 	ldr.w	r3, [r8, #328]	; 0x148
d00027f8:	2028      	movs	r0, #40	; 0x28
d00027fa:	4798      	blx	r3
d00027fc:	2311      	movs	r3, #17
d00027fe:	220a      	movs	r2, #10
d0002800:	497b      	ldr	r1, [pc, #492]	; (d00029f0 <main+0x3b4>)
d0002802:	9400      	str	r4, [sp, #0]
d0002804:	203f      	movs	r0, #63	; 0x3f
d0002806:	e9cd 5301 	strd	r5, r3, [sp, #4]
d000280a:	233c      	movs	r3, #60	; 0x3c
d000280c:	f001 fa1a 	bl	d0003c44 <CreateButton>
d0002810:	2311      	movs	r3, #17
d0002812:	2246      	movs	r2, #70	; 0x46
d0002814:	4977      	ldr	r1, [pc, #476]	; (d00029f4 <main+0x3b8>)
d0002816:	9400      	str	r4, [sp, #0]
d0002818:	203e      	movs	r0, #62	; 0x3e
d000281a:	2408      	movs	r4, #8
d000281c:	e9cd 5301 	strd	r5, r3, [sp, #4]
d0002820:	233c      	movs	r3, #60	; 0x3c
d0002822:	f001 fa0f 	bl	d0003c44 <CreateButton>
d0002826:	2309      	movs	r3, #9
d0002828:	f44f 72bc 	mov.w	r2, #376	; 0x178
d000282c:	4972      	ldr	r1, [pc, #456]	; (d00029f8 <main+0x3bc>)
d000282e:	2015      	movs	r0, #21
d0002830:	f8cd b000 	str.w	fp, [sp]
d0002834:	e9cd a301 	strd	sl, r3, [sp, #4]
d0002838:	2300      	movs	r3, #0
d000283a:	f001 fa03 	bl	d0003c44 <CreateButton>
d000283e:	2309      	movs	r3, #9
d0002840:	f44f 72d6 	mov.w	r2, #428	; 0x1ac
d0002844:	496d      	ldr	r1, [pc, #436]	; (d00029fc <main+0x3c0>)
d0002846:	2016      	movs	r0, #22
d0002848:	f8cd b000 	str.w	fp, [sp]
d000284c:	e9cd a301 	strd	sl, r3, [sp, #4]
d0002850:	2300      	movs	r3, #0
d0002852:	f001 f9f7 	bl	d0003c44 <CreateButton>
d0002856:	4650      	mov	r0, sl
d0002858:	f240 1305 	movw	r3, #261	; 0x105
d000285c:	f44f 72b9 	mov.w	r2, #370	; 0x172
d0002860:	4967      	ldr	r1, [pc, #412]	; (d0002a00 <main+0x3c4>)
d0002862:	f04f 0a16 	mov.w	sl, #22
d0002866:	9501      	str	r5, [sp, #4]
d0002868:	9402      	str	r4, [sp, #8]
d000286a:	f8cd 9000 	str.w	r9, [sp]
d000286e:	f001 f9e9 	bl	d0003c44 <CreateButton>
d0002872:	f240 1305 	movw	r3, #261	; 0x105
d0002876:	f44f 72c6 	mov.w	r2, #396	; 0x18c
d000287a:	4962      	ldr	r1, [pc, #392]	; (d0002a04 <main+0x3c8>)
d000287c:	f8cd 9000 	str.w	r9, [sp]
d0002880:	201c      	movs	r0, #28
d0002882:	e9cd 5401 	strd	r5, r4, [sp, #4]
d0002886:	f001 f9dd 	bl	d0003c44 <CreateButton>
d000288a:	f240 1305 	movw	r3, #261	; 0x105
d000288e:	f44f 72d3 	mov.w	r2, #422	; 0x1a6
d0002892:	495d      	ldr	r1, [pc, #372]	; (d0002a08 <main+0x3cc>)
d0002894:	f8cd 9000 	str.w	r9, [sp]
d0002898:	201d      	movs	r0, #29
d000289a:	e9cd 5401 	strd	r5, r4, [sp, #4]
d000289e:	f001 f9d1 	bl	d0003c44 <CreateButton>
d00028a2:	f240 1305 	movw	r3, #261	; 0x105
d00028a6:	f44f 72e0 	mov.w	r2, #448	; 0x1c0
d00028aa:	4958      	ldr	r1, [pc, #352]	; (d0002a0c <main+0x3d0>)
d00028ac:	f8cd 9000 	str.w	r9, [sp]
d00028b0:	201e      	movs	r0, #30
d00028b2:	e9cd 5401 	strd	r5, r4, [sp, #4]
d00028b6:	f001 f9c5 	bl	d0003c44 <CreateButton>
d00028ba:	f44f 7390 	mov.w	r3, #288	; 0x120
d00028be:	f44f 72b9 	mov.w	r2, #370	; 0x172
d00028c2:	4953      	ldr	r1, [pc, #332]	; (d0002a10 <main+0x3d4>)
d00028c4:	f8cd 9000 	str.w	r9, [sp]
d00028c8:	201f      	movs	r0, #31
d00028ca:	e9cd 5401 	strd	r5, r4, [sp, #4]
d00028ce:	f001 f9b9 	bl	d0003c44 <CreateButton>
d00028d2:	f44f 7390 	mov.w	r3, #288	; 0x120
d00028d6:	f44f 72c6 	mov.w	r2, #396	; 0x18c
d00028da:	494e      	ldr	r1, [pc, #312]	; (d0002a14 <main+0x3d8>)
d00028dc:	f8cd 9000 	str.w	r9, [sp]
d00028e0:	2020      	movs	r0, #32
d00028e2:	e9cd 5401 	strd	r5, r4, [sp, #4]
d00028e6:	f001 f9ad 	bl	d0003c44 <CreateButton>
d00028ea:	f44f 7390 	mov.w	r3, #288	; 0x120
d00028ee:	f44f 72d3 	mov.w	r2, #422	; 0x1a6
d00028f2:	4949      	ldr	r1, [pc, #292]	; (d0002a18 <main+0x3dc>)
d00028f4:	f8cd 9000 	str.w	r9, [sp]
d00028f8:	2021      	movs	r0, #33	; 0x21
d00028fa:	e9cd 5401 	strd	r5, r4, [sp, #4]
d00028fe:	f001 f9a1 	bl	d0003c44 <CreateButton>
d0002902:	f44f 7390 	mov.w	r3, #288	; 0x120
d0002906:	f44f 72e0 	mov.w	r2, #448	; 0x1c0
d000290a:	4944      	ldr	r1, [pc, #272]	; (d0002a1c <main+0x3e0>)
d000290c:	f8cd 9000 	str.w	r9, [sp]
d0002910:	2022      	movs	r0, #34	; 0x22
d0002912:	e9cd 5401 	strd	r5, r4, [sp, #4]
d0002916:	f001 f995 	bl	d0003c44 <CreateButton>
d000291a:	23a7      	movs	r3, #167	; 0xa7
d000291c:	f44f 72b9 	mov.w	r2, #370	; 0x172
d0002920:	493f      	ldr	r1, [pc, #252]	; (d0002a20 <main+0x3e4>)
d0002922:	2002      	movs	r0, #2
d0002924:	f8cd b000 	str.w	fp, [sp]
d0002928:	e9cd 5401 	strd	r5, r4, [sp, #4]
d000292c:	f001 f98a 	bl	d0003c44 <CreateButton>
d0002930:	23c2      	movs	r3, #194	; 0xc2
d0002932:	f44f 72b9 	mov.w	r2, #370	; 0x172
d0002936:	493b      	ldr	r1, [pc, #236]	; (d0002a24 <main+0x3e8>)
d0002938:	2003      	movs	r0, #3
d000293a:	f8cd b000 	str.w	fp, [sp]
d000293e:	e9cd 5401 	strd	r5, r4, [sp, #4]
d0002942:	f001 f97f 	bl	d0003c44 <CreateButton>
d0002946:	23dd      	movs	r3, #221	; 0xdd
d0002948:	f44f 72b9 	mov.w	r2, #370	; 0x172
d000294c:	4936      	ldr	r1, [pc, #216]	; (d0002a28 <main+0x3ec>)
d000294e:	2004      	movs	r0, #4
d0002950:	f8cd b000 	str.w	fp, [sp]
d0002954:	e9cd 5401 	strd	r5, r4, [sp, #4]
d0002958:	f001 f974 	bl	d0003c44 <CreateButton>
d000295c:	23dd      	movs	r3, #221	; 0xdd
d000295e:	f44f 72d3 	mov.w	r2, #422	; 0x1a6
d0002962:	4932      	ldr	r1, [pc, #200]	; (d0002a2c <main+0x3f0>)
d0002964:	2005      	movs	r0, #5
d0002966:	f8cd b000 	str.w	fp, [sp]
d000296a:	e9cd 5401 	strd	r5, r4, [sp, #4]
d000296e:	f001 f969 	bl	d0003c44 <CreateButton>
d0002972:	23a7      	movs	r3, #167	; 0xa7
d0002974:	f44f 72d3 	mov.w	r2, #422	; 0x1a6
d0002978:	492d      	ldr	r1, [pc, #180]	; (d0002a30 <main+0x3f4>)
d000297a:	2006      	movs	r0, #6
d000297c:	f8cd b000 	str.w	fp, [sp]
d0002980:	e9cd 5401 	strd	r5, r4, [sp, #4]
d0002984:	f001 f95e 	bl	d0003c44 <CreateButton>
d0002988:	4645      	mov	r5, r8
d000298a:	f002 fa89 	bl	d0004ea0 <ShowDefaultHomeConfigPage>
d000298e:	f7fe ff59 	bl	d0001844 <RenderTrackerBackGnd>
d0002992:	4a28      	ldr	r2, [pc, #160]	; (d0002a34 <main+0x3f8>)
d0002994:	2191      	movs	r1, #145	; 0x91
d0002996:	202d      	movs	r0, #45	; 0x2d
d0002998:	f000 ff98 	bl	d00038cc <uiTextDraw>
d000299c:	e04c      	b.n	d0002a38 <main+0x3fc>
d000299e:	bf00      	nop
d00029a0:	e000ed14 	.word	0xe000ed14
d00029a4:	d000ef64 	.word	0xd000ef64
d00029a8:	d00073ac 	.word	0xd00073ac
d00029ac:	2001f000 	.word	0x2001f000
d00029b0:	d000f023 	.word	0xd000f023
d00029b4:	d000f028 	.word	0xd000f028
d00029b8:	d000f022 	.word	0xd000f022
d00029bc:	d000f038 	.word	0xd000f038
d00029c0:	d000f030 	.word	0xd000f030
d00029c4:	d000f034 	.word	0xd000f034
d00029c8:	d000f02c 	.word	0xd000f02c
d00029cc:	d025180c 	.word	0xd025180c
d00029d0:	d000f043 	.word	0xd000f043
d00029d4:	d000f024 	.word	0xd000f024
d00029d8:	d00069ec 	.word	0xd00069ec
d00029dc:	d000eff8 	.word	0xd000eff8
d00029e0:	d00074c4 	.word	0xd00074c4
d00029e4:	d00073dc 	.word	0xd00073dc
d00029e8:	d0003fd1 	.word	0xd0003fd1
d00029ec:	d00074c0 	.word	0xd00074c0
d00029f0:	d0007400 	.word	0xd0007400
d00029f4:	d0007404 	.word	0xd0007404
d00029f8:	d000740c 	.word	0xd000740c
d00029fc:	d0007414 	.word	0xd0007414
d0002a00:	d000741c 	.word	0xd000741c
d0002a04:	d0007420 	.word	0xd0007420
d0002a08:	d0007424 	.word	0xd0007424
d0002a0c:	d0007428 	.word	0xd0007428
d0002a10:	d000742c 	.word	0xd000742c
d0002a14:	d0007430 	.word	0xd0007430
d0002a18:	d0007434 	.word	0xd0007434
d0002a1c:	d0007438 	.word	0xd0007438
d0002a20:	d000743c 	.word	0xd000743c
d0002a24:	d0007378 	.word	0xd0007378
d0002a28:	d0007444 	.word	0xd0007444
d0002a2c:	d000744c 	.word	0xd000744c
d0002a30:	d0007450 	.word	0xd0007450
d0002a34:	d0007458 	.word	0xd0007458
d0002a38:	4aa7      	ldr	r2, [pc, #668]	; (d0002cd8 <main+0x69c>)
d0002a3a:	2191      	movs	r1, #145	; 0x91
d0002a3c:	20be      	movs	r0, #190	; 0xbe
d0002a3e:	f000 ff45 	bl	d00038cc <uiTextDraw>
d0002a42:	4ba6      	ldr	r3, [pc, #664]	; (d0002cdc <main+0x6a0>)
d0002a44:	4aa6      	ldr	r2, [pc, #664]	; (d0002ce0 <main+0x6a4>)
d0002a46:	2191      	movs	r1, #145	; 0x91
d0002a48:	2064      	movs	r0, #100	; 0x64
d0002a4a:	5ad2      	ldrh	r2, [r2, r3]
d0002a4c:	f000 ff7c 	bl	d0003948 <uiTextDrawNumber3>
d0002a50:	238d      	movs	r3, #141	; 0x8d
d0002a52:	2282      	movs	r2, #130	; 0x82
d0002a54:	49a3      	ldr	r1, [pc, #652]	; (d0002ce4 <main+0x6a8>)
d0002a56:	9402      	str	r4, [sp, #8]
d0002a58:	200f      	movs	r0, #15
d0002a5a:	f8cd 9000 	str.w	r9, [sp]
d0002a5e:	f8cd a004 	str.w	sl, [sp, #4]
d0002a62:	f001 f8ef 	bl	d0003c44 <CreateButton>
d0002a66:	238d      	movs	r3, #141	; 0x8d
d0002a68:	229c      	movs	r2, #156	; 0x9c
d0002a6a:	499f      	ldr	r1, [pc, #636]	; (d0002ce8 <main+0x6ac>)
d0002a6c:	f8cd 9000 	str.w	r9, [sp]
d0002a70:	2010      	movs	r0, #16
d0002a72:	e9cd a401 	strd	sl, r4, [sp, #4]
d0002a76:	f001 f8e5 	bl	d0003c44 <CreateButton>
d0002a7a:	238d      	movs	r3, #141	; 0x8d
d0002a7c:	22f0      	movs	r2, #240	; 0xf0
d0002a7e:	499b      	ldr	r1, [pc, #620]	; (d0002cec <main+0x6b0>)
d0002a80:	f8cd 9000 	str.w	r9, [sp]
d0002a84:	2011      	movs	r0, #17
d0002a86:	e9cd a401 	strd	sl, r4, [sp, #4]
d0002a8a:	f001 f8db 	bl	d0003c44 <CreateButton>
d0002a8e:	238d      	movs	r3, #141	; 0x8d
d0002a90:	f44f 7296 	mov.w	r2, #300	; 0x12c
d0002a94:	4996      	ldr	r1, [pc, #600]	; (d0002cf0 <main+0x6b4>)
d0002a96:	f8cd 9000 	str.w	r9, [sp]
d0002a9a:	2012      	movs	r0, #18
d0002a9c:	e9cd a401 	strd	sl, r4, [sp, #4]
d0002aa0:	f001 f8d0 	bl	d0003c44 <CreateButton>
d0002aa4:	238d      	movs	r3, #141	; 0x8d
d0002aa6:	f44f 72aa 	mov.w	r2, #340	; 0x154
d0002aaa:	4992      	ldr	r1, [pc, #584]	; (d0002cf4 <main+0x6b8>)
d0002aac:	f8cd 9000 	str.w	r9, [sp]
d0002ab0:	2017      	movs	r0, #23
d0002ab2:	e9cd a401 	strd	sl, r4, [sp, #4]
d0002ab6:	f001 f8c5 	bl	d0003c44 <CreateButton>
d0002aba:	4648      	mov	r0, r9
d0002abc:	238d      	movs	r3, #141	; 0x8d
d0002abe:	f44f 72b7 	mov.w	r2, #366	; 0x16e
d0002ac2:	498d      	ldr	r1, [pc, #564]	; (d0002cf8 <main+0x6bc>)
d0002ac4:	f8cd 9000 	str.w	r9, [sp]
d0002ac8:	e9cd a401 	strd	sl, r4, [sp, #4]
d0002acc:	f001 f8ba 	bl	d0003c44 <CreateButton>
d0002ad0:	2410      	movs	r4, #16
d0002ad2:	f8d8 00f8 	ldr.w	r0, [r8, #248]	; 0xf8
d0002ad6:	2192      	movs	r1, #146	; 0x92
d0002ad8:	4b88      	ldr	r3, [pc, #544]	; (d0002cfc <main+0x6c0>)
d0002ada:	aa08      	add	r2, sp, #32
d0002adc:	7004      	strb	r4, [r0, #0]
d0002ade:	f44f 7087 	mov.w	r0, #270	; 0x10e
d0002ae2:	9308      	str	r3, [sp, #32]
d0002ae4:	f8d8 3148 	ldr.w	r3, [r8, #328]	; 0x148
d0002ae8:	4798      	blx	r3
d0002aea:	f8d8 3050 	ldr.w	r3, [r8, #80]	; 0x50
d0002aee:	4a84      	ldr	r2, [pc, #528]	; (d0002d00 <main+0x6c4>)
d0002af0:	60da      	str	r2, [r3, #12]
d0002af2:	f001 fa21 	bl	d0003f38 <guRenderButtons>
d0002af6:	2000      	movs	r0, #0
d0002af8:	f7fd fb42 	bl	d0000180 <ShowBuffer>
d0002afc:	2300      	movs	r3, #0
d0002afe:	4a81      	ldr	r2, [pc, #516]	; (d0002d04 <main+0x6c8>)
d0002b00:	4699      	mov	r9, r3
d0002b02:	6013      	str	r3, [r2, #0]
d0002b04:	4a80      	ldr	r2, [pc, #512]	; (d0002d08 <main+0x6cc>)
d0002b06:	6013      	str	r3, [r2, #0]
d0002b08:	4a80      	ldr	r2, [pc, #512]	; (d0002d0c <main+0x6d0>)
d0002b0a:	7013      	strb	r3, [r2, #0]
d0002b0c:	4a80      	ldr	r2, [pc, #512]	; (d0002d10 <main+0x6d4>)
d0002b0e:	6013      	str	r3, [r2, #0]
d0002b10:	4a80      	ldr	r2, [pc, #512]	; (d0002d14 <main+0x6d8>)
d0002b12:	6013      	str	r3, [r2, #0]
d0002b14:	e052      	b.n	d0002bbc <main+0x580>
d0002b16:	f109 0901 	add.w	r9, r9, #1
d0002b1a:	f1b9 0f04 	cmp.w	r9, #4
d0002b1e:	f300 8440 	bgt.w	d00033a2 <main+0xd66>
d0002b22:	f8d5 3118 	ldr.w	r3, [r5, #280]	; 0x118
d0002b26:	2000      	movs	r0, #0
d0002b28:	4798      	blx	r3
d0002b2a:	f001 fa35 	bl	d0003f98 <getEvents>
d0002b2e:	2800      	cmp	r0, #0
d0002b30:	d15e      	bne.n	d0002bf0 <main+0x5b4>
d0002b32:	4b79      	ldr	r3, [pc, #484]	; (d0002d18 <main+0x6dc>)
d0002b34:	781b      	ldrb	r3, [r3, #0]
d0002b36:	2b01      	cmp	r3, #1
d0002b38:	f000 8163 	beq.w	d0002e02 <main+0x7c6>
d0002b3c:	4b73      	ldr	r3, [pc, #460]	; (d0002d0c <main+0x6d0>)
d0002b3e:	781b      	ldrb	r3, [r3, #0]
d0002b40:	b173      	cbz	r3, d0002b60 <main+0x524>
d0002b42:	4b71      	ldr	r3, [pc, #452]	; (d0002d08 <main+0x6cc>)
d0002b44:	681b      	ldr	r3, [r3, #0]
d0002b46:	2b00      	cmp	r3, #0
d0002b48:	f000 8160 	beq.w	d0002e0c <main+0x7d0>
d0002b4c:	2b1e      	cmp	r3, #30
d0002b4e:	f000 815d 	beq.w	d0002e0c <main+0x7d0>
d0002b52:	2b00      	cmp	r3, #0
d0002b54:	4a6c      	ldr	r2, [pc, #432]	; (d0002d08 <main+0x6cc>)
d0002b56:	bfd4      	ite	le
d0002b58:	2300      	movle	r3, #0
d0002b5a:	f103 33ff 	addgt.w	r3, r3, #4294967295	; 0xffffffff
d0002b5e:	6013      	str	r3, [r2, #0]
d0002b60:	683b      	ldr	r3, [r7, #0]
d0002b62:	3301      	adds	r3, #1
d0002b64:	2b14      	cmp	r3, #20
d0002b66:	dc35      	bgt.n	d0002bd4 <main+0x598>
d0002b68:	603b      	str	r3, [r7, #0]
d0002b6a:	4b6c      	ldr	r3, [pc, #432]	; (d0002d1c <main+0x6e0>)
d0002b6c:	781b      	ldrb	r3, [r3, #0]
d0002b6e:	2b03      	cmp	r3, #3
d0002b70:	d03b      	beq.n	d0002bea <main+0x5ae>
d0002b72:	f8d5 20ec 	ldr.w	r2, [r5, #236]	; 0xec
d0002b76:	f8d5 30f4 	ldr.w	r3, [r5, #244]	; 0xf4
d0002b7a:	b336      	cbz	r6, d0002bca <main+0x58e>
d0002b7c:	4968      	ldr	r1, [pc, #416]	; (d0002d20 <main+0x6e4>)
d0002b7e:	6011      	str	r1, [r2, #0]
d0002b80:	4a68      	ldr	r2, [pc, #416]	; (d0002d24 <main+0x6e8>)
d0002b82:	601a      	str	r2, [r3, #0]
d0002b84:	f7fe ff02 	bl	d000198c <RenderTracker>
d0002b88:	f8d5 20f4 	ldr.w	r2, [r5, #244]	; 0xf4
d0002b8c:	4b66      	ldr	r3, [pc, #408]	; (d0002d28 <main+0x6ec>)
d0002b8e:	6812      	ldr	r2, [r2, #0]
d0002b90:	681b      	ldr	r3, [r3, #0]
d0002b92:	429a      	cmp	r2, r3
d0002b94:	d001      	beq.n	d0002b9a <main+0x55e>
d0002b96:	6b6b      	ldr	r3, [r5, #52]	; 0x34
d0002b98:	4798      	blx	r3
d0002b9a:	4630      	mov	r0, r6
d0002b9c:	f1c6 0601 	rsb	r6, r6, #1
d0002ba0:	f7fd faee 	bl	d0000180 <ShowBuffer>
d0002ba4:	696b      	ldr	r3, [r5, #20]
d0002ba6:	f8d5 20f0 	ldr.w	r2, [r5, #240]	; 0xf0
d0002baa:	f44f 3116 	mov.w	r1, #153600	; 0x25800
d0002bae:	b2f6      	uxtb	r6, r6
d0002bb0:	6810      	ldr	r0, [r2, #0]
d0002bb2:	4798      	blx	r3
d0002bb4:	f8d5 30c4 	ldr.w	r3, [r5, #196]	; 0xc4
d0002bb8:	2081      	movs	r0, #129	; 0x81
d0002bba:	4798      	blx	r3
d0002bbc:	69eb      	ldr	r3, [r5, #28]
d0002bbe:	4798      	blx	r3
d0002bc0:	f010 0002 	ands.w	r0, r0, #2
d0002bc4:	d1a7      	bne.n	d0002b16 <main+0x4da>
d0002bc6:	4681      	mov	r9, r0
d0002bc8:	e7ab      	b.n	d0002b22 <main+0x4e6>
d0002bca:	4956      	ldr	r1, [pc, #344]	; (d0002d24 <main+0x6e8>)
d0002bcc:	6011      	str	r1, [r2, #0]
d0002bce:	4a54      	ldr	r2, [pc, #336]	; (d0002d20 <main+0x6e4>)
d0002bd0:	601a      	str	r2, [r3, #0]
d0002bd2:	e7d7      	b.n	d0002b84 <main+0x548>
d0002bd4:	4955      	ldr	r1, [pc, #340]	; (d0002d2c <main+0x6f0>)
d0002bd6:	2200      	movs	r2, #0
d0002bd8:	780b      	ldrb	r3, [r1, #0]
d0002bda:	603a      	str	r2, [r7, #0]
d0002bdc:	f1c3 0301 	rsb	r3, r3, #1
d0002be0:	700b      	strb	r3, [r1, #0]
d0002be2:	4b4e      	ldr	r3, [pc, #312]	; (d0002d1c <main+0x6e0>)
d0002be4:	781b      	ldrb	r3, [r3, #0]
d0002be6:	2b03      	cmp	r3, #3
d0002be8:	d1c3      	bne.n	d0002b72 <main+0x536>
d0002bea:	f7fd fba7 	bl	d000033c <FileRequestFileStringUpdater>
d0002bee:	e7c0      	b.n	d0002b72 <main+0x536>
d0002bf0:	2004      	movs	r0, #4
d0002bf2:	f001 f9c7 	bl	d0003f84 <get_event>
d0002bf6:	f001 fa15 	bl	d0004024 <GUIEvents>
d0002bfa:	4682      	mov	sl, r0
d0002bfc:	2010      	movs	r0, #16
d0002bfe:	f001 f9c1 	bl	d0003f84 <get_event>
d0002c02:	b120      	cbz	r0, d0002c0e <main+0x5d2>
d0002c04:	4b45      	ldr	r3, [pc, #276]	; (d0002d1c <main+0x6e0>)
d0002c06:	781b      	ldrb	r3, [r3, #0]
d0002c08:	2b03      	cmp	r3, #3
d0002c0a:	f040 81c3 	bne.w	d0002f94 <main+0x958>
d0002c0e:	2020      	movs	r0, #32
d0002c10:	f001 f9b8 	bl	d0003f84 <get_event>
d0002c14:	2800      	cmp	r0, #0
d0002c16:	f000 80cf 	beq.w	d0002db8 <main+0x77c>
d0002c1a:	4a45      	ldr	r2, [pc, #276]	; (d0002d30 <main+0x6f4>)
d0002c1c:	4b45      	ldr	r3, [pc, #276]	; (d0002d34 <main+0x6f8>)
d0002c1e:	7812      	ldrb	r2, [r2, #0]
d0002c20:	493e      	ldr	r1, [pc, #248]	; (d0002d1c <main+0x6e0>)
d0002c22:	fba3 0302 	umull	r0, r3, r3, r2
d0002c26:	7809      	ldrb	r1, [r1, #0]
d0002c28:	089b      	lsrs	r3, r3, #2
d0002c2a:	2903      	cmp	r1, #3
d0002c2c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0002c30:	eba2 0343 	sub.w	r3, r2, r3, lsl #1
d0002c34:	fa5f f883 	uxtb.w	r8, r3
d0002c38:	f000 808b 	beq.w	d0002d52 <main+0x716>
d0002c3c:	4c3e      	ldr	r4, [pc, #248]	; (d0002d38 <main+0x6fc>)
d0002c3e:	4b3f      	ldr	r3, [pc, #252]	; (d0002d3c <main+0x700>)
d0002c40:	781b      	ldrb	r3, [r3, #0]
d0002c42:	2b00      	cmp	r3, #0
d0002c44:	f040 8264 	bne.w	d0003110 <main+0xad4>
d0002c48:	7821      	ldrb	r1, [r4, #0]
d0002c4a:	f1b8 0f00 	cmp.w	r8, #0
d0002c4e:	f040 827c 	bne.w	d000314a <main+0xb0e>
d0002c52:	f8df 80f4 	ldr.w	r8, [pc, #244]	; d0002d48 <main+0x70c>
d0002c56:	f108 0234 	add.w	r2, r8, #52	; 0x34
d0002c5a:	e01a      	b.n	d0002c92 <main+0x656>
d0002c5c:	7861      	ldrb	r1, [r4, #1]
d0002c5e:	428b      	cmp	r3, r1
d0002c60:	d01b      	beq.n	d0002c9a <main+0x65e>
d0002c62:	78a1      	ldrb	r1, [r4, #2]
d0002c64:	428b      	cmp	r3, r1
d0002c66:	d018      	beq.n	d0002c9a <main+0x65e>
d0002c68:	78e1      	ldrb	r1, [r4, #3]
d0002c6a:	428b      	cmp	r3, r1
d0002c6c:	d015      	beq.n	d0002c9a <main+0x65e>
d0002c6e:	7921      	ldrb	r1, [r4, #4]
d0002c70:	428b      	cmp	r3, r1
d0002c72:	d012      	beq.n	d0002c9a <main+0x65e>
d0002c74:	7961      	ldrb	r1, [r4, #5]
d0002c76:	428b      	cmp	r3, r1
d0002c78:	d00f      	beq.n	d0002c9a <main+0x65e>
d0002c7a:	79a1      	ldrb	r1, [r4, #6]
d0002c7c:	428b      	cmp	r3, r1
d0002c7e:	d00c      	beq.n	d0002c9a <main+0x65e>
d0002c80:	79e1      	ldrb	r1, [r4, #7]
d0002c82:	428b      	cmp	r3, r1
d0002c84:	d009      	beq.n	d0002c9a <main+0x65e>
d0002c86:	f108 0802 	add.w	r8, r8, #2
d0002c8a:	4542      	cmp	r2, r8
d0002c8c:	f000 8094 	beq.w	d0002db8 <main+0x77c>
d0002c90:	7821      	ldrb	r1, [r4, #0]
d0002c92:	f898 3001 	ldrb.w	r3, [r8, #1]
d0002c96:	428b      	cmp	r3, r1
d0002c98:	d1e0      	bne.n	d0002c5c <main+0x620>
d0002c9a:	4b29      	ldr	r3, [pc, #164]	; (d0002d40 <main+0x704>)
d0002c9c:	f898 b000 	ldrb.w	fp, [r8]
d0002ca0:	781b      	ldrb	r3, [r3, #0]
d0002ca2:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0002ca6:	eb0b 0b83 	add.w	fp, fp, r3, lsl #2
d0002caa:	fa4f fb8b 	sxtb.w	fp, fp
d0002cae:	2900      	cmp	r1, #0
d0002cb0:	d0e9      	beq.n	d0002c86 <main+0x64a>
d0002cb2:	f1bb 0f47 	cmp.w	fp, #71	; 0x47
d0002cb6:	dce6      	bgt.n	d0002c86 <main+0x64a>
d0002cb8:	4658      	mov	r0, fp
d0002cba:	f7fe fcdb 	bl	d0001674 <PlayNoteKeyDown>
d0002cbe:	4b1f      	ldr	r3, [pc, #124]	; (d0002d3c <main+0x700>)
d0002cc0:	4a20      	ldr	r2, [pc, #128]	; (d0002d44 <main+0x708>)
d0002cc2:	781b      	ldrb	r3, [r3, #0]
d0002cc4:	2b00      	cmp	r3, #0
d0002cc6:	d0de      	beq.n	d0002c86 <main+0x64a>
d0002cc8:	4658      	mov	r0, fp
d0002cca:	f7fe fbd5 	bl	d0001478 <PlaceNote>
d0002cce:	2001      	movs	r0, #1
d0002cd0:	f7fe fe44 	bl	d000195c <MovePatternRow>
d0002cd4:	4a1b      	ldr	r2, [pc, #108]	; (d0002d44 <main+0x708>)
d0002cd6:	e7d6      	b.n	d0002c86 <main+0x64a>
d0002cd8:	d0007460 	.word	0xd0007460
d0002cdc:	00020364 	.word	0x00020364
d0002ce0:	d00311e0 	.word	0xd00311e0
d0002ce4:	d00067f0 	.word	0xd00067f0
d0002ce8:	d00067f8 	.word	0xd00067f8
d0002cec:	d0007468 	.word	0xd0007468
d0002cf0:	d000746c 	.word	0xd000746c
d0002cf4:	d0007470 	.word	0xd0007470
d0002cf8:	d0007474 	.word	0xd0007474
d0002cfc:	00342d31 	.word	0x00342d31
d0002d00:	d0002235 	.word	0xd0002235
d0002d04:	d000f038 	.word	0xd000f038
d0002d08:	d000f030 	.word	0xd000f030
d0002d0c:	d000f034 	.word	0xd000f034
d0002d10:	d000f02c 	.word	0xd000f02c
d0002d14:	d025180c 	.word	0xd025180c
d0002d18:	d000f022 	.word	0xd000f022
d0002d1c:	d000f04c 	.word	0xd000f04c
d0002d20:	d06d9000 	.word	0xd06d9000
d0002d24:	d06b2000 	.word	0xd06b2000
d0002d28:	d000f0b0 	.word	0xd000f0b0
d0002d2c:	d000f024 	.word	0xd000f024
d0002d30:	d000f041 	.word	0xd000f041
d0002d34:	aaaaaaab 	.word	0xaaaaaaab
d0002d38:	d0251804 	.word	0xd0251804
d0002d3c:	d000f043 	.word	0xd000f043
d0002d40:	d000f042 	.word	0xd000f042
d0002d44:	d000efd8 	.word	0xd000efd8
d0002d48:	d000efa4 	.word	0xd000efa4
d0002d4c:	4620      	mov	r0, r4
d0002d4e:	f7fd faff 	bl	d0000350 <FileRequestFileStringInjector>
d0002d52:	f7fd f9c1 	bl	d00000d8 <GetKeyAsciiInBuffer>
d0002d56:	b2c4      	uxtb	r4, r0
d0002d58:	2c0a      	cmp	r4, #10
d0002d5a:	4620      	mov	r0, r4
d0002d5c:	d0f9      	beq.n	d0002d52 <main+0x716>
d0002d5e:	f7fd f987 	bl	d0000070 <is_valid_filename_char>
d0002d62:	b11c      	cbz	r4, d0002d6c <main+0x730>
d0002d64:	2800      	cmp	r0, #0
d0002d66:	d1f1      	bne.n	d0002d4c <main+0x710>
d0002d68:	2c00      	cmp	r4, #0
d0002d6a:	d1f2      	bne.n	d0002d52 <main+0x716>
d0002d6c:	4c81      	ldr	r4, [pc, #516]	; (d0002f74 <main+0x938>)
d0002d6e:	7823      	ldrb	r3, [r4, #0]
d0002d70:	2b2a      	cmp	r3, #42	; 0x2a
d0002d72:	f000 83a9 	beq.w	d00034c8 <main+0xe8c>
d0002d76:	7863      	ldrb	r3, [r4, #1]
d0002d78:	2b2a      	cmp	r3, #42	; 0x2a
d0002d7a:	f000 83a5 	beq.w	d00034c8 <main+0xe8c>
d0002d7e:	78a3      	ldrb	r3, [r4, #2]
d0002d80:	2b2a      	cmp	r3, #42	; 0x2a
d0002d82:	f000 83a1 	beq.w	d00034c8 <main+0xe8c>
d0002d86:	78e3      	ldrb	r3, [r4, #3]
d0002d88:	2b2a      	cmp	r3, #42	; 0x2a
d0002d8a:	f000 839d 	beq.w	d00034c8 <main+0xe8c>
d0002d8e:	7923      	ldrb	r3, [r4, #4]
d0002d90:	2b2a      	cmp	r3, #42	; 0x2a
d0002d92:	f000 8399 	beq.w	d00034c8 <main+0xe8c>
d0002d96:	7963      	ldrb	r3, [r4, #5]
d0002d98:	2b2a      	cmp	r3, #42	; 0x2a
d0002d9a:	f000 8395 	beq.w	d00034c8 <main+0xe8c>
d0002d9e:	79a3      	ldrb	r3, [r4, #6]
d0002da0:	2b2a      	cmp	r3, #42	; 0x2a
d0002da2:	f000 8391 	beq.w	d00034c8 <main+0xe8c>
d0002da6:	79e3      	ldrb	r3, [r4, #7]
d0002da8:	2b2a      	cmp	r3, #42	; 0x2a
d0002daa:	f000 838d 	beq.w	d00034c8 <main+0xe8c>
d0002dae:	4b72      	ldr	r3, [pc, #456]	; (d0002f78 <main+0x93c>)
d0002db0:	781b      	ldrb	r3, [r3, #0]
d0002db2:	2b03      	cmp	r3, #3
d0002db4:	f47f af43 	bne.w	d0002c3e <main+0x602>
d0002db8:	2004      	movs	r0, #4
d0002dba:	f001 f8e3 	bl	d0003f84 <get_event>
d0002dbe:	b120      	cbz	r0, d0002dca <main+0x78e>
d0002dc0:	4b6d      	ldr	r3, [pc, #436]	; (d0002f78 <main+0x93c>)
d0002dc2:	781b      	ldrb	r3, [r3, #0]
d0002dc4:	2b03      	cmp	r3, #3
d0002dc6:	f000 82e0 	beq.w	d000338a <main+0xd4e>
d0002dca:	f01a 0f01 	tst.w	sl, #1
d0002dce:	d00b      	beq.n	d0002de8 <main+0x7ac>
d0002dd0:	2004      	movs	r0, #4
d0002dd2:	f001 f8d7 	bl	d0003f84 <get_event>
d0002dd6:	2800      	cmp	r0, #0
d0002dd8:	f040 82b2 	bne.w	d0003340 <main+0xd04>
d0002ddc:	2008      	movs	r0, #8
d0002dde:	f001 f8d1 	bl	d0003f84 <get_event>
d0002de2:	2800      	cmp	r0, #0
d0002de4:	f040 821a 	bne.w	d000321c <main+0xbe0>
d0002de8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0002dec:	f001 f8da 	bl	d0003fa4 <clearEvents>
d0002df0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0002df4:	f001 f8de 	bl	d0003fb4 <EventTypeClear>
d0002df8:	4b60      	ldr	r3, [pc, #384]	; (d0002f7c <main+0x940>)
d0002dfa:	781b      	ldrb	r3, [r3, #0]
d0002dfc:	2b01      	cmp	r3, #1
d0002dfe:	f47f ae9d 	bne.w	d0002b3c <main+0x500>
d0002e02:	f7fe ff41 	bl	d0001c88 <RenderConfirmYESNObox>
d0002e06:	4b5e      	ldr	r3, [pc, #376]	; (d0002f80 <main+0x944>)
d0002e08:	7018      	strb	r0, [r3, #0]
d0002e0a:	e697      	b.n	d0002b3c <main+0x500>
d0002e0c:	4a5d      	ldr	r2, [pc, #372]	; (d0002f84 <main+0x948>)
d0002e0e:	6812      	ldr	r2, [r2, #0]
d0002e10:	3a0f      	subs	r2, #15
d0002e12:	2a1e      	cmp	r2, #30
d0002e14:	f63f ae9d 	bhi.w	d0002b52 <main+0x516>
d0002e18:	a101      	add	r1, pc, #4	; (adr r1, d0002e20 <main+0x7e4>)
d0002e1a:	f851 f022 	ldr.w	pc, [r1, r2, lsl #2]
d0002e1e:	bf00      	nop
d0002e20:	d0002f65 	.word	0xd0002f65
d0002e24:	d0002f33 	.word	0xd0002f33
d0002e28:	d0002b53 	.word	0xd0002b53
d0002e2c:	d0002b53 	.word	0xd0002b53
d0002e30:	d0002b53 	.word	0xd0002b53
d0002e34:	d0002b53 	.word	0xd0002b53
d0002e38:	d0002b53 	.word	0xd0002b53
d0002e3c:	d0002b53 	.word	0xd0002b53
d0002e40:	d0002b53 	.word	0xd0002b53
d0002e44:	d0002b53 	.word	0xd0002b53
d0002e48:	d0002b53 	.word	0xd0002b53
d0002e4c:	d0002b53 	.word	0xd0002b53
d0002e50:	d0002b53 	.word	0xd0002b53
d0002e54:	d0002b53 	.word	0xd0002b53
d0002e58:	d0002b53 	.word	0xd0002b53
d0002e5c:	d0002b53 	.word	0xd0002b53
d0002e60:	d0002b53 	.word	0xd0002b53
d0002e64:	d0002b53 	.word	0xd0002b53
d0002e68:	d0002b53 	.word	0xd0002b53
d0002e6c:	d0002b53 	.word	0xd0002b53
d0002e70:	d0002b53 	.word	0xd0002b53
d0002e74:	d0002f1b 	.word	0xd0002f1b
d0002e78:	d0002f05 	.word	0xd0002f05
d0002e7c:	d0002ef9 	.word	0xd0002ef9
d0002e80:	d0002eeb 	.word	0xd0002eeb
d0002e84:	d0002edf 	.word	0xd0002edf
d0002e88:	d0002ed1 	.word	0xd0002ed1
d0002e8c:	d0002ec5 	.word	0xd0002ec5
d0002e90:	d0002eb7 	.word	0xd0002eb7
d0002e94:	d0002eab 	.word	0xd0002eab
d0002e98:	d0002e9d 	.word	0xd0002e9d
d0002e9c:	f06f 0001 	mvn.w	r0, #1
d0002ea0:	f002 fb40 	bl	d0005524 <SampleIDEdit_ChangeRepeatTo>
d0002ea4:	4b38      	ldr	r3, [pc, #224]	; (d0002f88 <main+0x94c>)
d0002ea6:	681b      	ldr	r3, [r3, #0]
d0002ea8:	e653      	b.n	d0002b52 <main+0x516>
d0002eaa:	2002      	movs	r0, #2
d0002eac:	f002 fb3a 	bl	d0005524 <SampleIDEdit_ChangeRepeatTo>
d0002eb0:	4b35      	ldr	r3, [pc, #212]	; (d0002f88 <main+0x94c>)
d0002eb2:	681b      	ldr	r3, [r3, #0]
d0002eb4:	e64d      	b.n	d0002b52 <main+0x516>
d0002eb6:	f06f 0001 	mvn.w	r0, #1
d0002eba:	f002 faaf 	bl	d000541c <SampleIDEdit_ChangeRepeat>
d0002ebe:	4b32      	ldr	r3, [pc, #200]	; (d0002f88 <main+0x94c>)
d0002ec0:	681b      	ldr	r3, [r3, #0]
d0002ec2:	e646      	b.n	d0002b52 <main+0x516>
d0002ec4:	2002      	movs	r0, #2
d0002ec6:	f002 faa9 	bl	d000541c <SampleIDEdit_ChangeRepeat>
d0002eca:	4b2f      	ldr	r3, [pc, #188]	; (d0002f88 <main+0x94c>)
d0002ecc:	681b      	ldr	r3, [r3, #0]
d0002ece:	e640      	b.n	d0002b52 <main+0x516>
d0002ed0:	f06f 0001 	mvn.w	r0, #1
d0002ed4:	f002 fad2 	bl	d000547c <SampleIDEdit_ChangeSampleLength>
d0002ed8:	4b2b      	ldr	r3, [pc, #172]	; (d0002f88 <main+0x94c>)
d0002eda:	681b      	ldr	r3, [r3, #0]
d0002edc:	e639      	b.n	d0002b52 <main+0x516>
d0002ede:	2002      	movs	r0, #2
d0002ee0:	f002 facc 	bl	d000547c <SampleIDEdit_ChangeSampleLength>
d0002ee4:	4b28      	ldr	r3, [pc, #160]	; (d0002f88 <main+0x94c>)
d0002ee6:	681b      	ldr	r3, [r3, #0]
d0002ee8:	e633      	b.n	d0002b52 <main+0x516>
d0002eea:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0002eee:	f002 fa77 	bl	d00053e0 <SampleIDEdit_ChangeVolume>
d0002ef2:	4b25      	ldr	r3, [pc, #148]	; (d0002f88 <main+0x94c>)
d0002ef4:	681b      	ldr	r3, [r3, #0]
d0002ef6:	e62c      	b.n	d0002b52 <main+0x516>
d0002ef8:	2001      	movs	r0, #1
d0002efa:	f002 fa71 	bl	d00053e0 <SampleIDEdit_ChangeVolume>
d0002efe:	4b22      	ldr	r3, [pc, #136]	; (d0002f88 <main+0x94c>)
d0002f00:	681b      	ldr	r3, [r3, #0]
d0002f02:	e626      	b.n	d0002b52 <main+0x516>
d0002f04:	4a1c      	ldr	r2, [pc, #112]	; (d0002f78 <main+0x93c>)
d0002f06:	7812      	ldrb	r2, [r2, #0]
d0002f08:	2a03      	cmp	r2, #3
d0002f0a:	f47f ae22 	bne.w	d0002b52 <main+0x516>
d0002f0e:	2001      	movs	r0, #1
d0002f10:	f7fd fb80 	bl	d0000614 <ScrollFileListDirection>
d0002f14:	4b1c      	ldr	r3, [pc, #112]	; (d0002f88 <main+0x94c>)
d0002f16:	681b      	ldr	r3, [r3, #0]
d0002f18:	e61b      	b.n	d0002b52 <main+0x516>
d0002f1a:	4a17      	ldr	r2, [pc, #92]	; (d0002f78 <main+0x93c>)
d0002f1c:	7812      	ldrb	r2, [r2, #0]
d0002f1e:	2a03      	cmp	r2, #3
d0002f20:	f47f ae17 	bne.w	d0002b52 <main+0x516>
d0002f24:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0002f28:	f7fd fb74 	bl	d0000614 <ScrollFileListDirection>
d0002f2c:	4b16      	ldr	r3, [pc, #88]	; (d0002f88 <main+0x94c>)
d0002f2e:	681b      	ldr	r3, [r3, #0]
d0002f30:	e60f      	b.n	d0002b52 <main+0x516>
d0002f32:	4c16      	ldr	r4, [pc, #88]	; (d0002f8c <main+0x950>)
d0002f34:	8823      	ldrh	r3, [r4, #0]
d0002f36:	2b20      	cmp	r3, #32
d0002f38:	d901      	bls.n	d0002f3e <main+0x902>
d0002f3a:	3b01      	subs	r3, #1
d0002f3c:	8023      	strh	r3, [r4, #0]
d0002f3e:	4b14      	ldr	r3, [pc, #80]	; (d0002f90 <main+0x954>)
d0002f40:	8820      	ldrh	r0, [r4, #0]
d0002f42:	8819      	ldrh	r1, [r3, #0]
d0002f44:	f7fd feae 	bl	d0000ca4 <setTempoSpeed>
d0002f48:	f7fd f934 	bl	d00001b4 <CaptureDrawBuffer>
d0002f4c:	f7fd f93e 	bl	d00001cc <SetDrawToBackLayer>
d0002f50:	8822      	ldrh	r2, [r4, #0]
d0002f52:	2191      	movs	r1, #145	; 0x91
d0002f54:	2064      	movs	r0, #100	; 0x64
d0002f56:	f000 fcf7 	bl	d0003948 <uiTextDrawNumber3>
d0002f5a:	f7fd f949 	bl	d00001f0 <ReleaseDrawBuffer>
d0002f5e:	4b0a      	ldr	r3, [pc, #40]	; (d0002f88 <main+0x94c>)
d0002f60:	681b      	ldr	r3, [r3, #0]
d0002f62:	e5f6      	b.n	d0002b52 <main+0x516>
d0002f64:	4c09      	ldr	r4, [pc, #36]	; (d0002f8c <main+0x950>)
d0002f66:	8823      	ldrh	r3, [r4, #0]
d0002f68:	2bfe      	cmp	r3, #254	; 0xfe
d0002f6a:	d8e8      	bhi.n	d0002f3e <main+0x902>
d0002f6c:	3301      	adds	r3, #1
d0002f6e:	8023      	strh	r3, [r4, #0]
d0002f70:	e7e5      	b.n	d0002f3e <main+0x902>
d0002f72:	bf00      	nop
d0002f74:	d0251804 	.word	0xd0251804
d0002f78:	d000f04c 	.word	0xd000f04c
d0002f7c:	d000f022 	.word	0xd000f022
d0002f80:	d000f023 	.word	0xd000f023
d0002f84:	d025180c 	.word	0xd025180c
d0002f88:	d000f030 	.word	0xd000f030
d0002f8c:	d0051544 	.word	0xd0051544
d0002f90:	d0051546 	.word	0xd0051546
d0002f94:	4b9d      	ldr	r3, [pc, #628]	; (d000320c <main+0xbd0>)
d0002f96:	4c9e      	ldr	r4, [pc, #632]	; (d0003210 <main+0xbd4>)
d0002f98:	781b      	ldrb	r3, [r3, #0]
d0002f9a:	2b00      	cmp	r3, #0
d0002f9c:	f040 8222 	bne.w	d00033e4 <main+0xda8>
d0002fa0:	7823      	ldrb	r3, [r4, #0]
d0002fa2:	2b2c      	cmp	r3, #44	; 0x2c
d0002fa4:	f000 81eb 	beq.w	d000337e <main+0xd42>
d0002fa8:	7862      	ldrb	r2, [r4, #1]
d0002faa:	2a2c      	cmp	r2, #44	; 0x2c
d0002fac:	f000 81e7 	beq.w	d000337e <main+0xd42>
d0002fb0:	78a2      	ldrb	r2, [r4, #2]
d0002fb2:	2a2c      	cmp	r2, #44	; 0x2c
d0002fb4:	f000 81e3 	beq.w	d000337e <main+0xd42>
d0002fb8:	78e2      	ldrb	r2, [r4, #3]
d0002fba:	2a2c      	cmp	r2, #44	; 0x2c
d0002fbc:	f000 81df 	beq.w	d000337e <main+0xd42>
d0002fc0:	7922      	ldrb	r2, [r4, #4]
d0002fc2:	2a2c      	cmp	r2, #44	; 0x2c
d0002fc4:	f000 81db 	beq.w	d000337e <main+0xd42>
d0002fc8:	7962      	ldrb	r2, [r4, #5]
d0002fca:	2a2c      	cmp	r2, #44	; 0x2c
d0002fcc:	f000 81d7 	beq.w	d000337e <main+0xd42>
d0002fd0:	79a2      	ldrb	r2, [r4, #6]
d0002fd2:	2a2c      	cmp	r2, #44	; 0x2c
d0002fd4:	f000 81d3 	beq.w	d000337e <main+0xd42>
d0002fd8:	79e2      	ldrb	r2, [r4, #7]
d0002fda:	2a2c      	cmp	r2, #44	; 0x2c
d0002fdc:	f000 81cf 	beq.w	d000337e <main+0xd42>
d0002fe0:	2b70      	cmp	r3, #112	; 0x70
d0002fe2:	f000 81c8 	beq.w	d0003376 <main+0xd3a>
d0002fe6:	7862      	ldrb	r2, [r4, #1]
d0002fe8:	2a70      	cmp	r2, #112	; 0x70
d0002fea:	f000 81c4 	beq.w	d0003376 <main+0xd3a>
d0002fee:	78a2      	ldrb	r2, [r4, #2]
d0002ff0:	2a70      	cmp	r2, #112	; 0x70
d0002ff2:	f000 81c0 	beq.w	d0003376 <main+0xd3a>
d0002ff6:	78e2      	ldrb	r2, [r4, #3]
d0002ff8:	2a70      	cmp	r2, #112	; 0x70
d0002ffa:	f000 81bc 	beq.w	d0003376 <main+0xd3a>
d0002ffe:	7922      	ldrb	r2, [r4, #4]
d0003000:	2a70      	cmp	r2, #112	; 0x70
d0003002:	f000 81b8 	beq.w	d0003376 <main+0xd3a>
d0003006:	7962      	ldrb	r2, [r4, #5]
d0003008:	2a70      	cmp	r2, #112	; 0x70
d000300a:	f000 81b4 	beq.w	d0003376 <main+0xd3a>
d000300e:	79a2      	ldrb	r2, [r4, #6]
d0003010:	2a70      	cmp	r2, #112	; 0x70
d0003012:	f000 81b0 	beq.w	d0003376 <main+0xd3a>
d0003016:	79e2      	ldrb	r2, [r4, #7]
d0003018:	2a70      	cmp	r2, #112	; 0x70
d000301a:	f000 81ac 	beq.w	d0003376 <main+0xd3a>
d000301e:	2b71      	cmp	r3, #113	; 0x71
d0003020:	f000 81a5 	beq.w	d000336e <main+0xd32>
d0003024:	7862      	ldrb	r2, [r4, #1]
d0003026:	2a71      	cmp	r2, #113	; 0x71
d0003028:	f000 81a1 	beq.w	d000336e <main+0xd32>
d000302c:	78a2      	ldrb	r2, [r4, #2]
d000302e:	2a71      	cmp	r2, #113	; 0x71
d0003030:	f000 819d 	beq.w	d000336e <main+0xd32>
d0003034:	78e2      	ldrb	r2, [r4, #3]
d0003036:	2a71      	cmp	r2, #113	; 0x71
d0003038:	f000 8199 	beq.w	d000336e <main+0xd32>
d000303c:	7922      	ldrb	r2, [r4, #4]
d000303e:	2a71      	cmp	r2, #113	; 0x71
d0003040:	f000 8195 	beq.w	d000336e <main+0xd32>
d0003044:	7962      	ldrb	r2, [r4, #5]
d0003046:	2a71      	cmp	r2, #113	; 0x71
d0003048:	f000 8191 	beq.w	d000336e <main+0xd32>
d000304c:	79a2      	ldrb	r2, [r4, #6]
d000304e:	2a71      	cmp	r2, #113	; 0x71
d0003050:	f000 818d 	beq.w	d000336e <main+0xd32>
d0003054:	79e2      	ldrb	r2, [r4, #7]
d0003056:	2a71      	cmp	r2, #113	; 0x71
d0003058:	f000 8189 	beq.w	d000336e <main+0xd32>
d000305c:	2b72      	cmp	r3, #114	; 0x72
d000305e:	f000 817c 	beq.w	d000335a <main+0xd1e>
d0003062:	7862      	ldrb	r2, [r4, #1]
d0003064:	2a72      	cmp	r2, #114	; 0x72
d0003066:	f000 8178 	beq.w	d000335a <main+0xd1e>
d000306a:	78a2      	ldrb	r2, [r4, #2]
d000306c:	2a72      	cmp	r2, #114	; 0x72
d000306e:	f000 8174 	beq.w	d000335a <main+0xd1e>
d0003072:	78e2      	ldrb	r2, [r4, #3]
d0003074:	2a72      	cmp	r2, #114	; 0x72
d0003076:	f000 8170 	beq.w	d000335a <main+0xd1e>
d000307a:	7922      	ldrb	r2, [r4, #4]
d000307c:	2a72      	cmp	r2, #114	; 0x72
d000307e:	f000 816c 	beq.w	d000335a <main+0xd1e>
d0003082:	7962      	ldrb	r2, [r4, #5]
d0003084:	2a72      	cmp	r2, #114	; 0x72
d0003086:	f000 8168 	beq.w	d000335a <main+0xd1e>
d000308a:	79a2      	ldrb	r2, [r4, #6]
d000308c:	2a72      	cmp	r2, #114	; 0x72
d000308e:	f000 8164 	beq.w	d000335a <main+0xd1e>
d0003092:	79e2      	ldrb	r2, [r4, #7]
d0003094:	2a72      	cmp	r2, #114	; 0x72
d0003096:	f000 8160 	beq.w	d000335a <main+0xd1e>
d000309a:	2b73      	cmp	r3, #115	; 0x73
d000309c:	f000 8163 	beq.w	d0003366 <main+0xd2a>
d00030a0:	7862      	ldrb	r2, [r4, #1]
d00030a2:	2a73      	cmp	r2, #115	; 0x73
d00030a4:	f000 815f 	beq.w	d0003366 <main+0xd2a>
d00030a8:	78a2      	ldrb	r2, [r4, #2]
d00030aa:	2a73      	cmp	r2, #115	; 0x73
d00030ac:	f000 815b 	beq.w	d0003366 <main+0xd2a>
d00030b0:	78e2      	ldrb	r2, [r4, #3]
d00030b2:	2a73      	cmp	r2, #115	; 0x73
d00030b4:	f000 8157 	beq.w	d0003366 <main+0xd2a>
d00030b8:	7922      	ldrb	r2, [r4, #4]
d00030ba:	2a73      	cmp	r2, #115	; 0x73
d00030bc:	f000 8153 	beq.w	d0003366 <main+0xd2a>
d00030c0:	7962      	ldrb	r2, [r4, #5]
d00030c2:	2a73      	cmp	r2, #115	; 0x73
d00030c4:	f000 814f 	beq.w	d0003366 <main+0xd2a>
d00030c8:	79a2      	ldrb	r2, [r4, #6]
d00030ca:	2a73      	cmp	r2, #115	; 0x73
d00030cc:	f000 814b 	beq.w	d0003366 <main+0xd2a>
d00030d0:	79e2      	ldrb	r2, [r4, #7]
d00030d2:	2a73      	cmp	r2, #115	; 0x73
d00030d4:	f000 8147 	beq.w	d0003366 <main+0xd2a>
d00030d8:	2b74      	cmp	r3, #116	; 0x74
d00030da:	d015      	beq.n	d0003108 <main+0xacc>
d00030dc:	7863      	ldrb	r3, [r4, #1]
d00030de:	2b74      	cmp	r3, #116	; 0x74
d00030e0:	d012      	beq.n	d0003108 <main+0xacc>
d00030e2:	78a3      	ldrb	r3, [r4, #2]
d00030e4:	2b74      	cmp	r3, #116	; 0x74
d00030e6:	d00f      	beq.n	d0003108 <main+0xacc>
d00030e8:	78e3      	ldrb	r3, [r4, #3]
d00030ea:	2b74      	cmp	r3, #116	; 0x74
d00030ec:	d00c      	beq.n	d0003108 <main+0xacc>
d00030ee:	7923      	ldrb	r3, [r4, #4]
d00030f0:	2b74      	cmp	r3, #116	; 0x74
d00030f2:	d009      	beq.n	d0003108 <main+0xacc>
d00030f4:	7963      	ldrb	r3, [r4, #5]
d00030f6:	2b74      	cmp	r3, #116	; 0x74
d00030f8:	d006      	beq.n	d0003108 <main+0xacc>
d00030fa:	79a3      	ldrb	r3, [r4, #6]
d00030fc:	2b74      	cmp	r3, #116	; 0x74
d00030fe:	d003      	beq.n	d0003108 <main+0xacc>
d0003100:	79e3      	ldrb	r3, [r4, #7]
d0003102:	2b74      	cmp	r3, #116	; 0x74
d0003104:	f47f ad83 	bne.w	d0002c0e <main+0x5d2>
d0003108:	2304      	movs	r3, #4
d000310a:	4a42      	ldr	r2, [pc, #264]	; (d0003214 <main+0xbd8>)
d000310c:	7013      	strb	r3, [r2, #0]
d000310e:	e57e      	b.n	d0002c0e <main+0x5d2>
d0003110:	7821      	ldrb	r1, [r4, #0]
d0003112:	294c      	cmp	r1, #76	; 0x4c
d0003114:	d015      	beq.n	d0003142 <main+0xb06>
d0003116:	7863      	ldrb	r3, [r4, #1]
d0003118:	2b4c      	cmp	r3, #76	; 0x4c
d000311a:	d012      	beq.n	d0003142 <main+0xb06>
d000311c:	78a3      	ldrb	r3, [r4, #2]
d000311e:	2b4c      	cmp	r3, #76	; 0x4c
d0003120:	d00f      	beq.n	d0003142 <main+0xb06>
d0003122:	78e3      	ldrb	r3, [r4, #3]
d0003124:	2b4c      	cmp	r3, #76	; 0x4c
d0003126:	d00c      	beq.n	d0003142 <main+0xb06>
d0003128:	7923      	ldrb	r3, [r4, #4]
d000312a:	2b4c      	cmp	r3, #76	; 0x4c
d000312c:	d009      	beq.n	d0003142 <main+0xb06>
d000312e:	7963      	ldrb	r3, [r4, #5]
d0003130:	2b4c      	cmp	r3, #76	; 0x4c
d0003132:	d006      	beq.n	d0003142 <main+0xb06>
d0003134:	79a3      	ldrb	r3, [r4, #6]
d0003136:	2b4c      	cmp	r3, #76	; 0x4c
d0003138:	d003      	beq.n	d0003142 <main+0xb06>
d000313a:	79e3      	ldrb	r3, [r4, #7]
d000313c:	2b4c      	cmp	r3, #76	; 0x4c
d000313e:	f47f ad84 	bne.w	d0002c4a <main+0x60e>
d0003142:	f1b8 0f00 	cmp.w	r8, #0
d0003146:	f000 81e6 	beq.w	d0003516 <main+0xeda>
d000314a:	f108 3bff 	add.w	fp, r8, #4294967295	; 0xffffffff
d000314e:	f1a8 0204 	sub.w	r2, r8, #4
d0003152:	4b31      	ldr	r3, [pc, #196]	; (d0003218 <main+0xbdc>)
d0003154:	fa5f f08b 	uxtb.w	r0, fp
d0003158:	f8cd a01c 	str.w	sl, [sp, #28]
d000315c:	b2d2      	uxtb	r2, r2
d000315e:	46a2      	mov	sl, r4
d0003160:	f103 0b20 	add.w	fp, r3, #32
d0003164:	4604      	mov	r4, r0
d0003166:	9204      	str	r2, [sp, #16]
d0003168:	e9cd 6905 	strd	r6, r9, [sp, #20]
d000316c:	4699      	mov	r9, r3
d000316e:	e001      	b.n	d0003174 <main+0xb38>
d0003170:	f89a 1000 	ldrb.w	r1, [sl]
d0003174:	f899 0001 	ldrb.w	r0, [r9, #1]
d0003178:	4288      	cmp	r0, r1
d000317a:	d024      	beq.n	d00031c6 <main+0xb8a>
d000317c:	f89a 1001 	ldrb.w	r1, [sl, #1]
d0003180:	4288      	cmp	r0, r1
d0003182:	d020      	beq.n	d00031c6 <main+0xb8a>
d0003184:	f89a 1002 	ldrb.w	r1, [sl, #2]
d0003188:	4288      	cmp	r0, r1
d000318a:	d01c      	beq.n	d00031c6 <main+0xb8a>
d000318c:	f89a 1003 	ldrb.w	r1, [sl, #3]
d0003190:	4288      	cmp	r0, r1
d0003192:	d018      	beq.n	d00031c6 <main+0xb8a>
d0003194:	f89a 1004 	ldrb.w	r1, [sl, #4]
d0003198:	4288      	cmp	r0, r1
d000319a:	d014      	beq.n	d00031c6 <main+0xb8a>
d000319c:	f89a 1005 	ldrb.w	r1, [sl, #5]
d00031a0:	4288      	cmp	r0, r1
d00031a2:	d010      	beq.n	d00031c6 <main+0xb8a>
d00031a4:	f89a 1006 	ldrb.w	r1, [sl, #6]
d00031a8:	4288      	cmp	r0, r1
d00031aa:	d00c      	beq.n	d00031c6 <main+0xb8a>
d00031ac:	f89a 1007 	ldrb.w	r1, [sl, #7]
d00031b0:	4288      	cmp	r0, r1
d00031b2:	d008      	beq.n	d00031c6 <main+0xb8a>
d00031b4:	f109 0902 	add.w	r9, r9, #2
d00031b8:	45d9      	cmp	r9, fp
d00031ba:	d1d9      	bne.n	d0003170 <main+0xb34>
d00031bc:	e9dd 6905 	ldrd	r6, r9, [sp, #20]
d00031c0:	f8dd a01c 	ldr.w	sl, [sp, #28]
d00031c4:	e5f8      	b.n	d0002db8 <main+0x77c>
d00031c6:	2900      	cmp	r1, #0
d00031c8:	d0f4      	beq.n	d00031b4 <main+0xb78>
d00031ca:	2c01      	cmp	r4, #1
d00031cc:	f999 6000 	ldrsb.w	r6, [r9]
d00031d0:	d90c      	bls.n	d00031ec <main+0xbb0>
d00031d2:	f1b8 0f03 	cmp.w	r8, #3
d00031d6:	d012      	beq.n	d00031fe <main+0xbc2>
d00031d8:	9b04      	ldr	r3, [sp, #16]
d00031da:	2b01      	cmp	r3, #1
d00031dc:	d8ea      	bhi.n	d00031b4 <main+0xb78>
d00031de:	4630      	mov	r0, r6
d00031e0:	f7fe f9be 	bl	d0001560 <PlaceParam>
d00031e4:	2001      	movs	r0, #1
d00031e6:	f7fe fbb9 	bl	d000195c <MovePatternRow>
d00031ea:	e7e3      	b.n	d00031b4 <main+0xb78>
d00031ec:	4630      	mov	r0, r6
d00031ee:	f7fe f9f9 	bl	d00015e4 <PlaceSampleID>
d00031f2:	2001      	movs	r0, #1
d00031f4:	f7fe fbb2 	bl	d000195c <MovePatternRow>
d00031f8:	f1b8 0f03 	cmp.w	r8, #3
d00031fc:	d1da      	bne.n	d00031b4 <main+0xb78>
d00031fe:	4630      	mov	r0, r6
d0003200:	f7fe f97a 	bl	d00014f8 <PlaceCommand>
d0003204:	2001      	movs	r0, #1
d0003206:	f7fe fba9 	bl	d000195c <MovePatternRow>
d000320a:	e7d3      	b.n	d00031b4 <main+0xb78>
d000320c:	d000f043 	.word	0xd000f043
d0003210:	d0251804 	.word	0xd0251804
d0003214:	d000f042 	.word	0xd000f042
d0003218:	d000efd8 	.word	0xd000efd8
d000321c:	f000 fed2 	bl	d0003fc4 <GUIButtonHIT>
d0003220:	2200      	movs	r2, #0
d0003222:	4bc1      	ldr	r3, [pc, #772]	; (d0003528 <main+0xeec>)
d0003224:	211e      	movs	r1, #30
d0003226:	701a      	strb	r2, [r3, #0]
d0003228:	4bc0      	ldr	r3, [pc, #768]	; (d000352c <main+0xef0>)
d000322a:	6018      	str	r0, [r3, #0]
d000322c:	1e43      	subs	r3, r0, #1
d000322e:	48c0      	ldr	r0, [pc, #768]	; (d0003530 <main+0xef4>)
d0003230:	6002      	str	r2, [r0, #0]
d0003232:	4ac0      	ldr	r2, [pc, #768]	; (d0003534 <main+0xef8>)
d0003234:	6011      	str	r1, [r2, #0]
d0003236:	2b3e      	cmp	r3, #62	; 0x3e
d0003238:	f63f add6 	bhi.w	d0002de8 <main+0x7ac>
d000323c:	a201      	add	r2, pc, #4	; (adr r2, d0003244 <main+0xc08>)
d000323e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
d0003242:	bf00      	nop
d0003244:	d00037fb 	.word	0xd00037fb
d0003248:	d0003825 	.word	0xd0003825
d000324c:	d0003637 	.word	0xd0003637
d0003250:	d0003651 	.word	0xd0003651
d0003254:	d0002de9 	.word	0xd0002de9
d0003258:	d000365f 	.word	0xd000365f
d000325c:	d00036a1 	.word	0xd00036a1
d0003260:	d00036c5 	.word	0xd00036c5
d0003264:	d00036d3 	.word	0xd00036d3
d0003268:	d00036ed 	.word	0xd00036ed
d000326c:	d00036fb 	.word	0xd00036fb
d0003270:	d0003551 	.word	0xd0003551
d0003274:	d0003569 	.word	0xd0003569
d0003278:	d000357b 	.word	0xd000357b
d000327c:	d0002de9 	.word	0xd0002de9
d0003280:	d0002de9 	.word	0xd0002de9
d0003284:	d0003589 	.word	0xd0003589
d0003288:	d0003595 	.word	0xd0003595
d000328c:	d0002de9 	.word	0xd0002de9
d0003290:	d0002de9 	.word	0xd0002de9
d0003294:	d00035a1 	.word	0xd00035a1
d0003298:	d00035a9 	.word	0xd00035a9
d000329c:	d0002de9 	.word	0xd0002de9
d00032a0:	d0002de9 	.word	0xd0002de9
d00032a4:	d00035b1 	.word	0xd00035b1
d00032a8:	d00035b7 	.word	0xd00035b7
d00032ac:	d00035bd 	.word	0xd00035bd
d00032b0:	d00035cd 	.word	0xd00035cd
d00032b4:	d00035dd 	.word	0xd00035dd
d00032b8:	d00035ef 	.word	0xd00035ef
d00032bc:	d0003601 	.word	0xd0003601
d00032c0:	d0003613 	.word	0xd0003613
d00032c4:	d0003625 	.word	0xd0003625
d00032c8:	d000370b 	.word	0xd000370b
d00032cc:	d000371d 	.word	0xd000371d
d00032d0:	d00036bd 	.word	0xd00036bd
d00032d4:	d0003721 	.word	0xd0003721
d00032d8:	d000373d 	.word	0xd000373d
d00032dc:	d0003789 	.word	0xd0003789
d00032e0:	d0002de9 	.word	0xd0002de9
d00032e4:	d0002de9 	.word	0xd0002de9
d00032e8:	d0002de9 	.word	0xd0002de9
d00032ec:	d0002de9 	.word	0xd0002de9
d00032f0:	d0002de9 	.word	0xd0002de9
d00032f4:	d0002de9 	.word	0xd0002de9
d00032f8:	d0002de9 	.word	0xd0002de9
d00032fc:	d0002de9 	.word	0xd0002de9
d0003300:	d0002de9 	.word	0xd0002de9
d0003304:	d000379b 	.word	0xd000379b
d0003308:	d0002de9 	.word	0xd0002de9
d000330c:	d0002de9 	.word	0xd0002de9
d0003310:	d0002de9 	.word	0xd0002de9
d0003314:	d0002de9 	.word	0xd0002de9
d0003318:	d0002de9 	.word	0xd0002de9
d000331c:	d0002de9 	.word	0xd0002de9
d0003320:	d0002de9 	.word	0xd0002de9
d0003324:	d0002de9 	.word	0xd0002de9
d0003328:	d0002de9 	.word	0xd0002de9
d000332c:	d0002de9 	.word	0xd0002de9
d0003330:	d0002de9 	.word	0xd0002de9
d0003334:	d0002de9 	.word	0xd0002de9
d0003338:	d00037c7 	.word	0xd00037c7
d000333c:	d0003399 	.word	0xd0003399
d0003340:	2301      	movs	r3, #1
d0003342:	4a79      	ldr	r2, [pc, #484]	; (d0003528 <main+0xeec>)
d0003344:	7013      	strb	r3, [r2, #0]
d0003346:	f000 fe3d 	bl	d0003fc4 <GUIButtonHIT>
d000334a:	231e      	movs	r3, #30
d000334c:	4a79      	ldr	r2, [pc, #484]	; (d0003534 <main+0xef8>)
d000334e:	6013      	str	r3, [r2, #0]
d0003350:	4b76      	ldr	r3, [pc, #472]	; (d000352c <main+0xef0>)
d0003352:	6018      	str	r0, [r3, #0]
d0003354:	4b76      	ldr	r3, [pc, #472]	; (d0003530 <main+0xef4>)
d0003356:	6018      	str	r0, [r3, #0]
d0003358:	e540      	b.n	d0002ddc <main+0x7a0>
d000335a:	2202      	movs	r2, #2
d000335c:	4976      	ldr	r1, [pc, #472]	; (d0003538 <main+0xefc>)
d000335e:	2b73      	cmp	r3, #115	; 0x73
d0003360:	700a      	strb	r2, [r1, #0]
d0003362:	f47f ae9d 	bne.w	d00030a0 <main+0xa64>
d0003366:	2203      	movs	r2, #3
d0003368:	4973      	ldr	r1, [pc, #460]	; (d0003538 <main+0xefc>)
d000336a:	700a      	strb	r2, [r1, #0]
d000336c:	e6b4      	b.n	d00030d8 <main+0xa9c>
d000336e:	2201      	movs	r2, #1
d0003370:	4971      	ldr	r1, [pc, #452]	; (d0003538 <main+0xefc>)
d0003372:	700a      	strb	r2, [r1, #0]
d0003374:	e672      	b.n	d000305c <main+0xa20>
d0003376:	2200      	movs	r2, #0
d0003378:	496f      	ldr	r1, [pc, #444]	; (d0003538 <main+0xefc>)
d000337a:	700a      	strb	r2, [r1, #0]
d000337c:	e64f      	b.n	d000301e <main+0x9e2>
d000337e:	496f      	ldr	r1, [pc, #444]	; (d000353c <main+0xf00>)
d0003380:	780a      	ldrb	r2, [r1, #0]
d0003382:	f1c2 0201 	rsb	r2, r2, #1
d0003386:	700a      	strb	r2, [r1, #0]
d0003388:	e62a      	b.n	d0002fe0 <main+0x9a4>
d000338a:	6a2a      	ldr	r2, [r5, #32]
d000338c:	6a6b      	ldr	r3, [r5, #36]	; 0x24
d000338e:	6810      	ldr	r0, [r2, #0]
d0003390:	6819      	ldr	r1, [r3, #0]
d0003392:	f7fd f969 	bl	d0000668 <FileListedSelect>
d0003396:	e518      	b.n	d0002dca <main+0x78e>
d0003398:	4b69      	ldr	r3, [pc, #420]	; (d0003540 <main+0xf04>)
d000339a:	781c      	ldrb	r4, [r3, #0]
d000339c:	2c01      	cmp	r4, #1
d000339e:	f47f ad23 	bne.w	d0002de8 <main+0x7ac>
d00033a2:	4a68      	ldr	r2, [pc, #416]	; (d0003544 <main+0xf08>)
d00033a4:	2000      	movs	r0, #0
d00033a6:	6813      	ldr	r3, [r2, #0]
d00033a8:	f043 0310 	orr.w	r3, r3, #16
d00033ac:	6013      	str	r3, [r2, #0]
d00033ae:	f7fc ff4d 	bl	d000024c <StopChannel>
d00033b2:	2001      	movs	r0, #1
d00033b4:	f7fc ff4a 	bl	d000024c <StopChannel>
d00033b8:	2002      	movs	r0, #2
d00033ba:	f7fc ff47 	bl	d000024c <StopChannel>
d00033be:	2003      	movs	r0, #3
d00033c0:	f7fc ff44 	bl	d000024c <StopChannel>
d00033c4:	2004      	movs	r0, #4
d00033c6:	f7fc ff41 	bl	d000024c <StopChannel>
d00033ca:	2005      	movs	r0, #5
d00033cc:	f7fc ff3e 	bl	d000024c <StopChannel>
d00033d0:	2006      	movs	r0, #6
d00033d2:	f7fc ff3b 	bl	d000024c <StopChannel>
d00033d6:	2007      	movs	r0, #7
d00033d8:	f7fc ff38 	bl	d000024c <StopChannel>
d00033dc:	2007      	movs	r0, #7
d00033de:	b029      	add	sp, #164	; 0xa4
d00033e0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00033e4:	7823      	ldrb	r3, [r4, #0]
d00033e6:	2b50      	cmp	r3, #80	; 0x50
d00033e8:	d063      	beq.n	d00034b2 <main+0xe76>
d00033ea:	7863      	ldrb	r3, [r4, #1]
d00033ec:	2b50      	cmp	r3, #80	; 0x50
d00033ee:	d060      	beq.n	d00034b2 <main+0xe76>
d00033f0:	78a3      	ldrb	r3, [r4, #2]
d00033f2:	2b50      	cmp	r3, #80	; 0x50
d00033f4:	d05d      	beq.n	d00034b2 <main+0xe76>
d00033f6:	78e3      	ldrb	r3, [r4, #3]
d00033f8:	2b50      	cmp	r3, #80	; 0x50
d00033fa:	d05a      	beq.n	d00034b2 <main+0xe76>
d00033fc:	7923      	ldrb	r3, [r4, #4]
d00033fe:	2b50      	cmp	r3, #80	; 0x50
d0003400:	d057      	beq.n	d00034b2 <main+0xe76>
d0003402:	7963      	ldrb	r3, [r4, #5]
d0003404:	2b50      	cmp	r3, #80	; 0x50
d0003406:	d054      	beq.n	d00034b2 <main+0xe76>
d0003408:	79a3      	ldrb	r3, [r4, #6]
d000340a:	2b50      	cmp	r3, #80	; 0x50
d000340c:	d051      	beq.n	d00034b2 <main+0xe76>
d000340e:	79e3      	ldrb	r3, [r4, #7]
d0003410:	2b50      	cmp	r3, #80	; 0x50
d0003412:	d04e      	beq.n	d00034b2 <main+0xe76>
d0003414:	7823      	ldrb	r3, [r4, #0]
d0003416:	2b4f      	cmp	r3, #79	; 0x4f
d0003418:	f000 8216 	beq.w	d0003848 <main+0x120c>
d000341c:	7863      	ldrb	r3, [r4, #1]
d000341e:	2b4f      	cmp	r3, #79	; 0x4f
d0003420:	d05a      	beq.n	d00034d8 <main+0xe9c>
d0003422:	78a3      	ldrb	r3, [r4, #2]
d0003424:	2b4f      	cmp	r3, #79	; 0x4f
d0003426:	d057      	beq.n	d00034d8 <main+0xe9c>
d0003428:	78e3      	ldrb	r3, [r4, #3]
d000342a:	2b4f      	cmp	r3, #79	; 0x4f
d000342c:	d054      	beq.n	d00034d8 <main+0xe9c>
d000342e:	7923      	ldrb	r3, [r4, #4]
d0003430:	2b4f      	cmp	r3, #79	; 0x4f
d0003432:	d051      	beq.n	d00034d8 <main+0xe9c>
d0003434:	7963      	ldrb	r3, [r4, #5]
d0003436:	2b4f      	cmp	r3, #79	; 0x4f
d0003438:	d04e      	beq.n	d00034d8 <main+0xe9c>
d000343a:	79a3      	ldrb	r3, [r4, #6]
d000343c:	2b4f      	cmp	r3, #79	; 0x4f
d000343e:	d04b      	beq.n	d00034d8 <main+0xe9c>
d0003440:	79e3      	ldrb	r3, [r4, #7]
d0003442:	2b4f      	cmp	r3, #79	; 0x4f
d0003444:	d048      	beq.n	d00034d8 <main+0xe9c>
d0003446:	7823      	ldrb	r3, [r4, #0]
d0003448:	2b51      	cmp	r3, #81	; 0x51
d000344a:	d041      	beq.n	d00034d0 <main+0xe94>
d000344c:	7863      	ldrb	r3, [r4, #1]
d000344e:	2b51      	cmp	r3, #81	; 0x51
d0003450:	d03e      	beq.n	d00034d0 <main+0xe94>
d0003452:	78a3      	ldrb	r3, [r4, #2]
d0003454:	2b51      	cmp	r3, #81	; 0x51
d0003456:	d03b      	beq.n	d00034d0 <main+0xe94>
d0003458:	78e3      	ldrb	r3, [r4, #3]
d000345a:	2b51      	cmp	r3, #81	; 0x51
d000345c:	d038      	beq.n	d00034d0 <main+0xe94>
d000345e:	7923      	ldrb	r3, [r4, #4]
d0003460:	2b51      	cmp	r3, #81	; 0x51
d0003462:	d035      	beq.n	d00034d0 <main+0xe94>
d0003464:	7963      	ldrb	r3, [r4, #5]
d0003466:	2b51      	cmp	r3, #81	; 0x51
d0003468:	d032      	beq.n	d00034d0 <main+0xe94>
d000346a:	79a3      	ldrb	r3, [r4, #6]
d000346c:	2b51      	cmp	r3, #81	; 0x51
d000346e:	d02f      	beq.n	d00034d0 <main+0xe94>
d0003470:	79e3      	ldrb	r3, [r4, #7]
d0003472:	2b51      	cmp	r3, #81	; 0x51
d0003474:	d02c      	beq.n	d00034d0 <main+0xe94>
d0003476:	7823      	ldrb	r3, [r4, #0]
d0003478:	2b52      	cmp	r3, #82	; 0x52
d000347a:	d015      	beq.n	d00034a8 <main+0xe6c>
d000347c:	7863      	ldrb	r3, [r4, #1]
d000347e:	2b52      	cmp	r3, #82	; 0x52
d0003480:	d012      	beq.n	d00034a8 <main+0xe6c>
d0003482:	78a3      	ldrb	r3, [r4, #2]
d0003484:	2b52      	cmp	r3, #82	; 0x52
d0003486:	d00f      	beq.n	d00034a8 <main+0xe6c>
d0003488:	78e3      	ldrb	r3, [r4, #3]
d000348a:	2b52      	cmp	r3, #82	; 0x52
d000348c:	d00c      	beq.n	d00034a8 <main+0xe6c>
d000348e:	7923      	ldrb	r3, [r4, #4]
d0003490:	2b52      	cmp	r3, #82	; 0x52
d0003492:	d009      	beq.n	d00034a8 <main+0xe6c>
d0003494:	7963      	ldrb	r3, [r4, #5]
d0003496:	2b52      	cmp	r3, #82	; 0x52
d0003498:	d006      	beq.n	d00034a8 <main+0xe6c>
d000349a:	79a3      	ldrb	r3, [r4, #6]
d000349c:	2b52      	cmp	r3, #82	; 0x52
d000349e:	d003      	beq.n	d00034a8 <main+0xe6c>
d00034a0:	79e3      	ldrb	r3, [r4, #7]
d00034a2:	2b52      	cmp	r3, #82	; 0x52
d00034a4:	f47f ad7c 	bne.w	d0002fa0 <main+0x964>
d00034a8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00034ac:	f7fe fa56 	bl	d000195c <MovePatternRow>
d00034b0:	e576      	b.n	d0002fa0 <main+0x964>
d00034b2:	f8df 8098 	ldr.w	r8, [pc, #152]	; d000354c <main+0xf10>
d00034b6:	f898 3000 	ldrb.w	r3, [r8]
d00034ba:	3b01      	subs	r3, #1
d00034bc:	b25b      	sxtb	r3, r3
d00034be:	2b00      	cmp	r3, #0
d00034c0:	db22      	blt.n	d0003508 <main+0xecc>
d00034c2:	f888 3000 	strb.w	r3, [r8]
d00034c6:	e7a5      	b.n	d0003414 <main+0xdd8>
d00034c8:	2008      	movs	r0, #8
d00034ca:	f7fc ff41 	bl	d0000350 <FileRequestFileStringInjector>
d00034ce:	e46e      	b.n	d0002dae <main+0x772>
d00034d0:	2001      	movs	r0, #1
d00034d2:	f7fe fa43 	bl	d000195c <MovePatternRow>
d00034d6:	e7ce      	b.n	d0003476 <main+0xe3a>
d00034d8:	f8df 8070 	ldr.w	r8, [pc, #112]	; d000354c <main+0xf10>
d00034dc:	f898 3000 	ldrb.w	r3, [r8]
d00034e0:	3301      	adds	r3, #1
d00034e2:	b2db      	uxtb	r3, r3
d00034e4:	2b17      	cmp	r3, #23
d00034e6:	f888 3000 	strb.w	r3, [r8]
d00034ea:	d9ac      	bls.n	d0003446 <main+0xe0a>
d00034ec:	4b16      	ldr	r3, [pc, #88]	; (d0003548 <main+0xf0c>)
d00034ee:	2117      	movs	r1, #23
d00034f0:	781a      	ldrb	r2, [r3, #0]
d00034f2:	f888 1000 	strb.w	r1, [r8]
d00034f6:	2a00      	cmp	r2, #0
d00034f8:	d1a5      	bne.n	d0003446 <main+0xe0a>
d00034fa:	2104      	movs	r1, #4
d00034fc:	f888 2000 	strb.w	r2, [r8]
d0003500:	7019      	strb	r1, [r3, #0]
d0003502:	f002 f999 	bl	d0005838 <UpdateChannelOffset>
d0003506:	e79e      	b.n	d0003446 <main+0xe0a>
d0003508:	4b0f      	ldr	r3, [pc, #60]	; (d0003548 <main+0xf0c>)
d000350a:	781a      	ldrb	r2, [r3, #0]
d000350c:	2a04      	cmp	r2, #4
d000350e:	f000 8195 	beq.w	d000383c <main+0x1200>
d0003512:	2300      	movs	r3, #0
d0003514:	e7d5      	b.n	d00034c2 <main+0xe86>
d0003516:	20ff      	movs	r0, #255	; 0xff
d0003518:	f7fd ffae 	bl	d0001478 <PlaceNote>
d000351c:	2001      	movs	r0, #1
d000351e:	f7fe fa1d 	bl	d000195c <MovePatternRow>
d0003522:	7821      	ldrb	r1, [r4, #0]
d0003524:	f7ff bb95 	b.w	d0002c52 <main+0x616>
d0003528:	d000f034 	.word	0xd000f034
d000352c:	d025180c 	.word	0xd025180c
d0003530:	d000f02c 	.word	0xd000f02c
d0003534:	d000f030 	.word	0xd000f030
d0003538:	d000f042 	.word	0xd000f042
d000353c:	d000f043 	.word	0xd000f043
d0003540:	d000f022 	.word	0xd000f022
d0003544:	e000ed14 	.word	0xe000ed14
d0003548:	d000f040 	.word	0xd000f040
d000354c:	d000f041 	.word	0xd000f041
d0003550:	4bc3      	ldr	r3, [pc, #780]	; (d0003860 <main+0x1224>)
d0003552:	881a      	ldrh	r2, [r3, #0]
d0003554:	2a01      	cmp	r2, #1
d0003556:	d901      	bls.n	d000355c <main+0xf20>
d0003558:	3a01      	subs	r2, #1
d000355a:	801a      	strh	r2, [r3, #0]
d000355c:	8818      	ldrh	r0, [r3, #0]
d000355e:	f7fd fc43 	bl	d0000de8 <SetSongLength>
d0003562:	f002 f995 	bl	d0005890 <ConfigScreenUpdate>
d0003566:	e43f      	b.n	d0002de8 <main+0x7ac>
d0003568:	4abe      	ldr	r2, [pc, #760]	; (d0003864 <main+0x1228>)
d000356a:	7813      	ldrb	r3, [r2, #0]
d000356c:	2b1e      	cmp	r3, #30
d000356e:	d801      	bhi.n	d0003574 <main+0xf38>
d0003570:	3301      	adds	r3, #1
d0003572:	7013      	strb	r3, [r2, #0]
d0003574:	f001 ff04 	bl	d0005380 <RenderSampleIDEdit>
d0003578:	e436      	b.n	d0002de8 <main+0x7ac>
d000357a:	4aba      	ldr	r2, [pc, #744]	; (d0003864 <main+0x1228>)
d000357c:	7813      	ldrb	r3, [r2, #0]
d000357e:	2b01      	cmp	r3, #1
d0003580:	d9f8      	bls.n	d0003574 <main+0xf38>
d0003582:	3b01      	subs	r3, #1
d0003584:	7013      	strb	r3, [r2, #0]
d0003586:	e7f5      	b.n	d0003574 <main+0xf38>
d0003588:	4bb7      	ldr	r3, [pc, #732]	; (d0003868 <main+0x122c>)
d000358a:	2200      	movs	r2, #0
d000358c:	701a      	strb	r2, [r3, #0]
d000358e:	f002 f953 	bl	d0005838 <UpdateChannelOffset>
d0003592:	e429      	b.n	d0002de8 <main+0x7ac>
d0003594:	4bb4      	ldr	r3, [pc, #720]	; (d0003868 <main+0x122c>)
d0003596:	2204      	movs	r2, #4
d0003598:	701a      	strb	r2, [r3, #0]
d000359a:	f002 f94d 	bl	d0005838 <UpdateChannelOffset>
d000359e:	e423      	b.n	d0002de8 <main+0x7ac>
d00035a0:	2000      	movs	r0, #0
d00035a2:	f7fd f8b3 	bl	d000070c <ShowFileRequest>
d00035a6:	e41f      	b.n	d0002de8 <main+0x7ac>
d00035a8:	2001      	movs	r0, #1
d00035aa:	f7fd f8af 	bl	d000070c <ShowFileRequest>
d00035ae:	e41b      	b.n	d0002de8 <main+0x7ac>
d00035b0:	f001 fadc 	bl	d0004b6c <ShowPatternPositionEditor>
d00035b4:	e418      	b.n	d0002de8 <main+0x7ac>
d00035b6:	f000 fe33 	bl	d0004220 <ShowSampleIDEditor>
d00035ba:	e415      	b.n	d0002de8 <main+0x7ac>
d00035bc:	4aab      	ldr	r2, [pc, #684]	; (d000386c <main+0x1230>)
d00035be:	7813      	ldrb	r3, [r2, #0]
d00035c0:	f1c3 0301 	rsb	r3, r3, #1
d00035c4:	7013      	strb	r3, [r2, #0]
d00035c6:	f001 fff3 	bl	d00055b0 <UpdateChannelToggles>
d00035ca:	e40d      	b.n	d0002de8 <main+0x7ac>
d00035cc:	4aa7      	ldr	r2, [pc, #668]	; (d000386c <main+0x1230>)
d00035ce:	7853      	ldrb	r3, [r2, #1]
d00035d0:	f1c3 0301 	rsb	r3, r3, #1
d00035d4:	7053      	strb	r3, [r2, #1]
d00035d6:	f001 ffeb 	bl	d00055b0 <UpdateChannelToggles>
d00035da:	e405      	b.n	d0002de8 <main+0x7ac>
d00035dc:	4aa3      	ldr	r2, [pc, #652]	; (d000386c <main+0x1230>)
d00035de:	7893      	ldrb	r3, [r2, #2]
d00035e0:	f1c3 0301 	rsb	r3, r3, #1
d00035e4:	7093      	strb	r3, [r2, #2]
d00035e6:	f001 ffe3 	bl	d00055b0 <UpdateChannelToggles>
d00035ea:	f7ff bbfd 	b.w	d0002de8 <main+0x7ac>
d00035ee:	4a9f      	ldr	r2, [pc, #636]	; (d000386c <main+0x1230>)
d00035f0:	78d3      	ldrb	r3, [r2, #3]
d00035f2:	f1c3 0301 	rsb	r3, r3, #1
d00035f6:	70d3      	strb	r3, [r2, #3]
d00035f8:	f001 ffda 	bl	d00055b0 <UpdateChannelToggles>
d00035fc:	f7ff bbf4 	b.w	d0002de8 <main+0x7ac>
d0003600:	4a9a      	ldr	r2, [pc, #616]	; (d000386c <main+0x1230>)
d0003602:	7913      	ldrb	r3, [r2, #4]
d0003604:	f1c3 0301 	rsb	r3, r3, #1
d0003608:	7113      	strb	r3, [r2, #4]
d000360a:	f001 ffd1 	bl	d00055b0 <UpdateChannelToggles>
d000360e:	f7ff bbeb 	b.w	d0002de8 <main+0x7ac>
d0003612:	4a96      	ldr	r2, [pc, #600]	; (d000386c <main+0x1230>)
d0003614:	7953      	ldrb	r3, [r2, #5]
d0003616:	f1c3 0301 	rsb	r3, r3, #1
d000361a:	7153      	strb	r3, [r2, #5]
d000361c:	f001 ffc8 	bl	d00055b0 <UpdateChannelToggles>
d0003620:	f7ff bbe2 	b.w	d0002de8 <main+0x7ac>
d0003624:	4a91      	ldr	r2, [pc, #580]	; (d000386c <main+0x1230>)
d0003626:	7993      	ldrb	r3, [r2, #6]
d0003628:	f1c3 0301 	rsb	r3, r3, #1
d000362c:	7193      	strb	r3, [r2, #6]
d000362e:	f001 ffbf 	bl	d00055b0 <UpdateChannelToggles>
d0003632:	f7ff bbd9 	b.w	d0002de8 <main+0x7ac>
d0003636:	2301      	movs	r3, #1
d0003638:	498d      	ldr	r1, [pc, #564]	; (d0003870 <main+0x1234>)
d000363a:	488e      	ldr	r0, [pc, #568]	; (d0003874 <main+0x1238>)
d000363c:	2200      	movs	r2, #0
d000363e:	700b      	strb	r3, [r1, #0]
d0003640:	7003      	strb	r3, [r0, #0]
d0003642:	4b8d      	ldr	r3, [pc, #564]	; (d0003878 <main+0x123c>)
d0003644:	e9c3 2200 	strd	r2, r2, [r3]
d0003648:	f7fd fb62 	bl	d0000d10 <StartTimer>
d000364c:	f7ff bbcc 	b.w	d0002de8 <main+0x7ac>
d0003650:	4a8a      	ldr	r2, [pc, #552]	; (d000387c <main+0x1240>)
d0003652:	7813      	ldrb	r3, [r2, #0]
d0003654:	f1c3 0301 	rsb	r3, r3, #1
d0003658:	7013      	strb	r3, [r2, #0]
d000365a:	f7ff bbc5 	b.w	d0002de8 <main+0x7ac>
d000365e:	4a85      	ldr	r2, [pc, #532]	; (d0003874 <main+0x1238>)
d0003660:	2400      	movs	r4, #0
d0003662:	4b83      	ldr	r3, [pc, #524]	; (d0003870 <main+0x1234>)
d0003664:	7014      	strb	r4, [r2, #0]
d0003666:	701c      	strb	r4, [r3, #0]
d0003668:	f7fd fb58 	bl	d0000d1c <StopTimer>
d000366c:	4620      	mov	r0, r4
d000366e:	f7fc fded 	bl	d000024c <StopChannel>
d0003672:	2001      	movs	r0, #1
d0003674:	f7fc fdea 	bl	d000024c <StopChannel>
d0003678:	2002      	movs	r0, #2
d000367a:	f7fc fde7 	bl	d000024c <StopChannel>
d000367e:	2003      	movs	r0, #3
d0003680:	f7fc fde4 	bl	d000024c <StopChannel>
d0003684:	2004      	movs	r0, #4
d0003686:	f7fc fde1 	bl	d000024c <StopChannel>
d000368a:	2005      	movs	r0, #5
d000368c:	f7fc fdde 	bl	d000024c <StopChannel>
d0003690:	2006      	movs	r0, #6
d0003692:	f7fc fddb 	bl	d000024c <StopChannel>
d0003696:	2007      	movs	r0, #7
d0003698:	f7fc fdd8 	bl	d000024c <StopChannel>
d000369c:	f7ff bba4 	b.w	d0002de8 <main+0x7ac>
d00036a0:	4b77      	ldr	r3, [pc, #476]	; (d0003880 <main+0x1244>)
d00036a2:	8859      	ldrh	r1, [r3, #2]
d00036a4:	881a      	ldrh	r2, [r3, #0]
d00036a6:	3901      	subs	r1, #1
d00036a8:	428a      	cmp	r2, r1
d00036aa:	f2c0 80fb 	blt.w	d00038a4 <main+0x1268>
d00036ae:	8818      	ldrh	r0, [r3, #0]
d00036b0:	f7fd fb4e 	bl	d0000d50 <SetSongPosition>
d00036b4:	f002 f8ec 	bl	d0005890 <ConfigScreenUpdate>
d00036b8:	f7ff bb96 	b.w	d0002de8 <main+0x7ac>
d00036bc:	4b71      	ldr	r3, [pc, #452]	; (d0003884 <main+0x1248>)
d00036be:	781b      	ldrb	r3, [r3, #0]
d00036c0:	2b01      	cmp	r3, #1
d00036c2:	d175      	bne.n	d00037b0 <main+0x1174>
d00036c4:	4b6e      	ldr	r3, [pc, #440]	; (d0003880 <main+0x1244>)
d00036c6:	881a      	ldrh	r2, [r3, #0]
d00036c8:	2a00      	cmp	r2, #0
d00036ca:	d0f0      	beq.n	d00036ae <main+0x1072>
d00036cc:	3a01      	subs	r2, #1
d00036ce:	801a      	strh	r2, [r3, #0]
d00036d0:	e7ed      	b.n	d00036ae <main+0x1072>
d00036d2:	4b6d      	ldr	r3, [pc, #436]	; (d0003888 <main+0x124c>)
d00036d4:	881a      	ldrh	r2, [r3, #0]
d00036d6:	2a3f      	cmp	r2, #63	; 0x3f
d00036d8:	d801      	bhi.n	d00036de <main+0x10a2>
d00036da:	3201      	adds	r2, #1
d00036dc:	801a      	strh	r2, [r3, #0]
d00036de:	8818      	ldrh	r0, [r3, #0]
d00036e0:	f7fd fb62 	bl	d0000da8 <SetCurrentPatternSelect>
d00036e4:	f002 f8d4 	bl	d0005890 <ConfigScreenUpdate>
d00036e8:	f7ff bb7e 	b.w	d0002de8 <main+0x7ac>
d00036ec:	4b66      	ldr	r3, [pc, #408]	; (d0003888 <main+0x124c>)
d00036ee:	881a      	ldrh	r2, [r3, #0]
d00036f0:	2a00      	cmp	r2, #0
d00036f2:	d0f4      	beq.n	d00036de <main+0x10a2>
d00036f4:	3a01      	subs	r2, #1
d00036f6:	801a      	strh	r2, [r3, #0]
d00036f8:	e7f1      	b.n	d00036de <main+0x10a2>
d00036fa:	4b59      	ldr	r3, [pc, #356]	; (d0003860 <main+0x1224>)
d00036fc:	881a      	ldrh	r2, [r3, #0]
d00036fe:	2a3f      	cmp	r2, #63	; 0x3f
d0003700:	f63f af2c 	bhi.w	d000355c <main+0xf20>
d0003704:	3201      	adds	r2, #1
d0003706:	801a      	strh	r2, [r3, #0]
d0003708:	e728      	b.n	d000355c <main+0xf20>
d000370a:	4a58      	ldr	r2, [pc, #352]	; (d000386c <main+0x1230>)
d000370c:	79d3      	ldrb	r3, [r2, #7]
d000370e:	f1c3 0301 	rsb	r3, r3, #1
d0003712:	71d3      	strb	r3, [r2, #7]
d0003714:	f001 ff4c 	bl	d00055b0 <UpdateChannelToggles>
d0003718:	f7ff bb66 	b.w	d0002de8 <main+0x7ac>
d000371c:	f002 f8f0 	bl	d0005900 <CloseConfigScreen>
d0003720:	4b58      	ldr	r3, [pc, #352]	; (d0003884 <main+0x1248>)
d0003722:	781b      	ldrb	r3, [r3, #0]
d0003724:	2b01      	cmp	r3, #1
d0003726:	d0bb      	beq.n	d00036a0 <main+0x1064>
d0003728:	2b02      	cmp	r3, #2
d000372a:	f47f ab5d 	bne.w	d0002de8 <main+0x7ac>
d000372e:	4a4d      	ldr	r2, [pc, #308]	; (d0003864 <main+0x1228>)
d0003730:	7813      	ldrb	r3, [r2, #0]
d0003732:	2b01      	cmp	r3, #1
d0003734:	d9be      	bls.n	d00036b4 <main+0x1078>
d0003736:	3b01      	subs	r3, #1
d0003738:	7013      	strb	r3, [r2, #0]
d000373a:	e7bb      	b.n	d00036b4 <main+0x1078>
d000373c:	4b51      	ldr	r3, [pc, #324]	; (d0003884 <main+0x1248>)
d000373e:	781b      	ldrb	r3, [r3, #0]
d0003740:	2b03      	cmp	r3, #3
d0003742:	f47f ab51 	bne.w	d0002de8 <main+0x7ac>
d0003746:	f7fd f955 	bl	d00009f4 <CheckDirectorySelect>
d000374a:	2800      	cmp	r0, #0
d000374c:	f47f ab4c 	bne.w	d0002de8 <main+0x7ac>
d0003750:	4c4e      	ldr	r4, [pc, #312]	; (d000388c <main+0x1250>)
d0003752:	68ab      	ldr	r3, [r5, #8]
d0003754:	484e      	ldr	r0, [pc, #312]	; (d0003890 <main+0x1254>)
d0003756:	4798      	blx	r3
d0003758:	7823      	ldrb	r3, [r4, #0]
d000375a:	2b01      	cmp	r3, #1
d000375c:	d104      	bne.n	d0003768 <main+0x112c>
d000375e:	68ab      	ldr	r3, [r5, #8]
d0003760:	484c      	ldr	r0, [pc, #304]	; (d0003894 <main+0x1258>)
d0003762:	4798      	blx	r3
d0003764:	f7fd f998 	bl	d0000a98 <SaveKMD>
d0003768:	7823      	ldrb	r3, [r4, #0]
d000376a:	2b00      	cmp	r3, #0
d000376c:	f47f ab3c 	bne.w	d0002de8 <main+0x7ac>
d0003770:	68ab      	ldr	r3, [r5, #8]
d0003772:	4849      	ldr	r0, [pc, #292]	; (d0003898 <main+0x125c>)
d0003774:	4798      	blx	r3
d0003776:	f7fd f9a1 	bl	d0000abc <LoadKMD>
d000377a:	2800      	cmp	r0, #0
d000377c:	f43f ab34 	beq.w	d0002de8 <main+0x7ac>
d0003780:	f7fd f92c 	bl	d00009dc <CloseFileRequest>
d0003784:	f7ff bb30 	b.w	d0002de8 <main+0x7ac>
d0003788:	4b3e      	ldr	r3, [pc, #248]	; (d0003884 <main+0x1248>)
d000378a:	781b      	ldrb	r3, [r3, #0]
d000378c:	2b03      	cmp	r3, #3
d000378e:	f47f ab2b 	bne.w	d0002de8 <main+0x7ac>
d0003792:	f7fd f96f 	bl	d0000a74 <ParentDirectory>
d0003796:	f7ff bb27 	b.w	d0002de8 <main+0x7ac>
d000379a:	4b3a      	ldr	r3, [pc, #232]	; (d0003884 <main+0x1248>)
d000379c:	781b      	ldrb	r3, [r3, #0]
d000379e:	2b02      	cmp	r3, #2
d00037a0:	f47f ab22 	bne.w	d0002de8 <main+0x7ac>
d00037a4:	f001 fea2 	bl	d00054ec <SampleIDEdit_ChangeLoopToggle>
d00037a8:	f002 f872 	bl	d0005890 <ConfigScreenUpdate>
d00037ac:	f7ff bb1c 	b.w	d0002de8 <main+0x7ac>
d00037b0:	2b02      	cmp	r3, #2
d00037b2:	f47f ab19 	bne.w	d0002de8 <main+0x7ac>
d00037b6:	4a2b      	ldr	r2, [pc, #172]	; (d0003864 <main+0x1228>)
d00037b8:	7813      	ldrb	r3, [r2, #0]
d00037ba:	2b1e      	cmp	r3, #30
d00037bc:	f63f af7a 	bhi.w	d00036b4 <main+0x1078>
d00037c0:	3301      	adds	r3, #1
d00037c2:	7013      	strb	r3, [r2, #0]
d00037c4:	e776      	b.n	d00036b4 <main+0x1078>
d00037c6:	4b35      	ldr	r3, [pc, #212]	; (d000389c <main+0x1260>)
d00037c8:	781b      	ldrb	r3, [r3, #0]
d00037ca:	2b01      	cmp	r3, #1
d00037cc:	f47f ab0c 	bne.w	d0002de8 <main+0x7ac>
d00037d0:	2114      	movs	r1, #20
d00037d2:	203f      	movs	r0, #63	; 0x3f
d00037d4:	f000 fa64 	bl	d0003ca0 <guiSetButtonGadgetFlags>
d00037d8:	2114      	movs	r1, #20
d00037da:	203e      	movs	r0, #62	; 0x3e
d00037dc:	f000 fa60 	bl	d0003ca0 <guiSetButtonGadgetFlags>
d00037e0:	2128      	movs	r1, #40	; 0x28
d00037e2:	203f      	movs	r0, #63	; 0x3f
d00037e4:	f000 fa68 	bl	d0003cb8 <guiClrButtonGadgetFlags>
d00037e8:	2128      	movs	r1, #40	; 0x28
d00037ea:	203e      	movs	r0, #62	; 0x3e
d00037ec:	f000 fa64 	bl	d0003cb8 <guiClrButtonGadgetFlags>
d00037f0:	2300      	movs	r3, #0
d00037f2:	4a2a      	ldr	r2, [pc, #168]	; (d000389c <main+0x1260>)
d00037f4:	7013      	strb	r3, [r2, #0]
d00037f6:	f7ff baf7 	b.w	d0002de8 <main+0x7ac>
d00037fa:	2114      	movs	r1, #20
d00037fc:	203f      	movs	r0, #63	; 0x3f
d00037fe:	f000 fa5b 	bl	d0003cb8 <guiClrButtonGadgetFlags>
d0003802:	2114      	movs	r1, #20
d0003804:	203e      	movs	r0, #62	; 0x3e
d0003806:	f000 fa57 	bl	d0003cb8 <guiClrButtonGadgetFlags>
d000380a:	2128      	movs	r1, #40	; 0x28
d000380c:	203f      	movs	r0, #63	; 0x3f
d000380e:	f000 fa47 	bl	d0003ca0 <guiSetButtonGadgetFlags>
d0003812:	2128      	movs	r1, #40	; 0x28
d0003814:	203e      	movs	r0, #62	; 0x3e
d0003816:	f000 fa43 	bl	d0003ca0 <guiSetButtonGadgetFlags>
d000381a:	2301      	movs	r3, #1
d000381c:	4a1f      	ldr	r2, [pc, #124]	; (d000389c <main+0x1260>)
d000381e:	7013      	strb	r3, [r2, #0]
d0003820:	f7ff bae2 	b.w	d0002de8 <main+0x7ac>
d0003824:	4913      	ldr	r1, [pc, #76]	; (d0003874 <main+0x1238>)
d0003826:	2200      	movs	r2, #0
d0003828:	4b11      	ldr	r3, [pc, #68]	; (d0003870 <main+0x1234>)
d000382a:	2001      	movs	r0, #1
d000382c:	701a      	strb	r2, [r3, #0]
d000382e:	7008      	strb	r0, [r1, #0]
d0003830:	f7fd fd60 	bl	d00012f4 <RestartPlayer>
d0003834:	f7fd fa6c 	bl	d0000d10 <StartTimer>
d0003838:	f7ff bad6 	b.w	d0002de8 <main+0x7ac>
d000383c:	2200      	movs	r2, #0
d000383e:	701a      	strb	r2, [r3, #0]
d0003840:	f001 fffa 	bl	d0005838 <UpdateChannelOffset>
d0003844:	2317      	movs	r3, #23
d0003846:	e63c      	b.n	d00034c2 <main+0xe86>
d0003848:	f8df 8054 	ldr.w	r8, [pc, #84]	; d00038a0 <main+0x1264>
d000384c:	f898 3000 	ldrb.w	r3, [r8]
d0003850:	3301      	adds	r3, #1
d0003852:	b2db      	uxtb	r3, r3
d0003854:	2b17      	cmp	r3, #23
d0003856:	f888 3000 	strb.w	r3, [r8]
d000385a:	f63f ae47 	bhi.w	d00034ec <main+0xeb0>
d000385e:	e5f5      	b.n	d000344c <main+0xe10>
d0003860:	d0051558 	.word	0xd0051558
d0003864:	d000eff8 	.word	0xd000eff8
d0003868:	d000f040 	.word	0xd000f040
d000386c:	d000ef6c 	.word	0xd000ef6c
d0003870:	d000f01e 	.word	0xd000f01e
d0003874:	d000f01f 	.word	0xd000f01f
d0003878:	d0051548 	.word	0xd0051548
d000387c:	d000f043 	.word	0xd000f043
d0003880:	d0051556 	.word	0xd0051556
d0003884:	d000f04c 	.word	0xd000f04c
d0003888:	d0051554 	.word	0xd0051554
d000388c:	d000f011 	.word	0xd000f011
d0003890:	d0007478 	.word	0xd0007478
d0003894:	d0007498 	.word	0xd0007498
d0003898:	d00074ac 	.word	0xd00074ac
d000389c:	d000f022 	.word	0xd000f022
d00038a0:	d000f041 	.word	0xd000f041
d00038a4:	3201      	adds	r2, #1
d00038a6:	801a      	strh	r2, [r3, #0]
d00038a8:	e701      	b.n	d00036ae <main+0x1072>
d00038aa:	bf00      	nop

d00038ac <uiFileText>:
d00038ac:	4b06      	ldr	r3, [pc, #24]	; (d00038c8 <uiFileText+0x1c>)
d00038ae:	b470      	push	{r4, r5, r6}
d00038b0:	f8d3 40f8 	ldr.w	r4, [r3, #248]	; 0xf8
d00038b4:	2610      	movs	r6, #16
d00038b6:	2505      	movs	r5, #5
d00038b8:	7026      	strb	r6, [r4, #0]
d00038ba:	f8d3 40fc 	ldr.w	r4, [r3, #252]	; 0xfc
d00038be:	7025      	strb	r5, [r4, #0]
d00038c0:	f8d3 314c 	ldr.w	r3, [r3, #332]	; 0x14c
d00038c4:	bc70      	pop	{r4, r5, r6}
d00038c6:	4718      	bx	r3
d00038c8:	2001f000 	.word	0x2001f000

d00038cc <uiTextDraw>:
d00038cc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00038d0:	4c0d      	ldr	r4, [pc, #52]	; (d0003908 <uiTextDraw+0x3c>)
d00038d2:	2704      	movs	r7, #4
d00038d4:	4605      	mov	r5, r0
d00038d6:	460e      	mov	r6, r1
d00038d8:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d00038dc:	3102      	adds	r1, #2
d00038de:	3002      	adds	r0, #2
d00038e0:	701f      	strb	r7, [r3, #0]
d00038e2:	4617      	mov	r7, r2
d00038e4:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d00038e8:	4798      	blx	r3
d00038ea:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d00038ee:	f04f 0c06 	mov.w	ip, #6
d00038f2:	463a      	mov	r2, r7
d00038f4:	4631      	mov	r1, r6
d00038f6:	4628      	mov	r0, r5
d00038f8:	f883 c000 	strb.w	ip, [r3]
d00038fc:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d0003900:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0003904:	4718      	bx	r3
d0003906:	bf00      	nop
d0003908:	2001f000 	.word	0x2001f000

d000390c <uiTextDrawNumberU>:
d000390c:	b570      	push	{r4, r5, r6, lr}
d000390e:	b082      	sub	sp, #8
d0003910:	4604      	mov	r4, r0
d0003912:	460d      	mov	r5, r1
d0003914:	490a      	ldr	r1, [pc, #40]	; (d0003940 <uiTextDrawNumberU+0x34>)
d0003916:	4668      	mov	r0, sp
d0003918:	2610      	movs	r6, #16
d000391a:	f002 fa0b 	bl	d0005d34 <siprintf>
d000391e:	4b09      	ldr	r3, [pc, #36]	; (d0003944 <uiTextDrawNumberU+0x38>)
d0003920:	4620      	mov	r0, r4
d0003922:	4629      	mov	r1, r5
d0003924:	f8d3 40f8 	ldr.w	r4, [r3, #248]	; 0xf8
d0003928:	2505      	movs	r5, #5
d000392a:	466a      	mov	r2, sp
d000392c:	7026      	strb	r6, [r4, #0]
d000392e:	f8d3 40fc 	ldr.w	r4, [r3, #252]	; 0xfc
d0003932:	7025      	strb	r5, [r4, #0]
d0003934:	f8d3 314c 	ldr.w	r3, [r3, #332]	; 0x14c
d0003938:	4798      	blx	r3
d000393a:	b002      	add	sp, #8
d000393c:	bd70      	pop	{r4, r5, r6, pc}
d000393e:	bf00      	nop
d0003940:	d00078cc 	.word	0xd00078cc
d0003944:	2001f000 	.word	0x2001f000

d0003948 <uiTextDrawNumber3>:
d0003948:	b570      	push	{r4, r5, r6, lr}
d000394a:	b082      	sub	sp, #8
d000394c:	4604      	mov	r4, r0
d000394e:	460d      	mov	r5, r1
d0003950:	490a      	ldr	r1, [pc, #40]	; (d000397c <uiTextDrawNumber3+0x34>)
d0003952:	4668      	mov	r0, sp
d0003954:	2610      	movs	r6, #16
d0003956:	f002 f9ed 	bl	d0005d34 <siprintf>
d000395a:	4b09      	ldr	r3, [pc, #36]	; (d0003980 <uiTextDrawNumber3+0x38>)
d000395c:	4620      	mov	r0, r4
d000395e:	4629      	mov	r1, r5
d0003960:	f8d3 40f8 	ldr.w	r4, [r3, #248]	; 0xf8
d0003964:	2505      	movs	r5, #5
d0003966:	466a      	mov	r2, sp
d0003968:	7026      	strb	r6, [r4, #0]
d000396a:	f8d3 40fc 	ldr.w	r4, [r3, #252]	; 0xfc
d000396e:	7025      	strb	r5, [r4, #0]
d0003970:	f8d3 314c 	ldr.w	r3, [r3, #332]	; 0x14c
d0003974:	4798      	blx	r3
d0003976:	b002      	add	sp, #8
d0003978:	bd70      	pop	{r4, r5, r6, pc}
d000397a:	bf00      	nop
d000397c:	d00078d4 	.word	0xd00078d4
d0003980:	2001f000 	.word	0x2001f000

d0003984 <uiDrawBeval>:
d0003984:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0003988:	4688      	mov	r8, r1
d000398a:	461c      	mov	r4, r3
d000398c:	4e17      	ldr	r6, [pc, #92]	; (d00039ec <uiDrawBeval+0x68>)
d000398e:	4402      	add	r2, r0
d0003990:	4444      	add	r4, r8
d0003992:	f89d e020 	ldrb.w	lr, [sp, #32]
d0003996:	f8d6 c0f8 	ldr.w	ip, [r6, #248]	; 0xf8
d000399a:	b215      	sxth	r5, r2
d000399c:	4607      	mov	r7, r0
d000399e:	b224      	sxth	r4, r4
d00039a0:	f88c e000 	strb.w	lr, [ip]
d00039a4:	460b      	mov	r3, r1
d00039a6:	f8d6 a124 	ldr.w	sl, [r6, #292]	; 0x124
d00039aa:	1eaa      	subs	r2, r5, #2
d00039ac:	f89d 9024 	ldrb.w	r9, [sp, #36]	; 0x24
d00039b0:	47d0      	blx	sl
d00039b2:	463a      	mov	r2, r7
d00039b4:	4641      	mov	r1, r8
d00039b6:	4638      	mov	r0, r7
d00039b8:	1ea3      	subs	r3, r4, #2
d00039ba:	f8d6 a124 	ldr.w	sl, [r6, #292]	; 0x124
d00039be:	47d0      	blx	sl
d00039c0:	f8d6 20f8 	ldr.w	r2, [r6, #248]	; 0xf8
d00039c4:	f108 0102 	add.w	r1, r8, #2
d00039c8:	4623      	mov	r3, r4
d00039ca:	f882 9000 	strb.w	r9, [r2]
d00039ce:	4628      	mov	r0, r5
d00039d0:	462a      	mov	r2, r5
d00039d2:	f8d6 8124 	ldr.w	r8, [r6, #292]	; 0x124
d00039d6:	47c0      	blx	r8
d00039d8:	462a      	mov	r2, r5
d00039da:	f8d6 5124 	ldr.w	r5, [r6, #292]	; 0x124
d00039de:	1cb8      	adds	r0, r7, #2
d00039e0:	4623      	mov	r3, r4
d00039e2:	4621      	mov	r1, r4
d00039e4:	46ac      	mov	ip, r5
d00039e6:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00039ea:	4760      	bx	ip
d00039ec:	2001f000 	.word	0x2001f000

d00039f0 <guiRenderButton.constprop.0>:
d00039f0:	4b92      	ldr	r3, [pc, #584]	; (d0003c3c <guiRenderButton.constprop.0+0x24c>)
d00039f2:	4601      	mov	r1, r0
d00039f4:	224c      	movs	r2, #76	; 0x4c
d00039f6:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00039fa:	b099      	sub	sp, #100	; 0x64
d00039fc:	fb02 3101 	mla	r1, r2, r1, r3
d0003a00:	a805      	add	r0, sp, #20
d0003a02:	f001 ffb1 	bl	d0005968 <memcpy>
d0003a06:	f89d 3014 	ldrb.w	r3, [sp, #20]
d0003a0a:	2b00      	cmp	r3, #0
d0003a0c:	d076      	beq.n	d0003afc <guiRenderButton.constprop.0+0x10c>
d0003a0e:	f89d 6016 	ldrb.w	r6, [sp, #22]
d0003a12:	f016 0410 	ands.w	r4, r6, #16
d0003a16:	d171      	bne.n	d0003afc <guiRenderButton.constprop.0+0x10c>
d0003a18:	a808      	add	r0, sp, #32
d0003a1a:	f002 f9d9 	bl	d0005dd0 <strlen>
d0003a1e:	2800      	cmp	r0, #0
d0003a20:	d06f      	beq.n	d0003b02 <guiRenderButton.constprop.0+0x112>
d0003a22:	4623      	mov	r3, r4
d0003a24:	aa18      	add	r2, sp, #96	; 0x60
d0003a26:	441a      	add	r2, r3
d0003a28:	3301      	adds	r3, #1
d0003a2a:	f812 2c40 	ldrb.w	r2, [r2, #-64]
d0003a2e:	b21b      	sxth	r3, r3
d0003a30:	2a0a      	cmp	r2, #10
d0003a32:	d101      	bne.n	d0003a38 <guiRenderButton.constprop.0+0x48>
d0003a34:	3401      	adds	r4, #1
d0003a36:	b2e4      	uxtb	r4, r4
d0003a38:	4298      	cmp	r0, r3
d0003a3a:	d8f3      	bhi.n	d0003a24 <guiRenderButton.constprop.0+0x34>
d0003a3c:	4b80      	ldr	r3, [pc, #512]	; (d0003c40 <guiRenderButton.constprop.0+0x250>)
d0003a3e:	06b1      	lsls	r1, r6, #26
d0003a40:	f8bd 8018 	ldrh.w	r8, [sp, #24]
d0003a44:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d0003a48:	f8bd b01a 	ldrh.w	fp, [sp, #26]
d0003a4c:	681f      	ldr	r7, [r3, #0]
d0003a4e:	f8bd 201c 	ldrh.w	r2, [sp, #28]
d0003a52:	f8bd 301e 	ldrh.w	r3, [sp, #30]
d0003a56:	d565      	bpl.n	d0003b24 <guiRenderButton.constprop.0+0x134>
d0003a58:	469a      	mov	sl, r3
d0003a5a:	4691      	mov	r9, r2
d0003a5c:	2c00      	cmp	r4, #0
d0003a5e:	d071      	beq.n	d0003b44 <guiRenderButton.constprop.0+0x154>
d0003a60:	f64f 71fb 	movw	r1, #65531	; 0xfffb
d0003a64:	0855      	lsrs	r5, r2, #1
d0003a66:	eba1 04c4 	sub.w	r4, r1, r4, lsl #3
d0003a6a:	3d04      	subs	r5, #4
d0003a6c:	eb04 0453 	add.w	r4, r4, r3, lsr #1
d0003a70:	b22d      	sxth	r5, r5
d0003a72:	b224      	sxth	r4, r4
d0003a74:	44c1      	add	r9, r8
d0003a76:	44da      	add	sl, fp
d0003a78:	f016 0f04 	tst.w	r6, #4
d0003a7c:	fa0f f088 	sxth.w	r0, r8
d0003a80:	fa0f f289 	sxth.w	r2, r9
d0003a84:	fa0f f38a 	sxth.w	r3, sl
d0003a88:	fa0f f18b 	sxth.w	r1, fp
d0003a8c:	f040 809f 	bne.w	d0003bce <guiRenderButton.constprop.0+0x1de>
d0003a90:	f016 0f02 	tst.w	r6, #2
d0003a94:	4e6a      	ldr	r6, [pc, #424]	; (d0003c40 <guiRenderButton.constprop.0+0x250>)
d0003a96:	f04f 0c05 	mov.w	ip, #5
d0003a9a:	f8d6 e0f8 	ldr.w	lr, [r6, #248]	; 0xf8
d0003a9e:	d166      	bne.n	d0003b6e <guiRenderButton.constprop.0+0x17e>
d0003aa0:	f88e c000 	strb.w	ip, [lr]
d0003aa4:	eb04 0801 	add.w	r8, r4, r1
d0003aa8:	f8d6 913c 	ldr.w	r9, [r6, #316]	; 0x13c
d0003aac:	4405      	add	r5, r0
d0003aae:	2406      	movs	r4, #6
d0003ab0:	e9cd 0102 	strd	r0, r1, [sp, #8]
d0003ab4:	47c8      	blx	r9
d0003ab6:	2304      	movs	r3, #4
d0003ab8:	f9bd 201c 	ldrsh.w	r2, [sp, #28]
d0003abc:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
d0003ac0:	e9cd 4300 	strd	r4, r3, [sp]
d0003ac4:	f9bd 301e 	ldrsh.w	r3, [sp, #30]
d0003ac8:	f7ff ff5c 	bl	d0003984 <uiDrawBeval>
d0003acc:	f8d6 3148 	ldr.w	r3, [r6, #328]	; 0x148
d0003ad0:	f108 0102 	add.w	r1, r8, #2
d0003ad4:	1ca8      	adds	r0, r5, #2
d0003ad6:	aa08      	add	r2, sp, #32
d0003ad8:	4798      	blx	r3
d0003ada:	f8d6 30f8 	ldr.w	r3, [r6, #248]	; 0xf8
d0003ade:	701c      	strb	r4, [r3, #0]
d0003ae0:	f89d 3016 	ldrb.w	r3, [sp, #22]
d0003ae4:	065b      	lsls	r3, r3, #25
d0003ae6:	d405      	bmi.n	d0003af4 <guiRenderButton.constprop.0+0x104>
d0003ae8:	f8d6 3148 	ldr.w	r3, [r6, #328]	; 0x148
d0003aec:	aa08      	add	r2, sp, #32
d0003aee:	4641      	mov	r1, r8
d0003af0:	4628      	mov	r0, r5
d0003af2:	4798      	blx	r3
d0003af4:	4b52      	ldr	r3, [pc, #328]	; (d0003c40 <guiRenderButton.constprop.0+0x250>)
d0003af6:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d0003afa:	601f      	str	r7, [r3, #0]
d0003afc:	b019      	add	sp, #100	; 0x64
d0003afe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0003b02:	4b4f      	ldr	r3, [pc, #316]	; (d0003c40 <guiRenderButton.constprop.0+0x250>)
d0003b04:	f016 0420 	ands.w	r4, r6, #32
d0003b08:	f8bd 901c 	ldrh.w	r9, [sp, #28]
d0003b0c:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d0003b10:	f8bd a01e 	ldrh.w	sl, [sp, #30]
d0003b14:	464a      	mov	r2, r9
d0003b16:	681f      	ldr	r7, [r3, #0]
d0003b18:	f8bd 8018 	ldrh.w	r8, [sp, #24]
d0003b1c:	4653      	mov	r3, sl
d0003b1e:	f8bd b01a 	ldrh.w	fp, [sp, #26]
d0003b22:	d10f      	bne.n	d0003b44 <guiRenderButton.constprop.0+0x154>
d0003b24:	e9cd 2302 	strd	r2, r3, [sp, #8]
d0003b28:	f7fc fb50 	bl	d00001cc <SetDrawToBackLayer>
d0003b2c:	9b03      	ldr	r3, [sp, #12]
d0003b2e:	9a02      	ldr	r2, [sp, #8]
d0003b30:	469a      	mov	sl, r3
d0003b32:	f89d 6016 	ldrb.w	r6, [sp, #22]
d0003b36:	4691      	mov	r9, r2
d0003b38:	f8bd 301e 	ldrh.w	r3, [sp, #30]
d0003b3c:	f8bd 201c 	ldrh.w	r2, [sp, #28]
d0003b40:	2c00      	cmp	r4, #0
d0003b42:	d18d      	bne.n	d0003a60 <guiRenderButton.constprop.0+0x70>
d0003b44:	a808      	add	r0, sp, #32
d0003b46:	e9cd 2302 	strd	r2, r3, [sp, #8]
d0003b4a:	f002 f941 	bl	d0005dd0 <strlen>
d0003b4e:	9b03      	ldr	r3, [sp, #12]
d0003b50:	00c5      	lsls	r5, r0, #3
d0003b52:	9a02      	ldr	r2, [sp, #8]
d0003b54:	f1b3 040e 	subs.w	r4, r3, #14
d0003b58:	ea4f 0555 	mov.w	r5, r5, lsr #1
d0003b5c:	bf48      	it	mi
d0003b5e:	f1a3 040d 	submi.w	r4, r3, #13
d0003b62:	ebc5 0552 	rsb	r5, r5, r2, lsr #1
d0003b66:	f344 044f 	sbfx	r4, r4, #1, #16
d0003b6a:	b22d      	sxth	r5, r5
d0003b6c:	e782      	b.n	d0003a74 <guiRenderButton.constprop.0+0x84>
d0003b6e:	f88e c000 	strb.w	ip, [lr]
d0003b72:	f04f 0906 	mov.w	r9, #6
d0003b76:	f04f 0a04 	mov.w	sl, #4
d0003b7a:	f8d6 b13c 	ldr.w	fp, [r6, #316]	; 0x13c
d0003b7e:	4405      	add	r5, r0
d0003b80:	9103      	str	r1, [sp, #12]
d0003b82:	9002      	str	r0, [sp, #8]
d0003b84:	47d8      	blx	fp
d0003b86:	f9bd 301e 	ldrsh.w	r3, [sp, #30]
d0003b8a:	f9bd 201c 	ldrsh.w	r2, [sp, #28]
d0003b8e:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
d0003b92:	e9cd a900 	strd	sl, r9, [sp]
d0003b96:	440c      	add	r4, r1
d0003b98:	f7ff fef4 	bl	d0003984 <uiDrawBeval>
d0003b9c:	f8d6 30f8 	ldr.w	r3, [r6, #248]	; 0xf8
d0003ba0:	aa08      	add	r2, sp, #32
d0003ba2:	1ca1      	adds	r1, r4, #2
d0003ba4:	1ca8      	adds	r0, r5, #2
d0003ba6:	f883 a000 	strb.w	sl, [r3]
d0003baa:	f8d6 3148 	ldr.w	r3, [r6, #328]	; 0x148
d0003bae:	4798      	blx	r3
d0003bb0:	f8d6 30f8 	ldr.w	r3, [r6, #248]	; 0xf8
d0003bb4:	f883 9000 	strb.w	r9, [r3]
d0003bb8:	f89d 3016 	ldrb.w	r3, [sp, #22]
d0003bbc:	065a      	lsls	r2, r3, #25
d0003bbe:	d499      	bmi.n	d0003af4 <guiRenderButton.constprop.0+0x104>
d0003bc0:	f8d6 3148 	ldr.w	r3, [r6, #328]	; 0x148
d0003bc4:	aa08      	add	r2, sp, #32
d0003bc6:	4621      	mov	r1, r4
d0003bc8:	4628      	mov	r0, r5
d0003bca:	4798      	blx	r3
d0003bcc:	e792      	b.n	d0003af4 <guiRenderButton.constprop.0+0x104>
d0003bce:	4e1c      	ldr	r6, [pc, #112]	; (d0003c40 <guiRenderButton.constprop.0+0x250>)
d0003bd0:	f04f 0c05 	mov.w	ip, #5
d0003bd4:	f04f 0904 	mov.w	r9, #4
d0003bd8:	f04f 0a06 	mov.w	sl, #6
d0003bdc:	f8d6 e0f8 	ldr.w	lr, [r6, #248]	; 0xf8
d0003be0:	4405      	add	r5, r0
d0003be2:	9103      	str	r1, [sp, #12]
d0003be4:	f88e c000 	strb.w	ip, [lr]
d0003be8:	f8d6 b13c 	ldr.w	fp, [r6, #316]	; 0x13c
d0003bec:	9002      	str	r0, [sp, #8]
d0003bee:	47d8      	blx	fp
d0003bf0:	f9bd 301e 	ldrsh.w	r3, [sp, #30]
d0003bf4:	f9bd 201c 	ldrsh.w	r2, [sp, #28]
d0003bf8:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
d0003bfc:	e9cd a900 	strd	sl, r9, [sp]
d0003c00:	440c      	add	r4, r1
d0003c02:	f7ff febf 	bl	d0003984 <uiDrawBeval>
d0003c06:	f8d6 30f8 	ldr.w	r3, [r6, #248]	; 0xf8
d0003c0a:	1ca8      	adds	r0, r5, #2
d0003c0c:	1ca1      	adds	r1, r4, #2
d0003c0e:	aa08      	add	r2, sp, #32
d0003c10:	f883 a000 	strb.w	sl, [r3]
d0003c14:	f8d6 3148 	ldr.w	r3, [r6, #328]	; 0x148
d0003c18:	4798      	blx	r3
d0003c1a:	f8d6 30f8 	ldr.w	r3, [r6, #248]	; 0xf8
d0003c1e:	4621      	mov	r1, r4
d0003c20:	4628      	mov	r0, r5
d0003c22:	f883 9000 	strb.w	r9, [r3]
d0003c26:	aa08      	add	r2, sp, #32
d0003c28:	f8d6 3148 	ldr.w	r3, [r6, #328]	; 0x148
d0003c2c:	4798      	blx	r3
d0003c2e:	f8d6 30f4 	ldr.w	r3, [r6, #244]	; 0xf4
d0003c32:	601f      	str	r7, [r3, #0]
d0003c34:	b019      	add	sp, #100	; 0x64
d0003c36:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0003c3a:	bf00      	nop
d0003c3c:	d0251814 	.word	0xd0251814
d0003c40:	2001f000 	.word	0x2001f000

d0003c44 <CreateButton>:
d0003c44:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0003c48:	274c      	movs	r7, #76	; 0x4c
d0003c4a:	4e14      	ldr	r6, [pc, #80]	; (d0003c9c <CreateButton+0x58>)
d0003c4c:	b082      	sub	sp, #8
d0003c4e:	4605      	mov	r5, r0
d0003c50:	fb07 fc00 	mul.w	ip, r7, r0
d0003c54:	f89d e028 	ldrb.w	lr, [sp, #40]	; 0x28
d0003c58:	eb06 040c 	add.w	r4, r6, ip
d0003c5c:	f8bd 0020 	ldrh.w	r0, [sp, #32]
d0003c60:	f8bd 8024 	ldrh.w	r8, [sp, #36]	; 0x24
d0003c64:	80a2      	strh	r2, [r4, #4]
d0003c66:	22ff      	movs	r2, #255	; 0xff
d0003c68:	80e3      	strh	r3, [r4, #6]
d0003c6a:	f806 200c 	strb.w	r2, [r6, ip]
d0003c6e:	f884 e002 	strb.w	lr, [r4, #2]
d0003c72:	7065      	strb	r5, [r4, #1]
d0003c74:	8120      	strh	r0, [r4, #8]
d0003c76:	4608      	mov	r0, r1
d0003c78:	f8a4 800a 	strh.w	r8, [r4, #10]
d0003c7c:	9101      	str	r1, [sp, #4]
d0003c7e:	f002 f8a7 	bl	d0005dd0 <strlen>
d0003c82:	b2c6      	uxtb	r6, r0
d0003c84:	9901      	ldr	r1, [sp, #4]
d0003c86:	f104 000c 	add.w	r0, r4, #12
d0003c8a:	4632      	mov	r2, r6
d0003c8c:	4434      	add	r4, r6
d0003c8e:	f002 f8a7 	bl	d0005de0 <strncpy>
d0003c92:	2300      	movs	r3, #0
d0003c94:	7323      	strb	r3, [r4, #12]
d0003c96:	b002      	add	sp, #8
d0003c98:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0003c9c:	d0251814 	.word	0xd0251814

d0003ca0 <guiSetButtonGadgetFlags>:
d0003ca0:	283f      	cmp	r0, #63	; 0x3f
d0003ca2:	d806      	bhi.n	d0003cb2 <guiSetButtonGadgetFlags+0x12>
d0003ca4:	4b03      	ldr	r3, [pc, #12]	; (d0003cb4 <guiSetButtonGadgetFlags+0x14>)
d0003ca6:	224c      	movs	r2, #76	; 0x4c
d0003ca8:	fb02 3000 	mla	r0, r2, r0, r3
d0003cac:	7883      	ldrb	r3, [r0, #2]
d0003cae:	4319      	orrs	r1, r3
d0003cb0:	7081      	strb	r1, [r0, #2]
d0003cb2:	4770      	bx	lr
d0003cb4:	d0251814 	.word	0xd0251814

d0003cb8 <guiClrButtonGadgetFlags>:
d0003cb8:	283f      	cmp	r0, #63	; 0x3f
d0003cba:	d807      	bhi.n	d0003ccc <guiClrButtonGadgetFlags+0x14>
d0003cbc:	4b04      	ldr	r3, [pc, #16]	; (d0003cd0 <guiClrButtonGadgetFlags+0x18>)
d0003cbe:	224c      	movs	r2, #76	; 0x4c
d0003cc0:	fb02 3000 	mla	r0, r2, r0, r3
d0003cc4:	7883      	ldrb	r3, [r0, #2]
d0003cc6:	ea23 0101 	bic.w	r1, r3, r1
d0003cca:	7081      	strb	r1, [r0, #2]
d0003ccc:	4770      	bx	lr
d0003cce:	bf00      	nop
d0003cd0:	d0251814 	.word	0xd0251814

d0003cd4 <guiRenderButton>:
d0003cd4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0003cd8:	4b95      	ldr	r3, [pc, #596]	; (d0003f30 <guiRenderButton+0x25c>)
d0003cda:	b099      	sub	sp, #100	; 0x64
d0003cdc:	4604      	mov	r4, r0
d0003cde:	224c      	movs	r2, #76	; 0x4c
d0003ce0:	460e      	mov	r6, r1
d0003ce2:	a805      	add	r0, sp, #20
d0003ce4:	fb02 3104 	mla	r1, r2, r4, r3
d0003ce8:	f001 fe3e 	bl	d0005968 <memcpy>
d0003cec:	f89d 3014 	ldrb.w	r3, [sp, #20]
d0003cf0:	2b00      	cmp	r3, #0
d0003cf2:	d078      	beq.n	d0003de6 <guiRenderButton+0x112>
d0003cf4:	f89d 8016 	ldrb.w	r8, [sp, #22]
d0003cf8:	f018 0410 	ands.w	r4, r8, #16
d0003cfc:	d173      	bne.n	d0003de6 <guiRenderButton+0x112>
d0003cfe:	a808      	add	r0, sp, #32
d0003d00:	f002 f866 	bl	d0005dd0 <strlen>
d0003d04:	2800      	cmp	r0, #0
d0003d06:	d071      	beq.n	d0003dec <guiRenderButton+0x118>
d0003d08:	4623      	mov	r3, r4
d0003d0a:	aa18      	add	r2, sp, #96	; 0x60
d0003d0c:	441a      	add	r2, r3
d0003d0e:	3301      	adds	r3, #1
d0003d10:	f812 2c40 	ldrb.w	r2, [r2, #-64]
d0003d14:	b21b      	sxth	r3, r3
d0003d16:	2a0a      	cmp	r2, #10
d0003d18:	d101      	bne.n	d0003d1e <guiRenderButton+0x4a>
d0003d1a:	3401      	adds	r4, #1
d0003d1c:	b2e4      	uxtb	r4, r4
d0003d1e:	4298      	cmp	r0, r3
d0003d20:	d8f3      	bhi.n	d0003d0a <guiRenderButton+0x36>
d0003d22:	4b84      	ldr	r3, [pc, #528]	; (d0003f34 <guiRenderButton+0x260>)
d0003d24:	f018 0f20 	tst.w	r8, #32
d0003d28:	f8bd 1018 	ldrh.w	r1, [sp, #24]
d0003d2c:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d0003d30:	f8bd b01a 	ldrh.w	fp, [sp, #26]
d0003d34:	681f      	ldr	r7, [r3, #0]
d0003d36:	f8bd 501c 	ldrh.w	r5, [sp, #28]
d0003d3a:	f8bd 301e 	ldrh.w	r3, [sp, #30]
d0003d3e:	d066      	beq.n	d0003e0e <guiRenderButton+0x13a>
d0003d40:	469a      	mov	sl, r3
d0003d42:	46a9      	mov	r9, r5
d0003d44:	2c00      	cmp	r4, #0
d0003d46:	d072      	beq.n	d0003e2e <guiRenderButton+0x15a>
d0003d48:	f64f 72fb 	movw	r2, #65531	; 0xfffb
d0003d4c:	086d      	lsrs	r5, r5, #1
d0003d4e:	eba2 04c4 	sub.w	r4, r2, r4, lsl #3
d0003d52:	3d04      	subs	r5, #4
d0003d54:	eb04 0453 	add.w	r4, r4, r3, lsr #1
d0003d58:	b22d      	sxth	r5, r5
d0003d5a:	b224      	sxth	r4, r4
d0003d5c:	4489      	add	r9, r1
d0003d5e:	44da      	add	sl, fp
d0003d60:	f018 0f04 	tst.w	r8, #4
d0003d64:	b208      	sxth	r0, r1
d0003d66:	fa0f f289 	sxth.w	r2, r9
d0003d6a:	fa0f f38a 	sxth.w	r3, sl
d0003d6e:	fa0f f18b 	sxth.w	r1, fp
d0003d72:	f040 80a6 	bne.w	d0003ec2 <guiRenderButton+0x1ee>
d0003d76:	f018 0f02 	tst.w	r8, #2
d0003d7a:	d16d      	bne.n	d0003e58 <guiRenderButton+0x184>
d0003d7c:	2e01      	cmp	r6, #1
d0003d7e:	d06b      	beq.n	d0003e58 <guiRenderButton+0x184>
d0003d80:	4e6c      	ldr	r6, [pc, #432]	; (d0003f34 <guiRenderButton+0x260>)
d0003d82:	f04f 0c05 	mov.w	ip, #5
d0003d86:	eb04 0801 	add.w	r8, r4, r1
d0003d8a:	4405      	add	r5, r0
d0003d8c:	f8d6 e0f8 	ldr.w	lr, [r6, #248]	; 0xf8
d0003d90:	2406      	movs	r4, #6
d0003d92:	f88e c000 	strb.w	ip, [lr]
d0003d96:	f8d6 913c 	ldr.w	r9, [r6, #316]	; 0x13c
d0003d9a:	e9cd 0102 	strd	r0, r1, [sp, #8]
d0003d9e:	47c8      	blx	r9
d0003da0:	2304      	movs	r3, #4
d0003da2:	f9bd 201c 	ldrsh.w	r2, [sp, #28]
d0003da6:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
d0003daa:	e9cd 4300 	strd	r4, r3, [sp]
d0003dae:	f9bd 301e 	ldrsh.w	r3, [sp, #30]
d0003db2:	f7ff fde7 	bl	d0003984 <uiDrawBeval>
d0003db6:	f8d6 3148 	ldr.w	r3, [r6, #328]	; 0x148
d0003dba:	f108 0102 	add.w	r1, r8, #2
d0003dbe:	1ca8      	adds	r0, r5, #2
d0003dc0:	aa08      	add	r2, sp, #32
d0003dc2:	4798      	blx	r3
d0003dc4:	f8d6 30f8 	ldr.w	r3, [r6, #248]	; 0xf8
d0003dc8:	701c      	strb	r4, [r3, #0]
d0003dca:	f89d 3016 	ldrb.w	r3, [sp, #22]
d0003dce:	065b      	lsls	r3, r3, #25
d0003dd0:	d405      	bmi.n	d0003dde <guiRenderButton+0x10a>
d0003dd2:	f8d6 3148 	ldr.w	r3, [r6, #328]	; 0x148
d0003dd6:	aa08      	add	r2, sp, #32
d0003dd8:	4641      	mov	r1, r8
d0003dda:	4628      	mov	r0, r5
d0003ddc:	4798      	blx	r3
d0003dde:	4b55      	ldr	r3, [pc, #340]	; (d0003f34 <guiRenderButton+0x260>)
d0003de0:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d0003de4:	601f      	str	r7, [r3, #0]
d0003de6:	b019      	add	sp, #100	; 0x64
d0003de8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0003dec:	4b51      	ldr	r3, [pc, #324]	; (d0003f34 <guiRenderButton+0x260>)
d0003dee:	f018 0420 	ands.w	r4, r8, #32
d0003df2:	f8bd 901c 	ldrh.w	r9, [sp, #28]
d0003df6:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d0003dfa:	f8bd a01e 	ldrh.w	sl, [sp, #30]
d0003dfe:	464d      	mov	r5, r9
d0003e00:	681f      	ldr	r7, [r3, #0]
d0003e02:	f8bd 1018 	ldrh.w	r1, [sp, #24]
d0003e06:	4653      	mov	r3, sl
d0003e08:	f8bd b01a 	ldrh.w	fp, [sp, #26]
d0003e0c:	d10f      	bne.n	d0003e2e <guiRenderButton+0x15a>
d0003e0e:	46a9      	mov	r9, r5
d0003e10:	e9cd 1302 	strd	r1, r3, [sp, #8]
d0003e14:	f7fc f9da 	bl	d00001cc <SetDrawToBackLayer>
d0003e18:	9b03      	ldr	r3, [sp, #12]
d0003e1a:	f89d 8016 	ldrb.w	r8, [sp, #22]
d0003e1e:	469a      	mov	sl, r3
d0003e20:	f8bd 501c 	ldrh.w	r5, [sp, #28]
d0003e24:	f8bd 301e 	ldrh.w	r3, [sp, #30]
d0003e28:	9902      	ldr	r1, [sp, #8]
d0003e2a:	2c00      	cmp	r4, #0
d0003e2c:	d18c      	bne.n	d0003d48 <guiRenderButton+0x74>
d0003e2e:	a808      	add	r0, sp, #32
d0003e30:	e9cd 1302 	strd	r1, r3, [sp, #8]
d0003e34:	f001 ffcc 	bl	d0005dd0 <strlen>
d0003e38:	9b03      	ldr	r3, [sp, #12]
d0003e3a:	00c0      	lsls	r0, r0, #3
d0003e3c:	9902      	ldr	r1, [sp, #8]
d0003e3e:	f1b3 040e 	subs.w	r4, r3, #14
d0003e42:	ea4f 0250 	mov.w	r2, r0, lsr #1
d0003e46:	bf48      	it	mi
d0003e48:	f1a3 040d 	submi.w	r4, r3, #13
d0003e4c:	ebc2 0555 	rsb	r5, r2, r5, lsr #1
d0003e50:	f344 044f 	sbfx	r4, r4, #1, #16
d0003e54:	b22d      	sxth	r5, r5
d0003e56:	e781      	b.n	d0003d5c <guiRenderButton+0x88>
d0003e58:	4e36      	ldr	r6, [pc, #216]	; (d0003f34 <guiRenderButton+0x260>)
d0003e5a:	f04f 0c05 	mov.w	ip, #5
d0003e5e:	f04f 0806 	mov.w	r8, #6
d0003e62:	f04f 0904 	mov.w	r9, #4
d0003e66:	f8d6 e0f8 	ldr.w	lr, [r6, #248]	; 0xf8
d0003e6a:	4405      	add	r5, r0
d0003e6c:	9103      	str	r1, [sp, #12]
d0003e6e:	f88e c000 	strb.w	ip, [lr]
d0003e72:	f8d6 a13c 	ldr.w	sl, [r6, #316]	; 0x13c
d0003e76:	9002      	str	r0, [sp, #8]
d0003e78:	47d0      	blx	sl
d0003e7a:	f9bd 301e 	ldrsh.w	r3, [sp, #30]
d0003e7e:	f9bd 201c 	ldrsh.w	r2, [sp, #28]
d0003e82:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
d0003e86:	e9cd 9800 	strd	r9, r8, [sp]
d0003e8a:	440c      	add	r4, r1
d0003e8c:	f7ff fd7a 	bl	d0003984 <uiDrawBeval>
d0003e90:	f8d6 30f8 	ldr.w	r3, [r6, #248]	; 0xf8
d0003e94:	aa08      	add	r2, sp, #32
d0003e96:	1ca1      	adds	r1, r4, #2
d0003e98:	1ca8      	adds	r0, r5, #2
d0003e9a:	f883 9000 	strb.w	r9, [r3]
d0003e9e:	f8d6 3148 	ldr.w	r3, [r6, #328]	; 0x148
d0003ea2:	4798      	blx	r3
d0003ea4:	f8d6 30f8 	ldr.w	r3, [r6, #248]	; 0xf8
d0003ea8:	f883 8000 	strb.w	r8, [r3]
d0003eac:	f89d 3016 	ldrb.w	r3, [sp, #22]
d0003eb0:	065a      	lsls	r2, r3, #25
d0003eb2:	d494      	bmi.n	d0003dde <guiRenderButton+0x10a>
d0003eb4:	f8d6 3148 	ldr.w	r3, [r6, #328]	; 0x148
d0003eb8:	aa08      	add	r2, sp, #32
d0003eba:	4621      	mov	r1, r4
d0003ebc:	4628      	mov	r0, r5
d0003ebe:	4798      	blx	r3
d0003ec0:	e78d      	b.n	d0003dde <guiRenderButton+0x10a>
d0003ec2:	4e1c      	ldr	r6, [pc, #112]	; (d0003f34 <guiRenderButton+0x260>)
d0003ec4:	f04f 0c05 	mov.w	ip, #5
d0003ec8:	f04f 0a04 	mov.w	sl, #4
d0003ecc:	f04f 0806 	mov.w	r8, #6
d0003ed0:	f8d6 e0f8 	ldr.w	lr, [r6, #248]	; 0xf8
d0003ed4:	4405      	add	r5, r0
d0003ed6:	9103      	str	r1, [sp, #12]
d0003ed8:	f88e c000 	strb.w	ip, [lr]
d0003edc:	f8d6 913c 	ldr.w	r9, [r6, #316]	; 0x13c
d0003ee0:	9002      	str	r0, [sp, #8]
d0003ee2:	47c8      	blx	r9
d0003ee4:	f9bd 301e 	ldrsh.w	r3, [sp, #30]
d0003ee8:	f9bd 201c 	ldrsh.w	r2, [sp, #28]
d0003eec:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
d0003ef0:	e9cd 8a00 	strd	r8, sl, [sp]
d0003ef4:	440c      	add	r4, r1
d0003ef6:	f7ff fd45 	bl	d0003984 <uiDrawBeval>
d0003efa:	f8d6 30f8 	ldr.w	r3, [r6, #248]	; 0xf8
d0003efe:	1ca8      	adds	r0, r5, #2
d0003f00:	1ca1      	adds	r1, r4, #2
d0003f02:	aa08      	add	r2, sp, #32
d0003f04:	f883 8000 	strb.w	r8, [r3]
d0003f08:	f8d6 3148 	ldr.w	r3, [r6, #328]	; 0x148
d0003f0c:	4798      	blx	r3
d0003f0e:	f8d6 30f8 	ldr.w	r3, [r6, #248]	; 0xf8
d0003f12:	4621      	mov	r1, r4
d0003f14:	4628      	mov	r0, r5
d0003f16:	f883 a000 	strb.w	sl, [r3]
d0003f1a:	aa08      	add	r2, sp, #32
d0003f1c:	f8d6 3148 	ldr.w	r3, [r6, #328]	; 0x148
d0003f20:	4798      	blx	r3
d0003f22:	f8d6 30f4 	ldr.w	r3, [r6, #244]	; 0xf4
d0003f26:	601f      	str	r7, [r3, #0]
d0003f28:	b019      	add	sp, #100	; 0x64
d0003f2a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0003f2e:	bf00      	nop
d0003f30:	d0251814 	.word	0xd0251814
d0003f34:	2001f000 	.word	0x2001f000

d0003f38 <guRenderButtons>:
d0003f38:	b510      	push	{r4, lr}
d0003f3a:	2400      	movs	r4, #0
d0003f3c:	4620      	mov	r0, r4
d0003f3e:	3401      	adds	r4, #1
d0003f40:	f7ff fd56 	bl	d00039f0 <guiRenderButton.constprop.0>
d0003f44:	2c40      	cmp	r4, #64	; 0x40
d0003f46:	d1f9      	bne.n	d0003f3c <guRenderButtons+0x4>
d0003f48:	bd10      	pop	{r4, pc}
d0003f4a:	bf00      	nop

d0003f4c <guClearButtons>:
d0003f4c:	490b      	ldr	r1, [pc, #44]	; (d0003f7c <guClearButtons+0x30>)
d0003f4e:	2200      	movs	r2, #0
d0003f50:	4b0b      	ldr	r3, [pc, #44]	; (d0003f80 <guClearButtons+0x34>)
d0003f52:	b2c9      	uxtb	r1, r1
d0003f54:	f503 5098 	add.w	r0, r3, #4864	; 0x1300
d0003f58:	b410      	push	{r4}
d0003f5a:	2401      	movs	r4, #1
d0003f5c:	7219      	strb	r1, [r3, #8]
d0003f5e:	334c      	adds	r3, #76	; 0x4c
d0003f60:	f803 4c4e 	strb.w	r4, [r3, #-78]
d0003f64:	f803 2c50 	strb.w	r2, [r3, #-80]
d0003f68:	f843 2c4c 	str.w	r2, [r3, #-76]
d0003f6c:	f843 2c48 	str.w	r2, [r3, #-72]
d0003f70:	4283      	cmp	r3, r0
d0003f72:	d1f3      	bne.n	d0003f5c <guClearButtons+0x10>
d0003f74:	f85d 4b04 	ldr.w	r4, [sp], #4
d0003f78:	4770      	bx	lr
d0003f7a:	bf00      	nop
d0003f7c:	d0007968 	.word	0xd0007968
d0003f80:	d0251818 	.word	0xd0251818

d0003f84 <get_event>:
d0003f84:	4b03      	ldr	r3, [pc, #12]	; (d0003f94 <get_event+0x10>)
d0003f86:	681b      	ldr	r3, [r3, #0]
d0003f88:	4218      	tst	r0, r3
d0003f8a:	bf14      	ite	ne
d0003f8c:	2001      	movne	r0, #1
d0003f8e:	2000      	moveq	r0, #0
d0003f90:	4770      	bx	lr
d0003f92:	bf00      	nop
d0003f94:	d0252b14 	.word	0xd0252b14

d0003f98 <getEvents>:
d0003f98:	4b01      	ldr	r3, [pc, #4]	; (d0003fa0 <getEvents+0x8>)
d0003f9a:	6818      	ldr	r0, [r3, #0]
d0003f9c:	4770      	bx	lr
d0003f9e:	bf00      	nop
d0003fa0:	d0252b14 	.word	0xd0252b14

d0003fa4 <clearEvents>:
d0003fa4:	4a02      	ldr	r2, [pc, #8]	; (d0003fb0 <clearEvents+0xc>)
d0003fa6:	6813      	ldr	r3, [r2, #0]
d0003fa8:	ea23 0000 	bic.w	r0, r3, r0
d0003fac:	6010      	str	r0, [r2, #0]
d0003fae:	4770      	bx	lr
d0003fb0:	d0252b14 	.word	0xd0252b14

d0003fb4 <EventTypeClear>:
d0003fb4:	4a02      	ldr	r2, [pc, #8]	; (d0003fc0 <EventTypeClear+0xc>)
d0003fb6:	6813      	ldr	r3, [r2, #0]
d0003fb8:	ea23 0000 	bic.w	r0, r3, r0
d0003fbc:	6010      	str	r0, [r2, #0]
d0003fbe:	4770      	bx	lr
d0003fc0:	d000f048 	.word	0xd000f048

d0003fc4 <GUIButtonHIT>:
d0003fc4:	4b01      	ldr	r3, [pc, #4]	; (d0003fcc <GUIButtonHIT+0x8>)
d0003fc6:	6818      	ldr	r0, [r3, #0]
d0003fc8:	4770      	bx	lr
d0003fca:	bf00      	nop
d0003fcc:	d000f044 	.word	0xd000f044

d0003fd0 <HWBUTTISRR>:
d0003fd0:	b538      	push	{r3, r4, r5, lr}
d0003fd2:	4b0f      	ldr	r3, [pc, #60]	; (d0004010 <HWBUTTISRR+0x40>)
d0003fd4:	4604      	mov	r4, r0
d0003fd6:	699b      	ldr	r3, [r3, #24]
d0003fd8:	4798      	blx	r3
d0003fda:	7823      	ldrb	r3, [r4, #0]
d0003fdc:	490d      	ldr	r1, [pc, #52]	; (d0004014 <HWBUTTISRR+0x44>)
d0003fde:	f003 0301 	and.w	r3, r3, #1
d0003fe2:	4c0d      	ldr	r4, [pc, #52]	; (d0004018 <HWBUTTISRR+0x48>)
d0003fe4:	780a      	ldrb	r2, [r1, #0]
d0003fe6:	7023      	strb	r3, [r4, #0]
d0003fe8:	429a      	cmp	r2, r3
d0003fea:	d00c      	beq.n	d0004006 <HWBUTTISRR+0x36>
d0003fec:	4c0b      	ldr	r4, [pc, #44]	; (d000401c <HWBUTTISRR+0x4c>)
d0003fee:	6822      	ldr	r2, [r4, #0]
d0003ff0:	1a82      	subs	r2, r0, r2
d0003ff2:	2a04      	cmp	r2, #4
d0003ff4:	d907      	bls.n	d0004006 <HWBUTTISRR+0x36>
d0003ff6:	4d0a      	ldr	r5, [pc, #40]	; (d0004020 <HWBUTTISRR+0x50>)
d0003ff8:	6020      	str	r0, [r4, #0]
d0003ffa:	682a      	ldr	r2, [r5, #0]
d0003ffc:	700b      	strb	r3, [r1, #0]
d0003ffe:	b91b      	cbnz	r3, d0004008 <HWBUTTISRR+0x38>
d0004000:	f042 0209 	orr.w	r2, r2, #9
d0004004:	602a      	str	r2, [r5, #0]
d0004006:	bd38      	pop	{r3, r4, r5, pc}
d0004008:	f042 0205 	orr.w	r2, r2, #5
d000400c:	602a      	str	r2, [r5, #0]
d000400e:	bd38      	pop	{r3, r4, r5, pc}
d0004010:	2001f000 	.word	0x2001f000
d0004014:	d0251810 	.word	0xd0251810
d0004018:	d0252b18 	.word	0xd0252b18
d000401c:	d000f03c 	.word	0xd000f03c
d0004020:	d0252b14 	.word	0xd0252b14

d0004024 <GUIEvents>:
d0004024:	4b1e      	ldr	r3, [pc, #120]	; (d00040a0 <GUIEvents+0x7c>)
d0004026:	2000      	movs	r0, #0
d0004028:	b570      	push	{r4, r5, r6, lr}
d000402a:	6a1a      	ldr	r2, [r3, #32]
d000402c:	4e1d      	ldr	r6, [pc, #116]	; (d00040a4 <GUIEvents+0x80>)
d000402e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0004030:	6814      	ldr	r4, [r2, #0]
d0004032:	681d      	ldr	r5, [r3, #0]
d0004034:	6831      	ldr	r1, [r6, #0]
d0004036:	4b1c      	ldr	r3, [pc, #112]	; (d00040a8 <GUIEvents+0x84>)
d0004038:	781a      	ldrb	r2, [r3, #0]
d000403a:	b1ba      	cbz	r2, d000406c <GUIEvents+0x48>
d000403c:	789a      	ldrb	r2, [r3, #2]
d000403e:	0712      	lsls	r2, r2, #28
d0004040:	d514      	bpl.n	d000406c <GUIEvents+0x48>
d0004042:	f9b3 1004 	ldrsh.w	r1, [r3, #4]
d0004046:	889a      	ldrh	r2, [r3, #4]
d0004048:	42a1      	cmp	r1, r4
d000404a:	dc0e      	bgt.n	d000406a <GUIEvents+0x46>
d000404c:	8919      	ldrh	r1, [r3, #8]
d000404e:	440a      	add	r2, r1
d0004050:	b212      	sxth	r2, r2
d0004052:	42a2      	cmp	r2, r4
d0004054:	db09      	blt.n	d000406a <GUIEvents+0x46>
d0004056:	f9b3 1006 	ldrsh.w	r1, [r3, #6]
d000405a:	88da      	ldrh	r2, [r3, #6]
d000405c:	42a9      	cmp	r1, r5
d000405e:	dc04      	bgt.n	d000406a <GUIEvents+0x46>
d0004060:	8959      	ldrh	r1, [r3, #10]
d0004062:	440a      	add	r2, r1
d0004064:	b212      	sxth	r2, r2
d0004066:	42aa      	cmp	r2, r5
d0004068:	da08      	bge.n	d000407c <GUIEvents+0x58>
d000406a:	2100      	movs	r1, #0
d000406c:	3001      	adds	r0, #1
d000406e:	334c      	adds	r3, #76	; 0x4c
d0004070:	2840      	cmp	r0, #64	; 0x40
d0004072:	d1e1      	bne.n	d0004038 <GUIEvents+0x14>
d0004074:	4c0d      	ldr	r4, [pc, #52]	; (d00040ac <GUIEvents+0x88>)
d0004076:	6031      	str	r1, [r6, #0]
d0004078:	6820      	ldr	r0, [r4, #0]
d000407a:	bd70      	pop	{r4, r5, r6, pc}
d000407c:	4c0b      	ldr	r4, [pc, #44]	; (d00040ac <GUIEvents+0x88>)
d000407e:	4a0c      	ldr	r2, [pc, #48]	; (d00040b0 <GUIEvents+0x8c>)
d0004080:	6823      	ldr	r3, [r4, #0]
d0004082:	6812      	ldr	r2, [r2, #0]
d0004084:	f043 0301 	orr.w	r3, r3, #1
d0004088:	6030      	str	r0, [r6, #0]
d000408a:	6023      	str	r3, [r4, #0]
d000408c:	0753      	lsls	r3, r2, #29
d000408e:	d503      	bpl.n	d0004098 <GUIEvents+0x74>
d0004090:	2101      	movs	r1, #1
d0004092:	f7ff fe1f 	bl	d0003cd4 <guiRenderButton>
d0004096:	e7ef      	b.n	d0004078 <GUIEvents+0x54>
d0004098:	f7ff fcaa 	bl	d00039f0 <guiRenderButton.constprop.0>
d000409c:	e7ec      	b.n	d0004078 <GUIEvents+0x54>
d000409e:	bf00      	nop
d00040a0:	2001f000 	.word	0x2001f000
d00040a4:	d000f044 	.word	0xd000f044
d00040a8:	d0251814 	.word	0xd0251814
d00040ac:	d000f048 	.word	0xd000f048
d00040b0:	d0252b14 	.word	0xd0252b14

d00040b4 <InitStates>:
d00040b4:	4b01      	ldr	r3, [pc, #4]	; (d00040bc <InitStates+0x8>)
d00040b6:	2200      	movs	r2, #0
d00040b8:	701a      	strb	r2, [r3, #0]
d00040ba:	4770      	bx	lr
d00040bc:	d000f04c 	.word	0xd000f04c

d00040c0 <RenderSampleIDEditor>:
d00040c0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00040c4:	4b4a      	ldr	r3, [pc, #296]	; (d00041f0 <RenderSampleIDEditor+0x130>)
d00040c6:	b082      	sub	sp, #8
d00040c8:	4c4a      	ldr	r4, [pc, #296]	; (d00041f4 <RenderSampleIDEditor+0x134>)
d00040ca:	f04f 0810 	mov.w	r8, #16
d00040ce:	781e      	ldrb	r6, [r3, #0]
d00040d0:	f7fc f870 	bl	d00001b4 <CaptureDrawBuffer>
d00040d4:	f7fc f87a 	bl	d00001cc <SetDrawToBackLayer>
d00040d8:	2200      	movs	r2, #0
d00040da:	4947      	ldr	r1, [pc, #284]	; (d00041f8 <RenderSampleIDEditor+0x138>)
d00040dc:	4668      	mov	r0, sp
d00040de:	f001 fe29 	bl	d0005d34 <siprintf>
d00040e2:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d00040e6:	3e01      	subs	r6, #1
d00040e8:	2705      	movs	r7, #5
d00040ea:	f883 8000 	strb.w	r8, [r3]
d00040ee:	466a      	mov	r2, sp
d00040f0:	f8d4 30fc 	ldr.w	r3, [r4, #252]	; 0xfc
d00040f4:	ebc6 06c6 	rsb	r6, r6, r6, lsl #3
d00040f8:	4d40      	ldr	r5, [pc, #256]	; (d00041fc <RenderSampleIDEditor+0x13c>)
d00040fa:	2159      	movs	r1, #89	; 0x59
d00040fc:	f44f 70b9 	mov.w	r0, #370	; 0x172
d0004100:	701f      	strb	r7, [r3, #0]
d0004102:	f8d4 314c 	ldr.w	r3, [r4, #332]	; 0x14c
d0004106:	eb05 0586 	add.w	r5, r5, r6, lsl #2
d000410a:	4798      	blx	r3
d000410c:	4b3c      	ldr	r3, [pc, #240]	; (d0004200 <RenderSampleIDEditor+0x140>)
d000410e:	493a      	ldr	r1, [pc, #232]	; (d00041f8 <RenderSampleIDEditor+0x138>)
d0004110:	4668      	mov	r0, sp
d0004112:	5cea      	ldrb	r2, [r5, r3]
d0004114:	f001 fe0e 	bl	d0005d34 <siprintf>
d0004118:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d000411c:	466a      	mov	r2, sp
d000411e:	213f      	movs	r1, #63	; 0x3f
d0004120:	f883 8000 	strb.w	r8, [r3]
d0004124:	20f6      	movs	r0, #246	; 0xf6
d0004126:	f8d4 30fc 	ldr.w	r3, [r4, #252]	; 0xfc
d000412a:	701f      	strb	r7, [r3, #0]
d000412c:	f8d4 314c 	ldr.w	r3, [r4, #332]	; 0x14c
d0004130:	4798      	blx	r3
d0004132:	4b34      	ldr	r3, [pc, #208]	; (d0004204 <RenderSampleIDEditor+0x144>)
d0004134:	4930      	ldr	r1, [pc, #192]	; (d00041f8 <RenderSampleIDEditor+0x138>)
d0004136:	4668      	mov	r0, sp
d0004138:	5aea      	ldrh	r2, [r5, r3]
d000413a:	f001 fdfb 	bl	d0005d34 <siprintf>
d000413e:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d0004142:	466a      	mov	r2, sp
d0004144:	2159      	movs	r1, #89	; 0x59
d0004146:	f883 8000 	strb.w	r8, [r3]
d000414a:	20f6      	movs	r0, #246	; 0xf6
d000414c:	f8d4 30fc 	ldr.w	r3, [r4, #252]	; 0xfc
d0004150:	701f      	strb	r7, [r3, #0]
d0004152:	f8d4 314c 	ldr.w	r3, [r4, #332]	; 0x14c
d0004156:	4798      	blx	r3
d0004158:	4b2b      	ldr	r3, [pc, #172]	; (d0004208 <RenderSampleIDEditor+0x148>)
d000415a:	4927      	ldr	r1, [pc, #156]	; (d00041f8 <RenderSampleIDEditor+0x138>)
d000415c:	4668      	mov	r0, sp
d000415e:	5aea      	ldrh	r2, [r5, r3]
d0004160:	f001 fde8 	bl	d0005d34 <siprintf>
d0004164:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d0004168:	466a      	mov	r2, sp
d000416a:	2173      	movs	r1, #115	; 0x73
d000416c:	f883 8000 	strb.w	r8, [r3]
d0004170:	20f6      	movs	r0, #246	; 0xf6
d0004172:	f8d4 30fc 	ldr.w	r3, [r4, #252]	; 0xfc
d0004176:	701f      	strb	r7, [r3, #0]
d0004178:	f8d4 314c 	ldr.w	r3, [r4, #332]	; 0x14c
d000417c:	4798      	blx	r3
d000417e:	4b23      	ldr	r3, [pc, #140]	; (d000420c <RenderSampleIDEditor+0x14c>)
d0004180:	491d      	ldr	r1, [pc, #116]	; (d00041f8 <RenderSampleIDEditor+0x138>)
d0004182:	4668      	mov	r0, sp
d0004184:	5aea      	ldrh	r2, [r5, r3]
d0004186:	f001 fdd5 	bl	d0005d34 <siprintf>
d000418a:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d000418e:	466a      	mov	r2, sp
d0004190:	213f      	movs	r1, #63	; 0x3f
d0004192:	f883 8000 	strb.w	r8, [r3]
d0004196:	f44f 70b9 	mov.w	r0, #370	; 0x172
d000419a:	f8d4 30fc 	ldr.w	r3, [r4, #252]	; 0xfc
d000419e:	701f      	strb	r7, [r3, #0]
d00041a0:	f8d4 314c 	ldr.w	r3, [r4, #332]	; 0x14c
d00041a4:	4798      	blx	r3
d00041a6:	4b1a      	ldr	r3, [pc, #104]	; (d0004210 <RenderSampleIDEditor+0x150>)
d00041a8:	5ceb      	ldrb	r3, [r5, r3]
d00041aa:	b1c3      	cbz	r3, d00041de <RenderSampleIDEditor+0x11e>
d00041ac:	4b19      	ldr	r3, [pc, #100]	; (d0004214 <RenderSampleIDEditor+0x154>)
d00041ae:	f243 15ff 	movw	r5, #12799	; 0x31ff
d00041b2:	2408      	movs	r4, #8
d00041b4:	4818      	ldr	r0, [pc, #96]	; (d0004218 <RenderSampleIDEditor+0x158>)
d00041b6:	4919      	ldr	r1, [pc, #100]	; (d000421c <RenderSampleIDEditor+0x15c>)
d00041b8:	2202      	movs	r2, #2
d00041ba:	f8a3 5e8c 	strh.w	r5, [r3, #3724]	; 0xe8c
d00041be:	f883 4e8e 	strb.w	r4, [r3, #3726]	; 0xe8e
d00041c2:	f8c3 0e90 	str.w	r0, [r3, #3728]	; 0xe90
d00041c6:	f8c3 1e94 	str.w	r1, [r3, #3732]	; 0xe94
d00041ca:	f8a3 2e98 	strh.w	r2, [r3, #3736]	; 0xe98
d00041ce:	f7fc f80f 	bl	d00001f0 <ReleaseDrawBuffer>
d00041d2:	2031      	movs	r0, #49	; 0x31
d00041d4:	f7ff fc0c 	bl	d00039f0 <guiRenderButton.constprop.0>
d00041d8:	b002      	add	sp, #8
d00041da:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00041de:	4b0d      	ldr	r3, [pc, #52]	; (d0004214 <RenderSampleIDEditor+0x154>)
d00041e0:	f243 15ff 	movw	r5, #12799	; 0x31ff
d00041e4:	2408      	movs	r4, #8
d00041e6:	480c      	ldr	r0, [pc, #48]	; (d0004218 <RenderSampleIDEditor+0x158>)
d00041e8:	490c      	ldr	r1, [pc, #48]	; (d000421c <RenderSampleIDEditor+0x15c>)
d00041ea:	2203      	movs	r2, #3
d00041ec:	e7e5      	b.n	d00041ba <RenderSampleIDEditor+0xfa>
d00041ee:	bf00      	nop
d00041f0:	d000eff8 	.word	0xd000eff8
d00041f4:	2001f000 	.word	0x2001f000
d00041f8:	d00078c4 	.word	0xd00078c4
d00041fc:	d00311e0 	.word	0xd00311e0
d0004200:	00020019 	.word	0x00020019
d0004204:	00020010 	.word	0x00020010
d0004208:	00020014 	.word	0x00020014
d000420c:	00020008 	.word	0x00020008
d0004210:	00020018 	.word	0x00020018
d0004214:	d0251814 	.word	0xd0251814
d0004218:	001d01b0 	.word	0x001d01b0
d000421c:	00190014 	.word	0x00190014

d0004220 <ShowSampleIDEditor>:
d0004220:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0004224:	49e6      	ldr	r1, [pc, #920]	; (d00045c0 <ShowSampleIDEditor+0x3a0>)
d0004226:	2314      	movs	r3, #20
d0004228:	4ce6      	ldr	r4, [pc, #920]	; (d00045c4 <ShowSampleIDEditor+0x3a4>)
d000422a:	2702      	movs	r7, #2
d000422c:	4de6      	ldr	r5, [pc, #920]	; (d00045c8 <ShowSampleIDEditor+0x3a8>)
d000422e:	f04f 0806 	mov.w	r8, #6
d0004232:	4ae6      	ldr	r2, [pc, #920]	; (d00045cc <ShowSampleIDEditor+0x3ac>)
d0004234:	f04f 0904 	mov.w	r9, #4
d0004238:	780e      	ldrb	r6, [r1, #0]
d000423a:	7017      	strb	r7, [r2, #0]
d000423c:	f884 3a66 	strb.w	r3, [r4, #2662]	; 0xa66
d0004240:	3e01      	subs	r6, #1
d0004242:	f884 3ab2 	strb.w	r3, [r4, #2738]	; 0xab2
d0004246:	f884 3afe 	strb.w	r3, [r4, #2814]	; 0xafe
d000424a:	ebc6 06c6 	rsb	r6, r6, r6, lsl #3
d000424e:	f884 3b4a 	strb.w	r3, [r4, #2890]	; 0xb4a
d0004252:	f884 3b96 	strb.w	r3, [r4, #2966]	; 0xb96
d0004256:	f884 3be2 	strb.w	r3, [r4, #3042]	; 0xbe2
d000425a:	f884 3c2e 	strb.w	r3, [r4, #3118]	; 0xc2e
d000425e:	f884 3c7a 	strb.w	r3, [r4, #3194]	; 0xc7a
d0004262:	f884 3cc6 	strb.w	r3, [r4, #3270]	; 0xcc6
d0004266:	f884 3d12 	strb.w	r3, [r4, #3346]	; 0xd12
d000426a:	f884 3d5e 	strb.w	r3, [r4, #3422]	; 0xd5e
d000426e:	f884 3daa 	strb.w	r3, [r4, #3498]	; 0xdaa
d0004272:	f884 3df6 	strb.w	r3, [r4, #3574]	; 0xdf6
d0004276:	f884 3e42 	strb.w	r3, [r4, #3650]	; 0xe42
d000427a:	f884 3e8e 	strb.w	r3, [r4, #3726]	; 0xe8e
d000427e:	f7fb ff99 	bl	d00001b4 <CaptureDrawBuffer>
d0004282:	f7fb ffa3 	bl	d00001cc <SetDrawToBackLayer>
d0004286:	f04f 0c05 	mov.w	ip, #5
d000428a:	f8d5 00f8 	ldr.w	r0, [r5, #248]	; 0xf8
d000428e:	2387      	movs	r3, #135	; 0x87
d0004290:	f44f 72e2 	mov.w	r2, #452	; 0x1c4
d0004294:	211d      	movs	r1, #29
d0004296:	f880 c000 	strb.w	ip, [r0]
d000429a:	20b6      	movs	r0, #182	; 0xb6
d000429c:	f8d5 a13c 	ldr.w	sl, [r5, #316]	; 0x13c
d00042a0:	47d0      	blx	sl
d00042a2:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d00042a6:	231d      	movs	r3, #29
d00042a8:	f44f 72ba 	mov.w	r2, #372	; 0x174
d00042ac:	f881 8000 	strb.w	r8, [r1]
d00042b0:	20b6      	movs	r0, #182	; 0xb6
d00042b2:	f8d5 a124 	ldr.w	sl, [r5, #292]	; 0x124
d00042b6:	4619      	mov	r1, r3
d00042b8:	47d0      	blx	sl
d00042ba:	22b6      	movs	r2, #182	; 0xb6
d00042bc:	f8d5 a124 	ldr.w	sl, [r5, #292]	; 0x124
d00042c0:	2334      	movs	r3, #52	; 0x34
d00042c2:	4610      	mov	r0, r2
d00042c4:	211d      	movs	r1, #29
d00042c6:	47d0      	blx	sl
d00042c8:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d00042cc:	f44f 72bb 	mov.w	r2, #374	; 0x176
d00042d0:	2336      	movs	r3, #54	; 0x36
d00042d2:	f881 9000 	strb.w	r9, [r1]
d00042d6:	211f      	movs	r1, #31
d00042d8:	f8d5 a124 	ldr.w	sl, [r5, #292]	; 0x124
d00042dc:	4610      	mov	r0, r2
d00042de:	47d0      	blx	sl
d00042e0:	2336      	movs	r3, #54	; 0x36
d00042e2:	f8d5 a124 	ldr.w	sl, [r5, #292]	; 0x124
d00042e6:	f44f 72bb 	mov.w	r2, #374	; 0x176
d00042ea:	4619      	mov	r1, r3
d00042ec:	20b8      	movs	r0, #184	; 0xb8
d00042ee:	47d0      	blx	sl
d00042f0:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d00042f4:	231d      	movs	r3, #29
d00042f6:	f44f 72d6 	mov.w	r2, #428	; 0x1ac
d00042fa:	f881 8000 	strb.w	r8, [r1]
d00042fe:	f44f 70bc 	mov.w	r0, #376	; 0x178
d0004302:	f8d5 a124 	ldr.w	sl, [r5, #292]	; 0x124
d0004306:	4619      	mov	r1, r3
d0004308:	47d0      	blx	sl
d000430a:	f44f 72bc 	mov.w	r2, #376	; 0x178
d000430e:	f8d5 a124 	ldr.w	sl, [r5, #292]	; 0x124
d0004312:	2334      	movs	r3, #52	; 0x34
d0004314:	4610      	mov	r0, r2
d0004316:	211d      	movs	r1, #29
d0004318:	47d0      	blx	sl
d000431a:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d000431e:	f44f 72d7 	mov.w	r2, #430	; 0x1ae
d0004322:	2336      	movs	r3, #54	; 0x36
d0004324:	f881 9000 	strb.w	r9, [r1]
d0004328:	211f      	movs	r1, #31
d000432a:	f8d5 a124 	ldr.w	sl, [r5, #292]	; 0x124
d000432e:	4610      	mov	r0, r2
d0004330:	47d0      	blx	sl
d0004332:	2336      	movs	r3, #54	; 0x36
d0004334:	f8d5 a124 	ldr.w	sl, [r5, #292]	; 0x124
d0004338:	f44f 72d7 	mov.w	r2, #430	; 0x1ae
d000433c:	4619      	mov	r1, r3
d000433e:	f44f 70bd 	mov.w	r0, #378	; 0x17a
d0004342:	47d0      	blx	sl
d0004344:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d0004348:	2338      	movs	r3, #56	; 0x38
d000434a:	22ee      	movs	r2, #238	; 0xee
d000434c:	f881 8000 	strb.w	r8, [r1]
d0004350:	20b6      	movs	r0, #182	; 0xb6
d0004352:	f8d5 a124 	ldr.w	sl, [r5, #292]	; 0x124
d0004356:	4619      	mov	r1, r3
d0004358:	47d0      	blx	sl
d000435a:	22b6      	movs	r2, #182	; 0xb6
d000435c:	f8d5 a124 	ldr.w	sl, [r5, #292]	; 0x124
d0004360:	2385      	movs	r3, #133	; 0x85
d0004362:	4610      	mov	r0, r2
d0004364:	2138      	movs	r1, #56	; 0x38
d0004366:	47d0      	blx	sl
d0004368:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d000436c:	22f0      	movs	r2, #240	; 0xf0
d000436e:	2387      	movs	r3, #135	; 0x87
d0004370:	f881 9000 	strb.w	r9, [r1]
d0004374:	213a      	movs	r1, #58	; 0x3a
d0004376:	f8d5 a124 	ldr.w	sl, [r5, #292]	; 0x124
d000437a:	4610      	mov	r0, r2
d000437c:	47d0      	blx	sl
d000437e:	2387      	movs	r3, #135	; 0x87
d0004380:	f8d5 a124 	ldr.w	sl, [r5, #292]	; 0x124
d0004384:	22f0      	movs	r2, #240	; 0xf0
d0004386:	4619      	mov	r1, r3
d0004388:	20b8      	movs	r0, #184	; 0xb8
d000438a:	47d0      	blx	sl
d000438c:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d0004390:	4a8f      	ldr	r2, [pc, #572]	; (d00045d0 <ShowSampleIDEditor+0x3b0>)
d0004392:	2125      	movs	r1, #37	; 0x25
d0004394:	f883 9000 	strb.w	r9, [r3]
d0004398:	20c4      	movs	r0, #196	; 0xc4
d000439a:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
d000439e:	f242 4aff 	movw	sl, #9471	; 0x24ff
d00043a2:	4798      	blx	r3
d00043a4:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d00043a8:	4a89      	ldr	r2, [pc, #548]	; (d00045d0 <ShowSampleIDEditor+0x3b0>)
d00043aa:	2123      	movs	r1, #35	; 0x23
d00043ac:	f883 8000 	strb.w	r8, [r3]
d00043b0:	20c2      	movs	r0, #194	; 0xc2
d00043b2:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
d00043b6:	f04f 091e 	mov.w	r9, #30
d00043ba:	4798      	blx	r3
d00043bc:	4b85      	ldr	r3, [pc, #532]	; (d00045d4 <ShowSampleIDEditor+0x3b4>)
d00043be:	4a86      	ldr	r2, [pc, #536]	; (d00045d8 <ShowSampleIDEditor+0x3b8>)
d00043c0:	f242 3cff 	movw	ip, #9215	; 0x23ff
d00043c4:	4985      	ldr	r1, [pc, #532]	; (d00045dc <ShowSampleIDEditor+0x3bc>)
d00043c6:	eb03 0686 	add.w	r6, r3, r6, lsl #2
d00043ca:	f8df 822c 	ldr.w	r8, [pc, #556]	; d00045f8 <ShowSampleIDEditor+0x3d8>
d00043ce:	2000      	movs	r0, #0
d00043d0:	f8df e228 	ldr.w	lr, [pc, #552]	; d00045fc <ShowSampleIDEditor+0x3dc>
d00043d4:	5c73      	ldrb	r3, [r6, r1]
d00043d6:	f242 51ff 	movw	r1, #9727	; 0x25ff
d00043da:	8816      	ldrh	r6, [r2, #0]
d00043dc:	7895      	ldrb	r5, [r2, #2]
d00043de:	221f      	movs	r2, #31
d00043e0:	f8df b21c 	ldr.w	fp, [pc, #540]	; d0004600 <ShowSampleIDEditor+0x3e0>
d00043e4:	f8a4 aab0 	strh.w	sl, [r4, #2736]	; 0xab0
d00043e8:	f04f 0a08 	mov.w	sl, #8
d00043ec:	f8c4 8a68 	str.w	r8, [r4, #2664]	; 0xa68
d00043f0:	f508 1858 	add.w	r8, r8, #3538944	; 0x360000
d00043f4:	f8c4 ea6c 	str.w	lr, [r4, #2668]	; 0xa6c
d00043f8:	f5ae 1ed8 	sub.w	lr, lr, #1769472	; 0x1b0000
d00043fc:	f8c4 bab4 	str.w	fp, [r4, #2740]	; 0xab4
d0004400:	f8a4 9abc 	strh.w	r9, [r4, #2748]	; 0xabc
d0004404:	f8a4 ca64 	strh.w	ip, [r4, #2660]	; 0xa64
d0004408:	f8a4 6a70 	strh.w	r6, [r4, #2672]	; 0xa70
d000440c:	f884 5a72 	strb.w	r5, [r4, #2674]	; 0xa72
d0004410:	f884 0a73 	strb.w	r0, [r4, #2675]	; 0xa73
d0004414:	f8a4 1afc 	strh.w	r1, [r4, #2812]	; 0xafc
d0004418:	f8c4 8b00 	str.w	r8, [r4, #2816]	; 0xb00
d000441c:	f8a4 2b08 	strh.w	r2, [r4, #2824]	; 0xb08
d0004420:	f884 aab2 	strb.w	sl, [r4, #2738]	; 0xab2
d0004424:	f884 aa66 	strb.w	sl, [r4, #2662]	; 0xa66
d0004428:	f884 aafe 	strb.w	sl, [r4, #2814]	; 0xafe
d000442c:	f8c4 eab8 	str.w	lr, [r4, #2744]	; 0xab8
d0004430:	f8c4 eb04 	str.w	lr, [r4, #2820]	; 0xb04
d0004434:	2b00      	cmp	r3, #0
d0004436:	f000 826c 	beq.w	d0004912 <ShowSampleIDEditor+0x6f2>
d000443a:	f243 11ff 	movw	r1, #12799	; 0x31ff
d000443e:	4a68      	ldr	r2, [pc, #416]	; (d00045e0 <ShowSampleIDEditor+0x3c0>)
d0004440:	4b68      	ldr	r3, [pc, #416]	; (d00045e4 <ShowSampleIDEditor+0x3c4>)
d0004442:	f884 ae8e 	strb.w	sl, [r4, #3726]	; 0xe8e
d0004446:	f8a4 7e98 	strh.w	r7, [r4, #3736]	; 0xe98
d000444a:	f8a4 1e8c 	strh.w	r1, [r4, #3724]	; 0xe8c
d000444e:	f8c4 2e90 	str.w	r2, [r4, #3728]	; 0xe90
d0004452:	f8c4 3e94 	str.w	r3, [r4, #3732]	; 0xe94
d0004456:	4d5c      	ldr	r5, [pc, #368]	; (d00045c8 <ShowSampleIDEditor+0x3a8>)
d0004458:	2704      	movs	r7, #4
d000445a:	4a63      	ldr	r2, [pc, #396]	; (d00045e8 <ShowSampleIDEditor+0x3c8>)
d000445c:	2141      	movs	r1, #65	; 0x41
d000445e:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d0004462:	20be      	movs	r0, #190	; 0xbe
d0004464:	f04f 0806 	mov.w	r8, #6
d0004468:	2608      	movs	r6, #8
d000446a:	701f      	strb	r7, [r3, #0]
d000446c:	f04f 0a1e 	mov.w	sl, #30
d0004470:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
d0004474:	4798      	blx	r3
d0004476:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d000447a:	4a5b      	ldr	r2, [pc, #364]	; (d00045e8 <ShowSampleIDEditor+0x3c8>)
d000447c:	213f      	movs	r1, #63	; 0x3f
d000447e:	f883 8000 	strb.w	r8, [r3]
d0004482:	20bc      	movs	r0, #188	; 0xbc
d0004484:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
d0004488:	4798      	blx	r3
d000448a:	f8df e178 	ldr.w	lr, [pc, #376]	; d0004604 <ShowSampleIDEditor+0x3e4>
d000448e:	f8d5 c0f8 	ldr.w	ip, [r5, #248]	; 0xf8
d0004492:	2338      	movs	r3, #56	; 0x38
d0004494:	f8df 914c 	ldr.w	r9, [pc, #332]	; d00045e4 <ShowSampleIDEditor+0x3c4>
d0004498:	f242 62ff 	movw	r2, #9983	; 0x26ff
d000449c:	f8c4 eb98 	str.w	lr, [r4, #2968]	; 0xb98
d00044a0:	f242 70ff 	movw	r0, #10239	; 0x27ff
d00044a4:	f04f 0e1f 	mov.w	lr, #31
d00044a8:	4950      	ldr	r1, [pc, #320]	; (d00045ec <ShowSampleIDEditor+0x3cc>)
d00044aa:	f8a4 ab54 	strh.w	sl, [r4, #2900]	; 0xb54
d00044ae:	f8a4 eba0 	strh.w	lr, [r4, #2976]	; 0xba0
d00044b2:	f8a4 2b48 	strh.w	r2, [r4, #2888]	; 0xb48
d00044b6:	f44f 728b 	mov.w	r2, #278	; 0x116
d00044ba:	f8c4 1b4c 	str.w	r1, [r4, #2892]	; 0xb4c
d00044be:	4619      	mov	r1, r3
d00044c0:	f8a4 0b94 	strh.w	r0, [r4, #2964]	; 0xb94
d00044c4:	20f2      	movs	r0, #242	; 0xf2
d00044c6:	f884 6b4a 	strb.w	r6, [r4, #2890]	; 0xb4a
d00044ca:	f884 6b96 	strb.w	r6, [r4, #2966]	; 0xb96
d00044ce:	f8c4 9b50 	str.w	r9, [r4, #2896]	; 0xb50
d00044d2:	f8c4 9b9c 	str.w	r9, [r4, #2972]	; 0xb9c
d00044d6:	f88c 8000 	strb.w	r8, [ip]
d00044da:	f8d5 b124 	ldr.w	fp, [r5, #292]	; 0x124
d00044de:	47d8      	blx	fp
d00044e0:	22f2      	movs	r2, #242	; 0xf2
d00044e2:	f8d5 b124 	ldr.w	fp, [r5, #292]	; 0x124
d00044e6:	234f      	movs	r3, #79	; 0x4f
d00044e8:	4610      	mov	r0, r2
d00044ea:	2138      	movs	r1, #56	; 0x38
d00044ec:	47d8      	blx	fp
d00044ee:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d00044f2:	f44f 728c 	mov.w	r2, #280	; 0x118
d00044f6:	2351      	movs	r3, #81	; 0x51
d00044f8:	700f      	strb	r7, [r1, #0]
d00044fa:	213a      	movs	r1, #58	; 0x3a
d00044fc:	f8d5 b124 	ldr.w	fp, [r5, #292]	; 0x124
d0004500:	4610      	mov	r0, r2
d0004502:	47d8      	blx	fp
d0004504:	2351      	movs	r3, #81	; 0x51
d0004506:	f8d5 b124 	ldr.w	fp, [r5, #292]	; 0x124
d000450a:	f44f 728c 	mov.w	r2, #280	; 0x118
d000450e:	4619      	mov	r1, r3
d0004510:	20f4      	movs	r0, #244	; 0xf4
d0004512:	47d8      	blx	fp
d0004514:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d0004518:	4a35      	ldr	r2, [pc, #212]	; (d00045f0 <ShowSampleIDEditor+0x3d0>)
d000451a:	215b      	movs	r1, #91	; 0x5b
d000451c:	701f      	strb	r7, [r3, #0]
d000451e:	20be      	movs	r0, #190	; 0xbe
d0004520:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
d0004524:	f04f 0b1f 	mov.w	fp, #31
d0004528:	4798      	blx	r3
d000452a:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d000452e:	4a30      	ldr	r2, [pc, #192]	; (d00045f0 <ShowSampleIDEditor+0x3d0>)
d0004530:	2159      	movs	r1, #89	; 0x59
d0004532:	f883 8000 	strb.w	r8, [r3]
d0004536:	20bc      	movs	r0, #188	; 0xbc
d0004538:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
d000453c:	4798      	blx	r3
d000453e:	f8d5 c0f8 	ldr.w	ip, [r5, #248]	; 0xf8
d0004542:	f8df e0c4 	ldr.w	lr, [pc, #196]	; d0004608 <ShowSampleIDEditor+0x3e8>
d0004546:	2353      	movs	r3, #83	; 0x53
d0004548:	f642 21ff 	movw	r1, #11007	; 0x2aff
d000454c:	4a29      	ldr	r2, [pc, #164]	; (d00045f4 <ShowSampleIDEditor+0x3d4>)
d000454e:	f642 30ff 	movw	r0, #11263	; 0x2bff
d0004552:	f8c4 ecc8 	str.w	lr, [r4, #3272]	; 0xcc8
d0004556:	f8a4 ac84 	strh.w	sl, [r4, #3204]	; 0xc84
d000455a:	f8a4 bcd0 	strh.w	fp, [r4, #3280]	; 0xcd0
d000455e:	f8a4 1c78 	strh.w	r1, [r4, #3192]	; 0xc78
d0004562:	4619      	mov	r1, r3
d0004564:	f8c4 2c7c 	str.w	r2, [r4, #3196]	; 0xc7c
d0004568:	f44f 728b 	mov.w	r2, #278	; 0x116
d000456c:	f8a4 0cc4 	strh.w	r0, [r4, #3268]	; 0xcc4
d0004570:	20f2      	movs	r0, #242	; 0xf2
d0004572:	f884 6c7a 	strb.w	r6, [r4, #3194]	; 0xc7a
d0004576:	f8c4 9c80 	str.w	r9, [r4, #3200]	; 0xc80
d000457a:	f884 6cc6 	strb.w	r6, [r4, #3270]	; 0xcc6
d000457e:	f8c4 9ccc 	str.w	r9, [r4, #3276]	; 0xccc
d0004582:	f88c 8000 	strb.w	r8, [ip]
d0004586:	f8d5 b124 	ldr.w	fp, [r5, #292]	; 0x124
d000458a:	47d8      	blx	fp
d000458c:	22f2      	movs	r2, #242	; 0xf2
d000458e:	f8d5 b124 	ldr.w	fp, [r5, #292]	; 0x124
d0004592:	236a      	movs	r3, #106	; 0x6a
d0004594:	4610      	mov	r0, r2
d0004596:	2153      	movs	r1, #83	; 0x53
d0004598:	47d8      	blx	fp
d000459a:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d000459e:	f44f 728c 	mov.w	r2, #280	; 0x118
d00045a2:	236c      	movs	r3, #108	; 0x6c
d00045a4:	700f      	strb	r7, [r1, #0]
d00045a6:	2155      	movs	r1, #85	; 0x55
d00045a8:	f8d5 b124 	ldr.w	fp, [r5, #292]	; 0x124
d00045ac:	4610      	mov	r0, r2
d00045ae:	47d8      	blx	fp
d00045b0:	236c      	movs	r3, #108	; 0x6c
d00045b2:	f8d5 b124 	ldr.w	fp, [r5, #292]	; 0x124
d00045b6:	f44f 728c 	mov.w	r2, #280	; 0x118
d00045ba:	4619      	mov	r1, r3
d00045bc:	e026      	b.n	d000460c <ShowSampleIDEditor+0x3ec>
d00045be:	bf00      	nop
d00045c0:	d000eff8 	.word	0xd000eff8
d00045c4:	d0251814 	.word	0xd0251814
d00045c8:	2001f000 	.word	0x2001f000
d00045cc:	d000f04c 	.word	0xd000f04c
d00045d0:	d00078dc 	.word	0xd00078dc
d00045d4:	d00311e0 	.word	0xd00311e0
d00045d8:	d00067f4 	.word	0xd00067f4
d00045dc:	00020018 	.word	0x00020018
d00045e0:	001d01b0 	.word	0x001d01b0
d00045e4:	00190014 	.word	0x00190014
d00045e8:	d00078fc 	.word	0xd00078fc
d00045ec:	0038011a 	.word	0x0038011a
d00045f0:	d0007904 	.word	0xd0007904
d00045f4:	0053011a 	.word	0x0053011a
d00045f8:	003801c6 	.word	0x003801c6
d00045fc:	00340018 	.word	0x00340018
d0004600:	001d01c6 	.word	0x001d01c6
d0004604:	00380130 	.word	0x00380130
d0004608:	00530130 	.word	0x00530130
d000460c:	20f4      	movs	r0, #244	; 0xf4
d000460e:	47d8      	blx	fp
d0004610:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d0004614:	4ac7      	ldr	r2, [pc, #796]	; (d0004934 <ShowSampleIDEditor+0x714>)
d0004616:	2175      	movs	r1, #117	; 0x75
d0004618:	701f      	strb	r7, [r3, #0]
d000461a:	20be      	movs	r0, #190	; 0xbe
d000461c:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
d0004620:	f04f 0b1f 	mov.w	fp, #31
d0004624:	4798      	blx	r3
d0004626:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d000462a:	4ac2      	ldr	r2, [pc, #776]	; (d0004934 <ShowSampleIDEditor+0x714>)
d000462c:	2173      	movs	r1, #115	; 0x73
d000462e:	f883 8000 	strb.w	r8, [r3]
d0004632:	20bc      	movs	r0, #188	; 0xbc
d0004634:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
d0004638:	4798      	blx	r3
d000463a:	f8d5 c0f8 	ldr.w	ip, [r5, #248]	; 0xf8
d000463e:	f8df e320 	ldr.w	lr, [pc, #800]	; d0004960 <ShowSampleIDEditor+0x740>
d0004642:	236e      	movs	r3, #110	; 0x6e
d0004644:	f642 41ff 	movw	r1, #11519	; 0x2cff
d0004648:	4abb      	ldr	r2, [pc, #748]	; (d0004938 <ShowSampleIDEditor+0x718>)
d000464a:	f642 50ff 	movw	r0, #11775	; 0x2dff
d000464e:	f8c4 ed60 	str.w	lr, [r4, #3424]	; 0xd60
d0004652:	f8a4 ad1c 	strh.w	sl, [r4, #3356]	; 0xd1c
d0004656:	f8a4 bd68 	strh.w	fp, [r4, #3432]	; 0xd68
d000465a:	f8a4 1d10 	strh.w	r1, [r4, #3344]	; 0xd10
d000465e:	4619      	mov	r1, r3
d0004660:	f8c4 2d14 	str.w	r2, [r4, #3348]	; 0xd14
d0004664:	f44f 728b 	mov.w	r2, #278	; 0x116
d0004668:	f8a4 0d5c 	strh.w	r0, [r4, #3420]	; 0xd5c
d000466c:	20f2      	movs	r0, #242	; 0xf2
d000466e:	f884 6d12 	strb.w	r6, [r4, #3346]	; 0xd12
d0004672:	f8c4 9d18 	str.w	r9, [r4, #3352]	; 0xd18
d0004676:	f884 6d5e 	strb.w	r6, [r4, #3422]	; 0xd5e
d000467a:	f8c4 9d64 	str.w	r9, [r4, #3428]	; 0xd64
d000467e:	f88c 8000 	strb.w	r8, [ip]
d0004682:	f8d5 b124 	ldr.w	fp, [r5, #292]	; 0x124
d0004686:	47d8      	blx	fp
d0004688:	22f2      	movs	r2, #242	; 0xf2
d000468a:	f8d5 b124 	ldr.w	fp, [r5, #292]	; 0x124
d000468e:	2385      	movs	r3, #133	; 0x85
d0004690:	4610      	mov	r0, r2
d0004692:	216e      	movs	r1, #110	; 0x6e
d0004694:	47d8      	blx	fp
d0004696:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d000469a:	f44f 728c 	mov.w	r2, #280	; 0x118
d000469e:	2387      	movs	r3, #135	; 0x87
d00046a0:	700f      	strb	r7, [r1, #0]
d00046a2:	2170      	movs	r1, #112	; 0x70
d00046a4:	f8d5 b124 	ldr.w	fp, [r5, #292]	; 0x124
d00046a8:	4610      	mov	r0, r2
d00046aa:	47d8      	blx	fp
d00046ac:	2387      	movs	r3, #135	; 0x87
d00046ae:	f8d5 b124 	ldr.w	fp, [r5, #292]	; 0x124
d00046b2:	f44f 728c 	mov.w	r2, #280	; 0x118
d00046b6:	4619      	mov	r1, r3
d00046b8:	20f4      	movs	r0, #244	; 0xf4
d00046ba:	47d8      	blx	fp
d00046bc:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d00046c0:	4a9e      	ldr	r2, [pc, #632]	; (d000493c <ShowSampleIDEditor+0x71c>)
d00046c2:	2141      	movs	r1, #65	; 0x41
d00046c4:	701f      	strb	r7, [r3, #0]
d00046c6:	f44f 70a7 	mov.w	r0, #334	; 0x14e
d00046ca:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
d00046ce:	4798      	blx	r3
d00046d0:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d00046d4:	4a99      	ldr	r2, [pc, #612]	; (d000493c <ShowSampleIDEditor+0x71c>)
d00046d6:	213f      	movs	r1, #63	; 0x3f
d00046d8:	f883 8000 	strb.w	r8, [r3]
d00046dc:	f44f 70a6 	mov.w	r0, #332	; 0x14c
d00046e0:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
d00046e4:	4798      	blx	r3
d00046e6:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d00046ea:	2338      	movs	r3, #56	; 0x38
d00046ec:	f44f 72b4 	mov.w	r2, #360	; 0x168
d00046f0:	f881 8000 	strb.w	r8, [r1]
d00046f4:	f44f 70a3 	mov.w	r0, #326	; 0x146
d00046f8:	f8d5 b124 	ldr.w	fp, [r5, #292]	; 0x124
d00046fc:	4619      	mov	r1, r3
d00046fe:	47d8      	blx	fp
d0004700:	f44f 72a3 	mov.w	r2, #326	; 0x146
d0004704:	f8d5 b124 	ldr.w	fp, [r5, #292]	; 0x124
d0004708:	236a      	movs	r3, #106	; 0x6a
d000470a:	4610      	mov	r0, r2
d000470c:	2138      	movs	r1, #56	; 0x38
d000470e:	47d8      	blx	fp
d0004710:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d0004714:	f44f 72b5 	mov.w	r2, #362	; 0x16a
d0004718:	236c      	movs	r3, #108	; 0x6c
d000471a:	700f      	strb	r7, [r1, #0]
d000471c:	213a      	movs	r1, #58	; 0x3a
d000471e:	f8d5 b124 	ldr.w	fp, [r5, #292]	; 0x124
d0004722:	4610      	mov	r0, r2
d0004724:	47d8      	blx	fp
d0004726:	236c      	movs	r3, #108	; 0x6c
d0004728:	f8d5 b124 	ldr.w	fp, [r5, #292]	; 0x124
d000472c:	f44f 72b5 	mov.w	r2, #362	; 0x16a
d0004730:	4619      	mov	r1, r3
d0004732:	f44f 70a4 	mov.w	r0, #328	; 0x148
d0004736:	47d8      	blx	fp
d0004738:	f8d5 c0f8 	ldr.w	ip, [r5, #248]	; 0xf8
d000473c:	f8df e224 	ldr.w	lr, [pc, #548]	; d0004964 <ShowSampleIDEditor+0x744>
d0004740:	2338      	movs	r3, #56	; 0x38
d0004742:	f642 01ff 	movw	r1, #10495	; 0x28ff
d0004746:	4a7e      	ldr	r2, [pc, #504]	; (d0004940 <ShowSampleIDEditor+0x720>)
d0004748:	f642 10ff 	movw	r0, #10751	; 0x29ff
d000474c:	f04f 0b1f 	mov.w	fp, #31
d0004750:	f8c4 ec30 	str.w	lr, [r4, #3120]	; 0xc30
d0004754:	f8a4 abec 	strh.w	sl, [r4, #3052]	; 0xbec
d0004758:	f8a4 bc38 	strh.w	fp, [r4, #3128]	; 0xc38
d000475c:	f8a4 1be0 	strh.w	r1, [r4, #3040]	; 0xbe0
d0004760:	4619      	mov	r1, r3
d0004762:	f8c4 2be4 	str.w	r2, [r4, #3044]	; 0xbe4
d0004766:	f44f 72cb 	mov.w	r2, #406	; 0x196
d000476a:	f8a4 0c2c 	strh.w	r0, [r4, #3116]	; 0xc2c
d000476e:	f44f 70b6 	mov.w	r0, #364	; 0x16c
d0004772:	f884 6be2 	strb.w	r6, [r4, #3042]	; 0xbe2
d0004776:	f8c4 9be8 	str.w	r9, [r4, #3048]	; 0xbe8
d000477a:	f884 6c2e 	strb.w	r6, [r4, #3118]	; 0xc2e
d000477e:	f8c4 9c34 	str.w	r9, [r4, #3124]	; 0xc34
d0004782:	f88c 8000 	strb.w	r8, [ip]
d0004786:	f8d5 b124 	ldr.w	fp, [r5, #292]	; 0x124
d000478a:	47d8      	blx	fp
d000478c:	f44f 72b6 	mov.w	r2, #364	; 0x16c
d0004790:	f8d5 b124 	ldr.w	fp, [r5, #292]	; 0x124
d0004794:	234f      	movs	r3, #79	; 0x4f
d0004796:	4610      	mov	r0, r2
d0004798:	2138      	movs	r1, #56	; 0x38
d000479a:	47d8      	blx	fp
d000479c:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d00047a0:	f44f 72cc 	mov.w	r2, #408	; 0x198
d00047a4:	2351      	movs	r3, #81	; 0x51
d00047a6:	700f      	strb	r7, [r1, #0]
d00047a8:	213a      	movs	r1, #58	; 0x3a
d00047aa:	f8d5 b124 	ldr.w	fp, [r5, #292]	; 0x124
d00047ae:	4610      	mov	r0, r2
d00047b0:	47d8      	blx	fp
d00047b2:	2351      	movs	r3, #81	; 0x51
d00047b4:	f8d5 b124 	ldr.w	fp, [r5, #292]	; 0x124
d00047b8:	f44f 72cc 	mov.w	r2, #408	; 0x198
d00047bc:	4619      	mov	r1, r3
d00047be:	f44f 70b7 	mov.w	r0, #366	; 0x16e
d00047c2:	47d8      	blx	fp
d00047c4:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d00047c8:	4a5e      	ldr	r2, [pc, #376]	; (d0004944 <ShowSampleIDEditor+0x724>)
d00047ca:	215b      	movs	r1, #91	; 0x5b
d00047cc:	701f      	strb	r7, [r3, #0]
d00047ce:	f44f 70a7 	mov.w	r0, #334	; 0x14e
d00047d2:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
d00047d6:	f04f 0b1f 	mov.w	fp, #31
d00047da:	4798      	blx	r3
d00047dc:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d00047e0:	4a58      	ldr	r2, [pc, #352]	; (d0004944 <ShowSampleIDEditor+0x724>)
d00047e2:	2159      	movs	r1, #89	; 0x59
d00047e4:	f883 8000 	strb.w	r8, [r3]
d00047e8:	f44f 70a6 	mov.w	r0, #332	; 0x14c
d00047ec:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
d00047f0:	4798      	blx	r3
d00047f2:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d00047f6:	2353      	movs	r3, #83	; 0x53
d00047f8:	f44f 72cb 	mov.w	r2, #406	; 0x196
d00047fc:	f881 8000 	strb.w	r8, [r1]
d0004800:	f44f 70b6 	mov.w	r0, #364	; 0x16c
d0004804:	f8d5 8124 	ldr.w	r8, [r5, #292]	; 0x124
d0004808:	4619      	mov	r1, r3
d000480a:	47c0      	blx	r8
d000480c:	f44f 72b6 	mov.w	r2, #364	; 0x16c
d0004810:	f8d5 8124 	ldr.w	r8, [r5, #292]	; 0x124
d0004814:	236a      	movs	r3, #106	; 0x6a
d0004816:	4610      	mov	r0, r2
d0004818:	2153      	movs	r1, #83	; 0x53
d000481a:	47c0      	blx	r8
d000481c:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d0004820:	f44f 72cc 	mov.w	r2, #408	; 0x198
d0004824:	236c      	movs	r3, #108	; 0x6c
d0004826:	700f      	strb	r7, [r1, #0]
d0004828:	2155      	movs	r1, #85	; 0x55
d000482a:	f8d5 7124 	ldr.w	r7, [r5, #292]	; 0x124
d000482e:	4610      	mov	r0, r2
d0004830:	47b8      	blx	r7
d0004832:	236c      	movs	r3, #108	; 0x6c
d0004834:	f8d5 5124 	ldr.w	r5, [r5, #292]	; 0x124
d0004838:	f44f 72cc 	mov.w	r2, #408	; 0x198
d000483c:	4619      	mov	r1, r3
d000483e:	f44f 70b7 	mov.w	r0, #366	; 0x16e
d0004842:	47a8      	blx	r5
d0004844:	f243 01ff 	movw	r1, #12543	; 0x30ff
d0004848:	483f      	ldr	r0, [pc, #252]	; (d0004948 <ShowSampleIDEditor+0x728>)
d000484a:	2200      	movs	r2, #0
d000484c:	4b3f      	ldr	r3, [pc, #252]	; (d000494c <ShowSampleIDEditor+0x72c>)
d000484e:	f642 7cff 	movw	ip, #12287	; 0x2fff
d0004852:	f884 2e5a 	strb.w	r2, [r4, #3674]	; 0xe5a
d0004856:	f642 68ff 	movw	r8, #12031	; 0x2eff
d000485a:	f8c4 0e44 	str.w	r0, [r4, #3652]	; 0xe44
d000485e:	f8a4 1e40 	strh.w	r1, [r4, #3648]	; 0xe40
d0004862:	4d3b      	ldr	r5, [pc, #236]	; (d0004950 <ShowSampleIDEditor+0x730>)
d0004864:	f8df e100 	ldr.w	lr, [pc, #256]	; d0004968 <ShowSampleIDEditor+0x748>
d0004868:	f8a4 adb4 	strh.w	sl, [r4, #3508]	; 0xdb4
d000486c:	4f39      	ldr	r7, [pc, #228]	; (d0004954 <ShowSampleIDEditor+0x734>)
d000486e:	f8df a0fc 	ldr.w	sl, [pc, #252]	; d000496c <ShowSampleIDEditor+0x74c>
d0004872:	f8c4 edac 	str.w	lr, [r4, #3500]	; 0xdac
d0004876:	f8a4 cdf4 	strh.w	ip, [r4, #3572]	; 0xdf4
d000487a:	f884 6daa 	strb.w	r6, [r4, #3498]	; 0xdaa
d000487e:	f8c4 9db0 	str.w	r9, [r4, #3504]	; 0xdb0
d0004882:	f884 6df6 	strb.w	r6, [r4, #3574]	; 0xdf6
d0004886:	f8c4 9dfc 	str.w	r9, [r4, #3580]	; 0xdfc
d000488a:	f8a4 be00 	strh.w	fp, [r4, #3584]	; 0xe00
d000488e:	f884 6e42 	strb.w	r6, [r4, #3650]	; 0xe42
d0004892:	f8a4 8da8 	strh.w	r8, [r4, #3496]	; 0xda8
d0004896:	f8c4 7df8 	str.w	r7, [r4, #3576]	; 0xdf8
d000489a:	f8c4 ae48 	str.w	sl, [r4, #3656]	; 0xe48
d000489e:	cb07      	ldmia	r3!, {r0, r1, r2}
d00048a0:	881b      	ldrh	r3, [r3, #0]
d00048a2:	f8c4 0e4c 	str.w	r0, [r4, #3660]	; 0xe4c
d00048a6:	81ab      	strh	r3, [r5, #12]
d00048a8:	6069      	str	r1, [r5, #4]
d00048aa:	60aa      	str	r2, [r5, #8]
d00048ac:	f7fb fca0 	bl	d00001f0 <ReleaseDrawBuffer>
d00048b0:	f7ff fc06 	bl	d00040c0 <RenderSampleIDEditor>
d00048b4:	2024      	movs	r0, #36	; 0x24
d00048b6:	f7ff f89b 	bl	d00039f0 <guiRenderButton.constprop.0>
d00048ba:	2023      	movs	r0, #35	; 0x23
d00048bc:	f7ff f898 	bl	d00039f0 <guiRenderButton.constprop.0>
d00048c0:	2025      	movs	r0, #37	; 0x25
d00048c2:	f7ff f895 	bl	d00039f0 <guiRenderButton.constprop.0>
d00048c6:	2026      	movs	r0, #38	; 0x26
d00048c8:	f7ff f892 	bl	d00039f0 <guiRenderButton.constprop.0>
d00048cc:	2027      	movs	r0, #39	; 0x27
d00048ce:	f7ff f88f 	bl	d00039f0 <guiRenderButton.constprop.0>
d00048d2:	202a      	movs	r0, #42	; 0x2a
d00048d4:	f7ff f88c 	bl	d00039f0 <guiRenderButton.constprop.0>
d00048d8:	202b      	movs	r0, #43	; 0x2b
d00048da:	f7ff f889 	bl	d00039f0 <guiRenderButton.constprop.0>
d00048de:	202c      	movs	r0, #44	; 0x2c
d00048e0:	f7ff f886 	bl	d00039f0 <guiRenderButton.constprop.0>
d00048e4:	202d      	movs	r0, #45	; 0x2d
d00048e6:	f7ff f883 	bl	d00039f0 <guiRenderButton.constprop.0>
d00048ea:	2028      	movs	r0, #40	; 0x28
d00048ec:	f7ff f880 	bl	d00039f0 <guiRenderButton.constprop.0>
d00048f0:	2029      	movs	r0, #41	; 0x29
d00048f2:	f7ff f87d 	bl	d00039f0 <guiRenderButton.constprop.0>
d00048f6:	202e      	movs	r0, #46	; 0x2e
d00048f8:	f7ff f87a 	bl	d00039f0 <guiRenderButton.constprop.0>
d00048fc:	202f      	movs	r0, #47	; 0x2f
d00048fe:	f7ff f877 	bl	d00039f0 <guiRenderButton.constprop.0>
d0004902:	2030      	movs	r0, #48	; 0x30
d0004904:	f7ff f874 	bl	d00039f0 <guiRenderButton.constprop.0>
d0004908:	2031      	movs	r0, #49	; 0x31
d000490a:	e8bd 4ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d000490e:	f7ff b86f 	b.w	d00039f0 <guiRenderButton.constprop.0>
d0004912:	f243 10ff 	movw	r0, #12799	; 0x31ff
d0004916:	4910      	ldr	r1, [pc, #64]	; (d0004958 <ShowSampleIDEditor+0x738>)
d0004918:	4a10      	ldr	r2, [pc, #64]	; (d000495c <ShowSampleIDEditor+0x73c>)
d000491a:	2303      	movs	r3, #3
d000491c:	f884 ae8e 	strb.w	sl, [r4, #3726]	; 0xe8e
d0004920:	f8a4 0e8c 	strh.w	r0, [r4, #3724]	; 0xe8c
d0004924:	f8c4 1e90 	str.w	r1, [r4, #3728]	; 0xe90
d0004928:	f8c4 2e94 	str.w	r2, [r4, #3732]	; 0xe94
d000492c:	f8a4 3e98 	strh.w	r3, [r4, #3736]	; 0xe98
d0004930:	e591      	b.n	d0004456 <ShowSampleIDEditor+0x236>
d0004932:	bf00      	nop
d0004934:	d000790c 	.word	0xd000790c
d0004938:	006e011a 	.word	0x006e011a
d000493c:	d0007914 	.word	0xd0007914
d0004940:	0038019a 	.word	0x0038019a
d0004944:	d0007918 	.word	0xd0007918
d0004948:	006e0146 	.word	0x006e0146
d000494c:	d000791c 	.word	0xd000791c
d0004950:	d0252660 	.word	0xd0252660
d0004954:	005301b0 	.word	0x005301b0
d0004958:	001d01b0 	.word	0x001d01b0
d000495c:	00190014 	.word	0x00190014
d0004960:	006e0130 	.word	0x006e0130
d0004964:	003801b0 	.word	0x003801b0
d0004968:	0053019a 	.word	0x0053019a
d000496c:	0019007e 	.word	0x0019007e

d0004970 <RenderPatternPositionEditor>:
d0004970:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0004974:	4d77      	ldr	r5, [pc, #476]	; (d0004b54 <RenderPatternPositionEditor+0x1e4>)
d0004976:	f7fb fc1d 	bl	d00001b4 <CaptureDrawBuffer>
d000497a:	f04f 0810 	mov.w	r8, #16
d000497e:	f7fb fc25 	bl	d00001cc <SetDrawToBackLayer>
d0004982:	f8d5 00f8 	ldr.w	r0, [r5, #248]	; 0xf8
d0004986:	2349      	movs	r3, #73	; 0x49
d0004988:	f44f 72dd 	mov.w	r2, #442	; 0x1ba
d000498c:	2123      	movs	r1, #35	; 0x23
d000498e:	f880 8000 	strb.w	r8, [r0]
d0004992:	20c0      	movs	r0, #192	; 0xc0
d0004994:	f8d5 413c 	ldr.w	r4, [r5, #316]	; 0x13c
d0004998:	f04f 0909 	mov.w	r9, #9
d000499c:	47a0      	blx	r4
d000499e:	f8d5 413c 	ldr.w	r4, [r5, #316]	; 0x13c
d00049a2:	2382      	movs	r3, #130	; 0x82
d00049a4:	f44f 72dd 	mov.w	r2, #442	; 0x1ba
d00049a8:	215b      	movs	r1, #91	; 0x5b
d00049aa:	20c0      	movs	r0, #192	; 0xc0
d00049ac:	47a0      	blx	r4
d00049ae:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d00049b2:	4f69      	ldr	r7, [pc, #420]	; (d0004b58 <RenderPatternPositionEditor+0x1e8>)
d00049b4:	f883 9000 	strb.w	r9, [r3]
d00049b8:	4b68      	ldr	r3, [pc, #416]	; (d0004b5c <RenderPatternPositionEditor+0x1ec>)
d00049ba:	f8d5 20fc 	ldr.w	r2, [r5, #252]	; 0xfc
d00049be:	f882 8000 	strb.w	r8, [r2]
d00049c2:	5afc      	ldrh	r4, [r7, r3]
d00049c4:	1ea6      	subs	r6, r4, #2
d00049c6:	b236      	sxth	r6, r6
d00049c8:	2e00      	cmp	r6, #0
d00049ca:	db03      	blt.n	d00049d4 <RenderPatternPositionEditor+0x64>
d00049cc:	4b64      	ldr	r3, [pc, #400]	; (d0004b60 <RenderPatternPositionEditor+0x1f0>)
d00049ce:	5afb      	ldrh	r3, [r7, r3]
d00049d0:	429e      	cmp	r6, r3
d00049d2:	db23      	blt.n	d0004a1c <RenderPatternPositionEditor+0xac>
d00049d4:	1e65      	subs	r5, r4, #1
d00049d6:	b22d      	sxth	r5, r5
d00049d8:	2d00      	cmp	r5, #0
d00049da:	db03      	blt.n	d00049e4 <RenderPatternPositionEditor+0x74>
d00049dc:	4b60      	ldr	r3, [pc, #384]	; (d0004b60 <RenderPatternPositionEditor+0x1f0>)
d00049de:	5afb      	ldrh	r3, [r7, r3]
d00049e0:	429d      	cmp	r5, r3
d00049e2:	db34      	blt.n	d0004a4e <RenderPatternPositionEditor+0xde>
d00049e4:	b225      	sxth	r5, r4
d00049e6:	2d00      	cmp	r5, #0
d00049e8:	db03      	blt.n	d00049f2 <RenderPatternPositionEditor+0x82>
d00049ea:	4b5d      	ldr	r3, [pc, #372]	; (d0004b60 <RenderPatternPositionEditor+0x1f0>)
d00049ec:	5afb      	ldrh	r3, [r7, r3]
d00049ee:	429d      	cmp	r5, r3
d00049f0:	db4c      	blt.n	d0004a8c <RenderPatternPositionEditor+0x11c>
d00049f2:	1c65      	adds	r5, r4, #1
d00049f4:	b22d      	sxth	r5, r5
d00049f6:	2d00      	cmp	r5, #0
d00049f8:	db04      	blt.n	d0004a04 <RenderPatternPositionEditor+0x94>
d00049fa:	4b59      	ldr	r3, [pc, #356]	; (d0004b60 <RenderPatternPositionEditor+0x1f0>)
d00049fc:	5afb      	ldrh	r3, [r7, r3]
d00049fe:	429d      	cmp	r5, r3
d0004a00:	f2c0 808c 	blt.w	d0004b1c <RenderPatternPositionEditor+0x1ac>
d0004a04:	3402      	adds	r4, #2
d0004a06:	b224      	sxth	r4, r4
d0004a08:	2c00      	cmp	r4, #0
d0004a0a:	db03      	blt.n	d0004a14 <RenderPatternPositionEditor+0xa4>
d0004a0c:	4b54      	ldr	r3, [pc, #336]	; (d0004b60 <RenderPatternPositionEditor+0x1f0>)
d0004a0e:	5afb      	ldrh	r3, [r7, r3]
d0004a10:	429c      	cmp	r4, r3
d0004a12:	db69      	blt.n	d0004ae8 <RenderPatternPositionEditor+0x178>
d0004a14:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0004a18:	f7fb bbea 	b.w	d00001f0 <ReleaseDrawBuffer>
d0004a1c:	4b51      	ldr	r3, [pc, #324]	; (d0004b64 <RenderPatternPositionEditor+0x1f4>)
d0004a1e:	4632      	mov	r2, r6
d0004a20:	4951      	ldr	r1, [pc, #324]	; (d0004b68 <RenderPatternPositionEditor+0x1f8>)
d0004a22:	4630      	mov	r0, r6
d0004a24:	4433      	add	r3, r6
d0004a26:	eb07 0343 	add.w	r3, r7, r3, lsl #1
d0004a2a:	885b      	ldrh	r3, [r3, #2]
d0004a2c:	f001 f982 	bl	d0005d34 <siprintf>
d0004a30:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d0004a34:	4632      	mov	r2, r6
d0004a36:	2127      	movs	r1, #39	; 0x27
d0004a38:	f883 9000 	strb.w	r9, [r3]
d0004a3c:	20c4      	movs	r0, #196	; 0xc4
d0004a3e:	f8d5 30fc 	ldr.w	r3, [r5, #252]	; 0xfc
d0004a42:	f883 8000 	strb.w	r8, [r3]
d0004a46:	f8d5 314c 	ldr.w	r3, [r5, #332]	; 0x14c
d0004a4a:	4798      	blx	r3
d0004a4c:	e7c2      	b.n	d00049d4 <RenderPatternPositionEditor+0x64>
d0004a4e:	4b45      	ldr	r3, [pc, #276]	; (d0004b64 <RenderPatternPositionEditor+0x1f4>)
d0004a50:	462a      	mov	r2, r5
d0004a52:	4945      	ldr	r1, [pc, #276]	; (d0004b68 <RenderPatternPositionEditor+0x1f8>)
d0004a54:	4628      	mov	r0, r5
d0004a56:	442b      	add	r3, r5
d0004a58:	2610      	movs	r6, #16
d0004a5a:	eb07 0343 	add.w	r3, r7, r3, lsl #1
d0004a5e:	885b      	ldrh	r3, [r3, #2]
d0004a60:	f001 f968 	bl	d0005d34 <siprintf>
d0004a64:	4b3b      	ldr	r3, [pc, #236]	; (d0004b54 <RenderPatternPositionEditor+0x1e4>)
d0004a66:	f04f 0c09 	mov.w	ip, #9
d0004a6a:	462a      	mov	r2, r5
d0004a6c:	f8d3 00f8 	ldr.w	r0, [r3, #248]	; 0xf8
d0004a70:	2139      	movs	r1, #57	; 0x39
d0004a72:	f880 c000 	strb.w	ip, [r0]
d0004a76:	20c4      	movs	r0, #196	; 0xc4
d0004a78:	f8d3 50fc 	ldr.w	r5, [r3, #252]	; 0xfc
d0004a7c:	702e      	strb	r6, [r5, #0]
d0004a7e:	b225      	sxth	r5, r4
d0004a80:	f8d3 314c 	ldr.w	r3, [r3, #332]	; 0x14c
d0004a84:	4798      	blx	r3
d0004a86:	2d00      	cmp	r5, #0
d0004a88:	daaf      	bge.n	d00049ea <RenderPatternPositionEditor+0x7a>
d0004a8a:	e7b2      	b.n	d00049f2 <RenderPatternPositionEditor+0x82>
d0004a8c:	4b35      	ldr	r3, [pc, #212]	; (d0004b64 <RenderPatternPositionEditor+0x1f4>)
d0004a8e:	462a      	mov	r2, r5
d0004a90:	4e30      	ldr	r6, [pc, #192]	; (d0004b54 <RenderPatternPositionEditor+0x1e4>)
d0004a92:	4628      	mov	r0, r5
d0004a94:	442b      	add	r3, r5
d0004a96:	4934      	ldr	r1, [pc, #208]	; (d0004b68 <RenderPatternPositionEditor+0x1f8>)
d0004a98:	eb07 0343 	add.w	r3, r7, r3, lsl #1
d0004a9c:	885b      	ldrh	r3, [r3, #2]
d0004a9e:	f001 f949 	bl	d0005d34 <siprintf>
d0004aa2:	f8d6 00fc 	ldr.w	r0, [r6, #252]	; 0xfc
d0004aa6:	f04f 0c05 	mov.w	ip, #5
d0004aaa:	2359      	movs	r3, #89	; 0x59
d0004aac:	f44f 72dd 	mov.w	r2, #442	; 0x1ba
d0004ab0:	214b      	movs	r1, #75	; 0x4b
d0004ab2:	f880 c000 	strb.w	ip, [r0]
d0004ab6:	20c0      	movs	r0, #192	; 0xc0
d0004ab8:	f8d6 e0f8 	ldr.w	lr, [r6, #248]	; 0xf8
d0004abc:	f88e c000 	strb.w	ip, [lr]
d0004ac0:	f8d6 813c 	ldr.w	r8, [r6, #316]	; 0x13c
d0004ac4:	47c0      	blx	r8
d0004ac6:	462a      	mov	r2, r5
d0004ac8:	1c65      	adds	r5, r4, #1
d0004aca:	f8d6 30f8 	ldr.w	r3, [r6, #248]	; 0xf8
d0004ace:	f04f 0c10 	mov.w	ip, #16
d0004ad2:	214b      	movs	r1, #75	; 0x4b
d0004ad4:	b22d      	sxth	r5, r5
d0004ad6:	20c4      	movs	r0, #196	; 0xc4
d0004ad8:	f883 c000 	strb.w	ip, [r3]
d0004adc:	f8d6 3148 	ldr.w	r3, [r6, #328]	; 0x148
d0004ae0:	4798      	blx	r3
d0004ae2:	2d00      	cmp	r5, #0
d0004ae4:	da89      	bge.n	d00049fa <RenderPatternPositionEditor+0x8a>
d0004ae6:	e78d      	b.n	d0004a04 <RenderPatternPositionEditor+0x94>
d0004ae8:	4b1e      	ldr	r3, [pc, #120]	; (d0004b64 <RenderPatternPositionEditor+0x1f4>)
d0004aea:	4622      	mov	r2, r4
d0004aec:	491e      	ldr	r1, [pc, #120]	; (d0004b68 <RenderPatternPositionEditor+0x1f8>)
d0004aee:	4620      	mov	r0, r4
d0004af0:	4423      	add	r3, r4
d0004af2:	2609      	movs	r6, #9
d0004af4:	2510      	movs	r5, #16
d0004af6:	eb07 0343 	add.w	r3, r7, r3, lsl #1
d0004afa:	885b      	ldrh	r3, [r3, #2]
d0004afc:	f001 f91a 	bl	d0005d34 <siprintf>
d0004b00:	4b14      	ldr	r3, [pc, #80]	; (d0004b54 <RenderPatternPositionEditor+0x1e4>)
d0004b02:	4622      	mov	r2, r4
d0004b04:	216f      	movs	r1, #111	; 0x6f
d0004b06:	f8d3 00f8 	ldr.w	r0, [r3, #248]	; 0xf8
d0004b0a:	7006      	strb	r6, [r0, #0]
d0004b0c:	20c4      	movs	r0, #196	; 0xc4
d0004b0e:	f8d3 40fc 	ldr.w	r4, [r3, #252]	; 0xfc
d0004b12:	7025      	strb	r5, [r4, #0]
d0004b14:	f8d3 314c 	ldr.w	r3, [r3, #332]	; 0x14c
d0004b18:	4798      	blx	r3
d0004b1a:	e77b      	b.n	d0004a14 <RenderPatternPositionEditor+0xa4>
d0004b1c:	4b11      	ldr	r3, [pc, #68]	; (d0004b64 <RenderPatternPositionEditor+0x1f4>)
d0004b1e:	462a      	mov	r2, r5
d0004b20:	4911      	ldr	r1, [pc, #68]	; (d0004b68 <RenderPatternPositionEditor+0x1f8>)
d0004b22:	4628      	mov	r0, r5
d0004b24:	442b      	add	r3, r5
d0004b26:	2610      	movs	r6, #16
d0004b28:	eb07 0343 	add.w	r3, r7, r3, lsl #1
d0004b2c:	885b      	ldrh	r3, [r3, #2]
d0004b2e:	f001 f901 	bl	d0005d34 <siprintf>
d0004b32:	4b08      	ldr	r3, [pc, #32]	; (d0004b54 <RenderPatternPositionEditor+0x1e4>)
d0004b34:	f04f 0c09 	mov.w	ip, #9
d0004b38:	462a      	mov	r2, r5
d0004b3a:	f8d3 00f8 	ldr.w	r0, [r3, #248]	; 0xf8
d0004b3e:	215d      	movs	r1, #93	; 0x5d
d0004b40:	f880 c000 	strb.w	ip, [r0]
d0004b44:	20c4      	movs	r0, #196	; 0xc4
d0004b46:	f8d3 50fc 	ldr.w	r5, [r3, #252]	; 0xfc
d0004b4a:	702e      	strb	r6, [r5, #0]
d0004b4c:	f8d3 314c 	ldr.w	r3, [r3, #332]	; 0x14c
d0004b50:	4798      	blx	r3
d0004b52:	e757      	b.n	d0004a04 <RenderPatternPositionEditor+0x94>
d0004b54:	2001f000 	.word	0x2001f000
d0004b58:	d00311e0 	.word	0xd00311e0
d0004b5c:	00020376 	.word	0x00020376
d0004b60:	00020378 	.word	0x00020378
d0004b64:	000101bc 	.word	0x000101bc
d0004b68:	d000792c 	.word	0xd000792c

d0004b6c <ShowPatternPositionEditor>:
d0004b6c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0004b70:	4a83      	ldr	r2, [pc, #524]	; (d0004d80 <ShowPatternPositionEditor+0x214>)
d0004b72:	2314      	movs	r3, #20
d0004b74:	4c83      	ldr	r4, [pc, #524]	; (d0004d84 <ShowPatternPositionEditor+0x218>)
d0004b76:	2101      	movs	r1, #1
d0004b78:	4d83      	ldr	r5, [pc, #524]	; (d0004d88 <ShowPatternPositionEditor+0x21c>)
d0004b7a:	f04f 0805 	mov.w	r8, #5
d0004b7e:	7011      	strb	r1, [r2, #0]
d0004b80:	2706      	movs	r7, #6
d0004b82:	f884 3a66 	strb.w	r3, [r4, #2662]	; 0xa66
d0004b86:	2604      	movs	r6, #4
d0004b88:	f884 3ab2 	strb.w	r3, [r4, #2738]	; 0xab2
d0004b8c:	f884 3afe 	strb.w	r3, [r4, #2814]	; 0xafe
d0004b90:	f884 3b4a 	strb.w	r3, [r4, #2890]	; 0xb4a
d0004b94:	f884 3b96 	strb.w	r3, [r4, #2966]	; 0xb96
d0004b98:	f884 3be2 	strb.w	r3, [r4, #3042]	; 0xbe2
d0004b9c:	f884 3c2e 	strb.w	r3, [r4, #3118]	; 0xc2e
d0004ba0:	f884 3c7a 	strb.w	r3, [r4, #3194]	; 0xc7a
d0004ba4:	f884 3cc6 	strb.w	r3, [r4, #3270]	; 0xcc6
d0004ba8:	f884 3d12 	strb.w	r3, [r4, #3346]	; 0xd12
d0004bac:	f884 3d5e 	strb.w	r3, [r4, #3422]	; 0xd5e
d0004bb0:	f884 3daa 	strb.w	r3, [r4, #3498]	; 0xdaa
d0004bb4:	f884 3df6 	strb.w	r3, [r4, #3574]	; 0xdf6
d0004bb8:	f884 3e42 	strb.w	r3, [r4, #3650]	; 0xe42
d0004bbc:	f884 3e8e 	strb.w	r3, [r4, #3726]	; 0xe8e
d0004bc0:	f7fb faf8 	bl	d00001b4 <CaptureDrawBuffer>
d0004bc4:	f7fb fb02 	bl	d00001cc <SetDrawToBackLayer>
d0004bc8:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d0004bcc:	2387      	movs	r3, #135	; 0x87
d0004bce:	f44f 72e2 	mov.w	r2, #452	; 0x1c4
d0004bd2:	f881 8000 	strb.w	r8, [r1]
d0004bd6:	20b6      	movs	r0, #182	; 0xb6
d0004bd8:	f8d5 913c 	ldr.w	r9, [r5, #316]	; 0x13c
d0004bdc:	211d      	movs	r1, #29
d0004bde:	47c8      	blx	r9
d0004be0:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d0004be4:	231d      	movs	r3, #29
d0004be6:	f44f 72e1 	mov.w	r2, #450	; 0x1c2
d0004bea:	700f      	strb	r7, [r1, #0]
d0004bec:	20b6      	movs	r0, #182	; 0xb6
d0004bee:	f8d5 9124 	ldr.w	r9, [r5, #292]	; 0x124
d0004bf2:	4619      	mov	r1, r3
d0004bf4:	47c8      	blx	r9
d0004bf6:	22b6      	movs	r2, #182	; 0xb6
d0004bf8:	f8d5 9124 	ldr.w	r9, [r5, #292]	; 0x124
d0004bfc:	2385      	movs	r3, #133	; 0x85
d0004bfe:	4610      	mov	r0, r2
d0004c00:	211d      	movs	r1, #29
d0004c02:	47c8      	blx	r9
d0004c04:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d0004c08:	f44f 72e2 	mov.w	r2, #452	; 0x1c4
d0004c0c:	2387      	movs	r3, #135	; 0x87
d0004c0e:	700e      	strb	r6, [r1, #0]
d0004c10:	211f      	movs	r1, #31
d0004c12:	f8d5 9124 	ldr.w	r9, [r5, #292]	; 0x124
d0004c16:	4610      	mov	r0, r2
d0004c18:	47c8      	blx	r9
d0004c1a:	2387      	movs	r3, #135	; 0x87
d0004c1c:	f8d5 9124 	ldr.w	r9, [r5, #292]	; 0x124
d0004c20:	f44f 72e2 	mov.w	r2, #452	; 0x1c4
d0004c24:	4619      	mov	r1, r3
d0004c26:	20b8      	movs	r0, #184	; 0xb8
d0004c28:	47c8      	blx	r9
d0004c2a:	f04f 0c10 	mov.w	ip, #16
d0004c2e:	f8d5 00f8 	ldr.w	r0, [r5, #248]	; 0xf8
d0004c32:	2383      	movs	r3, #131	; 0x83
d0004c34:	f44f 72e0 	mov.w	r2, #448	; 0x1c0
d0004c38:	2121      	movs	r1, #33	; 0x21
d0004c3a:	f880 c000 	strb.w	ip, [r0]
d0004c3e:	20ba      	movs	r0, #186	; 0xba
d0004c40:	f8d5 913c 	ldr.w	r9, [r5, #316]	; 0x13c
d0004c44:	47c8      	blx	r9
d0004c46:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d0004c4a:	2321      	movs	r3, #33	; 0x21
d0004c4c:	f44f 72df 	mov.w	r2, #446	; 0x1be
d0004c50:	700e      	strb	r6, [r1, #0]
d0004c52:	20ba      	movs	r0, #186	; 0xba
d0004c54:	f8d5 9124 	ldr.w	r9, [r5, #292]	; 0x124
d0004c58:	4619      	mov	r1, r3
d0004c5a:	47c8      	blx	r9
d0004c5c:	22ba      	movs	r2, #186	; 0xba
d0004c5e:	f8d5 9124 	ldr.w	r9, [r5, #292]	; 0x124
d0004c62:	2381      	movs	r3, #129	; 0x81
d0004c64:	4610      	mov	r0, r2
d0004c66:	2121      	movs	r1, #33	; 0x21
d0004c68:	47c8      	blx	r9
d0004c6a:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d0004c6e:	f44f 72e0 	mov.w	r2, #448	; 0x1c0
d0004c72:	2383      	movs	r3, #131	; 0x83
d0004c74:	700f      	strb	r7, [r1, #0]
d0004c76:	2123      	movs	r1, #35	; 0x23
d0004c78:	f8d5 9124 	ldr.w	r9, [r5, #292]	; 0x124
d0004c7c:	4610      	mov	r0, r2
d0004c7e:	47c8      	blx	r9
d0004c80:	2383      	movs	r3, #131	; 0x83
d0004c82:	f8d5 9124 	ldr.w	r9, [r5, #292]	; 0x124
d0004c86:	f44f 72e0 	mov.w	r2, #448	; 0x1c0
d0004c8a:	4619      	mov	r1, r3
d0004c8c:	20bc      	movs	r0, #188	; 0xbc
d0004c8e:	47c8      	blx	r9
d0004c90:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d0004c94:	235b      	movs	r3, #91	; 0x5b
d0004c96:	f44f 72de 	mov.w	r2, #444	; 0x1bc
d0004c9a:	f881 8000 	strb.w	r8, [r1]
d0004c9e:	20be      	movs	r0, #190	; 0xbe
d0004ca0:	f8d5 813c 	ldr.w	r8, [r5, #316]	; 0x13c
d0004ca4:	2149      	movs	r1, #73	; 0x49
d0004ca6:	47c0      	blx	r8
d0004ca8:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d0004cac:	2349      	movs	r3, #73	; 0x49
d0004cae:	f44f 72dd 	mov.w	r2, #442	; 0x1ba
d0004cb2:	700f      	strb	r7, [r1, #0]
d0004cb4:	20be      	movs	r0, #190	; 0xbe
d0004cb6:	f8d5 7124 	ldr.w	r7, [r5, #292]	; 0x124
d0004cba:	4619      	mov	r1, r3
d0004cbc:	47b8      	blx	r7
d0004cbe:	22be      	movs	r2, #190	; 0xbe
d0004cc0:	f8d5 7124 	ldr.w	r7, [r5, #292]	; 0x124
d0004cc4:	2357      	movs	r3, #87	; 0x57
d0004cc6:	4610      	mov	r0, r2
d0004cc8:	2149      	movs	r1, #73	; 0x49
d0004cca:	47b8      	blx	r7
d0004ccc:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d0004cd0:	f44f 72de 	mov.w	r2, #444	; 0x1bc
d0004cd4:	2359      	movs	r3, #89	; 0x59
d0004cd6:	700e      	strb	r6, [r1, #0]
d0004cd8:	214b      	movs	r1, #75	; 0x4b
d0004cda:	f8d5 6124 	ldr.w	r6, [r5, #292]	; 0x124
d0004cde:	4610      	mov	r0, r2
d0004ce0:	47b0      	blx	r6
d0004ce2:	2359      	movs	r3, #89	; 0x59
d0004ce4:	f8d5 5124 	ldr.w	r5, [r5, #292]	; 0x124
d0004ce8:	f44f 72de 	mov.w	r2, #444	; 0x1bc
d0004cec:	4619      	mov	r1, r3
d0004cee:	20c0      	movs	r0, #192	; 0xc0
d0004cf0:	47a8      	blx	r5
d0004cf2:	4b26      	ldr	r3, [pc, #152]	; (d0004d8c <ShowPatternPositionEditor+0x220>)
d0004cf4:	f242 41ff 	movw	r1, #9471	; 0x24ff
d0004cf8:	201e      	movs	r0, #30
d0004cfa:	4a25      	ldr	r2, [pc, #148]	; (d0004d90 <ShowPatternPositionEditor+0x224>)
d0004cfc:	f242 3eff 	movw	lr, #9215	; 0x23ff
d0004d00:	f8b3 c000 	ldrh.w	ip, [r3]
d0004d04:	2600      	movs	r6, #0
d0004d06:	789f      	ldrb	r7, [r3, #2]
d0004d08:	f242 55ff 	movw	r5, #9727	; 0x25ff
d0004d0c:	2308      	movs	r3, #8
d0004d0e:	f8a4 1ab0 	strh.w	r1, [r4, #2736]	; 0xab0
d0004d12:	f8a4 0abc 	strh.w	r0, [r4, #2748]	; 0xabc
d0004d16:	211f      	movs	r1, #31
d0004d18:	f8c4 2a68 	str.w	r2, [r4, #2664]	; 0xa68
d0004d1c:	f8df 907c 	ldr.w	r9, [pc, #124]	; d0004d9c <ShowPatternPositionEditor+0x230>
d0004d20:	4a1c      	ldr	r2, [pc, #112]	; (d0004d94 <ShowPatternPositionEditor+0x228>)
d0004d22:	f8df 807c 	ldr.w	r8, [pc, #124]	; d0004da0 <ShowPatternPositionEditor+0x234>
d0004d26:	481c      	ldr	r0, [pc, #112]	; (d0004d98 <ShowPatternPositionEditor+0x22c>)
d0004d28:	f8a4 ea64 	strh.w	lr, [r4, #2660]	; 0xa64
d0004d2c:	f8a4 ca70 	strh.w	ip, [r4, #2672]	; 0xa70
d0004d30:	f8a4 1b08 	strh.w	r1, [r4, #2824]	; 0xb08
d0004d34:	f884 3ab2 	strb.w	r3, [r4, #2738]	; 0xab2
d0004d38:	f884 3a66 	strb.w	r3, [r4, #2662]	; 0xa66
d0004d3c:	f884 3afe 	strb.w	r3, [r4, #2814]	; 0xafe
d0004d40:	f8c4 2ab8 	str.w	r2, [r4, #2744]	; 0xab8
d0004d44:	f8c4 2b04 	str.w	r2, [r4, #2820]	; 0xb04
d0004d48:	f8c4 9ab4 	str.w	r9, [r4, #2740]	; 0xab4
d0004d4c:	f8c4 8a6c 	str.w	r8, [r4, #2668]	; 0xa6c
d0004d50:	f884 7a72 	strb.w	r7, [r4, #2674]	; 0xa72
d0004d54:	f884 6a73 	strb.w	r6, [r4, #2675]	; 0xa73
d0004d58:	f8a4 5afc 	strh.w	r5, [r4, #2812]	; 0xafc
d0004d5c:	f8c4 0b00 	str.w	r0, [r4, #2816]	; 0xb00
d0004d60:	f7fb fa46 	bl	d00001f0 <ReleaseDrawBuffer>
d0004d64:	2024      	movs	r0, #36	; 0x24
d0004d66:	f7fe fe43 	bl	d00039f0 <guiRenderButton.constprop.0>
d0004d6a:	2023      	movs	r0, #35	; 0x23
d0004d6c:	f7fe fe40 	bl	d00039f0 <guiRenderButton.constprop.0>
d0004d70:	2025      	movs	r0, #37	; 0x25
d0004d72:	f7fe fe3d 	bl	d00039f0 <guiRenderButton.constprop.0>
d0004d76:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0004d7a:	f7ff bdf9 	b.w	d0004970 <RenderPatternPositionEditor>
d0004d7e:	bf00      	nop
d0004d80:	d000f04c 	.word	0xd000f04c
d0004d84:	d0251814 	.word	0xd0251814
d0004d88:	2001f000 	.word	0x2001f000
d0004d8c:	d00067f4 	.word	0xd00067f4
d0004d90:	003801c6 	.word	0x003801c6
d0004d94:	00190018 	.word	0x00190018
d0004d98:	006e01c6 	.word	0x006e01c6
d0004d9c:	001d01c6 	.word	0x001d01c6
d0004da0:	00340018 	.word	0x00340018

d0004da4 <DisableConfigButtons>:
d0004da4:	4b10      	ldr	r3, [pc, #64]	; (d0004de8 <DisableConfigButtons+0x44>)
d0004da6:	2214      	movs	r2, #20
d0004da8:	f883 2a66 	strb.w	r2, [r3, #2662]	; 0xa66
d0004dac:	f883 2ab2 	strb.w	r2, [r3, #2738]	; 0xab2
d0004db0:	f883 2afe 	strb.w	r2, [r3, #2814]	; 0xafe
d0004db4:	f883 2b4a 	strb.w	r2, [r3, #2890]	; 0xb4a
d0004db8:	f883 2b96 	strb.w	r2, [r3, #2966]	; 0xb96
d0004dbc:	f883 2be2 	strb.w	r2, [r3, #3042]	; 0xbe2
d0004dc0:	f883 2c2e 	strb.w	r2, [r3, #3118]	; 0xc2e
d0004dc4:	f883 2c7a 	strb.w	r2, [r3, #3194]	; 0xc7a
d0004dc8:	f883 2cc6 	strb.w	r2, [r3, #3270]	; 0xcc6
d0004dcc:	f883 2d12 	strb.w	r2, [r3, #3346]	; 0xd12
d0004dd0:	f883 2d5e 	strb.w	r2, [r3, #3422]	; 0xd5e
d0004dd4:	f883 2daa 	strb.w	r2, [r3, #3498]	; 0xdaa
d0004dd8:	f883 2df6 	strb.w	r2, [r3, #3574]	; 0xdf6
d0004ddc:	f883 2e42 	strb.w	r2, [r3, #3650]	; 0xe42
d0004de0:	f883 2e8e 	strb.w	r2, [r3, #3726]	; 0xe8e
d0004de4:	4770      	bx	lr
d0004de6:	bf00      	nop
d0004de8:	d0251814 	.word	0xd0251814

d0004dec <DisableMainWindowButtons>:
d0004dec:	4b0b      	ldr	r3, [pc, #44]	; (d0004e1c <DisableMainWindowButtons+0x30>)
d0004dee:	2204      	movs	r2, #4
d0004df0:	f883 276e 	strb.w	r2, [r3, #1902]	; 0x76e
d0004df4:	f883 27ba 	strb.w	r2, [r3, #1978]	; 0x7ba
d0004df8:	f883 2216 	strb.w	r2, [r3, #534]	; 0x216
d0004dfc:	f883 2262 	strb.w	r2, [r3, #610]	; 0x262
d0004e00:	f883 22ae 	strb.w	r2, [r3, #686]	; 0x2ae
d0004e04:	f883 22fa 	strb.w	r2, [r3, #762]	; 0x2fa
d0004e08:	f883 2346 	strb.w	r2, [r3, #838]	; 0x346
d0004e0c:	f883 2392 	strb.w	r2, [r3, #914]	; 0x392
d0004e10:	f883 23de 	strb.w	r2, [r3, #990]	; 0x3de
d0004e14:	f883 242a 	strb.w	r2, [r3, #1066]	; 0x42a
d0004e18:	4770      	bx	lr
d0004e1a:	bf00      	nop
d0004e1c:	d0251814 	.word	0xd0251814

d0004e20 <EnableMainWindowButtons>:
d0004e20:	b510      	push	{r4, lr}
d0004e22:	4b1e      	ldr	r3, [pc, #120]	; (d0004e9c <EnableMainWindowButtons+0x7c>)
d0004e24:	2409      	movs	r4, #9
d0004e26:	f883 476e 	strb.w	r4, [r3, #1902]	; 0x76e
d0004e2a:	f883 47ba 	strb.w	r4, [r3, #1978]	; 0x7ba
d0004e2e:	f883 4216 	strb.w	r4, [r3, #534]	; 0x216
d0004e32:	f883 4262 	strb.w	r4, [r3, #610]	; 0x262
d0004e36:	f883 42ae 	strb.w	r4, [r3, #686]	; 0x2ae
d0004e3a:	f883 42fa 	strb.w	r4, [r3, #762]	; 0x2fa
d0004e3e:	f883 4346 	strb.w	r4, [r3, #838]	; 0x346
d0004e42:	f883 4392 	strb.w	r4, [r3, #914]	; 0x392
d0004e46:	f883 43de 	strb.w	r4, [r3, #990]	; 0x3de
d0004e4a:	f883 442a 	strb.w	r4, [r3, #1066]	; 0x42a
d0004e4e:	f7fb f9b1 	bl	d00001b4 <CaptureDrawBuffer>
d0004e52:	f7fb f9bb 	bl	d00001cc <SetDrawToBackLayer>
d0004e56:	2019      	movs	r0, #25
d0004e58:	f7fe fdca 	bl	d00039f0 <guiRenderButton.constprop.0>
d0004e5c:	201a      	movs	r0, #26
d0004e5e:	f7fe fdc7 	bl	d00039f0 <guiRenderButton.constprop.0>
d0004e62:	2007      	movs	r0, #7
d0004e64:	f7fe fdc4 	bl	d00039f0 <guiRenderButton.constprop.0>
d0004e68:	2008      	movs	r0, #8
d0004e6a:	f7fe fdc1 	bl	d00039f0 <guiRenderButton.constprop.0>
d0004e6e:	4620      	mov	r0, r4
d0004e70:	f7fe fdbe 	bl	d00039f0 <guiRenderButton.constprop.0>
d0004e74:	200a      	movs	r0, #10
d0004e76:	f7fe fdbb 	bl	d00039f0 <guiRenderButton.constprop.0>
d0004e7a:	200b      	movs	r0, #11
d0004e7c:	f7fe fdb8 	bl	d00039f0 <guiRenderButton.constprop.0>
d0004e80:	200c      	movs	r0, #12
d0004e82:	f7fe fdb5 	bl	d00039f0 <guiRenderButton.constprop.0>
d0004e86:	200d      	movs	r0, #13
d0004e88:	f7fe fdb2 	bl	d00039f0 <guiRenderButton.constprop.0>
d0004e8c:	200e      	movs	r0, #14
d0004e8e:	f7fe fdaf 	bl	d00039f0 <guiRenderButton.constprop.0>
d0004e92:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0004e96:	f7fb b9ab 	b.w	d00001f0 <ReleaseDrawBuffer>
d0004e9a:	bf00      	nop
d0004e9c:	d0251814 	.word	0xd0251814

d0004ea0 <ShowDefaultHomeConfigPage>:
d0004ea0:	4beb      	ldr	r3, [pc, #940]	; (d0005250 <ShowDefaultHomeConfigPage+0x3b0>)
d0004ea2:	2214      	movs	r2, #20
d0004ea4:	49eb      	ldr	r1, [pc, #940]	; (d0005254 <ShowDefaultHomeConfigPage+0x3b4>)
d0004ea6:	201e      	movs	r0, #30
d0004ea8:	f8df c3d0 	ldr.w	ip, [pc, #976]	; d000527c <ShowDefaultHomeConfigPage+0x3dc>
d0004eac:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0004eb0:	2708      	movs	r7, #8
d0004eb2:	f04f 0a1f 	mov.w	sl, #31
d0004eb6:	f883 2a66 	strb.w	r2, [r3, #2662]	; 0xa66
d0004eba:	f240 79ff 	movw	r9, #2047	; 0x7ff
d0004ebe:	f883 2ab2 	strb.w	r2, [r3, #2738]	; 0xab2
d0004ec2:	f640 0eff 	movw	lr, #2303	; 0x8ff
d0004ec6:	f883 2afe 	strb.w	r2, [r3, #2814]	; 0xafe
d0004eca:	f640 16ff 	movw	r6, #2559	; 0x9ff
d0004ece:	f883 2b4a 	strb.w	r2, [r3, #2890]	; 0xb4a
d0004ed2:	f640 24ff 	movw	r4, #2815	; 0xaff
d0004ed6:	f883 2b96 	strb.w	r2, [r3, #2966]	; 0xb96
d0004eda:	b085      	sub	sp, #20
d0004edc:	f883 2be2 	strb.w	r2, [r3, #3042]	; 0xbe2
d0004ee0:	f883 2c2e 	strb.w	r2, [r3, #3118]	; 0xc2e
d0004ee4:	f883 2c7a 	strb.w	r2, [r3, #3194]	; 0xc7a
d0004ee8:	f883 2cc6 	strb.w	r2, [r3, #3270]	; 0xcc6
d0004eec:	f883 2d12 	strb.w	r2, [r3, #3346]	; 0xd12
d0004ef0:	f883 2d5e 	strb.w	r2, [r3, #3422]	; 0xd5e
d0004ef4:	f883 2daa 	strb.w	r2, [r3, #3498]	; 0xdaa
d0004ef8:	f883 2df6 	strb.w	r2, [r3, #3574]	; 0xdf6
d0004efc:	f883 2e42 	strb.w	r2, [r3, #3650]	; 0xe42
d0004f00:	f883 2e8e 	strb.w	r2, [r3, #3726]	; 0xe8e
d0004f04:	f8df 8378 	ldr.w	r8, [pc, #888]	; d0005280 <ShowDefaultHomeConfigPage+0x3e0>
d0004f08:	f8df b378 	ldr.w	fp, [pc, #888]	; d0005284 <ShowDefaultHomeConfigPage+0x3e4>
d0004f0c:	4dd2      	ldr	r5, [pc, #840]	; (d0005258 <ShowDefaultHomeConfigPage+0x3b8>)
d0004f0e:	4ad3      	ldr	r2, [pc, #844]	; (d000525c <ShowDefaultHomeConfigPage+0x3bc>)
d0004f10:	f8a3 9214 	strh.w	r9, [r3, #532]	; 0x214
d0004f14:	f641 29ff 	movw	r9, #6911	; 0x1aff
d0004f18:	f8c3 8218 	str.w	r8, [r3, #536]	; 0x218
d0004f1c:	f640 58ff 	movw	r8, #3583	; 0xdff
d0004f20:	f8a3 e260 	strh.w	lr, [r3, #608]	; 0x260
d0004f24:	f640 6eff 	movw	lr, #3839	; 0xeff
d0004f28:	f8c3 b264 	str.w	fp, [r3, #612]	; 0x264
d0004f2c:	f04f 0b09 	mov.w	fp, #9
d0004f30:	f8a3 62ac 	strh.w	r6, [r3, #684]	; 0x2ac
d0004f34:	2606      	movs	r6, #6
d0004f36:	f8c3 52b0 	str.w	r5, [r3, #688]	; 0x2b0
d0004f3a:	2500      	movs	r5, #0
d0004f3c:	f8a3 42f8 	strh.w	r4, [r3, #760]	; 0x2f8
d0004f40:	f883 7216 	strb.w	r7, [r3, #534]	; 0x216
d0004f44:	f883 7262 	strb.w	r7, [r3, #610]	; 0x262
d0004f48:	f883 72ae 	strb.w	r7, [r3, #686]	; 0x2ae
d0004f4c:	f883 72fa 	strb.w	r7, [r3, #762]	; 0x2fa
d0004f50:	f8c3 121c 	str.w	r1, [r3, #540]	; 0x21c
d0004f54:	f8c3 1268 	str.w	r1, [r3, #616]	; 0x268
d0004f58:	f8c3 12b4 	str.w	r1, [r3, #692]	; 0x2b4
d0004f5c:	f8a3 0220 	strh.w	r0, [r3, #544]	; 0x220
d0004f60:	f8a3 02b8 	strh.w	r0, [r3, #696]	; 0x2b8
d0004f64:	f8a3 a26c 	strh.w	sl, [r3, #620]	; 0x26c
d0004f68:	f8c3 22fc 	str.w	r2, [r3, #764]	; 0x2fc
d0004f6c:	f640 32ff 	movw	r2, #3071	; 0xbff
d0004f70:	f8c3 1300 	str.w	r1, [r3, #768]	; 0x300
d0004f74:	f8c3 134c 	str.w	r1, [r3, #844]	; 0x34c
d0004f78:	f8c3 1398 	str.w	r1, [r3, #920]	; 0x398
d0004f7c:	f8c3 13e4 	str.w	r1, [r3, #996]	; 0x3e4
d0004f80:	f8c3 1430 	str.w	r1, [r3, #1072]	; 0x430
d0004f84:	f640 41ff 	movw	r1, #3327	; 0xcff
d0004f88:	f8a3 2344 	strh.w	r2, [r3, #836]	; 0x344
d0004f8c:	4ab4      	ldr	r2, [pc, #720]	; (d0005260 <ShowDefaultHomeConfigPage+0x3c0>)
d0004f8e:	f8a3 1390 	strh.w	r1, [r3, #912]	; 0x390
d0004f92:	f44f 11e8 	mov.w	r1, #1900544	; 0x1d0000
d0004f96:	f8c3 2348 	str.w	r2, [r3, #840]	; 0x348
d0004f9a:	321a      	adds	r2, #26
d0004f9c:	f8c3 1770 	str.w	r1, [r3, #1904]	; 0x770
d0004fa0:	f641 11ff 	movw	r1, #6655	; 0x19ff
d0004fa4:	f8c3 2394 	str.w	r2, [r3, #916]	; 0x394
d0004fa8:	4aae      	ldr	r2, [pc, #696]	; (d0005264 <ShowDefaultHomeConfigPage+0x3c4>)
d0004faa:	f8a3 176c 	strh.w	r1, [r3, #1900]	; 0x76c
d0004fae:	f44f 01dc 	mov.w	r1, #7208960	; 0x6e0000
d0004fb2:	f8c3 23e0 	str.w	r2, [r3, #992]	; 0x3e0
d0004fb6:	321a      	adds	r2, #26
d0004fb8:	f8a3 0350 	strh.w	r0, [r3, #848]	; 0x350
d0004fbc:	f8a3 03e8 	strh.w	r0, [r3, #1000]	; 0x3e8
d0004fc0:	f8a3 e428 	strh.w	lr, [r3, #1064]	; 0x428
d0004fc4:	f8c3 242c 	str.w	r2, [r3, #1068]	; 0x42c
d0004fc8:	f8df e2bc 	ldr.w	lr, [pc, #700]	; d0005288 <ShowDefaultHomeConfigPage+0x3e8>
d0004fcc:	f8c3 17bc 	str.w	r1, [r3, #1980]	; 0x7bc
d0004fd0:	4aa5      	ldr	r2, [pc, #660]	; (d0005268 <ShowDefaultHomeConfigPage+0x3c8>)
d0004fd2:	f8c3 e774 	str.w	lr, [r3, #1908]	; 0x774
d0004fd6:	f8a3 a304 	strh.w	sl, [r3, #772]	; 0x304
d0004fda:	f883 7346 	strb.w	r7, [r3, #838]	; 0x346
d0004fde:	f883 7392 	strb.w	r7, [r3, #914]	; 0x392
d0004fe2:	f8a3 a39c 	strh.w	sl, [r3, #924]	; 0x39c
d0004fe6:	f883 73de 	strb.w	r7, [r3, #990]	; 0x3de
d0004fea:	f883 742a 	strb.w	r7, [r3, #1066]	; 0x42a
d0004fee:	f8a3 a434 	strh.w	sl, [r3, #1076]	; 0x434
d0004ff2:	f8a3 83dc 	strh.w	r8, [r3, #988]	; 0x3dc
d0004ff6:	f04f 0810 	mov.w	r8, #16
d0004ffa:	f883 b76e 	strb.w	fp, [r3, #1902]	; 0x76e
d0004ffe:	f883 5780 	strb.w	r5, [r3, #1920]	; 0x780
d0005002:	4c9a      	ldr	r4, [pc, #616]	; (d000526c <ShowDefaultHomeConfigPage+0x3cc>)
d0005004:	e8bc 0003 	ldmia.w	ip!, {r0, r1}
d0005008:	f8c3 0778 	str.w	r0, [r3, #1912]	; 0x778
d000500c:	f8c3 177c 	str.w	r1, [r3, #1916]	; 0x77c
d0005010:	f8c3 e7c0 	str.w	lr, [r3, #1984]	; 0x7c0
d0005014:	f883 b7ba 	strb.w	fp, [r3, #1978]	; 0x7ba
d0005018:	f883 57cc 	strb.w	r5, [r3, #1996]	; 0x7cc
d000501c:	f8a3 97b8 	strh.w	r9, [r3, #1976]	; 0x7b8
d0005020:	f8df 9268 	ldr.w	r9, [pc, #616]	; d000528c <ShowDefaultHomeConfigPage+0x3ec>
d0005024:	ca03      	ldmia	r2!, {r0, r1}
d0005026:	f8c3 17c8 	str.w	r1, [r3, #1992]	; 0x7c8
d000502a:	f8c3 07c4 	str.w	r0, [r3, #1988]	; 0x7c4
d000502e:	f7fb f8c1 	bl	d00001b4 <CaptureDrawBuffer>
d0005032:	f7fb f8cb 	bl	d00001cc <SetDrawToBackLayer>
d0005036:	f8d4 10f8 	ldr.w	r1, [r4, #248]	; 0xf8
d000503a:	f04f 0c03 	mov.w	ip, #3
d000503e:	f04f 0e05 	mov.w	lr, #5
d0005042:	4628      	mov	r0, r5
d0005044:	2387      	movs	r3, #135	; 0x87
d0005046:	f881 c000 	strb.w	ip, [r1]
d000504a:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d000504e:	f8d4 c0f8 	ldr.w	ip, [r4, #248]	; 0xf8
d0005052:	211d      	movs	r1, #29
d0005054:	f88c e000 	strb.w	lr, [ip]
d0005058:	f8d4 b13c 	ldr.w	fp, [r4, #316]	; 0x13c
d000505c:	47d8      	blx	fp
d000505e:	f8d4 10f8 	ldr.w	r1, [r4, #248]	; 0xf8
d0005062:	231d      	movs	r3, #29
d0005064:	227e      	movs	r2, #126	; 0x7e
d0005066:	700e      	strb	r6, [r1, #0]
d0005068:	2050      	movs	r0, #80	; 0x50
d000506a:	f8d4 b124 	ldr.w	fp, [r4, #292]	; 0x124
d000506e:	4619      	mov	r1, r3
d0005070:	47d8      	blx	fp
d0005072:	2250      	movs	r2, #80	; 0x50
d0005074:	f8d4 b124 	ldr.w	fp, [r4, #292]	; 0x124
d0005078:	2334      	movs	r3, #52	; 0x34
d000507a:	4610      	mov	r0, r2
d000507c:	211d      	movs	r1, #29
d000507e:	47d8      	blx	fp
d0005080:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d0005084:	2280      	movs	r2, #128	; 0x80
d0005086:	f04f 0004 	mov.w	r0, #4
d000508a:	4651      	mov	r1, sl
d000508c:	7018      	strb	r0, [r3, #0]
d000508e:	4610      	mov	r0, r2
d0005090:	f8d4 b124 	ldr.w	fp, [r4, #292]	; 0x124
d0005094:	2336      	movs	r3, #54	; 0x36
d0005096:	47d8      	blx	fp
d0005098:	2336      	movs	r3, #54	; 0x36
d000509a:	f8d4 b124 	ldr.w	fp, [r4, #292]	; 0x124
d000509e:	2280      	movs	r2, #128	; 0x80
d00050a0:	4619      	mov	r1, r3
d00050a2:	2052      	movs	r0, #82	; 0x52
d00050a4:	47d8      	blx	fp
d00050a6:	eb0d 0c07 	add.w	ip, sp, r7
d00050aa:	4b71      	ldr	r3, [pc, #452]	; (d0005270 <ShowDefaultHomeConfigPage+0x3d0>)
d00050ac:	4649      	mov	r1, r9
d00050ae:	4a71      	ldr	r2, [pc, #452]	; (d0005274 <ShowDefaultHomeConfigPage+0x3d4>)
d00050b0:	4660      	mov	r0, ip
d00050b2:	5ad2      	ldrh	r2, [r2, r3]
d00050b4:	f000 fe3e 	bl	d0005d34 <siprintf>
d00050b8:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d00050bc:	f04f 0e05 	mov.w	lr, #5
d00050c0:	eb0d 0207 	add.w	r2, sp, r7
d00050c4:	f883 8000 	strb.w	r8, [r3]
d00050c8:	2123      	movs	r1, #35	; 0x23
d00050ca:	f8d4 30fc 	ldr.w	r3, [r4, #252]	; 0xfc
d00050ce:	2058      	movs	r0, #88	; 0x58
d00050d0:	f883 e000 	strb.w	lr, [r3]
d00050d4:	f8d4 314c 	ldr.w	r3, [r4, #332]	; 0x14c
d00050d8:	4798      	blx	r3
d00050da:	f8d4 10f8 	ldr.w	r1, [r4, #248]	; 0xf8
d00050de:	2338      	movs	r3, #56	; 0x38
d00050e0:	227e      	movs	r2, #126	; 0x7e
d00050e2:	700e      	strb	r6, [r1, #0]
d00050e4:	2050      	movs	r0, #80	; 0x50
d00050e6:	f8d4 b124 	ldr.w	fp, [r4, #292]	; 0x124
d00050ea:	4619      	mov	r1, r3
d00050ec:	47d8      	blx	fp
d00050ee:	2250      	movs	r2, #80	; 0x50
d00050f0:	f8d4 b124 	ldr.w	fp, [r4, #292]	; 0x124
d00050f4:	234f      	movs	r3, #79	; 0x4f
d00050f6:	4610      	mov	r0, r2
d00050f8:	2138      	movs	r1, #56	; 0x38
d00050fa:	47d8      	blx	fp
d00050fc:	f8d4 10f8 	ldr.w	r1, [r4, #248]	; 0xf8
d0005100:	2280      	movs	r2, #128	; 0x80
d0005102:	f04f 0004 	mov.w	r0, #4
d0005106:	2351      	movs	r3, #81	; 0x51
d0005108:	7008      	strb	r0, [r1, #0]
d000510a:	4610      	mov	r0, r2
d000510c:	f8d4 b124 	ldr.w	fp, [r4, #292]	; 0x124
d0005110:	213a      	movs	r1, #58	; 0x3a
d0005112:	47d8      	blx	fp
d0005114:	2351      	movs	r3, #81	; 0x51
d0005116:	f8d4 b124 	ldr.w	fp, [r4, #292]	; 0x124
d000511a:	2280      	movs	r2, #128	; 0x80
d000511c:	4619      	mov	r1, r3
d000511e:	2052      	movs	r0, #82	; 0x52
d0005120:	47d8      	blx	fp
d0005122:	eb0d 0307 	add.w	r3, sp, r7
d0005126:	462a      	mov	r2, r5
d0005128:	4649      	mov	r1, r9
d000512a:	4618      	mov	r0, r3
d000512c:	f000 fe02 	bl	d0005d34 <siprintf>
d0005130:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d0005134:	f04f 0e05 	mov.w	lr, #5
d0005138:	eb0d 0207 	add.w	r2, sp, r7
d000513c:	f883 8000 	strb.w	r8, [r3]
d0005140:	213e      	movs	r1, #62	; 0x3e
d0005142:	f8d4 30fc 	ldr.w	r3, [r4, #252]	; 0xfc
d0005146:	2058      	movs	r0, #88	; 0x58
d0005148:	f883 e000 	strb.w	lr, [r3]
d000514c:	f8d4 314c 	ldr.w	r3, [r4, #332]	; 0x14c
d0005150:	4798      	blx	r3
d0005152:	f8d4 10f8 	ldr.w	r1, [r4, #248]	; 0xf8
d0005156:	2353      	movs	r3, #83	; 0x53
d0005158:	227e      	movs	r2, #126	; 0x7e
d000515a:	700e      	strb	r6, [r1, #0]
d000515c:	2050      	movs	r0, #80	; 0x50
d000515e:	f8d4 b124 	ldr.w	fp, [r4, #292]	; 0x124
d0005162:	4619      	mov	r1, r3
d0005164:	47d8      	blx	fp
d0005166:	2250      	movs	r2, #80	; 0x50
d0005168:	f8d4 b124 	ldr.w	fp, [r4, #292]	; 0x124
d000516c:	236a      	movs	r3, #106	; 0x6a
d000516e:	4610      	mov	r0, r2
d0005170:	2153      	movs	r1, #83	; 0x53
d0005172:	47d8      	blx	fp
d0005174:	f8d4 10f8 	ldr.w	r1, [r4, #248]	; 0xf8
d0005178:	2280      	movs	r2, #128	; 0x80
d000517a:	f04f 0004 	mov.w	r0, #4
d000517e:	236c      	movs	r3, #108	; 0x6c
d0005180:	7008      	strb	r0, [r1, #0]
d0005182:	4610      	mov	r0, r2
d0005184:	f8d4 b124 	ldr.w	fp, [r4, #292]	; 0x124
d0005188:	2155      	movs	r1, #85	; 0x55
d000518a:	47d8      	blx	fp
d000518c:	236c      	movs	r3, #108	; 0x6c
d000518e:	f8d4 b124 	ldr.w	fp, [r4, #292]	; 0x124
d0005192:	2280      	movs	r2, #128	; 0x80
d0005194:	4619      	mov	r1, r3
d0005196:	2052      	movs	r0, #82	; 0x52
d0005198:	47d8      	blx	fp
d000519a:	f8d4 10f8 	ldr.w	r1, [r4, #248]	; 0xf8
d000519e:	236e      	movs	r3, #110	; 0x6e
d00051a0:	227e      	movs	r2, #126	; 0x7e
d00051a2:	700e      	strb	r6, [r1, #0]
d00051a4:	2050      	movs	r0, #80	; 0x50
d00051a6:	f8d4 b124 	ldr.w	fp, [r4, #292]	; 0x124
d00051aa:	4619      	mov	r1, r3
d00051ac:	47d8      	blx	fp
d00051ae:	2250      	movs	r2, #80	; 0x50
d00051b0:	f8d4 b124 	ldr.w	fp, [r4, #292]	; 0x124
d00051b4:	2385      	movs	r3, #133	; 0x85
d00051b6:	4610      	mov	r0, r2
d00051b8:	216e      	movs	r1, #110	; 0x6e
d00051ba:	47d8      	blx	fp
d00051bc:	f8d4 10f8 	ldr.w	r1, [r4, #248]	; 0xf8
d00051c0:	2280      	movs	r2, #128	; 0x80
d00051c2:	f04f 0004 	mov.w	r0, #4
d00051c6:	2387      	movs	r3, #135	; 0x87
d00051c8:	7008      	strb	r0, [r1, #0]
d00051ca:	4610      	mov	r0, r2
d00051cc:	f8d4 b124 	ldr.w	fp, [r4, #292]	; 0x124
d00051d0:	2170      	movs	r1, #112	; 0x70
d00051d2:	47d8      	blx	fp
d00051d4:	2387      	movs	r3, #135	; 0x87
d00051d6:	f8d4 b124 	ldr.w	fp, [r4, #292]	; 0x124
d00051da:	2280      	movs	r2, #128	; 0x80
d00051dc:	4619      	mov	r1, r3
d00051de:	2052      	movs	r0, #82	; 0x52
d00051e0:	47d8      	blx	fp
d00051e2:	eb0d 0207 	add.w	r2, sp, r7
d00051e6:	4b24      	ldr	r3, [pc, #144]	; (d0005278 <ShowDefaultHomeConfigPage+0x3d8>)
d00051e8:	4649      	mov	r1, r9
d00051ea:	4610      	mov	r0, r2
d00051ec:	f04f 0b05 	mov.w	fp, #5
d00051f0:	781a      	ldrb	r2, [r3, #0]
d00051f2:	f000 fd9f 	bl	d0005d34 <siprintf>
d00051f6:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d00051fa:	eb0d 0207 	add.w	r2, sp, r7
d00051fe:	2174      	movs	r1, #116	; 0x74
d0005200:	f883 8000 	strb.w	r8, [r3]
d0005204:	2058      	movs	r0, #88	; 0x58
d0005206:	f8d4 30fc 	ldr.w	r3, [r4, #252]	; 0xfc
d000520a:	f8df 8084 	ldr.w	r8, [pc, #132]	; d0005290 <ShowDefaultHomeConfigPage+0x3f0>
d000520e:	f883 b000 	strb.w	fp, [r3]
d0005212:	f8d4 314c 	ldr.w	r3, [r4, #332]	; 0x14c
d0005216:	4798      	blx	r3
d0005218:	f8d4 20f8 	ldr.w	r2, [r4, #248]	; 0xf8
d000521c:	2338      	movs	r3, #56	; 0x38
d000521e:	4628      	mov	r0, r5
d0005220:	7016      	strb	r6, [r2, #0]
d0005222:	224c      	movs	r2, #76	; 0x4c
d0005224:	f8d4 9124 	ldr.w	r9, [r4, #292]	; 0x124
d0005228:	4619      	mov	r1, r3
d000522a:	47c8      	blx	r9
d000522c:	f8d4 9124 	ldr.w	r9, [r4, #292]	; 0x124
d0005230:	462a      	mov	r2, r5
d0005232:	4628      	mov	r0, r5
d0005234:	236a      	movs	r3, #106	; 0x6a
d0005236:	2138      	movs	r1, #56	; 0x38
d0005238:	47c8      	blx	r9
d000523a:	f04f 0504 	mov.w	r5, #4
d000523e:	f8d4 10f8 	ldr.w	r1, [r4, #248]	; 0xf8
d0005242:	224e      	movs	r2, #78	; 0x4e
d0005244:	236c      	movs	r3, #108	; 0x6c
d0005246:	700d      	strb	r5, [r1, #0]
d0005248:	4610      	mov	r0, r2
d000524a:	f8d4 9124 	ldr.w	r9, [r4, #292]	; 0x124
d000524e:	e021      	b.n	d0005294 <ShowDefaultHomeConfigPage+0x3f4>
d0005250:	d0251814 	.word	0xd0251814
d0005254:	00190018 	.word	0x00190018
d0005258:	00380082 	.word	0x00380082
d000525c:	0038009c 	.word	0x0038009c
d0005260:	00530082 	.word	0x00530082
d0005264:	006e0082 	.word	0x006e0082
d0005268:	d0007944 	.word	0xd0007944
d000526c:	2001f000 	.word	0x2001f000
d0005270:	00020376 	.word	0x00020376
d0005274:	d00311e0 	.word	0xd00311e0
d0005278:	d000eff8 	.word	0xd000eff8
d000527c:	d0007938 	.word	0xd0007938
d0005280:	001d0082 	.word	0x001d0082
d0005284:	001d009c 	.word	0x001d009c
d0005288:	0019004e 	.word	0x0019004e
d000528c:	d00078c4 	.word	0xd00078c4
d0005290:	d000795c 	.word	0xd000795c
d0005294:	213a      	movs	r1, #58	; 0x3a
d0005296:	47c8      	blx	r9
d0005298:	236c      	movs	r3, #108	; 0x6c
d000529a:	f8d4 9124 	ldr.w	r9, [r4, #292]	; 0x124
d000529e:	224e      	movs	r2, #78	; 0x4e
d00052a0:	4619      	mov	r1, r3
d00052a2:	2002      	movs	r0, #2
d00052a4:	47c8      	blx	r9
d00052a6:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d00052aa:	4a33      	ldr	r2, [pc, #204]	; (d0005378 <ShowDefaultHomeConfigPage+0x4d8>)
d00052ac:	2141      	movs	r1, #65	; 0x41
d00052ae:	701d      	strb	r5, [r3, #0]
d00052b0:	200a      	movs	r0, #10
d00052b2:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d00052b6:	4798      	blx	r3
d00052b8:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d00052bc:	4638      	mov	r0, r7
d00052be:	4a2e      	ldr	r2, [pc, #184]	; (d0005378 <ShowDefaultHomeConfigPage+0x4d8>)
d00052c0:	701e      	strb	r6, [r3, #0]
d00052c2:	213f      	movs	r1, #63	; 0x3f
d00052c4:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d00052c8:	4798      	blx	r3
d00052ca:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d00052ce:	4642      	mov	r2, r8
d00052d0:	2159      	movs	r1, #89	; 0x59
d00052d2:	701d      	strb	r5, [r3, #0]
d00052d4:	200a      	movs	r0, #10
d00052d6:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d00052da:	4798      	blx	r3
d00052dc:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d00052e0:	4642      	mov	r2, r8
d00052e2:	4638      	mov	r0, r7
d00052e4:	701e      	strb	r6, [r3, #0]
d00052e6:	2157      	movs	r1, #87	; 0x57
d00052e8:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d00052ec:	4798      	blx	r3
d00052ee:	f8d4 10f8 	ldr.w	r1, [r4, #248]	; 0xf8
d00052f2:	2387      	movs	r3, #135	; 0x87
d00052f4:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00052f8:	f881 b000 	strb.w	fp, [r1]
d00052fc:	20b6      	movs	r0, #182	; 0xb6
d00052fe:	f8d4 713c 	ldr.w	r7, [r4, #316]	; 0x13c
d0005302:	211d      	movs	r1, #29
d0005304:	47b8      	blx	r7
d0005306:	f8d4 10f8 	ldr.w	r1, [r4, #248]	; 0xf8
d000530a:	231d      	movs	r3, #29
d000530c:	f44f 72ee 	mov.w	r2, #476	; 0x1dc
d0005310:	700e      	strb	r6, [r1, #0]
d0005312:	20b6      	movs	r0, #182	; 0xb6
d0005314:	f8d4 6124 	ldr.w	r6, [r4, #292]	; 0x124
d0005318:	4619      	mov	r1, r3
d000531a:	47b0      	blx	r6
d000531c:	22b6      	movs	r2, #182	; 0xb6
d000531e:	f8d4 6124 	ldr.w	r6, [r4, #292]	; 0x124
d0005322:	2385      	movs	r3, #133	; 0x85
d0005324:	4610      	mov	r0, r2
d0005326:	211d      	movs	r1, #29
d0005328:	47b0      	blx	r6
d000532a:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d000532e:	f44f 72ef 	mov.w	r2, #478	; 0x1de
d0005332:	4651      	mov	r1, sl
d0005334:	701d      	strb	r5, [r3, #0]
d0005336:	2387      	movs	r3, #135	; 0x87
d0005338:	f8d4 5124 	ldr.w	r5, [r4, #292]	; 0x124
d000533c:	4610      	mov	r0, r2
d000533e:	47a8      	blx	r5
d0005340:	2387      	movs	r3, #135	; 0x87
d0005342:	f8d4 5124 	ldr.w	r5, [r4, #292]	; 0x124
d0005346:	f44f 72ef 	mov.w	r2, #478	; 0x1de
d000534a:	4619      	mov	r1, r3
d000534c:	20b8      	movs	r0, #184	; 0xb8
d000534e:	47a8      	blx	r5
d0005350:	4b0a      	ldr	r3, [pc, #40]	; (d000537c <ShowDefaultHomeConfigPage+0x4dc>)
d0005352:	4651      	mov	r1, sl
d0005354:	f44f 7292 	mov.w	r2, #292	; 0x124
d0005358:	f8d4 4154 	ldr.w	r4, [r4, #340]	; 0x154
d000535c:	20b8      	movs	r0, #184	; 0xb8
d000535e:	9300      	str	r3, [sp, #0]
d0005360:	2366      	movs	r3, #102	; 0x66
d0005362:	47a0      	blx	r4
d0005364:	f7fa ff44 	bl	d00001f0 <ReleaseDrawBuffer>
d0005368:	f7fb fcde 	bl	d0000d28 <ShowSongLength>
d000536c:	f7ff fd58 	bl	d0004e20 <EnableMainWindowButtons>
d0005370:	b005      	add	sp, #20
d0005372:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0005376:	bf00      	nop
d0005378:	d0007950 	.word	0xd0007950
d000537c:	d000796c 	.word	0xd000796c

d0005380 <RenderSampleIDEdit>:
d0005380:	b530      	push	{r4, r5, lr}
d0005382:	b083      	sub	sp, #12
d0005384:	2410      	movs	r4, #16
d0005386:	f7fa ff15 	bl	d00001b4 <CaptureDrawBuffer>
d000538a:	2505      	movs	r5, #5
d000538c:	f7fa ff1e 	bl	d00001cc <SetDrawToBackLayer>
d0005390:	4b0f      	ldr	r3, [pc, #60]	; (d00053d0 <RenderSampleIDEdit+0x50>)
d0005392:	4910      	ldr	r1, [pc, #64]	; (d00053d4 <RenderSampleIDEdit+0x54>)
d0005394:	4668      	mov	r0, sp
d0005396:	781a      	ldrb	r2, [r3, #0]
d0005398:	f000 fccc 	bl	d0005d34 <siprintf>
d000539c:	4b0e      	ldr	r3, [pc, #56]	; (d00053d8 <RenderSampleIDEdit+0x58>)
d000539e:	466a      	mov	r2, sp
d00053a0:	2174      	movs	r1, #116	; 0x74
d00053a2:	f8d3 00f8 	ldr.w	r0, [r3, #248]	; 0xf8
d00053a6:	7004      	strb	r4, [r0, #0]
d00053a8:	2058      	movs	r0, #88	; 0x58
d00053aa:	f8d3 40fc 	ldr.w	r4, [r3, #252]	; 0xfc
d00053ae:	7025      	strb	r5, [r4, #0]
d00053b0:	f8d3 314c 	ldr.w	r3, [r3, #332]	; 0x14c
d00053b4:	4798      	blx	r3
d00053b6:	f7fa ff1b 	bl	d00001f0 <ReleaseDrawBuffer>
d00053ba:	4b08      	ldr	r3, [pc, #32]	; (d00053dc <RenderSampleIDEdit+0x5c>)
d00053bc:	781b      	ldrb	r3, [r3, #0]
d00053be:	2b02      	cmp	r3, #2
d00053c0:	d001      	beq.n	d00053c6 <RenderSampleIDEdit+0x46>
d00053c2:	b003      	add	sp, #12
d00053c4:	bd30      	pop	{r4, r5, pc}
d00053c6:	f7fe fe7b 	bl	d00040c0 <RenderSampleIDEditor>
d00053ca:	b003      	add	sp, #12
d00053cc:	bd30      	pop	{r4, r5, pc}
d00053ce:	bf00      	nop
d00053d0:	d000eff8 	.word	0xd000eff8
d00053d4:	d00078c4 	.word	0xd00078c4
d00053d8:	2001f000 	.word	0x2001f000
d00053dc:	d000f04c 	.word	0xd000f04c

d00053e0 <SampleIDEdit_ChangeVolume>:
d00053e0:	4b0a      	ldr	r3, [pc, #40]	; (d000540c <SampleIDEdit_ChangeVolume+0x2c>)
d00053e2:	781b      	ldrb	r3, [r3, #0]
d00053e4:	2b02      	cmp	r3, #2
d00053e6:	d000      	beq.n	d00053ea <SampleIDEdit_ChangeVolume+0xa>
d00053e8:	4770      	bx	lr
d00053ea:	4b09      	ldr	r3, [pc, #36]	; (d0005410 <SampleIDEdit_ChangeVolume+0x30>)
d00053ec:	4a09      	ldr	r2, [pc, #36]	; (d0005414 <SampleIDEdit_ChangeVolume+0x34>)
d00053ee:	781b      	ldrb	r3, [r3, #0]
d00053f0:	4909      	ldr	r1, [pc, #36]	; (d0005418 <SampleIDEdit_ChangeVolume+0x38>)
d00053f2:	3b01      	subs	r3, #1
d00053f4:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
d00053f8:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d00053fc:	5c5a      	ldrb	r2, [r3, r1]
d00053fe:	4410      	add	r0, r2
d0005400:	f380 0006 	usat	r0, #6, r0
d0005404:	5458      	strb	r0, [r3, r1]
d0005406:	f7fe be5b 	b.w	d00040c0 <RenderSampleIDEditor>
d000540a:	bf00      	nop
d000540c:	d000f04c 	.word	0xd000f04c
d0005410:	d000eff8 	.word	0xd000eff8
d0005414:	d00311e0 	.word	0xd00311e0
d0005418:	00020019 	.word	0x00020019

d000541c <SampleIDEdit_ChangeRepeat>:
d000541c:	4b11      	ldr	r3, [pc, #68]	; (d0005464 <SampleIDEdit_ChangeRepeat+0x48>)
d000541e:	781b      	ldrb	r3, [r3, #0]
d0005420:	2b02      	cmp	r3, #2
d0005422:	d000      	beq.n	d0005426 <SampleIDEdit_ChangeRepeat+0xa>
d0005424:	4770      	bx	lr
d0005426:	4a10      	ldr	r2, [pc, #64]	; (d0005468 <SampleIDEdit_ChangeRepeat+0x4c>)
d0005428:	4b10      	ldr	r3, [pc, #64]	; (d000546c <SampleIDEdit_ChangeRepeat+0x50>)
d000542a:	4911      	ldr	r1, [pc, #68]	; (d0005470 <SampleIDEdit_ChangeRepeat+0x54>)
d000542c:	b430      	push	{r4, r5}
d000542e:	7812      	ldrb	r2, [r2, #0]
d0005430:	4c10      	ldr	r4, [pc, #64]	; (d0005474 <SampleIDEdit_ChangeRepeat+0x58>)
d0005432:	3a01      	subs	r2, #1
d0005434:	4d10      	ldr	r5, [pc, #64]	; (d0005478 <SampleIDEdit_ChangeRepeat+0x5c>)
d0005436:	ebc2 02c2 	rsb	r2, r2, r2, lsl #3
d000543a:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d000543e:	591a      	ldr	r2, [r3, r4]
d0005440:	5859      	ldr	r1, [r3, r1]
d0005442:	4410      	add	r0, r2
d0005444:	595a      	ldr	r2, [r3, r5]
d0005446:	3902      	subs	r1, #2
d0005448:	3a02      	subs	r2, #2
d000544a:	4288      	cmp	r0, r1
d000544c:	bf28      	it	cs
d000544e:	4608      	movcs	r0, r1
d0005450:	4290      	cmp	r0, r2
d0005452:	bf28      	it	cs
d0005454:	4610      	movcs	r0, r2
d0005456:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d000545a:	5118      	str	r0, [r3, r4]
d000545c:	bc30      	pop	{r4, r5}
d000545e:	f7fe be2f 	b.w	d00040c0 <RenderSampleIDEditor>
d0005462:	bf00      	nop
d0005464:	d000f04c 	.word	0xd000f04c
d0005468:	d000eff8 	.word	0xd000eff8
d000546c:	d00311e0 	.word	0xd00311e0
d0005470:	00020014 	.word	0x00020014
d0005474:	00020010 	.word	0x00020010
d0005478:	00020008 	.word	0x00020008

d000547c <SampleIDEdit_ChangeSampleLength>:
d000547c:	4b15      	ldr	r3, [pc, #84]	; (d00054d4 <SampleIDEdit_ChangeSampleLength+0x58>)
d000547e:	781b      	ldrb	r3, [r3, #0]
d0005480:	2b02      	cmp	r3, #2
d0005482:	d000      	beq.n	d0005486 <SampleIDEdit_ChangeSampleLength+0xa>
d0005484:	4770      	bx	lr
d0005486:	4b14      	ldr	r3, [pc, #80]	; (d00054d8 <SampleIDEdit_ChangeSampleLength+0x5c>)
d0005488:	4914      	ldr	r1, [pc, #80]	; (d00054dc <SampleIDEdit_ChangeSampleLength+0x60>)
d000548a:	b4f0      	push	{r4, r5, r6, r7}
d000548c:	781b      	ldrb	r3, [r3, #0]
d000548e:	4c14      	ldr	r4, [pc, #80]	; (d00054e0 <SampleIDEdit_ChangeSampleLength+0x64>)
d0005490:	3b01      	subs	r3, #1
d0005492:	4e14      	ldr	r6, [pc, #80]	; (d00054e4 <SampleIDEdit_ChangeSampleLength+0x68>)
d0005494:	ebc3 02c3 	rsb	r2, r3, r3, lsl #3
d0005498:	00dd      	lsls	r5, r3, #3
d000549a:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d000549e:	5917      	ldr	r7, [r2, r4]
d00054a0:	5994      	ldr	r4, [r2, r6]
d00054a2:	4438      	add	r0, r7
d00054a4:	f380 0010 	usat	r0, #16, r0
d00054a8:	4284      	cmp	r4, r0
d00054aa:	d901      	bls.n	d00054b0 <SampleIDEdit_ChangeSampleLength+0x34>
d00054ac:	4604      	mov	r4, r0
d00054ae:	5190      	str	r0, [r2, r6]
d00054b0:	1aea      	subs	r2, r5, r3
d00054b2:	4e0d      	ldr	r6, [pc, #52]	; (d00054e8 <SampleIDEdit_ChangeSampleLength+0x6c>)
d00054b4:	3c02      	subs	r4, #2
d00054b6:	1aeb      	subs	r3, r5, r3
d00054b8:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d00054bc:	eb01 0183 	add.w	r1, r1, r3, lsl #2
d00054c0:	5997      	ldr	r7, [r2, r6]
d00054c2:	42a7      	cmp	r7, r4
d00054c4:	bf88      	it	hi
d00054c6:	5194      	strhi	r4, [r2, r6]
d00054c8:	4a05      	ldr	r2, [pc, #20]	; (d00054e0 <SampleIDEdit_ChangeSampleLength+0x64>)
d00054ca:	bcf0      	pop	{r4, r5, r6, r7}
d00054cc:	5088      	str	r0, [r1, r2]
d00054ce:	f7fe bdf7 	b.w	d00040c0 <RenderSampleIDEditor>
d00054d2:	bf00      	nop
d00054d4:	d000f04c 	.word	0xd000f04c
d00054d8:	d000eff8 	.word	0xd000eff8
d00054dc:	d00311e0 	.word	0xd00311e0
d00054e0:	00020008 	.word	0x00020008
d00054e4:	00020014 	.word	0x00020014
d00054e8:	00020010 	.word	0x00020010

d00054ec <SampleIDEdit_ChangeLoopToggle>:
d00054ec:	4b09      	ldr	r3, [pc, #36]	; (d0005514 <SampleIDEdit_ChangeLoopToggle+0x28>)
d00054ee:	781b      	ldrb	r3, [r3, #0]
d00054f0:	2b02      	cmp	r3, #2
d00054f2:	d000      	beq.n	d00054f6 <SampleIDEdit_ChangeLoopToggle+0xa>
d00054f4:	4770      	bx	lr
d00054f6:	4b08      	ldr	r3, [pc, #32]	; (d0005518 <SampleIDEdit_ChangeLoopToggle+0x2c>)
d00054f8:	4a08      	ldr	r2, [pc, #32]	; (d000551c <SampleIDEdit_ChangeLoopToggle+0x30>)
d00054fa:	781b      	ldrb	r3, [r3, #0]
d00054fc:	4908      	ldr	r1, [pc, #32]	; (d0005520 <SampleIDEdit_ChangeLoopToggle+0x34>)
d00054fe:	3b01      	subs	r3, #1
d0005500:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
d0005504:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0005508:	5c5a      	ldrb	r2, [r3, r1]
d000550a:	f1c2 0201 	rsb	r2, r2, #1
d000550e:	545a      	strb	r2, [r3, r1]
d0005510:	f7fe bdd6 	b.w	d00040c0 <RenderSampleIDEditor>
d0005514:	d000f04c 	.word	0xd000f04c
d0005518:	d000eff8 	.word	0xd000eff8
d000551c:	d00311e0 	.word	0xd00311e0
d0005520:	00020018 	.word	0x00020018

d0005524 <SampleIDEdit_ChangeRepeatTo>:
d0005524:	4b1b      	ldr	r3, [pc, #108]	; (d0005594 <SampleIDEdit_ChangeRepeatTo+0x70>)
d0005526:	781b      	ldrb	r3, [r3, #0]
d0005528:	2b02      	cmp	r3, #2
d000552a:	d000      	beq.n	d000552e <SampleIDEdit_ChangeRepeatTo+0xa>
d000552c:	4770      	bx	lr
d000552e:	4b1a      	ldr	r3, [pc, #104]	; (d0005598 <SampleIDEdit_ChangeRepeatTo+0x74>)
d0005530:	2800      	cmp	r0, #0
d0005532:	4a1a      	ldr	r2, [pc, #104]	; (d000559c <SampleIDEdit_ChangeRepeatTo+0x78>)
d0005534:	b470      	push	{r4, r5, r6}
d0005536:	781b      	ldrb	r3, [r3, #0]
d0005538:	4d19      	ldr	r5, [pc, #100]	; (d00055a0 <SampleIDEdit_ChangeRepeatTo+0x7c>)
d000553a:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
d000553e:	ebc3 01c3 	rsb	r1, r3, r3, lsl #3
d0005542:	ea4f 04c3 	mov.w	r4, r3, lsl #3
d0005546:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d000554a:	594d      	ldr	r5, [r1, r5]
d000554c:	dd00      	ble.n	d0005550 <SampleIDEdit_ChangeRepeatTo+0x2c>
d000554e:	b1e5      	cbz	r5, d000558a <SampleIDEdit_ChangeRepeatTo+0x66>
d0005550:	1ae1      	subs	r1, r4, r3
d0005552:	4e14      	ldr	r6, [pc, #80]	; (d00055a4 <SampleIDEdit_ChangeRepeatTo+0x80>)
d0005554:	4428      	add	r0, r5
d0005556:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d000555a:	598d      	ldr	r5, [r1, r6]
d000555c:	3502      	adds	r5, #2
d000555e:	1ae1      	subs	r1, r4, r3
d0005560:	4e11      	ldr	r6, [pc, #68]	; (d00055a8 <SampleIDEdit_ChangeRepeatTo+0x84>)
d0005562:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d0005566:	598e      	ldr	r6, [r1, r6]
d0005568:	42b0      	cmp	r0, r6
d000556a:	bfa8      	it	ge
d000556c:	4630      	movge	r0, r6
d000556e:	42a8      	cmp	r0, r5
d0005570:	da03      	bge.n	d000557a <SampleIDEdit_ChangeRepeatTo+0x56>
d0005572:	2500      	movs	r5, #0
d0005574:	4e0d      	ldr	r6, [pc, #52]	; (d00055ac <SampleIDEdit_ChangeRepeatTo+0x88>)
d0005576:	4628      	mov	r0, r5
d0005578:	558d      	strb	r5, [r1, r6]
d000557a:	1ae3      	subs	r3, r4, r3
d000557c:	4908      	ldr	r1, [pc, #32]	; (d00055a0 <SampleIDEdit_ChangeRepeatTo+0x7c>)
d000557e:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d0005582:	bc70      	pop	{r4, r5, r6}
d0005584:	5050      	str	r0, [r2, r1]
d0005586:	f7fe bd9b 	b.w	d00040c0 <RenderSampleIDEditor>
d000558a:	4806      	ldr	r0, [pc, #24]	; (d00055a4 <SampleIDEdit_ChangeRepeatTo+0x80>)
d000558c:	5808      	ldr	r0, [r1, r0]
d000558e:	3002      	adds	r0, #2
d0005590:	4605      	mov	r5, r0
d0005592:	e7e4      	b.n	d000555e <SampleIDEdit_ChangeRepeatTo+0x3a>
d0005594:	d000f04c 	.word	0xd000f04c
d0005598:	d000eff8 	.word	0xd000eff8
d000559c:	d00311e0 	.word	0xd00311e0
d00055a0:	00020014 	.word	0x00020014
d00055a4:	00020010 	.word	0x00020010
d00055a8:	00020008 	.word	0x00020008
d00055ac:	00020018 	.word	0x00020018

d00055b0 <UpdateChannelToggles>:
d00055b0:	b570      	push	{r4, r5, r6, lr}
d00055b2:	4d96      	ldr	r5, [pc, #600]	; (d000580c <UpdateChannelToggles+0x25c>)
d00055b4:	4c96      	ldr	r4, [pc, #600]	; (d0005810 <UpdateChannelToggles+0x260>)
d00055b6:	7828      	ldrb	r0, [r5, #0]
d00055b8:	2800      	cmp	r0, #0
d00055ba:	f000 8121 	beq.w	d0005800 <UpdateChannelToggles+0x250>
d00055be:	f641 36ff 	movw	r6, #7167	; 0x1bff
d00055c2:	2008      	movs	r0, #8
d00055c4:	2331      	movs	r3, #49	; 0x31
d00055c6:	4993      	ldr	r1, [pc, #588]	; (d0005814 <UpdateChannelToggles+0x264>)
d00055c8:	4a93      	ldr	r2, [pc, #588]	; (d0005818 <UpdateChannelToggles+0x268>)
d00055ca:	f8a4 6804 	strh.w	r6, [r4, #2052]	; 0x804
d00055ce:	f884 0806 	strb.w	r0, [r4, #2054]	; 0x806
d00055d2:	f8c4 1808 	str.w	r1, [r4, #2056]	; 0x808
d00055d6:	f8c4 280c 	str.w	r2, [r4, #2060]	; 0x80c
d00055da:	f8a4 3810 	strh.w	r3, [r4, #2064]	; 0x810
d00055de:	786b      	ldrb	r3, [r5, #1]
d00055e0:	2b00      	cmp	r3, #0
d00055e2:	f000 80f9 	beq.w	d00057d8 <UpdateChannelToggles+0x228>
d00055e6:	f641 42ff 	movw	r2, #7423	; 0x1cff
d00055ea:	2008      	movs	r0, #8
d00055ec:	498b      	ldr	r1, [pc, #556]	; (d000581c <UpdateChannelToggles+0x26c>)
d00055ee:	2332      	movs	r3, #50	; 0x32
d00055f0:	f8a4 2850 	strh.w	r2, [r4, #2128]	; 0x850
d00055f4:	4a88      	ldr	r2, [pc, #544]	; (d0005818 <UpdateChannelToggles+0x268>)
d00055f6:	f884 0852 	strb.w	r0, [r4, #2130]	; 0x852
d00055fa:	f8c4 1854 	str.w	r1, [r4, #2132]	; 0x854
d00055fe:	f8c4 2858 	str.w	r2, [r4, #2136]	; 0x858
d0005602:	f8a4 385c 	strh.w	r3, [r4, #2140]	; 0x85c
d0005606:	78ab      	ldrb	r3, [r5, #2]
d0005608:	2b00      	cmp	r3, #0
d000560a:	f000 80d1 	beq.w	d00057b0 <UpdateChannelToggles+0x200>
d000560e:	f641 52ff 	movw	r2, #7679	; 0x1dff
d0005612:	2008      	movs	r0, #8
d0005614:	4982      	ldr	r1, [pc, #520]	; (d0005820 <UpdateChannelToggles+0x270>)
d0005616:	2333      	movs	r3, #51	; 0x33
d0005618:	f8a4 289c 	strh.w	r2, [r4, #2204]	; 0x89c
d000561c:	4a7e      	ldr	r2, [pc, #504]	; (d0005818 <UpdateChannelToggles+0x268>)
d000561e:	f884 089e 	strb.w	r0, [r4, #2206]	; 0x89e
d0005622:	f8c4 18a0 	str.w	r1, [r4, #2208]	; 0x8a0
d0005626:	f8c4 28a4 	str.w	r2, [r4, #2212]	; 0x8a4
d000562a:	f8a4 38a8 	strh.w	r3, [r4, #2216]	; 0x8a8
d000562e:	78eb      	ldrb	r3, [r5, #3]
d0005630:	2b00      	cmp	r3, #0
d0005632:	f000 80a9 	beq.w	d0005788 <UpdateChannelToggles+0x1d8>
d0005636:	f641 62ff 	movw	r2, #7935	; 0x1eff
d000563a:	2008      	movs	r0, #8
d000563c:	4979      	ldr	r1, [pc, #484]	; (d0005824 <UpdateChannelToggles+0x274>)
d000563e:	2334      	movs	r3, #52	; 0x34
d0005640:	f8a4 28e8 	strh.w	r2, [r4, #2280]	; 0x8e8
d0005644:	4a74      	ldr	r2, [pc, #464]	; (d0005818 <UpdateChannelToggles+0x268>)
d0005646:	f884 08ea 	strb.w	r0, [r4, #2282]	; 0x8ea
d000564a:	f8c4 18ec 	str.w	r1, [r4, #2284]	; 0x8ec
d000564e:	f8c4 28f0 	str.w	r2, [r4, #2288]	; 0x8f0
d0005652:	f8a4 38f4 	strh.w	r3, [r4, #2292]	; 0x8f4
d0005656:	792b      	ldrb	r3, [r5, #4]
d0005658:	2b00      	cmp	r3, #0
d000565a:	f000 8081 	beq.w	d0005760 <UpdateChannelToggles+0x1b0>
d000565e:	f641 72ff 	movw	r2, #8191	; 0x1fff
d0005662:	2008      	movs	r0, #8
d0005664:	4970      	ldr	r1, [pc, #448]	; (d0005828 <UpdateChannelToggles+0x278>)
d0005666:	2335      	movs	r3, #53	; 0x35
d0005668:	f8a4 2934 	strh.w	r2, [r4, #2356]	; 0x934
d000566c:	4a6a      	ldr	r2, [pc, #424]	; (d0005818 <UpdateChannelToggles+0x268>)
d000566e:	f884 0936 	strb.w	r0, [r4, #2358]	; 0x936
d0005672:	f8c4 1938 	str.w	r1, [r4, #2360]	; 0x938
d0005676:	f8c4 293c 	str.w	r2, [r4, #2364]	; 0x93c
d000567a:	f8a4 3940 	strh.w	r3, [r4, #2368]	; 0x940
d000567e:	796b      	ldrb	r3, [r5, #5]
d0005680:	2b00      	cmp	r3, #0
d0005682:	d059      	beq.n	d0005738 <UpdateChannelToggles+0x188>
d0005684:	f242 02ff 	movw	r2, #8447	; 0x20ff
d0005688:	2008      	movs	r0, #8
d000568a:	4968      	ldr	r1, [pc, #416]	; (d000582c <UpdateChannelToggles+0x27c>)
d000568c:	2336      	movs	r3, #54	; 0x36
d000568e:	f8a4 2980 	strh.w	r2, [r4, #2432]	; 0x980
d0005692:	4a61      	ldr	r2, [pc, #388]	; (d0005818 <UpdateChannelToggles+0x268>)
d0005694:	f884 0982 	strb.w	r0, [r4, #2434]	; 0x982
d0005698:	f8c4 1984 	str.w	r1, [r4, #2436]	; 0x984
d000569c:	f8c4 2988 	str.w	r2, [r4, #2440]	; 0x988
d00056a0:	f8a4 398c 	strh.w	r3, [r4, #2444]	; 0x98c
d00056a4:	79ab      	ldrb	r3, [r5, #6]
d00056a6:	b39b      	cbz	r3, d0005710 <UpdateChannelToggles+0x160>
d00056a8:	f242 12ff 	movw	r2, #8703	; 0x21ff
d00056ac:	2008      	movs	r0, #8
d00056ae:	4960      	ldr	r1, [pc, #384]	; (d0005830 <UpdateChannelToggles+0x280>)
d00056b0:	2337      	movs	r3, #55	; 0x37
d00056b2:	f8a4 29cc 	strh.w	r2, [r4, #2508]	; 0x9cc
d00056b6:	4a58      	ldr	r2, [pc, #352]	; (d0005818 <UpdateChannelToggles+0x268>)
d00056b8:	f884 09ce 	strb.w	r0, [r4, #2510]	; 0x9ce
d00056bc:	f8c4 19d0 	str.w	r1, [r4, #2512]	; 0x9d0
d00056c0:	f8c4 29d4 	str.w	r2, [r4, #2516]	; 0x9d4
d00056c4:	f8a4 39d8 	strh.w	r3, [r4, #2520]	; 0x9d8
d00056c8:	79eb      	ldrb	r3, [r5, #7]
d00056ca:	b1bb      	cbz	r3, d00056fc <UpdateChannelToggles+0x14c>
d00056cc:	f242 25ff 	movw	r5, #8959	; 0x22ff
d00056d0:	2008      	movs	r0, #8
d00056d2:	4958      	ldr	r1, [pc, #352]	; (d0005834 <UpdateChannelToggles+0x284>)
d00056d4:	2338      	movs	r3, #56	; 0x38
d00056d6:	4a50      	ldr	r2, [pc, #320]	; (d0005818 <UpdateChannelToggles+0x268>)
d00056d8:	f8a4 5a18 	strh.w	r5, [r4, #2584]	; 0xa18
d00056dc:	f884 0a1a 	strb.w	r0, [r4, #2586]	; 0xa1a
d00056e0:	f8c4 1a1c 	str.w	r1, [r4, #2588]	; 0xa1c
d00056e4:	f8c4 2a20 	str.w	r2, [r4, #2592]	; 0xa20
d00056e8:	f8a4 3a24 	strh.w	r3, [r4, #2596]	; 0xa24
d00056ec:	241b      	movs	r4, #27
d00056ee:	4620      	mov	r0, r4
d00056f0:	3401      	adds	r4, #1
d00056f2:	f7fe f97d 	bl	d00039f0 <guiRenderButton.constprop.0>
d00056f6:	2c23      	cmp	r4, #35	; 0x23
d00056f8:	d1f9      	bne.n	d00056ee <UpdateChannelToggles+0x13e>
d00056fa:	bd70      	pop	{r4, r5, r6, pc}
d00056fc:	2007      	movs	r0, #7
d00056fe:	f242 25ff 	movw	r5, #8959	; 0x22ff
d0005702:	f7fa fda3 	bl	d000024c <StopChannel>
d0005706:	2048      	movs	r0, #72	; 0x48
d0005708:	494a      	ldr	r1, [pc, #296]	; (d0005834 <UpdateChannelToggles+0x284>)
d000570a:	2338      	movs	r3, #56	; 0x38
d000570c:	4a42      	ldr	r2, [pc, #264]	; (d0005818 <UpdateChannelToggles+0x268>)
d000570e:	e7e3      	b.n	d00056d8 <UpdateChannelToggles+0x128>
d0005710:	2006      	movs	r0, #6
d0005712:	f242 16ff 	movw	r6, #8703	; 0x21ff
d0005716:	f7fa fd99 	bl	d000024c <StopChannel>
d000571a:	2048      	movs	r0, #72	; 0x48
d000571c:	4944      	ldr	r1, [pc, #272]	; (d0005830 <UpdateChannelToggles+0x280>)
d000571e:	2337      	movs	r3, #55	; 0x37
d0005720:	4a3d      	ldr	r2, [pc, #244]	; (d0005818 <UpdateChannelToggles+0x268>)
d0005722:	f8a4 69cc 	strh.w	r6, [r4, #2508]	; 0x9cc
d0005726:	f884 09ce 	strb.w	r0, [r4, #2510]	; 0x9ce
d000572a:	f8c4 19d0 	str.w	r1, [r4, #2512]	; 0x9d0
d000572e:	f8c4 29d4 	str.w	r2, [r4, #2516]	; 0x9d4
d0005732:	f8a4 39d8 	strh.w	r3, [r4, #2520]	; 0x9d8
d0005736:	e7c7      	b.n	d00056c8 <UpdateChannelToggles+0x118>
d0005738:	2005      	movs	r0, #5
d000573a:	f242 06ff 	movw	r6, #8447	; 0x20ff
d000573e:	f7fa fd85 	bl	d000024c <StopChannel>
d0005742:	2048      	movs	r0, #72	; 0x48
d0005744:	4939      	ldr	r1, [pc, #228]	; (d000582c <UpdateChannelToggles+0x27c>)
d0005746:	2336      	movs	r3, #54	; 0x36
d0005748:	4a33      	ldr	r2, [pc, #204]	; (d0005818 <UpdateChannelToggles+0x268>)
d000574a:	f8a4 6980 	strh.w	r6, [r4, #2432]	; 0x980
d000574e:	f884 0982 	strb.w	r0, [r4, #2434]	; 0x982
d0005752:	f8c4 1984 	str.w	r1, [r4, #2436]	; 0x984
d0005756:	f8c4 2988 	str.w	r2, [r4, #2440]	; 0x988
d000575a:	f8a4 398c 	strh.w	r3, [r4, #2444]	; 0x98c
d000575e:	e7a1      	b.n	d00056a4 <UpdateChannelToggles+0xf4>
d0005760:	2004      	movs	r0, #4
d0005762:	f641 76ff 	movw	r6, #8191	; 0x1fff
d0005766:	f7fa fd71 	bl	d000024c <StopChannel>
d000576a:	2048      	movs	r0, #72	; 0x48
d000576c:	492e      	ldr	r1, [pc, #184]	; (d0005828 <UpdateChannelToggles+0x278>)
d000576e:	2335      	movs	r3, #53	; 0x35
d0005770:	4a29      	ldr	r2, [pc, #164]	; (d0005818 <UpdateChannelToggles+0x268>)
d0005772:	f8a4 6934 	strh.w	r6, [r4, #2356]	; 0x934
d0005776:	f884 0936 	strb.w	r0, [r4, #2358]	; 0x936
d000577a:	f8c4 1938 	str.w	r1, [r4, #2360]	; 0x938
d000577e:	f8c4 293c 	str.w	r2, [r4, #2364]	; 0x93c
d0005782:	f8a4 3940 	strh.w	r3, [r4, #2368]	; 0x940
d0005786:	e77a      	b.n	d000567e <UpdateChannelToggles+0xce>
d0005788:	2003      	movs	r0, #3
d000578a:	f641 66ff 	movw	r6, #7935	; 0x1eff
d000578e:	f7fa fd5d 	bl	d000024c <StopChannel>
d0005792:	2048      	movs	r0, #72	; 0x48
d0005794:	4923      	ldr	r1, [pc, #140]	; (d0005824 <UpdateChannelToggles+0x274>)
d0005796:	2334      	movs	r3, #52	; 0x34
d0005798:	4a1f      	ldr	r2, [pc, #124]	; (d0005818 <UpdateChannelToggles+0x268>)
d000579a:	f8a4 68e8 	strh.w	r6, [r4, #2280]	; 0x8e8
d000579e:	f884 08ea 	strb.w	r0, [r4, #2282]	; 0x8ea
d00057a2:	f8c4 18ec 	str.w	r1, [r4, #2284]	; 0x8ec
d00057a6:	f8c4 28f0 	str.w	r2, [r4, #2288]	; 0x8f0
d00057aa:	f8a4 38f4 	strh.w	r3, [r4, #2292]	; 0x8f4
d00057ae:	e752      	b.n	d0005656 <UpdateChannelToggles+0xa6>
d00057b0:	2002      	movs	r0, #2
d00057b2:	f641 56ff 	movw	r6, #7679	; 0x1dff
d00057b6:	f7fa fd49 	bl	d000024c <StopChannel>
d00057ba:	2048      	movs	r0, #72	; 0x48
d00057bc:	4918      	ldr	r1, [pc, #96]	; (d0005820 <UpdateChannelToggles+0x270>)
d00057be:	2333      	movs	r3, #51	; 0x33
d00057c0:	4a15      	ldr	r2, [pc, #84]	; (d0005818 <UpdateChannelToggles+0x268>)
d00057c2:	f8a4 689c 	strh.w	r6, [r4, #2204]	; 0x89c
d00057c6:	f884 089e 	strb.w	r0, [r4, #2206]	; 0x89e
d00057ca:	f8c4 18a0 	str.w	r1, [r4, #2208]	; 0x8a0
d00057ce:	f8c4 28a4 	str.w	r2, [r4, #2212]	; 0x8a4
d00057d2:	f8a4 38a8 	strh.w	r3, [r4, #2216]	; 0x8a8
d00057d6:	e72a      	b.n	d000562e <UpdateChannelToggles+0x7e>
d00057d8:	2001      	movs	r0, #1
d00057da:	f641 46ff 	movw	r6, #7423	; 0x1cff
d00057de:	f7fa fd35 	bl	d000024c <StopChannel>
d00057e2:	2048      	movs	r0, #72	; 0x48
d00057e4:	490d      	ldr	r1, [pc, #52]	; (d000581c <UpdateChannelToggles+0x26c>)
d00057e6:	2332      	movs	r3, #50	; 0x32
d00057e8:	4a0b      	ldr	r2, [pc, #44]	; (d0005818 <UpdateChannelToggles+0x268>)
d00057ea:	f8a4 6850 	strh.w	r6, [r4, #2128]	; 0x850
d00057ee:	f884 0852 	strb.w	r0, [r4, #2130]	; 0x852
d00057f2:	f8c4 1854 	str.w	r1, [r4, #2132]	; 0x854
d00057f6:	f8c4 2858 	str.w	r2, [r4, #2136]	; 0x858
d00057fa:	f8a4 385c 	strh.w	r3, [r4, #2140]	; 0x85c
d00057fe:	e702      	b.n	d0005606 <UpdateChannelToggles+0x56>
d0005800:	f7fa fd24 	bl	d000024c <StopChannel>
d0005804:	f641 36ff 	movw	r6, #7167	; 0x1bff
d0005808:	2048      	movs	r0, #72	; 0x48
d000580a:	e6db      	b.n	d00055c4 <UpdateChannelToggles+0x14>
d000580c:	d000ef6c 	.word	0xd000ef6c
d0005810:	d0251814 	.word	0xd0251814
d0005814:	01050172 	.word	0x01050172
d0005818:	00190018 	.word	0x00190018
d000581c:	0105018c 	.word	0x0105018c
d0005820:	010501a6 	.word	0x010501a6
d0005824:	010501c0 	.word	0x010501c0
d0005828:	01200172 	.word	0x01200172
d000582c:	0120018c 	.word	0x0120018c
d0005830:	012001a6 	.word	0x012001a6
d0005834:	012001c0 	.word	0x012001c0

d0005838 <UpdateChannelOffset>:
d0005838:	b510      	push	{r4, lr}
d000583a:	b082      	sub	sp, #8
d000583c:	2410      	movs	r4, #16
d000583e:	f7fa fcb9 	bl	d00001b4 <CaptureDrawBuffer>
d0005842:	f7fa fcc3 	bl	d00001cc <SetDrawToBackLayer>
d0005846:	4b0e      	ldr	r3, [pc, #56]	; (d0005880 <UpdateChannelOffset+0x48>)
d0005848:	2105      	movs	r1, #5
d000584a:	4a0e      	ldr	r2, [pc, #56]	; (d0005884 <UpdateChannelOffset+0x4c>)
d000584c:	f8d3 00f8 	ldr.w	r0, [r3, #248]	; 0xf8
d0005850:	7004      	strb	r4, [r0, #0]
d0005852:	f8d3 30fc 	ldr.w	r3, [r3, #252]	; 0xfc
d0005856:	7019      	strb	r1, [r3, #0]
d0005858:	7813      	ldrb	r3, [r2, #0]
d000585a:	b96b      	cbnz	r3, d0005878 <UpdateChannelOffset+0x40>
d000585c:	4b0a      	ldr	r3, [pc, #40]	; (d0005888 <UpdateChannelOffset+0x50>)
d000585e:	9301      	str	r3, [sp, #4]
d0005860:	4b07      	ldr	r3, [pc, #28]	; (d0005880 <UpdateChannelOffset+0x48>)
d0005862:	aa01      	add	r2, sp, #4
d0005864:	2192      	movs	r1, #146	; 0x92
d0005866:	f44f 7087 	mov.w	r0, #270	; 0x10e
d000586a:	f8d3 314c 	ldr.w	r3, [r3, #332]	; 0x14c
d000586e:	4798      	blx	r3
d0005870:	f7fa fcbe 	bl	d00001f0 <ReleaseDrawBuffer>
d0005874:	b002      	add	sp, #8
d0005876:	bd10      	pop	{r4, pc}
d0005878:	4b04      	ldr	r3, [pc, #16]	; (d000588c <UpdateChannelOffset+0x54>)
d000587a:	9301      	str	r3, [sp, #4]
d000587c:	e7f0      	b.n	d0005860 <UpdateChannelOffset+0x28>
d000587e:	bf00      	nop
d0005880:	2001f000 	.word	0x2001f000
d0005884:	d000f040 	.word	0xd000f040
d0005888:	00342d31 	.word	0x00342d31
d000588c:	00382d35 	.word	0x00382d35

d0005890 <ConfigScreenUpdate>:
d0005890:	b570      	push	{r4, r5, r6, lr}
d0005892:	4c17      	ldr	r4, [pc, #92]	; (d00058f0 <ConfigScreenUpdate+0x60>)
d0005894:	b082      	sub	sp, #8
d0005896:	7823      	ldrb	r3, [r4, #0]
d0005898:	2b01      	cmp	r3, #1
d000589a:	d021      	beq.n	d00058e0 <ConfigScreenUpdate+0x50>
d000589c:	2b02      	cmp	r3, #2
d000589e:	d11d      	bne.n	d00058dc <ConfigScreenUpdate+0x4c>
d00058a0:	f7fa fc88 	bl	d00001b4 <CaptureDrawBuffer>
d00058a4:	2605      	movs	r6, #5
d00058a6:	f7fa fc91 	bl	d00001cc <SetDrawToBackLayer>
d00058aa:	4b12      	ldr	r3, [pc, #72]	; (d00058f4 <ConfigScreenUpdate+0x64>)
d00058ac:	4912      	ldr	r1, [pc, #72]	; (d00058f8 <ConfigScreenUpdate+0x68>)
d00058ae:	4668      	mov	r0, sp
d00058b0:	781a      	ldrb	r2, [r3, #0]
d00058b2:	f000 fa3f 	bl	d0005d34 <siprintf>
d00058b6:	4b11      	ldr	r3, [pc, #68]	; (d00058fc <ConfigScreenUpdate+0x6c>)
d00058b8:	2010      	movs	r0, #16
d00058ba:	466a      	mov	r2, sp
d00058bc:	f8d3 10f8 	ldr.w	r1, [r3, #248]	; 0xf8
d00058c0:	7008      	strb	r0, [r1, #0]
d00058c2:	2174      	movs	r1, #116	; 0x74
d00058c4:	f8d3 50fc 	ldr.w	r5, [r3, #252]	; 0xfc
d00058c8:	2058      	movs	r0, #88	; 0x58
d00058ca:	702e      	strb	r6, [r5, #0]
d00058cc:	f8d3 314c 	ldr.w	r3, [r3, #332]	; 0x14c
d00058d0:	4798      	blx	r3
d00058d2:	f7fa fc8d 	bl	d00001f0 <ReleaseDrawBuffer>
d00058d6:	7823      	ldrb	r3, [r4, #0]
d00058d8:	2b02      	cmp	r3, #2
d00058da:	d005      	beq.n	d00058e8 <ConfigScreenUpdate+0x58>
d00058dc:	b002      	add	sp, #8
d00058de:	bd70      	pop	{r4, r5, r6, pc}
d00058e0:	f7ff f846 	bl	d0004970 <RenderPatternPositionEditor>
d00058e4:	b002      	add	sp, #8
d00058e6:	bd70      	pop	{r4, r5, r6, pc}
d00058e8:	f7fe fbea 	bl	d00040c0 <RenderSampleIDEditor>
d00058ec:	e7f6      	b.n	d00058dc <ConfigScreenUpdate+0x4c>
d00058ee:	bf00      	nop
d00058f0:	d000f04c 	.word	0xd000f04c
d00058f4:	d000eff8 	.word	0xd000eff8
d00058f8:	d00078c4 	.word	0xd00078c4
d00058fc:	2001f000 	.word	0x2001f000

d0005900 <CloseConfigScreen>:
d0005900:	4917      	ldr	r1, [pc, #92]	; (d0005960 <CloseConfigScreen+0x60>)
d0005902:	780b      	ldrb	r3, [r1, #0]
d0005904:	2b02      	cmp	r3, #2
d0005906:	d004      	beq.n	d0005912 <CloseConfigScreen+0x12>
d0005908:	2b03      	cmp	r3, #3
d000590a:	d026      	beq.n	d000595a <CloseConfigScreen+0x5a>
d000590c:	2b01      	cmp	r3, #1
d000590e:	d000      	beq.n	d0005912 <CloseConfigScreen+0x12>
d0005910:	4770      	bx	lr
d0005912:	4b14      	ldr	r3, [pc, #80]	; (d0005964 <CloseConfigScreen+0x64>)
d0005914:	2214      	movs	r2, #20
d0005916:	2000      	movs	r0, #0
d0005918:	f883 2a66 	strb.w	r2, [r3, #2662]	; 0xa66
d000591c:	f883 2ab2 	strb.w	r2, [r3, #2738]	; 0xab2
d0005920:	f883 2afe 	strb.w	r2, [r3, #2814]	; 0xafe
d0005924:	f883 2b4a 	strb.w	r2, [r3, #2890]	; 0xb4a
d0005928:	f883 2b96 	strb.w	r2, [r3, #2966]	; 0xb96
d000592c:	f883 2be2 	strb.w	r2, [r3, #3042]	; 0xbe2
d0005930:	f883 2c2e 	strb.w	r2, [r3, #3118]	; 0xc2e
d0005934:	f883 2c7a 	strb.w	r2, [r3, #3194]	; 0xc7a
d0005938:	f883 2cc6 	strb.w	r2, [r3, #3270]	; 0xcc6
d000593c:	f883 2d12 	strb.w	r2, [r3, #3346]	; 0xd12
d0005940:	f883 2d5e 	strb.w	r2, [r3, #3422]	; 0xd5e
d0005944:	f883 2daa 	strb.w	r2, [r3, #3498]	; 0xdaa
d0005948:	f883 2df6 	strb.w	r2, [r3, #3574]	; 0xdf6
d000594c:	f883 2e42 	strb.w	r2, [r3, #3650]	; 0xe42
d0005950:	f883 2e8e 	strb.w	r2, [r3, #3726]	; 0xe8e
d0005954:	7008      	strb	r0, [r1, #0]
d0005956:	f7ff baa3 	b.w	d0004ea0 <ShowDefaultHomeConfigPage>
d000595a:	f7fb b83f 	b.w	d00009dc <CloseFileRequest>
d000595e:	bf00      	nop
d0005960:	d000f04c 	.word	0xd000f04c
d0005964:	d0251814 	.word	0xd0251814

d0005968 <memcpy>:
d0005968:	440a      	add	r2, r1
d000596a:	4291      	cmp	r1, r2
d000596c:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0005970:	d100      	bne.n	d0005974 <memcpy+0xc>
d0005972:	4770      	bx	lr
d0005974:	b510      	push	{r4, lr}
d0005976:	f811 4b01 	ldrb.w	r4, [r1], #1
d000597a:	f803 4f01 	strb.w	r4, [r3, #1]!
d000597e:	4291      	cmp	r1, r2
d0005980:	d1f9      	bne.n	d0005976 <memcpy+0xe>
d0005982:	bd10      	pop	{r4, pc}

d0005984 <memmove>:
d0005984:	4288      	cmp	r0, r1
d0005986:	b510      	push	{r4, lr}
d0005988:	eb01 0402 	add.w	r4, r1, r2
d000598c:	d902      	bls.n	d0005994 <memmove+0x10>
d000598e:	4284      	cmp	r4, r0
d0005990:	4623      	mov	r3, r4
d0005992:	d807      	bhi.n	d00059a4 <memmove+0x20>
d0005994:	1e43      	subs	r3, r0, #1
d0005996:	42a1      	cmp	r1, r4
d0005998:	d008      	beq.n	d00059ac <memmove+0x28>
d000599a:	f811 2b01 	ldrb.w	r2, [r1], #1
d000599e:	f803 2f01 	strb.w	r2, [r3, #1]!
d00059a2:	e7f8      	b.n	d0005996 <memmove+0x12>
d00059a4:	4402      	add	r2, r0
d00059a6:	4601      	mov	r1, r0
d00059a8:	428a      	cmp	r2, r1
d00059aa:	d100      	bne.n	d00059ae <memmove+0x2a>
d00059ac:	bd10      	pop	{r4, pc}
d00059ae:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d00059b2:	f802 4d01 	strb.w	r4, [r2, #-1]!
d00059b6:	e7f7      	b.n	d00059a8 <memmove+0x24>

d00059b8 <swapfunc>:
d00059b8:	2b02      	cmp	r3, #2
d00059ba:	b510      	push	{r4, lr}
d00059bc:	d00a      	beq.n	d00059d4 <swapfunc+0x1c>
d00059be:	0892      	lsrs	r2, r2, #2
d00059c0:	3a01      	subs	r2, #1
d00059c2:	6803      	ldr	r3, [r0, #0]
d00059c4:	680c      	ldr	r4, [r1, #0]
d00059c6:	f840 4b04 	str.w	r4, [r0], #4
d00059ca:	2a00      	cmp	r2, #0
d00059cc:	f841 3b04 	str.w	r3, [r1], #4
d00059d0:	dcf6      	bgt.n	d00059c0 <swapfunc+0x8>
d00059d2:	bd10      	pop	{r4, pc}
d00059d4:	4402      	add	r2, r0
d00059d6:	780c      	ldrb	r4, [r1, #0]
d00059d8:	7803      	ldrb	r3, [r0, #0]
d00059da:	f800 4b01 	strb.w	r4, [r0], #1
d00059de:	f801 3b01 	strb.w	r3, [r1], #1
d00059e2:	1a13      	subs	r3, r2, r0
d00059e4:	2b00      	cmp	r3, #0
d00059e6:	dcf6      	bgt.n	d00059d6 <swapfunc+0x1e>
d00059e8:	e7f3      	b.n	d00059d2 <swapfunc+0x1a>

d00059ea <med3.isra.0>:
d00059ea:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00059ec:	460f      	mov	r7, r1
d00059ee:	4614      	mov	r4, r2
d00059f0:	4606      	mov	r6, r0
d00059f2:	461d      	mov	r5, r3
d00059f4:	4798      	blx	r3
d00059f6:	2800      	cmp	r0, #0
d00059f8:	4621      	mov	r1, r4
d00059fa:	4638      	mov	r0, r7
d00059fc:	da0c      	bge.n	d0005a18 <med3.isra.0+0x2e>
d00059fe:	47a8      	blx	r5
d0005a00:	2800      	cmp	r0, #0
d0005a02:	da02      	bge.n	d0005a0a <med3.isra.0+0x20>
d0005a04:	463c      	mov	r4, r7
d0005a06:	4620      	mov	r0, r4
d0005a08:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0005a0a:	4621      	mov	r1, r4
d0005a0c:	4630      	mov	r0, r6
d0005a0e:	47a8      	blx	r5
d0005a10:	2800      	cmp	r0, #0
d0005a12:	dbf8      	blt.n	d0005a06 <med3.isra.0+0x1c>
d0005a14:	4634      	mov	r4, r6
d0005a16:	e7f6      	b.n	d0005a06 <med3.isra.0+0x1c>
d0005a18:	47a8      	blx	r5
d0005a1a:	2800      	cmp	r0, #0
d0005a1c:	dcf2      	bgt.n	d0005a04 <med3.isra.0+0x1a>
d0005a1e:	4621      	mov	r1, r4
d0005a20:	4630      	mov	r0, r6
d0005a22:	47a8      	blx	r5
d0005a24:	2800      	cmp	r0, #0
d0005a26:	daee      	bge.n	d0005a06 <med3.isra.0+0x1c>
d0005a28:	e7f4      	b.n	d0005a14 <med3.isra.0+0x2a>

d0005a2a <qsort>:
d0005a2a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0005a2e:	469a      	mov	sl, r3
d0005a30:	ea40 0302 	orr.w	r3, r0, r2
d0005a34:	079b      	lsls	r3, r3, #30
d0005a36:	b097      	sub	sp, #92	; 0x5c
d0005a38:	4606      	mov	r6, r0
d0005a3a:	4614      	mov	r4, r2
d0005a3c:	d11a      	bne.n	d0005a74 <qsort+0x4a>
d0005a3e:	f1b2 0804 	subs.w	r8, r2, #4
d0005a42:	bf18      	it	ne
d0005a44:	f04f 0801 	movne.w	r8, #1
d0005a48:	2300      	movs	r3, #0
d0005a4a:	9302      	str	r3, [sp, #8]
d0005a4c:	1933      	adds	r3, r6, r4
d0005a4e:	fb04 f701 	mul.w	r7, r4, r1
d0005a52:	9301      	str	r3, [sp, #4]
d0005a54:	2906      	cmp	r1, #6
d0005a56:	eb06 0307 	add.w	r3, r6, r7
d0005a5a:	9303      	str	r3, [sp, #12]
d0005a5c:	d82a      	bhi.n	d0005ab4 <qsort+0x8a>
d0005a5e:	9b01      	ldr	r3, [sp, #4]
d0005a60:	9a03      	ldr	r2, [sp, #12]
d0005a62:	4293      	cmp	r3, r2
d0005a64:	d310      	bcc.n	d0005a88 <qsort+0x5e>
d0005a66:	9b02      	ldr	r3, [sp, #8]
d0005a68:	2b00      	cmp	r3, #0
d0005a6a:	f040 811f 	bne.w	d0005cac <qsort+0x282>
d0005a6e:	b017      	add	sp, #92	; 0x5c
d0005a70:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0005a74:	f04f 0802 	mov.w	r8, #2
d0005a78:	e7e6      	b.n	d0005a48 <qsort+0x1e>
d0005a7a:	4643      	mov	r3, r8
d0005a7c:	4622      	mov	r2, r4
d0005a7e:	4639      	mov	r1, r7
d0005a80:	4628      	mov	r0, r5
d0005a82:	f7ff ff99 	bl	d00059b8 <swapfunc>
d0005a86:	e00e      	b.n	d0005aa6 <qsort+0x7c>
d0005a88:	9d01      	ldr	r5, [sp, #4]
d0005a8a:	e00d      	b.n	d0005aa8 <qsort+0x7e>
d0005a8c:	1b2f      	subs	r7, r5, r4
d0005a8e:	4629      	mov	r1, r5
d0005a90:	4638      	mov	r0, r7
d0005a92:	47d0      	blx	sl
d0005a94:	2800      	cmp	r0, #0
d0005a96:	dd09      	ble.n	d0005aac <qsort+0x82>
d0005a98:	f1b8 0f00 	cmp.w	r8, #0
d0005a9c:	d1ed      	bne.n	d0005a7a <qsort+0x50>
d0005a9e:	682b      	ldr	r3, [r5, #0]
d0005aa0:	683a      	ldr	r2, [r7, #0]
d0005aa2:	602a      	str	r2, [r5, #0]
d0005aa4:	603b      	str	r3, [r7, #0]
d0005aa6:	463d      	mov	r5, r7
d0005aa8:	42ae      	cmp	r6, r5
d0005aaa:	d3ef      	bcc.n	d0005a8c <qsort+0x62>
d0005aac:	9b01      	ldr	r3, [sp, #4]
d0005aae:	4423      	add	r3, r4
d0005ab0:	9301      	str	r3, [sp, #4]
d0005ab2:	e7d4      	b.n	d0005a5e <qsort+0x34>
d0005ab4:	ea4f 0951 	mov.w	r9, r1, lsr #1
d0005ab8:	1b3f      	subs	r7, r7, r4
d0005aba:	2907      	cmp	r1, #7
d0005abc:	fb04 6909 	mla	r9, r4, r9, r6
d0005ac0:	4437      	add	r7, r6
d0005ac2:	d022      	beq.n	d0005b0a <qsort+0xe0>
d0005ac4:	2928      	cmp	r1, #40	; 0x28
d0005ac6:	d945      	bls.n	d0005b54 <qsort+0x12a>
d0005ac8:	08c9      	lsrs	r1, r1, #3
d0005aca:	fb04 f501 	mul.w	r5, r4, r1
d0005ace:	4653      	mov	r3, sl
d0005ad0:	eb06 0245 	add.w	r2, r6, r5, lsl #1
d0005ad4:	1971      	adds	r1, r6, r5
d0005ad6:	4630      	mov	r0, r6
d0005ad8:	f7ff ff87 	bl	d00059ea <med3.isra.0>
d0005adc:	4649      	mov	r1, r9
d0005ade:	eb09 0205 	add.w	r2, r9, r5
d0005ae2:	4653      	mov	r3, sl
d0005ae4:	4683      	mov	fp, r0
d0005ae6:	1b48      	subs	r0, r1, r5
d0005ae8:	f7ff ff7f 	bl	d00059ea <med3.isra.0>
d0005aec:	463a      	mov	r2, r7
d0005aee:	4681      	mov	r9, r0
d0005af0:	4653      	mov	r3, sl
d0005af2:	1b79      	subs	r1, r7, r5
d0005af4:	eba7 0045 	sub.w	r0, r7, r5, lsl #1
d0005af8:	f7ff ff77 	bl	d00059ea <med3.isra.0>
d0005afc:	4602      	mov	r2, r0
d0005afe:	4649      	mov	r1, r9
d0005b00:	4653      	mov	r3, sl
d0005b02:	4658      	mov	r0, fp
d0005b04:	f7ff ff71 	bl	d00059ea <med3.isra.0>
d0005b08:	4681      	mov	r9, r0
d0005b0a:	f1b8 0f00 	cmp.w	r8, #0
d0005b0e:	d124      	bne.n	d0005b5a <qsort+0x130>
d0005b10:	6833      	ldr	r3, [r6, #0]
d0005b12:	f8d9 2000 	ldr.w	r2, [r9]
d0005b16:	6032      	str	r2, [r6, #0]
d0005b18:	f8c9 3000 	str.w	r3, [r9]
d0005b1c:	eb06 0b04 	add.w	fp, r6, r4
d0005b20:	46b9      	mov	r9, r7
d0005b22:	465d      	mov	r5, fp
d0005b24:	2300      	movs	r3, #0
d0005b26:	45bb      	cmp	fp, r7
d0005b28:	d835      	bhi.n	d0005b96 <qsort+0x16c>
d0005b2a:	4631      	mov	r1, r6
d0005b2c:	4658      	mov	r0, fp
d0005b2e:	9304      	str	r3, [sp, #16]
d0005b30:	47d0      	blx	sl
d0005b32:	2800      	cmp	r0, #0
d0005b34:	9b04      	ldr	r3, [sp, #16]
d0005b36:	dc3e      	bgt.n	d0005bb6 <qsort+0x18c>
d0005b38:	d10a      	bne.n	d0005b50 <qsort+0x126>
d0005b3a:	f1b8 0f00 	cmp.w	r8, #0
d0005b3e:	d113      	bne.n	d0005b68 <qsort+0x13e>
d0005b40:	682b      	ldr	r3, [r5, #0]
d0005b42:	f8db 2000 	ldr.w	r2, [fp]
d0005b46:	602a      	str	r2, [r5, #0]
d0005b48:	f8cb 3000 	str.w	r3, [fp]
d0005b4c:	4425      	add	r5, r4
d0005b4e:	2301      	movs	r3, #1
d0005b50:	44a3      	add	fp, r4
d0005b52:	e7e8      	b.n	d0005b26 <qsort+0xfc>
d0005b54:	463a      	mov	r2, r7
d0005b56:	46b3      	mov	fp, r6
d0005b58:	e7d1      	b.n	d0005afe <qsort+0xd4>
d0005b5a:	4643      	mov	r3, r8
d0005b5c:	4622      	mov	r2, r4
d0005b5e:	4649      	mov	r1, r9
d0005b60:	4630      	mov	r0, r6
d0005b62:	f7ff ff29 	bl	d00059b8 <swapfunc>
d0005b66:	e7d9      	b.n	d0005b1c <qsort+0xf2>
d0005b68:	4643      	mov	r3, r8
d0005b6a:	4622      	mov	r2, r4
d0005b6c:	4659      	mov	r1, fp
d0005b6e:	4628      	mov	r0, r5
d0005b70:	f7ff ff22 	bl	d00059b8 <swapfunc>
d0005b74:	e7ea      	b.n	d0005b4c <qsort+0x122>
d0005b76:	d10b      	bne.n	d0005b90 <qsort+0x166>
d0005b78:	f1b8 0f00 	cmp.w	r8, #0
d0005b7c:	d114      	bne.n	d0005ba8 <qsort+0x17e>
d0005b7e:	683b      	ldr	r3, [r7, #0]
d0005b80:	f8d9 2000 	ldr.w	r2, [r9]
d0005b84:	603a      	str	r2, [r7, #0]
d0005b86:	f8c9 3000 	str.w	r3, [r9]
d0005b8a:	eba9 0904 	sub.w	r9, r9, r4
d0005b8e:	2301      	movs	r3, #1
d0005b90:	9f04      	ldr	r7, [sp, #16]
d0005b92:	45bb      	cmp	fp, r7
d0005b94:	d90f      	bls.n	d0005bb6 <qsort+0x18c>
d0005b96:	2b00      	cmp	r3, #0
d0005b98:	d143      	bne.n	d0005c22 <qsort+0x1f8>
d0005b9a:	9b01      	ldr	r3, [sp, #4]
d0005b9c:	9a03      	ldr	r2, [sp, #12]
d0005b9e:	4293      	cmp	r3, r2
d0005ba0:	f4bf af61 	bcs.w	d0005a66 <qsort+0x3c>
d0005ba4:	9d01      	ldr	r5, [sp, #4]
d0005ba6:	e036      	b.n	d0005c16 <qsort+0x1ec>
d0005ba8:	4643      	mov	r3, r8
d0005baa:	4622      	mov	r2, r4
d0005bac:	4649      	mov	r1, r9
d0005bae:	4638      	mov	r0, r7
d0005bb0:	f7ff ff02 	bl	d00059b8 <swapfunc>
d0005bb4:	e7e9      	b.n	d0005b8a <qsort+0x160>
d0005bb6:	4631      	mov	r1, r6
d0005bb8:	4638      	mov	r0, r7
d0005bba:	9305      	str	r3, [sp, #20]
d0005bbc:	47d0      	blx	sl
d0005bbe:	1b3b      	subs	r3, r7, r4
d0005bc0:	2800      	cmp	r0, #0
d0005bc2:	9304      	str	r3, [sp, #16]
d0005bc4:	9b05      	ldr	r3, [sp, #20]
d0005bc6:	dad6      	bge.n	d0005b76 <qsort+0x14c>
d0005bc8:	f1b8 0f00 	cmp.w	r8, #0
d0005bcc:	d006      	beq.n	d0005bdc <qsort+0x1b2>
d0005bce:	4643      	mov	r3, r8
d0005bd0:	4622      	mov	r2, r4
d0005bd2:	4639      	mov	r1, r7
d0005bd4:	4658      	mov	r0, fp
d0005bd6:	f7ff feef 	bl	d00059b8 <swapfunc>
d0005bda:	e005      	b.n	d0005be8 <qsort+0x1be>
d0005bdc:	f8db 3000 	ldr.w	r3, [fp]
d0005be0:	683a      	ldr	r2, [r7, #0]
d0005be2:	f8cb 2000 	str.w	r2, [fp]
d0005be6:	603b      	str	r3, [r7, #0]
d0005be8:	9f04      	ldr	r7, [sp, #16]
d0005bea:	e7b0      	b.n	d0005b4e <qsort+0x124>
d0005bec:	4643      	mov	r3, r8
d0005bee:	4622      	mov	r2, r4
d0005bf0:	4639      	mov	r1, r7
d0005bf2:	4628      	mov	r0, r5
d0005bf4:	f7ff fee0 	bl	d00059b8 <swapfunc>
d0005bf8:	e00c      	b.n	d0005c14 <qsort+0x1ea>
d0005bfa:	1b2f      	subs	r7, r5, r4
d0005bfc:	4629      	mov	r1, r5
d0005bfe:	4638      	mov	r0, r7
d0005c00:	47d0      	blx	sl
d0005c02:	2800      	cmp	r0, #0
d0005c04:	dd09      	ble.n	d0005c1a <qsort+0x1f0>
d0005c06:	f1b8 0f00 	cmp.w	r8, #0
d0005c0a:	d1ef      	bne.n	d0005bec <qsort+0x1c2>
d0005c0c:	682b      	ldr	r3, [r5, #0]
d0005c0e:	683a      	ldr	r2, [r7, #0]
d0005c10:	602a      	str	r2, [r5, #0]
d0005c12:	603b      	str	r3, [r7, #0]
d0005c14:	463d      	mov	r5, r7
d0005c16:	42ae      	cmp	r6, r5
d0005c18:	d3ef      	bcc.n	d0005bfa <qsort+0x1d0>
d0005c1a:	9b01      	ldr	r3, [sp, #4]
d0005c1c:	4423      	add	r3, r4
d0005c1e:	9301      	str	r3, [sp, #4]
d0005c20:	e7bb      	b.n	d0005b9a <qsort+0x170>
d0005c22:	ebab 0305 	sub.w	r3, fp, r5
d0005c26:	1baa      	subs	r2, r5, r6
d0005c28:	429a      	cmp	r2, r3
d0005c2a:	bfa8      	it	ge
d0005c2c:	461a      	movge	r2, r3
d0005c2e:	9301      	str	r3, [sp, #4]
d0005c30:	b12a      	cbz	r2, d0005c3e <qsort+0x214>
d0005c32:	4643      	mov	r3, r8
d0005c34:	ebab 0102 	sub.w	r1, fp, r2
d0005c38:	4630      	mov	r0, r6
d0005c3a:	f7ff febd 	bl	d00059b8 <swapfunc>
d0005c3e:	9b03      	ldr	r3, [sp, #12]
d0005c40:	eba3 0209 	sub.w	r2, r3, r9
d0005c44:	eba9 0707 	sub.w	r7, r9, r7
d0005c48:	1b12      	subs	r2, r2, r4
d0005c4a:	42ba      	cmp	r2, r7
d0005c4c:	bf28      	it	cs
d0005c4e:	463a      	movcs	r2, r7
d0005c50:	b12a      	cbz	r2, d0005c5e <qsort+0x234>
d0005c52:	9903      	ldr	r1, [sp, #12]
d0005c54:	4643      	mov	r3, r8
d0005c56:	1a89      	subs	r1, r1, r2
d0005c58:	4658      	mov	r0, fp
d0005c5a:	f7ff fead 	bl	d00059b8 <swapfunc>
d0005c5e:	f8dd 9004 	ldr.w	r9, [sp, #4]
d0005c62:	9b03      	ldr	r3, [sp, #12]
d0005c64:	454f      	cmp	r7, r9
d0005c66:	eba3 0007 	sub.w	r0, r3, r7
d0005c6a:	d904      	bls.n	d0005c76 <qsort+0x24c>
d0005c6c:	4633      	mov	r3, r6
d0005c6e:	46b9      	mov	r9, r7
d0005c70:	9f01      	ldr	r7, [sp, #4]
d0005c72:	4606      	mov	r6, r0
d0005c74:	4618      	mov	r0, r3
d0005c76:	42a7      	cmp	r7, r4
d0005c78:	d921      	bls.n	d0005cbe <qsort+0x294>
d0005c7a:	fbb7 f1f4 	udiv	r1, r7, r4
d0005c7e:	9b02      	ldr	r3, [sp, #8]
d0005c80:	2b07      	cmp	r3, #7
d0005c82:	d80d      	bhi.n	d0005ca0 <qsort+0x276>
d0005c84:	fbb9 f7f4 	udiv	r7, r9, r4
d0005c88:	aa16      	add	r2, sp, #88	; 0x58
d0005c8a:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
d0005c8e:	f843 6c40 	str.w	r6, [r3, #-64]
d0005c92:	f843 7c3c 	str.w	r7, [r3, #-60]
d0005c96:	9b02      	ldr	r3, [sp, #8]
d0005c98:	3301      	adds	r3, #1
d0005c9a:	9302      	str	r3, [sp, #8]
d0005c9c:	4606      	mov	r6, r0
d0005c9e:	e6d5      	b.n	d0005a4c <qsort+0x22>
d0005ca0:	4653      	mov	r3, sl
d0005ca2:	4622      	mov	r2, r4
d0005ca4:	f7ff fec1 	bl	d0005a2a <qsort>
d0005ca8:	45a1      	cmp	r9, r4
d0005caa:	d80b      	bhi.n	d0005cc4 <qsort+0x29a>
d0005cac:	9b02      	ldr	r3, [sp, #8]
d0005cae:	aa16      	add	r2, sp, #88	; 0x58
d0005cb0:	3b01      	subs	r3, #1
d0005cb2:	9302      	str	r3, [sp, #8]
d0005cb4:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
d0005cb8:	e953 0110 	ldrd	r0, r1, [r3, #-64]	; 0x40
d0005cbc:	e7ee      	b.n	d0005c9c <qsort+0x272>
d0005cbe:	45a1      	cmp	r9, r4
d0005cc0:	f67f aed1 	bls.w	d0005a66 <qsort+0x3c>
d0005cc4:	fbb9 f1f4 	udiv	r1, r9, r4
d0005cc8:	4630      	mov	r0, r6
d0005cca:	e7e7      	b.n	d0005c9c <qsort+0x272>

d0005ccc <sniprintf>:
d0005ccc:	b40c      	push	{r2, r3}
d0005cce:	b530      	push	{r4, r5, lr}
d0005cd0:	4b17      	ldr	r3, [pc, #92]	; (d0005d30 <sniprintf+0x64>)
d0005cd2:	1e0c      	subs	r4, r1, #0
d0005cd4:	681d      	ldr	r5, [r3, #0]
d0005cd6:	b09d      	sub	sp, #116	; 0x74
d0005cd8:	da08      	bge.n	d0005cec <sniprintf+0x20>
d0005cda:	238b      	movs	r3, #139	; 0x8b
d0005cdc:	602b      	str	r3, [r5, #0]
d0005cde:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0005ce2:	b01d      	add	sp, #116	; 0x74
d0005ce4:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0005ce8:	b002      	add	sp, #8
d0005cea:	4770      	bx	lr
d0005cec:	f44f 7302 	mov.w	r3, #520	; 0x208
d0005cf0:	f8ad 3014 	strh.w	r3, [sp, #20]
d0005cf4:	bf14      	ite	ne
d0005cf6:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d0005cfa:	4623      	moveq	r3, r4
d0005cfc:	9304      	str	r3, [sp, #16]
d0005cfe:	9307      	str	r3, [sp, #28]
d0005d00:	f64f 73ff 	movw	r3, #65535	; 0xffff
d0005d04:	9002      	str	r0, [sp, #8]
d0005d06:	9006      	str	r0, [sp, #24]
d0005d08:	f8ad 3016 	strh.w	r3, [sp, #22]
d0005d0c:	9a20      	ldr	r2, [sp, #128]	; 0x80
d0005d0e:	ab21      	add	r3, sp, #132	; 0x84
d0005d10:	a902      	add	r1, sp, #8
d0005d12:	4628      	mov	r0, r5
d0005d14:	9301      	str	r3, [sp, #4]
d0005d16:	f000 f8d1 	bl	d0005ebc <_svfiprintf_r>
d0005d1a:	1c43      	adds	r3, r0, #1
d0005d1c:	bfbc      	itt	lt
d0005d1e:	238b      	movlt	r3, #139	; 0x8b
d0005d20:	602b      	strlt	r3, [r5, #0]
d0005d22:	2c00      	cmp	r4, #0
d0005d24:	d0dd      	beq.n	d0005ce2 <sniprintf+0x16>
d0005d26:	9b02      	ldr	r3, [sp, #8]
d0005d28:	2200      	movs	r2, #0
d0005d2a:	701a      	strb	r2, [r3, #0]
d0005d2c:	e7d9      	b.n	d0005ce2 <sniprintf+0x16>
d0005d2e:	bf00      	nop
d0005d30:	d000ef00 	.word	0xd000ef00

d0005d34 <siprintf>:
d0005d34:	b40e      	push	{r1, r2, r3}
d0005d36:	b500      	push	{lr}
d0005d38:	b09c      	sub	sp, #112	; 0x70
d0005d3a:	ab1d      	add	r3, sp, #116	; 0x74
d0005d3c:	9002      	str	r0, [sp, #8]
d0005d3e:	9006      	str	r0, [sp, #24]
d0005d40:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d0005d44:	4809      	ldr	r0, [pc, #36]	; (d0005d6c <siprintf+0x38>)
d0005d46:	9107      	str	r1, [sp, #28]
d0005d48:	9104      	str	r1, [sp, #16]
d0005d4a:	4909      	ldr	r1, [pc, #36]	; (d0005d70 <siprintf+0x3c>)
d0005d4c:	f853 2b04 	ldr.w	r2, [r3], #4
d0005d50:	9105      	str	r1, [sp, #20]
d0005d52:	6800      	ldr	r0, [r0, #0]
d0005d54:	9301      	str	r3, [sp, #4]
d0005d56:	a902      	add	r1, sp, #8
d0005d58:	f000 f8b0 	bl	d0005ebc <_svfiprintf_r>
d0005d5c:	9b02      	ldr	r3, [sp, #8]
d0005d5e:	2200      	movs	r2, #0
d0005d60:	701a      	strb	r2, [r3, #0]
d0005d62:	b01c      	add	sp, #112	; 0x70
d0005d64:	f85d eb04 	ldr.w	lr, [sp], #4
d0005d68:	b003      	add	sp, #12
d0005d6a:	4770      	bx	lr
d0005d6c:	d000ef00 	.word	0xd000ef00
d0005d70:	ffff0208 	.word	0xffff0208

d0005d74 <stpcpy>:
d0005d74:	4603      	mov	r3, r0
d0005d76:	f811 2b01 	ldrb.w	r2, [r1], #1
d0005d7a:	4618      	mov	r0, r3
d0005d7c:	f803 2b01 	strb.w	r2, [r3], #1
d0005d80:	2a00      	cmp	r2, #0
d0005d82:	d1f8      	bne.n	d0005d76 <stpcpy+0x2>
d0005d84:	4770      	bx	lr
	...

d0005d88 <strcasecmp>:
d0005d88:	b570      	push	{r4, r5, r6, lr}
d0005d8a:	4d0c      	ldr	r5, [pc, #48]	; (d0005dbc <strcasecmp+0x34>)
d0005d8c:	4604      	mov	r4, r0
d0005d8e:	462e      	mov	r6, r5
d0005d90:	f814 3b01 	ldrb.w	r3, [r4], #1
d0005d94:	5d5a      	ldrb	r2, [r3, r5]
d0005d96:	f002 0203 	and.w	r2, r2, #3
d0005d9a:	2a01      	cmp	r2, #1
d0005d9c:	f811 2b01 	ldrb.w	r2, [r1], #1
d0005da0:	5cb0      	ldrb	r0, [r6, r2]
d0005da2:	f000 0003 	and.w	r0, r0, #3
d0005da6:	bf08      	it	eq
d0005da8:	3320      	addeq	r3, #32
d0005daa:	2801      	cmp	r0, #1
d0005dac:	bf08      	it	eq
d0005dae:	3220      	addeq	r2, #32
d0005db0:	1a98      	subs	r0, r3, r2
d0005db2:	d101      	bne.n	d0005db8 <strcasecmp+0x30>
d0005db4:	2a00      	cmp	r2, #0
d0005db6:	d1eb      	bne.n	d0005d90 <strcasecmp+0x8>
d0005db8:	bd70      	pop	{r4, r5, r6, pc}
d0005dba:	bf00      	nop
d0005dbc:	d000edc5 	.word	0xd000edc5

d0005dc0 <strcpy>:
d0005dc0:	4603      	mov	r3, r0
d0005dc2:	f811 2b01 	ldrb.w	r2, [r1], #1
d0005dc6:	f803 2b01 	strb.w	r2, [r3], #1
d0005dca:	2a00      	cmp	r2, #0
d0005dcc:	d1f9      	bne.n	d0005dc2 <strcpy+0x2>
d0005dce:	4770      	bx	lr

d0005dd0 <strlen>:
d0005dd0:	4603      	mov	r3, r0
d0005dd2:	f813 2b01 	ldrb.w	r2, [r3], #1
d0005dd6:	2a00      	cmp	r2, #0
d0005dd8:	d1fb      	bne.n	d0005dd2 <strlen+0x2>
d0005dda:	1a18      	subs	r0, r3, r0
d0005ddc:	3801      	subs	r0, #1
d0005dde:	4770      	bx	lr

d0005de0 <strncpy>:
d0005de0:	b510      	push	{r4, lr}
d0005de2:	3901      	subs	r1, #1
d0005de4:	4603      	mov	r3, r0
d0005de6:	b132      	cbz	r2, d0005df6 <strncpy+0x16>
d0005de8:	f811 4f01 	ldrb.w	r4, [r1, #1]!
d0005dec:	f803 4b01 	strb.w	r4, [r3], #1
d0005df0:	3a01      	subs	r2, #1
d0005df2:	2c00      	cmp	r4, #0
d0005df4:	d1f7      	bne.n	d0005de6 <strncpy+0x6>
d0005df6:	441a      	add	r2, r3
d0005df8:	2100      	movs	r1, #0
d0005dfa:	4293      	cmp	r3, r2
d0005dfc:	d100      	bne.n	d0005e00 <strncpy+0x20>
d0005dfe:	bd10      	pop	{r4, pc}
d0005e00:	f803 1b01 	strb.w	r1, [r3], #1
d0005e04:	e7f9      	b.n	d0005dfa <strncpy+0x1a>

d0005e06 <__ssputs_r>:
d0005e06:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0005e0a:	688e      	ldr	r6, [r1, #8]
d0005e0c:	429e      	cmp	r6, r3
d0005e0e:	4682      	mov	sl, r0
d0005e10:	460c      	mov	r4, r1
d0005e12:	4690      	mov	r8, r2
d0005e14:	461f      	mov	r7, r3
d0005e16:	d838      	bhi.n	d0005e8a <__ssputs_r+0x84>
d0005e18:	898a      	ldrh	r2, [r1, #12]
d0005e1a:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0005e1e:	d032      	beq.n	d0005e86 <__ssputs_r+0x80>
d0005e20:	6825      	ldr	r5, [r4, #0]
d0005e22:	6909      	ldr	r1, [r1, #16]
d0005e24:	eba5 0901 	sub.w	r9, r5, r1
d0005e28:	6965      	ldr	r5, [r4, #20]
d0005e2a:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0005e2e:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0005e32:	3301      	adds	r3, #1
d0005e34:	444b      	add	r3, r9
d0005e36:	106d      	asrs	r5, r5, #1
d0005e38:	429d      	cmp	r5, r3
d0005e3a:	bf38      	it	cc
d0005e3c:	461d      	movcc	r5, r3
d0005e3e:	0553      	lsls	r3, r2, #21
d0005e40:	d531      	bpl.n	d0005ea6 <__ssputs_r+0xa0>
d0005e42:	4629      	mov	r1, r5
d0005e44:	f000 fb74 	bl	d0006530 <_malloc_r>
d0005e48:	4606      	mov	r6, r0
d0005e4a:	b950      	cbnz	r0, d0005e62 <__ssputs_r+0x5c>
d0005e4c:	230c      	movs	r3, #12
d0005e4e:	f8ca 3000 	str.w	r3, [sl]
d0005e52:	89a3      	ldrh	r3, [r4, #12]
d0005e54:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0005e58:	81a3      	strh	r3, [r4, #12]
d0005e5a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0005e5e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0005e62:	6921      	ldr	r1, [r4, #16]
d0005e64:	464a      	mov	r2, r9
d0005e66:	f7ff fd7f 	bl	d0005968 <memcpy>
d0005e6a:	89a3      	ldrh	r3, [r4, #12]
d0005e6c:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0005e70:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0005e74:	81a3      	strh	r3, [r4, #12]
d0005e76:	6126      	str	r6, [r4, #16]
d0005e78:	6165      	str	r5, [r4, #20]
d0005e7a:	444e      	add	r6, r9
d0005e7c:	eba5 0509 	sub.w	r5, r5, r9
d0005e80:	6026      	str	r6, [r4, #0]
d0005e82:	60a5      	str	r5, [r4, #8]
d0005e84:	463e      	mov	r6, r7
d0005e86:	42be      	cmp	r6, r7
d0005e88:	d900      	bls.n	d0005e8c <__ssputs_r+0x86>
d0005e8a:	463e      	mov	r6, r7
d0005e8c:	4632      	mov	r2, r6
d0005e8e:	6820      	ldr	r0, [r4, #0]
d0005e90:	4641      	mov	r1, r8
d0005e92:	f7ff fd77 	bl	d0005984 <memmove>
d0005e96:	68a3      	ldr	r3, [r4, #8]
d0005e98:	6822      	ldr	r2, [r4, #0]
d0005e9a:	1b9b      	subs	r3, r3, r6
d0005e9c:	4432      	add	r2, r6
d0005e9e:	60a3      	str	r3, [r4, #8]
d0005ea0:	6022      	str	r2, [r4, #0]
d0005ea2:	2000      	movs	r0, #0
d0005ea4:	e7db      	b.n	d0005e5e <__ssputs_r+0x58>
d0005ea6:	462a      	mov	r2, r5
d0005ea8:	f000 fb9c 	bl	d00065e4 <_realloc_r>
d0005eac:	4606      	mov	r6, r0
d0005eae:	2800      	cmp	r0, #0
d0005eb0:	d1e1      	bne.n	d0005e76 <__ssputs_r+0x70>
d0005eb2:	6921      	ldr	r1, [r4, #16]
d0005eb4:	4650      	mov	r0, sl
d0005eb6:	f000 faeb 	bl	d0006490 <_free_r>
d0005eba:	e7c7      	b.n	d0005e4c <__ssputs_r+0x46>

d0005ebc <_svfiprintf_r>:
d0005ebc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0005ec0:	4698      	mov	r8, r3
d0005ec2:	898b      	ldrh	r3, [r1, #12]
d0005ec4:	061b      	lsls	r3, r3, #24
d0005ec6:	b09d      	sub	sp, #116	; 0x74
d0005ec8:	4607      	mov	r7, r0
d0005eca:	460d      	mov	r5, r1
d0005ecc:	4614      	mov	r4, r2
d0005ece:	d50e      	bpl.n	d0005eee <_svfiprintf_r+0x32>
d0005ed0:	690b      	ldr	r3, [r1, #16]
d0005ed2:	b963      	cbnz	r3, d0005eee <_svfiprintf_r+0x32>
d0005ed4:	2140      	movs	r1, #64	; 0x40
d0005ed6:	f000 fb2b 	bl	d0006530 <_malloc_r>
d0005eda:	6028      	str	r0, [r5, #0]
d0005edc:	6128      	str	r0, [r5, #16]
d0005ede:	b920      	cbnz	r0, d0005eea <_svfiprintf_r+0x2e>
d0005ee0:	230c      	movs	r3, #12
d0005ee2:	603b      	str	r3, [r7, #0]
d0005ee4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0005ee8:	e0d1      	b.n	d000608e <_svfiprintf_r+0x1d2>
d0005eea:	2340      	movs	r3, #64	; 0x40
d0005eec:	616b      	str	r3, [r5, #20]
d0005eee:	2300      	movs	r3, #0
d0005ef0:	9309      	str	r3, [sp, #36]	; 0x24
d0005ef2:	2320      	movs	r3, #32
d0005ef4:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0005ef8:	f8cd 800c 	str.w	r8, [sp, #12]
d0005efc:	2330      	movs	r3, #48	; 0x30
d0005efe:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d00060a8 <_svfiprintf_r+0x1ec>
d0005f02:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0005f06:	f04f 0901 	mov.w	r9, #1
d0005f0a:	4623      	mov	r3, r4
d0005f0c:	469a      	mov	sl, r3
d0005f0e:	f813 2b01 	ldrb.w	r2, [r3], #1
d0005f12:	b10a      	cbz	r2, d0005f18 <_svfiprintf_r+0x5c>
d0005f14:	2a25      	cmp	r2, #37	; 0x25
d0005f16:	d1f9      	bne.n	d0005f0c <_svfiprintf_r+0x50>
d0005f18:	ebba 0b04 	subs.w	fp, sl, r4
d0005f1c:	d00b      	beq.n	d0005f36 <_svfiprintf_r+0x7a>
d0005f1e:	465b      	mov	r3, fp
d0005f20:	4622      	mov	r2, r4
d0005f22:	4629      	mov	r1, r5
d0005f24:	4638      	mov	r0, r7
d0005f26:	f7ff ff6e 	bl	d0005e06 <__ssputs_r>
d0005f2a:	3001      	adds	r0, #1
d0005f2c:	f000 80aa 	beq.w	d0006084 <_svfiprintf_r+0x1c8>
d0005f30:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0005f32:	445a      	add	r2, fp
d0005f34:	9209      	str	r2, [sp, #36]	; 0x24
d0005f36:	f89a 3000 	ldrb.w	r3, [sl]
d0005f3a:	2b00      	cmp	r3, #0
d0005f3c:	f000 80a2 	beq.w	d0006084 <_svfiprintf_r+0x1c8>
d0005f40:	2300      	movs	r3, #0
d0005f42:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0005f46:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0005f4a:	f10a 0a01 	add.w	sl, sl, #1
d0005f4e:	9304      	str	r3, [sp, #16]
d0005f50:	9307      	str	r3, [sp, #28]
d0005f52:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0005f56:	931a      	str	r3, [sp, #104]	; 0x68
d0005f58:	4654      	mov	r4, sl
d0005f5a:	2205      	movs	r2, #5
d0005f5c:	f814 1b01 	ldrb.w	r1, [r4], #1
d0005f60:	4851      	ldr	r0, [pc, #324]	; (d00060a8 <_svfiprintf_r+0x1ec>)
d0005f62:	f000 fa45 	bl	d00063f0 <memchr>
d0005f66:	9a04      	ldr	r2, [sp, #16]
d0005f68:	b9d8      	cbnz	r0, d0005fa2 <_svfiprintf_r+0xe6>
d0005f6a:	06d0      	lsls	r0, r2, #27
d0005f6c:	bf44      	itt	mi
d0005f6e:	2320      	movmi	r3, #32
d0005f70:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0005f74:	0711      	lsls	r1, r2, #28
d0005f76:	bf44      	itt	mi
d0005f78:	232b      	movmi	r3, #43	; 0x2b
d0005f7a:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0005f7e:	f89a 3000 	ldrb.w	r3, [sl]
d0005f82:	2b2a      	cmp	r3, #42	; 0x2a
d0005f84:	d015      	beq.n	d0005fb2 <_svfiprintf_r+0xf6>
d0005f86:	9a07      	ldr	r2, [sp, #28]
d0005f88:	4654      	mov	r4, sl
d0005f8a:	2000      	movs	r0, #0
d0005f8c:	f04f 0c0a 	mov.w	ip, #10
d0005f90:	4621      	mov	r1, r4
d0005f92:	f811 3b01 	ldrb.w	r3, [r1], #1
d0005f96:	3b30      	subs	r3, #48	; 0x30
d0005f98:	2b09      	cmp	r3, #9
d0005f9a:	d94e      	bls.n	d000603a <_svfiprintf_r+0x17e>
d0005f9c:	b1b0      	cbz	r0, d0005fcc <_svfiprintf_r+0x110>
d0005f9e:	9207      	str	r2, [sp, #28]
d0005fa0:	e014      	b.n	d0005fcc <_svfiprintf_r+0x110>
d0005fa2:	eba0 0308 	sub.w	r3, r0, r8
d0005fa6:	fa09 f303 	lsl.w	r3, r9, r3
d0005faa:	4313      	orrs	r3, r2
d0005fac:	9304      	str	r3, [sp, #16]
d0005fae:	46a2      	mov	sl, r4
d0005fb0:	e7d2      	b.n	d0005f58 <_svfiprintf_r+0x9c>
d0005fb2:	9b03      	ldr	r3, [sp, #12]
d0005fb4:	1d19      	adds	r1, r3, #4
d0005fb6:	681b      	ldr	r3, [r3, #0]
d0005fb8:	9103      	str	r1, [sp, #12]
d0005fba:	2b00      	cmp	r3, #0
d0005fbc:	bfbb      	ittet	lt
d0005fbe:	425b      	neglt	r3, r3
d0005fc0:	f042 0202 	orrlt.w	r2, r2, #2
d0005fc4:	9307      	strge	r3, [sp, #28]
d0005fc6:	9307      	strlt	r3, [sp, #28]
d0005fc8:	bfb8      	it	lt
d0005fca:	9204      	strlt	r2, [sp, #16]
d0005fcc:	7823      	ldrb	r3, [r4, #0]
d0005fce:	2b2e      	cmp	r3, #46	; 0x2e
d0005fd0:	d10c      	bne.n	d0005fec <_svfiprintf_r+0x130>
d0005fd2:	7863      	ldrb	r3, [r4, #1]
d0005fd4:	2b2a      	cmp	r3, #42	; 0x2a
d0005fd6:	d135      	bne.n	d0006044 <_svfiprintf_r+0x188>
d0005fd8:	9b03      	ldr	r3, [sp, #12]
d0005fda:	1d1a      	adds	r2, r3, #4
d0005fdc:	681b      	ldr	r3, [r3, #0]
d0005fde:	9203      	str	r2, [sp, #12]
d0005fe0:	2b00      	cmp	r3, #0
d0005fe2:	bfb8      	it	lt
d0005fe4:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0005fe8:	3402      	adds	r4, #2
d0005fea:	9305      	str	r3, [sp, #20]
d0005fec:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d00060b8 <_svfiprintf_r+0x1fc>
d0005ff0:	7821      	ldrb	r1, [r4, #0]
d0005ff2:	2203      	movs	r2, #3
d0005ff4:	4650      	mov	r0, sl
d0005ff6:	f000 f9fb 	bl	d00063f0 <memchr>
d0005ffa:	b140      	cbz	r0, d000600e <_svfiprintf_r+0x152>
d0005ffc:	2340      	movs	r3, #64	; 0x40
d0005ffe:	eba0 000a 	sub.w	r0, r0, sl
d0006002:	fa03 f000 	lsl.w	r0, r3, r0
d0006006:	9b04      	ldr	r3, [sp, #16]
d0006008:	4303      	orrs	r3, r0
d000600a:	3401      	adds	r4, #1
d000600c:	9304      	str	r3, [sp, #16]
d000600e:	f814 1b01 	ldrb.w	r1, [r4], #1
d0006012:	4826      	ldr	r0, [pc, #152]	; (d00060ac <_svfiprintf_r+0x1f0>)
d0006014:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0006018:	2206      	movs	r2, #6
d000601a:	f000 f9e9 	bl	d00063f0 <memchr>
d000601e:	2800      	cmp	r0, #0
d0006020:	d038      	beq.n	d0006094 <_svfiprintf_r+0x1d8>
d0006022:	4b23      	ldr	r3, [pc, #140]	; (d00060b0 <_svfiprintf_r+0x1f4>)
d0006024:	bb1b      	cbnz	r3, d000606e <_svfiprintf_r+0x1b2>
d0006026:	9b03      	ldr	r3, [sp, #12]
d0006028:	3307      	adds	r3, #7
d000602a:	f023 0307 	bic.w	r3, r3, #7
d000602e:	3308      	adds	r3, #8
d0006030:	9303      	str	r3, [sp, #12]
d0006032:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0006034:	4433      	add	r3, r6
d0006036:	9309      	str	r3, [sp, #36]	; 0x24
d0006038:	e767      	b.n	d0005f0a <_svfiprintf_r+0x4e>
d000603a:	fb0c 3202 	mla	r2, ip, r2, r3
d000603e:	460c      	mov	r4, r1
d0006040:	2001      	movs	r0, #1
d0006042:	e7a5      	b.n	d0005f90 <_svfiprintf_r+0xd4>
d0006044:	2300      	movs	r3, #0
d0006046:	3401      	adds	r4, #1
d0006048:	9305      	str	r3, [sp, #20]
d000604a:	4619      	mov	r1, r3
d000604c:	f04f 0c0a 	mov.w	ip, #10
d0006050:	4620      	mov	r0, r4
d0006052:	f810 2b01 	ldrb.w	r2, [r0], #1
d0006056:	3a30      	subs	r2, #48	; 0x30
d0006058:	2a09      	cmp	r2, #9
d000605a:	d903      	bls.n	d0006064 <_svfiprintf_r+0x1a8>
d000605c:	2b00      	cmp	r3, #0
d000605e:	d0c5      	beq.n	d0005fec <_svfiprintf_r+0x130>
d0006060:	9105      	str	r1, [sp, #20]
d0006062:	e7c3      	b.n	d0005fec <_svfiprintf_r+0x130>
d0006064:	fb0c 2101 	mla	r1, ip, r1, r2
d0006068:	4604      	mov	r4, r0
d000606a:	2301      	movs	r3, #1
d000606c:	e7f0      	b.n	d0006050 <_svfiprintf_r+0x194>
d000606e:	ab03      	add	r3, sp, #12
d0006070:	9300      	str	r3, [sp, #0]
d0006072:	462a      	mov	r2, r5
d0006074:	4b0f      	ldr	r3, [pc, #60]	; (d00060b4 <_svfiprintf_r+0x1f8>)
d0006076:	a904      	add	r1, sp, #16
d0006078:	4638      	mov	r0, r7
d000607a:	f3af 8000 	nop.w
d000607e:	1c42      	adds	r2, r0, #1
d0006080:	4606      	mov	r6, r0
d0006082:	d1d6      	bne.n	d0006032 <_svfiprintf_r+0x176>
d0006084:	89ab      	ldrh	r3, [r5, #12]
d0006086:	065b      	lsls	r3, r3, #25
d0006088:	f53f af2c 	bmi.w	d0005ee4 <_svfiprintf_r+0x28>
d000608c:	9809      	ldr	r0, [sp, #36]	; 0x24
d000608e:	b01d      	add	sp, #116	; 0x74
d0006090:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0006094:	ab03      	add	r3, sp, #12
d0006096:	9300      	str	r3, [sp, #0]
d0006098:	462a      	mov	r2, r5
d000609a:	4b06      	ldr	r3, [pc, #24]	; (d00060b4 <_svfiprintf_r+0x1f8>)
d000609c:	a904      	add	r1, sp, #16
d000609e:	4638      	mov	r0, r7
d00060a0:	f000 f87a 	bl	d0006198 <_printf_i>
d00060a4:	e7eb      	b.n	d000607e <_svfiprintf_r+0x1c2>
d00060a6:	bf00      	nop
d00060a8:	d000eec5 	.word	0xd000eec5
d00060ac:	d000eecf 	.word	0xd000eecf
d00060b0:	00000000 	.word	0x00000000
d00060b4:	d0005e07 	.word	0xd0005e07
d00060b8:	d000eecb 	.word	0xd000eecb

d00060bc <_printf_common>:
d00060bc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00060c0:	4616      	mov	r6, r2
d00060c2:	4699      	mov	r9, r3
d00060c4:	688a      	ldr	r2, [r1, #8]
d00060c6:	690b      	ldr	r3, [r1, #16]
d00060c8:	f8dd 8020 	ldr.w	r8, [sp, #32]
d00060cc:	4293      	cmp	r3, r2
d00060ce:	bfb8      	it	lt
d00060d0:	4613      	movlt	r3, r2
d00060d2:	6033      	str	r3, [r6, #0]
d00060d4:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d00060d8:	4607      	mov	r7, r0
d00060da:	460c      	mov	r4, r1
d00060dc:	b10a      	cbz	r2, d00060e2 <_printf_common+0x26>
d00060de:	3301      	adds	r3, #1
d00060e0:	6033      	str	r3, [r6, #0]
d00060e2:	6823      	ldr	r3, [r4, #0]
d00060e4:	0699      	lsls	r1, r3, #26
d00060e6:	bf42      	ittt	mi
d00060e8:	6833      	ldrmi	r3, [r6, #0]
d00060ea:	3302      	addmi	r3, #2
d00060ec:	6033      	strmi	r3, [r6, #0]
d00060ee:	6825      	ldr	r5, [r4, #0]
d00060f0:	f015 0506 	ands.w	r5, r5, #6
d00060f4:	d106      	bne.n	d0006104 <_printf_common+0x48>
d00060f6:	f104 0a19 	add.w	sl, r4, #25
d00060fa:	68e3      	ldr	r3, [r4, #12]
d00060fc:	6832      	ldr	r2, [r6, #0]
d00060fe:	1a9b      	subs	r3, r3, r2
d0006100:	42ab      	cmp	r3, r5
d0006102:	dc26      	bgt.n	d0006152 <_printf_common+0x96>
d0006104:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0006108:	1e13      	subs	r3, r2, #0
d000610a:	6822      	ldr	r2, [r4, #0]
d000610c:	bf18      	it	ne
d000610e:	2301      	movne	r3, #1
d0006110:	0692      	lsls	r2, r2, #26
d0006112:	d42b      	bmi.n	d000616c <_printf_common+0xb0>
d0006114:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0006118:	4649      	mov	r1, r9
d000611a:	4638      	mov	r0, r7
d000611c:	47c0      	blx	r8
d000611e:	3001      	adds	r0, #1
d0006120:	d01e      	beq.n	d0006160 <_printf_common+0xa4>
d0006122:	6823      	ldr	r3, [r4, #0]
d0006124:	68e5      	ldr	r5, [r4, #12]
d0006126:	6832      	ldr	r2, [r6, #0]
d0006128:	f003 0306 	and.w	r3, r3, #6
d000612c:	2b04      	cmp	r3, #4
d000612e:	bf08      	it	eq
d0006130:	1aad      	subeq	r5, r5, r2
d0006132:	68a3      	ldr	r3, [r4, #8]
d0006134:	6922      	ldr	r2, [r4, #16]
d0006136:	bf0c      	ite	eq
d0006138:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d000613c:	2500      	movne	r5, #0
d000613e:	4293      	cmp	r3, r2
d0006140:	bfc4      	itt	gt
d0006142:	1a9b      	subgt	r3, r3, r2
d0006144:	18ed      	addgt	r5, r5, r3
d0006146:	2600      	movs	r6, #0
d0006148:	341a      	adds	r4, #26
d000614a:	42b5      	cmp	r5, r6
d000614c:	d11a      	bne.n	d0006184 <_printf_common+0xc8>
d000614e:	2000      	movs	r0, #0
d0006150:	e008      	b.n	d0006164 <_printf_common+0xa8>
d0006152:	2301      	movs	r3, #1
d0006154:	4652      	mov	r2, sl
d0006156:	4649      	mov	r1, r9
d0006158:	4638      	mov	r0, r7
d000615a:	47c0      	blx	r8
d000615c:	3001      	adds	r0, #1
d000615e:	d103      	bne.n	d0006168 <_printf_common+0xac>
d0006160:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0006164:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0006168:	3501      	adds	r5, #1
d000616a:	e7c6      	b.n	d00060fa <_printf_common+0x3e>
d000616c:	18e1      	adds	r1, r4, r3
d000616e:	1c5a      	adds	r2, r3, #1
d0006170:	2030      	movs	r0, #48	; 0x30
d0006172:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0006176:	4422      	add	r2, r4
d0006178:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d000617c:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0006180:	3302      	adds	r3, #2
d0006182:	e7c7      	b.n	d0006114 <_printf_common+0x58>
d0006184:	2301      	movs	r3, #1
d0006186:	4622      	mov	r2, r4
d0006188:	4649      	mov	r1, r9
d000618a:	4638      	mov	r0, r7
d000618c:	47c0      	blx	r8
d000618e:	3001      	adds	r0, #1
d0006190:	d0e6      	beq.n	d0006160 <_printf_common+0xa4>
d0006192:	3601      	adds	r6, #1
d0006194:	e7d9      	b.n	d000614a <_printf_common+0x8e>
	...

d0006198 <_printf_i>:
d0006198:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d000619c:	460c      	mov	r4, r1
d000619e:	4691      	mov	r9, r2
d00061a0:	7e27      	ldrb	r7, [r4, #24]
d00061a2:	990c      	ldr	r1, [sp, #48]	; 0x30
d00061a4:	2f78      	cmp	r7, #120	; 0x78
d00061a6:	4680      	mov	r8, r0
d00061a8:	469a      	mov	sl, r3
d00061aa:	f104 0243 	add.w	r2, r4, #67	; 0x43
d00061ae:	d807      	bhi.n	d00061c0 <_printf_i+0x28>
d00061b0:	2f62      	cmp	r7, #98	; 0x62
d00061b2:	d80a      	bhi.n	d00061ca <_printf_i+0x32>
d00061b4:	2f00      	cmp	r7, #0
d00061b6:	f000 80d8 	beq.w	d000636a <_printf_i+0x1d2>
d00061ba:	2f58      	cmp	r7, #88	; 0x58
d00061bc:	f000 80a3 	beq.w	d0006306 <_printf_i+0x16e>
d00061c0:	f104 0642 	add.w	r6, r4, #66	; 0x42
d00061c4:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d00061c8:	e03a      	b.n	d0006240 <_printf_i+0xa8>
d00061ca:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d00061ce:	2b15      	cmp	r3, #21
d00061d0:	d8f6      	bhi.n	d00061c0 <_printf_i+0x28>
d00061d2:	a001      	add	r0, pc, #4	; (adr r0, d00061d8 <_printf_i+0x40>)
d00061d4:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d00061d8:	d0006231 	.word	0xd0006231
d00061dc:	d0006245 	.word	0xd0006245
d00061e0:	d00061c1 	.word	0xd00061c1
d00061e4:	d00061c1 	.word	0xd00061c1
d00061e8:	d00061c1 	.word	0xd00061c1
d00061ec:	d00061c1 	.word	0xd00061c1
d00061f0:	d0006245 	.word	0xd0006245
d00061f4:	d00061c1 	.word	0xd00061c1
d00061f8:	d00061c1 	.word	0xd00061c1
d00061fc:	d00061c1 	.word	0xd00061c1
d0006200:	d00061c1 	.word	0xd00061c1
d0006204:	d0006351 	.word	0xd0006351
d0006208:	d0006275 	.word	0xd0006275
d000620c:	d0006333 	.word	0xd0006333
d0006210:	d00061c1 	.word	0xd00061c1
d0006214:	d00061c1 	.word	0xd00061c1
d0006218:	d0006373 	.word	0xd0006373
d000621c:	d00061c1 	.word	0xd00061c1
d0006220:	d0006275 	.word	0xd0006275
d0006224:	d00061c1 	.word	0xd00061c1
d0006228:	d00061c1 	.word	0xd00061c1
d000622c:	d000633b 	.word	0xd000633b
d0006230:	680b      	ldr	r3, [r1, #0]
d0006232:	1d1a      	adds	r2, r3, #4
d0006234:	681b      	ldr	r3, [r3, #0]
d0006236:	600a      	str	r2, [r1, #0]
d0006238:	f104 0642 	add.w	r6, r4, #66	; 0x42
d000623c:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0006240:	2301      	movs	r3, #1
d0006242:	e0a3      	b.n	d000638c <_printf_i+0x1f4>
d0006244:	6825      	ldr	r5, [r4, #0]
d0006246:	6808      	ldr	r0, [r1, #0]
d0006248:	062e      	lsls	r6, r5, #24
d000624a:	f100 0304 	add.w	r3, r0, #4
d000624e:	d50a      	bpl.n	d0006266 <_printf_i+0xce>
d0006250:	6805      	ldr	r5, [r0, #0]
d0006252:	600b      	str	r3, [r1, #0]
d0006254:	2d00      	cmp	r5, #0
d0006256:	da03      	bge.n	d0006260 <_printf_i+0xc8>
d0006258:	232d      	movs	r3, #45	; 0x2d
d000625a:	426d      	negs	r5, r5
d000625c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0006260:	485e      	ldr	r0, [pc, #376]	; (d00063dc <_printf_i+0x244>)
d0006262:	230a      	movs	r3, #10
d0006264:	e019      	b.n	d000629a <_printf_i+0x102>
d0006266:	f015 0f40 	tst.w	r5, #64	; 0x40
d000626a:	6805      	ldr	r5, [r0, #0]
d000626c:	600b      	str	r3, [r1, #0]
d000626e:	bf18      	it	ne
d0006270:	b22d      	sxthne	r5, r5
d0006272:	e7ef      	b.n	d0006254 <_printf_i+0xbc>
d0006274:	680b      	ldr	r3, [r1, #0]
d0006276:	6825      	ldr	r5, [r4, #0]
d0006278:	1d18      	adds	r0, r3, #4
d000627a:	6008      	str	r0, [r1, #0]
d000627c:	0628      	lsls	r0, r5, #24
d000627e:	d501      	bpl.n	d0006284 <_printf_i+0xec>
d0006280:	681d      	ldr	r5, [r3, #0]
d0006282:	e002      	b.n	d000628a <_printf_i+0xf2>
d0006284:	0669      	lsls	r1, r5, #25
d0006286:	d5fb      	bpl.n	d0006280 <_printf_i+0xe8>
d0006288:	881d      	ldrh	r5, [r3, #0]
d000628a:	4854      	ldr	r0, [pc, #336]	; (d00063dc <_printf_i+0x244>)
d000628c:	2f6f      	cmp	r7, #111	; 0x6f
d000628e:	bf0c      	ite	eq
d0006290:	2308      	moveq	r3, #8
d0006292:	230a      	movne	r3, #10
d0006294:	2100      	movs	r1, #0
d0006296:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d000629a:	6866      	ldr	r6, [r4, #4]
d000629c:	60a6      	str	r6, [r4, #8]
d000629e:	2e00      	cmp	r6, #0
d00062a0:	bfa2      	ittt	ge
d00062a2:	6821      	ldrge	r1, [r4, #0]
d00062a4:	f021 0104 	bicge.w	r1, r1, #4
d00062a8:	6021      	strge	r1, [r4, #0]
d00062aa:	b90d      	cbnz	r5, d00062b0 <_printf_i+0x118>
d00062ac:	2e00      	cmp	r6, #0
d00062ae:	d04d      	beq.n	d000634c <_printf_i+0x1b4>
d00062b0:	4616      	mov	r6, r2
d00062b2:	fbb5 f1f3 	udiv	r1, r5, r3
d00062b6:	fb03 5711 	mls	r7, r3, r1, r5
d00062ba:	5dc7      	ldrb	r7, [r0, r7]
d00062bc:	f806 7d01 	strb.w	r7, [r6, #-1]!
d00062c0:	462f      	mov	r7, r5
d00062c2:	42bb      	cmp	r3, r7
d00062c4:	460d      	mov	r5, r1
d00062c6:	d9f4      	bls.n	d00062b2 <_printf_i+0x11a>
d00062c8:	2b08      	cmp	r3, #8
d00062ca:	d10b      	bne.n	d00062e4 <_printf_i+0x14c>
d00062cc:	6823      	ldr	r3, [r4, #0]
d00062ce:	07df      	lsls	r7, r3, #31
d00062d0:	d508      	bpl.n	d00062e4 <_printf_i+0x14c>
d00062d2:	6923      	ldr	r3, [r4, #16]
d00062d4:	6861      	ldr	r1, [r4, #4]
d00062d6:	4299      	cmp	r1, r3
d00062d8:	bfde      	ittt	le
d00062da:	2330      	movle	r3, #48	; 0x30
d00062dc:	f806 3c01 	strble.w	r3, [r6, #-1]
d00062e0:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d00062e4:	1b92      	subs	r2, r2, r6
d00062e6:	6122      	str	r2, [r4, #16]
d00062e8:	f8cd a000 	str.w	sl, [sp]
d00062ec:	464b      	mov	r3, r9
d00062ee:	aa03      	add	r2, sp, #12
d00062f0:	4621      	mov	r1, r4
d00062f2:	4640      	mov	r0, r8
d00062f4:	f7ff fee2 	bl	d00060bc <_printf_common>
d00062f8:	3001      	adds	r0, #1
d00062fa:	d14c      	bne.n	d0006396 <_printf_i+0x1fe>
d00062fc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0006300:	b004      	add	sp, #16
d0006302:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0006306:	4835      	ldr	r0, [pc, #212]	; (d00063dc <_printf_i+0x244>)
d0006308:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d000630c:	6823      	ldr	r3, [r4, #0]
d000630e:	680e      	ldr	r6, [r1, #0]
d0006310:	061f      	lsls	r7, r3, #24
d0006312:	f856 5b04 	ldr.w	r5, [r6], #4
d0006316:	600e      	str	r6, [r1, #0]
d0006318:	d514      	bpl.n	d0006344 <_printf_i+0x1ac>
d000631a:	07d9      	lsls	r1, r3, #31
d000631c:	bf44      	itt	mi
d000631e:	f043 0320 	orrmi.w	r3, r3, #32
d0006322:	6023      	strmi	r3, [r4, #0]
d0006324:	b91d      	cbnz	r5, d000632e <_printf_i+0x196>
d0006326:	6823      	ldr	r3, [r4, #0]
d0006328:	f023 0320 	bic.w	r3, r3, #32
d000632c:	6023      	str	r3, [r4, #0]
d000632e:	2310      	movs	r3, #16
d0006330:	e7b0      	b.n	d0006294 <_printf_i+0xfc>
d0006332:	6823      	ldr	r3, [r4, #0]
d0006334:	f043 0320 	orr.w	r3, r3, #32
d0006338:	6023      	str	r3, [r4, #0]
d000633a:	2378      	movs	r3, #120	; 0x78
d000633c:	4828      	ldr	r0, [pc, #160]	; (d00063e0 <_printf_i+0x248>)
d000633e:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0006342:	e7e3      	b.n	d000630c <_printf_i+0x174>
d0006344:	065e      	lsls	r6, r3, #25
d0006346:	bf48      	it	mi
d0006348:	b2ad      	uxthmi	r5, r5
d000634a:	e7e6      	b.n	d000631a <_printf_i+0x182>
d000634c:	4616      	mov	r6, r2
d000634e:	e7bb      	b.n	d00062c8 <_printf_i+0x130>
d0006350:	680b      	ldr	r3, [r1, #0]
d0006352:	6826      	ldr	r6, [r4, #0]
d0006354:	6960      	ldr	r0, [r4, #20]
d0006356:	1d1d      	adds	r5, r3, #4
d0006358:	600d      	str	r5, [r1, #0]
d000635a:	0635      	lsls	r5, r6, #24
d000635c:	681b      	ldr	r3, [r3, #0]
d000635e:	d501      	bpl.n	d0006364 <_printf_i+0x1cc>
d0006360:	6018      	str	r0, [r3, #0]
d0006362:	e002      	b.n	d000636a <_printf_i+0x1d2>
d0006364:	0671      	lsls	r1, r6, #25
d0006366:	d5fb      	bpl.n	d0006360 <_printf_i+0x1c8>
d0006368:	8018      	strh	r0, [r3, #0]
d000636a:	2300      	movs	r3, #0
d000636c:	6123      	str	r3, [r4, #16]
d000636e:	4616      	mov	r6, r2
d0006370:	e7ba      	b.n	d00062e8 <_printf_i+0x150>
d0006372:	680b      	ldr	r3, [r1, #0]
d0006374:	1d1a      	adds	r2, r3, #4
d0006376:	600a      	str	r2, [r1, #0]
d0006378:	681e      	ldr	r6, [r3, #0]
d000637a:	6862      	ldr	r2, [r4, #4]
d000637c:	2100      	movs	r1, #0
d000637e:	4630      	mov	r0, r6
d0006380:	f000 f836 	bl	d00063f0 <memchr>
d0006384:	b108      	cbz	r0, d000638a <_printf_i+0x1f2>
d0006386:	1b80      	subs	r0, r0, r6
d0006388:	6060      	str	r0, [r4, #4]
d000638a:	6863      	ldr	r3, [r4, #4]
d000638c:	6123      	str	r3, [r4, #16]
d000638e:	2300      	movs	r3, #0
d0006390:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0006394:	e7a8      	b.n	d00062e8 <_printf_i+0x150>
d0006396:	6923      	ldr	r3, [r4, #16]
d0006398:	4632      	mov	r2, r6
d000639a:	4649      	mov	r1, r9
d000639c:	4640      	mov	r0, r8
d000639e:	47d0      	blx	sl
d00063a0:	3001      	adds	r0, #1
d00063a2:	d0ab      	beq.n	d00062fc <_printf_i+0x164>
d00063a4:	6823      	ldr	r3, [r4, #0]
d00063a6:	079b      	lsls	r3, r3, #30
d00063a8:	d413      	bmi.n	d00063d2 <_printf_i+0x23a>
d00063aa:	68e0      	ldr	r0, [r4, #12]
d00063ac:	9b03      	ldr	r3, [sp, #12]
d00063ae:	4298      	cmp	r0, r3
d00063b0:	bfb8      	it	lt
d00063b2:	4618      	movlt	r0, r3
d00063b4:	e7a4      	b.n	d0006300 <_printf_i+0x168>
d00063b6:	2301      	movs	r3, #1
d00063b8:	4632      	mov	r2, r6
d00063ba:	4649      	mov	r1, r9
d00063bc:	4640      	mov	r0, r8
d00063be:	47d0      	blx	sl
d00063c0:	3001      	adds	r0, #1
d00063c2:	d09b      	beq.n	d00062fc <_printf_i+0x164>
d00063c4:	3501      	adds	r5, #1
d00063c6:	68e3      	ldr	r3, [r4, #12]
d00063c8:	9903      	ldr	r1, [sp, #12]
d00063ca:	1a5b      	subs	r3, r3, r1
d00063cc:	42ab      	cmp	r3, r5
d00063ce:	dcf2      	bgt.n	d00063b6 <_printf_i+0x21e>
d00063d0:	e7eb      	b.n	d00063aa <_printf_i+0x212>
d00063d2:	2500      	movs	r5, #0
d00063d4:	f104 0619 	add.w	r6, r4, #25
d00063d8:	e7f5      	b.n	d00063c6 <_printf_i+0x22e>
d00063da:	bf00      	nop
d00063dc:	d000eed6 	.word	0xd000eed6
d00063e0:	d000eee7 	.word	0xd000eee7
	...

d00063f0 <memchr>:
d00063f0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00063f4:	2a10      	cmp	r2, #16
d00063f6:	db2b      	blt.n	d0006450 <memchr+0x60>
d00063f8:	f010 0f07 	tst.w	r0, #7
d00063fc:	d008      	beq.n	d0006410 <memchr+0x20>
d00063fe:	f810 3b01 	ldrb.w	r3, [r0], #1
d0006402:	3a01      	subs	r2, #1
d0006404:	428b      	cmp	r3, r1
d0006406:	d02d      	beq.n	d0006464 <memchr+0x74>
d0006408:	f010 0f07 	tst.w	r0, #7
d000640c:	b342      	cbz	r2, d0006460 <memchr+0x70>
d000640e:	d1f6      	bne.n	d00063fe <memchr+0xe>
d0006410:	b4f0      	push	{r4, r5, r6, r7}
d0006412:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0006416:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d000641a:	f022 0407 	bic.w	r4, r2, #7
d000641e:	f07f 0700 	mvns.w	r7, #0
d0006422:	2300      	movs	r3, #0
d0006424:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0006428:	3c08      	subs	r4, #8
d000642a:	ea85 0501 	eor.w	r5, r5, r1
d000642e:	ea86 0601 	eor.w	r6, r6, r1
d0006432:	fa85 f547 	uadd8	r5, r5, r7
d0006436:	faa3 f587 	sel	r5, r3, r7
d000643a:	fa86 f647 	uadd8	r6, r6, r7
d000643e:	faa5 f687 	sel	r6, r5, r7
d0006442:	b98e      	cbnz	r6, d0006468 <memchr+0x78>
d0006444:	d1ee      	bne.n	d0006424 <memchr+0x34>
d0006446:	bcf0      	pop	{r4, r5, r6, r7}
d0006448:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d000644c:	f002 0207 	and.w	r2, r2, #7
d0006450:	b132      	cbz	r2, d0006460 <memchr+0x70>
d0006452:	f810 3b01 	ldrb.w	r3, [r0], #1
d0006456:	3a01      	subs	r2, #1
d0006458:	ea83 0301 	eor.w	r3, r3, r1
d000645c:	b113      	cbz	r3, d0006464 <memchr+0x74>
d000645e:	d1f8      	bne.n	d0006452 <memchr+0x62>
d0006460:	2000      	movs	r0, #0
d0006462:	4770      	bx	lr
d0006464:	3801      	subs	r0, #1
d0006466:	4770      	bx	lr
d0006468:	2d00      	cmp	r5, #0
d000646a:	bf06      	itte	eq
d000646c:	4635      	moveq	r5, r6
d000646e:	3803      	subeq	r0, #3
d0006470:	3807      	subne	r0, #7
d0006472:	f015 0f01 	tst.w	r5, #1
d0006476:	d107      	bne.n	d0006488 <memchr+0x98>
d0006478:	3001      	adds	r0, #1
d000647a:	f415 7f80 	tst.w	r5, #256	; 0x100
d000647e:	bf02      	ittt	eq
d0006480:	3001      	addeq	r0, #1
d0006482:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0006486:	3001      	addeq	r0, #1
d0006488:	bcf0      	pop	{r4, r5, r6, r7}
d000648a:	3801      	subs	r0, #1
d000648c:	4770      	bx	lr
d000648e:	bf00      	nop

d0006490 <_free_r>:
d0006490:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0006492:	2900      	cmp	r1, #0
d0006494:	d048      	beq.n	d0006528 <_free_r+0x98>
d0006496:	f851 3c04 	ldr.w	r3, [r1, #-4]
d000649a:	9001      	str	r0, [sp, #4]
d000649c:	2b00      	cmp	r3, #0
d000649e:	f1a1 0404 	sub.w	r4, r1, #4
d00064a2:	bfb8      	it	lt
d00064a4:	18e4      	addlt	r4, r4, r3
d00064a6:	f000 f8d3 	bl	d0006650 <__malloc_lock>
d00064aa:	4a20      	ldr	r2, [pc, #128]	; (d000652c <_free_r+0x9c>)
d00064ac:	9801      	ldr	r0, [sp, #4]
d00064ae:	6813      	ldr	r3, [r2, #0]
d00064b0:	4615      	mov	r5, r2
d00064b2:	b933      	cbnz	r3, d00064c2 <_free_r+0x32>
d00064b4:	6063      	str	r3, [r4, #4]
d00064b6:	6014      	str	r4, [r2, #0]
d00064b8:	b003      	add	sp, #12
d00064ba:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d00064be:	f000 b8cd 	b.w	d000665c <__malloc_unlock>
d00064c2:	42a3      	cmp	r3, r4
d00064c4:	d90b      	bls.n	d00064de <_free_r+0x4e>
d00064c6:	6821      	ldr	r1, [r4, #0]
d00064c8:	1862      	adds	r2, r4, r1
d00064ca:	4293      	cmp	r3, r2
d00064cc:	bf04      	itt	eq
d00064ce:	681a      	ldreq	r2, [r3, #0]
d00064d0:	685b      	ldreq	r3, [r3, #4]
d00064d2:	6063      	str	r3, [r4, #4]
d00064d4:	bf04      	itt	eq
d00064d6:	1852      	addeq	r2, r2, r1
d00064d8:	6022      	streq	r2, [r4, #0]
d00064da:	602c      	str	r4, [r5, #0]
d00064dc:	e7ec      	b.n	d00064b8 <_free_r+0x28>
d00064de:	461a      	mov	r2, r3
d00064e0:	685b      	ldr	r3, [r3, #4]
d00064e2:	b10b      	cbz	r3, d00064e8 <_free_r+0x58>
d00064e4:	42a3      	cmp	r3, r4
d00064e6:	d9fa      	bls.n	d00064de <_free_r+0x4e>
d00064e8:	6811      	ldr	r1, [r2, #0]
d00064ea:	1855      	adds	r5, r2, r1
d00064ec:	42a5      	cmp	r5, r4
d00064ee:	d10b      	bne.n	d0006508 <_free_r+0x78>
d00064f0:	6824      	ldr	r4, [r4, #0]
d00064f2:	4421      	add	r1, r4
d00064f4:	1854      	adds	r4, r2, r1
d00064f6:	42a3      	cmp	r3, r4
d00064f8:	6011      	str	r1, [r2, #0]
d00064fa:	d1dd      	bne.n	d00064b8 <_free_r+0x28>
d00064fc:	681c      	ldr	r4, [r3, #0]
d00064fe:	685b      	ldr	r3, [r3, #4]
d0006500:	6053      	str	r3, [r2, #4]
d0006502:	4421      	add	r1, r4
d0006504:	6011      	str	r1, [r2, #0]
d0006506:	e7d7      	b.n	d00064b8 <_free_r+0x28>
d0006508:	d902      	bls.n	d0006510 <_free_r+0x80>
d000650a:	230c      	movs	r3, #12
d000650c:	6003      	str	r3, [r0, #0]
d000650e:	e7d3      	b.n	d00064b8 <_free_r+0x28>
d0006510:	6825      	ldr	r5, [r4, #0]
d0006512:	1961      	adds	r1, r4, r5
d0006514:	428b      	cmp	r3, r1
d0006516:	bf04      	itt	eq
d0006518:	6819      	ldreq	r1, [r3, #0]
d000651a:	685b      	ldreq	r3, [r3, #4]
d000651c:	6063      	str	r3, [r4, #4]
d000651e:	bf04      	itt	eq
d0006520:	1949      	addeq	r1, r1, r5
d0006522:	6021      	streq	r1, [r4, #0]
d0006524:	6054      	str	r4, [r2, #4]
d0006526:	e7c7      	b.n	d00064b8 <_free_r+0x28>
d0006528:	b003      	add	sp, #12
d000652a:	bd30      	pop	{r4, r5, pc}
d000652c:	d000f050 	.word	0xd000f050

d0006530 <_malloc_r>:
d0006530:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0006532:	1ccd      	adds	r5, r1, #3
d0006534:	f025 0503 	bic.w	r5, r5, #3
d0006538:	3508      	adds	r5, #8
d000653a:	2d0c      	cmp	r5, #12
d000653c:	bf38      	it	cc
d000653e:	250c      	movcc	r5, #12
d0006540:	2d00      	cmp	r5, #0
d0006542:	4606      	mov	r6, r0
d0006544:	db01      	blt.n	d000654a <_malloc_r+0x1a>
d0006546:	42a9      	cmp	r1, r5
d0006548:	d903      	bls.n	d0006552 <_malloc_r+0x22>
d000654a:	230c      	movs	r3, #12
d000654c:	6033      	str	r3, [r6, #0]
d000654e:	2000      	movs	r0, #0
d0006550:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0006552:	f000 f87d 	bl	d0006650 <__malloc_lock>
d0006556:	4921      	ldr	r1, [pc, #132]	; (d00065dc <_malloc_r+0xac>)
d0006558:	680a      	ldr	r2, [r1, #0]
d000655a:	4614      	mov	r4, r2
d000655c:	b99c      	cbnz	r4, d0006586 <_malloc_r+0x56>
d000655e:	4f20      	ldr	r7, [pc, #128]	; (d00065e0 <_malloc_r+0xb0>)
d0006560:	683b      	ldr	r3, [r7, #0]
d0006562:	b923      	cbnz	r3, d000656e <_malloc_r+0x3e>
d0006564:	4621      	mov	r1, r4
d0006566:	4630      	mov	r0, r6
d0006568:	f000 f862 	bl	d0006630 <_sbrk_r>
d000656c:	6038      	str	r0, [r7, #0]
d000656e:	4629      	mov	r1, r5
d0006570:	4630      	mov	r0, r6
d0006572:	f000 f85d 	bl	d0006630 <_sbrk_r>
d0006576:	1c43      	adds	r3, r0, #1
d0006578:	d123      	bne.n	d00065c2 <_malloc_r+0x92>
d000657a:	230c      	movs	r3, #12
d000657c:	6033      	str	r3, [r6, #0]
d000657e:	4630      	mov	r0, r6
d0006580:	f000 f86c 	bl	d000665c <__malloc_unlock>
d0006584:	e7e3      	b.n	d000654e <_malloc_r+0x1e>
d0006586:	6823      	ldr	r3, [r4, #0]
d0006588:	1b5b      	subs	r3, r3, r5
d000658a:	d417      	bmi.n	d00065bc <_malloc_r+0x8c>
d000658c:	2b0b      	cmp	r3, #11
d000658e:	d903      	bls.n	d0006598 <_malloc_r+0x68>
d0006590:	6023      	str	r3, [r4, #0]
d0006592:	441c      	add	r4, r3
d0006594:	6025      	str	r5, [r4, #0]
d0006596:	e004      	b.n	d00065a2 <_malloc_r+0x72>
d0006598:	6863      	ldr	r3, [r4, #4]
d000659a:	42a2      	cmp	r2, r4
d000659c:	bf0c      	ite	eq
d000659e:	600b      	streq	r3, [r1, #0]
d00065a0:	6053      	strne	r3, [r2, #4]
d00065a2:	4630      	mov	r0, r6
d00065a4:	f000 f85a 	bl	d000665c <__malloc_unlock>
d00065a8:	f104 000b 	add.w	r0, r4, #11
d00065ac:	1d23      	adds	r3, r4, #4
d00065ae:	f020 0007 	bic.w	r0, r0, #7
d00065b2:	1ac2      	subs	r2, r0, r3
d00065b4:	d0cc      	beq.n	d0006550 <_malloc_r+0x20>
d00065b6:	1a1b      	subs	r3, r3, r0
d00065b8:	50a3      	str	r3, [r4, r2]
d00065ba:	e7c9      	b.n	d0006550 <_malloc_r+0x20>
d00065bc:	4622      	mov	r2, r4
d00065be:	6864      	ldr	r4, [r4, #4]
d00065c0:	e7cc      	b.n	d000655c <_malloc_r+0x2c>
d00065c2:	1cc4      	adds	r4, r0, #3
d00065c4:	f024 0403 	bic.w	r4, r4, #3
d00065c8:	42a0      	cmp	r0, r4
d00065ca:	d0e3      	beq.n	d0006594 <_malloc_r+0x64>
d00065cc:	1a21      	subs	r1, r4, r0
d00065ce:	4630      	mov	r0, r6
d00065d0:	f000 f82e 	bl	d0006630 <_sbrk_r>
d00065d4:	3001      	adds	r0, #1
d00065d6:	d1dd      	bne.n	d0006594 <_malloc_r+0x64>
d00065d8:	e7cf      	b.n	d000657a <_malloc_r+0x4a>
d00065da:	bf00      	nop
d00065dc:	d000f050 	.word	0xd000f050
d00065e0:	d000f054 	.word	0xd000f054

d00065e4 <_realloc_r>:
d00065e4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00065e6:	4607      	mov	r7, r0
d00065e8:	4614      	mov	r4, r2
d00065ea:	460e      	mov	r6, r1
d00065ec:	b921      	cbnz	r1, d00065f8 <_realloc_r+0x14>
d00065ee:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00065f2:	4611      	mov	r1, r2
d00065f4:	f7ff bf9c 	b.w	d0006530 <_malloc_r>
d00065f8:	b922      	cbnz	r2, d0006604 <_realloc_r+0x20>
d00065fa:	f7ff ff49 	bl	d0006490 <_free_r>
d00065fe:	4625      	mov	r5, r4
d0006600:	4628      	mov	r0, r5
d0006602:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0006604:	f000 f830 	bl	d0006668 <_malloc_usable_size_r>
d0006608:	42a0      	cmp	r0, r4
d000660a:	d20f      	bcs.n	d000662c <_realloc_r+0x48>
d000660c:	4621      	mov	r1, r4
d000660e:	4638      	mov	r0, r7
d0006610:	f7ff ff8e 	bl	d0006530 <_malloc_r>
d0006614:	4605      	mov	r5, r0
d0006616:	2800      	cmp	r0, #0
d0006618:	d0f2      	beq.n	d0006600 <_realloc_r+0x1c>
d000661a:	4631      	mov	r1, r6
d000661c:	4622      	mov	r2, r4
d000661e:	f7ff f9a3 	bl	d0005968 <memcpy>
d0006622:	4631      	mov	r1, r6
d0006624:	4638      	mov	r0, r7
d0006626:	f7ff ff33 	bl	d0006490 <_free_r>
d000662a:	e7e9      	b.n	d0006600 <_realloc_r+0x1c>
d000662c:	4635      	mov	r5, r6
d000662e:	e7e7      	b.n	d0006600 <_realloc_r+0x1c>

d0006630 <_sbrk_r>:
d0006630:	b538      	push	{r3, r4, r5, lr}
d0006632:	4d06      	ldr	r5, [pc, #24]	; (d000664c <_sbrk_r+0x1c>)
d0006634:	2300      	movs	r3, #0
d0006636:	4604      	mov	r4, r0
d0006638:	4608      	mov	r0, r1
d000663a:	602b      	str	r3, [r5, #0]
d000663c:	f7f9 fe12 	bl	d0000264 <_sbrk>
d0006640:	1c43      	adds	r3, r0, #1
d0006642:	d102      	bne.n	d000664a <_sbrk_r+0x1a>
d0006644:	682b      	ldr	r3, [r5, #0]
d0006646:	b103      	cbz	r3, d000664a <_sbrk_r+0x1a>
d0006648:	6023      	str	r3, [r4, #0]
d000664a:	bd38      	pop	{r3, r4, r5, pc}
d000664c:	d0252b1c 	.word	0xd0252b1c

d0006650 <__malloc_lock>:
d0006650:	4801      	ldr	r0, [pc, #4]	; (d0006658 <__malloc_lock+0x8>)
d0006652:	f000 b811 	b.w	d0006678 <__retarget_lock_acquire_recursive>
d0006656:	bf00      	nop
d0006658:	d0252b24 	.word	0xd0252b24

d000665c <__malloc_unlock>:
d000665c:	4801      	ldr	r0, [pc, #4]	; (d0006664 <__malloc_unlock+0x8>)
d000665e:	f000 b80c 	b.w	d000667a <__retarget_lock_release_recursive>
d0006662:	bf00      	nop
d0006664:	d0252b24 	.word	0xd0252b24

d0006668 <_malloc_usable_size_r>:
d0006668:	f851 3c04 	ldr.w	r3, [r1, #-4]
d000666c:	1f18      	subs	r0, r3, #4
d000666e:	2b00      	cmp	r3, #0
d0006670:	bfbc      	itt	lt
d0006672:	580b      	ldrlt	r3, [r1, r0]
d0006674:	18c0      	addlt	r0, r0, r3
d0006676:	4770      	bx	lr

d0006678 <__retarget_lock_acquire_recursive>:
d0006678:	4770      	bx	lr

d000667a <__retarget_lock_release_recursive>:
d000667a:	4770      	bx	lr

d000667c <hid_keymap_uk>:
d000667c:	0000 0000 6261 6463 6665 6867 6a69 6c6b     ....abcdefghijkl
d000668c:	6e6d 706f 7271 7473 7675 7877 7a79 3231     mnopqrstuvwxyz12
d000669c:	3433 3635 3837 3039 000a 0000 2d20 5b3d     34567890.... -=[
d00066ac:	235d 3b5c 6027 2e2c 002f 0000 0000 0000     ]#\;'`,./.......
	...

d00066fc <hid_keymap_uk_shift>:
d00066fc:	0000 0000 4241 4443 4645 4847 4a49 4c4b     ....ABCDEFGHIJKL
d000670c:	4e4d 504f 5251 5453 5655 5857 5a59 2221     MNOPQRSTUVWXYZ!"
d000671c:	24a3 5e25 2a26 2928 0000 0000 5f00 7b2b     .$%^&*()....._+{
d000672c:	7e7d 3a7c ac40 3e3c 003f 0000 0000 0000     }~|:@.<>?.......
	...
d000677c:	5f5f 5f5f 5f5f 5f5f 5f5f 5f5f 5f5f 5f5f     ________________
d000678c:	5f5f 5f5f 5f5f 5f5f 5f5f 5f5f 5f5f 5f5f     ________________
d000679c:	5f5f 5f5f 5f5f 5f5f 5f5f 5f5f 5f5f 5f5f     ________________
d00067ac:	5f5f 5f5f 5f5f 0000 0016 0000 0020 0000     ______...... ...
d00067bc:	6946 656c 5320 7274 6e69 2067 616e 656d     File String name
d00067cc:	7320 6c65 6365 0a74 0000 0000 753c 616e      select.....<una
d00067dc:	6c62 2065 6f74 6720 7465 6420 7269 003e     ble to get dir>.
d00067ec:	002e 0000 001e 0000 580a 000a 001f 0000     .........X......
d00067fc:	4b4f 0000 4150 4552 544e 0000 6964 6572     OK..PARENT..dire
d000680c:	7463 726f 2079 6863 6e61 6567 3d20 2720     ctory change = '
d000681c:	7325 0d27 000a 0000 6946 656c 616e 656d     %s'.....Filename
d000682c:	7420 206f 6173 6576 7420 3a6f 2720 7325      to save to: '%s
d000683c:	0a27 0000 6946 656c 616e 656d 7420 206f     '...Filename to 
d000684c:	6f6c 6461 7420 3a6f 2720 7325 0a27 0000     load to: '%s'...
d000685c:	7c2d 002d 2d2d 002d 3f3f 003f 7325 6425     -|-.---.???.%s%d
d000686c:	0000 0000 6325 252d 0064 0000 7341 6973     ....%c-%d...Assi
d000687c:	6e67 6f53 6e75 3a64 6120 6970 615f 6475     gnSound: api_aud
d000688c:	255b 5d75 6920 2073 554e 4c4c 0d21 000a     [%u] is NULL!...
d000689c:	0043 0000 2343 0000 0044 0000 2344 0000     C...C#..D...D#..
d00068ac:	0045 0000 0046 0000 2346 0000 0047 0000     E...F...F#..G...
d00068bc:	2347 0000 0041 0000 2341 0000 0042 0000     G#..A...A#..B...

d00068cc <noteFrequencies>:
d00068cc:	03ff 0440 047b 04d7 0518 055d 05c5 0616     ..@.{.....].....
d00068dc:	067f 06dc 0738 07b2 07ff 0881 08f6 09af     ....8...........
d00068ec:	0a30 0aba 0b8b 0c2c 0cfe 0db8 0e71 0f64     0.....,.....q.d.
d00068fc:	1037 112f 122c 1344 1475 15b1 1714 1851     7./.,.D.u.....Q.
d000690c:	19e3 1b5f 1ce0 1e7b 205f 2226 248d 268f     .._...{._ &".$.&
d000691c:	28de 2aec 2e1d 30e4 3369 36b6 39eb 3d7c     .(.*...0i3.6.9|=
d000692c:	4120 44ff 485d 4cd1 5156 5695 5b56 60ef      A.D]H.LVQ.VV[.`
d000693c:	66ae 6d3a 7310 7a7b 80d7 88c6 92c2 9916     .f:m.s{z........
d000694c:	a215 abdc b7de c1af cc9b d8ed e6d3 f6ac     ................
d000695c:	3025 7532 0000 0000 3025 5832 0000 0000     %02u....%02X....
d000696c:	3125 0058 5551 5449 003f 0000               %1X.QUIT?...

d0006978 <editColumnChannelCoords>:
d0006978:	002a 004b 007c 004b 00ce 004b 0120 004b     *.K.|.K...K. .K.

d0006988 <editColumnXCoords>:
d0006988:	002c 001c 0047 000b 004f 000b 0058 000b     ,...G...O...X...
d0006998:	0060 000b 0068 000b 007e 001c 0099 000b     `...h...~.......
d00069a8:	00a1 000b 00aa 000b 00b2 000b 00ba 000b     ................
d00069b8:	00d0 001c 00eb 000b 00f3 000b 00fc 000b     ................
d00069c8:	0104 000b 010c 000b 0122 001c 013d 000b     ........"...=...
d00069d8:	0145 000b 014e 000b 0156 000b 015e 000b     E...N...V...^...

d00069e8 <font>:
	...
d00069f0:	423c a195 95a1 3c42 3010 3060 0c18 0206     <B....B<.0`0....
d0006a00:	6642 183c 3c18 4266 7f7e 7f7f 7e7f 0000     Bf<..<fB~....~..
d0006a10:	0000 0040 0040 0040 221c 1c22 221c 1c22     ..@.@.@.."".."".
d0006a20:	8100 7e81 8181 0000 0000 0000 0000 0000     ...~............
d0006a30:	0400 040a 0000 0000 0000 0000 0000 0000     ................
d0006a40:	3000 4a48 0e36 0000 0600 7929 0629 0000     .0HJ6.....)y)...
	...
d0006a58:	6000 0a7e 3f35 0000 2a00 361c 2a1c 0000     .`~.5?...*.6.*..
d0006a68:	1818 1818 3c7e 0018 1800 7e3c 1818 1818     ....~<....<~....
d0006a78:	1400 7f36 1436 0000 0000 005f 005f 0000     ..6.6....._._...
d0006a88:	0600 7f09 7f01 0000 2200 554d 2259 0000     ........."MUY"..
d0006a98:	c000 c0c0 c0c0 c0c0 1400 ffb6 14b6 0000     ................
d0006aa8:	0400 3f06 0406 0000 1000 7e30 1030 0000     ...?......0~0...
d0006ab8:	0800 3e08 081c 0000 0800 3e1c 0808 0000     ...>.......>....
d0006ac8:	7800 4040 4040 0000 0800 083e 083e 0000     .x@@@@....>.>...
d0006ad8:	0c08 7e7e 7e7e 080c 3010 7e7e 7e7e 1030     ..~~~~...0~~~~0.
	...
d0006af0:	0000 5f00 005f 0000 0300 0003 0303 0000     ...__...........
d0006b00:	1400 143e 3e14 0014 2400 6b2e 3a6b 0012     ..>..>...$.kk:..
d0006b10:	6a4c 1836 566c 0032 7e30 594f 3a77 4068     Lj6.lV2.0~OYw:h@
d0006b20:	0000 0704 0003 0000 0000 3e1c 4163 0000     ...........>cA..
d0006b30:	0000 6341 1c3e 0000 2a08 1c3e 3e1c 082a     ..Ac>....*>..>*.
d0006b40:	0800 3e08 083e 0008 0000 e080 0060 0000     ...>>.......`...
d0006b50:	0800 0808 0808 0008 0000 0000 6060 0000     ............``..
d0006b60:	6040 1830 060c 0103 3e00 597f 7f4d 003e     @`0......>.YM.>.
d0006b70:	0400 7f06 007f 0000 4200 7163 4f59 0046     .........BcqYOF.
d0006b80:	2200 4963 7f49 0036 1c18 1316 7f7f 0010     ."cII.6.........
d0006b90:	2700 4567 7d45 0039 3c00 4b7e 7949 0030     .'gEE}9..<~KIy0.
d0006ba0:	0100 7101 0f79 0007 3600 497f 7f49 0036     ...qy....6.II.6.
d0006bb0:	0600 494f 3f69 001e 0000 6600 0066 0000     ..OIi?.....ff...
d0006bc0:	0000 e680 0066 0000 0800 1408 2214 0022     ....f........"".
d0006bd0:	1400 1414 1414 0014 2200 1422 0814 0008     ........."".....
d0006be0:	0200 5103 0f59 0006 7f3e 5d41 1f55 001e     ...QY...>.A]U...
d0006bf0:	7e00 097f 7f09 007e 7f00 497f 7f49 0036     .~....~....II.6.
d0006c00:	1c00 633e 4141 0041 7f00 417f 3e63 001c     ..>cAAA....Ac>..
d0006c10:	7f00 497f 4149 0041 7f00 097f 0109 0001     ...IIAA.........
d0006c20:	3e00 417f 7b49 007a 7f00 087f 7f08 007f     .>.AI{z.........
d0006c30:	0000 7f41 417f 0000 2000 4060 7f40 003f     ..A..A... `@@.?.
d0006c40:	7f7f 1c08 6336 0041 7f00 407f 4040 0040     ....6cA....@@@@.
d0006c50:	7f7f 0c06 7f06 007f 7f7f 0c06 7f18 007f     ................
d0006c60:	3e00 417f 7f41 003e 7f00 097f 0f09 0006     .>.AA.>.........
d0006c70:	7f3e 6141 7e7f 0040 7f00 097f 7f19 0066     >.Aa.~@.......f.
d0006c80:	2600 4d6f 7b59 0032 0100 7f01 017f 0001     .&oMY{2.........
d0006c90:	3f00 407f 7f40 003f 0f00 703f 3f70 000f     .?.@@.?...?pp?..
d0006ca0:	7f7f 1830 7f30 007f 6341 1c36 361c 4163     ..0.0...Ac6..6cA
d0006cb0:	0301 7c06 067c 0103 7161 4d59 4347 0041     ...||...aqYMGCA.
d0006cc0:	0000 7f7f 4141 0000 0301 0c06 3018 4060     ....AA.......0`@
d0006cd0:	0000 4141 7f7f 0000 0c08 0306 0c06 0008     ..AA............
d0006ce0:	8000 8080 8080 8080 0000 0300 0407 0000     ................
d0006cf0:	2000 5474 7c54 0078 7f00 447f 7c44 0038     . tTT|x....DD|8.
d0006d00:	3800 447c 4444 0000 3800 447c 7f44 007f     .8|DDD...8|DD...
d0006d10:	3800 547c 5c54 0018 0400 7f7e 0505 0000     .8|TT\....~.....
d0006d20:	1800 a4bc fca4 007c 7f00 047f 7c04 0078     ......|......|x.
d0006d30:	0000 3d00 407d 0000 8000 8080 7dfd 0000     ...=}@.......}..
d0006d40:	7f00 107f 6c38 0044 0000 3f00 407f 0000     ....8lD....?.@..
d0006d50:	7c7c 180c 7c0c 0078 7c00 047c 7c04 0078     ||...|x..||..|x.
d0006d60:	3800 447c 7c44 0038 fc00 24fc 3c24 0018     .8|DD|8....$$<..
d0006d70:	1800 243c fc24 00fc 7c00 047c 0c04 0008     ..<$$....||.....
d0006d80:	4800 545c 7454 0020 0400 7f3f 4444 0000     .H\TTt ...?.DD..
d0006d90:	3c00 407c 7c40 007c 1c00 603c 3c60 001c     .<|@@||...<``<..
d0006da0:	7c3c 3060 7c60 003c 6c44 1038 6c38 0044     <|`0`|<.Dl8.8lD.
d0006db0:	1c00 e0bc 3c60 001c 4400 7464 4c5c 0044     ....`<...Ddt\LD.
d0006dc0:	0800 3e08 4177 0041 0000 7f00 007f 0000     ...>wAA.........
d0006dd0:	4100 7741 083e 0008 0102 0301 0202 0001     .AAw>...........
d0006de0:	4c4c 6666 3333 1919 1e00 e1a1 1221 0000     LLff33......!...
d0006df0:	3d00 2040 007d 0000 3800 5454 0955 0000     .=@ }....8TTU...
d0006e00:	2000 5555 7855 0000 2000 5455 7855 0000     . UUUx... UTUx..
d0006e10:	2000 5555 7854 0000 2000 5557 7857 0000     . UUTx... WUWx..
d0006e20:	1c00 e2a2 1422 0000 3800 5555 0855 0000     ...."....8UUU...
d0006e30:	3800 5455 0855 0000 3800 5555 0854 0000     .8UTU....8UUT...
d0006e40:	0000 7c01 0041 0000 0000 7d01 0041 0000     ...|A......}A...
d0006e50:	0000 7c01 0040 0000 7000 2429 7029 0000     ...|@....p)$)p..
d0006e60:	7800 252f 782f 0000 0800 1002 c18a f2c1     .x/%/x..........
d0006e70:	f8f4 f0f0 c0c0 0080 0000 0600 3f1f 7f7e     .............?~.
d0006e80:	ffff 63df 3f7f 061f 3800 4445 0039 0000     ...c.?...8ED9...
d0006e90:	3900 4445 0038 0000 3c00 2141 007d 0000     .9ED8....<A!}...
d0006ea0:	3d00 2041 007c 0000 9c00 60a1 003d 0000     .=A |......`=...
d0006eb0:	3d00 4242 003d 0000 3c00 4041 003d 0000     .=BB=....<A@=...
d0006ec0:	7080 5868 0438 0000 4800 497e 6249 0000     .phX8....H~IIb..
d0006ed0:	7e00 5d61 3f43 0000 2200 0814 2214 0000     .~a]C?..."..."..
d0006ee0:	4000 7e88 0209 0000 2000 5554 7855 0000     .@.~..... TUUx..
d0006ef0:	0000 7d00 007d 0000 0800 141c 3e3e 0014     ...}}.......>>..
d0006f00:	4800 7f7e 4349 0042 1500 0a0e 0e0a 0015     .H~.ICB.........
d0006f10:	0301 7c16 167c 0103 0000 7700 0077 0000     ...||......ww...
d0006f20:	0a00 555f 7d55 0028 0300 0003 0300 0003     .._UU}(.........
d0006f30:	817e a599 81a5 007e 2400 292a 2f29 0020     ~.....~..$*))/ .
d0006f40:	1c08 2236 1c08 2236 0000 0101 0301 0003     ..6"..6"........
d0006f50:	0800 0808 0808 0008 817e 95bd a995 7e81     ........~......~
d0006f60:	0100 0101 0101 0001 0200 0507 0705 0002     ................
d0006f70:	4400 5f44 445f 0044 1100 1d19 1217 0000     .DD__DD.........
d0006f80:	1100 1511 0a1f 0000 0400 0306 0001 0000     ................
d0006f90:	fc00 407c 7c40 407c 0600 0f0f 017f 007f     ..|@@||@........
d0006fa0:	0000 0c00 000c 0000 0000 c080 0040 0000     ............@...
d0006fb0:	0200 1f1f 0000 0000 2600 2929 2629 0000     .........&)))&..
d0006fc0:	3622 081c 3622 081c 6f42 1830 664c 40f2     "6.."6..Bo0.Lf.@
d0006fd0:	6f42 1830 d69c 00b2 5511 306e 4c18 f266     Bo0......Un0.Lf.
d0006fe0:	5a42 185a 3c7e 0018 ffff ff00 7eff 183c     BZZ.~<.......~<.
d0006ff0:	dcd8 dfde dedf d8dc ffff 1800 7e3c ffff     ............<~..
d0007000:	ffff 3c7e 0018 ffff 3c18 ff7e 00ff 0000     ..~<.....<~.....
d0007010:	0000 ff00 7eff 183c 2000 5556 7956 0000     .....~<.. VUVy..
d0007020:	7000 252a 712a 0000 221c fa72 2222 1c22     .p*%*q..."r.""".
d0007030:	5555 5555 5f44 444e bf82 a882 4109 41fd     UUUUD_ND.....A.A
d0007040:	413e 5541 5549 3e41 190e 7e3d 3f7e 0e1f     >AAUIUA>..=~~?..
d0007050:	5028 50a0 1428 040a 81ff 8181 8181 ff81     (P.P(...........
d0007060:	81ff a191 8991 ff81 3000 4a4e 0038 0000     .........0NJ8...
d0007070:	0800 497f 3e41 0000 7c00 5555 4455 0000     ...IA>...|UUUD..
d0007080:	7c00 5455 4455 0000 7c00 5555 4454 0000     .|UTUD...|UUTD..
d0007090:	0000 0700 0000 0000 0000 7d44 0045 0000     ..........D}E...
d00070a0:	0000 7d45 0045 0000 0000 7c45 0045 0000     ..E}E.....E|E...
d00070b0:	0808 0f08 0000 0000 0000 f800 0808 0000     ................
d00070c0:	7e00 4242 007e 0000 f0f0 f0f0 f0f0 f0f0     .~BB~...........
d00070d0:	0000 7700 0000 0000 0f0f 0f0f 0f0f 000f     ...w............
d00070e0:	0f0f 0f0f 0f0f 0f0f 3c00 4342 003d 0000     .........<BC=...
d00070f0:	fe00 4a4a 344a 0000 3200 4949 0032 0000     ..JJJ4...2II2...
d0007100:	3100 4a4b 0030 0000 3200 4a49 0031 0000     .1KJ0....2IJ1...
d0007110:	3200 4a49 0031 0000 fc00 2020 001c 0000     .2IJ1.....  ....
d0007120:	fe00 28aa 0010 0000 ff00 24a5 0018 0000     ...(.......$....
d0007130:	3c00 4140 003d 0000 3c00 4141 003d 0000     .<@A=....<AA=...
d0007140:	3d00 4041 003c 0000 9c00 61a0 003d 0000     .=A@<......a=...
d0007150:	0400 7108 0409 0000 0000 0202 0002 0000     ...q............
d0007160:	0000 0307 0000 0000 ffff 8181 8181 9999     ................
d0007170:	9999 8181 8181 ffff 2400 2424 2424 0000     .........$$$$$..
d0007180:	1705 340a 782a 0000 0600 7f09 7f01 0000     ...4*x..........
d0007190:	2200 554d 2259 0000 0800 2a08 0808 0000     ."MUY".....*....
d00071a0:	0000 1808 0018 0000 0600 0909 0006 0000     ................
d00071b0:	7f7f 7f7f 7f7f 7f7f 3008 47c8 4040 0830     .........0.G@@0.
d00071c0:	e7c3 3c7e 7e3c c3e7 ffff ffff f7f8 f7f7     ..~<<~..........
d00071d0:	f4f4 f8f7 ffff fcbe 1c00 1c1c 0000 0000     ................
d00071e0:	0e30 7e00 0e00 4030 6f4c 6461 4b20 4d46     0..~..0@Load KFM
d00071f0:	4d20 7375 6369 4d20 646f 6c75 2065 3156      Music Module V1
d0007200:	312e 000a 7325 252f 0073 0000 4946 454c     .1..%s/%s...FILE
d0007210:	414e 454d 5420 204f 4f4c 4441 203a 7325     NAME TO LOAD: %s
d0007220:	0a0d 0000 2d2d 2d2d 2d2d 2d2d 0000 0000     ....--------....
d0007230:	464b 4d4d 444f 3156 0000 0000 6568 6461     KFMMODV1....head
d0007240:	7265 203a 7325 2820 6c25 2975 000a 0000     er: %s (%lu)....
d0007250:	4f4e 2054 2061 464b 204d 6f4d 7564 656c     NOT a KFM Module
d0007260:	5620 2e31 3030 202c 6f53 2064 666f 2166      V1.00, Sod off!
d0007270:	000a 0000 4150 5454 5245 534e 0000 0000     ....PATTERNS....
d0007280:	7453 7261 6574 2064 756f 2074 6f67 646f     Started out good
d0007290:	203a 7562 2074 6f62 6c6c 636f 736b 6465     : but bollocksed
d00072a0:	7520 2070 6874 2065 6170 7474 7265 216e      up the pattern!
d00072b0:	4720 206f 7741 7961 0a21 0000 6948 6867      Go Away!...High
d00072c0:	7365 2074 6150 7474 253a 0a75 0000 0000     est Patt:%u.....
d00072d0:	6f53 676e 654c 676e 6874 203a 7525 000a     SongLength: %u..
d00072e0:	6153 706d 656c 2520 2075 6f74 206f 616c     Sample %u too la
d00072f0:	6772 2065 726f 6f20 7475 6f20 2066 6173     rge or out of sa
d0007300:	706d 656c 6152 536d 6170 6563 6220 756f     mpleRamSpace bou
d0007310:	646e 2173 000a 0000 4953 455a 4f20 3a46     nds!....SIZE OF:
d0007320:	2520 756c 000a 0000 6153 6576 4b20 4d46      %lu....Save KFM
d0007330:	4d20 7375 6369 4d20 646f 6c75 0a65 0000      Music Module...
d0007340:	6948 6867 7365 2074 6150 7474 253a 756c     Highest Patt:%lu
d0007350:	000a 0000 4946 454c 414e 454d 5420 204f     ....FILENAME TO 
d0007360:	4153 4556 203a 7325 0a0d 0000 4f53 474e     SAVE: %s....SONG
d0007370:	4144 2e54 0000 0000 4150 5454 0000 0000     DAT.....PATT....
d0007380:	4153 504d 4e49 4f46 0000 0000 4238 5357     SAMPINFO....8BWS
d0007390:	4d41 5350 0000 0000 4238 4457 0000 0000     AMPS....8BWD....
d00073a0:	4453 5441 4e45 2e44 0000 0000 464b 204d     SDATEND.....KFM 
d00073b0:	7254 6361 656b 2072 3156 302e 2d20 6c20     Tracker V1.0 - l
d00073c0:	7465 6920 2074 6973 676e 203f 726f 6220     et it sing? or b
d00073d0:	7275 2170 0a0d 0a0d 0000 0000 464b 204d     urp!........KFM 
d00073e0:	7254 6361 656b 2072 3056 312e 2d20 5320     Tracker V0.1 - S
d00073f0:	6469 6f62 2078 7041 6c70 7465 0000 0000     idbox Applet....
d0007400:	4559 0053 4f4e 4550 0021 0000 4f4c 4441     YES.NOPE!...LOAD
d0007410:	0000 0000 4153 4556 0000 0000 0031 0000     ....SAVE....1...
d0007420:	0032 0000 0033 0000 0034 0000 0035 0000     2...3...4...5...
d0007430:	0036 0000 0037 0000 0038 0000 4c50 5941     6...7...8...PLAY
d0007440:	0000 0000 4445 5449 0000 0000 454e 0057     ....EDIT....NEW.
d0007450:	5453 504f 0000 0000 6554 706d 3a6f 0000     STOP....Tempo:..
d0007460:	4843 4e41 3a53 0000 0011 0000 0010 0000     CHANS:..........
d0007470:	0053 0000 004b 0000 6c63 6369 656b 2064     S...K...clicked 
d0007480:	6b6f 6f20 206e 6966 656c 7220 7165 6575     ok on file reque
d0007490:	7473 7265 0a0d 0000 4153 4556 6f20 6570     ster....SAVE ope
d00074a0:	6172 6974 6e6f 2d20 203e 0000 4f4c 4441     ration -> ..LOAD
d00074b0:	6f20 6570 6172 6974 6e6f 2d20 203e 0000      operation -> ..
d00074c0:	f1f0 0000                                   ....

d00074c4 <clut32>:
d00074c4:	0000 0000 afaf ffaf ffff ffff 67a2 ff3b     .............g;.
d00074d4:	5533 ff75 907c ffaa caaa ffff a997 ffff     3Uu.|...........
d00074e4:	a9ff ff59 e769 ff8e b6a2 ffff c6ca ff3c     ..Y.i.........<.
d00074f4:	5185 ff3c 9318 ff3d 3418 ffb3 311c ffd9     .Q<...=..4...1..
d0007504:	0000 ff00 0000 3300 001d ff00 002b ff00     .......3....+...
d0007514:	0139 ff00 0147 ff00 0156 ff00 0164 ff00     9...G...V...d...
d0007524:	01d2 ff00 01ff ff00 cece ffce ff00 ff00     ................
d0007534:	ff00 ffb2 e700 ffff 9600 ffff 1100 ffff     ................
d0007544:	1200 ff49 1355 ff49 14aa ff49 16ff ff49     ..I.U.I...I...I.
d0007554:	1700 ff5b 1855 ff5b 19aa ff5b 1aff ff5b     ..[.U.[...[...[.
d0007564:	1b00 ff6d 1c55 ff6d e300 ff00 ff54 ff85     ..m.U.m.....T...
d0007574:	ff00 ffc4 d900 ffff a41f ffff 5400 ffe0     .............T..
d0007584:	0000 ffff 2655 ff92 27aa ff92 28ff ff92     ....U&...'...(..
d0007594:	2900 ffa4 2a55 ffa4 2baa ffa4 2cff ffa4     .)..U*...+...,..
d00075a4:	2d00 ffb6 2f55 ffb6 30aa ffb6 31ff ffb6     .-..U/...0...1..
d00075b4:	3200 ffc9 3355 ffc9 34aa ffc9 35ff ffc9     .2..U3...4...5..
d00075c4:	3700 ffdb 3855 ffdb 39aa ffdb 3aff ffdb     .7..U8...9...:..
d00075d4:	3b00 ffed 3c55 ffed 3daa ffed 3fff ffed     .;..U<...=...?..
d00075e4:	4000 ffff 4155 ffff 42aa ffff 43ff ffff     .@..UA...B...C..
d00075f4:	4400 ff00 4555 ff00 46aa ff00 48ff ff00     .D..UE...F...H..
d0007604:	ff00 ffff ff55 ff12 ee55 ff12 b6ff ff12     ....U...U.......
d0007614:	1fff ff00 0ec7 ff9d 0000 fff1 7700 ffff     .............w..
d0007624:	4020 ff51 5355 ff37 54aa ff37 55ff ff37      @Q.US7..T7..U7.
d0007634:	5600 ff49 5855 ff49 59aa ff49 5aff ff49     .VI.UXI..YI..ZI.
d0007644:	5b00 ff5b 5c55 ff5b 5daa ff5b 5eff ff5b     .[[.U\[..][..^[.
d0007654:	6000 ff6d 6155 ff6d 62aa ff6d 63ff ff6d     .`m.Uam..bm..cm.
d0007664:	6400 ff6d 6555 ff80 66aa ff80 67ff ff80     .dm.Ue...f...g..
d0007674:	6900 ff92 6a55 ff92 6baa ff92 6cff ff92     .i..Uj...k...l..
d0007684:	6d00 ffa4 6e55 ffa4 6faa ffa4 71ff ffa4     .m..Un...o...q..
d0007694:	7200 ffb6 7355 ffb6 74aa ffb6 75ff ffb6     .r..Us...t...u..
d00076a4:	7600 ffc9 7755 ffc9 79aa ffc9 7aff ffc9     .v..Uw...y...z..
d00076b4:	7b00 ffdb 7c55 ffdb 7daa ffdb 7eff ffdb     .{..U|...}...~..
d00076c4:	7f00 ffed 8055 ffed 82aa ffed 83ff ffed     ....U...........
d00076d4:	8400 ffff 8555 ffff 86aa ffff 87ff ffff     ....U...........
d00076e4:	8800 ff00 8a55 ff00 8baa ff00 8cff ff00     ....U...........
d00076f4:	8d00 ff12 8e55 ff12 8faa ff12 90ff ff12     ....U...........
d0007704:	9200 ff24 9355 ff24 94aa ff24 95ff ff24     ..$.U.$...$...$.
d0007714:	9600 ff37 9755 ff37 98aa ff37 99ff ff37     ..7.U.7...7...7.
d0007724:	9b00 ff49 9c55 ff49 9daa ff49 9eff ff49     ..I.U.I...I...I.
d0007734:	9f00 ff5b a055 ff5b a1aa ff5b a3ff ff5b     ..[.U.[...[...[.
d0007744:	b5d5 ffa4 b0f8 ffa0 a3e6 ff94 89c1 ff7c     ..............|.
d0007754:	81c0 ff62 62a1 ff1c 54ea ff42 a1bd ff62     ..b..b...TB...b.
d0007764:	93c0 ff70 77a1 ff49 3faa ff00 54ff ff15     ..p..wI..?...T..
d0007774:	50b9 ff1c b3ff ff00 88aa ff00 b5ff ff00     .P..............
d0007784:	62ff ff0e b7e3 ff5e c0b9 ffbd b9ff ff85     .b....^.........
d0007794:	6caf ff00 81b9 ff1f 5baa ff3f beff ffc9     .l.......[?.....
d00077a4:	afcb ff5b c055 ffdb c1aa ffdb c0c0 ffbd     ..[.U...........
d00077b4:	c400 ffed c555 ffed c6aa ffed c7ff ffed     ....U...........
d00077c4:	c800 ffff c955 ffff caaa ffff ccff ffff     ....U...........
d00077d4:	cd00 ff00 ce55 ff00 cfaa ff00 d0ff ff00     ....U...........
d00077e4:	d100 ff12 d255 ff12 d3aa ff12 d5ff ff12     ....U...........
d00077f4:	d600 ff24 d755 ff24 d8aa ff24 d9ff ff24     ..$.U.$...$...$.
d0007804:	da00 ff37 db55 ff37 ddaa ff37 deff ff37     ..7.U.7...7...7.
d0007814:	df00 ff49 e055 ff49 e1aa ff49 e2ff ff49     ..I.U.I...I...I.
d0007824:	e300 ff5b e555 ff5b e6aa ff5b e7ff ff5b     ..[.U.[...[...[.
d0007834:	e800 ff6d e955 ff6d eaaa ff6d ebff ff6d     ..m.U.m...m...m.
d0007844:	ec00 ff6d ee55 ff80 efaa ff80 f0ff ff80     ..m.U...........
d0007854:	cea2 ff93 f255 ff92 f3aa ff92 f4ff ff92     ....U...........
d0007864:	f600 ffa4 f755 ffa4 f8aa ffa4 f9ff ffa4     ....U...........
d0007874:	fa00 ffb6 fb55 ffb6 fcaa ffb6 feff ffb6     ....U...........
d0007884:	ff00 ffc9 ff55 ffc9 ffaa ffc9 ffff ffc9     ....U...........
d0007894:	ff00 ffdb ff55 ffdb ffaa ffdb ffff ffdb     ....U...........
d00078a4:	ff00 ffed ff55 ffed ffaa ffed ffff ffed     ....U...........
d00078b4:	ff00 ffff ff55 ffff ffaa ffff ffff ffff     ....U...........
d00078c4:	3025 5834 0000 0000 3025 6c34 0075 0000     %04X....%04lu...
d00078d4:	3025 7533 0000 0000 4153 504d 454c 4320     %03u....SAMPLE C
d00078e4:	4e4f 5254 4c4f 203a 2020 2020 2020 2020     ONTROL:         
d00078f4:	4f4c 504f 0000 0000 4f56 554c 454d 0000     LOOP....VOLUME..
d0007904:	4552 4550 5441 0000 4552 4c50 4e45 0000     REPEAT..REPLEN..
d0007914:	454c 004e 5446 004e 4f4c 4441 5320 4d41     LEN.FTN.LOAD SAM
d0007924:	4c50 2e45 2e2e 0000 3025 7533 2520 3230     PLE.....%03u %02
d0007934:	0075 0000 4f50 4953 4954 4e4f 0000 0000     u...POSITION....
d0007944:	4153 504d 4920 3a44 0000 0000 4150 5454     SAMP ID:....PATT
d0007954:	5245 3a4e 0000 0000 4c20 4e45 5447 3a48     ERN:.... LENGTH:
	...

d000796c <catsplat>:
d000796c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000797c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000798c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000799c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00079ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00079bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00079cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00079dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00079ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00079fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007a0c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007a1c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007a2c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007a3c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007a4c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007a5c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007a6c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007a7c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007a8c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007a9c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007aac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007abc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007acc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007adc:	0505 6565 0505 0505 0505 0505 0505 0505     ..ee............
d0007aec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007afc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007b0c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007b1c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007b2c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007b3c:	0505 0505 0505 5805 6558 0505 0505 0505     .......XXe......
d0007b4c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007b5c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007b6c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007b7c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007b8c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007b9c:	0505 0505 0505 0505 0505 0505 1065 0558     ............e.X.
d0007bac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007bbc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007bcc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007bdc:	0505 0505 0505 0505 6505 0565 0505 0505     .........ee.....
d0007bec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007bfc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007c0c:	0505 5865 0558 0505 0505 0505 0505 0505     ..eXX...........
d0007c1c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007c2c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007c3c:	0505 0505 0505 0505 0505 6565 1058 1010     ..........eeX...
d0007c4c:	1010 0505 0505 0505 0505 0505 0505 0505     ................
d0007c5c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007c6c:	0505 0505 0505 0505 5865 0565 0505 0505     ........eXe.....
d0007c7c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007c8c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007c9c:	0505 0505 0505 0505 0505 0505 6565 1058     ............eeX.
d0007cac:	1010 1010 1010 5810 0505 0505 0505 0505     .......X........
d0007cbc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007ccc:	0505 0505 0505 0505 0505 0505 0505 5858     ..............XX
d0007cdc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007cec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007cfc:	0505 0505 0505 0505 0505 0505 0505 6565     ..............ee
d0007d0c:	1058 1010 1010 1010 6558 0505 0505 0505     X.......Xe......
d0007d1c:	0505 0505 0505 0505 0505 0505 6558 0505     ............Xe..
d0007d2c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007d3c:	0505 6505 5858 0505 0505 0505 0505 0505     ...eXX..........
d0007d4c:	0505 0505 5805 0558 0505 0505 0505 0505     .....XX.........
d0007d5c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007d6c:	0505 1065 1010 1010 1010 1058 5810 0505     ..e.......X..X..
d0007d7c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007d8c:	0505 5810 0565 0505 0505 0505 0505 0505     ...Xe...........
d0007d9c:	0505 0505 0505 0505 6505 5858 0505 0505     .........eXX....
d0007dac:	0505 0505 0505 0505 0505 5805 6565 0505     ...........Xee..
d0007dbc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007dcc:	0505 0505 0505 0505 1010 1010 5810 0565     .............Xe.
d0007ddc:	1065 6510 0505 0505 0505 0505 0505 0505     e..e............
d0007dec:	0505 0505 0505 0505 1010 0558 0505 0505     ..........X.....
d0007dfc:	0505 0505 0505 0505 0505 0505 0505 6505     ...............e
d0007e0c:	6558 0505 0505 0505 0505 0505 0505 0505     Xe..............
d0007e1c:	1058 0558 0505 0505 0505 0505 0505 0505     X.X.............
d0007e2c:	0505 0505 0505 0505 0505 0505 0505 6565     ..............ee
d0007e3c:	0565 0505 0505 1058 0510 0505 0505 0505     e.....X.........
d0007e4c:	0505 0505 0505 0505 0505 0505 0505 5805     ...............X
d0007e5c:	0558 0505 0505 0505 0505 0505 0505 0505     X...............
d0007e6c:	0505 0505 6505 6558 0505 0505 0505 0505     .....eXe........
d0007e7c:	0505 0505 5805 5810 0565 0505 0505 0505     .....X.Xe.......
d0007e8c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007e9c:	0505 0505 0505 0505 0505 6505 1010 6510     ...........e...e
d0007eac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007ebc:	0505 0505 1005 6565 0505 0505 0505 0505     ......ee........
d0007ecc:	0505 0505 0505 0505 0505 6505 6558 0505     ...........eXe..
d0007edc:	0505 0505 0505 0505 0505 5805 6558 0505     ...........XXe..
d0007eec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007efc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007f0c:	1065 1010 5810 0505 0505 0505 0505 0505     e....X..........
d0007f1c:	0505 0505 0505 0505 0505 5805 5858 0505     ...........XXX..
d0007f2c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007f3c:	6505 6558 0505 0505 0505 0505 0505 0505     .eXe............
d0007f4c:	5865 0558 0505 0505 0505 0505 0505 0505     eXX.............
d0007f5c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007f6c:	0505 0505 6505 1010 5858 1010 0505 0505     .....e..XX......
d0007f7c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007f8c:	0505 6558 0565 0505 0505 0505 0505 0505     ..Xee...........
d0007f9c:	0505 0505 0505 6505 0510 0505 0505 0505     .......e........
d0007fac:	0505 0505 0505 5858 0565 0505 0505 0505     ......XXe.......
d0007fbc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0007fcc:	0505 0505 0505 0505 0505 1065 5810 0505     ..........e..X..
d0007fdc:	1010 0510 0505 0505 0505 0505 0505 0505     ................
d0007fec:	0505 0505 0505 0505 6565 0558 0505 0505     ........eeX.....
d0007ffc:	0505 0505 0505 0505 0505 0505 6505 0510     .............e..
d000800c:	0505 0505 0505 0505 0505 6505 5858 0505     ...........eXX..
d000801c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000802c:	0505 0505 0505 0505 0505 0505 0505 5805     ...............X
d000803c:	1010 0510 0505 1058 1010 0565 0505 0505     ......X...e.....
d000804c:	0505 0505 0505 0505 0505 0505 0505 5865     ..............eX
d000805c:	6565 0505 0505 0505 0505 0505 0505 0505     ee..............
d000806c:	0505 6505 0510 0505 0505 0505 0505 0505     ...e............
d000807c:	1005 0558 0505 0505 0505 0505 0505 0505     ..X.............
d000808c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000809c:	0505 0505 1058 1010 0505 0505 5805 1010     ....X........X..
d00080ac:	5810 6565 0505 0505 0505 0505 0505 0505     .Xee............
d00080bc:	0505 0505 1065 5858 0505 0505 0505 0505     ....e.XX........
d00080cc:	0505 0505 0505 0505 6505 0510 0505 0505     .........e......
d00080dc:	0505 0505 0505 1005 0565 0505 0505 0505     ........e.......
d00080ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00080fc:	0505 0505 0505 0505 1065 1010 0558 0505     ........e...X...
d000810c:	0505 0505 1058 1010 1010 0565 0505 0505     ....X.....e.....
d000811c:	0505 0505 0505 0505 0505 6505 5865 0565     ...........eeXe.
d000812c:	0505 0505 0505 0505 0505 0505 0505 5805     ...............X
d000813c:	0558 0505 0505 0505 0505 0505 1065 0505     X...........e...
d000814c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000815c:	0505 0505 0505 0505 0505 0505 6505 1010     .............e..
d000816c:	5810 0505 0505 0505 0505 6505 1058 1010     .X.........eX...
d000817c:	0565 0505 0505 0505 0505 0505 0505 0505     e...............
d000818c:	6505 5810 0565 0505 0505 0505 0505 0505     .e.Xe...........
d000819c:	0505 0505 5805 0558 0505 0505 0505 0505     .....XX.........
d00081ac:	0505 5810 0505 0505 0505 0505 0505 0505     ...X............
d00081bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00081cc:	0505 0505 1058 0565 0505 0505 0505 0505     ....X.e.........
d00081dc:	0505 0505 6565 0505 0505 0505 0505 0505     ....ee..........
d00081ec:	0505 0505 0505 0505 5858 0558 0505 0505     ........XXX.....
d00081fc:	0505 0505 0505 0505 0505 5805 0565 0505     ...........Xe...
d000820c:	0505 0505 0505 5805 0510 0505 0505 0505     .......X........
d000821c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000822c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000823c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000824c:	0505 0505 0505 0505 0505 0505 0505 1065     ..............e.
d000825c:	6558 0505 0505 0505 0505 0505 0505 0505     Xe..............
d000826c:	5805 0565 0505 0505 0505 0505 1005 0565     .Xe...........e.
d000827c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000828c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000829c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00082ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00082bc:	0505 0505 5805 6558 0505 0505 0505 0505     .....XXe........
d00082cc:	0505 0505 0505 5805 0565 0505 0505 0505     .......Xe.......
d00082dc:	0505 1065 0505 0505 0505 0505 0505 0505     ..e.............
d00082ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00082fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000830c:	6505 0565 6565 5865 0565 0505 0505 0505     .ee.eeeXe.......
d000831c:	0505 0505 0505 0505 0505 0505 5810 0505     .............X..
d000832c:	0505 0505 0505 0505 0505 0505 5805 0565     .............Xe.
d000833c:	0505 0505 0505 0505 1010 0505 0505 0505     ................
d000834c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000835c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000836c:	0505 0505 0505 1065 1010 1010 1010 0558     ......e.......X.
d000837c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000838c:	0505 1010 0565 0505 0505 0505 0505 0505     ....e...........
d000839c:	0505 5805 0565 0505 0505 0505 0505 0510     ...Xe...........
d00083ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00083bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00083cc:	0505 0505 0505 0505 6565 1058 1010 1010     ........eeX.....
d00083dc:	1010 6558 0505 0505 0505 0505 0505 0505     ..Xe............
d00083ec:	0505 0505 0505 0505 1005 0558 0505 0505     ..........X.....
d00083fc:	0505 0505 0505 0505 1005 0565 0505 0505     ..........e.....
d000840c:	0505 5805 0510 0505 0505 0505 0505 0505     ...X............
d000841c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000842c:	0505 0505 0505 0505 0505 6505 1058 1010     ...........eX...
d000843c:	1010 1010 6558 0505 0505 0505 0505 0505     ....Xe..........
d000844c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000845c:	6510 0505 0505 0505 0505 0505 0505 1005     .e..............
d000846c:	0565 0505 0505 0505 1005 0505 0505 0505     e...............
d000847c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000848c:	0505 0505 0505 0505 0505 0505 0505 5805     ...............X
d000849c:	1010 1010 1010 5858 1010 0565 0505 0505     ......XX..e.....
d00084ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00084bc:	0505 0505 0505 5858 0505 0505 0505 0505     ......XX........
d00084cc:	0505 0505 1005 0505 0505 0505 0505 1058     ..............X.
d00084dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00084ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00084fc:	0505 0505 1058 1010 6510 0565 5805 5810     ....X....ee..X.X
d000850c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000851c:	0505 0505 0505 0505 0505 0505 1005 0565     ..............e.
d000852c:	0505 0505 0505 0505 0505 1005 0505 0505     ................
d000853c:	0505 6505 5858 0505 0505 0505 0505 0505     ...eXX..........
d000854c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000855c:	0505 0505 0505 0505 0505 1065 5810 0505     ..........e..X..
d000856c:	0505 1005 6510 0505 0505 0505 0505 0505     .....e..........
d000857c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000858c:	0505 5805 0558 0505 0505 0505 0505 0505     ...XX...........
d000859c:	1005 0505 0505 0505 5865 6558 0505 0505     ........eXXe....
d00085ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00085bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00085cc:	1005 6510 0505 0505 1005 0510 0505 0505     ...e............
d00085dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00085ec:	0505 0505 0505 0505 6505 6510 0505 0505     .........e.e....
d00085fc:	0505 0505 0505 1005 0505 0505 0505 5858     ..............XX
d000860c:	0558 0505 0505 0505 0505 0505 0505 0505     X...............
d000861c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000862c:	0505 0505 0505 1065 0510 0505 0505 1065     ......e.......e.
d000863c:	0510 0505 0505 0505 0505 0505 0505 0505     ................
d000864c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000865c:	5858 0505 0505 0505 0505 0505 1005 0505     XX..............
d000866c:	0505 0505 1058 0565 0505 0505 0505 0505     ....X.e.........
d000867c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000868c:	0505 0505 0505 0505 0505 0505 1058 0558     ............X.X.
d000869c:	0505 0505 1065 0558 0505 0505 0505 0505     ....e.X.........
d00086ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00086bc:	0505 0505 0505 1065 0565 0505 0505 0505     ......e.e.......
d00086cc:	6505 1065 0505 0505 6505 5858 0505 0505     .ee......eXX....
d00086dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00086ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00086fc:	0505 1010 0565 0505 0505 1065 0558 0505     ....e.....e.X...
d000870c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000871c:	0505 0505 0505 0505 0505 0505 5805 6510     .............X.e
d000872c:	0505 0505 6505 5858 1010 1010 1010 1010     .....eXX........
d000873c:	6510 0505 0505 0505 0505 0505 0505 0505     .e..............
d000874c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000875c:	0505 0505 0505 0505 1010 0505 0505 0505     ................
d000876c:	1065 0565 0505 0505 0505 0505 0505 0505     e.e.............
d000877c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000878c:	0505 0505 5858 0505 0505 5865 5858 1058     ....XX....eXXXX.
d000879c:	6565 6565 1065 6510 0505 0505 0505 0505     eeeee..e........
d00087ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00087bc:	0505 0505 0505 0505 0505 0505 6505 1010     .............e..
d00087cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00087dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00087ec:	0505 0505 0505 0505 0505 1065 0565 5805     ..........e.e..X
d00087fc:	5810 0505 1065 0505 0505 1065 1058 0565     .X..e.....e.X.e.
d000880c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000881c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000882c:	0505 6505 5810 0505 0505 0505 0505 0505     ...e.X..........
d000883c:	0505 0505 6565 0505 0505 0505 0505 0505     ....ee..........
d000884c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000885c:	6505 6558 1058 0558 0505 1065 0505 0505     .eXeX.X...e.....
d000886c:	1010 5805 0558 0505 0505 0505 0505 0505     ...XX...........
d000887c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000888c:	0505 0505 0505 0505 6505 5810 0505 0505     .........e.X....
d000889c:	0505 0505 0505 6505 1058 1010 0565 0505     .......eX...e...
d00088ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00088bc:	0505 0505 0505 0505 1010 5858 0505 0505     ..........XX....
d00088cc:	6505 0505 0505 6510 6505 6510 0505 0505     .e.....e.e.e....
d00088dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00088ec:	0505 0505 0505 0505 0505 0505 0505 6505     ...............e
d00088fc:	6510 0505 0505 0505 0505 6505 1010 1010     .e.........e....
d000890c:	1010 0505 0505 0505 0505 0505 0505 0505     ................
d000891c:	0505 0505 0505 0505 0505 0505 0505 1058     ..............X.
d000892c:	0558 0505 0505 0505 0505 0505 0510 0505     X...............
d000893c:	5858 0505 0505 0505 0505 0505 0505 0505     XX..............
d000894c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000895c:	0505 0505 0505 0505 0505 0505 0505 5805     ...............X
d000896c:	1010 1010 5810 0565 0505 0505 0505 0505     .....Xe.........
d000897c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000898c:	0505 6505 1010 0510 0505 0505 0505 0505     ...e............
d000899c:	0505 0505 0505 1058 0505 0505 0505 0505     ......X.........
d00089ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00089bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00089cc:	0505 6505 1010 1010 6510 0505 0505 0505     ...e.....e......
d00089dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00089ec:	0505 0505 0505 0505 5805 0510 6510 0505     .........X...e..
d00089fc:	0505 0505 0505 0505 0505 0505 1005 0565     ..............e.
d0008a0c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008a1c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008a2c:	0505 0505 0505 6505 1010 1010 6558 0505     .......e....Xe..
d0008a3c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008a4c:	0558 0505 0505 0505 0505 0505 0505 1005     X...............
d0008a5c:	0505 5858 0505 0505 0505 0505 0505 0505     ..XX............
d0008a6c:	0505 1005 0565 0505 0505 0505 0505 0505     ....e...........
d0008a7c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008a8c:	0505 0505 0505 0505 0505 0505 1058 1010     ............X...
d0008a9c:	0558 0505 0505 0505 0505 0505 0505 0505     X...............
d0008aac:	0505 0505 0505 0558 0505 0505 0505 0505     ......X.........
d0008abc:	0505 0505 1065 0505 6505 0505 0505 0505     ....e....e......
d0008acc:	0505 0505 0505 0505 1005 0565 0505 0505     ..........e.....
d0008adc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008aec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008afc:	1065 1010 6558 0505 0505 0505 0505 0505     e...Xe..........
d0008b0c:	0505 0505 0505 0505 6558 0505 0558 0505     ........Xe..X...
d0008b1c:	0505 0505 0505 0505 0505 1058 0505 0505     ..........X.....
d0008b2c:	0505 0505 0505 0505 0505 0505 0505 5805     ...............X
d0008b3c:	0558 0505 0505 0505 0505 0505 0505 0505     X...............
d0008b4c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008b5c:	0505 0505 6505 1010 6510 0505 0505 0505     .....e...e......
d0008b6c:	0505 0505 0505 0505 0505 0505 0505 1065     ..............e.
d0008b7c:	0565 5858 1058 0558 0505 0505 0505 0505     e.XXX.X.........
d0008b8c:	1058 0505 0505 0505 0505 0505 0505 0505     X...............
d0008b9c:	0505 0505 5805 0558 0505 0505 0505 0505     .....XX.........
d0008bac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008bbc:	0505 0505 0505 0505 0505 1065 5810 0505     ..........e..X..
d0008bcc:	0505 0505 0505 6505 5865 5810 0505 0505     .......eeX.X....
d0008bdc:	0505 0505 6505 5858 5810 6565 1010 0565     .....eXX.Xee..e.
d0008bec:	0505 0505 0505 1058 0505 0505 0505 0505     ......X.........
d0008bfc:	0505 0505 0505 0505 0505 5805 0558 0505     ...........XX...
d0008c0c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008c1c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008c2c:	1010 0558 0505 0505 0505 5865 1010 1010     ..X.......eX....
d0008c3c:	5810 0505 0505 0505 0505 6505 1010 0565     .X.........e..e.
d0008c4c:	0505 5805 6510 0505 0505 0505 1065 0505     ...X.e......e...
d0008c5c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008c6c:	5805 0558 0505 0505 0505 0505 0505 0505     .XX.............
d0008c7c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008c8c:	0505 0505 5805 1010 0505 0505 5865 1010     .....X......eX..
d0008c9c:	1010 1010 1010 0565 0505 0505 0505 0505     ......e.........
d0008cac:	6505 5810 0505 0505 0505 5858 0505 0505     .e.X......XX....
d0008cbc:	0505 1065 0505 0505 0505 0505 0505 0505     ..e.............
d0008ccc:	0505 0505 0505 1058 0565 0505 0505 0505     ......X.e.......
d0008cdc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008cec:	0505 0505 0505 0505 0505 1005 1010 5858     ..............XX
d0008cfc:	1010 1010 1010 1010 1010 0565 0505 0505     ..........e.....
d0008d0c:	0505 6505 6565 6565 6558 0505 0505 0505     ...eeeeeXe......
d0008d1c:	5805 0558 0505 0505 1065 0505 0505 0505     .XX.....e.......
d0008d2c:	0505 0505 0505 0505 0505 0505 5858 0505     ............XX..
d0008d3c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008d4c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008d5c:	1005 1010 1010 1010 5810 1058 1010 0558     .........XX...X.
d0008d6c:	0505 0505 0505 0505 6505 5858 5858 6558     .........eXXXXXe
d0008d7c:	0505 0505 0505 6505 6510 0505 0505 1065     .......e.e....e.
d0008d8c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008d9c:	0505 5858 0505 0505 0505 0505 0505 0505     ..XX............
d0008dac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008dbc:	0505 0505 0505 0505 5858 6558 0565 5805     ........XXXee..X
d0008dcc:	1010 6510 0505 0505 0505 0505 0505 0505     ...e............
d0008ddc:	0505 6505 5858 0505 0505 0505 0505 1065     ...eXX........e.
d0008dec:	0505 0505 1065 0505 0505 0505 0505 0505     ....e...........
d0008dfc:	0505 0505 0505 6505 6558 0505 0505 0505     .......eXe......
d0008e0c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008e1c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008e2c:	0505 6505 1010 5810 0505 0505 0505 0505     ...e...X........
d0008e3c:	0505 0505 0505 0505 0505 5858 0565 0505     ..........XXe...
d0008e4c:	0505 0505 1005 0558 0505 1005 0558 0505     ......X.....X...
d0008e5c:	0505 0505 0505 0505 0505 0505 6505 0558     .............eX.
d0008e6c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008e7c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008e8c:	0505 0505 0505 0505 1065 1010 0565 0505     ........e...e...
d0008e9c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008eac:	1065 0558 0505 0505 0505 6505 6510 0505     e.X........e.e..
d0008ebc:	5805 0510 0505 0505 0505 0505 0505 0505     .X..............
d0008ecc:	0505 1065 0558 0505 0505 0505 0505 0505     ..e.X...........
d0008edc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008eec:	0505 0505 0505 0505 0505 0505 5805 1010     .............X..
d0008efc:	0558 0505 0505 0505 0505 0505 0505 0505     X...............
d0008f0c:	0505 0505 0505 5805 5810 0505 0505 0505     .......X.X......
d0008f1c:	0505 1065 0505 5805 6510 0505 0505 0505     ..e....X.e......
d0008f2c:	0505 0505 0505 0505 1065 0565 0505 0505     ........e.e.....
d0008f3c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008f4c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008f5c:	6505 1010 6510 0505 0505 0505 0505 0505     .e...e..........
d0008f6c:	0505 0505 0505 0505 0505 0505 0505 1058     ..............X.
d0008f7c:	0558 0505 0505 0505 1005 0565 5805 5810     X.........e..X.X
d0008f8c:	0505 0505 0505 0505 0505 0505 0505 1010     ................
d0008f9c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008fac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0008fbc:	0505 0505 0505 1065 1010 0565 0505 0505     ......e...e.....
d0008fcc:	0505 5865 1010 0510 0505 0505 0505 0505     ..eX............
d0008fdc:	0505 0505 5805 5810 0565 0505 0505 1005     .....X.Xe.......
d0008fec:	0558 6505 5810 0505 0505 0505 0505 0505     X..e.X..........
d0008ffc:	0505 0505 6558 0505 0505 0505 0505 0505     ....Xe..........
d000900c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000901c:	0505 0505 0505 0505 0505 6505 1010 0510     ...........e....
d000902c:	0505 6505 5858 1010 1010 1010 0510 0505     ...eXX..........
d000903c:	0505 0505 0505 0505 0505 0505 5858 5810     ............XX.X
d000904c:	0565 0505 6505 0510 0505 1010 0565 0505     e....e......e...
d000905c:	0505 0505 0505 0505 6505 0510 0505 0505     .........e......
d000906c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000907c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000908c:	1005 1010 6558 1058 1010 1010 1010 5810     ....XeX........X
d000909c:	6558 0505 0505 0505 0505 0505 0505 0505     Xe..............
d00090ac:	0505 0505 5858 5810 0505 6505 6510 0505     ....XX.X...e.e..
d00090bc:	1058 0558 0505 0505 0505 0505 0505 1005     X.X.............
d00090cc:	0558 0505 0505 0505 0505 0505 0505 0505     X...............
d00090dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00090ec:	0505 0505 0505 1065 1010 1010 1010 1010     ......e.........
d00090fc:	6558 0565 0505 0505 0505 0505 0505 0505     Xee.............
d000910c:	0505 0505 0505 0505 0505 0505 1065 5810     ............e..X
d000911c:	0565 5858 5805 1058 0558 0505 0505 0505     e.XX.XX.X.......
d000912c:	0505 0505 1005 0565 0505 0505 0505 0505     ......e.........
d000913c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000914c:	0505 0505 0505 0505 0505 0505 1005 1010     ................
d000915c:	6558 0565 0505 0505 0505 0505 0505 0505     Xee.............
d000916c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000917c:	0505 6505 1065 1010 5865 1058 1058 6558     ...ee...eXX.X.Xe
d000918c:	0505 0505 0505 0505 0505 1005 0505 0505     ................
d000919c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00091ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00091bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00091cc:	0505 0505 0505 0505 0505 0505 0505 1005     ................
d00091dc:	1010 1010 5810 0505 0505 0505 1065 5810     .....X......e..X
d00091ec:	5810 5865 6558 0505 0505 0505 0505 0505     .XeXXe..........
d00091fc:	1010 0505 0505 0505 0505 0505 0505 0505     ................
d000920c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000921c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000922c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000923c:	0505 0505 5810 5858 6565 5858 1010 6558     .....XXXeeXX..Xe
d000924c:	0505 6505 1010 0510 0505 5858 0505 0505     ...e......XX....
d000925c:	0505 0505 0505 0510 0505 0505 0505 0505     ................
d000926c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000927c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000928c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000929c:	0558 0505 0505 0505 1005 5810 0565 0505     X..........Xe...
d00092ac:	0505 6505 1010 0565 0505 1058 0558 0505     ...e..e...X.X...
d00092bc:	5858 0505 0505 0505 0505 6505 0510 0505     XX.........e....
d00092cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00092dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00092ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00092fc:	0505 0505 5805 0558 0505 0505 5805 1010     .....XX......X..
d000930c:	0565 0505 0505 0505 0505 5805 1010 5865     e..........X..eX
d000931c:	6510 0505 0505 5865 0505 0505 0505 0505     .e....eX........
d000932c:	1005 0510 0505 0505 0505 0505 0505 0505     ................
d000933c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000934c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000935c:	0505 0505 0505 6505 6565 5858 0505 0505     .......eeeXX....
d000936c:	0505 1065 0558 0505 0505 0505 0505 0505     ..e.X...........
d000937c:	0505 5805 1010 6510 0505 0505 5865 0565     ...X...e....eXe.
d000938c:	0505 0505 0505 1005 0565 0505 0505 0505     ........e.......
d000939c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00093ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00093bc:	0505 0505 0505 0505 0505 0505 1005 6565     ..............ee
d00093cc:	0565 0505 0505 6505 1058 0505 0505 0505     e......eX.......
d00093dc:	0505 0505 0505 0505 0505 5805 1010 0565     ...........X..e.
d00093ec:	0505 5865 0565 0505 0505 0505 1065 0505     ..eXe.......e...
d00093fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000940c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000941c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000942c:	0505 6505 0505 0505 0505 0505 6505 6558     ...e.........eXe
d000943c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000944c:	0505 5805 5858 0505 5805 0558 0505 0505     ...XXX...XX.....
d000945c:	0505 5858 0505 0505 0505 0505 0505 0505     ..XX............
d000946c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000947c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000948c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000949c:	0505 5805 6510 0505 0505 0505 0505 0505     ...X.e..........
d00094ac:	0505 0505 0505 0505 0505 1058 5810 6505     ..........X..X.e
d00094bc:	0558 0505 0505 0505 6558 0505 0505 0505     X.......Xe......
d00094cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00094dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00094ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00094fc:	0505 0505 0505 0505 5805 0565 0505 0505     .........Xe.....
d000950c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000951c:	6505 1058 6558 0558 6565 0505 0505 6558     .eX.XeX.ee....Xe
d000952c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000953c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000954c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000955c:	0505 0505 0505 0505 0505 0505 0505 5805     ...............X
d000956c:	0565 0505 0505 0505 0505 0505 0505 0505     e...............
d000957c:	0505 0505 0505 0505 6505 1010 5810 1010     .........e...X..
d000958c:	5810 5805 6510 0505 0505 0505 0505 0505     .X.X.e..........
d000959c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00095ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00095bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00095cc:	0505 0505 5805 0565 0505 0505 0505 0505     .....Xe.........
d00095dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00095ec:	1065 1010 0505 1065 6558 1058 0565 0505     e.....e.XeX.e...
d00095fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000960c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000961c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000962c:	0505 0505 0505 0505 0505 5805 0565 0505     ...........Xe...
d000963c:	0505 0505 0505 0505 5858 5858 6558 0505     ........XXXXXe..
d000964c:	0505 0505 0505 5805 6510 0505 5805 5810     .......X.e...X.X
d000965c:	1065 0558 0505 0505 0505 0505 0505 0505     e.X.............
d000966c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000967c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000968c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000969c:	5805 0565 0505 0505 0505 0505 5805 1010     .Xe..........X..
d00096ac:	1010 1010 0565 0505 0505 0505 1065 6558     ....e.......e.Xe
d00096bc:	0505 6505 5810 6505 5810 0505 0505 0505     ...e.X.e.X......
d00096cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00096dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00096ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00096fc:	0505 0505 0505 5805 0558 0505 0505 0505     .......XX.......
d000970c:	0505 1005 1010 1010 1010 6510 0505 0505     ...........e....
d000971c:	0505 1058 6565 0505 0505 1058 0565 1065     ..X.ee....X.e.e.
d000972c:	0565 0505 0505 0505 0505 0505 0505 0505     e...............
d000973c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000974c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000975c:	0505 0505 0505 0505 0505 0505 5805 0558     .............XX.
d000976c:	0505 0505 0505 0505 1005 1010 1010 1010     ................
d000977c:	6510 0505 0505 0505 5858 0565 0505 0505     .e......XXe.....
d000978c:	5865 0565 1005 0510 0505 0505 0505 0505     eXe.............
d000979c:	0505 0505 0505 0505 6565 6565 0505 0505     ........eeee....
d00097ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00097bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d00097cc:	0505 5805 0558 0505 0505 0505 0505 1005     ...XX...........
d00097dc:	1010 1010 1010 6510 0505 0505 0505 5858     .......e......XX
d00097ec:	0565 0505 0505 5865 0565 0505 6510 0505     e.....eXe....e..
d00097fc:	0505 0505 0505 0505 0505 0505 1065 1010     ............e...
d000980c:	1010 6558 0505 0505 0505 0505 0505 0505     ..Xe............
d000981c:	0505 0505 0505 1010 0565 0505 0505 0505     ........e.......
d000982c:	0505 0505 0505 0505 6505 5810 0505 0505     .........e.X....
d000983c:	0505 0505 1005 1010 1010 1010 6558 0505     ............Xe..
d000984c:	0505 0505 1058 0565 0505 0505 1005 0510     ....X.e.........
d000985c:	0505 6558 0505 0505 0505 0505 0505 0505     ..Xe............
d000986c:	5805 1010 0505 1005 1010 6558 0505 0505     .X........Xe....
d000987c:	0505 0505 0505 0505 0505 5805 1010 0565     ...........X..e.
d000988c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000989c:	5858 0558 0505 0505 0505 5805 1010 1010     XXX........X....
d00098ac:	6510 0505 0505 0505 6505 1010 6510 0505     .e.......e...e..
d00098bc:	0505 1005 0510 0505 6510 0505 0505 0505     .........e......
d00098cc:	0505 0505 6505 1058 0565 0505 0505 6505     .....eX.e......e
d00098dc:	5858 0505 0505 0505 0505 0505 0505 0505     XX..............
d00098ec:	1005 5810 0505 0505 0505 0505 0505 0505     ...X............
d00098fc:	0505 0505 0505 5865 5810 0565 0505 0505     ......eX.Xe.....
d000990c:	0505 5865 6565 0505 0505 0505 0505 1058     ..eXee........X.
d000991c:	1010 0565 0505 0505 1005 5810 6505 0510     ..e........X.e..
d000992c:	0505 0505 0505 0505 0505 1058 6558 0505     ..........X.Xe..
d000993c:	0505 0505 0505 1005 0565 0505 0505 0505     ........e.......
d000994c:	0505 0505 0505 1065 6510 0505 0505 0505     ......e..e......
d000995c:	0505 0505 6505 0565 0505 0505 0505 5858     .....ee.......XX
d000996c:	5810 0565 0505 0505 0505 0505 0505 0505     .Xe.............
d000997c:	0505 1058 6510 1065 0565 0505 0505 1005     ..X..ee.e.......
d000998c:	1058 1058 0558 0505 0505 0505 6505 5858     X.X.X........eXX
d000999c:	5810 0505 0505 0505 0505 0505 5805 0558     .X...........XX.
d00099ac:	0505 0505 0505 0505 0505 0505 1010 0510     ................
d00099bc:	0505 0505 0505 6505 1058 1010 0510 0505     .......eX.......
d00099cc:	0505 0505 0505 5858 5810 0558 0505 0505     ......XX.XX.....
d00099dc:	0505 0505 0505 5805 6510 0565 1005 0558     .......X.ee...X.
d00099ec:	0505 0505 5805 6565 1058 1010 5858 5858     .....XeeX...XXXX
d00099fc:	5858 1058 5858 0565 0505 0505 0505 0505     XXX.XXe.........
d0009a0c:	0505 6505 0510 0505 0505 0505 0505 0505     ...e............
d0009a1c:	6505 1010 0565 0505 6505 5865 1010 1010     .e..e....eeX....
d0009a2c:	1010 0510 0505 0505 0505 0505 0505 5865     ..............eX
d0009a3c:	1010 5858 0505 0505 0505 5865 1010 0565     ..XX......eX..e.
d0009a4c:	0505 1005 0558 0505 0505 1065 0558 6505     ....X.....e.X..e
d0009a5c:	6565 5858 5858 5858 6558 0505 0505 0505     eeXXXXXXXe......
d0009a6c:	0505 0505 0505 0505 0505 0510 0505 0505     ................
d0009a7c:	0505 0505 0505 5805 1010 6565 5865 1010     .......X..eeeX..
d0009a8c:	1010 1010 6558 0565 0505 0505 0505 0505     ....Xee.........
d0009a9c:	0505 0505 0505 5865 1058 1010 1010 1005     ......eXX.......
d0009aac:	1010 0558 0505 0505 5805 6558 0505 0505     ..X......XXe....
d0009abc:	1065 6510 0505 0505 0505 6505 0505 0505     e..e.......e....
d0009acc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0009adc:	0510 0505 0505 0505 0505 0505 1005 1010     ................
d0009aec:	1010 1010 1010 6510 0565 0505 0505 0505     .......ee.......
d0009afc:	0505 0505 0505 0505 0505 0505 0505 6565     ..............ee
d0009b0c:	6565 5865 6510 0505 0505 0505 0505 5805     eeeX.e.........X
d0009b1c:	1010 0505 0505 5865 1058 0505 0505 0505     ......eXX.......
d0009b2c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0009b3c:	0505 0505 0505 0510 0505 0505 0505 0505     ................
d0009b4c:	0505 1005 1010 1010 5810 0565 0505 0505     .........Xe.....
d0009b5c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0009b6c:	0505 0505 0505 0505 1058 0565 0505 0505     ........X.e.....
d0009b7c:	0505 0505 5805 1010 0505 0505 5865 5865     .....X......eXeX
d0009b8c:	6510 0505 0505 0505 0505 0505 0505 0505     .e..............
d0009b9c:	0505 0505 0505 0505 0505 6505 0510 0505     ...........e....
d0009bac:	0505 0505 0505 0505 1005 5810 6565 0505     ...........Xee..
d0009bbc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0009bcc:	0505 0505 0505 0505 0505 0505 1005 6510     ...............e
d0009bdc:	0505 6565 6558 0505 0505 1065 1065 0505     ..eeXe....e.e...
d0009bec:	0505 5865 0565 1010 0565 0505 0505 0505     ..eXe...e.......
d0009bfc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0009c0c:	5858 0510 0505 0505 0505 0505 0505 1065     XX............e.
d0009c1c:	0510 0505 0505 0505 0505 0505 0505 0505     ................
d0009c2c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0009c3c:	0505 1058 0565 0505 1058 1010 0565 0505     ..X.e...X...e...
d0009c4c:	1065 5805 0558 0505 1058 0558 5810 6510     e..XX...X.X..X.e
d0009c5c:	0505 0505 0505 0505 0505 0505 0505 6505     ...............e
d0009c6c:	0505 6505 5865 6558 6510 0505 0505 0505     ...eeXXe.e......
d0009c7c:	0505 0505 1065 0510 0505 0505 0505 0505     ....e...........
d0009c8c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0009c9c:	0505 0505 0505 0505 5810 0505 0505 1058     .........X....X.
d0009cac:	1010 0565 0505 6558 5865 1010 5865 5810     ..e...XeeX..eX.X
d0009cbc:	5810 6510 5858 0505 0505 0505 0505 0505     .X.eXX..........
d0009ccc:	0505 0505 5805 5858 1058 6565 0505 0510     .....XXXX.ee....
d0009cdc:	0505 0505 0505 0505 0505 1065 0510 0505     ..........e.....
d0009cec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0009cfc:	0505 0505 0505 6505 6558 0505 6505 0510     .......eXe...e..
d0009d0c:	0505 0505 1010 1010 0565 6505 0510 1058     ........e..e..X.
d0009d1c:	1065 1058 0558 1010 0565 5805 0558 0505     e.X.X...e..XX...
d0009d2c:	0505 0505 0505 0505 0505 0505 6565 6565     ............eeee
d0009d3c:	0505 0505 0510 0505 0505 0505 0505 0505     ................
d0009d4c:	1058 0510 0505 0505 0505 0505 0505 0505     X...............
d0009d5c:	0505 0505 0505 0505 0505 0505 0505 1058     ..............X.
d0009d6c:	0565 5805 0558 0505 0505 1065 6558 0505     e..XX.....e.Xe..
d0009d7c:	1005 0558 5810 0505 0505 0505 5858 0505     ..X..X......XX..
d0009d8c:	6505 5810 0565 0505 0505 0505 0505 0505     .e.Xe...........
d0009d9c:	0505 0505 0505 0505 6505 0510 0505 0505     .........e......
d0009dac:	0505 0505 0505 1058 0510 0505 0505 0505     ......X.........
d0009dbc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0009dcc:	0505 0505 5805 0565 6505 0510 0505 0505     .....Xe..e......
d0009ddc:	0505 0505 0505 1010 5805 6558 0505 0505     .........XXe....
d0009dec:	0505 5858 0505 0505 1058 6558 0505 0505     ..XX....X.Xe....
d0009dfc:	0505 0505 0505 0505 0505 0505 0505 6505     ...............e
d0009e0c:	0510 0505 0505 0505 0505 0505 1065 0510     ............e...
d0009e1c:	0505 0505 0505 0505 0505 6505 5865 5810     ...........eeX.X
d0009e2c:	0505 0505 0505 0505 0505 6505 0510 0505     ...........e....
d0009e3c:	1010 0505 0505 0505 0505 1005 0510 5805     ...............X
d0009e4c:	0510 0505 0505 0505 5858 0505 0505 5805     ........XX.....X
d0009e5c:	5810 0565 0505 0505 0505 0505 0505 0505     .Xe.............
d0009e6c:	0505 0505 1005 0510 0505 0505 0505 0505     ................
d0009e7c:	0505 1065 0510 0505 0505 0505 0505 5865     ..e...........eX
d0009e8c:	1010 1010 1010 0505 0505 0505 0505 0505     ................
d0009e9c:	0505 0565 0505 1065 0565 0505 0505 5865     ..e...e.e.....eX
d0009eac:	1010 0505 5865 0558 0505 0505 0505 5865     ....eXX.......eX
d0009ebc:	0505 0505 0505 1058 6558 0505 0505 0505     ......X.Xe......
d0009ecc:	0505 0505 0505 0505 0505 1005 0505 0505     ................
d0009edc:	0505 0505 0505 0505 6505 0565 0505 0505     .........ee.....
d0009eec:	5865 1010 1010 1010 5810 0565 0505 0505     eX.......Xe.....
d0009efc:	0505 0505 0505 0505 0505 0505 5805 5858     .............XXX
d0009f0c:	6565 5865 1010 0558 0505 5810 0565 0505     eeeX..X....Xe...
d0009f1c:	0505 0505 1005 0565 0505 0505 5805 1058     ......e......XX.
d0009f2c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0009f3c:	1058 0505 0505 0505 0505 0505 0505 0505     X...............
d0009f4c:	6565 5865 1010 1010 1010 5810 6565 0505     eeeX.......Xee..
d0009f5c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0009f6c:	0505 0505 5865 5810 5810 6558 0505 6505     ....eX.X.XXe...e
d0009f7c:	5810 0505 0505 0505 0505 1005 0565 0505     .X..........e...
d0009f8c:	0505 0505 5805 0558 0505 0505 0505 0505     .....XX.........
d0009f9c:	0505 0505 6505 5810 0505 0505 0505 0505     .....e.X........
d0009fac:	0505 0505 1065 1010 1010 1010 1010 1010     ....e...........
d0009fbc:	0565 0505 0505 0505 0505 0505 0505 0505     e...............
d0009fcc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d0009fdc:	5865 0565 0505 6510 0505 0505 0505 0505     eXe....e........
d0009fec:	1005 0510 0505 0505 0505 6505 1010 0565     ...........e..e.
d0009ffc:	0505 0505 0505 0505 0505 1065 0558 0505     ..........e.X...
d000a00c:	0505 0505 0505 0505 0505 1065 1010 1010     ..........e.....
d000a01c:	6558 0505 1010 0565 0505 0505 0505 0505     Xe....e.........
d000a02c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a03c:	0505 0505 6505 1010 1010 1010 0510 0505     .....e..........
d000a04c:	0505 0505 0505 0505 0510 0505 0505 0505     ................
d000a05c:	0505 1065 5810 0565 0505 0505 0505 6505     ..e..Xe........e
d000a06c:	5810 0505 0505 0505 0505 0505 0505 0505     .X..............
d000a07c:	1065 1010 0565 0505 6505 1010 0565 0505     e...e....e..e...
d000a08c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a09c:	0505 0505 0505 0505 6505 1058 1010 0565     .........eX...e.
d000a0ac:	1005 0505 0505 0505 0505 0505 0505 6510     ...............e
d000a0bc:	0505 0505 0505 0505 0505 1058 1010 1010     ..........X.....
d000a0cc:	1010 1010 1010 0558 0505 0505 0505 0505     ......X.........
d000a0dc:	0505 0505 0505 1005 5810 0505 0505 5805     .........X.....X
d000a0ec:	1010 0558 0505 0505 0505 0505 0505 0505     ..X.............
d000a0fc:	0505 0505 0505 0505 6505 6565 6565 1058     .........eeeeeX.
d000a10c:	5810 5858 0505 5810 0505 0505 0505 0505     .XXX...X........
d000a11c:	0505 0505 5810 0505 0505 0505 0505 0505     .....X..........
d000a12c:	0505 6505 0565 0505 0505 0505 0505 0505     ...ee...........
d000a13c:	0505 0505 0505 0505 0505 0505 1005 6510     ...............e
d000a14c:	0505 0505 1065 1010 0510 0505 0505 0505     ....e...........
d000a15c:	0505 0505 0505 0505 0505 0505 5865 1010     ............eX..
d000a16c:	5810 1058 5858 6505 6510 0505 0510 0505     .XX.XX.e.e......
d000a17c:	0505 0505 0505 0505 0505 1058 0505 0505     ..........X.....
d000a18c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a19c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a1ac:	0505 1005 6510 0505 0505 1058 1058 1010     .....e....X.X...
d000a1bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a1cc:	5865 5810 0558 5865 0558 0505 5865 6558     eX.XX.eXX...eXXe
d000a1dc:	6505 0510 0505 0505 0505 0505 0505 0505     .e..............
d000a1ec:	1005 0565 0505 0505 0505 0505 0505 0505     ..e.............
d000a1fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a20c:	0505 0505 0505 0505 1005 6510 0505 6505     ...........e...e
d000a21c:	1010 6505 1010 0510 0505 0505 0505 0505     ...e............
d000a22c:	0505 0505 5805 5810 0565 0505 0505 0505     .....X.Xe.......
d000a23c:	0505 5858 0558 1005 0565 0505 0505 0505     ..XXX...e.......
d000a24c:	0505 0505 0505 1005 0558 0505 0505 0505     ........X.......
d000a25c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a26c:	0505 0505 0505 0505 0505 0505 0505 1005     ................
d000a27c:	6510 0505 1005 5810 0505 1058 1010 0565     .e.....X..X...e.
d000a28c:	0505 0505 0505 0505 0505 5858 0565 0505     ..........XXe...
d000a29c:	0505 0505 0505 6505 5858 0505 1005 0505     .......eXX......
d000a2ac:	0505 0505 0505 0505 0505 0505 6505 0510     .............e..
d000a2bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a2cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a2dc:	0505 0505 1005 5810 0505 1010 0510 0505     .......X........
d000a2ec:	5805 1010 1010 0565 0505 0505 0505 0505     .X....e.........
d000a2fc:	0510 0505 0505 0505 0505 0505 5805 5810     .............X.X
d000a30c:	0505 1058 0505 0505 0505 0505 0505 0505     ..X.............
d000a31c:	0505 0505 0510 0505 0505 0505 0505 0505     ................
d000a32c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a33c:	0505 0505 0505 0505 0505 5805 1010 1058     ...........X..X.
d000a34c:	1010 0565 0505 0505 1065 1010 5810 0505     ..e.....e....X..
d000a35c:	0505 0505 0505 0510 0505 0505 0505 0505     ................
d000a36c:	0505 5805 0558 0505 0558 0505 0505 0505     ...XX...X.......
d000a37c:	0505 0505 0505 0505 0505 5810 0505 0505     ...........X....
d000a38c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a39c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a3ac:	6505 1010 1010 6510 0505 0505 0505 0505     .e.....e........
d000a3bc:	1058 5810 0505 0505 5805 0510 0510 0505     X..X.....X......
d000a3cc:	0505 0505 0505 0505 6565 0558 0505 0558     ........eeX...X.
d000a3dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a3ec:	5858 0505 0505 0505 0505 0505 0505 0505     XX..............
d000a3fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a40c:	0505 0505 0505 0505 1065 5810 0565 0505     ........e..Xe...
d000a41c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a42c:	5858 0510 0505 0505 0505 0505 0505 1058     XX............X.
d000a43c:	0505 0505 0558 0505 0505 0505 0505 0505     ....X...........
d000a44c:	0505 0505 0505 1065 0505 0505 0505 0505     ......e.........
d000a45c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a46c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a47c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a48c:	0505 0505 0505 0505 6510 0505 0505 0505     .........e......
d000a49c:	0505 5805 5810 0505 0505 0558 0505 0505     ...X.X....X.....
d000a4ac:	0505 0505 0505 0505 0505 0505 1005 0558     ..............X.
d000a4bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a4cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a4dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a4ec:	0505 6565 0565 0505 0505 0505 0505 5810     ..eee..........X
d000a4fc:	0505 0505 0505 0505 5858 0510 0505 0505     ........XX......
d000a50c:	0558 0505 0505 0505 0505 0505 0505 0505     X...............
d000a51c:	0505 5805 0558 0505 0505 0505 0505 0505     ...XX...........
d000a52c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a53c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a54c:	0505 0505 6505 1010 1010 1010 0505 0505     .....e..........
d000a55c:	0505 0505 1065 0558 0505 0505 6505 1058     ....e.X......eX.
d000a56c:	0565 0505 0505 0558 0505 0505 0505 0505     e.....X.........
d000a57c:	0505 0505 0505 0505 6505 0558 0505 0505     .........eX.....
d000a58c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a59c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a5ac:	0505 0505 0505 0505 6505 1010 1010 1010     .........e......
d000a5bc:	6510 0505 0505 0505 0505 1065 6510 0505     .e........e..e..
d000a5cc:	0505 5805 6510 0505 0505 0505 0558 0505     ...X.e......X...
d000a5dc:	0505 0505 0505 0505 0505 0505 0505 6505     ...............e
d000a5ec:	0558 0505 0505 0505 0505 0505 0505 0505     X...............
d000a5fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a60c:	0505 0505 0505 0505 0505 0505 6505 1058     .............eX.
d000a61c:	1010 6510 0565 0505 0505 0505 1058 1010     ...ee.......X...
d000a62c:	5810 1058 6510 0565 1058 0565 0505 0505     .XX..ee.X.e.....
d000a63c:	0505 0558 0505 0505 0505 0505 0505 0505     ..X.............
d000a64c:	0505 0505 6505 0558 0505 0505 0505 0505     .....eX.........
d000a65c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a66c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a67c:	0505 1058 1010 6510 0505 0505 0505 0505     ..X....e........
d000a68c:	0505 0505 0505 0505 5805 1010 1010 5810     .........X.....X
d000a69c:	0505 0505 0505 0505 6558 0505 0505 0505     ........Xe......
d000a6ac:	0505 0505 0505 0505 0505 6505 6558 0505     ...........eXe..
d000a6bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a6cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a6dc:	0505 0505 0505 1065 1010 1010 0510 0505     ......e.........
d000a6ec:	0505 0505 0505 0505 0505 0505 0505 1065     ..............e.
d000a6fc:	0565 0505 0505 0505 0505 0505 0505 1058     e.............X.
d000a70c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a71c:	6505 6510 0505 0505 0505 0505 0505 0505     .e.e............
d000a72c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a73c:	0505 0505 0505 0505 0505 6505 1010 5810     ...........e...X
d000a74c:	1010 0510 0505 0505 0505 0505 0505 0505     ................
d000a75c:	0505 0505 6558 0505 0505 0505 0505 0505     ....Xe..........
d000a76c:	0505 0505 1005 0505 0505 0505 0505 0505     ................
d000a77c:	0505 0505 0505 0505 6558 0505 0505 0505     ........Xe......
d000a78c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a79c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a7ac:	1065 1010 0565 1010 0558 0505 0505 0505     e...e...X.......
d000a7bc:	0505 0505 0505 0505 0505 6558 0505 0505     ..........Xe....
d000a7cc:	0505 0505 0505 0505 0505 1005 0565 0505     ............e...
d000a7dc:	0565 0505 0505 0505 0505 0505 0505 6558     e.............Xe
d000a7ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a7fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a80c:	0505 0505 6505 1010 0510 0505 1010 0565     .....e........e.
d000a81c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a82c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a83c:	6505 0510 6505 0565 0505 0505 0505 0505     .e...ee.........
d000a84c:	0505 0505 6558 0505 0505 0505 0505 0505     ....Xe..........
d000a85c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a86c:	0505 0505 0505 0505 0505 1065 5810 0505     ..........e..X..
d000a87c:	6505 1010 0505 0505 0505 0505 0505 0505     .e..............
d000a88c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a89c:	0505 0505 0505 0505 0510 6505 0565 0505     ...........ee...
d000a8ac:	0505 0505 5805 0505 6505 6510 0505 0505     .....X...e.e....
d000a8bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a8cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a8dc:	1010 0510 0505 6505 1010 0505 0505 0505     .......e........
d000a8ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a8fc:	0505 0505 0505 0505 0505 0505 0505 0510     ................
d000a90c:	1065 0565 0505 0505 0505 5805 0505 5805     e.e........X...X
d000a91c:	0558 0505 0505 0505 0505 0505 0505 0505     X...............
d000a92c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a93c:	0505 0505 6505 1010 0565 0505 5805 5810     .....e..e....X.X
d000a94c:	0505 0505 5865 5810 0505 0505 0505 0505     ....eX.X........
d000a95c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a96c:	0505 0505 1010 5865 0505 0505 0505 0505     ......eX........
d000a97c:	5805 0505 5805 0558 0505 0505 0505 0505     .X...XX.........
d000a98c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a99c:	0505 0505 0505 0505 0505 6505 1010 0505     ...........e....
d000a9ac:	0505 5805 5810 6505 1065 1010 1010 0505     ...X.X.ee.......
d000a9bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a9cc:	0505 0505 0505 0505 0505 1005 6565 0505     ............ee..
d000a9dc:	0505 5810 0505 5805 0505 1065 0505 0505     ...X...X..e.....
d000a9ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000a9fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000aa0c:	6505 1010 0565 0505 1005 1010 1010 1010     .e..e...........
d000aa1c:	1010 6558 0505 0505 0505 0505 0505 0505     ..Xe............
d000aa2c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000aa3c:	5805 0558 0505 0505 0510 0505 5805 6565     .XX..........Xee
d000aa4c:	5810 0505 0505 0505 0505 0505 0505 0505     .X..............
d000aa5c:	0505 0505 6565 0505 0505 0505 0505 0505     ....ee..........
d000aa6c:	0505 0505 0505 6505 1010 1010 1010 1010     .......e........
d000aa7c:	1010 1010 5810 0565 0505 0505 0505 0505     .....Xe.........
d000aa8c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000aa9c:	0505 0505 0505 6505 6558 0505 0505 0510     .......eXe......
d000aaac:	0505 0505 1010 0558 0505 0505 0505 0505     ......X.........
d000aabc:	0505 0505 0505 6565 1010 1010 0510 0505     ......ee........
d000aacc:	0505 0505 0505 0505 0505 0505 0505 1065     ..............e.
d000aadc:	1010 1010 1010 1010 6558 0505 0505 0505     ........Xe......
d000aaec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000aafc:	0505 0505 0505 0505 0505 0505 1005 5858     ..............XX
d000ab0c:	0565 0505 0510 0505 6505 1010 0565 0505     e........e..e...
d000ab1c:	0505 0505 0505 0505 6505 1065 1010 1010     .........ee.....
d000ab2c:	1010 0510 0505 0505 0505 0505 0505 0505     ................
d000ab3c:	0505 0505 0505 6565 6558 6565 0505 0505     ......eeXeee....
d000ab4c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ab5c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ab6c:	0505 1058 5805 5858 0505 0510 0505 1058     ..X..XXX......X.
d000ab7c:	1010 0505 0505 0505 0505 0505 5865 1010     ............eX..
d000ab8c:	1010 1010 6558 1065 0510 0505 0505 0505     ....Xee.........
d000ab9c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000abac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000abbc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000abcc:	0505 0505 0505 0505 0510 0505 5805 5810     .............X.X
d000abdc:	5810 5858 6510 1005 0558 0505 0505 6505     .XXX.e..X......e
d000abec:	1058 1010 1010 1010 0558 0505 1065 0510     X.......X...e...
d000abfc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ac0c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ac1c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ac2c:	0505 0505 0505 0505 0505 0505 1005 0510     ................
d000ac3c:	0505 0505 0505 0510 0505 0505 0505 5810     ...............X
d000ac4c:	0505 6505 1010 1010 1010 6565 1010 0565     ...e......ee..e.
d000ac5c:	0505 1065 0558 0505 0505 0505 0505 0505     ..e.X...........
d000ac6c:	0505 0505 0505 0505 0505 0505 0505 6505     ...............e
d000ac7c:	5858 5858 0565 0505 0505 0505 0505 0505     XXXXe...........
d000ac8c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ac9c:	0505 1005 0505 0505 0505 0505 0510 0505     ................
d000acac:	0505 0505 5865 0505 1065 1010 5810 0565     ....eX..e....Xe.
d000acbc:	6505 1010 0505 0505 1058 0565 0505 0505     .e......X.e.....
d000accc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000acdc:	0505 6505 1010 1010 1010 5810 0505 0505     ...e.......X....
d000acec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000acfc:	0505 0505 0505 0505 5858 0505 0505 0505     ........XX......
d000ad0c:	0505 0510 0505 0505 0505 1065 0565 1005     ..........e.e...
d000ad1c:	1010 0558 0505 5805 6510 0505 0505 1010     ..X....X.e......
d000ad2c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ad3c:	0505 0505 0505 0505 1058 1010 1010 1058     ........X.....X.
d000ad4c:	1010 0558 0505 0505 0505 0505 0505 0505     ..X.............
d000ad5c:	0505 0505 0505 0505 0505 0505 6505 0558     .............eX.
d000ad6c:	0505 0505 0505 0505 0510 0505 0505 0505     ................
d000ad7c:	6505 0558 6505 1010 0505 0505 1005 0510     .eX..e..........
d000ad8c:	0505 5805 5810 0505 0505 0505 0505 0505     ...X.X..........
d000ad9c:	0505 0505 0505 0505 0505 0505 1065 1010     ............e...
d000adac:	6558 0505 0505 1058 0510 0505 0505 0505     Xe....X.........
d000adbc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000adcc:	0505 5805 0558 0505 0505 0505 0505 0510     ...XX...........
d000addc:	0505 0505 0505 6505 6558 5805 5810 0505     .......eXe.X.X..
d000adec:	0505 1065 0558 0505 1005 6510 0505 0505     ..e.X......e....
d000adfc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ae0c:	6505 1010 6510 0505 0505 0505 1065 0510     .e...e......e...
d000ae1c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ae2c:	0505 0505 0505 0505 1065 0565 0505 0505     ........e.e.....
d000ae3c:	0505 0505 0510 0505 0505 0505 0505 5858     ..............XX
d000ae4c:	1065 6510 0505 0505 1058 0565 0505 1058     e..e....X.e...X.
d000ae5c:	0558 0505 0505 0505 0505 0505 0505 0505     X...............
d000ae6c:	0505 0505 0505 1065 1010 0565 0505 0505     ......e...e.....
d000ae7c:	0505 1065 0510 0505 0505 0505 0505 0505     ..e.............
d000ae8c:	0505 0505 0505 0505 0505 0505 0505 5865     ..............eX
d000ae9c:	0505 0505 0505 0505 0505 0510 0505 0505     ................
d000aeac:	0505 0505 5805 1065 0510 0505 0505 1010     .....Xe.........
d000aebc:	0505 0505 1058 0565 0505 0505 0505 0505     ....X.e.........
d000aecc:	0505 0505 0505 0505 0505 6505 1010 6510     ...........e...e
d000aedc:	0505 0505 0505 0505 1065 0510 0505 0505     ........e.......
d000aeec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000aefc:	0505 0505 6565 0505 0505 0505 0505 0505     ....ee..........
d000af0c:	6510 0505 0505 0505 0505 5805 1010 0558     .e.........X..X.
d000af1c:	0505 6505 5810 0505 0505 6565 0505 0505     ...e.X....ee....
d000af2c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000af3c:	1005 1010 0565 0505 0505 0505 0505 1058     ....e.........X.
d000af4c:	0510 0505 0505 0505 0505 0505 0505 0505     ................
d000af5c:	0505 0505 0505 0505 6505 0558 0505 0505     .........eX.....
d000af6c:	0505 0505 0505 6510 0505 0505 0505 0505     .......e........
d000af7c:	0505 1010 0558 0505 6505 0510 0505 0505     ....X....e......
d000af8c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000af9c:	0505 0505 0505 1065 6510 0505 0505 0505     ......e..e......
d000afac:	0505 0505 1010 0565 0505 0505 0505 0505     ......e.........
d000afbc:	0505 0505 0505 0505 0505 0505 0505 6505     ...............e
d000afcc:	0558 0505 0505 0505 0505 0505 6558 0505     X...........Xe..
d000afdc:	0505 0505 0505 0505 1010 0565 0505 0505     ..........e.....
d000afec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000affc:	0505 0505 0505 0505 0505 0505 1010 0510     ................
d000b00c:	0505 0505 0505 0505 6505 1010 0505 0505     .........e......
d000b01c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b02c:	0505 0505 1005 0565 0505 0505 0505 0505     ......e.........
d000b03c:	0505 1065 0505 0505 0505 0505 0505 1058     ..e...........X.
d000b04c:	0565 0505 0505 0505 0505 0505 0505 0505     e...............
d000b05c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b06c:	0505 1010 0565 0505 0505 0505 0505 1005     ....e...........
d000b07c:	5810 0505 0505 0505 0505 0505 0505 0505     .X..............
d000b08c:	0505 0505 0505 0505 0505 5858 0505 0505     ..........XX....
d000b09c:	0505 0505 0505 0505 1065 0505 0505 0505     ........e.......
d000b0ac:	0505 0505 1058 0565 0505 0505 0505 0505     ....X.e.........
d000b0bc:	6505 5865 1010 0565 0505 0505 0505 0505     .eeX..e.........
d000b0cc:	0505 0505 0505 0505 1010 0565 0505 0505     ..........e.....
d000b0dc:	0505 0505 1058 0510 0505 0505 0505 0505     ....X...........
d000b0ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b0fc:	6510 0505 0505 0505 0505 0505 0505 1065     .e............e.
d000b10c:	0505 0505 0505 0505 0505 6505 0510 0505     ...........e....
d000b11c:	0505 6505 5865 1010 1010 1010 0510 0505     ...eeX..........
d000b12c:	0505 0505 0505 0505 0505 0505 0505 1058     ..............X.
d000b13c:	6510 0505 0505 0505 0505 1058 0565 0505     .e........X.e...
d000b14c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b15c:	0505 0505 5805 0558 0505 0505 0505 0505     .....XX.........
d000b16c:	0505 0505 1005 0505 0505 0505 0505 0505     ................
d000b17c:	0505 0510 6505 5865 1010 1010 1010 5810     .....eeX.......X
d000b18c:	5858 0565 0505 0505 0505 0505 0505 0505     XXe.............
d000b19c:	0505 0505 5805 6558 0505 0505 0505 0505     .....XXe........
d000b1ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b1bc:	0505 0505 0505 0505 0505 1005 0505 0505     ................
d000b1cc:	0505 0505 0505 0505 0505 1005 0505 0505     ................
d000b1dc:	0505 0505 0505 6505 1010 1010 1010 1010     .......e........
d000b1ec:	5810 6565 0505 0505 0505 0505 0505 0505     .Xee............
d000b1fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b20c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b21c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b22c:	1005 0505 0505 0505 0505 0505 0505 0505     ................
d000b23c:	5805 0558 0505 0505 0505 5805 1010 1010     .XX........X....
d000b24c:	1010 5810 6565 0505 0505 0505 0505 0505     ...Xee..........
d000b25c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b26c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b27c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b28c:	0505 0505 0505 5810 0505 0505 0505 0505     .......X........
d000b29c:	0505 0505 0505 5805 0558 0505 0505 0505     .......XX.......
d000b2ac:	5805 1010 1010 6565 0505 0505 0505 0505     .X....ee........
d000b2bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b2cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b2dc:	6505 5865 1010 1010 0505 0505 0505 0505     .eeX............
d000b2ec:	0505 0505 0505 0505 0505 6505 0510 0505     ...........e....
d000b2fc:	0505 0505 0505 0505 0505 0505 6505 0558     .............eX.
d000b30c:	0505 0505 0505 0505 6565 5805 0558 0505     ........ee.XX...
d000b31c:	0505 0505 5865 6565 0565 0505 0505 0505     ....eXeee.......
d000b32c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b33c:	0505 6505 5865 1010 1010 1010 1010 0505     ...eeX..........
d000b34c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b35c:	5805 0558 0505 0505 0505 0505 0505 0505     .XX.............
d000b36c:	0505 6505 0558 0505 0505 0505 0505 0505     ...eX...........
d000b37c:	6505 0558 0505 0505 6505 1010 1010 5810     .eX......e.....X
d000b38c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b39c:	0505 0505 6505 5865 1010 1010 1010 5810     .....eeX.......X
d000b3ac:	6565 0505 0505 0505 0505 0505 0505 0505     ee..............
d000b3bc:	0505 0505 0505 5805 0505 0505 0505 0505     .......X........
d000b3cc:	0505 0505 0505 0505 6505 6510 0505 0505     .........e.e....
d000b3dc:	0505 0505 0505 6505 6558 0505 0505 1058     .......eXe....X.
d000b3ec:	1010 1010 1010 0565 0505 0505 0505 0505     ......e.........
d000b3fc:	0505 0505 0505 0505 5805 1010 1010 1010     .........X......
d000b40c:	1010 1010 0505 0505 0505 0505 0505 0505     ................
d000b41c:	0505 0505 0505 0505 0505 0505 1065 0505     ............e...
d000b42c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b43c:	6510 0505 0505 0505 0505 0505 0505 6558     .e............Xe
d000b44c:	0505 5805 1010 1010 0565 1058 0558 0505     ...X....e.X.X...
d000b45c:	0505 0505 0505 0505 0505 0505 0505 1010     ................
d000b46c:	1010 1010 6565 1005 6510 0505 0505 0505     ....ee...e......
d000b47c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b48c:	0505 6558 0505 0505 0505 0505 0505 0505     ..Xe............
d000b49c:	0505 0505 0505 6558 0505 0505 0505 0505     ......Xe........
d000b4ac:	0505 0505 6565 0505 1058 6510 1010 0505     ....ee..X..e....
d000b4bc:	1065 0510 0505 0505 0505 0505 0505 0505     e...............
d000b4cc:	0505 0505 5865 6558 0505 0505 1058 0510     ....eXXe....X...
d000b4dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b4ec:	0505 0505 0505 0505 6558 0505 0505 0505     ........Xe......
d000b4fc:	0505 0505 0505 0505 0505 0505 5858 0505     ............XX..
d000b50c:	0505 0505 0505 0505 0505 1065 6565 1010     ..........e.ee..
d000b51c:	6565 5810 0505 1005 0558 0505 0505 0505     ee.X....X.......
d000b52c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b53c:	6505 1010 6510 0505 0505 0505 0505 0505     .e...e..........
d000b54c:	0505 0505 0505 0505 0505 0505 6505 6510     .............e.e
d000b55c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b56c:	0505 5858 0505 0505 0505 0505 0505 0505     ..XX............
d000b57c:	5805 5865 6510 6505 6510 0505 1065 0558     .XeX.e.e.e..e.X.
d000b58c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b59c:	0505 0505 0505 1065 1010 5810 0505 0505     ......e....X....
d000b5ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b5bc:	0505 5805 0565 0505 0505 0505 0505 0505     ...Xe...........
d000b5cc:	0505 0505 0505 0505 5858 0505 0505 0505     ........XX......
d000b5dc:	0505 0505 0505 5805 1065 6510 1065 6510     .......Xe..ee..e
d000b5ec:	0505 1058 0565 0505 0505 0505 0505 0505     ..X.e...........
d000b5fc:	0505 0505 0505 0505 0505 6505 1010 5810     ...........e...X
d000b60c:	1010 0505 0505 0505 0505 0505 0505 0505     ................
d000b61c:	0505 0505 0505 0505 5865 0565 0505 0505     ........eXe.....
d000b62c:	0505 0505 0505 0505 0505 0505 0505 5858     ..............XX
d000b63c:	0505 0505 0505 0505 0505 0505 6505 5865     .............eeX
d000b64c:	1010 1010 0558 6505 1010 0505 0505 0505     ....X..e........
d000b65c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b66c:	1065 1010 6505 1010 0558 0505 0505 0505     e....e..X.......
d000b67c:	0505 0505 0505 0505 0505 0505 0505 6505     ...............e
d000b68c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b69c:	0505 0505 5865 0505 0505 0505 0505 0505     ....eX..........
d000b6ac:	0505 0505 5858 1010 1010 0505 1005 6510     ....XX.........e
d000b6bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b6cc:	0505 0505 6505 1010 6510 0505 1058 5810     .....e...e..X..X
d000b6dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b6ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b6fc:	0505 0505 0505 0505 0505 5805 0565 0505     ...........Xe...
d000b70c:	0505 0505 0505 0505 0505 1065 5865 0558     ..........e.eXX.
d000b71c:	0505 1005 0558 0505 0505 0505 0505 0505     ....X...........
d000b72c:	0505 0505 0505 0505 0505 1065 1010 0565     ..........e...e.
d000b73c:	0505 1005 1010 6510 0565 0505 0505 0505     .......ee.......
d000b74c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b75c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b76c:	1005 0565 0505 0505 0505 0505 0505 0505     ..e.............
d000b77c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b78c:	0505 0505 0505 0505 0505 0505 0505 5805     ...............X
d000b79c:	1010 6510 0505 0505 0505 1010 1010 1010     ...e............
d000b7ac:	0565 0505 0505 0505 0505 0505 0505 0505     e...............
d000b7bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b7cc:	0505 0505 0505 5805 0565 0505 0505 0505     .......Xe.......
d000b7dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b7ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b7fc:	0505 0505 1010 1010 0505 0505 0505 0505     ................
d000b80c:	6505 1010 1010 0565 0505 0505 0505 0505     .e....e.........
d000b81c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b82c:	0505 0505 0505 0505 0505 0505 5805 0565     .............Xe.
d000b83c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b84c:	0505 5865 1010 6558 0505 0505 0505 0505     ..eX..Xe........
d000b85c:	0505 0505 0505 0505 6505 1010 0558 0505     .........e..X...
d000b86c:	0505 0505 0505 0505 6505 5858 0505 0505     .........eXX....
d000b87c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b88c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b89c:	0505 5805 0558 0505 0505 0505 0505 0505     ...XX...........
d000b8ac:	0505 0505 0505 1065 1010 1010 1010 0505     ......e.........
d000b8bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b8cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b8dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b8ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b8fc:	0505 0505 0505 0505 5805 0558 0505 0505     .........XX.....
d000b90c:	0505 0505 0505 0505 0505 1005 1010 5810     ...............X
d000b91c:	6565 1058 0558 0505 0505 0505 0505 0505     eeX.X...........
d000b92c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b93c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b94c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b95c:	0505 0505 0505 0505 0505 0505 0505 5805     ...............X
d000b96c:	0558 0505 0505 0505 0505 0505 0505 6505     X..............e
d000b97c:	1010 6510 0505 0505 1065 0558 0505 0505     ...e....e.X.....
d000b98c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b99c:	0505 0505 0505 0505 0505 6565 6558 0505     ..........eeXe..
d000b9ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b9bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000b9cc:	0505 0505 5805 0558 0505 0505 0505 0505     .....XX.........
d000b9dc:	0505 0505 1005 1010 0565 0505 0505 1058     ........e.....X.
d000b9ec:	0565 0505 0505 0505 0505 0505 0505 0505     e...............
d000b9fc:	0505 0505 0505 0505 0505 0505 6505 1058     .............eX.
d000ba0c:	1010 1010 0505 0505 0505 0505 0505 0505     ................
d000ba1c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ba2c:	0505 0505 0505 0505 0505 5805 0565 0505     ...........Xe...
d000ba3c:	0505 0505 0505 0505 0505 1058 0510 0505     ..........X.....
d000ba4c:	0505 0505 1010 0505 0505 0505 0505 0505     ................
d000ba5c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ba6c:	5865 1010 1010 1010 1010 0565 0505 0505     eX........e.....
d000ba7c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ba8c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ba9c:	5805 0565 0505 0505 0505 0505 0505 0505     .Xe.............
d000baac:	1010 0558 0505 0505 5805 6510 0505 0505     ..X......X.e....
d000babc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bacc:	0505 6565 1058 1010 1010 6558 6565 1010     ..eeX.....Xeee..
d000badc:	0565 0505 0505 0505 0505 0505 0505 0505     e...............
d000baec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bafc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bb0c:	0505 0505 0505 1010 0510 0505 0505 1065     ..............e.
d000bb1c:	0510 0505 0505 0505 0505 0505 0505 0505     ................
d000bb2c:	0505 0505 0505 1065 1010 1010 1010 5810     ......e........X
d000bb3c:	0505 0505 1010 0505 0505 0505 0505 0505     ................
d000bb4c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bb5c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bb6c:	0505 0505 0505 0505 0505 0505 1010 0510     ................
d000bb7c:	0505 0505 6565 0505 0505 0505 0505 0505     ....ee..........
d000bb8c:	0505 0505 0505 0505 0505 1058 1010 1010     ..........X.....
d000bb9c:	6558 1005 6510 0505 6505 1010 0505 0505     Xe...e...e......
d000bbac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bbbc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bbcc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bbdc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bbec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bbfc:	1010 1010 0558 0505 1065 0510 0505 5805     ....X...e......X
d000bc0c:	5810 0505 0505 0505 0505 0505 0505 0505     .X..............
d000bc1c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bc2c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bc3c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bc4c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bc5c:	0505 0505 0505 1058 5810 0505 0505 1058     ......X..X....X.
d000bc6c:	0558 0505 1005 6510 0505 0505 0505 0505     X......e........
d000bc7c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bc8c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bc9c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bcac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bcbc:	0505 0505 0505 0505 0505 0505 1065 0510     ............e...
d000bccc:	0505 0505 1010 0565 0505 1065 0510 0505     ......e...e.....
d000bcdc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bcec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bcfc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bd0c:	0505 0505 0505 5810 0505 0505 0505 0505     .......X........
d000bd1c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bd2c:	0505 1058 0558 0505 6505 1010 0505 0505     ..X.X....e......
d000bd3c:	1010 0565 0505 0505 0505 0505 0505 0505     ..e.............
d000bd4c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bd5c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bd6c:	0505 0505 0505 0505 0505 0505 1010 6565     ..............ee
d000bd7c:	5858 5810 0565 0505 0505 0505 0505 0505     XX.Xe...........
d000bd8c:	0505 0505 0505 0505 1010 0565 0505 5805     ..........e....X
d000bd9c:	6510 0505 6505 1010 0505 0505 0505 0505     .e...e..........
d000bdac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bdbc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bdcc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bddc:	6505 1010 1010 1010 1010 5810 0505 0505     .e.........X....
d000bdec:	0505 0505 0505 0505 0505 0505 0505 1010     ................
d000bdfc:	0565 0505 1005 6510 0505 5805 6510 0505     e......e...X.e..
d000be0c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000be1c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000be2c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000be3c:	0505 6565 5865 1010 1010 1010 5858 5865     ..eeeX......XXeX
d000be4c:	1010 0505 0505 0505 0505 0505 0505 0505     ................
d000be5c:	0505 6505 1010 0505 0505 1005 0510 0505     ...e............
d000be6c:	0505 0565 0505 0505 0505 0505 0505 0505     ..e.............
d000be7c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000be8c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000be9c:	0505 0505 0505 0505 1010 1010 1010 1010     ................
d000beac:	0565 0505 0505 1010 0565 0505 0505 0505     e.......e.......
d000bebc:	0505 0505 0505 0505 6505 5810 0505 0505     .........e.X....
d000becc:	5805 0565 0505 0505 0505 0505 0505 0505     .Xe.............
d000bedc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000beec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000befc:	0505 0505 0505 0505 0505 0505 0505 1010     ................
d000bf0c:	5810 5865 5810 0505 0505 6505 1010 0565     .XeX.X.....e..e.
d000bf1c:	0505 0505 0505 0505 0505 0505 0505 6505     ...............e
d000bf2c:	5810 0505 0505 0505 0505 0505 0505 0505     .X..............
d000bf3c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bf4c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bf5c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bf6c:	0505 0505 0505 0505 5805 6510 0505 0505     .........X.e....
d000bf7c:	5805 1010 0505 0505 0505 0505 0505 0505     .X..............
d000bf8c:	0505 0505 6505 6510 0505 0505 0505 0505     .....e.e........
d000bf9c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bfac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bfbc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000bfcc:	0505 0505 0505 0505 0505 0505 0505 1005     ................
d000bfdc:	6510 0505 0505 1065 6510 0505 0505 0505     .e....e..e......
d000bfec:	0505 0505 0505 0505 0505 6505 0510 0505     ...........e....
d000bffc:	0505 0505 0505 0505 0505 5865 6558 0505     ..........eXXe..
d000c00c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c01c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c02c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c03c:	0505 0505 1065 0510 0505 5805 1010 0565     ....e......X..e.
d000c04c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c05c:	0505 0505 0505 0505 0505 0505 6565 1058     ............eeX.
d000c06c:	1010 1010 0505 0505 0505 0505 0505 0505     ................
d000c07c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c08c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c09c:	0505 0505 0505 0505 0505 1065 0558 0505     ..........e.X...
d000c0ac:	1010 6558 0505 0505 0505 0505 0505 0505     ..Xe............
d000c0bc:	0505 0505 0505 0505 0505 0505 0505 6565     ..............ee
d000c0cc:	1058 1010 1010 1010 6565 0505 0505 0505     X.......ee......
d000c0dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c0ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c0fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c10c:	1065 0565 0505 6565 0505 0505 0505 0505     e.e...ee........
d000c11c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c12c:	6565 1058 1010 1010 1010 6558 0505 0505     eeX.......Xe....
d000c13c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c14c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c15c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c16c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c17c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c18c:	0505 1005 1010 1010 1010 1010 1010 0565     ..............e.
d000c19c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c1ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c1bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c1cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c1dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c1ec:	0505 0505 0505 0505 1065 1010 1010 6510     ........e......e
d000c1fc:	0565 1010 0558 0505 0505 0505 0505 0505     e...X...........
d000c20c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c21c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c22c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c23c:	0505 0505 0505 0505 0505 6505 5858 0565     ...........eXXe.
d000c24c:	0505 0505 0505 0505 0505 0505 0505 1065     ..............e.
d000c25c:	1010 0565 0505 6505 1010 0565 0505 0505     ..e....e..e.....
d000c26c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c27c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c28c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c29c:	0505 0505 0505 0505 0505 0505 6565 1058     ............eeX.
d000c2ac:	1010 1010 0510 0505 0505 0505 0505 0505     ................
d000c2bc:	0505 0505 1005 5810 0505 0505 5805 1010     .......X.....X..
d000c2cc:	0558 0505 0505 0505 0505 0505 5805 0510     X............X..
d000c2dc:	5805 1010 1010 1010 1010 0510 0505 0505     .X..............
d000c2ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c2fc:	0505 0505 0505 0505 0505 0505 0505 1065     ..............e.
d000c30c:	1010 1010 1010 1010 5858 0565 0505 0505     ........XXe.....
d000c31c:	0505 0505 0505 0505 0505 1005 6510 0505     .............e..
d000c32c:	0505 1065 1010 0510 0505 0505 0505 0505     ..e.............
d000c33c:	0505 6505 0565 0505 0505 0505 0505 0505     ...ee...........
d000c34c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c35c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c36c:	0505 0505 1058 1010 1010 6558 0505 0505     ....X.....Xe....
d000c37c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c38c:	1005 6510 0505 0505 1058 1010 5810 0505     ...e....X....X..
d000c39c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c3ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c3bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c3cc:	0505 0505 0505 0505 0505 6505 1010 6510     ...........e...e
d000c3dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c3ec:	0505 0505 0505 1005 6510 0505 6505 1010     .........e...e..
d000c3fc:	5865 1010 0558 0505 0505 0505 0505 0505     eX..X...........
d000c40c:	0505 5805 0565 0505 0505 0505 0505 0505     ...Xe...........
d000c41c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c42c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c43c:	5805 1010 0505 0505 0505 0505 0505 0505     .X..............
d000c44c:	0505 0505 0505 0505 0505 0505 1005 6510     ...............e
d000c45c:	0505 1005 5810 0505 1010 1010 0565 0505     .....X......e...
d000c46c:	0505 0505 0505 0505 5805 0565 0505 0505     .........Xe.....
d000c47c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c48c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c49c:	0505 0505 0505 1065 6510 0505 0505 0505     ......e..e......
d000c4ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c4bc:	0505 1005 5810 0505 1058 0510 0505 1005     .....X..X.......
d000c4cc:	1010 1010 0565 0505 0505 0505 1065 1010     ....e.......e...
d000c4dc:	1010 1010 1010 1010 0558 0505 0505 0505     ........X.......
d000c4ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c4fc:	0505 0505 0505 0505 0505 0505 1065 0510     ............e...
d000c50c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c51c:	0505 0505 0505 0505 1005 1010 1058 1010     ............X...
d000c52c:	0565 0505 0505 1058 1010 5810 0505 0505     e.....X....X....
d000c53c:	0505 0505 5805 0565 0505 0505 6505 0510     .....Xe......e..
d000c54c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c55c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c56c:	0505 1065 5810 0505 0505 0505 0505 0505     ..e..X..........
d000c57c:	0505 0505 0505 0505 0505 0505 0505 6505     ...............e
d000c58c:	1010 1010 6510 0505 0505 0505 6505 1058     .....e.......eX.
d000c59c:	5810 0505 0505 0505 0505 5805 0565 0505     .X.........Xe...
d000c5ac:	0505 0505 0510 0505 0505 0505 0505 0505     ................
d000c5bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c5cc:	0505 0505 0505 0505 1005 1010 0505 0505     ................
d000c5dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c5ec:	0505 0505 0505 1065 5810 0565 0505 0505     ......e..Xe.....
d000c5fc:	0505 0505 6505 0565 0505 0505 0505 0505     .....ee.........
d000c60c:	6505 0505 0505 0505 0505 0565 0505 0505     .e........e.....
d000c61c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c62c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c63c:	6558 0505 0505 0505 0505 0505 0505 0505     Xe..............
d000c64c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c65c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c66c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c67c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c68c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c69c:	0505 0505 0505 0505 0505 5865 1010 6558     ..........eX..Xe
d000c6ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c6bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c6cc:	0505 0505 0505 0505 0505 5865 5810 0505     ..........eX.X..
d000c6dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c6ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c6fc:	0505 0505 0505 0505 0505 0505 0505 1065     ..............e.
d000c70c:	1010 1010 1010 0565 0505 0505 0505 0505     ......e.........
d000c71c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c72c:	0505 0505 0505 0505 0505 0505 0505 5805     ...............X
d000c73c:	6510 0565 0505 0505 0505 0505 0505 0505     .ee.............
d000c74c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c75c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c76c:	0505 6505 1010 5810 6565 1010 0510 0505     ...e...Xee......
d000c77c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c78c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c79c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c7ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c7bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c7cc:	0505 0505 0505 0505 1065 5810 0505 0505     ........e..X....
d000c7dc:	1065 0510 0505 0505 0505 0505 0505 0505     e...............
d000c7ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c7fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c80c:	1058 6510 0505 5805 0558 0505 0505 0505     X..e...XX.......
d000c81c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c82c:	0505 0505 0505 0505 0505 0505 6505 1010     .............e..
d000c83c:	0558 0505 0505 1065 0510 0505 0505 0505     X.....e.........
d000c84c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c85c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c86c:	0505 0505 6505 6510 1058 0565 0505 0510     .....e.eX.e.....
d000c87c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c88c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c89c:	0505 1005 5810 0505 0505 0505 1058 0510     .....X......X...
d000c8ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c8bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c8cc:	0505 0505 0505 0505 0505 5805 0565 5805     ...........Xe..X
d000c8dc:	0558 0505 0510 0505 0505 0505 0505 0505     X...............
d000c8ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c8fc:	0505 0505 0505 0505 1065 6510 0505 0505     ........e..e....
d000c90c:	6505 1010 0565 0505 0505 0505 0505 0505     .e..e...........
d000c91c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c92c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c93c:	1005 0565 6505 6510 0505 0510 0505 0505     ..e..e.e........
d000c94c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c95c:	0505 0505 0505 0505 0505 0505 0505 1058     ..............X.
d000c96c:	0510 0505 0505 1065 1010 0505 0505 0505     ......e.........
d000c97c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c98c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c99c:	0505 0505 0505 5805 0558 0505 1058 5865     .......XX...X.eX
d000c9ac:	0558 0505 0505 0505 0505 0505 0505 0505     X...............
d000c9bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c9cc:	0505 0505 1010 0558 0505 6505 1010 0510     ......X....e....
d000c9dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c9ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000c9fc:	0505 0505 0505 0505 0505 0505 0505 0565     ..............e.
d000ca0c:	0505 5805 5810 0505 0505 0505 0505 0505     ...X.X..........
d000ca1c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ca2c:	0505 0505 0505 0505 0505 1058 1010 5858     ..........X...XX
d000ca3c:	1010 1010 0505 0505 0505 0505 0505 0505     ................
d000ca4c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ca5c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ca6c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ca7c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ca8c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ca9c:	1005 1010 1010 1010 0558 0505 0505 0505     ........X.......
d000caac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cabc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cacc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cadc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000caec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cafc:	0505 0505 0505 0505 5865 5858 0565 0505     ........eXXXe...
d000cb0c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cb1c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cb2c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cb3c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cb4c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cb5c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cb6c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cb7c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cb8c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cb9c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cbac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cbbc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cbcc:	0505 0505 0505 0505 0505 0505 6565 0505     ............ee..
d000cbdc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cbec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cbfc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cc0c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cc1c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cc2c:	0505 0505 0505 0505 0505 0505 0505 6565     ..............ee
d000cc3c:	1058 1010 0565 0505 0505 0505 0505 0505     X...e...........
d000cc4c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cc5c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cc6c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cc7c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cc8c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cc9c:	0505 1065 1010 1010 1010 0565 0505 0505     ..e.......e.....
d000ccac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ccbc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cccc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ccdc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ccec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ccfc:	0505 0505 6505 1058 1010 1010 6565 0505     .....eX.....ee..
d000cd0c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cd1c:	0505 1010 1010 1010 1010 1010 1010 1010     ................
d000cd2c:	6558 0505 0505 0505 0505 0505 0505 0565     Xe............e.
d000cd3c:	0505 1065 1010 0565 0505 0505 0505 0505     ..e...e.........
d000cd4c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cd5c:	0505 0505 0505 0505 0505 1010 1010 5810     ...............X
d000cd6c:	0565 0505 0505 0505 0505 0505 0505 0505     e...............
d000cd7c:	0505 0505 0505 0505 1010 1010 1010 1010     ................
d000cd8c:	1010 1010 1010 1010 6510 0505 0505 0505     .........e......
d000cd9c:	0505 6505 0510 6505 6510 5805 0510 0505     ...e...e.e.X....
d000cdac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cdbc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cdcc:	1010 1010 0510 0505 0505 0505 0505 0505     ................
d000cddc:	0505 0505 0505 0505 0505 0505 0505 5865     ..............eX
d000cdec:	5858 6558 6565 6565 6565 6565 1058 1010     XXXeeeeeeeeeX...
d000cdfc:	0505 0505 0505 0505 5805 0565 5805 0565     .........Xe..Xe.
d000ce0c:	0505 0510 0505 0505 0505 0505 0505 0505     ................
d000ce1c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ce2c:	0505 0505 0505 5865 1010 0505 0505 0505     ......eX........
d000ce3c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ce4c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ce5c:	0505 5805 1010 0565 0505 0505 0505 1005     ...X..e.........
d000ce6c:	0565 5805 0565 0505 0510 0505 0505 0505     e..Xe...........
d000ce7c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ce8c:	0505 0505 0505 0505 0505 0505 1005 6510     ...............e
d000ce9c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ceac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cebc:	0505 0505 0505 0505 1065 1010 0505 0505     ........e.......
d000cecc:	0505 0505 1005 0565 1005 0505 6505 0558     ......e......eX.
d000cedc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ceec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cefc:	0505 1065 0558 0505 0505 6505 1058 0558     ..e.X......eX.X.
d000cf0c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cf1c:	0505 0505 0505 0505 0505 0505 6505 1010     .............e..
d000cf2c:	6510 0505 0505 0505 0505 6505 6510 1065     .e.........e.ee.
d000cf3c:	6565 1058 0565 0505 0505 0505 0505 0505     eeX.e...........
d000cf4c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cf5c:	0505 0505 0505 0505 1010 0565 0505 5865     ..........e...eX
d000cf6c:	1010 1010 0558 0505 0505 0505 0505 0505     ....X...........
d000cf7c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cf8c:	0505 1058 1010 0505 0505 0505 0505 0505     ..X.............
d000cf9c:	0505 1058 1010 1010 1010 0510 0505 0505     ..X.............
d000cfac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cfbc:	0505 0505 0505 0505 0505 0505 0505 1010     ................
d000cfcc:	6558 1058 1010 1010 6558 0505 0505 0505     XeX.....Xe......
d000cfdc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000cfec:	0505 0505 0505 1065 1010 0558 0505 0505     ......e...X.....
d000cffc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d00c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d01c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d02c:	0505 0505 1058 1010 1010 1010 0565 0505     ....X.......e...
d000d03c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d04c:	0505 0505 0505 0505 0505 5805 1010 6510     ...........X...e
d000d05c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d06c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d07c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d08c:	0505 0505 0505 0505 0505 5865 1010 6510     ..........eX...e
d000d09c:	0565 0505 0505 0505 0505 0505 0505 0505     e...............
d000d0ac:	0505 0505 0505 0505 0505 0505 0505 5805     ...............X
d000d0bc:	1010 5810 0505 0505 0505 0505 0505 0505     ...X............
d000d0cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d0dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d0ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d0fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d10c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d11c:	0505 5805 1010 1010 0565 0505 0505 0505     ...X....e.......
d000d12c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d13c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d14c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d15c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d16c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d17c:	0505 0505 0505 5865 1010 1010 0565 0505     ......eX....e...
d000d18c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d19c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d1ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d1bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d1cc:	0505 0505 0505 1058 0505 0505 0505 0505     ......X.........
d000d1dc:	0505 0505 0505 0505 0505 1065 1010 1010     ..........e.....
d000d1ec:	0565 0505 0505 0505 0505 0505 0505 0505     e...............
d000d1fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d20c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d21c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d22c:	0505 0505 6505 6510 0505 0505 1058 0565     .....e.e....X.e.
d000d23c:	0505 0505 0505 0505 0505 0505 0505 5805     ...............X
d000d24c:	1010 5810 0565 0505 0505 0505 0505 0505     ...Xe...........
d000d25c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d26c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d27c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d28c:	0505 0505 0505 0505 0505 1058 1010 0558     ..........X...X.
d000d29c:	0505 1058 0565 0505 0505 0505 0505 0505     ..X.e...........
d000d2ac:	0505 0505 1005 5810 0565 0505 0505 0505     .......Xe.......
d000d2bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d2cc:	5805 0565 0505 0505 0505 0505 0505 0505     .Xe.............
d000d2dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d2ec:	0505 0505 0505 0505 0505 0505 0505 5805     ...............X
d000d2fc:	1010 1058 6510 0505 1010 0565 0505 0505     ..X..e....e.....
d000d30c:	0505 0505 0505 0505 0505 0505 6505 0558     .............eX.
d000d31c:	0505 0505 0505 0505 6505 1058 6510 0505     .........eX..e..
d000d32c:	0505 0505 6505 5865 6558 6565 6565 6565     .....eeXXeeeeeee
d000d33c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d34c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d35c:	0505 0505 1005 6510 5805 5810 6505 1010     .......e.X.X.e..
d000d36c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d37c:	0505 1065 0510 0505 0505 0505 1065 1010     ..e.........e...
d000d38c:	1010 5810 0505 0505 0505 5865 1058 5858     ...X......eXX.XX
d000d39c:	5858 5858 1010 0510 0505 0505 0505 0505     XXXX............
d000d3ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d3bc:	0505 0505 0505 0505 0505 1058 0558 6505     ..........X.X..e
d000d3cc:	1010 5865 5810 0505 0505 0505 0505 0505     ..eX.X..........
d000d3dc:	0505 0505 0505 0505 1058 0558 0505 6505     ........X.X....e
d000d3ec:	1058 1010 1010 5810 0565 0505 0505 0505     X......Xe.......
d000d3fc:	0505 5805 0565 0505 0505 6505 0510 0505     ...Xe......e....
d000d40c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d41c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d42c:	1010 0565 0505 1010 1010 0510 0505 0505     ..e.............
d000d43c:	0505 0505 0505 0505 0505 0505 0505 1010     ................
d000d44c:	0565 5805 1010 1010 5810 0565 0505 0505     e..X.....Xe.....
d000d45c:	0505 0505 0505 0505 5805 0565 0505 0505     .........Xe.....
d000d46c:	0505 0510 0505 0505 0505 0505 0505 0505     ................
d000d47c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d48c:	0505 0505 0505 1010 0565 0505 1065 1010     ........e...e...
d000d49c:	0565 0505 0505 0505 0505 0505 0505 0505     e...............
d000d4ac:	0505 6505 1010 5865 1010 1010 6558 0505     ...e..eX....Xe..
d000d4bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d4cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d4dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d4ec:	0505 0505 0505 0505 0505 0505 1058 0510     ............X...
d000d4fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d50c:	0505 0505 0505 0505 6505 1010 1010 1010     .........e......
d000d51c:	0565 0505 0505 0505 0505 0505 0505 0505     e...............
d000d52c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d53c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d54c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d55c:	0505 6505 0505 0505 0505 0505 0505 0505     ...e............
d000d56c:	0505 0505 0505 0505 0505 0505 0505 5805     ...............X
d000d57c:	1010 5810 0565 0505 0505 0505 0505 0505     ...Xe...........
d000d58c:	0505 0505 0505 0505 0505 5805 1010 1010     ...........X....
d000d59c:	1010 1010 0510 0505 0505 0505 0505 0505     ................
d000d5ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d5bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d5cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d5dc:	0505 0505 1005 5810 0565 0505 0505 0505     .......Xe.......
d000d5ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d5fc:	6505 1058 6558 6565 6565 0565 0505 0505     .eX.Xeeeeee.....
d000d60c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d61c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d62c:	0505 6505 1058 1010 6510 0505 0505 0505     ...eX....e......
d000d63c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d64c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d65c:	0505 0505 0505 6505 0510 0505 0505 0505     .......e........
d000d66c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d67c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d68c:	0505 0505 0505 0505 1058 1010 1010 1010     ........X.......
d000d69c:	0565 0505 0505 0505 0505 0505 0505 0505     e...............
d000d6ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d6bc:	0505 0505 0505 0505 0505 0505 5805 0565     .............Xe.
d000d6cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d6dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d6ec:	0505 0505 0505 0505 0505 0505 1065 1010     ............e...
d000d6fc:	6558 0505 1058 0558 0505 0505 0505 0505     Xe..X.X.........
d000d70c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d71c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d72c:	0505 5805 0558 0505 0505 0505 0505 0505     ...XX...........
d000d73c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d74c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d75c:	6505 1010 6510 0505 0505 1065 0565 0505     .e...e....e.e...
d000d76c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d77c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d78c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d79c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d7ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d7bc:	0505 0505 0505 1065 5810 0505 0505 0505     ......e..X......
d000d7cc:	1058 0565 0505 0505 0505 0505 0505 0505     X.e.............
d000d7dc:	0505 0505 0505 0505 0505 6505 1010 0565     ...........e..e.
d000d7ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d7fc:	0505 0505 5865 1010 0565 0505 0505 0505     ....eX..e.......
d000d80c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d81c:	0505 0505 0505 0505 0505 0505 1010 0510     ................
d000d82c:	0505 0505 6505 1010 0505 0505 0505 0505     .....e..........
d000d83c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d84c:	1005 1010 0510 0505 0505 0505 0505 0505     ................
d000d85c:	0505 0505 6505 0510 6505 6510 5865 0510     .....e...e.eeX..
d000d86c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d87c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d88c:	0505 1010 0510 0505 0505 1005 6510 0505     .............e..
d000d89c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d8ac:	0505 0505 0505 1005 1010 0565 0505 0505     ..........e.....
d000d8bc:	0505 0505 0505 0505 0505 5805 0565 6505     ...........Xe..e
d000d8cc:	0558 0505 0510 0505 0505 0505 0505 0505     X...............
d000d8dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d8ec:	0505 0505 0505 0505 1010 0510 0505 0505     ................
d000d8fc:	1065 0565 0505 0505 0505 0505 0505 0505     e.e.............
d000d90c:	0505 0505 0505 0505 0505 0505 0505 6558     ..............Xe
d000d91c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d92c:	1005 0565 5805 0565 0505 0510 0505 0505     ..e..Xe.........
d000d93c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d94c:	0505 0505 0505 0505 0505 0505 0505 1058     ..............X.
d000d95c:	0565 0505 0505 6565 0505 0505 0505 0505     e.....ee........
d000d96c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d97c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d98c:	0505 0505 0505 1005 0565 1005 0505 6505     ........e......e
d000d99c:	0558 0505 0505 0505 0505 0505 0505 0505     X...............
d000d9ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d9bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d9cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d9dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000d9ec:	0505 0505 0505 0505 0505 0505 5805 6510     .............X.e
d000d9fc:	1005 0505 1065 0505 0505 0505 0505 0505     ....e...........
d000da0c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000da1c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000da2c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000da3c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000da4c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000da5c:	0505 0505 1058 1010 1010 1010 0510 0505     ....X...........
d000da6c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000da7c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000da8c:	0505 0505 0505 1065 1010 6510 0505 0505     ......e....e....
d000da9c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000daac:	0505 0505 0505 6565 5858 5858 0565 0505     ......eeXXXXe...
d000dabc:	0505 0505 0505 0505 0505 0505 6565 6565     ............eeee
d000dacc:	6565 0565 0505 0505 0505 0505 0505 0505     eee.............
d000dadc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000daec:	0505 0505 0505 0505 0505 1058 1010 1010     ..........X.....
d000dafc:	1010 0505 0505 0505 0505 0505 0505 0505     ................
d000db0c:	0505 0505 0505 0505 0505 1065 1010 1010     ..........e.....
d000db1c:	1010 5810 0505 0505 0505 0505 0505 0505     ...X............
d000db2c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000db3c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000db4c:	0505 0505 0505 0505 0505 0505 0505 5805     ...............X
d000db5c:	1010 6558 0505 1010 0505 0505 0505 0505     ..Xe............
d000db6c:	0505 0505 0505 0505 0505 0505 0505 1065     ..............e.
d000db7c:	1010 1010 1010 1010 1010 0510 0505 0505     ................
d000db8c:	0505 0505 0505 0505 6565 6558 0505 0505     ........eeXe....
d000db9c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000dbac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000dbbc:	0505 0505 1058 6510 0505 6505 1010 0505     ....X..e...e....
d000dbcc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000dbdc:	0505 6505 1010 1010 0565 0505 0505 1058     ...e....e.....X.
d000dbec:	6510 0505 0505 0505 0505 0505 5865 1010     .e..........eX..
d000dbfc:	1058 5810 0505 0505 0505 0505 0505 0505     X..X............
d000dc0c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000dc1c:	0505 0505 0505 0505 5805 1010 0565 0505     .........X..e...
d000dc2c:	1005 6510 0505 0505 0505 0505 0505 0505     ...e............
d000dc3c:	0505 0505 0505 0505 1065 1010 0565 0505     ........e...e...
d000dc4c:	0505 0505 1005 5810 0505 0505 0505 0505     .......X........
d000dc5c:	0505 5810 0505 0505 1065 0565 0505 0505     ...X....e.e.....
d000dc6c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000dc7c:	0505 0505 0505 0505 0505 0505 0505 1005     ................
d000dc8c:	6510 0505 0505 1058 0558 0505 0505 0505     .e....X.X.......
d000dc9c:	0505 0505 0505 0505 0505 0505 6505 1010     .............e..
d000dcac:	0558 0505 0505 0505 0505 5805 1010 0505     X..........X....
d000dcbc:	0505 0505 0505 6505 0558 0505 0505 6505     .......eX......e
d000dccc:	0510 0505 0505 0505 0505 0505 0505 0505     ................
d000dcdc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000dcec:	0505 0505 1065 0510 0505 1005 1010 5858     ....e.........XX
d000dcfc:	0565 0505 0505 0505 0505 0505 0505 0505     e...............
d000dd0c:	0505 1065 5810 0505 0505 0505 0505 0505     ..e..X..........
d000dd1c:	6505 1010 0505 0505 0505 0505 5805 0565     .e...........Xe.
d000dd2c:	0505 0505 0505 0510 0505 0505 0505 0505     ................
d000dd3c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000dd4c:	0505 0505 0505 0505 0505 1065 0558 6505     ..........e.X..e
d000dd5c:	1010 1010 1010 0558 0505 0505 0505 0505     ......X.........
d000dd6c:	0505 0505 0505 0505 1010 0558 0505 0505     ..........X.....
d000dd7c:	0505 0505 0505 5805 5810 0505 0505 0505     .......X.X......
d000dd8c:	0505 1005 0565 0505 0505 0505 0510 0505     ....e...........
d000dd9c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ddac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ddbc:	1065 1010 1010 1010 1010 5858 0565 0505     e.........XXe...
d000ddcc:	0505 0505 0505 0505 0505 0505 6505 1010     .............e..
d000dddc:	0505 0505 0505 0505 0505 0505 1065 6510     ............e..e
d000ddec:	0505 0505 0505 0505 5805 0558 0505 0505     .........XX.....
d000ddfc:	6505 0510 0505 0505 0505 0505 0505 0505     .e..............
d000de0c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000de1c:	0505 0505 0505 1065 1010 1010 6558 0505     ......e.....Xe..
d000de2c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000de3c:	0505 5805 5810 0505 0505 0505 0505 0505     ...X.X..........
d000de4c:	6505 1010 0558 0505 0505 0505 0505 0505     .e..X...........
d000de5c:	0565 0505 0505 6505 0565 0505 0505 0505     e......ee.......
d000de6c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000de7c:	0505 0505 0505 0505 0505 0505 5805 6558     .............XXe
d000de8c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000de9c:	0505 0505 0505 0505 1005 6510 0505 0505     ...........e....
d000deac:	0505 0505 0505 1065 1010 0505 0505 0505     ......e.........
d000debc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000decc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000dedc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000deec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000defc:	0505 6565 0505 0505 0505 0505 0505 1005     ..ee............
d000df0c:	6510 0505 0505 0505 0505 5805 1010 6510     .e.........X...e
d000df1c:	0505 0505 0505 6505 6565 6565 6565 6565     .......eeeeeeeee
d000df2c:	6565 6565 0565 0505 0505 0505 0505 0505     eeeee...........
d000df3c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000df4c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000df5c:	0505 0505 5865 1010 1010 0565 0505 0505     ....eX....e.....
d000df6c:	0505 0505 5805 1010 0505 0505 0505 6505     .....X.........e
d000df7c:	1010 1010 0565 0505 0505 0505 1005 1010     ....e...........
d000df8c:	1010 1010 1010 1010 1010 0510 0505 0505     ................
d000df9c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000dfac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000dfbc:	0505 0505 6505 5858 1010 1010 1010 1010     .....eXX........
d000dfcc:	0505 0505 0505 0505 0505 6505 1010 6558     ...........e..Xe
d000dfdc:	0505 5865 1010 1010 0510 0505 0505 0505     ..eX............
d000dfec:	0505 0505 0505 0505 0505 1005 0510 0505     ................
d000dffc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e00c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e01c:	0505 0505 6505 5865 1058 1010 1010 1010     .....eeXX.......
d000e02c:	5810 6565 0505 0505 0505 0505 0505 0505     .Xee............
d000e03c:	0505 1058 1010 1010 1010 1010 6510 0505     ..X..........e..
d000e04c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e05c:	5810 1058 0505 0505 0505 0505 0505 0505     .XX.............
d000e06c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e07c:	0505 0505 0505 0505 0505 1058 1010 1010     ..........X.....
d000e08c:	1010 5810 1010 0505 0505 0505 0505 0505     ...X............
d000e09c:	0505 0505 0505 0505 6505 1010 1010 1010     .........e......
d000e0ac:	6558 0505 0505 0505 0505 0505 0505 0505     Xe..............
d000e0bc:	0505 0505 1005 0558 5805 6510 0505 0505     ......X..X.e....
d000e0cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e0dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e0ec:	1065 1010 5810 6565 0505 1010 0565 0505     e....Xee....e...
d000e0fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e10c:	6505 6565 0565 0505 0505 0505 0505 0505     .eeee...........
d000e11c:	0505 0505 0505 0505 0505 5810 0505 0505     ...........X....
d000e12c:	1058 0565 0505 0505 0505 0505 0505 0505     X.e.............
d000e13c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e14c:	0505 0505 0505 6505 1010 0558 0505 0505     .......e..X.....
d000e15c:	1010 0565 0505 0505 0505 0505 0505 0505     ..e.............
d000e16c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e17c:	0505 0505 0505 0505 0505 0505 0505 5805     ...............X
d000e18c:	0558 0505 0505 5805 0510 0505 0505 0505     X......X........
d000e19c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e1ac:	0505 0505 0505 0505 0505 0505 6505 1010     .............e..
d000e1bc:	0505 0505 6505 1010 0505 0505 0505 0505     .....e..........
d000e1cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e1dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e1ec:	0505 0505 6505 0505 0505 0505 0505 0558     .....e........X.
d000e1fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e20c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e21c:	0505 5805 5810 0505 0505 1005 5810 0505     ...X.X.......X..
d000e22c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e23c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e24c:	0505 0505 0505 0505 0505 0505 0505 6505     ...............e
d000e25c:	6565 0505 0505 0505 0505 0505 0505 0505     ee..............
d000e26c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e27c:	0505 0505 0505 0505 1005 6510 0505 0505     ...........e....
d000e28c:	1058 0510 0505 0505 0505 0505 0505 0505     X...............
d000e29c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e2ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e2bc:	0505 5865 1010 1010 6510 0505 0505 0505     ..eX.....e......
d000e2cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e2dc:	0505 0505 0505 0505 0505 0505 0505 1005     ................
d000e2ec:	0510 0505 6505 1010 0558 0505 0505 0505     .....e..X.......
d000e2fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e30c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e31c:	0505 0505 0505 0505 5810 5805 0565 1065     .........X.Xe.e.
d000e32c:	0565 0505 0505 0505 0505 0505 0505 0505     e...............
d000e33c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e34c:	0505 0505 1005 6510 0505 1058 1010 0505     .......e..X.....
d000e35c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e36c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e37c:	0505 0505 0505 0505 0505 0505 5805 0558     .............XX.
d000e38c:	5805 0565 6505 0510 0505 0505 0505 0505     .Xe..e..........
d000e39c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e3ac:	0505 0505 0505 0505 0505 5805 1010 1010     ...........X....
d000e3bc:	1010 6510 0505 0505 0505 0505 0505 0505     ...e............
d000e3cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e3dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e3ec:	0505 5805 0565 5805 0565 0505 0510 0505     ...Xe..Xe.......
d000e3fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e40c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e41c:	0505 1010 1010 5810 0505 0505 0505 0505     .......X........
d000e42c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e43c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e44c:	0505 0505 0505 0505 5805 0565 5805 0565     .........Xe..Xe.
d000e45c:	0505 0510 0505 0505 0505 0505 0505 0505     ................
d000e46c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e47c:	0505 0505 0505 0505 6505 6565 0565 0505     .........eeee...
d000e48c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e49c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e4ac:	0505 0505 0505 0505 0505 0505 0505 6505     ...............e
d000e4bc:	6510 5805 0565 6505 0510 0505 0505 0505     .e.Xe..e........
d000e4cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e4dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e4ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e4fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e50c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e51c:	0505 0505 0505 1058 1010 0565 5805 0558     ......X...e..XX.
d000e52c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e53c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e54c:	0505 0505 0505 0505 1065 6565 0565 0505     ........e.eee...
d000e55c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e56c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e57c:	0505 0505 0505 0505 0505 0505 6505 5858     .............eXX
d000e58c:	0565 0505 0505 0505 0505 0505 0505 0505     e...............
d000e59c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e5ac:	0505 0505 0505 0505 0505 0505 6505 1010     .............e..
d000e5bc:	1010 1010 0505 0505 0505 0505 0505 0505     ................
d000e5cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e5dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e5ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e5fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e60c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e61c:	0505 1058 1010 1010 1010 0565 0505 0505     ..X.......e.....
d000e62c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e63c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e64c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e65c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e66c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e67c:	0505 0505 0505 1005 1010 1010 0505 1058     ..............X.
d000e68c:	0558 0505 0505 0505 0505 0505 0505 0505     X...............
d000e69c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e6ac:	0505 0505 0505 0505 0505 0505 5805 1010     .............X..
d000e6bc:	1010 1010 1010 0510 0505 0505 0505 0505     ................
d000e6cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e6dc:	0505 0505 0505 0505 0505 0505 1058 6510     ............X..e
d000e6ec:	1010 0505 1065 0510 0505 0505 0505 0505     ....e...........
d000e6fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e70c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e71c:	0505 0505 1058 6565 0505 0505 0505 0505     ....X.ee........
d000e72c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e73c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e74c:	6505 1010 6505 5810 0505 1005 0558 0505     .e...e.X....X...
d000e75c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e76c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e77c:	0505 0505 0505 0505 6505 0558 0505 0505     .........eX.....
d000e78c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e79c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e7ac:	0505 0505 0505 5805 6510 5805 6510 0505     .......X.e.X.e..
d000e7bc:	1065 0558 0505 0505 0505 0505 0505 0505     e.X.............
d000e7cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e7dc:	0505 0505 0505 0505 0505 0505 0505 5805     ...............X
d000e7ec:	0565 0505 0505 0505 0505 0505 0505 0505     e...............
d000e7fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e80c:	0505 0505 0505 0505 0505 0505 1005 6510     ...............e
d000e81c:	1065 0510 0505 1010 0565 0505 0505 0505     e.......e.......
d000e82c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e83c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e84c:	0505 0505 6505 0565 0505 0505 0505 0505     .....ee.........
d000e85c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e86c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e87c:	0505 5805 1010 1010 0558 6505 5810 0505     ...X....X..e.X..
d000e88c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e89c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e8ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e8bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e8cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e8dc:	0505 0505 0505 0505 6505 1010 1010 0505     .........e......
d000e8ec:	1005 6510 0505 0505 0505 0505 0505 0505     ...e............
d000e8fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e90c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e91c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e92c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e93c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e94c:	5865 0565 0505 1005 0565 0505 0505 0505     eXe.....e.......
d000e95c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e96c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e97c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e98c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e99c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e9ac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e9bc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e9cc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e9dc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e9ec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000e9fc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ea0c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ea1c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ea2c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ea3c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ea4c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ea5c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ea6c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ea7c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ea8c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ea9c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000eaac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000eabc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000eacc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000eadc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000eaec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000eafc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000eb0c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000eb1c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000eb2c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000eb3c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000eb4c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000eb5c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000eb6c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000eb7c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000eb8c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000eb9c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ebac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ebbc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ebcc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ebdc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ebec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ebfc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ec0c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ec1c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ec2c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ec3c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ec4c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ec5c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ec6c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ec7c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ec8c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ec9c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ecac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ecbc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000eccc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ecdc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ecec:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ecfc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ed0c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ed1c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ed2c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ed3c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ed4c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ed5c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ed6c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ed7c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ed8c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000ed9c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000edac:	0505 0505 0505 0505 0505 0505 0505 0505     ................
d000edbc:	0505 0505 0505 0505                         ........

d000edc4 <_ctype_>:
d000edc4:	2000 2020 2020 2020 2020 2828 2828 2028     .         ((((( 
d000edd4:	2020 2020 2020 2020 2020 2020 2020 2020                     
d000ede4:	8820 1010 1010 1010 1010 1010 1010 1010      ...............
d000edf4:	0410 0404 0404 0404 0404 1004 1010 1010     ................
d000ee04:	1010 4141 4141 4141 0101 0101 0101 0101     ..AAAAAA........
d000ee14:	0101 0101 0101 0101 0101 0101 1010 1010     ................
d000ee24:	1010 4242 4242 4242 0202 0202 0202 0202     ..BBBBBB........
d000ee34:	0202 0202 0202 0202 0202 0202 1010 1010     ................
d000ee44:	0020 0000 0000 0000 0000 0000 0000 0000      ...............
	...
d000eec4:	2300 302d 202b 6800 4c6c 6500 6766 4645     .#-0+ .hlL.efgEF
d000eed4:	0047 3130 3332 3534 3736 3938 4241 4443     G.0123456789ABCD
d000eee4:	4645 3000 3231 3433 3635 3837 6139 6362     EF.0123456789abc
d000eef4:	6564 0066                                   def.

Disassembly of section .init:

d000eef8 <_init>:
d000eef8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d000eefa:	bf00      	nop

Disassembly of section .fini:

d000eefc <_fini>:
d000eefc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d000eefe:	bf00      	nop
