
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
d0000050:	d000038c 	.word	0xd000038c
d0000054:	d0000390 	.word	0xd0000390
d0000058:	d0000398 	.word	0xd0000398

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
d00000a8:	4a91      	ldr	r2, [pc, #580]	; (d00002f0 <main+0x248>)
d00000aa:	2100      	movs	r1, #0
d00000ac:	20ff      	movs	r0, #255	; 0xff
d00000ae:	6813      	ldr	r3, [r2, #0]
d00000b0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00000b4:	f023 0310 	bic.w	r3, r3, #16
d00000b8:	b0ab      	sub	sp, #172	; 0xac
d00000ba:	4e8e      	ldr	r6, [pc, #568]	; (d00002f4 <main+0x24c>)
d00000bc:	2502      	movs	r5, #2
d00000be:	2404      	movs	r4, #4
d00000c0:	9105      	str	r1, [sp, #20]
d00000c2:	9507      	str	r5, [sp, #28]
d00000c4:	460f      	mov	r7, r1
d00000c6:	9404      	str	r4, [sp, #16]
d00000c8:	4634      	mov	r4, r6
d00000ca:	6013      	str	r3, [r2, #0]
d00000cc:	f04f 0b3c 	mov.w	fp, #60	; 0x3c
d00000d0:	f8d6 30c8 	ldr.w	r3, [r6, #200]	; 0xc8
d00000d4:	f04f 098c 	mov.w	r9, #140	; 0x8c
d00000d8:	9108      	str	r1, [sp, #32]
d00000da:	46d8      	mov	r8, fp
d00000dc:	9506      	str	r5, [sp, #24]
d00000de:	4798      	blx	r3
d00000e0:	4b85      	ldr	r3, [pc, #532]	; (d00002f8 <main+0x250>)
d00000e2:	46cb      	mov	fp, r9
d00000e4:	4885      	ldr	r0, [pc, #532]	; (d00002fc <main+0x254>)
d00000e6:	601f      	str	r7, [r3, #0]
d00000e8:	9b04      	ldr	r3, [sp, #16]
d00000ea:	9309      	str	r3, [sp, #36]	; 0x24
d00000ec:	68b3      	ldr	r3, [r6, #8]
d00000ee:	4798      	blx	r3
d00000f0:	68f3      	ldr	r3, [r6, #12]
d00000f2:	200a      	movs	r0, #10
d00000f4:	4798      	blx	r3
d00000f6:	f7ff ff8d 	bl	d0000014 <initDisplayBuffers>
d00000fa:	4638      	mov	r0, r7
d00000fc:	f7ff ffc8 	bl	d0000090 <StopChannel>
d0000100:	2001      	movs	r0, #1
d0000102:	f7ff ffc5 	bl	d0000090 <StopChannel>
d0000106:	4628      	mov	r0, r5
d0000108:	f7ff ffc2 	bl	d0000090 <StopChannel>
d000010c:	2003      	movs	r0, #3
d000010e:	f7ff ffbf 	bl	d0000090 <StopChannel>
d0000112:	2004      	movs	r0, #4
d0000114:	f7ff ffbc 	bl	d0000090 <StopChannel>
d0000118:	2005      	movs	r0, #5
d000011a:	f7ff ffb9 	bl	d0000090 <StopChannel>
d000011e:	2006      	movs	r0, #6
d0000120:	f7ff ffb6 	bl	d0000090 <StopChannel>
d0000124:	2007      	movs	r0, #7
d0000126:	f7ff ffb3 	bl	d0000090 <StopChannel>
d000012a:	f44f 73a0 	mov.w	r3, #320	; 0x140
d000012e:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0000132:	f8d6 60e8 	ldr.w	r6, [r6, #232]	; 0xe8
d0000136:	4619      	mov	r1, r3
d0000138:	9500      	str	r5, [sp, #0]
d000013a:	4610      	mov	r0, r2
d000013c:	4f70      	ldr	r7, [pc, #448]	; (d0000300 <main+0x258>)
d000013e:	47b0      	blx	r6
d0000140:	f44f 7387 	mov.w	r3, #270	; 0x10e
d0000144:	f44f 7296 	mov.w	r2, #300	; 0x12c
d0000148:	201e      	movs	r0, #30
d000014a:	f44f 71d2 	mov.w	r1, #420	; 0x1a4
d000014e:	617b      	str	r3, [r7, #20]
d0000150:	4b6c      	ldr	r3, [pc, #432]	; (d0000304 <main+0x25c>)
d0000152:	2664      	movs	r6, #100	; 0x64
d0000154:	2532      	movs	r5, #50	; 0x32
d0000156:	60f8      	str	r0, [r7, #12]
d0000158:	605a      	str	r2, [r3, #4]
d000015a:	f44f 7082 	mov.w	r0, #260	; 0x104
d000015e:	6079      	str	r1, [r7, #4]
d0000160:	2114      	movs	r1, #20
d0000162:	603a      	str	r2, [r7, #0]
d0000164:	f04f 0cc8 	mov.w	ip, #200	; 0xc8
d0000168:	613a      	str	r2, [r7, #16]
d000016a:	f240 123b 	movw	r2, #315	; 0x13b
d000016e:	6099      	str	r1, [r3, #8]
d0000170:	601e      	str	r6, [r3, #0]
d0000172:	60dd      	str	r5, [r3, #12]
d0000174:	6118      	str	r0, [r3, #16]
d0000176:	615a      	str	r2, [r3, #20]
d0000178:	4b61      	ldr	r3, [pc, #388]	; (d0000300 <main+0x258>)
d000017a:	f8cd c00c 	str.w	ip, [sp, #12]
d000017e:	f8c3 c008 	str.w	ip, [r3, #8]
d0000182:	e0a9      	b.n	d00002d8 <main+0x230>
d0000184:	9b08      	ldr	r3, [sp, #32]
d0000186:	3301      	adds	r3, #1
d0000188:	2b32      	cmp	r3, #50	; 0x32
d000018a:	9308      	str	r3, [sp, #32]
d000018c:	f300 80ac 	bgt.w	d00002e8 <main+0x240>
d0000190:	f8d4 3118 	ldr.w	r3, [r4, #280]	; 0x118
d0000194:	2000      	movs	r0, #0
d0000196:	4798      	blx	r3
d0000198:	f8d4 311c 	ldr.w	r3, [r4, #284]	; 0x11c
d000019c:	2000      	movs	r0, #0
d000019e:	9f09      	ldr	r7, [sp, #36]	; 0x24
d00001a0:	4798      	blx	r3
d00001a2:	9b04      	ldr	r3, [sp, #16]
d00001a4:	9a03      	ldr	r2, [sp, #12]
d00001a6:	ad0a      	add	r5, sp, #40	; 0x28
d00001a8:	4499      	add	r9, r3
d00001aa:	9b06      	ldr	r3, [sp, #24]
d00001ac:	26bf      	movs	r6, #191	; 0xbf
d00001ae:	44bb      	add	fp, r7
d00001b0:	441a      	add	r2, r3
d00001b2:	9b07      	ldr	r3, [sp, #28]
d00001b4:	4498      	add	r8, r3
d00001b6:	4b54      	ldr	r3, [pc, #336]	; (d0000308 <main+0x260>)
d00001b8:	9203      	str	r2, [sp, #12]
d00001ba:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
d00001bc:	c507      	stmia	r5!, {r0, r1, r2}
d00001be:	2108      	movs	r1, #8
d00001c0:	702b      	strb	r3, [r5, #0]
d00001c2:	a80a      	add	r0, sp, #40	; 0x28
d00001c4:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d00001c8:	4602      	mov	r2, r0
d00001ca:	701e      	strb	r6, [r3, #0]
d00001cc:	4608      	mov	r0, r1
d00001ce:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d00001d2:	4798      	blx	r3
d00001d4:	f1ab 030a 	sub.w	r3, fp, #10
d00001d8:	f5b3 7fe6 	cmp.w	r3, #460	; 0x1cc
d00001dc:	d901      	bls.n	d00001e2 <main+0x13a>
d00001de:	427b      	negs	r3, r7
d00001e0:	9309      	str	r3, [sp, #36]	; 0x24
d00001e2:	f1a9 030a 	sub.w	r3, r9, #10
d00001e6:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
d00001ea:	d902      	bls.n	d00001f2 <main+0x14a>
d00001ec:	9b04      	ldr	r3, [sp, #16]
d00001ee:	425b      	negs	r3, r3
d00001f0:	9304      	str	r3, [sp, #16]
d00001f2:	9b03      	ldr	r3, [sp, #12]
d00001f4:	3b0a      	subs	r3, #10
d00001f6:	f5b3 7fe6 	cmp.w	r3, #460	; 0x1cc
d00001fa:	d902      	bls.n	d0000202 <main+0x15a>
d00001fc:	9b06      	ldr	r3, [sp, #24]
d00001fe:	425b      	negs	r3, r3
d0000200:	9306      	str	r3, [sp, #24]
d0000202:	f1a8 030a 	sub.w	r3, r8, #10
d0000206:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
d000020a:	d902      	bls.n	d0000212 <main+0x16a>
d000020c:	9b07      	ldr	r3, [sp, #28]
d000020e:	425b      	negs	r3, r3
d0000210:	9307      	str	r3, [sp, #28]
d0000212:	f8d4 10f8 	ldr.w	r1, [r4, #248]	; 0xf8
d0000216:	f04f 0aff 	mov.w	sl, #255	; 0xff
d000021a:	2501      	movs	r5, #1
d000021c:	2300      	movs	r3, #0
d000021e:	f881 a000 	strb.w	sl, [r1]
d0000222:	2214      	movs	r2, #20
d0000224:	4649      	mov	r1, r9
d0000226:	f8d4 6128 	ldr.w	r6, [r4, #296]	; 0x128
d000022a:	4658      	mov	r0, fp
d000022c:	47b0      	blx	r6
d000022e:	f8d4 6128 	ldr.w	r6, [r4, #296]	; 0x128
d0000232:	462b      	mov	r3, r5
d0000234:	2214      	movs	r2, #20
d0000236:	4641      	mov	r1, r8
d0000238:	9803      	ldr	r0, [sp, #12]
d000023a:	47b0      	blx	r6
d000023c:	f8d4 312c 	ldr.w	r3, [r4, #300]	; 0x12c
d0000240:	223c      	movs	r2, #60	; 0x3c
d0000242:	4649      	mov	r1, r9
d0000244:	461f      	mov	r7, r3
d0000246:	9803      	ldr	r0, [sp, #12]
d0000248:	231e      	movs	r3, #30
d000024a:	9500      	str	r5, [sp, #0]
d000024c:	47b8      	blx	r7
d000024e:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d0000252:	222c      	movs	r2, #44	; 0x2c
d0000254:	492a      	ldr	r1, [pc, #168]	; (d0000300 <main+0x258>)
d0000256:	482a      	ldr	r0, [pc, #168]	; (d0000300 <main+0x258>)
d0000258:	2600      	movs	r6, #0
d000025a:	f8c1 b004 	str.w	fp, [r1, #4]
d000025e:	4629      	mov	r1, r5
d0000260:	701a      	strb	r2, [r3, #0]
d0000262:	f04f 071f 	mov.w	r7, #31
d0000266:	f8d4 3134 	ldr.w	r3, [r4, #308]	; 0x134
d000026a:	4798      	blx	r3
d000026c:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d0000270:	4631      	mov	r1, r6
d0000272:	4824      	ldr	r0, [pc, #144]	; (d0000304 <main+0x25c>)
d0000274:	701f      	strb	r7, [r3, #0]
d0000276:	f8d4 3134 	ldr.w	r3, [r4, #308]	; 0x134
d000027a:	4798      	blx	r3
d000027c:	f8d4 20f8 	ldr.w	r2, [r4, #248]	; 0xf8
d0000280:	f04f 0e03 	mov.w	lr, #3
d0000284:	462b      	mov	r3, r5
d0000286:	f882 a000 	strb.w	sl, [r2]
d000028a:	210a      	movs	r1, #10
d000028c:	f8d4 c0f8 	ldr.w	ip, [r4, #248]	; 0xf8
d0000290:	462a      	mov	r2, r5
d0000292:	481e      	ldr	r0, [pc, #120]	; (d000030c <main+0x264>)
d0000294:	f88c e000 	strb.w	lr, [ip]
d0000298:	f8d4 a130 	ldr.w	sl, [r4, #304]	; 0x130
d000029c:	9600      	str	r6, [sp, #0]
d000029e:	47d0      	blx	sl
d00002a0:	f8d4 10f8 	ldr.w	r1, [r4, #248]	; 0xf8
d00002a4:	4633      	mov	r3, r6
d00002a6:	462a      	mov	r2, r5
d00002a8:	700f      	strb	r7, [r1, #0]
d00002aa:	210a      	movs	r1, #10
d00002ac:	f8d4 a130 	ldr.w	sl, [r4, #304]	; 0x130
d00002b0:	4816      	ldr	r0, [pc, #88]	; (d000030c <main+0x264>)
d00002b2:	9600      	str	r6, [sp, #0]
d00002b4:	47d0      	blx	sl
d00002b6:	9e05      	ldr	r6, [sp, #20]
d00002b8:	4630      	mov	r0, r6
d00002ba:	f7ff fecf 	bl	d000005c <ShowBuffer>
d00002be:	1baa      	subs	r2, r5, r6
d00002c0:	f8d4 30cc 	ldr.w	r3, [r4, #204]	; 0xcc
d00002c4:	b2d2      	uxtb	r2, r2
d00002c6:	9205      	str	r2, [sp, #20]
d00002c8:	4798      	blx	r3
d00002ca:	f8d4 30c4 	ldr.w	r3, [r4, #196]	; 0xc4
d00002ce:	4628      	mov	r0, r5
d00002d0:	4798      	blx	r3
d00002d2:	f8d4 315c 	ldr.w	r3, [r4, #348]	; 0x15c
d00002d6:	4798      	blx	r3
d00002d8:	69e3      	ldr	r3, [r4, #28]
d00002da:	4798      	blx	r3
d00002dc:	f010 0002 	ands.w	r0, r0, #2
d00002e0:	f47f af50 	bne.w	d0000184 <main+0xdc>
d00002e4:	9008      	str	r0, [sp, #32]
d00002e6:	e753      	b.n	d0000190 <main+0xe8>
d00002e8:	2007      	movs	r0, #7
d00002ea:	b02b      	add	sp, #172	; 0xac
d00002ec:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00002f0:	e000ed14 	.word	0xe000ed14
d00002f4:	2001f000 	.word	0x2001f000
d00002f8:	d0000338 	.word	0xd0000338
d00002fc:	d0000310 	.word	0xd0000310
d0000300:	d00003ec 	.word	0xd00003ec
d0000304:	d0000410 	.word	0xd0000410
d0000308:	d0000320 	.word	0xd0000320
d000030c:	d000033c 	.word	0xd000033c
d0000310:	6c617544 	.word	0x6c617544
d0000314:	616c5020 	.word	0x616c5020
d0000318:	0d0a0d79 	.word	0x0d0a0d79
d000031c:	0000000a 	.word	0x0000000a
d0000320:	6c6c6548 	.word	0x6c6c6548
d0000324:	6f77206f 	.word	0x6f77206f
d0000328:	21646c72 	.word	0x21646c72
	...

Disassembly of section .init:

d0000330 <_init>:
d0000330:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000332:	bf00      	nop

Disassembly of section .fini:

d0000334 <_fini>:
d0000334:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000336:	bf00      	nop
