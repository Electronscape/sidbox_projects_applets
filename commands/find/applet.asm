
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d05e0010 <applet_entry>:
d05e0010:	f000 b8ce 	b.w	d05e01b0 <main>

d05e0014 <memset>:
d05e0014:	4402      	add	r2, r0
d05e0016:	4603      	mov	r3, r0
d05e0018:	4293      	cmp	r3, r2
d05e001a:	d100      	bne.n	d05e001e <memset+0xa>
d05e001c:	4770      	bx	lr
d05e001e:	f803 1b01 	strb.w	r1, [r3], #1
d05e0022:	e7f9      	b.n	d05e0018 <memset+0x4>

d05e0024 <normalize_path>:
d05e0024:	b510      	push	{r4, lr}
d05e0026:	4604      	mov	r4, r0
d05e0028:	f000 fa13 	bl	d05e0452 <strlen>
d05e002c:	2801      	cmp	r0, #1
d05e002e:	d90a      	bls.n	d05e0046 <normalize_path+0x22>
d05e0030:	1823      	adds	r3, r4, r0
d05e0032:	2100      	movs	r1, #0
d05e0034:	1c60      	adds	r0, r4, #1
d05e0036:	e002      	b.n	d05e003e <normalize_path+0x1a>
d05e0038:	4283      	cmp	r3, r0
d05e003a:	7019      	strb	r1, [r3, #0]
d05e003c:	d003      	beq.n	d05e0046 <normalize_path+0x22>
d05e003e:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
d05e0042:	2a2f      	cmp	r2, #47	; 0x2f
d05e0044:	d0f8      	beq.n	d05e0038 <normalize_path+0x14>
d05e0046:	bd10      	pop	{r4, pc}

d05e0048 <join_path>:
d05e0048:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05e004c:	4692      	mov	sl, r2
d05e004e:	4681      	mov	r9, r0
d05e0050:	4610      	mov	r0, r2
d05e0052:	461d      	mov	r5, r3
d05e0054:	4688      	mov	r8, r1
d05e0056:	f000 f9fc 	bl	d05e0452 <strlen>
d05e005a:	4604      	mov	r4, r0
d05e005c:	eb0a 0300 	add.w	r3, sl, r0
d05e0060:	e004      	b.n	d05e006c <join_path+0x24>
d05e0062:	f813 7d01 	ldrb.w	r7, [r3, #-1]!
d05e0066:	2f2f      	cmp	r7, #47	; 0x2f
d05e0068:	d104      	bne.n	d05e0074 <join_path+0x2c>
d05e006a:	4634      	mov	r4, r6
d05e006c:	2c01      	cmp	r4, #1
d05e006e:	f104 36ff 	add.w	r6, r4, #4294967295	; 0xffffffff
d05e0072:	d8f6      	bhi.n	d05e0062 <join_path+0x1a>
d05e0074:	782b      	ldrb	r3, [r5, #0]
d05e0076:	2b2f      	cmp	r3, #47	; 0x2f
d05e0078:	d103      	bne.n	d05e0082 <join_path+0x3a>
d05e007a:	f815 3f01 	ldrb.w	r3, [r5, #1]!
d05e007e:	2b2f      	cmp	r3, #47	; 0x2f
d05e0080:	d0fb      	beq.n	d05e007a <join_path+0x32>
d05e0082:	4544      	cmp	r4, r8
d05e0084:	4651      	mov	r1, sl
d05e0086:	4648      	mov	r0, r9
d05e0088:	bf28      	it	cs
d05e008a:	f108 34ff 	addcs.w	r4, r8, #4294967295	; 0xffffffff
d05e008e:	4622      	mov	r2, r4
d05e0090:	f000 fa1d 	bl	d05e04ce <strncpy>
d05e0094:	2300      	movs	r3, #0
d05e0096:	f809 3004 	strb.w	r3, [r9, r4]
d05e009a:	782b      	ldrb	r3, [r5, #0]
d05e009c:	b113      	cbz	r3, d05e00a4 <join_path+0x5c>
d05e009e:	3401      	adds	r4, #1
d05e00a0:	4544      	cmp	r4, r8
d05e00a2:	d301      	bcc.n	d05e00a8 <join_path+0x60>
d05e00a4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e00a8:	4648      	mov	r0, r9
d05e00aa:	f000 f9d2 	bl	d05e0452 <strlen>
d05e00ae:	4a07      	ldr	r2, [pc, #28]	; (d05e00cc <join_path+0x84>)
d05e00b0:	4603      	mov	r3, r0
d05e00b2:	4629      	mov	r1, r5
d05e00b4:	8814      	ldrh	r4, [r2, #0]
d05e00b6:	4648      	mov	r0, r9
d05e00b8:	eba8 0203 	sub.w	r2, r8, r3
d05e00bc:	f829 4003 	strh.w	r4, [r9, r3]
d05e00c0:	3a02      	subs	r2, #2
d05e00c2:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05e00c6:	f000 b9ef 	b.w	d05e04a8 <strncat>
d05e00ca:	bf00      	nop
d05e00cc:	d05e0508 	.word	0xd05e0508

d05e00d0 <strcasestr_custom>:
d05e00d0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05e00d4:	4605      	mov	r5, r0
d05e00d6:	4608      	mov	r0, r1
d05e00d8:	460f      	mov	r7, r1
d05e00da:	f000 f9ba 	bl	d05e0452 <strlen>
d05e00de:	b1b0      	cbz	r0, d05e010e <strcasestr_custom+0x3e>
d05e00e0:	782c      	ldrb	r4, [r5, #0]
d05e00e2:	b1bc      	cbz	r4, d05e0114 <strcasestr_custom+0x44>
d05e00e4:	4680      	mov	r8, r0
d05e00e6:	7838      	ldrb	r0, [r7, #0]
d05e00e8:	f000 fa04 	bl	d05e04f4 <tolower>
d05e00ec:	4606      	mov	r6, r0
d05e00ee:	e002      	b.n	d05e00f6 <strcasestr_custom+0x26>
d05e00f0:	f815 4f01 	ldrb.w	r4, [r5, #1]!
d05e00f4:	b174      	cbz	r4, d05e0114 <strcasestr_custom+0x44>
d05e00f6:	4620      	mov	r0, r4
d05e00f8:	f000 f9fc 	bl	d05e04f4 <tolower>
d05e00fc:	42b0      	cmp	r0, r6
d05e00fe:	d1f7      	bne.n	d05e00f0 <strcasestr_custom+0x20>
d05e0100:	4642      	mov	r2, r8
d05e0102:	4639      	mov	r1, r7
d05e0104:	4628      	mov	r0, r5
d05e0106:	f000 f9ad 	bl	d05e0464 <strncasecmp>
d05e010a:	2800      	cmp	r0, #0
d05e010c:	d1f0      	bne.n	d05e00f0 <strcasestr_custom+0x20>
d05e010e:	2001      	movs	r0, #1
d05e0110:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d05e0114:	4620      	mov	r0, r4
d05e0116:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d05e011a:	bf00      	nop

d05e011c <wildcard_match_case_insensitive>:
d05e011c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e011e:	7803      	ldrb	r3, [r0, #0]
d05e0120:	2b00      	cmp	r3, #0
d05e0122:	d03d      	beq.n	d05e01a0 <wildcard_match_case_insensitive+0x84>
d05e0124:	460d      	mov	r5, r1
d05e0126:	4f21      	ldr	r7, [pc, #132]	; (d05e01ac <wildcard_match_case_insensitive+0x90>)
d05e0128:	e015      	b.n	d05e0156 <wildcard_match_case_insensitive+0x3a>
d05e012a:	2b2a      	cmp	r3, #42	; 0x2a
d05e012c:	d020      	beq.n	d05e0170 <wildcard_match_case_insensitive+0x54>
d05e012e:	5cfc      	ldrb	r4, [r7, r3]
d05e0130:	f004 0403 	and.w	r4, r4, #3
d05e0134:	2c01      	cmp	r4, #1
d05e0136:	4614      	mov	r4, r2
d05e0138:	bf08      	it	eq
d05e013a:	f103 0120 	addeq.w	r1, r3, #32
d05e013e:	5cbb      	ldrb	r3, [r7, r2]
d05e0140:	f003 0303 	and.w	r3, r3, #3
d05e0144:	2b01      	cmp	r3, #1
d05e0146:	bf08      	it	eq
d05e0148:	f102 0420 	addeq.w	r4, r2, #32
d05e014c:	42a1      	cmp	r1, r4
d05e014e:	d11c      	bne.n	d05e018a <wildcard_match_case_insensitive+0x6e>
d05e0150:	f810 3f01 	ldrb.w	r3, [r0, #1]!
d05e0154:	b1db      	cbz	r3, d05e018e <wildcard_match_case_insensitive+0x72>
d05e0156:	462e      	mov	r6, r5
d05e0158:	f815 2b01 	ldrb.w	r2, [r5], #1
d05e015c:	4619      	mov	r1, r3
d05e015e:	2a00      	cmp	r2, #0
d05e0160:	d1e3      	bne.n	d05e012a <wildcard_match_case_insensitive+0xe>
d05e0162:	2b2a      	cmp	r3, #42	; 0x2a
d05e0164:	d11a      	bne.n	d05e019c <wildcard_match_case_insensitive+0x80>
d05e0166:	7842      	ldrb	r2, [r0, #1]
d05e0168:	fab2 f082 	clz	r0, r2
d05e016c:	0940      	lsrs	r0, r0, #5
d05e016e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e0170:	7843      	ldrb	r3, [r0, #1]
d05e0172:	b18b      	cbz	r3, d05e0198 <wildcard_match_case_insensitive+0x7c>
d05e0174:	1c44      	adds	r4, r0, #1
d05e0176:	4631      	mov	r1, r6
d05e0178:	4620      	mov	r0, r4
d05e017a:	f7ff ffcf 	bl	d05e011c <wildcard_match_case_insensitive>
d05e017e:	b958      	cbnz	r0, d05e0198 <wildcard_match_case_insensitive+0x7c>
d05e0180:	f816 3f01 	ldrb.w	r3, [r6, #1]!
d05e0184:	2b00      	cmp	r3, #0
d05e0186:	d1f6      	bne.n	d05e0176 <wildcard_match_case_insensitive+0x5a>
d05e0188:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e018a:	2000      	movs	r0, #0
d05e018c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e018e:	7870      	ldrb	r0, [r6, #1]
d05e0190:	fab0 f080 	clz	r0, r0
d05e0194:	0940      	lsrs	r0, r0, #5
d05e0196:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e0198:	2001      	movs	r0, #1
d05e019a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e019c:	4610      	mov	r0, r2
d05e019e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e01a0:	780a      	ldrb	r2, [r1, #0]
d05e01a2:	fab2 f082 	clz	r0, r2
d05e01a6:	0940      	lsrs	r0, r0, #5
d05e01a8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e01aa:	bf00      	nop
d05e01ac:	d05e06bf 	.word	0xd05e06bf

d05e01b0 <main>:
d05e01b0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05e01b4:	2801      	cmp	r0, #1
d05e01b6:	ed2d 8b02 	vpush	{d8}
d05e01ba:	f5ad 3d00 	sub.w	sp, sp, #131072	; 0x20000
d05e01be:	f5ad 7d27 	sub.w	sp, sp, #668	; 0x29c
d05e01c2:	f340 80bd 	ble.w	d05e0340 <main+0x190>
d05e01c6:	2802      	cmp	r0, #2
d05e01c8:	f000 80a4 	beq.w	d05e0314 <main+0x164>
d05e01cc:	460b      	mov	r3, r1
d05e01ce:	1f0a      	subs	r2, r1, #4
d05e01d0:	2100      	movs	r1, #0
d05e01d2:	eb02 0580 	add.w	r5, r2, r0, lsl #2
d05e01d6:	f853 9f04 	ldr.w	r9, [r3, #4]!
d05e01da:	468a      	mov	sl, r1
d05e01dc:	e008      	b.n	d05e01f0 <main+0x40>
d05e01de:	7850      	ldrb	r0, [r2, #1]
d05e01e0:	2877      	cmp	r0, #119	; 0x77
d05e01e2:	d10a      	bne.n	d05e01fa <main+0x4a>
d05e01e4:	7890      	ldrb	r0, [r2, #2]
d05e01e6:	b940      	cbnz	r0, d05e01fa <main+0x4a>
d05e01e8:	42ab      	cmp	r3, r5
d05e01ea:	f04f 0a01 	mov.w	sl, #1
d05e01ee:	d007      	beq.n	d05e0200 <main+0x50>
d05e01f0:	f853 2f04 	ldr.w	r2, [r3, #4]!
d05e01f4:	7810      	ldrb	r0, [r2, #0]
d05e01f6:	282d      	cmp	r0, #45	; 0x2d
d05e01f8:	d0f1      	beq.n	d05e01de <main+0x2e>
d05e01fa:	42ab      	cmp	r3, r5
d05e01fc:	4611      	mov	r1, r2
d05e01fe:	d1f7      	bne.n	d05e01f0 <main+0x40>
d05e0200:	2900      	cmp	r1, #0
d05e0202:	f000 8090 	beq.w	d05e0326 <main+0x176>
d05e0206:	ab26      	add	r3, sp, #152	; 0x98
d05e0208:	ee08 3a10 	vmov	s16, r3
d05e020c:	2400      	movs	r4, #0
d05e020e:	22ff      	movs	r2, #255	; 0xff
d05e0210:	a8a6      	add	r0, sp, #664	; 0x298
d05e0212:	aea6      	add	r6, sp, #664	; 0x298
d05e0214:	f000 f95b 	bl	d05e04ce <strncpy>
d05e0218:	a8a6      	add	r0, sp, #664	; 0x298
d05e021a:	f88d 4397 	strb.w	r4, [sp, #919]	; 0x397
d05e021e:	f7ff ff01 	bl	d05e0024 <normalize_path>
d05e0222:	4b67      	ldr	r3, [pc, #412]	; (d05e03c0 <main+0x210>)
d05e0224:	4649      	mov	r1, r9
d05e0226:	4867      	ldr	r0, [pc, #412]	; (d05e03c4 <main+0x214>)
d05e0228:	46a3      	mov	fp, r4
d05e022a:	689b      	ldr	r3, [r3, #8]
d05e022c:	4627      	mov	r7, r4
d05e022e:	f04f 0801 	mov.w	r8, #1
d05e0232:	ac66      	add	r4, sp, #408	; 0x198
d05e0234:	4798      	blx	r3
d05e0236:	e008      	b.n	d05e024a <main+0x9a>
d05e0238:	4631      	mov	r1, r6
d05e023a:	68ab      	ldr	r3, [r5, #8]
d05e023c:	4862      	ldr	r0, [pc, #392]	; (d05e03c8 <main+0x218>)
d05e023e:	f506 7680 	add.w	r6, r6, #256	; 0x100
d05e0242:	4798      	blx	r3
d05e0244:	45b8      	cmp	r8, r7
d05e0246:	f340 80a0 	ble.w	d05e038a <main+0x1da>
d05e024a:	4d5d      	ldr	r5, [pc, #372]	; (d05e03c0 <main+0x210>)
d05e024c:	4631      	mov	r1, r6
d05e024e:	2000      	movs	r0, #0
d05e0250:	3701      	adds	r7, #1
d05e0252:	6f2b      	ldr	r3, [r5, #112]	; 0x70
d05e0254:	4798      	blx	r3
d05e0256:	2800      	cmp	r0, #0
d05e0258:	d1ee      	bne.n	d05e0238 <main+0x88>
d05e025a:	4605      	mov	r5, r0
d05e025c:	2100      	movs	r1, #0
d05e025e:	2298      	movs	r2, #152	; 0x98
d05e0260:	4668      	mov	r0, sp
d05e0262:	f7ff fed7 	bl	d05e0014 <memset>
d05e0266:	4b56      	ldr	r3, [pc, #344]	; (d05e03c0 <main+0x210>)
d05e0268:	4669      	mov	r1, sp
d05e026a:	2000      	movs	r0, #0
d05e026c:	6f9b      	ldr	r3, [r3, #120]	; 0x78
d05e026e:	4798      	blx	r3
d05e0270:	2800      	cmp	r0, #0
d05e0272:	f040 8081 	bne.w	d05e0378 <main+0x1c8>
d05e0276:	f89d 3016 	ldrb.w	r3, [sp, #22]
d05e027a:	2b00      	cmp	r3, #0
d05e027c:	d07c      	beq.n	d05e0378 <main+0x1c8>
d05e027e:	f8bd 3016 	ldrh.w	r3, [sp, #22]
d05e0282:	2b2e      	cmp	r3, #46	; 0x2e
d05e0284:	d0ea      	beq.n	d05e025c <main+0xac>
d05e0286:	f642 622e 	movw	r2, #11822	; 0x2e2e
d05e028a:	4293      	cmp	r3, r2
d05e028c:	d065      	beq.n	d05e035a <main+0x1aa>
d05e028e:	f10d 0316 	add.w	r3, sp, #22
d05e0292:	4632      	mov	r2, r6
d05e0294:	f44f 7180 	mov.w	r1, #256	; 0x100
d05e0298:	4620      	mov	r0, r4
d05e029a:	f7ff fed5 	bl	d05e0048 <join_path>
d05e029e:	4620      	mov	r0, r4
d05e02a0:	f000 f8d7 	bl	d05e0452 <strlen>
d05e02a4:	2801      	cmp	r0, #1
d05e02a6:	d909      	bls.n	d05e02bc <main+0x10c>
d05e02a8:	3801      	subs	r0, #1
d05e02aa:	4420      	add	r0, r4
d05e02ac:	e002      	b.n	d05e02b4 <main+0x104>
d05e02ae:	4284      	cmp	r4, r0
d05e02b0:	7045      	strb	r5, [r0, #1]
d05e02b2:	d003      	beq.n	d05e02bc <main+0x10c>
d05e02b4:	f810 3901 	ldrb.w	r3, [r0], #-1
d05e02b8:	2b2f      	cmp	r3, #47	; 0x2f
d05e02ba:	d0f8      	beq.n	d05e02ae <main+0xfe>
d05e02bc:	f1ba 0f00 	cmp.w	sl, #0
d05e02c0:	d051      	beq.n	d05e0366 <main+0x1b6>
d05e02c2:	212a      	movs	r1, #42	; 0x2a
d05e02c4:	4648      	mov	r0, r9
d05e02c6:	f000 f8ad 	bl	d05e0424 <strchr>
d05e02ca:	2800      	cmp	r0, #0
d05e02cc:	d06f      	beq.n	d05e03ae <main+0x1fe>
d05e02ce:	f10d 0116 	add.w	r1, sp, #22
d05e02d2:	4648      	mov	r0, r9
d05e02d4:	f7ff ff22 	bl	d05e011c <wildcard_match_case_insensitive>
d05e02d8:	b130      	cbz	r0, d05e02e8 <main+0x138>
d05e02da:	4b39      	ldr	r3, [pc, #228]	; (d05e03c0 <main+0x210>)
d05e02dc:	4621      	mov	r1, r4
d05e02de:	483b      	ldr	r0, [pc, #236]	; (d05e03cc <main+0x21c>)
d05e02e0:	f10b 0b01 	add.w	fp, fp, #1
d05e02e4:	689b      	ldr	r3, [r3, #8]
d05e02e6:	4798      	blx	r3
d05e02e8:	f89d 3008 	ldrb.w	r3, [sp, #8]
d05e02ec:	06db      	lsls	r3, r3, #27
d05e02ee:	d5b5      	bpl.n	d05e025c <main+0xac>
d05e02f0:	f5b8 7f00 	cmp.w	r8, #512	; 0x200
d05e02f4:	dab2      	bge.n	d05e025c <main+0xac>
d05e02f6:	aba6      	add	r3, sp, #664	; 0x298
d05e02f8:	22ff      	movs	r2, #255	; 0xff
d05e02fa:	4621      	mov	r1, r4
d05e02fc:	eb03 2308 	add.w	r3, r3, r8, lsl #8
d05e0300:	f108 0801 	add.w	r8, r8, #1
d05e0304:	4618      	mov	r0, r3
d05e0306:	f000 f8e2 	bl	d05e04ce <strncpy>
d05e030a:	f880 50ff 	strb.w	r5, [r0, #255]	; 0xff
d05e030e:	f7ff fe89 	bl	d05e0024 <normalize_path>
d05e0312:	e7a3      	b.n	d05e025c <main+0xac>
d05e0314:	f8d1 9004 	ldr.w	r9, [r1, #4]
d05e0318:	492d      	ldr	r1, [pc, #180]	; (d05e03d0 <main+0x220>)
d05e031a:	4648      	mov	r0, r9
d05e031c:	f000 f88f 	bl	d05e043e <strcmp>
d05e0320:	b170      	cbz	r0, d05e0340 <main+0x190>
d05e0322:	f04f 0a00 	mov.w	sl, #0
d05e0326:	aa26      	add	r2, sp, #152	; 0x98
d05e0328:	4b25      	ldr	r3, [pc, #148]	; (d05e03c0 <main+0x210>)
d05e032a:	4610      	mov	r0, r2
d05e032c:	6e9b      	ldr	r3, [r3, #104]	; 0x68
d05e032e:	4614      	mov	r4, r2
d05e0330:	ee08 2a10 	vmov	s16, r2
d05e0334:	4798      	blx	r3
d05e0336:	4927      	ldr	r1, [pc, #156]	; (d05e03d4 <main+0x224>)
d05e0338:	2800      	cmp	r0, #0
d05e033a:	bf08      	it	eq
d05e033c:	4621      	moveq	r1, r4
d05e033e:	e765      	b.n	d05e020c <main+0x5c>
d05e0340:	4b1f      	ldr	r3, [pc, #124]	; (d05e03c0 <main+0x210>)
d05e0342:	4825      	ldr	r0, [pc, #148]	; (d05e03d8 <main+0x228>)
d05e0344:	689b      	ldr	r3, [r3, #8]
d05e0346:	4798      	blx	r3
d05e0348:	2001      	movs	r0, #1
d05e034a:	f50d 3d00 	add.w	sp, sp, #131072	; 0x20000
d05e034e:	f50d 7d27 	add.w	sp, sp, #668	; 0x29c
d05e0352:	ecbd 8b02 	vpop	{d8}
d05e0356:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e035a:	f89d 3018 	ldrb.w	r3, [sp, #24]
d05e035e:	2b00      	cmp	r3, #0
d05e0360:	f43f af7c 	beq.w	d05e025c <main+0xac>
d05e0364:	e793      	b.n	d05e028e <main+0xde>
d05e0366:	4649      	mov	r1, r9
d05e0368:	f10d 0016 	add.w	r0, sp, #22
d05e036c:	f000 f83e 	bl	d05e03ec <strcasecmp>
d05e0370:	fab0 f080 	clz	r0, r0
d05e0374:	0940      	lsrs	r0, r0, #5
d05e0376:	e7af      	b.n	d05e02d8 <main+0x128>
d05e0378:	4b11      	ldr	r3, [pc, #68]	; (d05e03c0 <main+0x210>)
d05e037a:	2000      	movs	r0, #0
d05e037c:	f506 7680 	add.w	r6, r6, #256	; 0x100
d05e0380:	6f5b      	ldr	r3, [r3, #116]	; 0x74
d05e0382:	4798      	blx	r3
d05e0384:	45b8      	cmp	r8, r7
d05e0386:	f73f af60 	bgt.w	d05e024a <main+0x9a>
d05e038a:	4c0d      	ldr	r4, [pc, #52]	; (d05e03c0 <main+0x210>)
d05e038c:	4659      	mov	r1, fp
d05e038e:	4813      	ldr	r0, [pc, #76]	; (d05e03dc <main+0x22c>)
d05e0390:	4a13      	ldr	r2, [pc, #76]	; (d05e03e0 <main+0x230>)
d05e0392:	68a3      	ldr	r3, [r4, #8]
d05e0394:	f1bb 0f01 	cmp.w	fp, #1
d05e0398:	bf08      	it	eq
d05e039a:	4602      	moveq	r2, r0
d05e039c:	4811      	ldr	r0, [pc, #68]	; (d05e03e4 <main+0x234>)
d05e039e:	4798      	blx	r3
d05e03a0:	4811      	ldr	r0, [pc, #68]	; (d05e03e8 <main+0x238>)
d05e03a2:	68a3      	ldr	r3, [r4, #8]
d05e03a4:	ee18 1a10 	vmov	r1, s16
d05e03a8:	4798      	blx	r3
d05e03aa:	2000      	movs	r0, #0
d05e03ac:	e7cd      	b.n	d05e034a <main+0x19a>
d05e03ae:	4649      	mov	r1, r9
d05e03b0:	f10d 0016 	add.w	r0, sp, #22
d05e03b4:	f7ff fe8c 	bl	d05e00d0 <strcasestr_custom>
d05e03b8:	3800      	subs	r0, #0
d05e03ba:	bf18      	it	ne
d05e03bc:	2001      	movne	r0, #1
d05e03be:	e78b      	b.n	d05e02d8 <main+0x128>
d05e03c0:	2001f000 	.word	0x2001f000
d05e03c4:	d05e0648 	.word	0xd05e0648
d05e03c8:	d05e065c 	.word	0xd05e065c
d05e03cc:	d05e0680 	.word	0xd05e0680
d05e03d0:	d05e0514 	.word	0xd05e0514
d05e03d4:	d05e0508 	.word	0xd05e0508
d05e03d8:	d05e0518 	.word	0xd05e0518
d05e03dc:	d05e050c 	.word	0xd05e050c
d05e03e0:	d05e0510 	.word	0xd05e0510
d05e03e4:	d05e068c 	.word	0xd05e068c
d05e03e8:	d05e06ac 	.word	0xd05e06ac

d05e03ec <strcasecmp>:
d05e03ec:	b570      	push	{r4, r5, r6, lr}
d05e03ee:	4d0c      	ldr	r5, [pc, #48]	; (d05e0420 <strcasecmp+0x34>)
d05e03f0:	4604      	mov	r4, r0
d05e03f2:	462e      	mov	r6, r5
d05e03f4:	f814 3b01 	ldrb.w	r3, [r4], #1
d05e03f8:	5d5a      	ldrb	r2, [r3, r5]
d05e03fa:	f002 0203 	and.w	r2, r2, #3
d05e03fe:	2a01      	cmp	r2, #1
d05e0400:	f811 2b01 	ldrb.w	r2, [r1], #1
d05e0404:	5cb0      	ldrb	r0, [r6, r2]
d05e0406:	f000 0003 	and.w	r0, r0, #3
d05e040a:	bf08      	it	eq
d05e040c:	3320      	addeq	r3, #32
d05e040e:	2801      	cmp	r0, #1
d05e0410:	bf08      	it	eq
d05e0412:	3220      	addeq	r2, #32
d05e0414:	1a98      	subs	r0, r3, r2
d05e0416:	d101      	bne.n	d05e041c <strcasecmp+0x30>
d05e0418:	2a00      	cmp	r2, #0
d05e041a:	d1eb      	bne.n	d05e03f4 <strcasecmp+0x8>
d05e041c:	bd70      	pop	{r4, r5, r6, pc}
d05e041e:	bf00      	nop
d05e0420:	d05e06bf 	.word	0xd05e06bf

d05e0424 <strchr>:
d05e0424:	b2c9      	uxtb	r1, r1
d05e0426:	4603      	mov	r3, r0
d05e0428:	f810 2b01 	ldrb.w	r2, [r0], #1
d05e042c:	b11a      	cbz	r2, d05e0436 <strchr+0x12>
d05e042e:	428a      	cmp	r2, r1
d05e0430:	d1f9      	bne.n	d05e0426 <strchr+0x2>
d05e0432:	4618      	mov	r0, r3
d05e0434:	4770      	bx	lr
d05e0436:	2900      	cmp	r1, #0
d05e0438:	bf18      	it	ne
d05e043a:	2300      	movne	r3, #0
d05e043c:	e7f9      	b.n	d05e0432 <strchr+0xe>

d05e043e <strcmp>:
d05e043e:	f810 2b01 	ldrb.w	r2, [r0], #1
d05e0442:	f811 3b01 	ldrb.w	r3, [r1], #1
d05e0446:	2a01      	cmp	r2, #1
d05e0448:	bf28      	it	cs
d05e044a:	429a      	cmpcs	r2, r3
d05e044c:	d0f7      	beq.n	d05e043e <strcmp>
d05e044e:	1ad0      	subs	r0, r2, r3
d05e0450:	4770      	bx	lr

d05e0452 <strlen>:
d05e0452:	4603      	mov	r3, r0
d05e0454:	f813 2b01 	ldrb.w	r2, [r3], #1
d05e0458:	2a00      	cmp	r2, #0
d05e045a:	d1fb      	bne.n	d05e0454 <strlen+0x2>
d05e045c:	1a18      	subs	r0, r3, r0
d05e045e:	3801      	subs	r0, #1
d05e0460:	4770      	bx	lr
	...

d05e0464 <strncasecmp>:
d05e0464:	b570      	push	{r4, r5, r6, lr}
d05e0466:	4e0f      	ldr	r6, [pc, #60]	; (d05e04a4 <strncasecmp+0x40>)
d05e0468:	4604      	mov	r4, r0
d05e046a:	440a      	add	r2, r1
d05e046c:	428a      	cmp	r2, r1
d05e046e:	d101      	bne.n	d05e0474 <strncasecmp+0x10>
d05e0470:	2000      	movs	r0, #0
d05e0472:	e013      	b.n	d05e049c <strncasecmp+0x38>
d05e0474:	f814 3b01 	ldrb.w	r3, [r4], #1
d05e0478:	5d98      	ldrb	r0, [r3, r6]
d05e047a:	f000 0003 	and.w	r0, r0, #3
d05e047e:	2801      	cmp	r0, #1
d05e0480:	f811 0b01 	ldrb.w	r0, [r1], #1
d05e0484:	5c35      	ldrb	r5, [r6, r0]
d05e0486:	f005 0503 	and.w	r5, r5, #3
d05e048a:	bf08      	it	eq
d05e048c:	3320      	addeq	r3, #32
d05e048e:	2d01      	cmp	r5, #1
d05e0490:	bf08      	it	eq
d05e0492:	3020      	addeq	r0, #32
d05e0494:	1a1b      	subs	r3, r3, r0
d05e0496:	d102      	bne.n	d05e049e <strncasecmp+0x3a>
d05e0498:	2800      	cmp	r0, #0
d05e049a:	d1e7      	bne.n	d05e046c <strncasecmp+0x8>
d05e049c:	bd70      	pop	{r4, r5, r6, pc}
d05e049e:	4618      	mov	r0, r3
d05e04a0:	e7fc      	b.n	d05e049c <strncasecmp+0x38>
d05e04a2:	bf00      	nop
d05e04a4:	d05e06bf 	.word	0xd05e06bf

d05e04a8 <strncat>:
d05e04a8:	b530      	push	{r4, r5, lr}
d05e04aa:	4604      	mov	r4, r0
d05e04ac:	7825      	ldrb	r5, [r4, #0]
d05e04ae:	4623      	mov	r3, r4
d05e04b0:	3401      	adds	r4, #1
d05e04b2:	2d00      	cmp	r5, #0
d05e04b4:	d1fa      	bne.n	d05e04ac <strncat+0x4>
d05e04b6:	3a01      	subs	r2, #1
d05e04b8:	d304      	bcc.n	d05e04c4 <strncat+0x1c>
d05e04ba:	f811 4b01 	ldrb.w	r4, [r1], #1
d05e04be:	f803 4b01 	strb.w	r4, [r3], #1
d05e04c2:	b904      	cbnz	r4, d05e04c6 <strncat+0x1e>
d05e04c4:	bd30      	pop	{r4, r5, pc}
d05e04c6:	2a00      	cmp	r2, #0
d05e04c8:	d1f5      	bne.n	d05e04b6 <strncat+0xe>
d05e04ca:	701a      	strb	r2, [r3, #0]
d05e04cc:	e7f3      	b.n	d05e04b6 <strncat+0xe>

d05e04ce <strncpy>:
d05e04ce:	b510      	push	{r4, lr}
d05e04d0:	3901      	subs	r1, #1
d05e04d2:	4603      	mov	r3, r0
d05e04d4:	b132      	cbz	r2, d05e04e4 <strncpy+0x16>
d05e04d6:	f811 4f01 	ldrb.w	r4, [r1, #1]!
d05e04da:	f803 4b01 	strb.w	r4, [r3], #1
d05e04de:	3a01      	subs	r2, #1
d05e04e0:	2c00      	cmp	r4, #0
d05e04e2:	d1f7      	bne.n	d05e04d4 <strncpy+0x6>
d05e04e4:	441a      	add	r2, r3
d05e04e6:	2100      	movs	r1, #0
d05e04e8:	4293      	cmp	r3, r2
d05e04ea:	d100      	bne.n	d05e04ee <strncpy+0x20>
d05e04ec:	bd10      	pop	{r4, pc}
d05e04ee:	f803 1b01 	strb.w	r1, [r3], #1
d05e04f2:	e7f9      	b.n	d05e04e8 <strncpy+0x1a>

d05e04f4 <tolower>:
d05e04f4:	4b03      	ldr	r3, [pc, #12]	; (d05e0504 <tolower+0x10>)
d05e04f6:	5cc3      	ldrb	r3, [r0, r3]
d05e04f8:	f003 0303 	and.w	r3, r3, #3
d05e04fc:	2b01      	cmp	r3, #1
d05e04fe:	bf08      	it	eq
d05e0500:	3020      	addeq	r0, #32
d05e0502:	4770      	bx	lr
d05e0504:	d05e06bf 	.word	0xd05e06bf
d05e0508:	0000002f 	.word	0x0000002f
d05e050c:	00000000 	.word	0x00000000
d05e0510:	00007365 	.word	0x00007365
d05e0514:	0000003f 	.word	0x0000003f
d05e0518:	67617355 	.word	0x67617355
d05e051c:	66203a65 	.word	0x66203a65
d05e0520:	20646e69 	.word	0x20646e69
d05e0524:	7461703c 	.word	0x7461703c
d05e0528:	6e726574 	.word	0x6e726574
d05e052c:	2d5b203e 	.word	0x2d5b203e
d05e0530:	5b205d77 	.word	0x5b205d77
d05e0534:	72617473 	.word	0x72617473
d05e0538:	72696474 	.word	0x72696474
d05e053c:	200a0d5d 	.word	0x200a0d5d
d05e0540:	70202d20 	.word	0x70202d20
d05e0544:	65747461 	.word	0x65747461
d05e0548:	203a6e72 	.word	0x203a6e72
d05e054c:	656c6966 	.word	0x656c6966
d05e0550:	656d616e 	.word	0x656d616e
d05e0554:	20726f20 	.word	0x20726f20
d05e0558:	646c6977 	.word	0x646c6977
d05e055c:	64726163 	.word	0x64726163
d05e0560:	74617020 	.word	0x74617020
d05e0564:	6e726574 	.word	0x6e726574
d05e0568:	73752820 	.word	0x73752820
d05e056c:	202a2065 	.word	0x202a2065
d05e0570:	20726f66 	.word	0x20726f66
d05e0574:	646c6977 	.word	0x646c6977
d05e0578:	64726163 	.word	0x64726163
d05e057c:	0a0d2973 	.word	0x0a0d2973
d05e0580:	202d2020 	.word	0x202d2020
d05e0584:	203a772d 	.word	0x203a772d
d05e0588:	62616e65 	.word	0x62616e65
d05e058c:	7720656c 	.word	0x7720656c
d05e0590:	63646c69 	.word	0x63646c69
d05e0594:	20647261 	.word	0x20647261
d05e0598:	6374616d 	.word	0x6374616d
d05e059c:	676e6968 	.word	0x676e6968
d05e05a0:	61632820 	.word	0x61632820
d05e05a4:	692d6573 	.word	0x692d6573
d05e05a8:	6e65736e 	.word	0x6e65736e
d05e05ac:	69746973 	.word	0x69746973
d05e05b0:	0d296576 	.word	0x0d296576
d05e05b4:	2d20200a 	.word	0x2d20200a
d05e05b8:	61747320 	.word	0x61747320
d05e05bc:	69647472 	.word	0x69647472
d05e05c0:	6f203a72 	.word	0x6f203a72
d05e05c4:	6f697470 	.word	0x6f697470
d05e05c8:	206c616e 	.word	0x206c616e
d05e05cc:	72617473 	.word	0x72617473
d05e05d0:	676e6974 	.word	0x676e6974
d05e05d4:	72696420 	.word	0x72696420
d05e05d8:	6f746365 	.word	0x6f746365
d05e05dc:	28207972 	.word	0x28207972
d05e05e0:	61666564 	.word	0x61666564
d05e05e4:	20746c75 	.word	0x20746c75
d05e05e8:	72727563 	.word	0x72727563
d05e05ec:	20746e65 	.word	0x20746e65
d05e05f0:	29726964 	.word	0x29726964
d05e05f4:	78450a0d 	.word	0x78450a0d
d05e05f8:	6c706d61 	.word	0x6c706d61
d05e05fc:	0d3a7365 	.word	0x0d3a7365
d05e0600:	6620200a 	.word	0x6620200a
d05e0604:	20646e69 	.word	0x20646e69
d05e0608:	696e6f73 	.word	0x696e6f73
d05e060c:	772d2063 	.word	0x772d2063
d05e0610:	756d2f20 	.word	0x756d2f20
d05e0614:	0d636973 	.word	0x0d636973
d05e0618:	6620200a 	.word	0x6620200a
d05e061c:	20646e69 	.word	0x20646e69
d05e0620:	656c6966 	.word	0x656c6966
d05e0624:	7478742e 	.word	0x7478742e
d05e0628:	20200a0d 	.word	0x20200a0d
d05e062c:	646e6966 	.word	0x646e6966
d05e0630:	20203f20 	.word	0x20203f20
d05e0634:	6f687328 	.word	0x6f687328
d05e0638:	68742077 	.word	0x68742077
d05e063c:	68207369 	.word	0x68207369
d05e0640:	29706c65 	.word	0x29706c65
d05e0644:	00000a0d 	.word	0x00000a0d
d05e0648:	72616553 	.word	0x72616553
d05e064c:	6e696863 	.word	0x6e696863
d05e0650:	6f662067 	.word	0x6f662067
d05e0654:	25203a72 	.word	0x25203a72
d05e0658:	000a0d73 	.word	0x000a0d73
d05e065c:	6e6e6143 	.word	0x6e6e6143
d05e0660:	6f20746f 	.word	0x6f20746f
d05e0664:	206e6570 	.word	0x206e6570
d05e0668:	65726964 	.word	0x65726964
d05e066c:	726f7463 	.word	0x726f7463
d05e0670:	25203a79 	.word	0x25203a79
d05e0674:	000a0d73 	.word	0x000a0d73
d05e0678:	0000002e 	.word	0x0000002e
d05e067c:	00002e2e 	.word	0x00002e2e
d05e0680:	6374614d 	.word	0x6374614d
d05e0684:	25203a68 	.word	0x25203a68
d05e0688:	000a0d73 	.word	0x000a0d73
d05e068c:	72616553 	.word	0x72616553
d05e0690:	63206863 	.word	0x63206863
d05e0694:	6c706d6f 	.word	0x6c706d6f
d05e0698:	20657465 	.word	0x20657465
d05e069c:	6425202d 	.word	0x6425202d
d05e06a0:	74616d20 	.word	0x74616d20
d05e06a4:	73256863 	.word	0x73256863
d05e06a8:	00000a0d 	.word	0x00000a0d
d05e06ac:	72727543 	.word	0x72727543
d05e06b0:	20746e65 	.word	0x20746e65
d05e06b4:	3a726964 	.word	0x3a726964
d05e06b8:	0d732520 	.word	0x0d732520
d05e06bc:	000a      	.short	0x000a

d05e06be <_ctype_>:
d05e06be:	2000 2020 2020 2020 2020 2828 2828 2028     .         ((((( 
d05e06ce:	2020 2020 2020 2020 2020 2020 2020 2020                     
d05e06de:	8820 1010 1010 1010 1010 1010 1010 1010      ...............
d05e06ee:	0410 0404 0404 0404 0404 1004 1010 1010     ................
d05e06fe:	1010 4141 4141 4141 0101 0101 0101 0101     ..AAAAAA........
d05e070e:	0101 0101 0101 0101 0101 0101 1010 1010     ................
d05e071e:	1010 4242 4242 4242 0202 0202 0202 0202     ..BBBBBB........
d05e072e:	0202 0202 0202 0202 0202 0202 1010 1010     ................
d05e073e:	0020 0000 0000 0000 0000 0000 0000 0000      ...............
	...

Disassembly of section .init:

d05e07c0 <_init>:
d05e07c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e07c2:	bf00      	nop

Disassembly of section .fini:

d05e07c4 <_fini>:
d05e07c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e07c6:	bf00      	nop
