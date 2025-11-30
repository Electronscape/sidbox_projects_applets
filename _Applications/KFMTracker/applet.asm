
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0000010 <applet_entry>:
d0000010:	f001 ba02 	b.w	d0001418 <main>

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
d000027c:	d0252b1d 	.word	0xd0252b1d

d0000280 <LoadTestSong>:
d0000280:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d0000284:	4c95      	ldr	r4, [pc, #596]	; (d00004dc <LoadTestSong+0x25c>)
d0000286:	b0e7      	sub	sp, #412	; 0x19c
d0000288:	4603      	mov	r3, r0
d000028a:	4895      	ldr	r0, [pc, #596]	; (d00004e0 <LoadTestSong+0x260>)
d000028c:	68a2      	ldr	r2, [r4, #8]
d000028e:	9301      	str	r3, [sp, #4]
d0000290:	4790      	blx	r2
d0000292:	6ea2      	ldr	r2, [r4, #104]	; 0x68
d0000294:	a806      	add	r0, sp, #24
d0000296:	4790      	blx	r2
d0000298:	aa06      	add	r2, sp, #24
d000029a:	9b01      	ldr	r3, [sp, #4]
d000029c:	a826      	add	r0, sp, #152	; 0x98
d000029e:	4991      	ldr	r1, [pc, #580]	; (d00004e4 <LoadTestSong+0x264>)
d00002a0:	f005 fd48 	bl	d0005d34 <siprintf>
d00002a4:	68a3      	ldr	r3, [r4, #8]
d00002a6:	a926      	add	r1, sp, #152	; 0x98
d00002a8:	488f      	ldr	r0, [pc, #572]	; (d00004e8 <LoadTestSong+0x268>)
d00002aa:	4798      	blx	r3
d00002ac:	4a8f      	ldr	r2, [pc, #572]	; (d00004ec <LoadTestSong+0x26c>)
d00002ae:	ab04      	add	r3, sp, #16
d00002b0:	ca07      	ldmia	r2, {r0, r1, r2}
d00002b2:	c303      	stmia	r3!, {r0, r1}
d00002b4:	a926      	add	r1, sp, #152	; 0x98
d00002b6:	701a      	strb	r2, [r3, #0]
d00002b8:	2000      	movs	r0, #0
d00002ba:	f8d4 3094 	ldr.w	r3, [r4, #148]	; 0x94
d00002be:	2201      	movs	r2, #1
d00002c0:	4798      	blx	r3
d00002c2:	ab03      	add	r3, sp, #12
d00002c4:	f8d4 50a0 	ldr.w	r5, [r4, #160]	; 0xa0
d00002c8:	a904      	add	r1, sp, #16
d00002ca:	2208      	movs	r2, #8
d00002cc:	2000      	movs	r0, #0
d00002ce:	47a8      	blx	r5
d00002d0:	2208      	movs	r2, #8
d00002d2:	4987      	ldr	r1, [pc, #540]	; (d00004f0 <LoadTestSong+0x270>)
d00002d4:	a804      	add	r0, sp, #16
d00002d6:	f7ff ff97 	bl	d0000208 <stringcmp>
d00002da:	4602      	mov	r2, r0
d00002dc:	68a3      	ldr	r3, [r4, #8]
d00002de:	a904      	add	r1, sp, #16
d00002e0:	4884      	ldr	r0, [pc, #528]	; (d00004f4 <LoadTestSong+0x274>)
d00002e2:	9203      	str	r2, [sp, #12]
d00002e4:	4798      	blx	r3
d00002e6:	9d03      	ldr	r5, [sp, #12]
d00002e8:	2d00      	cmp	r5, #0
d00002ea:	f040 80e5 	bne.w	d00004b8 <LoadTestSong+0x238>
d00002ee:	4e82      	ldr	r6, [pc, #520]	; (d00004f8 <LoadTestSong+0x278>)
d00002f0:	4629      	mov	r1, r5
d00002f2:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d00002f6:	4628      	mov	r0, r5
d00002f8:	4798      	blx	r3
d00002fa:	f8d4 40a0 	ldr.w	r4, [r4, #160]	; 0xa0
d00002fe:	4631      	mov	r1, r6
d0000300:	ab03      	add	r3, sp, #12
d0000302:	2292      	movs	r2, #146	; 0x92
d0000304:	4628      	mov	r0, r5
d0000306:	47a0      	blx	r4
d0000308:	4f7c      	ldr	r7, [pc, #496]	; (d00004fc <LoadTestSong+0x27c>)
d000030a:	68b1      	ldr	r1, [r6, #8]
d000030c:	4a7c      	ldr	r2, [pc, #496]	; (d0000500 <LoadTestSong+0x280>)
d000030e:	89b4      	ldrh	r4, [r6, #12]
d0000310:	4b7c      	ldr	r3, [pc, #496]	; (d0000504 <LoadTestSong+0x284>)
d0000312:	f8b6 808e 	ldrh.w	r8, [r6, #142]	; 0x8e
d0000316:	9503      	str	r5, [sp, #12]
d0000318:	50b9      	str	r1, [r7, r2]
d000031a:	52fc      	strh	r4, [r7, r3]
d000031c:	b134      	cbz	r4, d000032c <LoadTestSong+0xac>
d000031e:	f106 010e 	add.w	r1, r6, #14
d0000322:	0062      	lsls	r2, r4, #1
d0000324:	4878      	ldr	r0, [pc, #480]	; (d0000508 <LoadTestSong+0x288>)
d0000326:	f005 fb1f 	bl	d0005968 <memcpy>
d000032a:	9403      	str	r4, [sp, #12]
d000032c:	4e6b      	ldr	r6, [pc, #428]	; (d00004dc <LoadTestSong+0x25c>)
d000032e:	ab03      	add	r3, sp, #12
d0000330:	2208      	movs	r2, #8
d0000332:	a904      	add	r1, sp, #16
d0000334:	f8d6 40a0 	ldr.w	r4, [r6, #160]	; 0xa0
d0000338:	2000      	movs	r0, #0
d000033a:	47a0      	blx	r4
d000033c:	ab03      	add	r3, sp, #12
d000033e:	f8d6 40a0 	ldr.w	r4, [r6, #160]	; 0xa0
d0000342:	2208      	movs	r2, #8
d0000344:	a904      	add	r1, sp, #16
d0000346:	2000      	movs	r0, #0
d0000348:	47a0      	blx	r4
d000034a:	2208      	movs	r2, #8
d000034c:	496f      	ldr	r1, [pc, #444]	; (d000050c <LoadTestSong+0x28c>)
d000034e:	a804      	add	r0, sp, #16
d0000350:	f7ff ff5a 	bl	d0000208 <stringcmp>
d0000354:	68b3      	ldr	r3, [r6, #8]
d0000356:	4604      	mov	r4, r0
d0000358:	9003      	str	r0, [sp, #12]
d000035a:	2800      	cmp	r0, #0
d000035c:	f040 80a2 	bne.w	d00004a4 <LoadTestSong+0x224>
d0000360:	4641      	mov	r1, r8
d0000362:	486b      	ldr	r0, [pc, #428]	; (d0000510 <LoadTestSong+0x290>)
d0000364:	4798      	blx	r3
d0000366:	4a67      	ldr	r2, [pc, #412]	; (d0000504 <LoadTestSong+0x284>)
d0000368:	68b3      	ldr	r3, [r6, #8]
d000036a:	4635      	mov	r5, r6
d000036c:	5ab9      	ldrh	r1, [r7, r2]
d000036e:	4869      	ldr	r0, [pc, #420]	; (d0000514 <LoadTestSong+0x294>)
d0000370:	4798      	blx	r3
d0000372:	f8d5 60a0 	ldr.w	r6, [r5, #160]	; 0xa0
d0000376:	ab03      	add	r3, sp, #12
d0000378:	2204      	movs	r2, #4
d000037a:	a904      	add	r1, sp, #16
d000037c:	2000      	movs	r0, #0
d000037e:	47b0      	blx	r6
d0000380:	ab03      	add	r3, sp, #12
d0000382:	b2a1      	uxth	r1, r4
d0000384:	3401      	adds	r4, #1
d0000386:	f8d5 60a0 	ldr.w	r6, [r5, #160]	; 0xa0
d000038a:	f44f 6200 	mov.w	r2, #2048	; 0x800
d000038e:	eb07 21c1 	add.w	r1, r7, r1, lsl #11
d0000392:	2000      	movs	r0, #0
d0000394:	47b0      	blx	r6
d0000396:	b2a3      	uxth	r3, r4
d0000398:	4598      	cmp	r8, r3
d000039a:	d2ea      	bcs.n	d0000372 <LoadTestSong+0xf2>
d000039c:	4c5e      	ldr	r4, [pc, #376]	; (d0000518 <LoadTestSong+0x298>)
d000039e:	ab03      	add	r3, sp, #12
d00003a0:	f8d5 50a0 	ldr.w	r5, [r5, #160]	; 0xa0
d00003a4:	2208      	movs	r2, #8
d00003a6:	a904      	add	r1, sp, #16
d00003a8:	2000      	movs	r0, #0
d00003aa:	47a8      	blx	r5
d00003ac:	f504 7759 	add.w	r7, r4, #868	; 0x364
d00003b0:	4d4a      	ldr	r5, [pc, #296]	; (d00004dc <LoadTestSong+0x25c>)
d00003b2:	4621      	mov	r1, r4
d00003b4:	f8d5 60a0 	ldr.w	r6, [r5, #160]	; 0xa0
d00003b8:	ab03      	add	r3, sp, #12
d00003ba:	2204      	movs	r2, #4
d00003bc:	2000      	movs	r0, #0
d00003be:	47b0      	blx	r6
d00003c0:	2204      	movs	r2, #4
d00003c2:	f8d5 60a0 	ldr.w	r6, [r5, #160]	; 0xa0
d00003c6:	ab03      	add	r3, sp, #12
d00003c8:	18a1      	adds	r1, r4, r2
d00003ca:	2000      	movs	r0, #0
d00003cc:	47b0      	blx	r6
d00003ce:	f104 0108 	add.w	r1, r4, #8
d00003d2:	f8d5 60a0 	ldr.w	r6, [r5, #160]	; 0xa0
d00003d6:	ab03      	add	r3, sp, #12
d00003d8:	2204      	movs	r2, #4
d00003da:	2000      	movs	r0, #0
d00003dc:	47b0      	blx	r6
d00003de:	f104 010c 	add.w	r1, r4, #12
d00003e2:	f8d5 60a0 	ldr.w	r6, [r5, #160]	; 0xa0
d00003e6:	ab03      	add	r3, sp, #12
d00003e8:	2204      	movs	r2, #4
d00003ea:	2000      	movs	r0, #0
d00003ec:	47b0      	blx	r6
d00003ee:	f104 0110 	add.w	r1, r4, #16
d00003f2:	f8d5 60a0 	ldr.w	r6, [r5, #160]	; 0xa0
d00003f6:	ab03      	add	r3, sp, #12
d00003f8:	2204      	movs	r2, #4
d00003fa:	2000      	movs	r0, #0
d00003fc:	47b0      	blx	r6
d00003fe:	f104 0114 	add.w	r1, r4, #20
d0000402:	f8d5 60a0 	ldr.w	r6, [r5, #160]	; 0xa0
d0000406:	ab03      	add	r3, sp, #12
d0000408:	2201      	movs	r2, #1
d000040a:	2000      	movs	r0, #0
d000040c:	47b0      	blx	r6
d000040e:	f104 0115 	add.w	r1, r4, #21
d0000412:	341c      	adds	r4, #28
d0000414:	f8d5 60a0 	ldr.w	r6, [r5, #160]	; 0xa0
d0000418:	ab03      	add	r3, sp, #12
d000041a:	2201      	movs	r2, #1
d000041c:	2000      	movs	r0, #0
d000041e:	47b0      	blx	r6
d0000420:	42a7      	cmp	r7, r4
d0000422:	d1c6      	bne.n	d00003b2 <LoadTestSong+0x132>
d0000424:	4e3d      	ldr	r6, [pc, #244]	; (d000051c <LoadTestSong+0x29c>)
d0000426:	f04f 0900 	mov.w	r9, #0
d000042a:	4f3d      	ldr	r7, [pc, #244]	; (d0000520 <LoadTestSong+0x2a0>)
d000042c:	ab03      	add	r3, sp, #12
d000042e:	f8df 80ac 	ldr.w	r8, [pc, #172]	; d00004dc <LoadTestSong+0x25c>
d0000432:	2208      	movs	r2, #8
d0000434:	f8d5 40a0 	ldr.w	r4, [r5, #160]	; 0xa0
d0000438:	a904      	add	r1, sp, #16
d000043a:	2000      	movs	r0, #0
d000043c:	47a0      	blx	r4
d000043e:	ab03      	add	r3, sp, #12
d0000440:	2204      	movs	r2, #4
d0000442:	f8d8 40a0 	ldr.w	r4, [r8, #160]	; 0xa0
d0000446:	a904      	add	r1, sp, #16
d0000448:	2000      	movs	r0, #0
d000044a:	47a0      	blx	r4
d000044c:	68b3      	ldr	r3, [r6, #8]
d000044e:	eb03 4209 	add.w	r2, r3, r9, lsl #16
d0000452:	f5b2 1f00 	cmp.w	r2, #2097152	; 0x200000
d0000456:	d83a      	bhi.n	d00004ce <LoadTestSong+0x24e>
d0000458:	6037      	str	r7, [r6, #0]
d000045a:	b15b      	cbz	r3, d0000474 <LoadTestSong+0x1f4>
d000045c:	2400      	movs	r4, #0
d000045e:	2201      	movs	r2, #1
d0000460:	ab03      	add	r3, sp, #12
d0000462:	19e1      	adds	r1, r4, r7
d0000464:	f8d8 50a0 	ldr.w	r5, [r8, #160]	; 0xa0
d0000468:	2000      	movs	r0, #0
d000046a:	4414      	add	r4, r2
d000046c:	47a8      	blx	r5
d000046e:	68b3      	ldr	r3, [r6, #8]
d0000470:	42a3      	cmp	r3, r4
d0000472:	d8f4      	bhi.n	d000045e <LoadTestSong+0x1de>
d0000474:	f109 0901 	add.w	r9, r9, #1
d0000478:	361c      	adds	r6, #28
d000047a:	f507 3780 	add.w	r7, r7, #65536	; 0x10000
d000047e:	f1b9 0f1f 	cmp.w	r9, #31
d0000482:	d1dc      	bne.n	d000043e <LoadTestSong+0x1be>
d0000484:	4c15      	ldr	r4, [pc, #84]	; (d00004dc <LoadTestSong+0x25c>)
d0000486:	ab03      	add	r3, sp, #12
d0000488:	a904      	add	r1, sp, #16
d000048a:	2204      	movs	r2, #4
d000048c:	f8d4 50a0 	ldr.w	r5, [r4, #160]	; 0xa0
d0000490:	2000      	movs	r0, #0
d0000492:	47a8      	blx	r5
d0000494:	f8d4 3098 	ldr.w	r3, [r4, #152]	; 0x98
d0000498:	2000      	movs	r0, #0
d000049a:	4798      	blx	r3
d000049c:	2001      	movs	r0, #1
d000049e:	b067      	add	sp, #412	; 0x19c
d00004a0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00004a4:	481f      	ldr	r0, [pc, #124]	; (d0000524 <LoadTestSong+0x2a4>)
d00004a6:	4798      	blx	r3
d00004a8:	f8d6 3098 	ldr.w	r3, [r6, #152]	; 0x98
d00004ac:	2000      	movs	r0, #0
d00004ae:	4798      	blx	r3
d00004b0:	2000      	movs	r0, #0
d00004b2:	b067      	add	sp, #412	; 0x19c
d00004b4:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00004b8:	68a3      	ldr	r3, [r4, #8]
d00004ba:	481b      	ldr	r0, [pc, #108]	; (d0000528 <LoadTestSong+0x2a8>)
d00004bc:	4798      	blx	r3
d00004be:	f8d4 3098 	ldr.w	r3, [r4, #152]	; 0x98
d00004c2:	2000      	movs	r0, #0
d00004c4:	4798      	blx	r3
d00004c6:	2000      	movs	r0, #0
d00004c8:	b067      	add	sp, #412	; 0x19c
d00004ca:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00004ce:	f8d8 3008 	ldr.w	r3, [r8, #8]
d00004d2:	4649      	mov	r1, r9
d00004d4:	4815      	ldr	r0, [pc, #84]	; (d000052c <LoadTestSong+0x2ac>)
d00004d6:	4798      	blx	r3
d00004d8:	e7d4      	b.n	d0000484 <LoadTestSong+0x204>
d00004da:	bf00      	nop
d00004dc:	2001f000 	.word	0x2001f000
d00004e0:	d000677c 	.word	0xd000677c
d00004e4:	d0006798 	.word	0xd0006798
d00004e8:	d00067a0 	.word	0xd00067a0
d00004ec:	d00067b8 	.word	0xd00067b8
d00004f0:	d00067c4 	.word	0xd00067c4
d00004f4:	d00067d0 	.word	0xd00067d0
d00004f8:	d000f0bc 	.word	0xd000f0bc
d00004fc:	d0031280 	.word	0xd0031280
d0000500:	00020364 	.word	0x00020364
d0000504:	00020378 	.word	0x00020378
d0000508:	d00515fa 	.word	0xd00515fa
d000050c:	d0006808 	.word	0xd0006808
d0000510:	d0006850 	.word	0xd0006850
d0000514:	d0006864 	.word	0xd0006864
d0000518:	d0051284 	.word	0xd0051284
d000051c:	d0051280 	.word	0xd0051280
d0000520:	d00516e0 	.word	0xd00516e0
d0000524:	d0006814 	.word	0xd0006814
d0000528:	d00067e4 	.word	0xd00067e4
d000052c:	d0006874 	.word	0xd0006874

d0000530 <SaveTestSong>:
d0000530:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0000534:	4c89      	ldr	r4, [pc, #548]	; (d000075c <SaveTestSong+0x22c>)
d0000536:	b0e4      	sub	sp, #400	; 0x190
d0000538:	2192      	movs	r1, #146	; 0x92
d000053a:	4607      	mov	r7, r0
d000053c:	68a2      	ldr	r2, [r4, #8]
d000053e:	2500      	movs	r5, #0
d0000540:	4887      	ldr	r0, [pc, #540]	; (d0000760 <SaveTestSong+0x230>)
d0000542:	4790      	blx	r2
d0000544:	68a3      	ldr	r3, [r4, #8]
d0000546:	4887      	ldr	r0, [pc, #540]	; (d0000764 <SaveTestSong+0x234>)
d0000548:	4798      	blx	r3
d000054a:	f8df 8260 	ldr.w	r8, [pc, #608]	; d00007ac <SaveTestSong+0x27c>
d000054e:	4986      	ldr	r1, [pc, #536]	; (d0000768 <SaveTestSong+0x238>)
d0000550:	4b86      	ldr	r3, [pc, #536]	; (d000076c <SaveTestSong+0x23c>)
d0000552:	4887      	ldr	r0, [pc, #540]	; (d0000770 <SaveTestSong+0x240>)
d0000554:	f858 1001 	ldr.w	r1, [r8, r1]
d0000558:	4a86      	ldr	r2, [pc, #536]	; (d0000774 <SaveTestSong+0x244>)
d000055a:	f838 c000 	ldrh.w	ip, [r8, r0]
d000055e:	6099      	str	r1, [r3, #8]
d0000560:	f8a3 c00c 	strh.w	ip, [r3, #12]
d0000564:	9501      	str	r5, [sp, #4]
d0000566:	ca03      	ldmia	r2!, {r0, r1}
d0000568:	6018      	str	r0, [r3, #0]
d000056a:	6059      	str	r1, [r3, #4]
d000056c:	f1bc 0f00 	cmp.w	ip, #0
d0000570:	d00f      	beq.n	d0000592 <SaveTestSong+0x62>
d0000572:	4a81      	ldr	r2, [pc, #516]	; (d0000778 <SaveTestSong+0x248>)
d0000574:	f103 040c 	add.w	r4, r3, #12
d0000578:	eb02 064c 	add.w	r6, r2, ip, lsl #1
d000057c:	f832 1f02 	ldrh.w	r1, [r2, #2]!
d0000580:	428d      	cmp	r5, r1
d0000582:	f824 1f02 	strh.w	r1, [r4, #2]!
d0000586:	bf38      	it	cc
d0000588:	460d      	movcc	r5, r1
d000058a:	4296      	cmp	r6, r2
d000058c:	d1f6      	bne.n	d000057c <SaveTestSong+0x4c>
d000058e:	f8cd c004 	str.w	ip, [sp, #4]
d0000592:	f8df 91c8 	ldr.w	r9, [pc, #456]	; d000075c <SaveTestSong+0x22c>
d0000596:	4629      	mov	r1, r5
d0000598:	4878      	ldr	r0, [pc, #480]	; (d000077c <SaveTestSong+0x24c>)
d000059a:	f10d 0a08 	add.w	sl, sp, #8
d000059e:	f8a3 508e 	strh.w	r5, [r3, #142]	; 0x8e
d00005a2:	464e      	mov	r6, r9
d00005a4:	f8d9 3008 	ldr.w	r3, [r9, #8]
d00005a8:	4798      	blx	r3
d00005aa:	f8d9 3068 	ldr.w	r3, [r9, #104]	; 0x68
d00005ae:	a804      	add	r0, sp, #16
d00005b0:	4798      	blx	r3
d00005b2:	aa04      	add	r2, sp, #16
d00005b4:	463b      	mov	r3, r7
d00005b6:	4972      	ldr	r1, [pc, #456]	; (d0000780 <SaveTestSong+0x250>)
d00005b8:	a824      	add	r0, sp, #144	; 0x90
d00005ba:	4f72      	ldr	r7, [pc, #456]	; (d0000784 <SaveTestSong+0x254>)
d00005bc:	f005 fbba 	bl	d0005d34 <siprintf>
d00005c0:	f8d9 3008 	ldr.w	r3, [r9, #8]
d00005c4:	a924      	add	r1, sp, #144	; 0x90
d00005c6:	4870      	ldr	r0, [pc, #448]	; (d0000788 <SaveTestSong+0x258>)
d00005c8:	4798      	blx	r3
d00005ca:	f8d9 3094 	ldr.w	r3, [r9, #148]	; 0x94
d00005ce:	a924      	add	r1, sp, #144	; 0x90
d00005d0:	220a      	movs	r2, #10
d00005d2:	2000      	movs	r0, #0
d00005d4:	4798      	blx	r3
d00005d6:	f8d9 40a4 	ldr.w	r4, [r9, #164]	; 0xa4
d00005da:	ab01      	add	r3, sp, #4
d00005dc:	2292      	movs	r2, #146	; 0x92
d00005de:	4963      	ldr	r1, [pc, #396]	; (d000076c <SaveTestSong+0x23c>)
d00005e0:	2000      	movs	r0, #0
d00005e2:	47a0      	blx	r4
d00005e4:	4a69      	ldr	r2, [pc, #420]	; (d000078c <SaveTestSong+0x25c>)
d00005e6:	ab01      	add	r3, sp, #4
d00005e8:	ca07      	ldmia	r2, {r0, r1, r2}
d00005ea:	e8aa 0003 	stmia.w	sl!, {r0, r1}
d00005ee:	a902      	add	r1, sp, #8
d00005f0:	f88a 2000 	strb.w	r2, [sl]
d00005f4:	2000      	movs	r0, #0
d00005f6:	f8d9 40a4 	ldr.w	r4, [r9, #164]	; 0xa4
d00005fa:	2208      	movs	r2, #8
d00005fc:	47a0      	blx	r4
d00005fe:	4a64      	ldr	r2, [pc, #400]	; (d0000790 <SaveTestSong+0x260>)
d0000600:	ab02      	add	r3, sp, #8
d0000602:	2400      	movs	r4, #0
d0000604:	ca07      	ldmia	r2, {r0, r1, r2}
d0000606:	c303      	stmia	r3!, {r0, r1}
d0000608:	f88a 2000 	strb.w	r2, [sl]
d000060c:	a902      	add	r1, sp, #8
d000060e:	ab01      	add	r3, sp, #4
d0000610:	f8d9 90a4 	ldr.w	r9, [r9, #164]	; 0xa4
d0000614:	2208      	movs	r2, #8
d0000616:	4620      	mov	r0, r4
d0000618:	47c8      	blx	r9
d000061a:	ab01      	add	r3, sp, #4
d000061c:	2204      	movs	r2, #4
d000061e:	e897 0003 	ldmia.w	r7, {r0, r1}
d0000622:	9002      	str	r0, [sp, #8]
d0000624:	2000      	movs	r0, #0
d0000626:	f88d 100c 	strb.w	r1, [sp, #12]
d000062a:	a902      	add	r1, sp, #8
d000062c:	f8d6 90a4 	ldr.w	r9, [r6, #164]	; 0xa4
d0000630:	47c8      	blx	r9
d0000632:	ab01      	add	r3, sp, #4
d0000634:	b2a1      	uxth	r1, r4
d0000636:	3401      	adds	r4, #1
d0000638:	f8d6 90a4 	ldr.w	r9, [r6, #164]	; 0xa4
d000063c:	f44f 6200 	mov.w	r2, #2048	; 0x800
d0000640:	eb08 21c1 	add.w	r1, r8, r1, lsl #11
d0000644:	2000      	movs	r0, #0
d0000646:	47c8      	blx	r9
d0000648:	b2a3      	uxth	r3, r4
d000064a:	429d      	cmp	r5, r3
d000064c:	d2e5      	bcs.n	d000061a <SaveTestSong+0xea>
d000064e:	4b51      	ldr	r3, [pc, #324]	; (d0000794 <SaveTestSong+0x264>)
d0000650:	ad02      	add	r5, sp, #8
d0000652:	4c51      	ldr	r4, [pc, #324]	; (d0000798 <SaveTestSong+0x268>)
d0000654:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0000658:	ab01      	add	r3, sp, #4
d000065a:	f504 7759 	add.w	r7, r4, #868	; 0x364
d000065e:	c503      	stmia	r5!, {r0, r1}
d0000660:	a902      	add	r1, sp, #8
d0000662:	702a      	strb	r2, [r5, #0]
d0000664:	2000      	movs	r0, #0
d0000666:	f8d6 50a4 	ldr.w	r5, [r6, #164]	; 0xa4
d000066a:	2208      	movs	r2, #8
d000066c:	47a8      	blx	r5
d000066e:	4d3b      	ldr	r5, [pc, #236]	; (d000075c <SaveTestSong+0x22c>)
d0000670:	4621      	mov	r1, r4
d0000672:	f8d5 60a4 	ldr.w	r6, [r5, #164]	; 0xa4
d0000676:	ab01      	add	r3, sp, #4
d0000678:	2204      	movs	r2, #4
d000067a:	2000      	movs	r0, #0
d000067c:	47b0      	blx	r6
d000067e:	2204      	movs	r2, #4
d0000680:	f8d5 60a4 	ldr.w	r6, [r5, #164]	; 0xa4
d0000684:	ab01      	add	r3, sp, #4
d0000686:	18a1      	adds	r1, r4, r2
d0000688:	2000      	movs	r0, #0
d000068a:	47b0      	blx	r6
d000068c:	f104 0108 	add.w	r1, r4, #8
d0000690:	f8d5 60a4 	ldr.w	r6, [r5, #164]	; 0xa4
d0000694:	ab01      	add	r3, sp, #4
d0000696:	2204      	movs	r2, #4
d0000698:	2000      	movs	r0, #0
d000069a:	47b0      	blx	r6
d000069c:	f104 010c 	add.w	r1, r4, #12
d00006a0:	f8d5 60a4 	ldr.w	r6, [r5, #164]	; 0xa4
d00006a4:	ab01      	add	r3, sp, #4
d00006a6:	2204      	movs	r2, #4
d00006a8:	2000      	movs	r0, #0
d00006aa:	47b0      	blx	r6
d00006ac:	f104 0110 	add.w	r1, r4, #16
d00006b0:	f8d5 60a4 	ldr.w	r6, [r5, #164]	; 0xa4
d00006b4:	ab01      	add	r3, sp, #4
d00006b6:	2204      	movs	r2, #4
d00006b8:	2000      	movs	r0, #0
d00006ba:	47b0      	blx	r6
d00006bc:	f104 0114 	add.w	r1, r4, #20
d00006c0:	f8d5 60a4 	ldr.w	r6, [r5, #164]	; 0xa4
d00006c4:	ab01      	add	r3, sp, #4
d00006c6:	2201      	movs	r2, #1
d00006c8:	2000      	movs	r0, #0
d00006ca:	47b0      	blx	r6
d00006cc:	f104 0115 	add.w	r1, r4, #21
d00006d0:	341c      	adds	r4, #28
d00006d2:	f8d5 60a4 	ldr.w	r6, [r5, #164]	; 0xa4
d00006d6:	ab01      	add	r3, sp, #4
d00006d8:	2201      	movs	r2, #1
d00006da:	2000      	movs	r0, #0
d00006dc:	47b0      	blx	r6
d00006de:	42bc      	cmp	r4, r7
d00006e0:	d1c6      	bne.n	d0000670 <SaveTestSong+0x140>
d00006e2:	4a2e      	ldr	r2, [pc, #184]	; (d000079c <SaveTestSong+0x26c>)
d00006e4:	ac02      	add	r4, sp, #8
d00006e6:	ab01      	add	r3, sp, #4
d00006e8:	f8df 907c 	ldr.w	r9, [pc, #124]	; d0000768 <SaveTestSong+0x238>
d00006ec:	ca07      	ldmia	r2, {r0, r1, r2}
d00006ee:	c403      	stmia	r4!, {r0, r1}
d00006f0:	a902      	add	r1, sp, #8
d00006f2:	7022      	strb	r2, [r4, #0]
d00006f4:	2000      	movs	r0, #0
d00006f6:	f8d5 40a4 	ldr.w	r4, [r5, #164]	; 0xa4
d00006fa:	2208      	movs	r2, #8
d00006fc:	44c1      	add	r9, r8
d00006fe:	47a0      	blx	r4
d0000700:	4b27      	ldr	r3, [pc, #156]	; (d00007a0 <SaveTestSong+0x270>)
d0000702:	4c28      	ldr	r4, [pc, #160]	; (d00007a4 <SaveTestSong+0x274>)
d0000704:	4d15      	ldr	r5, [pc, #84]	; (d000075c <SaveTestSong+0x22c>)
d0000706:	e893 0003 	ldmia.w	r3, {r0, r1}
d000070a:	9002      	str	r0, [sp, #8]
d000070c:	f88d 100c 	strb.w	r1, [sp, #12]
d0000710:	6826      	ldr	r6, [r4, #0]
d0000712:	ab01      	add	r3, sp, #4
d0000714:	2204      	movs	r2, #4
d0000716:	a902      	add	r1, sp, #8
d0000718:	f8d5 70a4 	ldr.w	r7, [r5, #164]	; 0xa4
d000071c:	2000      	movs	r0, #0
d000071e:	47b8      	blx	r7
d0000720:	341c      	adds	r4, #28
d0000722:	f854 2c14 	ldr.w	r2, [r4, #-20]
d0000726:	4631      	mov	r1, r6
d0000728:	ab01      	add	r3, sp, #4
d000072a:	f8d5 60a4 	ldr.w	r6, [r5, #164]	; 0xa4
d000072e:	2000      	movs	r0, #0
d0000730:	47b0      	blx	r6
d0000732:	454c      	cmp	r4, r9
d0000734:	d1ec      	bne.n	d0000710 <SaveTestSong+0x1e0>
d0000736:	4a1c      	ldr	r2, [pc, #112]	; (d00007a8 <SaveTestSong+0x278>)
d0000738:	ac02      	add	r4, sp, #8
d000073a:	ab01      	add	r3, sp, #4
d000073c:	ca07      	ldmia	r2, {r0, r1, r2}
d000073e:	c403      	stmia	r4!, {r0, r1}
d0000740:	a902      	add	r1, sp, #8
d0000742:	7022      	strb	r2, [r4, #0]
d0000744:	2000      	movs	r0, #0
d0000746:	2208      	movs	r2, #8
d0000748:	f8d5 40a4 	ldr.w	r4, [r5, #164]	; 0xa4
d000074c:	47a0      	blx	r4
d000074e:	f8d5 3098 	ldr.w	r3, [r5, #152]	; 0x98
d0000752:	2000      	movs	r0, #0
d0000754:	4798      	blx	r3
d0000756:	b064      	add	sp, #400	; 0x190
d0000758:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d000075c:	2001f000 	.word	0x2001f000
d0000760:	d00068ac 	.word	0xd00068ac
d0000764:	d00068bc 	.word	0xd00068bc
d0000768:	00020364 	.word	0x00020364
d000076c:	d000f0bc 	.word	0xd000f0bc
d0000770:	00020378 	.word	0x00020378
d0000774:	d00067c4 	.word	0xd00067c4
d0000778:	d00515f8 	.word	0xd00515f8
d000077c:	d00068d4 	.word	0xd00068d4
d0000780:	d0006798 	.word	0xd0006798
d0000784:	d000690c 	.word	0xd000690c
d0000788:	d00068e8 	.word	0xd00068e8
d000078c:	d0006900 	.word	0xd0006900
d0000790:	d0006808 	.word	0xd0006808
d0000794:	d0006914 	.word	0xd0006914
d0000798:	d0051284 	.word	0xd0051284
d000079c:	d0006920 	.word	0xd0006920
d00007a0:	d000692c 	.word	0xd000692c
d00007a4:	d0051280 	.word	0xd0051280
d00007a8:	d0006934 	.word	0xd0006934
d00007ac:	d0031280 	.word	0xd0031280

d00007b0 <compare_entries>:
d00007b0:	f890 2084 	ldrb.w	r2, [r0, #132]	; 0x84
d00007b4:	f891 3084 	ldrb.w	r3, [r1, #132]	; 0x84
d00007b8:	f3c2 1200 	ubfx	r2, r2, #4, #1
d00007bc:	f3c3 1300 	ubfx	r3, r3, #4, #1
d00007c0:	429a      	cmp	r2, r3
d00007c2:	d001      	beq.n	d00007c8 <compare_entries+0x18>
d00007c4:	1a98      	subs	r0, r3, r2
d00007c6:	4770      	bx	lr
d00007c8:	f005 bade 	b.w	d0005d88 <strcasecmp>

d00007cc <FileRequestFileStringUpdater.part.0>:
d00007cc:	b538      	push	{r3, r4, r5, lr}
d00007ce:	4c1f      	ldr	r4, [pc, #124]	; (d000084c <FileRequestFileStringUpdater.part.0+0x80>)
d00007d0:	f7ff fcf0 	bl	d00001b4 <CaptureDrawBuffer>
d00007d4:	f7ff fcfa 	bl	d00001cc <SetDrawToBackLayer>
d00007d8:	2010      	movs	r0, #16
d00007da:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d00007de:	2505      	movs	r5, #5
d00007e0:	4a1b      	ldr	r2, [pc, #108]	; (d0000850 <FileRequestFileStringUpdater.part.0+0x84>)
d00007e2:	2176      	movs	r1, #118	; 0x76
d00007e4:	7018      	strb	r0, [r3, #0]
d00007e6:	200a      	movs	r0, #10
d00007e8:	f8d4 30fc 	ldr.w	r3, [r4, #252]	; 0xfc
d00007ec:	701d      	strb	r5, [r3, #0]
d00007ee:	f8d4 314c 	ldr.w	r3, [r4, #332]	; 0x14c
d00007f2:	4798      	blx	r3
d00007f4:	f8d4 314c 	ldr.w	r3, [r4, #332]	; 0x14c
d00007f8:	4a16      	ldr	r2, [pc, #88]	; (d0000854 <FileRequestFileStringUpdater.part.0+0x88>)
d00007fa:	2176      	movs	r1, #118	; 0x76
d00007fc:	200a      	movs	r0, #10
d00007fe:	4798      	blx	r3
d0000800:	4b15      	ldr	r3, [pc, #84]	; (d0000858 <FileRequestFileStringUpdater.part.0+0x8c>)
d0000802:	f9b3 3000 	ldrsh.w	r3, [r3]
d0000806:	3302      	adds	r3, #2
d0000808:	d003      	beq.n	d0000812 <FileRequestFileStringUpdater.part.0+0x46>
d000080a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d000080e:	f7ff bcef 	b.w	d00001f0 <ReleaseDrawBuffer>
d0000812:	4b12      	ldr	r3, [pc, #72]	; (d000085c <FileRequestFileStringUpdater.part.0+0x90>)
d0000814:	200a      	movs	r0, #10
d0000816:	4a12      	ldr	r2, [pc, #72]	; (d0000860 <FileRequestFileStringUpdater.part.0+0x94>)
d0000818:	781b      	ldrb	r3, [r3, #0]
d000081a:	b15b      	cbz	r3, d0000834 <FileRequestFileStringUpdater.part.0+0x68>
d000081c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d0000820:	2176      	movs	r1, #118	; 0x76
d0000822:	7814      	ldrb	r4, [r2, #0]
d0000824:	4a0f      	ldr	r2, [pc, #60]	; (d0000864 <FileRequestFileStringUpdater.part.0+0x98>)
d0000826:	eb00 00c4 	add.w	r0, r0, r4, lsl #3
d000082a:	4798      	blx	r3
d000082c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d0000830:	f7ff bcde 	b.w	d00001f0 <ReleaseDrawBuffer>
d0000834:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d0000838:	2176      	movs	r1, #118	; 0x76
d000083a:	7814      	ldrb	r4, [r2, #0]
d000083c:	4a0a      	ldr	r2, [pc, #40]	; (d0000868 <FileRequestFileStringUpdater.part.0+0x9c>)
d000083e:	eb00 00c4 	add.w	r0, r0, r4, lsl #3
d0000842:	4798      	blx	r3
d0000844:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d0000848:	f7ff bcd2 	b.w	d00001f0 <ReleaseDrawBuffer>
d000084c:	2001f000 	.word	0x2001f000
d0000850:	d0006940 	.word	0xd0006940
d0000854:	d0031228 	.word	0xd0031228
d0000858:	d000f01c 	.word	0xd000f01c
d000085c:	d000f020 	.word	0xd000f020
d0000860:	d000f012 	.word	0xd000f012
d0000864:	d0006978 	.word	0xd0006978
d0000868:	d000697c 	.word	0xd000697c

d000086c <FileRequestFileStringUpdater>:
d000086c:	4b03      	ldr	r3, [pc, #12]	; (d000087c <FileRequestFileStringUpdater+0x10>)
d000086e:	781b      	ldrb	r3, [r3, #0]
d0000870:	2b01      	cmp	r3, #1
d0000872:	d000      	beq.n	d0000876 <FileRequestFileStringUpdater+0xa>
d0000874:	4770      	bx	lr
d0000876:	f7ff bfa9 	b.w	d00007cc <FileRequestFileStringUpdater.part.0>
d000087a:	bf00      	nop
d000087c:	d000f011 	.word	0xd000f011

d0000880 <FileRequestFileStringInjector>:
d0000880:	4b0d      	ldr	r3, [pc, #52]	; (d00008b8 <FileRequestFileStringInjector+0x38>)
d0000882:	f9b3 3000 	ldrsh.w	r3, [r3]
d0000886:	3302      	adds	r3, #2
d0000888:	d000      	beq.n	d000088c <FileRequestFileStringInjector+0xc>
d000088a:	4770      	bx	lr
d000088c:	2808      	cmp	r0, #8
d000088e:	d009      	beq.n	d00008a4 <FileRequestFileStringInjector+0x24>
d0000890:	4b0a      	ldr	r3, [pc, #40]	; (d00008bc <FileRequestFileStringInjector+0x3c>)
d0000892:	b410      	push	{r4}
d0000894:	781a      	ldrb	r2, [r3, #0]
d0000896:	4c0a      	ldr	r4, [pc, #40]	; (d00008c0 <FileRequestFileStringInjector+0x40>)
d0000898:	1c51      	adds	r1, r2, #1
d000089a:	54a0      	strb	r0, [r4, r2]
d000089c:	7019      	strb	r1, [r3, #0]
d000089e:	f85d 4b04 	ldr.w	r4, [sp], #4
d00008a2:	4770      	bx	lr
d00008a4:	4a05      	ldr	r2, [pc, #20]	; (d00008bc <FileRequestFileStringInjector+0x3c>)
d00008a6:	7813      	ldrb	r3, [r2, #0]
d00008a8:	b113      	cbz	r3, d00008b0 <FileRequestFileStringInjector+0x30>
d00008aa:	3b01      	subs	r3, #1
d00008ac:	b2db      	uxtb	r3, r3
d00008ae:	7013      	strb	r3, [r2, #0]
d00008b0:	4a03      	ldr	r2, [pc, #12]	; (d00008c0 <FileRequestFileStringInjector+0x40>)
d00008b2:	2100      	movs	r1, #0
d00008b4:	54d1      	strb	r1, [r2, r3]
d00008b6:	4770      	bx	lr
d00008b8:	d000f01c 	.word	0xd000f01c
d00008bc:	d000f012 	.word	0xd000f012
d00008c0:	d0031228 	.word	0xd0031228

d00008c4 <ShowFilesListed>:
d00008c4:	4b92      	ldr	r3, [pc, #584]	; (d0000b10 <ShowFilesListed+0x24c>)
d00008c6:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00008ca:	881e      	ldrh	r6, [r3, #0]
d00008cc:	b0a3      	sub	sp, #140	; 0x8c
d00008ce:	b1c6      	cbz	r6, d0000902 <ShowFilesListed+0x3e>
d00008d0:	4d90      	ldr	r5, [pc, #576]	; (d0000b14 <ShowFilesListed+0x250>)
d00008d2:	eb06 1606 	add.w	r6, r6, r6, lsl #4
d00008d6:	f04f 0800 	mov.w	r8, #0
d00008da:	f240 19ff 	movw	r9, #511	; 0x1ff
d00008de:	eb05 06c6 	add.w	r6, r5, r6, lsl #3
d00008e2:	462c      	mov	r4, r5
d00008e4:	f8df a250 	ldr.w	sl, [pc, #592]	; d0000b38 <ShowFilesListed+0x274>
d00008e8:	f894 3084 	ldrb.w	r3, [r4, #132]	; 0x84
d00008ec:	06da      	lsls	r2, r3, #27
d00008ee:	d501      	bpl.n	d00008f4 <ShowFilesListed+0x30>
d00008f0:	45c8      	cmp	r8, r9
d00008f2:	d97c      	bls.n	d00009ee <ShowFilesListed+0x12a>
d00008f4:	3488      	adds	r4, #136	; 0x88
d00008f6:	42a6      	cmp	r6, r4
d00008f8:	d1f6      	bne.n	d00008e8 <ShowFilesListed+0x24>
d00008fa:	f5b8 7f00 	cmp.w	r8, #512	; 0x200
d00008fe:	f0c0 80de 	bcc.w	d0000abe <ShowFilesListed+0x1fa>
d0000902:	f7ff fc57 	bl	d00001b4 <CaptureDrawBuffer>
d0000906:	f7ff fc61 	bl	d00001cc <SetDrawToBackLayer>
d000090a:	4b83      	ldr	r3, [pc, #524]	; (d0000b18 <ShowFilesListed+0x254>)
d000090c:	2010      	movs	r0, #16
d000090e:	4a83      	ldr	r2, [pc, #524]	; (d0000b1c <ShowFilesListed+0x258>)
d0000910:	f8d3 10f8 	ldr.w	r1, [r3, #248]	; 0xf8
d0000914:	7008      	strb	r0, [r1, #0]
d0000916:	7812      	ldrb	r2, [r2, #0]
d0000918:	2a00      	cmp	r2, #0
d000091a:	f040 8097 	bne.w	d0000a4c <ShowFilesListed+0x188>
d000091e:	f8d3 413c 	ldr.w	r4, [r3, #316]	; 0x13c
d0000922:	f240 12bf 	movw	r2, #447	; 0x1bf
d0000926:	2383      	movs	r3, #131	; 0x83
d0000928:	213c      	movs	r1, #60	; 0x3c
d000092a:	2006      	movs	r0, #6
d000092c:	47a0      	blx	r4
d000092e:	4b7c      	ldr	r3, [pc, #496]	; (d0000b20 <ShowFilesListed+0x25c>)
d0000930:	4f7c      	ldr	r7, [pc, #496]	; (d0000b24 <ShowFilesListed+0x260>)
d0000932:	f9b3 3000 	ldrsh.w	r3, [r3]
d0000936:	783a      	ldrb	r2, [r7, #0]
d0000938:	2b00      	cmp	r3, #0
d000093a:	db02      	blt.n	d0000942 <ShowFilesListed+0x7e>
d000093c:	4293      	cmp	r3, r2
d000093e:	f2c0 808e 	blt.w	d0000a5e <ShowFilesListed+0x19a>
d0000942:	2a00      	cmp	r2, #0
d0000944:	d03b      	beq.n	d00009be <ShowFilesListed+0xfa>
d0000946:	2400      	movs	r4, #0
d0000948:	f8df 81ec 	ldr.w	r8, [pc, #492]	; d0000b38 <ShowFilesListed+0x274>
d000094c:	f8df a1f0 	ldr.w	sl, [pc, #496]	; d0000b40 <ShowFilesListed+0x27c>
d0000950:	46a3      	mov	fp, r4
d0000952:	4625      	mov	r5, r4
d0000954:	4e70      	ldr	r6, [pc, #448]	; (d0000b18 <ShowFilesListed+0x254>)
d0000956:	f8da 1000 	ldr.w	r1, [sl]
d000095a:	4459      	add	r1, fp
d000095c:	eb01 1101 	add.w	r1, r1, r1, lsl #4
d0000960:	eb08 01c1 	add.w	r1, r8, r1, lsl #3
d0000964:	4608      	mov	r0, r1
d0000966:	9101      	str	r1, [sp, #4]
d0000968:	f005 fa32 	bl	d0005dd0 <strlen>
d000096c:	4681      	mov	r9, r0
d000096e:	9901      	ldr	r1, [sp, #4]
d0000970:	a802      	add	r0, sp, #8
d0000972:	f109 0201 	add.w	r2, r9, #1
d0000976:	f004 fff7 	bl	d0005968 <memcpy>
d000097a:	ab22      	add	r3, sp, #136	; 0x88
d000097c:	eb0b 110b 	add.w	r1, fp, fp, lsl #4
d0000980:	f04f 0e05 	mov.w	lr, #5
d0000984:	444b      	add	r3, r9
d0000986:	f04f 0c09 	mov.w	ip, #9
d000098a:	aa02      	add	r2, sp, #8
d000098c:	200a      	movs	r0, #10
d000098e:	f803 5c80 	strb.w	r5, [r3, #-128]
d0000992:	313e      	adds	r1, #62	; 0x3e
d0000994:	f89d 3008 	ldrb.w	r3, [sp, #8]
d0000998:	f88d e02d 	strb.w	lr, [sp, #45]	; 0x2d
d000099c:	2b5b      	cmp	r3, #91	; 0x5b
d000099e:	f88d 502e 	strb.w	r5, [sp, #46]	; 0x2e
d00009a2:	d011      	beq.n	d00009c8 <ShowFilesListed+0x104>
d00009a4:	f8d6 30f8 	ldr.w	r3, [r6, #248]	; 0xf8
d00009a8:	3401      	adds	r4, #1
d00009aa:	f883 c000 	strb.w	ip, [r3]
d00009ae:	fa5f fb84 	uxtb.w	fp, r4
d00009b2:	f8d6 3148 	ldr.w	r3, [r6, #328]	; 0x148
d00009b6:	4798      	blx	r3
d00009b8:	783b      	ldrb	r3, [r7, #0]
d00009ba:	455b      	cmp	r3, fp
d00009bc:	d8cb      	bhi.n	d0000956 <ShowFilesListed+0x92>
d00009be:	f7ff fc17 	bl	d00001f0 <ReleaseDrawBuffer>
d00009c2:	b023      	add	sp, #140	; 0x8c
d00009c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00009c8:	f8d6 30f8 	ldr.w	r3, [r6, #248]	; 0xf8
d00009cc:	201d      	movs	r0, #29
d00009ce:	3401      	adds	r4, #1
d00009d0:	7018      	strb	r0, [r3, #0]
d00009d2:	200a      	movs	r0, #10
d00009d4:	f8d6 3148 	ldr.w	r3, [r6, #328]	; 0x148
d00009d8:	fa5f fb84 	uxtb.w	fp, r4
d00009dc:	4798      	blx	r3
d00009de:	783b      	ldrb	r3, [r7, #0]
d00009e0:	455b      	cmp	r3, fp
d00009e2:	d8b8      	bhi.n	d0000956 <ShowFilesListed+0x92>
d00009e4:	f7ff fc04 	bl	d00001f0 <ReleaseDrawBuffer>
d00009e8:	b023      	add	sp, #140	; 0x8c
d00009ea:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00009ee:	eb08 1708 	add.w	r7, r8, r8, lsl #4
d00009f2:	4620      	mov	r0, r4
d00009f4:	f005 f9ec 	bl	d0005dd0 <strlen>
d00009f8:	2288      	movs	r2, #136	; 0x88
d00009fa:	b2c3      	uxtb	r3, r0
d00009fc:	4621      	mov	r1, r4
d00009fe:	eb0a 00c7 	add.w	r0, sl, r7, lsl #3
d0000a02:	9301      	str	r3, [sp, #4]
d0000a04:	00ff      	lsls	r7, r7, #3
d0000a06:	f004 ffaf 	bl	d0005968 <memcpy>
d0000a0a:	9b01      	ldr	r3, [sp, #4]
d0000a0c:	1e7a      	subs	r2, r7, #1
d0000a0e:	ea4f 1b08 	mov.w	fp, r8, lsl #4
d0000a12:	1e59      	subs	r1, r3, #1
d0000a14:	441f      	add	r7, r3
d0000a16:	b2c8      	uxtb	r0, r1
d0000a18:	18d1      	adds	r1, r2, r3
d0000a1a:	b14b      	cbz	r3, d0000a30 <ShowFilesListed+0x16c>
d0000a1c:	1a09      	subs	r1, r1, r0
d0000a1e:	1a3f      	subs	r7, r7, r0
d0000a20:	1c42      	adds	r2, r0, #1
d0000a22:	9301      	str	r3, [sp, #4]
d0000a24:	eb0a 0007 	add.w	r0, sl, r7
d0000a28:	4451      	add	r1, sl
d0000a2a:	f004 ffab 	bl	d0005984 <memmove>
d0000a2e:	9b01      	ldr	r3, [sp, #4]
d0000a30:	44c3      	add	fp, r8
d0000a32:	275b      	movs	r7, #91	; 0x5b
d0000a34:	205d      	movs	r0, #93	; 0x5d
d0000a36:	2100      	movs	r1, #0
d0000a38:	eb0a 02cb 	add.w	r2, sl, fp, lsl #3
d0000a3c:	f80a 703b 	strb.w	r7, [sl, fp, lsl #3]
d0000a40:	f108 0801 	add.w	r8, r8, #1
d0000a44:	4413      	add	r3, r2
d0000a46:	7058      	strb	r0, [r3, #1]
d0000a48:	7099      	strb	r1, [r3, #2]
d0000a4a:	e753      	b.n	d00008f4 <ShowFilesListed+0x30>
d0000a4c:	f8d3 413c 	ldr.w	r4, [r3, #316]	; 0x13c
d0000a50:	f240 12bf 	movw	r2, #447	; 0x1bf
d0000a54:	2371      	movs	r3, #113	; 0x71
d0000a56:	213c      	movs	r1, #60	; 0x3c
d0000a58:	2006      	movs	r0, #6
d0000a5a:	47a0      	blx	r4
d0000a5c:	e767      	b.n	d000092e <ShowFilesListed+0x6a>
d0000a5e:	eb03 1103 	add.w	r1, r3, r3, lsl #4
d0000a62:	4b2d      	ldr	r3, [pc, #180]	; (d0000b18 <ShowFilesListed+0x254>)
d0000a64:	2426      	movs	r4, #38	; 0x26
d0000a66:	f240 12bf 	movw	r2, #447	; 0x1bf
d0000a6a:	313c      	adds	r1, #60	; 0x3c
d0000a6c:	f8d3 00f8 	ldr.w	r0, [r3, #248]	; 0xf8
d0000a70:	f8df 80c4 	ldr.w	r8, [pc, #196]	; d0000b38 <ShowFilesListed+0x274>
d0000a74:	b2c9      	uxtb	r1, r1
d0000a76:	7004      	strb	r4, [r0, #0]
d0000a78:	2006      	movs	r0, #6
d0000a7a:	f8d3 413c 	ldr.w	r4, [r3, #316]	; 0x13c
d0000a7e:	f101 0313 	add.w	r3, r1, #19
d0000a82:	47a0      	blx	r4
d0000a84:	4b28      	ldr	r3, [pc, #160]	; (d0000b28 <ShowFilesListed+0x264>)
d0000a86:	f9b3 3000 	ldrsh.w	r3, [r3]
d0000a8a:	eb03 1303 	add.w	r3, r3, r3, lsl #4
d0000a8e:	f818 2033 	ldrb.w	r2, [r8, r3, lsl #3]
d0000a92:	00dc      	lsls	r4, r3, #3
d0000a94:	2a5b      	cmp	r2, #91	; 0x5b
d0000a96:	d02b      	beq.n	d0000af0 <ShowFilesListed+0x22c>
d0000a98:	4d24      	ldr	r5, [pc, #144]	; (d0000b2c <ShowFilesListed+0x268>)
d0000a9a:	2240      	movs	r2, #64	; 0x40
d0000a9c:	2100      	movs	r1, #0
d0000a9e:	4628      	mov	r0, r5
d0000aa0:	f7ff fab8 	bl	d0000014 <memset>
d0000aa4:	eb08 0104 	add.w	r1, r8, r4
d0000aa8:	4628      	mov	r0, r5
d0000aaa:	4c21      	ldr	r4, [pc, #132]	; (d0000b30 <ShowFilesListed+0x26c>)
d0000aac:	f005 f962 	bl	d0005d74 <stpcpy>
d0000ab0:	2100      	movs	r1, #0
d0000ab2:	1b40      	subs	r0, r0, r5
d0000ab4:	4b1f      	ldr	r3, [pc, #124]	; (d0000b34 <ShowFilesListed+0x270>)
d0000ab6:	783a      	ldrb	r2, [r7, #0]
d0000ab8:	7020      	strb	r0, [r4, #0]
d0000aba:	7019      	strb	r1, [r3, #0]
d0000abc:	e741      	b.n	d0000942 <ShowFilesListed+0x7e>
d0000abe:	f240 14ff 	movw	r4, #511	; 0x1ff
d0000ac2:	4f1d      	ldr	r7, [pc, #116]	; (d0000b38 <ShowFilesListed+0x274>)
d0000ac4:	e003      	b.n	d0000ace <ShowFilesListed+0x20a>
d0000ac6:	3588      	adds	r5, #136	; 0x88
d0000ac8:	42b5      	cmp	r5, r6
d0000aca:	f43f af1a 	beq.w	d0000902 <ShowFilesListed+0x3e>
d0000ace:	f895 3084 	ldrb.w	r3, [r5, #132]	; 0x84
d0000ad2:	06db      	lsls	r3, r3, #27
d0000ad4:	d4f7      	bmi.n	d0000ac6 <ShowFilesListed+0x202>
d0000ad6:	45a0      	cmp	r8, r4
d0000ad8:	d8f5      	bhi.n	d0000ac6 <ShowFilesListed+0x202>
d0000ada:	eb08 1008 	add.w	r0, r8, r8, lsl #4
d0000ade:	2288      	movs	r2, #136	; 0x88
d0000ae0:	4629      	mov	r1, r5
d0000ae2:	f108 0801 	add.w	r8, r8, #1
d0000ae6:	eb07 00c0 	add.w	r0, r7, r0, lsl #3
d0000aea:	f004 ff3d 	bl	d0005968 <memcpy>
d0000aee:	e7ea      	b.n	d0000ac6 <ShowFilesListed+0x202>
d0000af0:	2240      	movs	r2, #64	; 0x40
d0000af2:	2100      	movs	r1, #0
d0000af4:	4811      	ldr	r0, [pc, #68]	; (d0000b3c <ShowFilesListed+0x278>)
d0000af6:	f7ff fa8d 	bl	d0000014 <memset>
d0000afa:	2201      	movs	r2, #1
d0000afc:	4b0d      	ldr	r3, [pc, #52]	; (d0000b34 <ShowFilesListed+0x270>)
d0000afe:	eb08 0104 	add.w	r1, r8, r4
d0000b02:	480e      	ldr	r0, [pc, #56]	; (d0000b3c <ShowFilesListed+0x278>)
d0000b04:	701a      	strb	r2, [r3, #0]
d0000b06:	f005 f95b 	bl	d0005dc0 <strcpy>
d0000b0a:	783a      	ldrb	r2, [r7, #0]
d0000b0c:	e719      	b.n	d0000942 <ShowFilesListed+0x7e>
d0000b0e:	bf00      	nop
d0000b10:	d000f018 	.word	0xd000f018
d0000b14:	d00201e8 	.word	0xd00201e8
d0000b18:	2001f000 	.word	0x2001f000
d0000b1c:	d000f011 	.word	0xd000f011
d0000b20:	d000f01a 	.word	0xd000f01a
d0000b24:	d000ef68 	.word	0xd000ef68
d0000b28:	d000f01c 	.word	0xd000f01c
d0000b2c:	d0031228 	.word	0xd0031228
d0000b30:	d000f012 	.word	0xd000f012
d0000b34:	d000f010 	.word	0xd000f010
d0000b38:	d000f150 	.word	0xd000f150
d0000b3c:	d00311e8 	.word	0xd00311e8
d0000b40:	d000f014 	.word	0xd000f014

d0000b44 <ScrollFileListDirection>:
d0000b44:	b430      	push	{r4, r5}
d0000b46:	4a0e      	ldr	r2, [pc, #56]	; (d0000b80 <ScrollFileListDirection+0x3c>)
d0000b48:	f64f 71ff 	movw	r1, #65535	; 0xffff
d0000b4c:	4b0d      	ldr	r3, [pc, #52]	; (d0000b84 <ScrollFileListDirection+0x40>)
d0000b4e:	4d0e      	ldr	r5, [pc, #56]	; (d0000b88 <ScrollFileListDirection+0x44>)
d0000b50:	6814      	ldr	r4, [r2, #0]
d0000b52:	782d      	ldrb	r5, [r5, #0]
d0000b54:	881b      	ldrh	r3, [r3, #0]
d0000b56:	4420      	add	r0, r4
d0000b58:	4c0c      	ldr	r4, [pc, #48]	; (d0000b8c <ScrollFileListDirection+0x48>)
d0000b5a:	1b5b      	subs	r3, r3, r5
d0000b5c:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d0000b60:	4d0b      	ldr	r5, [pc, #44]	; (d0000b90 <ScrollFileListDirection+0x4c>)
d0000b62:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0000b66:	8021      	strh	r1, [r4, #0]
d0000b68:	2400      	movs	r4, #0
d0000b6a:	8029      	strh	r1, [r5, #0]
d0000b6c:	4283      	cmp	r3, r0
d0000b6e:	bfa8      	it	ge
d0000b70:	4603      	movge	r3, r0
d0000b72:	4808      	ldr	r0, [pc, #32]	; (d0000b94 <ScrollFileListDirection+0x50>)
d0000b74:	7004      	strb	r4, [r0, #0]
d0000b76:	6013      	str	r3, [r2, #0]
d0000b78:	bc30      	pop	{r4, r5}
d0000b7a:	f7ff bea3 	b.w	d00008c4 <ShowFilesListed>
d0000b7e:	bf00      	nop
d0000b80:	d000f014 	.word	0xd000f014
d0000b84:	d000f018 	.word	0xd000f018
d0000b88:	d000ef68 	.word	0xd000ef68
d0000b8c:	d000f01a 	.word	0xd000f01a
d0000b90:	d000f01c 	.word	0xd000f01c
d0000b94:	d000f010 	.word	0xd000f010

d0000b98 <FileListedSelect>:
d0000b98:	3807      	subs	r0, #7
d0000b9a:	b280      	uxth	r0, r0
d0000b9c:	f5b0 7fdc 	cmp.w	r0, #440	; 0x1b8
d0000ba0:	d20c      	bcs.n	d0000bbc <FileListedSelect+0x24>
d0000ba2:	293c      	cmp	r1, #60	; 0x3c
d0000ba4:	b530      	push	{r4, r5, lr}
d0000ba6:	b083      	sub	sp, #12
d0000ba8:	dc0a      	bgt.n	d0000bc0 <FileListedSelect+0x28>
d0000baa:	4c1c      	ldr	r4, [pc, #112]	; (d0000c1c <FileListedSelect+0x84>)
d0000bac:	7823      	ldrb	r3, [r4, #0]
d0000bae:	2b01      	cmp	r3, #1
d0000bb0:	d021      	beq.n	d0000bf6 <FileListedSelect+0x5e>
d0000bb2:	b003      	add	sp, #12
d0000bb4:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0000bb8:	f7ff be84 	b.w	d00008c4 <ShowFilesListed>
d0000bbc:	f7ff be82 	b.w	d00008c4 <ShowFilesListed>
d0000bc0:	4b17      	ldr	r3, [pc, #92]	; (d0000c20 <FileListedSelect+0x88>)
d0000bc2:	881b      	ldrh	r3, [r3, #0]
d0000bc4:	333b      	adds	r3, #59	; 0x3b
d0000bc6:	428b      	cmp	r3, r1
d0000bc8:	dbef      	blt.n	d0000baa <FileListedSelect+0x12>
d0000bca:	4816      	ldr	r0, [pc, #88]	; (d0000c24 <FileListedSelect+0x8c>)
d0000bcc:	f1a1 033c 	sub.w	r3, r1, #60	; 0x3c
d0000bd0:	4a15      	ldr	r2, [pc, #84]	; (d0000c28 <FileListedSelect+0x90>)
d0000bd2:	fba0 0303 	umull	r0, r3, r0, r3
d0000bd6:	4c11      	ldr	r4, [pc, #68]	; (d0000c1c <FileListedSelect+0x84>)
d0000bd8:	6812      	ldr	r2, [r2, #0]
d0000bda:	091b      	lsrs	r3, r3, #4
d0000bdc:	4d13      	ldr	r5, [pc, #76]	; (d0000c2c <FileListedSelect+0x94>)
d0000bde:	4814      	ldr	r0, [pc, #80]	; (d0000c30 <FileListedSelect+0x98>)
d0000be0:	441a      	add	r2, r3
d0000be2:	802b      	strh	r3, [r5, #0]
d0000be4:	7823      	ldrb	r3, [r4, #0]
d0000be6:	8002      	strh	r2, [r0, #0]
d0000be8:	2b01      	cmp	r3, #1
d0000bea:	d1e2      	bne.n	d0000bb2 <FileListedSelect+0x1a>
d0000bec:	9101      	str	r1, [sp, #4]
d0000bee:	f7ff fded 	bl	d00007cc <FileRequestFileStringUpdater.part.0>
d0000bf2:	9901      	ldr	r1, [sp, #4]
d0000bf4:	e7da      	b.n	d0000bac <FileListedSelect+0x14>
d0000bf6:	3970      	subs	r1, #112	; 0x70
d0000bf8:	b289      	uxth	r1, r1
d0000bfa:	2915      	cmp	r1, #21
d0000bfc:	d8d9      	bhi.n	d0000bb2 <FileListedSelect+0x1a>
d0000bfe:	490b      	ldr	r1, [pc, #44]	; (d0000c2c <FileListedSelect+0x94>)
d0000c00:	f64f 72fe 	movw	r2, #65534	; 0xfffe
d0000c04:	4b0a      	ldr	r3, [pc, #40]	; (d0000c30 <FileListedSelect+0x98>)
d0000c06:	f64f 70ff 	movw	r0, #65535	; 0xffff
d0000c0a:	801a      	strh	r2, [r3, #0]
d0000c0c:	8008      	strh	r0, [r1, #0]
d0000c0e:	f7ff fa21 	bl	d0000054 <flush_keys>
d0000c12:	4b08      	ldr	r3, [pc, #32]	; (d0000c34 <FileListedSelect+0x9c>)
d0000c14:	4808      	ldr	r0, [pc, #32]	; (d0000c38 <FileListedSelect+0xa0>)
d0000c16:	689b      	ldr	r3, [r3, #8]
d0000c18:	4798      	blx	r3
d0000c1a:	e7ca      	b.n	d0000bb2 <FileListedSelect+0x1a>
d0000c1c:	d000f011 	.word	0xd000f011
d0000c20:	d000ef6a 	.word	0xd000ef6a
d0000c24:	f0f0f0f1 	.word	0xf0f0f0f1
d0000c28:	d000f014 	.word	0xd000f014
d0000c2c:	d000f01a 	.word	0xd000f01a
d0000c30:	d000f01c 	.word	0xd000f01c
d0000c34:	2001f000 	.word	0x2001f000
d0000c38:	d0006980 	.word	0xd0006980

d0000c3c <ShowFileRequest>:
d0000c3c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0000c40:	4b9d      	ldr	r3, [pc, #628]	; (d0000eb8 <ShowFileRequest+0x27c>)
d0000c42:	2203      	movs	r2, #3
d0000c44:	4e9d      	ldr	r6, [pc, #628]	; (d0000ebc <ShowFileRequest+0x280>)
d0000c46:	b0a4      	sub	sp, #144	; 0x90
d0000c48:	f8df 92bc 	ldr.w	r9, [pc, #700]	; d0000f08 <ShowFileRequest+0x2cc>
d0000c4c:	2400      	movs	r4, #0
d0000c4e:	701a      	strb	r2, [r3, #0]
d0000c50:	2705      	movs	r7, #5
d0000c52:	f889 0000 	strb.w	r0, [r9]
d0000c56:	f004 f8a5 	bl	d0004da4 <DisableConfigButtons>
d0000c5a:	f7ff faab 	bl	d00001b4 <CaptureDrawBuffer>
d0000c5e:	f7ff fab5 	bl	d00001cc <SetDrawToBackLayer>
d0000c62:	f7ff f9f7 	bl	d0000054 <flush_keys>
d0000c66:	f8d6 10f8 	ldr.w	r1, [r6, #248]	; 0xf8
d0000c6a:	2387      	movs	r3, #135	; 0x87
d0000c6c:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0000c70:	700f      	strb	r7, [r1, #0]
d0000c72:	4620      	mov	r0, r4
d0000c74:	211d      	movs	r1, #29
d0000c76:	f8d6 513c 	ldr.w	r5, [r6, #316]	; 0x13c
d0000c7a:	47a8      	blx	r5
d0000c7c:	4890      	ldr	r0, [pc, #576]	; (d0000ec0 <ShowFileRequest+0x284>)
d0000c7e:	f64f 73ff 	movw	r3, #65535	; 0xffff
d0000c82:	4a90      	ldr	r2, [pc, #576]	; (d0000ec4 <ShowFileRequest+0x288>)
d0000c84:	7004      	strb	r4, [r0, #0]
d0000c86:	4621      	mov	r1, r4
d0000c88:	488f      	ldr	r0, [pc, #572]	; (d0000ec8 <ShowFileRequest+0x28c>)
d0000c8a:	4d90      	ldr	r5, [pc, #576]	; (d0000ecc <ShowFileRequest+0x290>)
d0000c8c:	8003      	strh	r3, [r0, #0]
d0000c8e:	4890      	ldr	r0, [pc, #576]	; (d0000ed0 <ShowFileRequest+0x294>)
d0000c90:	6014      	str	r4, [r2, #0]
d0000c92:	f44f 3288 	mov.w	r2, #69632	; 0x11000
d0000c96:	8003      	strh	r3, [r0, #0]
d0000c98:	488e      	ldr	r0, [pc, #568]	; (d0000ed4 <ShowFileRequest+0x298>)
d0000c9a:	802c      	strh	r4, [r5, #0]
d0000c9c:	f7ff f9ba 	bl	d0000014 <memset>
d0000ca0:	4621      	mov	r1, r4
d0000ca2:	f44f 3288 	mov.w	r2, #69632	; 0x11000
d0000ca6:	488c      	ldr	r0, [pc, #560]	; (d0000ed8 <ShowFileRequest+0x29c>)
d0000ca8:	f7ff f9b4 	bl	d0000014 <memset>
d0000cac:	6eb3      	ldr	r3, [r6, #104]	; 0x68
d0000cae:	a804      	add	r0, sp, #16
d0000cb0:	4798      	blx	r3
d0000cb2:	2800      	cmp	r0, #0
d0000cb4:	f040 80e5 	bne.w	d0000e82 <ShowFileRequest+0x246>
d0000cb8:	4604      	mov	r4, r0
d0000cba:	a804      	add	r0, sp, #16
d0000cbc:	f005 f888 	bl	d0005dd0 <strlen>
d0000cc0:	2825      	cmp	r0, #37	; 0x25
d0000cc2:	d903      	bls.n	d0000ccc <ShowFileRequest+0x90>
d0000cc4:	f88d 7035 	strb.w	r7, [sp, #53]	; 0x35
d0000cc8:	f88d 4036 	strb.w	r4, [sp, #54]	; 0x36
d0000ccc:	4c7b      	ldr	r4, [pc, #492]	; (d0000ebc <ShowFileRequest+0x280>)
d0000cce:	a904      	add	r1, sp, #16
d0000cd0:	2000      	movs	r0, #0
d0000cd2:	6f23      	ldr	r3, [r4, #112]	; 0x70
d0000cd4:	4798      	blx	r3
d0000cd6:	2800      	cmp	r0, #0
d0000cd8:	f040 80d3 	bne.w	d0000e82 <ShowFileRequest+0x246>
d0000cdc:	aa04      	add	r2, sp, #16
d0000cde:	2123      	movs	r1, #35	; 0x23
d0000ce0:	2008      	movs	r0, #8
d0000ce2:	f002 fde3 	bl	d00038ac <uiFileText>
d0000ce6:	882b      	ldrh	r3, [r5, #0]
d0000ce8:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d0000cec:	d234      	bcs.n	d0000d58 <ShowFileRequest+0x11c>
d0000cee:	4e7b      	ldr	r6, [pc, #492]	; (d0000edc <ShowFileRequest+0x2a0>)
d0000cf0:	46a0      	mov	r8, r4
d0000cf2:	4637      	mov	r7, r6
d0000cf4:	e019      	b.n	d0000d2a <ShowFileRequest+0xee>
d0000cf6:	428b      	cmp	r3, r1
d0000cf8:	f000 80d1 	beq.w	d0000e9e <ShowFileRequest+0x262>
d0000cfc:	882c      	ldrh	r4, [r5, #0]
d0000cfe:	227f      	movs	r2, #127	; 0x7f
d0000d00:	4b74      	ldr	r3, [pc, #464]	; (d0000ed4 <ShowFileRequest+0x298>)
d0000d02:	eb04 1a04 	add.w	sl, r4, r4, lsl #4
d0000d06:	4976      	ldr	r1, [pc, #472]	; (d0000ee0 <ShowFileRequest+0x2a4>)
d0000d08:	eb03 0aca 	add.w	sl, r3, sl, lsl #3
d0000d0c:	4650      	mov	r0, sl
d0000d0e:	f005 f867 	bl	d0005de0 <strncpy>
d0000d12:	1c63      	adds	r3, r4, #1
d0000d14:	6832      	ldr	r2, [r6, #0]
d0000d16:	b29b      	uxth	r3, r3
d0000d18:	7a31      	ldrb	r1, [r6, #8]
d0000d1a:	f8ca 2080 	str.w	r2, [sl, #128]	; 0x80
d0000d1e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d0000d22:	802b      	strh	r3, [r5, #0]
d0000d24:	f88a 1084 	strb.w	r1, [sl, #132]	; 0x84
d0000d28:	d216      	bcs.n	d0000d58 <ShowFileRequest+0x11c>
d0000d2a:	2298      	movs	r2, #152	; 0x98
d0000d2c:	2100      	movs	r1, #0
d0000d2e:	4638      	mov	r0, r7
d0000d30:	f7ff f970 	bl	d0000014 <memset>
d0000d34:	4639      	mov	r1, r7
d0000d36:	f8d8 3078 	ldr.w	r3, [r8, #120]	; 0x78
d0000d3a:	2000      	movs	r0, #0
d0000d3c:	4798      	blx	r3
d0000d3e:	4a68      	ldr	r2, [pc, #416]	; (d0000ee0 <ShowFileRequest+0x2a4>)
d0000d40:	f642 612e 	movw	r1, #11822	; 0x2e2e
d0000d44:	b940      	cbnz	r0, d0000d58 <ShowFileRequest+0x11c>
d0000d46:	7db3      	ldrb	r3, [r6, #22]
d0000d48:	b133      	cbz	r3, d0000d58 <ShowFileRequest+0x11c>
d0000d4a:	8813      	ldrh	r3, [r2, #0]
d0000d4c:	2b2e      	cmp	r3, #46	; 0x2e
d0000d4e:	d1d2      	bne.n	d0000cf6 <ShowFileRequest+0xba>
d0000d50:	882b      	ldrh	r3, [r5, #0]
d0000d52:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d0000d56:	d3e8      	bcc.n	d0000d2a <ShowFileRequest+0xee>
d0000d58:	4b58      	ldr	r3, [pc, #352]	; (d0000ebc <ShowFileRequest+0x280>)
d0000d5a:	2000      	movs	r0, #0
d0000d5c:	6f5b      	ldr	r3, [r3, #116]	; 0x74
d0000d5e:	4798      	blx	r3
d0000d60:	4b60      	ldr	r3, [pc, #384]	; (d0000ee4 <ShowFileRequest+0x2a8>)
d0000d62:	2288      	movs	r2, #136	; 0x88
d0000d64:	8829      	ldrh	r1, [r5, #0]
d0000d66:	485b      	ldr	r0, [pc, #364]	; (d0000ed4 <ShowFileRequest+0x298>)
d0000d68:	f004 fe5f 	bl	d0005a2a <qsort>
d0000d6c:	f899 3000 	ldrb.w	r3, [r9]
d0000d70:	2b00      	cmp	r3, #0
d0000d72:	f000 8090 	beq.w	d0000e96 <ShowFileRequest+0x25a>
d0000d76:	2203      	movs	r2, #3
d0000d78:	2033      	movs	r0, #51	; 0x33
d0000d7a:	4611      	mov	r1, r2
d0000d7c:	882b      	ldrh	r3, [r5, #0]
d0000d7e:	4c5a      	ldr	r4, [pc, #360]	; (d0000ee8 <ShowFileRequest+0x2ac>)
d0000d80:	4293      	cmp	r3, r2
d0000d82:	7021      	strb	r1, [r4, #0]
d0000d84:	d803      	bhi.n	d0000d8e <ShowFileRequest+0x152>
d0000d86:	eb03 1303 	add.w	r3, r3, r3, lsl #4
d0000d8a:	3b01      	subs	r3, #1
d0000d8c:	b298      	uxth	r0, r3
d0000d8e:	2404      	movs	r4, #4
d0000d90:	2506      	movs	r5, #6
d0000d92:	4e56      	ldr	r6, [pc, #344]	; (d0000eec <ShowFileRequest+0x2b0>)
d0000d94:	2319      	movs	r3, #25
d0000d96:	f44f 72a8 	mov.w	r2, #336	; 0x150
d0000d9a:	211d      	movs	r1, #29
d0000d9c:	9401      	str	r4, [sp, #4]
d0000d9e:	9500      	str	r5, [sp, #0]
d0000da0:	8030      	strh	r0, [r6, #0]
d0000da2:	2000      	movs	r0, #0
d0000da4:	f002 fdee 	bl	d0003984 <uiDrawBeval>
d0000da8:	236a      	movs	r3, #106	; 0x6a
d0000daa:	f44f 72e2 	mov.w	r2, #452	; 0x1c4
d0000dae:	211d      	movs	r1, #29
d0000db0:	2000      	movs	r0, #0
d0000db2:	e9cd 5400 	strd	r5, r4, [sp]
d0000db6:	f002 fde5 	bl	d0003984 <uiDrawBeval>
d0000dba:	f899 3000 	ldrb.w	r3, [r9]
d0000dbe:	4620      	mov	r0, r4
d0000dc0:	9501      	str	r5, [sp, #4]
d0000dc2:	9400      	str	r4, [sp, #0]
d0000dc4:	2b00      	cmp	r3, #0
d0000dc6:	d170      	bne.n	d0000eaa <ShowFileRequest+0x26e>
d0000dc8:	2349      	movs	r3, #73	; 0x49
d0000dca:	f44f 72de 	mov.w	r2, #444	; 0x1bc
d0000dce:	213a      	movs	r1, #58	; 0x3a
d0000dd0:	f002 fdd8 	bl	d0003984 <uiDrawBeval>
d0000dd4:	2408      	movs	r4, #8
d0000dd6:	2519      	movs	r5, #25
d0000dd8:	2618      	movs	r6, #24
d0000dda:	2724      	movs	r7, #36	; 0x24
d0000ddc:	f7ff fa08 	bl	d00001f0 <ReleaseDrawBuffer>
d0000de0:	f003 ffe0 	bl	d0004da4 <DisableConfigButtons>
d0000de4:	f004 f802 	bl	d0004dec <DisableMainWindowButtons>
d0000de8:	231d      	movs	r3, #29
d0000dea:	f44f 72e3 	mov.w	r2, #454	; 0x1c6
d0000dee:	4940      	ldr	r1, [pc, #256]	; (d0000ef0 <ShowFileRequest+0x2b4>)
d0000df0:	4638      	mov	r0, r7
d0000df2:	9600      	str	r6, [sp, #0]
d0000df4:	e9cd 5401 	strd	r5, r4, [sp, #4]
d0000df8:	f002 ff24 	bl	d0003c44 <CreateButton>
d0000dfc:	2134      	movs	r1, #52	; 0x34
d0000dfe:	2338      	movs	r3, #56	; 0x38
d0000e00:	f44f 72e3 	mov.w	r2, #454	; 0x1c6
d0000e04:	9101      	str	r1, [sp, #4]
d0000e06:	2023      	movs	r0, #35	; 0x23
d0000e08:	493a      	ldr	r1, [pc, #232]	; (d0000ef4 <ShowFileRequest+0x2b8>)
d0000e0a:	9402      	str	r4, [sp, #8]
d0000e0c:	9600      	str	r6, [sp, #0]
d0000e0e:	f002 ff19 	bl	d0003c44 <CreateButton>
d0000e12:	236e      	movs	r3, #110	; 0x6e
d0000e14:	f44f 72e3 	mov.w	r2, #454	; 0x1c6
d0000e18:	4937      	ldr	r1, [pc, #220]	; (d0000ef8 <ShowFileRequest+0x2bc>)
d0000e1a:	9600      	str	r6, [sp, #0]
d0000e1c:	2025      	movs	r0, #37	; 0x25
d0000e1e:	e9cd 5401 	strd	r5, r4, [sp, #4]
d0000e22:	f002 ff0f 	bl	d0003c44 <CreateButton>
d0000e26:	231d      	movs	r3, #29
d0000e28:	f44f 72d0 	mov.w	r2, #416	; 0x1a0
d0000e2c:	4933      	ldr	r1, [pc, #204]	; (d0000efc <ShowFileRequest+0x2c0>)
d0000e2e:	9700      	str	r7, [sp, #0]
d0000e30:	2026      	movs	r0, #38	; 0x26
d0000e32:	e9cd 5401 	strd	r5, r4, [sp, #4]
d0000e36:	f002 ff05 	bl	d0003c44 <CreateButton>
d0000e3a:	214c      	movs	r1, #76	; 0x4c
d0000e3c:	231d      	movs	r3, #29
d0000e3e:	f44f 72a9 	mov.w	r2, #338	; 0x152
d0000e42:	9100      	str	r1, [sp, #0]
d0000e44:	2027      	movs	r0, #39	; 0x27
d0000e46:	492e      	ldr	r1, [pc, #184]	; (d0000f00 <ShowFileRequest+0x2c4>)
d0000e48:	9402      	str	r4, [sp, #8]
d0000e4a:	9501      	str	r5, [sp, #4]
d0000e4c:	f002 fefa 	bl	d0003c44 <CreateButton>
d0000e50:	4638      	mov	r0, r7
d0000e52:	2100      	movs	r1, #0
d0000e54:	f002 ff3e 	bl	d0003cd4 <guiRenderButton>
d0000e58:	2100      	movs	r1, #0
d0000e5a:	2023      	movs	r0, #35	; 0x23
d0000e5c:	f002 ff3a 	bl	d0003cd4 <guiRenderButton>
d0000e60:	2100      	movs	r1, #0
d0000e62:	2025      	movs	r0, #37	; 0x25
d0000e64:	f002 ff36 	bl	d0003cd4 <guiRenderButton>
d0000e68:	2100      	movs	r1, #0
d0000e6a:	2026      	movs	r0, #38	; 0x26
d0000e6c:	f002 ff32 	bl	d0003cd4 <guiRenderButton>
d0000e70:	2100      	movs	r1, #0
d0000e72:	2027      	movs	r0, #39	; 0x27
d0000e74:	f002 ff2e 	bl	d0003cd4 <guiRenderButton>
d0000e78:	f7ff fd24 	bl	d00008c4 <ShowFilesListed>
d0000e7c:	b024      	add	sp, #144	; 0x90
d0000e7e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0000e82:	4a20      	ldr	r2, [pc, #128]	; (d0000f04 <ShowFileRequest+0x2c8>)
d0000e84:	2123      	movs	r1, #35	; 0x23
d0000e86:	2008      	movs	r0, #8
d0000e88:	f002 fd10 	bl	d00038ac <uiFileText>
d0000e8c:	f899 3000 	ldrb.w	r3, [r9]
d0000e90:	2b00      	cmp	r3, #0
d0000e92:	f47f af70 	bne.w	d0000d76 <ShowFileRequest+0x13a>
d0000e96:	2204      	movs	r2, #4
d0000e98:	2044      	movs	r0, #68	; 0x44
d0000e9a:	4611      	mov	r1, r2
d0000e9c:	e76e      	b.n	d0000d7c <ShowFileRequest+0x140>
d0000e9e:	7893      	ldrb	r3, [r2, #2]
d0000ea0:	2b00      	cmp	r3, #0
d0000ea2:	f47f af2b 	bne.w	d0000cfc <ShowFileRequest+0xc0>
d0000ea6:	882b      	ldrh	r3, [r5, #0]
d0000ea8:	e753      	b.n	d0000d52 <ShowFileRequest+0x116>
d0000eaa:	2337      	movs	r3, #55	; 0x37
d0000eac:	f44f 72de 	mov.w	r2, #444	; 0x1bc
d0000eb0:	213a      	movs	r1, #58	; 0x3a
d0000eb2:	f002 fd67 	bl	d0003984 <uiDrawBeval>
d0000eb6:	e78d      	b.n	d0000dd4 <ShowFileRequest+0x198>
d0000eb8:	d000f04c 	.word	0xd000f04c
d0000ebc:	2001f000 	.word	0x2001f000
d0000ec0:	d000f010 	.word	0xd000f010
d0000ec4:	d000f014 	.word	0xd000f014
d0000ec8:	d000f01a 	.word	0xd000f01a
d0000ecc:	d000f018 	.word	0xd000f018
d0000ed0:	d000f01c 	.word	0xd000f01c
d0000ed4:	d00201e8 	.word	0xd00201e8
d0000ed8:	d000f150 	.word	0xd000f150
d0000edc:	d0020150 	.word	0xd0020150
d0000ee0:	d0020166 	.word	0xd0020166
d0000ee4:	d00007b1 	.word	0xd00007b1
d0000ee8:	d000ef68 	.word	0xd000ef68
d0000eec:	d000ef6a 	.word	0xd000ef6a
d0000ef0:	d00069b4 	.word	0xd00069b4
d0000ef4:	d00069b8 	.word	0xd00069b8
d0000ef8:	d00069bc 	.word	0xd00069bc
d0000efc:	d00069c0 	.word	0xd00069c0
d0000f00:	d00069c4 	.word	0xd00069c4
d0000f04:	d000699c 	.word	0xd000699c
d0000f08:	d000f011 	.word	0xd000f011

d0000f0c <CloseFileRequest>:
d0000f0c:	b508      	push	{r3, lr}
d0000f0e:	2200      	movs	r2, #0
d0000f10:	4b03      	ldr	r3, [pc, #12]	; (d0000f20 <CloseFileRequest+0x14>)
d0000f12:	701a      	strb	r2, [r3, #0]
d0000f14:	f003 ff46 	bl	d0004da4 <DisableConfigButtons>
d0000f18:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d0000f1c:	f003 bfc0 	b.w	d0004ea0 <ShowDefaultHomeConfigPage>
d0000f20:	d000f04c 	.word	0xd000f04c

d0000f24 <CheckDirectorySelect>:
d0000f24:	4b1a      	ldr	r3, [pc, #104]	; (d0000f90 <CheckDirectorySelect+0x6c>)
d0000f26:	7818      	ldrb	r0, [r3, #0]
d0000f28:	b900      	cbnz	r0, d0000f2c <CheckDirectorySelect+0x8>
d0000f2a:	4770      	bx	lr
d0000f2c:	b530      	push	{r4, r5, lr}
d0000f2e:	4819      	ldr	r0, [pc, #100]	; (d0000f94 <CheckDirectorySelect+0x70>)
d0000f30:	b091      	sub	sp, #68	; 0x44
d0000f32:	f004 ff4d 	bl	d0005dd0 <strlen>
d0000f36:	3801      	subs	r0, #1
d0000f38:	2800      	cmp	r0, #0
d0000f3a:	dd25      	ble.n	d0000f88 <CheckDirectorySelect+0x64>
d0000f3c:	2200      	movs	r2, #0
d0000f3e:	4d15      	ldr	r5, [pc, #84]	; (d0000f94 <CheckDirectorySelect+0x70>)
d0000f40:	4613      	mov	r3, r2
d0000f42:	3201      	adds	r2, #1
d0000f44:	a910      	add	r1, sp, #64	; 0x40
d0000f46:	18ec      	adds	r4, r5, r3
d0000f48:	4419      	add	r1, r3
d0000f4a:	b2d3      	uxtb	r3, r2
d0000f4c:	7864      	ldrb	r4, [r4, #1]
d0000f4e:	4283      	cmp	r3, r0
d0000f50:	461a      	mov	r2, r3
d0000f52:	f801 4c40 	strb.w	r4, [r1, #-64]
d0000f56:	dbf4      	blt.n	d0000f42 <CheckDirectorySelect+0x1e>
d0000f58:	1e5a      	subs	r2, r3, #1
d0000f5a:	a910      	add	r1, sp, #64	; 0x40
d0000f5c:	4c0e      	ldr	r4, [pc, #56]	; (d0000f98 <CheckDirectorySelect+0x74>)
d0000f5e:	480f      	ldr	r0, [pc, #60]	; (d0000f9c <CheckDirectorySelect+0x78>)
d0000f60:	440a      	add	r2, r1
d0000f62:	440b      	add	r3, r1
d0000f64:	2100      	movs	r1, #0
d0000f66:	f803 1c40 	strb.w	r1, [r3, #-64]
d0000f6a:	f802 1c40 	strb.w	r1, [r2, #-64]
d0000f6e:	4669      	mov	r1, sp
d0000f70:	68a3      	ldr	r3, [r4, #8]
d0000f72:	4798      	blx	r3
d0000f74:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0000f76:	4668      	mov	r0, sp
d0000f78:	4798      	blx	r3
d0000f7a:	4b09      	ldr	r3, [pc, #36]	; (d0000fa0 <CheckDirectorySelect+0x7c>)
d0000f7c:	7818      	ldrb	r0, [r3, #0]
d0000f7e:	f7ff fe5d 	bl	d0000c3c <ShowFileRequest>
d0000f82:	2001      	movs	r0, #1
d0000f84:	b011      	add	sp, #68	; 0x44
d0000f86:	bd30      	pop	{r4, r5, pc}
d0000f88:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0000f8c:	2300      	movs	r3, #0
d0000f8e:	e7e4      	b.n	d0000f5a <CheckDirectorySelect+0x36>
d0000f90:	d000f010 	.word	0xd000f010
d0000f94:	d00311e8 	.word	0xd00311e8
d0000f98:	2001f000 	.word	0x2001f000
d0000f9c:	d00069cc 	.word	0xd00069cc
d0000fa0:	d000f011 	.word	0xd000f011

d0000fa4 <ParentDirectory>:
d0000fa4:	b508      	push	{r3, lr}
d0000fa6:	4b05      	ldr	r3, [pc, #20]	; (d0000fbc <ParentDirectory+0x18>)
d0000fa8:	4805      	ldr	r0, [pc, #20]	; (d0000fc0 <ParentDirectory+0x1c>)
d0000faa:	6e5b      	ldr	r3, [r3, #100]	; 0x64
d0000fac:	4798      	blx	r3
d0000fae:	4b05      	ldr	r3, [pc, #20]	; (d0000fc4 <ParentDirectory+0x20>)
d0000fb0:	7818      	ldrb	r0, [r3, #0]
d0000fb2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d0000fb6:	f7ff be41 	b.w	d0000c3c <ShowFileRequest>
d0000fba:	bf00      	nop
d0000fbc:	2001f000 	.word	0x2001f000
d0000fc0:	d0007928 	.word	0xd0007928
d0000fc4:	d000f011 	.word	0xd000f011

d0000fc8 <SaveKMD>:
d0000fc8:	b510      	push	{r4, lr}
d0000fca:	4b05      	ldr	r3, [pc, #20]	; (d0000fe0 <SaveKMD+0x18>)
d0000fcc:	4c05      	ldr	r4, [pc, #20]	; (d0000fe4 <SaveKMD+0x1c>)
d0000fce:	4806      	ldr	r0, [pc, #24]	; (d0000fe8 <SaveKMD+0x20>)
d0000fd0:	4621      	mov	r1, r4
d0000fd2:	689b      	ldr	r3, [r3, #8]
d0000fd4:	4798      	blx	r3
d0000fd6:	4620      	mov	r0, r4
d0000fd8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0000fdc:	f7ff baa8 	b.w	d0000530 <SaveTestSong>
d0000fe0:	2001f000 	.word	0x2001f000
d0000fe4:	d0031228 	.word	0xd0031228
d0000fe8:	d00069e8 	.word	0xd00069e8

d0000fec <LoadKMD>:
d0000fec:	b510      	push	{r4, lr}
d0000fee:	4b05      	ldr	r3, [pc, #20]	; (d0001004 <LoadKMD+0x18>)
d0000ff0:	4c05      	ldr	r4, [pc, #20]	; (d0001008 <LoadKMD+0x1c>)
d0000ff2:	4806      	ldr	r0, [pc, #24]	; (d000100c <LoadKMD+0x20>)
d0000ff4:	4621      	mov	r1, r4
d0000ff6:	689b      	ldr	r3, [r3, #8]
d0000ff8:	4798      	blx	r3
d0000ffa:	4620      	mov	r0, r4
d0000ffc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0001000:	f7ff b93e 	b.w	d0000280 <LoadTestSong>
d0001004:	2001f000 	.word	0x2001f000
d0001008:	d0031228 	.word	0xd0031228
d000100c:	d0006a04 	.word	0xd0006a04

d0001010 <KB_ISR2>:
d0001010:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0001012:	4e26      	ldr	r6, [pc, #152]	; (d00010ac <KB_ISR2+0x9c>)
d0001014:	4604      	mov	r4, r0
d0001016:	7800      	ldrb	r0, [r0, #0]
d0001018:	2200      	movs	r2, #0
d000101a:	6833      	ldr	r3, [r6, #0]
d000101c:	4f24      	ldr	r7, [pc, #144]	; (d00010b0 <KB_ISR2+0xa0>)
d000101e:	f010 0f22 	tst.w	r0, #34	; 0x22
d0001022:	f043 0310 	orr.w	r3, r3, #16
d0001026:	4923      	ldr	r1, [pc, #140]	; (d00010b4 <KB_ISR2+0xa4>)
d0001028:	4d23      	ldr	r5, [pc, #140]	; (d00010b8 <KB_ISR2+0xa8>)
d000102a:	6033      	str	r3, [r6, #0]
d000102c:	bf14      	ite	ne
d000102e:	2301      	movne	r3, #1
d0001030:	4613      	moveq	r3, r2
d0001032:	723a      	strb	r2, [r7, #8]
d0001034:	727a      	strb	r2, [r7, #9]
d0001036:	78a0      	ldrb	r0, [r4, #2]
d0001038:	700b      	strb	r3, [r1, #0]
d000103a:	7038      	strb	r0, [r7, #0]
d000103c:	78ab      	ldrb	r3, [r5, #2]
d000103e:	2800      	cmp	r0, #0
d0001040:	d13c      	bne.n	d00010bc <KB_ISR2+0xac>
d0001042:	78e0      	ldrb	r0, [r4, #3]
d0001044:	7078      	strb	r0, [r7, #1]
d0001046:	2800      	cmp	r0, #0
d0001048:	d154      	bne.n	d00010f4 <KB_ISR2+0xe4>
d000104a:	7920      	ldrb	r0, [r4, #4]
d000104c:	70b8      	strb	r0, [r7, #2]
d000104e:	2800      	cmp	r0, #0
d0001050:	d16c      	bne.n	d000112c <KB_ISR2+0x11c>
d0001052:	7960      	ldrb	r0, [r4, #5]
d0001054:	70f8      	strb	r0, [r7, #3]
d0001056:	2800      	cmp	r0, #0
d0001058:	f040 8085 	bne.w	d0001166 <KB_ISR2+0x156>
d000105c:	79a0      	ldrb	r0, [r4, #6]
d000105e:	7138      	strb	r0, [r7, #4]
d0001060:	2800      	cmp	r0, #0
d0001062:	f040 80a3 	bne.w	d00011ac <KB_ISR2+0x19c>
d0001066:	79e0      	ldrb	r0, [r4, #7]
d0001068:	7178      	strb	r0, [r7, #5]
d000106a:	2800      	cmp	r0, #0
d000106c:	f040 80c1 	bne.w	d00011f2 <KB_ISR2+0x1e2>
d0001070:	78ab      	ldrb	r3, [r5, #2]
d0001072:	2b00      	cmp	r3, #0
d0001074:	f040 80df 	bne.w	d0001236 <KB_ISR2+0x226>
d0001078:	78eb      	ldrb	r3, [r5, #3]
d000107a:	2b00      	cmp	r3, #0
d000107c:	f040 80fb 	bne.w	d0001276 <KB_ISR2+0x266>
d0001080:	792b      	ldrb	r3, [r5, #4]
d0001082:	2b00      	cmp	r3, #0
d0001084:	f040 8117 	bne.w	d00012b6 <KB_ISR2+0x2a6>
d0001088:	796b      	ldrb	r3, [r5, #5]
d000108a:	2b00      	cmp	r3, #0
d000108c:	f040 8133 	bne.w	d00012f6 <KB_ISR2+0x2e6>
d0001090:	79ab      	ldrb	r3, [r5, #6]
d0001092:	2b00      	cmp	r3, #0
d0001094:	f040 814f 	bne.w	d0001336 <KB_ISR2+0x326>
d0001098:	79eb      	ldrb	r3, [r5, #7]
d000109a:	2b00      	cmp	r3, #0
d000109c:	f040 816b 	bne.w	d0001376 <KB_ISR2+0x366>
d00010a0:	6822      	ldr	r2, [r4, #0]
d00010a2:	6863      	ldr	r3, [r4, #4]
d00010a4:	602a      	str	r2, [r5, #0]
d00010a6:	606b      	str	r3, [r5, #4]
d00010a8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00010aa:	bf00      	nop
d00010ac:	d0252b08 	.word	0xd0252b08
d00010b0:	d003126c 	.word	0xd003126c
d00010b4:	d000f058 	.word	0xd000f058
d00010b8:	d000f05c 	.word	0xd000f05c
d00010bc:	4283      	cmp	r3, r0
d00010be:	d0c0      	beq.n	d0001042 <KB_ISR2+0x32>
d00010c0:	78ea      	ldrb	r2, [r5, #3]
d00010c2:	4282      	cmp	r2, r0
d00010c4:	d0bd      	beq.n	d0001042 <KB_ISR2+0x32>
d00010c6:	792a      	ldrb	r2, [r5, #4]
d00010c8:	4282      	cmp	r2, r0
d00010ca:	d0ba      	beq.n	d0001042 <KB_ISR2+0x32>
d00010cc:	796a      	ldrb	r2, [r5, #5]
d00010ce:	4282      	cmp	r2, r0
d00010d0:	d0b7      	beq.n	d0001042 <KB_ISR2+0x32>
d00010d2:	79aa      	ldrb	r2, [r5, #6]
d00010d4:	4282      	cmp	r2, r0
d00010d6:	d0b4      	beq.n	d0001042 <KB_ISR2+0x32>
d00010d8:	79ea      	ldrb	r2, [r5, #7]
d00010da:	4282      	cmp	r2, r0
d00010dc:	d0b1      	beq.n	d0001042 <KB_ISR2+0x32>
d00010de:	282a      	cmp	r0, #42	; 0x2a
d00010e0:	f040 8191 	bne.w	d0001406 <KB_ISR2+0x3f6>
d00010e4:	6832      	ldr	r2, [r6, #0]
d00010e6:	f042 0220 	orr.w	r2, r2, #32
d00010ea:	6032      	str	r2, [r6, #0]
d00010ec:	78e0      	ldrb	r0, [r4, #3]
d00010ee:	7078      	strb	r0, [r7, #1]
d00010f0:	2800      	cmp	r0, #0
d00010f2:	d0aa      	beq.n	d000104a <KB_ISR2+0x3a>
d00010f4:	4283      	cmp	r3, r0
d00010f6:	d0a8      	beq.n	d000104a <KB_ISR2+0x3a>
d00010f8:	78ea      	ldrb	r2, [r5, #3]
d00010fa:	4282      	cmp	r2, r0
d00010fc:	d0a5      	beq.n	d000104a <KB_ISR2+0x3a>
d00010fe:	792a      	ldrb	r2, [r5, #4]
d0001100:	4282      	cmp	r2, r0
d0001102:	d0a2      	beq.n	d000104a <KB_ISR2+0x3a>
d0001104:	796a      	ldrb	r2, [r5, #5]
d0001106:	4282      	cmp	r2, r0
d0001108:	d09f      	beq.n	d000104a <KB_ISR2+0x3a>
d000110a:	79aa      	ldrb	r2, [r5, #6]
d000110c:	4282      	cmp	r2, r0
d000110e:	d09c      	beq.n	d000104a <KB_ISR2+0x3a>
d0001110:	79ea      	ldrb	r2, [r5, #7]
d0001112:	4282      	cmp	r2, r0
d0001114:	d099      	beq.n	d000104a <KB_ISR2+0x3a>
d0001116:	282a      	cmp	r0, #42	; 0x2a
d0001118:	f040 814e 	bne.w	d00013b8 <KB_ISR2+0x3a8>
d000111c:	6832      	ldr	r2, [r6, #0]
d000111e:	f042 0220 	orr.w	r2, r2, #32
d0001122:	6032      	str	r2, [r6, #0]
d0001124:	7920      	ldrb	r0, [r4, #4]
d0001126:	70b8      	strb	r0, [r7, #2]
d0001128:	2800      	cmp	r0, #0
d000112a:	d092      	beq.n	d0001052 <KB_ISR2+0x42>
d000112c:	4283      	cmp	r3, r0
d000112e:	d090      	beq.n	d0001052 <KB_ISR2+0x42>
d0001130:	78ea      	ldrb	r2, [r5, #3]
d0001132:	4282      	cmp	r2, r0
d0001134:	d08d      	beq.n	d0001052 <KB_ISR2+0x42>
d0001136:	792a      	ldrb	r2, [r5, #4]
d0001138:	4282      	cmp	r2, r0
d000113a:	d08a      	beq.n	d0001052 <KB_ISR2+0x42>
d000113c:	796a      	ldrb	r2, [r5, #5]
d000113e:	4282      	cmp	r2, r0
d0001140:	d087      	beq.n	d0001052 <KB_ISR2+0x42>
d0001142:	79aa      	ldrb	r2, [r5, #6]
d0001144:	4282      	cmp	r2, r0
d0001146:	d084      	beq.n	d0001052 <KB_ISR2+0x42>
d0001148:	79ea      	ldrb	r2, [r5, #7]
d000114a:	4282      	cmp	r2, r0
d000114c:	d081      	beq.n	d0001052 <KB_ISR2+0x42>
d000114e:	282a      	cmp	r0, #42	; 0x2a
d0001150:	f040 813a 	bne.w	d00013c8 <KB_ISR2+0x3b8>
d0001154:	6832      	ldr	r2, [r6, #0]
d0001156:	f042 0220 	orr.w	r2, r2, #32
d000115a:	6032      	str	r2, [r6, #0]
d000115c:	7960      	ldrb	r0, [r4, #5]
d000115e:	70f8      	strb	r0, [r7, #3]
d0001160:	2800      	cmp	r0, #0
d0001162:	f43f af7b 	beq.w	d000105c <KB_ISR2+0x4c>
d0001166:	4283      	cmp	r3, r0
d0001168:	f43f af78 	beq.w	d000105c <KB_ISR2+0x4c>
d000116c:	78ea      	ldrb	r2, [r5, #3]
d000116e:	4282      	cmp	r2, r0
d0001170:	f43f af74 	beq.w	d000105c <KB_ISR2+0x4c>
d0001174:	792a      	ldrb	r2, [r5, #4]
d0001176:	4282      	cmp	r2, r0
d0001178:	f43f af70 	beq.w	d000105c <KB_ISR2+0x4c>
d000117c:	796a      	ldrb	r2, [r5, #5]
d000117e:	4282      	cmp	r2, r0
d0001180:	f43f af6c 	beq.w	d000105c <KB_ISR2+0x4c>
d0001184:	79aa      	ldrb	r2, [r5, #6]
d0001186:	4282      	cmp	r2, r0
d0001188:	f43f af68 	beq.w	d000105c <KB_ISR2+0x4c>
d000118c:	79ea      	ldrb	r2, [r5, #7]
d000118e:	4282      	cmp	r2, r0
d0001190:	f43f af64 	beq.w	d000105c <KB_ISR2+0x4c>
d0001194:	282a      	cmp	r0, #42	; 0x2a
d0001196:	f040 811f 	bne.w	d00013d8 <KB_ISR2+0x3c8>
d000119a:	6832      	ldr	r2, [r6, #0]
d000119c:	f042 0220 	orr.w	r2, r2, #32
d00011a0:	6032      	str	r2, [r6, #0]
d00011a2:	79a0      	ldrb	r0, [r4, #6]
d00011a4:	7138      	strb	r0, [r7, #4]
d00011a6:	2800      	cmp	r0, #0
d00011a8:	f43f af5d 	beq.w	d0001066 <KB_ISR2+0x56>
d00011ac:	4283      	cmp	r3, r0
d00011ae:	f43f af5a 	beq.w	d0001066 <KB_ISR2+0x56>
d00011b2:	78ea      	ldrb	r2, [r5, #3]
d00011b4:	4282      	cmp	r2, r0
d00011b6:	f43f af56 	beq.w	d0001066 <KB_ISR2+0x56>
d00011ba:	792a      	ldrb	r2, [r5, #4]
d00011bc:	4282      	cmp	r2, r0
d00011be:	f43f af52 	beq.w	d0001066 <KB_ISR2+0x56>
d00011c2:	796a      	ldrb	r2, [r5, #5]
d00011c4:	4282      	cmp	r2, r0
d00011c6:	f43f af4e 	beq.w	d0001066 <KB_ISR2+0x56>
d00011ca:	79aa      	ldrb	r2, [r5, #6]
d00011cc:	4282      	cmp	r2, r0
d00011ce:	f43f af4a 	beq.w	d0001066 <KB_ISR2+0x56>
d00011d2:	79ea      	ldrb	r2, [r5, #7]
d00011d4:	4282      	cmp	r2, r0
d00011d6:	f43f af46 	beq.w	d0001066 <KB_ISR2+0x56>
d00011da:	282a      	cmp	r0, #42	; 0x2a
d00011dc:	f040 8104 	bne.w	d00013e8 <KB_ISR2+0x3d8>
d00011e0:	6832      	ldr	r2, [r6, #0]
d00011e2:	f042 0220 	orr.w	r2, r2, #32
d00011e6:	6032      	str	r2, [r6, #0]
d00011e8:	79e0      	ldrb	r0, [r4, #7]
d00011ea:	7178      	strb	r0, [r7, #5]
d00011ec:	2800      	cmp	r0, #0
d00011ee:	f43f af3f 	beq.w	d0001070 <KB_ISR2+0x60>
d00011f2:	4298      	cmp	r0, r3
d00011f4:	f43f af3c 	beq.w	d0001070 <KB_ISR2+0x60>
d00011f8:	78eb      	ldrb	r3, [r5, #3]
d00011fa:	4283      	cmp	r3, r0
d00011fc:	f43f af38 	beq.w	d0001070 <KB_ISR2+0x60>
d0001200:	792b      	ldrb	r3, [r5, #4]
d0001202:	4283      	cmp	r3, r0
d0001204:	f43f af34 	beq.w	d0001070 <KB_ISR2+0x60>
d0001208:	796b      	ldrb	r3, [r5, #5]
d000120a:	4283      	cmp	r3, r0
d000120c:	f43f af30 	beq.w	d0001070 <KB_ISR2+0x60>
d0001210:	79ab      	ldrb	r3, [r5, #6]
d0001212:	4283      	cmp	r3, r0
d0001214:	f43f af2c 	beq.w	d0001070 <KB_ISR2+0x60>
d0001218:	79eb      	ldrb	r3, [r5, #7]
d000121a:	4283      	cmp	r3, r0
d000121c:	f43f af28 	beq.w	d0001070 <KB_ISR2+0x60>
d0001220:	282a      	cmp	r0, #42	; 0x2a
d0001222:	f040 80e9 	bne.w	d00013f8 <KB_ISR2+0x3e8>
d0001226:	6833      	ldr	r3, [r6, #0]
d0001228:	f043 0320 	orr.w	r3, r3, #32
d000122c:	6033      	str	r3, [r6, #0]
d000122e:	78ab      	ldrb	r3, [r5, #2]
d0001230:	2b00      	cmp	r3, #0
d0001232:	f43f af21 	beq.w	d0001078 <KB_ISR2+0x68>
d0001236:	78a2      	ldrb	r2, [r4, #2]
d0001238:	429a      	cmp	r2, r3
d000123a:	f43f af1d 	beq.w	d0001078 <KB_ISR2+0x68>
d000123e:	78e2      	ldrb	r2, [r4, #3]
d0001240:	429a      	cmp	r2, r3
d0001242:	f43f af19 	beq.w	d0001078 <KB_ISR2+0x68>
d0001246:	7922      	ldrb	r2, [r4, #4]
d0001248:	429a      	cmp	r2, r3
d000124a:	f43f af15 	beq.w	d0001078 <KB_ISR2+0x68>
d000124e:	7962      	ldrb	r2, [r4, #5]
d0001250:	429a      	cmp	r2, r3
d0001252:	f43f af11 	beq.w	d0001078 <KB_ISR2+0x68>
d0001256:	79a2      	ldrb	r2, [r4, #6]
d0001258:	429a      	cmp	r2, r3
d000125a:	f43f af0d 	beq.w	d0001078 <KB_ISR2+0x68>
d000125e:	79e2      	ldrb	r2, [r4, #7]
d0001260:	429a      	cmp	r2, r3
d0001262:	f43f af09 	beq.w	d0001078 <KB_ISR2+0x68>
d0001266:	6833      	ldr	r3, [r6, #0]
d0001268:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d000126c:	6033      	str	r3, [r6, #0]
d000126e:	78eb      	ldrb	r3, [r5, #3]
d0001270:	2b00      	cmp	r3, #0
d0001272:	f43f af05 	beq.w	d0001080 <KB_ISR2+0x70>
d0001276:	78a2      	ldrb	r2, [r4, #2]
d0001278:	429a      	cmp	r2, r3
d000127a:	f43f af01 	beq.w	d0001080 <KB_ISR2+0x70>
d000127e:	78e2      	ldrb	r2, [r4, #3]
d0001280:	429a      	cmp	r2, r3
d0001282:	f43f aefd 	beq.w	d0001080 <KB_ISR2+0x70>
d0001286:	7922      	ldrb	r2, [r4, #4]
d0001288:	429a      	cmp	r2, r3
d000128a:	f43f aef9 	beq.w	d0001080 <KB_ISR2+0x70>
d000128e:	7962      	ldrb	r2, [r4, #5]
d0001290:	429a      	cmp	r2, r3
d0001292:	f43f aef5 	beq.w	d0001080 <KB_ISR2+0x70>
d0001296:	79a2      	ldrb	r2, [r4, #6]
d0001298:	429a      	cmp	r2, r3
d000129a:	f43f aef1 	beq.w	d0001080 <KB_ISR2+0x70>
d000129e:	79e2      	ldrb	r2, [r4, #7]
d00012a0:	429a      	cmp	r2, r3
d00012a2:	f43f aeed 	beq.w	d0001080 <KB_ISR2+0x70>
d00012a6:	6833      	ldr	r3, [r6, #0]
d00012a8:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00012ac:	6033      	str	r3, [r6, #0]
d00012ae:	792b      	ldrb	r3, [r5, #4]
d00012b0:	2b00      	cmp	r3, #0
d00012b2:	f43f aee9 	beq.w	d0001088 <KB_ISR2+0x78>
d00012b6:	78a2      	ldrb	r2, [r4, #2]
d00012b8:	429a      	cmp	r2, r3
d00012ba:	f43f aee5 	beq.w	d0001088 <KB_ISR2+0x78>
d00012be:	78e2      	ldrb	r2, [r4, #3]
d00012c0:	429a      	cmp	r2, r3
d00012c2:	f43f aee1 	beq.w	d0001088 <KB_ISR2+0x78>
d00012c6:	7922      	ldrb	r2, [r4, #4]
d00012c8:	429a      	cmp	r2, r3
d00012ca:	f43f aedd 	beq.w	d0001088 <KB_ISR2+0x78>
d00012ce:	7962      	ldrb	r2, [r4, #5]
d00012d0:	429a      	cmp	r2, r3
d00012d2:	f43f aed9 	beq.w	d0001088 <KB_ISR2+0x78>
d00012d6:	79a2      	ldrb	r2, [r4, #6]
d00012d8:	429a      	cmp	r2, r3
d00012da:	f43f aed5 	beq.w	d0001088 <KB_ISR2+0x78>
d00012de:	79e2      	ldrb	r2, [r4, #7]
d00012e0:	429a      	cmp	r2, r3
d00012e2:	f43f aed1 	beq.w	d0001088 <KB_ISR2+0x78>
d00012e6:	6833      	ldr	r3, [r6, #0]
d00012e8:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00012ec:	6033      	str	r3, [r6, #0]
d00012ee:	796b      	ldrb	r3, [r5, #5]
d00012f0:	2b00      	cmp	r3, #0
d00012f2:	f43f aecd 	beq.w	d0001090 <KB_ISR2+0x80>
d00012f6:	78a2      	ldrb	r2, [r4, #2]
d00012f8:	429a      	cmp	r2, r3
d00012fa:	f43f aec9 	beq.w	d0001090 <KB_ISR2+0x80>
d00012fe:	78e2      	ldrb	r2, [r4, #3]
d0001300:	429a      	cmp	r2, r3
d0001302:	f43f aec5 	beq.w	d0001090 <KB_ISR2+0x80>
d0001306:	7922      	ldrb	r2, [r4, #4]
d0001308:	429a      	cmp	r2, r3
d000130a:	f43f aec1 	beq.w	d0001090 <KB_ISR2+0x80>
d000130e:	7962      	ldrb	r2, [r4, #5]
d0001310:	429a      	cmp	r2, r3
d0001312:	f43f aebd 	beq.w	d0001090 <KB_ISR2+0x80>
d0001316:	79a2      	ldrb	r2, [r4, #6]
d0001318:	429a      	cmp	r2, r3
d000131a:	f43f aeb9 	beq.w	d0001090 <KB_ISR2+0x80>
d000131e:	79e2      	ldrb	r2, [r4, #7]
d0001320:	429a      	cmp	r2, r3
d0001322:	f43f aeb5 	beq.w	d0001090 <KB_ISR2+0x80>
d0001326:	6833      	ldr	r3, [r6, #0]
d0001328:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d000132c:	6033      	str	r3, [r6, #0]
d000132e:	79ab      	ldrb	r3, [r5, #6]
d0001330:	2b00      	cmp	r3, #0
d0001332:	f43f aeb1 	beq.w	d0001098 <KB_ISR2+0x88>
d0001336:	78a2      	ldrb	r2, [r4, #2]
d0001338:	429a      	cmp	r2, r3
d000133a:	f43f aead 	beq.w	d0001098 <KB_ISR2+0x88>
d000133e:	78e2      	ldrb	r2, [r4, #3]
d0001340:	429a      	cmp	r2, r3
d0001342:	f43f aea9 	beq.w	d0001098 <KB_ISR2+0x88>
d0001346:	7922      	ldrb	r2, [r4, #4]
d0001348:	429a      	cmp	r2, r3
d000134a:	f43f aea5 	beq.w	d0001098 <KB_ISR2+0x88>
d000134e:	7962      	ldrb	r2, [r4, #5]
d0001350:	429a      	cmp	r2, r3
d0001352:	f43f aea1 	beq.w	d0001098 <KB_ISR2+0x88>
d0001356:	79a2      	ldrb	r2, [r4, #6]
d0001358:	429a      	cmp	r2, r3
d000135a:	f43f ae9d 	beq.w	d0001098 <KB_ISR2+0x88>
d000135e:	79e2      	ldrb	r2, [r4, #7]
d0001360:	429a      	cmp	r2, r3
d0001362:	f43f ae99 	beq.w	d0001098 <KB_ISR2+0x88>
d0001366:	6833      	ldr	r3, [r6, #0]
d0001368:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d000136c:	6033      	str	r3, [r6, #0]
d000136e:	79eb      	ldrb	r3, [r5, #7]
d0001370:	2b00      	cmp	r3, #0
d0001372:	f43f ae95 	beq.w	d00010a0 <KB_ISR2+0x90>
d0001376:	78a2      	ldrb	r2, [r4, #2]
d0001378:	429a      	cmp	r2, r3
d000137a:	f43f ae91 	beq.w	d00010a0 <KB_ISR2+0x90>
d000137e:	78e2      	ldrb	r2, [r4, #3]
d0001380:	429a      	cmp	r2, r3
d0001382:	f43f ae8d 	beq.w	d00010a0 <KB_ISR2+0x90>
d0001386:	7922      	ldrb	r2, [r4, #4]
d0001388:	429a      	cmp	r2, r3
d000138a:	f43f ae89 	beq.w	d00010a0 <KB_ISR2+0x90>
d000138e:	7962      	ldrb	r2, [r4, #5]
d0001390:	429a      	cmp	r2, r3
d0001392:	f43f ae85 	beq.w	d00010a0 <KB_ISR2+0x90>
d0001396:	79a2      	ldrb	r2, [r4, #6]
d0001398:	429a      	cmp	r2, r3
d000139a:	f43f ae81 	beq.w	d00010a0 <KB_ISR2+0x90>
d000139e:	79e2      	ldrb	r2, [r4, #7]
d00013a0:	429a      	cmp	r2, r3
d00013a2:	f43f ae7d 	beq.w	d00010a0 <KB_ISR2+0x90>
d00013a6:	6833      	ldr	r3, [r6, #0]
d00013a8:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00013ac:	6033      	str	r3, [r6, #0]
d00013ae:	6863      	ldr	r3, [r4, #4]
d00013b0:	6822      	ldr	r2, [r4, #0]
d00013b2:	606b      	str	r3, [r5, #4]
d00013b4:	602a      	str	r2, [r5, #0]
d00013b6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00013b8:	f7fe fe34 	bl	d0000024 <push_key>
d00013bc:	6832      	ldr	r2, [r6, #0]
d00013be:	78ab      	ldrb	r3, [r5, #2]
d00013c0:	f042 0220 	orr.w	r2, r2, #32
d00013c4:	6032      	str	r2, [r6, #0]
d00013c6:	e6ad      	b.n	d0001124 <KB_ISR2+0x114>
d00013c8:	f7fe fe2c 	bl	d0000024 <push_key>
d00013cc:	6832      	ldr	r2, [r6, #0]
d00013ce:	78ab      	ldrb	r3, [r5, #2]
d00013d0:	f042 0220 	orr.w	r2, r2, #32
d00013d4:	6032      	str	r2, [r6, #0]
d00013d6:	e6c1      	b.n	d000115c <KB_ISR2+0x14c>
d00013d8:	f7fe fe24 	bl	d0000024 <push_key>
d00013dc:	6832      	ldr	r2, [r6, #0]
d00013de:	78ab      	ldrb	r3, [r5, #2]
d00013e0:	f042 0220 	orr.w	r2, r2, #32
d00013e4:	6032      	str	r2, [r6, #0]
d00013e6:	e6dc      	b.n	d00011a2 <KB_ISR2+0x192>
d00013e8:	f7fe fe1c 	bl	d0000024 <push_key>
d00013ec:	6832      	ldr	r2, [r6, #0]
d00013ee:	78ab      	ldrb	r3, [r5, #2]
d00013f0:	f042 0220 	orr.w	r2, r2, #32
d00013f4:	6032      	str	r2, [r6, #0]
d00013f6:	e6f7      	b.n	d00011e8 <KB_ISR2+0x1d8>
d00013f8:	f7fe fe14 	bl	d0000024 <push_key>
d00013fc:	6833      	ldr	r3, [r6, #0]
d00013fe:	f043 0320 	orr.w	r3, r3, #32
d0001402:	6033      	str	r3, [r6, #0]
d0001404:	e713      	b.n	d000122e <KB_ISR2+0x21e>
d0001406:	f7fe fe0d 	bl	d0000024 <push_key>
d000140a:	6832      	ldr	r2, [r6, #0]
d000140c:	78ab      	ldrb	r3, [r5, #2]
d000140e:	f042 0220 	orr.w	r2, r2, #32
d0001412:	6032      	str	r2, [r6, #0]
d0001414:	e66a      	b.n	d00010ec <KB_ISR2+0xdc>
d0001416:	bf00      	nop

d0001418 <main>:
d0001418:	4ad8      	ldr	r2, [pc, #864]	; (d000177c <main+0x364>)
d000141a:	49d9      	ldr	r1, [pc, #868]	; (d0001780 <main+0x368>)
d000141c:	6813      	ldr	r3, [r2, #0]
d000141e:	48d9      	ldr	r0, [pc, #868]	; (d0001784 <main+0x36c>)
d0001420:	f023 0310 	bic.w	r3, r3, #16
d0001424:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0001428:	2600      	movs	r6, #0
d000142a:	4cd7      	ldr	r4, [pc, #860]	; (d0001788 <main+0x370>)
d000142c:	6013      	str	r3, [r2, #0]
d000142e:	b0a9      	sub	sp, #164	; 0xa4
d0001430:	600e      	str	r6, [r1, #0]
d0001432:	68a3      	ldr	r3, [r4, #8]
d0001434:	4798      	blx	r3
d0001436:	200a      	movs	r0, #10
d0001438:	68e3      	ldr	r3, [r4, #12]
d000143a:	4798      	blx	r3
d000143c:	4bd3      	ldr	r3, [pc, #844]	; (d000178c <main+0x374>)
d000143e:	4fd4      	ldr	r7, [pc, #848]	; (d0001790 <main+0x378>)
d0001440:	701e      	strb	r6, [r3, #0]
d0001442:	4bd4      	ldr	r3, [pc, #848]	; (d0001794 <main+0x37c>)
d0001444:	603e      	str	r6, [r7, #0]
d0001446:	701e      	strb	r6, [r3, #0]
d0001448:	4bd3      	ldr	r3, [pc, #844]	; (d0001798 <main+0x380>)
d000144a:	601e      	str	r6, [r3, #0]
d000144c:	4bd3      	ldr	r3, [pc, #844]	; (d000179c <main+0x384>)
d000144e:	601e      	str	r6, [r3, #0]
d0001450:	4bd3      	ldr	r3, [pc, #844]	; (d00017a0 <main+0x388>)
d0001452:	701e      	strb	r6, [r3, #0]
d0001454:	4bd3      	ldr	r3, [pc, #844]	; (d00017a4 <main+0x38c>)
d0001456:	601e      	str	r6, [r3, #0]
d0001458:	4bd3      	ldr	r3, [pc, #844]	; (d00017a8 <main+0x390>)
d000145a:	601e      	str	r6, [r3, #0]
d000145c:	4bd3      	ldr	r3, [pc, #844]	; (d00017ac <main+0x394>)
d000145e:	701e      	strb	r6, [r3, #0]
d0001460:	4bd3      	ldr	r3, [pc, #844]	; (d00017b0 <main+0x398>)
d0001462:	701e      	strb	r6, [r3, #0]
d0001464:	f8d4 30c0 	ldr.w	r3, [r4, #192]	; 0xc0
d0001468:	4798      	blx	r3
d000146a:	f7fe fe65 	bl	d0000138 <initDisplayBuffers>
d000146e:	f002 fe21 	bl	d00040b4 <InitStates>
d0001472:	f002 fd6b 	bl	d0003f4c <guClearButtons>
d0001476:	f001 f959 	bl	d000272c <ClearSong>
d000147a:	f001 fd7b 	bl	d0002f74 <initKFMSong>
d000147e:	4630      	mov	r0, r6
d0001480:	f7fe fee4 	bl	d000024c <StopChannel>
d0001484:	2001      	movs	r0, #1
d0001486:	f7fe fee1 	bl	d000024c <StopChannel>
d000148a:	2002      	movs	r0, #2
d000148c:	f7fe fede 	bl	d000024c <StopChannel>
d0001490:	2003      	movs	r0, #3
d0001492:	f7fe fedb 	bl	d000024c <StopChannel>
d0001496:	2004      	movs	r0, #4
d0001498:	f7fe fed8 	bl	d000024c <StopChannel>
d000149c:	2005      	movs	r0, #5
d000149e:	f7fe fed5 	bl	d000024c <StopChannel>
d00014a2:	2006      	movs	r0, #6
d00014a4:	f7fe fed2 	bl	d000024c <StopChannel>
d00014a8:	2007      	movs	r0, #7
d00014aa:	f7fe fecf 	bl	d000024c <StopChannel>
d00014ae:	f001 fa09 	bl	d00028c4 <StopTimer>
d00014b2:	49c0      	ldr	r1, [pc, #768]	; (d00017b4 <main+0x39c>)
d00014b4:	f8d4 3108 	ldr.w	r3, [r4, #264]	; 0x108
d00014b8:	1f0a      	subs	r2, r1, #4
d00014ba:	f201 75fc 	addw	r5, r1, #2044	; 0x7fc
d00014be:	f852 4b08 	ldr.w	r4, [r2], #8
d00014c2:	3308      	adds	r3, #8
d00014c4:	f851 0b08 	ldr.w	r0, [r1], #8
d00014c8:	42aa      	cmp	r2, r5
d00014ca:	f843 4c08 	str.w	r4, [r3, #-8]
d00014ce:	f843 0c04 	str.w	r0, [r3, #-4]
d00014d2:	d1f4      	bne.n	d00014be <main+0xa6>
d00014d4:	2106      	movs	r1, #6
d00014d6:	2096      	movs	r0, #150	; 0x96
d00014d8:	f8df 82ac 	ldr.w	r8, [pc, #684]	; d0001788 <main+0x370>
d00014dc:	f001 f9b6 	bl	d000284c <setTempoSpeed>
d00014e0:	f04f 0901 	mov.w	r9, #1
d00014e4:	f001 f8e8 	bl	d00026b8 <initNoteLabels>
d00014e8:	f001 ff32 	bl	d0003350 <setupTestSynths>
d00014ec:	4bb2      	ldr	r3, [pc, #712]	; (d00017b8 <main+0x3a0>)
d00014ee:	2103      	movs	r1, #3
d00014f0:	20dc      	movs	r0, #220	; 0xdc
d00014f2:	f883 9000 	strb.w	r9, [r3]
d00014f6:	f04f 0a1b 	mov.w	sl, #27
d00014fa:	f8d8 30bc 	ldr.w	r3, [r8, #188]	; 0xbc
d00014fe:	2519      	movs	r5, #25
d0001500:	4798      	blx	r3
d0001502:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0001506:	f44f 73a0 	mov.w	r3, #320	; 0x140
d000150a:	2002      	movs	r0, #2
d000150c:	f8d8 40e8 	ldr.w	r4, [r8, #232]	; 0xe8
d0001510:	f04f 0b32 	mov.w	fp, #50	; 0x32
d0001514:	4619      	mov	r1, r3
d0001516:	9000      	str	r0, [sp, #0]
d0001518:	4610      	mov	r0, r2
d000151a:	47a0      	blx	r4
d000151c:	f8d8 30d8 	ldr.w	r3, [r8, #216]	; 0xd8
d0001520:	2100      	movs	r1, #0
d0001522:	48a6      	ldr	r0, [pc, #664]	; (d00017bc <main+0x3a4>)
d0001524:	4798      	blx	r3
d0001526:	4649      	mov	r1, r9
d0001528:	f8d8 30d8 	ldr.w	r3, [r8, #216]	; 0xd8
d000152c:	48a3      	ldr	r0, [pc, #652]	; (d00017bc <main+0x3a4>)
d000152e:	4798      	blx	r3
d0001530:	f8d8 3118 	ldr.w	r3, [r8, #280]	; 0x118
d0001534:	2000      	movs	r0, #0
d0001536:	4ca2      	ldr	r4, [pc, #648]	; (d00017c0 <main+0x3a8>)
d0001538:	4798      	blx	r3
d000153a:	f8d8 311c 	ldr.w	r3, [r8, #284]	; 0x11c
d000153e:	2000      	movs	r0, #0
d0001540:	4798      	blx	r3
d0001542:	f8d8 2050 	ldr.w	r2, [r8, #80]	; 0x50
d0001546:	499f      	ldr	r1, [pc, #636]	; (d00017c4 <main+0x3ac>)
d0001548:	f44f 7080 	mov.w	r0, #256	; 0x100
d000154c:	f8d8 3194 	ldr.w	r3, [r8, #404]	; 0x194
d0001550:	6091      	str	r1, [r2, #8]
d0001552:	4798      	blx	r3
d0001554:	4648      	mov	r0, r9
d0001556:	f8d8 3160 	ldr.w	r3, [r8, #352]	; 0x160
d000155a:	4798      	blx	r3
d000155c:	f8d8 3110 	ldr.w	r3, [r8, #272]	; 0x110
d0001560:	2005      	movs	r0, #5
d0001562:	f883 9000 	strb.w	r9, [r3]
d0001566:	f8d8 311c 	ldr.w	r3, [r8, #284]	; 0x11c
d000156a:	4798      	blx	r3
d000156c:	f7fe fe2e 	bl	d00001cc <SetDrawToBackLayer>
d0001570:	f8d8 20f8 	ldr.w	r2, [r8, #248]	; 0xf8
d0001574:	f04f 0103 	mov.w	r1, #3
d0001578:	2300      	movs	r3, #0
d000157a:	4648      	mov	r0, r9
d000157c:	f04f 0918 	mov.w	r9, #24
d0001580:	7011      	strb	r1, [r2, #0]
d0001582:	2109      	movs	r1, #9
d0001584:	461a      	mov	r2, r3
d0001586:	e9cd a101 	strd	sl, r1, [sp, #4]
d000158a:	211c      	movs	r1, #28
d000158c:	9100      	str	r1, [sp, #0]
d000158e:	498e      	ldr	r1, [pc, #568]	; (d00017c8 <main+0x3b0>)
d0001590:	f002 fb58 	bl	d0003c44 <CreateButton>
d0001594:	2204      	movs	r2, #4
d0001596:	2106      	movs	r1, #6
d0001598:	4653      	mov	r3, sl
d000159a:	9201      	str	r2, [sp, #4]
d000159c:	201e      	movs	r0, #30
d000159e:	f44f 72ac 	mov.w	r2, #344	; 0x158
d00015a2:	9100      	str	r1, [sp, #0]
d00015a4:	2100      	movs	r1, #0
d00015a6:	f002 f9ed 	bl	d0003984 <uiDrawBeval>
d00015aa:	f8d8 30f8 	ldr.w	r3, [r8, #248]	; 0xf8
d00015ae:	22ff      	movs	r2, #255	; 0xff
d00015b0:	f10d 0c20 	add.w	ip, sp, #32
d00015b4:	701a      	strb	r2, [r3, #0]
d00015b6:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d00015b8:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d00015bc:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d00015be:	f8d4 e000 	ldr.w	lr, [r4]
d00015c2:	243a      	movs	r4, #58	; 0x3a
d00015c4:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d00015c8:	aa08      	add	r2, sp, #32
d00015ca:	f88c e000 	strb.w	lr, [ip]
d00015ce:	2107      	movs	r1, #7
d00015d0:	f8d8 3148 	ldr.w	r3, [r8, #328]	; 0x148
d00015d4:	2028      	movs	r0, #40	; 0x28
d00015d6:	4798      	blx	r3
d00015d8:	2311      	movs	r3, #17
d00015da:	220a      	movs	r2, #10
d00015dc:	497b      	ldr	r1, [pc, #492]	; (d00017cc <main+0x3b4>)
d00015de:	9400      	str	r4, [sp, #0]
d00015e0:	203f      	movs	r0, #63	; 0x3f
d00015e2:	e9cd 5301 	strd	r5, r3, [sp, #4]
d00015e6:	233c      	movs	r3, #60	; 0x3c
d00015e8:	f002 fb2c 	bl	d0003c44 <CreateButton>
d00015ec:	2311      	movs	r3, #17
d00015ee:	2246      	movs	r2, #70	; 0x46
d00015f0:	4977      	ldr	r1, [pc, #476]	; (d00017d0 <main+0x3b8>)
d00015f2:	9400      	str	r4, [sp, #0]
d00015f4:	203e      	movs	r0, #62	; 0x3e
d00015f6:	2408      	movs	r4, #8
d00015f8:	e9cd 5301 	strd	r5, r3, [sp, #4]
d00015fc:	233c      	movs	r3, #60	; 0x3c
d00015fe:	f002 fb21 	bl	d0003c44 <CreateButton>
d0001602:	2309      	movs	r3, #9
d0001604:	f44f 72bc 	mov.w	r2, #376	; 0x178
d0001608:	4972      	ldr	r1, [pc, #456]	; (d00017d4 <main+0x3bc>)
d000160a:	2015      	movs	r0, #21
d000160c:	f8cd b000 	str.w	fp, [sp]
d0001610:	e9cd a301 	strd	sl, r3, [sp, #4]
d0001614:	2300      	movs	r3, #0
d0001616:	f002 fb15 	bl	d0003c44 <CreateButton>
d000161a:	2309      	movs	r3, #9
d000161c:	f44f 72d6 	mov.w	r2, #428	; 0x1ac
d0001620:	496d      	ldr	r1, [pc, #436]	; (d00017d8 <main+0x3c0>)
d0001622:	2016      	movs	r0, #22
d0001624:	f8cd b000 	str.w	fp, [sp]
d0001628:	e9cd a301 	strd	sl, r3, [sp, #4]
d000162c:	2300      	movs	r3, #0
d000162e:	f002 fb09 	bl	d0003c44 <CreateButton>
d0001632:	4650      	mov	r0, sl
d0001634:	f240 1305 	movw	r3, #261	; 0x105
d0001638:	f44f 72b9 	mov.w	r2, #370	; 0x172
d000163c:	4967      	ldr	r1, [pc, #412]	; (d00017dc <main+0x3c4>)
d000163e:	f04f 0a16 	mov.w	sl, #22
d0001642:	9501      	str	r5, [sp, #4]
d0001644:	9402      	str	r4, [sp, #8]
d0001646:	f8cd 9000 	str.w	r9, [sp]
d000164a:	f002 fafb 	bl	d0003c44 <CreateButton>
d000164e:	f240 1305 	movw	r3, #261	; 0x105
d0001652:	f44f 72c6 	mov.w	r2, #396	; 0x18c
d0001656:	4962      	ldr	r1, [pc, #392]	; (d00017e0 <main+0x3c8>)
d0001658:	f8cd 9000 	str.w	r9, [sp]
d000165c:	201c      	movs	r0, #28
d000165e:	e9cd 5401 	strd	r5, r4, [sp, #4]
d0001662:	f002 faef 	bl	d0003c44 <CreateButton>
d0001666:	f240 1305 	movw	r3, #261	; 0x105
d000166a:	f44f 72d3 	mov.w	r2, #422	; 0x1a6
d000166e:	495d      	ldr	r1, [pc, #372]	; (d00017e4 <main+0x3cc>)
d0001670:	f8cd 9000 	str.w	r9, [sp]
d0001674:	201d      	movs	r0, #29
d0001676:	e9cd 5401 	strd	r5, r4, [sp, #4]
d000167a:	f002 fae3 	bl	d0003c44 <CreateButton>
d000167e:	f240 1305 	movw	r3, #261	; 0x105
d0001682:	f44f 72e0 	mov.w	r2, #448	; 0x1c0
d0001686:	4958      	ldr	r1, [pc, #352]	; (d00017e8 <main+0x3d0>)
d0001688:	f8cd 9000 	str.w	r9, [sp]
d000168c:	201e      	movs	r0, #30
d000168e:	e9cd 5401 	strd	r5, r4, [sp, #4]
d0001692:	f002 fad7 	bl	d0003c44 <CreateButton>
d0001696:	f44f 7390 	mov.w	r3, #288	; 0x120
d000169a:	f44f 72b9 	mov.w	r2, #370	; 0x172
d000169e:	4953      	ldr	r1, [pc, #332]	; (d00017ec <main+0x3d4>)
d00016a0:	f8cd 9000 	str.w	r9, [sp]
d00016a4:	201f      	movs	r0, #31
d00016a6:	e9cd 5401 	strd	r5, r4, [sp, #4]
d00016aa:	f002 facb 	bl	d0003c44 <CreateButton>
d00016ae:	f44f 7390 	mov.w	r3, #288	; 0x120
d00016b2:	f44f 72c6 	mov.w	r2, #396	; 0x18c
d00016b6:	494e      	ldr	r1, [pc, #312]	; (d00017f0 <main+0x3d8>)
d00016b8:	f8cd 9000 	str.w	r9, [sp]
d00016bc:	2020      	movs	r0, #32
d00016be:	e9cd 5401 	strd	r5, r4, [sp, #4]
d00016c2:	f002 fabf 	bl	d0003c44 <CreateButton>
d00016c6:	f44f 7390 	mov.w	r3, #288	; 0x120
d00016ca:	f44f 72d3 	mov.w	r2, #422	; 0x1a6
d00016ce:	4949      	ldr	r1, [pc, #292]	; (d00017f4 <main+0x3dc>)
d00016d0:	f8cd 9000 	str.w	r9, [sp]
d00016d4:	2021      	movs	r0, #33	; 0x21
d00016d6:	e9cd 5401 	strd	r5, r4, [sp, #4]
d00016da:	f002 fab3 	bl	d0003c44 <CreateButton>
d00016de:	f44f 7390 	mov.w	r3, #288	; 0x120
d00016e2:	f44f 72e0 	mov.w	r2, #448	; 0x1c0
d00016e6:	4944      	ldr	r1, [pc, #272]	; (d00017f8 <main+0x3e0>)
d00016e8:	f8cd 9000 	str.w	r9, [sp]
d00016ec:	2022      	movs	r0, #34	; 0x22
d00016ee:	e9cd 5401 	strd	r5, r4, [sp, #4]
d00016f2:	f002 faa7 	bl	d0003c44 <CreateButton>
d00016f6:	23a7      	movs	r3, #167	; 0xa7
d00016f8:	f44f 72b9 	mov.w	r2, #370	; 0x172
d00016fc:	493f      	ldr	r1, [pc, #252]	; (d00017fc <main+0x3e4>)
d00016fe:	2002      	movs	r0, #2
d0001700:	f8cd b000 	str.w	fp, [sp]
d0001704:	e9cd 5401 	strd	r5, r4, [sp, #4]
d0001708:	f002 fa9c 	bl	d0003c44 <CreateButton>
d000170c:	23c2      	movs	r3, #194	; 0xc2
d000170e:	f44f 72b9 	mov.w	r2, #370	; 0x172
d0001712:	493b      	ldr	r1, [pc, #236]	; (d0001800 <main+0x3e8>)
d0001714:	2003      	movs	r0, #3
d0001716:	f8cd b000 	str.w	fp, [sp]
d000171a:	e9cd 5401 	strd	r5, r4, [sp, #4]
d000171e:	f002 fa91 	bl	d0003c44 <CreateButton>
d0001722:	23dd      	movs	r3, #221	; 0xdd
d0001724:	f44f 72b9 	mov.w	r2, #370	; 0x172
d0001728:	4936      	ldr	r1, [pc, #216]	; (d0001804 <main+0x3ec>)
d000172a:	2004      	movs	r0, #4
d000172c:	f8cd b000 	str.w	fp, [sp]
d0001730:	e9cd 5401 	strd	r5, r4, [sp, #4]
d0001734:	f002 fa86 	bl	d0003c44 <CreateButton>
d0001738:	23dd      	movs	r3, #221	; 0xdd
d000173a:	f44f 72d3 	mov.w	r2, #422	; 0x1a6
d000173e:	4932      	ldr	r1, [pc, #200]	; (d0001808 <main+0x3f0>)
d0001740:	2005      	movs	r0, #5
d0001742:	f8cd b000 	str.w	fp, [sp]
d0001746:	e9cd 5401 	strd	r5, r4, [sp, #4]
d000174a:	f002 fa7b 	bl	d0003c44 <CreateButton>
d000174e:	23a7      	movs	r3, #167	; 0xa7
d0001750:	f44f 72d3 	mov.w	r2, #422	; 0x1a6
d0001754:	492d      	ldr	r1, [pc, #180]	; (d000180c <main+0x3f4>)
d0001756:	2006      	movs	r0, #6
d0001758:	f8cd b000 	str.w	fp, [sp]
d000175c:	e9cd 5401 	strd	r5, r4, [sp, #4]
d0001760:	f002 fa70 	bl	d0003c44 <CreateButton>
d0001764:	4645      	mov	r5, r8
d0001766:	f003 fb9b 	bl	d0004ea0 <ShowDefaultHomeConfigPage>
d000176a:	f001 fe3f 	bl	d00033ec <RenderTrackerBackGnd>
d000176e:	4a28      	ldr	r2, [pc, #160]	; (d0001810 <main+0x3f8>)
d0001770:	2191      	movs	r1, #145	; 0x91
d0001772:	202d      	movs	r0, #45	; 0x2d
d0001774:	f002 f8aa 	bl	d00038cc <uiTextDraw>
d0001778:	e04c      	b.n	d0001814 <main+0x3fc>
d000177a:	bf00      	nop
d000177c:	e000ed14 	.word	0xe000ed14
d0001780:	d000ef64 	.word	0xd000ef64
d0001784:	d0007220 	.word	0xd0007220
d0001788:	2001f000 	.word	0x2001f000
d000178c:	d000f01f 	.word	0xd000f01f
d0001790:	d000f024 	.word	0xd000f024
d0001794:	d000f01e 	.word	0xd000f01e
d0001798:	d000f034 	.word	0xd000f034
d000179c:	d000f02c 	.word	0xd000f02c
d00017a0:	d000f030 	.word	0xd000f030
d00017a4:	d000f028 	.word	0xd000f028
d00017a8:	d0031274 	.word	0xd0031274
d00017ac:	d000f043 	.word	0xd000f043
d00017b0:	d000f020 	.word	0xd000f020
d00017b4:	d0006a24 	.word	0xd0006a24
d00017b8:	d000eff8 	.word	0xd000eff8
d00017bc:	d0007338 	.word	0xd0007338
d00017c0:	d0007250 	.word	0xd0007250
d00017c4:	d0003fd1 	.word	0xd0003fd1
d00017c8:	d0007334 	.word	0xd0007334
d00017cc:	d0007274 	.word	0xd0007274
d00017d0:	d0007278 	.word	0xd0007278
d00017d4:	d0007280 	.word	0xd0007280
d00017d8:	d0007288 	.word	0xd0007288
d00017dc:	d0007290 	.word	0xd0007290
d00017e0:	d0007294 	.word	0xd0007294
d00017e4:	d0007298 	.word	0xd0007298
d00017e8:	d000729c 	.word	0xd000729c
d00017ec:	d00072a0 	.word	0xd00072a0
d00017f0:	d00072a4 	.word	0xd00072a4
d00017f4:	d00072a8 	.word	0xd00072a8
d00017f8:	d00072ac 	.word	0xd00072ac
d00017fc:	d00072b0 	.word	0xd00072b0
d0001800:	d000690c 	.word	0xd000690c
d0001804:	d00072b8 	.word	0xd00072b8
d0001808:	d00072c0 	.word	0xd00072c0
d000180c:	d00072c4 	.word	0xd00072c4
d0001810:	d00072cc 	.word	0xd00072cc
d0001814:	4aa7      	ldr	r2, [pc, #668]	; (d0001ab4 <main+0x69c>)
d0001816:	2191      	movs	r1, #145	; 0x91
d0001818:	20be      	movs	r0, #190	; 0xbe
d000181a:	f002 f857 	bl	d00038cc <uiTextDraw>
d000181e:	4ba6      	ldr	r3, [pc, #664]	; (d0001ab8 <main+0x6a0>)
d0001820:	4aa6      	ldr	r2, [pc, #664]	; (d0001abc <main+0x6a4>)
d0001822:	2191      	movs	r1, #145	; 0x91
d0001824:	2064      	movs	r0, #100	; 0x64
d0001826:	5ad2      	ldrh	r2, [r2, r3]
d0001828:	f002 f88e 	bl	d0003948 <uiTextDrawNumber3>
d000182c:	238d      	movs	r3, #141	; 0x8d
d000182e:	2282      	movs	r2, #130	; 0x82
d0001830:	49a3      	ldr	r1, [pc, #652]	; (d0001ac0 <main+0x6a8>)
d0001832:	9402      	str	r4, [sp, #8]
d0001834:	200f      	movs	r0, #15
d0001836:	f8cd 9000 	str.w	r9, [sp]
d000183a:	f8cd a004 	str.w	sl, [sp, #4]
d000183e:	f002 fa01 	bl	d0003c44 <CreateButton>
d0001842:	238d      	movs	r3, #141	; 0x8d
d0001844:	229c      	movs	r2, #156	; 0x9c
d0001846:	499f      	ldr	r1, [pc, #636]	; (d0001ac4 <main+0x6ac>)
d0001848:	f8cd 9000 	str.w	r9, [sp]
d000184c:	2010      	movs	r0, #16
d000184e:	e9cd a401 	strd	sl, r4, [sp, #4]
d0001852:	f002 f9f7 	bl	d0003c44 <CreateButton>
d0001856:	238d      	movs	r3, #141	; 0x8d
d0001858:	22f0      	movs	r2, #240	; 0xf0
d000185a:	499b      	ldr	r1, [pc, #620]	; (d0001ac8 <main+0x6b0>)
d000185c:	f8cd 9000 	str.w	r9, [sp]
d0001860:	2011      	movs	r0, #17
d0001862:	e9cd a401 	strd	sl, r4, [sp, #4]
d0001866:	f002 f9ed 	bl	d0003c44 <CreateButton>
d000186a:	238d      	movs	r3, #141	; 0x8d
d000186c:	f44f 7296 	mov.w	r2, #300	; 0x12c
d0001870:	4996      	ldr	r1, [pc, #600]	; (d0001acc <main+0x6b4>)
d0001872:	f8cd 9000 	str.w	r9, [sp]
d0001876:	2012      	movs	r0, #18
d0001878:	e9cd a401 	strd	sl, r4, [sp, #4]
d000187c:	f002 f9e2 	bl	d0003c44 <CreateButton>
d0001880:	238d      	movs	r3, #141	; 0x8d
d0001882:	f44f 72aa 	mov.w	r2, #340	; 0x154
d0001886:	4992      	ldr	r1, [pc, #584]	; (d0001ad0 <main+0x6b8>)
d0001888:	f8cd 9000 	str.w	r9, [sp]
d000188c:	2017      	movs	r0, #23
d000188e:	e9cd a401 	strd	sl, r4, [sp, #4]
d0001892:	f002 f9d7 	bl	d0003c44 <CreateButton>
d0001896:	4648      	mov	r0, r9
d0001898:	238d      	movs	r3, #141	; 0x8d
d000189a:	f44f 72b7 	mov.w	r2, #366	; 0x16e
d000189e:	498d      	ldr	r1, [pc, #564]	; (d0001ad4 <main+0x6bc>)
d00018a0:	f8cd 9000 	str.w	r9, [sp]
d00018a4:	e9cd a401 	strd	sl, r4, [sp, #4]
d00018a8:	f002 f9cc 	bl	d0003c44 <CreateButton>
d00018ac:	2410      	movs	r4, #16
d00018ae:	f8d8 00f8 	ldr.w	r0, [r8, #248]	; 0xf8
d00018b2:	2192      	movs	r1, #146	; 0x92
d00018b4:	4b88      	ldr	r3, [pc, #544]	; (d0001ad8 <main+0x6c0>)
d00018b6:	aa08      	add	r2, sp, #32
d00018b8:	7004      	strb	r4, [r0, #0]
d00018ba:	f44f 7087 	mov.w	r0, #270	; 0x10e
d00018be:	9308      	str	r3, [sp, #32]
d00018c0:	f8d8 3148 	ldr.w	r3, [r8, #328]	; 0x148
d00018c4:	4798      	blx	r3
d00018c6:	f8d8 3050 	ldr.w	r3, [r8, #80]	; 0x50
d00018ca:	4a84      	ldr	r2, [pc, #528]	; (d0001adc <main+0x6c4>)
d00018cc:	60da      	str	r2, [r3, #12]
d00018ce:	f002 fb33 	bl	d0003f38 <guRenderButtons>
d00018d2:	2000      	movs	r0, #0
d00018d4:	f7fe fc54 	bl	d0000180 <ShowBuffer>
d00018d8:	2300      	movs	r3, #0
d00018da:	4a81      	ldr	r2, [pc, #516]	; (d0001ae0 <main+0x6c8>)
d00018dc:	4699      	mov	r9, r3
d00018de:	6013      	str	r3, [r2, #0]
d00018e0:	4a80      	ldr	r2, [pc, #512]	; (d0001ae4 <main+0x6cc>)
d00018e2:	6013      	str	r3, [r2, #0]
d00018e4:	4a80      	ldr	r2, [pc, #512]	; (d0001ae8 <main+0x6d0>)
d00018e6:	7013      	strb	r3, [r2, #0]
d00018e8:	4a80      	ldr	r2, [pc, #512]	; (d0001aec <main+0x6d4>)
d00018ea:	6013      	str	r3, [r2, #0]
d00018ec:	4a80      	ldr	r2, [pc, #512]	; (d0001af0 <main+0x6d8>)
d00018ee:	6013      	str	r3, [r2, #0]
d00018f0:	e052      	b.n	d0001998 <main+0x580>
d00018f2:	f109 0901 	add.w	r9, r9, #1
d00018f6:	f1b9 0f04 	cmp.w	r9, #4
d00018fa:	f300 8440 	bgt.w	d000217e <main+0xd66>
d00018fe:	f8d5 3118 	ldr.w	r3, [r5, #280]	; 0x118
d0001902:	2000      	movs	r0, #0
d0001904:	4798      	blx	r3
d0001906:	f002 fb47 	bl	d0003f98 <getEvents>
d000190a:	2800      	cmp	r0, #0
d000190c:	d15e      	bne.n	d00019cc <main+0x5b4>
d000190e:	4b79      	ldr	r3, [pc, #484]	; (d0001af4 <main+0x6dc>)
d0001910:	781b      	ldrb	r3, [r3, #0]
d0001912:	2b01      	cmp	r3, #1
d0001914:	f000 8163 	beq.w	d0001bde <main+0x7c6>
d0001918:	4b73      	ldr	r3, [pc, #460]	; (d0001ae8 <main+0x6d0>)
d000191a:	781b      	ldrb	r3, [r3, #0]
d000191c:	b173      	cbz	r3, d000193c <main+0x524>
d000191e:	4b71      	ldr	r3, [pc, #452]	; (d0001ae4 <main+0x6cc>)
d0001920:	681b      	ldr	r3, [r3, #0]
d0001922:	2b00      	cmp	r3, #0
d0001924:	f000 8160 	beq.w	d0001be8 <main+0x7d0>
d0001928:	2b1e      	cmp	r3, #30
d000192a:	f000 815d 	beq.w	d0001be8 <main+0x7d0>
d000192e:	2b00      	cmp	r3, #0
d0001930:	4a6c      	ldr	r2, [pc, #432]	; (d0001ae4 <main+0x6cc>)
d0001932:	bfd4      	ite	le
d0001934:	2300      	movle	r3, #0
d0001936:	f103 33ff 	addgt.w	r3, r3, #4294967295	; 0xffffffff
d000193a:	6013      	str	r3, [r2, #0]
d000193c:	683b      	ldr	r3, [r7, #0]
d000193e:	3301      	adds	r3, #1
d0001940:	2b14      	cmp	r3, #20
d0001942:	dc35      	bgt.n	d00019b0 <main+0x598>
d0001944:	603b      	str	r3, [r7, #0]
d0001946:	4b6c      	ldr	r3, [pc, #432]	; (d0001af8 <main+0x6e0>)
d0001948:	781b      	ldrb	r3, [r3, #0]
d000194a:	2b03      	cmp	r3, #3
d000194c:	d03b      	beq.n	d00019c6 <main+0x5ae>
d000194e:	f8d5 20ec 	ldr.w	r2, [r5, #236]	; 0xec
d0001952:	f8d5 30f4 	ldr.w	r3, [r5, #244]	; 0xf4
d0001956:	b336      	cbz	r6, d00019a6 <main+0x58e>
d0001958:	4968      	ldr	r1, [pc, #416]	; (d0001afc <main+0x6e4>)
d000195a:	6011      	str	r1, [r2, #0]
d000195c:	4a68      	ldr	r2, [pc, #416]	; (d0001b00 <main+0x6e8>)
d000195e:	601a      	str	r2, [r3, #0]
d0001960:	f001 fde8 	bl	d0003534 <RenderTracker>
d0001964:	f8d5 20f4 	ldr.w	r2, [r5, #244]	; 0xf4
d0001968:	4b66      	ldr	r3, [pc, #408]	; (d0001b04 <main+0x6ec>)
d000196a:	6812      	ldr	r2, [r2, #0]
d000196c:	681b      	ldr	r3, [r3, #0]
d000196e:	429a      	cmp	r2, r3
d0001970:	d001      	beq.n	d0001976 <main+0x55e>
d0001972:	6b6b      	ldr	r3, [r5, #52]	; 0x34
d0001974:	4798      	blx	r3
d0001976:	4630      	mov	r0, r6
d0001978:	f1c6 0601 	rsb	r6, r6, #1
d000197c:	f7fe fc00 	bl	d0000180 <ShowBuffer>
d0001980:	696b      	ldr	r3, [r5, #20]
d0001982:	f8d5 20f0 	ldr.w	r2, [r5, #240]	; 0xf0
d0001986:	f44f 3116 	mov.w	r1, #153600	; 0x25800
d000198a:	b2f6      	uxtb	r6, r6
d000198c:	6810      	ldr	r0, [r2, #0]
d000198e:	4798      	blx	r3
d0001990:	f8d5 30c4 	ldr.w	r3, [r5, #196]	; 0xc4
d0001994:	2081      	movs	r0, #129	; 0x81
d0001996:	4798      	blx	r3
d0001998:	69eb      	ldr	r3, [r5, #28]
d000199a:	4798      	blx	r3
d000199c:	f010 0002 	ands.w	r0, r0, #2
d00019a0:	d1a7      	bne.n	d00018f2 <main+0x4da>
d00019a2:	4681      	mov	r9, r0
d00019a4:	e7ab      	b.n	d00018fe <main+0x4e6>
d00019a6:	4956      	ldr	r1, [pc, #344]	; (d0001b00 <main+0x6e8>)
d00019a8:	6011      	str	r1, [r2, #0]
d00019aa:	4a54      	ldr	r2, [pc, #336]	; (d0001afc <main+0x6e4>)
d00019ac:	601a      	str	r2, [r3, #0]
d00019ae:	e7d7      	b.n	d0001960 <main+0x548>
d00019b0:	4955      	ldr	r1, [pc, #340]	; (d0001b08 <main+0x6f0>)
d00019b2:	2200      	movs	r2, #0
d00019b4:	780b      	ldrb	r3, [r1, #0]
d00019b6:	603a      	str	r2, [r7, #0]
d00019b8:	f1c3 0301 	rsb	r3, r3, #1
d00019bc:	700b      	strb	r3, [r1, #0]
d00019be:	4b4e      	ldr	r3, [pc, #312]	; (d0001af8 <main+0x6e0>)
d00019c0:	781b      	ldrb	r3, [r3, #0]
d00019c2:	2b03      	cmp	r3, #3
d00019c4:	d1c3      	bne.n	d000194e <main+0x536>
d00019c6:	f7fe ff51 	bl	d000086c <FileRequestFileStringUpdater>
d00019ca:	e7c0      	b.n	d000194e <main+0x536>
d00019cc:	2004      	movs	r0, #4
d00019ce:	f002 fad9 	bl	d0003f84 <get_event>
d00019d2:	f002 fb27 	bl	d0004024 <GUIEvents>
d00019d6:	4682      	mov	sl, r0
d00019d8:	2010      	movs	r0, #16
d00019da:	f002 fad3 	bl	d0003f84 <get_event>
d00019de:	b120      	cbz	r0, d00019ea <main+0x5d2>
d00019e0:	4b45      	ldr	r3, [pc, #276]	; (d0001af8 <main+0x6e0>)
d00019e2:	781b      	ldrb	r3, [r3, #0]
d00019e4:	2b03      	cmp	r3, #3
d00019e6:	f040 81c3 	bne.w	d0001d70 <main+0x958>
d00019ea:	2020      	movs	r0, #32
d00019ec:	f002 faca 	bl	d0003f84 <get_event>
d00019f0:	2800      	cmp	r0, #0
d00019f2:	f000 80cf 	beq.w	d0001b94 <main+0x77c>
d00019f6:	4a45      	ldr	r2, [pc, #276]	; (d0001b0c <main+0x6f4>)
d00019f8:	4b45      	ldr	r3, [pc, #276]	; (d0001b10 <main+0x6f8>)
d00019fa:	7812      	ldrb	r2, [r2, #0]
d00019fc:	493e      	ldr	r1, [pc, #248]	; (d0001af8 <main+0x6e0>)
d00019fe:	fba3 0302 	umull	r0, r3, r3, r2
d0001a02:	7809      	ldrb	r1, [r1, #0]
d0001a04:	089b      	lsrs	r3, r3, #2
d0001a06:	2903      	cmp	r1, #3
d0001a08:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0001a0c:	eba2 0343 	sub.w	r3, r2, r3, lsl #1
d0001a10:	fa5f f883 	uxtb.w	r8, r3
d0001a14:	f000 808b 	beq.w	d0001b2e <main+0x716>
d0001a18:	4c3e      	ldr	r4, [pc, #248]	; (d0001b14 <main+0x6fc>)
d0001a1a:	4b3f      	ldr	r3, [pc, #252]	; (d0001b18 <main+0x700>)
d0001a1c:	781b      	ldrb	r3, [r3, #0]
d0001a1e:	2b00      	cmp	r3, #0
d0001a20:	f040 8264 	bne.w	d0001eec <main+0xad4>
d0001a24:	7821      	ldrb	r1, [r4, #0]
d0001a26:	f1b8 0f00 	cmp.w	r8, #0
d0001a2a:	f040 827c 	bne.w	d0001f26 <main+0xb0e>
d0001a2e:	f8df 80f4 	ldr.w	r8, [pc, #244]	; d0001b24 <main+0x70c>
d0001a32:	f108 0234 	add.w	r2, r8, #52	; 0x34
d0001a36:	e01a      	b.n	d0001a6e <main+0x656>
d0001a38:	7861      	ldrb	r1, [r4, #1]
d0001a3a:	428b      	cmp	r3, r1
d0001a3c:	d01b      	beq.n	d0001a76 <main+0x65e>
d0001a3e:	78a1      	ldrb	r1, [r4, #2]
d0001a40:	428b      	cmp	r3, r1
d0001a42:	d018      	beq.n	d0001a76 <main+0x65e>
d0001a44:	78e1      	ldrb	r1, [r4, #3]
d0001a46:	428b      	cmp	r3, r1
d0001a48:	d015      	beq.n	d0001a76 <main+0x65e>
d0001a4a:	7921      	ldrb	r1, [r4, #4]
d0001a4c:	428b      	cmp	r3, r1
d0001a4e:	d012      	beq.n	d0001a76 <main+0x65e>
d0001a50:	7961      	ldrb	r1, [r4, #5]
d0001a52:	428b      	cmp	r3, r1
d0001a54:	d00f      	beq.n	d0001a76 <main+0x65e>
d0001a56:	79a1      	ldrb	r1, [r4, #6]
d0001a58:	428b      	cmp	r3, r1
d0001a5a:	d00c      	beq.n	d0001a76 <main+0x65e>
d0001a5c:	79e1      	ldrb	r1, [r4, #7]
d0001a5e:	428b      	cmp	r3, r1
d0001a60:	d009      	beq.n	d0001a76 <main+0x65e>
d0001a62:	f108 0802 	add.w	r8, r8, #2
d0001a66:	4542      	cmp	r2, r8
d0001a68:	f000 8094 	beq.w	d0001b94 <main+0x77c>
d0001a6c:	7821      	ldrb	r1, [r4, #0]
d0001a6e:	f898 3001 	ldrb.w	r3, [r8, #1]
d0001a72:	428b      	cmp	r3, r1
d0001a74:	d1e0      	bne.n	d0001a38 <main+0x620>
d0001a76:	4b29      	ldr	r3, [pc, #164]	; (d0001b1c <main+0x704>)
d0001a78:	f898 b000 	ldrb.w	fp, [r8]
d0001a7c:	781b      	ldrb	r3, [r3, #0]
d0001a7e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0001a82:	eb0b 0b83 	add.w	fp, fp, r3, lsl #2
d0001a86:	fa4f fb8b 	sxtb.w	fp, fp
d0001a8a:	2900      	cmp	r1, #0
d0001a8c:	d0e9      	beq.n	d0001a62 <main+0x64a>
d0001a8e:	f1bb 0f47 	cmp.w	fp, #71	; 0x47
d0001a92:	dce6      	bgt.n	d0001a62 <main+0x64a>
d0001a94:	4658      	mov	r0, fp
d0001a96:	f001 fbc1 	bl	d000321c <PlayNoteKeyDown>
d0001a9a:	4b1f      	ldr	r3, [pc, #124]	; (d0001b18 <main+0x700>)
d0001a9c:	4a20      	ldr	r2, [pc, #128]	; (d0001b20 <main+0x708>)
d0001a9e:	781b      	ldrb	r3, [r3, #0]
d0001aa0:	2b00      	cmp	r3, #0
d0001aa2:	d0de      	beq.n	d0001a62 <main+0x64a>
d0001aa4:	4658      	mov	r0, fp
d0001aa6:	f001 fabb 	bl	d0003020 <PlaceNote>
d0001aaa:	2001      	movs	r0, #1
d0001aac:	f001 fd2a 	bl	d0003504 <MovePatternRow>
d0001ab0:	4a1b      	ldr	r2, [pc, #108]	; (d0001b20 <main+0x708>)
d0001ab2:	e7d6      	b.n	d0001a62 <main+0x64a>
d0001ab4:	d00072d4 	.word	0xd00072d4
d0001ab8:	00020364 	.word	0x00020364
d0001abc:	d0031280 	.word	0xd0031280
d0001ac0:	d00069b4 	.word	0xd00069b4
d0001ac4:	d00069bc 	.word	0xd00069bc
d0001ac8:	d00072dc 	.word	0xd00072dc
d0001acc:	d00072e0 	.word	0xd00072e0
d0001ad0:	d00072e4 	.word	0xd00072e4
d0001ad4:	d00072e8 	.word	0xd00072e8
d0001ad8:	00342d31 	.word	0x00342d31
d0001adc:	d0001011 	.word	0xd0001011
d0001ae0:	d000f034 	.word	0xd000f034
d0001ae4:	d000f02c 	.word	0xd000f02c
d0001ae8:	d000f030 	.word	0xd000f030
d0001aec:	d000f028 	.word	0xd000f028
d0001af0:	d0031274 	.word	0xd0031274
d0001af4:	d000f01e 	.word	0xd000f01e
d0001af8:	d000f04c 	.word	0xd000f04c
d0001afc:	d06d9000 	.word	0xd06d9000
d0001b00:	d06b2000 	.word	0xd06b2000
d0001b04:	d000f0b0 	.word	0xd000f0b0
d0001b08:	d000f020 	.word	0xd000f020
d0001b0c:	d000f041 	.word	0xd000f041
d0001b10:	aaaaaaab 	.word	0xaaaaaaab
d0001b14:	d003126c 	.word	0xd003126c
d0001b18:	d000f043 	.word	0xd000f043
d0001b1c:	d000f042 	.word	0xd000f042
d0001b20:	d000efd8 	.word	0xd000efd8
d0001b24:	d000efa4 	.word	0xd000efa4
d0001b28:	4620      	mov	r0, r4
d0001b2a:	f7fe fea9 	bl	d0000880 <FileRequestFileStringInjector>
d0001b2e:	f7fe fad3 	bl	d00000d8 <GetKeyAsciiInBuffer>
d0001b32:	b2c4      	uxtb	r4, r0
d0001b34:	2c0a      	cmp	r4, #10
d0001b36:	4620      	mov	r0, r4
d0001b38:	d0f9      	beq.n	d0001b2e <main+0x716>
d0001b3a:	f7fe fa99 	bl	d0000070 <is_valid_filename_char>
d0001b3e:	b11c      	cbz	r4, d0001b48 <main+0x730>
d0001b40:	2800      	cmp	r0, #0
d0001b42:	d1f1      	bne.n	d0001b28 <main+0x710>
d0001b44:	2c00      	cmp	r4, #0
d0001b46:	d1f2      	bne.n	d0001b2e <main+0x716>
d0001b48:	4c81      	ldr	r4, [pc, #516]	; (d0001d50 <main+0x938>)
d0001b4a:	7823      	ldrb	r3, [r4, #0]
d0001b4c:	2b2a      	cmp	r3, #42	; 0x2a
d0001b4e:	f000 83a9 	beq.w	d00022a4 <main+0xe8c>
d0001b52:	7863      	ldrb	r3, [r4, #1]
d0001b54:	2b2a      	cmp	r3, #42	; 0x2a
d0001b56:	f000 83a5 	beq.w	d00022a4 <main+0xe8c>
d0001b5a:	78a3      	ldrb	r3, [r4, #2]
d0001b5c:	2b2a      	cmp	r3, #42	; 0x2a
d0001b5e:	f000 83a1 	beq.w	d00022a4 <main+0xe8c>
d0001b62:	78e3      	ldrb	r3, [r4, #3]
d0001b64:	2b2a      	cmp	r3, #42	; 0x2a
d0001b66:	f000 839d 	beq.w	d00022a4 <main+0xe8c>
d0001b6a:	7923      	ldrb	r3, [r4, #4]
d0001b6c:	2b2a      	cmp	r3, #42	; 0x2a
d0001b6e:	f000 8399 	beq.w	d00022a4 <main+0xe8c>
d0001b72:	7963      	ldrb	r3, [r4, #5]
d0001b74:	2b2a      	cmp	r3, #42	; 0x2a
d0001b76:	f000 8395 	beq.w	d00022a4 <main+0xe8c>
d0001b7a:	79a3      	ldrb	r3, [r4, #6]
d0001b7c:	2b2a      	cmp	r3, #42	; 0x2a
d0001b7e:	f000 8391 	beq.w	d00022a4 <main+0xe8c>
d0001b82:	79e3      	ldrb	r3, [r4, #7]
d0001b84:	2b2a      	cmp	r3, #42	; 0x2a
d0001b86:	f000 838d 	beq.w	d00022a4 <main+0xe8c>
d0001b8a:	4b72      	ldr	r3, [pc, #456]	; (d0001d54 <main+0x93c>)
d0001b8c:	781b      	ldrb	r3, [r3, #0]
d0001b8e:	2b03      	cmp	r3, #3
d0001b90:	f47f af43 	bne.w	d0001a1a <main+0x602>
d0001b94:	2004      	movs	r0, #4
d0001b96:	f002 f9f5 	bl	d0003f84 <get_event>
d0001b9a:	b120      	cbz	r0, d0001ba6 <main+0x78e>
d0001b9c:	4b6d      	ldr	r3, [pc, #436]	; (d0001d54 <main+0x93c>)
d0001b9e:	781b      	ldrb	r3, [r3, #0]
d0001ba0:	2b03      	cmp	r3, #3
d0001ba2:	f000 82e0 	beq.w	d0002166 <main+0xd4e>
d0001ba6:	f01a 0f01 	tst.w	sl, #1
d0001baa:	d00b      	beq.n	d0001bc4 <main+0x7ac>
d0001bac:	2004      	movs	r0, #4
d0001bae:	f002 f9e9 	bl	d0003f84 <get_event>
d0001bb2:	2800      	cmp	r0, #0
d0001bb4:	f040 82b2 	bne.w	d000211c <main+0xd04>
d0001bb8:	2008      	movs	r0, #8
d0001bba:	f002 f9e3 	bl	d0003f84 <get_event>
d0001bbe:	2800      	cmp	r0, #0
d0001bc0:	f040 821a 	bne.w	d0001ff8 <main+0xbe0>
d0001bc4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0001bc8:	f002 f9ec 	bl	d0003fa4 <clearEvents>
d0001bcc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0001bd0:	f002 f9f0 	bl	d0003fb4 <EventTypeClear>
d0001bd4:	4b60      	ldr	r3, [pc, #384]	; (d0001d58 <main+0x940>)
d0001bd6:	781b      	ldrb	r3, [r3, #0]
d0001bd8:	2b01      	cmp	r3, #1
d0001bda:	f47f ae9d 	bne.w	d0001918 <main+0x500>
d0001bde:	f001 fe27 	bl	d0003830 <RenderConfirmYESNObox>
d0001be2:	4b5e      	ldr	r3, [pc, #376]	; (d0001d5c <main+0x944>)
d0001be4:	7018      	strb	r0, [r3, #0]
d0001be6:	e697      	b.n	d0001918 <main+0x500>
d0001be8:	4a5d      	ldr	r2, [pc, #372]	; (d0001d60 <main+0x948>)
d0001bea:	6812      	ldr	r2, [r2, #0]
d0001bec:	3a0f      	subs	r2, #15
d0001bee:	2a1e      	cmp	r2, #30
d0001bf0:	f63f ae9d 	bhi.w	d000192e <main+0x516>
d0001bf4:	a101      	add	r1, pc, #4	; (adr r1, d0001bfc <main+0x7e4>)
d0001bf6:	f851 f022 	ldr.w	pc, [r1, r2, lsl #2]
d0001bfa:	bf00      	nop
d0001bfc:	d0001d41 	.word	0xd0001d41
d0001c00:	d0001d0f 	.word	0xd0001d0f
d0001c04:	d000192f 	.word	0xd000192f
d0001c08:	d000192f 	.word	0xd000192f
d0001c0c:	d000192f 	.word	0xd000192f
d0001c10:	d000192f 	.word	0xd000192f
d0001c14:	d000192f 	.word	0xd000192f
d0001c18:	d000192f 	.word	0xd000192f
d0001c1c:	d000192f 	.word	0xd000192f
d0001c20:	d000192f 	.word	0xd000192f
d0001c24:	d000192f 	.word	0xd000192f
d0001c28:	d000192f 	.word	0xd000192f
d0001c2c:	d000192f 	.word	0xd000192f
d0001c30:	d000192f 	.word	0xd000192f
d0001c34:	d000192f 	.word	0xd000192f
d0001c38:	d000192f 	.word	0xd000192f
d0001c3c:	d000192f 	.word	0xd000192f
d0001c40:	d000192f 	.word	0xd000192f
d0001c44:	d000192f 	.word	0xd000192f
d0001c48:	d000192f 	.word	0xd000192f
d0001c4c:	d000192f 	.word	0xd000192f
d0001c50:	d0001cf7 	.word	0xd0001cf7
d0001c54:	d0001ce1 	.word	0xd0001ce1
d0001c58:	d0001cd5 	.word	0xd0001cd5
d0001c5c:	d0001cc7 	.word	0xd0001cc7
d0001c60:	d0001cbb 	.word	0xd0001cbb
d0001c64:	d0001cad 	.word	0xd0001cad
d0001c68:	d0001ca1 	.word	0xd0001ca1
d0001c6c:	d0001c93 	.word	0xd0001c93
d0001c70:	d0001c87 	.word	0xd0001c87
d0001c74:	d0001c79 	.word	0xd0001c79
d0001c78:	f06f 0001 	mvn.w	r0, #1
d0001c7c:	f003 fc52 	bl	d0005524 <SampleIDEdit_ChangeRepeatTo>
d0001c80:	4b38      	ldr	r3, [pc, #224]	; (d0001d64 <main+0x94c>)
d0001c82:	681b      	ldr	r3, [r3, #0]
d0001c84:	e653      	b.n	d000192e <main+0x516>
d0001c86:	2002      	movs	r0, #2
d0001c88:	f003 fc4c 	bl	d0005524 <SampleIDEdit_ChangeRepeatTo>
d0001c8c:	4b35      	ldr	r3, [pc, #212]	; (d0001d64 <main+0x94c>)
d0001c8e:	681b      	ldr	r3, [r3, #0]
d0001c90:	e64d      	b.n	d000192e <main+0x516>
d0001c92:	f06f 0001 	mvn.w	r0, #1
d0001c96:	f003 fbc1 	bl	d000541c <SampleIDEdit_ChangeRepeat>
d0001c9a:	4b32      	ldr	r3, [pc, #200]	; (d0001d64 <main+0x94c>)
d0001c9c:	681b      	ldr	r3, [r3, #0]
d0001c9e:	e646      	b.n	d000192e <main+0x516>
d0001ca0:	2002      	movs	r0, #2
d0001ca2:	f003 fbbb 	bl	d000541c <SampleIDEdit_ChangeRepeat>
d0001ca6:	4b2f      	ldr	r3, [pc, #188]	; (d0001d64 <main+0x94c>)
d0001ca8:	681b      	ldr	r3, [r3, #0]
d0001caa:	e640      	b.n	d000192e <main+0x516>
d0001cac:	f06f 0001 	mvn.w	r0, #1
d0001cb0:	f003 fbe4 	bl	d000547c <SampleIDEdit_ChangeSampleLength>
d0001cb4:	4b2b      	ldr	r3, [pc, #172]	; (d0001d64 <main+0x94c>)
d0001cb6:	681b      	ldr	r3, [r3, #0]
d0001cb8:	e639      	b.n	d000192e <main+0x516>
d0001cba:	2002      	movs	r0, #2
d0001cbc:	f003 fbde 	bl	d000547c <SampleIDEdit_ChangeSampleLength>
d0001cc0:	4b28      	ldr	r3, [pc, #160]	; (d0001d64 <main+0x94c>)
d0001cc2:	681b      	ldr	r3, [r3, #0]
d0001cc4:	e633      	b.n	d000192e <main+0x516>
d0001cc6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0001cca:	f003 fb89 	bl	d00053e0 <SampleIDEdit_ChangeVolume>
d0001cce:	4b25      	ldr	r3, [pc, #148]	; (d0001d64 <main+0x94c>)
d0001cd0:	681b      	ldr	r3, [r3, #0]
d0001cd2:	e62c      	b.n	d000192e <main+0x516>
d0001cd4:	2001      	movs	r0, #1
d0001cd6:	f003 fb83 	bl	d00053e0 <SampleIDEdit_ChangeVolume>
d0001cda:	4b22      	ldr	r3, [pc, #136]	; (d0001d64 <main+0x94c>)
d0001cdc:	681b      	ldr	r3, [r3, #0]
d0001cde:	e626      	b.n	d000192e <main+0x516>
d0001ce0:	4a1c      	ldr	r2, [pc, #112]	; (d0001d54 <main+0x93c>)
d0001ce2:	7812      	ldrb	r2, [r2, #0]
d0001ce4:	2a03      	cmp	r2, #3
d0001ce6:	f47f ae22 	bne.w	d000192e <main+0x516>
d0001cea:	2001      	movs	r0, #1
d0001cec:	f7fe ff2a 	bl	d0000b44 <ScrollFileListDirection>
d0001cf0:	4b1c      	ldr	r3, [pc, #112]	; (d0001d64 <main+0x94c>)
d0001cf2:	681b      	ldr	r3, [r3, #0]
d0001cf4:	e61b      	b.n	d000192e <main+0x516>
d0001cf6:	4a17      	ldr	r2, [pc, #92]	; (d0001d54 <main+0x93c>)
d0001cf8:	7812      	ldrb	r2, [r2, #0]
d0001cfa:	2a03      	cmp	r2, #3
d0001cfc:	f47f ae17 	bne.w	d000192e <main+0x516>
d0001d00:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0001d04:	f7fe ff1e 	bl	d0000b44 <ScrollFileListDirection>
d0001d08:	4b16      	ldr	r3, [pc, #88]	; (d0001d64 <main+0x94c>)
d0001d0a:	681b      	ldr	r3, [r3, #0]
d0001d0c:	e60f      	b.n	d000192e <main+0x516>
d0001d0e:	4c16      	ldr	r4, [pc, #88]	; (d0001d68 <main+0x950>)
d0001d10:	8823      	ldrh	r3, [r4, #0]
d0001d12:	2b20      	cmp	r3, #32
d0001d14:	d901      	bls.n	d0001d1a <main+0x902>
d0001d16:	3b01      	subs	r3, #1
d0001d18:	8023      	strh	r3, [r4, #0]
d0001d1a:	4b14      	ldr	r3, [pc, #80]	; (d0001d6c <main+0x954>)
d0001d1c:	8820      	ldrh	r0, [r4, #0]
d0001d1e:	8819      	ldrh	r1, [r3, #0]
d0001d20:	f000 fd94 	bl	d000284c <setTempoSpeed>
d0001d24:	f7fe fa46 	bl	d00001b4 <CaptureDrawBuffer>
d0001d28:	f7fe fa50 	bl	d00001cc <SetDrawToBackLayer>
d0001d2c:	8822      	ldrh	r2, [r4, #0]
d0001d2e:	2191      	movs	r1, #145	; 0x91
d0001d30:	2064      	movs	r0, #100	; 0x64
d0001d32:	f001 fe09 	bl	d0003948 <uiTextDrawNumber3>
d0001d36:	f7fe fa5b 	bl	d00001f0 <ReleaseDrawBuffer>
d0001d3a:	4b0a      	ldr	r3, [pc, #40]	; (d0001d64 <main+0x94c>)
d0001d3c:	681b      	ldr	r3, [r3, #0]
d0001d3e:	e5f6      	b.n	d000192e <main+0x516>
d0001d40:	4c09      	ldr	r4, [pc, #36]	; (d0001d68 <main+0x950>)
d0001d42:	8823      	ldrh	r3, [r4, #0]
d0001d44:	2bfe      	cmp	r3, #254	; 0xfe
d0001d46:	d8e8      	bhi.n	d0001d1a <main+0x902>
d0001d48:	3301      	adds	r3, #1
d0001d4a:	8023      	strh	r3, [r4, #0]
d0001d4c:	e7e5      	b.n	d0001d1a <main+0x902>
d0001d4e:	bf00      	nop
d0001d50:	d003126c 	.word	0xd003126c
d0001d54:	d000f04c 	.word	0xd000f04c
d0001d58:	d000f01e 	.word	0xd000f01e
d0001d5c:	d000f01f 	.word	0xd000f01f
d0001d60:	d0031274 	.word	0xd0031274
d0001d64:	d000f02c 	.word	0xd000f02c
d0001d68:	d00515e4 	.word	0xd00515e4
d0001d6c:	d00515e6 	.word	0xd00515e6
d0001d70:	4b9d      	ldr	r3, [pc, #628]	; (d0001fe8 <main+0xbd0>)
d0001d72:	4c9e      	ldr	r4, [pc, #632]	; (d0001fec <main+0xbd4>)
d0001d74:	781b      	ldrb	r3, [r3, #0]
d0001d76:	2b00      	cmp	r3, #0
d0001d78:	f040 8222 	bne.w	d00021c0 <main+0xda8>
d0001d7c:	7823      	ldrb	r3, [r4, #0]
d0001d7e:	2b2c      	cmp	r3, #44	; 0x2c
d0001d80:	f000 81eb 	beq.w	d000215a <main+0xd42>
d0001d84:	7862      	ldrb	r2, [r4, #1]
d0001d86:	2a2c      	cmp	r2, #44	; 0x2c
d0001d88:	f000 81e7 	beq.w	d000215a <main+0xd42>
d0001d8c:	78a2      	ldrb	r2, [r4, #2]
d0001d8e:	2a2c      	cmp	r2, #44	; 0x2c
d0001d90:	f000 81e3 	beq.w	d000215a <main+0xd42>
d0001d94:	78e2      	ldrb	r2, [r4, #3]
d0001d96:	2a2c      	cmp	r2, #44	; 0x2c
d0001d98:	f000 81df 	beq.w	d000215a <main+0xd42>
d0001d9c:	7922      	ldrb	r2, [r4, #4]
d0001d9e:	2a2c      	cmp	r2, #44	; 0x2c
d0001da0:	f000 81db 	beq.w	d000215a <main+0xd42>
d0001da4:	7962      	ldrb	r2, [r4, #5]
d0001da6:	2a2c      	cmp	r2, #44	; 0x2c
d0001da8:	f000 81d7 	beq.w	d000215a <main+0xd42>
d0001dac:	79a2      	ldrb	r2, [r4, #6]
d0001dae:	2a2c      	cmp	r2, #44	; 0x2c
d0001db0:	f000 81d3 	beq.w	d000215a <main+0xd42>
d0001db4:	79e2      	ldrb	r2, [r4, #7]
d0001db6:	2a2c      	cmp	r2, #44	; 0x2c
d0001db8:	f000 81cf 	beq.w	d000215a <main+0xd42>
d0001dbc:	2b70      	cmp	r3, #112	; 0x70
d0001dbe:	f000 81c8 	beq.w	d0002152 <main+0xd3a>
d0001dc2:	7862      	ldrb	r2, [r4, #1]
d0001dc4:	2a70      	cmp	r2, #112	; 0x70
d0001dc6:	f000 81c4 	beq.w	d0002152 <main+0xd3a>
d0001dca:	78a2      	ldrb	r2, [r4, #2]
d0001dcc:	2a70      	cmp	r2, #112	; 0x70
d0001dce:	f000 81c0 	beq.w	d0002152 <main+0xd3a>
d0001dd2:	78e2      	ldrb	r2, [r4, #3]
d0001dd4:	2a70      	cmp	r2, #112	; 0x70
d0001dd6:	f000 81bc 	beq.w	d0002152 <main+0xd3a>
d0001dda:	7922      	ldrb	r2, [r4, #4]
d0001ddc:	2a70      	cmp	r2, #112	; 0x70
d0001dde:	f000 81b8 	beq.w	d0002152 <main+0xd3a>
d0001de2:	7962      	ldrb	r2, [r4, #5]
d0001de4:	2a70      	cmp	r2, #112	; 0x70
d0001de6:	f000 81b4 	beq.w	d0002152 <main+0xd3a>
d0001dea:	79a2      	ldrb	r2, [r4, #6]
d0001dec:	2a70      	cmp	r2, #112	; 0x70
d0001dee:	f000 81b0 	beq.w	d0002152 <main+0xd3a>
d0001df2:	79e2      	ldrb	r2, [r4, #7]
d0001df4:	2a70      	cmp	r2, #112	; 0x70
d0001df6:	f000 81ac 	beq.w	d0002152 <main+0xd3a>
d0001dfa:	2b71      	cmp	r3, #113	; 0x71
d0001dfc:	f000 81a5 	beq.w	d000214a <main+0xd32>
d0001e00:	7862      	ldrb	r2, [r4, #1]
d0001e02:	2a71      	cmp	r2, #113	; 0x71
d0001e04:	f000 81a1 	beq.w	d000214a <main+0xd32>
d0001e08:	78a2      	ldrb	r2, [r4, #2]
d0001e0a:	2a71      	cmp	r2, #113	; 0x71
d0001e0c:	f000 819d 	beq.w	d000214a <main+0xd32>
d0001e10:	78e2      	ldrb	r2, [r4, #3]
d0001e12:	2a71      	cmp	r2, #113	; 0x71
d0001e14:	f000 8199 	beq.w	d000214a <main+0xd32>
d0001e18:	7922      	ldrb	r2, [r4, #4]
d0001e1a:	2a71      	cmp	r2, #113	; 0x71
d0001e1c:	f000 8195 	beq.w	d000214a <main+0xd32>
d0001e20:	7962      	ldrb	r2, [r4, #5]
d0001e22:	2a71      	cmp	r2, #113	; 0x71
d0001e24:	f000 8191 	beq.w	d000214a <main+0xd32>
d0001e28:	79a2      	ldrb	r2, [r4, #6]
d0001e2a:	2a71      	cmp	r2, #113	; 0x71
d0001e2c:	f000 818d 	beq.w	d000214a <main+0xd32>
d0001e30:	79e2      	ldrb	r2, [r4, #7]
d0001e32:	2a71      	cmp	r2, #113	; 0x71
d0001e34:	f000 8189 	beq.w	d000214a <main+0xd32>
d0001e38:	2b72      	cmp	r3, #114	; 0x72
d0001e3a:	f000 817c 	beq.w	d0002136 <main+0xd1e>
d0001e3e:	7862      	ldrb	r2, [r4, #1]
d0001e40:	2a72      	cmp	r2, #114	; 0x72
d0001e42:	f000 8178 	beq.w	d0002136 <main+0xd1e>
d0001e46:	78a2      	ldrb	r2, [r4, #2]
d0001e48:	2a72      	cmp	r2, #114	; 0x72
d0001e4a:	f000 8174 	beq.w	d0002136 <main+0xd1e>
d0001e4e:	78e2      	ldrb	r2, [r4, #3]
d0001e50:	2a72      	cmp	r2, #114	; 0x72
d0001e52:	f000 8170 	beq.w	d0002136 <main+0xd1e>
d0001e56:	7922      	ldrb	r2, [r4, #4]
d0001e58:	2a72      	cmp	r2, #114	; 0x72
d0001e5a:	f000 816c 	beq.w	d0002136 <main+0xd1e>
d0001e5e:	7962      	ldrb	r2, [r4, #5]
d0001e60:	2a72      	cmp	r2, #114	; 0x72
d0001e62:	f000 8168 	beq.w	d0002136 <main+0xd1e>
d0001e66:	79a2      	ldrb	r2, [r4, #6]
d0001e68:	2a72      	cmp	r2, #114	; 0x72
d0001e6a:	f000 8164 	beq.w	d0002136 <main+0xd1e>
d0001e6e:	79e2      	ldrb	r2, [r4, #7]
d0001e70:	2a72      	cmp	r2, #114	; 0x72
d0001e72:	f000 8160 	beq.w	d0002136 <main+0xd1e>
d0001e76:	2b73      	cmp	r3, #115	; 0x73
d0001e78:	f000 8163 	beq.w	d0002142 <main+0xd2a>
d0001e7c:	7862      	ldrb	r2, [r4, #1]
d0001e7e:	2a73      	cmp	r2, #115	; 0x73
d0001e80:	f000 815f 	beq.w	d0002142 <main+0xd2a>
d0001e84:	78a2      	ldrb	r2, [r4, #2]
d0001e86:	2a73      	cmp	r2, #115	; 0x73
d0001e88:	f000 815b 	beq.w	d0002142 <main+0xd2a>
d0001e8c:	78e2      	ldrb	r2, [r4, #3]
d0001e8e:	2a73      	cmp	r2, #115	; 0x73
d0001e90:	f000 8157 	beq.w	d0002142 <main+0xd2a>
d0001e94:	7922      	ldrb	r2, [r4, #4]
d0001e96:	2a73      	cmp	r2, #115	; 0x73
d0001e98:	f000 8153 	beq.w	d0002142 <main+0xd2a>
d0001e9c:	7962      	ldrb	r2, [r4, #5]
d0001e9e:	2a73      	cmp	r2, #115	; 0x73
d0001ea0:	f000 814f 	beq.w	d0002142 <main+0xd2a>
d0001ea4:	79a2      	ldrb	r2, [r4, #6]
d0001ea6:	2a73      	cmp	r2, #115	; 0x73
d0001ea8:	f000 814b 	beq.w	d0002142 <main+0xd2a>
d0001eac:	79e2      	ldrb	r2, [r4, #7]
d0001eae:	2a73      	cmp	r2, #115	; 0x73
d0001eb0:	f000 8147 	beq.w	d0002142 <main+0xd2a>
d0001eb4:	2b74      	cmp	r3, #116	; 0x74
d0001eb6:	d015      	beq.n	d0001ee4 <main+0xacc>
d0001eb8:	7863      	ldrb	r3, [r4, #1]
d0001eba:	2b74      	cmp	r3, #116	; 0x74
d0001ebc:	d012      	beq.n	d0001ee4 <main+0xacc>
d0001ebe:	78a3      	ldrb	r3, [r4, #2]
d0001ec0:	2b74      	cmp	r3, #116	; 0x74
d0001ec2:	d00f      	beq.n	d0001ee4 <main+0xacc>
d0001ec4:	78e3      	ldrb	r3, [r4, #3]
d0001ec6:	2b74      	cmp	r3, #116	; 0x74
d0001ec8:	d00c      	beq.n	d0001ee4 <main+0xacc>
d0001eca:	7923      	ldrb	r3, [r4, #4]
d0001ecc:	2b74      	cmp	r3, #116	; 0x74
d0001ece:	d009      	beq.n	d0001ee4 <main+0xacc>
d0001ed0:	7963      	ldrb	r3, [r4, #5]
d0001ed2:	2b74      	cmp	r3, #116	; 0x74
d0001ed4:	d006      	beq.n	d0001ee4 <main+0xacc>
d0001ed6:	79a3      	ldrb	r3, [r4, #6]
d0001ed8:	2b74      	cmp	r3, #116	; 0x74
d0001eda:	d003      	beq.n	d0001ee4 <main+0xacc>
d0001edc:	79e3      	ldrb	r3, [r4, #7]
d0001ede:	2b74      	cmp	r3, #116	; 0x74
d0001ee0:	f47f ad83 	bne.w	d00019ea <main+0x5d2>
d0001ee4:	2304      	movs	r3, #4
d0001ee6:	4a42      	ldr	r2, [pc, #264]	; (d0001ff0 <main+0xbd8>)
d0001ee8:	7013      	strb	r3, [r2, #0]
d0001eea:	e57e      	b.n	d00019ea <main+0x5d2>
d0001eec:	7821      	ldrb	r1, [r4, #0]
d0001eee:	294c      	cmp	r1, #76	; 0x4c
d0001ef0:	d015      	beq.n	d0001f1e <main+0xb06>
d0001ef2:	7863      	ldrb	r3, [r4, #1]
d0001ef4:	2b4c      	cmp	r3, #76	; 0x4c
d0001ef6:	d012      	beq.n	d0001f1e <main+0xb06>
d0001ef8:	78a3      	ldrb	r3, [r4, #2]
d0001efa:	2b4c      	cmp	r3, #76	; 0x4c
d0001efc:	d00f      	beq.n	d0001f1e <main+0xb06>
d0001efe:	78e3      	ldrb	r3, [r4, #3]
d0001f00:	2b4c      	cmp	r3, #76	; 0x4c
d0001f02:	d00c      	beq.n	d0001f1e <main+0xb06>
d0001f04:	7923      	ldrb	r3, [r4, #4]
d0001f06:	2b4c      	cmp	r3, #76	; 0x4c
d0001f08:	d009      	beq.n	d0001f1e <main+0xb06>
d0001f0a:	7963      	ldrb	r3, [r4, #5]
d0001f0c:	2b4c      	cmp	r3, #76	; 0x4c
d0001f0e:	d006      	beq.n	d0001f1e <main+0xb06>
d0001f10:	79a3      	ldrb	r3, [r4, #6]
d0001f12:	2b4c      	cmp	r3, #76	; 0x4c
d0001f14:	d003      	beq.n	d0001f1e <main+0xb06>
d0001f16:	79e3      	ldrb	r3, [r4, #7]
d0001f18:	2b4c      	cmp	r3, #76	; 0x4c
d0001f1a:	f47f ad84 	bne.w	d0001a26 <main+0x60e>
d0001f1e:	f1b8 0f00 	cmp.w	r8, #0
d0001f22:	f000 81e6 	beq.w	d00022f2 <main+0xeda>
d0001f26:	f108 3bff 	add.w	fp, r8, #4294967295	; 0xffffffff
d0001f2a:	f1a8 0204 	sub.w	r2, r8, #4
d0001f2e:	4b31      	ldr	r3, [pc, #196]	; (d0001ff4 <main+0xbdc>)
d0001f30:	fa5f f08b 	uxtb.w	r0, fp
d0001f34:	f8cd a01c 	str.w	sl, [sp, #28]
d0001f38:	b2d2      	uxtb	r2, r2
d0001f3a:	46a2      	mov	sl, r4
d0001f3c:	f103 0b20 	add.w	fp, r3, #32
d0001f40:	4604      	mov	r4, r0
d0001f42:	9204      	str	r2, [sp, #16]
d0001f44:	e9cd 6905 	strd	r6, r9, [sp, #20]
d0001f48:	4699      	mov	r9, r3
d0001f4a:	e001      	b.n	d0001f50 <main+0xb38>
d0001f4c:	f89a 1000 	ldrb.w	r1, [sl]
d0001f50:	f899 0001 	ldrb.w	r0, [r9, #1]
d0001f54:	4288      	cmp	r0, r1
d0001f56:	d024      	beq.n	d0001fa2 <main+0xb8a>
d0001f58:	f89a 1001 	ldrb.w	r1, [sl, #1]
d0001f5c:	4288      	cmp	r0, r1
d0001f5e:	d020      	beq.n	d0001fa2 <main+0xb8a>
d0001f60:	f89a 1002 	ldrb.w	r1, [sl, #2]
d0001f64:	4288      	cmp	r0, r1
d0001f66:	d01c      	beq.n	d0001fa2 <main+0xb8a>
d0001f68:	f89a 1003 	ldrb.w	r1, [sl, #3]
d0001f6c:	4288      	cmp	r0, r1
d0001f6e:	d018      	beq.n	d0001fa2 <main+0xb8a>
d0001f70:	f89a 1004 	ldrb.w	r1, [sl, #4]
d0001f74:	4288      	cmp	r0, r1
d0001f76:	d014      	beq.n	d0001fa2 <main+0xb8a>
d0001f78:	f89a 1005 	ldrb.w	r1, [sl, #5]
d0001f7c:	4288      	cmp	r0, r1
d0001f7e:	d010      	beq.n	d0001fa2 <main+0xb8a>
d0001f80:	f89a 1006 	ldrb.w	r1, [sl, #6]
d0001f84:	4288      	cmp	r0, r1
d0001f86:	d00c      	beq.n	d0001fa2 <main+0xb8a>
d0001f88:	f89a 1007 	ldrb.w	r1, [sl, #7]
d0001f8c:	4288      	cmp	r0, r1
d0001f8e:	d008      	beq.n	d0001fa2 <main+0xb8a>
d0001f90:	f109 0902 	add.w	r9, r9, #2
d0001f94:	45d9      	cmp	r9, fp
d0001f96:	d1d9      	bne.n	d0001f4c <main+0xb34>
d0001f98:	e9dd 6905 	ldrd	r6, r9, [sp, #20]
d0001f9c:	f8dd a01c 	ldr.w	sl, [sp, #28]
d0001fa0:	e5f8      	b.n	d0001b94 <main+0x77c>
d0001fa2:	2900      	cmp	r1, #0
d0001fa4:	d0f4      	beq.n	d0001f90 <main+0xb78>
d0001fa6:	2c01      	cmp	r4, #1
d0001fa8:	f999 6000 	ldrsb.w	r6, [r9]
d0001fac:	d90c      	bls.n	d0001fc8 <main+0xbb0>
d0001fae:	f1b8 0f03 	cmp.w	r8, #3
d0001fb2:	d012      	beq.n	d0001fda <main+0xbc2>
d0001fb4:	9b04      	ldr	r3, [sp, #16]
d0001fb6:	2b01      	cmp	r3, #1
d0001fb8:	d8ea      	bhi.n	d0001f90 <main+0xb78>
d0001fba:	4630      	mov	r0, r6
d0001fbc:	f001 f8a4 	bl	d0003108 <PlaceParam>
d0001fc0:	2001      	movs	r0, #1
d0001fc2:	f001 fa9f 	bl	d0003504 <MovePatternRow>
d0001fc6:	e7e3      	b.n	d0001f90 <main+0xb78>
d0001fc8:	4630      	mov	r0, r6
d0001fca:	f001 f8df 	bl	d000318c <PlaceSampleID>
d0001fce:	2001      	movs	r0, #1
d0001fd0:	f001 fa98 	bl	d0003504 <MovePatternRow>
d0001fd4:	f1b8 0f03 	cmp.w	r8, #3
d0001fd8:	d1da      	bne.n	d0001f90 <main+0xb78>
d0001fda:	4630      	mov	r0, r6
d0001fdc:	f001 f860 	bl	d00030a0 <PlaceCommand>
d0001fe0:	2001      	movs	r0, #1
d0001fe2:	f001 fa8f 	bl	d0003504 <MovePatternRow>
d0001fe6:	e7d3      	b.n	d0001f90 <main+0xb78>
d0001fe8:	d000f043 	.word	0xd000f043
d0001fec:	d003126c 	.word	0xd003126c
d0001ff0:	d000f042 	.word	0xd000f042
d0001ff4:	d000efd8 	.word	0xd000efd8
d0001ff8:	f001 ffe4 	bl	d0003fc4 <GUIButtonHIT>
d0001ffc:	2200      	movs	r2, #0
d0001ffe:	4bc1      	ldr	r3, [pc, #772]	; (d0002304 <main+0xeec>)
d0002000:	211e      	movs	r1, #30
d0002002:	701a      	strb	r2, [r3, #0]
d0002004:	4bc0      	ldr	r3, [pc, #768]	; (d0002308 <main+0xef0>)
d0002006:	6018      	str	r0, [r3, #0]
d0002008:	1e43      	subs	r3, r0, #1
d000200a:	48c0      	ldr	r0, [pc, #768]	; (d000230c <main+0xef4>)
d000200c:	6002      	str	r2, [r0, #0]
d000200e:	4ac0      	ldr	r2, [pc, #768]	; (d0002310 <main+0xef8>)
d0002010:	6011      	str	r1, [r2, #0]
d0002012:	2b3e      	cmp	r3, #62	; 0x3e
d0002014:	f63f add6 	bhi.w	d0001bc4 <main+0x7ac>
d0002018:	a201      	add	r2, pc, #4	; (adr r2, d0002020 <main+0xc08>)
d000201a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
d000201e:	bf00      	nop
d0002020:	d00025d7 	.word	0xd00025d7
d0002024:	d0002601 	.word	0xd0002601
d0002028:	d0002413 	.word	0xd0002413
d000202c:	d000242d 	.word	0xd000242d
d0002030:	d0001bc5 	.word	0xd0001bc5
d0002034:	d000243b 	.word	0xd000243b
d0002038:	d000247d 	.word	0xd000247d
d000203c:	d00024a1 	.word	0xd00024a1
d0002040:	d00024af 	.word	0xd00024af
d0002044:	d00024c9 	.word	0xd00024c9
d0002048:	d00024d7 	.word	0xd00024d7
d000204c:	d000232d 	.word	0xd000232d
d0002050:	d0002345 	.word	0xd0002345
d0002054:	d0002357 	.word	0xd0002357
d0002058:	d0001bc5 	.word	0xd0001bc5
d000205c:	d0001bc5 	.word	0xd0001bc5
d0002060:	d0002365 	.word	0xd0002365
d0002064:	d0002371 	.word	0xd0002371
d0002068:	d0001bc5 	.word	0xd0001bc5
d000206c:	d0001bc5 	.word	0xd0001bc5
d0002070:	d000237d 	.word	0xd000237d
d0002074:	d0002385 	.word	0xd0002385
d0002078:	d0001bc5 	.word	0xd0001bc5
d000207c:	d0001bc5 	.word	0xd0001bc5
d0002080:	d000238d 	.word	0xd000238d
d0002084:	d0002393 	.word	0xd0002393
d0002088:	d0002399 	.word	0xd0002399
d000208c:	d00023a9 	.word	0xd00023a9
d0002090:	d00023b9 	.word	0xd00023b9
d0002094:	d00023cb 	.word	0xd00023cb
d0002098:	d00023dd 	.word	0xd00023dd
d000209c:	d00023ef 	.word	0xd00023ef
d00020a0:	d0002401 	.word	0xd0002401
d00020a4:	d00024e7 	.word	0xd00024e7
d00020a8:	d00024f9 	.word	0xd00024f9
d00020ac:	d0002499 	.word	0xd0002499
d00020b0:	d00024fd 	.word	0xd00024fd
d00020b4:	d0002519 	.word	0xd0002519
d00020b8:	d0002565 	.word	0xd0002565
d00020bc:	d0001bc5 	.word	0xd0001bc5
d00020c0:	d0001bc5 	.word	0xd0001bc5
d00020c4:	d0001bc5 	.word	0xd0001bc5
d00020c8:	d0001bc5 	.word	0xd0001bc5
d00020cc:	d0001bc5 	.word	0xd0001bc5
d00020d0:	d0001bc5 	.word	0xd0001bc5
d00020d4:	d0001bc5 	.word	0xd0001bc5
d00020d8:	d0001bc5 	.word	0xd0001bc5
d00020dc:	d0001bc5 	.word	0xd0001bc5
d00020e0:	d0002577 	.word	0xd0002577
d00020e4:	d0001bc5 	.word	0xd0001bc5
d00020e8:	d0001bc5 	.word	0xd0001bc5
d00020ec:	d0001bc5 	.word	0xd0001bc5
d00020f0:	d0001bc5 	.word	0xd0001bc5
d00020f4:	d0001bc5 	.word	0xd0001bc5
d00020f8:	d0001bc5 	.word	0xd0001bc5
d00020fc:	d0001bc5 	.word	0xd0001bc5
d0002100:	d0001bc5 	.word	0xd0001bc5
d0002104:	d0001bc5 	.word	0xd0001bc5
d0002108:	d0001bc5 	.word	0xd0001bc5
d000210c:	d0001bc5 	.word	0xd0001bc5
d0002110:	d0001bc5 	.word	0xd0001bc5
d0002114:	d00025a3 	.word	0xd00025a3
d0002118:	d0002175 	.word	0xd0002175
d000211c:	2301      	movs	r3, #1
d000211e:	4a79      	ldr	r2, [pc, #484]	; (d0002304 <main+0xeec>)
d0002120:	7013      	strb	r3, [r2, #0]
d0002122:	f001 ff4f 	bl	d0003fc4 <GUIButtonHIT>
d0002126:	231e      	movs	r3, #30
d0002128:	4a79      	ldr	r2, [pc, #484]	; (d0002310 <main+0xef8>)
d000212a:	6013      	str	r3, [r2, #0]
d000212c:	4b76      	ldr	r3, [pc, #472]	; (d0002308 <main+0xef0>)
d000212e:	6018      	str	r0, [r3, #0]
d0002130:	4b76      	ldr	r3, [pc, #472]	; (d000230c <main+0xef4>)
d0002132:	6018      	str	r0, [r3, #0]
d0002134:	e540      	b.n	d0001bb8 <main+0x7a0>
d0002136:	2202      	movs	r2, #2
d0002138:	4976      	ldr	r1, [pc, #472]	; (d0002314 <main+0xefc>)
d000213a:	2b73      	cmp	r3, #115	; 0x73
d000213c:	700a      	strb	r2, [r1, #0]
d000213e:	f47f ae9d 	bne.w	d0001e7c <main+0xa64>
d0002142:	2203      	movs	r2, #3
d0002144:	4973      	ldr	r1, [pc, #460]	; (d0002314 <main+0xefc>)
d0002146:	700a      	strb	r2, [r1, #0]
d0002148:	e6b4      	b.n	d0001eb4 <main+0xa9c>
d000214a:	2201      	movs	r2, #1
d000214c:	4971      	ldr	r1, [pc, #452]	; (d0002314 <main+0xefc>)
d000214e:	700a      	strb	r2, [r1, #0]
d0002150:	e672      	b.n	d0001e38 <main+0xa20>
d0002152:	2200      	movs	r2, #0
d0002154:	496f      	ldr	r1, [pc, #444]	; (d0002314 <main+0xefc>)
d0002156:	700a      	strb	r2, [r1, #0]
d0002158:	e64f      	b.n	d0001dfa <main+0x9e2>
d000215a:	496f      	ldr	r1, [pc, #444]	; (d0002318 <main+0xf00>)
d000215c:	780a      	ldrb	r2, [r1, #0]
d000215e:	f1c2 0201 	rsb	r2, r2, #1
d0002162:	700a      	strb	r2, [r1, #0]
d0002164:	e62a      	b.n	d0001dbc <main+0x9a4>
d0002166:	6a2a      	ldr	r2, [r5, #32]
d0002168:	6a6b      	ldr	r3, [r5, #36]	; 0x24
d000216a:	6810      	ldr	r0, [r2, #0]
d000216c:	6819      	ldr	r1, [r3, #0]
d000216e:	f7fe fd13 	bl	d0000b98 <FileListedSelect>
d0002172:	e518      	b.n	d0001ba6 <main+0x78e>
d0002174:	4b69      	ldr	r3, [pc, #420]	; (d000231c <main+0xf04>)
d0002176:	781c      	ldrb	r4, [r3, #0]
d0002178:	2c01      	cmp	r4, #1
d000217a:	f47f ad23 	bne.w	d0001bc4 <main+0x7ac>
d000217e:	4a68      	ldr	r2, [pc, #416]	; (d0002320 <main+0xf08>)
d0002180:	2000      	movs	r0, #0
d0002182:	6813      	ldr	r3, [r2, #0]
d0002184:	f043 0310 	orr.w	r3, r3, #16
d0002188:	6013      	str	r3, [r2, #0]
d000218a:	f7fe f85f 	bl	d000024c <StopChannel>
d000218e:	2001      	movs	r0, #1
d0002190:	f7fe f85c 	bl	d000024c <StopChannel>
d0002194:	2002      	movs	r0, #2
d0002196:	f7fe f859 	bl	d000024c <StopChannel>
d000219a:	2003      	movs	r0, #3
d000219c:	f7fe f856 	bl	d000024c <StopChannel>
d00021a0:	2004      	movs	r0, #4
d00021a2:	f7fe f853 	bl	d000024c <StopChannel>
d00021a6:	2005      	movs	r0, #5
d00021a8:	f7fe f850 	bl	d000024c <StopChannel>
d00021ac:	2006      	movs	r0, #6
d00021ae:	f7fe f84d 	bl	d000024c <StopChannel>
d00021b2:	2007      	movs	r0, #7
d00021b4:	f7fe f84a 	bl	d000024c <StopChannel>
d00021b8:	2007      	movs	r0, #7
d00021ba:	b029      	add	sp, #164	; 0xa4
d00021bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00021c0:	7823      	ldrb	r3, [r4, #0]
d00021c2:	2b50      	cmp	r3, #80	; 0x50
d00021c4:	d063      	beq.n	d000228e <main+0xe76>
d00021c6:	7863      	ldrb	r3, [r4, #1]
d00021c8:	2b50      	cmp	r3, #80	; 0x50
d00021ca:	d060      	beq.n	d000228e <main+0xe76>
d00021cc:	78a3      	ldrb	r3, [r4, #2]
d00021ce:	2b50      	cmp	r3, #80	; 0x50
d00021d0:	d05d      	beq.n	d000228e <main+0xe76>
d00021d2:	78e3      	ldrb	r3, [r4, #3]
d00021d4:	2b50      	cmp	r3, #80	; 0x50
d00021d6:	d05a      	beq.n	d000228e <main+0xe76>
d00021d8:	7923      	ldrb	r3, [r4, #4]
d00021da:	2b50      	cmp	r3, #80	; 0x50
d00021dc:	d057      	beq.n	d000228e <main+0xe76>
d00021de:	7963      	ldrb	r3, [r4, #5]
d00021e0:	2b50      	cmp	r3, #80	; 0x50
d00021e2:	d054      	beq.n	d000228e <main+0xe76>
d00021e4:	79a3      	ldrb	r3, [r4, #6]
d00021e6:	2b50      	cmp	r3, #80	; 0x50
d00021e8:	d051      	beq.n	d000228e <main+0xe76>
d00021ea:	79e3      	ldrb	r3, [r4, #7]
d00021ec:	2b50      	cmp	r3, #80	; 0x50
d00021ee:	d04e      	beq.n	d000228e <main+0xe76>
d00021f0:	7823      	ldrb	r3, [r4, #0]
d00021f2:	2b4f      	cmp	r3, #79	; 0x4f
d00021f4:	f000 8216 	beq.w	d0002624 <main+0x120c>
d00021f8:	7863      	ldrb	r3, [r4, #1]
d00021fa:	2b4f      	cmp	r3, #79	; 0x4f
d00021fc:	d05a      	beq.n	d00022b4 <main+0xe9c>
d00021fe:	78a3      	ldrb	r3, [r4, #2]
d0002200:	2b4f      	cmp	r3, #79	; 0x4f
d0002202:	d057      	beq.n	d00022b4 <main+0xe9c>
d0002204:	78e3      	ldrb	r3, [r4, #3]
d0002206:	2b4f      	cmp	r3, #79	; 0x4f
d0002208:	d054      	beq.n	d00022b4 <main+0xe9c>
d000220a:	7923      	ldrb	r3, [r4, #4]
d000220c:	2b4f      	cmp	r3, #79	; 0x4f
d000220e:	d051      	beq.n	d00022b4 <main+0xe9c>
d0002210:	7963      	ldrb	r3, [r4, #5]
d0002212:	2b4f      	cmp	r3, #79	; 0x4f
d0002214:	d04e      	beq.n	d00022b4 <main+0xe9c>
d0002216:	79a3      	ldrb	r3, [r4, #6]
d0002218:	2b4f      	cmp	r3, #79	; 0x4f
d000221a:	d04b      	beq.n	d00022b4 <main+0xe9c>
d000221c:	79e3      	ldrb	r3, [r4, #7]
d000221e:	2b4f      	cmp	r3, #79	; 0x4f
d0002220:	d048      	beq.n	d00022b4 <main+0xe9c>
d0002222:	7823      	ldrb	r3, [r4, #0]
d0002224:	2b51      	cmp	r3, #81	; 0x51
d0002226:	d041      	beq.n	d00022ac <main+0xe94>
d0002228:	7863      	ldrb	r3, [r4, #1]
d000222a:	2b51      	cmp	r3, #81	; 0x51
d000222c:	d03e      	beq.n	d00022ac <main+0xe94>
d000222e:	78a3      	ldrb	r3, [r4, #2]
d0002230:	2b51      	cmp	r3, #81	; 0x51
d0002232:	d03b      	beq.n	d00022ac <main+0xe94>
d0002234:	78e3      	ldrb	r3, [r4, #3]
d0002236:	2b51      	cmp	r3, #81	; 0x51
d0002238:	d038      	beq.n	d00022ac <main+0xe94>
d000223a:	7923      	ldrb	r3, [r4, #4]
d000223c:	2b51      	cmp	r3, #81	; 0x51
d000223e:	d035      	beq.n	d00022ac <main+0xe94>
d0002240:	7963      	ldrb	r3, [r4, #5]
d0002242:	2b51      	cmp	r3, #81	; 0x51
d0002244:	d032      	beq.n	d00022ac <main+0xe94>
d0002246:	79a3      	ldrb	r3, [r4, #6]
d0002248:	2b51      	cmp	r3, #81	; 0x51
d000224a:	d02f      	beq.n	d00022ac <main+0xe94>
d000224c:	79e3      	ldrb	r3, [r4, #7]
d000224e:	2b51      	cmp	r3, #81	; 0x51
d0002250:	d02c      	beq.n	d00022ac <main+0xe94>
d0002252:	7823      	ldrb	r3, [r4, #0]
d0002254:	2b52      	cmp	r3, #82	; 0x52
d0002256:	d015      	beq.n	d0002284 <main+0xe6c>
d0002258:	7863      	ldrb	r3, [r4, #1]
d000225a:	2b52      	cmp	r3, #82	; 0x52
d000225c:	d012      	beq.n	d0002284 <main+0xe6c>
d000225e:	78a3      	ldrb	r3, [r4, #2]
d0002260:	2b52      	cmp	r3, #82	; 0x52
d0002262:	d00f      	beq.n	d0002284 <main+0xe6c>
d0002264:	78e3      	ldrb	r3, [r4, #3]
d0002266:	2b52      	cmp	r3, #82	; 0x52
d0002268:	d00c      	beq.n	d0002284 <main+0xe6c>
d000226a:	7923      	ldrb	r3, [r4, #4]
d000226c:	2b52      	cmp	r3, #82	; 0x52
d000226e:	d009      	beq.n	d0002284 <main+0xe6c>
d0002270:	7963      	ldrb	r3, [r4, #5]
d0002272:	2b52      	cmp	r3, #82	; 0x52
d0002274:	d006      	beq.n	d0002284 <main+0xe6c>
d0002276:	79a3      	ldrb	r3, [r4, #6]
d0002278:	2b52      	cmp	r3, #82	; 0x52
d000227a:	d003      	beq.n	d0002284 <main+0xe6c>
d000227c:	79e3      	ldrb	r3, [r4, #7]
d000227e:	2b52      	cmp	r3, #82	; 0x52
d0002280:	f47f ad7c 	bne.w	d0001d7c <main+0x964>
d0002284:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0002288:	f001 f93c 	bl	d0003504 <MovePatternRow>
d000228c:	e576      	b.n	d0001d7c <main+0x964>
d000228e:	f8df 8098 	ldr.w	r8, [pc, #152]	; d0002328 <main+0xf10>
d0002292:	f898 3000 	ldrb.w	r3, [r8]
d0002296:	3b01      	subs	r3, #1
d0002298:	b25b      	sxtb	r3, r3
d000229a:	2b00      	cmp	r3, #0
d000229c:	db22      	blt.n	d00022e4 <main+0xecc>
d000229e:	f888 3000 	strb.w	r3, [r8]
d00022a2:	e7a5      	b.n	d00021f0 <main+0xdd8>
d00022a4:	2008      	movs	r0, #8
d00022a6:	f7fe faeb 	bl	d0000880 <FileRequestFileStringInjector>
d00022aa:	e46e      	b.n	d0001b8a <main+0x772>
d00022ac:	2001      	movs	r0, #1
d00022ae:	f001 f929 	bl	d0003504 <MovePatternRow>
d00022b2:	e7ce      	b.n	d0002252 <main+0xe3a>
d00022b4:	f8df 8070 	ldr.w	r8, [pc, #112]	; d0002328 <main+0xf10>
d00022b8:	f898 3000 	ldrb.w	r3, [r8]
d00022bc:	3301      	adds	r3, #1
d00022be:	b2db      	uxtb	r3, r3
d00022c0:	2b17      	cmp	r3, #23
d00022c2:	f888 3000 	strb.w	r3, [r8]
d00022c6:	d9ac      	bls.n	d0002222 <main+0xe0a>
d00022c8:	4b16      	ldr	r3, [pc, #88]	; (d0002324 <main+0xf0c>)
d00022ca:	2117      	movs	r1, #23
d00022cc:	781a      	ldrb	r2, [r3, #0]
d00022ce:	f888 1000 	strb.w	r1, [r8]
d00022d2:	2a00      	cmp	r2, #0
d00022d4:	d1a5      	bne.n	d0002222 <main+0xe0a>
d00022d6:	2104      	movs	r1, #4
d00022d8:	f888 2000 	strb.w	r2, [r8]
d00022dc:	7019      	strb	r1, [r3, #0]
d00022de:	f003 faab 	bl	d0005838 <UpdateChannelOffset>
d00022e2:	e79e      	b.n	d0002222 <main+0xe0a>
d00022e4:	4b0f      	ldr	r3, [pc, #60]	; (d0002324 <main+0xf0c>)
d00022e6:	781a      	ldrb	r2, [r3, #0]
d00022e8:	2a04      	cmp	r2, #4
d00022ea:	f000 8195 	beq.w	d0002618 <main+0x1200>
d00022ee:	2300      	movs	r3, #0
d00022f0:	e7d5      	b.n	d000229e <main+0xe86>
d00022f2:	20ff      	movs	r0, #255	; 0xff
d00022f4:	f000 fe94 	bl	d0003020 <PlaceNote>
d00022f8:	2001      	movs	r0, #1
d00022fa:	f001 f903 	bl	d0003504 <MovePatternRow>
d00022fe:	7821      	ldrb	r1, [r4, #0]
d0002300:	f7ff bb95 	b.w	d0001a2e <main+0x616>
d0002304:	d000f030 	.word	0xd000f030
d0002308:	d0031274 	.word	0xd0031274
d000230c:	d000f028 	.word	0xd000f028
d0002310:	d000f02c 	.word	0xd000f02c
d0002314:	d000f042 	.word	0xd000f042
d0002318:	d000f043 	.word	0xd000f043
d000231c:	d000f01e 	.word	0xd000f01e
d0002320:	e000ed14 	.word	0xe000ed14
d0002324:	d000f040 	.word	0xd000f040
d0002328:	d000f041 	.word	0xd000f041
d000232c:	4bc3      	ldr	r3, [pc, #780]	; (d000263c <main+0x1224>)
d000232e:	881a      	ldrh	r2, [r3, #0]
d0002330:	2a01      	cmp	r2, #1
d0002332:	d901      	bls.n	d0002338 <main+0xf20>
d0002334:	3a01      	subs	r2, #1
d0002336:	801a      	strh	r2, [r3, #0]
d0002338:	8818      	ldrh	r0, [r3, #0]
d000233a:	f000 fb29 	bl	d0002990 <SetSongLength>
d000233e:	f003 faa7 	bl	d0005890 <ConfigScreenUpdate>
d0002342:	e43f      	b.n	d0001bc4 <main+0x7ac>
d0002344:	4abe      	ldr	r2, [pc, #760]	; (d0002640 <main+0x1228>)
d0002346:	7813      	ldrb	r3, [r2, #0]
d0002348:	2b1e      	cmp	r3, #30
d000234a:	d801      	bhi.n	d0002350 <main+0xf38>
d000234c:	3301      	adds	r3, #1
d000234e:	7013      	strb	r3, [r2, #0]
d0002350:	f003 f816 	bl	d0005380 <RenderSampleIDEdit>
d0002354:	e436      	b.n	d0001bc4 <main+0x7ac>
d0002356:	4aba      	ldr	r2, [pc, #744]	; (d0002640 <main+0x1228>)
d0002358:	7813      	ldrb	r3, [r2, #0]
d000235a:	2b01      	cmp	r3, #1
d000235c:	d9f8      	bls.n	d0002350 <main+0xf38>
d000235e:	3b01      	subs	r3, #1
d0002360:	7013      	strb	r3, [r2, #0]
d0002362:	e7f5      	b.n	d0002350 <main+0xf38>
d0002364:	4bb7      	ldr	r3, [pc, #732]	; (d0002644 <main+0x122c>)
d0002366:	2200      	movs	r2, #0
d0002368:	701a      	strb	r2, [r3, #0]
d000236a:	f003 fa65 	bl	d0005838 <UpdateChannelOffset>
d000236e:	e429      	b.n	d0001bc4 <main+0x7ac>
d0002370:	4bb4      	ldr	r3, [pc, #720]	; (d0002644 <main+0x122c>)
d0002372:	2204      	movs	r2, #4
d0002374:	701a      	strb	r2, [r3, #0]
d0002376:	f003 fa5f 	bl	d0005838 <UpdateChannelOffset>
d000237a:	e423      	b.n	d0001bc4 <main+0x7ac>
d000237c:	2000      	movs	r0, #0
d000237e:	f7fe fc5d 	bl	d0000c3c <ShowFileRequest>
d0002382:	e41f      	b.n	d0001bc4 <main+0x7ac>
d0002384:	2001      	movs	r0, #1
d0002386:	f7fe fc59 	bl	d0000c3c <ShowFileRequest>
d000238a:	e41b      	b.n	d0001bc4 <main+0x7ac>
d000238c:	f002 fbee 	bl	d0004b6c <ShowPatternPositionEditor>
d0002390:	e418      	b.n	d0001bc4 <main+0x7ac>
d0002392:	f001 ff45 	bl	d0004220 <ShowSampleIDEditor>
d0002396:	e415      	b.n	d0001bc4 <main+0x7ac>
d0002398:	4aab      	ldr	r2, [pc, #684]	; (d0002648 <main+0x1230>)
d000239a:	7813      	ldrb	r3, [r2, #0]
d000239c:	f1c3 0301 	rsb	r3, r3, #1
d00023a0:	7013      	strb	r3, [r2, #0]
d00023a2:	f003 f905 	bl	d00055b0 <UpdateChannelToggles>
d00023a6:	e40d      	b.n	d0001bc4 <main+0x7ac>
d00023a8:	4aa7      	ldr	r2, [pc, #668]	; (d0002648 <main+0x1230>)
d00023aa:	7853      	ldrb	r3, [r2, #1]
d00023ac:	f1c3 0301 	rsb	r3, r3, #1
d00023b0:	7053      	strb	r3, [r2, #1]
d00023b2:	f003 f8fd 	bl	d00055b0 <UpdateChannelToggles>
d00023b6:	e405      	b.n	d0001bc4 <main+0x7ac>
d00023b8:	4aa3      	ldr	r2, [pc, #652]	; (d0002648 <main+0x1230>)
d00023ba:	7893      	ldrb	r3, [r2, #2]
d00023bc:	f1c3 0301 	rsb	r3, r3, #1
d00023c0:	7093      	strb	r3, [r2, #2]
d00023c2:	f003 f8f5 	bl	d00055b0 <UpdateChannelToggles>
d00023c6:	f7ff bbfd 	b.w	d0001bc4 <main+0x7ac>
d00023ca:	4a9f      	ldr	r2, [pc, #636]	; (d0002648 <main+0x1230>)
d00023cc:	78d3      	ldrb	r3, [r2, #3]
d00023ce:	f1c3 0301 	rsb	r3, r3, #1
d00023d2:	70d3      	strb	r3, [r2, #3]
d00023d4:	f003 f8ec 	bl	d00055b0 <UpdateChannelToggles>
d00023d8:	f7ff bbf4 	b.w	d0001bc4 <main+0x7ac>
d00023dc:	4a9a      	ldr	r2, [pc, #616]	; (d0002648 <main+0x1230>)
d00023de:	7913      	ldrb	r3, [r2, #4]
d00023e0:	f1c3 0301 	rsb	r3, r3, #1
d00023e4:	7113      	strb	r3, [r2, #4]
d00023e6:	f003 f8e3 	bl	d00055b0 <UpdateChannelToggles>
d00023ea:	f7ff bbeb 	b.w	d0001bc4 <main+0x7ac>
d00023ee:	4a96      	ldr	r2, [pc, #600]	; (d0002648 <main+0x1230>)
d00023f0:	7953      	ldrb	r3, [r2, #5]
d00023f2:	f1c3 0301 	rsb	r3, r3, #1
d00023f6:	7153      	strb	r3, [r2, #5]
d00023f8:	f003 f8da 	bl	d00055b0 <UpdateChannelToggles>
d00023fc:	f7ff bbe2 	b.w	d0001bc4 <main+0x7ac>
d0002400:	4a91      	ldr	r2, [pc, #580]	; (d0002648 <main+0x1230>)
d0002402:	7993      	ldrb	r3, [r2, #6]
d0002404:	f1c3 0301 	rsb	r3, r3, #1
d0002408:	7193      	strb	r3, [r2, #6]
d000240a:	f003 f8d1 	bl	d00055b0 <UpdateChannelToggles>
d000240e:	f7ff bbd9 	b.w	d0001bc4 <main+0x7ac>
d0002412:	2301      	movs	r3, #1
d0002414:	498d      	ldr	r1, [pc, #564]	; (d000264c <main+0x1234>)
d0002416:	488e      	ldr	r0, [pc, #568]	; (d0002650 <main+0x1238>)
d0002418:	2200      	movs	r2, #0
d000241a:	700b      	strb	r3, [r1, #0]
d000241c:	7003      	strb	r3, [r0, #0]
d000241e:	4b8d      	ldr	r3, [pc, #564]	; (d0002654 <main+0x123c>)
d0002420:	e9c3 2200 	strd	r2, r2, [r3]
d0002424:	f000 fa48 	bl	d00028b8 <StartTimer>
d0002428:	f7ff bbcc 	b.w	d0001bc4 <main+0x7ac>
d000242c:	4a8a      	ldr	r2, [pc, #552]	; (d0002658 <main+0x1240>)
d000242e:	7813      	ldrb	r3, [r2, #0]
d0002430:	f1c3 0301 	rsb	r3, r3, #1
d0002434:	7013      	strb	r3, [r2, #0]
d0002436:	f7ff bbc5 	b.w	d0001bc4 <main+0x7ac>
d000243a:	4a85      	ldr	r2, [pc, #532]	; (d0002650 <main+0x1238>)
d000243c:	2400      	movs	r4, #0
d000243e:	4b83      	ldr	r3, [pc, #524]	; (d000264c <main+0x1234>)
d0002440:	7014      	strb	r4, [r2, #0]
d0002442:	701c      	strb	r4, [r3, #0]
d0002444:	f000 fa3e 	bl	d00028c4 <StopTimer>
d0002448:	4620      	mov	r0, r4
d000244a:	f7fd feff 	bl	d000024c <StopChannel>
d000244e:	2001      	movs	r0, #1
d0002450:	f7fd fefc 	bl	d000024c <StopChannel>
d0002454:	2002      	movs	r0, #2
d0002456:	f7fd fef9 	bl	d000024c <StopChannel>
d000245a:	2003      	movs	r0, #3
d000245c:	f7fd fef6 	bl	d000024c <StopChannel>
d0002460:	2004      	movs	r0, #4
d0002462:	f7fd fef3 	bl	d000024c <StopChannel>
d0002466:	2005      	movs	r0, #5
d0002468:	f7fd fef0 	bl	d000024c <StopChannel>
d000246c:	2006      	movs	r0, #6
d000246e:	f7fd feed 	bl	d000024c <StopChannel>
d0002472:	2007      	movs	r0, #7
d0002474:	f7fd feea 	bl	d000024c <StopChannel>
d0002478:	f7ff bba4 	b.w	d0001bc4 <main+0x7ac>
d000247c:	4b77      	ldr	r3, [pc, #476]	; (d000265c <main+0x1244>)
d000247e:	8859      	ldrh	r1, [r3, #2]
d0002480:	881a      	ldrh	r2, [r3, #0]
d0002482:	3901      	subs	r1, #1
d0002484:	428a      	cmp	r2, r1
d0002486:	f2c0 80fb 	blt.w	d0002680 <main+0x1268>
d000248a:	8818      	ldrh	r0, [r3, #0]
d000248c:	f000 fa34 	bl	d00028f8 <SetSongPosition>
d0002490:	f003 f9fe 	bl	d0005890 <ConfigScreenUpdate>
d0002494:	f7ff bb96 	b.w	d0001bc4 <main+0x7ac>
d0002498:	4b71      	ldr	r3, [pc, #452]	; (d0002660 <main+0x1248>)
d000249a:	781b      	ldrb	r3, [r3, #0]
d000249c:	2b01      	cmp	r3, #1
d000249e:	d175      	bne.n	d000258c <main+0x1174>
d00024a0:	4b6e      	ldr	r3, [pc, #440]	; (d000265c <main+0x1244>)
d00024a2:	881a      	ldrh	r2, [r3, #0]
d00024a4:	2a00      	cmp	r2, #0
d00024a6:	d0f0      	beq.n	d000248a <main+0x1072>
d00024a8:	3a01      	subs	r2, #1
d00024aa:	801a      	strh	r2, [r3, #0]
d00024ac:	e7ed      	b.n	d000248a <main+0x1072>
d00024ae:	4b6d      	ldr	r3, [pc, #436]	; (d0002664 <main+0x124c>)
d00024b0:	881a      	ldrh	r2, [r3, #0]
d00024b2:	2a3f      	cmp	r2, #63	; 0x3f
d00024b4:	d801      	bhi.n	d00024ba <main+0x10a2>
d00024b6:	3201      	adds	r2, #1
d00024b8:	801a      	strh	r2, [r3, #0]
d00024ba:	8818      	ldrh	r0, [r3, #0]
d00024bc:	f000 fa48 	bl	d0002950 <SetCurrentPatternSelect>
d00024c0:	f003 f9e6 	bl	d0005890 <ConfigScreenUpdate>
d00024c4:	f7ff bb7e 	b.w	d0001bc4 <main+0x7ac>
d00024c8:	4b66      	ldr	r3, [pc, #408]	; (d0002664 <main+0x124c>)
d00024ca:	881a      	ldrh	r2, [r3, #0]
d00024cc:	2a00      	cmp	r2, #0
d00024ce:	d0f4      	beq.n	d00024ba <main+0x10a2>
d00024d0:	3a01      	subs	r2, #1
d00024d2:	801a      	strh	r2, [r3, #0]
d00024d4:	e7f1      	b.n	d00024ba <main+0x10a2>
d00024d6:	4b59      	ldr	r3, [pc, #356]	; (d000263c <main+0x1224>)
d00024d8:	881a      	ldrh	r2, [r3, #0]
d00024da:	2a3f      	cmp	r2, #63	; 0x3f
d00024dc:	f63f af2c 	bhi.w	d0002338 <main+0xf20>
d00024e0:	3201      	adds	r2, #1
d00024e2:	801a      	strh	r2, [r3, #0]
d00024e4:	e728      	b.n	d0002338 <main+0xf20>
d00024e6:	4a58      	ldr	r2, [pc, #352]	; (d0002648 <main+0x1230>)
d00024e8:	79d3      	ldrb	r3, [r2, #7]
d00024ea:	f1c3 0301 	rsb	r3, r3, #1
d00024ee:	71d3      	strb	r3, [r2, #7]
d00024f0:	f003 f85e 	bl	d00055b0 <UpdateChannelToggles>
d00024f4:	f7ff bb66 	b.w	d0001bc4 <main+0x7ac>
d00024f8:	f003 fa02 	bl	d0005900 <CloseConfigScreen>
d00024fc:	4b58      	ldr	r3, [pc, #352]	; (d0002660 <main+0x1248>)
d00024fe:	781b      	ldrb	r3, [r3, #0]
d0002500:	2b01      	cmp	r3, #1
d0002502:	d0bb      	beq.n	d000247c <main+0x1064>
d0002504:	2b02      	cmp	r3, #2
d0002506:	f47f ab5d 	bne.w	d0001bc4 <main+0x7ac>
d000250a:	4a4d      	ldr	r2, [pc, #308]	; (d0002640 <main+0x1228>)
d000250c:	7813      	ldrb	r3, [r2, #0]
d000250e:	2b01      	cmp	r3, #1
d0002510:	d9be      	bls.n	d0002490 <main+0x1078>
d0002512:	3b01      	subs	r3, #1
d0002514:	7013      	strb	r3, [r2, #0]
d0002516:	e7bb      	b.n	d0002490 <main+0x1078>
d0002518:	4b51      	ldr	r3, [pc, #324]	; (d0002660 <main+0x1248>)
d000251a:	781b      	ldrb	r3, [r3, #0]
d000251c:	2b03      	cmp	r3, #3
d000251e:	f47f ab51 	bne.w	d0001bc4 <main+0x7ac>
d0002522:	f7fe fcff 	bl	d0000f24 <CheckDirectorySelect>
d0002526:	2800      	cmp	r0, #0
d0002528:	f47f ab4c 	bne.w	d0001bc4 <main+0x7ac>
d000252c:	4c4e      	ldr	r4, [pc, #312]	; (d0002668 <main+0x1250>)
d000252e:	68ab      	ldr	r3, [r5, #8]
d0002530:	484e      	ldr	r0, [pc, #312]	; (d000266c <main+0x1254>)
d0002532:	4798      	blx	r3
d0002534:	7823      	ldrb	r3, [r4, #0]
d0002536:	2b01      	cmp	r3, #1
d0002538:	d104      	bne.n	d0002544 <main+0x112c>
d000253a:	68ab      	ldr	r3, [r5, #8]
d000253c:	484c      	ldr	r0, [pc, #304]	; (d0002670 <main+0x1258>)
d000253e:	4798      	blx	r3
d0002540:	f7fe fd42 	bl	d0000fc8 <SaveKMD>
d0002544:	7823      	ldrb	r3, [r4, #0]
d0002546:	2b00      	cmp	r3, #0
d0002548:	f47f ab3c 	bne.w	d0001bc4 <main+0x7ac>
d000254c:	68ab      	ldr	r3, [r5, #8]
d000254e:	4849      	ldr	r0, [pc, #292]	; (d0002674 <main+0x125c>)
d0002550:	4798      	blx	r3
d0002552:	f7fe fd4b 	bl	d0000fec <LoadKMD>
d0002556:	2800      	cmp	r0, #0
d0002558:	f43f ab34 	beq.w	d0001bc4 <main+0x7ac>
d000255c:	f7fe fcd6 	bl	d0000f0c <CloseFileRequest>
d0002560:	f7ff bb30 	b.w	d0001bc4 <main+0x7ac>
d0002564:	4b3e      	ldr	r3, [pc, #248]	; (d0002660 <main+0x1248>)
d0002566:	781b      	ldrb	r3, [r3, #0]
d0002568:	2b03      	cmp	r3, #3
d000256a:	f47f ab2b 	bne.w	d0001bc4 <main+0x7ac>
d000256e:	f7fe fd19 	bl	d0000fa4 <ParentDirectory>
d0002572:	f7ff bb27 	b.w	d0001bc4 <main+0x7ac>
d0002576:	4b3a      	ldr	r3, [pc, #232]	; (d0002660 <main+0x1248>)
d0002578:	781b      	ldrb	r3, [r3, #0]
d000257a:	2b02      	cmp	r3, #2
d000257c:	f47f ab22 	bne.w	d0001bc4 <main+0x7ac>
d0002580:	f002 ffb4 	bl	d00054ec <SampleIDEdit_ChangeLoopToggle>
d0002584:	f003 f984 	bl	d0005890 <ConfigScreenUpdate>
d0002588:	f7ff bb1c 	b.w	d0001bc4 <main+0x7ac>
d000258c:	2b02      	cmp	r3, #2
d000258e:	f47f ab19 	bne.w	d0001bc4 <main+0x7ac>
d0002592:	4a2b      	ldr	r2, [pc, #172]	; (d0002640 <main+0x1228>)
d0002594:	7813      	ldrb	r3, [r2, #0]
d0002596:	2b1e      	cmp	r3, #30
d0002598:	f63f af7a 	bhi.w	d0002490 <main+0x1078>
d000259c:	3301      	adds	r3, #1
d000259e:	7013      	strb	r3, [r2, #0]
d00025a0:	e776      	b.n	d0002490 <main+0x1078>
d00025a2:	4b35      	ldr	r3, [pc, #212]	; (d0002678 <main+0x1260>)
d00025a4:	781b      	ldrb	r3, [r3, #0]
d00025a6:	2b01      	cmp	r3, #1
d00025a8:	f47f ab0c 	bne.w	d0001bc4 <main+0x7ac>
d00025ac:	2114      	movs	r1, #20
d00025ae:	203f      	movs	r0, #63	; 0x3f
d00025b0:	f001 fb76 	bl	d0003ca0 <guiSetButtonGadgetFlags>
d00025b4:	2114      	movs	r1, #20
d00025b6:	203e      	movs	r0, #62	; 0x3e
d00025b8:	f001 fb72 	bl	d0003ca0 <guiSetButtonGadgetFlags>
d00025bc:	2128      	movs	r1, #40	; 0x28
d00025be:	203f      	movs	r0, #63	; 0x3f
d00025c0:	f001 fb7a 	bl	d0003cb8 <guiClrButtonGadgetFlags>
d00025c4:	2128      	movs	r1, #40	; 0x28
d00025c6:	203e      	movs	r0, #62	; 0x3e
d00025c8:	f001 fb76 	bl	d0003cb8 <guiClrButtonGadgetFlags>
d00025cc:	2300      	movs	r3, #0
d00025ce:	4a2a      	ldr	r2, [pc, #168]	; (d0002678 <main+0x1260>)
d00025d0:	7013      	strb	r3, [r2, #0]
d00025d2:	f7ff baf7 	b.w	d0001bc4 <main+0x7ac>
d00025d6:	2114      	movs	r1, #20
d00025d8:	203f      	movs	r0, #63	; 0x3f
d00025da:	f001 fb6d 	bl	d0003cb8 <guiClrButtonGadgetFlags>
d00025de:	2114      	movs	r1, #20
d00025e0:	203e      	movs	r0, #62	; 0x3e
d00025e2:	f001 fb69 	bl	d0003cb8 <guiClrButtonGadgetFlags>
d00025e6:	2128      	movs	r1, #40	; 0x28
d00025e8:	203f      	movs	r0, #63	; 0x3f
d00025ea:	f001 fb59 	bl	d0003ca0 <guiSetButtonGadgetFlags>
d00025ee:	2128      	movs	r1, #40	; 0x28
d00025f0:	203e      	movs	r0, #62	; 0x3e
d00025f2:	f001 fb55 	bl	d0003ca0 <guiSetButtonGadgetFlags>
d00025f6:	2301      	movs	r3, #1
d00025f8:	4a1f      	ldr	r2, [pc, #124]	; (d0002678 <main+0x1260>)
d00025fa:	7013      	strb	r3, [r2, #0]
d00025fc:	f7ff bae2 	b.w	d0001bc4 <main+0x7ac>
d0002600:	4913      	ldr	r1, [pc, #76]	; (d0002650 <main+0x1238>)
d0002602:	2200      	movs	r2, #0
d0002604:	4b11      	ldr	r3, [pc, #68]	; (d000264c <main+0x1234>)
d0002606:	2001      	movs	r0, #1
d0002608:	701a      	strb	r2, [r3, #0]
d000260a:	7008      	strb	r0, [r1, #0]
d000260c:	f000 fc46 	bl	d0002e9c <RestartPlayer>
d0002610:	f000 f952 	bl	d00028b8 <StartTimer>
d0002614:	f7ff bad6 	b.w	d0001bc4 <main+0x7ac>
d0002618:	2200      	movs	r2, #0
d000261a:	701a      	strb	r2, [r3, #0]
d000261c:	f003 f90c 	bl	d0005838 <UpdateChannelOffset>
d0002620:	2317      	movs	r3, #23
d0002622:	e63c      	b.n	d000229e <main+0xe86>
d0002624:	f8df 8054 	ldr.w	r8, [pc, #84]	; d000267c <main+0x1264>
d0002628:	f898 3000 	ldrb.w	r3, [r8]
d000262c:	3301      	adds	r3, #1
d000262e:	b2db      	uxtb	r3, r3
d0002630:	2b17      	cmp	r3, #23
d0002632:	f888 3000 	strb.w	r3, [r8]
d0002636:	f63f ae47 	bhi.w	d00022c8 <main+0xeb0>
d000263a:	e5f5      	b.n	d0002228 <main+0xe10>
d000263c:	d00515f8 	.word	0xd00515f8
d0002640:	d000eff8 	.word	0xd000eff8
d0002644:	d000f040 	.word	0xd000f040
d0002648:	d000ef6c 	.word	0xd000ef6c
d000264c:	d000f038 	.word	0xd000f038
d0002650:	d000f039 	.word	0xd000f039
d0002654:	d00515e8 	.word	0xd00515e8
d0002658:	d000f043 	.word	0xd000f043
d000265c:	d00515f6 	.word	0xd00515f6
d0002660:	d000f04c 	.word	0xd000f04c
d0002664:	d00515f4 	.word	0xd00515f4
d0002668:	d000f011 	.word	0xd000f011
d000266c:	d00072ec 	.word	0xd00072ec
d0002670:	d000730c 	.word	0xd000730c
d0002674:	d0007320 	.word	0xd0007320
d0002678:	d000f01e 	.word	0xd000f01e
d000267c:	d000f041 	.word	0xd000f041
d0002680:	3201      	adds	r2, #1
d0002682:	801a      	strh	r2, [r3, #0]
d0002684:	e701      	b.n	d000248a <main+0x1072>
d0002686:	bf00      	nop

d0002688 <getNoteLabel>:
d0002688:	28ff      	cmp	r0, #255	; 0xff
d000268a:	d009      	beq.n	d00026a0 <getNoteLabel+0x18>
d000268c:	28fe      	cmp	r0, #254	; 0xfe
d000268e:	d009      	beq.n	d00026a4 <getNoteLabel+0x1c>
d0002690:	2847      	cmp	r0, #71	; 0x47
d0002692:	d803      	bhi.n	d000269c <getNoteLabel+0x14>
d0002694:	4b04      	ldr	r3, [pc, #16]	; (d00026a8 <getNoteLabel+0x20>)
d0002696:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d000269a:	4770      	bx	lr
d000269c:	4803      	ldr	r0, [pc, #12]	; (d00026ac <getNoteLabel+0x24>)
d000269e:	4770      	bx	lr
d00026a0:	4803      	ldr	r0, [pc, #12]	; (d00026b0 <getNoteLabel+0x28>)
d00026a2:	4770      	bx	lr
d00026a4:	4803      	ldr	r0, [pc, #12]	; (d00026b4 <getNoteLabel+0x2c>)
d00026a6:	4770      	bx	lr
d00026a8:	d02516e0 	.word	0xd02516e0
d00026ac:	d0007740 	.word	0xd0007740
d00026b0:	d000773c 	.word	0xd000773c
d00026b4:	d0007738 	.word	0xd0007738

d00026b8 <initNoteLabels>:
d00026b8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00026bc:	f8df a060 	ldr.w	sl, [pc, #96]	; d0002720 <initNoteLabels+0x68>
d00026c0:	b082      	sub	sp, #8
d00026c2:	2600      	movs	r6, #0
d00026c4:	f8df 805c 	ldr.w	r8, [pc, #92]	; d0002724 <initNoteLabels+0x6c>
d00026c8:	4f13      	ldr	r7, [pc, #76]	; (d0002718 <initNoteLabels+0x60>)
d00026ca:	f8df 905c 	ldr.w	r9, [pc, #92]	; d0002728 <initNoteLabels+0x70>
d00026ce:	4d13      	ldr	r5, [pc, #76]	; (d000271c <initNoteLabels+0x64>)
d00026d0:	4654      	mov	r4, sl
d00026d2:	e006      	b.n	d00026e2 <initNoteLabels+0x2a>
d00026d4:	781b      	ldrb	r3, [r3, #0]
d00026d6:	3404      	adds	r4, #4
d00026d8:	9600      	str	r6, [sp, #0]
d00026da:	f003 faf7 	bl	d0005ccc <sniprintf>
d00026de:	45a8      	cmp	r8, r5
d00026e0:	d011      	beq.n	d0002706 <initNoteLabels+0x4e>
d00026e2:	f855 3b04 	ldr.w	r3, [r5], #4
d00026e6:	4620      	mov	r0, r4
d00026e8:	463a      	mov	r2, r7
d00026ea:	2104      	movs	r1, #4
d00026ec:	f893 c001 	ldrb.w	ip, [r3, #1]
d00026f0:	f1bc 0f23 	cmp.w	ip, #35	; 0x23
d00026f4:	d1ee      	bne.n	d00026d4 <initNoteLabels+0x1c>
d00026f6:	464a      	mov	r2, r9
d00026f8:	9600      	str	r6, [sp, #0]
d00026fa:	f003 fae7 	bl	d0005ccc <sniprintf>
d00026fe:	45a8      	cmp	r8, r5
d0002700:	f104 0404 	add.w	r4, r4, #4
d0002704:	d1ed      	bne.n	d00026e2 <initNoteLabels+0x2a>
d0002706:	3601      	adds	r6, #1
d0002708:	f10a 0a30 	add.w	sl, sl, #48	; 0x30
d000270c:	2e06      	cmp	r6, #6
d000270e:	d1de      	bne.n	d00026ce <initNoteLabels+0x16>
d0002710:	b002      	add	sp, #8
d0002712:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0002716:	bf00      	nop
d0002718:	d000774c 	.word	0xd000774c
d000271c:	d000ef74 	.word	0xd000ef74
d0002720:	d02516e0 	.word	0xd02516e0
d0002724:	d000efa4 	.word	0xd000efa4
d0002728:	d0007744 	.word	0xd0007744

d000272c <ClearSong>:
d000272c:	b570      	push	{r4, r5, r6, lr}
d000272e:	4d3a      	ldr	r5, [pc, #232]	; (d0002818 <ClearSong+0xec>)
d0002730:	2002      	movs	r0, #2
d0002732:	4c3a      	ldr	r4, [pc, #232]	; (d000281c <ClearSong+0xf0>)
d0002734:	f645 0615 	movw	r6, #22549	; 0x5815
d0002738:	6cab      	ldr	r3, [r5, #72]	; 0x48
d000273a:	4798      	blx	r3
d000273c:	4a38      	ldr	r2, [pc, #224]	; (d0002820 <ClearSong+0xf4>)
d000273e:	4b39      	ldr	r3, [pc, #228]	; (d0002824 <ClearSong+0xf8>)
d0002740:	f504 6102 	add.w	r1, r4, #2080	; 0x820
d0002744:	5aa0      	ldrh	r0, [r4, r2]
d0002746:	22ff      	movs	r2, #255	; 0xff
d0002748:	5ae3      	ldrh	r3, [r4, r3]
d000274a:	fb00 f003 	mul.w	r0, r0, r3
d000274e:	4b36      	ldr	r3, [pc, #216]	; (d0002828 <ClearSong+0xfc>)
d0002750:	0080      	lsls	r0, r0, #2
d0002752:	fbb3 f3f0 	udiv	r3, r3, r0
d0002756:	6ba8      	ldr	r0, [r5, #56]	; 0x38
d0002758:	3b01      	subs	r3, #1
d000275a:	6006      	str	r6, [r0, #0]
d000275c:	6bae      	ldr	r6, [r5, #56]	; 0x38
d000275e:	6ba8      	ldr	r0, [r5, #56]	; 0x38
d0002760:	f501 3500 	add.w	r5, r1, #131072	; 0x20000
d0002764:	6073      	str	r3, [r6, #4]
d0002766:	4b31      	ldr	r3, [pc, #196]	; (d000282c <ClearSong+0x100>)
d0002768:	60c3      	str	r3, [r0, #12]
d000276a:	f5a1 6300 	sub.w	r3, r1, #2048	; 0x800
d000276e:	e943 2208 	strd	r2, r2, [r3, #-32]
d0002772:	e943 2206 	strd	r2, r2, [r3, #-24]
d0002776:	e943 2204 	strd	r2, r2, [r3, #-16]
d000277a:	e943 2202 	strd	r2, r2, [r3, #-8]
d000277e:	3320      	adds	r3, #32
d0002780:	4299      	cmp	r1, r3
d0002782:	d1f4      	bne.n	d000276e <ClearSong+0x42>
d0002784:	f501 6100 	add.w	r1, r1, #2048	; 0x800
d0002788:	428d      	cmp	r5, r1
d000278a:	d1ee      	bne.n	d000276a <ClearSong+0x3e>
d000278c:	2000      	movs	r0, #0
d000278e:	4925      	ldr	r1, [pc, #148]	; (d0002824 <ClearSong+0xf8>)
d0002790:	4d27      	ldr	r5, [pc, #156]	; (d0002830 <ClearSong+0x104>)
d0002792:	4603      	mov	r3, r0
d0002794:	4421      	add	r1, r4
d0002796:	4a27      	ldr	r2, [pc, #156]	; (d0002834 <ClearSong+0x108>)
d0002798:	5360      	strh	r0, [r4, r5]
d000279a:	6013      	str	r3, [r2, #0]
d000279c:	7613      	strb	r3, [r2, #24]
d000279e:	6053      	str	r3, [r2, #4]
d00027a0:	7653      	strb	r3, [r2, #25]
d00027a2:	e9c2 3302 	strd	r3, r3, [r2, #8]
d00027a6:	e9c2 3304 	strd	r3, r3, [r2, #16]
d00027aa:	321c      	adds	r2, #28
d00027ac:	428a      	cmp	r2, r1
d00027ae:	d1f4      	bne.n	d000279a <ClearSong+0x6e>
d00027b0:	4a21      	ldr	r2, [pc, #132]	; (d0002838 <ClearSong+0x10c>)
d00027b2:	2101      	movs	r1, #1
d00027b4:	4d21      	ldr	r5, [pc, #132]	; (d000283c <ClearSong+0x110>)
d00027b6:	7812      	ldrb	r2, [r2, #0]
d00027b8:	5163      	str	r3, [r4, r5]
d00027ba:	3510      	adds	r5, #16
d00027bc:	4820      	ldr	r0, [pc, #128]	; (d0002840 <ClearSong+0x114>)
d00027be:	2a03      	cmp	r2, #3
d00027c0:	4e20      	ldr	r6, [pc, #128]	; (d0002844 <ClearSong+0x118>)
d00027c2:	5023      	str	r3, [r4, r0]
d00027c4:	51a3      	str	r3, [r4, r6]
d00027c6:	5361      	strh	r1, [r4, r5]
d00027c8:	d100      	bne.n	d00027cc <ClearSong+0xa0>
d00027ca:	bd70      	pop	{r4, r5, r6, pc}
d00027cc:	f7fd fcf2 	bl	d00001b4 <CaptureDrawBuffer>
d00027d0:	f7fd fcfc 	bl	d00001cc <SetDrawToBackLayer>
d00027d4:	5ba2      	ldrh	r2, [r4, r6]
d00027d6:	213e      	movs	r1, #62	; 0x3e
d00027d8:	2058      	movs	r0, #88	; 0x58
d00027da:	f001 f897 	bl	d000390c <uiTextDrawNumberU>
d00027de:	f7fd fd07 	bl	d00001f0 <ReleaseDrawBuffer>
d00027e2:	f7fd fce7 	bl	d00001b4 <CaptureDrawBuffer>
d00027e6:	f7fd fcf1 	bl	d00001cc <SetDrawToBackLayer>
d00027ea:	4b17      	ldr	r3, [pc, #92]	; (d0002848 <ClearSong+0x11c>)
d00027ec:	2123      	movs	r1, #35	; 0x23
d00027ee:	2058      	movs	r0, #88	; 0x58
d00027f0:	5ae2      	ldrh	r2, [r4, r3]
d00027f2:	f001 f88b 	bl	d000390c <uiTextDrawNumberU>
d00027f6:	f7fd fcfb 	bl	d00001f0 <ReleaseDrawBuffer>
d00027fa:	f7fd fcdb 	bl	d00001b4 <CaptureDrawBuffer>
d00027fe:	f7fd fce5 	bl	d00001cc <SetDrawToBackLayer>
d0002802:	5b62      	ldrh	r2, [r4, r5]
d0002804:	2159      	movs	r1, #89	; 0x59
d0002806:	2058      	movs	r0, #88	; 0x58
d0002808:	f001 f880 	bl	d000390c <uiTextDrawNumberU>
d000280c:	f7fd fcf0 	bl	d00001f0 <ReleaseDrawBuffer>
d0002810:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0002814:	f003 b83c 	b.w	d0005890 <ConfigScreenUpdate>
d0002818:	2001f000 	.word	0x2001f000
d000281c:	d0031280 	.word	0xd0031280
d0002820:	00020366 	.word	0x00020366
d0002824:	00020364 	.word	0x00020364
d0002828:	000927c0 	.word	0x000927c0
d000282c:	d0002f1d 	.word	0xd0002f1d
d0002830:	0002037a 	.word	0x0002037a
d0002834:	d0051280 	.word	0xd0051280
d0002838:	d000f04c 	.word	0xd000f04c
d000283c:	00020368 	.word	0x00020368
d0002840:	0002036c 	.word	0x0002036c
d0002844:	00020374 	.word	0x00020374
d0002848:	00020376 	.word	0x00020376

d000284c <setTempoSpeed>:
d000284c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0002850:	4603      	mov	r3, r0
d0002852:	4d12      	ldr	r5, [pc, #72]	; (d000289c <setTempoSpeed+0x50>)
d0002854:	4c12      	ldr	r4, [pc, #72]	; (d00028a0 <setTempoSpeed+0x54>)
d0002856:	2002      	movs	r0, #2
d0002858:	4e12      	ldr	r6, [pc, #72]	; (d00028a4 <setTempoSpeed+0x58>)
d000285a:	4f13      	ldr	r7, [pc, #76]	; (d00028a8 <setTempoSpeed+0x5c>)
d000285c:	53a9      	strh	r1, [r5, r6]
d000285e:	53eb      	strh	r3, [r5, r7]
d0002860:	6ca3      	ldr	r3, [r4, #72]	; 0x48
d0002862:	4798      	blx	r3
d0002864:	5be9      	ldrh	r1, [r5, r7]
d0002866:	5baa      	ldrh	r2, [r5, r6]
d0002868:	f645 0515 	movw	r5, #22549	; 0x5815
d000286c:	4b0f      	ldr	r3, [pc, #60]	; (d00028ac <setTempoSpeed+0x60>)
d000286e:	fb02 f201 	mul.w	r2, r2, r1
d0002872:	6ba0      	ldr	r0, [r4, #56]	; 0x38
d0002874:	490e      	ldr	r1, [pc, #56]	; (d00028b0 <setTempoSpeed+0x64>)
d0002876:	0092      	lsls	r2, r2, #2
d0002878:	6005      	str	r5, [r0, #0]
d000287a:	6ba6      	ldr	r6, [r4, #56]	; 0x38
d000287c:	4d0d      	ldr	r5, [pc, #52]	; (d00028b4 <setTempoSpeed+0x68>)
d000287e:	6ba0      	ldr	r0, [r4, #56]	; 0x38
d0002880:	7809      	ldrb	r1, [r1, #0]
d0002882:	fbb3 f3f2 	udiv	r3, r3, r2
d0002886:	3b01      	subs	r3, #1
d0002888:	6073      	str	r3, [r6, #4]
d000288a:	60c5      	str	r5, [r0, #12]
d000288c:	b121      	cbz	r1, d0002898 <setTempoSpeed+0x4c>
d000288e:	6ca3      	ldr	r3, [r4, #72]	; 0x48
d0002890:	2003      	movs	r0, #3
d0002892:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0002896:	4718      	bx	r3
d0002898:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d000289c:	d0031280 	.word	0xd0031280
d00028a0:	2001f000 	.word	0x2001f000
d00028a4:	00020366 	.word	0x00020366
d00028a8:	00020364 	.word	0x00020364
d00028ac:	000927c0 	.word	0x000927c0
d00028b0:	d000f039 	.word	0xd000f039
d00028b4:	d0002f1d 	.word	0xd0002f1d

d00028b8 <StartTimer>:
d00028b8:	4b01      	ldr	r3, [pc, #4]	; (d00028c0 <StartTimer+0x8>)
d00028ba:	2003      	movs	r0, #3
d00028bc:	6c9b      	ldr	r3, [r3, #72]	; 0x48
d00028be:	4718      	bx	r3
d00028c0:	2001f000 	.word	0x2001f000

d00028c4 <StopTimer>:
d00028c4:	4b01      	ldr	r3, [pc, #4]	; (d00028cc <StopTimer+0x8>)
d00028c6:	2002      	movs	r0, #2
d00028c8:	6c9b      	ldr	r3, [r3, #72]	; 0x48
d00028ca:	4718      	bx	r3
d00028cc:	2001f000 	.word	0x2001f000

d00028d0 <ShowSongLength>:
d00028d0:	b508      	push	{r3, lr}
d00028d2:	f7fd fc6f 	bl	d00001b4 <CaptureDrawBuffer>
d00028d6:	f7fd fc79 	bl	d00001cc <SetDrawToBackLayer>
d00028da:	4b05      	ldr	r3, [pc, #20]	; (d00028f0 <ShowSongLength+0x20>)
d00028dc:	4a05      	ldr	r2, [pc, #20]	; (d00028f4 <ShowSongLength+0x24>)
d00028de:	2159      	movs	r1, #89	; 0x59
d00028e0:	2058      	movs	r0, #88	; 0x58
d00028e2:	5ad2      	ldrh	r2, [r2, r3]
d00028e4:	f001 f812 	bl	d000390c <uiTextDrawNumberU>
d00028e8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d00028ec:	f7fd bc80 	b.w	d00001f0 <ReleaseDrawBuffer>
d00028f0:	00020378 	.word	0x00020378
d00028f4:	d0031280 	.word	0xd0031280

d00028f8 <SetSongPosition>:
d00028f8:	4b11      	ldr	r3, [pc, #68]	; (d0002940 <SetSongPosition+0x48>)
d00028fa:	b570      	push	{r4, r5, r6, lr}
d00028fc:	4403      	add	r3, r0
d00028fe:	4c11      	ldr	r4, [pc, #68]	; (d0002944 <SetSongPosition+0x4c>)
d0002900:	4e11      	ldr	r6, [pc, #68]	; (d0002948 <SetSongPosition+0x50>)
d0002902:	eb04 0343 	add.w	r3, r4, r3, lsl #1
d0002906:	4d11      	ldr	r5, [pc, #68]	; (d000294c <SetSongPosition+0x54>)
d0002908:	53a0      	strh	r0, [r4, r6]
d000290a:	885b      	ldrh	r3, [r3, #2]
d000290c:	5363      	strh	r3, [r4, r5]
d000290e:	f7fd fc51 	bl	d00001b4 <CaptureDrawBuffer>
d0002912:	f7fd fc5b 	bl	d00001cc <SetDrawToBackLayer>
d0002916:	5ba2      	ldrh	r2, [r4, r6]
d0002918:	2123      	movs	r1, #35	; 0x23
d000291a:	2058      	movs	r0, #88	; 0x58
d000291c:	f000 fff6 	bl	d000390c <uiTextDrawNumberU>
d0002920:	f7fd fc66 	bl	d00001f0 <ReleaseDrawBuffer>
d0002924:	f7fd fc46 	bl	d00001b4 <CaptureDrawBuffer>
d0002928:	f7fd fc50 	bl	d00001cc <SetDrawToBackLayer>
d000292c:	5b62      	ldrh	r2, [r4, r5]
d000292e:	213e      	movs	r1, #62	; 0x3e
d0002930:	2058      	movs	r0, #88	; 0x58
d0002932:	f000 ffeb 	bl	d000390c <uiTextDrawNumberU>
d0002936:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d000293a:	f7fd bc59 	b.w	d00001f0 <ReleaseDrawBuffer>
d000293e:	bf00      	nop
d0002940:	000101bc 	.word	0x000101bc
d0002944:	d0031280 	.word	0xd0031280
d0002948:	00020376 	.word	0x00020376
d000294c:	00020374 	.word	0x00020374

d0002950 <SetCurrentPatternSelect>:
d0002950:	b538      	push	{r3, r4, r5, lr}
d0002952:	4a0b      	ldr	r2, [pc, #44]	; (d0002980 <SetCurrentPatternSelect+0x30>)
d0002954:	4c0b      	ldr	r4, [pc, #44]	; (d0002984 <SetCurrentPatternSelect+0x34>)
d0002956:	4b0c      	ldr	r3, [pc, #48]	; (d0002988 <SetCurrentPatternSelect+0x38>)
d0002958:	5aa2      	ldrh	r2, [r4, r2]
d000295a:	4d0c      	ldr	r5, [pc, #48]	; (d000298c <SetCurrentPatternSelect+0x3c>)
d000295c:	4413      	add	r3, r2
d000295e:	5360      	strh	r0, [r4, r5]
d0002960:	eb04 0343 	add.w	r3, r4, r3, lsl #1
d0002964:	8058      	strh	r0, [r3, #2]
d0002966:	f7fd fc25 	bl	d00001b4 <CaptureDrawBuffer>
d000296a:	f7fd fc2f 	bl	d00001cc <SetDrawToBackLayer>
d000296e:	5b62      	ldrh	r2, [r4, r5]
d0002970:	213e      	movs	r1, #62	; 0x3e
d0002972:	2058      	movs	r0, #88	; 0x58
d0002974:	f000 ffca 	bl	d000390c <uiTextDrawNumberU>
d0002978:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d000297c:	f7fd bc38 	b.w	d00001f0 <ReleaseDrawBuffer>
d0002980:	00020376 	.word	0x00020376
d0002984:	d0031280 	.word	0xd0031280
d0002988:	000101bc 	.word	0x000101bc
d000298c:	00020374 	.word	0x00020374

d0002990 <SetSongLength>:
d0002990:	b538      	push	{r3, r4, r5, lr}
d0002992:	4d08      	ldr	r5, [pc, #32]	; (d00029b4 <SetSongLength+0x24>)
d0002994:	4c08      	ldr	r4, [pc, #32]	; (d00029b8 <SetSongLength+0x28>)
d0002996:	5328      	strh	r0, [r5, r4]
d0002998:	f7fd fc0c 	bl	d00001b4 <CaptureDrawBuffer>
d000299c:	f7fd fc16 	bl	d00001cc <SetDrawToBackLayer>
d00029a0:	5b2a      	ldrh	r2, [r5, r4]
d00029a2:	2159      	movs	r1, #89	; 0x59
d00029a4:	2058      	movs	r0, #88	; 0x58
d00029a6:	f000 ffb1 	bl	d000390c <uiTextDrawNumberU>
d00029aa:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d00029ae:	f7fd bc1f 	b.w	d00001f0 <ReleaseDrawBuffer>
d00029b2:	bf00      	nop
d00029b4:	d0031280 	.word	0xd0031280
d00029b8:	00020378 	.word	0x00020378

d00029bc <doTrackerTicks>:
d00029bc:	4a5e      	ldr	r2, [pc, #376]	; (d0002b38 <doTrackerTicks+0x17c>)
d00029be:	2100      	movs	r1, #0
d00029c0:	485e      	ldr	r0, [pc, #376]	; (d0002b3c <doTrackerTicks+0x180>)
d00029c2:	4b5f      	ldr	r3, [pc, #380]	; (d0002b40 <doTrackerTicks+0x184>)
d00029c4:	f8df c194 	ldr.w	ip, [pc, #404]	; d0002b5c <doTrackerTicks+0x1a0>
d00029c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00029cc:	5814      	ldr	r4, [r2, r0]
d00029ce:	b083      	sub	sp, #12
d00029d0:	4d5c      	ldr	r5, [pc, #368]	; (d0002b44 <doTrackerTicks+0x188>)
d00029d2:	f240 39ff 	movw	r9, #1023	; 0x3ff
d00029d6:	fba3 0304 	umull	r0, r3, r3, r4
d00029da:	485b      	ldr	r0, [pc, #364]	; (d0002b48 <doTrackerTicks+0x18c>)
d00029dc:	5b57      	ldrh	r7, [r2, r5]
d00029de:	f04f 0802 	mov.w	r8, #2
d00029e2:	f023 0e01 	bic.w	lr, r3, #1
d00029e6:	5812      	ldr	r2, [r2, r0]
d00029e8:	4e58      	ldr	r6, [pc, #352]	; (d0002b4c <doTrackerTicks+0x190>)
d00029ea:	02ff      	lsls	r7, r7, #11
d00029ec:	eb0e 0353 	add.w	r3, lr, r3, lsr #1
d00029f0:	4d57      	ldr	r5, [pc, #348]	; (d0002b50 <doTrackerTicks+0x194>)
d00029f2:	4858      	ldr	r0, [pc, #352]	; (d0002b54 <doTrackerTicks+0x198>)
d00029f4:	eb06 1642 	add.w	r6, r6, r2, lsl #5
d00029f8:	eba4 0e03 	sub.w	lr, r4, r3
d00029fc:	eb05 1542 	add.w	r5, r5, r2, lsl #5
d0002a00:	f100 0428 	add.w	r4, r0, #40	; 0x28
d0002a04:	9501      	str	r5, [sp, #4]
d0002a06:	19c2      	adds	r2, r0, r7
d0002a08:	9d01      	ldr	r5, [sp, #4]
d0002a0a:	5d93      	ldrb	r3, [r2, r6]
d0002a0c:	5d52      	ldrb	r2, [r2, r5]
d0002a0e:	f003 030f 	and.w	r3, r3, #15
d0002a12:	ea4f 1a12 	mov.w	sl, r2, lsr #4
d0002a16:	f002 0b0f 	and.w	fp, r2, #15
d0002a1a:	2b0a      	cmp	r3, #10
d0002a1c:	d817      	bhi.n	d0002a4e <doTrackerTicks+0x92>
d0002a1e:	e8df f003 	tbb	[pc, r3]
d0002a22:	3606      	.short	0x3606
d0002a24:	1616164c 	.word	0x1616164c
d0002a28:	16161616 	.word	0x16161616
d0002a2c:	1e          	.byte	0x1e
d0002a2d:	00          	.byte	0x00
d0002a2e:	f1be 0f01 	cmp.w	lr, #1
d0002a32:	d06a      	beq.n	d0002b0a <doTrackerTicks+0x14e>
d0002a34:	f101 025c 	add.w	r2, r1, #92	; 0x5c
d0002a38:	f1be 0f02 	cmp.w	lr, #2
d0002a3c:	eb0c 0282 	add.w	r2, ip, r2, lsl #2
d0002a40:	d04f      	beq.n	d0002ae2 <doTrackerTicks+0x126>
d0002a42:	6853      	ldr	r3, [r2, #4]
d0002a44:	4d44      	ldr	r5, [pc, #272]	; (d0002b58 <doTrackerTicks+0x19c>)
d0002a46:	7822      	ldrb	r2, [r4, #0]
d0002a48:	f835 2012 	ldrh.w	r2, [r5, r2, lsl #1]
d0002a4c:	611a      	str	r2, [r3, #16]
d0002a4e:	3101      	adds	r1, #1
d0002a50:	3004      	adds	r0, #4
d0002a52:	3401      	adds	r4, #1
d0002a54:	2908      	cmp	r1, #8
d0002a56:	d1d6      	bne.n	d0002a06 <doTrackerTicks+0x4a>
d0002a58:	b003      	add	sp, #12
d0002a5a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0002a5e:	f914 3c08 	ldrsb.w	r3, [r4, #-8]
d0002a62:	ebaa 0a0b 	sub.w	sl, sl, fp
d0002a66:	f101 025c 	add.w	r2, r1, #92	; 0x5c
d0002a6a:	3101      	adds	r1, #1
d0002a6c:	449a      	add	sl, r3
d0002a6e:	3004      	adds	r0, #4
d0002a70:	eb0c 0282 	add.w	r2, ip, r2, lsl #2
d0002a74:	2908      	cmp	r1, #8
d0002a76:	f38a 0a06 	usat	sl, #6, sl
d0002a7a:	f104 0401 	add.w	r4, r4, #1
d0002a7e:	f804 ac09 	strb.w	sl, [r4, #-9]
d0002a82:	ea4f 034a 	mov.w	r3, sl, lsl #1
d0002a86:	6852      	ldr	r2, [r2, #4]
d0002a88:	6393      	str	r3, [r2, #56]	; 0x38
d0002a8a:	d1bc      	bne.n	d0002a06 <doTrackerTicks+0x4a>
d0002a8c:	e7e4      	b.n	d0002a58 <doTrackerTicks+0x9c>
d0002a8e:	6803      	ldr	r3, [r0, #0]
d0002a90:	f101 0a5c 	add.w	sl, r1, #92	; 0x5c
d0002a94:	f24f 65ac 	movw	r5, #63148	; 0xf6ac
d0002a98:	3101      	adds	r1, #1
d0002a9a:	fb18 3202 	smlabb	r2, r8, r2, r3
d0002a9e:	eb0c 038a 	add.w	r3, ip, sl, lsl #2
d0002aa2:	3004      	adds	r0, #4
d0002aa4:	3401      	adds	r4, #1
d0002aa6:	42aa      	cmp	r2, r5
d0002aa8:	685b      	ldr	r3, [r3, #4]
d0002aaa:	bfa8      	it	ge
d0002aac:	462a      	movge	r2, r5
d0002aae:	2908      	cmp	r1, #8
d0002ab0:	f840 2c04 	str.w	r2, [r0, #-4]
d0002ab4:	611a      	str	r2, [r3, #16]
d0002ab6:	d1a6      	bne.n	d0002a06 <doTrackerTicks+0x4a>
d0002ab8:	e7ce      	b.n	d0002a58 <doTrackerTicks+0x9c>
d0002aba:	6803      	ldr	r3, [r0, #0]
d0002abc:	f101 0a5c 	add.w	sl, r1, #92	; 0x5c
d0002ac0:	3101      	adds	r1, #1
d0002ac2:	3004      	adds	r0, #4
d0002ac4:	eba3 0242 	sub.w	r2, r3, r2, lsl #1
d0002ac8:	3401      	adds	r4, #1
d0002aca:	eb0c 038a 	add.w	r3, ip, sl, lsl #2
d0002ace:	454a      	cmp	r2, r9
d0002ad0:	685b      	ldr	r3, [r3, #4]
d0002ad2:	bfb8      	it	lt
d0002ad4:	464a      	movlt	r2, r9
d0002ad6:	2908      	cmp	r1, #8
d0002ad8:	f840 2c04 	str.w	r2, [r0, #-4]
d0002adc:	611a      	str	r2, [r3, #16]
d0002ade:	d192      	bne.n	d0002a06 <doTrackerTicks+0x4a>
d0002ae0:	e7ba      	b.n	d0002a58 <doTrackerTicks+0x9c>
d0002ae2:	f894 a000 	ldrb.w	sl, [r4]
d0002ae6:	3101      	adds	r1, #1
d0002ae8:	6853      	ldr	r3, [r2, #4]
d0002aea:	3004      	adds	r0, #4
d0002aec:	44da      	add	sl, fp
d0002aee:	4a1a      	ldr	r2, [pc, #104]	; (d0002b58 <doTrackerTicks+0x19c>)
d0002af0:	3401      	adds	r4, #1
d0002af2:	f1ba 0f48 	cmp.w	sl, #72	; 0x48
d0002af6:	bfa8      	it	ge
d0002af8:	f04f 0a48 	movge.w	sl, #72	; 0x48
d0002afc:	2908      	cmp	r1, #8
d0002afe:	f832 201a 	ldrh.w	r2, [r2, sl, lsl #1]
d0002b02:	611a      	str	r2, [r3, #16]
d0002b04:	f47f af7f 	bne.w	d0002a06 <doTrackerTicks+0x4a>
d0002b08:	e7a6      	b.n	d0002a58 <doTrackerTicks+0x9c>
d0002b0a:	7823      	ldrb	r3, [r4, #0]
d0002b0c:	f101 025c 	add.w	r2, r1, #92	; 0x5c
d0002b10:	3101      	adds	r1, #1
d0002b12:	3004      	adds	r0, #4
d0002b14:	449a      	add	sl, r3
d0002b16:	eb0c 0382 	add.w	r3, ip, r2, lsl #2
d0002b1a:	4a0f      	ldr	r2, [pc, #60]	; (d0002b58 <doTrackerTicks+0x19c>)
d0002b1c:	3401      	adds	r4, #1
d0002b1e:	f1ba 0f48 	cmp.w	sl, #72	; 0x48
d0002b22:	685b      	ldr	r3, [r3, #4]
d0002b24:	bfa8      	it	ge
d0002b26:	f04f 0a48 	movge.w	sl, #72	; 0x48
d0002b2a:	2908      	cmp	r1, #8
d0002b2c:	f832 201a 	ldrh.w	r2, [r2, sl, lsl #1]
d0002b30:	611a      	str	r2, [r3, #16]
d0002b32:	f47f af68 	bne.w	d0002a06 <doTrackerTicks+0x4a>
d0002b36:	e78f      	b.n	d0002a58 <doTrackerTicks+0x9c>
d0002b38:	d0031280 	.word	0xd0031280
d0002b3c:	00020370 	.word	0x00020370
d0002b40:	aaaaaaab 	.word	0xaaaaaaab
d0002b44:	00020374 	.word	0x00020374
d0002b48:	0002036c 	.word	0x0002036c
d0002b4c:	fffdfc06 	.word	0xfffdfc06
d0002b50:	fffdfc07 	.word	0xfffdfc07
d0002b54:	d005167c 	.word	0xd005167c
d0002b58:	d00077a8 	.word	0xd00077a8
d0002b5c:	2001f000 	.word	0x2001f000

d0002b60 <processRow>:
d0002b60:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0002b64:	4bb7      	ldr	r3, [pc, #732]	; (d0002e44 <processRow+0x2e4>)
d0002b66:	b083      	sub	sp, #12
d0002b68:	4db7      	ldr	r5, [pc, #732]	; (d0002e48 <processRow+0x2e8>)
d0002b6a:	4cb8      	ldr	r4, [pc, #736]	; (d0002e4c <processRow+0x2ec>)
d0002b6c:	58ee      	ldr	r6, [r5, r3]
d0002b6e:	1c72      	adds	r2, r6, #1
d0002b70:	512e      	str	r6, [r5, r4]
d0002b72:	2a3f      	cmp	r2, #63	; 0x3f
d0002b74:	50ea      	str	r2, [r5, r3]
d0002b76:	f240 80ec 	bls.w	d0002d52 <processRow+0x1f2>
d0002b7a:	4ab5      	ldr	r2, [pc, #724]	; (d0002e50 <processRow+0x2f0>)
d0002b7c:	2100      	movs	r1, #0
d0002b7e:	7812      	ldrb	r2, [r2, #0]
d0002b80:	50e9      	str	r1, [r5, r3]
d0002b82:	2a00      	cmp	r2, #0
d0002b84:	f000 814b 	beq.w	d0002e1e <processRow+0x2be>
d0002b88:	330e      	adds	r3, #14
d0002b8a:	4ab2      	ldr	r2, [pc, #712]	; (d0002e54 <processRow+0x2f4>)
d0002b8c:	5aeb      	ldrh	r3, [r5, r3]
d0002b8e:	5aaa      	ldrh	r2, [r5, r2]
d0002b90:	429a      	cmp	r2, r3
d0002b92:	f200 814e 	bhi.w	d0002e32 <processRow+0x2d2>
d0002b96:	4bb0      	ldr	r3, [pc, #704]	; (d0002e58 <processRow+0x2f8>)
d0002b98:	2100      	movs	r1, #0
d0002b9a:	4ab0      	ldr	r2, [pc, #704]	; (d0002e5c <processRow+0x2fc>)
d0002b9c:	5aeb      	ldrh	r3, [r5, r3]
d0002b9e:	52a9      	strh	r1, [r5, r2]
d0002ba0:	4faf      	ldr	r7, [pc, #700]	; (d0002e60 <processRow+0x300>)
d0002ba2:	ea4f 1b83 	mov.w	fp, r3, lsl #6
d0002ba6:	2400      	movs	r4, #0
d0002ba8:	e097      	b.n	d0002cda <processRow+0x17a>
d0002baa:	4bae      	ldr	r3, [pc, #696]	; (d0002e64 <processRow+0x304>)
d0002bac:	4aae      	ldr	r2, [pc, #696]	; (d0002e68 <processRow+0x308>)
d0002bae:	f813 1008 	ldrb.w	r1, [r3, r8]
d0002bb2:	f8df 92d8 	ldr.w	r9, [pc, #728]	; d0002e8c <processRow+0x32c>
d0002bb6:	3901      	subs	r1, #1
d0002bb8:	4bac      	ldr	r3, [pc, #688]	; (d0002e6c <processRow+0x30c>)
d0002bba:	f8df e2d4 	ldr.w	lr, [pc, #724]	; d0002e90 <processRow+0x330>
d0002bbe:	ebc1 01c1 	rsb	r1, r1, r1, lsl #3
d0002bc2:	eb05 0181 	add.w	r1, r5, r1, lsl #2
d0002bc6:	f501 3000 	add.w	r0, r1, #131072	; 0x20000
d0002bca:	58cb      	ldr	r3, [r1, r3]
d0002bcc:	5c8a      	ldrb	r2, [r1, r2]
d0002bce:	f851 a009 	ldr.w	sl, [r1, r9]
d0002bd2:	6800      	ldr	r0, [r0, #0]
d0002bd4:	f851 100e 	ldr.w	r1, [r1, lr]
d0002bd8:	9301      	str	r3, [sp, #4]
d0002bda:	445e      	add	r6, fp
d0002bdc:	eb04 06c6 	add.w	r6, r4, r6, lsl #3
d0002be0:	eb05 0686 	add.w	r6, r5, r6, lsl #2
d0002be4:	f896 e002 	ldrb.w	lr, [r6, #2]
d0002be8:	f896 9003 	ldrb.w	r9, [r6, #3]
d0002bec:	f00e 060f 	and.w	r6, lr, #15
d0002bf0:	2e0c      	cmp	r6, #12
d0002bf2:	f000 80ee 	beq.w	d0002dd2 <processRow+0x272>
d0002bf6:	2e0e      	cmp	r6, #14
d0002bf8:	f040 80e5 	bne.w	d0002dc6 <processRow+0x266>
d0002bfc:	ea4f 1619 	mov.w	r6, r9, lsr #4
d0002c00:	f009 090f 	and.w	r9, r9, #15
d0002c04:	2e0a      	cmp	r6, #10
d0002c06:	f000 80f6 	beq.w	d0002df6 <processRow+0x296>
d0002c0a:	2e0b      	cmp	r6, #11
d0002c0c:	f040 80db 	bne.w	d0002dc6 <processRow+0x266>
d0002c10:	f997 e000 	ldrsb.w	lr, [r7]
d0002c14:	f104 065c 	add.w	r6, r4, #92	; 0x5c
d0002c18:	4b95      	ldr	r3, [pc, #596]	; (d0002e70 <processRow+0x310>)
d0002c1a:	44f1      	add	r9, lr
d0002c1c:	eb03 0e86 	add.w	lr, r3, r6, lsl #2
d0002c20:	f1b9 0f3f 	cmp.w	r9, #63	; 0x3f
d0002c24:	bfa8      	it	ge
d0002c26:	f04f 093f 	movge.w	r9, #63	; 0x3f
d0002c2a:	f887 9000 	strb.w	r9, [r7]
d0002c2e:	ea4f 0949 	mov.w	r9, r9, lsl #1
d0002c32:	f8de e004 	ldr.w	lr, [lr, #4]
d0002c36:	f8ce 9038 	str.w	r9, [lr, #56]	; 0x38
d0002c3a:	f1bc 0ffd 	cmp.w	ip, #253	; 0xfd
d0002c3e:	d83d      	bhi.n	d0002cbc <processRow+0x15c>
d0002c40:	f8df c250 	ldr.w	ip, [pc, #592]	; d0002e94 <processRow+0x334>
d0002c44:	f814 c00c 	ldrb.w	ip, [r4, ip]
d0002c48:	f1bc 0f00 	cmp.w	ip, #0
d0002c4c:	d036      	beq.n	d0002cbc <processRow+0x15c>
d0002c4e:	f8df 9220 	ldr.w	r9, [pc, #544]	; d0002e70 <processRow+0x310>
d0002c52:	44c1      	add	r9, r8
d0002c54:	f8d9 c174 	ldr.w	ip, [r9, #372]	; 0x174
d0002c58:	f1bc 0f00 	cmp.w	ip, #0
d0002c5c:	f000 80ec 	beq.w	d0002e38 <processRow+0x2d8>
d0002c60:	f8d9 3174 	ldr.w	r3, [r9, #372]	; 0x174
d0002c64:	f04f 0c00 	mov.w	ip, #0
d0002c68:	f8d9 e174 	ldr.w	lr, [r9, #372]	; 0x174
d0002c6c:	6218      	str	r0, [r3, #32]
d0002c6e:	f8d9 0174 	ldr.w	r0, [r9, #372]	; 0x174
d0002c72:	f8ce 101c 	str.w	r1, [lr, #28]
d0002c76:	f890 e000 	ldrb.w	lr, [r0]
d0002c7a:	f8d9 1174 	ldr.w	r1, [r9, #372]	; 0x174
d0002c7e:	f362 0e41 	bfi	lr, r2, #1, #1
d0002c82:	9b01      	ldr	r3, [sp, #4]
d0002c84:	f8d9 2174 	ldr.w	r2, [r9, #372]	; 0x174
d0002c88:	f880 e000 	strb.w	lr, [r0]
d0002c8c:	e9c1 ac0a 	strd	sl, ip, [r1, #40]	; 0x28
d0002c90:	f8c2 c034 	str.w	ip, [r2, #52]	; 0x34
d0002c94:	6313      	str	r3, [r2, #48]	; 0x30
d0002c96:	4b77      	ldr	r3, [pc, #476]	; (d0002e74 <processRow+0x314>)
d0002c98:	2200      	movs	r2, #0
d0002c9a:	f8d9 c174 	ldr.w	ip, [r9, #372]	; 0x174
d0002c9e:	f853 e008 	ldr.w	lr, [r3, r8]
d0002ca2:	2300      	movs	r3, #0
d0002ca4:	f8d9 0174 	ldr.w	r0, [r9, #372]	; 0x174
d0002ca8:	f8d9 1174 	ldr.w	r1, [r9, #372]	; 0x174
d0002cac:	f8cc e010 	str.w	lr, [ip, #16]
d0002cb0:	e9c0 2302 	strd	r2, r3, [r0, #8]
d0002cb4:	780b      	ldrb	r3, [r1, #0]
d0002cb6:	f043 0301 	orr.w	r3, r3, #1
d0002cba:	700b      	strb	r3, [r1, #0]
d0002cbc:	4b6c      	ldr	r3, [pc, #432]	; (d0002e70 <processRow+0x310>)
d0002cbe:	3401      	adds	r4, #1
d0002cc0:	eb03 0686 	add.w	r6, r3, r6, lsl #2
d0002cc4:	f917 3b01 	ldrsb.w	r3, [r7], #1
d0002cc8:	2c08      	cmp	r4, #8
d0002cca:	6872      	ldr	r2, [r6, #4]
d0002ccc:	ea4f 0343 	mov.w	r3, r3, lsl #1
d0002cd0:	6393      	str	r3, [r2, #56]	; 0x38
d0002cd2:	f000 808d 	beq.w	d0002df0 <processRow+0x290>
d0002cd6:	4b68      	ldr	r3, [pc, #416]	; (d0002e78 <processRow+0x318>)
d0002cd8:	681e      	ldr	r6, [r3, #0]
d0002cda:	eb0b 0306 	add.w	r3, fp, r6
d0002cde:	eb04 03c3 	add.w	r3, r4, r3, lsl #3
d0002ce2:	f815 c023 	ldrb.w	ip, [r5, r3, lsl #2]
d0002ce6:	f1bc 0fff 	cmp.w	ip, #255	; 0xff
d0002cea:	d06f      	beq.n	d0002dcc <processRow+0x26c>
d0002cec:	4b63      	ldr	r3, [pc, #396]	; (d0002e7c <processRow+0x31c>)
d0002cee:	ea4f 0884 	mov.w	r8, r4, lsl #2
d0002cf2:	4a60      	ldr	r2, [pc, #384]	; (d0002e74 <processRow+0x314>)
d0002cf4:	f833 301c 	ldrh.w	r3, [r3, ip, lsl #1]
d0002cf8:	f842 3024 	str.w	r3, [r2, r4, lsl #2]
d0002cfc:	f887 c008 	strb.w	ip, [r7, #8]
d0002d00:	eb0b 0306 	add.w	r3, fp, r6
d0002d04:	eb04 03c3 	add.w	r3, r4, r3, lsl #3
d0002d08:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0002d0c:	7858      	ldrb	r0, [r3, #1]
d0002d0e:	2800      	cmp	r0, #0
d0002d10:	f43f af4b 	beq.w	d0002baa <processRow+0x4a>
d0002d14:	1e41      	subs	r1, r0, #1
d0002d16:	4b53      	ldr	r3, [pc, #332]	; (d0002e64 <processRow+0x304>)
d0002d18:	f8df e17c 	ldr.w	lr, [pc, #380]	; d0002e98 <processRow+0x338>
d0002d1c:	ebc1 01c1 	rsb	r1, r1, r1, lsl #3
d0002d20:	f803 0008 	strb.w	r0, [r3, r8]
d0002d24:	4b51      	ldr	r3, [pc, #324]	; (d0002e6c <processRow+0x30c>)
d0002d26:	eb05 0181 	add.w	r1, r5, r1, lsl #2
d0002d2a:	4a4f      	ldr	r2, [pc, #316]	; (d0002e68 <processRow+0x308>)
d0002d2c:	f8df a15c 	ldr.w	sl, [pc, #348]	; d0002e8c <processRow+0x32c>
d0002d30:	58cb      	ldr	r3, [r1, r3]
d0002d32:	f501 3000 	add.w	r0, r1, #131072	; 0x20000
d0002d36:	f811 e00e 	ldrb.w	lr, [r1, lr]
d0002d3a:	f8df 9154 	ldr.w	r9, [pc, #340]	; d0002e90 <processRow+0x330>
d0002d3e:	5c8a      	ldrb	r2, [r1, r2]
d0002d40:	f851 a00a 	ldr.w	sl, [r1, sl]
d0002d44:	6800      	ldr	r0, [r0, #0]
d0002d46:	f851 1009 	ldr.w	r1, [r1, r9]
d0002d4a:	9301      	str	r3, [sp, #4]
d0002d4c:	f887 e000 	strb.w	lr, [r7]
d0002d50:	e743      	b.n	d0002bda <processRow+0x7a>
d0002d52:	2e00      	cmp	r6, #0
d0002d54:	d16d      	bne.n	d0002e32 <processRow+0x2d2>
d0002d56:	f8df 8104 	ldr.w	r8, [pc, #260]	; d0002e5c <processRow+0x2fc>
d0002d5a:	4b49      	ldr	r3, [pc, #292]	; (d0002e80 <processRow+0x320>)
d0002d5c:	f835 1008 	ldrh.w	r1, [r5, r8]
d0002d60:	4a48      	ldr	r2, [pc, #288]	; (d0002e84 <processRow+0x324>)
d0002d62:	440b      	add	r3, r1
d0002d64:	4f3c      	ldr	r7, [pc, #240]	; (d0002e58 <processRow+0x2f8>)
d0002d66:	7812      	ldrb	r2, [r2, #0]
d0002d68:	eb05 0343 	add.w	r3, r5, r3, lsl #1
d0002d6c:	2a03      	cmp	r2, #3
d0002d6e:	885b      	ldrh	r3, [r3, #2]
d0002d70:	53eb      	strh	r3, [r5, r7]
d0002d72:	f43f af15 	beq.w	d0002ba0 <processRow+0x40>
d0002d76:	f7fd fa1d 	bl	d00001b4 <CaptureDrawBuffer>
d0002d7a:	f7fd fa27 	bl	d00001cc <SetDrawToBackLayer>
d0002d7e:	5bea      	ldrh	r2, [r5, r7]
d0002d80:	213e      	movs	r1, #62	; 0x3e
d0002d82:	2058      	movs	r0, #88	; 0x58
d0002d84:	f000 fdc2 	bl	d000390c <uiTextDrawNumberU>
d0002d88:	f7fd fa32 	bl	d00001f0 <ReleaseDrawBuffer>
d0002d8c:	f7fd fa12 	bl	d00001b4 <CaptureDrawBuffer>
d0002d90:	f7fd fa1c 	bl	d00001cc <SetDrawToBackLayer>
d0002d94:	f835 2008 	ldrh.w	r2, [r5, r8]
d0002d98:	2123      	movs	r1, #35	; 0x23
d0002d9a:	2058      	movs	r0, #88	; 0x58
d0002d9c:	f000 fdb6 	bl	d000390c <uiTextDrawNumberU>
d0002da0:	f7fd fa26 	bl	d00001f0 <ReleaseDrawBuffer>
d0002da4:	f7fd fa06 	bl	d00001b4 <CaptureDrawBuffer>
d0002da8:	f7fd fa10 	bl	d00001cc <SetDrawToBackLayer>
d0002dac:	4b29      	ldr	r3, [pc, #164]	; (d0002e54 <processRow+0x2f4>)
d0002dae:	2159      	movs	r1, #89	; 0x59
d0002db0:	2058      	movs	r0, #88	; 0x58
d0002db2:	5aea      	ldrh	r2, [r5, r3]
d0002db4:	f000 fdaa 	bl	d000390c <uiTextDrawNumberU>
d0002db8:	f7fd fa1a 	bl	d00001f0 <ReleaseDrawBuffer>
d0002dbc:	f002 fd68 	bl	d0005890 <ConfigScreenUpdate>
d0002dc0:	5beb      	ldrh	r3, [r5, r7]
d0002dc2:	592e      	ldr	r6, [r5, r4]
d0002dc4:	e6ec      	b.n	d0002ba0 <processRow+0x40>
d0002dc6:	f104 065c 	add.w	r6, r4, #92	; 0x5c
d0002dca:	e736      	b.n	d0002c3a <processRow+0xda>
d0002dcc:	ea4f 0884 	mov.w	r8, r4, lsl #2
d0002dd0:	e796      	b.n	d0002d00 <processRow+0x1a0>
d0002dd2:	f1b9 0f3f 	cmp.w	r9, #63	; 0x3f
d0002dd6:	d906      	bls.n	d0002de6 <processRow+0x286>
d0002dd8:	f04f 0e3f 	mov.w	lr, #63	; 0x3f
d0002ddc:	f104 065c 	add.w	r6, r4, #92	; 0x5c
d0002de0:	f887 e000 	strb.w	lr, [r7]
d0002de4:	e729      	b.n	d0002c3a <processRow+0xda>
d0002de6:	f104 065c 	add.w	r6, r4, #92	; 0x5c
d0002dea:	f887 9000 	strb.w	r9, [r7]
d0002dee:	e724      	b.n	d0002c3a <processRow+0xda>
d0002df0:	b003      	add	sp, #12
d0002df2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0002df6:	f997 e000 	ldrsb.w	lr, [r7]
d0002dfa:	f104 065c 	add.w	r6, r4, #92	; 0x5c
d0002dfe:	4b1c      	ldr	r3, [pc, #112]	; (d0002e70 <processRow+0x310>)
d0002e00:	ebae 0909 	sub.w	r9, lr, r9
d0002e04:	eb03 0e86 	add.w	lr, r3, r6, lsl #2
d0002e08:	ea29 79e9 	bic.w	r9, r9, r9, asr #31
d0002e0c:	f887 9000 	strb.w	r9, [r7]
d0002e10:	ea4f 0949 	mov.w	r9, r9, lsl #1
d0002e14:	f8de e004 	ldr.w	lr, [lr, #4]
d0002e18:	f8ce 9038 	str.w	r9, [lr, #56]	; 0x38
d0002e1c:	e70d      	b.n	d0002c3a <processRow+0xda>
d0002e1e:	4a0f      	ldr	r2, [pc, #60]	; (d0002e5c <processRow+0x2fc>)
d0002e20:	5aab      	ldrh	r3, [r5, r2]
d0002e22:	3301      	adds	r3, #1
d0002e24:	b29b      	uxth	r3, r3
d0002e26:	52ab      	strh	r3, [r5, r2]
d0002e28:	4a0a      	ldr	r2, [pc, #40]	; (d0002e54 <processRow+0x2f4>)
d0002e2a:	5aaa      	ldrh	r2, [r5, r2]
d0002e2c:	429a      	cmp	r2, r3
d0002e2e:	f67f aeb2 	bls.w	d0002b96 <processRow+0x36>
d0002e32:	4b09      	ldr	r3, [pc, #36]	; (d0002e58 <processRow+0x2f8>)
d0002e34:	5aeb      	ldrh	r3, [r5, r3]
d0002e36:	e6b3      	b.n	d0002ba0 <processRow+0x40>
d0002e38:	4b0d      	ldr	r3, [pc, #52]	; (d0002e70 <processRow+0x310>)
d0002e3a:	4621      	mov	r1, r4
d0002e3c:	4812      	ldr	r0, [pc, #72]	; (d0002e88 <processRow+0x328>)
d0002e3e:	689b      	ldr	r3, [r3, #8]
d0002e40:	4798      	blx	r3
d0002e42:	e728      	b.n	d0002c96 <processRow+0x136>
d0002e44:	00020368 	.word	0x00020368
d0002e48:	d0031280 	.word	0xd0031280
d0002e4c:	0002036c 	.word	0x0002036c
d0002e50:	d000f038 	.word	0xd000f038
d0002e54:	00020378 	.word	0x00020378
d0002e58:	00020374 	.word	0x00020374
d0002e5c:	00020376 	.word	0x00020376
d0002e60:	d005169c 	.word	0xd005169c
d0002e64:	d00516b5 	.word	0xd00516b5
d0002e68:	00020018 	.word	0x00020018
d0002e6c:	00020014 	.word	0x00020014
d0002e70:	2001f000 	.word	0x2001f000
d0002e74:	d005167c 	.word	0xd005167c
d0002e78:	d00515ec 	.word	0xd00515ec
d0002e7c:	d00077a8 	.word	0xd00077a8
d0002e80:	000101bc 	.word	0x000101bc
d0002e84:	d000f04c 	.word	0xd000f04c
d0002e88:	d0007754 	.word	0xd0007754
d0002e8c:	00020010 	.word	0x00020010
d0002e90:	00020008 	.word	0x00020008
d0002e94:	d000ef6c 	.word	0xd000ef6c
d0002e98:	00020019 	.word	0x00020019

d0002e9c <RestartPlayer>:
d0002e9c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0002e9e:	4c15      	ldr	r4, [pc, #84]	; (d0002ef4 <RestartPlayer+0x58>)
d0002ea0:	2002      	movs	r0, #2
d0002ea2:	f645 0615 	movw	r6, #22549	; 0x5815
d0002ea6:	4f14      	ldr	r7, [pc, #80]	; (d0002ef8 <RestartPlayer+0x5c>)
d0002ea8:	6ca3      	ldr	r3, [r4, #72]	; 0x48
d0002eaa:	4798      	blx	r3
d0002eac:	4b13      	ldr	r3, [pc, #76]	; (d0002efc <RestartPlayer+0x60>)
d0002eae:	4a14      	ldr	r2, [pc, #80]	; (d0002f00 <RestartPlayer+0x64>)
d0002eb0:	2000      	movs	r0, #0
d0002eb2:	4914      	ldr	r1, [pc, #80]	; (d0002f04 <RestartPlayer+0x68>)
d0002eb4:	5a9a      	ldrh	r2, [r3, r2]
d0002eb6:	5a59      	ldrh	r1, [r3, r1]
d0002eb8:	6ba5      	ldr	r5, [r4, #56]	; 0x38
d0002eba:	fb01 f102 	mul.w	r1, r1, r2
d0002ebe:	4a12      	ldr	r2, [pc, #72]	; (d0002f08 <RestartPlayer+0x6c>)
d0002ec0:	0089      	lsls	r1, r1, #2
d0002ec2:	fbb2 f2f1 	udiv	r2, r2, r1
d0002ec6:	5bd9      	ldrh	r1, [r3, r7]
d0002ec8:	3a01      	subs	r2, #1
d0002eca:	602e      	str	r6, [r5, #0]
d0002ecc:	6ba6      	ldr	r6, [r4, #56]	; 0x38
d0002ece:	6ba5      	ldr	r5, [r4, #56]	; 0x38
d0002ed0:	6072      	str	r2, [r6, #4]
d0002ed2:	4a0e      	ldr	r2, [pc, #56]	; (d0002f0c <RestartPlayer+0x70>)
d0002ed4:	4c0e      	ldr	r4, [pc, #56]	; (d0002f10 <RestartPlayer+0x74>)
d0002ed6:	60ea      	str	r2, [r5, #12]
d0002ed8:	4a0e      	ldr	r2, [pc, #56]	; (d0002f14 <RestartPlayer+0x78>)
d0002eda:	5118      	str	r0, [r3, r4]
d0002edc:	3406      	adds	r4, #6
d0002ede:	5098      	str	r0, [r3, r2]
d0002ee0:	320c      	adds	r2, #12
d0002ee2:	4d0d      	ldr	r5, [pc, #52]	; (d0002f18 <RestartPlayer+0x7c>)
d0002ee4:	5318      	strh	r0, [r3, r4]
d0002ee6:	5158      	str	r0, [r3, r5]
d0002ee8:	5299      	strh	r1, [r3, r2]
d0002eea:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0002eee:	f7ff be37 	b.w	d0002b60 <processRow>
d0002ef2:	bf00      	nop
d0002ef4:	2001f000 	.word	0x2001f000
d0002ef8:	0002037a 	.word	0x0002037a
d0002efc:	d0031280 	.word	0xd0031280
d0002f00:	00020364 	.word	0x00020364
d0002f04:	00020366 	.word	0x00020366
d0002f08:	000927c0 	.word	0x000927c0
d0002f0c:	d0002f1d 	.word	0xd0002f1d
d0002f10:	00020370 	.word	0x00020370
d0002f14:	00020368 	.word	0x00020368
d0002f18:	0002036c 	.word	0x0002036c

d0002f1c <PlayerCIA_ISR>:
d0002f1c:	4a0e      	ldr	r2, [pc, #56]	; (d0002f58 <PlayerCIA_ISR+0x3c>)
d0002f1e:	490f      	ldr	r1, [pc, #60]	; (d0002f5c <PlayerCIA_ISR+0x40>)
d0002f20:	480f      	ldr	r0, [pc, #60]	; (d0002f60 <PlayerCIA_ISR+0x44>)
d0002f22:	5853      	ldr	r3, [r2, r1]
d0002f24:	5a10      	ldrh	r0, [r2, r0]
d0002f26:	3301      	adds	r3, #1
d0002f28:	4283      	cmp	r3, r0
d0002f2a:	b510      	push	{r4, lr}
d0002f2c:	5053      	str	r3, [r2, r1]
d0002f2e:	d30f      	bcc.n	d0002f50 <PlayerCIA_ISR+0x34>
d0002f30:	2300      	movs	r3, #0
d0002f32:	5053      	str	r3, [r2, r1]
d0002f34:	f7ff fe14 	bl	d0002b60 <processRow>
d0002f38:	4b0a      	ldr	r3, [pc, #40]	; (d0002f64 <PlayerCIA_ISR+0x48>)
d0002f3a:	4c0b      	ldr	r4, [pc, #44]	; (d0002f68 <PlayerCIA_ISR+0x4c>)
d0002f3c:	699b      	ldr	r3, [r3, #24]
d0002f3e:	4798      	blx	r3
d0002f40:	4a0a      	ldr	r2, [pc, #40]	; (d0002f6c <PlayerCIA_ISR+0x50>)
d0002f42:	490b      	ldr	r1, [pc, #44]	; (d0002f70 <PlayerCIA_ISR+0x54>)
d0002f44:	6813      	ldr	r3, [r2, #0]
d0002f46:	6020      	str	r0, [r4, #0]
d0002f48:	1ac3      	subs	r3, r0, r3
d0002f4a:	6010      	str	r0, [r2, #0]
d0002f4c:	600b      	str	r3, [r1, #0]
d0002f4e:	bd10      	pop	{r4, pc}
d0002f50:	f7ff fd34 	bl	d00029bc <doTrackerTicks>
d0002f54:	e7f0      	b.n	d0002f38 <PlayerCIA_ISR+0x1c>
d0002f56:	bf00      	nop
d0002f58:	d0031280 	.word	0xd0031280
d0002f5c:	00020370 	.word	0x00020370
d0002f60:	00020366 	.word	0x00020366
d0002f64:	2001f000 	.word	0x2001f000
d0002f68:	d0251800 	.word	0xd0251800
d0002f6c:	d00516b0 	.word	0xd00516b0
d0002f70:	d00516d4 	.word	0xd00516d4

d0002f74 <initKFMSong>:
d0002f74:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0002f76:	491b      	ldr	r1, [pc, #108]	; (d0002fe4 <initKFMSong+0x70>)
d0002f78:	2500      	movs	r5, #0
d0002f7a:	4c1b      	ldr	r4, [pc, #108]	; (d0002fe8 <initKFMSong+0x74>)
d0002f7c:	f04f 3201 	mov.w	r2, #16843009	; 0x1010101
d0002f80:	4e1a      	ldr	r6, [pc, #104]	; (d0002fec <initKFMSong+0x78>)
d0002f82:	2002      	movs	r0, #2
d0002f84:	7025      	strb	r5, [r4, #0]
d0002f86:	700d      	strb	r5, [r1, #0]
d0002f88:	4c19      	ldr	r4, [pc, #100]	; (d0002ff0 <initKFMSong+0x7c>)
d0002f8a:	4f1a      	ldr	r7, [pc, #104]	; (d0002ff4 <initKFMSong+0x80>)
d0002f8c:	491a      	ldr	r1, [pc, #104]	; (d0002ff8 <initKFMSong+0x84>)
d0002f8e:	4b1b      	ldr	r3, [pc, #108]	; (d0002ffc <initKFMSong+0x88>)
d0002f90:	e9c3 2200 	strd	r2, r2, [r3]
d0002f94:	6cb3      	ldr	r3, [r6, #72]	; 0x48
d0002f96:	51e1      	str	r1, [r4, r7]
d0002f98:	4798      	blx	r3
d0002f9a:	4b19      	ldr	r3, [pc, #100]	; (d0003000 <initKFMSong+0x8c>)
d0002f9c:	5be1      	ldrh	r1, [r4, r7]
d0002f9e:	f645 0c15 	movw	ip, #22549	; 0x5815
d0002fa2:	5ae2      	ldrh	r2, [r4, r3]
d0002fa4:	4b17      	ldr	r3, [pc, #92]	; (d0003004 <initKFMSong+0x90>)
d0002fa6:	fb02 f201 	mul.w	r2, r2, r1
d0002faa:	6bb0      	ldr	r0, [r6, #56]	; 0x38
d0002fac:	4916      	ldr	r1, [pc, #88]	; (d0003008 <initKFMSong+0x94>)
d0002fae:	0092      	lsls	r2, r2, #2
d0002fb0:	6bb7      	ldr	r7, [r6, #56]	; 0x38
d0002fb2:	5a61      	ldrh	r1, [r4, r1]
d0002fb4:	fbb3 f3f2 	udiv	r3, r3, r2
d0002fb8:	3b01      	subs	r3, #1
d0002fba:	6bb2      	ldr	r2, [r6, #56]	; 0x38
d0002fbc:	f8c0 c000 	str.w	ip, [r0]
d0002fc0:	607b      	str	r3, [r7, #4]
d0002fc2:	4812      	ldr	r0, [pc, #72]	; (d000300c <initKFMSong+0x98>)
d0002fc4:	4b12      	ldr	r3, [pc, #72]	; (d0003010 <initKFMSong+0x9c>)
d0002fc6:	60d0      	str	r0, [r2, #12]
d0002fc8:	4e12      	ldr	r6, [pc, #72]	; (d0003014 <initKFMSong+0xa0>)
d0002fca:	50e5      	str	r5, [r4, r3]
d0002fcc:	3304      	adds	r3, #4
d0002fce:	4812      	ldr	r0, [pc, #72]	; (d0003018 <initKFMSong+0xa4>)
d0002fd0:	4a12      	ldr	r2, [pc, #72]	; (d000301c <initKFMSong+0xa8>)
d0002fd2:	51a5      	str	r5, [r4, r6]
d0002fd4:	5025      	str	r5, [r4, r0]
d0002fd6:	52a5      	strh	r5, [r4, r2]
d0002fd8:	52e1      	strh	r1, [r4, r3]
d0002fda:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0002fde:	f7ff bdbf 	b.w	d0002b60 <processRow>
d0002fe2:	bf00      	nop
d0002fe4:	d000f038 	.word	0xd000f038
d0002fe8:	d000f039 	.word	0xd000f039
d0002fec:	2001f000 	.word	0x2001f000
d0002ff0:	d0031280 	.word	0xd0031280
d0002ff4:	00020364 	.word	0x00020364
d0002ff8:	00060096 	.word	0x00060096
d0002ffc:	d000ef6c 	.word	0xd000ef6c
d0003000:	00020366 	.word	0x00020366
d0003004:	000927c0 	.word	0x000927c0
d0003008:	0002037a 	.word	0x0002037a
d000300c:	d0002f1d 	.word	0xd0002f1d
d0003010:	00020370 	.word	0x00020370
d0003014:	00020368 	.word	0x00020368
d0003018:	0002036c 	.word	0x0002036c
d000301c:	00020376 	.word	0x00020376

d0003020 <PlaceNote>:
d0003020:	4b18      	ldr	r3, [pc, #96]	; (d0003084 <PlaceNote+0x64>)
d0003022:	7819      	ldrb	r1, [r3, #0]
d0003024:	eb01 03c1 	add.w	r3, r1, r1, lsl #3
d0003028:	eb01 0343 	add.w	r3, r1, r3, lsl #1
d000302c:	eb03 03c3 	add.w	r3, r3, r3, lsl #3
d0003030:	f3c3 0246 	ubfx	r2, r3, #1, #7
d0003034:	ea42 13c3 	orr.w	r3, r2, r3, lsl #7
d0003038:	b2db      	uxtb	r3, r3
d000303a:	2b2a      	cmp	r3, #42	; 0x2a
d000303c:	d81b      	bhi.n	d0003076 <PlaceNote+0x56>
d000303e:	4a12      	ldr	r2, [pc, #72]	; (d0003088 <PlaceNote+0x68>)
d0003040:	28ff      	cmp	r0, #255	; 0xff
d0003042:	4b12      	ldr	r3, [pc, #72]	; (d000308c <PlaceNote+0x6c>)
d0003044:	fba2 2101 	umull	r2, r1, r2, r1
d0003048:	4a11      	ldr	r2, [pc, #68]	; (d0003090 <PlaceNote+0x70>)
d000304a:	b430      	push	{r4, r5}
d000304c:	4c11      	ldr	r4, [pc, #68]	; (d0003094 <PlaceNote+0x74>)
d000304e:	781b      	ldrb	r3, [r3, #0]
d0003050:	4d11      	ldr	r5, [pc, #68]	; (d0003098 <PlaceNote+0x78>)
d0003052:	eb03 0191 	add.w	r1, r3, r1, lsr #2
d0003056:	5b14      	ldrh	r4, [r2, r4]
d0003058:	5953      	ldr	r3, [r2, r5]
d000305a:	eb03 1384 	add.w	r3, r3, r4, lsl #6
d000305e:	d00b      	beq.n	d0003078 <PlaceNote+0x58>
d0003060:	eb01 01c3 	add.w	r1, r1, r3, lsl #3
d0003064:	4c0d      	ldr	r4, [pc, #52]	; (d000309c <PlaceNote+0x7c>)
d0003066:	eb02 0381 	add.w	r3, r2, r1, lsl #2
d000306a:	7824      	ldrb	r4, [r4, #0]
d000306c:	f802 0021 	strb.w	r0, [r2, r1, lsl #2]
d0003070:	705c      	strb	r4, [r3, #1]
d0003072:	bc30      	pop	{r4, r5}
d0003074:	4770      	bx	lr
d0003076:	4770      	bx	lr
d0003078:	eb01 01c3 	add.w	r1, r1, r3, lsl #3
d000307c:	bc30      	pop	{r4, r5}
d000307e:	f842 0021 	str.w	r0, [r2, r1, lsl #2]
d0003082:	4770      	bx	lr
d0003084:	d000f041 	.word	0xd000f041
d0003088:	aaaaaaab 	.word	0xaaaaaaab
d000308c:	d000f040 	.word	0xd000f040
d0003090:	d0031280 	.word	0xd0031280
d0003094:	00020374 	.word	0x00020374
d0003098:	0002036c 	.word	0x0002036c
d000309c:	d000eff8 	.word	0xd000eff8

d00030a0 <PlaceCommand>:
d00030a0:	4b13      	ldr	r3, [pc, #76]	; (d00030f0 <PlaceCommand+0x50>)
d00030a2:	7819      	ldrb	r1, [r3, #0]
d00030a4:	eb01 03c1 	add.w	r3, r1, r1, lsl #3
d00030a8:	eb01 0343 	add.w	r3, r1, r3, lsl #1
d00030ac:	eb03 03c3 	add.w	r3, r3, r3, lsl #3
d00030b0:	3b01      	subs	r3, #1
d00030b2:	f3c3 0246 	ubfx	r2, r3, #1, #7
d00030b6:	ea42 13c3 	orr.w	r3, r2, r3, lsl #7
d00030ba:	b2db      	uxtb	r3, r3
d00030bc:	2b2a      	cmp	r3, #42	; 0x2a
d00030be:	d900      	bls.n	d00030c2 <PlaceCommand+0x22>
d00030c0:	4770      	bx	lr
d00030c2:	b470      	push	{r4, r5, r6}
d00030c4:	4b0b      	ldr	r3, [pc, #44]	; (d00030f4 <PlaceCommand+0x54>)
d00030c6:	4e0c      	ldr	r6, [pc, #48]	; (d00030f8 <PlaceCommand+0x58>)
d00030c8:	4d0c      	ldr	r5, [pc, #48]	; (d00030fc <PlaceCommand+0x5c>)
d00030ca:	4c0d      	ldr	r4, [pc, #52]	; (d0003100 <PlaceCommand+0x60>)
d00030cc:	fba6 6101 	umull	r6, r1, r6, r1
d00030d0:	4a0c      	ldr	r2, [pc, #48]	; (d0003104 <PlaceCommand+0x64>)
d00030d2:	5b5d      	ldrh	r5, [r3, r5]
d00030d4:	591c      	ldr	r4, [r3, r4]
d00030d6:	7812      	ldrb	r2, [r2, #0]
d00030d8:	eb04 1485 	add.w	r4, r4, r5, lsl #6
d00030dc:	eb02 0191 	add.w	r1, r2, r1, lsr #2
d00030e0:	eb01 01c4 	add.w	r1, r1, r4, lsl #3
d00030e4:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d00030e8:	bc70      	pop	{r4, r5, r6}
d00030ea:	7098      	strb	r0, [r3, #2]
d00030ec:	4770      	bx	lr
d00030ee:	bf00      	nop
d00030f0:	d000f041 	.word	0xd000f041
d00030f4:	d0031280 	.word	0xd0031280
d00030f8:	aaaaaaab 	.word	0xaaaaaaab
d00030fc:	00020374 	.word	0x00020374
d0003100:	0002036c 	.word	0x0002036c
d0003104:	d000f040 	.word	0xd000f040

d0003108 <PlaceParam>:
d0003108:	4b1a      	ldr	r3, [pc, #104]	; (d0003174 <PlaceParam+0x6c>)
d000310a:	491b      	ldr	r1, [pc, #108]	; (d0003178 <PlaceParam+0x70>)
d000310c:	4a1b      	ldr	r2, [pc, #108]	; (d000317c <PlaceParam+0x74>)
d000310e:	b4f0      	push	{r4, r5, r6, r7}
d0003110:	781b      	ldrb	r3, [r3, #0]
d0003112:	4d1b      	ldr	r5, [pc, #108]	; (d0003180 <PlaceParam+0x78>)
d0003114:	fba1 4103 	umull	r4, r1, r1, r3
d0003118:	7814      	ldrb	r4, [r2, #0]
d000311a:	4f1a      	ldr	r7, [pc, #104]	; (d0003184 <PlaceParam+0x7c>)
d000311c:	088a      	lsrs	r2, r1, #2
d000311e:	4e1a      	ldr	r6, [pc, #104]	; (d0003188 <PlaceParam+0x80>)
d0003120:	eb04 0191 	add.w	r1, r4, r1, lsr #2
d0003124:	5bef      	ldrh	r7, [r5, r7]
d0003126:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d000312a:	59ac      	ldr	r4, [r5, r6]
d000312c:	eba3 0342 	sub.w	r3, r3, r2, lsl #1
d0003130:	b2db      	uxtb	r3, r3
d0003132:	2b04      	cmp	r3, #4
d0003134:	d010      	beq.n	d0003158 <PlaceParam+0x50>
d0003136:	2b05      	cmp	r3, #5
d0003138:	d10c      	bne.n	d0003154 <PlaceParam+0x4c>
d000313a:	eb04 1487 	add.w	r4, r4, r7, lsl #6
d000313e:	f000 000f 	and.w	r0, r0, #15
d0003142:	eb01 04c4 	add.w	r4, r1, r4, lsl #3
d0003146:	eb05 0184 	add.w	r1, r5, r4, lsl #2
d000314a:	78cb      	ldrb	r3, [r1, #3]
d000314c:	f023 030f 	bic.w	r3, r3, #15
d0003150:	4318      	orrs	r0, r3
d0003152:	70c8      	strb	r0, [r1, #3]
d0003154:	bcf0      	pop	{r4, r5, r6, r7}
d0003156:	4770      	bx	lr
d0003158:	eb04 1487 	add.w	r4, r4, r7, lsl #6
d000315c:	eb01 01c4 	add.w	r1, r1, r4, lsl #3
d0003160:	eb05 0181 	add.w	r1, r5, r1, lsl #2
d0003164:	78cb      	ldrb	r3, [r1, #3]
d0003166:	f003 030f 	and.w	r3, r3, #15
d000316a:	ea43 1000 	orr.w	r0, r3, r0, lsl #4
d000316e:	bcf0      	pop	{r4, r5, r6, r7}
d0003170:	70c8      	strb	r0, [r1, #3]
d0003172:	4770      	bx	lr
d0003174:	d000f041 	.word	0xd000f041
d0003178:	aaaaaaab 	.word	0xaaaaaaab
d000317c:	d000f040 	.word	0xd000f040
d0003180:	d0031280 	.word	0xd0031280
d0003184:	00020374 	.word	0x00020374
d0003188:	0002036c 	.word	0x0002036c

d000318c <PlaceSampleID>:
d000318c:	4b1d      	ldr	r3, [pc, #116]	; (d0003204 <PlaceSampleID+0x78>)
d000318e:	491e      	ldr	r1, [pc, #120]	; (d0003208 <PlaceSampleID+0x7c>)
d0003190:	4a1e      	ldr	r2, [pc, #120]	; (d000320c <PlaceSampleID+0x80>)
d0003192:	b4f0      	push	{r4, r5, r6, r7}
d0003194:	781b      	ldrb	r3, [r3, #0]
d0003196:	4d1e      	ldr	r5, [pc, #120]	; (d0003210 <PlaceSampleID+0x84>)
d0003198:	fba1 4103 	umull	r4, r1, r1, r3
d000319c:	7814      	ldrb	r4, [r2, #0]
d000319e:	4f1d      	ldr	r7, [pc, #116]	; (d0003214 <PlaceSampleID+0x88>)
d00031a0:	088a      	lsrs	r2, r1, #2
d00031a2:	4e1d      	ldr	r6, [pc, #116]	; (d0003218 <PlaceSampleID+0x8c>)
d00031a4:	eb04 0191 	add.w	r1, r4, r1, lsr #2
d00031a8:	5bef      	ldrh	r7, [r5, r7]
d00031aa:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d00031ae:	59ac      	ldr	r4, [r5, r6]
d00031b0:	eba3 0342 	sub.w	r3, r3, r2, lsl #1
d00031b4:	b2db      	uxtb	r3, r3
d00031b6:	2b01      	cmp	r3, #1
d00031b8:	d013      	beq.n	d00031e2 <PlaceSampleID+0x56>
d00031ba:	2b02      	cmp	r3, #2
d00031bc:	d10f      	bne.n	d00031de <PlaceSampleID+0x52>
d00031be:	eb04 1487 	add.w	r4, r4, r7, lsl #6
d00031c2:	f000 000f 	and.w	r0, r0, #15
d00031c6:	eb01 04c4 	add.w	r4, r1, r4, lsl #3
d00031ca:	eb05 0184 	add.w	r1, r5, r4, lsl #2
d00031ce:	784b      	ldrb	r3, [r1, #1]
d00031d0:	f023 030f 	bic.w	r3, r3, #15
d00031d4:	4318      	orrs	r0, r3
d00031d6:	281f      	cmp	r0, #31
d00031d8:	d911      	bls.n	d00031fe <PlaceSampleID+0x72>
d00031da:	231f      	movs	r3, #31
d00031dc:	704b      	strb	r3, [r1, #1]
d00031de:	bcf0      	pop	{r4, r5, r6, r7}
d00031e0:	4770      	bx	lr
d00031e2:	eb04 1487 	add.w	r4, r4, r7, lsl #6
d00031e6:	eb01 01c4 	add.w	r1, r1, r4, lsl #3
d00031ea:	eb05 0181 	add.w	r1, r5, r1, lsl #2
d00031ee:	784b      	ldrb	r3, [r1, #1]
d00031f0:	f003 030f 	and.w	r3, r3, #15
d00031f4:	ea43 1000 	orr.w	r0, r3, r0, lsl #4
d00031f8:	b2c0      	uxtb	r0, r0
d00031fa:	281f      	cmp	r0, #31
d00031fc:	d8ed      	bhi.n	d00031da <PlaceSampleID+0x4e>
d00031fe:	7048      	strb	r0, [r1, #1]
d0003200:	bcf0      	pop	{r4, r5, r6, r7}
d0003202:	4770      	bx	lr
d0003204:	d000f041 	.word	0xd000f041
d0003208:	aaaaaaab 	.word	0xaaaaaaab
d000320c:	d000f040 	.word	0xd000f040
d0003210:	d0031280 	.word	0xd0031280
d0003214:	00020374 	.word	0x00020374
d0003218:	0002036c 	.word	0x0002036c

d000321c <PlayNoteKeyDown>:
d000321c:	4a3e      	ldr	r2, [pc, #248]	; (d0003318 <PlayNoteKeyDown+0xfc>)
d000321e:	4b3f      	ldr	r3, [pc, #252]	; (d000331c <PlayNoteKeyDown+0x100>)
d0003220:	f8df c114 	ldr.w	ip, [pc, #276]	; d0003338 <PlayNoteKeyDown+0x11c>
d0003224:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0003228:	4c3d      	ldr	r4, [pc, #244]	; (d0003320 <PlayNoteKeyDown+0x104>)
d000322a:	b085      	sub	sp, #20
d000322c:	7811      	ldrb	r1, [r2, #0]
d000322e:	f248 06fe 	movw	r6, #33022	; 0x80fe
d0003232:	4a3c      	ldr	r2, [pc, #240]	; (d0003324 <PlayNoteKeyDown+0x108>)
d0003234:	781b      	ldrb	r3, [r3, #0]
d0003236:	fba2 1201 	umull	r1, r2, r2, r1
d000323a:	7821      	ldrb	r1, [r4, #0]
d000323c:	3b01      	subs	r3, #1
d000323e:	4d3a      	ldr	r5, [pc, #232]	; (d0003328 <PlayNoteKeyDown+0x10c>)
d0003240:	eb01 0192 	add.w	r1, r1, r2, lsr #2
d0003244:	f8df e0f4 	ldr.w	lr, [pc, #244]	; d000333c <PlayNoteKeyDown+0x120>
d0003248:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
d000324c:	4a37      	ldr	r2, [pc, #220]	; (d000332c <PlayNoteKeyDown+0x110>)
d000324e:	b2c9      	uxtb	r1, r1
d0003250:	f83e 0010 	ldrh.w	r0, [lr, r0, lsl #1]
d0003254:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0003258:	f8df b0e4 	ldr.w	fp, [pc, #228]	; d0003340 <PlayNoteKeyDown+0x124>
d000325c:	186f      	adds	r7, r5, r1
d000325e:	eb0c 0481 	add.w	r4, ip, r1, lsl #2
d0003262:	569a      	ldrsb	r2, [r3, r2]
d0003264:	440e      	add	r6, r1
d0003266:	9002      	str	r0, [sp, #8]
d0003268:	f503 3900 	add.w	r9, r3, #131072	; 0x20000
d000326c:	f807 200b 	strb.w	r2, [r7, fp]
d0003270:	eb05 0a86 	add.w	sl, r5, r6, lsl #2
d0003274:	f8d4 0174 	ldr.w	r0, [r4, #372]	; 0x174
d0003278:	9703      	str	r7, [sp, #12]
d000327a:	9001      	str	r0, [sp, #4]
d000327c:	4f2c      	ldr	r7, [pc, #176]	; (d0003330 <PlayNoteKeyDown+0x114>)
d000327e:	9802      	ldr	r0, [sp, #8]
d0003280:	f8df 80c0 	ldr.w	r8, [pc, #192]	; d0003344 <PlayNoteKeyDown+0x128>
d0003284:	f8ca 0004 	str.w	r0, [sl, #4]
d0003288:	f8df e0bc 	ldr.w	lr, [pc, #188]	; d0003348 <PlayNoteKeyDown+0x12c>
d000328c:	59d8      	ldr	r0, [r3, r7]
d000328e:	f8df a0bc 	ldr.w	sl, [pc, #188]	; d000334c <PlayNoteKeyDown+0x130>
d0003292:	9f01      	ldr	r7, [sp, #4]
d0003294:	f813 8008 	ldrb.w	r8, [r3, r8]
d0003298:	f853 e00e 	ldr.w	lr, [r3, lr]
d000329c:	f8d9 9000 	ldr.w	r9, [r9]
d00032a0:	f853 300a 	ldr.w	r3, [r3, sl]
d00032a4:	b387      	cbz	r7, d0003308 <PlayNoteKeyDown+0xec>
d00032a6:	f8d4 c174 	ldr.w	ip, [r4, #372]	; 0x174
d00032aa:	2100      	movs	r1, #0
d00032ac:	f8d4 7174 	ldr.w	r7, [r4, #372]	; 0x174
d00032b0:	f8cc 9020 	str.w	r9, [ip, #32]
d00032b4:	f8d4 c174 	ldr.w	ip, [r4, #372]	; 0x174
d00032b8:	61fb      	str	r3, [r7, #28]
d00032ba:	f89c 9000 	ldrb.w	r9, [ip]
d00032be:	f8d4 7174 	ldr.w	r7, [r4, #372]	; 0x174
d00032c2:	f368 0941 	bfi	r9, r8, #1, #1
d00032c6:	f8d4 3174 	ldr.w	r3, [r4, #372]	; 0x174
d00032ca:	f88c 9000 	strb.w	r9, [ip]
d00032ce:	e9c7 e10a 	strd	lr, r1, [r7, #40]	; 0x28
d00032d2:	e9c3 010c 	strd	r0, r1, [r3, #48]	; 0x30
d00032d6:	f8d4 3174 	ldr.w	r3, [r4, #372]	; 0x174
d00032da:	eb05 0586 	add.w	r5, r5, r6, lsl #2
d00032de:	0052      	lsls	r2, r2, #1
d00032e0:	f8d4 6174 	ldr.w	r6, [r4, #372]	; 0x174
d00032e4:	686d      	ldr	r5, [r5, #4]
d00032e6:	2000      	movs	r0, #0
d00032e8:	639a      	str	r2, [r3, #56]	; 0x38
d00032ea:	2100      	movs	r1, #0
d00032ec:	f8d4 3174 	ldr.w	r3, [r4, #372]	; 0x174
d00032f0:	f8d4 2174 	ldr.w	r2, [r4, #372]	; 0x174
d00032f4:	6135      	str	r5, [r6, #16]
d00032f6:	e9c3 0102 	strd	r0, r1, [r3, #8]
d00032fa:	7813      	ldrb	r3, [r2, #0]
d00032fc:	f043 0301 	orr.w	r3, r3, #1
d0003300:	7013      	strb	r3, [r2, #0]
d0003302:	b005      	add	sp, #20
d0003304:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0003308:	f8dc 3008 	ldr.w	r3, [ip, #8]
d000330c:	4809      	ldr	r0, [pc, #36]	; (d0003334 <PlayNoteKeyDown+0x118>)
d000330e:	4798      	blx	r3
d0003310:	9b03      	ldr	r3, [sp, #12]
d0003312:	f913 200b 	ldrsb.w	r2, [r3, fp]
d0003316:	e7de      	b.n	d00032d6 <PlayNoteKeyDown+0xba>
d0003318:	d000f041 	.word	0xd000f041
d000331c:	d000eff8 	.word	0xd000eff8
d0003320:	d000f040 	.word	0xd000f040
d0003324:	aaaaaaab 	.word	0xaaaaaaab
d0003328:	d0031280 	.word	0xd0031280
d000332c:	00020019 	.word	0x00020019
d0003330:	00020014 	.word	0x00020014
d0003334:	d0007754 	.word	0xd0007754
d0003338:	2001f000 	.word	0x2001f000
d000333c:	d00077a8 	.word	0xd00077a8
d0003340:	0002041c 	.word	0x0002041c
d0003344:	00020018 	.word	0x00020018
d0003348:	00020010 	.word	0x00020010
d000334c:	00020008 	.word	0x00020008

d0003350 <setupTestSynths>:
d0003350:	b538      	push	{r3, r4, r5, lr}
d0003352:	4c24      	ldr	r4, [pc, #144]	; (d00033e4 <setupTestSynths+0x94>)
d0003354:	4a24      	ldr	r2, [pc, #144]	; (d00033e8 <setupTestSynths+0x98>)
d0003356:	f8d4 3170 	ldr.w	r3, [r4, #368]	; 0x170
d000335a:	601a      	str	r2, [r3, #0]
d000335c:	f7fc fee0 	bl	d0000120 <EnableKFM>
d0003360:	f8d4 2170 	ldr.w	r2, [r4, #368]	; 0x170
d0003364:	2100      	movs	r1, #0
d0003366:	f8d4 51a4 	ldr.w	r5, [r4, #420]	; 0x1a4
d000336a:	7813      	ldrb	r3, [r2, #0]
d000336c:	4608      	mov	r0, r1
d000336e:	f043 0301 	orr.w	r3, r3, #1
d0003372:	7013      	strb	r3, [r2, #0]
d0003374:	47a8      	blx	r5
d0003376:	f8d4 31a4 	ldr.w	r3, [r4, #420]	; 0x1a4
d000337a:	2100      	movs	r1, #0
d000337c:	2001      	movs	r0, #1
d000337e:	4798      	blx	r3
d0003380:	f8d4 31a4 	ldr.w	r3, [r4, #420]	; 0x1a4
d0003384:	2100      	movs	r1, #0
d0003386:	2002      	movs	r0, #2
d0003388:	4798      	blx	r3
d000338a:	f8d4 31a4 	ldr.w	r3, [r4, #420]	; 0x1a4
d000338e:	2100      	movs	r1, #0
d0003390:	2003      	movs	r0, #3
d0003392:	4798      	blx	r3
d0003394:	f8d4 31a4 	ldr.w	r3, [r4, #420]	; 0x1a4
d0003398:	2100      	movs	r1, #0
d000339a:	2004      	movs	r0, #4
d000339c:	4798      	blx	r3
d000339e:	f8d4 31a4 	ldr.w	r3, [r4, #420]	; 0x1a4
d00033a2:	2100      	movs	r1, #0
d00033a4:	2005      	movs	r0, #5
d00033a6:	4798      	blx	r3
d00033a8:	f8d4 31a4 	ldr.w	r3, [r4, #420]	; 0x1a4
d00033ac:	2100      	movs	r1, #0
d00033ae:	2006      	movs	r0, #6
d00033b0:	4798      	blx	r3
d00033b2:	f8d4 31a4 	ldr.w	r3, [r4, #420]	; 0x1a4
d00033b6:	2100      	movs	r1, #0
d00033b8:	2007      	movs	r0, #7
d00033ba:	4798      	blx	r3
d00033bc:	2100      	movs	r1, #0
d00033be:	f8d4 31b0 	ldr.w	r3, [r4, #432]	; 0x1b0
d00033c2:	4608      	mov	r0, r1
d00033c4:	4798      	blx	r3
d00033c6:	f8d4 31a8 	ldr.w	r3, [r4, #424]	; 0x1a8
d00033ca:	217f      	movs	r1, #127	; 0x7f
d00033cc:	2000      	movs	r0, #0
d00033ce:	4798      	blx	r3
d00033d0:	f8d4 31ac 	ldr.w	r3, [r4, #428]	; 0x1ac
d00033d4:	2140      	movs	r1, #64	; 0x40
d00033d6:	2000      	movs	r0, #0
d00033d8:	4798      	blx	r3
d00033da:	f8d4 3174 	ldr.w	r3, [r4, #372]	; 0x174
d00033de:	2200      	movs	r2, #0
d00033e0:	611a      	str	r2, [r3, #16]
d00033e2:	bd38      	pop	{r3, r4, r5, pc}
d00033e4:	2001f000 	.word	0x2001f000
d00033e8:	000a66ff 	.word	0x000a66ff

d00033ec <RenderTrackerBackGnd>:
d00033ec:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d00033f0:	4f43      	ldr	r7, [pc, #268]	; (d0003500 <RenderTrackerBackGnd+0x114>)
d00033f2:	b083      	sub	sp, #12
d00033f4:	2606      	movs	r6, #6
d00033f6:	f04f 0900 	mov.w	r9, #0
d00033fa:	f8d7 10f8 	ldr.w	r1, [r7, #248]	; 0xf8
d00033fe:	f04f 0804 	mov.w	r8, #4
d0003402:	23b5      	movs	r3, #181	; 0xb5
d0003404:	f44f 72ef 	mov.w	r2, #478	; 0x1de
d0003408:	f881 9000 	strb.w	r9, [r1]
d000340c:	4648      	mov	r0, r9
d000340e:	2189      	movs	r1, #137	; 0x89
d0003410:	f8cd 8004 	str.w	r8, [sp, #4]
d0003414:	9600      	str	r6, [sp, #0]
d0003416:	463d      	mov	r5, r7
d0003418:	f000 fab4 	bl	d0003984 <uiDrawBeval>
d000341c:	f8d7 20f8 	ldr.w	r2, [r7, #248]	; 0xf8
d0003420:	4630      	mov	r0, r6
d0003422:	f44f 739c 	mov.w	r3, #312	; 0x138
d0003426:	f882 9000 	strb.w	r9, [r2]
d000342a:	21a7      	movs	r1, #167	; 0xa7
d000342c:	f8d7 413c 	ldr.w	r4, [r7, #316]	; 0x13c
d0003430:	2224      	movs	r2, #36	; 0x24
d0003432:	47a0      	blx	r4
d0003434:	2392      	movs	r3, #146	; 0x92
d0003436:	221e      	movs	r2, #30
d0003438:	21a7      	movs	r1, #167	; 0xa7
d000343a:	4630      	mov	r0, r6
d000343c:	2405      	movs	r4, #5
d000343e:	e9cd 8600 	strd	r8, r6, [sp]
d0003442:	f000 fa9f 	bl	d0003984 <uiDrawBeval>
d0003446:	f8d7 00f8 	ldr.w	r0, [r7, #248]	; 0xf8
d000344a:	23fa      	movs	r3, #250	; 0xfa
d000344c:	2221      	movs	r2, #33	; 0x21
d000344e:	7004      	strb	r4, [r0, #0]
d0003450:	21e8      	movs	r1, #232	; 0xe8
d0003452:	f8d7 413c 	ldr.w	r4, [r7, #316]	; 0x13c
d0003456:	200a      	movs	r0, #10
d0003458:	47a0      	blx	r4
d000345a:	2310      	movs	r3, #16
d000345c:	2216      	movs	r2, #22
d000345e:	21e8      	movs	r1, #232	; 0xe8
d0003460:	200a      	movs	r0, #10
d0003462:	2428      	movs	r4, #40	; 0x28
d0003464:	e9cd 6800 	strd	r6, r8, [sp]
d0003468:	f000 fa8c 	bl	d0003984 <uiDrawBeval>
d000346c:	f8d7 20f8 	ldr.w	r2, [r7, #248]	; 0xf8
d0003470:	4630      	mov	r0, r6
d0003472:	23a3      	movs	r3, #163	; 0xa3
d0003474:	f882 9000 	strb.w	r9, [r2]
d0003478:	218f      	movs	r1, #143	; 0x8f
d000347a:	2224      	movs	r2, #36	; 0x24
d000347c:	f8d7 713c 	ldr.w	r7, [r7, #316]	; 0x13c
d0003480:	47b8      	blx	r7
d0003482:	4630      	mov	r0, r6
d0003484:	2314      	movs	r3, #20
d0003486:	221e      	movs	r2, #30
d0003488:	218f      	movs	r1, #143	; 0x8f
d000348a:	e9cd 8600 	strd	r8, r6, [sp]
d000348e:	f000 fa79 	bl	d0003984 <uiDrawBeval>
d0003492:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d0003496:	2200      	movs	r2, #0
d0003498:	f04f 0804 	mov.w	r8, #4
d000349c:	2706      	movs	r7, #6
d000349e:	701a      	strb	r2, [r3, #0]
d00034a0:	4620      	mov	r0, r4
d00034a2:	f104 024d 	add.w	r2, r4, #77	; 0x4d
d00034a6:	f240 1339 	movw	r3, #313	; 0x139
d00034aa:	f8d5 613c 	ldr.w	r6, [r5, #316]	; 0x13c
d00034ae:	21a7      	movs	r1, #167	; 0xa7
d00034b0:	47b0      	blx	r6
d00034b2:	2392      	movs	r3, #146	; 0x92
d00034b4:	224e      	movs	r2, #78	; 0x4e
d00034b6:	21a7      	movs	r1, #167	; 0xa7
d00034b8:	4620      	mov	r0, r4
d00034ba:	eb04 0608 	add.w	r6, r4, r8
d00034be:	e9cd 8700 	strd	r8, r7, [sp]
d00034c2:	f000 fa5f 	bl	d0003984 <uiDrawBeval>
d00034c6:	f8d5 10f8 	ldr.w	r1, [r5, #248]	; 0xf8
d00034ca:	f04f 0c05 	mov.w	ip, #5
d00034ce:	f104 024b 	add.w	r2, r4, #75	; 0x4b
d00034d2:	4630      	mov	r0, r6
d00034d4:	23fa      	movs	r3, #250	; 0xfa
d00034d6:	f881 c000 	strb.w	ip, [r1]
d00034da:	3452      	adds	r4, #82	; 0x52
d00034dc:	21e8      	movs	r1, #232	; 0xe8
d00034de:	f8d5 913c 	ldr.w	r9, [r5, #316]	; 0x13c
d00034e2:	47c8      	blx	r9
d00034e4:	4630      	mov	r0, r6
d00034e6:	2310      	movs	r3, #16
d00034e8:	2246      	movs	r2, #70	; 0x46
d00034ea:	21e8      	movs	r1, #232	; 0xe8
d00034ec:	e9cd 7800 	strd	r7, r8, [sp]
d00034f0:	f000 fa48 	bl	d0003984 <uiDrawBeval>
d00034f4:	f5b4 7fb8 	cmp.w	r4, #368	; 0x170
d00034f8:	d1cb      	bne.n	d0003492 <RenderTrackerBackGnd+0xa6>
d00034fa:	b003      	add	sp, #12
d00034fc:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0003500:	2001f000 	.word	0x2001f000

d0003504 <MovePatternRow>:
d0003504:	4a08      	ldr	r2, [pc, #32]	; (d0003528 <MovePatternRow+0x24>)
d0003506:	4b09      	ldr	r3, [pc, #36]	; (d000352c <MovePatternRow+0x28>)
d0003508:	58d3      	ldr	r3, [r2, r3]
d000350a:	4418      	add	r0, r3
d000350c:	b240      	sxtb	r0, r0
d000350e:	283f      	cmp	r0, #63	; 0x3f
d0003510:	dc07      	bgt.n	d0003522 <MovePatternRow+0x1e>
d0003512:	2800      	cmp	r0, #0
d0003514:	bfb8      	it	lt
d0003516:	203f      	movlt	r0, #63	; 0x3f
d0003518:	4904      	ldr	r1, [pc, #16]	; (d000352c <MovePatternRow+0x28>)
d000351a:	4b05      	ldr	r3, [pc, #20]	; (d0003530 <MovePatternRow+0x2c>)
d000351c:	5050      	str	r0, [r2, r1]
d000351e:	50d0      	str	r0, [r2, r3]
d0003520:	4770      	bx	lr
d0003522:	2000      	movs	r0, #0
d0003524:	e7f8      	b.n	d0003518 <MovePatternRow+0x14>
d0003526:	bf00      	nop
d0003528:	d0031280 	.word	0xd0031280
d000352c:	0002036c 	.word	0x0002036c
d0003530:	00020368 	.word	0x00020368

d0003534 <RenderTracker>:
d0003534:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0003538:	4bae      	ldr	r3, [pc, #696]	; (d00037f4 <RenderTracker+0x2c0>)
d000353a:	2608      	movs	r6, #8
d000353c:	4fae      	ldr	r7, [pc, #696]	; (d00037f8 <RenderTracker+0x2c4>)
d000353e:	2110      	movs	r1, #16
d0003540:	4cae      	ldr	r4, [pc, #696]	; (d00037fc <RenderTracker+0x2c8>)
d0003542:	f04f 0a00 	mov.w	sl, #0
d0003546:	58fb      	ldr	r3, [r7, r3]
d0003548:	f8d4 50f8 	ldr.w	r5, [r4, #248]	; 0xf8
d000354c:	46a3      	mov	fp, r4
d000354e:	4aac      	ldr	r2, [pc, #688]	; (d0003800 <RenderTracker+0x2cc>)
d0003550:	3b06      	subs	r3, #6
d0003552:	f837 c002 	ldrh.w	ip, [r7, r2]
d0003556:	b21f      	sxth	r7, r3
d0003558:	ed2d 8b02 	vpush	{d8}
d000355c:	702e      	strb	r6, [r5, #0]
d000355e:	b08b      	sub	sp, #44	; 0x2c
d0003560:	f8d4 30fc 	ldr.w	r3, [r4, #252]	; 0xfc
d0003564:	46b9      	mov	r9, r7
d0003566:	a806      	add	r0, sp, #24
d0003568:	f8cd c00c 	str.w	ip, [sp, #12]
d000356c:	7019      	strb	r1, [r3, #0]
d000356e:	4ba2      	ldr	r3, [pc, #648]	; (d00037f8 <RenderTracker+0x2c4>)
d0003570:	49a4      	ldr	r1, [pc, #656]	; (d0003804 <RenderTracker+0x2d0>)
d0003572:	5a9a      	ldrh	r2, [r3, r2]
d0003574:	f8cd a000 	str.w	sl, [sp]
d0003578:	f002 fbdc 	bl	d0005d34 <siprintf>
d000357c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d0003580:	aa06      	add	r2, sp, #24
d0003582:	2192      	movs	r1, #146	; 0x92
d0003584:	200e      	movs	r0, #14
d0003586:	4798      	blx	r3
d0003588:	e00a      	b.n	d00035a0 <RenderTracker+0x6c>
d000358a:	fa1f f38a 	uxth.w	r3, sl
d000358e:	b212      	sxth	r2, r2
d0003590:	2b0c      	cmp	r3, #12
d0003592:	9200      	str	r2, [sp, #0]
d0003594:	f000 80cb 	beq.w	d000372e <RenderTracker+0x1fa>
d0003598:	f10a 0a01 	add.w	sl, sl, #1
d000359c:	f109 0901 	add.w	r9, r9, #1
d00035a0:	f1b9 0f3f 	cmp.w	r9, #63	; 0x3f
d00035a4:	d913      	bls.n	d00035ce <RenderTracker+0x9a>
d00035a6:	3701      	adds	r7, #1
d00035a8:	f8bd 1000 	ldrh.w	r1, [sp]
d00035ac:	b23f      	sxth	r7, r7
d00035ae:	1c4a      	adds	r2, r1, #1
d00035b0:	427b      	negs	r3, r7
d00035b2:	f007 0703 	and.w	r7, r7, #3
d00035b6:	b292      	uxth	r2, r2
d00035b8:	f003 0303 	and.w	r3, r3, #3
d00035bc:	bf58      	it	pl
d00035be:	425f      	negpl	r7, r3
d00035c0:	f1ba 0f06 	cmp.w	sl, #6
d00035c4:	d1e1      	bne.n	d000358a <RenderTracker+0x56>
d00035c6:	3102      	adds	r1, #2
d00035c8:	b20b      	sxth	r3, r1
d00035ca:	9300      	str	r3, [sp, #0]
d00035cc:	e7e4      	b.n	d0003598 <RenderTracker+0x64>
d00035ce:	464a      	mov	r2, r9
d00035d0:	498c      	ldr	r1, [pc, #560]	; (d0003804 <RenderTracker+0x2d0>)
d00035d2:	a806      	add	r0, sp, #24
d00035d4:	f002 fbae 	bl	d0005d34 <siprintf>
d00035d8:	f1ba 0f06 	cmp.w	sl, #6
d00035dc:	f8db 30f8 	ldr.w	r3, [fp, #248]	; 0xf8
d00035e0:	f000 80fb 	beq.w	d00037da <RenderTracker+0x2a6>
d00035e4:	2208      	movs	r2, #8
d00035e6:	200a      	movs	r0, #10
d00035e8:	21ac      	movs	r1, #172	; 0xac
d00035ea:	9c00      	ldr	r4, [sp, #0]
d00035ec:	701a      	strb	r2, [r3, #0]
d00035ee:	aa06      	add	r2, sp, #24
d00035f0:	fb04 1100 	mla	r1, r4, r0, r1
d00035f4:	f8db 3140 	ldr.w	r3, [fp, #320]	; 0x140
d00035f8:	200e      	movs	r0, #14
d00035fa:	4798      	blx	r3
d00035fc:	9b00      	ldr	r3, [sp, #0]
d00035fe:	252e      	movs	r5, #46	; 0x2e
d0003600:	9a03      	ldr	r2, [sp, #12]
d0003602:	2600      	movs	r6, #0
d0003604:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0003608:	f8cd 9008 	str.w	r9, [sp, #8]
d000360c:	eb09 1282 	add.w	r2, r9, r2, lsl #6
d0003610:	005b      	lsls	r3, r3, #1
d0003612:	00d2      	lsls	r2, r2, #3
d0003614:	f103 08ac 	add.w	r8, r3, #172	; 0xac
d0003618:	9201      	str	r2, [sp, #4]
d000361a:	f103 02aa 	add.w	r2, r3, #170	; 0xaa
d000361e:	ee08 2a10 	vmov	s16, r2
d0003622:	f103 02b6 	add.w	r2, r3, #182	; 0xb6
d0003626:	33ae      	adds	r3, #174	; 0xae
d0003628:	ee08 2a90 	vmov	s17, r2
d000362c:	4699      	mov	r9, r3
d000362e:	4b76      	ldr	r3, [pc, #472]	; (d0003808 <RenderTracker+0x2d4>)
d0003630:	781c      	ldrb	r4, [r3, #0]
d0003632:	9b01      	ldr	r3, [sp, #4]
d0003634:	4434      	add	r4, r6
d0003636:	441c      	add	r4, r3
d0003638:	4b6f      	ldr	r3, [pc, #444]	; (d00037f8 <RenderTracker+0x2c4>)
d000363a:	f813 0024 	ldrb.w	r0, [r3, r4, lsl #2]
d000363e:	eb03 0484 	add.w	r4, r3, r4, lsl #2
d0003642:	f7ff f821 	bl	d0002688 <getNoteLabel>
d0003646:	4601      	mov	r1, r0
d0003648:	a807      	add	r0, sp, #28
d000364a:	f002 fbb9 	bl	d0005dc0 <strcpy>
d000364e:	7862      	ldrb	r2, [r4, #1]
d0003650:	496e      	ldr	r1, [pc, #440]	; (d000380c <RenderTracker+0x2d8>)
d0003652:	a808      	add	r0, sp, #32
d0003654:	f002 fb6e 	bl	d0005d34 <siprintf>
d0003658:	78a2      	ldrb	r2, [r4, #2]
d000365a:	496d      	ldr	r1, [pc, #436]	; (d0003810 <RenderTracker+0x2dc>)
d000365c:	a805      	add	r0, sp, #20
d000365e:	f002 fb69 	bl	d0005d34 <siprintf>
d0003662:	78e2      	ldrb	r2, [r4, #3]
d0003664:	4969      	ldr	r1, [pc, #420]	; (d000380c <RenderTracker+0x2d8>)
d0003666:	a809      	add	r0, sp, #36	; 0x24
d0003668:	f002 fb64 	bl	d0005d34 <siprintf>
d000366c:	f1ba 0f06 	cmp.w	sl, #6
d0003670:	d041      	beq.n	d00036f6 <RenderTracker+0x1c2>
d0003672:	240c      	movs	r4, #12
d0003674:	ee18 3a90 	vmov	r3, s17
d0003678:	f105 0245 	add.w	r2, r5, #69	; 0x45
d000367c:	1ea8      	subs	r0, r5, #2
d000367e:	ee18 1a10 	vmov	r1, s16
d0003682:	b937      	cbnz	r7, d0003692 <RenderTracker+0x15e>
d0003684:	f8db c0f8 	ldr.w	ip, [fp, #248]	; 0xf8
d0003688:	f88c 4000 	strb.w	r4, [ip]
d000368c:	f8db 413c 	ldr.w	r4, [fp, #316]	; 0x13c
d0003690:	47a0      	blx	r4
d0003692:	f8db 30f8 	ldr.w	r3, [fp, #248]	; 0xf8
d0003696:	2008      	movs	r0, #8
d0003698:	aa07      	add	r2, sp, #28
d000369a:	4641      	mov	r1, r8
d000369c:	7018      	strb	r0, [r3, #0]
d000369e:	4628      	mov	r0, r5
d00036a0:	f8db 3140 	ldr.w	r3, [fp, #320]	; 0x140
d00036a4:	2409      	movs	r4, #9
d00036a6:	4798      	blx	r3
d00036a8:	f8db 30f8 	ldr.w	r3, [fp, #248]	; 0xf8
d00036ac:	aa08      	add	r2, sp, #32
d00036ae:	4641      	mov	r1, r8
d00036b0:	701c      	strb	r4, [r3, #0]
d00036b2:	f105 001b 	add.w	r0, r5, #27
d00036b6:	f8db 3140 	ldr.w	r3, [fp, #320]	; 0x140
d00036ba:	240a      	movs	r4, #10
d00036bc:	4798      	blx	r3
d00036be:	f8db 30f8 	ldr.w	r3, [fp, #248]	; 0xf8
d00036c2:	aa05      	add	r2, sp, #20
d00036c4:	4641      	mov	r1, r8
d00036c6:	701c      	strb	r4, [r3, #0]
d00036c8:	f105 002c 	add.w	r0, r5, #44	; 0x2c
d00036cc:	f8db 3140 	ldr.w	r3, [fp, #320]	; 0x140
d00036d0:	240b      	movs	r4, #11
d00036d2:	4798      	blx	r3
d00036d4:	f8db 30f8 	ldr.w	r3, [fp, #248]	; 0xf8
d00036d8:	aa09      	add	r2, sp, #36	; 0x24
d00036da:	4641      	mov	r1, r8
d00036dc:	701c      	strb	r4, [r3, #0]
d00036de:	f105 0034 	add.w	r0, r5, #52	; 0x34
d00036e2:	f8db 3140 	ldr.w	r3, [fp, #320]	; 0x140
d00036e6:	4798      	blx	r3
d00036e8:	3601      	adds	r6, #1
d00036ea:	3552      	adds	r5, #82	; 0x52
d00036ec:	2e04      	cmp	r6, #4
d00036ee:	d19e      	bne.n	d000362e <RenderTracker+0xfa>
d00036f0:	f8dd 9008 	ldr.w	r9, [sp, #8]
d00036f4:	e757      	b.n	d00035a6 <RenderTracker+0x72>
d00036f6:	f8db 3148 	ldr.w	r3, [fp, #328]	; 0x148
d00036fa:	aa07      	add	r2, sp, #28
d00036fc:	4649      	mov	r1, r9
d00036fe:	4628      	mov	r0, r5
d0003700:	4798      	blx	r3
d0003702:	f8db 3148 	ldr.w	r3, [fp, #328]	; 0x148
d0003706:	aa08      	add	r2, sp, #32
d0003708:	4649      	mov	r1, r9
d000370a:	f105 001b 	add.w	r0, r5, #27
d000370e:	4798      	blx	r3
d0003710:	f8db 3148 	ldr.w	r3, [fp, #328]	; 0x148
d0003714:	aa05      	add	r2, sp, #20
d0003716:	4649      	mov	r1, r9
d0003718:	f105 002c 	add.w	r0, r5, #44	; 0x2c
d000371c:	4798      	blx	r3
d000371e:	f8db 3148 	ldr.w	r3, [fp, #328]	; 0x148
d0003722:	aa09      	add	r2, sp, #36	; 0x24
d0003724:	4649      	mov	r1, r9
d0003726:	f105 0034 	add.w	r0, r5, #52	; 0x34
d000372a:	4798      	blx	r3
d000372c:	e7dc      	b.n	d00036e8 <RenderTracker+0x1b4>
d000372e:	4b39      	ldr	r3, [pc, #228]	; (d0003814 <RenderTracker+0x2e0>)
d0003730:	4d39      	ldr	r5, [pc, #228]	; (d0003818 <RenderTracker+0x2e4>)
d0003732:	7819      	ldrb	r1, [r3, #0]
d0003734:	4839      	ldr	r0, [pc, #228]	; (d000381c <RenderTracker+0x2e8>)
d0003736:	b28b      	uxth	r3, r1
d0003738:	782a      	ldrb	r2, [r5, #0]
d000373a:	4c39      	ldr	r4, [pc, #228]	; (d0003820 <RenderTracker+0x2ec>)
d000373c:	fba0 0303 	umull	r0, r3, r0, r3
d0003740:	3201      	adds	r2, #1
d0003742:	4838      	ldr	r0, [pc, #224]	; (d0003824 <RenderTracker+0x2f0>)
d0003744:	089b      	lsrs	r3, r3, #2
d0003746:	b2d2      	uxtb	r2, r2
d0003748:	f830 7021 	ldrh.w	r7, [r0, r1, lsl #2]
d000374c:	eb04 0c83 	add.w	ip, r4, r3, lsl #2
d0003750:	f834 6023 	ldrh.w	r6, [r4, r3, lsl #2]
d0003754:	2a19      	cmp	r2, #25
d0003756:	eb00 0381 	add.w	r3, r0, r1, lsl #2
d000375a:	f8bc 4002 	ldrh.w	r4, [ip, #2]
d000375e:	885b      	ldrh	r3, [r3, #2]
d0003760:	d822      	bhi.n	d00037a8 <RenderTracker+0x274>
d0003762:	702a      	strb	r2, [r5, #0]
d0003764:	4a30      	ldr	r2, [pc, #192]	; (d0003828 <RenderTracker+0x2f4>)
d0003766:	7812      	ldrb	r2, [r2, #0]
d0003768:	b1ca      	cbz	r2, d000379e <RenderTracker+0x26a>
d000376a:	f8df 8090 	ldr.w	r8, [pc, #144]	; d00037fc <RenderTracker+0x2c8>
d000376e:	201f      	movs	r0, #31
d0003770:	4a2e      	ldr	r2, [pc, #184]	; (d000382c <RenderTracker+0x2f8>)
d0003772:	f8d8 10f8 	ldr.w	r1, [r8, #248]	; 0xf8
d0003776:	7812      	ldrb	r2, [r2, #0]
d0003778:	7008      	strb	r0, [r1, #0]
d000377a:	b9ea      	cbnz	r2, d00037b8 <RenderTracker+0x284>
d000377c:	4434      	add	r4, r6
d000377e:	4d1f      	ldr	r5, [pc, #124]	; (d00037fc <RenderTracker+0x2c8>)
d0003780:	23fb      	movs	r3, #251	; 0xfb
d0003782:	21e6      	movs	r1, #230	; 0xe6
d0003784:	b2a4      	uxth	r4, r4
d0003786:	4630      	mov	r0, r6
d0003788:	f8d5 7138 	ldr.w	r7, [r5, #312]	; 0x138
d000378c:	4622      	mov	r2, r4
d000378e:	47b8      	blx	r7
d0003790:	1e62      	subs	r2, r4, #1
d0003792:	1c70      	adds	r0, r6, #1
d0003794:	f8d5 4138 	ldr.w	r4, [r5, #312]	; 0x138
d0003798:	23fa      	movs	r3, #250	; 0xfa
d000379a:	21e7      	movs	r1, #231	; 0xe7
d000379c:	47a0      	blx	r4
d000379e:	b00b      	add	sp, #44	; 0x2c
d00037a0:	ecbd 8b02 	vpop	{d8}
d00037a4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00037a8:	4920      	ldr	r1, [pc, #128]	; (d000382c <RenderTracker+0x2f8>)
d00037aa:	2000      	movs	r0, #0
d00037ac:	780a      	ldrb	r2, [r1, #0]
d00037ae:	7028      	strb	r0, [r5, #0]
d00037b0:	f1c2 0201 	rsb	r2, r2, #1
d00037b4:	700a      	strb	r2, [r1, #0]
d00037b6:	e7d5      	b.n	d0003764 <RenderTracker+0x230>
d00037b8:	19dd      	adds	r5, r3, r7
d00037ba:	4638      	mov	r0, r7
d00037bc:	f8d8 9138 	ldr.w	r9, [r8, #312]	; 0x138
d00037c0:	23f9      	movs	r3, #249	; 0xf9
d00037c2:	b2ad      	uxth	r5, r5
d00037c4:	21e8      	movs	r1, #232	; 0xe8
d00037c6:	462a      	mov	r2, r5
d00037c8:	47c8      	blx	r9
d00037ca:	1e6a      	subs	r2, r5, #1
d00037cc:	1c78      	adds	r0, r7, #1
d00037ce:	f8d8 5138 	ldr.w	r5, [r8, #312]	; 0x138
d00037d2:	23f8      	movs	r3, #248	; 0xf8
d00037d4:	21e9      	movs	r1, #233	; 0xe9
d00037d6:	47a8      	blx	r5
d00037d8:	e7d0      	b.n	d000377c <RenderTracker+0x248>
d00037da:	2210      	movs	r2, #16
d00037dc:	200a      	movs	r0, #10
d00037de:	9c00      	ldr	r4, [sp, #0]
d00037e0:	21ae      	movs	r1, #174	; 0xae
d00037e2:	701a      	strb	r2, [r3, #0]
d00037e4:	aa06      	add	r2, sp, #24
d00037e6:	fb04 1100 	mla	r1, r4, r0, r1
d00037ea:	f8db 3148 	ldr.w	r3, [fp, #328]	; 0x148
d00037ee:	200e      	movs	r0, #14
d00037f0:	4798      	blx	r3
d00037f2:	e703      	b.n	d00035fc <RenderTracker+0xc8>
d00037f4:	0002036c 	.word	0x0002036c
d00037f8:	d0031280 	.word	0xd0031280
d00037fc:	2001f000 	.word	0x2001f000
d0003800:	00020374 	.word	0x00020374
d0003804:	d0007838 	.word	0xd0007838
d0003808:	d000f040 	.word	0xd000f040
d000380c:	d0007840 	.word	0xd0007840
d0003810:	d0007848 	.word	0xd0007848
d0003814:	d000f041 	.word	0xd000f041
d0003818:	d000f03b 	.word	0xd000f03b
d000381c:	aaaaaaab 	.word	0xaaaaaaab
d0003820:	d0007854 	.word	0xd0007854
d0003824:	d0007864 	.word	0xd0007864
d0003828:	d000f043 	.word	0xd000f043
d000382c:	d000f03a 	.word	0xd000f03a

d0003830 <RenderConfirmYESNObox>:
d0003830:	b570      	push	{r4, r5, r6, lr}
d0003832:	4c1c      	ldr	r4, [pc, #112]	; (d00038a4 <RenderConfirmYESNObox+0x74>)
d0003834:	2100      	movs	r1, #0
d0003836:	2611      	movs	r6, #17
d0003838:	b082      	sub	sp, #8
d000383a:	f8d4 50f8 	ldr.w	r5, [r4, #248]	; 0xf8
d000383e:	4608      	mov	r0, r1
d0003840:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0003844:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0003848:	702e      	strb	r6, [r5, #0]
d000384a:	f8d4 513c 	ldr.w	r5, [r4, #316]	; 0x13c
d000384e:	47a8      	blx	r5
d0003850:	f8d4 00f8 	ldr.w	r0, [r4, #248]	; 0xf8
d0003854:	2100      	movs	r1, #0
d0003856:	2505      	movs	r5, #5
d0003858:	2364      	movs	r3, #100	; 0x64
d000385a:	228c      	movs	r2, #140	; 0x8c
d000385c:	7005      	strb	r5, [r0, #0]
d000385e:	4608      	mov	r0, r1
d0003860:	f8d4 513c 	ldr.w	r5, [r4, #316]	; 0x13c
d0003864:	47a8      	blx	r5
d0003866:	2100      	movs	r1, #0
d0003868:	2304      	movs	r3, #4
d000386a:	2206      	movs	r2, #6
d000386c:	4608      	mov	r0, r1
d000386e:	9301      	str	r3, [sp, #4]
d0003870:	2364      	movs	r3, #100	; 0x64
d0003872:	9200      	str	r2, [sp, #0]
d0003874:	228c      	movs	r2, #140	; 0x8c
d0003876:	f000 f885 	bl	d0003984 <uiDrawBeval>
d000387a:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d000387e:	2114      	movs	r1, #20
d0003880:	2010      	movs	r0, #16
d0003882:	4a09      	ldr	r2, [pc, #36]	; (d00038a8 <RenderConfirmYESNObox+0x78>)
d0003884:	7018      	strb	r0, [r3, #0]
d0003886:	4608      	mov	r0, r1
d0003888:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d000388c:	4798      	blx	r3
d000388e:	2100      	movs	r1, #0
d0003890:	203f      	movs	r0, #63	; 0x3f
d0003892:	f000 fa1f 	bl	d0003cd4 <guiRenderButton>
d0003896:	2100      	movs	r1, #0
d0003898:	203e      	movs	r0, #62	; 0x3e
d000389a:	b002      	add	sp, #8
d000389c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d00038a0:	f000 ba18 	b.w	d0003cd4 <guiRenderButton>
d00038a4:	2001f000 	.word	0x2001f000
d00038a8:	d000784c 	.word	0xd000784c

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
d0003c3c:	d0251808 	.word	0xd0251808
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
d0003c9c:	d0251808 	.word	0xd0251808

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
d0003cb4:	d0251808 	.word	0xd0251808

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
d0003cd0:	d0251808 	.word	0xd0251808

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
d0003f30:	d0251808 	.word	0xd0251808
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
d0003f80:	d025180c 	.word	0xd025180c

d0003f84 <get_event>:
d0003f84:	4b03      	ldr	r3, [pc, #12]	; (d0003f94 <get_event+0x10>)
d0003f86:	681b      	ldr	r3, [r3, #0]
d0003f88:	4218      	tst	r0, r3
d0003f8a:	bf14      	ite	ne
d0003f8c:	2001      	movne	r0, #1
d0003f8e:	2000      	moveq	r0, #0
d0003f90:	4770      	bx	lr
d0003f92:	bf00      	nop
d0003f94:	d0252b08 	.word	0xd0252b08

d0003f98 <getEvents>:
d0003f98:	4b01      	ldr	r3, [pc, #4]	; (d0003fa0 <getEvents+0x8>)
d0003f9a:	6818      	ldr	r0, [r3, #0]
d0003f9c:	4770      	bx	lr
d0003f9e:	bf00      	nop
d0003fa0:	d0252b08 	.word	0xd0252b08

d0003fa4 <clearEvents>:
d0003fa4:	4a02      	ldr	r2, [pc, #8]	; (d0003fb0 <clearEvents+0xc>)
d0003fa6:	6813      	ldr	r3, [r2, #0]
d0003fa8:	ea23 0000 	bic.w	r0, r3, r0
d0003fac:	6010      	str	r0, [r2, #0]
d0003fae:	4770      	bx	lr
d0003fb0:	d0252b08 	.word	0xd0252b08

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
d0004014:	d0251804 	.word	0xd0251804
d0004018:	d0252b0c 	.word	0xd0252b0c
d000401c:	d000f03c 	.word	0xd000f03c
d0004020:	d0252b08 	.word	0xd0252b08

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
d00040a8:	d0251808 	.word	0xd0251808
d00040ac:	d000f048 	.word	0xd000f048
d00040b0:	d0252b08 	.word	0xd0252b08

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
d00041fc:	d0031280 	.word	0xd0031280
d0004200:	00020019 	.word	0x00020019
d0004204:	00020010 	.word	0x00020010
d0004208:	00020014 	.word	0x00020014
d000420c:	00020008 	.word	0x00020008
d0004210:	00020018 	.word	0x00020018
d0004214:	d0251808 	.word	0xd0251808
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
d00045c4:	d0251808 	.word	0xd0251808
d00045c8:	2001f000 	.word	0x2001f000
d00045cc:	d000f04c 	.word	0xd000f04c
d00045d0:	d00078dc 	.word	0xd00078dc
d00045d4:	d0031280 	.word	0xd0031280
d00045d8:	d00069b8 	.word	0xd00069b8
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
d0004950:	d0252654 	.word	0xd0252654
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
d0004b58:	d0031280 	.word	0xd0031280
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
d0004d84:	d0251808 	.word	0xd0251808
d0004d88:	2001f000 	.word	0x2001f000
d0004d8c:	d00069b8 	.word	0xd00069b8
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
d0004de8:	d0251808 	.word	0xd0251808

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
d0004e1c:	d0251808 	.word	0xd0251808

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
d0004e9c:	d0251808 	.word	0xd0251808

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
d0005250:	d0251808 	.word	0xd0251808
d0005254:	00190018 	.word	0x00190018
d0005258:	00380082 	.word	0x00380082
d000525c:	0038009c 	.word	0x0038009c
d0005260:	00530082 	.word	0x00530082
d0005264:	006e0082 	.word	0x006e0082
d0005268:	d0007944 	.word	0xd0007944
d000526c:	2001f000 	.word	0x2001f000
d0005270:	00020376 	.word	0x00020376
d0005274:	d0031280 	.word	0xd0031280
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
d0005368:	f7fd fab2 	bl	d00028d0 <ShowSongLength>
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
d0005414:	d0031280 	.word	0xd0031280
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
d000546c:	d0031280 	.word	0xd0031280
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
d00054dc:	d0031280 	.word	0xd0031280
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
d000551c:	d0031280 	.word	0xd0031280
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
d000559c:	d0031280 	.word	0xd0031280
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
d0005810:	d0251808 	.word	0xd0251808
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
d000595a:	f7fb bad7 	b.w	d0000f0c <CloseFileRequest>
d000595e:	bf00      	nop
d0005960:	d000f04c 	.word	0xd000f04c
d0005964:	d0251808 	.word	0xd0251808

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
d000664c:	d0252b10 	.word	0xd0252b10

d0006650 <__malloc_lock>:
d0006650:	4801      	ldr	r0, [pc, #4]	; (d0006658 <__malloc_lock+0x8>)
d0006652:	f000 b811 	b.w	d0006678 <__retarget_lock_acquire_recursive>
d0006656:	bf00      	nop
d0006658:	d0252b18 	.word	0xd0252b18

d000665c <__malloc_unlock>:
d000665c:	4801      	ldr	r0, [pc, #4]	; (d0006664 <__malloc_unlock+0x8>)
d000665e:	f000 b80c 	b.w	d000667a <__retarget_lock_release_recursive>
d0006662:	bf00      	nop
d0006664:	d0252b18 	.word	0xd0252b18

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
d000677c:	6f4c 6461 4b20 4d46 4d20 7375 6369 4d20     Load KFM Music M
d000678c:	646f 6c75 2065 3156 312e 000a 7325 252f     odule V1.1..%s/%
d000679c:	0073 0000 4946 454c 414e 454d 5420 204f     s...FILENAME TO 
d00067ac:	4f4c 4441 203a 7325 0a0d 0000 2d2d 2d2d     LOAD: %s....----
d00067bc:	2d2d 2d2d 0000 0000 464b 4d4d 444f 3156     ----....KFMMODV1
d00067cc:	0000 0000 6568 6461 7265 203a 7325 2820     ....header: %s (
d00067dc:	6c25 2975 000a 0000 4f4e 2054 2061 464b     %lu)....NOT a KF
d00067ec:	204d 6f4d 7564 656c 5620 2e31 3030 202c     M Module V1.00, 
d00067fc:	6f53 2064 666f 2166 000a 0000 4150 5454     Sod off!....PATT
d000680c:	5245 534e 0000 0000 7453 7261 6574 2064     ERNS....Started 
d000681c:	756f 2074 6f67 646f 203a 7562 2074 6f62     out good: but bo
d000682c:	6c6c 636f 736b 6465 7520 2070 6874 2065     llocksed up the 
d000683c:	6170 7474 7265 216e 4720 206f 7741 7961     pattern! Go Away
d000684c:	0a21 0000 6948 6867 7365 2074 6150 7474     !...Highest Patt
d000685c:	253a 0a75 0000 0000 6f53 676e 654c 676e     :%u.....SongLeng
d000686c:	6874 203a 7525 000a 6153 706d 656c 2520     th: %u..Sample %
d000687c:	2075 6f74 206f 616c 6772 2065 726f 6f20     u too large or o
d000688c:	7475 6f20 2066 6173 706d 656c 6152 536d     ut of sampleRamS
d000689c:	6170 6563 6220 756f 646e 2173 000a 0000     pace bounds!....
d00068ac:	4953 455a 4f20 3a46 2520 756c 000a 0000     SIZE OF: %lu....
d00068bc:	6153 6576 4b20 4d46 4d20 7375 6369 4d20     Save KFM Music M
d00068cc:	646f 6c75 0a65 0000 6948 6867 7365 2074     odule...Highest 
d00068dc:	6150 7474 253a 756c 000a 0000 4946 454c     Patt:%lu....FILE
d00068ec:	414e 454d 5420 204f 4153 4556 203a 7325     NAME TO SAVE: %s
d00068fc:	0a0d 0000 4f53 474e 4144 2e54 0000 0000     ....SONGDAT.....
d000690c:	4150 5454 0000 0000 4153 504d 4e49 4f46     PATT....SAMPINFO
d000691c:	0000 0000 4238 5357 4d41 5350 0000 0000     ....8BWSAMPS....
d000692c:	4238 4457 0000 0000 4453 5441 4e45 2e44     8BWD....SDATEND.
d000693c:	0000 0000 5f5f 5f5f 5f5f 5f5f 5f5f 5f5f     ....____________
d000694c:	5f5f 5f5f 5f5f 5f5f 5f5f 5f5f 5f5f 5f5f     ________________
d000695c:	5f5f 5f5f 5f5f 5f5f 5f5f 5f5f 5f5f 5f5f     ________________
d000696c:	5f5f 5f5f 5f5f 5f5f 5f5f 0000 0016 0000     __________......
d000697c:	0020 0000 6946 656c 5320 7274 6e69 2067      ...File String 
d000698c:	616e 656d 7320 6c65 6365 0a74 0000 0000     name select.....
d000699c:	753c 616e 6c62 2065 6f74 6720 7465 6420     <unable to get d
d00069ac:	7269 003e 002e 0000 001e 0000 580a 000a     ir>..........X..
d00069bc:	001f 0000 4b4f 0000 4150 4552 544e 0000     ....OK..PARENT..
d00069cc:	6964 6572 7463 726f 2079 6863 6e61 6567     directory change
d00069dc:	3d20 2720 7325 0d27 000a 0000 6946 656c      = '%s'.....File
d00069ec:	616e 656d 7420 206f 6173 6576 7420 3a6f     name to save to:
d00069fc:	2720 7325 0a27 0000 6946 656c 616e 656d      '%s'...Filename
d0006a0c:	7420 206f 6f6c 6461 7420 3a6f 2720 7325      to load to: '%s
d0006a1c:	0a27 0000                                   '...

d0006a20 <font>:
	...
d0006a28:	423c a195 95a1 3c42 3010 3060 0c18 0206     <B....B<.0`0....
d0006a38:	6642 183c 3c18 4266 7f7e 7f7f 7e7f 0000     Bf<..<fB~....~..
d0006a48:	0000 0040 0040 0040 221c 1c22 221c 1c22     ..@.@.@.."".."".
d0006a58:	8100 7e81 8181 0000 0000 0000 0000 0000     ...~............
d0006a68:	0400 040a 0000 0000 0000 0000 0000 0000     ................
d0006a78:	3000 4a48 0e36 0000 0600 7929 0629 0000     .0HJ6.....)y)...
	...
d0006a90:	6000 0a7e 3f35 0000 2a00 361c 2a1c 0000     .`~.5?...*.6.*..
d0006aa0:	1818 1818 3c7e 0018 1800 7e3c 1818 1818     ....~<....<~....
d0006ab0:	1400 7f36 1436 0000 0000 005f 005f 0000     ..6.6....._._...
d0006ac0:	0600 7f09 7f01 0000 2200 554d 2259 0000     ........."MUY"..
d0006ad0:	c000 c0c0 c0c0 c0c0 1400 ffb6 14b6 0000     ................
d0006ae0:	0400 3f06 0406 0000 1000 7e30 1030 0000     ...?......0~0...
d0006af0:	0800 3e08 081c 0000 0800 3e1c 0808 0000     ...>.......>....
d0006b00:	7800 4040 4040 0000 0800 083e 083e 0000     .x@@@@....>.>...
d0006b10:	0c08 7e7e 7e7e 080c 3010 7e7e 7e7e 1030     ..~~~~...0~~~~0.
	...
d0006b28:	0000 5f00 005f 0000 0300 0003 0303 0000     ...__...........
d0006b38:	1400 143e 3e14 0014 2400 6b2e 3a6b 0012     ..>..>...$.kk:..
d0006b48:	6a4c 1836 566c 0032 7e30 594f 3a77 4068     Lj6.lV2.0~OYw:h@
d0006b58:	0000 0704 0003 0000 0000 3e1c 4163 0000     ...........>cA..
d0006b68:	0000 6341 1c3e 0000 2a08 1c3e 3e1c 082a     ..Ac>....*>..>*.
d0006b78:	0800 3e08 083e 0008 0000 e080 0060 0000     ...>>.......`...
d0006b88:	0800 0808 0808 0008 0000 0000 6060 0000     ............``..
d0006b98:	6040 1830 060c 0103 3e00 597f 7f4d 003e     @`0......>.YM.>.
d0006ba8:	0400 7f06 007f 0000 4200 7163 4f59 0046     .........BcqYOF.
d0006bb8:	2200 4963 7f49 0036 1c18 1316 7f7f 0010     ."cII.6.........
d0006bc8:	2700 4567 7d45 0039 3c00 4b7e 7949 0030     .'gEE}9..<~KIy0.
d0006bd8:	0100 7101 0f79 0007 3600 497f 7f49 0036     ...qy....6.II.6.
d0006be8:	0600 494f 3f69 001e 0000 6600 0066 0000     ..OIi?.....ff...
d0006bf8:	0000 e680 0066 0000 0800 1408 2214 0022     ....f........"".
d0006c08:	1400 1414 1414 0014 2200 1422 0814 0008     ........."".....
d0006c18:	0200 5103 0f59 0006 7f3e 5d41 1f55 001e     ...QY...>.A]U...
d0006c28:	7e00 097f 7f09 007e 7f00 497f 7f49 0036     .~....~....II.6.
d0006c38:	1c00 633e 4141 0041 7f00 417f 3e63 001c     ..>cAAA....Ac>..
d0006c48:	7f00 497f 4149 0041 7f00 097f 0109 0001     ...IIAA.........
d0006c58:	3e00 417f 7b49 007a 7f00 087f 7f08 007f     .>.AI{z.........
d0006c68:	0000 7f41 417f 0000 2000 4060 7f40 003f     ..A..A... `@@.?.
d0006c78:	7f7f 1c08 6336 0041 7f00 407f 4040 0040     ....6cA....@@@@.
d0006c88:	7f7f 0c06 7f06 007f 7f7f 0c06 7f18 007f     ................
d0006c98:	3e00 417f 7f41 003e 7f00 097f 0f09 0006     .>.AA.>.........
d0006ca8:	7f3e 6141 7e7f 0040 7f00 097f 7f19 0066     >.Aa.~@.......f.
d0006cb8:	2600 4d6f 7b59 0032 0100 7f01 017f 0001     .&oMY{2.........
d0006cc8:	3f00 407f 7f40 003f 0f00 703f 3f70 000f     .?.@@.?...?pp?..
d0006cd8:	7f7f 1830 7f30 007f 6341 1c36 361c 4163     ..0.0...Ac6..6cA
d0006ce8:	0301 7c06 067c 0103 7161 4d59 4347 0041     ...||...aqYMGCA.
d0006cf8:	0000 7f7f 4141 0000 0301 0c06 3018 4060     ....AA.......0`@
d0006d08:	0000 4141 7f7f 0000 0c08 0306 0c06 0008     ..AA............
d0006d18:	8000 8080 8080 8080 0000 0300 0407 0000     ................
d0006d28:	2000 5474 7c54 0078 7f00 447f 7c44 0038     . tTT|x....DD|8.
d0006d38:	3800 447c 4444 0000 3800 447c 7f44 007f     .8|DDD...8|DD...
d0006d48:	3800 547c 5c54 0018 0400 7f7e 0505 0000     .8|TT\....~.....
d0006d58:	1800 a4bc fca4 007c 7f00 047f 7c04 0078     ......|......|x.
d0006d68:	0000 3d00 407d 0000 8000 8080 7dfd 0000     ...=}@.......}..
d0006d78:	7f00 107f 6c38 0044 0000 3f00 407f 0000     ....8lD....?.@..
d0006d88:	7c7c 180c 7c0c 0078 7c00 047c 7c04 0078     ||...|x..||..|x.
d0006d98:	3800 447c 7c44 0038 fc00 24fc 3c24 0018     .8|DD|8....$$<..
d0006da8:	1800 243c fc24 00fc 7c00 047c 0c04 0008     ..<$$....||.....
d0006db8:	4800 545c 7454 0020 0400 7f3f 4444 0000     .H\TTt ...?.DD..
d0006dc8:	3c00 407c 7c40 007c 1c00 603c 3c60 001c     .<|@@||...<``<..
d0006dd8:	7c3c 3060 7c60 003c 6c44 1038 6c38 0044     <|`0`|<.Dl8.8lD.
d0006de8:	1c00 e0bc 3c60 001c 4400 7464 4c5c 0044     ....`<...Ddt\LD.
d0006df8:	0800 3e08 4177 0041 0000 7f00 007f 0000     ...>wAA.........
d0006e08:	4100 7741 083e 0008 0102 0301 0202 0001     .AAw>...........
d0006e18:	4c4c 6666 3333 1919 1e00 e1a1 1221 0000     LLff33......!...
d0006e28:	3d00 2040 007d 0000 3800 5454 0955 0000     .=@ }....8TTU...
d0006e38:	2000 5555 7855 0000 2000 5455 7855 0000     . UUUx... UTUx..
d0006e48:	2000 5555 7854 0000 2000 5557 7857 0000     . UUTx... WUWx..
d0006e58:	1c00 e2a2 1422 0000 3800 5555 0855 0000     ...."....8UUU...
d0006e68:	3800 5455 0855 0000 3800 5555 0854 0000     .8UTU....8UUT...
d0006e78:	0000 7c01 0041 0000 0000 7d01 0041 0000     ...|A......}A...
d0006e88:	0000 7c01 0040 0000 7000 2429 7029 0000     ...|@....p)$)p..
d0006e98:	7800 252f 782f 0000 0800 1002 c18a f2c1     .x/%/x..........
d0006ea8:	f8f4 f0f0 c0c0 0080 0000 0600 3f1f 7f7e     .............?~.
d0006eb8:	ffff 63df 3f7f 061f 3800 4445 0039 0000     ...c.?...8ED9...
d0006ec8:	3900 4445 0038 0000 3c00 2141 007d 0000     .9ED8....<A!}...
d0006ed8:	3d00 2041 007c 0000 9c00 60a1 003d 0000     .=A |......`=...
d0006ee8:	3d00 4242 003d 0000 3c00 4041 003d 0000     .=BB=....<A@=...
d0006ef8:	7080 5868 0438 0000 4800 497e 6249 0000     .phX8....H~IIb..
d0006f08:	7e00 5d61 3f43 0000 2200 0814 2214 0000     .~a]C?..."..."..
d0006f18:	4000 7e88 0209 0000 2000 5554 7855 0000     .@.~..... TUUx..
d0006f28:	0000 7d00 007d 0000 0800 141c 3e3e 0014     ...}}.......>>..
d0006f38:	4800 7f7e 4349 0042 1500 0a0e 0e0a 0015     .H~.ICB.........
d0006f48:	0301 7c16 167c 0103 0000 7700 0077 0000     ...||......ww...
d0006f58:	0a00 555f 7d55 0028 0300 0003 0300 0003     .._UU}(.........
d0006f68:	817e a599 81a5 007e 2400 292a 2f29 0020     ~.....~..$*))/ .
d0006f78:	1c08 2236 1c08 2236 0000 0101 0301 0003     ..6"..6"........
d0006f88:	0800 0808 0808 0008 817e 95bd a995 7e81     ........~......~
d0006f98:	0100 0101 0101 0001 0200 0507 0705 0002     ................
d0006fa8:	4400 5f44 445f 0044 1100 1d19 1217 0000     .DD__DD.........
d0006fb8:	1100 1511 0a1f 0000 0400 0306 0001 0000     ................
d0006fc8:	fc00 407c 7c40 407c 0600 0f0f 017f 007f     ..|@@||@........
d0006fd8:	0000 0c00 000c 0000 0000 c080 0040 0000     ............@...
d0006fe8:	0200 1f1f 0000 0000 2600 2929 2629 0000     .........&)))&..
d0006ff8:	3622 081c 3622 081c 6f42 1830 664c 40f2     "6.."6..Bo0.Lf.@
d0007008:	6f42 1830 d69c 00b2 5511 306e 4c18 f266     Bo0......Un0.Lf.
d0007018:	5a42 185a 3c7e 0018 ffff ff00 7eff 183c     BZZ.~<.......~<.
d0007028:	dcd8 dfde dedf d8dc ffff 1800 7e3c ffff     ............<~..
d0007038:	ffff 3c7e 0018 ffff 3c18 ff7e 00ff 0000     ..~<.....<~.....
d0007048:	0000 ff00 7eff 183c 2000 5556 7956 0000     .....~<.. VUVy..
d0007058:	7000 252a 712a 0000 221c fa72 2222 1c22     .p*%*q..."r.""".
d0007068:	5555 5555 5f44 444e bf82 a882 4109 41fd     UUUUD_ND.....A.A
d0007078:	413e 5541 5549 3e41 190e 7e3d 3f7e 0e1f     >AAUIUA>..=~~?..
d0007088:	5028 50a0 1428 040a 81ff 8181 8181 ff81     (P.P(...........
d0007098:	81ff a191 8991 ff81 3000 4a4e 0038 0000     .........0NJ8...
d00070a8:	0800 497f 3e41 0000 7c00 5555 4455 0000     ...IA>...|UUUD..
d00070b8:	7c00 5455 4455 0000 7c00 5555 4454 0000     .|UTUD...|UUTD..
d00070c8:	0000 0700 0000 0000 0000 7d44 0045 0000     ..........D}E...
d00070d8:	0000 7d45 0045 0000 0000 7c45 0045 0000     ..E}E.....E|E...
d00070e8:	0808 0f08 0000 0000 0000 f800 0808 0000     ................
d00070f8:	7e00 4242 007e 0000 f0f0 f0f0 f0f0 f0f0     .~BB~...........
d0007108:	0000 7700 0000 0000 0f0f 0f0f 0f0f 000f     ...w............
d0007118:	0f0f 0f0f 0f0f 0f0f 3c00 4342 003d 0000     .........<BC=...
d0007128:	fe00 4a4a 344a 0000 3200 4949 0032 0000     ..JJJ4...2II2...
d0007138:	3100 4a4b 0030 0000 3200 4a49 0031 0000     .1KJ0....2IJ1...
d0007148:	3200 4a49 0031 0000 fc00 2020 001c 0000     .2IJ1.....  ....
d0007158:	fe00 28aa 0010 0000 ff00 24a5 0018 0000     ...(.......$....
d0007168:	3c00 4140 003d 0000 3c00 4141 003d 0000     .<@A=....<AA=...
d0007178:	3d00 4041 003c 0000 9c00 61a0 003d 0000     .=A@<......a=...
d0007188:	0400 7108 0409 0000 0000 0202 0002 0000     ...q............
d0007198:	0000 0307 0000 0000 ffff 8181 8181 9999     ................
d00071a8:	9999 8181 8181 ffff 2400 2424 2424 0000     .........$$$$$..
d00071b8:	1705 340a 782a 0000 0600 7f09 7f01 0000     ...4*x..........
d00071c8:	2200 554d 2259 0000 0800 2a08 0808 0000     ."MUY".....*....
d00071d8:	0000 1808 0018 0000 0600 0909 0006 0000     ................
d00071e8:	7f7f 7f7f 7f7f 7f7f 3008 47c8 4040 0830     .........0.G@@0.
d00071f8:	e7c3 3c7e 7e3c c3e7 ffff ffff f7f8 f7f7     ..~<<~..........
d0007208:	f4f4 f8f7 ffff fcbe 1c00 1c1c 0000 0000     ................
d0007218:	0e30 7e00 0e00 4030 464b 204d 7254 6361     0..~..0@KFM Trac
d0007228:	656b 2072 3156 302e 2d20 6c20 7465 6920     ker V1.0 - let i
d0007238:	2074 6973 676e 203f 726f 6220 7275 2170     t sing? or burp!
d0007248:	0a0d 0a0d 0000 0000 464b 204d 7254 6361     ........KFM Trac
d0007258:	656b 2072 3056 312e 2d20 5320 6469 6f62     ker V0.1 - Sidbo
d0007268:	2078 7041 6c70 7465 0000 0000 4559 0053     x Applet....YES.
d0007278:	4f4e 4550 0021 0000 4f4c 4441 0000 0000     NOPE!...LOAD....
d0007288:	4153 4556 0000 0000 0031 0000 0032 0000     SAVE....1...2...
d0007298:	0033 0000 0034 0000 0035 0000 0036 0000     3...4...5...6...
d00072a8:	0037 0000 0038 0000 4c50 5941 0000 0000     7...8...PLAY....
d00072b8:	4445 5449 0000 0000 454e 0057 5453 504f     EDIT....NEW.STOP
d00072c8:	0000 0000 6554 706d 3a6f 0000 4843 4e41     ....Tempo:..CHAN
d00072d8:	3a53 0000 0011 0000 0010 0000 0053 0000     S:..........S...
d00072e8:	004b 0000 6c63 6369 656b 2064 6b6f 6f20     K...clicked ok o
d00072f8:	206e 6966 656c 7220 7165 6575 7473 7265     n file requester
d0007308:	0a0d 0000 4153 4556 6f20 6570 6172 6974     ....SAVE operati
d0007318:	6e6f 2d20 203e 0000 4f4c 4441 6f20 6570     on -> ..LOAD ope
d0007328:	6172 6974 6e6f 2d20 203e 0000 f1f0 0000     ration -> ......

d0007338 <clut32>:
d0007338:	0000 0000 afaf ffaf ffff ffff 67a2 ff3b     .............g;.
d0007348:	5533 ff75 907c ffaa caaa ffff a997 ffff     3Uu.|...........
d0007358:	a9ff ff59 e769 ff8e b6a2 ffff c6ca ff3c     ..Y.i.........<.
d0007368:	5185 ff3c 9318 ff3d 3418 ffb3 311c ffd9     .Q<...=..4...1..
d0007378:	0000 ff00 0000 3300 001d ff00 002b ff00     .......3....+...
d0007388:	0139 ff00 0147 ff00 0156 ff00 0164 ff00     9...G...V...d...
d0007398:	01d2 ff00 01ff ff00 cece ffce ff00 ff00     ................
d00073a8:	ff00 ffb2 e700 ffff 9600 ffff 1100 ffff     ................
d00073b8:	1200 ff49 1355 ff49 14aa ff49 16ff ff49     ..I.U.I...I...I.
d00073c8:	1700 ff5b 1855 ff5b 19aa ff5b 1aff ff5b     ..[.U.[...[...[.
d00073d8:	1b00 ff6d 1c55 ff6d e300 ff00 ff54 ff85     ..m.U.m.....T...
d00073e8:	ff00 ffc4 d900 ffff a41f ffff 5400 ffe0     .............T..
d00073f8:	0000 ffff 2655 ff92 27aa ff92 28ff ff92     ....U&...'...(..
d0007408:	2900 ffa4 2a55 ffa4 2baa ffa4 2cff ffa4     .)..U*...+...,..
d0007418:	2d00 ffb6 2f55 ffb6 30aa ffb6 31ff ffb6     .-..U/...0...1..
d0007428:	3200 ffc9 3355 ffc9 34aa ffc9 35ff ffc9     .2..U3...4...5..
d0007438:	3700 ffdb 3855 ffdb 39aa ffdb 3aff ffdb     .7..U8...9...:..
d0007448:	3b00 ffed 3c55 ffed 3daa ffed 3fff ffed     .;..U<...=...?..
d0007458:	4000 ffff 4155 ffff 42aa ffff 43ff ffff     .@..UA...B...C..
d0007468:	4400 ff00 4555 ff00 46aa ff00 48ff ff00     .D..UE...F...H..
d0007478:	ff00 ffff ff55 ff12 ee55 ff12 b6ff ff12     ....U...U.......
d0007488:	1fff ff00 0ec7 ff9d 0000 fff1 7700 ffff     .............w..
d0007498:	4020 ff51 5355 ff37 54aa ff37 55ff ff37      @Q.US7..T7..U7.
d00074a8:	5600 ff49 5855 ff49 59aa ff49 5aff ff49     .VI.UXI..YI..ZI.
d00074b8:	5b00 ff5b 5c55 ff5b 5daa ff5b 5eff ff5b     .[[.U\[..][..^[.
d00074c8:	6000 ff6d 6155 ff6d 62aa ff6d 63ff ff6d     .`m.Uam..bm..cm.
d00074d8:	6400 ff6d 6555 ff80 66aa ff80 67ff ff80     .dm.Ue...f...g..
d00074e8:	6900 ff92 6a55 ff92 6baa ff92 6cff ff92     .i..Uj...k...l..
d00074f8:	6d00 ffa4 6e55 ffa4 6faa ffa4 71ff ffa4     .m..Un...o...q..
d0007508:	7200 ffb6 7355 ffb6 74aa ffb6 75ff ffb6     .r..Us...t...u..
d0007518:	7600 ffc9 7755 ffc9 79aa ffc9 7aff ffc9     .v..Uw...y...z..
d0007528:	7b00 ffdb 7c55 ffdb 7daa ffdb 7eff ffdb     .{..U|...}...~..
d0007538:	7f00 ffed 8055 ffed 82aa ffed 83ff ffed     ....U...........
d0007548:	8400 ffff 8555 ffff 86aa ffff 87ff ffff     ....U...........
d0007558:	8800 ff00 8a55 ff00 8baa ff00 8cff ff00     ....U...........
d0007568:	8d00 ff12 8e55 ff12 8faa ff12 90ff ff12     ....U...........
d0007578:	9200 ff24 9355 ff24 94aa ff24 95ff ff24     ..$.U.$...$...$.
d0007588:	9600 ff37 9755 ff37 98aa ff37 99ff ff37     ..7.U.7...7...7.
d0007598:	9b00 ff49 9c55 ff49 9daa ff49 9eff ff49     ..I.U.I...I...I.
d00075a8:	9f00 ff5b a055 ff5b a1aa ff5b a3ff ff5b     ..[.U.[...[...[.
d00075b8:	b5d5 ffa4 b0f8 ffa0 a3e6 ff94 89c1 ff7c     ..............|.
d00075c8:	81c0 ff62 62a1 ff1c 54ea ff42 a1bd ff62     ..b..b...TB...b.
d00075d8:	93c0 ff70 77a1 ff49 3faa ff00 54ff ff15     ..p..wI..?...T..
d00075e8:	50b9 ff1c b3ff ff00 88aa ff00 b5ff ff00     .P..............
d00075f8:	62ff ff0e b7e3 ff5e c0b9 ffbd b9ff ff85     .b....^.........
d0007608:	6caf ff00 81b9 ff1f 5baa ff3f beff ffc9     .l.......[?.....
d0007618:	afcb ff5b c055 ffdb c1aa ffdb c0c0 ffbd     ..[.U...........
d0007628:	c400 ffed c555 ffed c6aa ffed c7ff ffed     ....U...........
d0007638:	c800 ffff c955 ffff caaa ffff ccff ffff     ....U...........
d0007648:	cd00 ff00 ce55 ff00 cfaa ff00 d0ff ff00     ....U...........
d0007658:	d100 ff12 d255 ff12 d3aa ff12 d5ff ff12     ....U...........
d0007668:	d600 ff24 d755 ff24 d8aa ff24 d9ff ff24     ..$.U.$...$...$.
d0007678:	da00 ff37 db55 ff37 ddaa ff37 deff ff37     ..7.U.7...7...7.
d0007688:	df00 ff49 e055 ff49 e1aa ff49 e2ff ff49     ..I.U.I...I...I.
d0007698:	e300 ff5b e555 ff5b e6aa ff5b e7ff ff5b     ..[.U.[...[...[.
d00076a8:	e800 ff6d e955 ff6d eaaa ff6d ebff ff6d     ..m.U.m...m...m.
d00076b8:	ec00 ff6d ee55 ff80 efaa ff80 f0ff ff80     ..m.U...........
d00076c8:	cea2 ff93 f255 ff92 f3aa ff92 f4ff ff92     ....U...........
d00076d8:	f600 ffa4 f755 ffa4 f8aa ffa4 f9ff ffa4     ....U...........
d00076e8:	fa00 ffb6 fb55 ffb6 fcaa ffb6 feff ffb6     ....U...........
d00076f8:	ff00 ffc9 ff55 ffc9 ffaa ffc9 ffff ffc9     ....U...........
d0007708:	ff00 ffdb ff55 ffdb ffaa ffdb ffff ffdb     ....U...........
d0007718:	ff00 ffed ff55 ffed ffaa ffed ffff ffed     ....U...........
d0007728:	ff00 ffff ff55 ffff ffaa ffff ffff ffff     ....U...........
d0007738:	7c2d 002d 2d2d 002d 3f3f 003f 7325 6425     -|-.---.???.%s%d
d0007748:	0000 0000 6325 252d 0064 0000 7341 6973     ....%c-%d...Assi
d0007758:	6e67 6f53 6e75 3a64 6120 6970 615f 6475     gnSound: api_aud
d0007768:	255b 5d75 6920 2073 554e 4c4c 0d21 000a     [%u] is NULL!...
d0007778:	0043 0000 2343 0000 0044 0000 2344 0000     C...C#..D...D#..
d0007788:	0045 0000 0046 0000 2346 0000 0047 0000     E...F...F#..G...
d0007798:	2347 0000 0041 0000 2341 0000 0042 0000     G#..A...A#..B...

d00077a8 <noteFrequencies>:
d00077a8:	03ff 0440 047b 04d7 0518 055d 05c5 0616     ..@.{.....].....
d00077b8:	067f 06dc 0738 07b2 07ff 0881 08f6 09af     ....8...........
d00077c8:	0a30 0aba 0b8b 0c2c 0cfe 0db8 0e71 0f64     0.....,.....q.d.
d00077d8:	1037 112f 122c 1344 1475 15b1 1714 1851     7./.,.D.u.....Q.
d00077e8:	19e3 1b5f 1ce0 1e7b 205f 2226 248d 268f     .._...{._ &".$.&
d00077f8:	28de 2aec 2e1d 30e4 3369 36b6 39eb 3d7c     .(.*...0i3.6.9|=
d0007808:	4120 44ff 485d 4cd1 5156 5695 5b56 60ef      A.D]H.LVQ.VV[.`
d0007818:	66ae 6d3a 7310 7a7b 80d7 88c6 92c2 9916     .f:m.s{z........
d0007828:	a215 abdc b7de c1af cc9b d8ed e6d3 f6ac     ................
d0007838:	3025 7532 0000 0000 3025 5832 0000 0000     %02u....%02X....
d0007848:	3125 0058 5551 5449 003f 0000               %1X.QUIT?...

d0007854 <editColumnChannelCoords>:
d0007854:	002a 004b 007c 004b 00ce 004b 0120 004b     *.K.|.K...K. .K.

d0007864 <editColumnXCoords>:
d0007864:	002c 001c 0047 000b 004f 000b 0058 000b     ,...G...O...X...
d0007874:	0060 000b 0068 000b 007e 001c 0099 000b     `...h...~.......
d0007884:	00a1 000b 00aa 000b 00b2 000b 00ba 000b     ................
d0007894:	00d0 001c 00eb 000b 00f3 000b 00fc 000b     ................
d00078a4:	0104 000b 010c 000b 0122 001c 013d 000b     ........"...=...
d00078b4:	0145 000b 014e 000b 0156 000b 015e 000b     E...N...V...^...
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
