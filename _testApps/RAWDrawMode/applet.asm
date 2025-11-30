
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0000010 <applet_entry>:
d0000010:	f000 bc08 	b.w	d0000824 <main>

d0000014 <memset>:
d0000014:	4402      	add	r2, r0
d0000016:	4603      	mov	r3, r0
d0000018:	4293      	cmp	r3, r2
d000001a:	d100      	bne.n	d000001e <memset+0xa>
d000001c:	4770      	bx	lr
d000001e:	f803 1b01 	strb.w	r1, [r3], #1
d0000022:	e7f9      	b.n	d0000018 <memset+0x4>

d0000024 <initDisplayBuffers>:
d0000024:	4b0c      	ldr	r3, [pc, #48]	; (d0000058 <initDisplayBuffers+0x34>)
d0000026:	4a0d      	ldr	r2, [pc, #52]	; (d000005c <initDisplayBuffers+0x38>)
d0000028:	f8d3 00ec 	ldr.w	r0, [r3, #236]	; 0xec
d000002c:	b410      	push	{r4}
d000002e:	f8d3 40f4 	ldr.w	r4, [r3, #244]	; 0xf4
d0000032:	f8d3 10f4 	ldr.w	r1, [r3, #244]	; 0xf4
d0000036:	6002      	str	r2, [r0, #0]
d0000038:	6022      	str	r2, [r4, #0]
d000003a:	4809      	ldr	r0, [pc, #36]	; (d0000060 <initDisplayBuffers+0x3c>)
d000003c:	680a      	ldr	r2, [r1, #0]
d000003e:	4909      	ldr	r1, [pc, #36]	; (d0000064 <initDisplayBuffers+0x40>)
d0000040:	6002      	str	r2, [r0, #0]
d0000042:	f8d3 00f0 	ldr.w	r0, [r3, #240]	; 0xf0
d0000046:	f8d3 30f0 	ldr.w	r3, [r3, #240]	; 0xf0
d000004a:	4a07      	ldr	r2, [pc, #28]	; (d0000068 <initDisplayBuffers+0x44>)
d000004c:	6008      	str	r0, [r1, #0]
d000004e:	681b      	ldr	r3, [r3, #0]
d0000050:	f85d 4b04 	ldr.w	r4, [sp], #4
d0000054:	6013      	str	r3, [r2, #0]
d0000056:	4770      	bx	lr
d0000058:	2001f000 	.word	0x2001f000
d000005c:	d06b2000 	.word	0xd06b2000
d0000060:	d004cc10 	.word	0xd004cc10
d0000064:	d004cc14 	.word	0xd004cc14
d0000068:	d004cc1c 	.word	0xd004cc1c

d000006c <randomi>:
d000006c:	4907      	ldr	r1, [pc, #28]	; (d000008c <randomi+0x20>)
d000006e:	680b      	ldr	r3, [r1, #0]
d0000070:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0000074:	eb03 0342 	add.w	r3, r3, r2, lsl #1
d0000078:	337d      	adds	r3, #125	; 0x7d
d000007a:	141a      	asrs	r2, r3, #16
d000007c:	600b      	str	r3, [r1, #0]
d000007e:	fb92 f3f0 	sdiv	r3, r2, r0
d0000082:	fb03 2010 	mls	r0, r3, r0, r2
d0000086:	b200      	sxth	r0, r0
d0000088:	4770      	bx	lr
d000008a:	bf00      	nop
d000008c:	d0001bf8 	.word	0xd0001bf8

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

d00000a8 <_write>:
d00000a8:	4610      	mov	r0, r2
d00000aa:	4770      	bx	lr

d00000ac <_read>:
d00000ac:	b508      	push	{r3, lr}
d00000ae:	f000 fc57 	bl	d0000960 <__errno>
d00000b2:	2258      	movs	r2, #88	; 0x58
d00000b4:	4603      	mov	r3, r0
d00000b6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00000ba:	601a      	str	r2, [r3, #0]
d00000bc:	bd08      	pop	{r3, pc}
d00000be:	bf00      	nop

d00000c0 <_close>:
d00000c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00000c4:	4770      	bx	lr
d00000c6:	bf00      	nop

d00000c8 <_fstat>:
d00000c8:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d00000cc:	2000      	movs	r0, #0
d00000ce:	604b      	str	r3, [r1, #4]
d00000d0:	4770      	bx	lr
d00000d2:	bf00      	nop

d00000d4 <_lseek>:
d00000d4:	2000      	movs	r0, #0
d00000d6:	4770      	bx	lr

d00000d8 <_sbrk>:
d00000d8:	4904      	ldr	r1, [pc, #16]	; (d00000ec <_sbrk+0x14>)
d00000da:	4a05      	ldr	r2, [pc, #20]	; (d00000f0 <_sbrk+0x18>)
d00000dc:	680b      	ldr	r3, [r1, #0]
d00000de:	2b00      	cmp	r3, #0
d00000e0:	bf08      	it	eq
d00000e2:	4613      	moveq	r3, r2
d00000e4:	181a      	adds	r2, r3, r0
d00000e6:	4618      	mov	r0, r3
d00000e8:	600a      	str	r2, [r1, #0]
d00000ea:	4770      	bx	lr
d00000ec:	d0001bfc 	.word	0xd0001bfc
d00000f0:	d004da90 	.word	0xd004da90

d00000f4 <_isatty>:
d00000f4:	2001      	movs	r0, #1
d00000f6:	4770      	bx	lr

d00000f8 <_exit>:
d00000f8:	e7fe      	b.n	d00000f8 <_exit>
d00000fa:	bf00      	nop

d00000fc <_getpid>:
d00000fc:	2001      	movs	r0, #1
d00000fe:	4770      	bx	lr

d0000100 <_kill>:
d0000100:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000104:	4770      	bx	lr
d0000106:	bf00      	nop

d0000108 <initMystify>:
d0000108:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d000010c:	4c27      	ldr	r4, [pc, #156]	; (d00001ac <initMystify+0xa4>)
d000010e:	f8df 80ac 	ldr.w	r8, [pc, #172]	; d00001bc <initMystify+0xb4>
d0000112:	f104 0750 	add.w	r7, r4, #80	; 0x50
d0000116:	4e26      	ldr	r6, [pc, #152]	; (d00001b0 <initMystify+0xa8>)
d0000118:	4d26      	ldr	r5, [pc, #152]	; (d00001b4 <initMystify+0xac>)
d000011a:	f000 fc27 	bl	d000096c <rand>
d000011e:	fb88 3200 	smull	r3, r2, r8, r0
d0000122:	17c3      	asrs	r3, r0, #31
d0000124:	4402      	add	r2, r0
d0000126:	ebc3 2322 	rsb	r3, r3, r2, asr #8
d000012a:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d000012e:	eba0 1043 	sub.w	r0, r0, r3, lsl #5
d0000132:	6020      	str	r0, [r4, #0]
d0000134:	f000 fc1a 	bl	d000096c <rand>
d0000138:	fb86 3200 	smull	r3, r2, r6, r0
d000013c:	17c3      	asrs	r3, r0, #31
d000013e:	ebc3 13e2 	rsb	r3, r3, r2, asr #7
d0000142:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0000146:	eba0 1083 	sub.w	r0, r0, r3, lsl #6
d000014a:	6060      	str	r0, [r4, #4]
d000014c:	f000 fc0e 	bl	d000096c <rand>
d0000150:	fb85 2300 	smull	r2, r3, r5, r0
d0000154:	eba3 73e0 	sub.w	r3, r3, r0, asr #31
d0000158:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d000015c:	1ac0      	subs	r0, r0, r3
d000015e:	3001      	adds	r0, #1
d0000160:	60a0      	str	r0, [r4, #8]
d0000162:	f000 fc03 	bl	d000096c <rand>
d0000166:	fb85 2300 	smull	r2, r3, r5, r0
d000016a:	eba3 73e0 	sub.w	r3, r3, r0, asr #31
d000016e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0000172:	1ac0      	subs	r0, r0, r3
d0000174:	3001      	adds	r0, #1
d0000176:	60e0      	str	r0, [r4, #12]
d0000178:	f000 fbf8 	bl	d000096c <rand>
d000017c:	07c2      	lsls	r2, r0, #31
d000017e:	d502      	bpl.n	d0000186 <initMystify+0x7e>
d0000180:	68a3      	ldr	r3, [r4, #8]
d0000182:	425b      	negs	r3, r3
d0000184:	60a3      	str	r3, [r4, #8]
d0000186:	f000 fbf1 	bl	d000096c <rand>
d000018a:	07c3      	lsls	r3, r0, #31
d000018c:	d502      	bpl.n	d0000194 <initMystify+0x8c>
d000018e:	68e3      	ldr	r3, [r4, #12]
d0000190:	425b      	negs	r3, r3
d0000192:	60e3      	str	r3, [r4, #12]
d0000194:	3410      	adds	r4, #16
d0000196:	42bc      	cmp	r4, r7
d0000198:	d1bf      	bne.n	d000011a <initMystify+0x12>
d000019a:	f44f 6261 	mov.w	r2, #3600	; 0xe10
d000019e:	2100      	movs	r1, #0
d00001a0:	4805      	ldr	r0, [pc, #20]	; (d00001b8 <initMystify+0xb0>)
d00001a2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d00001a6:	f7ff bf35 	b.w	d0000014 <memset>
d00001aa:	bf00      	nop
d00001ac:	d004cc20 	.word	0xd004cc20
d00001b0:	66666667 	.word	0x66666667
d00001b4:	55555556 	.word	0x55555556
d00001b8:	d004cc70 	.word	0xd004cc70
d00001bc:	88888889 	.word	0x88888889

d00001c0 <stepMystify>:
d00001c0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00001c4:	f8df b378 	ldr.w	fp, [pc, #888]	; d0000540 <stepMystify+0x380>
d00001c8:	2464      	movs	r4, #100	; 0x64
d00001ca:	49ce      	ldr	r1, [pc, #824]	; (d0000504 <stepMystify+0x344>)
d00001cc:	2500      	movs	r5, #0
d00001ce:	f8db 3000 	ldr.w	r3, [fp]
d00001d2:	f8df 8370 	ldr.w	r8, [pc, #880]	; d0000544 <stepMystify+0x384>
d00001d6:	462e      	mov	r6, r5
d00001d8:	3301      	adds	r3, #1
d00001da:	4fcb      	ldr	r7, [pc, #812]	; (d0000508 <stepMystify+0x348>)
d00001dc:	fb81 2103 	smull	r2, r1, r1, r3
d00001e0:	17da      	asrs	r2, r3, #31
d00001e2:	ebc2 02e1 	rsb	r2, r2, r1, asr #3
d00001e6:	eb02 02c2 	add.w	r2, r2, r2, lsl #3
d00001ea:	eba3 0382 	sub.w	r3, r3, r2, lsl #2
d00001ee:	ed2d 8b0a 	vpush	{d8-d12}
d00001f2:	fb04 8403 	mla	r4, r4, r3, r8
d00001f6:	b089      	sub	sp, #36	; 0x24
d00001f8:	48c4      	ldr	r0, [pc, #784]	; (d000050c <stepMystify+0x34c>)
d00001fa:	3501      	adds	r5, #1
d00001fc:	68e3      	ldr	r3, [r4, #12]
d00001fe:	f8d7 90e0 	ldr.w	r9, [r7, #224]	; 0xe0
d0000202:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
d0000206:	9601      	str	r6, [sp, #4]
d0000208:	9000      	str	r0, [sp, #0]
d000020a:	f854 0b14 	ldr.w	r0, [r4], #20
d000020e:	47c8      	blx	r9
d0000210:	2d05      	cmp	r5, #5
d0000212:	d1f1      	bne.n	d00001f8 <stepMystify+0x38>
d0000214:	4ebe      	ldr	r6, [pc, #760]	; (d0000510 <stepMystify+0x350>)
d0000216:	2264      	movs	r2, #100	; 0x64
d0000218:	f8db 3000 	ldr.w	r3, [fp]
d000021c:	f64f 70ff 	movw	r0, #65535	; 0xffff
d0000220:	6831      	ldr	r1, [r6, #0]
d0000222:	fb02 f203 	mul.w	r2, r2, r3
d0000226:	6877      	ldr	r7, [r6, #4]
d0000228:	f8d6 a010 	ldr.w	sl, [r6, #16]
d000022c:	9103      	str	r1, [sp, #12]
d000022e:	f102 0628 	add.w	r6, r2, #40	; 0x28
d0000232:	2100      	movs	r1, #0
d0000234:	f102 0408 	add.w	r4, r2, #8
d0000238:	463d      	mov	r5, r7
d000023a:	9606      	str	r6, [sp, #24]
d000023c:	9104      	str	r1, [sp, #16]
d000023e:	eb08 0102 	add.w	r1, r8, r2
d0000242:	9e03      	ldr	r6, [sp, #12]
d0000244:	eb08 0904 	add.w	r9, r8, r4
d0000248:	f102 0e14 	add.w	lr, r2, #20
d000024c:	f102 0c1c 	add.w	ip, r2, #28
d0000250:	f848 6002 	str.w	r6, [r8, r2]
d0000254:	f102 0730 	add.w	r7, r2, #48	; 0x30
d0000258:	604d      	str	r5, [r1, #4]
d000025a:	f848 a004 	str.w	sl, [r8, r4]
d000025e:	4cac      	ldr	r4, [pc, #688]	; (d0000510 <stepMystify+0x350>)
d0000260:	9505      	str	r5, [sp, #20]
d0000262:	2500      	movs	r5, #0
d0000264:	6964      	ldr	r4, [r4, #20]
d0000266:	ed9f caab 	vldr	s24, [pc, #684]	; d0000514 <stepMystify+0x354>
d000026a:	4626      	mov	r6, r4
d000026c:	f102 043c 	add.w	r4, r2, #60	; 0x3c
d0000270:	eddf baa9 	vldr	s23, [pc, #676]	; d0000518 <stepMystify+0x358>
d0000274:	f8c9 6004 	str.w	r6, [r9, #4]
d0000278:	f102 0944 	add.w	r9, r2, #68	; 0x44
d000027c:	8208      	strh	r0, [r1, #16]
d000027e:	f848 a00e 	str.w	sl, [r8, lr]
d0000282:	44c6      	add	lr, r8
d0000284:	ed9f 8aa5 	vldr	s16, [pc, #660]	; d000051c <stepMystify+0x35c>
d0000288:	f8ce 6004 	str.w	r6, [lr, #4]
d000028c:	eb08 0e0c 	add.w	lr, r8, ip
d0000290:	4e9f      	ldr	r6, [pc, #636]	; (d0000510 <stepMystify+0x350>)
d0000292:	eddf caa3 	vldr	s25, [pc, #652]	; d0000520 <stepMystify+0x360>
d0000296:	f8d6 a020 	ldr.w	sl, [r6, #32]
d000029a:	f848 a00c 	str.w	sl, [r8, ip]
d000029e:	f102 0c50 	add.w	ip, r2, #80	; 0x50
d00002a2:	6a76      	ldr	r6, [r6, #36]	; 0x24
d00002a4:	3258      	adds	r2, #88	; 0x58
d00002a6:	f8ce 6004 	str.w	r6, [lr, #4]
d00002aa:	9207      	str	r2, [sp, #28]
d00002ac:	4632      	mov	r2, r6
d00002ae:	9e06      	ldr	r6, [sp, #24]
d00002b0:	8488      	strh	r0, [r1, #36]	; 0x24
d00002b2:	f848 a006 	str.w	sl, [r8, r6]
d00002b6:	4446      	add	r6, r8
d00002b8:	6072      	str	r2, [r6, #4]
d00002ba:	eb08 0607 	add.w	r6, r8, r7
d00002be:	4a94      	ldr	r2, [pc, #592]	; (d0000510 <stepMystify+0x350>)
d00002c0:	f8d2 e030 	ldr.w	lr, [r2, #48]	; 0x30
d00002c4:	f848 e007 	str.w	lr, [r8, r7]
d00002c8:	6b57      	ldr	r7, [r2, #52]	; 0x34
d00002ca:	6077      	str	r7, [r6, #4]
d00002cc:	eb08 060c 	add.w	r6, r8, ip
d00002d0:	8708      	strh	r0, [r1, #56]	; 0x38
d00002d2:	f848 e004 	str.w	lr, [r8, r4]
d00002d6:	4444      	add	r4, r8
d00002d8:	6067      	str	r7, [r4, #4]
d00002da:	eb08 0709 	add.w	r7, r8, r9
d00002de:	f8d2 a040 	ldr.w	sl, [r2, #64]	; 0x40
d00002e2:	f848 a009 	str.w	sl, [r8, r9]
d00002e6:	f8d2 e044 	ldr.w	lr, [r2, #68]	; 0x44
d00002ea:	9a07      	ldr	r2, [sp, #28]
d00002ec:	f8c7 e004 	str.w	lr, [r7, #4]
d00002f0:	f8a1 004c 	strh.w	r0, [r1, #76]	; 0x4c
d00002f4:	eb08 0402 	add.w	r4, r8, r2
d00002f8:	f848 a00c 	str.w	sl, [r8, ip]
d00002fc:	f8c6 e004 	str.w	lr, [r6, #4]
d0000300:	9e03      	ldr	r6, [sp, #12]
d0000302:	f8df a244 	ldr.w	sl, [pc, #580]	; d0000548 <stepMystify+0x388>
d0000306:	f848 6002 	str.w	r6, [r8, r2]
d000030a:	9e05      	ldr	r6, [sp, #20]
d000030c:	6066      	str	r6, [r4, #4]
d000030e:	f8a1 0060 	strh.w	r0, [r1, #96]	; 0x60
d0000312:	18ea      	adds	r2, r5, r3
d0000314:	1c69      	adds	r1, r5, #1
d0000316:	ee07 5a90 	vmov	s15, r5
d000031a:	487a      	ldr	r0, [pc, #488]	; (d0000504 <stepMystify+0x344>)
d000031c:	3201      	adds	r2, #1
d000031e:	9104      	str	r1, [sp, #16]
d0000320:	eef8 9ae7 	vcvt.f32.s32	s19, s15
d0000324:	ee07 1a90 	vmov	s15, r1
d0000328:	fb80 1002 	smull	r1, r0, r0, r2
d000032c:	17d1      	asrs	r1, r2, #31
d000032e:	eeb8 9ae7 	vcvt.f32.s32	s18, s15
d0000332:	2464      	movs	r4, #100	; 0x64
d0000334:	ebc1 01e0 	rsb	r1, r1, r0, asr #3
d0000338:	ee69 9aab 	vmul.f32	s19, s19, s23
d000033c:	2600      	movs	r6, #0
d000033e:	eddf 8a79 	vldr	s17, [pc, #484]	; d0000524 <stepMystify+0x364>
d0000342:	eb01 01c1 	add.w	r1, r1, r1, lsl #3
d0000346:	ee29 9a0c 	vmul.f32	s18, s18, s24
d000034a:	ea4f 0985 	mov.w	r9, r5, lsl #2
d000034e:	ed9f ba76 	vldr	s22, [pc, #472]	; d0000528 <stepMystify+0x368>
d0000352:	eba2 0181 	sub.w	r1, r2, r1, lsl #2
d0000356:	eddf aa75 	vldr	s21, [pc, #468]	; d000052c <stepMystify+0x36c>
d000035a:	ed9f aa75 	vldr	s20, [pc, #468]	; d0000530 <stepMystify+0x370>
d000035e:	fb04 8401 	mla	r4, r4, r1, r8
d0000362:	edda 7a00 	vldr	s15, [sl]
d0000366:	ee79 7aa7 	vadd.f32	s15, s19, s15
d000036a:	eef4 7ac8 	vcmpe.f32	s15, s16
d000036e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0000372:	db08      	blt.n	d0000386 <stepMystify+0x1c6>
d0000374:	eeb0 7a67 	vmov.f32	s14, s15
d0000378:	ee77 7ac8 	vsub.f32	s15, s15, s16
d000037c:	eeb4 7aec 	vcmpe.f32	s14, s25
d0000380:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0000384:	daf6      	bge.n	d0000374 <stepMystify+0x1b4>
d0000386:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d000038a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d000038e:	d508      	bpl.n	d00003a2 <stepMystify+0x1e2>
d0000390:	eeb0 7a67 	vmov.f32	s14, s15
d0000394:	ee77 7a88 	vadd.f32	s15, s15, s16
d0000398:	eeb4 7ae8 	vcmpe.f32	s14, s17
d000039c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00003a0:	d4f6      	bmi.n	d0000390 <stepMystify+0x1d0>
d00003a2:	b9fd      	cbnz	r5, d00003e4 <stepMystify+0x224>
d00003a4:	46ac      	mov	ip, r5
d00003a6:	2264      	movs	r2, #100	; 0x64
d00003a8:	eb09 0005 	add.w	r0, r9, r5
d00003ac:	4956      	ldr	r1, [pc, #344]	; (d0000508 <stepMystify+0x348>)
d00003ae:	3601      	adds	r6, #1
d00003b0:	fb02 f203 	mul.w	r2, r2, r3
d00003b4:	68e3      	ldr	r3, [r4, #12]
d00003b6:	f8d1 70e0 	ldr.w	r7, [r1, #224]	; 0xe0
d00003ba:	eb02 0080 	add.w	r0, r2, r0, lsl #2
d00003be:	4a53      	ldr	r2, [pc, #332]	; (d000050c <stepMystify+0x34c>)
d00003c0:	e9d4 1e01 	ldrd	r1, lr, [r4, #4]
d00003c4:	4440      	add	r0, r8
d00003c6:	9200      	str	r2, [sp, #0]
d00003c8:	f8cd c004 	str.w	ip, [sp, #4]
d00003cc:	4672      	mov	r2, lr
d00003ce:	f8a0 c010 	strh.w	ip, [r0, #16]
d00003d2:	f854 0b14 	ldr.w	r0, [r4], #20
d00003d6:	47b8      	blx	r7
d00003d8:	2e05      	cmp	r6, #5
d00003da:	f000 80b7 	beq.w	d000054c <stepMystify+0x38c>
d00003de:	f8db 3000 	ldr.w	r3, [fp]
d00003e2:	e7be      	b.n	d0000362 <stepMystify+0x1a2>
d00003e4:	eef4 7aea 	vcmpe.f32	s15, s21
d00003e8:	ee27 7a8b 	vmul.f32	s14, s15, s22
d00003ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00003f0:	db0c      	blt.n	d000040c <stepMystify+0x24c>
d00003f2:	eef0 5a00 	vmov.f32	s11, #0	; 0x40000000  2.0
d00003f6:	eeb1 6a00 	vmov.f32	s12, #16	; 0x40800000  4.0
d00003fa:	eef0 6a47 	vmov.f32	s13, s14
d00003fe:	ee37 7a65 	vsub.f32	s14, s14, s11
d0000402:	eef4 6ac6 	vcmpe.f32	s13, s12
d0000406:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d000040a:	daf6      	bge.n	d00003fa <stepMystify+0x23a>
d000040c:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0000410:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0000414:	d50c      	bpl.n	d0000430 <stepMystify+0x270>
d0000416:	eef0 5a00 	vmov.f32	s11, #0	; 0x40000000  2.0
d000041a:	eeb8 6a00 	vmov.f32	s12, #128	; 0xc0000000 -2.0
d000041e:	eef0 6a47 	vmov.f32	s13, s14
d0000422:	ee37 7a25 	vadd.f32	s14, s14, s11
d0000426:	eef4 6ac6 	vcmpe.f32	s13, s12
d000042a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d000042e:	d4f6      	bmi.n	d000041e <stepMystify+0x25e>
d0000430:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0000434:	eef4 7aca 	vcmpe.f32	s15, s20
d0000438:	ee37 7a66 	vsub.f32	s14, s14, s13
d000043c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0000440:	eeb0 7ac7 	vabs.f32	s14, s14
d0000444:	ee36 7ac7 	vsub.f32	s14, s13, s14
d0000448:	d544      	bpl.n	d00004d4 <stepMystify+0x314>
d000044a:	eddf 6a3a 	vldr	s13, [pc, #232]	; d0000534 <stepMystify+0x374>
d000044e:	2100      	movs	r1, #0
d0000450:	4a39      	ldr	r2, [pc, #228]	; (d0000538 <stepMystify+0x378>)
d0000452:	ee27 7a26 	vmul.f32	s14, s14, s13
d0000456:	eefc 7ac7 	vcvt.u32.f32	s15, s14
d000045a:	edcd 7a03 	vstr	s15, [sp, #12]
d000045e:	f89d 000c 	ldrb.w	r0, [sp, #12]
d0000462:	ea42 1240 	orr.w	r2, r2, r0, lsl #5
d0000466:	4311      	orrs	r1, r2
d0000468:	f3c2 22c4 	ubfx	r2, r2, #11, #5
d000046c:	ee07 2a90 	vmov	s15, r2
d0000470:	f001 021f 	and.w	r2, r1, #31
d0000474:	f3c1 1145 	ubfx	r1, r1, #5, #6
d0000478:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d000047c:	ee06 2a90 	vmov	s13, r2
d0000480:	ee07 1a10 	vmov	s14, r1
d0000484:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0000488:	ee67 7a89 	vmul.f32	s15, s15, s18
d000048c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0000490:	ee66 6a89 	vmul.f32	s13, s13, s18
d0000494:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0000498:	ee27 7a09 	vmul.f32	s14, s14, s18
d000049c:	ee17 2a90 	vmov	r2, s15
d00004a0:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d00004a4:	2a1f      	cmp	r2, #31
d00004a6:	ee17 1a90 	vmov	r1, s15
d00004aa:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d00004ae:	bfa8      	it	ge
d00004b0:	221f      	movge	r2, #31
d00004b2:	291f      	cmp	r1, #31
d00004b4:	ee17 ca90 	vmov	ip, s15
d00004b8:	bfa8      	it	ge
d00004ba:	211f      	movge	r1, #31
d00004bc:	f1bc 0f3f 	cmp.w	ip, #63	; 0x3f
d00004c0:	ea41 21c2 	orr.w	r1, r1, r2, lsl #11
d00004c4:	bfa8      	it	ge
d00004c6:	f04f 0c3f 	movge.w	ip, #63	; 0x3f
d00004ca:	ea41 1c4c 	orr.w	ip, r1, ip, lsl #5
d00004ce:	fa1f fc8c 	uxth.w	ip, ip
d00004d2:	e768      	b.n	d00003a6 <stepMystify+0x1e6>
d00004d4:	eddf 6a19 	vldr	s13, [pc, #100]	; d000053c <stepMystify+0x37c>
d00004d8:	eef4 7ae6 	vcmpe.f32	s15, s13
d00004dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00004e0:	f140 811d 	bpl.w	d000071e <stepMystify+0x55e>
d00004e4:	eef3 7a0f 	vmov.f32	s15, #63	; 0x41f80000  31.0
d00004e8:	2100      	movs	r1, #0
d00004ea:	ee27 7a27 	vmul.f32	s14, s14, s15
d00004ee:	eefc 7ac7 	vcvt.u32.f32	s15, s14
d00004f2:	edcd 7a03 	vstr	s15, [sp, #12]
d00004f6:	f89d 200c 	ldrb.w	r2, [sp, #12]
d00004fa:	02d2      	lsls	r2, r2, #11
d00004fc:	f442 62fc 	orr.w	r2, r2, #2016	; 0x7e0
d0000500:	b212      	sxth	r2, r2
d0000502:	e7b0      	b.n	d0000466 <stepMystify+0x2a6>
d0000504:	38e38e39 	.word	0x38e38e39
d0000508:	2001f000 	.word	0x2001f000
d000050c:	d0001c00 	.word	0xd0001c00
d0000510:	d004cc20 	.word	0xd004cc20
d0000514:	3ce38e39 	.word	0x3ce38e39
d0000518:	4105f418 	.word	0x4105f418
d000051c:	43b40000 	.word	0x43b40000
d0000520:	44340000 	.word	0x44340000
d0000524:	c3b40000 	.word	0xc3b40000
d0000528:	3c888889 	.word	0x3c888889
d000052c:	42efffff 	.word	0x42efffff
d0000530:	42700000 	.word	0x42700000
d0000534:	427c0000 	.word	0x427c0000
d0000538:	fffff800 	.word	0xfffff800
d000053c:	42f00000 	.word	0x42f00000
d0000540:	d004cc00 	.word	0xd004cc00
d0000544:	d004cc70 	.word	0xd004cc70
d0000548:	d004cc04 	.word	0xd004cc04
d000054c:	9d04      	ldr	r5, [sp, #16]
d000054e:	f8db 3000 	ldr.w	r3, [fp]
d0000552:	2d24      	cmp	r5, #36	; 0x24
d0000554:	f47f aedd 	bne.w	d0000312 <stepMystify+0x152>
d0000558:	3301      	adds	r3, #1
d000055a:	48ab      	ldr	r0, [pc, #684]	; (d0000808 <stepMystify+0x648>)
d000055c:	4cab      	ldr	r4, [pc, #684]	; (d000080c <stepMystify+0x64c>)
d000055e:	fb80 2003 	smull	r2, r0, r0, r3
d0000562:	17da      	asrs	r2, r3, #31
d0000564:	6821      	ldr	r1, [r4, #0]
d0000566:	4626      	mov	r6, r4
d0000568:	68a5      	ldr	r5, [r4, #8]
d000056a:	ebc2 02e0 	rsb	r2, r2, r0, asr #3
d000056e:	68e4      	ldr	r4, [r4, #12]
d0000570:	eb02 00c2 	add.w	r0, r2, r2, lsl #3
d0000574:	4429      	add	r1, r5
d0000576:	6872      	ldr	r2, [r6, #4]
d0000578:	eba3 0380 	sub.w	r3, r3, r0, lsl #2
d000057c:	1e48      	subs	r0, r1, #1
d000057e:	4422      	add	r2, r4
d0000580:	6031      	str	r1, [r6, #0]
d0000582:	f5b0 7fef 	cmp.w	r0, #478	; 0x1de
d0000586:	f8cb 3000 	str.w	r3, [fp]
d000058a:	6072      	str	r2, [r6, #4]
d000058c:	d301      	bcc.n	d0000592 <stepMystify+0x3d2>
d000058e:	426d      	negs	r5, r5
d0000590:	60b5      	str	r5, [r6, #8]
d0000592:	1e53      	subs	r3, r2, #1
d0000594:	f5b3 7f9f 	cmp.w	r3, #318	; 0x13e
d0000598:	d302      	bcc.n	d00005a0 <stepMystify+0x3e0>
d000059a:	4264      	negs	r4, r4
d000059c:	4b9b      	ldr	r3, [pc, #620]	; (d000080c <stepMystify+0x64c>)
d000059e:	60dc      	str	r4, [r3, #12]
d00005a0:	2900      	cmp	r1, #0
d00005a2:	f340 8102 	ble.w	d00007aa <stepMystify+0x5ea>
d00005a6:	f5b1 7ff0 	cmp.w	r1, #480	; 0x1e0
d00005aa:	db03      	blt.n	d00005b4 <stepMystify+0x3f4>
d00005ac:	f240 13df 	movw	r3, #479	; 0x1df
d00005b0:	4996      	ldr	r1, [pc, #600]	; (d000080c <stepMystify+0x64c>)
d00005b2:	600b      	str	r3, [r1, #0]
d00005b4:	2a00      	cmp	r2, #0
d00005b6:	f340 80fe 	ble.w	d00007b6 <stepMystify+0x5f6>
d00005ba:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d00005be:	db03      	blt.n	d00005c8 <stepMystify+0x408>
d00005c0:	f240 133f 	movw	r3, #319	; 0x13f
d00005c4:	4a91      	ldr	r2, [pc, #580]	; (d000080c <stepMystify+0x64c>)
d00005c6:	6053      	str	r3, [r2, #4]
d00005c8:	4d90      	ldr	r5, [pc, #576]	; (d000080c <stepMystify+0x64c>)
d00005ca:	692a      	ldr	r2, [r5, #16]
d00005cc:	69a8      	ldr	r0, [r5, #24]
d00005ce:	696b      	ldr	r3, [r5, #20]
d00005d0:	4402      	add	r2, r0
d00005d2:	69e9      	ldr	r1, [r5, #28]
d00005d4:	1e54      	subs	r4, r2, #1
d00005d6:	440b      	add	r3, r1
d00005d8:	f5b4 7fef 	cmp.w	r4, #478	; 0x1de
d00005dc:	e9c5 2304 	strd	r2, r3, [r5, #16]
d00005e0:	d301      	bcc.n	d00005e6 <stepMystify+0x426>
d00005e2:	4240      	negs	r0, r0
d00005e4:	61a8      	str	r0, [r5, #24]
d00005e6:	1e58      	subs	r0, r3, #1
d00005e8:	f5b0 7f9f 	cmp.w	r0, #318	; 0x13e
d00005ec:	d302      	bcc.n	d00005f4 <stepMystify+0x434>
d00005ee:	4249      	negs	r1, r1
d00005f0:	4886      	ldr	r0, [pc, #536]	; (d000080c <stepMystify+0x64c>)
d00005f2:	61c1      	str	r1, [r0, #28]
d00005f4:	2a00      	cmp	r2, #0
d00005f6:	f340 8102 	ble.w	d00007fe <stepMystify+0x63e>
d00005fa:	f5b2 7ff0 	cmp.w	r2, #480	; 0x1e0
d00005fe:	db03      	blt.n	d0000608 <stepMystify+0x448>
d0000600:	f240 12df 	movw	r2, #479	; 0x1df
d0000604:	4981      	ldr	r1, [pc, #516]	; (d000080c <stepMystify+0x64c>)
d0000606:	610a      	str	r2, [r1, #16]
d0000608:	2b00      	cmp	r3, #0
d000060a:	f340 80f4 	ble.w	d00007f6 <stepMystify+0x636>
d000060e:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0000612:	db03      	blt.n	d000061c <stepMystify+0x45c>
d0000614:	f240 133f 	movw	r3, #319	; 0x13f
d0000618:	4a7c      	ldr	r2, [pc, #496]	; (d000080c <stepMystify+0x64c>)
d000061a:	6153      	str	r3, [r2, #20]
d000061c:	4d7b      	ldr	r5, [pc, #492]	; (d000080c <stepMystify+0x64c>)
d000061e:	6a2a      	ldr	r2, [r5, #32]
d0000620:	6aa8      	ldr	r0, [r5, #40]	; 0x28
d0000622:	6a6b      	ldr	r3, [r5, #36]	; 0x24
d0000624:	4402      	add	r2, r0
d0000626:	6ae9      	ldr	r1, [r5, #44]	; 0x2c
d0000628:	1e54      	subs	r4, r2, #1
d000062a:	440b      	add	r3, r1
d000062c:	f5b4 7fef 	cmp.w	r4, #478	; 0x1de
d0000630:	e9c5 2308 	strd	r2, r3, [r5, #32]
d0000634:	d301      	bcc.n	d000063a <stepMystify+0x47a>
d0000636:	4240      	negs	r0, r0
d0000638:	62a8      	str	r0, [r5, #40]	; 0x28
d000063a:	1e58      	subs	r0, r3, #1
d000063c:	f5b0 7f9f 	cmp.w	r0, #318	; 0x13e
d0000640:	d302      	bcc.n	d0000648 <stepMystify+0x488>
d0000642:	4249      	negs	r1, r1
d0000644:	4871      	ldr	r0, [pc, #452]	; (d000080c <stepMystify+0x64c>)
d0000646:	62c1      	str	r1, [r0, #44]	; 0x2c
d0000648:	2a00      	cmp	r2, #0
d000064a:	f340 80d0 	ble.w	d00007ee <stepMystify+0x62e>
d000064e:	f5b2 7ff0 	cmp.w	r2, #480	; 0x1e0
d0000652:	db03      	blt.n	d000065c <stepMystify+0x49c>
d0000654:	f240 12df 	movw	r2, #479	; 0x1df
d0000658:	496c      	ldr	r1, [pc, #432]	; (d000080c <stepMystify+0x64c>)
d000065a:	620a      	str	r2, [r1, #32]
d000065c:	2b00      	cmp	r3, #0
d000065e:	f340 80c2 	ble.w	d00007e6 <stepMystify+0x626>
d0000662:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0000666:	db03      	blt.n	d0000670 <stepMystify+0x4b0>
d0000668:	f240 133f 	movw	r3, #319	; 0x13f
d000066c:	4a67      	ldr	r2, [pc, #412]	; (d000080c <stepMystify+0x64c>)
d000066e:	6253      	str	r3, [r2, #36]	; 0x24
d0000670:	4d66      	ldr	r5, [pc, #408]	; (d000080c <stepMystify+0x64c>)
d0000672:	6b2a      	ldr	r2, [r5, #48]	; 0x30
d0000674:	6ba8      	ldr	r0, [r5, #56]	; 0x38
d0000676:	6b6b      	ldr	r3, [r5, #52]	; 0x34
d0000678:	4402      	add	r2, r0
d000067a:	6be9      	ldr	r1, [r5, #60]	; 0x3c
d000067c:	1e54      	subs	r4, r2, #1
d000067e:	440b      	add	r3, r1
d0000680:	f5b4 7fef 	cmp.w	r4, #478	; 0x1de
d0000684:	e9c5 230c 	strd	r2, r3, [r5, #48]	; 0x30
d0000688:	d301      	bcc.n	d000068e <stepMystify+0x4ce>
d000068a:	4240      	negs	r0, r0
d000068c:	63a8      	str	r0, [r5, #56]	; 0x38
d000068e:	1e58      	subs	r0, r3, #1
d0000690:	f5b0 7f9f 	cmp.w	r0, #318	; 0x13e
d0000694:	d302      	bcc.n	d000069c <stepMystify+0x4dc>
d0000696:	4249      	negs	r1, r1
d0000698:	485c      	ldr	r0, [pc, #368]	; (d000080c <stepMystify+0x64c>)
d000069a:	63c1      	str	r1, [r0, #60]	; 0x3c
d000069c:	2a00      	cmp	r2, #0
d000069e:	f340 809e 	ble.w	d00007de <stepMystify+0x61e>
d00006a2:	f5b2 7ff0 	cmp.w	r2, #480	; 0x1e0
d00006a6:	db03      	blt.n	d00006b0 <stepMystify+0x4f0>
d00006a8:	f240 12df 	movw	r2, #479	; 0x1df
d00006ac:	4957      	ldr	r1, [pc, #348]	; (d000080c <stepMystify+0x64c>)
d00006ae:	630a      	str	r2, [r1, #48]	; 0x30
d00006b0:	2b00      	cmp	r3, #0
d00006b2:	f340 8090 	ble.w	d00007d6 <stepMystify+0x616>
d00006b6:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d00006ba:	db03      	blt.n	d00006c4 <stepMystify+0x504>
d00006bc:	f240 133f 	movw	r3, #319	; 0x13f
d00006c0:	4a52      	ldr	r2, [pc, #328]	; (d000080c <stepMystify+0x64c>)
d00006c2:	6353      	str	r3, [r2, #52]	; 0x34
d00006c4:	4d51      	ldr	r5, [pc, #324]	; (d000080c <stepMystify+0x64c>)
d00006c6:	6c2a      	ldr	r2, [r5, #64]	; 0x40
d00006c8:	6ca8      	ldr	r0, [r5, #72]	; 0x48
d00006ca:	6c6b      	ldr	r3, [r5, #68]	; 0x44
d00006cc:	4402      	add	r2, r0
d00006ce:	6ce9      	ldr	r1, [r5, #76]	; 0x4c
d00006d0:	1e54      	subs	r4, r2, #1
d00006d2:	440b      	add	r3, r1
d00006d4:	f5b4 7fef 	cmp.w	r4, #478	; 0x1de
d00006d8:	e9c5 2310 	strd	r2, r3, [r5, #64]	; 0x40
d00006dc:	d301      	bcc.n	d00006e2 <stepMystify+0x522>
d00006de:	4240      	negs	r0, r0
d00006e0:	64a8      	str	r0, [r5, #72]	; 0x48
d00006e2:	1e58      	subs	r0, r3, #1
d00006e4:	f5b0 7f9f 	cmp.w	r0, #318	; 0x13e
d00006e8:	d302      	bcc.n	d00006f0 <stepMystify+0x530>
d00006ea:	4249      	negs	r1, r1
d00006ec:	4847      	ldr	r0, [pc, #284]	; (d000080c <stepMystify+0x64c>)
d00006ee:	64c1      	str	r1, [r0, #76]	; 0x4c
d00006f0:	2a00      	cmp	r2, #0
d00006f2:	dd6c      	ble.n	d00007ce <stepMystify+0x60e>
d00006f4:	f5b2 7ff0 	cmp.w	r2, #480	; 0x1e0
d00006f8:	db03      	blt.n	d0000702 <stepMystify+0x542>
d00006fa:	f240 12df 	movw	r2, #479	; 0x1df
d00006fe:	4943      	ldr	r1, [pc, #268]	; (d000080c <stepMystify+0x64c>)
d0000700:	640a      	str	r2, [r1, #64]	; 0x40
d0000702:	2b00      	cmp	r3, #0
d0000704:	dd5b      	ble.n	d00007be <stepMystify+0x5fe>
d0000706:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d000070a:	db03      	blt.n	d0000714 <stepMystify+0x554>
d000070c:	f240 133f 	movw	r3, #319	; 0x13f
d0000710:	4a3e      	ldr	r2, [pc, #248]	; (d000080c <stepMystify+0x64c>)
d0000712:	6453      	str	r3, [r2, #68]	; 0x44
d0000714:	b009      	add	sp, #36	; 0x24
d0000716:	ecbd 8b0a 	vpop	{d8-d12}
d000071a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d000071e:	eddf 6a3c 	vldr	s13, [pc, #240]	; d0000810 <stepMystify+0x650>
d0000722:	eef4 7ae6 	vcmpe.f32	s15, s13
d0000726:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d000072a:	d50c      	bpl.n	d0000746 <stepMystify+0x586>
d000072c:	eef3 7a0f 	vmov.f32	s15, #63	; 0x41f80000  31.0
d0000730:	f44f 62fc 	mov.w	r2, #2016	; 0x7e0
d0000734:	ee27 7a27 	vmul.f32	s14, s14, s15
d0000738:	eefc 7ac7 	vcvt.u32.f32	s15, s14
d000073c:	edcd 7a03 	vstr	s15, [sp, #12]
d0000740:	f89d 100c 	ldrb.w	r1, [sp, #12]
d0000744:	e68f      	b.n	d0000466 <stepMystify+0x2a6>
d0000746:	eddf 6a33 	vldr	s13, [pc, #204]	; d0000814 <stepMystify+0x654>
d000074a:	eef4 7ae6 	vcmpe.f32	s15, s13
d000074e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0000752:	d50c      	bpl.n	d000076e <stepMystify+0x5ae>
d0000754:	eddf 7a30 	vldr	s15, [pc, #192]	; d0000818 <stepMystify+0x658>
d0000758:	211f      	movs	r1, #31
d000075a:	ee27 7a27 	vmul.f32	s14, s14, s15
d000075e:	eefc 7ac7 	vcvt.u32.f32	s15, s14
d0000762:	edcd 7a03 	vstr	s15, [sp, #12]
d0000766:	f89d 200c 	ldrb.w	r2, [sp, #12]
d000076a:	0152      	lsls	r2, r2, #5
d000076c:	e67b      	b.n	d0000466 <stepMystify+0x2a6>
d000076e:	eddf 6a2b 	vldr	s13, [pc, #172]	; d000081c <stepMystify+0x65c>
d0000772:	eef4 7ae6 	vcmpe.f32	s15, s13
d0000776:	eef3 7a0f 	vmov.f32	s15, #63	; 0x41f80000  31.0
d000077a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d000077e:	d50a      	bpl.n	d0000796 <stepMystify+0x5d6>
d0000780:	ee27 7a27 	vmul.f32	s14, s14, s15
d0000784:	211f      	movs	r1, #31
d0000786:	eefc 7ac7 	vcvt.u32.f32	s15, s14
d000078a:	ee17 2a90 	vmov	r2, s15
d000078e:	f342 0204 	sbfx	r2, r2, #0, #5
d0000792:	02d2      	lsls	r2, r2, #11
d0000794:	e667      	b.n	d0000466 <stepMystify+0x2a6>
d0000796:	ee27 7a27 	vmul.f32	s14, s14, s15
d000079a:	4a21      	ldr	r2, [pc, #132]	; (d0000820 <stepMystify+0x660>)
d000079c:	eefc 7ac7 	vcvt.u32.f32	s15, s14
d00007a0:	edcd 7a03 	vstr	s15, [sp, #12]
d00007a4:	f89d 100c 	ldrb.w	r1, [sp, #12]
d00007a8:	e65d      	b.n	d0000466 <stepMystify+0x2a6>
d00007aa:	2301      	movs	r3, #1
d00007ac:	4917      	ldr	r1, [pc, #92]	; (d000080c <stepMystify+0x64c>)
d00007ae:	2a00      	cmp	r2, #0
d00007b0:	600b      	str	r3, [r1, #0]
d00007b2:	f73f af02 	bgt.w	d00005ba <stepMystify+0x3fa>
d00007b6:	2301      	movs	r3, #1
d00007b8:	4a14      	ldr	r2, [pc, #80]	; (d000080c <stepMystify+0x64c>)
d00007ba:	6053      	str	r3, [r2, #4]
d00007bc:	e704      	b.n	d00005c8 <stepMystify+0x408>
d00007be:	2301      	movs	r3, #1
d00007c0:	4a12      	ldr	r2, [pc, #72]	; (d000080c <stepMystify+0x64c>)
d00007c2:	6453      	str	r3, [r2, #68]	; 0x44
d00007c4:	b009      	add	sp, #36	; 0x24
d00007c6:	ecbd 8b0a 	vpop	{d8-d12}
d00007ca:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00007ce:	2201      	movs	r2, #1
d00007d0:	490e      	ldr	r1, [pc, #56]	; (d000080c <stepMystify+0x64c>)
d00007d2:	640a      	str	r2, [r1, #64]	; 0x40
d00007d4:	e795      	b.n	d0000702 <stepMystify+0x542>
d00007d6:	2301      	movs	r3, #1
d00007d8:	4a0c      	ldr	r2, [pc, #48]	; (d000080c <stepMystify+0x64c>)
d00007da:	6353      	str	r3, [r2, #52]	; 0x34
d00007dc:	e772      	b.n	d00006c4 <stepMystify+0x504>
d00007de:	2201      	movs	r2, #1
d00007e0:	490a      	ldr	r1, [pc, #40]	; (d000080c <stepMystify+0x64c>)
d00007e2:	630a      	str	r2, [r1, #48]	; 0x30
d00007e4:	e764      	b.n	d00006b0 <stepMystify+0x4f0>
d00007e6:	2301      	movs	r3, #1
d00007e8:	4a08      	ldr	r2, [pc, #32]	; (d000080c <stepMystify+0x64c>)
d00007ea:	6253      	str	r3, [r2, #36]	; 0x24
d00007ec:	e740      	b.n	d0000670 <stepMystify+0x4b0>
d00007ee:	2201      	movs	r2, #1
d00007f0:	4906      	ldr	r1, [pc, #24]	; (d000080c <stepMystify+0x64c>)
d00007f2:	620a      	str	r2, [r1, #32]
d00007f4:	e732      	b.n	d000065c <stepMystify+0x49c>
d00007f6:	2301      	movs	r3, #1
d00007f8:	4a04      	ldr	r2, [pc, #16]	; (d000080c <stepMystify+0x64c>)
d00007fa:	6153      	str	r3, [r2, #20]
d00007fc:	e70e      	b.n	d000061c <stepMystify+0x45c>
d00007fe:	2201      	movs	r2, #1
d0000800:	4902      	ldr	r1, [pc, #8]	; (d000080c <stepMystify+0x64c>)
d0000802:	610a      	str	r2, [r1, #16]
d0000804:	e700      	b.n	d0000608 <stepMystify+0x448>
d0000806:	bf00      	nop
d0000808:	38e38e39 	.word	0x38e38e39
d000080c:	d004cc20 	.word	0xd004cc20
d0000810:	43340000 	.word	0x43340000
d0000814:	43700000 	.word	0x43700000
d0000818:	427c0000 	.word	0x427c0000
d000081c:	43960000 	.word	0x43960000
d0000820:	fffff800 	.word	0xfffff800

d0000824 <main>:
d0000824:	4a47      	ldr	r2, [pc, #284]	; (d0000944 <main+0x120>)
d0000826:	20ff      	movs	r0, #255	; 0xff
d0000828:	6813      	ldr	r3, [r2, #0]
d000082a:	f023 0310 	bic.w	r3, r3, #16
d000082e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0000832:	4f45      	ldr	r7, [pc, #276]	; (d0000948 <main+0x124>)
d0000834:	f04f 0800 	mov.w	r8, #0
d0000838:	ed2d 8b02 	vpush	{d8}
d000083c:	6013      	str	r3, [r2, #0]
d000083e:	b082      	sub	sp, #8
d0000840:	f8d7 30c8 	ldr.w	r3, [r7, #200]	; 0xc8
d0000844:	463c      	mov	r4, r7
d0000846:	4798      	blx	r3
d0000848:	4b40      	ldr	r3, [pc, #256]	; (d000094c <main+0x128>)
d000084a:	4841      	ldr	r0, [pc, #260]	; (d0000950 <main+0x12c>)
d000084c:	4645      	mov	r5, r8
d000084e:	f8c3 8000 	str.w	r8, [r3]
d0000852:	68bb      	ldr	r3, [r7, #8]
d0000854:	4798      	blx	r3
d0000856:	68fb      	ldr	r3, [r7, #12]
d0000858:	200a      	movs	r0, #10
d000085a:	ed9f 8a3e 	vldr	s16, [pc, #248]	; d0000954 <main+0x130>
d000085e:	4798      	blx	r3
d0000860:	f7ff fbe0 	bl	d0000024 <initDisplayBuffers>
d0000864:	4640      	mov	r0, r8
d0000866:	f7ff fc13 	bl	d0000090 <StopChannel>
d000086a:	2001      	movs	r0, #1
d000086c:	f7ff fc10 	bl	d0000090 <StopChannel>
d0000870:	2002      	movs	r0, #2
d0000872:	f7ff fc0d 	bl	d0000090 <StopChannel>
d0000876:	2003      	movs	r0, #3
d0000878:	f7ff fc0a 	bl	d0000090 <StopChannel>
d000087c:	2004      	movs	r0, #4
d000087e:	f7ff fc07 	bl	d0000090 <StopChannel>
d0000882:	2005      	movs	r0, #5
d0000884:	f7ff fc04 	bl	d0000090 <StopChannel>
d0000888:	2006      	movs	r0, #6
d000088a:	f7ff fc01 	bl	d0000090 <StopChannel>
d000088e:	2007      	movs	r0, #7
d0000890:	f7ff fbfe 	bl	d0000090 <StopChannel>
d0000894:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0000898:	f44f 73a0 	mov.w	r3, #320	; 0x140
d000089c:	f8d7 60e8 	ldr.w	r6, [r7, #232]	; 0xe8
d00008a0:	4610      	mov	r0, r2
d00008a2:	f8cd 8000 	str.w	r8, [sp]
d00008a6:	4619      	mov	r1, r3
d00008a8:	47b0      	blx	r6
d00008aa:	f8d7 30dc 	ldr.w	r3, [r7, #220]	; 0xdc
d00008ae:	482a      	ldr	r0, [pc, #168]	; (d0000958 <main+0x134>)
d00008b0:	4798      	blx	r3
d00008b2:	4e2a      	ldr	r6, [pc, #168]	; (d000095c <main+0x138>)
d00008b4:	f7ff fc28 	bl	d0000108 <initMystify>
d00008b8:	4641      	mov	r1, r8
d00008ba:	f44f 2296 	mov.w	r2, #307200	; 0x4b000
d00008be:	4826      	ldr	r0, [pc, #152]	; (d0000958 <main+0x134>)
d00008c0:	f7ff fba8 	bl	d0000014 <memset>
d00008c4:	e02d      	b.n	d0000922 <main+0xfe>
d00008c6:	2d04      	cmp	r5, #4
d00008c8:	dc35      	bgt.n	d0000936 <main+0x112>
d00008ca:	f7ff fbcf 	bl	d000006c <randomi>
d00008ce:	20a0      	movs	r0, #160	; 0xa0
d00008d0:	f7ff fbcc 	bl	d000006c <randomi>
d00008d4:	20f0      	movs	r0, #240	; 0xf0
d00008d6:	f7ff fbc9 	bl	d000006c <randomi>
d00008da:	20a0      	movs	r0, #160	; 0xa0
d00008dc:	f7ff fbc6 	bl	d000006c <randomi>
d00008e0:	f64f 70ff 	movw	r0, #65535	; 0xffff
d00008e4:	f7ff fbc2 	bl	d000006c <randomi>
d00008e8:	edd6 7a00 	vldr	s15, [r6]
d00008ec:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d00008f0:	eef4 7ac8 	vcmpe.f32	s15, s16
d00008f4:	ee77 6ac8 	vsub.f32	s13, s15, s16
d00008f8:	ee77 7a87 	vadd.f32	s15, s15, s14
d00008fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0000900:	bfb4      	ite	lt
d0000902:	edc6 7a00 	vstrlt	s15, [r6]
d0000906:	edc6 6a00 	vstrge	s13, [r6]
d000090a:	f7ff fc59 	bl	d00001c0 <stepMystify>
d000090e:	f8d4 30cc 	ldr.w	r3, [r4, #204]	; 0xcc
d0000912:	4798      	blx	r3
d0000914:	f8d4 30dc 	ldr.w	r3, [r4, #220]	; 0xdc
d0000918:	480f      	ldr	r0, [pc, #60]	; (d0000958 <main+0x134>)
d000091a:	4798      	blx	r3
d000091c:	f8d4 315c 	ldr.w	r3, [r4, #348]	; 0x15c
d0000920:	4798      	blx	r3
d0000922:	69e3      	ldr	r3, [r4, #28]
d0000924:	3501      	adds	r5, #1
d0000926:	4798      	blx	r3
d0000928:	4603      	mov	r3, r0
d000092a:	20f0      	movs	r0, #240	; 0xf0
d000092c:	f013 0302 	ands.w	r3, r3, #2
d0000930:	d1c9      	bne.n	d00008c6 <main+0xa2>
d0000932:	461d      	mov	r5, r3
d0000934:	e7c9      	b.n	d00008ca <main+0xa6>
d0000936:	2007      	movs	r0, #7
d0000938:	b002      	add	sp, #8
d000093a:	ecbd 8b02 	vpop	{d8}
d000093e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0000942:	bf00      	nop
d0000944:	e000ed14 	.word	0xe000ed14
d0000948:	2001f000 	.word	0x2001f000
d000094c:	d0001bf8 	.word	0xd0001bf8
d0000950:	d0001a1c 	.word	0xd0001a1c
d0000954:	43b38000 	.word	0x43b38000
d0000958:	d0001c00 	.word	0xd0001c00
d000095c:	d004cc04 	.word	0xd004cc04

d0000960 <__errno>:
d0000960:	4b01      	ldr	r3, [pc, #4]	; (d0000968 <__errno+0x8>)
d0000962:	6818      	ldr	r0, [r3, #0]
d0000964:	4770      	bx	lr
d0000966:	bf00      	nop
d0000968:	d0001b94 	.word	0xd0001b94

d000096c <rand>:
d000096c:	4b17      	ldr	r3, [pc, #92]	; (d00009cc <rand+0x60>)
d000096e:	b510      	push	{r4, lr}
d0000970:	681c      	ldr	r4, [r3, #0]
d0000972:	6ba3      	ldr	r3, [r4, #56]	; 0x38
d0000974:	b9b3      	cbnz	r3, d00009a4 <rand+0x38>
d0000976:	2018      	movs	r0, #24
d0000978:	f000 f868 	bl	d0000a4c <malloc>
d000097c:	63a0      	str	r0, [r4, #56]	; 0x38
d000097e:	b928      	cbnz	r0, d000098c <rand+0x20>
d0000980:	4602      	mov	r2, r0
d0000982:	4b13      	ldr	r3, [pc, #76]	; (d00009d0 <rand+0x64>)
d0000984:	4813      	ldr	r0, [pc, #76]	; (d00009d4 <rand+0x68>)
d0000986:	214e      	movs	r1, #78	; 0x4e
d0000988:	f000 f830 	bl	d00009ec <__assert_func>
d000098c:	4a12      	ldr	r2, [pc, #72]	; (d00009d8 <rand+0x6c>)
d000098e:	4b13      	ldr	r3, [pc, #76]	; (d00009dc <rand+0x70>)
d0000990:	e9c0 2300 	strd	r2, r3, [r0]
d0000994:	4b12      	ldr	r3, [pc, #72]	; (d00009e0 <rand+0x74>)
d0000996:	6083      	str	r3, [r0, #8]
d0000998:	230b      	movs	r3, #11
d000099a:	8183      	strh	r3, [r0, #12]
d000099c:	2201      	movs	r2, #1
d000099e:	2300      	movs	r3, #0
d00009a0:	e9c0 2304 	strd	r2, r3, [r0, #16]
d00009a4:	6ba1      	ldr	r1, [r4, #56]	; 0x38
d00009a6:	480f      	ldr	r0, [pc, #60]	; (d00009e4 <rand+0x78>)
d00009a8:	690a      	ldr	r2, [r1, #16]
d00009aa:	694b      	ldr	r3, [r1, #20]
d00009ac:	4c0e      	ldr	r4, [pc, #56]	; (d00009e8 <rand+0x7c>)
d00009ae:	4350      	muls	r0, r2
d00009b0:	fb04 0003 	mla	r0, r4, r3, r0
d00009b4:	fba2 3404 	umull	r3, r4, r2, r4
d00009b8:	1c5a      	adds	r2, r3, #1
d00009ba:	4404      	add	r4, r0
d00009bc:	f144 0000 	adc.w	r0, r4, #0
d00009c0:	e9c1 2004 	strd	r2, r0, [r1, #16]
d00009c4:	f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
d00009c8:	bd10      	pop	{r4, pc}
d00009ca:	bf00      	nop
d00009cc:	d0001b94 	.word	0xd0001b94
d00009d0:	d0001a45 	.word	0xd0001a45
d00009d4:	d0001a5c 	.word	0xd0001a5c
d00009d8:	abcd330e 	.word	0xabcd330e
d00009dc:	e66d1234 	.word	0xe66d1234
d00009e0:	0005deec 	.word	0x0005deec
d00009e4:	5851f42d 	.word	0x5851f42d
d00009e8:	4c957f2d 	.word	0x4c957f2d

d00009ec <__assert_func>:
d00009ec:	b51f      	push	{r0, r1, r2, r3, r4, lr}
d00009ee:	4614      	mov	r4, r2
d00009f0:	461a      	mov	r2, r3
d00009f2:	4b09      	ldr	r3, [pc, #36]	; (d0000a18 <__assert_func+0x2c>)
d00009f4:	681b      	ldr	r3, [r3, #0]
d00009f6:	4605      	mov	r5, r0
d00009f8:	68d8      	ldr	r0, [r3, #12]
d00009fa:	b14c      	cbz	r4, d0000a10 <__assert_func+0x24>
d00009fc:	4b07      	ldr	r3, [pc, #28]	; (d0000a1c <__assert_func+0x30>)
d00009fe:	9100      	str	r1, [sp, #0]
d0000a00:	e9cd 3401 	strd	r3, r4, [sp, #4]
d0000a04:	4906      	ldr	r1, [pc, #24]	; (d0000a20 <__assert_func+0x34>)
d0000a06:	462b      	mov	r3, r5
d0000a08:	f000 f80e 	bl	d0000a28 <fiprintf>
d0000a0c:	f000 fc8e 	bl	d000132c <abort>
d0000a10:	4b04      	ldr	r3, [pc, #16]	; (d0000a24 <__assert_func+0x38>)
d0000a12:	461c      	mov	r4, r3
d0000a14:	e7f3      	b.n	d00009fe <__assert_func+0x12>
d0000a16:	bf00      	nop
d0000a18:	d0001b94 	.word	0xd0001b94
d0000a1c:	d0001abb 	.word	0xd0001abb
d0000a20:	d0001ac8 	.word	0xd0001ac8
d0000a24:	d0001af6 	.word	0xd0001af6

d0000a28 <fiprintf>:
d0000a28:	b40e      	push	{r1, r2, r3}
d0000a2a:	b503      	push	{r0, r1, lr}
d0000a2c:	4601      	mov	r1, r0
d0000a2e:	ab03      	add	r3, sp, #12
d0000a30:	4805      	ldr	r0, [pc, #20]	; (d0000a48 <fiprintf+0x20>)
d0000a32:	f853 2b04 	ldr.w	r2, [r3], #4
d0000a36:	6800      	ldr	r0, [r0, #0]
d0000a38:	9301      	str	r3, [sp, #4]
d0000a3a:	f000 f8e3 	bl	d0000c04 <_vfiprintf_r>
d0000a3e:	b002      	add	sp, #8
d0000a40:	f85d eb04 	ldr.w	lr, [sp], #4
d0000a44:	b003      	add	sp, #12
d0000a46:	4770      	bx	lr
d0000a48:	d0001b94 	.word	0xd0001b94

d0000a4c <malloc>:
d0000a4c:	4b02      	ldr	r3, [pc, #8]	; (d0000a58 <malloc+0xc>)
d0000a4e:	4601      	mov	r1, r0
d0000a50:	6818      	ldr	r0, [r3, #0]
d0000a52:	f000 b853 	b.w	d0000afc <_malloc_r>
d0000a56:	bf00      	nop
d0000a58:	d0001b94 	.word	0xd0001b94

d0000a5c <_free_r>:
d0000a5c:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0000a5e:	2900      	cmp	r1, #0
d0000a60:	d048      	beq.n	d0000af4 <_free_r+0x98>
d0000a62:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0000a66:	9001      	str	r0, [sp, #4]
d0000a68:	2b00      	cmp	r3, #0
d0000a6a:	f1a1 0404 	sub.w	r4, r1, #4
d0000a6e:	bfb8      	it	lt
d0000a70:	18e4      	addlt	r4, r4, r3
d0000a72:	f000 fed5 	bl	d0001820 <__malloc_lock>
d0000a76:	4a20      	ldr	r2, [pc, #128]	; (d0000af8 <_free_r+0x9c>)
d0000a78:	9801      	ldr	r0, [sp, #4]
d0000a7a:	6813      	ldr	r3, [r2, #0]
d0000a7c:	4615      	mov	r5, r2
d0000a7e:	b933      	cbnz	r3, d0000a8e <_free_r+0x32>
d0000a80:	6063      	str	r3, [r4, #4]
d0000a82:	6014      	str	r4, [r2, #0]
d0000a84:	b003      	add	sp, #12
d0000a86:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0000a8a:	f000 becf 	b.w	d000182c <__malloc_unlock>
d0000a8e:	42a3      	cmp	r3, r4
d0000a90:	d90b      	bls.n	d0000aaa <_free_r+0x4e>
d0000a92:	6821      	ldr	r1, [r4, #0]
d0000a94:	1862      	adds	r2, r4, r1
d0000a96:	4293      	cmp	r3, r2
d0000a98:	bf04      	itt	eq
d0000a9a:	681a      	ldreq	r2, [r3, #0]
d0000a9c:	685b      	ldreq	r3, [r3, #4]
d0000a9e:	6063      	str	r3, [r4, #4]
d0000aa0:	bf04      	itt	eq
d0000aa2:	1852      	addeq	r2, r2, r1
d0000aa4:	6022      	streq	r2, [r4, #0]
d0000aa6:	602c      	str	r4, [r5, #0]
d0000aa8:	e7ec      	b.n	d0000a84 <_free_r+0x28>
d0000aaa:	461a      	mov	r2, r3
d0000aac:	685b      	ldr	r3, [r3, #4]
d0000aae:	b10b      	cbz	r3, d0000ab4 <_free_r+0x58>
d0000ab0:	42a3      	cmp	r3, r4
d0000ab2:	d9fa      	bls.n	d0000aaa <_free_r+0x4e>
d0000ab4:	6811      	ldr	r1, [r2, #0]
d0000ab6:	1855      	adds	r5, r2, r1
d0000ab8:	42a5      	cmp	r5, r4
d0000aba:	d10b      	bne.n	d0000ad4 <_free_r+0x78>
d0000abc:	6824      	ldr	r4, [r4, #0]
d0000abe:	4421      	add	r1, r4
d0000ac0:	1854      	adds	r4, r2, r1
d0000ac2:	42a3      	cmp	r3, r4
d0000ac4:	6011      	str	r1, [r2, #0]
d0000ac6:	d1dd      	bne.n	d0000a84 <_free_r+0x28>
d0000ac8:	681c      	ldr	r4, [r3, #0]
d0000aca:	685b      	ldr	r3, [r3, #4]
d0000acc:	6053      	str	r3, [r2, #4]
d0000ace:	4421      	add	r1, r4
d0000ad0:	6011      	str	r1, [r2, #0]
d0000ad2:	e7d7      	b.n	d0000a84 <_free_r+0x28>
d0000ad4:	d902      	bls.n	d0000adc <_free_r+0x80>
d0000ad6:	230c      	movs	r3, #12
d0000ad8:	6003      	str	r3, [r0, #0]
d0000ada:	e7d3      	b.n	d0000a84 <_free_r+0x28>
d0000adc:	6825      	ldr	r5, [r4, #0]
d0000ade:	1961      	adds	r1, r4, r5
d0000ae0:	428b      	cmp	r3, r1
d0000ae2:	bf04      	itt	eq
d0000ae4:	6819      	ldreq	r1, [r3, #0]
d0000ae6:	685b      	ldreq	r3, [r3, #4]
d0000ae8:	6063      	str	r3, [r4, #4]
d0000aea:	bf04      	itt	eq
d0000aec:	1949      	addeq	r1, r1, r5
d0000aee:	6021      	streq	r1, [r4, #0]
d0000af0:	6054      	str	r4, [r2, #4]
d0000af2:	e7c7      	b.n	d0000a84 <_free_r+0x28>
d0000af4:	b003      	add	sp, #12
d0000af6:	bd30      	pop	{r4, r5, pc}
d0000af8:	d004cc08 	.word	0xd004cc08

d0000afc <_malloc_r>:
d0000afc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000afe:	1ccd      	adds	r5, r1, #3
d0000b00:	f025 0503 	bic.w	r5, r5, #3
d0000b04:	3508      	adds	r5, #8
d0000b06:	2d0c      	cmp	r5, #12
d0000b08:	bf38      	it	cc
d0000b0a:	250c      	movcc	r5, #12
d0000b0c:	2d00      	cmp	r5, #0
d0000b0e:	4606      	mov	r6, r0
d0000b10:	db01      	blt.n	d0000b16 <_malloc_r+0x1a>
d0000b12:	42a9      	cmp	r1, r5
d0000b14:	d903      	bls.n	d0000b1e <_malloc_r+0x22>
d0000b16:	230c      	movs	r3, #12
d0000b18:	6033      	str	r3, [r6, #0]
d0000b1a:	2000      	movs	r0, #0
d0000b1c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0000b1e:	f000 fe7f 	bl	d0001820 <__malloc_lock>
d0000b22:	4921      	ldr	r1, [pc, #132]	; (d0000ba8 <_malloc_r+0xac>)
d0000b24:	680a      	ldr	r2, [r1, #0]
d0000b26:	4614      	mov	r4, r2
d0000b28:	b99c      	cbnz	r4, d0000b52 <_malloc_r+0x56>
d0000b2a:	4f20      	ldr	r7, [pc, #128]	; (d0000bac <_malloc_r+0xb0>)
d0000b2c:	683b      	ldr	r3, [r7, #0]
d0000b2e:	b923      	cbnz	r3, d0000b3a <_malloc_r+0x3e>
d0000b30:	4621      	mov	r1, r4
d0000b32:	4630      	mov	r0, r6
d0000b34:	f000 fb2a 	bl	d000118c <_sbrk_r>
d0000b38:	6038      	str	r0, [r7, #0]
d0000b3a:	4629      	mov	r1, r5
d0000b3c:	4630      	mov	r0, r6
d0000b3e:	f000 fb25 	bl	d000118c <_sbrk_r>
d0000b42:	1c43      	adds	r3, r0, #1
d0000b44:	d123      	bne.n	d0000b8e <_malloc_r+0x92>
d0000b46:	230c      	movs	r3, #12
d0000b48:	6033      	str	r3, [r6, #0]
d0000b4a:	4630      	mov	r0, r6
d0000b4c:	f000 fe6e 	bl	d000182c <__malloc_unlock>
d0000b50:	e7e3      	b.n	d0000b1a <_malloc_r+0x1e>
d0000b52:	6823      	ldr	r3, [r4, #0]
d0000b54:	1b5b      	subs	r3, r3, r5
d0000b56:	d417      	bmi.n	d0000b88 <_malloc_r+0x8c>
d0000b58:	2b0b      	cmp	r3, #11
d0000b5a:	d903      	bls.n	d0000b64 <_malloc_r+0x68>
d0000b5c:	6023      	str	r3, [r4, #0]
d0000b5e:	441c      	add	r4, r3
d0000b60:	6025      	str	r5, [r4, #0]
d0000b62:	e004      	b.n	d0000b6e <_malloc_r+0x72>
d0000b64:	6863      	ldr	r3, [r4, #4]
d0000b66:	42a2      	cmp	r2, r4
d0000b68:	bf0c      	ite	eq
d0000b6a:	600b      	streq	r3, [r1, #0]
d0000b6c:	6053      	strne	r3, [r2, #4]
d0000b6e:	4630      	mov	r0, r6
d0000b70:	f000 fe5c 	bl	d000182c <__malloc_unlock>
d0000b74:	f104 000b 	add.w	r0, r4, #11
d0000b78:	1d23      	adds	r3, r4, #4
d0000b7a:	f020 0007 	bic.w	r0, r0, #7
d0000b7e:	1ac2      	subs	r2, r0, r3
d0000b80:	d0cc      	beq.n	d0000b1c <_malloc_r+0x20>
d0000b82:	1a1b      	subs	r3, r3, r0
d0000b84:	50a3      	str	r3, [r4, r2]
d0000b86:	e7c9      	b.n	d0000b1c <_malloc_r+0x20>
d0000b88:	4622      	mov	r2, r4
d0000b8a:	6864      	ldr	r4, [r4, #4]
d0000b8c:	e7cc      	b.n	d0000b28 <_malloc_r+0x2c>
d0000b8e:	1cc4      	adds	r4, r0, #3
d0000b90:	f024 0403 	bic.w	r4, r4, #3
d0000b94:	42a0      	cmp	r0, r4
d0000b96:	d0e3      	beq.n	d0000b60 <_malloc_r+0x64>
d0000b98:	1a21      	subs	r1, r4, r0
d0000b9a:	4630      	mov	r0, r6
d0000b9c:	f000 faf6 	bl	d000118c <_sbrk_r>
d0000ba0:	3001      	adds	r0, #1
d0000ba2:	d1dd      	bne.n	d0000b60 <_malloc_r+0x64>
d0000ba4:	e7cf      	b.n	d0000b46 <_malloc_r+0x4a>
d0000ba6:	bf00      	nop
d0000ba8:	d004cc08 	.word	0xd004cc08
d0000bac:	d004cc0c 	.word	0xd004cc0c

d0000bb0 <__sfputc_r>:
d0000bb0:	6893      	ldr	r3, [r2, #8]
d0000bb2:	3b01      	subs	r3, #1
d0000bb4:	2b00      	cmp	r3, #0
d0000bb6:	b410      	push	{r4}
d0000bb8:	6093      	str	r3, [r2, #8]
d0000bba:	da08      	bge.n	d0000bce <__sfputc_r+0x1e>
d0000bbc:	6994      	ldr	r4, [r2, #24]
d0000bbe:	42a3      	cmp	r3, r4
d0000bc0:	db01      	blt.n	d0000bc6 <__sfputc_r+0x16>
d0000bc2:	290a      	cmp	r1, #10
d0000bc4:	d103      	bne.n	d0000bce <__sfputc_r+0x1e>
d0000bc6:	f85d 4b04 	ldr.w	r4, [sp], #4
d0000bca:	f000 baef 	b.w	d00011ac <__swbuf_r>
d0000bce:	6813      	ldr	r3, [r2, #0]
d0000bd0:	1c58      	adds	r0, r3, #1
d0000bd2:	6010      	str	r0, [r2, #0]
d0000bd4:	7019      	strb	r1, [r3, #0]
d0000bd6:	4608      	mov	r0, r1
d0000bd8:	f85d 4b04 	ldr.w	r4, [sp], #4
d0000bdc:	4770      	bx	lr

d0000bde <__sfputs_r>:
d0000bde:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000be0:	4606      	mov	r6, r0
d0000be2:	460f      	mov	r7, r1
d0000be4:	4614      	mov	r4, r2
d0000be6:	18d5      	adds	r5, r2, r3
d0000be8:	42ac      	cmp	r4, r5
d0000bea:	d101      	bne.n	d0000bf0 <__sfputs_r+0x12>
d0000bec:	2000      	movs	r0, #0
d0000bee:	e007      	b.n	d0000c00 <__sfputs_r+0x22>
d0000bf0:	f814 1b01 	ldrb.w	r1, [r4], #1
d0000bf4:	463a      	mov	r2, r7
d0000bf6:	4630      	mov	r0, r6
d0000bf8:	f7ff ffda 	bl	d0000bb0 <__sfputc_r>
d0000bfc:	1c43      	adds	r3, r0, #1
d0000bfe:	d1f3      	bne.n	d0000be8 <__sfputs_r+0xa>
d0000c00:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d0000c04 <_vfiprintf_r>:
d0000c04:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0000c08:	460d      	mov	r5, r1
d0000c0a:	b09d      	sub	sp, #116	; 0x74
d0000c0c:	4614      	mov	r4, r2
d0000c0e:	4698      	mov	r8, r3
d0000c10:	4606      	mov	r6, r0
d0000c12:	b118      	cbz	r0, d0000c1c <_vfiprintf_r+0x18>
d0000c14:	6983      	ldr	r3, [r0, #24]
d0000c16:	b90b      	cbnz	r3, d0000c1c <_vfiprintf_r+0x18>
d0000c18:	f000 fcaa 	bl	d0001570 <__sinit>
d0000c1c:	4b89      	ldr	r3, [pc, #548]	; (d0000e44 <_vfiprintf_r+0x240>)
d0000c1e:	429d      	cmp	r5, r3
d0000c20:	d11b      	bne.n	d0000c5a <_vfiprintf_r+0x56>
d0000c22:	6875      	ldr	r5, [r6, #4]
d0000c24:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0000c26:	07d9      	lsls	r1, r3, #31
d0000c28:	d405      	bmi.n	d0000c36 <_vfiprintf_r+0x32>
d0000c2a:	89ab      	ldrh	r3, [r5, #12]
d0000c2c:	059a      	lsls	r2, r3, #22
d0000c2e:	d402      	bmi.n	d0000c36 <_vfiprintf_r+0x32>
d0000c30:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0000c32:	f000 fd3b 	bl	d00016ac <__retarget_lock_acquire_recursive>
d0000c36:	89ab      	ldrh	r3, [r5, #12]
d0000c38:	071b      	lsls	r3, r3, #28
d0000c3a:	d501      	bpl.n	d0000c40 <_vfiprintf_r+0x3c>
d0000c3c:	692b      	ldr	r3, [r5, #16]
d0000c3e:	b9eb      	cbnz	r3, d0000c7c <_vfiprintf_r+0x78>
d0000c40:	4629      	mov	r1, r5
d0000c42:	4630      	mov	r0, r6
d0000c44:	f000 fb04 	bl	d0001250 <__swsetup_r>
d0000c48:	b1c0      	cbz	r0, d0000c7c <_vfiprintf_r+0x78>
d0000c4a:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0000c4c:	07dc      	lsls	r4, r3, #31
d0000c4e:	d50e      	bpl.n	d0000c6e <_vfiprintf_r+0x6a>
d0000c50:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000c54:	b01d      	add	sp, #116	; 0x74
d0000c56:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0000c5a:	4b7b      	ldr	r3, [pc, #492]	; (d0000e48 <_vfiprintf_r+0x244>)
d0000c5c:	429d      	cmp	r5, r3
d0000c5e:	d101      	bne.n	d0000c64 <_vfiprintf_r+0x60>
d0000c60:	68b5      	ldr	r5, [r6, #8]
d0000c62:	e7df      	b.n	d0000c24 <_vfiprintf_r+0x20>
d0000c64:	4b79      	ldr	r3, [pc, #484]	; (d0000e4c <_vfiprintf_r+0x248>)
d0000c66:	429d      	cmp	r5, r3
d0000c68:	bf08      	it	eq
d0000c6a:	68f5      	ldreq	r5, [r6, #12]
d0000c6c:	e7da      	b.n	d0000c24 <_vfiprintf_r+0x20>
d0000c6e:	89ab      	ldrh	r3, [r5, #12]
d0000c70:	0598      	lsls	r0, r3, #22
d0000c72:	d4ed      	bmi.n	d0000c50 <_vfiprintf_r+0x4c>
d0000c74:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0000c76:	f000 fd1a 	bl	d00016ae <__retarget_lock_release_recursive>
d0000c7a:	e7e9      	b.n	d0000c50 <_vfiprintf_r+0x4c>
d0000c7c:	2300      	movs	r3, #0
d0000c7e:	9309      	str	r3, [sp, #36]	; 0x24
d0000c80:	2320      	movs	r3, #32
d0000c82:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0000c86:	f8cd 800c 	str.w	r8, [sp, #12]
d0000c8a:	2330      	movs	r3, #48	; 0x30
d0000c8c:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d0000e50 <_vfiprintf_r+0x24c>
d0000c90:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0000c94:	f04f 0901 	mov.w	r9, #1
d0000c98:	4623      	mov	r3, r4
d0000c9a:	469a      	mov	sl, r3
d0000c9c:	f813 2b01 	ldrb.w	r2, [r3], #1
d0000ca0:	b10a      	cbz	r2, d0000ca6 <_vfiprintf_r+0xa2>
d0000ca2:	2a25      	cmp	r2, #37	; 0x25
d0000ca4:	d1f9      	bne.n	d0000c9a <_vfiprintf_r+0x96>
d0000ca6:	ebba 0b04 	subs.w	fp, sl, r4
d0000caa:	d00b      	beq.n	d0000cc4 <_vfiprintf_r+0xc0>
d0000cac:	465b      	mov	r3, fp
d0000cae:	4622      	mov	r2, r4
d0000cb0:	4629      	mov	r1, r5
d0000cb2:	4630      	mov	r0, r6
d0000cb4:	f7ff ff93 	bl	d0000bde <__sfputs_r>
d0000cb8:	3001      	adds	r0, #1
d0000cba:	f000 80aa 	beq.w	d0000e12 <_vfiprintf_r+0x20e>
d0000cbe:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0000cc0:	445a      	add	r2, fp
d0000cc2:	9209      	str	r2, [sp, #36]	; 0x24
d0000cc4:	f89a 3000 	ldrb.w	r3, [sl]
d0000cc8:	2b00      	cmp	r3, #0
d0000cca:	f000 80a2 	beq.w	d0000e12 <_vfiprintf_r+0x20e>
d0000cce:	2300      	movs	r3, #0
d0000cd0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0000cd4:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0000cd8:	f10a 0a01 	add.w	sl, sl, #1
d0000cdc:	9304      	str	r3, [sp, #16]
d0000cde:	9307      	str	r3, [sp, #28]
d0000ce0:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0000ce4:	931a      	str	r3, [sp, #104]	; 0x68
d0000ce6:	4654      	mov	r4, sl
d0000ce8:	2205      	movs	r2, #5
d0000cea:	f814 1b01 	ldrb.w	r1, [r4], #1
d0000cee:	4858      	ldr	r0, [pc, #352]	; (d0000e50 <_vfiprintf_r+0x24c>)
d0000cf0:	f000 fd46 	bl	d0001780 <memchr>
d0000cf4:	9a04      	ldr	r2, [sp, #16]
d0000cf6:	b9d8      	cbnz	r0, d0000d30 <_vfiprintf_r+0x12c>
d0000cf8:	06d1      	lsls	r1, r2, #27
d0000cfa:	bf44      	itt	mi
d0000cfc:	2320      	movmi	r3, #32
d0000cfe:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0000d02:	0713      	lsls	r3, r2, #28
d0000d04:	bf44      	itt	mi
d0000d06:	232b      	movmi	r3, #43	; 0x2b
d0000d08:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0000d0c:	f89a 3000 	ldrb.w	r3, [sl]
d0000d10:	2b2a      	cmp	r3, #42	; 0x2a
d0000d12:	d015      	beq.n	d0000d40 <_vfiprintf_r+0x13c>
d0000d14:	9a07      	ldr	r2, [sp, #28]
d0000d16:	4654      	mov	r4, sl
d0000d18:	2000      	movs	r0, #0
d0000d1a:	f04f 0c0a 	mov.w	ip, #10
d0000d1e:	4621      	mov	r1, r4
d0000d20:	f811 3b01 	ldrb.w	r3, [r1], #1
d0000d24:	3b30      	subs	r3, #48	; 0x30
d0000d26:	2b09      	cmp	r3, #9
d0000d28:	d94e      	bls.n	d0000dc8 <_vfiprintf_r+0x1c4>
d0000d2a:	b1b0      	cbz	r0, d0000d5a <_vfiprintf_r+0x156>
d0000d2c:	9207      	str	r2, [sp, #28]
d0000d2e:	e014      	b.n	d0000d5a <_vfiprintf_r+0x156>
d0000d30:	eba0 0308 	sub.w	r3, r0, r8
d0000d34:	fa09 f303 	lsl.w	r3, r9, r3
d0000d38:	4313      	orrs	r3, r2
d0000d3a:	9304      	str	r3, [sp, #16]
d0000d3c:	46a2      	mov	sl, r4
d0000d3e:	e7d2      	b.n	d0000ce6 <_vfiprintf_r+0xe2>
d0000d40:	9b03      	ldr	r3, [sp, #12]
d0000d42:	1d19      	adds	r1, r3, #4
d0000d44:	681b      	ldr	r3, [r3, #0]
d0000d46:	9103      	str	r1, [sp, #12]
d0000d48:	2b00      	cmp	r3, #0
d0000d4a:	bfbb      	ittet	lt
d0000d4c:	425b      	neglt	r3, r3
d0000d4e:	f042 0202 	orrlt.w	r2, r2, #2
d0000d52:	9307      	strge	r3, [sp, #28]
d0000d54:	9307      	strlt	r3, [sp, #28]
d0000d56:	bfb8      	it	lt
d0000d58:	9204      	strlt	r2, [sp, #16]
d0000d5a:	7823      	ldrb	r3, [r4, #0]
d0000d5c:	2b2e      	cmp	r3, #46	; 0x2e
d0000d5e:	d10c      	bne.n	d0000d7a <_vfiprintf_r+0x176>
d0000d60:	7863      	ldrb	r3, [r4, #1]
d0000d62:	2b2a      	cmp	r3, #42	; 0x2a
d0000d64:	d135      	bne.n	d0000dd2 <_vfiprintf_r+0x1ce>
d0000d66:	9b03      	ldr	r3, [sp, #12]
d0000d68:	1d1a      	adds	r2, r3, #4
d0000d6a:	681b      	ldr	r3, [r3, #0]
d0000d6c:	9203      	str	r2, [sp, #12]
d0000d6e:	2b00      	cmp	r3, #0
d0000d70:	bfb8      	it	lt
d0000d72:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0000d76:	3402      	adds	r4, #2
d0000d78:	9305      	str	r3, [sp, #20]
d0000d7a:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d0000e60 <_vfiprintf_r+0x25c>
d0000d7e:	7821      	ldrb	r1, [r4, #0]
d0000d80:	2203      	movs	r2, #3
d0000d82:	4650      	mov	r0, sl
d0000d84:	f000 fcfc 	bl	d0001780 <memchr>
d0000d88:	b140      	cbz	r0, d0000d9c <_vfiprintf_r+0x198>
d0000d8a:	2340      	movs	r3, #64	; 0x40
d0000d8c:	eba0 000a 	sub.w	r0, r0, sl
d0000d90:	fa03 f000 	lsl.w	r0, r3, r0
d0000d94:	9b04      	ldr	r3, [sp, #16]
d0000d96:	4303      	orrs	r3, r0
d0000d98:	3401      	adds	r4, #1
d0000d9a:	9304      	str	r3, [sp, #16]
d0000d9c:	f814 1b01 	ldrb.w	r1, [r4], #1
d0000da0:	482c      	ldr	r0, [pc, #176]	; (d0000e54 <_vfiprintf_r+0x250>)
d0000da2:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0000da6:	2206      	movs	r2, #6
d0000da8:	f000 fcea 	bl	d0001780 <memchr>
d0000dac:	2800      	cmp	r0, #0
d0000dae:	d03f      	beq.n	d0000e30 <_vfiprintf_r+0x22c>
d0000db0:	4b29      	ldr	r3, [pc, #164]	; (d0000e58 <_vfiprintf_r+0x254>)
d0000db2:	bb1b      	cbnz	r3, d0000dfc <_vfiprintf_r+0x1f8>
d0000db4:	9b03      	ldr	r3, [sp, #12]
d0000db6:	3307      	adds	r3, #7
d0000db8:	f023 0307 	bic.w	r3, r3, #7
d0000dbc:	3308      	adds	r3, #8
d0000dbe:	9303      	str	r3, [sp, #12]
d0000dc0:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0000dc2:	443b      	add	r3, r7
d0000dc4:	9309      	str	r3, [sp, #36]	; 0x24
d0000dc6:	e767      	b.n	d0000c98 <_vfiprintf_r+0x94>
d0000dc8:	fb0c 3202 	mla	r2, ip, r2, r3
d0000dcc:	460c      	mov	r4, r1
d0000dce:	2001      	movs	r0, #1
d0000dd0:	e7a5      	b.n	d0000d1e <_vfiprintf_r+0x11a>
d0000dd2:	2300      	movs	r3, #0
d0000dd4:	3401      	adds	r4, #1
d0000dd6:	9305      	str	r3, [sp, #20]
d0000dd8:	4619      	mov	r1, r3
d0000dda:	f04f 0c0a 	mov.w	ip, #10
d0000dde:	4620      	mov	r0, r4
d0000de0:	f810 2b01 	ldrb.w	r2, [r0], #1
d0000de4:	3a30      	subs	r2, #48	; 0x30
d0000de6:	2a09      	cmp	r2, #9
d0000de8:	d903      	bls.n	d0000df2 <_vfiprintf_r+0x1ee>
d0000dea:	2b00      	cmp	r3, #0
d0000dec:	d0c5      	beq.n	d0000d7a <_vfiprintf_r+0x176>
d0000dee:	9105      	str	r1, [sp, #20]
d0000df0:	e7c3      	b.n	d0000d7a <_vfiprintf_r+0x176>
d0000df2:	fb0c 2101 	mla	r1, ip, r1, r2
d0000df6:	4604      	mov	r4, r0
d0000df8:	2301      	movs	r3, #1
d0000dfa:	e7f0      	b.n	d0000dde <_vfiprintf_r+0x1da>
d0000dfc:	ab03      	add	r3, sp, #12
d0000dfe:	9300      	str	r3, [sp, #0]
d0000e00:	462a      	mov	r2, r5
d0000e02:	4b16      	ldr	r3, [pc, #88]	; (d0000e5c <_vfiprintf_r+0x258>)
d0000e04:	a904      	add	r1, sp, #16
d0000e06:	4630      	mov	r0, r6
d0000e08:	f3af 8000 	nop.w
d0000e0c:	4607      	mov	r7, r0
d0000e0e:	1c78      	adds	r0, r7, #1
d0000e10:	d1d6      	bne.n	d0000dc0 <_vfiprintf_r+0x1bc>
d0000e12:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0000e14:	07d9      	lsls	r1, r3, #31
d0000e16:	d405      	bmi.n	d0000e24 <_vfiprintf_r+0x220>
d0000e18:	89ab      	ldrh	r3, [r5, #12]
d0000e1a:	059a      	lsls	r2, r3, #22
d0000e1c:	d402      	bmi.n	d0000e24 <_vfiprintf_r+0x220>
d0000e1e:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0000e20:	f000 fc45 	bl	d00016ae <__retarget_lock_release_recursive>
d0000e24:	89ab      	ldrh	r3, [r5, #12]
d0000e26:	065b      	lsls	r3, r3, #25
d0000e28:	f53f af12 	bmi.w	d0000c50 <_vfiprintf_r+0x4c>
d0000e2c:	9809      	ldr	r0, [sp, #36]	; 0x24
d0000e2e:	e711      	b.n	d0000c54 <_vfiprintf_r+0x50>
d0000e30:	ab03      	add	r3, sp, #12
d0000e32:	9300      	str	r3, [sp, #0]
d0000e34:	462a      	mov	r2, r5
d0000e36:	4b09      	ldr	r3, [pc, #36]	; (d0000e5c <_vfiprintf_r+0x258>)
d0000e38:	a904      	add	r1, sp, #16
d0000e3a:	4630      	mov	r0, r6
d0000e3c:	f000 f880 	bl	d0000f40 <_printf_i>
d0000e40:	e7e4      	b.n	d0000e0c <_vfiprintf_r+0x208>
d0000e42:	bf00      	nop
d0000e44:	d0001b4c 	.word	0xd0001b4c
d0000e48:	d0001b6c 	.word	0xd0001b6c
d0000e4c:	d0001b2c 	.word	0xd0001b2c
d0000e50:	d0001af7 	.word	0xd0001af7
d0000e54:	d0001b01 	.word	0xd0001b01
d0000e58:	00000000 	.word	0x00000000
d0000e5c:	d0000bdf 	.word	0xd0000bdf
d0000e60:	d0001afd 	.word	0xd0001afd

d0000e64 <_printf_common>:
d0000e64:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0000e68:	4616      	mov	r6, r2
d0000e6a:	4699      	mov	r9, r3
d0000e6c:	688a      	ldr	r2, [r1, #8]
d0000e6e:	690b      	ldr	r3, [r1, #16]
d0000e70:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0000e74:	4293      	cmp	r3, r2
d0000e76:	bfb8      	it	lt
d0000e78:	4613      	movlt	r3, r2
d0000e7a:	6033      	str	r3, [r6, #0]
d0000e7c:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0000e80:	4607      	mov	r7, r0
d0000e82:	460c      	mov	r4, r1
d0000e84:	b10a      	cbz	r2, d0000e8a <_printf_common+0x26>
d0000e86:	3301      	adds	r3, #1
d0000e88:	6033      	str	r3, [r6, #0]
d0000e8a:	6823      	ldr	r3, [r4, #0]
d0000e8c:	0699      	lsls	r1, r3, #26
d0000e8e:	bf42      	ittt	mi
d0000e90:	6833      	ldrmi	r3, [r6, #0]
d0000e92:	3302      	addmi	r3, #2
d0000e94:	6033      	strmi	r3, [r6, #0]
d0000e96:	6825      	ldr	r5, [r4, #0]
d0000e98:	f015 0506 	ands.w	r5, r5, #6
d0000e9c:	d106      	bne.n	d0000eac <_printf_common+0x48>
d0000e9e:	f104 0a19 	add.w	sl, r4, #25
d0000ea2:	68e3      	ldr	r3, [r4, #12]
d0000ea4:	6832      	ldr	r2, [r6, #0]
d0000ea6:	1a9b      	subs	r3, r3, r2
d0000ea8:	42ab      	cmp	r3, r5
d0000eaa:	dc26      	bgt.n	d0000efa <_printf_common+0x96>
d0000eac:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0000eb0:	1e13      	subs	r3, r2, #0
d0000eb2:	6822      	ldr	r2, [r4, #0]
d0000eb4:	bf18      	it	ne
d0000eb6:	2301      	movne	r3, #1
d0000eb8:	0692      	lsls	r2, r2, #26
d0000eba:	d42b      	bmi.n	d0000f14 <_printf_common+0xb0>
d0000ebc:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0000ec0:	4649      	mov	r1, r9
d0000ec2:	4638      	mov	r0, r7
d0000ec4:	47c0      	blx	r8
d0000ec6:	3001      	adds	r0, #1
d0000ec8:	d01e      	beq.n	d0000f08 <_printf_common+0xa4>
d0000eca:	6823      	ldr	r3, [r4, #0]
d0000ecc:	68e5      	ldr	r5, [r4, #12]
d0000ece:	6832      	ldr	r2, [r6, #0]
d0000ed0:	f003 0306 	and.w	r3, r3, #6
d0000ed4:	2b04      	cmp	r3, #4
d0000ed6:	bf08      	it	eq
d0000ed8:	1aad      	subeq	r5, r5, r2
d0000eda:	68a3      	ldr	r3, [r4, #8]
d0000edc:	6922      	ldr	r2, [r4, #16]
d0000ede:	bf0c      	ite	eq
d0000ee0:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0000ee4:	2500      	movne	r5, #0
d0000ee6:	4293      	cmp	r3, r2
d0000ee8:	bfc4      	itt	gt
d0000eea:	1a9b      	subgt	r3, r3, r2
d0000eec:	18ed      	addgt	r5, r5, r3
d0000eee:	2600      	movs	r6, #0
d0000ef0:	341a      	adds	r4, #26
d0000ef2:	42b5      	cmp	r5, r6
d0000ef4:	d11a      	bne.n	d0000f2c <_printf_common+0xc8>
d0000ef6:	2000      	movs	r0, #0
d0000ef8:	e008      	b.n	d0000f0c <_printf_common+0xa8>
d0000efa:	2301      	movs	r3, #1
d0000efc:	4652      	mov	r2, sl
d0000efe:	4649      	mov	r1, r9
d0000f00:	4638      	mov	r0, r7
d0000f02:	47c0      	blx	r8
d0000f04:	3001      	adds	r0, #1
d0000f06:	d103      	bne.n	d0000f10 <_printf_common+0xac>
d0000f08:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000f0c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0000f10:	3501      	adds	r5, #1
d0000f12:	e7c6      	b.n	d0000ea2 <_printf_common+0x3e>
d0000f14:	18e1      	adds	r1, r4, r3
d0000f16:	1c5a      	adds	r2, r3, #1
d0000f18:	2030      	movs	r0, #48	; 0x30
d0000f1a:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0000f1e:	4422      	add	r2, r4
d0000f20:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0000f24:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0000f28:	3302      	adds	r3, #2
d0000f2a:	e7c7      	b.n	d0000ebc <_printf_common+0x58>
d0000f2c:	2301      	movs	r3, #1
d0000f2e:	4622      	mov	r2, r4
d0000f30:	4649      	mov	r1, r9
d0000f32:	4638      	mov	r0, r7
d0000f34:	47c0      	blx	r8
d0000f36:	3001      	adds	r0, #1
d0000f38:	d0e6      	beq.n	d0000f08 <_printf_common+0xa4>
d0000f3a:	3601      	adds	r6, #1
d0000f3c:	e7d9      	b.n	d0000ef2 <_printf_common+0x8e>
	...

d0000f40 <_printf_i>:
d0000f40:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0000f44:	460c      	mov	r4, r1
d0000f46:	4691      	mov	r9, r2
d0000f48:	7e27      	ldrb	r7, [r4, #24]
d0000f4a:	990c      	ldr	r1, [sp, #48]	; 0x30
d0000f4c:	2f78      	cmp	r7, #120	; 0x78
d0000f4e:	4680      	mov	r8, r0
d0000f50:	469a      	mov	sl, r3
d0000f52:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0000f56:	d807      	bhi.n	d0000f68 <_printf_i+0x28>
d0000f58:	2f62      	cmp	r7, #98	; 0x62
d0000f5a:	d80a      	bhi.n	d0000f72 <_printf_i+0x32>
d0000f5c:	2f00      	cmp	r7, #0
d0000f5e:	f000 80d8 	beq.w	d0001112 <_printf_i+0x1d2>
d0000f62:	2f58      	cmp	r7, #88	; 0x58
d0000f64:	f000 80a3 	beq.w	d00010ae <_printf_i+0x16e>
d0000f68:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0000f6c:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0000f70:	e03a      	b.n	d0000fe8 <_printf_i+0xa8>
d0000f72:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0000f76:	2b15      	cmp	r3, #21
d0000f78:	d8f6      	bhi.n	d0000f68 <_printf_i+0x28>
d0000f7a:	a001      	add	r0, pc, #4	; (adr r0, d0000f80 <_printf_i+0x40>)
d0000f7c:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0000f80:	d0000fd9 	.word	0xd0000fd9
d0000f84:	d0000fed 	.word	0xd0000fed
d0000f88:	d0000f69 	.word	0xd0000f69
d0000f8c:	d0000f69 	.word	0xd0000f69
d0000f90:	d0000f69 	.word	0xd0000f69
d0000f94:	d0000f69 	.word	0xd0000f69
d0000f98:	d0000fed 	.word	0xd0000fed
d0000f9c:	d0000f69 	.word	0xd0000f69
d0000fa0:	d0000f69 	.word	0xd0000f69
d0000fa4:	d0000f69 	.word	0xd0000f69
d0000fa8:	d0000f69 	.word	0xd0000f69
d0000fac:	d00010f9 	.word	0xd00010f9
d0000fb0:	d000101d 	.word	0xd000101d
d0000fb4:	d00010db 	.word	0xd00010db
d0000fb8:	d0000f69 	.word	0xd0000f69
d0000fbc:	d0000f69 	.word	0xd0000f69
d0000fc0:	d000111b 	.word	0xd000111b
d0000fc4:	d0000f69 	.word	0xd0000f69
d0000fc8:	d000101d 	.word	0xd000101d
d0000fcc:	d0000f69 	.word	0xd0000f69
d0000fd0:	d0000f69 	.word	0xd0000f69
d0000fd4:	d00010e3 	.word	0xd00010e3
d0000fd8:	680b      	ldr	r3, [r1, #0]
d0000fda:	1d1a      	adds	r2, r3, #4
d0000fdc:	681b      	ldr	r3, [r3, #0]
d0000fde:	600a      	str	r2, [r1, #0]
d0000fe0:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0000fe4:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0000fe8:	2301      	movs	r3, #1
d0000fea:	e0a3      	b.n	d0001134 <_printf_i+0x1f4>
d0000fec:	6825      	ldr	r5, [r4, #0]
d0000fee:	6808      	ldr	r0, [r1, #0]
d0000ff0:	062e      	lsls	r6, r5, #24
d0000ff2:	f100 0304 	add.w	r3, r0, #4
d0000ff6:	d50a      	bpl.n	d000100e <_printf_i+0xce>
d0000ff8:	6805      	ldr	r5, [r0, #0]
d0000ffa:	600b      	str	r3, [r1, #0]
d0000ffc:	2d00      	cmp	r5, #0
d0000ffe:	da03      	bge.n	d0001008 <_printf_i+0xc8>
d0001000:	232d      	movs	r3, #45	; 0x2d
d0001002:	426d      	negs	r5, r5
d0001004:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0001008:	485e      	ldr	r0, [pc, #376]	; (d0001184 <_printf_i+0x244>)
d000100a:	230a      	movs	r3, #10
d000100c:	e019      	b.n	d0001042 <_printf_i+0x102>
d000100e:	f015 0f40 	tst.w	r5, #64	; 0x40
d0001012:	6805      	ldr	r5, [r0, #0]
d0001014:	600b      	str	r3, [r1, #0]
d0001016:	bf18      	it	ne
d0001018:	b22d      	sxthne	r5, r5
d000101a:	e7ef      	b.n	d0000ffc <_printf_i+0xbc>
d000101c:	680b      	ldr	r3, [r1, #0]
d000101e:	6825      	ldr	r5, [r4, #0]
d0001020:	1d18      	adds	r0, r3, #4
d0001022:	6008      	str	r0, [r1, #0]
d0001024:	0628      	lsls	r0, r5, #24
d0001026:	d501      	bpl.n	d000102c <_printf_i+0xec>
d0001028:	681d      	ldr	r5, [r3, #0]
d000102a:	e002      	b.n	d0001032 <_printf_i+0xf2>
d000102c:	0669      	lsls	r1, r5, #25
d000102e:	d5fb      	bpl.n	d0001028 <_printf_i+0xe8>
d0001030:	881d      	ldrh	r5, [r3, #0]
d0001032:	4854      	ldr	r0, [pc, #336]	; (d0001184 <_printf_i+0x244>)
d0001034:	2f6f      	cmp	r7, #111	; 0x6f
d0001036:	bf0c      	ite	eq
d0001038:	2308      	moveq	r3, #8
d000103a:	230a      	movne	r3, #10
d000103c:	2100      	movs	r1, #0
d000103e:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0001042:	6866      	ldr	r6, [r4, #4]
d0001044:	60a6      	str	r6, [r4, #8]
d0001046:	2e00      	cmp	r6, #0
d0001048:	bfa2      	ittt	ge
d000104a:	6821      	ldrge	r1, [r4, #0]
d000104c:	f021 0104 	bicge.w	r1, r1, #4
d0001050:	6021      	strge	r1, [r4, #0]
d0001052:	b90d      	cbnz	r5, d0001058 <_printf_i+0x118>
d0001054:	2e00      	cmp	r6, #0
d0001056:	d04d      	beq.n	d00010f4 <_printf_i+0x1b4>
d0001058:	4616      	mov	r6, r2
d000105a:	fbb5 f1f3 	udiv	r1, r5, r3
d000105e:	fb03 5711 	mls	r7, r3, r1, r5
d0001062:	5dc7      	ldrb	r7, [r0, r7]
d0001064:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0001068:	462f      	mov	r7, r5
d000106a:	42bb      	cmp	r3, r7
d000106c:	460d      	mov	r5, r1
d000106e:	d9f4      	bls.n	d000105a <_printf_i+0x11a>
d0001070:	2b08      	cmp	r3, #8
d0001072:	d10b      	bne.n	d000108c <_printf_i+0x14c>
d0001074:	6823      	ldr	r3, [r4, #0]
d0001076:	07df      	lsls	r7, r3, #31
d0001078:	d508      	bpl.n	d000108c <_printf_i+0x14c>
d000107a:	6923      	ldr	r3, [r4, #16]
d000107c:	6861      	ldr	r1, [r4, #4]
d000107e:	4299      	cmp	r1, r3
d0001080:	bfde      	ittt	le
d0001082:	2330      	movle	r3, #48	; 0x30
d0001084:	f806 3c01 	strble.w	r3, [r6, #-1]
d0001088:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d000108c:	1b92      	subs	r2, r2, r6
d000108e:	6122      	str	r2, [r4, #16]
d0001090:	f8cd a000 	str.w	sl, [sp]
d0001094:	464b      	mov	r3, r9
d0001096:	aa03      	add	r2, sp, #12
d0001098:	4621      	mov	r1, r4
d000109a:	4640      	mov	r0, r8
d000109c:	f7ff fee2 	bl	d0000e64 <_printf_common>
d00010a0:	3001      	adds	r0, #1
d00010a2:	d14c      	bne.n	d000113e <_printf_i+0x1fe>
d00010a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00010a8:	b004      	add	sp, #16
d00010aa:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00010ae:	4835      	ldr	r0, [pc, #212]	; (d0001184 <_printf_i+0x244>)
d00010b0:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d00010b4:	6823      	ldr	r3, [r4, #0]
d00010b6:	680e      	ldr	r6, [r1, #0]
d00010b8:	061f      	lsls	r7, r3, #24
d00010ba:	f856 5b04 	ldr.w	r5, [r6], #4
d00010be:	600e      	str	r6, [r1, #0]
d00010c0:	d514      	bpl.n	d00010ec <_printf_i+0x1ac>
d00010c2:	07d9      	lsls	r1, r3, #31
d00010c4:	bf44      	itt	mi
d00010c6:	f043 0320 	orrmi.w	r3, r3, #32
d00010ca:	6023      	strmi	r3, [r4, #0]
d00010cc:	b91d      	cbnz	r5, d00010d6 <_printf_i+0x196>
d00010ce:	6823      	ldr	r3, [r4, #0]
d00010d0:	f023 0320 	bic.w	r3, r3, #32
d00010d4:	6023      	str	r3, [r4, #0]
d00010d6:	2310      	movs	r3, #16
d00010d8:	e7b0      	b.n	d000103c <_printf_i+0xfc>
d00010da:	6823      	ldr	r3, [r4, #0]
d00010dc:	f043 0320 	orr.w	r3, r3, #32
d00010e0:	6023      	str	r3, [r4, #0]
d00010e2:	2378      	movs	r3, #120	; 0x78
d00010e4:	4828      	ldr	r0, [pc, #160]	; (d0001188 <_printf_i+0x248>)
d00010e6:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d00010ea:	e7e3      	b.n	d00010b4 <_printf_i+0x174>
d00010ec:	065e      	lsls	r6, r3, #25
d00010ee:	bf48      	it	mi
d00010f0:	b2ad      	uxthmi	r5, r5
d00010f2:	e7e6      	b.n	d00010c2 <_printf_i+0x182>
d00010f4:	4616      	mov	r6, r2
d00010f6:	e7bb      	b.n	d0001070 <_printf_i+0x130>
d00010f8:	680b      	ldr	r3, [r1, #0]
d00010fa:	6826      	ldr	r6, [r4, #0]
d00010fc:	6960      	ldr	r0, [r4, #20]
d00010fe:	1d1d      	adds	r5, r3, #4
d0001100:	600d      	str	r5, [r1, #0]
d0001102:	0635      	lsls	r5, r6, #24
d0001104:	681b      	ldr	r3, [r3, #0]
d0001106:	d501      	bpl.n	d000110c <_printf_i+0x1cc>
d0001108:	6018      	str	r0, [r3, #0]
d000110a:	e002      	b.n	d0001112 <_printf_i+0x1d2>
d000110c:	0671      	lsls	r1, r6, #25
d000110e:	d5fb      	bpl.n	d0001108 <_printf_i+0x1c8>
d0001110:	8018      	strh	r0, [r3, #0]
d0001112:	2300      	movs	r3, #0
d0001114:	6123      	str	r3, [r4, #16]
d0001116:	4616      	mov	r6, r2
d0001118:	e7ba      	b.n	d0001090 <_printf_i+0x150>
d000111a:	680b      	ldr	r3, [r1, #0]
d000111c:	1d1a      	adds	r2, r3, #4
d000111e:	600a      	str	r2, [r1, #0]
d0001120:	681e      	ldr	r6, [r3, #0]
d0001122:	6862      	ldr	r2, [r4, #4]
d0001124:	2100      	movs	r1, #0
d0001126:	4630      	mov	r0, r6
d0001128:	f000 fb2a 	bl	d0001780 <memchr>
d000112c:	b108      	cbz	r0, d0001132 <_printf_i+0x1f2>
d000112e:	1b80      	subs	r0, r0, r6
d0001130:	6060      	str	r0, [r4, #4]
d0001132:	6863      	ldr	r3, [r4, #4]
d0001134:	6123      	str	r3, [r4, #16]
d0001136:	2300      	movs	r3, #0
d0001138:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d000113c:	e7a8      	b.n	d0001090 <_printf_i+0x150>
d000113e:	6923      	ldr	r3, [r4, #16]
d0001140:	4632      	mov	r2, r6
d0001142:	4649      	mov	r1, r9
d0001144:	4640      	mov	r0, r8
d0001146:	47d0      	blx	sl
d0001148:	3001      	adds	r0, #1
d000114a:	d0ab      	beq.n	d00010a4 <_printf_i+0x164>
d000114c:	6823      	ldr	r3, [r4, #0]
d000114e:	079b      	lsls	r3, r3, #30
d0001150:	d413      	bmi.n	d000117a <_printf_i+0x23a>
d0001152:	68e0      	ldr	r0, [r4, #12]
d0001154:	9b03      	ldr	r3, [sp, #12]
d0001156:	4298      	cmp	r0, r3
d0001158:	bfb8      	it	lt
d000115a:	4618      	movlt	r0, r3
d000115c:	e7a4      	b.n	d00010a8 <_printf_i+0x168>
d000115e:	2301      	movs	r3, #1
d0001160:	4632      	mov	r2, r6
d0001162:	4649      	mov	r1, r9
d0001164:	4640      	mov	r0, r8
d0001166:	47d0      	blx	sl
d0001168:	3001      	adds	r0, #1
d000116a:	d09b      	beq.n	d00010a4 <_printf_i+0x164>
d000116c:	3501      	adds	r5, #1
d000116e:	68e3      	ldr	r3, [r4, #12]
d0001170:	9903      	ldr	r1, [sp, #12]
d0001172:	1a5b      	subs	r3, r3, r1
d0001174:	42ab      	cmp	r3, r5
d0001176:	dcf2      	bgt.n	d000115e <_printf_i+0x21e>
d0001178:	e7eb      	b.n	d0001152 <_printf_i+0x212>
d000117a:	2500      	movs	r5, #0
d000117c:	f104 0619 	add.w	r6, r4, #25
d0001180:	e7f5      	b.n	d000116e <_printf_i+0x22e>
d0001182:	bf00      	nop
d0001184:	d0001b08 	.word	0xd0001b08
d0001188:	d0001b19 	.word	0xd0001b19

d000118c <_sbrk_r>:
d000118c:	b538      	push	{r3, r4, r5, lr}
d000118e:	4d06      	ldr	r5, [pc, #24]	; (d00011a8 <_sbrk_r+0x1c>)
d0001190:	2300      	movs	r3, #0
d0001192:	4604      	mov	r4, r0
d0001194:	4608      	mov	r0, r1
d0001196:	602b      	str	r3, [r5, #0]
d0001198:	f7fe ff9e 	bl	d00000d8 <_sbrk>
d000119c:	1c43      	adds	r3, r0, #1
d000119e:	d102      	bne.n	d00011a6 <_sbrk_r+0x1a>
d00011a0:	682b      	ldr	r3, [r5, #0]
d00011a2:	b103      	cbz	r3, d00011a6 <_sbrk_r+0x1a>
d00011a4:	6023      	str	r3, [r4, #0]
d00011a6:	bd38      	pop	{r3, r4, r5, pc}
d00011a8:	d004da8c 	.word	0xd004da8c

d00011ac <__swbuf_r>:
d00011ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00011ae:	460e      	mov	r6, r1
d00011b0:	4614      	mov	r4, r2
d00011b2:	4605      	mov	r5, r0
d00011b4:	b118      	cbz	r0, d00011be <__swbuf_r+0x12>
d00011b6:	6983      	ldr	r3, [r0, #24]
d00011b8:	b90b      	cbnz	r3, d00011be <__swbuf_r+0x12>
d00011ba:	f000 f9d9 	bl	d0001570 <__sinit>
d00011be:	4b21      	ldr	r3, [pc, #132]	; (d0001244 <__swbuf_r+0x98>)
d00011c0:	429c      	cmp	r4, r3
d00011c2:	d12b      	bne.n	d000121c <__swbuf_r+0x70>
d00011c4:	686c      	ldr	r4, [r5, #4]
d00011c6:	69a3      	ldr	r3, [r4, #24]
d00011c8:	60a3      	str	r3, [r4, #8]
d00011ca:	89a3      	ldrh	r3, [r4, #12]
d00011cc:	071a      	lsls	r2, r3, #28
d00011ce:	d52f      	bpl.n	d0001230 <__swbuf_r+0x84>
d00011d0:	6923      	ldr	r3, [r4, #16]
d00011d2:	b36b      	cbz	r3, d0001230 <__swbuf_r+0x84>
d00011d4:	6923      	ldr	r3, [r4, #16]
d00011d6:	6820      	ldr	r0, [r4, #0]
d00011d8:	1ac0      	subs	r0, r0, r3
d00011da:	6963      	ldr	r3, [r4, #20]
d00011dc:	b2f6      	uxtb	r6, r6
d00011de:	4283      	cmp	r3, r0
d00011e0:	4637      	mov	r7, r6
d00011e2:	dc04      	bgt.n	d00011ee <__swbuf_r+0x42>
d00011e4:	4621      	mov	r1, r4
d00011e6:	4628      	mov	r0, r5
d00011e8:	f000 f92e 	bl	d0001448 <_fflush_r>
d00011ec:	bb30      	cbnz	r0, d000123c <__swbuf_r+0x90>
d00011ee:	68a3      	ldr	r3, [r4, #8]
d00011f0:	3b01      	subs	r3, #1
d00011f2:	60a3      	str	r3, [r4, #8]
d00011f4:	6823      	ldr	r3, [r4, #0]
d00011f6:	1c5a      	adds	r2, r3, #1
d00011f8:	6022      	str	r2, [r4, #0]
d00011fa:	701e      	strb	r6, [r3, #0]
d00011fc:	6963      	ldr	r3, [r4, #20]
d00011fe:	3001      	adds	r0, #1
d0001200:	4283      	cmp	r3, r0
d0001202:	d004      	beq.n	d000120e <__swbuf_r+0x62>
d0001204:	89a3      	ldrh	r3, [r4, #12]
d0001206:	07db      	lsls	r3, r3, #31
d0001208:	d506      	bpl.n	d0001218 <__swbuf_r+0x6c>
d000120a:	2e0a      	cmp	r6, #10
d000120c:	d104      	bne.n	d0001218 <__swbuf_r+0x6c>
d000120e:	4621      	mov	r1, r4
d0001210:	4628      	mov	r0, r5
d0001212:	f000 f919 	bl	d0001448 <_fflush_r>
d0001216:	b988      	cbnz	r0, d000123c <__swbuf_r+0x90>
d0001218:	4638      	mov	r0, r7
d000121a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d000121c:	4b0a      	ldr	r3, [pc, #40]	; (d0001248 <__swbuf_r+0x9c>)
d000121e:	429c      	cmp	r4, r3
d0001220:	d101      	bne.n	d0001226 <__swbuf_r+0x7a>
d0001222:	68ac      	ldr	r4, [r5, #8]
d0001224:	e7cf      	b.n	d00011c6 <__swbuf_r+0x1a>
d0001226:	4b09      	ldr	r3, [pc, #36]	; (d000124c <__swbuf_r+0xa0>)
d0001228:	429c      	cmp	r4, r3
d000122a:	bf08      	it	eq
d000122c:	68ec      	ldreq	r4, [r5, #12]
d000122e:	e7ca      	b.n	d00011c6 <__swbuf_r+0x1a>
d0001230:	4621      	mov	r1, r4
d0001232:	4628      	mov	r0, r5
d0001234:	f000 f80c 	bl	d0001250 <__swsetup_r>
d0001238:	2800      	cmp	r0, #0
d000123a:	d0cb      	beq.n	d00011d4 <__swbuf_r+0x28>
d000123c:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d0001240:	e7ea      	b.n	d0001218 <__swbuf_r+0x6c>
d0001242:	bf00      	nop
d0001244:	d0001b4c 	.word	0xd0001b4c
d0001248:	d0001b6c 	.word	0xd0001b6c
d000124c:	d0001b2c 	.word	0xd0001b2c

d0001250 <__swsetup_r>:
d0001250:	4b32      	ldr	r3, [pc, #200]	; (d000131c <__swsetup_r+0xcc>)
d0001252:	b570      	push	{r4, r5, r6, lr}
d0001254:	681d      	ldr	r5, [r3, #0]
d0001256:	4606      	mov	r6, r0
d0001258:	460c      	mov	r4, r1
d000125a:	b125      	cbz	r5, d0001266 <__swsetup_r+0x16>
d000125c:	69ab      	ldr	r3, [r5, #24]
d000125e:	b913      	cbnz	r3, d0001266 <__swsetup_r+0x16>
d0001260:	4628      	mov	r0, r5
d0001262:	f000 f985 	bl	d0001570 <__sinit>
d0001266:	4b2e      	ldr	r3, [pc, #184]	; (d0001320 <__swsetup_r+0xd0>)
d0001268:	429c      	cmp	r4, r3
d000126a:	d10f      	bne.n	d000128c <__swsetup_r+0x3c>
d000126c:	686c      	ldr	r4, [r5, #4]
d000126e:	89a3      	ldrh	r3, [r4, #12]
d0001270:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0001274:	0719      	lsls	r1, r3, #28
d0001276:	d42c      	bmi.n	d00012d2 <__swsetup_r+0x82>
d0001278:	06dd      	lsls	r5, r3, #27
d000127a:	d411      	bmi.n	d00012a0 <__swsetup_r+0x50>
d000127c:	2309      	movs	r3, #9
d000127e:	6033      	str	r3, [r6, #0]
d0001280:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d0001284:	81a3      	strh	r3, [r4, #12]
d0001286:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d000128a:	e03e      	b.n	d000130a <__swsetup_r+0xba>
d000128c:	4b25      	ldr	r3, [pc, #148]	; (d0001324 <__swsetup_r+0xd4>)
d000128e:	429c      	cmp	r4, r3
d0001290:	d101      	bne.n	d0001296 <__swsetup_r+0x46>
d0001292:	68ac      	ldr	r4, [r5, #8]
d0001294:	e7eb      	b.n	d000126e <__swsetup_r+0x1e>
d0001296:	4b24      	ldr	r3, [pc, #144]	; (d0001328 <__swsetup_r+0xd8>)
d0001298:	429c      	cmp	r4, r3
d000129a:	bf08      	it	eq
d000129c:	68ec      	ldreq	r4, [r5, #12]
d000129e:	e7e6      	b.n	d000126e <__swsetup_r+0x1e>
d00012a0:	0758      	lsls	r0, r3, #29
d00012a2:	d512      	bpl.n	d00012ca <__swsetup_r+0x7a>
d00012a4:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00012a6:	b141      	cbz	r1, d00012ba <__swsetup_r+0x6a>
d00012a8:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00012ac:	4299      	cmp	r1, r3
d00012ae:	d002      	beq.n	d00012b6 <__swsetup_r+0x66>
d00012b0:	4630      	mov	r0, r6
d00012b2:	f7ff fbd3 	bl	d0000a5c <_free_r>
d00012b6:	2300      	movs	r3, #0
d00012b8:	6363      	str	r3, [r4, #52]	; 0x34
d00012ba:	89a3      	ldrh	r3, [r4, #12]
d00012bc:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d00012c0:	81a3      	strh	r3, [r4, #12]
d00012c2:	2300      	movs	r3, #0
d00012c4:	6063      	str	r3, [r4, #4]
d00012c6:	6923      	ldr	r3, [r4, #16]
d00012c8:	6023      	str	r3, [r4, #0]
d00012ca:	89a3      	ldrh	r3, [r4, #12]
d00012cc:	f043 0308 	orr.w	r3, r3, #8
d00012d0:	81a3      	strh	r3, [r4, #12]
d00012d2:	6923      	ldr	r3, [r4, #16]
d00012d4:	b94b      	cbnz	r3, d00012ea <__swsetup_r+0x9a>
d00012d6:	89a3      	ldrh	r3, [r4, #12]
d00012d8:	f403 7320 	and.w	r3, r3, #640	; 0x280
d00012dc:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d00012e0:	d003      	beq.n	d00012ea <__swsetup_r+0x9a>
d00012e2:	4621      	mov	r1, r4
d00012e4:	4630      	mov	r0, r6
d00012e6:	f000 fa07 	bl	d00016f8 <__smakebuf_r>
d00012ea:	89a0      	ldrh	r0, [r4, #12]
d00012ec:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d00012f0:	f010 0301 	ands.w	r3, r0, #1
d00012f4:	d00a      	beq.n	d000130c <__swsetup_r+0xbc>
d00012f6:	2300      	movs	r3, #0
d00012f8:	60a3      	str	r3, [r4, #8]
d00012fa:	6963      	ldr	r3, [r4, #20]
d00012fc:	425b      	negs	r3, r3
d00012fe:	61a3      	str	r3, [r4, #24]
d0001300:	6923      	ldr	r3, [r4, #16]
d0001302:	b943      	cbnz	r3, d0001316 <__swsetup_r+0xc6>
d0001304:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d0001308:	d1ba      	bne.n	d0001280 <__swsetup_r+0x30>
d000130a:	bd70      	pop	{r4, r5, r6, pc}
d000130c:	0781      	lsls	r1, r0, #30
d000130e:	bf58      	it	pl
d0001310:	6963      	ldrpl	r3, [r4, #20]
d0001312:	60a3      	str	r3, [r4, #8]
d0001314:	e7f4      	b.n	d0001300 <__swsetup_r+0xb0>
d0001316:	2000      	movs	r0, #0
d0001318:	e7f7      	b.n	d000130a <__swsetup_r+0xba>
d000131a:	bf00      	nop
d000131c:	d0001b94 	.word	0xd0001b94
d0001320:	d0001b4c 	.word	0xd0001b4c
d0001324:	d0001b6c 	.word	0xd0001b6c
d0001328:	d0001b2c 	.word	0xd0001b2c

d000132c <abort>:
d000132c:	b508      	push	{r3, lr}
d000132e:	2006      	movs	r0, #6
d0001330:	f000 faaa 	bl	d0001888 <raise>
d0001334:	2001      	movs	r0, #1
d0001336:	f7fe fedf 	bl	d00000f8 <_exit>
	...

d000133c <__sflush_r>:
d000133c:	898a      	ldrh	r2, [r1, #12]
d000133e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0001342:	4605      	mov	r5, r0
d0001344:	0710      	lsls	r0, r2, #28
d0001346:	460c      	mov	r4, r1
d0001348:	d458      	bmi.n	d00013fc <__sflush_r+0xc0>
d000134a:	684b      	ldr	r3, [r1, #4]
d000134c:	2b00      	cmp	r3, #0
d000134e:	dc05      	bgt.n	d000135c <__sflush_r+0x20>
d0001350:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0001352:	2b00      	cmp	r3, #0
d0001354:	dc02      	bgt.n	d000135c <__sflush_r+0x20>
d0001356:	2000      	movs	r0, #0
d0001358:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d000135c:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d000135e:	2e00      	cmp	r6, #0
d0001360:	d0f9      	beq.n	d0001356 <__sflush_r+0x1a>
d0001362:	2300      	movs	r3, #0
d0001364:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0001368:	682f      	ldr	r7, [r5, #0]
d000136a:	602b      	str	r3, [r5, #0]
d000136c:	d032      	beq.n	d00013d4 <__sflush_r+0x98>
d000136e:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0001370:	89a3      	ldrh	r3, [r4, #12]
d0001372:	075a      	lsls	r2, r3, #29
d0001374:	d505      	bpl.n	d0001382 <__sflush_r+0x46>
d0001376:	6863      	ldr	r3, [r4, #4]
d0001378:	1ac0      	subs	r0, r0, r3
d000137a:	6b63      	ldr	r3, [r4, #52]	; 0x34
d000137c:	b10b      	cbz	r3, d0001382 <__sflush_r+0x46>
d000137e:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0001380:	1ac0      	subs	r0, r0, r3
d0001382:	2300      	movs	r3, #0
d0001384:	4602      	mov	r2, r0
d0001386:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0001388:	6a21      	ldr	r1, [r4, #32]
d000138a:	4628      	mov	r0, r5
d000138c:	47b0      	blx	r6
d000138e:	1c43      	adds	r3, r0, #1
d0001390:	89a3      	ldrh	r3, [r4, #12]
d0001392:	d106      	bne.n	d00013a2 <__sflush_r+0x66>
d0001394:	6829      	ldr	r1, [r5, #0]
d0001396:	291d      	cmp	r1, #29
d0001398:	d82c      	bhi.n	d00013f4 <__sflush_r+0xb8>
d000139a:	4a2a      	ldr	r2, [pc, #168]	; (d0001444 <__sflush_r+0x108>)
d000139c:	40ca      	lsrs	r2, r1
d000139e:	07d6      	lsls	r6, r2, #31
d00013a0:	d528      	bpl.n	d00013f4 <__sflush_r+0xb8>
d00013a2:	2200      	movs	r2, #0
d00013a4:	6062      	str	r2, [r4, #4]
d00013a6:	04d9      	lsls	r1, r3, #19
d00013a8:	6922      	ldr	r2, [r4, #16]
d00013aa:	6022      	str	r2, [r4, #0]
d00013ac:	d504      	bpl.n	d00013b8 <__sflush_r+0x7c>
d00013ae:	1c42      	adds	r2, r0, #1
d00013b0:	d101      	bne.n	d00013b6 <__sflush_r+0x7a>
d00013b2:	682b      	ldr	r3, [r5, #0]
d00013b4:	b903      	cbnz	r3, d00013b8 <__sflush_r+0x7c>
d00013b6:	6560      	str	r0, [r4, #84]	; 0x54
d00013b8:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00013ba:	602f      	str	r7, [r5, #0]
d00013bc:	2900      	cmp	r1, #0
d00013be:	d0ca      	beq.n	d0001356 <__sflush_r+0x1a>
d00013c0:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00013c4:	4299      	cmp	r1, r3
d00013c6:	d002      	beq.n	d00013ce <__sflush_r+0x92>
d00013c8:	4628      	mov	r0, r5
d00013ca:	f7ff fb47 	bl	d0000a5c <_free_r>
d00013ce:	2000      	movs	r0, #0
d00013d0:	6360      	str	r0, [r4, #52]	; 0x34
d00013d2:	e7c1      	b.n	d0001358 <__sflush_r+0x1c>
d00013d4:	6a21      	ldr	r1, [r4, #32]
d00013d6:	2301      	movs	r3, #1
d00013d8:	4628      	mov	r0, r5
d00013da:	47b0      	blx	r6
d00013dc:	1c41      	adds	r1, r0, #1
d00013de:	d1c7      	bne.n	d0001370 <__sflush_r+0x34>
d00013e0:	682b      	ldr	r3, [r5, #0]
d00013e2:	2b00      	cmp	r3, #0
d00013e4:	d0c4      	beq.n	d0001370 <__sflush_r+0x34>
d00013e6:	2b1d      	cmp	r3, #29
d00013e8:	d001      	beq.n	d00013ee <__sflush_r+0xb2>
d00013ea:	2b16      	cmp	r3, #22
d00013ec:	d101      	bne.n	d00013f2 <__sflush_r+0xb6>
d00013ee:	602f      	str	r7, [r5, #0]
d00013f0:	e7b1      	b.n	d0001356 <__sflush_r+0x1a>
d00013f2:	89a3      	ldrh	r3, [r4, #12]
d00013f4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00013f8:	81a3      	strh	r3, [r4, #12]
d00013fa:	e7ad      	b.n	d0001358 <__sflush_r+0x1c>
d00013fc:	690f      	ldr	r7, [r1, #16]
d00013fe:	2f00      	cmp	r7, #0
d0001400:	d0a9      	beq.n	d0001356 <__sflush_r+0x1a>
d0001402:	0793      	lsls	r3, r2, #30
d0001404:	680e      	ldr	r6, [r1, #0]
d0001406:	bf08      	it	eq
d0001408:	694b      	ldreq	r3, [r1, #20]
d000140a:	600f      	str	r7, [r1, #0]
d000140c:	bf18      	it	ne
d000140e:	2300      	movne	r3, #0
d0001410:	eba6 0807 	sub.w	r8, r6, r7
d0001414:	608b      	str	r3, [r1, #8]
d0001416:	f1b8 0f00 	cmp.w	r8, #0
d000141a:	dd9c      	ble.n	d0001356 <__sflush_r+0x1a>
d000141c:	6a21      	ldr	r1, [r4, #32]
d000141e:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0001420:	4643      	mov	r3, r8
d0001422:	463a      	mov	r2, r7
d0001424:	4628      	mov	r0, r5
d0001426:	47b0      	blx	r6
d0001428:	2800      	cmp	r0, #0
d000142a:	dc06      	bgt.n	d000143a <__sflush_r+0xfe>
d000142c:	89a3      	ldrh	r3, [r4, #12]
d000142e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0001432:	81a3      	strh	r3, [r4, #12]
d0001434:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0001438:	e78e      	b.n	d0001358 <__sflush_r+0x1c>
d000143a:	4407      	add	r7, r0
d000143c:	eba8 0800 	sub.w	r8, r8, r0
d0001440:	e7e9      	b.n	d0001416 <__sflush_r+0xda>
d0001442:	bf00      	nop
d0001444:	20400001 	.word	0x20400001

d0001448 <_fflush_r>:
d0001448:	b538      	push	{r3, r4, r5, lr}
d000144a:	690b      	ldr	r3, [r1, #16]
d000144c:	4605      	mov	r5, r0
d000144e:	460c      	mov	r4, r1
d0001450:	b913      	cbnz	r3, d0001458 <_fflush_r+0x10>
d0001452:	2500      	movs	r5, #0
d0001454:	4628      	mov	r0, r5
d0001456:	bd38      	pop	{r3, r4, r5, pc}
d0001458:	b118      	cbz	r0, d0001462 <_fflush_r+0x1a>
d000145a:	6983      	ldr	r3, [r0, #24]
d000145c:	b90b      	cbnz	r3, d0001462 <_fflush_r+0x1a>
d000145e:	f000 f887 	bl	d0001570 <__sinit>
d0001462:	4b14      	ldr	r3, [pc, #80]	; (d00014b4 <_fflush_r+0x6c>)
d0001464:	429c      	cmp	r4, r3
d0001466:	d11b      	bne.n	d00014a0 <_fflush_r+0x58>
d0001468:	686c      	ldr	r4, [r5, #4]
d000146a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d000146e:	2b00      	cmp	r3, #0
d0001470:	d0ef      	beq.n	d0001452 <_fflush_r+0xa>
d0001472:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0001474:	07d0      	lsls	r0, r2, #31
d0001476:	d404      	bmi.n	d0001482 <_fflush_r+0x3a>
d0001478:	0599      	lsls	r1, r3, #22
d000147a:	d402      	bmi.n	d0001482 <_fflush_r+0x3a>
d000147c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d000147e:	f000 f915 	bl	d00016ac <__retarget_lock_acquire_recursive>
d0001482:	4628      	mov	r0, r5
d0001484:	4621      	mov	r1, r4
d0001486:	f7ff ff59 	bl	d000133c <__sflush_r>
d000148a:	6e63      	ldr	r3, [r4, #100]	; 0x64
d000148c:	07da      	lsls	r2, r3, #31
d000148e:	4605      	mov	r5, r0
d0001490:	d4e0      	bmi.n	d0001454 <_fflush_r+0xc>
d0001492:	89a3      	ldrh	r3, [r4, #12]
d0001494:	059b      	lsls	r3, r3, #22
d0001496:	d4dd      	bmi.n	d0001454 <_fflush_r+0xc>
d0001498:	6da0      	ldr	r0, [r4, #88]	; 0x58
d000149a:	f000 f908 	bl	d00016ae <__retarget_lock_release_recursive>
d000149e:	e7d9      	b.n	d0001454 <_fflush_r+0xc>
d00014a0:	4b05      	ldr	r3, [pc, #20]	; (d00014b8 <_fflush_r+0x70>)
d00014a2:	429c      	cmp	r4, r3
d00014a4:	d101      	bne.n	d00014aa <_fflush_r+0x62>
d00014a6:	68ac      	ldr	r4, [r5, #8]
d00014a8:	e7df      	b.n	d000146a <_fflush_r+0x22>
d00014aa:	4b04      	ldr	r3, [pc, #16]	; (d00014bc <_fflush_r+0x74>)
d00014ac:	429c      	cmp	r4, r3
d00014ae:	bf08      	it	eq
d00014b0:	68ec      	ldreq	r4, [r5, #12]
d00014b2:	e7da      	b.n	d000146a <_fflush_r+0x22>
d00014b4:	d0001b4c 	.word	0xd0001b4c
d00014b8:	d0001b6c 	.word	0xd0001b6c
d00014bc:	d0001b2c 	.word	0xd0001b2c

d00014c0 <std>:
d00014c0:	2300      	movs	r3, #0
d00014c2:	b510      	push	{r4, lr}
d00014c4:	4604      	mov	r4, r0
d00014c6:	e9c0 3300 	strd	r3, r3, [r0]
d00014ca:	e9c0 3304 	strd	r3, r3, [r0, #16]
d00014ce:	6083      	str	r3, [r0, #8]
d00014d0:	8181      	strh	r1, [r0, #12]
d00014d2:	6643      	str	r3, [r0, #100]	; 0x64
d00014d4:	81c2      	strh	r2, [r0, #14]
d00014d6:	6183      	str	r3, [r0, #24]
d00014d8:	4619      	mov	r1, r3
d00014da:	2208      	movs	r2, #8
d00014dc:	305c      	adds	r0, #92	; 0x5c
d00014de:	f7fe fd99 	bl	d0000014 <memset>
d00014e2:	4b05      	ldr	r3, [pc, #20]	; (d00014f8 <std+0x38>)
d00014e4:	6263      	str	r3, [r4, #36]	; 0x24
d00014e6:	4b05      	ldr	r3, [pc, #20]	; (d00014fc <std+0x3c>)
d00014e8:	62a3      	str	r3, [r4, #40]	; 0x28
d00014ea:	4b05      	ldr	r3, [pc, #20]	; (d0001500 <std+0x40>)
d00014ec:	62e3      	str	r3, [r4, #44]	; 0x2c
d00014ee:	4b05      	ldr	r3, [pc, #20]	; (d0001504 <std+0x44>)
d00014f0:	6224      	str	r4, [r4, #32]
d00014f2:	6323      	str	r3, [r4, #48]	; 0x30
d00014f4:	bd10      	pop	{r4, pc}
d00014f6:	bf00      	nop
d00014f8:	d00018c1 	.word	0xd00018c1
d00014fc:	d00018e3 	.word	0xd00018e3
d0001500:	d000191b 	.word	0xd000191b
d0001504:	d000193f 	.word	0xd000193f

d0001508 <_cleanup_r>:
d0001508:	4901      	ldr	r1, [pc, #4]	; (d0001510 <_cleanup_r+0x8>)
d000150a:	f000 b8af 	b.w	d000166c <_fwalk_reent>
d000150e:	bf00      	nop
d0001510:	d0001449 	.word	0xd0001449

d0001514 <__sfmoreglue>:
d0001514:	b570      	push	{r4, r5, r6, lr}
d0001516:	1e4a      	subs	r2, r1, #1
d0001518:	2568      	movs	r5, #104	; 0x68
d000151a:	4355      	muls	r5, r2
d000151c:	460e      	mov	r6, r1
d000151e:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0001522:	f7ff faeb 	bl	d0000afc <_malloc_r>
d0001526:	4604      	mov	r4, r0
d0001528:	b140      	cbz	r0, d000153c <__sfmoreglue+0x28>
d000152a:	2100      	movs	r1, #0
d000152c:	e9c0 1600 	strd	r1, r6, [r0]
d0001530:	300c      	adds	r0, #12
d0001532:	60a0      	str	r0, [r4, #8]
d0001534:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0001538:	f7fe fd6c 	bl	d0000014 <memset>
d000153c:	4620      	mov	r0, r4
d000153e:	bd70      	pop	{r4, r5, r6, pc}

d0001540 <__sfp_lock_acquire>:
d0001540:	4801      	ldr	r0, [pc, #4]	; (d0001548 <__sfp_lock_acquire+0x8>)
d0001542:	f000 b8b3 	b.w	d00016ac <__retarget_lock_acquire_recursive>
d0001546:	bf00      	nop
d0001548:	d004da88 	.word	0xd004da88

d000154c <__sfp_lock_release>:
d000154c:	4801      	ldr	r0, [pc, #4]	; (d0001554 <__sfp_lock_release+0x8>)
d000154e:	f000 b8ae 	b.w	d00016ae <__retarget_lock_release_recursive>
d0001552:	bf00      	nop
d0001554:	d004da88 	.word	0xd004da88

d0001558 <__sinit_lock_acquire>:
d0001558:	4801      	ldr	r0, [pc, #4]	; (d0001560 <__sinit_lock_acquire+0x8>)
d000155a:	f000 b8a7 	b.w	d00016ac <__retarget_lock_acquire_recursive>
d000155e:	bf00      	nop
d0001560:	d004da83 	.word	0xd004da83

d0001564 <__sinit_lock_release>:
d0001564:	4801      	ldr	r0, [pc, #4]	; (d000156c <__sinit_lock_release+0x8>)
d0001566:	f000 b8a2 	b.w	d00016ae <__retarget_lock_release_recursive>
d000156a:	bf00      	nop
d000156c:	d004da83 	.word	0xd004da83

d0001570 <__sinit>:
d0001570:	b510      	push	{r4, lr}
d0001572:	4604      	mov	r4, r0
d0001574:	f7ff fff0 	bl	d0001558 <__sinit_lock_acquire>
d0001578:	69a3      	ldr	r3, [r4, #24]
d000157a:	b11b      	cbz	r3, d0001584 <__sinit+0x14>
d000157c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0001580:	f7ff bff0 	b.w	d0001564 <__sinit_lock_release>
d0001584:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0001588:	6523      	str	r3, [r4, #80]	; 0x50
d000158a:	4b13      	ldr	r3, [pc, #76]	; (d00015d8 <__sinit+0x68>)
d000158c:	4a13      	ldr	r2, [pc, #76]	; (d00015dc <__sinit+0x6c>)
d000158e:	681b      	ldr	r3, [r3, #0]
d0001590:	62a2      	str	r2, [r4, #40]	; 0x28
d0001592:	42a3      	cmp	r3, r4
d0001594:	bf04      	itt	eq
d0001596:	2301      	moveq	r3, #1
d0001598:	61a3      	streq	r3, [r4, #24]
d000159a:	4620      	mov	r0, r4
d000159c:	f000 f820 	bl	d00015e0 <__sfp>
d00015a0:	6060      	str	r0, [r4, #4]
d00015a2:	4620      	mov	r0, r4
d00015a4:	f000 f81c 	bl	d00015e0 <__sfp>
d00015a8:	60a0      	str	r0, [r4, #8]
d00015aa:	4620      	mov	r0, r4
d00015ac:	f000 f818 	bl	d00015e0 <__sfp>
d00015b0:	2200      	movs	r2, #0
d00015b2:	60e0      	str	r0, [r4, #12]
d00015b4:	2104      	movs	r1, #4
d00015b6:	6860      	ldr	r0, [r4, #4]
d00015b8:	f7ff ff82 	bl	d00014c0 <std>
d00015bc:	68a0      	ldr	r0, [r4, #8]
d00015be:	2201      	movs	r2, #1
d00015c0:	2109      	movs	r1, #9
d00015c2:	f7ff ff7d 	bl	d00014c0 <std>
d00015c6:	68e0      	ldr	r0, [r4, #12]
d00015c8:	2202      	movs	r2, #2
d00015ca:	2112      	movs	r1, #18
d00015cc:	f7ff ff78 	bl	d00014c0 <std>
d00015d0:	2301      	movs	r3, #1
d00015d2:	61a3      	str	r3, [r4, #24]
d00015d4:	e7d2      	b.n	d000157c <__sinit+0xc>
d00015d6:	bf00      	nop
d00015d8:	d0001a18 	.word	0xd0001a18
d00015dc:	d0001509 	.word	0xd0001509

d00015e0 <__sfp>:
d00015e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00015e2:	4607      	mov	r7, r0
d00015e4:	f7ff ffac 	bl	d0001540 <__sfp_lock_acquire>
d00015e8:	4b1e      	ldr	r3, [pc, #120]	; (d0001664 <__sfp+0x84>)
d00015ea:	681e      	ldr	r6, [r3, #0]
d00015ec:	69b3      	ldr	r3, [r6, #24]
d00015ee:	b913      	cbnz	r3, d00015f6 <__sfp+0x16>
d00015f0:	4630      	mov	r0, r6
d00015f2:	f7ff ffbd 	bl	d0001570 <__sinit>
d00015f6:	3648      	adds	r6, #72	; 0x48
d00015f8:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d00015fc:	3b01      	subs	r3, #1
d00015fe:	d503      	bpl.n	d0001608 <__sfp+0x28>
d0001600:	6833      	ldr	r3, [r6, #0]
d0001602:	b30b      	cbz	r3, d0001648 <__sfp+0x68>
d0001604:	6836      	ldr	r6, [r6, #0]
d0001606:	e7f7      	b.n	d00015f8 <__sfp+0x18>
d0001608:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d000160c:	b9d5      	cbnz	r5, d0001644 <__sfp+0x64>
d000160e:	4b16      	ldr	r3, [pc, #88]	; (d0001668 <__sfp+0x88>)
d0001610:	60e3      	str	r3, [r4, #12]
d0001612:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0001616:	6665      	str	r5, [r4, #100]	; 0x64
d0001618:	f000 f847 	bl	d00016aa <__retarget_lock_init_recursive>
d000161c:	f7ff ff96 	bl	d000154c <__sfp_lock_release>
d0001620:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0001624:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0001628:	6025      	str	r5, [r4, #0]
d000162a:	61a5      	str	r5, [r4, #24]
d000162c:	2208      	movs	r2, #8
d000162e:	4629      	mov	r1, r5
d0001630:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0001634:	f7fe fcee 	bl	d0000014 <memset>
d0001638:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d000163c:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0001640:	4620      	mov	r0, r4
d0001642:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0001644:	3468      	adds	r4, #104	; 0x68
d0001646:	e7d9      	b.n	d00015fc <__sfp+0x1c>
d0001648:	2104      	movs	r1, #4
d000164a:	4638      	mov	r0, r7
d000164c:	f7ff ff62 	bl	d0001514 <__sfmoreglue>
d0001650:	4604      	mov	r4, r0
d0001652:	6030      	str	r0, [r6, #0]
d0001654:	2800      	cmp	r0, #0
d0001656:	d1d5      	bne.n	d0001604 <__sfp+0x24>
d0001658:	f7ff ff78 	bl	d000154c <__sfp_lock_release>
d000165c:	230c      	movs	r3, #12
d000165e:	603b      	str	r3, [r7, #0]
d0001660:	e7ee      	b.n	d0001640 <__sfp+0x60>
d0001662:	bf00      	nop
d0001664:	d0001a18 	.word	0xd0001a18
d0001668:	ffff0001 	.word	0xffff0001

d000166c <_fwalk_reent>:
d000166c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0001670:	4606      	mov	r6, r0
d0001672:	4688      	mov	r8, r1
d0001674:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0001678:	2700      	movs	r7, #0
d000167a:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d000167e:	f1b9 0901 	subs.w	r9, r9, #1
d0001682:	d505      	bpl.n	d0001690 <_fwalk_reent+0x24>
d0001684:	6824      	ldr	r4, [r4, #0]
d0001686:	2c00      	cmp	r4, #0
d0001688:	d1f7      	bne.n	d000167a <_fwalk_reent+0xe>
d000168a:	4638      	mov	r0, r7
d000168c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0001690:	89ab      	ldrh	r3, [r5, #12]
d0001692:	2b01      	cmp	r3, #1
d0001694:	d907      	bls.n	d00016a6 <_fwalk_reent+0x3a>
d0001696:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d000169a:	3301      	adds	r3, #1
d000169c:	d003      	beq.n	d00016a6 <_fwalk_reent+0x3a>
d000169e:	4629      	mov	r1, r5
d00016a0:	4630      	mov	r0, r6
d00016a2:	47c0      	blx	r8
d00016a4:	4307      	orrs	r7, r0
d00016a6:	3568      	adds	r5, #104	; 0x68
d00016a8:	e7e9      	b.n	d000167e <_fwalk_reent+0x12>

d00016aa <__retarget_lock_init_recursive>:
d00016aa:	4770      	bx	lr

d00016ac <__retarget_lock_acquire_recursive>:
d00016ac:	4770      	bx	lr

d00016ae <__retarget_lock_release_recursive>:
d00016ae:	4770      	bx	lr

d00016b0 <__swhatbuf_r>:
d00016b0:	b570      	push	{r4, r5, r6, lr}
d00016b2:	460e      	mov	r6, r1
d00016b4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00016b8:	2900      	cmp	r1, #0
d00016ba:	b096      	sub	sp, #88	; 0x58
d00016bc:	4614      	mov	r4, r2
d00016be:	461d      	mov	r5, r3
d00016c0:	da07      	bge.n	d00016d2 <__swhatbuf_r+0x22>
d00016c2:	2300      	movs	r3, #0
d00016c4:	602b      	str	r3, [r5, #0]
d00016c6:	89b3      	ldrh	r3, [r6, #12]
d00016c8:	061a      	lsls	r2, r3, #24
d00016ca:	d410      	bmi.n	d00016ee <__swhatbuf_r+0x3e>
d00016cc:	f44f 6380 	mov.w	r3, #1024	; 0x400
d00016d0:	e00e      	b.n	d00016f0 <__swhatbuf_r+0x40>
d00016d2:	466a      	mov	r2, sp
d00016d4:	f000 f95a 	bl	d000198c <_fstat_r>
d00016d8:	2800      	cmp	r0, #0
d00016da:	dbf2      	blt.n	d00016c2 <__swhatbuf_r+0x12>
d00016dc:	9a01      	ldr	r2, [sp, #4]
d00016de:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d00016e2:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d00016e6:	425a      	negs	r2, r3
d00016e8:	415a      	adcs	r2, r3
d00016ea:	602a      	str	r2, [r5, #0]
d00016ec:	e7ee      	b.n	d00016cc <__swhatbuf_r+0x1c>
d00016ee:	2340      	movs	r3, #64	; 0x40
d00016f0:	2000      	movs	r0, #0
d00016f2:	6023      	str	r3, [r4, #0]
d00016f4:	b016      	add	sp, #88	; 0x58
d00016f6:	bd70      	pop	{r4, r5, r6, pc}

d00016f8 <__smakebuf_r>:
d00016f8:	898b      	ldrh	r3, [r1, #12]
d00016fa:	b573      	push	{r0, r1, r4, r5, r6, lr}
d00016fc:	079d      	lsls	r5, r3, #30
d00016fe:	4606      	mov	r6, r0
d0001700:	460c      	mov	r4, r1
d0001702:	d507      	bpl.n	d0001714 <__smakebuf_r+0x1c>
d0001704:	f104 0347 	add.w	r3, r4, #71	; 0x47
d0001708:	6023      	str	r3, [r4, #0]
d000170a:	6123      	str	r3, [r4, #16]
d000170c:	2301      	movs	r3, #1
d000170e:	6163      	str	r3, [r4, #20]
d0001710:	b002      	add	sp, #8
d0001712:	bd70      	pop	{r4, r5, r6, pc}
d0001714:	ab01      	add	r3, sp, #4
d0001716:	466a      	mov	r2, sp
d0001718:	f7ff ffca 	bl	d00016b0 <__swhatbuf_r>
d000171c:	9900      	ldr	r1, [sp, #0]
d000171e:	4605      	mov	r5, r0
d0001720:	4630      	mov	r0, r6
d0001722:	f7ff f9eb 	bl	d0000afc <_malloc_r>
d0001726:	b948      	cbnz	r0, d000173c <__smakebuf_r+0x44>
d0001728:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d000172c:	059a      	lsls	r2, r3, #22
d000172e:	d4ef      	bmi.n	d0001710 <__smakebuf_r+0x18>
d0001730:	f023 0303 	bic.w	r3, r3, #3
d0001734:	f043 0302 	orr.w	r3, r3, #2
d0001738:	81a3      	strh	r3, [r4, #12]
d000173a:	e7e3      	b.n	d0001704 <__smakebuf_r+0xc>
d000173c:	4b0d      	ldr	r3, [pc, #52]	; (d0001774 <__smakebuf_r+0x7c>)
d000173e:	62b3      	str	r3, [r6, #40]	; 0x28
d0001740:	89a3      	ldrh	r3, [r4, #12]
d0001742:	6020      	str	r0, [r4, #0]
d0001744:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0001748:	81a3      	strh	r3, [r4, #12]
d000174a:	9b00      	ldr	r3, [sp, #0]
d000174c:	6163      	str	r3, [r4, #20]
d000174e:	9b01      	ldr	r3, [sp, #4]
d0001750:	6120      	str	r0, [r4, #16]
d0001752:	b15b      	cbz	r3, d000176c <__smakebuf_r+0x74>
d0001754:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0001758:	4630      	mov	r0, r6
d000175a:	f000 f929 	bl	d00019b0 <_isatty_r>
d000175e:	b128      	cbz	r0, d000176c <__smakebuf_r+0x74>
d0001760:	89a3      	ldrh	r3, [r4, #12]
d0001762:	f023 0303 	bic.w	r3, r3, #3
d0001766:	f043 0301 	orr.w	r3, r3, #1
d000176a:	81a3      	strh	r3, [r4, #12]
d000176c:	89a0      	ldrh	r0, [r4, #12]
d000176e:	4305      	orrs	r5, r0
d0001770:	81a5      	strh	r5, [r4, #12]
d0001772:	e7cd      	b.n	d0001710 <__smakebuf_r+0x18>
d0001774:	d0001509 	.word	0xd0001509
	...

d0001780 <memchr>:
d0001780:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0001784:	2a10      	cmp	r2, #16
d0001786:	db2b      	blt.n	d00017e0 <memchr+0x60>
d0001788:	f010 0f07 	tst.w	r0, #7
d000178c:	d008      	beq.n	d00017a0 <memchr+0x20>
d000178e:	f810 3b01 	ldrb.w	r3, [r0], #1
d0001792:	3a01      	subs	r2, #1
d0001794:	428b      	cmp	r3, r1
d0001796:	d02d      	beq.n	d00017f4 <memchr+0x74>
d0001798:	f010 0f07 	tst.w	r0, #7
d000179c:	b342      	cbz	r2, d00017f0 <memchr+0x70>
d000179e:	d1f6      	bne.n	d000178e <memchr+0xe>
d00017a0:	b4f0      	push	{r4, r5, r6, r7}
d00017a2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d00017a6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d00017aa:	f022 0407 	bic.w	r4, r2, #7
d00017ae:	f07f 0700 	mvns.w	r7, #0
d00017b2:	2300      	movs	r3, #0
d00017b4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d00017b8:	3c08      	subs	r4, #8
d00017ba:	ea85 0501 	eor.w	r5, r5, r1
d00017be:	ea86 0601 	eor.w	r6, r6, r1
d00017c2:	fa85 f547 	uadd8	r5, r5, r7
d00017c6:	faa3 f587 	sel	r5, r3, r7
d00017ca:	fa86 f647 	uadd8	r6, r6, r7
d00017ce:	faa5 f687 	sel	r6, r5, r7
d00017d2:	b98e      	cbnz	r6, d00017f8 <memchr+0x78>
d00017d4:	d1ee      	bne.n	d00017b4 <memchr+0x34>
d00017d6:	bcf0      	pop	{r4, r5, r6, r7}
d00017d8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00017dc:	f002 0207 	and.w	r2, r2, #7
d00017e0:	b132      	cbz	r2, d00017f0 <memchr+0x70>
d00017e2:	f810 3b01 	ldrb.w	r3, [r0], #1
d00017e6:	3a01      	subs	r2, #1
d00017e8:	ea83 0301 	eor.w	r3, r3, r1
d00017ec:	b113      	cbz	r3, d00017f4 <memchr+0x74>
d00017ee:	d1f8      	bne.n	d00017e2 <memchr+0x62>
d00017f0:	2000      	movs	r0, #0
d00017f2:	4770      	bx	lr
d00017f4:	3801      	subs	r0, #1
d00017f6:	4770      	bx	lr
d00017f8:	2d00      	cmp	r5, #0
d00017fa:	bf06      	itte	eq
d00017fc:	4635      	moveq	r5, r6
d00017fe:	3803      	subeq	r0, #3
d0001800:	3807      	subne	r0, #7
d0001802:	f015 0f01 	tst.w	r5, #1
d0001806:	d107      	bne.n	d0001818 <memchr+0x98>
d0001808:	3001      	adds	r0, #1
d000180a:	f415 7f80 	tst.w	r5, #256	; 0x100
d000180e:	bf02      	ittt	eq
d0001810:	3001      	addeq	r0, #1
d0001812:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0001816:	3001      	addeq	r0, #1
d0001818:	bcf0      	pop	{r4, r5, r6, r7}
d000181a:	3801      	subs	r0, #1
d000181c:	4770      	bx	lr
d000181e:	bf00      	nop

d0001820 <__malloc_lock>:
d0001820:	4801      	ldr	r0, [pc, #4]	; (d0001828 <__malloc_lock+0x8>)
d0001822:	f7ff bf43 	b.w	d00016ac <__retarget_lock_acquire_recursive>
d0001826:	bf00      	nop
d0001828:	d004da84 	.word	0xd004da84

d000182c <__malloc_unlock>:
d000182c:	4801      	ldr	r0, [pc, #4]	; (d0001834 <__malloc_unlock+0x8>)
d000182e:	f7ff bf3e 	b.w	d00016ae <__retarget_lock_release_recursive>
d0001832:	bf00      	nop
d0001834:	d004da84 	.word	0xd004da84

d0001838 <_raise_r>:
d0001838:	291f      	cmp	r1, #31
d000183a:	b538      	push	{r3, r4, r5, lr}
d000183c:	4604      	mov	r4, r0
d000183e:	460d      	mov	r5, r1
d0001840:	d904      	bls.n	d000184c <_raise_r+0x14>
d0001842:	2316      	movs	r3, #22
d0001844:	6003      	str	r3, [r0, #0]
d0001846:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d000184a:	bd38      	pop	{r3, r4, r5, pc}
d000184c:	6c42      	ldr	r2, [r0, #68]	; 0x44
d000184e:	b112      	cbz	r2, d0001856 <_raise_r+0x1e>
d0001850:	f852 3021 	ldr.w	r3, [r2, r1, lsl #2]
d0001854:	b94b      	cbnz	r3, d000186a <_raise_r+0x32>
d0001856:	4620      	mov	r0, r4
d0001858:	f000 f830 	bl	d00018bc <_getpid_r>
d000185c:	462a      	mov	r2, r5
d000185e:	4601      	mov	r1, r0
d0001860:	4620      	mov	r0, r4
d0001862:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d0001866:	f000 b817 	b.w	d0001898 <_kill_r>
d000186a:	2b01      	cmp	r3, #1
d000186c:	d00a      	beq.n	d0001884 <_raise_r+0x4c>
d000186e:	1c59      	adds	r1, r3, #1
d0001870:	d103      	bne.n	d000187a <_raise_r+0x42>
d0001872:	2316      	movs	r3, #22
d0001874:	6003      	str	r3, [r0, #0]
d0001876:	2001      	movs	r0, #1
d0001878:	e7e7      	b.n	d000184a <_raise_r+0x12>
d000187a:	2400      	movs	r4, #0
d000187c:	f842 4025 	str.w	r4, [r2, r5, lsl #2]
d0001880:	4628      	mov	r0, r5
d0001882:	4798      	blx	r3
d0001884:	2000      	movs	r0, #0
d0001886:	e7e0      	b.n	d000184a <_raise_r+0x12>

d0001888 <raise>:
d0001888:	4b02      	ldr	r3, [pc, #8]	; (d0001894 <raise+0xc>)
d000188a:	4601      	mov	r1, r0
d000188c:	6818      	ldr	r0, [r3, #0]
d000188e:	f7ff bfd3 	b.w	d0001838 <_raise_r>
d0001892:	bf00      	nop
d0001894:	d0001b94 	.word	0xd0001b94

d0001898 <_kill_r>:
d0001898:	b538      	push	{r3, r4, r5, lr}
d000189a:	4d07      	ldr	r5, [pc, #28]	; (d00018b8 <_kill_r+0x20>)
d000189c:	2300      	movs	r3, #0
d000189e:	4604      	mov	r4, r0
d00018a0:	4608      	mov	r0, r1
d00018a2:	4611      	mov	r1, r2
d00018a4:	602b      	str	r3, [r5, #0]
d00018a6:	f7fe fc2b 	bl	d0000100 <_kill>
d00018aa:	1c43      	adds	r3, r0, #1
d00018ac:	d102      	bne.n	d00018b4 <_kill_r+0x1c>
d00018ae:	682b      	ldr	r3, [r5, #0]
d00018b0:	b103      	cbz	r3, d00018b4 <_kill_r+0x1c>
d00018b2:	6023      	str	r3, [r4, #0]
d00018b4:	bd38      	pop	{r3, r4, r5, pc}
d00018b6:	bf00      	nop
d00018b8:	d004da8c 	.word	0xd004da8c

d00018bc <_getpid_r>:
d00018bc:	f7fe bc1e 	b.w	d00000fc <_getpid>

d00018c0 <__sread>:
d00018c0:	b510      	push	{r4, lr}
d00018c2:	460c      	mov	r4, r1
d00018c4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00018c8:	f000 f894 	bl	d00019f4 <_read_r>
d00018cc:	2800      	cmp	r0, #0
d00018ce:	bfab      	itete	ge
d00018d0:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d00018d2:	89a3      	ldrhlt	r3, [r4, #12]
d00018d4:	181b      	addge	r3, r3, r0
d00018d6:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d00018da:	bfac      	ite	ge
d00018dc:	6563      	strge	r3, [r4, #84]	; 0x54
d00018de:	81a3      	strhlt	r3, [r4, #12]
d00018e0:	bd10      	pop	{r4, pc}

d00018e2 <__swrite>:
d00018e2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00018e6:	461f      	mov	r7, r3
d00018e8:	898b      	ldrh	r3, [r1, #12]
d00018ea:	05db      	lsls	r3, r3, #23
d00018ec:	4605      	mov	r5, r0
d00018ee:	460c      	mov	r4, r1
d00018f0:	4616      	mov	r6, r2
d00018f2:	d505      	bpl.n	d0001900 <__swrite+0x1e>
d00018f4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00018f8:	2302      	movs	r3, #2
d00018fa:	2200      	movs	r2, #0
d00018fc:	f000 f868 	bl	d00019d0 <_lseek_r>
d0001900:	89a3      	ldrh	r3, [r4, #12]
d0001902:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0001906:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d000190a:	81a3      	strh	r3, [r4, #12]
d000190c:	4632      	mov	r2, r6
d000190e:	463b      	mov	r3, r7
d0001910:	4628      	mov	r0, r5
d0001912:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0001916:	f000 b817 	b.w	d0001948 <_write_r>

d000191a <__sseek>:
d000191a:	b510      	push	{r4, lr}
d000191c:	460c      	mov	r4, r1
d000191e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0001922:	f000 f855 	bl	d00019d0 <_lseek_r>
d0001926:	1c43      	adds	r3, r0, #1
d0001928:	89a3      	ldrh	r3, [r4, #12]
d000192a:	bf15      	itete	ne
d000192c:	6560      	strne	r0, [r4, #84]	; 0x54
d000192e:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0001932:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0001936:	81a3      	strheq	r3, [r4, #12]
d0001938:	bf18      	it	ne
d000193a:	81a3      	strhne	r3, [r4, #12]
d000193c:	bd10      	pop	{r4, pc}

d000193e <__sclose>:
d000193e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0001942:	f000 b813 	b.w	d000196c <_close_r>
	...

d0001948 <_write_r>:
d0001948:	b538      	push	{r3, r4, r5, lr}
d000194a:	4d07      	ldr	r5, [pc, #28]	; (d0001968 <_write_r+0x20>)
d000194c:	4604      	mov	r4, r0
d000194e:	4608      	mov	r0, r1
d0001950:	4611      	mov	r1, r2
d0001952:	2200      	movs	r2, #0
d0001954:	602a      	str	r2, [r5, #0]
d0001956:	461a      	mov	r2, r3
d0001958:	f7fe fba6 	bl	d00000a8 <_write>
d000195c:	1c43      	adds	r3, r0, #1
d000195e:	d102      	bne.n	d0001966 <_write_r+0x1e>
d0001960:	682b      	ldr	r3, [r5, #0]
d0001962:	b103      	cbz	r3, d0001966 <_write_r+0x1e>
d0001964:	6023      	str	r3, [r4, #0]
d0001966:	bd38      	pop	{r3, r4, r5, pc}
d0001968:	d004da8c 	.word	0xd004da8c

d000196c <_close_r>:
d000196c:	b538      	push	{r3, r4, r5, lr}
d000196e:	4d06      	ldr	r5, [pc, #24]	; (d0001988 <_close_r+0x1c>)
d0001970:	2300      	movs	r3, #0
d0001972:	4604      	mov	r4, r0
d0001974:	4608      	mov	r0, r1
d0001976:	602b      	str	r3, [r5, #0]
d0001978:	f7fe fba2 	bl	d00000c0 <_close>
d000197c:	1c43      	adds	r3, r0, #1
d000197e:	d102      	bne.n	d0001986 <_close_r+0x1a>
d0001980:	682b      	ldr	r3, [r5, #0]
d0001982:	b103      	cbz	r3, d0001986 <_close_r+0x1a>
d0001984:	6023      	str	r3, [r4, #0]
d0001986:	bd38      	pop	{r3, r4, r5, pc}
d0001988:	d004da8c 	.word	0xd004da8c

d000198c <_fstat_r>:
d000198c:	b538      	push	{r3, r4, r5, lr}
d000198e:	4d07      	ldr	r5, [pc, #28]	; (d00019ac <_fstat_r+0x20>)
d0001990:	2300      	movs	r3, #0
d0001992:	4604      	mov	r4, r0
d0001994:	4608      	mov	r0, r1
d0001996:	4611      	mov	r1, r2
d0001998:	602b      	str	r3, [r5, #0]
d000199a:	f7fe fb95 	bl	d00000c8 <_fstat>
d000199e:	1c43      	adds	r3, r0, #1
d00019a0:	d102      	bne.n	d00019a8 <_fstat_r+0x1c>
d00019a2:	682b      	ldr	r3, [r5, #0]
d00019a4:	b103      	cbz	r3, d00019a8 <_fstat_r+0x1c>
d00019a6:	6023      	str	r3, [r4, #0]
d00019a8:	bd38      	pop	{r3, r4, r5, pc}
d00019aa:	bf00      	nop
d00019ac:	d004da8c 	.word	0xd004da8c

d00019b0 <_isatty_r>:
d00019b0:	b538      	push	{r3, r4, r5, lr}
d00019b2:	4d06      	ldr	r5, [pc, #24]	; (d00019cc <_isatty_r+0x1c>)
d00019b4:	2300      	movs	r3, #0
d00019b6:	4604      	mov	r4, r0
d00019b8:	4608      	mov	r0, r1
d00019ba:	602b      	str	r3, [r5, #0]
d00019bc:	f7fe fb9a 	bl	d00000f4 <_isatty>
d00019c0:	1c43      	adds	r3, r0, #1
d00019c2:	d102      	bne.n	d00019ca <_isatty_r+0x1a>
d00019c4:	682b      	ldr	r3, [r5, #0]
d00019c6:	b103      	cbz	r3, d00019ca <_isatty_r+0x1a>
d00019c8:	6023      	str	r3, [r4, #0]
d00019ca:	bd38      	pop	{r3, r4, r5, pc}
d00019cc:	d004da8c 	.word	0xd004da8c

d00019d0 <_lseek_r>:
d00019d0:	b538      	push	{r3, r4, r5, lr}
d00019d2:	4d07      	ldr	r5, [pc, #28]	; (d00019f0 <_lseek_r+0x20>)
d00019d4:	4604      	mov	r4, r0
d00019d6:	4608      	mov	r0, r1
d00019d8:	4611      	mov	r1, r2
d00019da:	2200      	movs	r2, #0
d00019dc:	602a      	str	r2, [r5, #0]
d00019de:	461a      	mov	r2, r3
d00019e0:	f7fe fb78 	bl	d00000d4 <_lseek>
d00019e4:	1c43      	adds	r3, r0, #1
d00019e6:	d102      	bne.n	d00019ee <_lseek_r+0x1e>
d00019e8:	682b      	ldr	r3, [r5, #0]
d00019ea:	b103      	cbz	r3, d00019ee <_lseek_r+0x1e>
d00019ec:	6023      	str	r3, [r4, #0]
d00019ee:	bd38      	pop	{r3, r4, r5, pc}
d00019f0:	d004da8c 	.word	0xd004da8c

d00019f4 <_read_r>:
d00019f4:	b538      	push	{r3, r4, r5, lr}
d00019f6:	4d07      	ldr	r5, [pc, #28]	; (d0001a14 <_read_r+0x20>)
d00019f8:	4604      	mov	r4, r0
d00019fa:	4608      	mov	r0, r1
d00019fc:	4611      	mov	r1, r2
d00019fe:	2200      	movs	r2, #0
d0001a00:	602a      	str	r2, [r5, #0]
d0001a02:	461a      	mov	r2, r3
d0001a04:	f7fe fb52 	bl	d00000ac <_read>
d0001a08:	1c43      	adds	r3, r0, #1
d0001a0a:	d102      	bne.n	d0001a12 <_read_r+0x1e>
d0001a0c:	682b      	ldr	r3, [r5, #0]
d0001a0e:	b103      	cbz	r3, d0001a12 <_read_r+0x1e>
d0001a10:	6023      	str	r3, [r4, #0]
d0001a12:	bd38      	pop	{r3, r4, r5, pc}
d0001a14:	d004da8c 	.word	0xd004da8c

d0001a18 <_global_impure_ptr>:
d0001a18:	d0001b98 77617244 72694420 20746365     ....Draw Direct 
d0001a28:	4c206f74 44204443 44574152 44574152     to LCD DRAWDRAWD
d0001a38:	206f6d65 302e3156 0a0d0a0d 45455200     emo V1.0.....REE
d0001a48:	6d20544e 6f6c6c61 75732063 65656363     NT malloc succee
d0001a58:	00646564 6975622f 672f646c 742d756e     ded./build/gnu-t
d0001a68:	736c6f6f 726f662d 6d74732d 395f3233     ools-for-stm32_9
d0001a78:	3230322d 32712d30 6470752d 2e657461     -2020-q2-update.
d0001a88:	30323032 31303031 3236312d 72732f31     20201001-1621/sr
d0001a98:	656e2f63 62696c77 77656e2f 2f62696c     c/newlib/newlib/
d0001aa8:	6362696c 6474732f 2f62696c 646e6172     libc/stdlib/rand
d0001ab8:	2c00632e 6e756620 6f697463 00203a6e     .c., function: .
d0001ac8:	65737361 6f697472 2522206e 66202273     assertion "%s" f
d0001ad8:	656c6961 66203a64 20656c69 22732522     ailed: file "%s"
d0001ae8:	696c202c 2520656e 25732564 23000a73     , line %d%s%s..#
d0001af8:	202b302d 4c6c6800 67666500 00474645     -0+ .hlL.efgEFG.
d0001b08:	33323130 37363534 42413938 46454443     0123456789ABCDEF
d0001b18:	32313000 36353433 61393837 65646362     .0123456789abcde
d0001b28:	00000066                                f...

d0001b2c <__sf_fake_stderr>:
	...

d0001b4c <__sf_fake_stdin>:
	...

d0001b6c <__sf_fake_stdout>:
	...

Disassembly of section .init:

d0001b8c <_init>:
d0001b8c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0001b8e:	bf00      	nop

Disassembly of section .fini:

d0001b90 <_fini>:
d0001b90:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0001b92:	bf00      	nop
