
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d05e0010 <applet_entry>:
d05e0010:	f000 b8a6 	b.w	d05e0160 <main>

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
d05e0038:	d05e0ea0 	.word	0xd05e0ea0
d05e003c:	d05e0ec5 	.word	0xd05e0ec5

d05e0040 <rmdir_iterative>:
d05e0040:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d05e0044:	f5ad 4d83 	sub.w	sp, sp, #16768	; 0x4180
d05e0048:	f04f 0800 	mov.w	r8, #0
d05e004c:	2601      	movs	r6, #1
d05e004e:	4c3e      	ldr	r4, [pc, #248]	; (d05e0148 <rmdir_iterative+0x108>)
d05e0050:	b089      	sub	sp, #36	; 0x24
d05e0052:	4601      	mov	r1, r0
d05e0054:	22ff      	movs	r2, #255	; 0xff
d05e0056:	a868      	add	r0, sp, #416	; 0x1a0
d05e0058:	f000 f982 	bl	d05e0360 <strncpy>
d05e005c:	1e73      	subs	r3, r6, #1
d05e005e:	aa68      	add	r2, sp, #416	; 0x1a0
d05e0060:	eb02 2303 	add.w	r3, r2, r3, lsl #8
d05e0064:	461d      	mov	r5, r3
d05e0066:	2000      	movs	r0, #0
d05e0068:	2e00      	cmp	r6, #0
d05e006a:	d066      	beq.n	d05e013a <rmdir_iterative+0xfa>
d05e006c:	6f23      	ldr	r3, [r4, #112]	; 0x70
d05e006e:	4629      	mov	r1, r5
d05e0070:	4798      	blx	r3
d05e0072:	3e01      	subs	r6, #1
d05e0074:	f5a5 7380 	sub.w	r3, r5, #256	; 0x100
d05e0078:	2800      	cmp	r0, #0
d05e007a:	d1f3      	bne.n	d05e0064 <rmdir_iterative+0x24>
d05e007c:	4f33      	ldr	r7, [pc, #204]	; (d05e014c <rmdir_iterative+0x10c>)
d05e007e:	2100      	movs	r1, #0
d05e0080:	2298      	movs	r2, #152	; 0x98
d05e0082:	a802      	add	r0, sp, #8
d05e0084:	f7ff ffc6 	bl	d05e0014 <memset>
d05e0088:	6fa3      	ldr	r3, [r4, #120]	; 0x78
d05e008a:	a902      	add	r1, sp, #8
d05e008c:	2000      	movs	r0, #0
d05e008e:	4798      	blx	r3
d05e0090:	2800      	cmp	r0, #0
d05e0092:	d135      	bne.n	d05e0100 <rmdir_iterative+0xc0>
d05e0094:	f89d 301e 	ldrb.w	r3, [sp, #30]
d05e0098:	2b00      	cmp	r3, #0
d05e009a:	d031      	beq.n	d05e0100 <rmdir_iterative+0xc0>
d05e009c:	f8bd 301e 	ldrh.w	r3, [sp, #30]
d05e00a0:	f10d 011e 	add.w	r1, sp, #30
d05e00a4:	2b2e      	cmp	r3, #46	; 0x2e
d05e00a6:	d0ea      	beq.n	d05e007e <rmdir_iterative+0x3e>
d05e00a8:	f642 622e 	movw	r2, #11822	; 0x2e2e
d05e00ac:	4293      	cmp	r3, r2
d05e00ae:	d014      	beq.n	d05e00da <rmdir_iterative+0x9a>
d05e00b0:	f10d 011e 	add.w	r1, sp, #30
d05e00b4:	462b      	mov	r3, r5
d05e00b6:	463a      	mov	r2, r7
d05e00b8:	a828      	add	r0, sp, #160	; 0xa0
d05e00ba:	9100      	str	r1, [sp, #0]
d05e00bc:	f44f 7180 	mov.w	r1, #256	; 0x100
d05e00c0:	f000 f91a 	bl	d05e02f8 <sniprintf>
d05e00c4:	f89d 3010 	ldrb.w	r3, [sp, #16]
d05e00c8:	06db      	lsls	r3, r3, #27
d05e00ca:	d50a      	bpl.n	d05e00e2 <rmdir_iterative+0xa2>
d05e00cc:	2e3f      	cmp	r6, #63	; 0x3f
d05e00ce:	dd29      	ble.n	d05e0124 <rmdir_iterative+0xe4>
d05e00d0:	a928      	add	r1, sp, #160	; 0xa0
d05e00d2:	68a3      	ldr	r3, [r4, #8]
d05e00d4:	481e      	ldr	r0, [pc, #120]	; (d05e0150 <rmdir_iterative+0x110>)
d05e00d6:	4798      	blx	r3
d05e00d8:	e7d1      	b.n	d05e007e <rmdir_iterative+0x3e>
d05e00da:	788b      	ldrb	r3, [r1, #2]
d05e00dc:	2b00      	cmp	r3, #0
d05e00de:	d0ce      	beq.n	d05e007e <rmdir_iterative+0x3e>
d05e00e0:	e7e6      	b.n	d05e00b0 <rmdir_iterative+0x70>
d05e00e2:	a828      	add	r0, sp, #160	; 0xa0
d05e00e4:	f8d4 3080 	ldr.w	r3, [r4, #128]	; 0x80
d05e00e8:	4798      	blx	r3
d05e00ea:	2800      	cmp	r0, #0
d05e00ec:	d1c7      	bne.n	d05e007e <rmdir_iterative+0x3e>
d05e00ee:	4a19      	ldr	r2, [pc, #100]	; (d05e0154 <rmdir_iterative+0x114>)
d05e00f0:	f108 0801 	add.w	r8, r8, #1
d05e00f4:	4918      	ldr	r1, [pc, #96]	; (d05e0158 <rmdir_iterative+0x118>)
d05e00f6:	6813      	ldr	r3, [r2, #0]
d05e00f8:	3301      	adds	r3, #1
d05e00fa:	6013      	str	r3, [r2, #0]
d05e00fc:	6008      	str	r0, [r1, #0]
d05e00fe:	e7be      	b.n	d05e007e <rmdir_iterative+0x3e>
d05e0100:	6f63      	ldr	r3, [r4, #116]	; 0x74
d05e0102:	2000      	movs	r0, #0
d05e0104:	4798      	blx	r3
d05e0106:	4628      	mov	r0, r5
d05e0108:	f8d4 3080 	ldr.w	r3, [r4, #128]	; 0x80
d05e010c:	4798      	blx	r3
d05e010e:	2800      	cmp	r0, #0
d05e0110:	d1a4      	bne.n	d05e005c <rmdir_iterative+0x1c>
d05e0112:	4a12      	ldr	r2, [pc, #72]	; (d05e015c <rmdir_iterative+0x11c>)
d05e0114:	f108 0801 	add.w	r8, r8, #1
d05e0118:	490f      	ldr	r1, [pc, #60]	; (d05e0158 <rmdir_iterative+0x118>)
d05e011a:	6813      	ldr	r3, [r2, #0]
d05e011c:	3301      	adds	r3, #1
d05e011e:	6013      	str	r3, [r2, #0]
d05e0120:	6008      	str	r0, [r1, #0]
d05e0122:	e79b      	b.n	d05e005c <rmdir_iterative+0x1c>
d05e0124:	ab68      	add	r3, sp, #416	; 0x1a0
d05e0126:	f106 0901 	add.w	r9, r6, #1
d05e012a:	a928      	add	r1, sp, #160	; 0xa0
d05e012c:	22ff      	movs	r2, #255	; 0xff
d05e012e:	eb03 2006 	add.w	r0, r3, r6, lsl #8
d05e0132:	464e      	mov	r6, r9
d05e0134:	f000 f914 	bl	d05e0360 <strncpy>
d05e0138:	e7a1      	b.n	d05e007e <rmdir_iterative+0x3e>
d05e013a:	4640      	mov	r0, r8
d05e013c:	f50d 4d83 	add.w	sp, sp, #16768	; 0x4180
d05e0140:	b009      	add	sp, #36	; 0x24
d05e0142:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d05e0146:	bf00      	nop
d05e0148:	2001f000 	.word	0x2001f000
d05e014c:	d05e0c54 	.word	0xd05e0c54
d05e0150:	d05e0c5c 	.word	0xd05e0c5c
d05e0154:	d05e0eb4 	.word	0xd05e0eb4
d05e0158:	d05e0ea4 	.word	0xd05e0ea4
d05e015c:	d05e0eb0 	.word	0xd05e0eb0

d05e0160 <main>:
d05e0160:	4a56      	ldr	r2, [pc, #344]	; (d05e02bc <main+0x15c>)
d05e0162:	2801      	cmp	r0, #1
d05e0164:	6813      	ldr	r3, [r2, #0]
d05e0166:	f023 0310 	bic.w	r3, r3, #16
d05e016a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05e016e:	6013      	str	r3, [r2, #0]
d05e0170:	b0cd      	sub	sp, #308	; 0x134
d05e0172:	dd66      	ble.n	d05e0242 <main+0xe2>
d05e0174:	684e      	ldr	r6, [r1, #4]
d05e0176:	7833      	ldrb	r3, [r6, #0]
d05e0178:	2b3f      	cmp	r3, #63	; 0x3f
d05e017a:	d05f      	beq.n	d05e023c <main+0xdc>
d05e017c:	2700      	movs	r7, #0
d05e017e:	4c50      	ldr	r4, [pc, #320]	; (d05e02c0 <main+0x160>)
d05e0180:	4d50      	ldr	r5, [pc, #320]	; (d05e02c4 <main+0x164>)
d05e0182:	2802      	cmp	r0, #2
d05e0184:	6027      	str	r7, [r4, #0]
d05e0186:	602f      	str	r7, [r5, #0]
d05e0188:	f000 8087 	beq.w	d05e029a <main+0x13a>
d05e018c:	1f0b      	subs	r3, r1, #4
d05e018e:	46b8      	mov	r8, r7
d05e0190:	3104      	adds	r1, #4
d05e0192:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d05e0196:	f851 3f04 	ldr.w	r3, [r1, #4]!
d05e019a:	781a      	ldrb	r2, [r3, #0]
d05e019c:	2a2d      	cmp	r2, #45	; 0x2d
d05e019e:	d10d      	bne.n	d05e01bc <main+0x5c>
d05e01a0:	f893 c001 	ldrb.w	ip, [r3, #1]
d05e01a4:	f1bc 0f72 	cmp.w	ip, #114	; 0x72
d05e01a8:	d05a      	beq.n	d05e0260 <main+0x100>
d05e01aa:	2a2d      	cmp	r2, #45	; 0x2d
d05e01ac:	d106      	bne.n	d05e01bc <main+0x5c>
d05e01ae:	785a      	ldrb	r2, [r3, #1]
d05e01b0:	2a66      	cmp	r2, #102	; 0x66
d05e01b2:	d103      	bne.n	d05e01bc <main+0x5c>
d05e01b4:	789b      	ldrb	r3, [r3, #2]
d05e01b6:	b90b      	cbnz	r3, d05e01bc <main+0x5c>
d05e01b8:	2701      	movs	r7, #1
d05e01ba:	46b8      	mov	r8, r7
d05e01bc:	4281      	cmp	r1, r0
d05e01be:	d1ea      	bne.n	d05e0196 <main+0x36>
d05e01c0:	f8df b104 	ldr.w	fp, [pc, #260]	; d05e02c8 <main+0x168>
d05e01c4:	4630      	mov	r0, r6
d05e01c6:	4669      	mov	r1, sp
d05e01c8:	f8db 3088 	ldr.w	r3, [fp, #136]	; 0x88
d05e01cc:	4798      	blx	r3
d05e01ce:	2800      	cmp	r0, #0
d05e01d0:	d150      	bne.n	d05e0274 <main+0x114>
d05e01d2:	f89d 3008 	ldrb.w	r3, [sp, #8]
d05e01d6:	06da      	lsls	r2, r3, #27
d05e01d8:	d54c      	bpl.n	d05e0274 <main+0x114>
d05e01da:	2f00      	cmp	r7, #0
d05e01dc:	d051      	beq.n	d05e0282 <main+0x122>
d05e01de:	f8df a114 	ldr.w	sl, [pc, #276]	; d05e02f4 <main+0x194>
d05e01e2:	e00a      	b.n	d05e01fa <main+0x9a>
d05e01e4:	f89d 30a0 	ldrb.w	r3, [sp, #160]	; 0xa0
d05e01e8:	06db      	lsls	r3, r3, #27
d05e01ea:	d518      	bpl.n	d05e021e <main+0xbe>
d05e01ec:	f1b9 0f00 	cmp.w	r9, #0
d05e01f0:	d058      	beq.n	d05e02a4 <main+0x144>
d05e01f2:	f8da 3000 	ldr.w	r3, [sl]
d05e01f6:	2b0f      	cmp	r3, #15
d05e01f8:	dc2e      	bgt.n	d05e0258 <main+0xf8>
d05e01fa:	4641      	mov	r1, r8
d05e01fc:	4630      	mov	r0, r6
d05e01fe:	f7ff ff1f 	bl	d05e0040 <rmdir_iterative>
d05e0202:	f8da 3000 	ldr.w	r3, [sl]
d05e0206:	4681      	mov	r9, r0
d05e0208:	a926      	add	r1, sp, #152	; 0x98
d05e020a:	3301      	adds	r3, #1
d05e020c:	4630      	mov	r0, r6
d05e020e:	f8ca 3000 	str.w	r3, [sl]
d05e0212:	f8db 3088 	ldr.w	r3, [fp, #136]	; 0x88
d05e0216:	4798      	blx	r3
d05e0218:	4607      	mov	r7, r0
d05e021a:	2800      	cmp	r0, #0
d05e021c:	d0e2      	beq.n	d05e01e4 <main+0x84>
d05e021e:	4f2a      	ldr	r7, [pc, #168]	; (d05e02c8 <main+0x168>)
d05e0220:	482a      	ldr	r0, [pc, #168]	; (d05e02cc <main+0x16c>)
d05e0222:	68bb      	ldr	r3, [r7, #8]
d05e0224:	6829      	ldr	r1, [r5, #0]
d05e0226:	6822      	ldr	r2, [r4, #0]
d05e0228:	4798      	blx	r3
d05e022a:	68bb      	ldr	r3, [r7, #8]
d05e022c:	4631      	mov	r1, r6
d05e022e:	4828      	ldr	r0, [pc, #160]	; (d05e02d0 <main+0x170>)
d05e0230:	4798      	blx	r3
d05e0232:	23ff      	movs	r3, #255	; 0xff
d05e0234:	f8ca 3000 	str.w	r3, [sl]
d05e0238:	2700      	movs	r7, #0
d05e023a:	e00d      	b.n	d05e0258 <main+0xf8>
d05e023c:	7873      	ldrb	r3, [r6, #1]
d05e023e:	2b00      	cmp	r3, #0
d05e0240:	d19c      	bne.n	d05e017c <main+0x1c>
d05e0242:	4c21      	ldr	r4, [pc, #132]	; (d05e02c8 <main+0x168>)
d05e0244:	2701      	movs	r7, #1
d05e0246:	4823      	ldr	r0, [pc, #140]	; (d05e02d4 <main+0x174>)
d05e0248:	68a3      	ldr	r3, [r4, #8]
d05e024a:	4798      	blx	r3
d05e024c:	68a3      	ldr	r3, [r4, #8]
d05e024e:	4822      	ldr	r0, [pc, #136]	; (d05e02d8 <main+0x178>)
d05e0250:	4798      	blx	r3
d05e0252:	68a3      	ldr	r3, [r4, #8]
d05e0254:	4821      	ldr	r0, [pc, #132]	; (d05e02dc <main+0x17c>)
d05e0256:	4798      	blx	r3
d05e0258:	4638      	mov	r0, r7
d05e025a:	b04d      	add	sp, #308	; 0x134
d05e025c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e0260:	f893 c002 	ldrb.w	ip, [r3, #2]
d05e0264:	f1bc 0f00 	cmp.w	ip, #0
d05e0268:	d19f      	bne.n	d05e01aa <main+0x4a>
d05e026a:	4281      	cmp	r1, r0
d05e026c:	f04f 0701 	mov.w	r7, #1
d05e0270:	d191      	bne.n	d05e0196 <main+0x36>
d05e0272:	e7a5      	b.n	d05e01c0 <main+0x60>
d05e0274:	4b14      	ldr	r3, [pc, #80]	; (d05e02c8 <main+0x168>)
d05e0276:	4631      	mov	r1, r6
d05e0278:	4819      	ldr	r0, [pc, #100]	; (d05e02e0 <main+0x180>)
d05e027a:	2701      	movs	r7, #1
d05e027c:	689b      	ldr	r3, [r3, #8]
d05e027e:	4798      	blx	r3
d05e0280:	e7ea      	b.n	d05e0258 <main+0xf8>
d05e0282:	f8db 3080 	ldr.w	r3, [fp, #128]	; 0x80
d05e0286:	4630      	mov	r0, r6
d05e0288:	4798      	blx	r3
d05e028a:	f8db 3008 	ldr.w	r3, [fp, #8]
d05e028e:	4631      	mov	r1, r6
d05e0290:	b128      	cbz	r0, d05e029e <main+0x13e>
d05e0292:	4814      	ldr	r0, [pc, #80]	; (d05e02e4 <main+0x184>)
d05e0294:	2701      	movs	r7, #1
d05e0296:	4798      	blx	r3
d05e0298:	e7de      	b.n	d05e0258 <main+0xf8>
d05e029a:	46b8      	mov	r8, r7
d05e029c:	e790      	b.n	d05e01c0 <main+0x60>
d05e029e:	4812      	ldr	r0, [pc, #72]	; (d05e02e8 <main+0x188>)
d05e02a0:	4798      	blx	r3
d05e02a2:	e7d9      	b.n	d05e0258 <main+0xf8>
d05e02a4:	f8db 3008 	ldr.w	r3, [fp, #8]
d05e02a8:	4810      	ldr	r0, [pc, #64]	; (d05e02ec <main+0x18c>)
d05e02aa:	4798      	blx	r3
d05e02ac:	f8db 3008 	ldr.w	r3, [fp, #8]
d05e02b0:	480f      	ldr	r0, [pc, #60]	; (d05e02f0 <main+0x190>)
d05e02b2:	4798      	blx	r3
d05e02b4:	23ff      	movs	r3, #255	; 0xff
d05e02b6:	f8ca 3000 	str.w	r3, [sl]
d05e02ba:	e7bd      	b.n	d05e0238 <main+0xd8>
d05e02bc:	e000ed14 	.word	0xe000ed14
d05e02c0:	d05e0eb0 	.word	0xd05e0eb0
d05e02c4:	d05e0eb4 	.word	0xd05e0eb4
d05e02c8:	2001f000 	.word	0x2001f000
d05e02cc:	d05e0d6c 	.word	0xd05e0d6c
d05e02d0:	d05e0d8c 	.word	0xd05e0d8c
d05e02d4:	d05e0c74 	.word	0xd05e0c74
d05e02d8:	d05e0c98 	.word	0xd05e0c98
d05e02dc:	d05e0cd4 	.word	0xd05e0cd4
d05e02e0:	d05e0d10 	.word	0xd05e0d10
d05e02e4:	d05e0d2c 	.word	0xd05e0d2c
d05e02e8:	d05e0d58 	.word	0xd05e0d58
d05e02ec:	d05e0db0 	.word	0xd05e0db0
d05e02f0:	d05e0dd0 	.word	0xd05e0dd0
d05e02f4:	d05e0ea4 	.word	0xd05e0ea4

d05e02f8 <sniprintf>:
d05e02f8:	b40c      	push	{r2, r3}
d05e02fa:	b530      	push	{r4, r5, lr}
d05e02fc:	4b17      	ldr	r3, [pc, #92]	; (d05e035c <sniprintf+0x64>)
d05e02fe:	1e0c      	subs	r4, r1, #0
d05e0300:	681d      	ldr	r5, [r3, #0]
d05e0302:	b09d      	sub	sp, #116	; 0x74
d05e0304:	da08      	bge.n	d05e0318 <sniprintf+0x20>
d05e0306:	238b      	movs	r3, #139	; 0x8b
d05e0308:	602b      	str	r3, [r5, #0]
d05e030a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e030e:	b01d      	add	sp, #116	; 0x74
d05e0310:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05e0314:	b002      	add	sp, #8
d05e0316:	4770      	bx	lr
d05e0318:	f44f 7302 	mov.w	r3, #520	; 0x208
d05e031c:	f8ad 3014 	strh.w	r3, [sp, #20]
d05e0320:	bf14      	ite	ne
d05e0322:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d05e0326:	4623      	moveq	r3, r4
d05e0328:	9304      	str	r3, [sp, #16]
d05e032a:	9307      	str	r3, [sp, #28]
d05e032c:	f64f 73ff 	movw	r3, #65535	; 0xffff
d05e0330:	9002      	str	r0, [sp, #8]
d05e0332:	9006      	str	r0, [sp, #24]
d05e0334:	f8ad 3016 	strh.w	r3, [sp, #22]
d05e0338:	9a20      	ldr	r2, [sp, #128]	; 0x80
d05e033a:	ab21      	add	r3, sp, #132	; 0x84
d05e033c:	a902      	add	r1, sp, #8
d05e033e:	4628      	mov	r0, r5
d05e0340:	9301      	str	r3, [sp, #4]
d05e0342:	f000 f87b 	bl	d05e043c <_svfiprintf_r>
d05e0346:	1c43      	adds	r3, r0, #1
d05e0348:	bfbc      	itt	lt
d05e034a:	238b      	movlt	r3, #139	; 0x8b
d05e034c:	602b      	strlt	r3, [r5, #0]
d05e034e:	2c00      	cmp	r4, #0
d05e0350:	d0dd      	beq.n	d05e030e <sniprintf+0x16>
d05e0352:	9b02      	ldr	r3, [sp, #8]
d05e0354:	2200      	movs	r2, #0
d05e0356:	701a      	strb	r2, [r3, #0]
d05e0358:	e7d9      	b.n	d05e030e <sniprintf+0x16>
d05e035a:	bf00      	nop
d05e035c:	d05e0e3c 	.word	0xd05e0e3c

d05e0360 <strncpy>:
d05e0360:	b510      	push	{r4, lr}
d05e0362:	3901      	subs	r1, #1
d05e0364:	4603      	mov	r3, r0
d05e0366:	b132      	cbz	r2, d05e0376 <strncpy+0x16>
d05e0368:	f811 4f01 	ldrb.w	r4, [r1, #1]!
d05e036c:	f803 4b01 	strb.w	r4, [r3], #1
d05e0370:	3a01      	subs	r2, #1
d05e0372:	2c00      	cmp	r4, #0
d05e0374:	d1f7      	bne.n	d05e0366 <strncpy+0x6>
d05e0376:	441a      	add	r2, r3
d05e0378:	2100      	movs	r1, #0
d05e037a:	4293      	cmp	r3, r2
d05e037c:	d100      	bne.n	d05e0380 <strncpy+0x20>
d05e037e:	bd10      	pop	{r4, pc}
d05e0380:	f803 1b01 	strb.w	r1, [r3], #1
d05e0384:	e7f9      	b.n	d05e037a <strncpy+0x1a>

d05e0386 <__ssputs_r>:
d05e0386:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05e038a:	688e      	ldr	r6, [r1, #8]
d05e038c:	429e      	cmp	r6, r3
d05e038e:	4682      	mov	sl, r0
d05e0390:	460c      	mov	r4, r1
d05e0392:	4690      	mov	r8, r2
d05e0394:	461f      	mov	r7, r3
d05e0396:	d838      	bhi.n	d05e040a <__ssputs_r+0x84>
d05e0398:	898a      	ldrh	r2, [r1, #12]
d05e039a:	f412 6f90 	tst.w	r2, #1152	; 0x480
d05e039e:	d032      	beq.n	d05e0406 <__ssputs_r+0x80>
d05e03a0:	6825      	ldr	r5, [r4, #0]
d05e03a2:	6909      	ldr	r1, [r1, #16]
d05e03a4:	eba5 0901 	sub.w	r9, r5, r1
d05e03a8:	6965      	ldr	r5, [r4, #20]
d05e03aa:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05e03ae:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d05e03b2:	3301      	adds	r3, #1
d05e03b4:	444b      	add	r3, r9
d05e03b6:	106d      	asrs	r5, r5, #1
d05e03b8:	429d      	cmp	r5, r3
d05e03ba:	bf38      	it	cc
d05e03bc:	461d      	movcc	r5, r3
d05e03be:	0553      	lsls	r3, r2, #21
d05e03c0:	d531      	bpl.n	d05e0426 <__ssputs_r+0xa0>
d05e03c2:	4629      	mov	r1, r5
d05e03c4:	f000 fb9c 	bl	d05e0b00 <_malloc_r>
d05e03c8:	4606      	mov	r6, r0
d05e03ca:	b950      	cbnz	r0, d05e03e2 <__ssputs_r+0x5c>
d05e03cc:	230c      	movs	r3, #12
d05e03ce:	f8ca 3000 	str.w	r3, [sl]
d05e03d2:	89a3      	ldrh	r3, [r4, #12]
d05e03d4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05e03d8:	81a3      	strh	r3, [r4, #12]
d05e03da:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e03de:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e03e2:	6921      	ldr	r1, [r4, #16]
d05e03e4:	464a      	mov	r2, r9
d05e03e6:	f000 fb13 	bl	d05e0a10 <memcpy>
d05e03ea:	89a3      	ldrh	r3, [r4, #12]
d05e03ec:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d05e03f0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05e03f4:	81a3      	strh	r3, [r4, #12]
d05e03f6:	6126      	str	r6, [r4, #16]
d05e03f8:	6165      	str	r5, [r4, #20]
d05e03fa:	444e      	add	r6, r9
d05e03fc:	eba5 0509 	sub.w	r5, r5, r9
d05e0400:	6026      	str	r6, [r4, #0]
d05e0402:	60a5      	str	r5, [r4, #8]
d05e0404:	463e      	mov	r6, r7
d05e0406:	42be      	cmp	r6, r7
d05e0408:	d900      	bls.n	d05e040c <__ssputs_r+0x86>
d05e040a:	463e      	mov	r6, r7
d05e040c:	4632      	mov	r2, r6
d05e040e:	6820      	ldr	r0, [r4, #0]
d05e0410:	4641      	mov	r1, r8
d05e0412:	f000 fb0b 	bl	d05e0a2c <memmove>
d05e0416:	68a3      	ldr	r3, [r4, #8]
d05e0418:	6822      	ldr	r2, [r4, #0]
d05e041a:	1b9b      	subs	r3, r3, r6
d05e041c:	4432      	add	r2, r6
d05e041e:	60a3      	str	r3, [r4, #8]
d05e0420:	6022      	str	r2, [r4, #0]
d05e0422:	2000      	movs	r0, #0
d05e0424:	e7db      	b.n	d05e03de <__ssputs_r+0x58>
d05e0426:	462a      	mov	r2, r5
d05e0428:	f000 fbc4 	bl	d05e0bb4 <_realloc_r>
d05e042c:	4606      	mov	r6, r0
d05e042e:	2800      	cmp	r0, #0
d05e0430:	d1e1      	bne.n	d05e03f6 <__ssputs_r+0x70>
d05e0432:	6921      	ldr	r1, [r4, #16]
d05e0434:	4650      	mov	r0, sl
d05e0436:	f000 fb13 	bl	d05e0a60 <_free_r>
d05e043a:	e7c7      	b.n	d05e03cc <__ssputs_r+0x46>

d05e043c <_svfiprintf_r>:
d05e043c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05e0440:	4698      	mov	r8, r3
d05e0442:	898b      	ldrh	r3, [r1, #12]
d05e0444:	061b      	lsls	r3, r3, #24
d05e0446:	b09d      	sub	sp, #116	; 0x74
d05e0448:	4607      	mov	r7, r0
d05e044a:	460d      	mov	r5, r1
d05e044c:	4614      	mov	r4, r2
d05e044e:	d50e      	bpl.n	d05e046e <_svfiprintf_r+0x32>
d05e0450:	690b      	ldr	r3, [r1, #16]
d05e0452:	b963      	cbnz	r3, d05e046e <_svfiprintf_r+0x32>
d05e0454:	2140      	movs	r1, #64	; 0x40
d05e0456:	f000 fb53 	bl	d05e0b00 <_malloc_r>
d05e045a:	6028      	str	r0, [r5, #0]
d05e045c:	6128      	str	r0, [r5, #16]
d05e045e:	b920      	cbnz	r0, d05e046a <_svfiprintf_r+0x2e>
d05e0460:	230c      	movs	r3, #12
d05e0462:	603b      	str	r3, [r7, #0]
d05e0464:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e0468:	e0d1      	b.n	d05e060e <_svfiprintf_r+0x1d2>
d05e046a:	2340      	movs	r3, #64	; 0x40
d05e046c:	616b      	str	r3, [r5, #20]
d05e046e:	2300      	movs	r3, #0
d05e0470:	9309      	str	r3, [sp, #36]	; 0x24
d05e0472:	2320      	movs	r3, #32
d05e0474:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d05e0478:	f8cd 800c 	str.w	r8, [sp, #12]
d05e047c:	2330      	movs	r3, #48	; 0x30
d05e047e:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d05e0628 <_svfiprintf_r+0x1ec>
d05e0482:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d05e0486:	f04f 0901 	mov.w	r9, #1
d05e048a:	4623      	mov	r3, r4
d05e048c:	469a      	mov	sl, r3
d05e048e:	f813 2b01 	ldrb.w	r2, [r3], #1
d05e0492:	b10a      	cbz	r2, d05e0498 <_svfiprintf_r+0x5c>
d05e0494:	2a25      	cmp	r2, #37	; 0x25
d05e0496:	d1f9      	bne.n	d05e048c <_svfiprintf_r+0x50>
d05e0498:	ebba 0b04 	subs.w	fp, sl, r4
d05e049c:	d00b      	beq.n	d05e04b6 <_svfiprintf_r+0x7a>
d05e049e:	465b      	mov	r3, fp
d05e04a0:	4622      	mov	r2, r4
d05e04a2:	4629      	mov	r1, r5
d05e04a4:	4638      	mov	r0, r7
d05e04a6:	f7ff ff6e 	bl	d05e0386 <__ssputs_r>
d05e04aa:	3001      	adds	r0, #1
d05e04ac:	f000 80aa 	beq.w	d05e0604 <_svfiprintf_r+0x1c8>
d05e04b0:	9a09      	ldr	r2, [sp, #36]	; 0x24
d05e04b2:	445a      	add	r2, fp
d05e04b4:	9209      	str	r2, [sp, #36]	; 0x24
d05e04b6:	f89a 3000 	ldrb.w	r3, [sl]
d05e04ba:	2b00      	cmp	r3, #0
d05e04bc:	f000 80a2 	beq.w	d05e0604 <_svfiprintf_r+0x1c8>
d05e04c0:	2300      	movs	r3, #0
d05e04c2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d05e04c6:	e9cd 2305 	strd	r2, r3, [sp, #20]
d05e04ca:	f10a 0a01 	add.w	sl, sl, #1
d05e04ce:	9304      	str	r3, [sp, #16]
d05e04d0:	9307      	str	r3, [sp, #28]
d05e04d2:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d05e04d6:	931a      	str	r3, [sp, #104]	; 0x68
d05e04d8:	4654      	mov	r4, sl
d05e04da:	2205      	movs	r2, #5
d05e04dc:	f814 1b01 	ldrb.w	r1, [r4], #1
d05e04e0:	4851      	ldr	r0, [pc, #324]	; (d05e0628 <_svfiprintf_r+0x1ec>)
d05e04e2:	f000 fa45 	bl	d05e0970 <memchr>
d05e04e6:	9a04      	ldr	r2, [sp, #16]
d05e04e8:	b9d8      	cbnz	r0, d05e0522 <_svfiprintf_r+0xe6>
d05e04ea:	06d0      	lsls	r0, r2, #27
d05e04ec:	bf44      	itt	mi
d05e04ee:	2320      	movmi	r3, #32
d05e04f0:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05e04f4:	0711      	lsls	r1, r2, #28
d05e04f6:	bf44      	itt	mi
d05e04f8:	232b      	movmi	r3, #43	; 0x2b
d05e04fa:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05e04fe:	f89a 3000 	ldrb.w	r3, [sl]
d05e0502:	2b2a      	cmp	r3, #42	; 0x2a
d05e0504:	d015      	beq.n	d05e0532 <_svfiprintf_r+0xf6>
d05e0506:	9a07      	ldr	r2, [sp, #28]
d05e0508:	4654      	mov	r4, sl
d05e050a:	2000      	movs	r0, #0
d05e050c:	f04f 0c0a 	mov.w	ip, #10
d05e0510:	4621      	mov	r1, r4
d05e0512:	f811 3b01 	ldrb.w	r3, [r1], #1
d05e0516:	3b30      	subs	r3, #48	; 0x30
d05e0518:	2b09      	cmp	r3, #9
d05e051a:	d94e      	bls.n	d05e05ba <_svfiprintf_r+0x17e>
d05e051c:	b1b0      	cbz	r0, d05e054c <_svfiprintf_r+0x110>
d05e051e:	9207      	str	r2, [sp, #28]
d05e0520:	e014      	b.n	d05e054c <_svfiprintf_r+0x110>
d05e0522:	eba0 0308 	sub.w	r3, r0, r8
d05e0526:	fa09 f303 	lsl.w	r3, r9, r3
d05e052a:	4313      	orrs	r3, r2
d05e052c:	9304      	str	r3, [sp, #16]
d05e052e:	46a2      	mov	sl, r4
d05e0530:	e7d2      	b.n	d05e04d8 <_svfiprintf_r+0x9c>
d05e0532:	9b03      	ldr	r3, [sp, #12]
d05e0534:	1d19      	adds	r1, r3, #4
d05e0536:	681b      	ldr	r3, [r3, #0]
d05e0538:	9103      	str	r1, [sp, #12]
d05e053a:	2b00      	cmp	r3, #0
d05e053c:	bfbb      	ittet	lt
d05e053e:	425b      	neglt	r3, r3
d05e0540:	f042 0202 	orrlt.w	r2, r2, #2
d05e0544:	9307      	strge	r3, [sp, #28]
d05e0546:	9307      	strlt	r3, [sp, #28]
d05e0548:	bfb8      	it	lt
d05e054a:	9204      	strlt	r2, [sp, #16]
d05e054c:	7823      	ldrb	r3, [r4, #0]
d05e054e:	2b2e      	cmp	r3, #46	; 0x2e
d05e0550:	d10c      	bne.n	d05e056c <_svfiprintf_r+0x130>
d05e0552:	7863      	ldrb	r3, [r4, #1]
d05e0554:	2b2a      	cmp	r3, #42	; 0x2a
d05e0556:	d135      	bne.n	d05e05c4 <_svfiprintf_r+0x188>
d05e0558:	9b03      	ldr	r3, [sp, #12]
d05e055a:	1d1a      	adds	r2, r3, #4
d05e055c:	681b      	ldr	r3, [r3, #0]
d05e055e:	9203      	str	r2, [sp, #12]
d05e0560:	2b00      	cmp	r3, #0
d05e0562:	bfb8      	it	lt
d05e0564:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d05e0568:	3402      	adds	r4, #2
d05e056a:	9305      	str	r3, [sp, #20]
d05e056c:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d05e0638 <_svfiprintf_r+0x1fc>
d05e0570:	7821      	ldrb	r1, [r4, #0]
d05e0572:	2203      	movs	r2, #3
d05e0574:	4650      	mov	r0, sl
d05e0576:	f000 f9fb 	bl	d05e0970 <memchr>
d05e057a:	b140      	cbz	r0, d05e058e <_svfiprintf_r+0x152>
d05e057c:	2340      	movs	r3, #64	; 0x40
d05e057e:	eba0 000a 	sub.w	r0, r0, sl
d05e0582:	fa03 f000 	lsl.w	r0, r3, r0
d05e0586:	9b04      	ldr	r3, [sp, #16]
d05e0588:	4303      	orrs	r3, r0
d05e058a:	3401      	adds	r4, #1
d05e058c:	9304      	str	r3, [sp, #16]
d05e058e:	f814 1b01 	ldrb.w	r1, [r4], #1
d05e0592:	4826      	ldr	r0, [pc, #152]	; (d05e062c <_svfiprintf_r+0x1f0>)
d05e0594:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d05e0598:	2206      	movs	r2, #6
d05e059a:	f000 f9e9 	bl	d05e0970 <memchr>
d05e059e:	2800      	cmp	r0, #0
d05e05a0:	d038      	beq.n	d05e0614 <_svfiprintf_r+0x1d8>
d05e05a2:	4b23      	ldr	r3, [pc, #140]	; (d05e0630 <_svfiprintf_r+0x1f4>)
d05e05a4:	bb1b      	cbnz	r3, d05e05ee <_svfiprintf_r+0x1b2>
d05e05a6:	9b03      	ldr	r3, [sp, #12]
d05e05a8:	3307      	adds	r3, #7
d05e05aa:	f023 0307 	bic.w	r3, r3, #7
d05e05ae:	3308      	adds	r3, #8
d05e05b0:	9303      	str	r3, [sp, #12]
d05e05b2:	9b09      	ldr	r3, [sp, #36]	; 0x24
d05e05b4:	4433      	add	r3, r6
d05e05b6:	9309      	str	r3, [sp, #36]	; 0x24
d05e05b8:	e767      	b.n	d05e048a <_svfiprintf_r+0x4e>
d05e05ba:	fb0c 3202 	mla	r2, ip, r2, r3
d05e05be:	460c      	mov	r4, r1
d05e05c0:	2001      	movs	r0, #1
d05e05c2:	e7a5      	b.n	d05e0510 <_svfiprintf_r+0xd4>
d05e05c4:	2300      	movs	r3, #0
d05e05c6:	3401      	adds	r4, #1
d05e05c8:	9305      	str	r3, [sp, #20]
d05e05ca:	4619      	mov	r1, r3
d05e05cc:	f04f 0c0a 	mov.w	ip, #10
d05e05d0:	4620      	mov	r0, r4
d05e05d2:	f810 2b01 	ldrb.w	r2, [r0], #1
d05e05d6:	3a30      	subs	r2, #48	; 0x30
d05e05d8:	2a09      	cmp	r2, #9
d05e05da:	d903      	bls.n	d05e05e4 <_svfiprintf_r+0x1a8>
d05e05dc:	2b00      	cmp	r3, #0
d05e05de:	d0c5      	beq.n	d05e056c <_svfiprintf_r+0x130>
d05e05e0:	9105      	str	r1, [sp, #20]
d05e05e2:	e7c3      	b.n	d05e056c <_svfiprintf_r+0x130>
d05e05e4:	fb0c 2101 	mla	r1, ip, r1, r2
d05e05e8:	4604      	mov	r4, r0
d05e05ea:	2301      	movs	r3, #1
d05e05ec:	e7f0      	b.n	d05e05d0 <_svfiprintf_r+0x194>
d05e05ee:	ab03      	add	r3, sp, #12
d05e05f0:	9300      	str	r3, [sp, #0]
d05e05f2:	462a      	mov	r2, r5
d05e05f4:	4b0f      	ldr	r3, [pc, #60]	; (d05e0634 <_svfiprintf_r+0x1f8>)
d05e05f6:	a904      	add	r1, sp, #16
d05e05f8:	4638      	mov	r0, r7
d05e05fa:	f3af 8000 	nop.w
d05e05fe:	1c42      	adds	r2, r0, #1
d05e0600:	4606      	mov	r6, r0
d05e0602:	d1d6      	bne.n	d05e05b2 <_svfiprintf_r+0x176>
d05e0604:	89ab      	ldrh	r3, [r5, #12]
d05e0606:	065b      	lsls	r3, r3, #25
d05e0608:	f53f af2c 	bmi.w	d05e0464 <_svfiprintf_r+0x28>
d05e060c:	9809      	ldr	r0, [sp, #36]	; 0x24
d05e060e:	b01d      	add	sp, #116	; 0x74
d05e0610:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e0614:	ab03      	add	r3, sp, #12
d05e0616:	9300      	str	r3, [sp, #0]
d05e0618:	462a      	mov	r2, r5
d05e061a:	4b06      	ldr	r3, [pc, #24]	; (d05e0634 <_svfiprintf_r+0x1f8>)
d05e061c:	a904      	add	r1, sp, #16
d05e061e:	4638      	mov	r0, r7
d05e0620:	f000 f87a 	bl	d05e0718 <_printf_i>
d05e0624:	e7eb      	b.n	d05e05fe <_svfiprintf_r+0x1c2>
d05e0626:	bf00      	nop
d05e0628:	d05e0dff 	.word	0xd05e0dff
d05e062c:	d05e0e09 	.word	0xd05e0e09
d05e0630:	00000000 	.word	0x00000000
d05e0634:	d05e0387 	.word	0xd05e0387
d05e0638:	d05e0e05 	.word	0xd05e0e05

d05e063c <_printf_common>:
d05e063c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05e0640:	4616      	mov	r6, r2
d05e0642:	4699      	mov	r9, r3
d05e0644:	688a      	ldr	r2, [r1, #8]
d05e0646:	690b      	ldr	r3, [r1, #16]
d05e0648:	f8dd 8020 	ldr.w	r8, [sp, #32]
d05e064c:	4293      	cmp	r3, r2
d05e064e:	bfb8      	it	lt
d05e0650:	4613      	movlt	r3, r2
d05e0652:	6033      	str	r3, [r6, #0]
d05e0654:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d05e0658:	4607      	mov	r7, r0
d05e065a:	460c      	mov	r4, r1
d05e065c:	b10a      	cbz	r2, d05e0662 <_printf_common+0x26>
d05e065e:	3301      	adds	r3, #1
d05e0660:	6033      	str	r3, [r6, #0]
d05e0662:	6823      	ldr	r3, [r4, #0]
d05e0664:	0699      	lsls	r1, r3, #26
d05e0666:	bf42      	ittt	mi
d05e0668:	6833      	ldrmi	r3, [r6, #0]
d05e066a:	3302      	addmi	r3, #2
d05e066c:	6033      	strmi	r3, [r6, #0]
d05e066e:	6825      	ldr	r5, [r4, #0]
d05e0670:	f015 0506 	ands.w	r5, r5, #6
d05e0674:	d106      	bne.n	d05e0684 <_printf_common+0x48>
d05e0676:	f104 0a19 	add.w	sl, r4, #25
d05e067a:	68e3      	ldr	r3, [r4, #12]
d05e067c:	6832      	ldr	r2, [r6, #0]
d05e067e:	1a9b      	subs	r3, r3, r2
d05e0680:	42ab      	cmp	r3, r5
d05e0682:	dc26      	bgt.n	d05e06d2 <_printf_common+0x96>
d05e0684:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d05e0688:	1e13      	subs	r3, r2, #0
d05e068a:	6822      	ldr	r2, [r4, #0]
d05e068c:	bf18      	it	ne
d05e068e:	2301      	movne	r3, #1
d05e0690:	0692      	lsls	r2, r2, #26
d05e0692:	d42b      	bmi.n	d05e06ec <_printf_common+0xb0>
d05e0694:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05e0698:	4649      	mov	r1, r9
d05e069a:	4638      	mov	r0, r7
d05e069c:	47c0      	blx	r8
d05e069e:	3001      	adds	r0, #1
d05e06a0:	d01e      	beq.n	d05e06e0 <_printf_common+0xa4>
d05e06a2:	6823      	ldr	r3, [r4, #0]
d05e06a4:	68e5      	ldr	r5, [r4, #12]
d05e06a6:	6832      	ldr	r2, [r6, #0]
d05e06a8:	f003 0306 	and.w	r3, r3, #6
d05e06ac:	2b04      	cmp	r3, #4
d05e06ae:	bf08      	it	eq
d05e06b0:	1aad      	subeq	r5, r5, r2
d05e06b2:	68a3      	ldr	r3, [r4, #8]
d05e06b4:	6922      	ldr	r2, [r4, #16]
d05e06b6:	bf0c      	ite	eq
d05e06b8:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d05e06bc:	2500      	movne	r5, #0
d05e06be:	4293      	cmp	r3, r2
d05e06c0:	bfc4      	itt	gt
d05e06c2:	1a9b      	subgt	r3, r3, r2
d05e06c4:	18ed      	addgt	r5, r5, r3
d05e06c6:	2600      	movs	r6, #0
d05e06c8:	341a      	adds	r4, #26
d05e06ca:	42b5      	cmp	r5, r6
d05e06cc:	d11a      	bne.n	d05e0704 <_printf_common+0xc8>
d05e06ce:	2000      	movs	r0, #0
d05e06d0:	e008      	b.n	d05e06e4 <_printf_common+0xa8>
d05e06d2:	2301      	movs	r3, #1
d05e06d4:	4652      	mov	r2, sl
d05e06d6:	4649      	mov	r1, r9
d05e06d8:	4638      	mov	r0, r7
d05e06da:	47c0      	blx	r8
d05e06dc:	3001      	adds	r0, #1
d05e06de:	d103      	bne.n	d05e06e8 <_printf_common+0xac>
d05e06e0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e06e4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e06e8:	3501      	adds	r5, #1
d05e06ea:	e7c6      	b.n	d05e067a <_printf_common+0x3e>
d05e06ec:	18e1      	adds	r1, r4, r3
d05e06ee:	1c5a      	adds	r2, r3, #1
d05e06f0:	2030      	movs	r0, #48	; 0x30
d05e06f2:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d05e06f6:	4422      	add	r2, r4
d05e06f8:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d05e06fc:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d05e0700:	3302      	adds	r3, #2
d05e0702:	e7c7      	b.n	d05e0694 <_printf_common+0x58>
d05e0704:	2301      	movs	r3, #1
d05e0706:	4622      	mov	r2, r4
d05e0708:	4649      	mov	r1, r9
d05e070a:	4638      	mov	r0, r7
d05e070c:	47c0      	blx	r8
d05e070e:	3001      	adds	r0, #1
d05e0710:	d0e6      	beq.n	d05e06e0 <_printf_common+0xa4>
d05e0712:	3601      	adds	r6, #1
d05e0714:	e7d9      	b.n	d05e06ca <_printf_common+0x8e>
	...

d05e0718 <_printf_i>:
d05e0718:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d05e071c:	460c      	mov	r4, r1
d05e071e:	4691      	mov	r9, r2
d05e0720:	7e27      	ldrb	r7, [r4, #24]
d05e0722:	990c      	ldr	r1, [sp, #48]	; 0x30
d05e0724:	2f78      	cmp	r7, #120	; 0x78
d05e0726:	4680      	mov	r8, r0
d05e0728:	469a      	mov	sl, r3
d05e072a:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05e072e:	d807      	bhi.n	d05e0740 <_printf_i+0x28>
d05e0730:	2f62      	cmp	r7, #98	; 0x62
d05e0732:	d80a      	bhi.n	d05e074a <_printf_i+0x32>
d05e0734:	2f00      	cmp	r7, #0
d05e0736:	f000 80d8 	beq.w	d05e08ea <_printf_i+0x1d2>
d05e073a:	2f58      	cmp	r7, #88	; 0x58
d05e073c:	f000 80a3 	beq.w	d05e0886 <_printf_i+0x16e>
d05e0740:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05e0744:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d05e0748:	e03a      	b.n	d05e07c0 <_printf_i+0xa8>
d05e074a:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d05e074e:	2b15      	cmp	r3, #21
d05e0750:	d8f6      	bhi.n	d05e0740 <_printf_i+0x28>
d05e0752:	a001      	add	r0, pc, #4	; (adr r0, d05e0758 <_printf_i+0x40>)
d05e0754:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d05e0758:	d05e07b1 	.word	0xd05e07b1
d05e075c:	d05e07c5 	.word	0xd05e07c5
d05e0760:	d05e0741 	.word	0xd05e0741
d05e0764:	d05e0741 	.word	0xd05e0741
d05e0768:	d05e0741 	.word	0xd05e0741
d05e076c:	d05e0741 	.word	0xd05e0741
d05e0770:	d05e07c5 	.word	0xd05e07c5
d05e0774:	d05e0741 	.word	0xd05e0741
d05e0778:	d05e0741 	.word	0xd05e0741
d05e077c:	d05e0741 	.word	0xd05e0741
d05e0780:	d05e0741 	.word	0xd05e0741
d05e0784:	d05e08d1 	.word	0xd05e08d1
d05e0788:	d05e07f5 	.word	0xd05e07f5
d05e078c:	d05e08b3 	.word	0xd05e08b3
d05e0790:	d05e0741 	.word	0xd05e0741
d05e0794:	d05e0741 	.word	0xd05e0741
d05e0798:	d05e08f3 	.word	0xd05e08f3
d05e079c:	d05e0741 	.word	0xd05e0741
d05e07a0:	d05e07f5 	.word	0xd05e07f5
d05e07a4:	d05e0741 	.word	0xd05e0741
d05e07a8:	d05e0741 	.word	0xd05e0741
d05e07ac:	d05e08bb 	.word	0xd05e08bb
d05e07b0:	680b      	ldr	r3, [r1, #0]
d05e07b2:	1d1a      	adds	r2, r3, #4
d05e07b4:	681b      	ldr	r3, [r3, #0]
d05e07b6:	600a      	str	r2, [r1, #0]
d05e07b8:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05e07bc:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d05e07c0:	2301      	movs	r3, #1
d05e07c2:	e0a3      	b.n	d05e090c <_printf_i+0x1f4>
d05e07c4:	6825      	ldr	r5, [r4, #0]
d05e07c6:	6808      	ldr	r0, [r1, #0]
d05e07c8:	062e      	lsls	r6, r5, #24
d05e07ca:	f100 0304 	add.w	r3, r0, #4
d05e07ce:	d50a      	bpl.n	d05e07e6 <_printf_i+0xce>
d05e07d0:	6805      	ldr	r5, [r0, #0]
d05e07d2:	600b      	str	r3, [r1, #0]
d05e07d4:	2d00      	cmp	r5, #0
d05e07d6:	da03      	bge.n	d05e07e0 <_printf_i+0xc8>
d05e07d8:	232d      	movs	r3, #45	; 0x2d
d05e07da:	426d      	negs	r5, r5
d05e07dc:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05e07e0:	485e      	ldr	r0, [pc, #376]	; (d05e095c <_printf_i+0x244>)
d05e07e2:	230a      	movs	r3, #10
d05e07e4:	e019      	b.n	d05e081a <_printf_i+0x102>
d05e07e6:	f015 0f40 	tst.w	r5, #64	; 0x40
d05e07ea:	6805      	ldr	r5, [r0, #0]
d05e07ec:	600b      	str	r3, [r1, #0]
d05e07ee:	bf18      	it	ne
d05e07f0:	b22d      	sxthne	r5, r5
d05e07f2:	e7ef      	b.n	d05e07d4 <_printf_i+0xbc>
d05e07f4:	680b      	ldr	r3, [r1, #0]
d05e07f6:	6825      	ldr	r5, [r4, #0]
d05e07f8:	1d18      	adds	r0, r3, #4
d05e07fa:	6008      	str	r0, [r1, #0]
d05e07fc:	0628      	lsls	r0, r5, #24
d05e07fe:	d501      	bpl.n	d05e0804 <_printf_i+0xec>
d05e0800:	681d      	ldr	r5, [r3, #0]
d05e0802:	e002      	b.n	d05e080a <_printf_i+0xf2>
d05e0804:	0669      	lsls	r1, r5, #25
d05e0806:	d5fb      	bpl.n	d05e0800 <_printf_i+0xe8>
d05e0808:	881d      	ldrh	r5, [r3, #0]
d05e080a:	4854      	ldr	r0, [pc, #336]	; (d05e095c <_printf_i+0x244>)
d05e080c:	2f6f      	cmp	r7, #111	; 0x6f
d05e080e:	bf0c      	ite	eq
d05e0810:	2308      	moveq	r3, #8
d05e0812:	230a      	movne	r3, #10
d05e0814:	2100      	movs	r1, #0
d05e0816:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d05e081a:	6866      	ldr	r6, [r4, #4]
d05e081c:	60a6      	str	r6, [r4, #8]
d05e081e:	2e00      	cmp	r6, #0
d05e0820:	bfa2      	ittt	ge
d05e0822:	6821      	ldrge	r1, [r4, #0]
d05e0824:	f021 0104 	bicge.w	r1, r1, #4
d05e0828:	6021      	strge	r1, [r4, #0]
d05e082a:	b90d      	cbnz	r5, d05e0830 <_printf_i+0x118>
d05e082c:	2e00      	cmp	r6, #0
d05e082e:	d04d      	beq.n	d05e08cc <_printf_i+0x1b4>
d05e0830:	4616      	mov	r6, r2
d05e0832:	fbb5 f1f3 	udiv	r1, r5, r3
d05e0836:	fb03 5711 	mls	r7, r3, r1, r5
d05e083a:	5dc7      	ldrb	r7, [r0, r7]
d05e083c:	f806 7d01 	strb.w	r7, [r6, #-1]!
d05e0840:	462f      	mov	r7, r5
d05e0842:	42bb      	cmp	r3, r7
d05e0844:	460d      	mov	r5, r1
d05e0846:	d9f4      	bls.n	d05e0832 <_printf_i+0x11a>
d05e0848:	2b08      	cmp	r3, #8
d05e084a:	d10b      	bne.n	d05e0864 <_printf_i+0x14c>
d05e084c:	6823      	ldr	r3, [r4, #0]
d05e084e:	07df      	lsls	r7, r3, #31
d05e0850:	d508      	bpl.n	d05e0864 <_printf_i+0x14c>
d05e0852:	6923      	ldr	r3, [r4, #16]
d05e0854:	6861      	ldr	r1, [r4, #4]
d05e0856:	4299      	cmp	r1, r3
d05e0858:	bfde      	ittt	le
d05e085a:	2330      	movle	r3, #48	; 0x30
d05e085c:	f806 3c01 	strble.w	r3, [r6, #-1]
d05e0860:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d05e0864:	1b92      	subs	r2, r2, r6
d05e0866:	6122      	str	r2, [r4, #16]
d05e0868:	f8cd a000 	str.w	sl, [sp]
d05e086c:	464b      	mov	r3, r9
d05e086e:	aa03      	add	r2, sp, #12
d05e0870:	4621      	mov	r1, r4
d05e0872:	4640      	mov	r0, r8
d05e0874:	f7ff fee2 	bl	d05e063c <_printf_common>
d05e0878:	3001      	adds	r0, #1
d05e087a:	d14c      	bne.n	d05e0916 <_printf_i+0x1fe>
d05e087c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e0880:	b004      	add	sp, #16
d05e0882:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e0886:	4835      	ldr	r0, [pc, #212]	; (d05e095c <_printf_i+0x244>)
d05e0888:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d05e088c:	6823      	ldr	r3, [r4, #0]
d05e088e:	680e      	ldr	r6, [r1, #0]
d05e0890:	061f      	lsls	r7, r3, #24
d05e0892:	f856 5b04 	ldr.w	r5, [r6], #4
d05e0896:	600e      	str	r6, [r1, #0]
d05e0898:	d514      	bpl.n	d05e08c4 <_printf_i+0x1ac>
d05e089a:	07d9      	lsls	r1, r3, #31
d05e089c:	bf44      	itt	mi
d05e089e:	f043 0320 	orrmi.w	r3, r3, #32
d05e08a2:	6023      	strmi	r3, [r4, #0]
d05e08a4:	b91d      	cbnz	r5, d05e08ae <_printf_i+0x196>
d05e08a6:	6823      	ldr	r3, [r4, #0]
d05e08a8:	f023 0320 	bic.w	r3, r3, #32
d05e08ac:	6023      	str	r3, [r4, #0]
d05e08ae:	2310      	movs	r3, #16
d05e08b0:	e7b0      	b.n	d05e0814 <_printf_i+0xfc>
d05e08b2:	6823      	ldr	r3, [r4, #0]
d05e08b4:	f043 0320 	orr.w	r3, r3, #32
d05e08b8:	6023      	str	r3, [r4, #0]
d05e08ba:	2378      	movs	r3, #120	; 0x78
d05e08bc:	4828      	ldr	r0, [pc, #160]	; (d05e0960 <_printf_i+0x248>)
d05e08be:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d05e08c2:	e7e3      	b.n	d05e088c <_printf_i+0x174>
d05e08c4:	065e      	lsls	r6, r3, #25
d05e08c6:	bf48      	it	mi
d05e08c8:	b2ad      	uxthmi	r5, r5
d05e08ca:	e7e6      	b.n	d05e089a <_printf_i+0x182>
d05e08cc:	4616      	mov	r6, r2
d05e08ce:	e7bb      	b.n	d05e0848 <_printf_i+0x130>
d05e08d0:	680b      	ldr	r3, [r1, #0]
d05e08d2:	6826      	ldr	r6, [r4, #0]
d05e08d4:	6960      	ldr	r0, [r4, #20]
d05e08d6:	1d1d      	adds	r5, r3, #4
d05e08d8:	600d      	str	r5, [r1, #0]
d05e08da:	0635      	lsls	r5, r6, #24
d05e08dc:	681b      	ldr	r3, [r3, #0]
d05e08de:	d501      	bpl.n	d05e08e4 <_printf_i+0x1cc>
d05e08e0:	6018      	str	r0, [r3, #0]
d05e08e2:	e002      	b.n	d05e08ea <_printf_i+0x1d2>
d05e08e4:	0671      	lsls	r1, r6, #25
d05e08e6:	d5fb      	bpl.n	d05e08e0 <_printf_i+0x1c8>
d05e08e8:	8018      	strh	r0, [r3, #0]
d05e08ea:	2300      	movs	r3, #0
d05e08ec:	6123      	str	r3, [r4, #16]
d05e08ee:	4616      	mov	r6, r2
d05e08f0:	e7ba      	b.n	d05e0868 <_printf_i+0x150>
d05e08f2:	680b      	ldr	r3, [r1, #0]
d05e08f4:	1d1a      	adds	r2, r3, #4
d05e08f6:	600a      	str	r2, [r1, #0]
d05e08f8:	681e      	ldr	r6, [r3, #0]
d05e08fa:	6862      	ldr	r2, [r4, #4]
d05e08fc:	2100      	movs	r1, #0
d05e08fe:	4630      	mov	r0, r6
d05e0900:	f000 f836 	bl	d05e0970 <memchr>
d05e0904:	b108      	cbz	r0, d05e090a <_printf_i+0x1f2>
d05e0906:	1b80      	subs	r0, r0, r6
d05e0908:	6060      	str	r0, [r4, #4]
d05e090a:	6863      	ldr	r3, [r4, #4]
d05e090c:	6123      	str	r3, [r4, #16]
d05e090e:	2300      	movs	r3, #0
d05e0910:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05e0914:	e7a8      	b.n	d05e0868 <_printf_i+0x150>
d05e0916:	6923      	ldr	r3, [r4, #16]
d05e0918:	4632      	mov	r2, r6
d05e091a:	4649      	mov	r1, r9
d05e091c:	4640      	mov	r0, r8
d05e091e:	47d0      	blx	sl
d05e0920:	3001      	adds	r0, #1
d05e0922:	d0ab      	beq.n	d05e087c <_printf_i+0x164>
d05e0924:	6823      	ldr	r3, [r4, #0]
d05e0926:	079b      	lsls	r3, r3, #30
d05e0928:	d413      	bmi.n	d05e0952 <_printf_i+0x23a>
d05e092a:	68e0      	ldr	r0, [r4, #12]
d05e092c:	9b03      	ldr	r3, [sp, #12]
d05e092e:	4298      	cmp	r0, r3
d05e0930:	bfb8      	it	lt
d05e0932:	4618      	movlt	r0, r3
d05e0934:	e7a4      	b.n	d05e0880 <_printf_i+0x168>
d05e0936:	2301      	movs	r3, #1
d05e0938:	4632      	mov	r2, r6
d05e093a:	4649      	mov	r1, r9
d05e093c:	4640      	mov	r0, r8
d05e093e:	47d0      	blx	sl
d05e0940:	3001      	adds	r0, #1
d05e0942:	d09b      	beq.n	d05e087c <_printf_i+0x164>
d05e0944:	3501      	adds	r5, #1
d05e0946:	68e3      	ldr	r3, [r4, #12]
d05e0948:	9903      	ldr	r1, [sp, #12]
d05e094a:	1a5b      	subs	r3, r3, r1
d05e094c:	42ab      	cmp	r3, r5
d05e094e:	dcf2      	bgt.n	d05e0936 <_printf_i+0x21e>
d05e0950:	e7eb      	b.n	d05e092a <_printf_i+0x212>
d05e0952:	2500      	movs	r5, #0
d05e0954:	f104 0619 	add.w	r6, r4, #25
d05e0958:	e7f5      	b.n	d05e0946 <_printf_i+0x22e>
d05e095a:	bf00      	nop
d05e095c:	d05e0e10 	.word	0xd05e0e10
d05e0960:	d05e0e21 	.word	0xd05e0e21
	...

d05e0970 <memchr>:
d05e0970:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05e0974:	2a10      	cmp	r2, #16
d05e0976:	db2b      	blt.n	d05e09d0 <memchr+0x60>
d05e0978:	f010 0f07 	tst.w	r0, #7
d05e097c:	d008      	beq.n	d05e0990 <memchr+0x20>
d05e097e:	f810 3b01 	ldrb.w	r3, [r0], #1
d05e0982:	3a01      	subs	r2, #1
d05e0984:	428b      	cmp	r3, r1
d05e0986:	d02d      	beq.n	d05e09e4 <memchr+0x74>
d05e0988:	f010 0f07 	tst.w	r0, #7
d05e098c:	b342      	cbz	r2, d05e09e0 <memchr+0x70>
d05e098e:	d1f6      	bne.n	d05e097e <memchr+0xe>
d05e0990:	b4f0      	push	{r4, r5, r6, r7}
d05e0992:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d05e0996:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d05e099a:	f022 0407 	bic.w	r4, r2, #7
d05e099e:	f07f 0700 	mvns.w	r7, #0
d05e09a2:	2300      	movs	r3, #0
d05e09a4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d05e09a8:	3c08      	subs	r4, #8
d05e09aa:	ea85 0501 	eor.w	r5, r5, r1
d05e09ae:	ea86 0601 	eor.w	r6, r6, r1
d05e09b2:	fa85 f547 	uadd8	r5, r5, r7
d05e09b6:	faa3 f587 	sel	r5, r3, r7
d05e09ba:	fa86 f647 	uadd8	r6, r6, r7
d05e09be:	faa5 f687 	sel	r6, r5, r7
d05e09c2:	b98e      	cbnz	r6, d05e09e8 <memchr+0x78>
d05e09c4:	d1ee      	bne.n	d05e09a4 <memchr+0x34>
d05e09c6:	bcf0      	pop	{r4, r5, r6, r7}
d05e09c8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05e09cc:	f002 0207 	and.w	r2, r2, #7
d05e09d0:	b132      	cbz	r2, d05e09e0 <memchr+0x70>
d05e09d2:	f810 3b01 	ldrb.w	r3, [r0], #1
d05e09d6:	3a01      	subs	r2, #1
d05e09d8:	ea83 0301 	eor.w	r3, r3, r1
d05e09dc:	b113      	cbz	r3, d05e09e4 <memchr+0x74>
d05e09de:	d1f8      	bne.n	d05e09d2 <memchr+0x62>
d05e09e0:	2000      	movs	r0, #0
d05e09e2:	4770      	bx	lr
d05e09e4:	3801      	subs	r0, #1
d05e09e6:	4770      	bx	lr
d05e09e8:	2d00      	cmp	r5, #0
d05e09ea:	bf06      	itte	eq
d05e09ec:	4635      	moveq	r5, r6
d05e09ee:	3803      	subeq	r0, #3
d05e09f0:	3807      	subne	r0, #7
d05e09f2:	f015 0f01 	tst.w	r5, #1
d05e09f6:	d107      	bne.n	d05e0a08 <memchr+0x98>
d05e09f8:	3001      	adds	r0, #1
d05e09fa:	f415 7f80 	tst.w	r5, #256	; 0x100
d05e09fe:	bf02      	ittt	eq
d05e0a00:	3001      	addeq	r0, #1
d05e0a02:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d05e0a06:	3001      	addeq	r0, #1
d05e0a08:	bcf0      	pop	{r4, r5, r6, r7}
d05e0a0a:	3801      	subs	r0, #1
d05e0a0c:	4770      	bx	lr
d05e0a0e:	bf00      	nop

d05e0a10 <memcpy>:
d05e0a10:	440a      	add	r2, r1
d05e0a12:	4291      	cmp	r1, r2
d05e0a14:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d05e0a18:	d100      	bne.n	d05e0a1c <memcpy+0xc>
d05e0a1a:	4770      	bx	lr
d05e0a1c:	b510      	push	{r4, lr}
d05e0a1e:	f811 4b01 	ldrb.w	r4, [r1], #1
d05e0a22:	f803 4f01 	strb.w	r4, [r3, #1]!
d05e0a26:	4291      	cmp	r1, r2
d05e0a28:	d1f9      	bne.n	d05e0a1e <memcpy+0xe>
d05e0a2a:	bd10      	pop	{r4, pc}

d05e0a2c <memmove>:
d05e0a2c:	4288      	cmp	r0, r1
d05e0a2e:	b510      	push	{r4, lr}
d05e0a30:	eb01 0402 	add.w	r4, r1, r2
d05e0a34:	d902      	bls.n	d05e0a3c <memmove+0x10>
d05e0a36:	4284      	cmp	r4, r0
d05e0a38:	4623      	mov	r3, r4
d05e0a3a:	d807      	bhi.n	d05e0a4c <memmove+0x20>
d05e0a3c:	1e43      	subs	r3, r0, #1
d05e0a3e:	42a1      	cmp	r1, r4
d05e0a40:	d008      	beq.n	d05e0a54 <memmove+0x28>
d05e0a42:	f811 2b01 	ldrb.w	r2, [r1], #1
d05e0a46:	f803 2f01 	strb.w	r2, [r3, #1]!
d05e0a4a:	e7f8      	b.n	d05e0a3e <memmove+0x12>
d05e0a4c:	4402      	add	r2, r0
d05e0a4e:	4601      	mov	r1, r0
d05e0a50:	428a      	cmp	r2, r1
d05e0a52:	d100      	bne.n	d05e0a56 <memmove+0x2a>
d05e0a54:	bd10      	pop	{r4, pc}
d05e0a56:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d05e0a5a:	f802 4d01 	strb.w	r4, [r2, #-1]!
d05e0a5e:	e7f7      	b.n	d05e0a50 <memmove+0x24>

d05e0a60 <_free_r>:
d05e0a60:	b537      	push	{r0, r1, r2, r4, r5, lr}
d05e0a62:	2900      	cmp	r1, #0
d05e0a64:	d048      	beq.n	d05e0af8 <_free_r+0x98>
d05e0a66:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05e0a6a:	9001      	str	r0, [sp, #4]
d05e0a6c:	2b00      	cmp	r3, #0
d05e0a6e:	f1a1 0404 	sub.w	r4, r1, #4
d05e0a72:	bfb8      	it	lt
d05e0a74:	18e4      	addlt	r4, r4, r3
d05e0a76:	f000 f8d3 	bl	d05e0c20 <__malloc_lock>
d05e0a7a:	4a20      	ldr	r2, [pc, #128]	; (d05e0afc <_free_r+0x9c>)
d05e0a7c:	9801      	ldr	r0, [sp, #4]
d05e0a7e:	6813      	ldr	r3, [r2, #0]
d05e0a80:	4615      	mov	r5, r2
d05e0a82:	b933      	cbnz	r3, d05e0a92 <_free_r+0x32>
d05e0a84:	6063      	str	r3, [r4, #4]
d05e0a86:	6014      	str	r4, [r2, #0]
d05e0a88:	b003      	add	sp, #12
d05e0a8a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05e0a8e:	f000 b8cd 	b.w	d05e0c2c <__malloc_unlock>
d05e0a92:	42a3      	cmp	r3, r4
d05e0a94:	d90b      	bls.n	d05e0aae <_free_r+0x4e>
d05e0a96:	6821      	ldr	r1, [r4, #0]
d05e0a98:	1862      	adds	r2, r4, r1
d05e0a9a:	4293      	cmp	r3, r2
d05e0a9c:	bf04      	itt	eq
d05e0a9e:	681a      	ldreq	r2, [r3, #0]
d05e0aa0:	685b      	ldreq	r3, [r3, #4]
d05e0aa2:	6063      	str	r3, [r4, #4]
d05e0aa4:	bf04      	itt	eq
d05e0aa6:	1852      	addeq	r2, r2, r1
d05e0aa8:	6022      	streq	r2, [r4, #0]
d05e0aaa:	602c      	str	r4, [r5, #0]
d05e0aac:	e7ec      	b.n	d05e0a88 <_free_r+0x28>
d05e0aae:	461a      	mov	r2, r3
d05e0ab0:	685b      	ldr	r3, [r3, #4]
d05e0ab2:	b10b      	cbz	r3, d05e0ab8 <_free_r+0x58>
d05e0ab4:	42a3      	cmp	r3, r4
d05e0ab6:	d9fa      	bls.n	d05e0aae <_free_r+0x4e>
d05e0ab8:	6811      	ldr	r1, [r2, #0]
d05e0aba:	1855      	adds	r5, r2, r1
d05e0abc:	42a5      	cmp	r5, r4
d05e0abe:	d10b      	bne.n	d05e0ad8 <_free_r+0x78>
d05e0ac0:	6824      	ldr	r4, [r4, #0]
d05e0ac2:	4421      	add	r1, r4
d05e0ac4:	1854      	adds	r4, r2, r1
d05e0ac6:	42a3      	cmp	r3, r4
d05e0ac8:	6011      	str	r1, [r2, #0]
d05e0aca:	d1dd      	bne.n	d05e0a88 <_free_r+0x28>
d05e0acc:	681c      	ldr	r4, [r3, #0]
d05e0ace:	685b      	ldr	r3, [r3, #4]
d05e0ad0:	6053      	str	r3, [r2, #4]
d05e0ad2:	4421      	add	r1, r4
d05e0ad4:	6011      	str	r1, [r2, #0]
d05e0ad6:	e7d7      	b.n	d05e0a88 <_free_r+0x28>
d05e0ad8:	d902      	bls.n	d05e0ae0 <_free_r+0x80>
d05e0ada:	230c      	movs	r3, #12
d05e0adc:	6003      	str	r3, [r0, #0]
d05e0ade:	e7d3      	b.n	d05e0a88 <_free_r+0x28>
d05e0ae0:	6825      	ldr	r5, [r4, #0]
d05e0ae2:	1961      	adds	r1, r4, r5
d05e0ae4:	428b      	cmp	r3, r1
d05e0ae6:	bf04      	itt	eq
d05e0ae8:	6819      	ldreq	r1, [r3, #0]
d05e0aea:	685b      	ldreq	r3, [r3, #4]
d05e0aec:	6063      	str	r3, [r4, #4]
d05e0aee:	bf04      	itt	eq
d05e0af0:	1949      	addeq	r1, r1, r5
d05e0af2:	6021      	streq	r1, [r4, #0]
d05e0af4:	6054      	str	r4, [r2, #4]
d05e0af6:	e7c7      	b.n	d05e0a88 <_free_r+0x28>
d05e0af8:	b003      	add	sp, #12
d05e0afa:	bd30      	pop	{r4, r5, pc}
d05e0afc:	d05e0ea8 	.word	0xd05e0ea8

d05e0b00 <_malloc_r>:
d05e0b00:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0b02:	1ccd      	adds	r5, r1, #3
d05e0b04:	f025 0503 	bic.w	r5, r5, #3
d05e0b08:	3508      	adds	r5, #8
d05e0b0a:	2d0c      	cmp	r5, #12
d05e0b0c:	bf38      	it	cc
d05e0b0e:	250c      	movcc	r5, #12
d05e0b10:	2d00      	cmp	r5, #0
d05e0b12:	4606      	mov	r6, r0
d05e0b14:	db01      	blt.n	d05e0b1a <_malloc_r+0x1a>
d05e0b16:	42a9      	cmp	r1, r5
d05e0b18:	d903      	bls.n	d05e0b22 <_malloc_r+0x22>
d05e0b1a:	230c      	movs	r3, #12
d05e0b1c:	6033      	str	r3, [r6, #0]
d05e0b1e:	2000      	movs	r0, #0
d05e0b20:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e0b22:	f000 f87d 	bl	d05e0c20 <__malloc_lock>
d05e0b26:	4921      	ldr	r1, [pc, #132]	; (d05e0bac <_malloc_r+0xac>)
d05e0b28:	680a      	ldr	r2, [r1, #0]
d05e0b2a:	4614      	mov	r4, r2
d05e0b2c:	b99c      	cbnz	r4, d05e0b56 <_malloc_r+0x56>
d05e0b2e:	4f20      	ldr	r7, [pc, #128]	; (d05e0bb0 <_malloc_r+0xb0>)
d05e0b30:	683b      	ldr	r3, [r7, #0]
d05e0b32:	b923      	cbnz	r3, d05e0b3e <_malloc_r+0x3e>
d05e0b34:	4621      	mov	r1, r4
d05e0b36:	4630      	mov	r0, r6
d05e0b38:	f000 f862 	bl	d05e0c00 <_sbrk_r>
d05e0b3c:	6038      	str	r0, [r7, #0]
d05e0b3e:	4629      	mov	r1, r5
d05e0b40:	4630      	mov	r0, r6
d05e0b42:	f000 f85d 	bl	d05e0c00 <_sbrk_r>
d05e0b46:	1c43      	adds	r3, r0, #1
d05e0b48:	d123      	bne.n	d05e0b92 <_malloc_r+0x92>
d05e0b4a:	230c      	movs	r3, #12
d05e0b4c:	6033      	str	r3, [r6, #0]
d05e0b4e:	4630      	mov	r0, r6
d05e0b50:	f000 f86c 	bl	d05e0c2c <__malloc_unlock>
d05e0b54:	e7e3      	b.n	d05e0b1e <_malloc_r+0x1e>
d05e0b56:	6823      	ldr	r3, [r4, #0]
d05e0b58:	1b5b      	subs	r3, r3, r5
d05e0b5a:	d417      	bmi.n	d05e0b8c <_malloc_r+0x8c>
d05e0b5c:	2b0b      	cmp	r3, #11
d05e0b5e:	d903      	bls.n	d05e0b68 <_malloc_r+0x68>
d05e0b60:	6023      	str	r3, [r4, #0]
d05e0b62:	441c      	add	r4, r3
d05e0b64:	6025      	str	r5, [r4, #0]
d05e0b66:	e004      	b.n	d05e0b72 <_malloc_r+0x72>
d05e0b68:	6863      	ldr	r3, [r4, #4]
d05e0b6a:	42a2      	cmp	r2, r4
d05e0b6c:	bf0c      	ite	eq
d05e0b6e:	600b      	streq	r3, [r1, #0]
d05e0b70:	6053      	strne	r3, [r2, #4]
d05e0b72:	4630      	mov	r0, r6
d05e0b74:	f000 f85a 	bl	d05e0c2c <__malloc_unlock>
d05e0b78:	f104 000b 	add.w	r0, r4, #11
d05e0b7c:	1d23      	adds	r3, r4, #4
d05e0b7e:	f020 0007 	bic.w	r0, r0, #7
d05e0b82:	1ac2      	subs	r2, r0, r3
d05e0b84:	d0cc      	beq.n	d05e0b20 <_malloc_r+0x20>
d05e0b86:	1a1b      	subs	r3, r3, r0
d05e0b88:	50a3      	str	r3, [r4, r2]
d05e0b8a:	e7c9      	b.n	d05e0b20 <_malloc_r+0x20>
d05e0b8c:	4622      	mov	r2, r4
d05e0b8e:	6864      	ldr	r4, [r4, #4]
d05e0b90:	e7cc      	b.n	d05e0b2c <_malloc_r+0x2c>
d05e0b92:	1cc4      	adds	r4, r0, #3
d05e0b94:	f024 0403 	bic.w	r4, r4, #3
d05e0b98:	42a0      	cmp	r0, r4
d05e0b9a:	d0e3      	beq.n	d05e0b64 <_malloc_r+0x64>
d05e0b9c:	1a21      	subs	r1, r4, r0
d05e0b9e:	4630      	mov	r0, r6
d05e0ba0:	f000 f82e 	bl	d05e0c00 <_sbrk_r>
d05e0ba4:	3001      	adds	r0, #1
d05e0ba6:	d1dd      	bne.n	d05e0b64 <_malloc_r+0x64>
d05e0ba8:	e7cf      	b.n	d05e0b4a <_malloc_r+0x4a>
d05e0baa:	bf00      	nop
d05e0bac:	d05e0ea8 	.word	0xd05e0ea8
d05e0bb0:	d05e0eac 	.word	0xd05e0eac

d05e0bb4 <_realloc_r>:
d05e0bb4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0bb6:	4607      	mov	r7, r0
d05e0bb8:	4614      	mov	r4, r2
d05e0bba:	460e      	mov	r6, r1
d05e0bbc:	b921      	cbnz	r1, d05e0bc8 <_realloc_r+0x14>
d05e0bbe:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d05e0bc2:	4611      	mov	r1, r2
d05e0bc4:	f7ff bf9c 	b.w	d05e0b00 <_malloc_r>
d05e0bc8:	b922      	cbnz	r2, d05e0bd4 <_realloc_r+0x20>
d05e0bca:	f7ff ff49 	bl	d05e0a60 <_free_r>
d05e0bce:	4625      	mov	r5, r4
d05e0bd0:	4628      	mov	r0, r5
d05e0bd2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e0bd4:	f000 f830 	bl	d05e0c38 <_malloc_usable_size_r>
d05e0bd8:	42a0      	cmp	r0, r4
d05e0bda:	d20f      	bcs.n	d05e0bfc <_realloc_r+0x48>
d05e0bdc:	4621      	mov	r1, r4
d05e0bde:	4638      	mov	r0, r7
d05e0be0:	f7ff ff8e 	bl	d05e0b00 <_malloc_r>
d05e0be4:	4605      	mov	r5, r0
d05e0be6:	2800      	cmp	r0, #0
d05e0be8:	d0f2      	beq.n	d05e0bd0 <_realloc_r+0x1c>
d05e0bea:	4631      	mov	r1, r6
d05e0bec:	4622      	mov	r2, r4
d05e0bee:	f7ff ff0f 	bl	d05e0a10 <memcpy>
d05e0bf2:	4631      	mov	r1, r6
d05e0bf4:	4638      	mov	r0, r7
d05e0bf6:	f7ff ff33 	bl	d05e0a60 <_free_r>
d05e0bfa:	e7e9      	b.n	d05e0bd0 <_realloc_r+0x1c>
d05e0bfc:	4635      	mov	r5, r6
d05e0bfe:	e7e7      	b.n	d05e0bd0 <_realloc_r+0x1c>

d05e0c00 <_sbrk_r>:
d05e0c00:	b538      	push	{r3, r4, r5, lr}
d05e0c02:	4d06      	ldr	r5, [pc, #24]	; (d05e0c1c <_sbrk_r+0x1c>)
d05e0c04:	2300      	movs	r3, #0
d05e0c06:	4604      	mov	r4, r0
d05e0c08:	4608      	mov	r0, r1
d05e0c0a:	602b      	str	r3, [r5, #0]
d05e0c0c:	f7ff fa0a 	bl	d05e0024 <_sbrk>
d05e0c10:	1c43      	adds	r3, r0, #1
d05e0c12:	d102      	bne.n	d05e0c1a <_sbrk_r+0x1a>
d05e0c14:	682b      	ldr	r3, [r5, #0]
d05e0c16:	b103      	cbz	r3, d05e0c1a <_sbrk_r+0x1a>
d05e0c18:	6023      	str	r3, [r4, #0]
d05e0c1a:	bd38      	pop	{r3, r4, r5, pc}
d05e0c1c:	d05e0eb8 	.word	0xd05e0eb8

d05e0c20 <__malloc_lock>:
d05e0c20:	4801      	ldr	r0, [pc, #4]	; (d05e0c28 <__malloc_lock+0x8>)
d05e0c22:	f000 b811 	b.w	d05e0c48 <__retarget_lock_acquire_recursive>
d05e0c26:	bf00      	nop
d05e0c28:	d05e0ec0 	.word	0xd05e0ec0

d05e0c2c <__malloc_unlock>:
d05e0c2c:	4801      	ldr	r0, [pc, #4]	; (d05e0c34 <__malloc_unlock+0x8>)
d05e0c2e:	f000 b80c 	b.w	d05e0c4a <__retarget_lock_release_recursive>
d05e0c32:	bf00      	nop
d05e0c34:	d05e0ec0 	.word	0xd05e0ec0

d05e0c38 <_malloc_usable_size_r>:
d05e0c38:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05e0c3c:	1f18      	subs	r0, r3, #4
d05e0c3e:	2b00      	cmp	r3, #0
d05e0c40:	bfbc      	itt	lt
d05e0c42:	580b      	ldrlt	r3, [r1, r0]
d05e0c44:	18c0      	addlt	r0, r0, r3
d05e0c46:	4770      	bx	lr

d05e0c48 <__retarget_lock_acquire_recursive>:
d05e0c48:	4770      	bx	lr

d05e0c4a <__retarget_lock_release_recursive>:
d05e0c4a:	4770      	bx	lr
d05e0c4c:	0000002e 	.word	0x0000002e
d05e0c50:	00002e2e 	.word	0x00002e2e
d05e0c54:	252f7325 	.word	0x252f7325
d05e0c58:	00000073 	.word	0x00000073
d05e0c5c:	2078614d 	.word	0x2078614d
d05e0c60:	74706564 	.word	0x74706564
d05e0c64:	65722068 	.word	0x65722068
d05e0c68:	65686361 	.word	0x65686361
d05e0c6c:	25203a64 	.word	0x25203a64
d05e0c70:	00000a73 	.word	0x00000a73
d05e0c74:	67617355 	.word	0x67617355
d05e0c78:	72203a65 	.word	0x72203a65
d05e0c7c:	7269646d 	.word	0x7269646d
d05e0c80:	6f663c20 	.word	0x6f663c20
d05e0c84:	7265646c 	.word	0x7265646c
d05e0c88:	2d5b203e 	.word	0x2d5b203e
d05e0c8c:	5b205d72 	.word	0x5b205d72
d05e0c90:	0a5d662d 	.word	0x0a5d662d
d05e0c94:	00000000 	.word	0x00000000
d05e0c98:	722d2020 	.word	0x722d2020
d05e0c9c:	52202020 	.word	0x52202020
d05e0ca0:	72756365 	.word	0x72756365
d05e0ca4:	65766973 	.word	0x65766973
d05e0ca8:	6c656420 	.word	0x6c656420
d05e0cac:	20657465 	.word	0x20657465
d05e0cb0:	71657228 	.word	0x71657228
d05e0cb4:	65726975 	.word	0x65726975
d05e0cb8:	6f662064 	.word	0x6f662064
d05e0cbc:	6f6e2072 	.word	0x6f6e2072
d05e0cc0:	6d652d6e 	.word	0x6d652d6e
d05e0cc4:	20797470 	.word	0x20797470
d05e0cc8:	646c6f66 	.word	0x646c6f66
d05e0ccc:	29737265 	.word	0x29737265
d05e0cd0:	0000000a 	.word	0x0000000a
d05e0cd4:	662d2020 	.word	0x662d2020
d05e0cd8:	46202020 	.word	0x46202020
d05e0cdc:	6563726f 	.word	0x6563726f
d05e0ce0:	6c656420 	.word	0x6c656420
d05e0ce4:	20657465 	.word	0x20657465
d05e0ce8:	6d617328 	.word	0x6d617328
d05e0cec:	73612065 	.word	0x73612065
d05e0cf0:	2c722d20 	.word	0x2c722d20
d05e0cf4:	74756220 	.word	0x74756220
d05e0cf8:	6e676920 	.word	0x6e676920
d05e0cfc:	7365726f 	.word	0x7365726f
d05e0d00:	6d6f7320 	.word	0x6d6f7320
d05e0d04:	72652065 	.word	0x72652065
d05e0d08:	73726f72 	.word	0x73726f72
d05e0d0c:	00000a29 	.word	0x00000a29
d05e0d10:	67726154 	.word	0x67726154
d05e0d14:	69207465 	.word	0x69207465
d05e0d18:	6f6e2073 	.word	0x6f6e2073
d05e0d1c:	20612074 	.word	0x20612074
d05e0d20:	646c6f66 	.word	0x646c6f66
d05e0d24:	203a7265 	.word	0x203a7265
d05e0d28:	000a7325 	.word	0x000a7325
d05e0d2c:	6c696146 	.word	0x6c696146
d05e0d30:	74206465 	.word	0x74206465
d05e0d34:	6564206f 	.word	0x6564206f
d05e0d38:	6574656c 	.word	0x6574656c
d05e0d3c:	6c6f6620 	.word	0x6c6f6620
d05e0d40:	20726564 	.word	0x20726564
d05e0d44:	746f6e28 	.word	0x746f6e28
d05e0d48:	706d6520 	.word	0x706d6520
d05e0d4c:	293f7974 	.word	0x293f7974
d05e0d50:	7325203a 	.word	0x7325203a
d05e0d54:	0000000a 	.word	0x0000000a
d05e0d58:	656c6544 	.word	0x656c6544
d05e0d5c:	20646574 	.word	0x20646574
d05e0d60:	646c6f66 	.word	0x646c6f66
d05e0d64:	203a7265 	.word	0x203a7265
d05e0d68:	000a7325 	.word	0x000a7325
d05e0d6c:	69460a0d 	.word	0x69460a0d
d05e0d70:	3a73656c 	.word	0x3a73656c
d05e0d74:	756c2520 	.word	0x756c2520
d05e0d78:	6f46202c 	.word	0x6f46202c
d05e0d7c:	7265646c 	.word	0x7265646c
d05e0d80:	25203a73 	.word	0x25203a73
d05e0d84:	0d20756c 	.word	0x0d20756c
d05e0d88:	0000000a 	.word	0x0000000a
d05e0d8c:	69646d72 	.word	0x69646d72
d05e0d90:	53203a72 	.word	0x53203a72
d05e0d94:	65636375 	.word	0x65636375
d05e0d98:	75667373 	.word	0x75667373
d05e0d9c:	20796c6c 	.word	0x20796c6c
d05e0da0:	6f6d6572 	.word	0x6f6d6572
d05e0da4:	3a646576 	.word	0x3a646576
d05e0da8:	0d732520 	.word	0x0d732520
d05e0dac:	0000000a 	.word	0x0000000a
d05e0db0:	6f530a0d 	.word	0x6f530a0d
d05e0db4:	6620656d 	.word	0x6620656d
d05e0db8:	73656c69 	.word	0x73656c69
d05e0dbc:	66656c20 	.word	0x66656c20
d05e0dc0:	65622074 	.word	0x65622074
d05e0dc4:	646e6968 	.word	0x646e6968
d05e0dc8:	0a0d202e 	.word	0x0a0d202e
d05e0dcc:	00000000 	.word	0x00000000
d05e0dd0:	69646d72 	.word	0x69646d72
d05e0dd4:	4e203a72 	.word	0x4e203a72
d05e0dd8:	7270206f 	.word	0x7270206f
d05e0ddc:	6572676f 	.word	0x6572676f
d05e0de0:	6f207373 	.word	0x6f207373
d05e0de4:	6874206e 	.word	0x6874206e
d05e0de8:	70207369 	.word	0x70207369
d05e0dec:	20737361 	.word	0x20737361
d05e0df0:	209480e2 	.word	0x209480e2
d05e0df4:	69766967 	.word	0x69766967
d05e0df8:	7520676e 	.word	0x7520676e
d05e0dfc:	0a70      	.short	0x0a70
d05e0dfe:	00          	.byte	0x00
d05e0dff:	23          	.byte	0x23
d05e0e00:	202b302d 	.word	0x202b302d
d05e0e04:	4c6c6800 	.word	0x4c6c6800
d05e0e08:	67666500 	.word	0x67666500
d05e0e0c:	00474645 	.word	0x00474645
d05e0e10:	33323130 	.word	0x33323130
d05e0e14:	37363534 	.word	0x37363534
d05e0e18:	42413938 	.word	0x42413938
d05e0e1c:	46454443 	.word	0x46454443
d05e0e20:	32313000 	.word	0x32313000
d05e0e24:	36353433 	.word	0x36353433
d05e0e28:	61393837 	.word	0x61393837
d05e0e2c:	65646362 	.word	0x65646362
d05e0e30:	Address 0x00000000d05e0e30 is out of bounds.


Disassembly of section .init:

d05e0e34 <_init>:
d05e0e34:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0e36:	bf00      	nop

Disassembly of section .fini:

d05e0e38 <_fini>:
d05e0e38:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0e3a:	bf00      	nop
