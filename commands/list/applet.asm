
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d05e0010 <applet_entry>:
d05e0010:	f000 b8ba 	b.w	d05e0188 <main>

d05e0014 <memset>:
d05e0014:	4402      	add	r2, r0
d05e0016:	4603      	mov	r3, r0
d05e0018:	4293      	cmp	r3, r2
d05e001a:	d100      	bne.n	d05e001e <memset+0xa>
d05e001c:	4770      	bx	lr
d05e001e:	f803 1b01 	strb.w	r1, [r3], #1
d05e0022:	e7f9      	b.n	d05e0018 <memset+0x4>

d05e0024 <print_file_info>:
d05e0024:	2800      	cmp	r0, #0
d05e0026:	f000 8091 	beq.w	d05e014c <print_file_info+0x128>
d05e002a:	b5f0      	push	{r4, r5, r6, r7, lr}
d05e002c:	4d48      	ldr	r5, [pc, #288]	; (d05e0150 <print_file_info+0x12c>)
d05e002e:	460f      	mov	r7, r1
d05e0030:	b085      	sub	sp, #20
d05e0032:	4604      	mov	r4, r0
d05e0034:	68ab      	ldr	r3, [r5, #8]
d05e0036:	4616      	mov	r6, r2
d05e0038:	4846      	ldr	r0, [pc, #280]	; (d05e0154 <print_file_info+0x130>)
d05e003a:	4798      	blx	r3
d05e003c:	4639      	mov	r1, r7
d05e003e:	68ab      	ldr	r3, [r5, #8]
d05e0040:	4845      	ldr	r0, [pc, #276]	; (d05e0158 <print_file_info+0x134>)
d05e0042:	4798      	blx	r3
d05e0044:	68ab      	ldr	r3, [r5, #8]
d05e0046:	6821      	ldr	r1, [r4, #0]
d05e0048:	4844      	ldr	r0, [pc, #272]	; (d05e015c <print_file_info+0x138>)
d05e004a:	4798      	blx	r3
d05e004c:	88e3      	ldrh	r3, [r4, #6]
d05e004e:	88a2      	ldrh	r2, [r4, #4]
d05e0050:	f3c3 1145 	ubfx	r1, r3, #5, #6
d05e0054:	f003 001f 	and.w	r0, r3, #31
d05e0058:	68af      	ldr	r7, [r5, #8]
d05e005a:	0adb      	lsrs	r3, r3, #11
d05e005c:	0040      	lsls	r0, r0, #1
d05e005e:	9101      	str	r1, [sp, #4]
d05e0060:	0a51      	lsrs	r1, r2, #9
d05e0062:	9300      	str	r3, [sp, #0]
d05e0064:	9002      	str	r0, [sp, #8]
d05e0066:	f002 031f 	and.w	r3, r2, #31
d05e006a:	f201 71bc 	addw	r1, r1, #1980	; 0x7bc
d05e006e:	f3c2 1243 	ubfx	r2, r2, #5, #4
d05e0072:	483b      	ldr	r0, [pc, #236]	; (d05e0160 <print_file_info+0x13c>)
d05e0074:	47b8      	blx	r7
d05e0076:	2e00      	cmp	r6, #0
d05e0078:	d061      	beq.n	d05e013e <print_file_info+0x11a>
d05e007a:	68ab      	ldr	r3, [r5, #8]
d05e007c:	4839      	ldr	r0, [pc, #228]	; (d05e0164 <print_file_info+0x140>)
d05e007e:	4798      	blx	r3
d05e0080:	7a22      	ldrb	r2, [r4, #8]
d05e0082:	68ab      	ldr	r3, [r5, #8]
d05e0084:	f012 0f01 	tst.w	r2, #1
d05e0088:	4837      	ldr	r0, [pc, #220]	; (d05e0168 <print_file_info+0x144>)
d05e008a:	bf14      	ite	ne
d05e008c:	2172      	movne	r1, #114	; 0x72
d05e008e:	212d      	moveq	r1, #45	; 0x2d
d05e0090:	4798      	blx	r3
d05e0092:	7a22      	ldrb	r2, [r4, #8]
d05e0094:	68ab      	ldr	r3, [r5, #8]
d05e0096:	f012 0f02 	tst.w	r2, #2
d05e009a:	4833      	ldr	r0, [pc, #204]	; (d05e0168 <print_file_info+0x144>)
d05e009c:	bf14      	ite	ne
d05e009e:	2177      	movne	r1, #119	; 0x77
d05e00a0:	212d      	moveq	r1, #45	; 0x2d
d05e00a2:	4798      	blx	r3
d05e00a4:	7a22      	ldrb	r2, [r4, #8]
d05e00a6:	68ab      	ldr	r3, [r5, #8]
d05e00a8:	f012 0f04 	tst.w	r2, #4
d05e00ac:	482e      	ldr	r0, [pc, #184]	; (d05e0168 <print_file_info+0x144>)
d05e00ae:	bf14      	ite	ne
d05e00b0:	2165      	movne	r1, #101	; 0x65
d05e00b2:	212d      	moveq	r1, #45	; 0x2d
d05e00b4:	4798      	blx	r3
d05e00b6:	7a22      	ldrb	r2, [r4, #8]
d05e00b8:	68ab      	ldr	r3, [r5, #8]
d05e00ba:	f012 0f08 	tst.w	r2, #8
d05e00be:	482a      	ldr	r0, [pc, #168]	; (d05e0168 <print_file_info+0x144>)
d05e00c0:	bf14      	ite	ne
d05e00c2:	2164      	movne	r1, #100	; 0x64
d05e00c4:	212d      	moveq	r1, #45	; 0x2d
d05e00c6:	4798      	blx	r3
d05e00c8:	7a22      	ldrb	r2, [r4, #8]
d05e00ca:	68ab      	ldr	r3, [r5, #8]
d05e00cc:	f012 0f10 	tst.w	r2, #16
d05e00d0:	4825      	ldr	r0, [pc, #148]	; (d05e0168 <print_file_info+0x144>)
d05e00d2:	bf14      	ite	ne
d05e00d4:	2173      	movne	r1, #115	; 0x73
d05e00d6:	212d      	moveq	r1, #45	; 0x2d
d05e00d8:	4798      	blx	r3
d05e00da:	7a22      	ldrb	r2, [r4, #8]
d05e00dc:	68ab      	ldr	r3, [r5, #8]
d05e00de:	f012 0f20 	tst.w	r2, #32
d05e00e2:	4821      	ldr	r0, [pc, #132]	; (d05e0168 <print_file_info+0x144>)
d05e00e4:	bf14      	ite	ne
d05e00e6:	2168      	movne	r1, #104	; 0x68
d05e00e8:	212d      	moveq	r1, #45	; 0x2d
d05e00ea:	4798      	blx	r3
d05e00ec:	68ab      	ldr	r3, [r5, #8]
d05e00ee:	481f      	ldr	r0, [pc, #124]	; (d05e016c <print_file_info+0x148>)
d05e00f0:	4798      	blx	r3
d05e00f2:	7a23      	ldrb	r3, [r4, #8]
d05e00f4:	07de      	lsls	r6, r3, #31
d05e00f6:	d503      	bpl.n	d05e0100 <print_file_info+0xdc>
d05e00f8:	68ab      	ldr	r3, [r5, #8]
d05e00fa:	481d      	ldr	r0, [pc, #116]	; (d05e0170 <print_file_info+0x14c>)
d05e00fc:	4798      	blx	r3
d05e00fe:	7a23      	ldrb	r3, [r4, #8]
d05e0100:	0798      	lsls	r0, r3, #30
d05e0102:	d504      	bpl.n	d05e010e <print_file_info+0xea>
d05e0104:	4b12      	ldr	r3, [pc, #72]	; (d05e0150 <print_file_info+0x12c>)
d05e0106:	481b      	ldr	r0, [pc, #108]	; (d05e0174 <print_file_info+0x150>)
d05e0108:	689b      	ldr	r3, [r3, #8]
d05e010a:	4798      	blx	r3
d05e010c:	7a23      	ldrb	r3, [r4, #8]
d05e010e:	0759      	lsls	r1, r3, #29
d05e0110:	d504      	bpl.n	d05e011c <print_file_info+0xf8>
d05e0112:	4b0f      	ldr	r3, [pc, #60]	; (d05e0150 <print_file_info+0x12c>)
d05e0114:	4818      	ldr	r0, [pc, #96]	; (d05e0178 <print_file_info+0x154>)
d05e0116:	689b      	ldr	r3, [r3, #8]
d05e0118:	4798      	blx	r3
d05e011a:	7a23      	ldrb	r3, [r4, #8]
d05e011c:	06da      	lsls	r2, r3, #27
d05e011e:	d504      	bpl.n	d05e012a <print_file_info+0x106>
d05e0120:	4b0b      	ldr	r3, [pc, #44]	; (d05e0150 <print_file_info+0x12c>)
d05e0122:	4816      	ldr	r0, [pc, #88]	; (d05e017c <print_file_info+0x158>)
d05e0124:	689b      	ldr	r3, [r3, #8]
d05e0126:	4798      	blx	r3
d05e0128:	7a23      	ldrb	r3, [r4, #8]
d05e012a:	069b      	lsls	r3, r3, #26
d05e012c:	d503      	bpl.n	d05e0136 <print_file_info+0x112>
d05e012e:	4b08      	ldr	r3, [pc, #32]	; (d05e0150 <print_file_info+0x12c>)
d05e0130:	4813      	ldr	r0, [pc, #76]	; (d05e0180 <print_file_info+0x15c>)
d05e0132:	689b      	ldr	r3, [r3, #8]
d05e0134:	4798      	blx	r3
d05e0136:	4b06      	ldr	r3, [pc, #24]	; (d05e0150 <print_file_info+0x12c>)
d05e0138:	4812      	ldr	r0, [pc, #72]	; (d05e0184 <print_file_info+0x160>)
d05e013a:	689b      	ldr	r3, [r3, #8]
d05e013c:	4798      	blx	r3
d05e013e:	4b04      	ldr	r3, [pc, #16]	; (d05e0150 <print_file_info+0x12c>)
d05e0140:	4810      	ldr	r0, [pc, #64]	; (d05e0184 <print_file_info+0x160>)
d05e0142:	689b      	ldr	r3, [r3, #8]
d05e0144:	b005      	add	sp, #20
d05e0146:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d05e014a:	4718      	bx	r3
d05e014c:	4770      	bx	lr
d05e014e:	bf00      	nop
d05e0150:	2001f000 	.word	0x2001f000
d05e0154:	d05e025c 	.word	0xd05e025c
d05e0158:	d05e0264 	.word	0xd05e0264
d05e015c:	d05e0270 	.word	0xd05e0270
d05e0160:	d05e0284 	.word	0xd05e0284
d05e0164:	d05e02b0 	.word	0xd05e02b0
d05e0168:	d05e02c0 	.word	0xd05e02c0
d05e016c:	d05e0260 	.word	0xd05e0260
d05e0170:	d05e02c4 	.word	0xd05e02c4
d05e0174:	d05e02d0 	.word	0xd05e02d0
d05e0178:	d05e02dc 	.word	0xd05e02dc
d05e017c:	d05e02e8 	.word	0xd05e02e8
d05e0180:	d05e02f0 	.word	0xd05e02f0
d05e0184:	d05e02fc 	.word	0xd05e02fc

d05e0188 <main>:
d05e0188:	2801      	cmp	r0, #1
d05e018a:	b5f0      	push	{r4, r5, r6, r7, lr}
d05e018c:	b0a7      	sub	sp, #156	; 0x9c
d05e018e:	dd27      	ble.n	d05e01e0 <main+0x58>
d05e0190:	2802      	cmp	r0, #2
d05e0192:	4604      	mov	r4, r0
d05e0194:	460d      	mov	r5, r1
d05e0196:	684e      	ldr	r6, [r1, #4]
d05e0198:	d006      	beq.n	d05e01a8 <main+0x20>
d05e019a:	4918      	ldr	r1, [pc, #96]	; (d05e01fc <main+0x74>)
d05e019c:	68a8      	ldr	r0, [r5, #8]
d05e019e:	f000 f853 	bl	d05e0248 <strcmp>
d05e01a2:	2c03      	cmp	r4, #3
d05e01a4:	d000      	beq.n	d05e01a8 <main+0x20>
d05e01a6:	b308      	cbz	r0, d05e01ec <main+0x64>
d05e01a8:	2700      	movs	r7, #0
d05e01aa:	4d15      	ldr	r5, [pc, #84]	; (d05e0200 <main+0x78>)
d05e01ac:	2298      	movs	r2, #152	; 0x98
d05e01ae:	2100      	movs	r1, #0
d05e01b0:	4668      	mov	r0, sp
d05e01b2:	f7ff ff2f 	bl	d05e0014 <memset>
d05e01b6:	4669      	mov	r1, sp
d05e01b8:	f8d5 3088 	ldr.w	r3, [r5, #136]	; 0x88
d05e01bc:	4630      	mov	r0, r6
d05e01be:	4798      	blx	r3
d05e01c0:	4604      	mov	r4, r0
d05e01c2:	b130      	cbz	r0, d05e01d2 <main+0x4a>
d05e01c4:	480f      	ldr	r0, [pc, #60]	; (d05e0204 <main+0x7c>)
d05e01c6:	4631      	mov	r1, r6
d05e01c8:	68ab      	ldr	r3, [r5, #8]
d05e01ca:	4798      	blx	r3
d05e01cc:	2001      	movs	r0, #1
d05e01ce:	b027      	add	sp, #156	; 0x9c
d05e01d0:	bdf0      	pop	{r4, r5, r6, r7, pc}
d05e01d2:	4668      	mov	r0, sp
d05e01d4:	463a      	mov	r2, r7
d05e01d6:	4631      	mov	r1, r6
d05e01d8:	f7ff ff24 	bl	d05e0024 <print_file_info>
d05e01dc:	4620      	mov	r0, r4
d05e01de:	e7f6      	b.n	d05e01ce <main+0x46>
d05e01e0:	4b07      	ldr	r3, [pc, #28]	; (d05e0200 <main+0x78>)
d05e01e2:	4809      	ldr	r0, [pc, #36]	; (d05e0208 <main+0x80>)
d05e01e4:	689b      	ldr	r3, [r3, #8]
d05e01e6:	4798      	blx	r3
d05e01e8:	2001      	movs	r0, #1
d05e01ea:	e7f0      	b.n	d05e01ce <main+0x46>
d05e01ec:	68e8      	ldr	r0, [r5, #12]
d05e01ee:	4907      	ldr	r1, [pc, #28]	; (d05e020c <main+0x84>)
d05e01f0:	f000 f80e 	bl	d05e0210 <strcasecmp>
d05e01f4:	fab0 f780 	clz	r7, r0
d05e01f8:	097f      	lsrs	r7, r7, #5
d05e01fa:	e7d6      	b.n	d05e01aa <main+0x22>
d05e01fc:	d05e0324 	.word	0xd05e0324
d05e0200:	2001f000 	.word	0x2001f000
d05e0204:	d05e0330 	.word	0xd05e0330
d05e0208:	d05e0300 	.word	0xd05e0300
d05e020c:	d05e0328 	.word	0xd05e0328

d05e0210 <strcasecmp>:
d05e0210:	b570      	push	{r4, r5, r6, lr}
d05e0212:	4d0c      	ldr	r5, [pc, #48]	; (d05e0244 <strcasecmp+0x34>)
d05e0214:	4604      	mov	r4, r0
d05e0216:	462e      	mov	r6, r5
d05e0218:	f814 3b01 	ldrb.w	r3, [r4], #1
d05e021c:	5d5a      	ldrb	r2, [r3, r5]
d05e021e:	f002 0203 	and.w	r2, r2, #3
d05e0222:	2a01      	cmp	r2, #1
d05e0224:	f811 2b01 	ldrb.w	r2, [r1], #1
d05e0228:	5cb0      	ldrb	r0, [r6, r2]
d05e022a:	f000 0003 	and.w	r0, r0, #3
d05e022e:	bf08      	it	eq
d05e0230:	3320      	addeq	r3, #32
d05e0232:	2801      	cmp	r0, #1
d05e0234:	bf08      	it	eq
d05e0236:	3220      	addeq	r2, #32
d05e0238:	1a98      	subs	r0, r3, r2
d05e023a:	d101      	bne.n	d05e0240 <strcasecmp+0x30>
d05e023c:	2a00      	cmp	r2, #0
d05e023e:	d1eb      	bne.n	d05e0218 <strcasecmp+0x8>
d05e0240:	bd70      	pop	{r4, r5, r6, pc}
d05e0242:	bf00      	nop
d05e0244:	d05e034d 	.word	0xd05e034d

d05e0248 <strcmp>:
d05e0248:	f810 2b01 	ldrb.w	r2, [r0], #1
d05e024c:	f811 3b01 	ldrb.w	r3, [r1], #1
d05e0250:	2a01      	cmp	r2, #1
d05e0252:	bf28      	it	cs
d05e0254:	429a      	cmpcs	r2, r3
d05e0256:	d0f7      	beq.n	d05e0248 <strcmp>
d05e0258:	1ad0      	subs	r0, r2, r3
d05e025a:	4770      	bx	lr
d05e025c:	200a0d20 	.word	0x200a0d20
d05e0260:	00000a0d 	.word	0x00000a0d
d05e0264:	656c6946 	.word	0x656c6946
d05e0268:	7325203a 	.word	0x7325203a
d05e026c:	00000a0d 	.word	0x00000a0d
d05e0270:	69532020 	.word	0x69532020
d05e0274:	203a657a 	.word	0x203a657a
d05e0278:	20756c25 	.word	0x20756c25
d05e027c:	65747962 	.word	0x65747962
d05e0280:	000a0d73 	.word	0x000a0d73
d05e0284:	72432020 	.word	0x72432020
d05e0288:	65746165 	.word	0x65746165
d05e028c:	25203a64 	.word	0x25203a64
d05e0290:	2d753430 	.word	0x2d753430
d05e0294:	75323025 	.word	0x75323025
d05e0298:	3230252d 	.word	0x3230252d
d05e029c:	30252075 	.word	0x30252075
d05e02a0:	253a7532 	.word	0x253a7532
d05e02a4:	3a753230 	.word	0x3a753230
d05e02a8:	75323025 	.word	0x75323025
d05e02ac:	00000a0d 	.word	0x00000a0d
d05e02b0:	74412020 	.word	0x74412020
d05e02b4:	62697274 	.word	0x62697274
d05e02b8:	73657475 	.word	0x73657475
d05e02bc:	0000203a 	.word	0x0000203a
d05e02c0:	00006325 	.word	0x00006325
d05e02c4:	45525b20 	.word	0x45525b20
d05e02c8:	4e4f4441 	.word	0x4e4f4441
d05e02cc:	005d594c 	.word	0x005d594c
d05e02d0:	49485b20 	.word	0x49485b20
d05e02d4:	4e454444 	.word	0x4e454444
d05e02d8:	0000005d 	.word	0x0000005d
d05e02dc:	59535b20 	.word	0x59535b20
d05e02e0:	4d455453 	.word	0x4d455453
d05e02e4:	0000005d 	.word	0x0000005d
d05e02e8:	49445b20 	.word	0x49445b20
d05e02ec:	00005d52 	.word	0x00005d52
d05e02f0:	52415b20 	.word	0x52415b20
d05e02f4:	56494843 	.word	0x56494843
d05e02f8:	00005d45 	.word	0x00005d45
d05e02fc:	000a0d20 	.word	0x000a0d20
d05e0300:	67617355 	.word	0x67617355
d05e0304:	6c203a65 	.word	0x6c203a65
d05e0308:	20747369 	.word	0x20747369
d05e030c:	6c69663c 	.word	0x6c69663c
d05e0310:	6d616e65 	.word	0x6d616e65
d05e0314:	5b203e65 	.word	0x5b203e65
d05e0318:	46206f2d 	.word	0x46206f2d
d05e031c:	5d4c4c55 	.word	0x5d4c4c55
d05e0320:	00000a0d 	.word	0x00000a0d
d05e0324:	00006f2d 	.word	0x00006f2d
d05e0328:	4c4c5546 	.word	0x4c4c5546
d05e032c:	00000000 	.word	0x00000000
d05e0330:	6f727245 	.word	0x6f727245
d05e0334:	46203a72 	.word	0x46203a72
d05e0338:	20656c69 	.word	0x20656c69
d05e033c:	20746f6e 	.word	0x20746f6e
d05e0340:	6e756f66 	.word	0x6e756f66
d05e0344:	25203a64 	.word	0x25203a64
d05e0348:	000a0d73 	.word	0x000a0d73

d05e034c <_ctype_>:
d05e034c:	20202000 20202020 28282020 20282828     .         ((((( 
d05e035c:	20202020 20202020 20202020 20202020                     
d05e036c:	10108820 10101010 10101010 10101010      ...............
d05e037c:	04040410 04040404 10040404 10101010     ................
d05e038c:	41411010 41414141 01010101 01010101     ..AAAAAA........
d05e039c:	01010101 01010101 01010101 10101010     ................
d05e03ac:	42421010 42424242 02020202 02020202     ..BBBBBB........
d05e03bc:	02020202 02020202 02020202 10101010     ................
d05e03cc:	00000020 00000000 00000000 00000000      ...............
	...

Disassembly of section .init:

d05e0450 <_init>:
d05e0450:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0452:	bf00      	nop

Disassembly of section .fini:

d05e0454 <_fini>:
d05e0454:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0456:	bf00      	nop
