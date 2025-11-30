
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d05e0010 <applet_entry>:
d05e0010:	f000 b820 	b.w	d05e0054 <main>

d05e0014 <_sbrk>:
d05e0014:	4904      	ldr	r1, [pc, #16]	; (d05e0028 <_sbrk+0x14>)
d05e0016:	4a05      	ldr	r2, [pc, #20]	; (d05e002c <_sbrk+0x18>)
d05e0018:	680b      	ldr	r3, [r1, #0]
d05e001a:	2b00      	cmp	r3, #0
d05e001c:	bf08      	it	eq
d05e001e:	4613      	moveq	r3, r2
d05e0020:	181a      	adds	r2, r3, r0
d05e0022:	4618      	mov	r0, r3
d05e0024:	600a      	str	r2, [r1, #0]
d05e0026:	4770      	bx	lr
d05e0028:	d05e0cb8 	.word	0xd05e0cb8
d05e002c:	d05e0cd1 	.word	0xd05e0cd1

d05e0030 <get_filename>:
d05e0030:	b538      	push	{r3, r4, r5, lr}
d05e0032:	212f      	movs	r1, #47	; 0x2f
d05e0034:	4605      	mov	r5, r0
d05e0036:	f000 f906 	bl	d05e0246 <strrchr>
d05e003a:	4604      	mov	r4, r0
d05e003c:	215c      	movs	r1, #92	; 0x5c
d05e003e:	4628      	mov	r0, r5
d05e0040:	f000 f901 	bl	d05e0246 <strrchr>
d05e0044:	42a0      	cmp	r0, r4
d05e0046:	bf38      	it	cc
d05e0048:	4620      	movcc	r0, r4
d05e004a:	b108      	cbz	r0, d05e0050 <get_filename+0x20>
d05e004c:	3001      	adds	r0, #1
d05e004e:	bd38      	pop	{r3, r4, r5, pc}
d05e0050:	4628      	mov	r0, r5
d05e0052:	bd38      	pop	{r3, r4, r5, pc}

d05e0054 <main>:
d05e0054:	4a4a      	ldr	r2, [pc, #296]	; (d05e0180 <main+0x12c>)
d05e0056:	2802      	cmp	r0, #2
d05e0058:	6813      	ldr	r3, [r2, #0]
d05e005a:	f023 0310 	bic.w	r3, r3, #16
d05e005e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05e0062:	6013      	str	r3, [r2, #0]
d05e0064:	f5ad 6da2 	sub.w	sp, sp, #1296	; 0x510
d05e0068:	dd72      	ble.n	d05e0150 <main+0xfc>
d05e006a:	e9d1 8501 	ldrd	r8, r5, [r1, #4]
d05e006e:	4628      	mov	r0, r5
d05e0070:	f000 f8ce 	bl	d05e0210 <strlen>
d05e0074:	4428      	add	r0, r5
d05e0076:	f810 2c01 	ldrb.w	r2, [r0, #-1]
d05e007a:	2a5c      	cmp	r2, #92	; 0x5c
d05e007c:	d05a      	beq.n	d05e0134 <main+0xe0>
d05e007e:	f1a2 032f 	sub.w	r3, r2, #47	; 0x2f
d05e0082:	425c      	negs	r4, r3
d05e0084:	415c      	adcs	r4, r3
d05e0086:	2c00      	cmp	r4, #0
d05e0088:	d154      	bne.n	d05e0134 <main+0xe0>
d05e008a:	af04      	add	r7, sp, #16
d05e008c:	4629      	mov	r1, r5
d05e008e:	f44f 7280 	mov.w	r2, #256	; 0x100
d05e0092:	4638      	mov	r0, r7
d05e0094:	f000 f8c4 	bl	d05e0220 <strncpy>
d05e0098:	f887 40ff 	strb.w	r4, [r7, #255]	; 0xff
d05e009c:	4c39      	ldr	r4, [pc, #228]	; (d05e0184 <main+0x130>)
d05e009e:	4641      	mov	r1, r8
d05e00a0:	4839      	ldr	r0, [pc, #228]	; (d05e0188 <main+0x134>)
d05e00a2:	68a3      	ldr	r3, [r4, #8]
d05e00a4:	4798      	blx	r3
d05e00a6:	f8d4 3094 	ldr.w	r3, [r4, #148]	; 0x94
d05e00aa:	2201      	movs	r2, #1
d05e00ac:	4641      	mov	r1, r8
d05e00ae:	2000      	movs	r0, #0
d05e00b0:	4798      	blx	r3
d05e00b2:	68a3      	ldr	r3, [r4, #8]
d05e00b4:	4605      	mov	r5, r0
d05e00b6:	2800      	cmp	r0, #0
d05e00b8:	d150      	bne.n	d05e015c <main+0x108>
d05e00ba:	4639      	mov	r1, r7
d05e00bc:	4833      	ldr	r0, [pc, #204]	; (d05e018c <main+0x138>)
d05e00be:	4798      	blx	r3
d05e00c0:	f8d4 3094 	ldr.w	r3, [r4, #148]	; 0x94
d05e00c4:	220a      	movs	r2, #10
d05e00c6:	4639      	mov	r1, r7
d05e00c8:	2001      	movs	r0, #1
d05e00ca:	4798      	blx	r3
d05e00cc:	2800      	cmp	r0, #0
d05e00ce:	d149      	bne.n	d05e0164 <main+0x110>
d05e00d0:	4605      	mov	r5, r0
d05e00d2:	e9cd 0002 	strd	r0, r0, [sp, #8]
d05e00d6:	e00b      	b.n	d05e00f0 <main+0x9c>
d05e00d8:	9a02      	ldr	r2, [sp, #8]
d05e00da:	b1ba      	cbz	r2, d05e010c <main+0xb8>
d05e00dc:	f8d4 60a4 	ldr.w	r6, [r4, #164]	; 0xa4
d05e00e0:	47b0      	blx	r6
d05e00e2:	b998      	cbnz	r0, d05e010c <main+0xb8>
d05e00e4:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
d05e00e8:	4293      	cmp	r3, r2
d05e00ea:	d144      	bne.n	d05e0176 <main+0x122>
d05e00ec:	441d      	add	r5, r3
d05e00ee:	b16b      	cbz	r3, d05e010c <main+0xb8>
d05e00f0:	ab02      	add	r3, sp, #8
d05e00f2:	f44f 6280 	mov.w	r2, #1024	; 0x400
d05e00f6:	a944      	add	r1, sp, #272	; 0x110
d05e00f8:	f8d4 60a0 	ldr.w	r6, [r4, #160]	; 0xa0
d05e00fc:	2000      	movs	r0, #0
d05e00fe:	47b0      	blx	r6
d05e0100:	4602      	mov	r2, r0
d05e0102:	ab03      	add	r3, sp, #12
d05e0104:	a944      	add	r1, sp, #272	; 0x110
d05e0106:	2001      	movs	r0, #1
d05e0108:	2a00      	cmp	r2, #0
d05e010a:	d0e5      	beq.n	d05e00d8 <main+0x84>
d05e010c:	4c1d      	ldr	r4, [pc, #116]	; (d05e0184 <main+0x130>)
d05e010e:	2000      	movs	r0, #0
d05e0110:	f8d4 3098 	ldr.w	r3, [r4, #152]	; 0x98
d05e0114:	4798      	blx	r3
d05e0116:	f8d4 3098 	ldr.w	r3, [r4, #152]	; 0x98
d05e011a:	2001      	movs	r0, #1
d05e011c:	4798      	blx	r3
d05e011e:	481c      	ldr	r0, [pc, #112]	; (d05e0190 <main+0x13c>)
d05e0120:	68a4      	ldr	r4, [r4, #8]
d05e0122:	463b      	mov	r3, r7
d05e0124:	4642      	mov	r2, r8
d05e0126:	4629      	mov	r1, r5
d05e0128:	47a0      	blx	r4
d05e012a:	2000      	movs	r0, #0
d05e012c:	f50d 6da2 	add.w	sp, sp, #1296	; 0x510
d05e0130:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d05e0134:	4640      	mov	r0, r8
d05e0136:	af04      	add	r7, sp, #16
d05e0138:	f7ff ff7a 	bl	d05e0030 <get_filename>
d05e013c:	4602      	mov	r2, r0
d05e013e:	462b      	mov	r3, r5
d05e0140:	4638      	mov	r0, r7
d05e0142:	9200      	str	r2, [sp, #0]
d05e0144:	f44f 7180 	mov.w	r1, #256	; 0x100
d05e0148:	4a12      	ldr	r2, [pc, #72]	; (d05e0194 <main+0x140>)
d05e014a:	f000 f82d 	bl	d05e01a8 <sniprintf>
d05e014e:	e7a5      	b.n	d05e009c <main+0x48>
d05e0150:	4b0c      	ldr	r3, [pc, #48]	; (d05e0184 <main+0x130>)
d05e0152:	4811      	ldr	r0, [pc, #68]	; (d05e0198 <main+0x144>)
d05e0154:	689b      	ldr	r3, [r3, #8]
d05e0156:	4798      	blx	r3
d05e0158:	2001      	movs	r0, #1
d05e015a:	e7e7      	b.n	d05e012c <main+0xd8>
d05e015c:	480f      	ldr	r0, [pc, #60]	; (d05e019c <main+0x148>)
d05e015e:	4798      	blx	r3
d05e0160:	2002      	movs	r0, #2
d05e0162:	e7e3      	b.n	d05e012c <main+0xd8>
d05e0164:	68a3      	ldr	r3, [r4, #8]
d05e0166:	480e      	ldr	r0, [pc, #56]	; (d05e01a0 <main+0x14c>)
d05e0168:	4798      	blx	r3
d05e016a:	f8d4 3098 	ldr.w	r3, [r4, #152]	; 0x98
d05e016e:	4628      	mov	r0, r5
d05e0170:	4798      	blx	r3
d05e0172:	2003      	movs	r0, #3
d05e0174:	e7da      	b.n	d05e012c <main+0xd8>
d05e0176:	68a3      	ldr	r3, [r4, #8]
d05e0178:	480a      	ldr	r0, [pc, #40]	; (d05e01a4 <main+0x150>)
d05e017a:	4798      	blx	r3
d05e017c:	e7c6      	b.n	d05e010c <main+0xb8>
d05e017e:	bf00      	nop
d05e0180:	e000ed14 	.word	0xe000ed14
d05e0184:	2001f000 	.word	0x2001f000
d05e0188:	d05e0b78 	.word	0xd05e0b78
d05e018c:	d05e0bac 	.word	0xd05e0bac
d05e0190:	d05e0bf4 	.word	0xd05e0bf4
d05e0194:	d05e0b70 	.word	0xd05e0b70
d05e0198:	d05e0b4c 	.word	0xd05e0b4c
d05e019c:	d05e0b8c 	.word	0xd05e0b8c
d05e01a0:	d05e0bc0 	.word	0xd05e0bc0
d05e01a4:	d05e0be4 	.word	0xd05e0be4

d05e01a8 <sniprintf>:
d05e01a8:	b40c      	push	{r2, r3}
d05e01aa:	b530      	push	{r4, r5, lr}
d05e01ac:	4b17      	ldr	r3, [pc, #92]	; (d05e020c <sniprintf+0x64>)
d05e01ae:	1e0c      	subs	r4, r1, #0
d05e01b0:	681d      	ldr	r5, [r3, #0]
d05e01b2:	b09d      	sub	sp, #116	; 0x74
d05e01b4:	da08      	bge.n	d05e01c8 <sniprintf+0x20>
d05e01b6:	238b      	movs	r3, #139	; 0x8b
d05e01b8:	602b      	str	r3, [r5, #0]
d05e01ba:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e01be:	b01d      	add	sp, #116	; 0x74
d05e01c0:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05e01c4:	b002      	add	sp, #8
d05e01c6:	4770      	bx	lr
d05e01c8:	f44f 7302 	mov.w	r3, #520	; 0x208
d05e01cc:	f8ad 3014 	strh.w	r3, [sp, #20]
d05e01d0:	bf14      	ite	ne
d05e01d2:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d05e01d6:	4623      	moveq	r3, r4
d05e01d8:	9304      	str	r3, [sp, #16]
d05e01da:	9307      	str	r3, [sp, #28]
d05e01dc:	f64f 73ff 	movw	r3, #65535	; 0xffff
d05e01e0:	9002      	str	r0, [sp, #8]
d05e01e2:	9006      	str	r0, [sp, #24]
d05e01e4:	f8ad 3016 	strh.w	r3, [sp, #22]
d05e01e8:	9a20      	ldr	r2, [sp, #128]	; 0x80
d05e01ea:	ab21      	add	r3, sp, #132	; 0x84
d05e01ec:	a902      	add	r1, sp, #8
d05e01ee:	4628      	mov	r0, r5
d05e01f0:	9301      	str	r3, [sp, #4]
d05e01f2:	f000 f897 	bl	d05e0324 <_svfiprintf_r>
d05e01f6:	1c43      	adds	r3, r0, #1
d05e01f8:	bfbc      	itt	lt
d05e01fa:	238b      	movlt	r3, #139	; 0x8b
d05e01fc:	602b      	strlt	r3, [r5, #0]
d05e01fe:	2c00      	cmp	r4, #0
d05e0200:	d0dd      	beq.n	d05e01be <sniprintf+0x16>
d05e0202:	9b02      	ldr	r3, [sp, #8]
d05e0204:	2200      	movs	r2, #0
d05e0206:	701a      	strb	r2, [r3, #0]
d05e0208:	e7d9      	b.n	d05e01be <sniprintf+0x16>
d05e020a:	bf00      	nop
d05e020c:	d05e0c54 	.word	0xd05e0c54

d05e0210 <strlen>:
d05e0210:	4603      	mov	r3, r0
d05e0212:	f813 2b01 	ldrb.w	r2, [r3], #1
d05e0216:	2a00      	cmp	r2, #0
d05e0218:	d1fb      	bne.n	d05e0212 <strlen+0x2>
d05e021a:	1a18      	subs	r0, r3, r0
d05e021c:	3801      	subs	r0, #1
d05e021e:	4770      	bx	lr

d05e0220 <strncpy>:
d05e0220:	b510      	push	{r4, lr}
d05e0222:	3901      	subs	r1, #1
d05e0224:	4603      	mov	r3, r0
d05e0226:	b132      	cbz	r2, d05e0236 <strncpy+0x16>
d05e0228:	f811 4f01 	ldrb.w	r4, [r1, #1]!
d05e022c:	f803 4b01 	strb.w	r4, [r3], #1
d05e0230:	3a01      	subs	r2, #1
d05e0232:	2c00      	cmp	r4, #0
d05e0234:	d1f7      	bne.n	d05e0226 <strncpy+0x6>
d05e0236:	441a      	add	r2, r3
d05e0238:	2100      	movs	r1, #0
d05e023a:	4293      	cmp	r3, r2
d05e023c:	d100      	bne.n	d05e0240 <strncpy+0x20>
d05e023e:	bd10      	pop	{r4, pc}
d05e0240:	f803 1b01 	strb.w	r1, [r3], #1
d05e0244:	e7f9      	b.n	d05e023a <strncpy+0x1a>

d05e0246 <strrchr>:
d05e0246:	b538      	push	{r3, r4, r5, lr}
d05e0248:	4603      	mov	r3, r0
d05e024a:	460c      	mov	r4, r1
d05e024c:	b969      	cbnz	r1, d05e026a <strrchr+0x24>
d05e024e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d05e0252:	f000 bafb 	b.w	d05e084c <strchr>
d05e0256:	1c43      	adds	r3, r0, #1
d05e0258:	4605      	mov	r5, r0
d05e025a:	4621      	mov	r1, r4
d05e025c:	4618      	mov	r0, r3
d05e025e:	f000 faf5 	bl	d05e084c <strchr>
d05e0262:	2800      	cmp	r0, #0
d05e0264:	d1f7      	bne.n	d05e0256 <strrchr+0x10>
d05e0266:	4628      	mov	r0, r5
d05e0268:	bd38      	pop	{r3, r4, r5, pc}
d05e026a:	2500      	movs	r5, #0
d05e026c:	e7f5      	b.n	d05e025a <strrchr+0x14>

d05e026e <__ssputs_r>:
d05e026e:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05e0272:	688e      	ldr	r6, [r1, #8]
d05e0274:	429e      	cmp	r6, r3
d05e0276:	4682      	mov	sl, r0
d05e0278:	460c      	mov	r4, r1
d05e027a:	4690      	mov	r8, r2
d05e027c:	461f      	mov	r7, r3
d05e027e:	d838      	bhi.n	d05e02f2 <__ssputs_r+0x84>
d05e0280:	898a      	ldrh	r2, [r1, #12]
d05e0282:	f412 6f90 	tst.w	r2, #1152	; 0x480
d05e0286:	d032      	beq.n	d05e02ee <__ssputs_r+0x80>
d05e0288:	6825      	ldr	r5, [r4, #0]
d05e028a:	6909      	ldr	r1, [r1, #16]
d05e028c:	eba5 0901 	sub.w	r9, r5, r1
d05e0290:	6965      	ldr	r5, [r4, #20]
d05e0292:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05e0296:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d05e029a:	3301      	adds	r3, #1
d05e029c:	444b      	add	r3, r9
d05e029e:	106d      	asrs	r5, r5, #1
d05e02a0:	429d      	cmp	r5, r3
d05e02a2:	bf38      	it	cc
d05e02a4:	461d      	movcc	r5, r3
d05e02a6:	0553      	lsls	r3, r2, #21
d05e02a8:	d531      	bpl.n	d05e030e <__ssputs_r+0xa0>
d05e02aa:	4629      	mov	r1, r5
d05e02ac:	f000 fba8 	bl	d05e0a00 <_malloc_r>
d05e02b0:	4606      	mov	r6, r0
d05e02b2:	b950      	cbnz	r0, d05e02ca <__ssputs_r+0x5c>
d05e02b4:	230c      	movs	r3, #12
d05e02b6:	f8ca 3000 	str.w	r3, [sl]
d05e02ba:	89a3      	ldrh	r3, [r4, #12]
d05e02bc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05e02c0:	81a3      	strh	r3, [r4, #12]
d05e02c2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e02c6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e02ca:	6921      	ldr	r1, [r4, #16]
d05e02cc:	464a      	mov	r2, r9
d05e02ce:	f000 fb1f 	bl	d05e0910 <memcpy>
d05e02d2:	89a3      	ldrh	r3, [r4, #12]
d05e02d4:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d05e02d8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05e02dc:	81a3      	strh	r3, [r4, #12]
d05e02de:	6126      	str	r6, [r4, #16]
d05e02e0:	6165      	str	r5, [r4, #20]
d05e02e2:	444e      	add	r6, r9
d05e02e4:	eba5 0509 	sub.w	r5, r5, r9
d05e02e8:	6026      	str	r6, [r4, #0]
d05e02ea:	60a5      	str	r5, [r4, #8]
d05e02ec:	463e      	mov	r6, r7
d05e02ee:	42be      	cmp	r6, r7
d05e02f0:	d900      	bls.n	d05e02f4 <__ssputs_r+0x86>
d05e02f2:	463e      	mov	r6, r7
d05e02f4:	4632      	mov	r2, r6
d05e02f6:	6820      	ldr	r0, [r4, #0]
d05e02f8:	4641      	mov	r1, r8
d05e02fa:	f000 fb17 	bl	d05e092c <memmove>
d05e02fe:	68a3      	ldr	r3, [r4, #8]
d05e0300:	6822      	ldr	r2, [r4, #0]
d05e0302:	1b9b      	subs	r3, r3, r6
d05e0304:	4432      	add	r2, r6
d05e0306:	60a3      	str	r3, [r4, #8]
d05e0308:	6022      	str	r2, [r4, #0]
d05e030a:	2000      	movs	r0, #0
d05e030c:	e7db      	b.n	d05e02c6 <__ssputs_r+0x58>
d05e030e:	462a      	mov	r2, r5
d05e0310:	f000 fbd0 	bl	d05e0ab4 <_realloc_r>
d05e0314:	4606      	mov	r6, r0
d05e0316:	2800      	cmp	r0, #0
d05e0318:	d1e1      	bne.n	d05e02de <__ssputs_r+0x70>
d05e031a:	6921      	ldr	r1, [r4, #16]
d05e031c:	4650      	mov	r0, sl
d05e031e:	f000 fb1f 	bl	d05e0960 <_free_r>
d05e0322:	e7c7      	b.n	d05e02b4 <__ssputs_r+0x46>

d05e0324 <_svfiprintf_r>:
d05e0324:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05e0328:	4698      	mov	r8, r3
d05e032a:	898b      	ldrh	r3, [r1, #12]
d05e032c:	061b      	lsls	r3, r3, #24
d05e032e:	b09d      	sub	sp, #116	; 0x74
d05e0330:	4607      	mov	r7, r0
d05e0332:	460d      	mov	r5, r1
d05e0334:	4614      	mov	r4, r2
d05e0336:	d50e      	bpl.n	d05e0356 <_svfiprintf_r+0x32>
d05e0338:	690b      	ldr	r3, [r1, #16]
d05e033a:	b963      	cbnz	r3, d05e0356 <_svfiprintf_r+0x32>
d05e033c:	2140      	movs	r1, #64	; 0x40
d05e033e:	f000 fb5f 	bl	d05e0a00 <_malloc_r>
d05e0342:	6028      	str	r0, [r5, #0]
d05e0344:	6128      	str	r0, [r5, #16]
d05e0346:	b920      	cbnz	r0, d05e0352 <_svfiprintf_r+0x2e>
d05e0348:	230c      	movs	r3, #12
d05e034a:	603b      	str	r3, [r7, #0]
d05e034c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e0350:	e0d1      	b.n	d05e04f6 <_svfiprintf_r+0x1d2>
d05e0352:	2340      	movs	r3, #64	; 0x40
d05e0354:	616b      	str	r3, [r5, #20]
d05e0356:	2300      	movs	r3, #0
d05e0358:	9309      	str	r3, [sp, #36]	; 0x24
d05e035a:	2320      	movs	r3, #32
d05e035c:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d05e0360:	f8cd 800c 	str.w	r8, [sp, #12]
d05e0364:	2330      	movs	r3, #48	; 0x30
d05e0366:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d05e0510 <_svfiprintf_r+0x1ec>
d05e036a:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d05e036e:	f04f 0901 	mov.w	r9, #1
d05e0372:	4623      	mov	r3, r4
d05e0374:	469a      	mov	sl, r3
d05e0376:	f813 2b01 	ldrb.w	r2, [r3], #1
d05e037a:	b10a      	cbz	r2, d05e0380 <_svfiprintf_r+0x5c>
d05e037c:	2a25      	cmp	r2, #37	; 0x25
d05e037e:	d1f9      	bne.n	d05e0374 <_svfiprintf_r+0x50>
d05e0380:	ebba 0b04 	subs.w	fp, sl, r4
d05e0384:	d00b      	beq.n	d05e039e <_svfiprintf_r+0x7a>
d05e0386:	465b      	mov	r3, fp
d05e0388:	4622      	mov	r2, r4
d05e038a:	4629      	mov	r1, r5
d05e038c:	4638      	mov	r0, r7
d05e038e:	f7ff ff6e 	bl	d05e026e <__ssputs_r>
d05e0392:	3001      	adds	r0, #1
d05e0394:	f000 80aa 	beq.w	d05e04ec <_svfiprintf_r+0x1c8>
d05e0398:	9a09      	ldr	r2, [sp, #36]	; 0x24
d05e039a:	445a      	add	r2, fp
d05e039c:	9209      	str	r2, [sp, #36]	; 0x24
d05e039e:	f89a 3000 	ldrb.w	r3, [sl]
d05e03a2:	2b00      	cmp	r3, #0
d05e03a4:	f000 80a2 	beq.w	d05e04ec <_svfiprintf_r+0x1c8>
d05e03a8:	2300      	movs	r3, #0
d05e03aa:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d05e03ae:	e9cd 2305 	strd	r2, r3, [sp, #20]
d05e03b2:	f10a 0a01 	add.w	sl, sl, #1
d05e03b6:	9304      	str	r3, [sp, #16]
d05e03b8:	9307      	str	r3, [sp, #28]
d05e03ba:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d05e03be:	931a      	str	r3, [sp, #104]	; 0x68
d05e03c0:	4654      	mov	r4, sl
d05e03c2:	2205      	movs	r2, #5
d05e03c4:	f814 1b01 	ldrb.w	r1, [r4], #1
d05e03c8:	4851      	ldr	r0, [pc, #324]	; (d05e0510 <_svfiprintf_r+0x1ec>)
d05e03ca:	f000 fa51 	bl	d05e0870 <memchr>
d05e03ce:	9a04      	ldr	r2, [sp, #16]
d05e03d0:	b9d8      	cbnz	r0, d05e040a <_svfiprintf_r+0xe6>
d05e03d2:	06d0      	lsls	r0, r2, #27
d05e03d4:	bf44      	itt	mi
d05e03d6:	2320      	movmi	r3, #32
d05e03d8:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05e03dc:	0711      	lsls	r1, r2, #28
d05e03de:	bf44      	itt	mi
d05e03e0:	232b      	movmi	r3, #43	; 0x2b
d05e03e2:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05e03e6:	f89a 3000 	ldrb.w	r3, [sl]
d05e03ea:	2b2a      	cmp	r3, #42	; 0x2a
d05e03ec:	d015      	beq.n	d05e041a <_svfiprintf_r+0xf6>
d05e03ee:	9a07      	ldr	r2, [sp, #28]
d05e03f0:	4654      	mov	r4, sl
d05e03f2:	2000      	movs	r0, #0
d05e03f4:	f04f 0c0a 	mov.w	ip, #10
d05e03f8:	4621      	mov	r1, r4
d05e03fa:	f811 3b01 	ldrb.w	r3, [r1], #1
d05e03fe:	3b30      	subs	r3, #48	; 0x30
d05e0400:	2b09      	cmp	r3, #9
d05e0402:	d94e      	bls.n	d05e04a2 <_svfiprintf_r+0x17e>
d05e0404:	b1b0      	cbz	r0, d05e0434 <_svfiprintf_r+0x110>
d05e0406:	9207      	str	r2, [sp, #28]
d05e0408:	e014      	b.n	d05e0434 <_svfiprintf_r+0x110>
d05e040a:	eba0 0308 	sub.w	r3, r0, r8
d05e040e:	fa09 f303 	lsl.w	r3, r9, r3
d05e0412:	4313      	orrs	r3, r2
d05e0414:	9304      	str	r3, [sp, #16]
d05e0416:	46a2      	mov	sl, r4
d05e0418:	e7d2      	b.n	d05e03c0 <_svfiprintf_r+0x9c>
d05e041a:	9b03      	ldr	r3, [sp, #12]
d05e041c:	1d19      	adds	r1, r3, #4
d05e041e:	681b      	ldr	r3, [r3, #0]
d05e0420:	9103      	str	r1, [sp, #12]
d05e0422:	2b00      	cmp	r3, #0
d05e0424:	bfbb      	ittet	lt
d05e0426:	425b      	neglt	r3, r3
d05e0428:	f042 0202 	orrlt.w	r2, r2, #2
d05e042c:	9307      	strge	r3, [sp, #28]
d05e042e:	9307      	strlt	r3, [sp, #28]
d05e0430:	bfb8      	it	lt
d05e0432:	9204      	strlt	r2, [sp, #16]
d05e0434:	7823      	ldrb	r3, [r4, #0]
d05e0436:	2b2e      	cmp	r3, #46	; 0x2e
d05e0438:	d10c      	bne.n	d05e0454 <_svfiprintf_r+0x130>
d05e043a:	7863      	ldrb	r3, [r4, #1]
d05e043c:	2b2a      	cmp	r3, #42	; 0x2a
d05e043e:	d135      	bne.n	d05e04ac <_svfiprintf_r+0x188>
d05e0440:	9b03      	ldr	r3, [sp, #12]
d05e0442:	1d1a      	adds	r2, r3, #4
d05e0444:	681b      	ldr	r3, [r3, #0]
d05e0446:	9203      	str	r2, [sp, #12]
d05e0448:	2b00      	cmp	r3, #0
d05e044a:	bfb8      	it	lt
d05e044c:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d05e0450:	3402      	adds	r4, #2
d05e0452:	9305      	str	r3, [sp, #20]
d05e0454:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d05e0520 <_svfiprintf_r+0x1fc>
d05e0458:	7821      	ldrb	r1, [r4, #0]
d05e045a:	2203      	movs	r2, #3
d05e045c:	4650      	mov	r0, sl
d05e045e:	f000 fa07 	bl	d05e0870 <memchr>
d05e0462:	b140      	cbz	r0, d05e0476 <_svfiprintf_r+0x152>
d05e0464:	2340      	movs	r3, #64	; 0x40
d05e0466:	eba0 000a 	sub.w	r0, r0, sl
d05e046a:	fa03 f000 	lsl.w	r0, r3, r0
d05e046e:	9b04      	ldr	r3, [sp, #16]
d05e0470:	4303      	orrs	r3, r0
d05e0472:	3401      	adds	r4, #1
d05e0474:	9304      	str	r3, [sp, #16]
d05e0476:	f814 1b01 	ldrb.w	r1, [r4], #1
d05e047a:	4826      	ldr	r0, [pc, #152]	; (d05e0514 <_svfiprintf_r+0x1f0>)
d05e047c:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d05e0480:	2206      	movs	r2, #6
d05e0482:	f000 f9f5 	bl	d05e0870 <memchr>
d05e0486:	2800      	cmp	r0, #0
d05e0488:	d038      	beq.n	d05e04fc <_svfiprintf_r+0x1d8>
d05e048a:	4b23      	ldr	r3, [pc, #140]	; (d05e0518 <_svfiprintf_r+0x1f4>)
d05e048c:	bb1b      	cbnz	r3, d05e04d6 <_svfiprintf_r+0x1b2>
d05e048e:	9b03      	ldr	r3, [sp, #12]
d05e0490:	3307      	adds	r3, #7
d05e0492:	f023 0307 	bic.w	r3, r3, #7
d05e0496:	3308      	adds	r3, #8
d05e0498:	9303      	str	r3, [sp, #12]
d05e049a:	9b09      	ldr	r3, [sp, #36]	; 0x24
d05e049c:	4433      	add	r3, r6
d05e049e:	9309      	str	r3, [sp, #36]	; 0x24
d05e04a0:	e767      	b.n	d05e0372 <_svfiprintf_r+0x4e>
d05e04a2:	fb0c 3202 	mla	r2, ip, r2, r3
d05e04a6:	460c      	mov	r4, r1
d05e04a8:	2001      	movs	r0, #1
d05e04aa:	e7a5      	b.n	d05e03f8 <_svfiprintf_r+0xd4>
d05e04ac:	2300      	movs	r3, #0
d05e04ae:	3401      	adds	r4, #1
d05e04b0:	9305      	str	r3, [sp, #20]
d05e04b2:	4619      	mov	r1, r3
d05e04b4:	f04f 0c0a 	mov.w	ip, #10
d05e04b8:	4620      	mov	r0, r4
d05e04ba:	f810 2b01 	ldrb.w	r2, [r0], #1
d05e04be:	3a30      	subs	r2, #48	; 0x30
d05e04c0:	2a09      	cmp	r2, #9
d05e04c2:	d903      	bls.n	d05e04cc <_svfiprintf_r+0x1a8>
d05e04c4:	2b00      	cmp	r3, #0
d05e04c6:	d0c5      	beq.n	d05e0454 <_svfiprintf_r+0x130>
d05e04c8:	9105      	str	r1, [sp, #20]
d05e04ca:	e7c3      	b.n	d05e0454 <_svfiprintf_r+0x130>
d05e04cc:	fb0c 2101 	mla	r1, ip, r1, r2
d05e04d0:	4604      	mov	r4, r0
d05e04d2:	2301      	movs	r3, #1
d05e04d4:	e7f0      	b.n	d05e04b8 <_svfiprintf_r+0x194>
d05e04d6:	ab03      	add	r3, sp, #12
d05e04d8:	9300      	str	r3, [sp, #0]
d05e04da:	462a      	mov	r2, r5
d05e04dc:	4b0f      	ldr	r3, [pc, #60]	; (d05e051c <_svfiprintf_r+0x1f8>)
d05e04de:	a904      	add	r1, sp, #16
d05e04e0:	4638      	mov	r0, r7
d05e04e2:	f3af 8000 	nop.w
d05e04e6:	1c42      	adds	r2, r0, #1
d05e04e8:	4606      	mov	r6, r0
d05e04ea:	d1d6      	bne.n	d05e049a <_svfiprintf_r+0x176>
d05e04ec:	89ab      	ldrh	r3, [r5, #12]
d05e04ee:	065b      	lsls	r3, r3, #25
d05e04f0:	f53f af2c 	bmi.w	d05e034c <_svfiprintf_r+0x28>
d05e04f4:	9809      	ldr	r0, [sp, #36]	; 0x24
d05e04f6:	b01d      	add	sp, #116	; 0x74
d05e04f8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e04fc:	ab03      	add	r3, sp, #12
d05e04fe:	9300      	str	r3, [sp, #0]
d05e0500:	462a      	mov	r2, r5
d05e0502:	4b06      	ldr	r3, [pc, #24]	; (d05e051c <_svfiprintf_r+0x1f8>)
d05e0504:	a904      	add	r1, sp, #16
d05e0506:	4638      	mov	r0, r7
d05e0508:	f000 f87a 	bl	d05e0600 <_printf_i>
d05e050c:	e7eb      	b.n	d05e04e6 <_svfiprintf_r+0x1c2>
d05e050e:	bf00      	nop
d05e0510:	d05e0c17 	.word	0xd05e0c17
d05e0514:	d05e0c21 	.word	0xd05e0c21
d05e0518:	00000000 	.word	0x00000000
d05e051c:	d05e026f 	.word	0xd05e026f
d05e0520:	d05e0c1d 	.word	0xd05e0c1d

d05e0524 <_printf_common>:
d05e0524:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05e0528:	4616      	mov	r6, r2
d05e052a:	4699      	mov	r9, r3
d05e052c:	688a      	ldr	r2, [r1, #8]
d05e052e:	690b      	ldr	r3, [r1, #16]
d05e0530:	f8dd 8020 	ldr.w	r8, [sp, #32]
d05e0534:	4293      	cmp	r3, r2
d05e0536:	bfb8      	it	lt
d05e0538:	4613      	movlt	r3, r2
d05e053a:	6033      	str	r3, [r6, #0]
d05e053c:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d05e0540:	4607      	mov	r7, r0
d05e0542:	460c      	mov	r4, r1
d05e0544:	b10a      	cbz	r2, d05e054a <_printf_common+0x26>
d05e0546:	3301      	adds	r3, #1
d05e0548:	6033      	str	r3, [r6, #0]
d05e054a:	6823      	ldr	r3, [r4, #0]
d05e054c:	0699      	lsls	r1, r3, #26
d05e054e:	bf42      	ittt	mi
d05e0550:	6833      	ldrmi	r3, [r6, #0]
d05e0552:	3302      	addmi	r3, #2
d05e0554:	6033      	strmi	r3, [r6, #0]
d05e0556:	6825      	ldr	r5, [r4, #0]
d05e0558:	f015 0506 	ands.w	r5, r5, #6
d05e055c:	d106      	bne.n	d05e056c <_printf_common+0x48>
d05e055e:	f104 0a19 	add.w	sl, r4, #25
d05e0562:	68e3      	ldr	r3, [r4, #12]
d05e0564:	6832      	ldr	r2, [r6, #0]
d05e0566:	1a9b      	subs	r3, r3, r2
d05e0568:	42ab      	cmp	r3, r5
d05e056a:	dc26      	bgt.n	d05e05ba <_printf_common+0x96>
d05e056c:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d05e0570:	1e13      	subs	r3, r2, #0
d05e0572:	6822      	ldr	r2, [r4, #0]
d05e0574:	bf18      	it	ne
d05e0576:	2301      	movne	r3, #1
d05e0578:	0692      	lsls	r2, r2, #26
d05e057a:	d42b      	bmi.n	d05e05d4 <_printf_common+0xb0>
d05e057c:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05e0580:	4649      	mov	r1, r9
d05e0582:	4638      	mov	r0, r7
d05e0584:	47c0      	blx	r8
d05e0586:	3001      	adds	r0, #1
d05e0588:	d01e      	beq.n	d05e05c8 <_printf_common+0xa4>
d05e058a:	6823      	ldr	r3, [r4, #0]
d05e058c:	68e5      	ldr	r5, [r4, #12]
d05e058e:	6832      	ldr	r2, [r6, #0]
d05e0590:	f003 0306 	and.w	r3, r3, #6
d05e0594:	2b04      	cmp	r3, #4
d05e0596:	bf08      	it	eq
d05e0598:	1aad      	subeq	r5, r5, r2
d05e059a:	68a3      	ldr	r3, [r4, #8]
d05e059c:	6922      	ldr	r2, [r4, #16]
d05e059e:	bf0c      	ite	eq
d05e05a0:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d05e05a4:	2500      	movne	r5, #0
d05e05a6:	4293      	cmp	r3, r2
d05e05a8:	bfc4      	itt	gt
d05e05aa:	1a9b      	subgt	r3, r3, r2
d05e05ac:	18ed      	addgt	r5, r5, r3
d05e05ae:	2600      	movs	r6, #0
d05e05b0:	341a      	adds	r4, #26
d05e05b2:	42b5      	cmp	r5, r6
d05e05b4:	d11a      	bne.n	d05e05ec <_printf_common+0xc8>
d05e05b6:	2000      	movs	r0, #0
d05e05b8:	e008      	b.n	d05e05cc <_printf_common+0xa8>
d05e05ba:	2301      	movs	r3, #1
d05e05bc:	4652      	mov	r2, sl
d05e05be:	4649      	mov	r1, r9
d05e05c0:	4638      	mov	r0, r7
d05e05c2:	47c0      	blx	r8
d05e05c4:	3001      	adds	r0, #1
d05e05c6:	d103      	bne.n	d05e05d0 <_printf_common+0xac>
d05e05c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e05cc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e05d0:	3501      	adds	r5, #1
d05e05d2:	e7c6      	b.n	d05e0562 <_printf_common+0x3e>
d05e05d4:	18e1      	adds	r1, r4, r3
d05e05d6:	1c5a      	adds	r2, r3, #1
d05e05d8:	2030      	movs	r0, #48	; 0x30
d05e05da:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d05e05de:	4422      	add	r2, r4
d05e05e0:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d05e05e4:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d05e05e8:	3302      	adds	r3, #2
d05e05ea:	e7c7      	b.n	d05e057c <_printf_common+0x58>
d05e05ec:	2301      	movs	r3, #1
d05e05ee:	4622      	mov	r2, r4
d05e05f0:	4649      	mov	r1, r9
d05e05f2:	4638      	mov	r0, r7
d05e05f4:	47c0      	blx	r8
d05e05f6:	3001      	adds	r0, #1
d05e05f8:	d0e6      	beq.n	d05e05c8 <_printf_common+0xa4>
d05e05fa:	3601      	adds	r6, #1
d05e05fc:	e7d9      	b.n	d05e05b2 <_printf_common+0x8e>
	...

d05e0600 <_printf_i>:
d05e0600:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d05e0604:	460c      	mov	r4, r1
d05e0606:	4691      	mov	r9, r2
d05e0608:	7e27      	ldrb	r7, [r4, #24]
d05e060a:	990c      	ldr	r1, [sp, #48]	; 0x30
d05e060c:	2f78      	cmp	r7, #120	; 0x78
d05e060e:	4680      	mov	r8, r0
d05e0610:	469a      	mov	sl, r3
d05e0612:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05e0616:	d807      	bhi.n	d05e0628 <_printf_i+0x28>
d05e0618:	2f62      	cmp	r7, #98	; 0x62
d05e061a:	d80a      	bhi.n	d05e0632 <_printf_i+0x32>
d05e061c:	2f00      	cmp	r7, #0
d05e061e:	f000 80d8 	beq.w	d05e07d2 <_printf_i+0x1d2>
d05e0622:	2f58      	cmp	r7, #88	; 0x58
d05e0624:	f000 80a3 	beq.w	d05e076e <_printf_i+0x16e>
d05e0628:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05e062c:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d05e0630:	e03a      	b.n	d05e06a8 <_printf_i+0xa8>
d05e0632:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d05e0636:	2b15      	cmp	r3, #21
d05e0638:	d8f6      	bhi.n	d05e0628 <_printf_i+0x28>
d05e063a:	a001      	add	r0, pc, #4	; (adr r0, d05e0640 <_printf_i+0x40>)
d05e063c:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d05e0640:	d05e0699 	.word	0xd05e0699
d05e0644:	d05e06ad 	.word	0xd05e06ad
d05e0648:	d05e0629 	.word	0xd05e0629
d05e064c:	d05e0629 	.word	0xd05e0629
d05e0650:	d05e0629 	.word	0xd05e0629
d05e0654:	d05e0629 	.word	0xd05e0629
d05e0658:	d05e06ad 	.word	0xd05e06ad
d05e065c:	d05e0629 	.word	0xd05e0629
d05e0660:	d05e0629 	.word	0xd05e0629
d05e0664:	d05e0629 	.word	0xd05e0629
d05e0668:	d05e0629 	.word	0xd05e0629
d05e066c:	d05e07b9 	.word	0xd05e07b9
d05e0670:	d05e06dd 	.word	0xd05e06dd
d05e0674:	d05e079b 	.word	0xd05e079b
d05e0678:	d05e0629 	.word	0xd05e0629
d05e067c:	d05e0629 	.word	0xd05e0629
d05e0680:	d05e07db 	.word	0xd05e07db
d05e0684:	d05e0629 	.word	0xd05e0629
d05e0688:	d05e06dd 	.word	0xd05e06dd
d05e068c:	d05e0629 	.word	0xd05e0629
d05e0690:	d05e0629 	.word	0xd05e0629
d05e0694:	d05e07a3 	.word	0xd05e07a3
d05e0698:	680b      	ldr	r3, [r1, #0]
d05e069a:	1d1a      	adds	r2, r3, #4
d05e069c:	681b      	ldr	r3, [r3, #0]
d05e069e:	600a      	str	r2, [r1, #0]
d05e06a0:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05e06a4:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d05e06a8:	2301      	movs	r3, #1
d05e06aa:	e0a3      	b.n	d05e07f4 <_printf_i+0x1f4>
d05e06ac:	6825      	ldr	r5, [r4, #0]
d05e06ae:	6808      	ldr	r0, [r1, #0]
d05e06b0:	062e      	lsls	r6, r5, #24
d05e06b2:	f100 0304 	add.w	r3, r0, #4
d05e06b6:	d50a      	bpl.n	d05e06ce <_printf_i+0xce>
d05e06b8:	6805      	ldr	r5, [r0, #0]
d05e06ba:	600b      	str	r3, [r1, #0]
d05e06bc:	2d00      	cmp	r5, #0
d05e06be:	da03      	bge.n	d05e06c8 <_printf_i+0xc8>
d05e06c0:	232d      	movs	r3, #45	; 0x2d
d05e06c2:	426d      	negs	r5, r5
d05e06c4:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05e06c8:	485e      	ldr	r0, [pc, #376]	; (d05e0844 <_printf_i+0x244>)
d05e06ca:	230a      	movs	r3, #10
d05e06cc:	e019      	b.n	d05e0702 <_printf_i+0x102>
d05e06ce:	f015 0f40 	tst.w	r5, #64	; 0x40
d05e06d2:	6805      	ldr	r5, [r0, #0]
d05e06d4:	600b      	str	r3, [r1, #0]
d05e06d6:	bf18      	it	ne
d05e06d8:	b22d      	sxthne	r5, r5
d05e06da:	e7ef      	b.n	d05e06bc <_printf_i+0xbc>
d05e06dc:	680b      	ldr	r3, [r1, #0]
d05e06de:	6825      	ldr	r5, [r4, #0]
d05e06e0:	1d18      	adds	r0, r3, #4
d05e06e2:	6008      	str	r0, [r1, #0]
d05e06e4:	0628      	lsls	r0, r5, #24
d05e06e6:	d501      	bpl.n	d05e06ec <_printf_i+0xec>
d05e06e8:	681d      	ldr	r5, [r3, #0]
d05e06ea:	e002      	b.n	d05e06f2 <_printf_i+0xf2>
d05e06ec:	0669      	lsls	r1, r5, #25
d05e06ee:	d5fb      	bpl.n	d05e06e8 <_printf_i+0xe8>
d05e06f0:	881d      	ldrh	r5, [r3, #0]
d05e06f2:	4854      	ldr	r0, [pc, #336]	; (d05e0844 <_printf_i+0x244>)
d05e06f4:	2f6f      	cmp	r7, #111	; 0x6f
d05e06f6:	bf0c      	ite	eq
d05e06f8:	2308      	moveq	r3, #8
d05e06fa:	230a      	movne	r3, #10
d05e06fc:	2100      	movs	r1, #0
d05e06fe:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d05e0702:	6866      	ldr	r6, [r4, #4]
d05e0704:	60a6      	str	r6, [r4, #8]
d05e0706:	2e00      	cmp	r6, #0
d05e0708:	bfa2      	ittt	ge
d05e070a:	6821      	ldrge	r1, [r4, #0]
d05e070c:	f021 0104 	bicge.w	r1, r1, #4
d05e0710:	6021      	strge	r1, [r4, #0]
d05e0712:	b90d      	cbnz	r5, d05e0718 <_printf_i+0x118>
d05e0714:	2e00      	cmp	r6, #0
d05e0716:	d04d      	beq.n	d05e07b4 <_printf_i+0x1b4>
d05e0718:	4616      	mov	r6, r2
d05e071a:	fbb5 f1f3 	udiv	r1, r5, r3
d05e071e:	fb03 5711 	mls	r7, r3, r1, r5
d05e0722:	5dc7      	ldrb	r7, [r0, r7]
d05e0724:	f806 7d01 	strb.w	r7, [r6, #-1]!
d05e0728:	462f      	mov	r7, r5
d05e072a:	42bb      	cmp	r3, r7
d05e072c:	460d      	mov	r5, r1
d05e072e:	d9f4      	bls.n	d05e071a <_printf_i+0x11a>
d05e0730:	2b08      	cmp	r3, #8
d05e0732:	d10b      	bne.n	d05e074c <_printf_i+0x14c>
d05e0734:	6823      	ldr	r3, [r4, #0]
d05e0736:	07df      	lsls	r7, r3, #31
d05e0738:	d508      	bpl.n	d05e074c <_printf_i+0x14c>
d05e073a:	6923      	ldr	r3, [r4, #16]
d05e073c:	6861      	ldr	r1, [r4, #4]
d05e073e:	4299      	cmp	r1, r3
d05e0740:	bfde      	ittt	le
d05e0742:	2330      	movle	r3, #48	; 0x30
d05e0744:	f806 3c01 	strble.w	r3, [r6, #-1]
d05e0748:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d05e074c:	1b92      	subs	r2, r2, r6
d05e074e:	6122      	str	r2, [r4, #16]
d05e0750:	f8cd a000 	str.w	sl, [sp]
d05e0754:	464b      	mov	r3, r9
d05e0756:	aa03      	add	r2, sp, #12
d05e0758:	4621      	mov	r1, r4
d05e075a:	4640      	mov	r0, r8
d05e075c:	f7ff fee2 	bl	d05e0524 <_printf_common>
d05e0760:	3001      	adds	r0, #1
d05e0762:	d14c      	bne.n	d05e07fe <_printf_i+0x1fe>
d05e0764:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e0768:	b004      	add	sp, #16
d05e076a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e076e:	4835      	ldr	r0, [pc, #212]	; (d05e0844 <_printf_i+0x244>)
d05e0770:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d05e0774:	6823      	ldr	r3, [r4, #0]
d05e0776:	680e      	ldr	r6, [r1, #0]
d05e0778:	061f      	lsls	r7, r3, #24
d05e077a:	f856 5b04 	ldr.w	r5, [r6], #4
d05e077e:	600e      	str	r6, [r1, #0]
d05e0780:	d514      	bpl.n	d05e07ac <_printf_i+0x1ac>
d05e0782:	07d9      	lsls	r1, r3, #31
d05e0784:	bf44      	itt	mi
d05e0786:	f043 0320 	orrmi.w	r3, r3, #32
d05e078a:	6023      	strmi	r3, [r4, #0]
d05e078c:	b91d      	cbnz	r5, d05e0796 <_printf_i+0x196>
d05e078e:	6823      	ldr	r3, [r4, #0]
d05e0790:	f023 0320 	bic.w	r3, r3, #32
d05e0794:	6023      	str	r3, [r4, #0]
d05e0796:	2310      	movs	r3, #16
d05e0798:	e7b0      	b.n	d05e06fc <_printf_i+0xfc>
d05e079a:	6823      	ldr	r3, [r4, #0]
d05e079c:	f043 0320 	orr.w	r3, r3, #32
d05e07a0:	6023      	str	r3, [r4, #0]
d05e07a2:	2378      	movs	r3, #120	; 0x78
d05e07a4:	4828      	ldr	r0, [pc, #160]	; (d05e0848 <_printf_i+0x248>)
d05e07a6:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d05e07aa:	e7e3      	b.n	d05e0774 <_printf_i+0x174>
d05e07ac:	065e      	lsls	r6, r3, #25
d05e07ae:	bf48      	it	mi
d05e07b0:	b2ad      	uxthmi	r5, r5
d05e07b2:	e7e6      	b.n	d05e0782 <_printf_i+0x182>
d05e07b4:	4616      	mov	r6, r2
d05e07b6:	e7bb      	b.n	d05e0730 <_printf_i+0x130>
d05e07b8:	680b      	ldr	r3, [r1, #0]
d05e07ba:	6826      	ldr	r6, [r4, #0]
d05e07bc:	6960      	ldr	r0, [r4, #20]
d05e07be:	1d1d      	adds	r5, r3, #4
d05e07c0:	600d      	str	r5, [r1, #0]
d05e07c2:	0635      	lsls	r5, r6, #24
d05e07c4:	681b      	ldr	r3, [r3, #0]
d05e07c6:	d501      	bpl.n	d05e07cc <_printf_i+0x1cc>
d05e07c8:	6018      	str	r0, [r3, #0]
d05e07ca:	e002      	b.n	d05e07d2 <_printf_i+0x1d2>
d05e07cc:	0671      	lsls	r1, r6, #25
d05e07ce:	d5fb      	bpl.n	d05e07c8 <_printf_i+0x1c8>
d05e07d0:	8018      	strh	r0, [r3, #0]
d05e07d2:	2300      	movs	r3, #0
d05e07d4:	6123      	str	r3, [r4, #16]
d05e07d6:	4616      	mov	r6, r2
d05e07d8:	e7ba      	b.n	d05e0750 <_printf_i+0x150>
d05e07da:	680b      	ldr	r3, [r1, #0]
d05e07dc:	1d1a      	adds	r2, r3, #4
d05e07de:	600a      	str	r2, [r1, #0]
d05e07e0:	681e      	ldr	r6, [r3, #0]
d05e07e2:	6862      	ldr	r2, [r4, #4]
d05e07e4:	2100      	movs	r1, #0
d05e07e6:	4630      	mov	r0, r6
d05e07e8:	f000 f842 	bl	d05e0870 <memchr>
d05e07ec:	b108      	cbz	r0, d05e07f2 <_printf_i+0x1f2>
d05e07ee:	1b80      	subs	r0, r0, r6
d05e07f0:	6060      	str	r0, [r4, #4]
d05e07f2:	6863      	ldr	r3, [r4, #4]
d05e07f4:	6123      	str	r3, [r4, #16]
d05e07f6:	2300      	movs	r3, #0
d05e07f8:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05e07fc:	e7a8      	b.n	d05e0750 <_printf_i+0x150>
d05e07fe:	6923      	ldr	r3, [r4, #16]
d05e0800:	4632      	mov	r2, r6
d05e0802:	4649      	mov	r1, r9
d05e0804:	4640      	mov	r0, r8
d05e0806:	47d0      	blx	sl
d05e0808:	3001      	adds	r0, #1
d05e080a:	d0ab      	beq.n	d05e0764 <_printf_i+0x164>
d05e080c:	6823      	ldr	r3, [r4, #0]
d05e080e:	079b      	lsls	r3, r3, #30
d05e0810:	d413      	bmi.n	d05e083a <_printf_i+0x23a>
d05e0812:	68e0      	ldr	r0, [r4, #12]
d05e0814:	9b03      	ldr	r3, [sp, #12]
d05e0816:	4298      	cmp	r0, r3
d05e0818:	bfb8      	it	lt
d05e081a:	4618      	movlt	r0, r3
d05e081c:	e7a4      	b.n	d05e0768 <_printf_i+0x168>
d05e081e:	2301      	movs	r3, #1
d05e0820:	4632      	mov	r2, r6
d05e0822:	4649      	mov	r1, r9
d05e0824:	4640      	mov	r0, r8
d05e0826:	47d0      	blx	sl
d05e0828:	3001      	adds	r0, #1
d05e082a:	d09b      	beq.n	d05e0764 <_printf_i+0x164>
d05e082c:	3501      	adds	r5, #1
d05e082e:	68e3      	ldr	r3, [r4, #12]
d05e0830:	9903      	ldr	r1, [sp, #12]
d05e0832:	1a5b      	subs	r3, r3, r1
d05e0834:	42ab      	cmp	r3, r5
d05e0836:	dcf2      	bgt.n	d05e081e <_printf_i+0x21e>
d05e0838:	e7eb      	b.n	d05e0812 <_printf_i+0x212>
d05e083a:	2500      	movs	r5, #0
d05e083c:	f104 0619 	add.w	r6, r4, #25
d05e0840:	e7f5      	b.n	d05e082e <_printf_i+0x22e>
d05e0842:	bf00      	nop
d05e0844:	d05e0c28 	.word	0xd05e0c28
d05e0848:	d05e0c39 	.word	0xd05e0c39

d05e084c <strchr>:
d05e084c:	b2c9      	uxtb	r1, r1
d05e084e:	4603      	mov	r3, r0
d05e0850:	f810 2b01 	ldrb.w	r2, [r0], #1
d05e0854:	b11a      	cbz	r2, d05e085e <strchr+0x12>
d05e0856:	428a      	cmp	r2, r1
d05e0858:	d1f9      	bne.n	d05e084e <strchr+0x2>
d05e085a:	4618      	mov	r0, r3
d05e085c:	4770      	bx	lr
d05e085e:	2900      	cmp	r1, #0
d05e0860:	bf18      	it	ne
d05e0862:	2300      	movne	r3, #0
d05e0864:	e7f9      	b.n	d05e085a <strchr+0xe>
	...

d05e0870 <memchr>:
d05e0870:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05e0874:	2a10      	cmp	r2, #16
d05e0876:	db2b      	blt.n	d05e08d0 <memchr+0x60>
d05e0878:	f010 0f07 	tst.w	r0, #7
d05e087c:	d008      	beq.n	d05e0890 <memchr+0x20>
d05e087e:	f810 3b01 	ldrb.w	r3, [r0], #1
d05e0882:	3a01      	subs	r2, #1
d05e0884:	428b      	cmp	r3, r1
d05e0886:	d02d      	beq.n	d05e08e4 <memchr+0x74>
d05e0888:	f010 0f07 	tst.w	r0, #7
d05e088c:	b342      	cbz	r2, d05e08e0 <memchr+0x70>
d05e088e:	d1f6      	bne.n	d05e087e <memchr+0xe>
d05e0890:	b4f0      	push	{r4, r5, r6, r7}
d05e0892:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d05e0896:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d05e089a:	f022 0407 	bic.w	r4, r2, #7
d05e089e:	f07f 0700 	mvns.w	r7, #0
d05e08a2:	2300      	movs	r3, #0
d05e08a4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d05e08a8:	3c08      	subs	r4, #8
d05e08aa:	ea85 0501 	eor.w	r5, r5, r1
d05e08ae:	ea86 0601 	eor.w	r6, r6, r1
d05e08b2:	fa85 f547 	uadd8	r5, r5, r7
d05e08b6:	faa3 f587 	sel	r5, r3, r7
d05e08ba:	fa86 f647 	uadd8	r6, r6, r7
d05e08be:	faa5 f687 	sel	r6, r5, r7
d05e08c2:	b98e      	cbnz	r6, d05e08e8 <memchr+0x78>
d05e08c4:	d1ee      	bne.n	d05e08a4 <memchr+0x34>
d05e08c6:	bcf0      	pop	{r4, r5, r6, r7}
d05e08c8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05e08cc:	f002 0207 	and.w	r2, r2, #7
d05e08d0:	b132      	cbz	r2, d05e08e0 <memchr+0x70>
d05e08d2:	f810 3b01 	ldrb.w	r3, [r0], #1
d05e08d6:	3a01      	subs	r2, #1
d05e08d8:	ea83 0301 	eor.w	r3, r3, r1
d05e08dc:	b113      	cbz	r3, d05e08e4 <memchr+0x74>
d05e08de:	d1f8      	bne.n	d05e08d2 <memchr+0x62>
d05e08e0:	2000      	movs	r0, #0
d05e08e2:	4770      	bx	lr
d05e08e4:	3801      	subs	r0, #1
d05e08e6:	4770      	bx	lr
d05e08e8:	2d00      	cmp	r5, #0
d05e08ea:	bf06      	itte	eq
d05e08ec:	4635      	moveq	r5, r6
d05e08ee:	3803      	subeq	r0, #3
d05e08f0:	3807      	subne	r0, #7
d05e08f2:	f015 0f01 	tst.w	r5, #1
d05e08f6:	d107      	bne.n	d05e0908 <memchr+0x98>
d05e08f8:	3001      	adds	r0, #1
d05e08fa:	f415 7f80 	tst.w	r5, #256	; 0x100
d05e08fe:	bf02      	ittt	eq
d05e0900:	3001      	addeq	r0, #1
d05e0902:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d05e0906:	3001      	addeq	r0, #1
d05e0908:	bcf0      	pop	{r4, r5, r6, r7}
d05e090a:	3801      	subs	r0, #1
d05e090c:	4770      	bx	lr
d05e090e:	bf00      	nop

d05e0910 <memcpy>:
d05e0910:	440a      	add	r2, r1
d05e0912:	4291      	cmp	r1, r2
d05e0914:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d05e0918:	d100      	bne.n	d05e091c <memcpy+0xc>
d05e091a:	4770      	bx	lr
d05e091c:	b510      	push	{r4, lr}
d05e091e:	f811 4b01 	ldrb.w	r4, [r1], #1
d05e0922:	f803 4f01 	strb.w	r4, [r3, #1]!
d05e0926:	4291      	cmp	r1, r2
d05e0928:	d1f9      	bne.n	d05e091e <memcpy+0xe>
d05e092a:	bd10      	pop	{r4, pc}

d05e092c <memmove>:
d05e092c:	4288      	cmp	r0, r1
d05e092e:	b510      	push	{r4, lr}
d05e0930:	eb01 0402 	add.w	r4, r1, r2
d05e0934:	d902      	bls.n	d05e093c <memmove+0x10>
d05e0936:	4284      	cmp	r4, r0
d05e0938:	4623      	mov	r3, r4
d05e093a:	d807      	bhi.n	d05e094c <memmove+0x20>
d05e093c:	1e43      	subs	r3, r0, #1
d05e093e:	42a1      	cmp	r1, r4
d05e0940:	d008      	beq.n	d05e0954 <memmove+0x28>
d05e0942:	f811 2b01 	ldrb.w	r2, [r1], #1
d05e0946:	f803 2f01 	strb.w	r2, [r3, #1]!
d05e094a:	e7f8      	b.n	d05e093e <memmove+0x12>
d05e094c:	4402      	add	r2, r0
d05e094e:	4601      	mov	r1, r0
d05e0950:	428a      	cmp	r2, r1
d05e0952:	d100      	bne.n	d05e0956 <memmove+0x2a>
d05e0954:	bd10      	pop	{r4, pc}
d05e0956:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d05e095a:	f802 4d01 	strb.w	r4, [r2, #-1]!
d05e095e:	e7f7      	b.n	d05e0950 <memmove+0x24>

d05e0960 <_free_r>:
d05e0960:	b537      	push	{r0, r1, r2, r4, r5, lr}
d05e0962:	2900      	cmp	r1, #0
d05e0964:	d048      	beq.n	d05e09f8 <_free_r+0x98>
d05e0966:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05e096a:	9001      	str	r0, [sp, #4]
d05e096c:	2b00      	cmp	r3, #0
d05e096e:	f1a1 0404 	sub.w	r4, r1, #4
d05e0972:	bfb8      	it	lt
d05e0974:	18e4      	addlt	r4, r4, r3
d05e0976:	f000 f8d3 	bl	d05e0b20 <__malloc_lock>
d05e097a:	4a20      	ldr	r2, [pc, #128]	; (d05e09fc <_free_r+0x9c>)
d05e097c:	9801      	ldr	r0, [sp, #4]
d05e097e:	6813      	ldr	r3, [r2, #0]
d05e0980:	4615      	mov	r5, r2
d05e0982:	b933      	cbnz	r3, d05e0992 <_free_r+0x32>
d05e0984:	6063      	str	r3, [r4, #4]
d05e0986:	6014      	str	r4, [r2, #0]
d05e0988:	b003      	add	sp, #12
d05e098a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05e098e:	f000 b8cd 	b.w	d05e0b2c <__malloc_unlock>
d05e0992:	42a3      	cmp	r3, r4
d05e0994:	d90b      	bls.n	d05e09ae <_free_r+0x4e>
d05e0996:	6821      	ldr	r1, [r4, #0]
d05e0998:	1862      	adds	r2, r4, r1
d05e099a:	4293      	cmp	r3, r2
d05e099c:	bf04      	itt	eq
d05e099e:	681a      	ldreq	r2, [r3, #0]
d05e09a0:	685b      	ldreq	r3, [r3, #4]
d05e09a2:	6063      	str	r3, [r4, #4]
d05e09a4:	bf04      	itt	eq
d05e09a6:	1852      	addeq	r2, r2, r1
d05e09a8:	6022      	streq	r2, [r4, #0]
d05e09aa:	602c      	str	r4, [r5, #0]
d05e09ac:	e7ec      	b.n	d05e0988 <_free_r+0x28>
d05e09ae:	461a      	mov	r2, r3
d05e09b0:	685b      	ldr	r3, [r3, #4]
d05e09b2:	b10b      	cbz	r3, d05e09b8 <_free_r+0x58>
d05e09b4:	42a3      	cmp	r3, r4
d05e09b6:	d9fa      	bls.n	d05e09ae <_free_r+0x4e>
d05e09b8:	6811      	ldr	r1, [r2, #0]
d05e09ba:	1855      	adds	r5, r2, r1
d05e09bc:	42a5      	cmp	r5, r4
d05e09be:	d10b      	bne.n	d05e09d8 <_free_r+0x78>
d05e09c0:	6824      	ldr	r4, [r4, #0]
d05e09c2:	4421      	add	r1, r4
d05e09c4:	1854      	adds	r4, r2, r1
d05e09c6:	42a3      	cmp	r3, r4
d05e09c8:	6011      	str	r1, [r2, #0]
d05e09ca:	d1dd      	bne.n	d05e0988 <_free_r+0x28>
d05e09cc:	681c      	ldr	r4, [r3, #0]
d05e09ce:	685b      	ldr	r3, [r3, #4]
d05e09d0:	6053      	str	r3, [r2, #4]
d05e09d2:	4421      	add	r1, r4
d05e09d4:	6011      	str	r1, [r2, #0]
d05e09d6:	e7d7      	b.n	d05e0988 <_free_r+0x28>
d05e09d8:	d902      	bls.n	d05e09e0 <_free_r+0x80>
d05e09da:	230c      	movs	r3, #12
d05e09dc:	6003      	str	r3, [r0, #0]
d05e09de:	e7d3      	b.n	d05e0988 <_free_r+0x28>
d05e09e0:	6825      	ldr	r5, [r4, #0]
d05e09e2:	1961      	adds	r1, r4, r5
d05e09e4:	428b      	cmp	r3, r1
d05e09e6:	bf04      	itt	eq
d05e09e8:	6819      	ldreq	r1, [r3, #0]
d05e09ea:	685b      	ldreq	r3, [r3, #4]
d05e09ec:	6063      	str	r3, [r4, #4]
d05e09ee:	bf04      	itt	eq
d05e09f0:	1949      	addeq	r1, r1, r5
d05e09f2:	6021      	streq	r1, [r4, #0]
d05e09f4:	6054      	str	r4, [r2, #4]
d05e09f6:	e7c7      	b.n	d05e0988 <_free_r+0x28>
d05e09f8:	b003      	add	sp, #12
d05e09fa:	bd30      	pop	{r4, r5, pc}
d05e09fc:	d05e0cbc 	.word	0xd05e0cbc

d05e0a00 <_malloc_r>:
d05e0a00:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0a02:	1ccd      	adds	r5, r1, #3
d05e0a04:	f025 0503 	bic.w	r5, r5, #3
d05e0a08:	3508      	adds	r5, #8
d05e0a0a:	2d0c      	cmp	r5, #12
d05e0a0c:	bf38      	it	cc
d05e0a0e:	250c      	movcc	r5, #12
d05e0a10:	2d00      	cmp	r5, #0
d05e0a12:	4606      	mov	r6, r0
d05e0a14:	db01      	blt.n	d05e0a1a <_malloc_r+0x1a>
d05e0a16:	42a9      	cmp	r1, r5
d05e0a18:	d903      	bls.n	d05e0a22 <_malloc_r+0x22>
d05e0a1a:	230c      	movs	r3, #12
d05e0a1c:	6033      	str	r3, [r6, #0]
d05e0a1e:	2000      	movs	r0, #0
d05e0a20:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e0a22:	f000 f87d 	bl	d05e0b20 <__malloc_lock>
d05e0a26:	4921      	ldr	r1, [pc, #132]	; (d05e0aac <_malloc_r+0xac>)
d05e0a28:	680a      	ldr	r2, [r1, #0]
d05e0a2a:	4614      	mov	r4, r2
d05e0a2c:	b99c      	cbnz	r4, d05e0a56 <_malloc_r+0x56>
d05e0a2e:	4f20      	ldr	r7, [pc, #128]	; (d05e0ab0 <_malloc_r+0xb0>)
d05e0a30:	683b      	ldr	r3, [r7, #0]
d05e0a32:	b923      	cbnz	r3, d05e0a3e <_malloc_r+0x3e>
d05e0a34:	4621      	mov	r1, r4
d05e0a36:	4630      	mov	r0, r6
d05e0a38:	f000 f862 	bl	d05e0b00 <_sbrk_r>
d05e0a3c:	6038      	str	r0, [r7, #0]
d05e0a3e:	4629      	mov	r1, r5
d05e0a40:	4630      	mov	r0, r6
d05e0a42:	f000 f85d 	bl	d05e0b00 <_sbrk_r>
d05e0a46:	1c43      	adds	r3, r0, #1
d05e0a48:	d123      	bne.n	d05e0a92 <_malloc_r+0x92>
d05e0a4a:	230c      	movs	r3, #12
d05e0a4c:	6033      	str	r3, [r6, #0]
d05e0a4e:	4630      	mov	r0, r6
d05e0a50:	f000 f86c 	bl	d05e0b2c <__malloc_unlock>
d05e0a54:	e7e3      	b.n	d05e0a1e <_malloc_r+0x1e>
d05e0a56:	6823      	ldr	r3, [r4, #0]
d05e0a58:	1b5b      	subs	r3, r3, r5
d05e0a5a:	d417      	bmi.n	d05e0a8c <_malloc_r+0x8c>
d05e0a5c:	2b0b      	cmp	r3, #11
d05e0a5e:	d903      	bls.n	d05e0a68 <_malloc_r+0x68>
d05e0a60:	6023      	str	r3, [r4, #0]
d05e0a62:	441c      	add	r4, r3
d05e0a64:	6025      	str	r5, [r4, #0]
d05e0a66:	e004      	b.n	d05e0a72 <_malloc_r+0x72>
d05e0a68:	6863      	ldr	r3, [r4, #4]
d05e0a6a:	42a2      	cmp	r2, r4
d05e0a6c:	bf0c      	ite	eq
d05e0a6e:	600b      	streq	r3, [r1, #0]
d05e0a70:	6053      	strne	r3, [r2, #4]
d05e0a72:	4630      	mov	r0, r6
d05e0a74:	f000 f85a 	bl	d05e0b2c <__malloc_unlock>
d05e0a78:	f104 000b 	add.w	r0, r4, #11
d05e0a7c:	1d23      	adds	r3, r4, #4
d05e0a7e:	f020 0007 	bic.w	r0, r0, #7
d05e0a82:	1ac2      	subs	r2, r0, r3
d05e0a84:	d0cc      	beq.n	d05e0a20 <_malloc_r+0x20>
d05e0a86:	1a1b      	subs	r3, r3, r0
d05e0a88:	50a3      	str	r3, [r4, r2]
d05e0a8a:	e7c9      	b.n	d05e0a20 <_malloc_r+0x20>
d05e0a8c:	4622      	mov	r2, r4
d05e0a8e:	6864      	ldr	r4, [r4, #4]
d05e0a90:	e7cc      	b.n	d05e0a2c <_malloc_r+0x2c>
d05e0a92:	1cc4      	adds	r4, r0, #3
d05e0a94:	f024 0403 	bic.w	r4, r4, #3
d05e0a98:	42a0      	cmp	r0, r4
d05e0a9a:	d0e3      	beq.n	d05e0a64 <_malloc_r+0x64>
d05e0a9c:	1a21      	subs	r1, r4, r0
d05e0a9e:	4630      	mov	r0, r6
d05e0aa0:	f000 f82e 	bl	d05e0b00 <_sbrk_r>
d05e0aa4:	3001      	adds	r0, #1
d05e0aa6:	d1dd      	bne.n	d05e0a64 <_malloc_r+0x64>
d05e0aa8:	e7cf      	b.n	d05e0a4a <_malloc_r+0x4a>
d05e0aaa:	bf00      	nop
d05e0aac:	d05e0cbc 	.word	0xd05e0cbc
d05e0ab0:	d05e0cc0 	.word	0xd05e0cc0

d05e0ab4 <_realloc_r>:
d05e0ab4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0ab6:	4607      	mov	r7, r0
d05e0ab8:	4614      	mov	r4, r2
d05e0aba:	460e      	mov	r6, r1
d05e0abc:	b921      	cbnz	r1, d05e0ac8 <_realloc_r+0x14>
d05e0abe:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d05e0ac2:	4611      	mov	r1, r2
d05e0ac4:	f7ff bf9c 	b.w	d05e0a00 <_malloc_r>
d05e0ac8:	b922      	cbnz	r2, d05e0ad4 <_realloc_r+0x20>
d05e0aca:	f7ff ff49 	bl	d05e0960 <_free_r>
d05e0ace:	4625      	mov	r5, r4
d05e0ad0:	4628      	mov	r0, r5
d05e0ad2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e0ad4:	f000 f830 	bl	d05e0b38 <_malloc_usable_size_r>
d05e0ad8:	42a0      	cmp	r0, r4
d05e0ada:	d20f      	bcs.n	d05e0afc <_realloc_r+0x48>
d05e0adc:	4621      	mov	r1, r4
d05e0ade:	4638      	mov	r0, r7
d05e0ae0:	f7ff ff8e 	bl	d05e0a00 <_malloc_r>
d05e0ae4:	4605      	mov	r5, r0
d05e0ae6:	2800      	cmp	r0, #0
d05e0ae8:	d0f2      	beq.n	d05e0ad0 <_realloc_r+0x1c>
d05e0aea:	4631      	mov	r1, r6
d05e0aec:	4622      	mov	r2, r4
d05e0aee:	f7ff ff0f 	bl	d05e0910 <memcpy>
d05e0af2:	4631      	mov	r1, r6
d05e0af4:	4638      	mov	r0, r7
d05e0af6:	f7ff ff33 	bl	d05e0960 <_free_r>
d05e0afa:	e7e9      	b.n	d05e0ad0 <_realloc_r+0x1c>
d05e0afc:	4635      	mov	r5, r6
d05e0afe:	e7e7      	b.n	d05e0ad0 <_realloc_r+0x1c>

d05e0b00 <_sbrk_r>:
d05e0b00:	b538      	push	{r3, r4, r5, lr}
d05e0b02:	4d06      	ldr	r5, [pc, #24]	; (d05e0b1c <_sbrk_r+0x1c>)
d05e0b04:	2300      	movs	r3, #0
d05e0b06:	4604      	mov	r4, r0
d05e0b08:	4608      	mov	r0, r1
d05e0b0a:	602b      	str	r3, [r5, #0]
d05e0b0c:	f7ff fa82 	bl	d05e0014 <_sbrk>
d05e0b10:	1c43      	adds	r3, r0, #1
d05e0b12:	d102      	bne.n	d05e0b1a <_sbrk_r+0x1a>
d05e0b14:	682b      	ldr	r3, [r5, #0]
d05e0b16:	b103      	cbz	r3, d05e0b1a <_sbrk_r+0x1a>
d05e0b18:	6023      	str	r3, [r4, #0]
d05e0b1a:	bd38      	pop	{r3, r4, r5, pc}
d05e0b1c:	d05e0cc4 	.word	0xd05e0cc4

d05e0b20 <__malloc_lock>:
d05e0b20:	4801      	ldr	r0, [pc, #4]	; (d05e0b28 <__malloc_lock+0x8>)
d05e0b22:	f000 b811 	b.w	d05e0b48 <__retarget_lock_acquire_recursive>
d05e0b26:	bf00      	nop
d05e0b28:	d05e0ccc 	.word	0xd05e0ccc

d05e0b2c <__malloc_unlock>:
d05e0b2c:	4801      	ldr	r0, [pc, #4]	; (d05e0b34 <__malloc_unlock+0x8>)
d05e0b2e:	f000 b80c 	b.w	d05e0b4a <__retarget_lock_release_recursive>
d05e0b32:	bf00      	nop
d05e0b34:	d05e0ccc 	.word	0xd05e0ccc

d05e0b38 <_malloc_usable_size_r>:
d05e0b38:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05e0b3c:	1f18      	subs	r0, r3, #4
d05e0b3e:	2b00      	cmp	r3, #0
d05e0b40:	bfbc      	itt	lt
d05e0b42:	580b      	ldrlt	r3, [r1, r0]
d05e0b44:	18c0      	addlt	r0, r0, r3
d05e0b46:	4770      	bx	lr

d05e0b48 <__retarget_lock_acquire_recursive>:
d05e0b48:	4770      	bx	lr

d05e0b4a <__retarget_lock_release_recursive>:
d05e0b4a:	4770      	bx	lr
d05e0b4c:	67617355 	.word	0x67617355
d05e0b50:	63203a65 	.word	0x63203a65
d05e0b54:	6679706f 	.word	0x6679706f
d05e0b58:	20656c69 	.word	0x20656c69
d05e0b5c:	756f733c 	.word	0x756f733c
d05e0b60:	3e656372 	.word	0x3e656372
d05e0b64:	65643c20 	.word	0x65643c20
d05e0b68:	0a3e7473 	.word	0x0a3e7473
d05e0b6c:	00000000 	.word	0x00000000
d05e0b70:	73257325 	.word	0x73257325
d05e0b74:	00000000 	.word	0x00000000
d05e0b78:	6e65704f 	.word	0x6e65704f
d05e0b7c:	20676e69 	.word	0x20676e69
d05e0b80:	72756f73 	.word	0x72756f73
d05e0b84:	203a6563 	.word	0x203a6563
d05e0b88:	000a7325 	.word	0x000a7325
d05e0b8c:	6c696146 	.word	0x6c696146
d05e0b90:	74206465 	.word	0x74206465
d05e0b94:	706f206f 	.word	0x706f206f
d05e0b98:	73206e65 	.word	0x73206e65
d05e0b9c:	6372756f 	.word	0x6372756f
d05e0ba0:	69662065 	.word	0x69662065
d05e0ba4:	0a2e656c 	.word	0x0a2e656c
d05e0ba8:	00000000 	.word	0x00000000
d05e0bac:	6e65704f 	.word	0x6e65704f
d05e0bb0:	20676e69 	.word	0x20676e69
d05e0bb4:	74736564 	.word	0x74736564
d05e0bb8:	7325203a 	.word	0x7325203a
d05e0bbc:	0000000a 	.word	0x0000000a
d05e0bc0:	6c696146 	.word	0x6c696146
d05e0bc4:	74206465 	.word	0x74206465
d05e0bc8:	7263206f 	.word	0x7263206f
d05e0bcc:	65746165 	.word	0x65746165
d05e0bd0:	73656420 	.word	0x73656420
d05e0bd4:	616e6974 	.word	0x616e6974
d05e0bd8:	6e6f6974 	.word	0x6e6f6974
d05e0bdc:	6c696620 	.word	0x6c696620
d05e0be0:	000a2e65 	.word	0x000a2e65
d05e0be4:	74726150 	.word	0x74726150
d05e0be8:	206c6169 	.word	0x206c6169
d05e0bec:	74697277 	.word	0x74697277
d05e0bf0:	000a2165 	.word	0x000a2165
d05e0bf4:	69706f43 	.word	0x69706f43
d05e0bf8:	25206465 	.word	0x25206465
d05e0bfc:	79622064 	.word	0x79622064
d05e0c00:	20736574 	.word	0x20736574
d05e0c04:	6d6f7266 	.word	0x6d6f7266
d05e0c08:	73252720 	.word	0x73252720
d05e0c0c:	6f742027 	.word	0x6f742027
d05e0c10:	73252720 	.word	0x73252720
d05e0c14:	0a27      	.short	0x0a27
d05e0c16:	00          	.byte	0x00
d05e0c17:	23          	.byte	0x23
d05e0c18:	202b302d 	.word	0x202b302d
d05e0c1c:	4c6c6800 	.word	0x4c6c6800
d05e0c20:	67666500 	.word	0x67666500
d05e0c24:	00474645 	.word	0x00474645
d05e0c28:	33323130 	.word	0x33323130
d05e0c2c:	37363534 	.word	0x37363534
d05e0c30:	42413938 	.word	0x42413938
d05e0c34:	46454443 	.word	0x46454443
d05e0c38:	32313000 	.word	0x32313000
d05e0c3c:	36353433 	.word	0x36353433
d05e0c40:	61393837 	.word	0x61393837
d05e0c44:	65646362 	.word	0x65646362
d05e0c48:	Address 0x00000000d05e0c48 is out of bounds.


Disassembly of section .init:

d05e0c4c <_init>:
d05e0c4c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0c4e:	bf00      	nop

Disassembly of section .fini:

d05e0c50 <_fini>:
d05e0c50:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0c52:	bf00      	nop
