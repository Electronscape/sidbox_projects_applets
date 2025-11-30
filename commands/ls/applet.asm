
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d05e0010 <applet_entry>:
d05e0010:	f000 b824 	b.w	d05e005c <main>

d05e0014 <memset>:
d05e0014:	4402      	add	r2, r0
d05e0016:	4603      	mov	r3, r0
d05e0018:	4293      	cmp	r3, r2
d05e001a:	d100      	bne.n	d05e001e <memset+0xa>
d05e001c:	4770      	bx	lr
d05e001e:	f803 1b01 	strb.w	r1, [r3], #1
d05e0022:	e7f9      	b.n	d05e0018 <memset+0x4>

d05e0024 <_sbrk>:
d05e0024:	4904      	ldr	r1, [pc, #16]	; (d05e0038 <_sbrk+0x14>)
d05e0026:	4a05      	ldr	r2, [pc, #20]	; (d05e003c <_sbrk+0x18>)
d05e0028:	680b      	ldr	r3, [r1, #0]
d05e002a:	2b00      	cmp	r3, #0
d05e002c:	bf08      	it	eq
d05e002e:	4613      	moveq	r3, r2
d05e0030:	181a      	adds	r2, r3, r0
d05e0032:	4618      	mov	r0, r3
d05e0034:	600a      	str	r2, [r1, #0]
d05e0036:	4770      	bx	lr
d05e0038:	d05e1118 	.word	0xd05e1118
d05e003c:	d05e1131 	.word	0xd05e1131

d05e0040 <compare_entries>:
d05e0040:	f890 2084 	ldrb.w	r2, [r0, #132]	; 0x84
d05e0044:	f891 3084 	ldrb.w	r3, [r1, #132]	; 0x84
d05e0048:	f3c2 1200 	ubfx	r2, r2, #4, #1
d05e004c:	f3c3 1300 	ubfx	r3, r3, #4, #1
d05e0050:	429a      	cmp	r2, r3
d05e0052:	d001      	beq.n	d05e0058 <compare_entries+0x18>
d05e0054:	1a98      	subs	r0, r3, r2
d05e0056:	4770      	bx	lr
d05e0058:	f000 baa2 	b.w	d05e05a0 <strcasecmp>

d05e005c <main>:
d05e005c:	4a6c      	ldr	r2, [pc, #432]	; (d05e0210 <main+0x1b4>)
d05e005e:	2801      	cmp	r0, #1
d05e0060:	6813      	ldr	r3, [r2, #0]
d05e0062:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05e0066:	f023 0310 	bic.w	r3, r3, #16
d05e006a:	f5ad 3d88 	sub.w	sp, sp, #69632	; 0x11000
d05e006e:	6013      	str	r3, [r2, #0]
d05e0070:	b0e7      	sub	sp, #412	; 0x19c
d05e0072:	f300 80aa 	bgt.w	d05e01ca <main+0x16e>
d05e0076:	f10d 0898 	add.w	r8, sp, #152	; 0x98
d05e007a:	4b66      	ldr	r3, [pc, #408]	; (d05e0214 <main+0x1b8>)
d05e007c:	4c66      	ldr	r4, [pc, #408]	; (d05e0218 <main+0x1bc>)
d05e007e:	6e9b      	ldr	r3, [r3, #104]	; 0x68
d05e0080:	4640      	mov	r0, r8
d05e0082:	4798      	blx	r3
d05e0084:	4641      	mov	r1, r8
d05e0086:	4620      	mov	r0, r4
d05e0088:	f000 fa6a 	bl	d05e0560 <siprintf>
d05e008c:	4d61      	ldr	r5, [pc, #388]	; (d05e0214 <main+0x1b8>)
d05e008e:	4621      	mov	r1, r4
d05e0090:	2000      	movs	r0, #0
d05e0092:	6f2b      	ldr	r3, [r5, #112]	; 0x70
d05e0094:	4798      	blx	r3
d05e0096:	4607      	mov	r7, r0
d05e0098:	2800      	cmp	r0, #0
d05e009a:	f040 809e 	bne.w	d05e01da <main+0x17e>
d05e009e:	4606      	mov	r6, r0
d05e00a0:	e00d      	b.n	d05e00be <main+0x62>
d05e00a2:	f000 fa99 	bl	d05e05d8 <strncpy>
d05e00a6:	3601      	adds	r6, #1
d05e00a8:	9a00      	ldr	r2, [sp, #0]
d05e00aa:	f89d 3008 	ldrb.w	r3, [sp, #8]
d05e00ae:	f8c4 2080 	str.w	r2, [r4, #128]	; 0x80
d05e00b2:	f884 3084 	strb.w	r3, [r4, #132]	; 0x84
d05e00b6:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
d05e00ba:	f000 8094 	beq.w	d05e01e6 <main+0x18a>
d05e00be:	2298      	movs	r2, #152	; 0x98
d05e00c0:	2100      	movs	r1, #0
d05e00c2:	4668      	mov	r0, sp
d05e00c4:	eb06 1406 	add.w	r4, r6, r6, lsl #4
d05e00c8:	f7ff ffa4 	bl	d05e0014 <memset>
d05e00cc:	6fab      	ldr	r3, [r5, #120]	; 0x78
d05e00ce:	4669      	mov	r1, sp
d05e00d0:	2000      	movs	r0, #0
d05e00d2:	4798      	blx	r3
d05e00d4:	ab66      	add	r3, sp, #408	; 0x198
d05e00d6:	f642 6c2e 	movw	ip, #11822	; 0x2e2e
d05e00da:	227f      	movs	r2, #127	; 0x7f
d05e00dc:	f10d 0116 	add.w	r1, sp, #22
d05e00e0:	eb03 04c4 	add.w	r4, r3, r4, lsl #3
d05e00e4:	b968      	cbnz	r0, d05e0102 <main+0xa6>
d05e00e6:	f89d 3016 	ldrb.w	r3, [sp, #22]
d05e00ea:	4620      	mov	r0, r4
d05e00ec:	b14b      	cbz	r3, d05e0102 <main+0xa6>
d05e00ee:	f8bd 3016 	ldrh.w	r3, [sp, #22]
d05e00f2:	2b2e      	cmp	r3, #46	; 0x2e
d05e00f4:	d0df      	beq.n	d05e00b6 <main+0x5a>
d05e00f6:	4563      	cmp	r3, ip
d05e00f8:	d1d3      	bne.n	d05e00a2 <main+0x46>
d05e00fa:	788b      	ldrb	r3, [r1, #2]
d05e00fc:	2b00      	cmp	r3, #0
d05e00fe:	d0da      	beq.n	d05e00b6 <main+0x5a>
d05e0100:	e7cf      	b.n	d05e00a2 <main+0x46>
d05e0102:	4c44      	ldr	r4, [pc, #272]	; (d05e0214 <main+0x1b8>)
d05e0104:	2000      	movs	r0, #0
d05e0106:	6f63      	ldr	r3, [r4, #116]	; 0x74
d05e0108:	4798      	blx	r3
d05e010a:	4631      	mov	r1, r6
d05e010c:	4b43      	ldr	r3, [pc, #268]	; (d05e021c <main+0x1c0>)
d05e010e:	2288      	movs	r2, #136	; 0x88
d05e0110:	a866      	add	r0, sp, #408	; 0x198
d05e0112:	f000 f8d4 	bl	d05e02be <qsort>
d05e0116:	68a3      	ldr	r3, [r4, #8]
d05e0118:	4841      	ldr	r0, [pc, #260]	; (d05e0220 <main+0x1c4>)
d05e011a:	4798      	blx	r3
d05e011c:	68a3      	ldr	r3, [r4, #8]
d05e011e:	4641      	mov	r1, r8
d05e0120:	4840      	ldr	r0, [pc, #256]	; (d05e0224 <main+0x1c8>)
d05e0122:	4798      	blx	r3
d05e0124:	2e00      	cmp	r6, #0
d05e0126:	d070      	beq.n	d05e020a <main+0x1ae>
d05e0128:	ad66      	add	r5, sp, #408	; 0x198
d05e012a:	f04f 0888 	mov.w	r8, #136	; 0x88
d05e012e:	f04f 0900 	mov.w	r9, #0
d05e0132:	f8df a0e0 	ldr.w	sl, [pc, #224]	; d05e0214 <main+0x1b8>
d05e0136:	fb08 5806 	mla	r8, r8, r6, r5
d05e013a:	462c      	mov	r4, r5
d05e013c:	4e3a      	ldr	r6, [pc, #232]	; (d05e0228 <main+0x1cc>)
d05e013e:	f894 3084 	ldrb.w	r3, [r4, #132]	; 0x84
d05e0142:	4621      	mov	r1, r4
d05e0144:	4630      	mov	r0, r6
d05e0146:	3488      	adds	r4, #136	; 0x88
d05e0148:	06da      	lsls	r2, r3, #27
d05e014a:	d504      	bpl.n	d05e0156 <main+0xfa>
d05e014c:	f8da 3008 	ldr.w	r3, [sl, #8]
d05e0150:	f109 0901 	add.w	r9, r9, #1
d05e0154:	4798      	blx	r3
d05e0156:	4544      	cmp	r4, r8
d05e0158:	d1f1      	bne.n	d05e013e <main+0xe2>
d05e015a:	2600      	movs	r6, #0
d05e015c:	4c2d      	ldr	r4, [pc, #180]	; (d05e0214 <main+0x1b8>)
d05e015e:	f8df b0e4 	ldr.w	fp, [pc, #228]	; d05e0244 <main+0x1e8>
d05e0162:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d05e0248 <main+0x1ec>
d05e0166:	f895 3084 	ldrb.w	r3, [r5, #132]	; 0x84
d05e016a:	4658      	mov	r0, fp
d05e016c:	06db      	lsls	r3, r3, #27
d05e016e:	d40e      	bmi.n	d05e018e <main+0x132>
d05e0170:	f8d5 1080 	ldr.w	r1, [r5, #128]	; 0x80
d05e0174:	3601      	adds	r6, #1
d05e0176:	68a3      	ldr	r3, [r4, #8]
d05e0178:	f201 31ff 	addw	r1, r1, #1023	; 0x3ff
d05e017c:	0a89      	lsrs	r1, r1, #10
d05e017e:	4798      	blx	r3
d05e0180:	68a3      	ldr	r3, [r4, #8]
d05e0182:	4629      	mov	r1, r5
d05e0184:	4650      	mov	r0, sl
d05e0186:	4798      	blx	r3
d05e0188:	f8d5 3080 	ldr.w	r3, [r5, #128]	; 0x80
d05e018c:	441f      	add	r7, r3
d05e018e:	3588      	adds	r5, #136	; 0x88
d05e0190:	4545      	cmp	r5, r8
d05e0192:	d1e8      	bne.n	d05e0166 <main+0x10a>
d05e0194:	4c1f      	ldr	r4, [pc, #124]	; (d05e0214 <main+0x1b8>)
d05e0196:	4825      	ldr	r0, [pc, #148]	; (d05e022c <main+0x1d0>)
d05e0198:	68a3      	ldr	r3, [r4, #8]
d05e019a:	4798      	blx	r3
d05e019c:	4631      	mov	r1, r6
d05e019e:	68a3      	ldr	r3, [r4, #8]
d05e01a0:	4823      	ldr	r0, [pc, #140]	; (d05e0230 <main+0x1d4>)
d05e01a2:	4798      	blx	r3
d05e01a4:	4649      	mov	r1, r9
d05e01a6:	68a3      	ldr	r3, [r4, #8]
d05e01a8:	4822      	ldr	r0, [pc, #136]	; (d05e0234 <main+0x1d8>)
d05e01aa:	4798      	blx	r3
d05e01ac:	f207 31ff 	addw	r1, r7, #1023	; 0x3ff
d05e01b0:	68a3      	ldr	r3, [r4, #8]
d05e01b2:	0a89      	lsrs	r1, r1, #10
d05e01b4:	4820      	ldr	r0, [pc, #128]	; (d05e0238 <main+0x1dc>)
d05e01b6:	4798      	blx	r3
d05e01b8:	4820      	ldr	r0, [pc, #128]	; (d05e023c <main+0x1e0>)
d05e01ba:	68a3      	ldr	r3, [r4, #8]
d05e01bc:	4798      	blx	r3
d05e01be:	2000      	movs	r0, #0
d05e01c0:	f50d 3d88 	add.w	sp, sp, #69632	; 0x11000
d05e01c4:	b067      	add	sp, #412	; 0x19c
d05e01c6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e01ca:	684c      	ldr	r4, [r1, #4]
d05e01cc:	f10d 0898 	add.w	r8, sp, #152	; 0x98
d05e01d0:	4621      	mov	r1, r4
d05e01d2:	4640      	mov	r0, r8
d05e01d4:	f000 f9c4 	bl	d05e0560 <siprintf>
d05e01d8:	e758      	b.n	d05e008c <main+0x30>
d05e01da:	4819      	ldr	r0, [pc, #100]	; (d05e0240 <main+0x1e4>)
d05e01dc:	4621      	mov	r1, r4
d05e01de:	68ab      	ldr	r3, [r5, #8]
d05e01e0:	4798      	blx	r3
d05e01e2:	2001      	movs	r0, #1
d05e01e4:	e7ec      	b.n	d05e01c0 <main+0x164>
d05e01e6:	4c0b      	ldr	r4, [pc, #44]	; (d05e0214 <main+0x1b8>)
d05e01e8:	2000      	movs	r0, #0
d05e01ea:	6f63      	ldr	r3, [r4, #116]	; 0x74
d05e01ec:	4798      	blx	r3
d05e01ee:	4631      	mov	r1, r6
d05e01f0:	2288      	movs	r2, #136	; 0x88
d05e01f2:	a866      	add	r0, sp, #408	; 0x198
d05e01f4:	4b09      	ldr	r3, [pc, #36]	; (d05e021c <main+0x1c0>)
d05e01f6:	f000 f862 	bl	d05e02be <qsort>
d05e01fa:	68a3      	ldr	r3, [r4, #8]
d05e01fc:	4808      	ldr	r0, [pc, #32]	; (d05e0220 <main+0x1c4>)
d05e01fe:	4798      	blx	r3
d05e0200:	68a3      	ldr	r3, [r4, #8]
d05e0202:	4641      	mov	r1, r8
d05e0204:	4807      	ldr	r0, [pc, #28]	; (d05e0224 <main+0x1c8>)
d05e0206:	4798      	blx	r3
d05e0208:	e78e      	b.n	d05e0128 <main+0xcc>
d05e020a:	46b1      	mov	r9, r6
d05e020c:	e7c2      	b.n	d05e0194 <main+0x138>
d05e020e:	bf00      	nop
d05e0210:	e000ed14 	.word	0xe000ed14
d05e0214:	2001f000 	.word	0x2001f000
d05e0218:	d05e0ebc 	.word	0xd05e0ebc
d05e021c:	d05e0041 	.word	0xd05e0041
d05e0220:	d05e0ee8 	.word	0xd05e0ee8
d05e0224:	d05e0ef8 	.word	0xd05e0ef8
d05e0228:	d05e0f04 	.word	0xd05e0f04
d05e022c:	d05e0f24 	.word	0xd05e0f24
d05e0230:	d05e0f44 	.word	0xd05e0f44
d05e0234:	d05e0f54 	.word	0xd05e0f54
d05e0238:	d05e0f60 	.word	0xd05e0f60
d05e023c:	d05e0f6c 	.word	0xd05e0f6c
d05e0240:	d05e0ec0 	.word	0xd05e0ec0
d05e0244:	d05e0f14 	.word	0xd05e0f14
d05e0248:	d05e0f1c 	.word	0xd05e0f1c

d05e024c <swapfunc>:
d05e024c:	2b02      	cmp	r3, #2
d05e024e:	b510      	push	{r4, lr}
d05e0250:	d00a      	beq.n	d05e0268 <swapfunc+0x1c>
d05e0252:	0892      	lsrs	r2, r2, #2
d05e0254:	3a01      	subs	r2, #1
d05e0256:	6803      	ldr	r3, [r0, #0]
d05e0258:	680c      	ldr	r4, [r1, #0]
d05e025a:	f840 4b04 	str.w	r4, [r0], #4
d05e025e:	2a00      	cmp	r2, #0
d05e0260:	f841 3b04 	str.w	r3, [r1], #4
d05e0264:	dcf6      	bgt.n	d05e0254 <swapfunc+0x8>
d05e0266:	bd10      	pop	{r4, pc}
d05e0268:	4402      	add	r2, r0
d05e026a:	780c      	ldrb	r4, [r1, #0]
d05e026c:	7803      	ldrb	r3, [r0, #0]
d05e026e:	f800 4b01 	strb.w	r4, [r0], #1
d05e0272:	f801 3b01 	strb.w	r3, [r1], #1
d05e0276:	1a13      	subs	r3, r2, r0
d05e0278:	2b00      	cmp	r3, #0
d05e027a:	dcf6      	bgt.n	d05e026a <swapfunc+0x1e>
d05e027c:	e7f3      	b.n	d05e0266 <swapfunc+0x1a>

d05e027e <med3.isra.0>:
d05e027e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0280:	460f      	mov	r7, r1
d05e0282:	4614      	mov	r4, r2
d05e0284:	4606      	mov	r6, r0
d05e0286:	461d      	mov	r5, r3
d05e0288:	4798      	blx	r3
d05e028a:	2800      	cmp	r0, #0
d05e028c:	4621      	mov	r1, r4
d05e028e:	4638      	mov	r0, r7
d05e0290:	da0c      	bge.n	d05e02ac <med3.isra.0+0x2e>
d05e0292:	47a8      	blx	r5
d05e0294:	2800      	cmp	r0, #0
d05e0296:	da02      	bge.n	d05e029e <med3.isra.0+0x20>
d05e0298:	463c      	mov	r4, r7
d05e029a:	4620      	mov	r0, r4
d05e029c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e029e:	4621      	mov	r1, r4
d05e02a0:	4630      	mov	r0, r6
d05e02a2:	47a8      	blx	r5
d05e02a4:	2800      	cmp	r0, #0
d05e02a6:	dbf8      	blt.n	d05e029a <med3.isra.0+0x1c>
d05e02a8:	4634      	mov	r4, r6
d05e02aa:	e7f6      	b.n	d05e029a <med3.isra.0+0x1c>
d05e02ac:	47a8      	blx	r5
d05e02ae:	2800      	cmp	r0, #0
d05e02b0:	dcf2      	bgt.n	d05e0298 <med3.isra.0+0x1a>
d05e02b2:	4621      	mov	r1, r4
d05e02b4:	4630      	mov	r0, r6
d05e02b6:	47a8      	blx	r5
d05e02b8:	2800      	cmp	r0, #0
d05e02ba:	daee      	bge.n	d05e029a <med3.isra.0+0x1c>
d05e02bc:	e7f4      	b.n	d05e02a8 <med3.isra.0+0x2a>

d05e02be <qsort>:
d05e02be:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05e02c2:	469a      	mov	sl, r3
d05e02c4:	ea40 0302 	orr.w	r3, r0, r2
d05e02c8:	079b      	lsls	r3, r3, #30
d05e02ca:	b097      	sub	sp, #92	; 0x5c
d05e02cc:	4606      	mov	r6, r0
d05e02ce:	4614      	mov	r4, r2
d05e02d0:	d11a      	bne.n	d05e0308 <qsort+0x4a>
d05e02d2:	f1b2 0804 	subs.w	r8, r2, #4
d05e02d6:	bf18      	it	ne
d05e02d8:	f04f 0801 	movne.w	r8, #1
d05e02dc:	2300      	movs	r3, #0
d05e02de:	9302      	str	r3, [sp, #8]
d05e02e0:	1933      	adds	r3, r6, r4
d05e02e2:	fb04 f701 	mul.w	r7, r4, r1
d05e02e6:	9301      	str	r3, [sp, #4]
d05e02e8:	2906      	cmp	r1, #6
d05e02ea:	eb06 0307 	add.w	r3, r6, r7
d05e02ee:	9303      	str	r3, [sp, #12]
d05e02f0:	d82a      	bhi.n	d05e0348 <qsort+0x8a>
d05e02f2:	9b01      	ldr	r3, [sp, #4]
d05e02f4:	9a03      	ldr	r2, [sp, #12]
d05e02f6:	4293      	cmp	r3, r2
d05e02f8:	d310      	bcc.n	d05e031c <qsort+0x5e>
d05e02fa:	9b02      	ldr	r3, [sp, #8]
d05e02fc:	2b00      	cmp	r3, #0
d05e02fe:	f040 811f 	bne.w	d05e0540 <qsort+0x282>
d05e0302:	b017      	add	sp, #92	; 0x5c
d05e0304:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e0308:	f04f 0802 	mov.w	r8, #2
d05e030c:	e7e6      	b.n	d05e02dc <qsort+0x1e>
d05e030e:	4643      	mov	r3, r8
d05e0310:	4622      	mov	r2, r4
d05e0312:	4639      	mov	r1, r7
d05e0314:	4628      	mov	r0, r5
d05e0316:	f7ff ff99 	bl	d05e024c <swapfunc>
d05e031a:	e00e      	b.n	d05e033a <qsort+0x7c>
d05e031c:	9d01      	ldr	r5, [sp, #4]
d05e031e:	e00d      	b.n	d05e033c <qsort+0x7e>
d05e0320:	1b2f      	subs	r7, r5, r4
d05e0322:	4629      	mov	r1, r5
d05e0324:	4638      	mov	r0, r7
d05e0326:	47d0      	blx	sl
d05e0328:	2800      	cmp	r0, #0
d05e032a:	dd09      	ble.n	d05e0340 <qsort+0x82>
d05e032c:	f1b8 0f00 	cmp.w	r8, #0
d05e0330:	d1ed      	bne.n	d05e030e <qsort+0x50>
d05e0332:	682b      	ldr	r3, [r5, #0]
d05e0334:	683a      	ldr	r2, [r7, #0]
d05e0336:	602a      	str	r2, [r5, #0]
d05e0338:	603b      	str	r3, [r7, #0]
d05e033a:	463d      	mov	r5, r7
d05e033c:	42ae      	cmp	r6, r5
d05e033e:	d3ef      	bcc.n	d05e0320 <qsort+0x62>
d05e0340:	9b01      	ldr	r3, [sp, #4]
d05e0342:	4423      	add	r3, r4
d05e0344:	9301      	str	r3, [sp, #4]
d05e0346:	e7d4      	b.n	d05e02f2 <qsort+0x34>
d05e0348:	ea4f 0951 	mov.w	r9, r1, lsr #1
d05e034c:	1b3f      	subs	r7, r7, r4
d05e034e:	2907      	cmp	r1, #7
d05e0350:	fb04 6909 	mla	r9, r4, r9, r6
d05e0354:	4437      	add	r7, r6
d05e0356:	d022      	beq.n	d05e039e <qsort+0xe0>
d05e0358:	2928      	cmp	r1, #40	; 0x28
d05e035a:	d945      	bls.n	d05e03e8 <qsort+0x12a>
d05e035c:	08c9      	lsrs	r1, r1, #3
d05e035e:	fb04 f501 	mul.w	r5, r4, r1
d05e0362:	4653      	mov	r3, sl
d05e0364:	eb06 0245 	add.w	r2, r6, r5, lsl #1
d05e0368:	1971      	adds	r1, r6, r5
d05e036a:	4630      	mov	r0, r6
d05e036c:	f7ff ff87 	bl	d05e027e <med3.isra.0>
d05e0370:	4649      	mov	r1, r9
d05e0372:	eb09 0205 	add.w	r2, r9, r5
d05e0376:	4653      	mov	r3, sl
d05e0378:	4683      	mov	fp, r0
d05e037a:	1b48      	subs	r0, r1, r5
d05e037c:	f7ff ff7f 	bl	d05e027e <med3.isra.0>
d05e0380:	463a      	mov	r2, r7
d05e0382:	4681      	mov	r9, r0
d05e0384:	4653      	mov	r3, sl
d05e0386:	1b79      	subs	r1, r7, r5
d05e0388:	eba7 0045 	sub.w	r0, r7, r5, lsl #1
d05e038c:	f7ff ff77 	bl	d05e027e <med3.isra.0>
d05e0390:	4602      	mov	r2, r0
d05e0392:	4649      	mov	r1, r9
d05e0394:	4653      	mov	r3, sl
d05e0396:	4658      	mov	r0, fp
d05e0398:	f7ff ff71 	bl	d05e027e <med3.isra.0>
d05e039c:	4681      	mov	r9, r0
d05e039e:	f1b8 0f00 	cmp.w	r8, #0
d05e03a2:	d124      	bne.n	d05e03ee <qsort+0x130>
d05e03a4:	6833      	ldr	r3, [r6, #0]
d05e03a6:	f8d9 2000 	ldr.w	r2, [r9]
d05e03aa:	6032      	str	r2, [r6, #0]
d05e03ac:	f8c9 3000 	str.w	r3, [r9]
d05e03b0:	eb06 0b04 	add.w	fp, r6, r4
d05e03b4:	46b9      	mov	r9, r7
d05e03b6:	465d      	mov	r5, fp
d05e03b8:	2300      	movs	r3, #0
d05e03ba:	45bb      	cmp	fp, r7
d05e03bc:	d835      	bhi.n	d05e042a <qsort+0x16c>
d05e03be:	4631      	mov	r1, r6
d05e03c0:	4658      	mov	r0, fp
d05e03c2:	9304      	str	r3, [sp, #16]
d05e03c4:	47d0      	blx	sl
d05e03c6:	2800      	cmp	r0, #0
d05e03c8:	9b04      	ldr	r3, [sp, #16]
d05e03ca:	dc3e      	bgt.n	d05e044a <qsort+0x18c>
d05e03cc:	d10a      	bne.n	d05e03e4 <qsort+0x126>
d05e03ce:	f1b8 0f00 	cmp.w	r8, #0
d05e03d2:	d113      	bne.n	d05e03fc <qsort+0x13e>
d05e03d4:	682b      	ldr	r3, [r5, #0]
d05e03d6:	f8db 2000 	ldr.w	r2, [fp]
d05e03da:	602a      	str	r2, [r5, #0]
d05e03dc:	f8cb 3000 	str.w	r3, [fp]
d05e03e0:	4425      	add	r5, r4
d05e03e2:	2301      	movs	r3, #1
d05e03e4:	44a3      	add	fp, r4
d05e03e6:	e7e8      	b.n	d05e03ba <qsort+0xfc>
d05e03e8:	463a      	mov	r2, r7
d05e03ea:	46b3      	mov	fp, r6
d05e03ec:	e7d1      	b.n	d05e0392 <qsort+0xd4>
d05e03ee:	4643      	mov	r3, r8
d05e03f0:	4622      	mov	r2, r4
d05e03f2:	4649      	mov	r1, r9
d05e03f4:	4630      	mov	r0, r6
d05e03f6:	f7ff ff29 	bl	d05e024c <swapfunc>
d05e03fa:	e7d9      	b.n	d05e03b0 <qsort+0xf2>
d05e03fc:	4643      	mov	r3, r8
d05e03fe:	4622      	mov	r2, r4
d05e0400:	4659      	mov	r1, fp
d05e0402:	4628      	mov	r0, r5
d05e0404:	f7ff ff22 	bl	d05e024c <swapfunc>
d05e0408:	e7ea      	b.n	d05e03e0 <qsort+0x122>
d05e040a:	d10b      	bne.n	d05e0424 <qsort+0x166>
d05e040c:	f1b8 0f00 	cmp.w	r8, #0
d05e0410:	d114      	bne.n	d05e043c <qsort+0x17e>
d05e0412:	683b      	ldr	r3, [r7, #0]
d05e0414:	f8d9 2000 	ldr.w	r2, [r9]
d05e0418:	603a      	str	r2, [r7, #0]
d05e041a:	f8c9 3000 	str.w	r3, [r9]
d05e041e:	eba9 0904 	sub.w	r9, r9, r4
d05e0422:	2301      	movs	r3, #1
d05e0424:	9f04      	ldr	r7, [sp, #16]
d05e0426:	45bb      	cmp	fp, r7
d05e0428:	d90f      	bls.n	d05e044a <qsort+0x18c>
d05e042a:	2b00      	cmp	r3, #0
d05e042c:	d143      	bne.n	d05e04b6 <qsort+0x1f8>
d05e042e:	9b01      	ldr	r3, [sp, #4]
d05e0430:	9a03      	ldr	r2, [sp, #12]
d05e0432:	4293      	cmp	r3, r2
d05e0434:	f4bf af61 	bcs.w	d05e02fa <qsort+0x3c>
d05e0438:	9d01      	ldr	r5, [sp, #4]
d05e043a:	e036      	b.n	d05e04aa <qsort+0x1ec>
d05e043c:	4643      	mov	r3, r8
d05e043e:	4622      	mov	r2, r4
d05e0440:	4649      	mov	r1, r9
d05e0442:	4638      	mov	r0, r7
d05e0444:	f7ff ff02 	bl	d05e024c <swapfunc>
d05e0448:	e7e9      	b.n	d05e041e <qsort+0x160>
d05e044a:	4631      	mov	r1, r6
d05e044c:	4638      	mov	r0, r7
d05e044e:	9305      	str	r3, [sp, #20]
d05e0450:	47d0      	blx	sl
d05e0452:	1b3b      	subs	r3, r7, r4
d05e0454:	2800      	cmp	r0, #0
d05e0456:	9304      	str	r3, [sp, #16]
d05e0458:	9b05      	ldr	r3, [sp, #20]
d05e045a:	dad6      	bge.n	d05e040a <qsort+0x14c>
d05e045c:	f1b8 0f00 	cmp.w	r8, #0
d05e0460:	d006      	beq.n	d05e0470 <qsort+0x1b2>
d05e0462:	4643      	mov	r3, r8
d05e0464:	4622      	mov	r2, r4
d05e0466:	4639      	mov	r1, r7
d05e0468:	4658      	mov	r0, fp
d05e046a:	f7ff feef 	bl	d05e024c <swapfunc>
d05e046e:	e005      	b.n	d05e047c <qsort+0x1be>
d05e0470:	f8db 3000 	ldr.w	r3, [fp]
d05e0474:	683a      	ldr	r2, [r7, #0]
d05e0476:	f8cb 2000 	str.w	r2, [fp]
d05e047a:	603b      	str	r3, [r7, #0]
d05e047c:	9f04      	ldr	r7, [sp, #16]
d05e047e:	e7b0      	b.n	d05e03e2 <qsort+0x124>
d05e0480:	4643      	mov	r3, r8
d05e0482:	4622      	mov	r2, r4
d05e0484:	4639      	mov	r1, r7
d05e0486:	4628      	mov	r0, r5
d05e0488:	f7ff fee0 	bl	d05e024c <swapfunc>
d05e048c:	e00c      	b.n	d05e04a8 <qsort+0x1ea>
d05e048e:	1b2f      	subs	r7, r5, r4
d05e0490:	4629      	mov	r1, r5
d05e0492:	4638      	mov	r0, r7
d05e0494:	47d0      	blx	sl
d05e0496:	2800      	cmp	r0, #0
d05e0498:	dd09      	ble.n	d05e04ae <qsort+0x1f0>
d05e049a:	f1b8 0f00 	cmp.w	r8, #0
d05e049e:	d1ef      	bne.n	d05e0480 <qsort+0x1c2>
d05e04a0:	682b      	ldr	r3, [r5, #0]
d05e04a2:	683a      	ldr	r2, [r7, #0]
d05e04a4:	602a      	str	r2, [r5, #0]
d05e04a6:	603b      	str	r3, [r7, #0]
d05e04a8:	463d      	mov	r5, r7
d05e04aa:	42ae      	cmp	r6, r5
d05e04ac:	d3ef      	bcc.n	d05e048e <qsort+0x1d0>
d05e04ae:	9b01      	ldr	r3, [sp, #4]
d05e04b0:	4423      	add	r3, r4
d05e04b2:	9301      	str	r3, [sp, #4]
d05e04b4:	e7bb      	b.n	d05e042e <qsort+0x170>
d05e04b6:	ebab 0305 	sub.w	r3, fp, r5
d05e04ba:	1baa      	subs	r2, r5, r6
d05e04bc:	429a      	cmp	r2, r3
d05e04be:	bfa8      	it	ge
d05e04c0:	461a      	movge	r2, r3
d05e04c2:	9301      	str	r3, [sp, #4]
d05e04c4:	b12a      	cbz	r2, d05e04d2 <qsort+0x214>
d05e04c6:	4643      	mov	r3, r8
d05e04c8:	ebab 0102 	sub.w	r1, fp, r2
d05e04cc:	4630      	mov	r0, r6
d05e04ce:	f7ff febd 	bl	d05e024c <swapfunc>
d05e04d2:	9b03      	ldr	r3, [sp, #12]
d05e04d4:	eba3 0209 	sub.w	r2, r3, r9
d05e04d8:	eba9 0707 	sub.w	r7, r9, r7
d05e04dc:	1b12      	subs	r2, r2, r4
d05e04de:	42ba      	cmp	r2, r7
d05e04e0:	bf28      	it	cs
d05e04e2:	463a      	movcs	r2, r7
d05e04e4:	b12a      	cbz	r2, d05e04f2 <qsort+0x234>
d05e04e6:	9903      	ldr	r1, [sp, #12]
d05e04e8:	4643      	mov	r3, r8
d05e04ea:	1a89      	subs	r1, r1, r2
d05e04ec:	4658      	mov	r0, fp
d05e04ee:	f7ff fead 	bl	d05e024c <swapfunc>
d05e04f2:	f8dd 9004 	ldr.w	r9, [sp, #4]
d05e04f6:	9b03      	ldr	r3, [sp, #12]
d05e04f8:	454f      	cmp	r7, r9
d05e04fa:	eba3 0007 	sub.w	r0, r3, r7
d05e04fe:	d904      	bls.n	d05e050a <qsort+0x24c>
d05e0500:	4633      	mov	r3, r6
d05e0502:	46b9      	mov	r9, r7
d05e0504:	9f01      	ldr	r7, [sp, #4]
d05e0506:	4606      	mov	r6, r0
d05e0508:	4618      	mov	r0, r3
d05e050a:	42a7      	cmp	r7, r4
d05e050c:	d921      	bls.n	d05e0552 <qsort+0x294>
d05e050e:	fbb7 f1f4 	udiv	r1, r7, r4
d05e0512:	9b02      	ldr	r3, [sp, #8]
d05e0514:	2b07      	cmp	r3, #7
d05e0516:	d80d      	bhi.n	d05e0534 <qsort+0x276>
d05e0518:	fbb9 f7f4 	udiv	r7, r9, r4
d05e051c:	aa16      	add	r2, sp, #88	; 0x58
d05e051e:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
d05e0522:	f843 6c40 	str.w	r6, [r3, #-64]
d05e0526:	f843 7c3c 	str.w	r7, [r3, #-60]
d05e052a:	9b02      	ldr	r3, [sp, #8]
d05e052c:	3301      	adds	r3, #1
d05e052e:	9302      	str	r3, [sp, #8]
d05e0530:	4606      	mov	r6, r0
d05e0532:	e6d5      	b.n	d05e02e0 <qsort+0x22>
d05e0534:	4653      	mov	r3, sl
d05e0536:	4622      	mov	r2, r4
d05e0538:	f7ff fec1 	bl	d05e02be <qsort>
d05e053c:	45a1      	cmp	r9, r4
d05e053e:	d80b      	bhi.n	d05e0558 <qsort+0x29a>
d05e0540:	9b02      	ldr	r3, [sp, #8]
d05e0542:	aa16      	add	r2, sp, #88	; 0x58
d05e0544:	3b01      	subs	r3, #1
d05e0546:	9302      	str	r3, [sp, #8]
d05e0548:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
d05e054c:	e953 0110 	ldrd	r0, r1, [r3, #-64]	; 0x40
d05e0550:	e7ee      	b.n	d05e0530 <qsort+0x272>
d05e0552:	45a1      	cmp	r9, r4
d05e0554:	f67f aed1 	bls.w	d05e02fa <qsort+0x3c>
d05e0558:	fbb9 f1f4 	udiv	r1, r9, r4
d05e055c:	4630      	mov	r0, r6
d05e055e:	e7e7      	b.n	d05e0530 <qsort+0x272>

d05e0560 <siprintf>:
d05e0560:	b40e      	push	{r1, r2, r3}
d05e0562:	b500      	push	{lr}
d05e0564:	b09c      	sub	sp, #112	; 0x70
d05e0566:	ab1d      	add	r3, sp, #116	; 0x74
d05e0568:	9002      	str	r0, [sp, #8]
d05e056a:	9006      	str	r0, [sp, #24]
d05e056c:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d05e0570:	4809      	ldr	r0, [pc, #36]	; (d05e0598 <siprintf+0x38>)
d05e0572:	9107      	str	r1, [sp, #28]
d05e0574:	9104      	str	r1, [sp, #16]
d05e0576:	4909      	ldr	r1, [pc, #36]	; (d05e059c <siprintf+0x3c>)
d05e0578:	f853 2b04 	ldr.w	r2, [r3], #4
d05e057c:	9105      	str	r1, [sp, #20]
d05e057e:	6800      	ldr	r0, [r0, #0]
d05e0580:	9301      	str	r3, [sp, #4]
d05e0582:	a902      	add	r1, sp, #8
d05e0584:	f000 f896 	bl	d05e06b4 <_svfiprintf_r>
d05e0588:	9b02      	ldr	r3, [sp, #8]
d05e058a:	2200      	movs	r2, #0
d05e058c:	701a      	strb	r2, [r3, #0]
d05e058e:	b01c      	add	sp, #112	; 0x70
d05e0590:	f85d eb04 	ldr.w	lr, [sp], #4
d05e0594:	b003      	add	sp, #12
d05e0596:	4770      	bx	lr
d05e0598:	d05e10b4 	.word	0xd05e10b4
d05e059c:	ffff0208 	.word	0xffff0208

d05e05a0 <strcasecmp>:
d05e05a0:	b570      	push	{r4, r5, r6, lr}
d05e05a2:	4d0c      	ldr	r5, [pc, #48]	; (d05e05d4 <strcasecmp+0x34>)
d05e05a4:	4604      	mov	r4, r0
d05e05a6:	462e      	mov	r6, r5
d05e05a8:	f814 3b01 	ldrb.w	r3, [r4], #1
d05e05ac:	5d5a      	ldrb	r2, [r3, r5]
d05e05ae:	f002 0203 	and.w	r2, r2, #3
d05e05b2:	2a01      	cmp	r2, #1
d05e05b4:	f811 2b01 	ldrb.w	r2, [r1], #1
d05e05b8:	5cb0      	ldrb	r0, [r6, r2]
d05e05ba:	f000 0003 	and.w	r0, r0, #3
d05e05be:	bf08      	it	eq
d05e05c0:	3320      	addeq	r3, #32
d05e05c2:	2801      	cmp	r0, #1
d05e05c4:	bf08      	it	eq
d05e05c6:	3220      	addeq	r2, #32
d05e05c8:	1a98      	subs	r0, r3, r2
d05e05ca:	d101      	bne.n	d05e05d0 <strcasecmp+0x30>
d05e05cc:	2a00      	cmp	r2, #0
d05e05ce:	d1eb      	bne.n	d05e05a8 <strcasecmp+0x8>
d05e05d0:	bd70      	pop	{r4, r5, r6, pc}
d05e05d2:	bf00      	nop
d05e05d4:	d05e0f78 	.word	0xd05e0f78

d05e05d8 <strncpy>:
d05e05d8:	b510      	push	{r4, lr}
d05e05da:	3901      	subs	r1, #1
d05e05dc:	4603      	mov	r3, r0
d05e05de:	b132      	cbz	r2, d05e05ee <strncpy+0x16>
d05e05e0:	f811 4f01 	ldrb.w	r4, [r1, #1]!
d05e05e4:	f803 4b01 	strb.w	r4, [r3], #1
d05e05e8:	3a01      	subs	r2, #1
d05e05ea:	2c00      	cmp	r4, #0
d05e05ec:	d1f7      	bne.n	d05e05de <strncpy+0x6>
d05e05ee:	441a      	add	r2, r3
d05e05f0:	2100      	movs	r1, #0
d05e05f2:	4293      	cmp	r3, r2
d05e05f4:	d100      	bne.n	d05e05f8 <strncpy+0x20>
d05e05f6:	bd10      	pop	{r4, pc}
d05e05f8:	f803 1b01 	strb.w	r1, [r3], #1
d05e05fc:	e7f9      	b.n	d05e05f2 <strncpy+0x1a>

d05e05fe <__ssputs_r>:
d05e05fe:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05e0602:	688e      	ldr	r6, [r1, #8]
d05e0604:	429e      	cmp	r6, r3
d05e0606:	4682      	mov	sl, r0
d05e0608:	460c      	mov	r4, r1
d05e060a:	4690      	mov	r8, r2
d05e060c:	461f      	mov	r7, r3
d05e060e:	d838      	bhi.n	d05e0682 <__ssputs_r+0x84>
d05e0610:	898a      	ldrh	r2, [r1, #12]
d05e0612:	f412 6f90 	tst.w	r2, #1152	; 0x480
d05e0616:	d032      	beq.n	d05e067e <__ssputs_r+0x80>
d05e0618:	6825      	ldr	r5, [r4, #0]
d05e061a:	6909      	ldr	r1, [r1, #16]
d05e061c:	eba5 0901 	sub.w	r9, r5, r1
d05e0620:	6965      	ldr	r5, [r4, #20]
d05e0622:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05e0626:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d05e062a:	3301      	adds	r3, #1
d05e062c:	444b      	add	r3, r9
d05e062e:	106d      	asrs	r5, r5, #1
d05e0630:	429d      	cmp	r5, r3
d05e0632:	bf38      	it	cc
d05e0634:	461d      	movcc	r5, r3
d05e0636:	0553      	lsls	r3, r2, #21
d05e0638:	d531      	bpl.n	d05e069e <__ssputs_r+0xa0>
d05e063a:	4629      	mov	r1, r5
d05e063c:	f000 fb98 	bl	d05e0d70 <_malloc_r>
d05e0640:	4606      	mov	r6, r0
d05e0642:	b950      	cbnz	r0, d05e065a <__ssputs_r+0x5c>
d05e0644:	230c      	movs	r3, #12
d05e0646:	f8ca 3000 	str.w	r3, [sl]
d05e064a:	89a3      	ldrh	r3, [r4, #12]
d05e064c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05e0650:	81a3      	strh	r3, [r4, #12]
d05e0652:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e0656:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e065a:	6921      	ldr	r1, [r4, #16]
d05e065c:	464a      	mov	r2, r9
d05e065e:	f000 fb0f 	bl	d05e0c80 <memcpy>
d05e0662:	89a3      	ldrh	r3, [r4, #12]
d05e0664:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d05e0668:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05e066c:	81a3      	strh	r3, [r4, #12]
d05e066e:	6126      	str	r6, [r4, #16]
d05e0670:	6165      	str	r5, [r4, #20]
d05e0672:	444e      	add	r6, r9
d05e0674:	eba5 0509 	sub.w	r5, r5, r9
d05e0678:	6026      	str	r6, [r4, #0]
d05e067a:	60a5      	str	r5, [r4, #8]
d05e067c:	463e      	mov	r6, r7
d05e067e:	42be      	cmp	r6, r7
d05e0680:	d900      	bls.n	d05e0684 <__ssputs_r+0x86>
d05e0682:	463e      	mov	r6, r7
d05e0684:	4632      	mov	r2, r6
d05e0686:	6820      	ldr	r0, [r4, #0]
d05e0688:	4641      	mov	r1, r8
d05e068a:	f000 fb07 	bl	d05e0c9c <memmove>
d05e068e:	68a3      	ldr	r3, [r4, #8]
d05e0690:	6822      	ldr	r2, [r4, #0]
d05e0692:	1b9b      	subs	r3, r3, r6
d05e0694:	4432      	add	r2, r6
d05e0696:	60a3      	str	r3, [r4, #8]
d05e0698:	6022      	str	r2, [r4, #0]
d05e069a:	2000      	movs	r0, #0
d05e069c:	e7db      	b.n	d05e0656 <__ssputs_r+0x58>
d05e069e:	462a      	mov	r2, r5
d05e06a0:	f000 fbc0 	bl	d05e0e24 <_realloc_r>
d05e06a4:	4606      	mov	r6, r0
d05e06a6:	2800      	cmp	r0, #0
d05e06a8:	d1e1      	bne.n	d05e066e <__ssputs_r+0x70>
d05e06aa:	6921      	ldr	r1, [r4, #16]
d05e06ac:	4650      	mov	r0, sl
d05e06ae:	f000 fb0f 	bl	d05e0cd0 <_free_r>
d05e06b2:	e7c7      	b.n	d05e0644 <__ssputs_r+0x46>

d05e06b4 <_svfiprintf_r>:
d05e06b4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05e06b8:	4698      	mov	r8, r3
d05e06ba:	898b      	ldrh	r3, [r1, #12]
d05e06bc:	061b      	lsls	r3, r3, #24
d05e06be:	b09d      	sub	sp, #116	; 0x74
d05e06c0:	4607      	mov	r7, r0
d05e06c2:	460d      	mov	r5, r1
d05e06c4:	4614      	mov	r4, r2
d05e06c6:	d50e      	bpl.n	d05e06e6 <_svfiprintf_r+0x32>
d05e06c8:	690b      	ldr	r3, [r1, #16]
d05e06ca:	b963      	cbnz	r3, d05e06e6 <_svfiprintf_r+0x32>
d05e06cc:	2140      	movs	r1, #64	; 0x40
d05e06ce:	f000 fb4f 	bl	d05e0d70 <_malloc_r>
d05e06d2:	6028      	str	r0, [r5, #0]
d05e06d4:	6128      	str	r0, [r5, #16]
d05e06d6:	b920      	cbnz	r0, d05e06e2 <_svfiprintf_r+0x2e>
d05e06d8:	230c      	movs	r3, #12
d05e06da:	603b      	str	r3, [r7, #0]
d05e06dc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e06e0:	e0d1      	b.n	d05e0886 <_svfiprintf_r+0x1d2>
d05e06e2:	2340      	movs	r3, #64	; 0x40
d05e06e4:	616b      	str	r3, [r5, #20]
d05e06e6:	2300      	movs	r3, #0
d05e06e8:	9309      	str	r3, [sp, #36]	; 0x24
d05e06ea:	2320      	movs	r3, #32
d05e06ec:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d05e06f0:	f8cd 800c 	str.w	r8, [sp, #12]
d05e06f4:	2330      	movs	r3, #48	; 0x30
d05e06f6:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d05e08a0 <_svfiprintf_r+0x1ec>
d05e06fa:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d05e06fe:	f04f 0901 	mov.w	r9, #1
d05e0702:	4623      	mov	r3, r4
d05e0704:	469a      	mov	sl, r3
d05e0706:	f813 2b01 	ldrb.w	r2, [r3], #1
d05e070a:	b10a      	cbz	r2, d05e0710 <_svfiprintf_r+0x5c>
d05e070c:	2a25      	cmp	r2, #37	; 0x25
d05e070e:	d1f9      	bne.n	d05e0704 <_svfiprintf_r+0x50>
d05e0710:	ebba 0b04 	subs.w	fp, sl, r4
d05e0714:	d00b      	beq.n	d05e072e <_svfiprintf_r+0x7a>
d05e0716:	465b      	mov	r3, fp
d05e0718:	4622      	mov	r2, r4
d05e071a:	4629      	mov	r1, r5
d05e071c:	4638      	mov	r0, r7
d05e071e:	f7ff ff6e 	bl	d05e05fe <__ssputs_r>
d05e0722:	3001      	adds	r0, #1
d05e0724:	f000 80aa 	beq.w	d05e087c <_svfiprintf_r+0x1c8>
d05e0728:	9a09      	ldr	r2, [sp, #36]	; 0x24
d05e072a:	445a      	add	r2, fp
d05e072c:	9209      	str	r2, [sp, #36]	; 0x24
d05e072e:	f89a 3000 	ldrb.w	r3, [sl]
d05e0732:	2b00      	cmp	r3, #0
d05e0734:	f000 80a2 	beq.w	d05e087c <_svfiprintf_r+0x1c8>
d05e0738:	2300      	movs	r3, #0
d05e073a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d05e073e:	e9cd 2305 	strd	r2, r3, [sp, #20]
d05e0742:	f10a 0a01 	add.w	sl, sl, #1
d05e0746:	9304      	str	r3, [sp, #16]
d05e0748:	9307      	str	r3, [sp, #28]
d05e074a:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d05e074e:	931a      	str	r3, [sp, #104]	; 0x68
d05e0750:	4654      	mov	r4, sl
d05e0752:	2205      	movs	r2, #5
d05e0754:	f814 1b01 	ldrb.w	r1, [r4], #1
d05e0758:	4851      	ldr	r0, [pc, #324]	; (d05e08a0 <_svfiprintf_r+0x1ec>)
d05e075a:	f000 fa41 	bl	d05e0be0 <memchr>
d05e075e:	9a04      	ldr	r2, [sp, #16]
d05e0760:	b9d8      	cbnz	r0, d05e079a <_svfiprintf_r+0xe6>
d05e0762:	06d0      	lsls	r0, r2, #27
d05e0764:	bf44      	itt	mi
d05e0766:	2320      	movmi	r3, #32
d05e0768:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05e076c:	0711      	lsls	r1, r2, #28
d05e076e:	bf44      	itt	mi
d05e0770:	232b      	movmi	r3, #43	; 0x2b
d05e0772:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05e0776:	f89a 3000 	ldrb.w	r3, [sl]
d05e077a:	2b2a      	cmp	r3, #42	; 0x2a
d05e077c:	d015      	beq.n	d05e07aa <_svfiprintf_r+0xf6>
d05e077e:	9a07      	ldr	r2, [sp, #28]
d05e0780:	4654      	mov	r4, sl
d05e0782:	2000      	movs	r0, #0
d05e0784:	f04f 0c0a 	mov.w	ip, #10
d05e0788:	4621      	mov	r1, r4
d05e078a:	f811 3b01 	ldrb.w	r3, [r1], #1
d05e078e:	3b30      	subs	r3, #48	; 0x30
d05e0790:	2b09      	cmp	r3, #9
d05e0792:	d94e      	bls.n	d05e0832 <_svfiprintf_r+0x17e>
d05e0794:	b1b0      	cbz	r0, d05e07c4 <_svfiprintf_r+0x110>
d05e0796:	9207      	str	r2, [sp, #28]
d05e0798:	e014      	b.n	d05e07c4 <_svfiprintf_r+0x110>
d05e079a:	eba0 0308 	sub.w	r3, r0, r8
d05e079e:	fa09 f303 	lsl.w	r3, r9, r3
d05e07a2:	4313      	orrs	r3, r2
d05e07a4:	9304      	str	r3, [sp, #16]
d05e07a6:	46a2      	mov	sl, r4
d05e07a8:	e7d2      	b.n	d05e0750 <_svfiprintf_r+0x9c>
d05e07aa:	9b03      	ldr	r3, [sp, #12]
d05e07ac:	1d19      	adds	r1, r3, #4
d05e07ae:	681b      	ldr	r3, [r3, #0]
d05e07b0:	9103      	str	r1, [sp, #12]
d05e07b2:	2b00      	cmp	r3, #0
d05e07b4:	bfbb      	ittet	lt
d05e07b6:	425b      	neglt	r3, r3
d05e07b8:	f042 0202 	orrlt.w	r2, r2, #2
d05e07bc:	9307      	strge	r3, [sp, #28]
d05e07be:	9307      	strlt	r3, [sp, #28]
d05e07c0:	bfb8      	it	lt
d05e07c2:	9204      	strlt	r2, [sp, #16]
d05e07c4:	7823      	ldrb	r3, [r4, #0]
d05e07c6:	2b2e      	cmp	r3, #46	; 0x2e
d05e07c8:	d10c      	bne.n	d05e07e4 <_svfiprintf_r+0x130>
d05e07ca:	7863      	ldrb	r3, [r4, #1]
d05e07cc:	2b2a      	cmp	r3, #42	; 0x2a
d05e07ce:	d135      	bne.n	d05e083c <_svfiprintf_r+0x188>
d05e07d0:	9b03      	ldr	r3, [sp, #12]
d05e07d2:	1d1a      	adds	r2, r3, #4
d05e07d4:	681b      	ldr	r3, [r3, #0]
d05e07d6:	9203      	str	r2, [sp, #12]
d05e07d8:	2b00      	cmp	r3, #0
d05e07da:	bfb8      	it	lt
d05e07dc:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d05e07e0:	3402      	adds	r4, #2
d05e07e2:	9305      	str	r3, [sp, #20]
d05e07e4:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d05e08b0 <_svfiprintf_r+0x1fc>
d05e07e8:	7821      	ldrb	r1, [r4, #0]
d05e07ea:	2203      	movs	r2, #3
d05e07ec:	4650      	mov	r0, sl
d05e07ee:	f000 f9f7 	bl	d05e0be0 <memchr>
d05e07f2:	b140      	cbz	r0, d05e0806 <_svfiprintf_r+0x152>
d05e07f4:	2340      	movs	r3, #64	; 0x40
d05e07f6:	eba0 000a 	sub.w	r0, r0, sl
d05e07fa:	fa03 f000 	lsl.w	r0, r3, r0
d05e07fe:	9b04      	ldr	r3, [sp, #16]
d05e0800:	4303      	orrs	r3, r0
d05e0802:	3401      	adds	r4, #1
d05e0804:	9304      	str	r3, [sp, #16]
d05e0806:	f814 1b01 	ldrb.w	r1, [r4], #1
d05e080a:	4826      	ldr	r0, [pc, #152]	; (d05e08a4 <_svfiprintf_r+0x1f0>)
d05e080c:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d05e0810:	2206      	movs	r2, #6
d05e0812:	f000 f9e5 	bl	d05e0be0 <memchr>
d05e0816:	2800      	cmp	r0, #0
d05e0818:	d038      	beq.n	d05e088c <_svfiprintf_r+0x1d8>
d05e081a:	4b23      	ldr	r3, [pc, #140]	; (d05e08a8 <_svfiprintf_r+0x1f4>)
d05e081c:	bb1b      	cbnz	r3, d05e0866 <_svfiprintf_r+0x1b2>
d05e081e:	9b03      	ldr	r3, [sp, #12]
d05e0820:	3307      	adds	r3, #7
d05e0822:	f023 0307 	bic.w	r3, r3, #7
d05e0826:	3308      	adds	r3, #8
d05e0828:	9303      	str	r3, [sp, #12]
d05e082a:	9b09      	ldr	r3, [sp, #36]	; 0x24
d05e082c:	4433      	add	r3, r6
d05e082e:	9309      	str	r3, [sp, #36]	; 0x24
d05e0830:	e767      	b.n	d05e0702 <_svfiprintf_r+0x4e>
d05e0832:	fb0c 3202 	mla	r2, ip, r2, r3
d05e0836:	460c      	mov	r4, r1
d05e0838:	2001      	movs	r0, #1
d05e083a:	e7a5      	b.n	d05e0788 <_svfiprintf_r+0xd4>
d05e083c:	2300      	movs	r3, #0
d05e083e:	3401      	adds	r4, #1
d05e0840:	9305      	str	r3, [sp, #20]
d05e0842:	4619      	mov	r1, r3
d05e0844:	f04f 0c0a 	mov.w	ip, #10
d05e0848:	4620      	mov	r0, r4
d05e084a:	f810 2b01 	ldrb.w	r2, [r0], #1
d05e084e:	3a30      	subs	r2, #48	; 0x30
d05e0850:	2a09      	cmp	r2, #9
d05e0852:	d903      	bls.n	d05e085c <_svfiprintf_r+0x1a8>
d05e0854:	2b00      	cmp	r3, #0
d05e0856:	d0c5      	beq.n	d05e07e4 <_svfiprintf_r+0x130>
d05e0858:	9105      	str	r1, [sp, #20]
d05e085a:	e7c3      	b.n	d05e07e4 <_svfiprintf_r+0x130>
d05e085c:	fb0c 2101 	mla	r1, ip, r1, r2
d05e0860:	4604      	mov	r4, r0
d05e0862:	2301      	movs	r3, #1
d05e0864:	e7f0      	b.n	d05e0848 <_svfiprintf_r+0x194>
d05e0866:	ab03      	add	r3, sp, #12
d05e0868:	9300      	str	r3, [sp, #0]
d05e086a:	462a      	mov	r2, r5
d05e086c:	4b0f      	ldr	r3, [pc, #60]	; (d05e08ac <_svfiprintf_r+0x1f8>)
d05e086e:	a904      	add	r1, sp, #16
d05e0870:	4638      	mov	r0, r7
d05e0872:	f3af 8000 	nop.w
d05e0876:	1c42      	adds	r2, r0, #1
d05e0878:	4606      	mov	r6, r0
d05e087a:	d1d6      	bne.n	d05e082a <_svfiprintf_r+0x176>
d05e087c:	89ab      	ldrh	r3, [r5, #12]
d05e087e:	065b      	lsls	r3, r3, #25
d05e0880:	f53f af2c 	bmi.w	d05e06dc <_svfiprintf_r+0x28>
d05e0884:	9809      	ldr	r0, [sp, #36]	; 0x24
d05e0886:	b01d      	add	sp, #116	; 0x74
d05e0888:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e088c:	ab03      	add	r3, sp, #12
d05e088e:	9300      	str	r3, [sp, #0]
d05e0890:	462a      	mov	r2, r5
d05e0892:	4b06      	ldr	r3, [pc, #24]	; (d05e08ac <_svfiprintf_r+0x1f8>)
d05e0894:	a904      	add	r1, sp, #16
d05e0896:	4638      	mov	r0, r7
d05e0898:	f000 f87a 	bl	d05e0990 <_printf_i>
d05e089c:	e7eb      	b.n	d05e0876 <_svfiprintf_r+0x1c2>
d05e089e:	bf00      	nop
d05e08a0:	d05e1078 	.word	0xd05e1078
d05e08a4:	d05e1082 	.word	0xd05e1082
d05e08a8:	00000000 	.word	0x00000000
d05e08ac:	d05e05ff 	.word	0xd05e05ff
d05e08b0:	d05e107e 	.word	0xd05e107e

d05e08b4 <_printf_common>:
d05e08b4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05e08b8:	4616      	mov	r6, r2
d05e08ba:	4699      	mov	r9, r3
d05e08bc:	688a      	ldr	r2, [r1, #8]
d05e08be:	690b      	ldr	r3, [r1, #16]
d05e08c0:	f8dd 8020 	ldr.w	r8, [sp, #32]
d05e08c4:	4293      	cmp	r3, r2
d05e08c6:	bfb8      	it	lt
d05e08c8:	4613      	movlt	r3, r2
d05e08ca:	6033      	str	r3, [r6, #0]
d05e08cc:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d05e08d0:	4607      	mov	r7, r0
d05e08d2:	460c      	mov	r4, r1
d05e08d4:	b10a      	cbz	r2, d05e08da <_printf_common+0x26>
d05e08d6:	3301      	adds	r3, #1
d05e08d8:	6033      	str	r3, [r6, #0]
d05e08da:	6823      	ldr	r3, [r4, #0]
d05e08dc:	0699      	lsls	r1, r3, #26
d05e08de:	bf42      	ittt	mi
d05e08e0:	6833      	ldrmi	r3, [r6, #0]
d05e08e2:	3302      	addmi	r3, #2
d05e08e4:	6033      	strmi	r3, [r6, #0]
d05e08e6:	6825      	ldr	r5, [r4, #0]
d05e08e8:	f015 0506 	ands.w	r5, r5, #6
d05e08ec:	d106      	bne.n	d05e08fc <_printf_common+0x48>
d05e08ee:	f104 0a19 	add.w	sl, r4, #25
d05e08f2:	68e3      	ldr	r3, [r4, #12]
d05e08f4:	6832      	ldr	r2, [r6, #0]
d05e08f6:	1a9b      	subs	r3, r3, r2
d05e08f8:	42ab      	cmp	r3, r5
d05e08fa:	dc26      	bgt.n	d05e094a <_printf_common+0x96>
d05e08fc:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d05e0900:	1e13      	subs	r3, r2, #0
d05e0902:	6822      	ldr	r2, [r4, #0]
d05e0904:	bf18      	it	ne
d05e0906:	2301      	movne	r3, #1
d05e0908:	0692      	lsls	r2, r2, #26
d05e090a:	d42b      	bmi.n	d05e0964 <_printf_common+0xb0>
d05e090c:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05e0910:	4649      	mov	r1, r9
d05e0912:	4638      	mov	r0, r7
d05e0914:	47c0      	blx	r8
d05e0916:	3001      	adds	r0, #1
d05e0918:	d01e      	beq.n	d05e0958 <_printf_common+0xa4>
d05e091a:	6823      	ldr	r3, [r4, #0]
d05e091c:	68e5      	ldr	r5, [r4, #12]
d05e091e:	6832      	ldr	r2, [r6, #0]
d05e0920:	f003 0306 	and.w	r3, r3, #6
d05e0924:	2b04      	cmp	r3, #4
d05e0926:	bf08      	it	eq
d05e0928:	1aad      	subeq	r5, r5, r2
d05e092a:	68a3      	ldr	r3, [r4, #8]
d05e092c:	6922      	ldr	r2, [r4, #16]
d05e092e:	bf0c      	ite	eq
d05e0930:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d05e0934:	2500      	movne	r5, #0
d05e0936:	4293      	cmp	r3, r2
d05e0938:	bfc4      	itt	gt
d05e093a:	1a9b      	subgt	r3, r3, r2
d05e093c:	18ed      	addgt	r5, r5, r3
d05e093e:	2600      	movs	r6, #0
d05e0940:	341a      	adds	r4, #26
d05e0942:	42b5      	cmp	r5, r6
d05e0944:	d11a      	bne.n	d05e097c <_printf_common+0xc8>
d05e0946:	2000      	movs	r0, #0
d05e0948:	e008      	b.n	d05e095c <_printf_common+0xa8>
d05e094a:	2301      	movs	r3, #1
d05e094c:	4652      	mov	r2, sl
d05e094e:	4649      	mov	r1, r9
d05e0950:	4638      	mov	r0, r7
d05e0952:	47c0      	blx	r8
d05e0954:	3001      	adds	r0, #1
d05e0956:	d103      	bne.n	d05e0960 <_printf_common+0xac>
d05e0958:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e095c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e0960:	3501      	adds	r5, #1
d05e0962:	e7c6      	b.n	d05e08f2 <_printf_common+0x3e>
d05e0964:	18e1      	adds	r1, r4, r3
d05e0966:	1c5a      	adds	r2, r3, #1
d05e0968:	2030      	movs	r0, #48	; 0x30
d05e096a:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d05e096e:	4422      	add	r2, r4
d05e0970:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d05e0974:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d05e0978:	3302      	adds	r3, #2
d05e097a:	e7c7      	b.n	d05e090c <_printf_common+0x58>
d05e097c:	2301      	movs	r3, #1
d05e097e:	4622      	mov	r2, r4
d05e0980:	4649      	mov	r1, r9
d05e0982:	4638      	mov	r0, r7
d05e0984:	47c0      	blx	r8
d05e0986:	3001      	adds	r0, #1
d05e0988:	d0e6      	beq.n	d05e0958 <_printf_common+0xa4>
d05e098a:	3601      	adds	r6, #1
d05e098c:	e7d9      	b.n	d05e0942 <_printf_common+0x8e>
	...

d05e0990 <_printf_i>:
d05e0990:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d05e0994:	460c      	mov	r4, r1
d05e0996:	4691      	mov	r9, r2
d05e0998:	7e27      	ldrb	r7, [r4, #24]
d05e099a:	990c      	ldr	r1, [sp, #48]	; 0x30
d05e099c:	2f78      	cmp	r7, #120	; 0x78
d05e099e:	4680      	mov	r8, r0
d05e09a0:	469a      	mov	sl, r3
d05e09a2:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05e09a6:	d807      	bhi.n	d05e09b8 <_printf_i+0x28>
d05e09a8:	2f62      	cmp	r7, #98	; 0x62
d05e09aa:	d80a      	bhi.n	d05e09c2 <_printf_i+0x32>
d05e09ac:	2f00      	cmp	r7, #0
d05e09ae:	f000 80d8 	beq.w	d05e0b62 <_printf_i+0x1d2>
d05e09b2:	2f58      	cmp	r7, #88	; 0x58
d05e09b4:	f000 80a3 	beq.w	d05e0afe <_printf_i+0x16e>
d05e09b8:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05e09bc:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d05e09c0:	e03a      	b.n	d05e0a38 <_printf_i+0xa8>
d05e09c2:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d05e09c6:	2b15      	cmp	r3, #21
d05e09c8:	d8f6      	bhi.n	d05e09b8 <_printf_i+0x28>
d05e09ca:	a001      	add	r0, pc, #4	; (adr r0, d05e09d0 <_printf_i+0x40>)
d05e09cc:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d05e09d0:	d05e0a29 	.word	0xd05e0a29
d05e09d4:	d05e0a3d 	.word	0xd05e0a3d
d05e09d8:	d05e09b9 	.word	0xd05e09b9
d05e09dc:	d05e09b9 	.word	0xd05e09b9
d05e09e0:	d05e09b9 	.word	0xd05e09b9
d05e09e4:	d05e09b9 	.word	0xd05e09b9
d05e09e8:	d05e0a3d 	.word	0xd05e0a3d
d05e09ec:	d05e09b9 	.word	0xd05e09b9
d05e09f0:	d05e09b9 	.word	0xd05e09b9
d05e09f4:	d05e09b9 	.word	0xd05e09b9
d05e09f8:	d05e09b9 	.word	0xd05e09b9
d05e09fc:	d05e0b49 	.word	0xd05e0b49
d05e0a00:	d05e0a6d 	.word	0xd05e0a6d
d05e0a04:	d05e0b2b 	.word	0xd05e0b2b
d05e0a08:	d05e09b9 	.word	0xd05e09b9
d05e0a0c:	d05e09b9 	.word	0xd05e09b9
d05e0a10:	d05e0b6b 	.word	0xd05e0b6b
d05e0a14:	d05e09b9 	.word	0xd05e09b9
d05e0a18:	d05e0a6d 	.word	0xd05e0a6d
d05e0a1c:	d05e09b9 	.word	0xd05e09b9
d05e0a20:	d05e09b9 	.word	0xd05e09b9
d05e0a24:	d05e0b33 	.word	0xd05e0b33
d05e0a28:	680b      	ldr	r3, [r1, #0]
d05e0a2a:	1d1a      	adds	r2, r3, #4
d05e0a2c:	681b      	ldr	r3, [r3, #0]
d05e0a2e:	600a      	str	r2, [r1, #0]
d05e0a30:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05e0a34:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d05e0a38:	2301      	movs	r3, #1
d05e0a3a:	e0a3      	b.n	d05e0b84 <_printf_i+0x1f4>
d05e0a3c:	6825      	ldr	r5, [r4, #0]
d05e0a3e:	6808      	ldr	r0, [r1, #0]
d05e0a40:	062e      	lsls	r6, r5, #24
d05e0a42:	f100 0304 	add.w	r3, r0, #4
d05e0a46:	d50a      	bpl.n	d05e0a5e <_printf_i+0xce>
d05e0a48:	6805      	ldr	r5, [r0, #0]
d05e0a4a:	600b      	str	r3, [r1, #0]
d05e0a4c:	2d00      	cmp	r5, #0
d05e0a4e:	da03      	bge.n	d05e0a58 <_printf_i+0xc8>
d05e0a50:	232d      	movs	r3, #45	; 0x2d
d05e0a52:	426d      	negs	r5, r5
d05e0a54:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05e0a58:	485e      	ldr	r0, [pc, #376]	; (d05e0bd4 <_printf_i+0x244>)
d05e0a5a:	230a      	movs	r3, #10
d05e0a5c:	e019      	b.n	d05e0a92 <_printf_i+0x102>
d05e0a5e:	f015 0f40 	tst.w	r5, #64	; 0x40
d05e0a62:	6805      	ldr	r5, [r0, #0]
d05e0a64:	600b      	str	r3, [r1, #0]
d05e0a66:	bf18      	it	ne
d05e0a68:	b22d      	sxthne	r5, r5
d05e0a6a:	e7ef      	b.n	d05e0a4c <_printf_i+0xbc>
d05e0a6c:	680b      	ldr	r3, [r1, #0]
d05e0a6e:	6825      	ldr	r5, [r4, #0]
d05e0a70:	1d18      	adds	r0, r3, #4
d05e0a72:	6008      	str	r0, [r1, #0]
d05e0a74:	0628      	lsls	r0, r5, #24
d05e0a76:	d501      	bpl.n	d05e0a7c <_printf_i+0xec>
d05e0a78:	681d      	ldr	r5, [r3, #0]
d05e0a7a:	e002      	b.n	d05e0a82 <_printf_i+0xf2>
d05e0a7c:	0669      	lsls	r1, r5, #25
d05e0a7e:	d5fb      	bpl.n	d05e0a78 <_printf_i+0xe8>
d05e0a80:	881d      	ldrh	r5, [r3, #0]
d05e0a82:	4854      	ldr	r0, [pc, #336]	; (d05e0bd4 <_printf_i+0x244>)
d05e0a84:	2f6f      	cmp	r7, #111	; 0x6f
d05e0a86:	bf0c      	ite	eq
d05e0a88:	2308      	moveq	r3, #8
d05e0a8a:	230a      	movne	r3, #10
d05e0a8c:	2100      	movs	r1, #0
d05e0a8e:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d05e0a92:	6866      	ldr	r6, [r4, #4]
d05e0a94:	60a6      	str	r6, [r4, #8]
d05e0a96:	2e00      	cmp	r6, #0
d05e0a98:	bfa2      	ittt	ge
d05e0a9a:	6821      	ldrge	r1, [r4, #0]
d05e0a9c:	f021 0104 	bicge.w	r1, r1, #4
d05e0aa0:	6021      	strge	r1, [r4, #0]
d05e0aa2:	b90d      	cbnz	r5, d05e0aa8 <_printf_i+0x118>
d05e0aa4:	2e00      	cmp	r6, #0
d05e0aa6:	d04d      	beq.n	d05e0b44 <_printf_i+0x1b4>
d05e0aa8:	4616      	mov	r6, r2
d05e0aaa:	fbb5 f1f3 	udiv	r1, r5, r3
d05e0aae:	fb03 5711 	mls	r7, r3, r1, r5
d05e0ab2:	5dc7      	ldrb	r7, [r0, r7]
d05e0ab4:	f806 7d01 	strb.w	r7, [r6, #-1]!
d05e0ab8:	462f      	mov	r7, r5
d05e0aba:	42bb      	cmp	r3, r7
d05e0abc:	460d      	mov	r5, r1
d05e0abe:	d9f4      	bls.n	d05e0aaa <_printf_i+0x11a>
d05e0ac0:	2b08      	cmp	r3, #8
d05e0ac2:	d10b      	bne.n	d05e0adc <_printf_i+0x14c>
d05e0ac4:	6823      	ldr	r3, [r4, #0]
d05e0ac6:	07df      	lsls	r7, r3, #31
d05e0ac8:	d508      	bpl.n	d05e0adc <_printf_i+0x14c>
d05e0aca:	6923      	ldr	r3, [r4, #16]
d05e0acc:	6861      	ldr	r1, [r4, #4]
d05e0ace:	4299      	cmp	r1, r3
d05e0ad0:	bfde      	ittt	le
d05e0ad2:	2330      	movle	r3, #48	; 0x30
d05e0ad4:	f806 3c01 	strble.w	r3, [r6, #-1]
d05e0ad8:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d05e0adc:	1b92      	subs	r2, r2, r6
d05e0ade:	6122      	str	r2, [r4, #16]
d05e0ae0:	f8cd a000 	str.w	sl, [sp]
d05e0ae4:	464b      	mov	r3, r9
d05e0ae6:	aa03      	add	r2, sp, #12
d05e0ae8:	4621      	mov	r1, r4
d05e0aea:	4640      	mov	r0, r8
d05e0aec:	f7ff fee2 	bl	d05e08b4 <_printf_common>
d05e0af0:	3001      	adds	r0, #1
d05e0af2:	d14c      	bne.n	d05e0b8e <_printf_i+0x1fe>
d05e0af4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e0af8:	b004      	add	sp, #16
d05e0afa:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e0afe:	4835      	ldr	r0, [pc, #212]	; (d05e0bd4 <_printf_i+0x244>)
d05e0b00:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d05e0b04:	6823      	ldr	r3, [r4, #0]
d05e0b06:	680e      	ldr	r6, [r1, #0]
d05e0b08:	061f      	lsls	r7, r3, #24
d05e0b0a:	f856 5b04 	ldr.w	r5, [r6], #4
d05e0b0e:	600e      	str	r6, [r1, #0]
d05e0b10:	d514      	bpl.n	d05e0b3c <_printf_i+0x1ac>
d05e0b12:	07d9      	lsls	r1, r3, #31
d05e0b14:	bf44      	itt	mi
d05e0b16:	f043 0320 	orrmi.w	r3, r3, #32
d05e0b1a:	6023      	strmi	r3, [r4, #0]
d05e0b1c:	b91d      	cbnz	r5, d05e0b26 <_printf_i+0x196>
d05e0b1e:	6823      	ldr	r3, [r4, #0]
d05e0b20:	f023 0320 	bic.w	r3, r3, #32
d05e0b24:	6023      	str	r3, [r4, #0]
d05e0b26:	2310      	movs	r3, #16
d05e0b28:	e7b0      	b.n	d05e0a8c <_printf_i+0xfc>
d05e0b2a:	6823      	ldr	r3, [r4, #0]
d05e0b2c:	f043 0320 	orr.w	r3, r3, #32
d05e0b30:	6023      	str	r3, [r4, #0]
d05e0b32:	2378      	movs	r3, #120	; 0x78
d05e0b34:	4828      	ldr	r0, [pc, #160]	; (d05e0bd8 <_printf_i+0x248>)
d05e0b36:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d05e0b3a:	e7e3      	b.n	d05e0b04 <_printf_i+0x174>
d05e0b3c:	065e      	lsls	r6, r3, #25
d05e0b3e:	bf48      	it	mi
d05e0b40:	b2ad      	uxthmi	r5, r5
d05e0b42:	e7e6      	b.n	d05e0b12 <_printf_i+0x182>
d05e0b44:	4616      	mov	r6, r2
d05e0b46:	e7bb      	b.n	d05e0ac0 <_printf_i+0x130>
d05e0b48:	680b      	ldr	r3, [r1, #0]
d05e0b4a:	6826      	ldr	r6, [r4, #0]
d05e0b4c:	6960      	ldr	r0, [r4, #20]
d05e0b4e:	1d1d      	adds	r5, r3, #4
d05e0b50:	600d      	str	r5, [r1, #0]
d05e0b52:	0635      	lsls	r5, r6, #24
d05e0b54:	681b      	ldr	r3, [r3, #0]
d05e0b56:	d501      	bpl.n	d05e0b5c <_printf_i+0x1cc>
d05e0b58:	6018      	str	r0, [r3, #0]
d05e0b5a:	e002      	b.n	d05e0b62 <_printf_i+0x1d2>
d05e0b5c:	0671      	lsls	r1, r6, #25
d05e0b5e:	d5fb      	bpl.n	d05e0b58 <_printf_i+0x1c8>
d05e0b60:	8018      	strh	r0, [r3, #0]
d05e0b62:	2300      	movs	r3, #0
d05e0b64:	6123      	str	r3, [r4, #16]
d05e0b66:	4616      	mov	r6, r2
d05e0b68:	e7ba      	b.n	d05e0ae0 <_printf_i+0x150>
d05e0b6a:	680b      	ldr	r3, [r1, #0]
d05e0b6c:	1d1a      	adds	r2, r3, #4
d05e0b6e:	600a      	str	r2, [r1, #0]
d05e0b70:	681e      	ldr	r6, [r3, #0]
d05e0b72:	6862      	ldr	r2, [r4, #4]
d05e0b74:	2100      	movs	r1, #0
d05e0b76:	4630      	mov	r0, r6
d05e0b78:	f000 f832 	bl	d05e0be0 <memchr>
d05e0b7c:	b108      	cbz	r0, d05e0b82 <_printf_i+0x1f2>
d05e0b7e:	1b80      	subs	r0, r0, r6
d05e0b80:	6060      	str	r0, [r4, #4]
d05e0b82:	6863      	ldr	r3, [r4, #4]
d05e0b84:	6123      	str	r3, [r4, #16]
d05e0b86:	2300      	movs	r3, #0
d05e0b88:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05e0b8c:	e7a8      	b.n	d05e0ae0 <_printf_i+0x150>
d05e0b8e:	6923      	ldr	r3, [r4, #16]
d05e0b90:	4632      	mov	r2, r6
d05e0b92:	4649      	mov	r1, r9
d05e0b94:	4640      	mov	r0, r8
d05e0b96:	47d0      	blx	sl
d05e0b98:	3001      	adds	r0, #1
d05e0b9a:	d0ab      	beq.n	d05e0af4 <_printf_i+0x164>
d05e0b9c:	6823      	ldr	r3, [r4, #0]
d05e0b9e:	079b      	lsls	r3, r3, #30
d05e0ba0:	d413      	bmi.n	d05e0bca <_printf_i+0x23a>
d05e0ba2:	68e0      	ldr	r0, [r4, #12]
d05e0ba4:	9b03      	ldr	r3, [sp, #12]
d05e0ba6:	4298      	cmp	r0, r3
d05e0ba8:	bfb8      	it	lt
d05e0baa:	4618      	movlt	r0, r3
d05e0bac:	e7a4      	b.n	d05e0af8 <_printf_i+0x168>
d05e0bae:	2301      	movs	r3, #1
d05e0bb0:	4632      	mov	r2, r6
d05e0bb2:	4649      	mov	r1, r9
d05e0bb4:	4640      	mov	r0, r8
d05e0bb6:	47d0      	blx	sl
d05e0bb8:	3001      	adds	r0, #1
d05e0bba:	d09b      	beq.n	d05e0af4 <_printf_i+0x164>
d05e0bbc:	3501      	adds	r5, #1
d05e0bbe:	68e3      	ldr	r3, [r4, #12]
d05e0bc0:	9903      	ldr	r1, [sp, #12]
d05e0bc2:	1a5b      	subs	r3, r3, r1
d05e0bc4:	42ab      	cmp	r3, r5
d05e0bc6:	dcf2      	bgt.n	d05e0bae <_printf_i+0x21e>
d05e0bc8:	e7eb      	b.n	d05e0ba2 <_printf_i+0x212>
d05e0bca:	2500      	movs	r5, #0
d05e0bcc:	f104 0619 	add.w	r6, r4, #25
d05e0bd0:	e7f5      	b.n	d05e0bbe <_printf_i+0x22e>
d05e0bd2:	bf00      	nop
d05e0bd4:	d05e1089 	.word	0xd05e1089
d05e0bd8:	d05e109a 	.word	0xd05e109a
d05e0bdc:	00000000 	.word	0x00000000

d05e0be0 <memchr>:
d05e0be0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05e0be4:	2a10      	cmp	r2, #16
d05e0be6:	db2b      	blt.n	d05e0c40 <memchr+0x60>
d05e0be8:	f010 0f07 	tst.w	r0, #7
d05e0bec:	d008      	beq.n	d05e0c00 <memchr+0x20>
d05e0bee:	f810 3b01 	ldrb.w	r3, [r0], #1
d05e0bf2:	3a01      	subs	r2, #1
d05e0bf4:	428b      	cmp	r3, r1
d05e0bf6:	d02d      	beq.n	d05e0c54 <memchr+0x74>
d05e0bf8:	f010 0f07 	tst.w	r0, #7
d05e0bfc:	b342      	cbz	r2, d05e0c50 <memchr+0x70>
d05e0bfe:	d1f6      	bne.n	d05e0bee <memchr+0xe>
d05e0c00:	b4f0      	push	{r4, r5, r6, r7}
d05e0c02:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d05e0c06:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d05e0c0a:	f022 0407 	bic.w	r4, r2, #7
d05e0c0e:	f07f 0700 	mvns.w	r7, #0
d05e0c12:	2300      	movs	r3, #0
d05e0c14:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d05e0c18:	3c08      	subs	r4, #8
d05e0c1a:	ea85 0501 	eor.w	r5, r5, r1
d05e0c1e:	ea86 0601 	eor.w	r6, r6, r1
d05e0c22:	fa85 f547 	uadd8	r5, r5, r7
d05e0c26:	faa3 f587 	sel	r5, r3, r7
d05e0c2a:	fa86 f647 	uadd8	r6, r6, r7
d05e0c2e:	faa5 f687 	sel	r6, r5, r7
d05e0c32:	b98e      	cbnz	r6, d05e0c58 <memchr+0x78>
d05e0c34:	d1ee      	bne.n	d05e0c14 <memchr+0x34>
d05e0c36:	bcf0      	pop	{r4, r5, r6, r7}
d05e0c38:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05e0c3c:	f002 0207 	and.w	r2, r2, #7
d05e0c40:	b132      	cbz	r2, d05e0c50 <memchr+0x70>
d05e0c42:	f810 3b01 	ldrb.w	r3, [r0], #1
d05e0c46:	3a01      	subs	r2, #1
d05e0c48:	ea83 0301 	eor.w	r3, r3, r1
d05e0c4c:	b113      	cbz	r3, d05e0c54 <memchr+0x74>
d05e0c4e:	d1f8      	bne.n	d05e0c42 <memchr+0x62>
d05e0c50:	2000      	movs	r0, #0
d05e0c52:	4770      	bx	lr
d05e0c54:	3801      	subs	r0, #1
d05e0c56:	4770      	bx	lr
d05e0c58:	2d00      	cmp	r5, #0
d05e0c5a:	bf06      	itte	eq
d05e0c5c:	4635      	moveq	r5, r6
d05e0c5e:	3803      	subeq	r0, #3
d05e0c60:	3807      	subne	r0, #7
d05e0c62:	f015 0f01 	tst.w	r5, #1
d05e0c66:	d107      	bne.n	d05e0c78 <memchr+0x98>
d05e0c68:	3001      	adds	r0, #1
d05e0c6a:	f415 7f80 	tst.w	r5, #256	; 0x100
d05e0c6e:	bf02      	ittt	eq
d05e0c70:	3001      	addeq	r0, #1
d05e0c72:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d05e0c76:	3001      	addeq	r0, #1
d05e0c78:	bcf0      	pop	{r4, r5, r6, r7}
d05e0c7a:	3801      	subs	r0, #1
d05e0c7c:	4770      	bx	lr
d05e0c7e:	bf00      	nop

d05e0c80 <memcpy>:
d05e0c80:	440a      	add	r2, r1
d05e0c82:	4291      	cmp	r1, r2
d05e0c84:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d05e0c88:	d100      	bne.n	d05e0c8c <memcpy+0xc>
d05e0c8a:	4770      	bx	lr
d05e0c8c:	b510      	push	{r4, lr}
d05e0c8e:	f811 4b01 	ldrb.w	r4, [r1], #1
d05e0c92:	f803 4f01 	strb.w	r4, [r3, #1]!
d05e0c96:	4291      	cmp	r1, r2
d05e0c98:	d1f9      	bne.n	d05e0c8e <memcpy+0xe>
d05e0c9a:	bd10      	pop	{r4, pc}

d05e0c9c <memmove>:
d05e0c9c:	4288      	cmp	r0, r1
d05e0c9e:	b510      	push	{r4, lr}
d05e0ca0:	eb01 0402 	add.w	r4, r1, r2
d05e0ca4:	d902      	bls.n	d05e0cac <memmove+0x10>
d05e0ca6:	4284      	cmp	r4, r0
d05e0ca8:	4623      	mov	r3, r4
d05e0caa:	d807      	bhi.n	d05e0cbc <memmove+0x20>
d05e0cac:	1e43      	subs	r3, r0, #1
d05e0cae:	42a1      	cmp	r1, r4
d05e0cb0:	d008      	beq.n	d05e0cc4 <memmove+0x28>
d05e0cb2:	f811 2b01 	ldrb.w	r2, [r1], #1
d05e0cb6:	f803 2f01 	strb.w	r2, [r3, #1]!
d05e0cba:	e7f8      	b.n	d05e0cae <memmove+0x12>
d05e0cbc:	4402      	add	r2, r0
d05e0cbe:	4601      	mov	r1, r0
d05e0cc0:	428a      	cmp	r2, r1
d05e0cc2:	d100      	bne.n	d05e0cc6 <memmove+0x2a>
d05e0cc4:	bd10      	pop	{r4, pc}
d05e0cc6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d05e0cca:	f802 4d01 	strb.w	r4, [r2, #-1]!
d05e0cce:	e7f7      	b.n	d05e0cc0 <memmove+0x24>

d05e0cd0 <_free_r>:
d05e0cd0:	b537      	push	{r0, r1, r2, r4, r5, lr}
d05e0cd2:	2900      	cmp	r1, #0
d05e0cd4:	d048      	beq.n	d05e0d68 <_free_r+0x98>
d05e0cd6:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05e0cda:	9001      	str	r0, [sp, #4]
d05e0cdc:	2b00      	cmp	r3, #0
d05e0cde:	f1a1 0404 	sub.w	r4, r1, #4
d05e0ce2:	bfb8      	it	lt
d05e0ce4:	18e4      	addlt	r4, r4, r3
d05e0ce6:	f000 f8d3 	bl	d05e0e90 <__malloc_lock>
d05e0cea:	4a20      	ldr	r2, [pc, #128]	; (d05e0d6c <_free_r+0x9c>)
d05e0cec:	9801      	ldr	r0, [sp, #4]
d05e0cee:	6813      	ldr	r3, [r2, #0]
d05e0cf0:	4615      	mov	r5, r2
d05e0cf2:	b933      	cbnz	r3, d05e0d02 <_free_r+0x32>
d05e0cf4:	6063      	str	r3, [r4, #4]
d05e0cf6:	6014      	str	r4, [r2, #0]
d05e0cf8:	b003      	add	sp, #12
d05e0cfa:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05e0cfe:	f000 b8cd 	b.w	d05e0e9c <__malloc_unlock>
d05e0d02:	42a3      	cmp	r3, r4
d05e0d04:	d90b      	bls.n	d05e0d1e <_free_r+0x4e>
d05e0d06:	6821      	ldr	r1, [r4, #0]
d05e0d08:	1862      	adds	r2, r4, r1
d05e0d0a:	4293      	cmp	r3, r2
d05e0d0c:	bf04      	itt	eq
d05e0d0e:	681a      	ldreq	r2, [r3, #0]
d05e0d10:	685b      	ldreq	r3, [r3, #4]
d05e0d12:	6063      	str	r3, [r4, #4]
d05e0d14:	bf04      	itt	eq
d05e0d16:	1852      	addeq	r2, r2, r1
d05e0d18:	6022      	streq	r2, [r4, #0]
d05e0d1a:	602c      	str	r4, [r5, #0]
d05e0d1c:	e7ec      	b.n	d05e0cf8 <_free_r+0x28>
d05e0d1e:	461a      	mov	r2, r3
d05e0d20:	685b      	ldr	r3, [r3, #4]
d05e0d22:	b10b      	cbz	r3, d05e0d28 <_free_r+0x58>
d05e0d24:	42a3      	cmp	r3, r4
d05e0d26:	d9fa      	bls.n	d05e0d1e <_free_r+0x4e>
d05e0d28:	6811      	ldr	r1, [r2, #0]
d05e0d2a:	1855      	adds	r5, r2, r1
d05e0d2c:	42a5      	cmp	r5, r4
d05e0d2e:	d10b      	bne.n	d05e0d48 <_free_r+0x78>
d05e0d30:	6824      	ldr	r4, [r4, #0]
d05e0d32:	4421      	add	r1, r4
d05e0d34:	1854      	adds	r4, r2, r1
d05e0d36:	42a3      	cmp	r3, r4
d05e0d38:	6011      	str	r1, [r2, #0]
d05e0d3a:	d1dd      	bne.n	d05e0cf8 <_free_r+0x28>
d05e0d3c:	681c      	ldr	r4, [r3, #0]
d05e0d3e:	685b      	ldr	r3, [r3, #4]
d05e0d40:	6053      	str	r3, [r2, #4]
d05e0d42:	4421      	add	r1, r4
d05e0d44:	6011      	str	r1, [r2, #0]
d05e0d46:	e7d7      	b.n	d05e0cf8 <_free_r+0x28>
d05e0d48:	d902      	bls.n	d05e0d50 <_free_r+0x80>
d05e0d4a:	230c      	movs	r3, #12
d05e0d4c:	6003      	str	r3, [r0, #0]
d05e0d4e:	e7d3      	b.n	d05e0cf8 <_free_r+0x28>
d05e0d50:	6825      	ldr	r5, [r4, #0]
d05e0d52:	1961      	adds	r1, r4, r5
d05e0d54:	428b      	cmp	r3, r1
d05e0d56:	bf04      	itt	eq
d05e0d58:	6819      	ldreq	r1, [r3, #0]
d05e0d5a:	685b      	ldreq	r3, [r3, #4]
d05e0d5c:	6063      	str	r3, [r4, #4]
d05e0d5e:	bf04      	itt	eq
d05e0d60:	1949      	addeq	r1, r1, r5
d05e0d62:	6021      	streq	r1, [r4, #0]
d05e0d64:	6054      	str	r4, [r2, #4]
d05e0d66:	e7c7      	b.n	d05e0cf8 <_free_r+0x28>
d05e0d68:	b003      	add	sp, #12
d05e0d6a:	bd30      	pop	{r4, r5, pc}
d05e0d6c:	d05e111c 	.word	0xd05e111c

d05e0d70 <_malloc_r>:
d05e0d70:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0d72:	1ccd      	adds	r5, r1, #3
d05e0d74:	f025 0503 	bic.w	r5, r5, #3
d05e0d78:	3508      	adds	r5, #8
d05e0d7a:	2d0c      	cmp	r5, #12
d05e0d7c:	bf38      	it	cc
d05e0d7e:	250c      	movcc	r5, #12
d05e0d80:	2d00      	cmp	r5, #0
d05e0d82:	4606      	mov	r6, r0
d05e0d84:	db01      	blt.n	d05e0d8a <_malloc_r+0x1a>
d05e0d86:	42a9      	cmp	r1, r5
d05e0d88:	d903      	bls.n	d05e0d92 <_malloc_r+0x22>
d05e0d8a:	230c      	movs	r3, #12
d05e0d8c:	6033      	str	r3, [r6, #0]
d05e0d8e:	2000      	movs	r0, #0
d05e0d90:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e0d92:	f000 f87d 	bl	d05e0e90 <__malloc_lock>
d05e0d96:	4921      	ldr	r1, [pc, #132]	; (d05e0e1c <_malloc_r+0xac>)
d05e0d98:	680a      	ldr	r2, [r1, #0]
d05e0d9a:	4614      	mov	r4, r2
d05e0d9c:	b99c      	cbnz	r4, d05e0dc6 <_malloc_r+0x56>
d05e0d9e:	4f20      	ldr	r7, [pc, #128]	; (d05e0e20 <_malloc_r+0xb0>)
d05e0da0:	683b      	ldr	r3, [r7, #0]
d05e0da2:	b923      	cbnz	r3, d05e0dae <_malloc_r+0x3e>
d05e0da4:	4621      	mov	r1, r4
d05e0da6:	4630      	mov	r0, r6
d05e0da8:	f000 f862 	bl	d05e0e70 <_sbrk_r>
d05e0dac:	6038      	str	r0, [r7, #0]
d05e0dae:	4629      	mov	r1, r5
d05e0db0:	4630      	mov	r0, r6
d05e0db2:	f000 f85d 	bl	d05e0e70 <_sbrk_r>
d05e0db6:	1c43      	adds	r3, r0, #1
d05e0db8:	d123      	bne.n	d05e0e02 <_malloc_r+0x92>
d05e0dba:	230c      	movs	r3, #12
d05e0dbc:	6033      	str	r3, [r6, #0]
d05e0dbe:	4630      	mov	r0, r6
d05e0dc0:	f000 f86c 	bl	d05e0e9c <__malloc_unlock>
d05e0dc4:	e7e3      	b.n	d05e0d8e <_malloc_r+0x1e>
d05e0dc6:	6823      	ldr	r3, [r4, #0]
d05e0dc8:	1b5b      	subs	r3, r3, r5
d05e0dca:	d417      	bmi.n	d05e0dfc <_malloc_r+0x8c>
d05e0dcc:	2b0b      	cmp	r3, #11
d05e0dce:	d903      	bls.n	d05e0dd8 <_malloc_r+0x68>
d05e0dd0:	6023      	str	r3, [r4, #0]
d05e0dd2:	441c      	add	r4, r3
d05e0dd4:	6025      	str	r5, [r4, #0]
d05e0dd6:	e004      	b.n	d05e0de2 <_malloc_r+0x72>
d05e0dd8:	6863      	ldr	r3, [r4, #4]
d05e0dda:	42a2      	cmp	r2, r4
d05e0ddc:	bf0c      	ite	eq
d05e0dde:	600b      	streq	r3, [r1, #0]
d05e0de0:	6053      	strne	r3, [r2, #4]
d05e0de2:	4630      	mov	r0, r6
d05e0de4:	f000 f85a 	bl	d05e0e9c <__malloc_unlock>
d05e0de8:	f104 000b 	add.w	r0, r4, #11
d05e0dec:	1d23      	adds	r3, r4, #4
d05e0dee:	f020 0007 	bic.w	r0, r0, #7
d05e0df2:	1ac2      	subs	r2, r0, r3
d05e0df4:	d0cc      	beq.n	d05e0d90 <_malloc_r+0x20>
d05e0df6:	1a1b      	subs	r3, r3, r0
d05e0df8:	50a3      	str	r3, [r4, r2]
d05e0dfa:	e7c9      	b.n	d05e0d90 <_malloc_r+0x20>
d05e0dfc:	4622      	mov	r2, r4
d05e0dfe:	6864      	ldr	r4, [r4, #4]
d05e0e00:	e7cc      	b.n	d05e0d9c <_malloc_r+0x2c>
d05e0e02:	1cc4      	adds	r4, r0, #3
d05e0e04:	f024 0403 	bic.w	r4, r4, #3
d05e0e08:	42a0      	cmp	r0, r4
d05e0e0a:	d0e3      	beq.n	d05e0dd4 <_malloc_r+0x64>
d05e0e0c:	1a21      	subs	r1, r4, r0
d05e0e0e:	4630      	mov	r0, r6
d05e0e10:	f000 f82e 	bl	d05e0e70 <_sbrk_r>
d05e0e14:	3001      	adds	r0, #1
d05e0e16:	d1dd      	bne.n	d05e0dd4 <_malloc_r+0x64>
d05e0e18:	e7cf      	b.n	d05e0dba <_malloc_r+0x4a>
d05e0e1a:	bf00      	nop
d05e0e1c:	d05e111c 	.word	0xd05e111c
d05e0e20:	d05e1120 	.word	0xd05e1120

d05e0e24 <_realloc_r>:
d05e0e24:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0e26:	4607      	mov	r7, r0
d05e0e28:	4614      	mov	r4, r2
d05e0e2a:	460e      	mov	r6, r1
d05e0e2c:	b921      	cbnz	r1, d05e0e38 <_realloc_r+0x14>
d05e0e2e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d05e0e32:	4611      	mov	r1, r2
d05e0e34:	f7ff bf9c 	b.w	d05e0d70 <_malloc_r>
d05e0e38:	b922      	cbnz	r2, d05e0e44 <_realloc_r+0x20>
d05e0e3a:	f7ff ff49 	bl	d05e0cd0 <_free_r>
d05e0e3e:	4625      	mov	r5, r4
d05e0e40:	4628      	mov	r0, r5
d05e0e42:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e0e44:	f000 f830 	bl	d05e0ea8 <_malloc_usable_size_r>
d05e0e48:	42a0      	cmp	r0, r4
d05e0e4a:	d20f      	bcs.n	d05e0e6c <_realloc_r+0x48>
d05e0e4c:	4621      	mov	r1, r4
d05e0e4e:	4638      	mov	r0, r7
d05e0e50:	f7ff ff8e 	bl	d05e0d70 <_malloc_r>
d05e0e54:	4605      	mov	r5, r0
d05e0e56:	2800      	cmp	r0, #0
d05e0e58:	d0f2      	beq.n	d05e0e40 <_realloc_r+0x1c>
d05e0e5a:	4631      	mov	r1, r6
d05e0e5c:	4622      	mov	r2, r4
d05e0e5e:	f7ff ff0f 	bl	d05e0c80 <memcpy>
d05e0e62:	4631      	mov	r1, r6
d05e0e64:	4638      	mov	r0, r7
d05e0e66:	f7ff ff33 	bl	d05e0cd0 <_free_r>
d05e0e6a:	e7e9      	b.n	d05e0e40 <_realloc_r+0x1c>
d05e0e6c:	4635      	mov	r5, r6
d05e0e6e:	e7e7      	b.n	d05e0e40 <_realloc_r+0x1c>

d05e0e70 <_sbrk_r>:
d05e0e70:	b538      	push	{r3, r4, r5, lr}
d05e0e72:	4d06      	ldr	r5, [pc, #24]	; (d05e0e8c <_sbrk_r+0x1c>)
d05e0e74:	2300      	movs	r3, #0
d05e0e76:	4604      	mov	r4, r0
d05e0e78:	4608      	mov	r0, r1
d05e0e7a:	602b      	str	r3, [r5, #0]
d05e0e7c:	f7ff f8d2 	bl	d05e0024 <_sbrk>
d05e0e80:	1c43      	adds	r3, r0, #1
d05e0e82:	d102      	bne.n	d05e0e8a <_sbrk_r+0x1a>
d05e0e84:	682b      	ldr	r3, [r5, #0]
d05e0e86:	b103      	cbz	r3, d05e0e8a <_sbrk_r+0x1a>
d05e0e88:	6023      	str	r3, [r4, #0]
d05e0e8a:	bd38      	pop	{r3, r4, r5, pc}
d05e0e8c:	d05e1124 	.word	0xd05e1124

d05e0e90 <__malloc_lock>:
d05e0e90:	4801      	ldr	r0, [pc, #4]	; (d05e0e98 <__malloc_lock+0x8>)
d05e0e92:	f000 b811 	b.w	d05e0eb8 <__retarget_lock_acquire_recursive>
d05e0e96:	bf00      	nop
d05e0e98:	d05e112c 	.word	0xd05e112c

d05e0e9c <__malloc_unlock>:
d05e0e9c:	4801      	ldr	r0, [pc, #4]	; (d05e0ea4 <__malloc_unlock+0x8>)
d05e0e9e:	f000 b80c 	b.w	d05e0eba <__retarget_lock_release_recursive>
d05e0ea2:	bf00      	nop
d05e0ea4:	d05e112c 	.word	0xd05e112c

d05e0ea8 <_malloc_usable_size_r>:
d05e0ea8:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05e0eac:	1f18      	subs	r0, r3, #4
d05e0eae:	2b00      	cmp	r3, #0
d05e0eb0:	bfbc      	itt	lt
d05e0eb2:	580b      	ldrlt	r3, [r1, r0]
d05e0eb4:	18c0      	addlt	r0, r0, r3
d05e0eb6:	4770      	bx	lr

d05e0eb8 <__retarget_lock_acquire_recursive>:
d05e0eb8:	4770      	bx	lr

d05e0eba <__retarget_lock_release_recursive>:
d05e0eba:	4770      	bx	lr
d05e0ebc:	0000002f 	.word	0x0000002f
d05e0ec0:	6c756f43 	.word	0x6c756f43
d05e0ec4:	6f6e2064 	.word	0x6f6e2064
d05e0ec8:	706f2074 	.word	0x706f2074
d05e0ecc:	64206e65 	.word	0x64206e65
d05e0ed0:	63657269 	.word	0x63657269
d05e0ed4:	79726f74 	.word	0x79726f74
d05e0ed8:	7325203a 	.word	0x7325203a
d05e0edc:	00000a0d 	.word	0x00000a0d
d05e0ee0:	0000002e 	.word	0x0000002e
d05e0ee4:	00002e2e 	.word	0x00002e2e
d05e0ee8:	49442a2a 	.word	0x49442a2a
d05e0eec:	494c5f52 	.word	0x494c5f52
d05e0ef0:	2a2a5453 	.word	0x2a2a5453
d05e0ef4:	00000a0d 	.word	0x00000a0d
d05e0ef8:	68746170 	.word	0x68746170
d05e0efc:	7325203a 	.word	0x7325203a
d05e0f00:	00000a0d 	.word	0x00000a0d
d05e0f04:	20202020 	.word	0x20202020
d05e0f08:	20524944 	.word	0x20524944
d05e0f0c:	5d73255b 	.word	0x5d73255b
d05e0f10:	00000a0d 	.word	0x00000a0d
d05e0f14:	646c3625 	.word	0x646c3625
d05e0f18:	0000206b 	.word	0x0000206b
d05e0f1c:	0a0d7325 	.word	0x0a0d7325
d05e0f20:	00000000 	.word	0x00000000
d05e0f24:	2d2d2d2d 	.word	0x2d2d2d2d
d05e0f28:	2d2d2d2d 	.word	0x2d2d2d2d
d05e0f2c:	2d2d2d2d 	.word	0x2d2d2d2d
d05e0f30:	2d2d2d2d 	.word	0x2d2d2d2d
d05e0f34:	2d2d2d2d 	.word	0x2d2d2d2d
d05e0f38:	2d2d2d2d 	.word	0x2d2d2d2d
d05e0f3c:	2d2d2d2d 	.word	0x2d2d2d2d
d05e0f40:	00000a0d 	.word	0x00000a0d
d05e0f44:	46206425 	.word	0x46206425
d05e0f48:	28656c69 	.word	0x28656c69
d05e0f4c:	0a0d2973 	.word	0x0a0d2973
d05e0f50:	00000000 	.word	0x00000000
d05e0f54:	44206425 	.word	0x44206425
d05e0f58:	73287269 	.word	0x73287269
d05e0f5c:	000a0d29 	.word	0x000a0d29
d05e0f60:	657a6953 	.word	0x657a6953
d05e0f64:	756c2520 	.word	0x756c2520
d05e0f68:	000a0d6b 	.word	0x000a0d6b
d05e0f6c:	5f524944 	.word	0x5f524944
d05e0f70:	3e3a4b4f 	.word	0x3e3a4b4f
d05e0f74:	0a0d      	.short	0x0a0d
	...

d05e0f77 <_ctype_>:
d05e0f77:	2000 2020 2020 2020 2020 2828 2828 2028     .         ((((( 
d05e0f87:	2020 2020 2020 2020 2020 2020 2020 2020                     
d05e0f97:	8820 1010 1010 1010 1010 1010 1010 1010      ...............
d05e0fa7:	0410 0404 0404 0404 0404 1004 1010 1010     ................
d05e0fb7:	1010 4141 4141 4141 0101 0101 0101 0101     ..AAAAAA........
d05e0fc7:	0101 0101 0101 0101 0101 0101 1010 1010     ................
d05e0fd7:	1010 4242 4242 4242 0202 0202 0202 0202     ..BBBBBB........
d05e0fe7:	0202 0202 0202 0202 0202 0202 1010 1010     ................
d05e0ff7:	0020 0000 0000 0000 0000 0000 0000 0000      ...............
	...
d05e1077:	2300 302d 202b 6800 4c6c 6500 6766 4645     .#-0+ .hlL.efgEF
d05e1087:	0047 3130 3332 3534 3736 3938 4241 4443     G.0123456789ABCD
d05e1097:	4645 3000 3231 3433 3635 3837 6139 6362     EF.0123456789abc
d05e10a7:	6564 0066                                   def.

Disassembly of section .init:

d05e10ac <_init>:
d05e10ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e10ae:	bf00      	nop

Disassembly of section .fini:

d05e10b0 <_fini>:
d05e10b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e10b2:	bf00      	nop
