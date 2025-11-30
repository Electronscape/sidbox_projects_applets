
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0000010 <applet_entry>:
d0000010:	f000 b83e 	b.w	d0000090 <main>

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
d0000050:	d0000bdc 	.word	0xd0000bdc
d0000054:	d0000be0 	.word	0xd0000be0
d0000058:	d0000be8 	.word	0xd0000be8

d000005c <StopChannel>:
d000005c:	4b04      	ldr	r3, [pc, #16]	; (d0000070 <StopChannel+0x14>)
d000005e:	0080      	lsls	r0, r0, #2
d0000060:	4403      	add	r3, r0
d0000062:	685b      	ldr	r3, [r3, #4]
d0000064:	781a      	ldrb	r2, [r3, #0]
d0000066:	f36f 0200 	bfc	r2, #0, #1
d000006a:	701a      	strb	r2, [r3, #0]
d000006c:	4770      	bx	lr
d000006e:	bf00      	nop
d0000070:	2001f170 	.word	0x2001f170

d0000074 <_sbrk>:
d0000074:	4904      	ldr	r1, [pc, #16]	; (d0000088 <_sbrk+0x14>)
d0000076:	4a05      	ldr	r2, [pc, #20]	; (d000008c <_sbrk+0x18>)
d0000078:	680b      	ldr	r3, [r1, #0]
d000007a:	2b00      	cmp	r3, #0
d000007c:	bf08      	it	eq
d000007e:	4613      	moveq	r3, r2
d0000080:	181a      	adds	r2, r3, r0
d0000082:	4618      	mov	r0, r3
d0000084:	600a      	str	r2, [r1, #0]
d0000086:	4770      	bx	lr
d0000088:	d0000bd0 	.word	0xd0000bd0
d000008c:	d0000bf9 	.word	0xd0000bf9

d0000090 <main>:
d0000090:	4a52      	ldr	r2, [pc, #328]	; (d00001dc <main+0x14c>)
d0000092:	20ff      	movs	r0, #255	; 0xff
d0000094:	6813      	ldr	r3, [r2, #0]
d0000096:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d000009a:	f023 0310 	bic.w	r3, r3, #16
d000009e:	f8df 814c 	ldr.w	r8, [pc, #332]	; d00001ec <main+0x15c>
d00000a2:	b0a6      	sub	sp, #152	; 0x98
d00000a4:	2600      	movs	r6, #0
d00000a6:	6013      	str	r3, [r2, #0]
d00000a8:	4644      	mov	r4, r8
d00000aa:	f8d8 30c8 	ldr.w	r3, [r8, #200]	; 0xc8
d00000ae:	4798      	blx	r3
d00000b0:	4b4b      	ldr	r3, [pc, #300]	; (d00001e0 <main+0x150>)
d00000b2:	484c      	ldr	r0, [pc, #304]	; (d00001e4 <main+0x154>)
d00000b4:	601e      	str	r6, [r3, #0]
d00000b6:	f8d8 3008 	ldr.w	r3, [r8, #8]
d00000ba:	4798      	blx	r3
d00000bc:	f8d8 300c 	ldr.w	r3, [r8, #12]
d00000c0:	200a      	movs	r0, #10
d00000c2:	4f49      	ldr	r7, [pc, #292]	; (d00001e8 <main+0x158>)
d00000c4:	4798      	blx	r3
d00000c6:	f7ff ffa5 	bl	d0000014 <initDisplayBuffers>
d00000ca:	4630      	mov	r0, r6
d00000cc:	f7ff ffc6 	bl	d000005c <StopChannel>
d00000d0:	2001      	movs	r0, #1
d00000d2:	f7ff ffc3 	bl	d000005c <StopChannel>
d00000d6:	2002      	movs	r0, #2
d00000d8:	f7ff ffc0 	bl	d000005c <StopChannel>
d00000dc:	2003      	movs	r0, #3
d00000de:	f7ff ffbd 	bl	d000005c <StopChannel>
d00000e2:	2004      	movs	r0, #4
d00000e4:	f7ff ffba 	bl	d000005c <StopChannel>
d00000e8:	2005      	movs	r0, #5
d00000ea:	f7ff ffb7 	bl	d000005c <StopChannel>
d00000ee:	2006      	movs	r0, #6
d00000f0:	f7ff ffb4 	bl	d000005c <StopChannel>
d00000f4:	2007      	movs	r0, #7
d00000f6:	f7ff ffb1 	bl	d000005c <StopChannel>
d00000fa:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00000fe:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0000102:	f8d8 50e8 	ldr.w	r5, [r8, #232]	; 0xe8
d0000106:	4610      	mov	r0, r2
d0000108:	9600      	str	r6, [sp, #0]
d000010a:	4619      	mov	r1, r3
d000010c:	47a8      	blx	r5
d000010e:	f8d8 3118 	ldr.w	r3, [r8, #280]	; 0x118
d0000112:	2001      	movs	r0, #1
d0000114:	4635      	mov	r5, r6
d0000116:	4798      	blx	r3
d0000118:	f8d8 311c 	ldr.w	r3, [r8, #284]	; 0x11c
d000011c:	2001      	movs	r0, #1
d000011e:	4798      	blx	r3
d0000120:	e047      	b.n	d00001b2 <main+0x122>
d0000122:	f8d4 805c 	ldr.w	r8, [r4, #92]	; 0x5c
d0000126:	461d      	mov	r5, r3
d0000128:	47c0      	blx	r8
d000012a:	f10d 0315 	add.w	r3, sp, #21
d000012e:	aa05      	add	r2, sp, #20
d0000130:	f10d 0116 	add.w	r1, sp, #22
d0000134:	f10d 0017 	add.w	r0, sp, #23
d0000138:	f8d4 8060 	ldr.w	r8, [r4, #96]	; 0x60
d000013c:	47c0      	blx	r8
d000013e:	f99d e017 	ldrsb.w	lr, [sp, #23]
d0000142:	f99d c016 	ldrsb.w	ip, [sp, #22]
d0000146:	4639      	mov	r1, r7
d0000148:	f99d 2014 	ldrsb.w	r2, [sp, #20]
d000014c:	a806      	add	r0, sp, #24
d000014e:	f99d 3013 	ldrsb.w	r3, [sp, #19]
d0000152:	e9cd ce02 	strd	ip, lr, [sp, #8]
d0000156:	e9cd 3200 	strd	r3, r2, [sp]
d000015a:	f99d 3012 	ldrsb.w	r3, [sp, #18]
d000015e:	f99d 2011 	ldrsb.w	r2, [sp, #17]
d0000162:	f000 f845 	bl	d00001f0 <siprintf>
d0000166:	f99d 3013 	ldrsb.w	r3, [sp, #19]
d000016a:	2108      	movs	r1, #8
d000016c:	f04f 0eff 	mov.w	lr, #255	; 0xff
d0000170:	42b3      	cmp	r3, r6
d0000172:	f04f 0c03 	mov.w	ip, #3
d0000176:	aa06      	add	r2, sp, #24
d0000178:	4608      	mov	r0, r1
d000017a:	d00a      	beq.n	d0000192 <main+0x102>
d000017c:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d0000180:	f883 e000 	strb.w	lr, [r3]
d0000184:	f8d4 30fc 	ldr.w	r3, [r4, #252]	; 0xfc
d0000188:	f883 c000 	strb.w	ip, [r3]
d000018c:	f8d4 314c 	ldr.w	r3, [r4, #332]	; 0x14c
d0000190:	4798      	blx	r3
d0000192:	f8d4 30cc 	ldr.w	r3, [r4, #204]	; 0xcc
d0000196:	4798      	blx	r3
d0000198:	f99d 3013 	ldrsb.w	r3, [sp, #19]
d000019c:	2000      	movs	r0, #0
d000019e:	42b3      	cmp	r3, r6
d00001a0:	d004      	beq.n	d00001ac <main+0x11c>
d00001a2:	f8d4 30c4 	ldr.w	r3, [r4, #196]	; 0xc4
d00001a6:	4798      	blx	r3
d00001a8:	f99d 6013 	ldrsb.w	r6, [sp, #19]
d00001ac:	f8d4 315c 	ldr.w	r3, [r4, #348]	; 0x15c
d00001b0:	4798      	blx	r3
d00001b2:	69e3      	ldr	r3, [r4, #28]
d00001b4:	3501      	adds	r5, #1
d00001b6:	4798      	blx	r3
d00001b8:	4603      	mov	r3, r0
d00001ba:	f10d 0213 	add.w	r2, sp, #19
d00001be:	f10d 0112 	add.w	r1, sp, #18
d00001c2:	f013 0302 	ands.w	r3, r3, #2
d00001c6:	f10d 0011 	add.w	r0, sp, #17
d00001ca:	d0aa      	beq.n	d0000122 <main+0x92>
d00001cc:	b2eb      	uxtb	r3, r5
d00001ce:	2b04      	cmp	r3, #4
d00001d0:	d9a7      	bls.n	d0000122 <main+0x92>
d00001d2:	2007      	movs	r0, #7
d00001d4:	b026      	add	sp, #152	; 0x98
d00001d6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00001da:	bf00      	nop
d00001dc:	e000ed14 	.word	0xe000ed14
d00001e0:	d0000bcc 	.word	0xd0000bcc
d00001e4:	d0000aec 	.word	0xd0000aec
d00001e8:	d0000b04 	.word	0xd0000b04
d00001ec:	2001f000 	.word	0x2001f000

d00001f0 <siprintf>:
d00001f0:	b40e      	push	{r1, r2, r3}
d00001f2:	b500      	push	{lr}
d00001f4:	b09c      	sub	sp, #112	; 0x70
d00001f6:	ab1d      	add	r3, sp, #116	; 0x74
d00001f8:	9002      	str	r0, [sp, #8]
d00001fa:	9006      	str	r0, [sp, #24]
d00001fc:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d0000200:	4809      	ldr	r0, [pc, #36]	; (d0000228 <siprintf+0x38>)
d0000202:	9107      	str	r1, [sp, #28]
d0000204:	9104      	str	r1, [sp, #16]
d0000206:	4909      	ldr	r1, [pc, #36]	; (d000022c <siprintf+0x3c>)
d0000208:	f853 2b04 	ldr.w	r2, [r3], #4
d000020c:	9105      	str	r1, [sp, #20]
d000020e:	6800      	ldr	r0, [r0, #0]
d0000210:	9301      	str	r3, [sp, #4]
d0000212:	a902      	add	r1, sp, #8
d0000214:	f000 f868 	bl	d00002e8 <_svfiprintf_r>
d0000218:	9b02      	ldr	r3, [sp, #8]
d000021a:	2200      	movs	r2, #0
d000021c:	701a      	strb	r2, [r3, #0]
d000021e:	b01c      	add	sp, #112	; 0x70
d0000220:	f85d eb04 	ldr.w	lr, [sp], #4
d0000224:	b003      	add	sp, #12
d0000226:	4770      	bx	lr
d0000228:	d0000b68 	.word	0xd0000b68
d000022c:	ffff0208 	.word	0xffff0208

d0000230 <__ssputs_r>:
d0000230:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0000234:	688e      	ldr	r6, [r1, #8]
d0000236:	429e      	cmp	r6, r3
d0000238:	4682      	mov	sl, r0
d000023a:	460c      	mov	r4, r1
d000023c:	4690      	mov	r8, r2
d000023e:	461f      	mov	r7, r3
d0000240:	d838      	bhi.n	d00002b4 <__ssputs_r+0x84>
d0000242:	898a      	ldrh	r2, [r1, #12]
d0000244:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0000248:	d032      	beq.n	d00002b0 <__ssputs_r+0x80>
d000024a:	6825      	ldr	r5, [r4, #0]
d000024c:	6909      	ldr	r1, [r1, #16]
d000024e:	eba5 0901 	sub.w	r9, r5, r1
d0000252:	6965      	ldr	r5, [r4, #20]
d0000254:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0000258:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d000025c:	3301      	adds	r3, #1
d000025e:	444b      	add	r3, r9
d0000260:	106d      	asrs	r5, r5, #1
d0000262:	429d      	cmp	r5, r3
d0000264:	bf38      	it	cc
d0000266:	461d      	movcc	r5, r3
d0000268:	0553      	lsls	r3, r2, #21
d000026a:	d531      	bpl.n	d00002d0 <__ssputs_r+0xa0>
d000026c:	4629      	mov	r1, r5
d000026e:	f000 fb97 	bl	d00009a0 <_malloc_r>
d0000272:	4606      	mov	r6, r0
d0000274:	b950      	cbnz	r0, d000028c <__ssputs_r+0x5c>
d0000276:	230c      	movs	r3, #12
d0000278:	f8ca 3000 	str.w	r3, [sl]
d000027c:	89a3      	ldrh	r3, [r4, #12]
d000027e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0000282:	81a3      	strh	r3, [r4, #12]
d0000284:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000288:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d000028c:	6921      	ldr	r1, [r4, #16]
d000028e:	464a      	mov	r2, r9
d0000290:	f000 fb0e 	bl	d00008b0 <memcpy>
d0000294:	89a3      	ldrh	r3, [r4, #12]
d0000296:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d000029a:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d000029e:	81a3      	strh	r3, [r4, #12]
d00002a0:	6126      	str	r6, [r4, #16]
d00002a2:	6165      	str	r5, [r4, #20]
d00002a4:	444e      	add	r6, r9
d00002a6:	eba5 0509 	sub.w	r5, r5, r9
d00002aa:	6026      	str	r6, [r4, #0]
d00002ac:	60a5      	str	r5, [r4, #8]
d00002ae:	463e      	mov	r6, r7
d00002b0:	42be      	cmp	r6, r7
d00002b2:	d900      	bls.n	d00002b6 <__ssputs_r+0x86>
d00002b4:	463e      	mov	r6, r7
d00002b6:	4632      	mov	r2, r6
d00002b8:	6820      	ldr	r0, [r4, #0]
d00002ba:	4641      	mov	r1, r8
d00002bc:	f000 fb06 	bl	d00008cc <memmove>
d00002c0:	68a3      	ldr	r3, [r4, #8]
d00002c2:	6822      	ldr	r2, [r4, #0]
d00002c4:	1b9b      	subs	r3, r3, r6
d00002c6:	4432      	add	r2, r6
d00002c8:	60a3      	str	r3, [r4, #8]
d00002ca:	6022      	str	r2, [r4, #0]
d00002cc:	2000      	movs	r0, #0
d00002ce:	e7db      	b.n	d0000288 <__ssputs_r+0x58>
d00002d0:	462a      	mov	r2, r5
d00002d2:	f000 fbbf 	bl	d0000a54 <_realloc_r>
d00002d6:	4606      	mov	r6, r0
d00002d8:	2800      	cmp	r0, #0
d00002da:	d1e1      	bne.n	d00002a0 <__ssputs_r+0x70>
d00002dc:	6921      	ldr	r1, [r4, #16]
d00002de:	4650      	mov	r0, sl
d00002e0:	f000 fb0e 	bl	d0000900 <_free_r>
d00002e4:	e7c7      	b.n	d0000276 <__ssputs_r+0x46>
	...

d00002e8 <_svfiprintf_r>:
d00002e8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00002ec:	4698      	mov	r8, r3
d00002ee:	898b      	ldrh	r3, [r1, #12]
d00002f0:	061b      	lsls	r3, r3, #24
d00002f2:	b09d      	sub	sp, #116	; 0x74
d00002f4:	4607      	mov	r7, r0
d00002f6:	460d      	mov	r5, r1
d00002f8:	4614      	mov	r4, r2
d00002fa:	d50e      	bpl.n	d000031a <_svfiprintf_r+0x32>
d00002fc:	690b      	ldr	r3, [r1, #16]
d00002fe:	b963      	cbnz	r3, d000031a <_svfiprintf_r+0x32>
d0000300:	2140      	movs	r1, #64	; 0x40
d0000302:	f000 fb4d 	bl	d00009a0 <_malloc_r>
d0000306:	6028      	str	r0, [r5, #0]
d0000308:	6128      	str	r0, [r5, #16]
d000030a:	b920      	cbnz	r0, d0000316 <_svfiprintf_r+0x2e>
d000030c:	230c      	movs	r3, #12
d000030e:	603b      	str	r3, [r7, #0]
d0000310:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000314:	e0d1      	b.n	d00004ba <_svfiprintf_r+0x1d2>
d0000316:	2340      	movs	r3, #64	; 0x40
d0000318:	616b      	str	r3, [r5, #20]
d000031a:	2300      	movs	r3, #0
d000031c:	9309      	str	r3, [sp, #36]	; 0x24
d000031e:	2320      	movs	r3, #32
d0000320:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0000324:	f8cd 800c 	str.w	r8, [sp, #12]
d0000328:	2330      	movs	r3, #48	; 0x30
d000032a:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d00004d4 <_svfiprintf_r+0x1ec>
d000032e:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0000332:	f04f 0901 	mov.w	r9, #1
d0000336:	4623      	mov	r3, r4
d0000338:	469a      	mov	sl, r3
d000033a:	f813 2b01 	ldrb.w	r2, [r3], #1
d000033e:	b10a      	cbz	r2, d0000344 <_svfiprintf_r+0x5c>
d0000340:	2a25      	cmp	r2, #37	; 0x25
d0000342:	d1f9      	bne.n	d0000338 <_svfiprintf_r+0x50>
d0000344:	ebba 0b04 	subs.w	fp, sl, r4
d0000348:	d00b      	beq.n	d0000362 <_svfiprintf_r+0x7a>
d000034a:	465b      	mov	r3, fp
d000034c:	4622      	mov	r2, r4
d000034e:	4629      	mov	r1, r5
d0000350:	4638      	mov	r0, r7
d0000352:	f7ff ff6d 	bl	d0000230 <__ssputs_r>
d0000356:	3001      	adds	r0, #1
d0000358:	f000 80aa 	beq.w	d00004b0 <_svfiprintf_r+0x1c8>
d000035c:	9a09      	ldr	r2, [sp, #36]	; 0x24
d000035e:	445a      	add	r2, fp
d0000360:	9209      	str	r2, [sp, #36]	; 0x24
d0000362:	f89a 3000 	ldrb.w	r3, [sl]
d0000366:	2b00      	cmp	r3, #0
d0000368:	f000 80a2 	beq.w	d00004b0 <_svfiprintf_r+0x1c8>
d000036c:	2300      	movs	r3, #0
d000036e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0000372:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0000376:	f10a 0a01 	add.w	sl, sl, #1
d000037a:	9304      	str	r3, [sp, #16]
d000037c:	9307      	str	r3, [sp, #28]
d000037e:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0000382:	931a      	str	r3, [sp, #104]	; 0x68
d0000384:	4654      	mov	r4, sl
d0000386:	2205      	movs	r2, #5
d0000388:	f814 1b01 	ldrb.w	r1, [r4], #1
d000038c:	4851      	ldr	r0, [pc, #324]	; (d00004d4 <_svfiprintf_r+0x1ec>)
d000038e:	f000 fa3f 	bl	d0000810 <memchr>
d0000392:	9a04      	ldr	r2, [sp, #16]
d0000394:	b9d8      	cbnz	r0, d00003ce <_svfiprintf_r+0xe6>
d0000396:	06d0      	lsls	r0, r2, #27
d0000398:	bf44      	itt	mi
d000039a:	2320      	movmi	r3, #32
d000039c:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00003a0:	0711      	lsls	r1, r2, #28
d00003a2:	bf44      	itt	mi
d00003a4:	232b      	movmi	r3, #43	; 0x2b
d00003a6:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00003aa:	f89a 3000 	ldrb.w	r3, [sl]
d00003ae:	2b2a      	cmp	r3, #42	; 0x2a
d00003b0:	d015      	beq.n	d00003de <_svfiprintf_r+0xf6>
d00003b2:	9a07      	ldr	r2, [sp, #28]
d00003b4:	4654      	mov	r4, sl
d00003b6:	2000      	movs	r0, #0
d00003b8:	f04f 0c0a 	mov.w	ip, #10
d00003bc:	4621      	mov	r1, r4
d00003be:	f811 3b01 	ldrb.w	r3, [r1], #1
d00003c2:	3b30      	subs	r3, #48	; 0x30
d00003c4:	2b09      	cmp	r3, #9
d00003c6:	d94e      	bls.n	d0000466 <_svfiprintf_r+0x17e>
d00003c8:	b1b0      	cbz	r0, d00003f8 <_svfiprintf_r+0x110>
d00003ca:	9207      	str	r2, [sp, #28]
d00003cc:	e014      	b.n	d00003f8 <_svfiprintf_r+0x110>
d00003ce:	eba0 0308 	sub.w	r3, r0, r8
d00003d2:	fa09 f303 	lsl.w	r3, r9, r3
d00003d6:	4313      	orrs	r3, r2
d00003d8:	9304      	str	r3, [sp, #16]
d00003da:	46a2      	mov	sl, r4
d00003dc:	e7d2      	b.n	d0000384 <_svfiprintf_r+0x9c>
d00003de:	9b03      	ldr	r3, [sp, #12]
d00003e0:	1d19      	adds	r1, r3, #4
d00003e2:	681b      	ldr	r3, [r3, #0]
d00003e4:	9103      	str	r1, [sp, #12]
d00003e6:	2b00      	cmp	r3, #0
d00003e8:	bfbb      	ittet	lt
d00003ea:	425b      	neglt	r3, r3
d00003ec:	f042 0202 	orrlt.w	r2, r2, #2
d00003f0:	9307      	strge	r3, [sp, #28]
d00003f2:	9307      	strlt	r3, [sp, #28]
d00003f4:	bfb8      	it	lt
d00003f6:	9204      	strlt	r2, [sp, #16]
d00003f8:	7823      	ldrb	r3, [r4, #0]
d00003fa:	2b2e      	cmp	r3, #46	; 0x2e
d00003fc:	d10c      	bne.n	d0000418 <_svfiprintf_r+0x130>
d00003fe:	7863      	ldrb	r3, [r4, #1]
d0000400:	2b2a      	cmp	r3, #42	; 0x2a
d0000402:	d135      	bne.n	d0000470 <_svfiprintf_r+0x188>
d0000404:	9b03      	ldr	r3, [sp, #12]
d0000406:	1d1a      	adds	r2, r3, #4
d0000408:	681b      	ldr	r3, [r3, #0]
d000040a:	9203      	str	r2, [sp, #12]
d000040c:	2b00      	cmp	r3, #0
d000040e:	bfb8      	it	lt
d0000410:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0000414:	3402      	adds	r4, #2
d0000416:	9305      	str	r3, [sp, #20]
d0000418:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d00004e4 <_svfiprintf_r+0x1fc>
d000041c:	7821      	ldrb	r1, [r4, #0]
d000041e:	2203      	movs	r2, #3
d0000420:	4650      	mov	r0, sl
d0000422:	f000 f9f5 	bl	d0000810 <memchr>
d0000426:	b140      	cbz	r0, d000043a <_svfiprintf_r+0x152>
d0000428:	2340      	movs	r3, #64	; 0x40
d000042a:	eba0 000a 	sub.w	r0, r0, sl
d000042e:	fa03 f000 	lsl.w	r0, r3, r0
d0000432:	9b04      	ldr	r3, [sp, #16]
d0000434:	4303      	orrs	r3, r0
d0000436:	3401      	adds	r4, #1
d0000438:	9304      	str	r3, [sp, #16]
d000043a:	f814 1b01 	ldrb.w	r1, [r4], #1
d000043e:	4826      	ldr	r0, [pc, #152]	; (d00004d8 <_svfiprintf_r+0x1f0>)
d0000440:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0000444:	2206      	movs	r2, #6
d0000446:	f000 f9e3 	bl	d0000810 <memchr>
d000044a:	2800      	cmp	r0, #0
d000044c:	d038      	beq.n	d00004c0 <_svfiprintf_r+0x1d8>
d000044e:	4b23      	ldr	r3, [pc, #140]	; (d00004dc <_svfiprintf_r+0x1f4>)
d0000450:	bb1b      	cbnz	r3, d000049a <_svfiprintf_r+0x1b2>
d0000452:	9b03      	ldr	r3, [sp, #12]
d0000454:	3307      	adds	r3, #7
d0000456:	f023 0307 	bic.w	r3, r3, #7
d000045a:	3308      	adds	r3, #8
d000045c:	9303      	str	r3, [sp, #12]
d000045e:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0000460:	4433      	add	r3, r6
d0000462:	9309      	str	r3, [sp, #36]	; 0x24
d0000464:	e767      	b.n	d0000336 <_svfiprintf_r+0x4e>
d0000466:	fb0c 3202 	mla	r2, ip, r2, r3
d000046a:	460c      	mov	r4, r1
d000046c:	2001      	movs	r0, #1
d000046e:	e7a5      	b.n	d00003bc <_svfiprintf_r+0xd4>
d0000470:	2300      	movs	r3, #0
d0000472:	3401      	adds	r4, #1
d0000474:	9305      	str	r3, [sp, #20]
d0000476:	4619      	mov	r1, r3
d0000478:	f04f 0c0a 	mov.w	ip, #10
d000047c:	4620      	mov	r0, r4
d000047e:	f810 2b01 	ldrb.w	r2, [r0], #1
d0000482:	3a30      	subs	r2, #48	; 0x30
d0000484:	2a09      	cmp	r2, #9
d0000486:	d903      	bls.n	d0000490 <_svfiprintf_r+0x1a8>
d0000488:	2b00      	cmp	r3, #0
d000048a:	d0c5      	beq.n	d0000418 <_svfiprintf_r+0x130>
d000048c:	9105      	str	r1, [sp, #20]
d000048e:	e7c3      	b.n	d0000418 <_svfiprintf_r+0x130>
d0000490:	fb0c 2101 	mla	r1, ip, r1, r2
d0000494:	4604      	mov	r4, r0
d0000496:	2301      	movs	r3, #1
d0000498:	e7f0      	b.n	d000047c <_svfiprintf_r+0x194>
d000049a:	ab03      	add	r3, sp, #12
d000049c:	9300      	str	r3, [sp, #0]
d000049e:	462a      	mov	r2, r5
d00004a0:	4b0f      	ldr	r3, [pc, #60]	; (d00004e0 <_svfiprintf_r+0x1f8>)
d00004a2:	a904      	add	r1, sp, #16
d00004a4:	4638      	mov	r0, r7
d00004a6:	f3af 8000 	nop.w
d00004aa:	1c42      	adds	r2, r0, #1
d00004ac:	4606      	mov	r6, r0
d00004ae:	d1d6      	bne.n	d000045e <_svfiprintf_r+0x176>
d00004b0:	89ab      	ldrh	r3, [r5, #12]
d00004b2:	065b      	lsls	r3, r3, #25
d00004b4:	f53f af2c 	bmi.w	d0000310 <_svfiprintf_r+0x28>
d00004b8:	9809      	ldr	r0, [sp, #36]	; 0x24
d00004ba:	b01d      	add	sp, #116	; 0x74
d00004bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00004c0:	ab03      	add	r3, sp, #12
d00004c2:	9300      	str	r3, [sp, #0]
d00004c4:	462a      	mov	r2, r5
d00004c6:	4b06      	ldr	r3, [pc, #24]	; (d00004e0 <_svfiprintf_r+0x1f8>)
d00004c8:	a904      	add	r1, sp, #16
d00004ca:	4638      	mov	r0, r7
d00004cc:	f000 f87a 	bl	d00005c4 <_printf_i>
d00004d0:	e7eb      	b.n	d00004aa <_svfiprintf_r+0x1c2>
d00004d2:	bf00      	nop
d00004d4:	d0000b2c 	.word	0xd0000b2c
d00004d8:	d0000b36 	.word	0xd0000b36
d00004dc:	00000000 	.word	0x00000000
d00004e0:	d0000231 	.word	0xd0000231
d00004e4:	d0000b32 	.word	0xd0000b32

d00004e8 <_printf_common>:
d00004e8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00004ec:	4616      	mov	r6, r2
d00004ee:	4699      	mov	r9, r3
d00004f0:	688a      	ldr	r2, [r1, #8]
d00004f2:	690b      	ldr	r3, [r1, #16]
d00004f4:	f8dd 8020 	ldr.w	r8, [sp, #32]
d00004f8:	4293      	cmp	r3, r2
d00004fa:	bfb8      	it	lt
d00004fc:	4613      	movlt	r3, r2
d00004fe:	6033      	str	r3, [r6, #0]
d0000500:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0000504:	4607      	mov	r7, r0
d0000506:	460c      	mov	r4, r1
d0000508:	b10a      	cbz	r2, d000050e <_printf_common+0x26>
d000050a:	3301      	adds	r3, #1
d000050c:	6033      	str	r3, [r6, #0]
d000050e:	6823      	ldr	r3, [r4, #0]
d0000510:	0699      	lsls	r1, r3, #26
d0000512:	bf42      	ittt	mi
d0000514:	6833      	ldrmi	r3, [r6, #0]
d0000516:	3302      	addmi	r3, #2
d0000518:	6033      	strmi	r3, [r6, #0]
d000051a:	6825      	ldr	r5, [r4, #0]
d000051c:	f015 0506 	ands.w	r5, r5, #6
d0000520:	d106      	bne.n	d0000530 <_printf_common+0x48>
d0000522:	f104 0a19 	add.w	sl, r4, #25
d0000526:	68e3      	ldr	r3, [r4, #12]
d0000528:	6832      	ldr	r2, [r6, #0]
d000052a:	1a9b      	subs	r3, r3, r2
d000052c:	42ab      	cmp	r3, r5
d000052e:	dc26      	bgt.n	d000057e <_printf_common+0x96>
d0000530:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0000534:	1e13      	subs	r3, r2, #0
d0000536:	6822      	ldr	r2, [r4, #0]
d0000538:	bf18      	it	ne
d000053a:	2301      	movne	r3, #1
d000053c:	0692      	lsls	r2, r2, #26
d000053e:	d42b      	bmi.n	d0000598 <_printf_common+0xb0>
d0000540:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0000544:	4649      	mov	r1, r9
d0000546:	4638      	mov	r0, r7
d0000548:	47c0      	blx	r8
d000054a:	3001      	adds	r0, #1
d000054c:	d01e      	beq.n	d000058c <_printf_common+0xa4>
d000054e:	6823      	ldr	r3, [r4, #0]
d0000550:	68e5      	ldr	r5, [r4, #12]
d0000552:	6832      	ldr	r2, [r6, #0]
d0000554:	f003 0306 	and.w	r3, r3, #6
d0000558:	2b04      	cmp	r3, #4
d000055a:	bf08      	it	eq
d000055c:	1aad      	subeq	r5, r5, r2
d000055e:	68a3      	ldr	r3, [r4, #8]
d0000560:	6922      	ldr	r2, [r4, #16]
d0000562:	bf0c      	ite	eq
d0000564:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0000568:	2500      	movne	r5, #0
d000056a:	4293      	cmp	r3, r2
d000056c:	bfc4      	itt	gt
d000056e:	1a9b      	subgt	r3, r3, r2
d0000570:	18ed      	addgt	r5, r5, r3
d0000572:	2600      	movs	r6, #0
d0000574:	341a      	adds	r4, #26
d0000576:	42b5      	cmp	r5, r6
d0000578:	d11a      	bne.n	d00005b0 <_printf_common+0xc8>
d000057a:	2000      	movs	r0, #0
d000057c:	e008      	b.n	d0000590 <_printf_common+0xa8>
d000057e:	2301      	movs	r3, #1
d0000580:	4652      	mov	r2, sl
d0000582:	4649      	mov	r1, r9
d0000584:	4638      	mov	r0, r7
d0000586:	47c0      	blx	r8
d0000588:	3001      	adds	r0, #1
d000058a:	d103      	bne.n	d0000594 <_printf_common+0xac>
d000058c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000590:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0000594:	3501      	adds	r5, #1
d0000596:	e7c6      	b.n	d0000526 <_printf_common+0x3e>
d0000598:	18e1      	adds	r1, r4, r3
d000059a:	1c5a      	adds	r2, r3, #1
d000059c:	2030      	movs	r0, #48	; 0x30
d000059e:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d00005a2:	4422      	add	r2, r4
d00005a4:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d00005a8:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d00005ac:	3302      	adds	r3, #2
d00005ae:	e7c7      	b.n	d0000540 <_printf_common+0x58>
d00005b0:	2301      	movs	r3, #1
d00005b2:	4622      	mov	r2, r4
d00005b4:	4649      	mov	r1, r9
d00005b6:	4638      	mov	r0, r7
d00005b8:	47c0      	blx	r8
d00005ba:	3001      	adds	r0, #1
d00005bc:	d0e6      	beq.n	d000058c <_printf_common+0xa4>
d00005be:	3601      	adds	r6, #1
d00005c0:	e7d9      	b.n	d0000576 <_printf_common+0x8e>
	...

d00005c4 <_printf_i>:
d00005c4:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d00005c8:	460c      	mov	r4, r1
d00005ca:	4691      	mov	r9, r2
d00005cc:	7e27      	ldrb	r7, [r4, #24]
d00005ce:	990c      	ldr	r1, [sp, #48]	; 0x30
d00005d0:	2f78      	cmp	r7, #120	; 0x78
d00005d2:	4680      	mov	r8, r0
d00005d4:	469a      	mov	sl, r3
d00005d6:	f104 0243 	add.w	r2, r4, #67	; 0x43
d00005da:	d807      	bhi.n	d00005ec <_printf_i+0x28>
d00005dc:	2f62      	cmp	r7, #98	; 0x62
d00005de:	d80a      	bhi.n	d00005f6 <_printf_i+0x32>
d00005e0:	2f00      	cmp	r7, #0
d00005e2:	f000 80d8 	beq.w	d0000796 <_printf_i+0x1d2>
d00005e6:	2f58      	cmp	r7, #88	; 0x58
d00005e8:	f000 80a3 	beq.w	d0000732 <_printf_i+0x16e>
d00005ec:	f104 0642 	add.w	r6, r4, #66	; 0x42
d00005f0:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d00005f4:	e03a      	b.n	d000066c <_printf_i+0xa8>
d00005f6:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d00005fa:	2b15      	cmp	r3, #21
d00005fc:	d8f6      	bhi.n	d00005ec <_printf_i+0x28>
d00005fe:	a001      	add	r0, pc, #4	; (adr r0, d0000604 <_printf_i+0x40>)
d0000600:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0000604:	d000065d 	.word	0xd000065d
d0000608:	d0000671 	.word	0xd0000671
d000060c:	d00005ed 	.word	0xd00005ed
d0000610:	d00005ed 	.word	0xd00005ed
d0000614:	d00005ed 	.word	0xd00005ed
d0000618:	d00005ed 	.word	0xd00005ed
d000061c:	d0000671 	.word	0xd0000671
d0000620:	d00005ed 	.word	0xd00005ed
d0000624:	d00005ed 	.word	0xd00005ed
d0000628:	d00005ed 	.word	0xd00005ed
d000062c:	d00005ed 	.word	0xd00005ed
d0000630:	d000077d 	.word	0xd000077d
d0000634:	d00006a1 	.word	0xd00006a1
d0000638:	d000075f 	.word	0xd000075f
d000063c:	d00005ed 	.word	0xd00005ed
d0000640:	d00005ed 	.word	0xd00005ed
d0000644:	d000079f 	.word	0xd000079f
d0000648:	d00005ed 	.word	0xd00005ed
d000064c:	d00006a1 	.word	0xd00006a1
d0000650:	d00005ed 	.word	0xd00005ed
d0000654:	d00005ed 	.word	0xd00005ed
d0000658:	d0000767 	.word	0xd0000767
d000065c:	680b      	ldr	r3, [r1, #0]
d000065e:	1d1a      	adds	r2, r3, #4
d0000660:	681b      	ldr	r3, [r3, #0]
d0000662:	600a      	str	r2, [r1, #0]
d0000664:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0000668:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d000066c:	2301      	movs	r3, #1
d000066e:	e0a3      	b.n	d00007b8 <_printf_i+0x1f4>
d0000670:	6825      	ldr	r5, [r4, #0]
d0000672:	6808      	ldr	r0, [r1, #0]
d0000674:	062e      	lsls	r6, r5, #24
d0000676:	f100 0304 	add.w	r3, r0, #4
d000067a:	d50a      	bpl.n	d0000692 <_printf_i+0xce>
d000067c:	6805      	ldr	r5, [r0, #0]
d000067e:	600b      	str	r3, [r1, #0]
d0000680:	2d00      	cmp	r5, #0
d0000682:	da03      	bge.n	d000068c <_printf_i+0xc8>
d0000684:	232d      	movs	r3, #45	; 0x2d
d0000686:	426d      	negs	r5, r5
d0000688:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d000068c:	485e      	ldr	r0, [pc, #376]	; (d0000808 <_printf_i+0x244>)
d000068e:	230a      	movs	r3, #10
d0000690:	e019      	b.n	d00006c6 <_printf_i+0x102>
d0000692:	f015 0f40 	tst.w	r5, #64	; 0x40
d0000696:	6805      	ldr	r5, [r0, #0]
d0000698:	600b      	str	r3, [r1, #0]
d000069a:	bf18      	it	ne
d000069c:	b22d      	sxthne	r5, r5
d000069e:	e7ef      	b.n	d0000680 <_printf_i+0xbc>
d00006a0:	680b      	ldr	r3, [r1, #0]
d00006a2:	6825      	ldr	r5, [r4, #0]
d00006a4:	1d18      	adds	r0, r3, #4
d00006a6:	6008      	str	r0, [r1, #0]
d00006a8:	0628      	lsls	r0, r5, #24
d00006aa:	d501      	bpl.n	d00006b0 <_printf_i+0xec>
d00006ac:	681d      	ldr	r5, [r3, #0]
d00006ae:	e002      	b.n	d00006b6 <_printf_i+0xf2>
d00006b0:	0669      	lsls	r1, r5, #25
d00006b2:	d5fb      	bpl.n	d00006ac <_printf_i+0xe8>
d00006b4:	881d      	ldrh	r5, [r3, #0]
d00006b6:	4854      	ldr	r0, [pc, #336]	; (d0000808 <_printf_i+0x244>)
d00006b8:	2f6f      	cmp	r7, #111	; 0x6f
d00006ba:	bf0c      	ite	eq
d00006bc:	2308      	moveq	r3, #8
d00006be:	230a      	movne	r3, #10
d00006c0:	2100      	movs	r1, #0
d00006c2:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d00006c6:	6866      	ldr	r6, [r4, #4]
d00006c8:	60a6      	str	r6, [r4, #8]
d00006ca:	2e00      	cmp	r6, #0
d00006cc:	bfa2      	ittt	ge
d00006ce:	6821      	ldrge	r1, [r4, #0]
d00006d0:	f021 0104 	bicge.w	r1, r1, #4
d00006d4:	6021      	strge	r1, [r4, #0]
d00006d6:	b90d      	cbnz	r5, d00006dc <_printf_i+0x118>
d00006d8:	2e00      	cmp	r6, #0
d00006da:	d04d      	beq.n	d0000778 <_printf_i+0x1b4>
d00006dc:	4616      	mov	r6, r2
d00006de:	fbb5 f1f3 	udiv	r1, r5, r3
d00006e2:	fb03 5711 	mls	r7, r3, r1, r5
d00006e6:	5dc7      	ldrb	r7, [r0, r7]
d00006e8:	f806 7d01 	strb.w	r7, [r6, #-1]!
d00006ec:	462f      	mov	r7, r5
d00006ee:	42bb      	cmp	r3, r7
d00006f0:	460d      	mov	r5, r1
d00006f2:	d9f4      	bls.n	d00006de <_printf_i+0x11a>
d00006f4:	2b08      	cmp	r3, #8
d00006f6:	d10b      	bne.n	d0000710 <_printf_i+0x14c>
d00006f8:	6823      	ldr	r3, [r4, #0]
d00006fa:	07df      	lsls	r7, r3, #31
d00006fc:	d508      	bpl.n	d0000710 <_printf_i+0x14c>
d00006fe:	6923      	ldr	r3, [r4, #16]
d0000700:	6861      	ldr	r1, [r4, #4]
d0000702:	4299      	cmp	r1, r3
d0000704:	bfde      	ittt	le
d0000706:	2330      	movle	r3, #48	; 0x30
d0000708:	f806 3c01 	strble.w	r3, [r6, #-1]
d000070c:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0000710:	1b92      	subs	r2, r2, r6
d0000712:	6122      	str	r2, [r4, #16]
d0000714:	f8cd a000 	str.w	sl, [sp]
d0000718:	464b      	mov	r3, r9
d000071a:	aa03      	add	r2, sp, #12
d000071c:	4621      	mov	r1, r4
d000071e:	4640      	mov	r0, r8
d0000720:	f7ff fee2 	bl	d00004e8 <_printf_common>
d0000724:	3001      	adds	r0, #1
d0000726:	d14c      	bne.n	d00007c2 <_printf_i+0x1fe>
d0000728:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d000072c:	b004      	add	sp, #16
d000072e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0000732:	4835      	ldr	r0, [pc, #212]	; (d0000808 <_printf_i+0x244>)
d0000734:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0000738:	6823      	ldr	r3, [r4, #0]
d000073a:	680e      	ldr	r6, [r1, #0]
d000073c:	061f      	lsls	r7, r3, #24
d000073e:	f856 5b04 	ldr.w	r5, [r6], #4
d0000742:	600e      	str	r6, [r1, #0]
d0000744:	d514      	bpl.n	d0000770 <_printf_i+0x1ac>
d0000746:	07d9      	lsls	r1, r3, #31
d0000748:	bf44      	itt	mi
d000074a:	f043 0320 	orrmi.w	r3, r3, #32
d000074e:	6023      	strmi	r3, [r4, #0]
d0000750:	b91d      	cbnz	r5, d000075a <_printf_i+0x196>
d0000752:	6823      	ldr	r3, [r4, #0]
d0000754:	f023 0320 	bic.w	r3, r3, #32
d0000758:	6023      	str	r3, [r4, #0]
d000075a:	2310      	movs	r3, #16
d000075c:	e7b0      	b.n	d00006c0 <_printf_i+0xfc>
d000075e:	6823      	ldr	r3, [r4, #0]
d0000760:	f043 0320 	orr.w	r3, r3, #32
d0000764:	6023      	str	r3, [r4, #0]
d0000766:	2378      	movs	r3, #120	; 0x78
d0000768:	4828      	ldr	r0, [pc, #160]	; (d000080c <_printf_i+0x248>)
d000076a:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d000076e:	e7e3      	b.n	d0000738 <_printf_i+0x174>
d0000770:	065e      	lsls	r6, r3, #25
d0000772:	bf48      	it	mi
d0000774:	b2ad      	uxthmi	r5, r5
d0000776:	e7e6      	b.n	d0000746 <_printf_i+0x182>
d0000778:	4616      	mov	r6, r2
d000077a:	e7bb      	b.n	d00006f4 <_printf_i+0x130>
d000077c:	680b      	ldr	r3, [r1, #0]
d000077e:	6826      	ldr	r6, [r4, #0]
d0000780:	6960      	ldr	r0, [r4, #20]
d0000782:	1d1d      	adds	r5, r3, #4
d0000784:	600d      	str	r5, [r1, #0]
d0000786:	0635      	lsls	r5, r6, #24
d0000788:	681b      	ldr	r3, [r3, #0]
d000078a:	d501      	bpl.n	d0000790 <_printf_i+0x1cc>
d000078c:	6018      	str	r0, [r3, #0]
d000078e:	e002      	b.n	d0000796 <_printf_i+0x1d2>
d0000790:	0671      	lsls	r1, r6, #25
d0000792:	d5fb      	bpl.n	d000078c <_printf_i+0x1c8>
d0000794:	8018      	strh	r0, [r3, #0]
d0000796:	2300      	movs	r3, #0
d0000798:	6123      	str	r3, [r4, #16]
d000079a:	4616      	mov	r6, r2
d000079c:	e7ba      	b.n	d0000714 <_printf_i+0x150>
d000079e:	680b      	ldr	r3, [r1, #0]
d00007a0:	1d1a      	adds	r2, r3, #4
d00007a2:	600a      	str	r2, [r1, #0]
d00007a4:	681e      	ldr	r6, [r3, #0]
d00007a6:	6862      	ldr	r2, [r4, #4]
d00007a8:	2100      	movs	r1, #0
d00007aa:	4630      	mov	r0, r6
d00007ac:	f000 f830 	bl	d0000810 <memchr>
d00007b0:	b108      	cbz	r0, d00007b6 <_printf_i+0x1f2>
d00007b2:	1b80      	subs	r0, r0, r6
d00007b4:	6060      	str	r0, [r4, #4]
d00007b6:	6863      	ldr	r3, [r4, #4]
d00007b8:	6123      	str	r3, [r4, #16]
d00007ba:	2300      	movs	r3, #0
d00007bc:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d00007c0:	e7a8      	b.n	d0000714 <_printf_i+0x150>
d00007c2:	6923      	ldr	r3, [r4, #16]
d00007c4:	4632      	mov	r2, r6
d00007c6:	4649      	mov	r1, r9
d00007c8:	4640      	mov	r0, r8
d00007ca:	47d0      	blx	sl
d00007cc:	3001      	adds	r0, #1
d00007ce:	d0ab      	beq.n	d0000728 <_printf_i+0x164>
d00007d0:	6823      	ldr	r3, [r4, #0]
d00007d2:	079b      	lsls	r3, r3, #30
d00007d4:	d413      	bmi.n	d00007fe <_printf_i+0x23a>
d00007d6:	68e0      	ldr	r0, [r4, #12]
d00007d8:	9b03      	ldr	r3, [sp, #12]
d00007da:	4298      	cmp	r0, r3
d00007dc:	bfb8      	it	lt
d00007de:	4618      	movlt	r0, r3
d00007e0:	e7a4      	b.n	d000072c <_printf_i+0x168>
d00007e2:	2301      	movs	r3, #1
d00007e4:	4632      	mov	r2, r6
d00007e6:	4649      	mov	r1, r9
d00007e8:	4640      	mov	r0, r8
d00007ea:	47d0      	blx	sl
d00007ec:	3001      	adds	r0, #1
d00007ee:	d09b      	beq.n	d0000728 <_printf_i+0x164>
d00007f0:	3501      	adds	r5, #1
d00007f2:	68e3      	ldr	r3, [r4, #12]
d00007f4:	9903      	ldr	r1, [sp, #12]
d00007f6:	1a5b      	subs	r3, r3, r1
d00007f8:	42ab      	cmp	r3, r5
d00007fa:	dcf2      	bgt.n	d00007e2 <_printf_i+0x21e>
d00007fc:	e7eb      	b.n	d00007d6 <_printf_i+0x212>
d00007fe:	2500      	movs	r5, #0
d0000800:	f104 0619 	add.w	r6, r4, #25
d0000804:	e7f5      	b.n	d00007f2 <_printf_i+0x22e>
d0000806:	bf00      	nop
d0000808:	d0000b3d 	.word	0xd0000b3d
d000080c:	d0000b4e 	.word	0xd0000b4e

d0000810 <memchr>:
d0000810:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0000814:	2a10      	cmp	r2, #16
d0000816:	db2b      	blt.n	d0000870 <memchr+0x60>
d0000818:	f010 0f07 	tst.w	r0, #7
d000081c:	d008      	beq.n	d0000830 <memchr+0x20>
d000081e:	f810 3b01 	ldrb.w	r3, [r0], #1
d0000822:	3a01      	subs	r2, #1
d0000824:	428b      	cmp	r3, r1
d0000826:	d02d      	beq.n	d0000884 <memchr+0x74>
d0000828:	f010 0f07 	tst.w	r0, #7
d000082c:	b342      	cbz	r2, d0000880 <memchr+0x70>
d000082e:	d1f6      	bne.n	d000081e <memchr+0xe>
d0000830:	b4f0      	push	{r4, r5, r6, r7}
d0000832:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0000836:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d000083a:	f022 0407 	bic.w	r4, r2, #7
d000083e:	f07f 0700 	mvns.w	r7, #0
d0000842:	2300      	movs	r3, #0
d0000844:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0000848:	3c08      	subs	r4, #8
d000084a:	ea85 0501 	eor.w	r5, r5, r1
d000084e:	ea86 0601 	eor.w	r6, r6, r1
d0000852:	fa85 f547 	uadd8	r5, r5, r7
d0000856:	faa3 f587 	sel	r5, r3, r7
d000085a:	fa86 f647 	uadd8	r6, r6, r7
d000085e:	faa5 f687 	sel	r6, r5, r7
d0000862:	b98e      	cbnz	r6, d0000888 <memchr+0x78>
d0000864:	d1ee      	bne.n	d0000844 <memchr+0x34>
d0000866:	bcf0      	pop	{r4, r5, r6, r7}
d0000868:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d000086c:	f002 0207 	and.w	r2, r2, #7
d0000870:	b132      	cbz	r2, d0000880 <memchr+0x70>
d0000872:	f810 3b01 	ldrb.w	r3, [r0], #1
d0000876:	3a01      	subs	r2, #1
d0000878:	ea83 0301 	eor.w	r3, r3, r1
d000087c:	b113      	cbz	r3, d0000884 <memchr+0x74>
d000087e:	d1f8      	bne.n	d0000872 <memchr+0x62>
d0000880:	2000      	movs	r0, #0
d0000882:	4770      	bx	lr
d0000884:	3801      	subs	r0, #1
d0000886:	4770      	bx	lr
d0000888:	2d00      	cmp	r5, #0
d000088a:	bf06      	itte	eq
d000088c:	4635      	moveq	r5, r6
d000088e:	3803      	subeq	r0, #3
d0000890:	3807      	subne	r0, #7
d0000892:	f015 0f01 	tst.w	r5, #1
d0000896:	d107      	bne.n	d00008a8 <memchr+0x98>
d0000898:	3001      	adds	r0, #1
d000089a:	f415 7f80 	tst.w	r5, #256	; 0x100
d000089e:	bf02      	ittt	eq
d00008a0:	3001      	addeq	r0, #1
d00008a2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d00008a6:	3001      	addeq	r0, #1
d00008a8:	bcf0      	pop	{r4, r5, r6, r7}
d00008aa:	3801      	subs	r0, #1
d00008ac:	4770      	bx	lr
d00008ae:	bf00      	nop

d00008b0 <memcpy>:
d00008b0:	440a      	add	r2, r1
d00008b2:	4291      	cmp	r1, r2
d00008b4:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d00008b8:	d100      	bne.n	d00008bc <memcpy+0xc>
d00008ba:	4770      	bx	lr
d00008bc:	b510      	push	{r4, lr}
d00008be:	f811 4b01 	ldrb.w	r4, [r1], #1
d00008c2:	f803 4f01 	strb.w	r4, [r3, #1]!
d00008c6:	4291      	cmp	r1, r2
d00008c8:	d1f9      	bne.n	d00008be <memcpy+0xe>
d00008ca:	bd10      	pop	{r4, pc}

d00008cc <memmove>:
d00008cc:	4288      	cmp	r0, r1
d00008ce:	b510      	push	{r4, lr}
d00008d0:	eb01 0402 	add.w	r4, r1, r2
d00008d4:	d902      	bls.n	d00008dc <memmove+0x10>
d00008d6:	4284      	cmp	r4, r0
d00008d8:	4623      	mov	r3, r4
d00008da:	d807      	bhi.n	d00008ec <memmove+0x20>
d00008dc:	1e43      	subs	r3, r0, #1
d00008de:	42a1      	cmp	r1, r4
d00008e0:	d008      	beq.n	d00008f4 <memmove+0x28>
d00008e2:	f811 2b01 	ldrb.w	r2, [r1], #1
d00008e6:	f803 2f01 	strb.w	r2, [r3, #1]!
d00008ea:	e7f8      	b.n	d00008de <memmove+0x12>
d00008ec:	4402      	add	r2, r0
d00008ee:	4601      	mov	r1, r0
d00008f0:	428a      	cmp	r2, r1
d00008f2:	d100      	bne.n	d00008f6 <memmove+0x2a>
d00008f4:	bd10      	pop	{r4, pc}
d00008f6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d00008fa:	f802 4d01 	strb.w	r4, [r2, #-1]!
d00008fe:	e7f7      	b.n	d00008f0 <memmove+0x24>

d0000900 <_free_r>:
d0000900:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0000902:	2900      	cmp	r1, #0
d0000904:	d048      	beq.n	d0000998 <_free_r+0x98>
d0000906:	f851 3c04 	ldr.w	r3, [r1, #-4]
d000090a:	9001      	str	r0, [sp, #4]
d000090c:	2b00      	cmp	r3, #0
d000090e:	f1a1 0404 	sub.w	r4, r1, #4
d0000912:	bfb8      	it	lt
d0000914:	18e4      	addlt	r4, r4, r3
d0000916:	f000 f8d3 	bl	d0000ac0 <__malloc_lock>
d000091a:	4a20      	ldr	r2, [pc, #128]	; (d000099c <_free_r+0x9c>)
d000091c:	9801      	ldr	r0, [sp, #4]
d000091e:	6813      	ldr	r3, [r2, #0]
d0000920:	4615      	mov	r5, r2
d0000922:	b933      	cbnz	r3, d0000932 <_free_r+0x32>
d0000924:	6063      	str	r3, [r4, #4]
d0000926:	6014      	str	r4, [r2, #0]
d0000928:	b003      	add	sp, #12
d000092a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d000092e:	f000 b8cd 	b.w	d0000acc <__malloc_unlock>
d0000932:	42a3      	cmp	r3, r4
d0000934:	d90b      	bls.n	d000094e <_free_r+0x4e>
d0000936:	6821      	ldr	r1, [r4, #0]
d0000938:	1862      	adds	r2, r4, r1
d000093a:	4293      	cmp	r3, r2
d000093c:	bf04      	itt	eq
d000093e:	681a      	ldreq	r2, [r3, #0]
d0000940:	685b      	ldreq	r3, [r3, #4]
d0000942:	6063      	str	r3, [r4, #4]
d0000944:	bf04      	itt	eq
d0000946:	1852      	addeq	r2, r2, r1
d0000948:	6022      	streq	r2, [r4, #0]
d000094a:	602c      	str	r4, [r5, #0]
d000094c:	e7ec      	b.n	d0000928 <_free_r+0x28>
d000094e:	461a      	mov	r2, r3
d0000950:	685b      	ldr	r3, [r3, #4]
d0000952:	b10b      	cbz	r3, d0000958 <_free_r+0x58>
d0000954:	42a3      	cmp	r3, r4
d0000956:	d9fa      	bls.n	d000094e <_free_r+0x4e>
d0000958:	6811      	ldr	r1, [r2, #0]
d000095a:	1855      	adds	r5, r2, r1
d000095c:	42a5      	cmp	r5, r4
d000095e:	d10b      	bne.n	d0000978 <_free_r+0x78>
d0000960:	6824      	ldr	r4, [r4, #0]
d0000962:	4421      	add	r1, r4
d0000964:	1854      	adds	r4, r2, r1
d0000966:	42a3      	cmp	r3, r4
d0000968:	6011      	str	r1, [r2, #0]
d000096a:	d1dd      	bne.n	d0000928 <_free_r+0x28>
d000096c:	681c      	ldr	r4, [r3, #0]
d000096e:	685b      	ldr	r3, [r3, #4]
d0000970:	6053      	str	r3, [r2, #4]
d0000972:	4421      	add	r1, r4
d0000974:	6011      	str	r1, [r2, #0]
d0000976:	e7d7      	b.n	d0000928 <_free_r+0x28>
d0000978:	d902      	bls.n	d0000980 <_free_r+0x80>
d000097a:	230c      	movs	r3, #12
d000097c:	6003      	str	r3, [r0, #0]
d000097e:	e7d3      	b.n	d0000928 <_free_r+0x28>
d0000980:	6825      	ldr	r5, [r4, #0]
d0000982:	1961      	adds	r1, r4, r5
d0000984:	428b      	cmp	r3, r1
d0000986:	bf04      	itt	eq
d0000988:	6819      	ldreq	r1, [r3, #0]
d000098a:	685b      	ldreq	r3, [r3, #4]
d000098c:	6063      	str	r3, [r4, #4]
d000098e:	bf04      	itt	eq
d0000990:	1949      	addeq	r1, r1, r5
d0000992:	6021      	streq	r1, [r4, #0]
d0000994:	6054      	str	r4, [r2, #4]
d0000996:	e7c7      	b.n	d0000928 <_free_r+0x28>
d0000998:	b003      	add	sp, #12
d000099a:	bd30      	pop	{r4, r5, pc}
d000099c:	d0000bd4 	.word	0xd0000bd4

d00009a0 <_malloc_r>:
d00009a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00009a2:	1ccd      	adds	r5, r1, #3
d00009a4:	f025 0503 	bic.w	r5, r5, #3
d00009a8:	3508      	adds	r5, #8
d00009aa:	2d0c      	cmp	r5, #12
d00009ac:	bf38      	it	cc
d00009ae:	250c      	movcc	r5, #12
d00009b0:	2d00      	cmp	r5, #0
d00009b2:	4606      	mov	r6, r0
d00009b4:	db01      	blt.n	d00009ba <_malloc_r+0x1a>
d00009b6:	42a9      	cmp	r1, r5
d00009b8:	d903      	bls.n	d00009c2 <_malloc_r+0x22>
d00009ba:	230c      	movs	r3, #12
d00009bc:	6033      	str	r3, [r6, #0]
d00009be:	2000      	movs	r0, #0
d00009c0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00009c2:	f000 f87d 	bl	d0000ac0 <__malloc_lock>
d00009c6:	4921      	ldr	r1, [pc, #132]	; (d0000a4c <_malloc_r+0xac>)
d00009c8:	680a      	ldr	r2, [r1, #0]
d00009ca:	4614      	mov	r4, r2
d00009cc:	b99c      	cbnz	r4, d00009f6 <_malloc_r+0x56>
d00009ce:	4f20      	ldr	r7, [pc, #128]	; (d0000a50 <_malloc_r+0xb0>)
d00009d0:	683b      	ldr	r3, [r7, #0]
d00009d2:	b923      	cbnz	r3, d00009de <_malloc_r+0x3e>
d00009d4:	4621      	mov	r1, r4
d00009d6:	4630      	mov	r0, r6
d00009d8:	f000 f862 	bl	d0000aa0 <_sbrk_r>
d00009dc:	6038      	str	r0, [r7, #0]
d00009de:	4629      	mov	r1, r5
d00009e0:	4630      	mov	r0, r6
d00009e2:	f000 f85d 	bl	d0000aa0 <_sbrk_r>
d00009e6:	1c43      	adds	r3, r0, #1
d00009e8:	d123      	bne.n	d0000a32 <_malloc_r+0x92>
d00009ea:	230c      	movs	r3, #12
d00009ec:	6033      	str	r3, [r6, #0]
d00009ee:	4630      	mov	r0, r6
d00009f0:	f000 f86c 	bl	d0000acc <__malloc_unlock>
d00009f4:	e7e3      	b.n	d00009be <_malloc_r+0x1e>
d00009f6:	6823      	ldr	r3, [r4, #0]
d00009f8:	1b5b      	subs	r3, r3, r5
d00009fa:	d417      	bmi.n	d0000a2c <_malloc_r+0x8c>
d00009fc:	2b0b      	cmp	r3, #11
d00009fe:	d903      	bls.n	d0000a08 <_malloc_r+0x68>
d0000a00:	6023      	str	r3, [r4, #0]
d0000a02:	441c      	add	r4, r3
d0000a04:	6025      	str	r5, [r4, #0]
d0000a06:	e004      	b.n	d0000a12 <_malloc_r+0x72>
d0000a08:	6863      	ldr	r3, [r4, #4]
d0000a0a:	42a2      	cmp	r2, r4
d0000a0c:	bf0c      	ite	eq
d0000a0e:	600b      	streq	r3, [r1, #0]
d0000a10:	6053      	strne	r3, [r2, #4]
d0000a12:	4630      	mov	r0, r6
d0000a14:	f000 f85a 	bl	d0000acc <__malloc_unlock>
d0000a18:	f104 000b 	add.w	r0, r4, #11
d0000a1c:	1d23      	adds	r3, r4, #4
d0000a1e:	f020 0007 	bic.w	r0, r0, #7
d0000a22:	1ac2      	subs	r2, r0, r3
d0000a24:	d0cc      	beq.n	d00009c0 <_malloc_r+0x20>
d0000a26:	1a1b      	subs	r3, r3, r0
d0000a28:	50a3      	str	r3, [r4, r2]
d0000a2a:	e7c9      	b.n	d00009c0 <_malloc_r+0x20>
d0000a2c:	4622      	mov	r2, r4
d0000a2e:	6864      	ldr	r4, [r4, #4]
d0000a30:	e7cc      	b.n	d00009cc <_malloc_r+0x2c>
d0000a32:	1cc4      	adds	r4, r0, #3
d0000a34:	f024 0403 	bic.w	r4, r4, #3
d0000a38:	42a0      	cmp	r0, r4
d0000a3a:	d0e3      	beq.n	d0000a04 <_malloc_r+0x64>
d0000a3c:	1a21      	subs	r1, r4, r0
d0000a3e:	4630      	mov	r0, r6
d0000a40:	f000 f82e 	bl	d0000aa0 <_sbrk_r>
d0000a44:	3001      	adds	r0, #1
d0000a46:	d1dd      	bne.n	d0000a04 <_malloc_r+0x64>
d0000a48:	e7cf      	b.n	d00009ea <_malloc_r+0x4a>
d0000a4a:	bf00      	nop
d0000a4c:	d0000bd4 	.word	0xd0000bd4
d0000a50:	d0000bd8 	.word	0xd0000bd8

d0000a54 <_realloc_r>:
d0000a54:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000a56:	4607      	mov	r7, r0
d0000a58:	4614      	mov	r4, r2
d0000a5a:	460e      	mov	r6, r1
d0000a5c:	b921      	cbnz	r1, d0000a68 <_realloc_r+0x14>
d0000a5e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0000a62:	4611      	mov	r1, r2
d0000a64:	f7ff bf9c 	b.w	d00009a0 <_malloc_r>
d0000a68:	b922      	cbnz	r2, d0000a74 <_realloc_r+0x20>
d0000a6a:	f7ff ff49 	bl	d0000900 <_free_r>
d0000a6e:	4625      	mov	r5, r4
d0000a70:	4628      	mov	r0, r5
d0000a72:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0000a74:	f000 f830 	bl	d0000ad8 <_malloc_usable_size_r>
d0000a78:	42a0      	cmp	r0, r4
d0000a7a:	d20f      	bcs.n	d0000a9c <_realloc_r+0x48>
d0000a7c:	4621      	mov	r1, r4
d0000a7e:	4638      	mov	r0, r7
d0000a80:	f7ff ff8e 	bl	d00009a0 <_malloc_r>
d0000a84:	4605      	mov	r5, r0
d0000a86:	2800      	cmp	r0, #0
d0000a88:	d0f2      	beq.n	d0000a70 <_realloc_r+0x1c>
d0000a8a:	4631      	mov	r1, r6
d0000a8c:	4622      	mov	r2, r4
d0000a8e:	f7ff ff0f 	bl	d00008b0 <memcpy>
d0000a92:	4631      	mov	r1, r6
d0000a94:	4638      	mov	r0, r7
d0000a96:	f7ff ff33 	bl	d0000900 <_free_r>
d0000a9a:	e7e9      	b.n	d0000a70 <_realloc_r+0x1c>
d0000a9c:	4635      	mov	r5, r6
d0000a9e:	e7e7      	b.n	d0000a70 <_realloc_r+0x1c>

d0000aa0 <_sbrk_r>:
d0000aa0:	b538      	push	{r3, r4, r5, lr}
d0000aa2:	4d06      	ldr	r5, [pc, #24]	; (d0000abc <_sbrk_r+0x1c>)
d0000aa4:	2300      	movs	r3, #0
d0000aa6:	4604      	mov	r4, r0
d0000aa8:	4608      	mov	r0, r1
d0000aaa:	602b      	str	r3, [r5, #0]
d0000aac:	f7ff fae2 	bl	d0000074 <_sbrk>
d0000ab0:	1c43      	adds	r3, r0, #1
d0000ab2:	d102      	bne.n	d0000aba <_sbrk_r+0x1a>
d0000ab4:	682b      	ldr	r3, [r5, #0]
d0000ab6:	b103      	cbz	r3, d0000aba <_sbrk_r+0x1a>
d0000ab8:	6023      	str	r3, [r4, #0]
d0000aba:	bd38      	pop	{r3, r4, r5, pc}
d0000abc:	d0000bec 	.word	0xd0000bec

d0000ac0 <__malloc_lock>:
d0000ac0:	4801      	ldr	r0, [pc, #4]	; (d0000ac8 <__malloc_lock+0x8>)
d0000ac2:	f000 b811 	b.w	d0000ae8 <__retarget_lock_acquire_recursive>
d0000ac6:	bf00      	nop
d0000ac8:	d0000bf4 	.word	0xd0000bf4

d0000acc <__malloc_unlock>:
d0000acc:	4801      	ldr	r0, [pc, #4]	; (d0000ad4 <__malloc_unlock+0x8>)
d0000ace:	f000 b80c 	b.w	d0000aea <__retarget_lock_release_recursive>
d0000ad2:	bf00      	nop
d0000ad4:	d0000bf4 	.word	0xd0000bf4

d0000ad8 <_malloc_usable_size_r>:
d0000ad8:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0000adc:	1f18      	subs	r0, r3, #4
d0000ade:	2b00      	cmp	r3, #0
d0000ae0:	bfbc      	itt	lt
d0000ae2:	580b      	ldrlt	r3, [r1, r0]
d0000ae4:	18c0      	addlt	r0, r0, r3
d0000ae6:	4770      	bx	lr

d0000ae8 <__retarget_lock_acquire_recursive>:
d0000ae8:	4770      	bx	lr

d0000aea <__retarget_lock_release_recursive>:
d0000aea:	4770      	bx	lr
d0000aec:	676e6953 	.word	0x676e6953
d0000af0:	4c20656c 	.word	0x4c20656c
d0000af4:	72657961 	.word	0x72657961
d0000af8:	61724420 	.word	0x61724420
d0000afc:	0d0a0d77 	.word	0x0d0a0d77
d0000b00:	0000000a 	.word	0x0000000a
d0000b04:	454d4954 	.word	0x454d4954
d0000b08:	3025203a 	.word	0x3025203a
d0000b0c:	253a6432 	.word	0x253a6432
d0000b10:	3a643230 	.word	0x3a643230
d0000b14:	64323025 	.word	0x64323025
d0000b18:	25202d20 	.word	0x25202d20
d0000b1c:	2f643230 	.word	0x2f643230
d0000b20:	64323025 	.word	0x64323025
d0000b24:	2530322f 	.word	0x2530322f
d0000b28:	00643230 	.word	0x00643230
d0000b2c:	2b302d23 	.word	0x2b302d23
d0000b30:	6c680020 	.word	0x6c680020
d0000b34:	6665004c 	.word	0x6665004c
d0000b38:	47464567 	.word	0x47464567
d0000b3c:	00          	.byte	0x00
d0000b3d:	30          	.byte	0x30
d0000b3e:	3231      	.short	0x3231
d0000b40:	36353433 	.word	0x36353433
d0000b44:	41393837 	.word	0x41393837
d0000b48:	45444342 	.word	0x45444342
d0000b4c:	31300046 	.word	0x31300046
d0000b50:	35343332 	.word	0x35343332
d0000b54:	39383736 	.word	0x39383736
d0000b58:	64636261 	.word	0x64636261
d0000b5c:	Address 0x00000000d0000b5c is out of bounds.


Disassembly of section .init:

d0000b60 <_init>:
d0000b60:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000b62:	bf00      	nop

Disassembly of section .fini:

d0000b64 <_fini>:
d0000b64:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000b66:	bf00      	nop
