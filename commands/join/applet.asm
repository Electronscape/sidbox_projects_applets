
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d05e0010 <applet_entry>:
d05e0010:	f000 b80e 	b.w	d05e0030 <main>

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
d05e0028:	d05e0dd8 	.word	0xd05e0dd8
d05e002c:	d05e0df1 	.word	0xd05e0df1

d05e0030 <main>:
d05e0030:	4a7f      	ldr	r2, [pc, #508]	; (d05e0230 <main+0x200>)
d05e0032:	2804      	cmp	r0, #4
d05e0034:	6813      	ldr	r3, [r2, #0]
d05e0036:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05e003a:	f023 0310 	bic.w	r3, r3, #16
d05e003e:	ed2d 8b02 	vpush	{d8}
d05e0042:	f5ad 5d88 	sub.w	sp, sp, #4352	; 0x1100
d05e0046:	6013      	str	r3, [r2, #0]
d05e0048:	b087      	sub	sp, #28
d05e004a:	dd23      	ble.n	d05e0094 <main+0x64>
d05e004c:	460e      	mov	r6, r1
d05e004e:	4607      	mov	r7, r0
d05e0050:	4978      	ldr	r1, [pc, #480]	; (d05e0234 <main+0x204>)
d05e0052:	6870      	ldr	r0, [r6, #4]
d05e0054:	f000 f940 	bl	d05e02d8 <strcmp>
d05e0058:	b970      	cbnz	r0, d05e0078 <main+0x48>
d05e005a:	68f4      	ldr	r4, [r6, #12]
d05e005c:	4976      	ldr	r1, [pc, #472]	; (d05e0238 <main+0x208>)
d05e005e:	4620      	mov	r0, r4
d05e0060:	f000 f93a 	bl	d05e02d8 <strcmp>
d05e0064:	b9e8      	cbnz	r0, d05e00a2 <main+0x72>
d05e0066:	2f05      	cmp	r7, #5
d05e0068:	d135      	bne.n	d05e00d6 <main+0xa6>
d05e006a:	4b74      	ldr	r3, [pc, #464]	; (d05e023c <main+0x20c>)
d05e006c:	f04f 0a01 	mov.w	sl, #1
d05e0070:	4873      	ldr	r0, [pc, #460]	; (d05e0240 <main+0x210>)
d05e0072:	689b      	ldr	r3, [r3, #8]
d05e0074:	4798      	blx	r3
d05e0076:	e005      	b.n	d05e0084 <main+0x54>
d05e0078:	4b70      	ldr	r3, [pc, #448]	; (d05e023c <main+0x20c>)
d05e007a:	f04f 0a01 	mov.w	sl, #1
d05e007e:	4871      	ldr	r0, [pc, #452]	; (d05e0244 <main+0x214>)
d05e0080:	689b      	ldr	r3, [r3, #8]
d05e0082:	4798      	blx	r3
d05e0084:	4650      	mov	r0, sl
d05e0086:	f50d 5d88 	add.w	sp, sp, #4352	; 0x1100
d05e008a:	b007      	add	sp, #28
d05e008c:	ecbd 8b02 	vpop	{d8}
d05e0090:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e0094:	4b69      	ldr	r3, [pc, #420]	; (d05e023c <main+0x20c>)
d05e0096:	f04f 0a01 	mov.w	sl, #1
d05e009a:	486b      	ldr	r0, [pc, #428]	; (d05e0248 <main+0x218>)
d05e009c:	689b      	ldr	r3, [r3, #8]
d05e009e:	4798      	blx	r3
d05e00a0:	e7f0      	b.n	d05e0084 <main+0x54>
d05e00a2:	4620      	mov	r0, r4
d05e00a4:	4969      	ldr	r1, [pc, #420]	; (d05e024c <main+0x21c>)
d05e00a6:	f000 f917 	bl	d05e02d8 <strcmp>
d05e00aa:	4682      	mov	sl, r0
d05e00ac:	2800      	cmp	r0, #0
d05e00ae:	d1dc      	bne.n	d05e006a <main+0x3a>
d05e00b0:	68b3      	ldr	r3, [r6, #8]
d05e00b2:	220a      	movs	r2, #10
d05e00b4:	4619      	mov	r1, r3
d05e00b6:	ee08 3a10 	vmov	s16, r3
d05e00ba:	4b60      	ldr	r3, [pc, #384]	; (d05e023c <main+0x20c>)
d05e00bc:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
d05e00c0:	4798      	blx	r3
d05e00c2:	b1d0      	cbz	r0, d05e00fa <main+0xca>
d05e00c4:	4b5d      	ldr	r3, [pc, #372]	; (d05e023c <main+0x20c>)
d05e00c6:	ee18 1a10 	vmov	r1, s16
d05e00ca:	4861      	ldr	r0, [pc, #388]	; (d05e0250 <main+0x220>)
d05e00cc:	f04f 0a01 	mov.w	sl, #1
d05e00d0:	689b      	ldr	r3, [r3, #8]
d05e00d2:	4798      	blx	r3
d05e00d4:	e7d6      	b.n	d05e0084 <main+0x54>
d05e00d6:	495d      	ldr	r1, [pc, #372]	; (d05e024c <main+0x21c>)
d05e00d8:	6970      	ldr	r0, [r6, #20]
d05e00da:	f000 f8fd 	bl	d05e02d8 <strcmp>
d05e00de:	4682      	mov	sl, r0
d05e00e0:	2800      	cmp	r0, #0
d05e00e2:	d1c2      	bne.n	d05e006a <main+0x3a>
d05e00e4:	6933      	ldr	r3, [r6, #16]
d05e00e6:	2f06      	cmp	r7, #6
d05e00e8:	9305      	str	r3, [sp, #20]
d05e00ea:	d179      	bne.n	d05e01e0 <main+0x1b0>
d05e00ec:	4b53      	ldr	r3, [pc, #332]	; (d05e023c <main+0x20c>)
d05e00ee:	f04f 0a01 	mov.w	sl, #1
d05e00f2:	4858      	ldr	r0, [pc, #352]	; (d05e0254 <main+0x224>)
d05e00f4:	689b      	ldr	r3, [r3, #8]
d05e00f6:	4798      	blx	r3
d05e00f8:	e7c4      	b.n	d05e0084 <main+0x54>
d05e00fa:	f04f 0b04 	mov.w	fp, #4
d05e00fe:	f8cd a014 	str.w	sl, [sp, #20]
d05e0102:	f04f 0900 	mov.w	r9, #0
d05e0106:	46b0      	mov	r8, r6
d05e0108:	4d4c      	ldr	r5, [pc, #304]	; (d05e023c <main+0x20c>)
d05e010a:	464e      	mov	r6, r9
d05e010c:	9704      	str	r7, [sp, #16]
d05e010e:	e006      	b.n	d05e011e <main+0xee>
d05e0110:	4851      	ldr	r0, [pc, #324]	; (d05e0258 <main+0x228>)
d05e0112:	4798      	blx	r3
d05e0114:	f10b 0b01 	add.w	fp, fp, #1
d05e0118:	9b04      	ldr	r3, [sp, #16]
d05e011a:	455b      	cmp	r3, fp
d05e011c:	dd42      	ble.n	d05e01a4 <main+0x174>
d05e011e:	f858 102b 	ldr.w	r1, [r8, fp, lsl #2]
d05e0122:	a806      	add	r0, sp, #24
d05e0124:	9103      	str	r1, [sp, #12]
d05e0126:	f000 f8e1 	bl	d05e02ec <strcpy>
d05e012a:	2201      	movs	r2, #1
d05e012c:	9903      	ldr	r1, [sp, #12]
d05e012e:	f8d5 3094 	ldr.w	r3, [r5, #148]	; 0x94
d05e0132:	4610      	mov	r0, r2
d05e0134:	4798      	blx	r3
d05e0136:	9903      	ldr	r1, [sp, #12]
d05e0138:	4681      	mov	r9, r0
d05e013a:	68ab      	ldr	r3, [r5, #8]
d05e013c:	2800      	cmp	r0, #0
d05e013e:	d1e7      	bne.n	d05e0110 <main+0xe0>
d05e0140:	4846      	ldr	r0, [pc, #280]	; (d05e025c <main+0x22c>)
d05e0142:	ac26      	add	r4, sp, #152	; 0x98
d05e0144:	9103      	str	r1, [sp, #12]
d05e0146:	4798      	blx	r3
d05e0148:	9903      	ldr	r1, [sp, #12]
d05e014a:	f1ba 0f00 	cmp.w	sl, #0
d05e014e:	d007      	beq.n	d05e0160 <main+0x130>
d05e0150:	e018      	b.n	d05e0184 <main+0x154>
d05e0152:	6822      	ldr	r2, [r4, #0]
d05e0154:	b18a      	cbz	r2, d05e017a <main+0x14a>
d05e0156:	f8d5 70a4 	ldr.w	r7, [r5, #164]	; 0xa4
d05e015a:	47b8      	blx	r7
d05e015c:	6823      	ldr	r3, [r4, #0]
d05e015e:	441e      	add	r6, r3
d05e0160:	4623      	mov	r3, r4
d05e0162:	a946      	add	r1, sp, #280	; 0x118
d05e0164:	f8d5 70a0 	ldr.w	r7, [r5, #160]	; 0xa0
d05e0168:	f44f 5280 	mov.w	r2, #4096	; 0x1000
d05e016c:	2001      	movs	r0, #1
d05e016e:	47b8      	blx	r7
d05e0170:	f010 03ff 	ands.w	r3, r0, #255	; 0xff
d05e0174:	a946      	add	r1, sp, #280	; 0x118
d05e0176:	4618      	mov	r0, r3
d05e0178:	d0eb      	beq.n	d05e0152 <main+0x122>
d05e017a:	f8d5 3098 	ldr.w	r3, [r5, #152]	; 0x98
d05e017e:	2001      	movs	r0, #1
d05e0180:	4798      	blx	r3
d05e0182:	e7c7      	b.n	d05e0114 <main+0xe4>
d05e0184:	4633      	mov	r3, r6
d05e0186:	4620      	mov	r0, r4
d05e0188:	4a35      	ldr	r2, [pc, #212]	; (d05e0260 <main+0x230>)
d05e018a:	e9cd 1600 	strd	r1, r6, [sp]
d05e018e:	2180      	movs	r1, #128	; 0x80
d05e0190:	f000 f86e 	bl	d05e0270 <sniprintf>
d05e0194:	464b      	mov	r3, r9
d05e0196:	4602      	mov	r2, r0
d05e0198:	4621      	mov	r1, r4
d05e019a:	f8d5 90a4 	ldr.w	r9, [r5, #164]	; 0xa4
d05e019e:	2002      	movs	r0, #2
d05e01a0:	47c8      	blx	r9
d05e01a2:	e7dd      	b.n	d05e0160 <main+0x130>
d05e01a4:	4c25      	ldr	r4, [pc, #148]	; (d05e023c <main+0x20c>)
d05e01a6:	2000      	movs	r0, #0
d05e01a8:	f8d4 3098 	ldr.w	r3, [r4, #152]	; 0x98
d05e01ac:	4798      	blx	r3
d05e01ae:	f1ba 0f00 	cmp.w	sl, #0
d05e01b2:	d00f      	beq.n	d05e01d4 <main+0x1a4>
d05e01b4:	f8d4 3098 	ldr.w	r3, [r4, #152]	; 0x98
d05e01b8:	2002      	movs	r0, #2
d05e01ba:	4798      	blx	r3
d05e01bc:	ee18 1a10 	vmov	r1, s16
d05e01c0:	68a3      	ldr	r3, [r4, #8]
d05e01c2:	f04f 0a00 	mov.w	sl, #0
d05e01c6:	4827      	ldr	r0, [pc, #156]	; (d05e0264 <main+0x234>)
d05e01c8:	4798      	blx	r3
d05e01ca:	68a3      	ldr	r3, [r4, #8]
d05e01cc:	9905      	ldr	r1, [sp, #20]
d05e01ce:	4826      	ldr	r0, [pc, #152]	; (d05e0268 <main+0x238>)
d05e01d0:	4798      	blx	r3
d05e01d2:	e757      	b.n	d05e0084 <main+0x54>
d05e01d4:	68a3      	ldr	r3, [r4, #8]
d05e01d6:	ee18 1a10 	vmov	r1, s16
d05e01da:	4822      	ldr	r0, [pc, #136]	; (d05e0264 <main+0x234>)
d05e01dc:	4798      	blx	r3
d05e01de:	e751      	b.n	d05e0084 <main+0x54>
d05e01e0:	68b3      	ldr	r3, [r6, #8]
d05e01e2:	220a      	movs	r2, #10
d05e01e4:	4c15      	ldr	r4, [pc, #84]	; (d05e023c <main+0x20c>)
d05e01e6:	ee08 3a10 	vmov	s16, r3
d05e01ea:	4619      	mov	r1, r3
d05e01ec:	f8d4 3094 	ldr.w	r3, [r4, #148]	; 0x94
d05e01f0:	4798      	blx	r3
d05e01f2:	2800      	cmp	r0, #0
d05e01f4:	f47f af66 	bne.w	d05e00c4 <main+0x94>
d05e01f8:	9905      	ldr	r1, [sp, #20]
d05e01fa:	b1a9      	cbz	r1, d05e0228 <main+0x1f8>
d05e01fc:	f8d4 3094 	ldr.w	r3, [r4, #148]	; 0x94
d05e0200:	220a      	movs	r2, #10
d05e0202:	2002      	movs	r0, #2
d05e0204:	4798      	blx	r3
d05e0206:	b920      	cbnz	r0, d05e0212 <main+0x1e2>
d05e0208:	f04f 0b06 	mov.w	fp, #6
d05e020c:	f04f 0a01 	mov.w	sl, #1
d05e0210:	e777      	b.n	d05e0102 <main+0xd2>
d05e0212:	68a3      	ldr	r3, [r4, #8]
d05e0214:	9905      	ldr	r1, [sp, #20]
d05e0216:	4815      	ldr	r0, [pc, #84]	; (d05e026c <main+0x23c>)
d05e0218:	4798      	blx	r3
d05e021a:	f8d4 3098 	ldr.w	r3, [r4, #152]	; 0x98
d05e021e:	4650      	mov	r0, sl
d05e0220:	f04f 0a01 	mov.w	sl, #1
d05e0224:	4798      	blx	r3
d05e0226:	e72d      	b.n	d05e0084 <main+0x54>
d05e0228:	f04f 0b06 	mov.w	fp, #6
d05e022c:	e769      	b.n	d05e0102 <main+0xd2>
d05e022e:	bf00      	nop
d05e0230:	e000ed14 	.word	0xe000ed14
d05e0234:	d05e0c0c 	.word	0xd05e0c0c
d05e0238:	d05e0c10 	.word	0xd05e0c10
d05e023c:	2001f000 	.word	0x2001f000
d05e0240:	d05e0c34 	.word	0xd05e0c34
d05e0244:	d05e0c14 	.word	0xd05e0c14
d05e0248:	d05e0bbc 	.word	0xd05e0bbc
d05e024c:	d05e0c30 	.word	0xd05e0c30
d05e0250:	d05e0c70 	.word	0xd05e0c70
d05e0254:	d05e0c54 	.word	0xd05e0c54
d05e0258:	d05e0cb0 	.word	0xd05e0cb0
d05e025c:	d05e0cd0 	.word	0xd05e0cd0
d05e0260:	d05e0ce4 	.word	0xd05e0ce4
d05e0264:	d05e0d08 	.word	0xd05e0d08
d05e0268:	d05e0d20 	.word	0xd05e0d20
d05e026c:	d05e0c90 	.word	0xd05e0c90

d05e0270 <sniprintf>:
d05e0270:	b40c      	push	{r2, r3}
d05e0272:	b530      	push	{r4, r5, lr}
d05e0274:	4b17      	ldr	r3, [pc, #92]	; (d05e02d4 <sniprintf+0x64>)
d05e0276:	1e0c      	subs	r4, r1, #0
d05e0278:	681d      	ldr	r5, [r3, #0]
d05e027a:	b09d      	sub	sp, #116	; 0x74
d05e027c:	da08      	bge.n	d05e0290 <sniprintf+0x20>
d05e027e:	238b      	movs	r3, #139	; 0x8b
d05e0280:	602b      	str	r3, [r5, #0]
d05e0282:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e0286:	b01d      	add	sp, #116	; 0x74
d05e0288:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05e028c:	b002      	add	sp, #8
d05e028e:	4770      	bx	lr
d05e0290:	f44f 7302 	mov.w	r3, #520	; 0x208
d05e0294:	f8ad 3014 	strh.w	r3, [sp, #20]
d05e0298:	bf14      	ite	ne
d05e029a:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d05e029e:	4623      	moveq	r3, r4
d05e02a0:	9304      	str	r3, [sp, #16]
d05e02a2:	9307      	str	r3, [sp, #28]
d05e02a4:	f64f 73ff 	movw	r3, #65535	; 0xffff
d05e02a8:	9002      	str	r0, [sp, #8]
d05e02aa:	9006      	str	r0, [sp, #24]
d05e02ac:	f8ad 3016 	strh.w	r3, [sp, #22]
d05e02b0:	9a20      	ldr	r2, [sp, #128]	; 0x80
d05e02b2:	ab21      	add	r3, sp, #132	; 0x84
d05e02b4:	a902      	add	r1, sp, #8
d05e02b6:	4628      	mov	r0, r5
d05e02b8:	9301      	str	r3, [sp, #4]
d05e02ba:	f000 f87b 	bl	d05e03b4 <_svfiprintf_r>
d05e02be:	1c43      	adds	r3, r0, #1
d05e02c0:	bfbc      	itt	lt
d05e02c2:	238b      	movlt	r3, #139	; 0x8b
d05e02c4:	602b      	strlt	r3, [r5, #0]
d05e02c6:	2c00      	cmp	r4, #0
d05e02c8:	d0dd      	beq.n	d05e0286 <sniprintf+0x16>
d05e02ca:	9b02      	ldr	r3, [sp, #8]
d05e02cc:	2200      	movs	r2, #0
d05e02ce:	701a      	strb	r2, [r3, #0]
d05e02d0:	e7d9      	b.n	d05e0286 <sniprintf+0x16>
d05e02d2:	bf00      	nop
d05e02d4:	d05e0d74 	.word	0xd05e0d74

d05e02d8 <strcmp>:
d05e02d8:	f810 2b01 	ldrb.w	r2, [r0], #1
d05e02dc:	f811 3b01 	ldrb.w	r3, [r1], #1
d05e02e0:	2a01      	cmp	r2, #1
d05e02e2:	bf28      	it	cs
d05e02e4:	429a      	cmpcs	r2, r3
d05e02e6:	d0f7      	beq.n	d05e02d8 <strcmp>
d05e02e8:	1ad0      	subs	r0, r2, r3
d05e02ea:	4770      	bx	lr

d05e02ec <strcpy>:
d05e02ec:	4603      	mov	r3, r0
d05e02ee:	f811 2b01 	ldrb.w	r2, [r1], #1
d05e02f2:	f803 2b01 	strb.w	r2, [r3], #1
d05e02f6:	2a00      	cmp	r2, #0
d05e02f8:	d1f9      	bne.n	d05e02ee <strcpy+0x2>
d05e02fa:	4770      	bx	lr

d05e02fc <__ssputs_r>:
d05e02fc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05e0300:	688e      	ldr	r6, [r1, #8]
d05e0302:	429e      	cmp	r6, r3
d05e0304:	4682      	mov	sl, r0
d05e0306:	460c      	mov	r4, r1
d05e0308:	4690      	mov	r8, r2
d05e030a:	461f      	mov	r7, r3
d05e030c:	d838      	bhi.n	d05e0380 <__ssputs_r+0x84>
d05e030e:	898a      	ldrh	r2, [r1, #12]
d05e0310:	f412 6f90 	tst.w	r2, #1152	; 0x480
d05e0314:	d032      	beq.n	d05e037c <__ssputs_r+0x80>
d05e0316:	6825      	ldr	r5, [r4, #0]
d05e0318:	6909      	ldr	r1, [r1, #16]
d05e031a:	eba5 0901 	sub.w	r9, r5, r1
d05e031e:	6965      	ldr	r5, [r4, #20]
d05e0320:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05e0324:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d05e0328:	3301      	adds	r3, #1
d05e032a:	444b      	add	r3, r9
d05e032c:	106d      	asrs	r5, r5, #1
d05e032e:	429d      	cmp	r5, r3
d05e0330:	bf38      	it	cc
d05e0332:	461d      	movcc	r5, r3
d05e0334:	0553      	lsls	r3, r2, #21
d05e0336:	d531      	bpl.n	d05e039c <__ssputs_r+0xa0>
d05e0338:	4629      	mov	r1, r5
d05e033a:	f000 fb99 	bl	d05e0a70 <_malloc_r>
d05e033e:	4606      	mov	r6, r0
d05e0340:	b950      	cbnz	r0, d05e0358 <__ssputs_r+0x5c>
d05e0342:	230c      	movs	r3, #12
d05e0344:	f8ca 3000 	str.w	r3, [sl]
d05e0348:	89a3      	ldrh	r3, [r4, #12]
d05e034a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05e034e:	81a3      	strh	r3, [r4, #12]
d05e0350:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e0354:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e0358:	6921      	ldr	r1, [r4, #16]
d05e035a:	464a      	mov	r2, r9
d05e035c:	f000 fb10 	bl	d05e0980 <memcpy>
d05e0360:	89a3      	ldrh	r3, [r4, #12]
d05e0362:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d05e0366:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05e036a:	81a3      	strh	r3, [r4, #12]
d05e036c:	6126      	str	r6, [r4, #16]
d05e036e:	6165      	str	r5, [r4, #20]
d05e0370:	444e      	add	r6, r9
d05e0372:	eba5 0509 	sub.w	r5, r5, r9
d05e0376:	6026      	str	r6, [r4, #0]
d05e0378:	60a5      	str	r5, [r4, #8]
d05e037a:	463e      	mov	r6, r7
d05e037c:	42be      	cmp	r6, r7
d05e037e:	d900      	bls.n	d05e0382 <__ssputs_r+0x86>
d05e0380:	463e      	mov	r6, r7
d05e0382:	4632      	mov	r2, r6
d05e0384:	6820      	ldr	r0, [r4, #0]
d05e0386:	4641      	mov	r1, r8
d05e0388:	f000 fb08 	bl	d05e099c <memmove>
d05e038c:	68a3      	ldr	r3, [r4, #8]
d05e038e:	6822      	ldr	r2, [r4, #0]
d05e0390:	1b9b      	subs	r3, r3, r6
d05e0392:	4432      	add	r2, r6
d05e0394:	60a3      	str	r3, [r4, #8]
d05e0396:	6022      	str	r2, [r4, #0]
d05e0398:	2000      	movs	r0, #0
d05e039a:	e7db      	b.n	d05e0354 <__ssputs_r+0x58>
d05e039c:	462a      	mov	r2, r5
d05e039e:	f000 fbc1 	bl	d05e0b24 <_realloc_r>
d05e03a2:	4606      	mov	r6, r0
d05e03a4:	2800      	cmp	r0, #0
d05e03a6:	d1e1      	bne.n	d05e036c <__ssputs_r+0x70>
d05e03a8:	6921      	ldr	r1, [r4, #16]
d05e03aa:	4650      	mov	r0, sl
d05e03ac:	f000 fb10 	bl	d05e09d0 <_free_r>
d05e03b0:	e7c7      	b.n	d05e0342 <__ssputs_r+0x46>
	...

d05e03b4 <_svfiprintf_r>:
d05e03b4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05e03b8:	4698      	mov	r8, r3
d05e03ba:	898b      	ldrh	r3, [r1, #12]
d05e03bc:	061b      	lsls	r3, r3, #24
d05e03be:	b09d      	sub	sp, #116	; 0x74
d05e03c0:	4607      	mov	r7, r0
d05e03c2:	460d      	mov	r5, r1
d05e03c4:	4614      	mov	r4, r2
d05e03c6:	d50e      	bpl.n	d05e03e6 <_svfiprintf_r+0x32>
d05e03c8:	690b      	ldr	r3, [r1, #16]
d05e03ca:	b963      	cbnz	r3, d05e03e6 <_svfiprintf_r+0x32>
d05e03cc:	2140      	movs	r1, #64	; 0x40
d05e03ce:	f000 fb4f 	bl	d05e0a70 <_malloc_r>
d05e03d2:	6028      	str	r0, [r5, #0]
d05e03d4:	6128      	str	r0, [r5, #16]
d05e03d6:	b920      	cbnz	r0, d05e03e2 <_svfiprintf_r+0x2e>
d05e03d8:	230c      	movs	r3, #12
d05e03da:	603b      	str	r3, [r7, #0]
d05e03dc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e03e0:	e0d1      	b.n	d05e0586 <_svfiprintf_r+0x1d2>
d05e03e2:	2340      	movs	r3, #64	; 0x40
d05e03e4:	616b      	str	r3, [r5, #20]
d05e03e6:	2300      	movs	r3, #0
d05e03e8:	9309      	str	r3, [sp, #36]	; 0x24
d05e03ea:	2320      	movs	r3, #32
d05e03ec:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d05e03f0:	f8cd 800c 	str.w	r8, [sp, #12]
d05e03f4:	2330      	movs	r3, #48	; 0x30
d05e03f6:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d05e05a0 <_svfiprintf_r+0x1ec>
d05e03fa:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d05e03fe:	f04f 0901 	mov.w	r9, #1
d05e0402:	4623      	mov	r3, r4
d05e0404:	469a      	mov	sl, r3
d05e0406:	f813 2b01 	ldrb.w	r2, [r3], #1
d05e040a:	b10a      	cbz	r2, d05e0410 <_svfiprintf_r+0x5c>
d05e040c:	2a25      	cmp	r2, #37	; 0x25
d05e040e:	d1f9      	bne.n	d05e0404 <_svfiprintf_r+0x50>
d05e0410:	ebba 0b04 	subs.w	fp, sl, r4
d05e0414:	d00b      	beq.n	d05e042e <_svfiprintf_r+0x7a>
d05e0416:	465b      	mov	r3, fp
d05e0418:	4622      	mov	r2, r4
d05e041a:	4629      	mov	r1, r5
d05e041c:	4638      	mov	r0, r7
d05e041e:	f7ff ff6d 	bl	d05e02fc <__ssputs_r>
d05e0422:	3001      	adds	r0, #1
d05e0424:	f000 80aa 	beq.w	d05e057c <_svfiprintf_r+0x1c8>
d05e0428:	9a09      	ldr	r2, [sp, #36]	; 0x24
d05e042a:	445a      	add	r2, fp
d05e042c:	9209      	str	r2, [sp, #36]	; 0x24
d05e042e:	f89a 3000 	ldrb.w	r3, [sl]
d05e0432:	2b00      	cmp	r3, #0
d05e0434:	f000 80a2 	beq.w	d05e057c <_svfiprintf_r+0x1c8>
d05e0438:	2300      	movs	r3, #0
d05e043a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d05e043e:	e9cd 2305 	strd	r2, r3, [sp, #20]
d05e0442:	f10a 0a01 	add.w	sl, sl, #1
d05e0446:	9304      	str	r3, [sp, #16]
d05e0448:	9307      	str	r3, [sp, #28]
d05e044a:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d05e044e:	931a      	str	r3, [sp, #104]	; 0x68
d05e0450:	4654      	mov	r4, sl
d05e0452:	2205      	movs	r2, #5
d05e0454:	f814 1b01 	ldrb.w	r1, [r4], #1
d05e0458:	4851      	ldr	r0, [pc, #324]	; (d05e05a0 <_svfiprintf_r+0x1ec>)
d05e045a:	f000 fa41 	bl	d05e08e0 <memchr>
d05e045e:	9a04      	ldr	r2, [sp, #16]
d05e0460:	b9d8      	cbnz	r0, d05e049a <_svfiprintf_r+0xe6>
d05e0462:	06d0      	lsls	r0, r2, #27
d05e0464:	bf44      	itt	mi
d05e0466:	2320      	movmi	r3, #32
d05e0468:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05e046c:	0711      	lsls	r1, r2, #28
d05e046e:	bf44      	itt	mi
d05e0470:	232b      	movmi	r3, #43	; 0x2b
d05e0472:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05e0476:	f89a 3000 	ldrb.w	r3, [sl]
d05e047a:	2b2a      	cmp	r3, #42	; 0x2a
d05e047c:	d015      	beq.n	d05e04aa <_svfiprintf_r+0xf6>
d05e047e:	9a07      	ldr	r2, [sp, #28]
d05e0480:	4654      	mov	r4, sl
d05e0482:	2000      	movs	r0, #0
d05e0484:	f04f 0c0a 	mov.w	ip, #10
d05e0488:	4621      	mov	r1, r4
d05e048a:	f811 3b01 	ldrb.w	r3, [r1], #1
d05e048e:	3b30      	subs	r3, #48	; 0x30
d05e0490:	2b09      	cmp	r3, #9
d05e0492:	d94e      	bls.n	d05e0532 <_svfiprintf_r+0x17e>
d05e0494:	b1b0      	cbz	r0, d05e04c4 <_svfiprintf_r+0x110>
d05e0496:	9207      	str	r2, [sp, #28]
d05e0498:	e014      	b.n	d05e04c4 <_svfiprintf_r+0x110>
d05e049a:	eba0 0308 	sub.w	r3, r0, r8
d05e049e:	fa09 f303 	lsl.w	r3, r9, r3
d05e04a2:	4313      	orrs	r3, r2
d05e04a4:	9304      	str	r3, [sp, #16]
d05e04a6:	46a2      	mov	sl, r4
d05e04a8:	e7d2      	b.n	d05e0450 <_svfiprintf_r+0x9c>
d05e04aa:	9b03      	ldr	r3, [sp, #12]
d05e04ac:	1d19      	adds	r1, r3, #4
d05e04ae:	681b      	ldr	r3, [r3, #0]
d05e04b0:	9103      	str	r1, [sp, #12]
d05e04b2:	2b00      	cmp	r3, #0
d05e04b4:	bfbb      	ittet	lt
d05e04b6:	425b      	neglt	r3, r3
d05e04b8:	f042 0202 	orrlt.w	r2, r2, #2
d05e04bc:	9307      	strge	r3, [sp, #28]
d05e04be:	9307      	strlt	r3, [sp, #28]
d05e04c0:	bfb8      	it	lt
d05e04c2:	9204      	strlt	r2, [sp, #16]
d05e04c4:	7823      	ldrb	r3, [r4, #0]
d05e04c6:	2b2e      	cmp	r3, #46	; 0x2e
d05e04c8:	d10c      	bne.n	d05e04e4 <_svfiprintf_r+0x130>
d05e04ca:	7863      	ldrb	r3, [r4, #1]
d05e04cc:	2b2a      	cmp	r3, #42	; 0x2a
d05e04ce:	d135      	bne.n	d05e053c <_svfiprintf_r+0x188>
d05e04d0:	9b03      	ldr	r3, [sp, #12]
d05e04d2:	1d1a      	adds	r2, r3, #4
d05e04d4:	681b      	ldr	r3, [r3, #0]
d05e04d6:	9203      	str	r2, [sp, #12]
d05e04d8:	2b00      	cmp	r3, #0
d05e04da:	bfb8      	it	lt
d05e04dc:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d05e04e0:	3402      	adds	r4, #2
d05e04e2:	9305      	str	r3, [sp, #20]
d05e04e4:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d05e05b0 <_svfiprintf_r+0x1fc>
d05e04e8:	7821      	ldrb	r1, [r4, #0]
d05e04ea:	2203      	movs	r2, #3
d05e04ec:	4650      	mov	r0, sl
d05e04ee:	f000 f9f7 	bl	d05e08e0 <memchr>
d05e04f2:	b140      	cbz	r0, d05e0506 <_svfiprintf_r+0x152>
d05e04f4:	2340      	movs	r3, #64	; 0x40
d05e04f6:	eba0 000a 	sub.w	r0, r0, sl
d05e04fa:	fa03 f000 	lsl.w	r0, r3, r0
d05e04fe:	9b04      	ldr	r3, [sp, #16]
d05e0500:	4303      	orrs	r3, r0
d05e0502:	3401      	adds	r4, #1
d05e0504:	9304      	str	r3, [sp, #16]
d05e0506:	f814 1b01 	ldrb.w	r1, [r4], #1
d05e050a:	4826      	ldr	r0, [pc, #152]	; (d05e05a4 <_svfiprintf_r+0x1f0>)
d05e050c:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d05e0510:	2206      	movs	r2, #6
d05e0512:	f000 f9e5 	bl	d05e08e0 <memchr>
d05e0516:	2800      	cmp	r0, #0
d05e0518:	d038      	beq.n	d05e058c <_svfiprintf_r+0x1d8>
d05e051a:	4b23      	ldr	r3, [pc, #140]	; (d05e05a8 <_svfiprintf_r+0x1f4>)
d05e051c:	bb1b      	cbnz	r3, d05e0566 <_svfiprintf_r+0x1b2>
d05e051e:	9b03      	ldr	r3, [sp, #12]
d05e0520:	3307      	adds	r3, #7
d05e0522:	f023 0307 	bic.w	r3, r3, #7
d05e0526:	3308      	adds	r3, #8
d05e0528:	9303      	str	r3, [sp, #12]
d05e052a:	9b09      	ldr	r3, [sp, #36]	; 0x24
d05e052c:	4433      	add	r3, r6
d05e052e:	9309      	str	r3, [sp, #36]	; 0x24
d05e0530:	e767      	b.n	d05e0402 <_svfiprintf_r+0x4e>
d05e0532:	fb0c 3202 	mla	r2, ip, r2, r3
d05e0536:	460c      	mov	r4, r1
d05e0538:	2001      	movs	r0, #1
d05e053a:	e7a5      	b.n	d05e0488 <_svfiprintf_r+0xd4>
d05e053c:	2300      	movs	r3, #0
d05e053e:	3401      	adds	r4, #1
d05e0540:	9305      	str	r3, [sp, #20]
d05e0542:	4619      	mov	r1, r3
d05e0544:	f04f 0c0a 	mov.w	ip, #10
d05e0548:	4620      	mov	r0, r4
d05e054a:	f810 2b01 	ldrb.w	r2, [r0], #1
d05e054e:	3a30      	subs	r2, #48	; 0x30
d05e0550:	2a09      	cmp	r2, #9
d05e0552:	d903      	bls.n	d05e055c <_svfiprintf_r+0x1a8>
d05e0554:	2b00      	cmp	r3, #0
d05e0556:	d0c5      	beq.n	d05e04e4 <_svfiprintf_r+0x130>
d05e0558:	9105      	str	r1, [sp, #20]
d05e055a:	e7c3      	b.n	d05e04e4 <_svfiprintf_r+0x130>
d05e055c:	fb0c 2101 	mla	r1, ip, r1, r2
d05e0560:	4604      	mov	r4, r0
d05e0562:	2301      	movs	r3, #1
d05e0564:	e7f0      	b.n	d05e0548 <_svfiprintf_r+0x194>
d05e0566:	ab03      	add	r3, sp, #12
d05e0568:	9300      	str	r3, [sp, #0]
d05e056a:	462a      	mov	r2, r5
d05e056c:	4b0f      	ldr	r3, [pc, #60]	; (d05e05ac <_svfiprintf_r+0x1f8>)
d05e056e:	a904      	add	r1, sp, #16
d05e0570:	4638      	mov	r0, r7
d05e0572:	f3af 8000 	nop.w
d05e0576:	1c42      	adds	r2, r0, #1
d05e0578:	4606      	mov	r6, r0
d05e057a:	d1d6      	bne.n	d05e052a <_svfiprintf_r+0x176>
d05e057c:	89ab      	ldrh	r3, [r5, #12]
d05e057e:	065b      	lsls	r3, r3, #25
d05e0580:	f53f af2c 	bmi.w	d05e03dc <_svfiprintf_r+0x28>
d05e0584:	9809      	ldr	r0, [sp, #36]	; 0x24
d05e0586:	b01d      	add	sp, #116	; 0x74
d05e0588:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e058c:	ab03      	add	r3, sp, #12
d05e058e:	9300      	str	r3, [sp, #0]
d05e0590:	462a      	mov	r2, r5
d05e0592:	4b06      	ldr	r3, [pc, #24]	; (d05e05ac <_svfiprintf_r+0x1f8>)
d05e0594:	a904      	add	r1, sp, #16
d05e0596:	4638      	mov	r0, r7
d05e0598:	f000 f87a 	bl	d05e0690 <_printf_i>
d05e059c:	e7eb      	b.n	d05e0576 <_svfiprintf_r+0x1c2>
d05e059e:	bf00      	nop
d05e05a0:	d05e0d38 	.word	0xd05e0d38
d05e05a4:	d05e0d42 	.word	0xd05e0d42
d05e05a8:	00000000 	.word	0x00000000
d05e05ac:	d05e02fd 	.word	0xd05e02fd
d05e05b0:	d05e0d3e 	.word	0xd05e0d3e

d05e05b4 <_printf_common>:
d05e05b4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05e05b8:	4616      	mov	r6, r2
d05e05ba:	4699      	mov	r9, r3
d05e05bc:	688a      	ldr	r2, [r1, #8]
d05e05be:	690b      	ldr	r3, [r1, #16]
d05e05c0:	f8dd 8020 	ldr.w	r8, [sp, #32]
d05e05c4:	4293      	cmp	r3, r2
d05e05c6:	bfb8      	it	lt
d05e05c8:	4613      	movlt	r3, r2
d05e05ca:	6033      	str	r3, [r6, #0]
d05e05cc:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d05e05d0:	4607      	mov	r7, r0
d05e05d2:	460c      	mov	r4, r1
d05e05d4:	b10a      	cbz	r2, d05e05da <_printf_common+0x26>
d05e05d6:	3301      	adds	r3, #1
d05e05d8:	6033      	str	r3, [r6, #0]
d05e05da:	6823      	ldr	r3, [r4, #0]
d05e05dc:	0699      	lsls	r1, r3, #26
d05e05de:	bf42      	ittt	mi
d05e05e0:	6833      	ldrmi	r3, [r6, #0]
d05e05e2:	3302      	addmi	r3, #2
d05e05e4:	6033      	strmi	r3, [r6, #0]
d05e05e6:	6825      	ldr	r5, [r4, #0]
d05e05e8:	f015 0506 	ands.w	r5, r5, #6
d05e05ec:	d106      	bne.n	d05e05fc <_printf_common+0x48>
d05e05ee:	f104 0a19 	add.w	sl, r4, #25
d05e05f2:	68e3      	ldr	r3, [r4, #12]
d05e05f4:	6832      	ldr	r2, [r6, #0]
d05e05f6:	1a9b      	subs	r3, r3, r2
d05e05f8:	42ab      	cmp	r3, r5
d05e05fa:	dc26      	bgt.n	d05e064a <_printf_common+0x96>
d05e05fc:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d05e0600:	1e13      	subs	r3, r2, #0
d05e0602:	6822      	ldr	r2, [r4, #0]
d05e0604:	bf18      	it	ne
d05e0606:	2301      	movne	r3, #1
d05e0608:	0692      	lsls	r2, r2, #26
d05e060a:	d42b      	bmi.n	d05e0664 <_printf_common+0xb0>
d05e060c:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05e0610:	4649      	mov	r1, r9
d05e0612:	4638      	mov	r0, r7
d05e0614:	47c0      	blx	r8
d05e0616:	3001      	adds	r0, #1
d05e0618:	d01e      	beq.n	d05e0658 <_printf_common+0xa4>
d05e061a:	6823      	ldr	r3, [r4, #0]
d05e061c:	68e5      	ldr	r5, [r4, #12]
d05e061e:	6832      	ldr	r2, [r6, #0]
d05e0620:	f003 0306 	and.w	r3, r3, #6
d05e0624:	2b04      	cmp	r3, #4
d05e0626:	bf08      	it	eq
d05e0628:	1aad      	subeq	r5, r5, r2
d05e062a:	68a3      	ldr	r3, [r4, #8]
d05e062c:	6922      	ldr	r2, [r4, #16]
d05e062e:	bf0c      	ite	eq
d05e0630:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d05e0634:	2500      	movne	r5, #0
d05e0636:	4293      	cmp	r3, r2
d05e0638:	bfc4      	itt	gt
d05e063a:	1a9b      	subgt	r3, r3, r2
d05e063c:	18ed      	addgt	r5, r5, r3
d05e063e:	2600      	movs	r6, #0
d05e0640:	341a      	adds	r4, #26
d05e0642:	42b5      	cmp	r5, r6
d05e0644:	d11a      	bne.n	d05e067c <_printf_common+0xc8>
d05e0646:	2000      	movs	r0, #0
d05e0648:	e008      	b.n	d05e065c <_printf_common+0xa8>
d05e064a:	2301      	movs	r3, #1
d05e064c:	4652      	mov	r2, sl
d05e064e:	4649      	mov	r1, r9
d05e0650:	4638      	mov	r0, r7
d05e0652:	47c0      	blx	r8
d05e0654:	3001      	adds	r0, #1
d05e0656:	d103      	bne.n	d05e0660 <_printf_common+0xac>
d05e0658:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e065c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e0660:	3501      	adds	r5, #1
d05e0662:	e7c6      	b.n	d05e05f2 <_printf_common+0x3e>
d05e0664:	18e1      	adds	r1, r4, r3
d05e0666:	1c5a      	adds	r2, r3, #1
d05e0668:	2030      	movs	r0, #48	; 0x30
d05e066a:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d05e066e:	4422      	add	r2, r4
d05e0670:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d05e0674:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d05e0678:	3302      	adds	r3, #2
d05e067a:	e7c7      	b.n	d05e060c <_printf_common+0x58>
d05e067c:	2301      	movs	r3, #1
d05e067e:	4622      	mov	r2, r4
d05e0680:	4649      	mov	r1, r9
d05e0682:	4638      	mov	r0, r7
d05e0684:	47c0      	blx	r8
d05e0686:	3001      	adds	r0, #1
d05e0688:	d0e6      	beq.n	d05e0658 <_printf_common+0xa4>
d05e068a:	3601      	adds	r6, #1
d05e068c:	e7d9      	b.n	d05e0642 <_printf_common+0x8e>
	...

d05e0690 <_printf_i>:
d05e0690:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d05e0694:	460c      	mov	r4, r1
d05e0696:	4691      	mov	r9, r2
d05e0698:	7e27      	ldrb	r7, [r4, #24]
d05e069a:	990c      	ldr	r1, [sp, #48]	; 0x30
d05e069c:	2f78      	cmp	r7, #120	; 0x78
d05e069e:	4680      	mov	r8, r0
d05e06a0:	469a      	mov	sl, r3
d05e06a2:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05e06a6:	d807      	bhi.n	d05e06b8 <_printf_i+0x28>
d05e06a8:	2f62      	cmp	r7, #98	; 0x62
d05e06aa:	d80a      	bhi.n	d05e06c2 <_printf_i+0x32>
d05e06ac:	2f00      	cmp	r7, #0
d05e06ae:	f000 80d8 	beq.w	d05e0862 <_printf_i+0x1d2>
d05e06b2:	2f58      	cmp	r7, #88	; 0x58
d05e06b4:	f000 80a3 	beq.w	d05e07fe <_printf_i+0x16e>
d05e06b8:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05e06bc:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d05e06c0:	e03a      	b.n	d05e0738 <_printf_i+0xa8>
d05e06c2:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d05e06c6:	2b15      	cmp	r3, #21
d05e06c8:	d8f6      	bhi.n	d05e06b8 <_printf_i+0x28>
d05e06ca:	a001      	add	r0, pc, #4	; (adr r0, d05e06d0 <_printf_i+0x40>)
d05e06cc:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d05e06d0:	d05e0729 	.word	0xd05e0729
d05e06d4:	d05e073d 	.word	0xd05e073d
d05e06d8:	d05e06b9 	.word	0xd05e06b9
d05e06dc:	d05e06b9 	.word	0xd05e06b9
d05e06e0:	d05e06b9 	.word	0xd05e06b9
d05e06e4:	d05e06b9 	.word	0xd05e06b9
d05e06e8:	d05e073d 	.word	0xd05e073d
d05e06ec:	d05e06b9 	.word	0xd05e06b9
d05e06f0:	d05e06b9 	.word	0xd05e06b9
d05e06f4:	d05e06b9 	.word	0xd05e06b9
d05e06f8:	d05e06b9 	.word	0xd05e06b9
d05e06fc:	d05e0849 	.word	0xd05e0849
d05e0700:	d05e076d 	.word	0xd05e076d
d05e0704:	d05e082b 	.word	0xd05e082b
d05e0708:	d05e06b9 	.word	0xd05e06b9
d05e070c:	d05e06b9 	.word	0xd05e06b9
d05e0710:	d05e086b 	.word	0xd05e086b
d05e0714:	d05e06b9 	.word	0xd05e06b9
d05e0718:	d05e076d 	.word	0xd05e076d
d05e071c:	d05e06b9 	.word	0xd05e06b9
d05e0720:	d05e06b9 	.word	0xd05e06b9
d05e0724:	d05e0833 	.word	0xd05e0833
d05e0728:	680b      	ldr	r3, [r1, #0]
d05e072a:	1d1a      	adds	r2, r3, #4
d05e072c:	681b      	ldr	r3, [r3, #0]
d05e072e:	600a      	str	r2, [r1, #0]
d05e0730:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05e0734:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d05e0738:	2301      	movs	r3, #1
d05e073a:	e0a3      	b.n	d05e0884 <_printf_i+0x1f4>
d05e073c:	6825      	ldr	r5, [r4, #0]
d05e073e:	6808      	ldr	r0, [r1, #0]
d05e0740:	062e      	lsls	r6, r5, #24
d05e0742:	f100 0304 	add.w	r3, r0, #4
d05e0746:	d50a      	bpl.n	d05e075e <_printf_i+0xce>
d05e0748:	6805      	ldr	r5, [r0, #0]
d05e074a:	600b      	str	r3, [r1, #0]
d05e074c:	2d00      	cmp	r5, #0
d05e074e:	da03      	bge.n	d05e0758 <_printf_i+0xc8>
d05e0750:	232d      	movs	r3, #45	; 0x2d
d05e0752:	426d      	negs	r5, r5
d05e0754:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05e0758:	485e      	ldr	r0, [pc, #376]	; (d05e08d4 <_printf_i+0x244>)
d05e075a:	230a      	movs	r3, #10
d05e075c:	e019      	b.n	d05e0792 <_printf_i+0x102>
d05e075e:	f015 0f40 	tst.w	r5, #64	; 0x40
d05e0762:	6805      	ldr	r5, [r0, #0]
d05e0764:	600b      	str	r3, [r1, #0]
d05e0766:	bf18      	it	ne
d05e0768:	b22d      	sxthne	r5, r5
d05e076a:	e7ef      	b.n	d05e074c <_printf_i+0xbc>
d05e076c:	680b      	ldr	r3, [r1, #0]
d05e076e:	6825      	ldr	r5, [r4, #0]
d05e0770:	1d18      	adds	r0, r3, #4
d05e0772:	6008      	str	r0, [r1, #0]
d05e0774:	0628      	lsls	r0, r5, #24
d05e0776:	d501      	bpl.n	d05e077c <_printf_i+0xec>
d05e0778:	681d      	ldr	r5, [r3, #0]
d05e077a:	e002      	b.n	d05e0782 <_printf_i+0xf2>
d05e077c:	0669      	lsls	r1, r5, #25
d05e077e:	d5fb      	bpl.n	d05e0778 <_printf_i+0xe8>
d05e0780:	881d      	ldrh	r5, [r3, #0]
d05e0782:	4854      	ldr	r0, [pc, #336]	; (d05e08d4 <_printf_i+0x244>)
d05e0784:	2f6f      	cmp	r7, #111	; 0x6f
d05e0786:	bf0c      	ite	eq
d05e0788:	2308      	moveq	r3, #8
d05e078a:	230a      	movne	r3, #10
d05e078c:	2100      	movs	r1, #0
d05e078e:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d05e0792:	6866      	ldr	r6, [r4, #4]
d05e0794:	60a6      	str	r6, [r4, #8]
d05e0796:	2e00      	cmp	r6, #0
d05e0798:	bfa2      	ittt	ge
d05e079a:	6821      	ldrge	r1, [r4, #0]
d05e079c:	f021 0104 	bicge.w	r1, r1, #4
d05e07a0:	6021      	strge	r1, [r4, #0]
d05e07a2:	b90d      	cbnz	r5, d05e07a8 <_printf_i+0x118>
d05e07a4:	2e00      	cmp	r6, #0
d05e07a6:	d04d      	beq.n	d05e0844 <_printf_i+0x1b4>
d05e07a8:	4616      	mov	r6, r2
d05e07aa:	fbb5 f1f3 	udiv	r1, r5, r3
d05e07ae:	fb03 5711 	mls	r7, r3, r1, r5
d05e07b2:	5dc7      	ldrb	r7, [r0, r7]
d05e07b4:	f806 7d01 	strb.w	r7, [r6, #-1]!
d05e07b8:	462f      	mov	r7, r5
d05e07ba:	42bb      	cmp	r3, r7
d05e07bc:	460d      	mov	r5, r1
d05e07be:	d9f4      	bls.n	d05e07aa <_printf_i+0x11a>
d05e07c0:	2b08      	cmp	r3, #8
d05e07c2:	d10b      	bne.n	d05e07dc <_printf_i+0x14c>
d05e07c4:	6823      	ldr	r3, [r4, #0]
d05e07c6:	07df      	lsls	r7, r3, #31
d05e07c8:	d508      	bpl.n	d05e07dc <_printf_i+0x14c>
d05e07ca:	6923      	ldr	r3, [r4, #16]
d05e07cc:	6861      	ldr	r1, [r4, #4]
d05e07ce:	4299      	cmp	r1, r3
d05e07d0:	bfde      	ittt	le
d05e07d2:	2330      	movle	r3, #48	; 0x30
d05e07d4:	f806 3c01 	strble.w	r3, [r6, #-1]
d05e07d8:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d05e07dc:	1b92      	subs	r2, r2, r6
d05e07de:	6122      	str	r2, [r4, #16]
d05e07e0:	f8cd a000 	str.w	sl, [sp]
d05e07e4:	464b      	mov	r3, r9
d05e07e6:	aa03      	add	r2, sp, #12
d05e07e8:	4621      	mov	r1, r4
d05e07ea:	4640      	mov	r0, r8
d05e07ec:	f7ff fee2 	bl	d05e05b4 <_printf_common>
d05e07f0:	3001      	adds	r0, #1
d05e07f2:	d14c      	bne.n	d05e088e <_printf_i+0x1fe>
d05e07f4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e07f8:	b004      	add	sp, #16
d05e07fa:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e07fe:	4835      	ldr	r0, [pc, #212]	; (d05e08d4 <_printf_i+0x244>)
d05e0800:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d05e0804:	6823      	ldr	r3, [r4, #0]
d05e0806:	680e      	ldr	r6, [r1, #0]
d05e0808:	061f      	lsls	r7, r3, #24
d05e080a:	f856 5b04 	ldr.w	r5, [r6], #4
d05e080e:	600e      	str	r6, [r1, #0]
d05e0810:	d514      	bpl.n	d05e083c <_printf_i+0x1ac>
d05e0812:	07d9      	lsls	r1, r3, #31
d05e0814:	bf44      	itt	mi
d05e0816:	f043 0320 	orrmi.w	r3, r3, #32
d05e081a:	6023      	strmi	r3, [r4, #0]
d05e081c:	b91d      	cbnz	r5, d05e0826 <_printf_i+0x196>
d05e081e:	6823      	ldr	r3, [r4, #0]
d05e0820:	f023 0320 	bic.w	r3, r3, #32
d05e0824:	6023      	str	r3, [r4, #0]
d05e0826:	2310      	movs	r3, #16
d05e0828:	e7b0      	b.n	d05e078c <_printf_i+0xfc>
d05e082a:	6823      	ldr	r3, [r4, #0]
d05e082c:	f043 0320 	orr.w	r3, r3, #32
d05e0830:	6023      	str	r3, [r4, #0]
d05e0832:	2378      	movs	r3, #120	; 0x78
d05e0834:	4828      	ldr	r0, [pc, #160]	; (d05e08d8 <_printf_i+0x248>)
d05e0836:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d05e083a:	e7e3      	b.n	d05e0804 <_printf_i+0x174>
d05e083c:	065e      	lsls	r6, r3, #25
d05e083e:	bf48      	it	mi
d05e0840:	b2ad      	uxthmi	r5, r5
d05e0842:	e7e6      	b.n	d05e0812 <_printf_i+0x182>
d05e0844:	4616      	mov	r6, r2
d05e0846:	e7bb      	b.n	d05e07c0 <_printf_i+0x130>
d05e0848:	680b      	ldr	r3, [r1, #0]
d05e084a:	6826      	ldr	r6, [r4, #0]
d05e084c:	6960      	ldr	r0, [r4, #20]
d05e084e:	1d1d      	adds	r5, r3, #4
d05e0850:	600d      	str	r5, [r1, #0]
d05e0852:	0635      	lsls	r5, r6, #24
d05e0854:	681b      	ldr	r3, [r3, #0]
d05e0856:	d501      	bpl.n	d05e085c <_printf_i+0x1cc>
d05e0858:	6018      	str	r0, [r3, #0]
d05e085a:	e002      	b.n	d05e0862 <_printf_i+0x1d2>
d05e085c:	0671      	lsls	r1, r6, #25
d05e085e:	d5fb      	bpl.n	d05e0858 <_printf_i+0x1c8>
d05e0860:	8018      	strh	r0, [r3, #0]
d05e0862:	2300      	movs	r3, #0
d05e0864:	6123      	str	r3, [r4, #16]
d05e0866:	4616      	mov	r6, r2
d05e0868:	e7ba      	b.n	d05e07e0 <_printf_i+0x150>
d05e086a:	680b      	ldr	r3, [r1, #0]
d05e086c:	1d1a      	adds	r2, r3, #4
d05e086e:	600a      	str	r2, [r1, #0]
d05e0870:	681e      	ldr	r6, [r3, #0]
d05e0872:	6862      	ldr	r2, [r4, #4]
d05e0874:	2100      	movs	r1, #0
d05e0876:	4630      	mov	r0, r6
d05e0878:	f000 f832 	bl	d05e08e0 <memchr>
d05e087c:	b108      	cbz	r0, d05e0882 <_printf_i+0x1f2>
d05e087e:	1b80      	subs	r0, r0, r6
d05e0880:	6060      	str	r0, [r4, #4]
d05e0882:	6863      	ldr	r3, [r4, #4]
d05e0884:	6123      	str	r3, [r4, #16]
d05e0886:	2300      	movs	r3, #0
d05e0888:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05e088c:	e7a8      	b.n	d05e07e0 <_printf_i+0x150>
d05e088e:	6923      	ldr	r3, [r4, #16]
d05e0890:	4632      	mov	r2, r6
d05e0892:	4649      	mov	r1, r9
d05e0894:	4640      	mov	r0, r8
d05e0896:	47d0      	blx	sl
d05e0898:	3001      	adds	r0, #1
d05e089a:	d0ab      	beq.n	d05e07f4 <_printf_i+0x164>
d05e089c:	6823      	ldr	r3, [r4, #0]
d05e089e:	079b      	lsls	r3, r3, #30
d05e08a0:	d413      	bmi.n	d05e08ca <_printf_i+0x23a>
d05e08a2:	68e0      	ldr	r0, [r4, #12]
d05e08a4:	9b03      	ldr	r3, [sp, #12]
d05e08a6:	4298      	cmp	r0, r3
d05e08a8:	bfb8      	it	lt
d05e08aa:	4618      	movlt	r0, r3
d05e08ac:	e7a4      	b.n	d05e07f8 <_printf_i+0x168>
d05e08ae:	2301      	movs	r3, #1
d05e08b0:	4632      	mov	r2, r6
d05e08b2:	4649      	mov	r1, r9
d05e08b4:	4640      	mov	r0, r8
d05e08b6:	47d0      	blx	sl
d05e08b8:	3001      	adds	r0, #1
d05e08ba:	d09b      	beq.n	d05e07f4 <_printf_i+0x164>
d05e08bc:	3501      	adds	r5, #1
d05e08be:	68e3      	ldr	r3, [r4, #12]
d05e08c0:	9903      	ldr	r1, [sp, #12]
d05e08c2:	1a5b      	subs	r3, r3, r1
d05e08c4:	42ab      	cmp	r3, r5
d05e08c6:	dcf2      	bgt.n	d05e08ae <_printf_i+0x21e>
d05e08c8:	e7eb      	b.n	d05e08a2 <_printf_i+0x212>
d05e08ca:	2500      	movs	r5, #0
d05e08cc:	f104 0619 	add.w	r6, r4, #25
d05e08d0:	e7f5      	b.n	d05e08be <_printf_i+0x22e>
d05e08d2:	bf00      	nop
d05e08d4:	d05e0d49 	.word	0xd05e0d49
d05e08d8:	d05e0d5a 	.word	0xd05e0d5a
d05e08dc:	00000000 	.word	0x00000000

d05e08e0 <memchr>:
d05e08e0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05e08e4:	2a10      	cmp	r2, #16
d05e08e6:	db2b      	blt.n	d05e0940 <memchr+0x60>
d05e08e8:	f010 0f07 	tst.w	r0, #7
d05e08ec:	d008      	beq.n	d05e0900 <memchr+0x20>
d05e08ee:	f810 3b01 	ldrb.w	r3, [r0], #1
d05e08f2:	3a01      	subs	r2, #1
d05e08f4:	428b      	cmp	r3, r1
d05e08f6:	d02d      	beq.n	d05e0954 <memchr+0x74>
d05e08f8:	f010 0f07 	tst.w	r0, #7
d05e08fc:	b342      	cbz	r2, d05e0950 <memchr+0x70>
d05e08fe:	d1f6      	bne.n	d05e08ee <memchr+0xe>
d05e0900:	b4f0      	push	{r4, r5, r6, r7}
d05e0902:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d05e0906:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d05e090a:	f022 0407 	bic.w	r4, r2, #7
d05e090e:	f07f 0700 	mvns.w	r7, #0
d05e0912:	2300      	movs	r3, #0
d05e0914:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d05e0918:	3c08      	subs	r4, #8
d05e091a:	ea85 0501 	eor.w	r5, r5, r1
d05e091e:	ea86 0601 	eor.w	r6, r6, r1
d05e0922:	fa85 f547 	uadd8	r5, r5, r7
d05e0926:	faa3 f587 	sel	r5, r3, r7
d05e092a:	fa86 f647 	uadd8	r6, r6, r7
d05e092e:	faa5 f687 	sel	r6, r5, r7
d05e0932:	b98e      	cbnz	r6, d05e0958 <memchr+0x78>
d05e0934:	d1ee      	bne.n	d05e0914 <memchr+0x34>
d05e0936:	bcf0      	pop	{r4, r5, r6, r7}
d05e0938:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05e093c:	f002 0207 	and.w	r2, r2, #7
d05e0940:	b132      	cbz	r2, d05e0950 <memchr+0x70>
d05e0942:	f810 3b01 	ldrb.w	r3, [r0], #1
d05e0946:	3a01      	subs	r2, #1
d05e0948:	ea83 0301 	eor.w	r3, r3, r1
d05e094c:	b113      	cbz	r3, d05e0954 <memchr+0x74>
d05e094e:	d1f8      	bne.n	d05e0942 <memchr+0x62>
d05e0950:	2000      	movs	r0, #0
d05e0952:	4770      	bx	lr
d05e0954:	3801      	subs	r0, #1
d05e0956:	4770      	bx	lr
d05e0958:	2d00      	cmp	r5, #0
d05e095a:	bf06      	itte	eq
d05e095c:	4635      	moveq	r5, r6
d05e095e:	3803      	subeq	r0, #3
d05e0960:	3807      	subne	r0, #7
d05e0962:	f015 0f01 	tst.w	r5, #1
d05e0966:	d107      	bne.n	d05e0978 <memchr+0x98>
d05e0968:	3001      	adds	r0, #1
d05e096a:	f415 7f80 	tst.w	r5, #256	; 0x100
d05e096e:	bf02      	ittt	eq
d05e0970:	3001      	addeq	r0, #1
d05e0972:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d05e0976:	3001      	addeq	r0, #1
d05e0978:	bcf0      	pop	{r4, r5, r6, r7}
d05e097a:	3801      	subs	r0, #1
d05e097c:	4770      	bx	lr
d05e097e:	bf00      	nop

d05e0980 <memcpy>:
d05e0980:	440a      	add	r2, r1
d05e0982:	4291      	cmp	r1, r2
d05e0984:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d05e0988:	d100      	bne.n	d05e098c <memcpy+0xc>
d05e098a:	4770      	bx	lr
d05e098c:	b510      	push	{r4, lr}
d05e098e:	f811 4b01 	ldrb.w	r4, [r1], #1
d05e0992:	f803 4f01 	strb.w	r4, [r3, #1]!
d05e0996:	4291      	cmp	r1, r2
d05e0998:	d1f9      	bne.n	d05e098e <memcpy+0xe>
d05e099a:	bd10      	pop	{r4, pc}

d05e099c <memmove>:
d05e099c:	4288      	cmp	r0, r1
d05e099e:	b510      	push	{r4, lr}
d05e09a0:	eb01 0402 	add.w	r4, r1, r2
d05e09a4:	d902      	bls.n	d05e09ac <memmove+0x10>
d05e09a6:	4284      	cmp	r4, r0
d05e09a8:	4623      	mov	r3, r4
d05e09aa:	d807      	bhi.n	d05e09bc <memmove+0x20>
d05e09ac:	1e43      	subs	r3, r0, #1
d05e09ae:	42a1      	cmp	r1, r4
d05e09b0:	d008      	beq.n	d05e09c4 <memmove+0x28>
d05e09b2:	f811 2b01 	ldrb.w	r2, [r1], #1
d05e09b6:	f803 2f01 	strb.w	r2, [r3, #1]!
d05e09ba:	e7f8      	b.n	d05e09ae <memmove+0x12>
d05e09bc:	4402      	add	r2, r0
d05e09be:	4601      	mov	r1, r0
d05e09c0:	428a      	cmp	r2, r1
d05e09c2:	d100      	bne.n	d05e09c6 <memmove+0x2a>
d05e09c4:	bd10      	pop	{r4, pc}
d05e09c6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d05e09ca:	f802 4d01 	strb.w	r4, [r2, #-1]!
d05e09ce:	e7f7      	b.n	d05e09c0 <memmove+0x24>

d05e09d0 <_free_r>:
d05e09d0:	b537      	push	{r0, r1, r2, r4, r5, lr}
d05e09d2:	2900      	cmp	r1, #0
d05e09d4:	d048      	beq.n	d05e0a68 <_free_r+0x98>
d05e09d6:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05e09da:	9001      	str	r0, [sp, #4]
d05e09dc:	2b00      	cmp	r3, #0
d05e09de:	f1a1 0404 	sub.w	r4, r1, #4
d05e09e2:	bfb8      	it	lt
d05e09e4:	18e4      	addlt	r4, r4, r3
d05e09e6:	f000 f8d3 	bl	d05e0b90 <__malloc_lock>
d05e09ea:	4a20      	ldr	r2, [pc, #128]	; (d05e0a6c <_free_r+0x9c>)
d05e09ec:	9801      	ldr	r0, [sp, #4]
d05e09ee:	6813      	ldr	r3, [r2, #0]
d05e09f0:	4615      	mov	r5, r2
d05e09f2:	b933      	cbnz	r3, d05e0a02 <_free_r+0x32>
d05e09f4:	6063      	str	r3, [r4, #4]
d05e09f6:	6014      	str	r4, [r2, #0]
d05e09f8:	b003      	add	sp, #12
d05e09fa:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05e09fe:	f000 b8cd 	b.w	d05e0b9c <__malloc_unlock>
d05e0a02:	42a3      	cmp	r3, r4
d05e0a04:	d90b      	bls.n	d05e0a1e <_free_r+0x4e>
d05e0a06:	6821      	ldr	r1, [r4, #0]
d05e0a08:	1862      	adds	r2, r4, r1
d05e0a0a:	4293      	cmp	r3, r2
d05e0a0c:	bf04      	itt	eq
d05e0a0e:	681a      	ldreq	r2, [r3, #0]
d05e0a10:	685b      	ldreq	r3, [r3, #4]
d05e0a12:	6063      	str	r3, [r4, #4]
d05e0a14:	bf04      	itt	eq
d05e0a16:	1852      	addeq	r2, r2, r1
d05e0a18:	6022      	streq	r2, [r4, #0]
d05e0a1a:	602c      	str	r4, [r5, #0]
d05e0a1c:	e7ec      	b.n	d05e09f8 <_free_r+0x28>
d05e0a1e:	461a      	mov	r2, r3
d05e0a20:	685b      	ldr	r3, [r3, #4]
d05e0a22:	b10b      	cbz	r3, d05e0a28 <_free_r+0x58>
d05e0a24:	42a3      	cmp	r3, r4
d05e0a26:	d9fa      	bls.n	d05e0a1e <_free_r+0x4e>
d05e0a28:	6811      	ldr	r1, [r2, #0]
d05e0a2a:	1855      	adds	r5, r2, r1
d05e0a2c:	42a5      	cmp	r5, r4
d05e0a2e:	d10b      	bne.n	d05e0a48 <_free_r+0x78>
d05e0a30:	6824      	ldr	r4, [r4, #0]
d05e0a32:	4421      	add	r1, r4
d05e0a34:	1854      	adds	r4, r2, r1
d05e0a36:	42a3      	cmp	r3, r4
d05e0a38:	6011      	str	r1, [r2, #0]
d05e0a3a:	d1dd      	bne.n	d05e09f8 <_free_r+0x28>
d05e0a3c:	681c      	ldr	r4, [r3, #0]
d05e0a3e:	685b      	ldr	r3, [r3, #4]
d05e0a40:	6053      	str	r3, [r2, #4]
d05e0a42:	4421      	add	r1, r4
d05e0a44:	6011      	str	r1, [r2, #0]
d05e0a46:	e7d7      	b.n	d05e09f8 <_free_r+0x28>
d05e0a48:	d902      	bls.n	d05e0a50 <_free_r+0x80>
d05e0a4a:	230c      	movs	r3, #12
d05e0a4c:	6003      	str	r3, [r0, #0]
d05e0a4e:	e7d3      	b.n	d05e09f8 <_free_r+0x28>
d05e0a50:	6825      	ldr	r5, [r4, #0]
d05e0a52:	1961      	adds	r1, r4, r5
d05e0a54:	428b      	cmp	r3, r1
d05e0a56:	bf04      	itt	eq
d05e0a58:	6819      	ldreq	r1, [r3, #0]
d05e0a5a:	685b      	ldreq	r3, [r3, #4]
d05e0a5c:	6063      	str	r3, [r4, #4]
d05e0a5e:	bf04      	itt	eq
d05e0a60:	1949      	addeq	r1, r1, r5
d05e0a62:	6021      	streq	r1, [r4, #0]
d05e0a64:	6054      	str	r4, [r2, #4]
d05e0a66:	e7c7      	b.n	d05e09f8 <_free_r+0x28>
d05e0a68:	b003      	add	sp, #12
d05e0a6a:	bd30      	pop	{r4, r5, pc}
d05e0a6c:	d05e0ddc 	.word	0xd05e0ddc

d05e0a70 <_malloc_r>:
d05e0a70:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0a72:	1ccd      	adds	r5, r1, #3
d05e0a74:	f025 0503 	bic.w	r5, r5, #3
d05e0a78:	3508      	adds	r5, #8
d05e0a7a:	2d0c      	cmp	r5, #12
d05e0a7c:	bf38      	it	cc
d05e0a7e:	250c      	movcc	r5, #12
d05e0a80:	2d00      	cmp	r5, #0
d05e0a82:	4606      	mov	r6, r0
d05e0a84:	db01      	blt.n	d05e0a8a <_malloc_r+0x1a>
d05e0a86:	42a9      	cmp	r1, r5
d05e0a88:	d903      	bls.n	d05e0a92 <_malloc_r+0x22>
d05e0a8a:	230c      	movs	r3, #12
d05e0a8c:	6033      	str	r3, [r6, #0]
d05e0a8e:	2000      	movs	r0, #0
d05e0a90:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e0a92:	f000 f87d 	bl	d05e0b90 <__malloc_lock>
d05e0a96:	4921      	ldr	r1, [pc, #132]	; (d05e0b1c <_malloc_r+0xac>)
d05e0a98:	680a      	ldr	r2, [r1, #0]
d05e0a9a:	4614      	mov	r4, r2
d05e0a9c:	b99c      	cbnz	r4, d05e0ac6 <_malloc_r+0x56>
d05e0a9e:	4f20      	ldr	r7, [pc, #128]	; (d05e0b20 <_malloc_r+0xb0>)
d05e0aa0:	683b      	ldr	r3, [r7, #0]
d05e0aa2:	b923      	cbnz	r3, d05e0aae <_malloc_r+0x3e>
d05e0aa4:	4621      	mov	r1, r4
d05e0aa6:	4630      	mov	r0, r6
d05e0aa8:	f000 f862 	bl	d05e0b70 <_sbrk_r>
d05e0aac:	6038      	str	r0, [r7, #0]
d05e0aae:	4629      	mov	r1, r5
d05e0ab0:	4630      	mov	r0, r6
d05e0ab2:	f000 f85d 	bl	d05e0b70 <_sbrk_r>
d05e0ab6:	1c43      	adds	r3, r0, #1
d05e0ab8:	d123      	bne.n	d05e0b02 <_malloc_r+0x92>
d05e0aba:	230c      	movs	r3, #12
d05e0abc:	6033      	str	r3, [r6, #0]
d05e0abe:	4630      	mov	r0, r6
d05e0ac0:	f000 f86c 	bl	d05e0b9c <__malloc_unlock>
d05e0ac4:	e7e3      	b.n	d05e0a8e <_malloc_r+0x1e>
d05e0ac6:	6823      	ldr	r3, [r4, #0]
d05e0ac8:	1b5b      	subs	r3, r3, r5
d05e0aca:	d417      	bmi.n	d05e0afc <_malloc_r+0x8c>
d05e0acc:	2b0b      	cmp	r3, #11
d05e0ace:	d903      	bls.n	d05e0ad8 <_malloc_r+0x68>
d05e0ad0:	6023      	str	r3, [r4, #0]
d05e0ad2:	441c      	add	r4, r3
d05e0ad4:	6025      	str	r5, [r4, #0]
d05e0ad6:	e004      	b.n	d05e0ae2 <_malloc_r+0x72>
d05e0ad8:	6863      	ldr	r3, [r4, #4]
d05e0ada:	42a2      	cmp	r2, r4
d05e0adc:	bf0c      	ite	eq
d05e0ade:	600b      	streq	r3, [r1, #0]
d05e0ae0:	6053      	strne	r3, [r2, #4]
d05e0ae2:	4630      	mov	r0, r6
d05e0ae4:	f000 f85a 	bl	d05e0b9c <__malloc_unlock>
d05e0ae8:	f104 000b 	add.w	r0, r4, #11
d05e0aec:	1d23      	adds	r3, r4, #4
d05e0aee:	f020 0007 	bic.w	r0, r0, #7
d05e0af2:	1ac2      	subs	r2, r0, r3
d05e0af4:	d0cc      	beq.n	d05e0a90 <_malloc_r+0x20>
d05e0af6:	1a1b      	subs	r3, r3, r0
d05e0af8:	50a3      	str	r3, [r4, r2]
d05e0afa:	e7c9      	b.n	d05e0a90 <_malloc_r+0x20>
d05e0afc:	4622      	mov	r2, r4
d05e0afe:	6864      	ldr	r4, [r4, #4]
d05e0b00:	e7cc      	b.n	d05e0a9c <_malloc_r+0x2c>
d05e0b02:	1cc4      	adds	r4, r0, #3
d05e0b04:	f024 0403 	bic.w	r4, r4, #3
d05e0b08:	42a0      	cmp	r0, r4
d05e0b0a:	d0e3      	beq.n	d05e0ad4 <_malloc_r+0x64>
d05e0b0c:	1a21      	subs	r1, r4, r0
d05e0b0e:	4630      	mov	r0, r6
d05e0b10:	f000 f82e 	bl	d05e0b70 <_sbrk_r>
d05e0b14:	3001      	adds	r0, #1
d05e0b16:	d1dd      	bne.n	d05e0ad4 <_malloc_r+0x64>
d05e0b18:	e7cf      	b.n	d05e0aba <_malloc_r+0x4a>
d05e0b1a:	bf00      	nop
d05e0b1c:	d05e0ddc 	.word	0xd05e0ddc
d05e0b20:	d05e0de0 	.word	0xd05e0de0

d05e0b24 <_realloc_r>:
d05e0b24:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0b26:	4607      	mov	r7, r0
d05e0b28:	4614      	mov	r4, r2
d05e0b2a:	460e      	mov	r6, r1
d05e0b2c:	b921      	cbnz	r1, d05e0b38 <_realloc_r+0x14>
d05e0b2e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d05e0b32:	4611      	mov	r1, r2
d05e0b34:	f7ff bf9c 	b.w	d05e0a70 <_malloc_r>
d05e0b38:	b922      	cbnz	r2, d05e0b44 <_realloc_r+0x20>
d05e0b3a:	f7ff ff49 	bl	d05e09d0 <_free_r>
d05e0b3e:	4625      	mov	r5, r4
d05e0b40:	4628      	mov	r0, r5
d05e0b42:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e0b44:	f000 f830 	bl	d05e0ba8 <_malloc_usable_size_r>
d05e0b48:	42a0      	cmp	r0, r4
d05e0b4a:	d20f      	bcs.n	d05e0b6c <_realloc_r+0x48>
d05e0b4c:	4621      	mov	r1, r4
d05e0b4e:	4638      	mov	r0, r7
d05e0b50:	f7ff ff8e 	bl	d05e0a70 <_malloc_r>
d05e0b54:	4605      	mov	r5, r0
d05e0b56:	2800      	cmp	r0, #0
d05e0b58:	d0f2      	beq.n	d05e0b40 <_realloc_r+0x1c>
d05e0b5a:	4631      	mov	r1, r6
d05e0b5c:	4622      	mov	r2, r4
d05e0b5e:	f7ff ff0f 	bl	d05e0980 <memcpy>
d05e0b62:	4631      	mov	r1, r6
d05e0b64:	4638      	mov	r0, r7
d05e0b66:	f7ff ff33 	bl	d05e09d0 <_free_r>
d05e0b6a:	e7e9      	b.n	d05e0b40 <_realloc_r+0x1c>
d05e0b6c:	4635      	mov	r5, r6
d05e0b6e:	e7e7      	b.n	d05e0b40 <_realloc_r+0x1c>

d05e0b70 <_sbrk_r>:
d05e0b70:	b538      	push	{r3, r4, r5, lr}
d05e0b72:	4d06      	ldr	r5, [pc, #24]	; (d05e0b8c <_sbrk_r+0x1c>)
d05e0b74:	2300      	movs	r3, #0
d05e0b76:	4604      	mov	r4, r0
d05e0b78:	4608      	mov	r0, r1
d05e0b7a:	602b      	str	r3, [r5, #0]
d05e0b7c:	f7ff fa4a 	bl	d05e0014 <_sbrk>
d05e0b80:	1c43      	adds	r3, r0, #1
d05e0b82:	d102      	bne.n	d05e0b8a <_sbrk_r+0x1a>
d05e0b84:	682b      	ldr	r3, [r5, #0]
d05e0b86:	b103      	cbz	r3, d05e0b8a <_sbrk_r+0x1a>
d05e0b88:	6023      	str	r3, [r4, #0]
d05e0b8a:	bd38      	pop	{r3, r4, r5, pc}
d05e0b8c:	d05e0de4 	.word	0xd05e0de4

d05e0b90 <__malloc_lock>:
d05e0b90:	4801      	ldr	r0, [pc, #4]	; (d05e0b98 <__malloc_lock+0x8>)
d05e0b92:	f000 b811 	b.w	d05e0bb8 <__retarget_lock_acquire_recursive>
d05e0b96:	bf00      	nop
d05e0b98:	d05e0dec 	.word	0xd05e0dec

d05e0b9c <__malloc_unlock>:
d05e0b9c:	4801      	ldr	r0, [pc, #4]	; (d05e0ba4 <__malloc_unlock+0x8>)
d05e0b9e:	f000 b80c 	b.w	d05e0bba <__retarget_lock_release_recursive>
d05e0ba2:	bf00      	nop
d05e0ba4:	d05e0dec 	.word	0xd05e0dec

d05e0ba8 <_malloc_usable_size_r>:
d05e0ba8:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05e0bac:	1f18      	subs	r0, r3, #4
d05e0bae:	2b00      	cmp	r3, #0
d05e0bb0:	bfbc      	itt	lt
d05e0bb2:	580b      	ldrlt	r3, [r1, r0]
d05e0bb4:	18c0      	addlt	r0, r0, r3
d05e0bb6:	4770      	bx	lr

d05e0bb8 <__retarget_lock_acquire_recursive>:
d05e0bb8:	4770      	bx	lr

d05e0bba <__retarget_lock_release_recursive>:
d05e0bba:	4770      	bx	lr
d05e0bbc:	67617355 	.word	0x67617355
d05e0bc0:	6a203a65 	.word	0x6a203a65
d05e0bc4:	206e696f 	.word	0x206e696f
d05e0bc8:	3c206f2b 	.word	0x3c206f2b
d05e0bcc:	7074756f 	.word	0x7074756f
d05e0bd0:	69667475 	.word	0x69667475
d05e0bd4:	203e656c 	.word	0x203e656c
d05e0bd8:	20692b5b 	.word	0x20692b5b
d05e0bdc:	646e693c 	.word	0x646e693c
d05e0be0:	69667865 	.word	0x69667865
d05e0be4:	5d3e656c 	.word	0x5d3e656c
d05e0be8:	20612b20 	.word	0x20612b20
d05e0bec:	6c69663c 	.word	0x6c69663c
d05e0bf0:	203e3165 	.word	0x203e3165
d05e0bf4:	6c69663c 	.word	0x6c69663c
d05e0bf8:	203e3265 	.word	0x203e3265
d05e0bfc:	6c69665b 	.word	0x6c69665b
d05e0c00:	2e2e3365 	.word	0x2e2e3365
d05e0c04:	2e2e2e5d 	.word	0x2e2e2e5d
d05e0c08:	0000000a 	.word	0x0000000a
d05e0c0c:	00006f2b 	.word	0x00006f2b
d05e0c10:	0000692b 	.word	0x0000692b
d05e0c14:	7373694d 	.word	0x7373694d
d05e0c18:	20676e69 	.word	0x20676e69
d05e0c1c:	3c206f2b 	.word	0x3c206f2b
d05e0c20:	7074756f 	.word	0x7074756f
d05e0c24:	69667475 	.word	0x69667475
d05e0c28:	0a3e656c 	.word	0x0a3e656c
d05e0c2c:	00000000 	.word	0x00000000
d05e0c30:	0000612b 	.word	0x0000612b
d05e0c34:	7373694d 	.word	0x7373694d
d05e0c38:	20676e69 	.word	0x20676e69
d05e0c3c:	3c20612b 	.word	0x3c20612b
d05e0c40:	656c6966 	.word	0x656c6966
d05e0c44:	5b203e31 	.word	0x5b203e31
d05e0c48:	656c6966 	.word	0x656c6966
d05e0c4c:	2e2e2032 	.word	0x2e2e2032
d05e0c50:	000a5d2e 	.word	0x000a5d2e
d05e0c54:	69206f4e 	.word	0x69206f4e
d05e0c58:	7475706e 	.word	0x7475706e
d05e0c5c:	6c696620 	.word	0x6c696620
d05e0c60:	73207365 	.word	0x73207365
d05e0c64:	69636570 	.word	0x69636570
d05e0c68:	64656966 	.word	0x64656966
d05e0c6c:	0000000a 	.word	0x0000000a
d05e0c70:	6c696146 	.word	0x6c696146
d05e0c74:	74206465 	.word	0x74206465
d05e0c78:	706f206f 	.word	0x706f206f
d05e0c7c:	6f206e65 	.word	0x6f206e65
d05e0c80:	75707475 	.word	0x75707475
d05e0c84:	69662074 	.word	0x69662074
d05e0c88:	203a656c 	.word	0x203a656c
d05e0c8c:	000a7325 	.word	0x000a7325
d05e0c90:	6c696146 	.word	0x6c696146
d05e0c94:	74206465 	.word	0x74206465
d05e0c98:	706f206f 	.word	0x706f206f
d05e0c9c:	69206e65 	.word	0x69206e65
d05e0ca0:	7865646e 	.word	0x7865646e
d05e0ca4:	6c696620 	.word	0x6c696620
d05e0ca8:	25203a65 	.word	0x25203a65
d05e0cac:	00000a73 	.word	0x00000a73
d05e0cb0:	6c696146 	.word	0x6c696146
d05e0cb4:	74206465 	.word	0x74206465
d05e0cb8:	706f206f 	.word	0x706f206f
d05e0cbc:	69206e65 	.word	0x69206e65
d05e0cc0:	7475706e 	.word	0x7475706e
d05e0cc4:	6c696620 	.word	0x6c696620
d05e0cc8:	25203a65 	.word	0x25203a65
d05e0ccc:	00000a73 	.word	0x00000a73
d05e0cd0:	65707041 	.word	0x65707041
d05e0cd4:	6e69646e 	.word	0x6e69646e
d05e0cd8:	69662067 	.word	0x69662067
d05e0cdc:	203a656c 	.word	0x203a656c
d05e0ce0:	000a7325 	.word	0x000a7325
d05e0ce4:	30257830 	.word	0x30257830
d05e0ce8:	3a205838 	.word	0x3a205838
d05e0cec:	6c696620 	.word	0x6c696620
d05e0cf0:	6d616e65 	.word	0x6d616e65
d05e0cf4:	25203a65 	.word	0x25203a65
d05e0cf8:	64282073 	.word	0x64282073
d05e0cfc:	203a6365 	.word	0x203a6365
d05e0d00:	0a297525 	.word	0x0a297525
d05e0d04:	00000000 	.word	0x00000000
d05e0d08:	656c6946 	.word	0x656c6946
d05e0d0c:	6f6a2073 	.word	0x6f6a2073
d05e0d10:	64656e69 	.word	0x64656e69
d05e0d14:	746e6920 	.word	0x746e6920
d05e0d18:	7325206f 	.word	0x7325206f
d05e0d1c:	0000000a 	.word	0x0000000a
d05e0d20:	65646e49 	.word	0x65646e49
d05e0d24:	69662078 	.word	0x69662078
d05e0d28:	6320656c 	.word	0x6320656c
d05e0d2c:	74616572 	.word	0x74616572
d05e0d30:	203a6465 	.word	0x203a6465
d05e0d34:	000a7325 	.word	0x000a7325
d05e0d38:	2b302d23 	.word	0x2b302d23
d05e0d3c:	6c680020 	.word	0x6c680020
d05e0d40:	6665004c 	.word	0x6665004c
d05e0d44:	47464567 	.word	0x47464567
d05e0d48:	00          	.byte	0x00
d05e0d49:	30          	.byte	0x30
d05e0d4a:	3231      	.short	0x3231
d05e0d4c:	36353433 	.word	0x36353433
d05e0d50:	41393837 	.word	0x41393837
d05e0d54:	45444342 	.word	0x45444342
d05e0d58:	31300046 	.word	0x31300046
d05e0d5c:	35343332 	.word	0x35343332
d05e0d60:	39383736 	.word	0x39383736
d05e0d64:	64636261 	.word	0x64636261
d05e0d68:	Address 0x00000000d05e0d68 is out of bounds.


Disassembly of section .init:

d05e0d6c <_init>:
d05e0d6c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0d6e:	bf00      	nop

Disassembly of section .fini:

d05e0d70 <_fini>:
d05e0d70:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0d72:	bf00      	nop
