
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0004010 <applet_entry>:
d0004010:	f000 bbe6 	b.w	d00047e0 <main>

d0004014 <initDisplayBuffers>:
d0004014:	4b0c      	ldr	r3, [pc, #48]	; (d0004048 <initDisplayBuffers+0x34>)
d0004016:	4a0d      	ldr	r2, [pc, #52]	; (d000404c <initDisplayBuffers+0x38>)
d0004018:	f8d3 00ec 	ldr.w	r0, [r3, #236]	; 0xec
d000401c:	b410      	push	{r4}
d000401e:	f8d3 40f4 	ldr.w	r4, [r3, #244]	; 0xf4
d0004022:	f8d3 10f4 	ldr.w	r1, [r3, #244]	; 0xf4
d0004026:	6002      	str	r2, [r0, #0]
d0004028:	6022      	str	r2, [r4, #0]
d000402a:	4809      	ldr	r0, [pc, #36]	; (d0004050 <initDisplayBuffers+0x3c>)
d000402c:	680a      	ldr	r2, [r1, #0]
d000402e:	4909      	ldr	r1, [pc, #36]	; (d0004054 <initDisplayBuffers+0x40>)
d0004030:	6002      	str	r2, [r0, #0]
d0004032:	f8d3 00f0 	ldr.w	r0, [r3, #240]	; 0xf0
d0004036:	f8d3 30f0 	ldr.w	r3, [r3, #240]	; 0xf0
d000403a:	4a07      	ldr	r2, [pc, #28]	; (d0004058 <initDisplayBuffers+0x44>)
d000403c:	6008      	str	r0, [r1, #0]
d000403e:	681b      	ldr	r3, [r3, #0]
d0004040:	f85d 4b04 	ldr.w	r4, [sp], #4
d0004044:	6013      	str	r3, [r2, #0]
d0004046:	4770      	bx	lr
d0004048:	2001f000 	.word	0x2001f000
d000404c:	d06b2000 	.word	0xd06b2000
d0004050:	d0005af0 	.word	0xd0005af0
d0004054:	d0005af4 	.word	0xd0005af4
d0004058:	d0005afc 	.word	0xd0005afc

d000405c <ShowBuffer>:
d000405c:	4b09      	ldr	r3, [pc, #36]	; (d0004084 <ShowBuffer+0x28>)
d000405e:	b140      	cbz	r0, d0004072 <ShowBuffer+0x16>
d0004060:	f8d3 10ec 	ldr.w	r1, [r3, #236]	; 0xec
d0004064:	4808      	ldr	r0, [pc, #32]	; (d0004088 <ShowBuffer+0x2c>)
d0004066:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d000406a:	4a08      	ldr	r2, [pc, #32]	; (d000408c <ShowBuffer+0x30>)
d000406c:	6008      	str	r0, [r1, #0]
d000406e:	601a      	str	r2, [r3, #0]
d0004070:	4770      	bx	lr
d0004072:	f8d3 10ec 	ldr.w	r1, [r3, #236]	; 0xec
d0004076:	4805      	ldr	r0, [pc, #20]	; (d000408c <ShowBuffer+0x30>)
d0004078:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d000407c:	4a02      	ldr	r2, [pc, #8]	; (d0004088 <ShowBuffer+0x2c>)
d000407e:	6008      	str	r0, [r1, #0]
d0004080:	601a      	str	r2, [r3, #0]
d0004082:	4770      	bx	lr
d0004084:	2001f000 	.word	0x2001f000
d0004088:	d06b2000 	.word	0xd06b2000
d000408c:	d06d9000 	.word	0xd06d9000

d0004090 <StopChannel>:
d0004090:	4b04      	ldr	r3, [pc, #16]	; (d00040a4 <StopChannel+0x14>)
d0004092:	0080      	lsls	r0, r0, #2
d0004094:	4403      	add	r3, r0
d0004096:	685b      	ldr	r3, [r3, #4]
d0004098:	781a      	ldrb	r2, [r3, #0]
d000409a:	f36f 0200 	bfc	r2, #0, #1
d000409e:	701a      	strb	r2, [r3, #0]
d00040a0:	4770      	bx	lr
d00040a2:	bf00      	nop
d00040a4:	2001f170 	.word	0x2001f170

d00040a8 <ExitCode>:
d00040a8:	b510      	push	{r4, lr}
d00040aa:	4c0c      	ldr	r4, [pc, #48]	; (d00040dc <ExitCode+0x34>)
d00040ac:	69e3      	ldr	r3, [r4, #28]
d00040ae:	4798      	blx	r3
d00040b0:	f010 0002 	ands.w	r0, r0, #2
d00040b4:	d007      	beq.n	d00040c6 <ExitCode+0x1e>
d00040b6:	4a0a      	ldr	r2, [pc, #40]	; (d00040e0 <ExitCode+0x38>)
d00040b8:	6813      	ldr	r3, [r2, #0]
d00040ba:	3301      	adds	r3, #1
d00040bc:	2b19      	cmp	r3, #25
d00040be:	6013      	str	r3, [r2, #0]
d00040c0:	dc04      	bgt.n	d00040cc <ExitCode+0x24>
d00040c2:	2000      	movs	r0, #0
d00040c4:	bd10      	pop	{r4, pc}
d00040c6:	4b06      	ldr	r3, [pc, #24]	; (d00040e0 <ExitCode+0x38>)
d00040c8:	6018      	str	r0, [r3, #0]
d00040ca:	bd10      	pop	{r4, pc}
d00040cc:	2200      	movs	r2, #0
d00040ce:	f8d4 3164 	ldr.w	r3, [r4, #356]	; 0x164
d00040d2:	4804      	ldr	r0, [pc, #16]	; (d00040e4 <ExitCode+0x3c>)
d00040d4:	4611      	mov	r1, r2
d00040d6:	4798      	blx	r3
d00040d8:	2007      	movs	r0, #7
d00040da:	bd10      	pop	{r4, pc}
d00040dc:	2001f000 	.word	0x2001f000
d00040e0:	d0005aec 	.word	0xd0005aec
d00040e4:	d000495c 	.word	0xd000495c

d00040e8 <init_palette>:
d00040e8:	4816      	ldr	r0, [pc, #88]	; (d0004144 <init_palette+0x5c>)
d00040ea:	2100      	movs	r1, #0
d00040ec:	b570      	push	{r4, r5, r6, lr}
d00040ee:	b2ca      	uxtb	r2, r1
d00040f0:	f001 04e0 	and.w	r4, r1, #224	; 0xe0
d00040f4:	3101      	adds	r1, #1
d00040f6:	43d3      	mvns	r3, r2
d00040f8:	0252      	lsls	r2, r2, #9
d00040fa:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
d00040fe:	b2db      	uxtb	r3, r3
d0004100:	f402 4260 	and.w	r2, r2, #57344	; 0xe000
d0004104:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d0004108:	ea43 0302 	orr.w	r3, r3, r2
d000410c:	f043 437f 	orr.w	r3, r3, #4278190080	; 0xff000000
d0004110:	f840 3f04 	str.w	r3, [r0, #4]!
d0004114:	d1eb      	bne.n	d00040ee <init_palette+0x6>
d0004116:	4c0c      	ldr	r4, [pc, #48]	; (d0004148 <init_palette+0x60>)
d0004118:	2100      	movs	r1, #0
d000411a:	4d0c      	ldr	r5, [pc, #48]	; (d000414c <init_palette+0x64>)
d000411c:	f8d4 30d8 	ldr.w	r3, [r4, #216]	; 0xd8
d0004120:	f8c5 13f8 	str.w	r1, [r5, #1016]	; 0x3f8
d0004124:	4628      	mov	r0, r5
d0004126:	4798      	blx	r3
d0004128:	68e3      	ldr	r3, [r4, #12]
d000412a:	200a      	movs	r0, #10
d000412c:	4798      	blx	r3
d000412e:	4628      	mov	r0, r5
d0004130:	f8d4 30d8 	ldr.w	r3, [r4, #216]	; 0xd8
d0004134:	2101      	movs	r1, #1
d0004136:	4798      	blx	r3
d0004138:	68e3      	ldr	r3, [r4, #12]
d000413a:	200a      	movs	r0, #10
d000413c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0004140:	4718      	bx	r3
d0004142:	bf00      	nop
d0004144:	d0005afc 	.word	0xd0005afc
d0004148:	2001f000 	.word	0x2001f000
d000414c:	d0005b00 	.word	0xd0005b00

d0004150 <render_plasma_frame2>:
d0004150:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0004154:	4bb1      	ldr	r3, [pc, #708]	; (d000441c <render_plasma_frame2+0x2cc>)
d0004156:	eb00 0240 	add.w	r2, r0, r0, lsl #1
d000415a:	f8df a2cc 	ldr.w	sl, [pc, #716]	; d0004428 <render_plasma_frame2+0x2d8>
d000415e:	f44f 78b4 	mov.w	r8, #360	; 0x168
d0004162:	f8df b2c8 	ldr.w	fp, [pc, #712]	; d000442c <render_plasma_frame2+0x2dc>
d0004166:	ed2d 8b06 	vpush	{d8-d10}
d000416a:	b08f      	sub	sp, #60	; 0x3c
d000416c:	9309      	str	r3, [sp, #36]	; 0x24
d000416e:	2300      	movs	r3, #0
d0004170:	9102      	str	r1, [sp, #8]
d0004172:	0041      	lsls	r1, r0, #1
d0004174:	9300      	str	r3, [sp, #0]
d0004176:	0083      	lsls	r3, r0, #2
d0004178:	9104      	str	r1, [sp, #16]
d000417a:	930b      	str	r3, [sp, #44]	; 0x2c
d000417c:	4619      	mov	r1, r3
d000417e:	4403      	add	r3, r0
d0004180:	9005      	str	r0, [sp, #20]
d0004182:	9106      	str	r1, [sp, #24]
d0004184:	39b4      	subs	r1, #180	; 0xb4
d0004186:	3378      	adds	r3, #120	; 0x78
d0004188:	9007      	str	r0, [sp, #28]
d000418a:	900d      	str	r0, [sp, #52]	; 0x34
d000418c:	9108      	str	r1, [sp, #32]
d000418e:	9203      	str	r2, [sp, #12]
d0004190:	930c      	str	r3, [sp, #48]	; 0x30
d0004192:	48a3      	ldr	r0, [pc, #652]	; (d0004420 <render_plasma_frame2+0x2d0>)
d0004194:	9c00      	ldr	r4, [sp, #0]
d0004196:	990d      	ldr	r1, [sp, #52]	; 0x34
d0004198:	eb04 02c4 	add.w	r2, r4, r4, lsl #3
d000419c:	9b05      	ldr	r3, [sp, #20]
d000419e:	fb80 5c01 	smull	r5, ip, r0, r1
d00041a2:	9d04      	ldr	r5, [sp, #16]
d00041a4:	eb03 0901 	add.w	r9, r3, r1
d00041a8:	eb04 0344 	add.w	r3, r4, r4, lsl #1
d00041ac:	1956      	adds	r6, r2, r5
d00041ae:	9a07      	ldr	r2, [sp, #28]
d00041b0:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d00041b4:	9a03      	ldr	r2, [sp, #12]
d00041b6:	9601      	str	r6, [sp, #4]
d00041b8:	eba6 0343 	sub.w	r3, r6, r3, lsl #1
d00041bc:	eb02 0784 	add.w	r7, r2, r4, lsl #2
d00041c0:	fb80 2406 	smull	r2, r4, r0, r6
d00041c4:	fb80 2e09 	smull	r2, lr, r0, r9
d00041c8:	0049      	lsls	r1, r1, #1
d00041ca:	fb80 6207 	smull	r6, r2, r0, r7
d00041ce:	fb80 6503 	smull	r6, r5, r0, r3
d00041d2:	17de      	asrs	r6, r3, #31
d00041d4:	920a      	str	r2, [sp, #40]	; 0x28
d00041d6:	44ce      	add	lr, r9
d00041d8:	fb80 2001 	smull	r2, r0, r0, r1
d00041dc:	9a01      	ldr	r2, [sp, #4]
d00041de:	441d      	add	r5, r3
d00041e0:	4414      	add	r4, r2
d00041e2:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d00041e4:	ebc6 2625 	rsb	r6, r6, r5, asr #8
d00041e8:	4408      	add	r0, r1
d00041ea:	443a      	add	r2, r7
d00041ec:	9d00      	ldr	r5, [sp, #0]
d00041ee:	920a      	str	r2, [sp, #40]	; 0x28
d00041f0:	3d3c      	subs	r5, #60	; 0x3c
d00041f2:	9a0d      	ldr	r2, [sp, #52]	; 0x34
d00041f4:	fb05 f505 	mul.w	r5, r5, r5
d00041f8:	4494      	add	ip, r2
d00041fa:	4632      	mov	r2, r6
d00041fc:	9e01      	ldr	r6, [sp, #4]
d00041fe:	fb08 3312 	mls	r3, r8, r2, r3
d0004202:	9a01      	ldr	r2, [sp, #4]
d0004204:	17f6      	asrs	r6, r6, #31
d0004206:	ee0a 3a10 	vmov	s20, r3
d000420a:	17cb      	asrs	r3, r1, #31
d000420c:	ebc6 2624 	rsb	r6, r6, r4, asr #8
d0004210:	ebc3 2420 	rsb	r4, r3, r0, asr #8
d0004214:	f06f 0327 	mvn.w	r3, #39	; 0x27
d0004218:	ea4f 70e9 	mov.w	r0, r9, asr #31
d000421c:	fb08 2616 	mls	r6, r8, r6, r2
d0004220:	fb08 1114 	mls	r1, r8, r4, r1
d0004224:	17fa      	asrs	r2, r7, #31
d0004226:	ee0a 6a90 	vmov	s21, r6
d000422a:	fb03 f605 	mul.w	r6, r3, r5
d000422e:	ee08 1a90 	vmov	s17, r1
d0004232:	9b0d      	ldr	r3, [sp, #52]	; 0x34
d0004234:	ebc0 212e 	rsb	r1, r0, lr, asr #8
d0004238:	980a      	ldr	r0, [sp, #40]	; 0x28
d000423a:	460c      	mov	r4, r1
d000423c:	17d9      	asrs	r1, r3, #31
d000423e:	ebc2 2020 	rsb	r0, r2, r0, asr #8
d0004242:	ebc1 212c 	rsb	r1, r1, ip, asr #8
d0004246:	fb08 9214 	mls	r2, r8, r4, r9
d000424a:	9c00      	ldr	r4, [sp, #0]
d000424c:	fb08 7010 	mls	r0, r8, r0, r7
d0004250:	fb08 3311 	mls	r3, r8, r1, r3
d0004254:	ee09 2a90 	vmov	s19, r2
d0004258:	eb04 0284 	add.w	r2, r4, r4, lsl #2
d000425c:	f8dd 9014 	ldr.w	r9, [sp, #20]
d0004260:	ee08 3a10 	vmov	s16, r3
d0004264:	ee09 0a10 	vmov	s18, r0
d0004268:	0113      	lsls	r3, r2, #4
d000426a:	2700      	movs	r7, #0
d000426c:	9301      	str	r3, [sp, #4]
d000426e:	9b02      	ldr	r3, [sp, #8]
d0004270:	2b0f      	cmp	r3, #15
d0004272:	f200 8256 	bhi.w	d0004722 <render_plasma_frame2+0x5d2>
d0004276:	e8df f013 	tbh	[pc, r3, lsl #1]
d000427a:	022f      	.short	0x022f
d000427c:	01e60200 	.word	0x01e60200
d0004280:	018a01bf 	.word	0x018a01bf
d0004284:	015c0166 	.word	0x015c0166
d0004288:	01260133 	.word	0x01260133
d000428c:	00db0107 	.word	0x00db0107
d0004290:	00b000c8 	.word	0x00b000c8
d0004294:	0070008d 	.word	0x0070008d
d0004298:	0010      	.short	0x0010
d000429a:	9b08      	ldr	r3, [sp, #32]
d000429c:	f1a7 0228 	sub.w	r2, r7, #40	; 0x28
d00042a0:	f8db 10b4 	ldr.w	r1, [fp, #180]	; 0xb4
d00042a4:	f1a3 00a0 	sub.w	r0, r3, #160	; 0xa0
d00042a8:	4b5d      	ldr	r3, [pc, #372]	; (d0004420 <render_plasma_frame2+0x2d0>)
d00042aa:	fb02 5202 	mla	r2, r2, r2, r5
d00042ae:	eb00 0087 	add.w	r0, r0, r7, lsl #2
d00042b2:	fb83 4c00 	smull	r4, ip, r3, r0
d00042b6:	17c4      	asrs	r4, r0, #31
d00042b8:	9b05      	ldr	r3, [sp, #20]
d00042ba:	4484      	add	ip, r0
d00042bc:	eb03 02e2 	add.w	r2, r3, r2, asr #3
d00042c0:	ebc4 242c 	rsb	r4, r4, ip, asr #8
d00042c4:	920a      	str	r2, [sp, #40]	; 0x28
d00042c6:	fb08 0014 	mls	r0, r8, r4, r0
d00042ca:	4788      	blx	r1
d00042cc:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d00042ce:	4b54      	ldr	r3, [pc, #336]	; (d0004420 <render_plasma_frame2+0x2d0>)
d00042d0:	4604      	mov	r4, r0
d00042d2:	ea4f 7ce2 	mov.w	ip, r2, asr #31
d00042d6:	f8db 10b8 	ldr.w	r1, [fp, #184]	; 0xb8
d00042da:	fb83 3e02 	smull	r3, lr, r3, r2
d00042de:	eb0e 0002 	add.w	r0, lr, r2
d00042e2:	ebcc 2020 	rsb	r0, ip, r0, asr #8
d00042e6:	fb08 2010 	mls	r0, r8, r0, r2
d00042ea:	4788      	blx	r1
d00042ec:	1a20      	subs	r0, r4, r0
d00042ee:	f500 3400 	add.w	r4, r0, #131072	; 0x20000
d00042f2:	4b4c      	ldr	r3, [pc, #304]	; (d0004424 <render_plasma_frame2+0x2d4>)
d00042f4:	17e1      	asrs	r1, r4, #31
d00042f6:	fb83 3204 	smull	r3, r2, r3, r4
d00042fa:	ebc1 2162 	rsb	r1, r1, r2, asr #9
d00042fe:	b2c9      	uxtb	r1, r1
d0004300:	f8da 2000 	ldr.w	r2, [sl]
d0004304:	442e      	add	r6, r5
d0004306:	9b00      	ldr	r3, [sp, #0]
d0004308:	443a      	add	r2, r7
d000430a:	3701      	adds	r7, #1
d000430c:	4499      	add	r9, r3
d000430e:	9b01      	ldr	r3, [sp, #4]
d0004310:	2f50      	cmp	r7, #80	; 0x50
d0004312:	54d1      	strb	r1, [r2, r3]
d0004314:	d1ab      	bne.n	d000426e <render_plasma_frame2+0x11e>
d0004316:	9a0d      	ldr	r2, [sp, #52]	; 0x34
d0004318:	9b00      	ldr	r3, [sp, #0]
d000431a:	3208      	adds	r2, #8
d000431c:	3301      	adds	r3, #1
d000431e:	920d      	str	r2, [sp, #52]	; 0x34
d0004320:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0004322:	2b78      	cmp	r3, #120	; 0x78
d0004324:	9300      	str	r3, [sp, #0]
d0004326:	f102 0205 	add.w	r2, r2, #5
d000432a:	9209      	str	r2, [sp, #36]	; 0x24
d000432c:	9a07      	ldr	r2, [sp, #28]
d000432e:	f102 0201 	add.w	r2, r2, #1
d0004332:	9207      	str	r2, [sp, #28]
d0004334:	9a08      	ldr	r2, [sp, #32]
d0004336:	f102 0203 	add.w	r2, r2, #3
d000433a:	9208      	str	r2, [sp, #32]
d000433c:	9a0c      	ldr	r2, [sp, #48]	; 0x30
d000433e:	f1a2 0202 	sub.w	r2, r2, #2
d0004342:	920c      	str	r2, [sp, #48]	; 0x30
d0004344:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d0004346:	f102 0208 	add.w	r2, r2, #8
d000434a:	920b      	str	r2, [sp, #44]	; 0x2c
d000434c:	f47f af21 	bne.w	d0004192 <render_plasma_frame2+0x42>
d0004350:	b00f      	add	sp, #60	; 0x3c
d0004352:	ecbd 8b06 	vpop	{d8-d10}
d0004356:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d000435a:	f1a7 0128 	sub.w	r1, r7, #40	; 0x28
d000435e:	f8db 20b8 	ldr.w	r2, [fp, #184]	; 0xb8
d0004362:	9b03      	ldr	r3, [sp, #12]
d0004364:	fb01 5101 	mla	r1, r1, r1, r5
d0004368:	eb03 01e1 	add.w	r1, r3, r1, asr #3
d000436c:	4b2c      	ldr	r3, [pc, #176]	; (d0004420 <render_plasma_frame2+0x2d0>)
d000436e:	17c8      	asrs	r0, r1, #31
d0004370:	fb83 3401 	smull	r3, r4, r3, r1
d0004374:	440c      	add	r4, r1
d0004376:	ebc0 2024 	rsb	r0, r0, r4, asr #8
d000437a:	fb08 1010 	mls	r0, r8, r0, r1
d000437e:	4790      	blx	r2
d0004380:	4b28      	ldr	r3, [pc, #160]	; (d0004424 <render_plasma_frame2+0x2d4>)
d0004382:	f500 3000 	add.w	r0, r0, #131072	; 0x20000
d0004386:	fb83 3200 	smull	r3, r2, r3, r0
d000438a:	17c1      	asrs	r1, r0, #31
d000438c:	ebc1 2162 	rsb	r1, r1, r2, asr #9
d0004390:	b2c9      	uxtb	r1, r1
d0004392:	e7b5      	b.n	d0004300 <render_plasma_frame2+0x1b0>
d0004394:	f1a7 0028 	sub.w	r0, r7, #40	; 0x28
d0004398:	9b04      	ldr	r3, [sp, #16]
d000439a:	f8db 20b4 	ldr.w	r2, [fp, #180]	; 0xb4
d000439e:	fb00 5000 	mla	r0, r0, r0, r5
d00043a2:	eb03 1020 	add.w	r0, r3, r0, asr #4
d00043a6:	4790      	blx	r2
d00043a8:	9b03      	ldr	r3, [sp, #12]
d00043aa:	eb07 0147 	add.w	r1, r7, r7, lsl #1
d00043ae:	4604      	mov	r4, r0
d00043b0:	f1a3 0c78 	sub.w	ip, r3, #120	; 0x78
d00043b4:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00043b6:	f8db 20b8 	ldr.w	r2, [fp, #184]	; 0xb8
d00043ba:	449c      	add	ip, r3
d00043bc:	4461      	add	r1, ip
d00043be:	4b18      	ldr	r3, [pc, #96]	; (d0004420 <render_plasma_frame2+0x2d0>)
d00043c0:	17c8      	asrs	r0, r1, #31
d00043c2:	fb83 3c01 	smull	r3, ip, r3, r1
d00043c6:	448c      	add	ip, r1
d00043c8:	ebc0 202c 	rsb	r0, r0, ip, asr #8
d00043cc:	fb08 1010 	mls	r0, r8, r0, r1
d00043d0:	4790      	blx	r2
d00043d2:	4420      	add	r0, r4
d00043d4:	f500 3400 	add.w	r4, r0, #131072	; 0x20000
d00043d8:	e78b      	b.n	d00042f2 <render_plasma_frame2+0x1a2>
d00043da:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d00043dc:	f8db 20b4 	ldr.w	r2, [fp, #180]	; 0xb4
d00043e0:	eb03 01c7 	add.w	r1, r3, r7, lsl #3
d00043e4:	4b0e      	ldr	r3, [pc, #56]	; (d0004420 <render_plasma_frame2+0x2d0>)
d00043e6:	fb83 0401 	smull	r0, r4, r3, r1
d00043ea:	17c8      	asrs	r0, r1, #31
d00043ec:	440c      	add	r4, r1
d00043ee:	ebc0 2024 	rsb	r0, r0, r4, asr #8
d00043f2:	fb08 1010 	mls	r0, r8, r0, r1
d00043f6:	4790      	blx	r2
d00043f8:	9a00      	ldr	r2, [sp, #0]
d00043fa:	4604      	mov	r4, r0
d00043fc:	9804      	ldr	r0, [sp, #16]
d00043fe:	ea82 0107 	eor.w	r1, r2, r7
d0004402:	f8db 20b8 	ldr.w	r2, [fp, #184]	; 0xb8
d0004406:	4401      	add	r1, r0
d0004408:	e7d9      	b.n	d00043be <render_plasma_frame2+0x26e>
d000440a:	f1a7 0128 	sub.w	r1, r7, #40	; 0x28
d000440e:	f8db 20b4 	ldr.w	r2, [fp, #180]	; 0xb4
d0004412:	9b06      	ldr	r3, [sp, #24]
d0004414:	fb01 5101 	mla	r1, r1, r1, r5
d0004418:	e7a6      	b.n	d0004368 <render_plasma_frame2+0x218>
d000441a:	bf00      	nop
d000441c:	fffffed4 	.word	0xfffffed4
d0004420:	b60b60b7 	.word	0xb60b60b7
d0004424:	7f807f81 	.word	0x7f807f81
d0004428:	d0005afc 	.word	0xd0005afc
d000442c:	2001f000 	.word	0x2001f000
d0004430:	9b03      	ldr	r3, [sp, #12]
d0004432:	eb07 0147 	add.w	r1, r7, r7, lsl #1
d0004436:	f8db 20b4 	ldr.w	r2, [fp, #180]	; 0xb4
d000443a:	eb03 0141 	add.w	r1, r3, r1, lsl #1
d000443e:	4bba      	ldr	r3, [pc, #744]	; (d0004728 <render_plasma_frame2+0x5d8>)
d0004440:	fb83 0401 	smull	r0, r4, r3, r1
d0004444:	17c8      	asrs	r0, r1, #31
d0004446:	440c      	add	r4, r1
d0004448:	ebc0 2024 	rsb	r0, r0, r4, asr #8
d000444c:	fb08 1010 	mls	r0, r8, r0, r1
d0004450:	4790      	blx	r2
d0004452:	f8db 20b4 	ldr.w	r2, [fp, #180]	; 0xb4
d0004456:	4604      	mov	r4, r0
d0004458:	ee1a 0a90 	vmov	r0, s21
d000445c:	4790      	blx	r2
d000445e:	9a07      	ldr	r2, [sp, #28]
d0004460:	4bb1      	ldr	r3, [pc, #708]	; (d0004728 <render_plasma_frame2+0x5d8>)
d0004462:	4044      	eors	r4, r0
d0004464:	443a      	add	r2, r7
d0004466:	f8db 10b8 	ldr.w	r1, [fp, #184]	; 0xb8
d000446a:	fb83 3e02 	smull	r3, lr, r3, r2
d000446e:	ea4f 7ce2 	mov.w	ip, r2, asr #31
d0004472:	eb0e 0002 	add.w	r0, lr, r2
d0004476:	ebcc 2020 	rsb	r0, ip, r0, asr #8
d000447a:	fb08 2010 	mls	r0, r8, r0, r2
d000447e:	4788      	blx	r1
d0004480:	4420      	add	r0, r4
d0004482:	f500 3400 	add.w	r4, r0, #131072	; 0x20000
d0004486:	e734      	b.n	d00042f2 <render_plasma_frame2+0x1a2>
d0004488:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d000448a:	eb07 0047 	add.w	r0, r7, r7, lsl #1
d000448e:	f1a7 0428 	sub.w	r4, r7, #40	; 0x28
d0004492:	f8db 20b4 	ldr.w	r2, [fp, #180]	; 0xb4
d0004496:	f1a3 0178 	sub.w	r1, r3, #120	; 0x78
d000449a:	4ba3      	ldr	r3, [pc, #652]	; (d0004728 <render_plasma_frame2+0x5d8>)
d000449c:	4401      	add	r1, r0
d000449e:	fb83 3c01 	smull	r3, ip, r3, r1
d00044a2:	17c8      	asrs	r0, r1, #31
d00044a4:	448c      	add	ip, r1
d00044a6:	ebc0 202c 	rsb	r0, r0, ip, asr #8
d00044aa:	fb08 1010 	mls	r0, r8, r0, r1
d00044ae:	4790      	blx	r2
d00044b0:	fb04 5104 	mla	r1, r4, r4, r5
d00044b4:	4604      	mov	r4, r0
d00044b6:	f8db 20b8 	ldr.w	r2, [fp, #184]	; 0xb8
d00044ba:	1108      	asrs	r0, r1, #4
d00044bc:	4790      	blx	r2
d00044be:	4420      	add	r0, r4
d00044c0:	f500 3400 	add.w	r4, r0, #131072	; 0x20000
d00044c4:	e715      	b.n	d00042f2 <render_plasma_frame2+0x1a2>
d00044c6:	f1a7 0128 	sub.w	r1, r7, #40	; 0x28
d00044ca:	9b06      	ldr	r3, [sp, #24]
d00044cc:	f8db 20b4 	ldr.w	r2, [fp, #180]	; 0xb4
d00044d0:	fb01 5101 	mla	r1, r1, r1, r5
d00044d4:	2900      	cmp	r1, #0
d00044d6:	bfb8      	it	lt
d00044d8:	3101      	addlt	r1, #1
d00044da:	eb03 0161 	add.w	r1, r3, r1, asr #1
d00044de:	e745      	b.n	d000436c <render_plasma_frame2+0x21c>
d00044e0:	9b03      	ldr	r3, [sp, #12]
d00044e2:	eb07 0147 	add.w	r1, r7, r7, lsl #1
d00044e6:	f8db 20b4 	ldr.w	r2, [fp, #180]	; 0xb4
d00044ea:	eb03 0141 	add.w	r1, r3, r1, lsl #1
d00044ee:	4b8e      	ldr	r3, [pc, #568]	; (d0004728 <render_plasma_frame2+0x5d8>)
d00044f0:	fb83 0401 	smull	r0, r4, r3, r1
d00044f4:	17c8      	asrs	r0, r1, #31
d00044f6:	440c      	add	r4, r1
d00044f8:	ebc0 2024 	rsb	r0, r0, r4, asr #8
d00044fc:	fb08 1010 	mls	r0, r8, r0, r1
d0004500:	4790      	blx	r2
d0004502:	f8db 20b4 	ldr.w	r2, [fp, #180]	; 0xb4
d0004506:	4604      	mov	r4, r0
d0004508:	ee1a 0a10 	vmov	r0, s20
d000450c:	4790      	blx	r2
d000450e:	4b86      	ldr	r3, [pc, #536]	; (d0004728 <render_plasma_frame2+0x5d8>)
d0004510:	ea4f 71e9 	mov.w	r1, r9, asr #31
d0004514:	4404      	add	r4, r0
d0004516:	fb83 3c09 	smull	r3, ip, r3, r9
d000451a:	f8db 20b8 	ldr.w	r2, [fp, #184]	; 0xb8
d000451e:	44cc      	add	ip, r9
d0004520:	ebc1 202c 	rsb	r0, r1, ip, asr #8
d0004524:	fb08 9010 	mls	r0, r8, r0, r9
d0004528:	4790      	blx	r2
d000452a:	4420      	add	r0, r4
d000452c:	f500 3400 	add.w	r4, r0, #131072	; 0x20000
d0004530:	e6df      	b.n	d00042f2 <render_plasma_frame2+0x1a2>
d0004532:	f1a7 0028 	sub.w	r0, r7, #40	; 0x28
d0004536:	9b06      	ldr	r3, [sp, #24]
d0004538:	f8db 20b4 	ldr.w	r2, [fp, #180]	; 0xb4
d000453c:	fb00 5000 	mla	r0, r0, r0, r5
d0004540:	eb03 00a0 	add.w	r0, r3, r0, asr #2
d0004544:	e71b      	b.n	d000437e <render_plasma_frame2+0x22e>
d0004546:	9b08      	ldr	r3, [sp, #32]
d0004548:	ebc7 00c7 	rsb	r0, r7, r7, lsl #3
d000454c:	f1a7 0228 	sub.w	r2, r7, #40	; 0x28
d0004550:	f8db 10b4 	ldr.w	r1, [fp, #180]	; 0xb4
d0004554:	f5a3 748c 	sub.w	r4, r3, #280	; 0x118
d0004558:	4b73      	ldr	r3, [pc, #460]	; (d0004728 <render_plasma_frame2+0x5d8>)
d000455a:	fb02 5202 	mla	r2, r2, r2, r5
d000455e:	4420      	add	r0, r4
d0004560:	fb83 4c00 	smull	r4, ip, r3, r0
d0004564:	17c4      	asrs	r4, r0, #31
d0004566:	9b04      	ldr	r3, [sp, #16]
d0004568:	4484      	add	ip, r0
d000456a:	eb03 1262 	add.w	r2, r3, r2, asr #5
d000456e:	ebc4 242c 	rsb	r4, r4, ip, asr #8
d0004572:	920a      	str	r2, [sp, #40]	; 0x28
d0004574:	fb08 0014 	mls	r0, r8, r4, r0
d0004578:	4788      	blx	r1
d000457a:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d000457c:	4b6a      	ldr	r3, [pc, #424]	; (d0004728 <render_plasma_frame2+0x5d8>)
d000457e:	4604      	mov	r4, r0
d0004580:	ea4f 7ce2 	mov.w	ip, r2, asr #31
d0004584:	f8db 10b8 	ldr.w	r1, [fp, #184]	; 0xb8
d0004588:	fb83 3e02 	smull	r3, lr, r3, r2
d000458c:	e771      	b.n	d0004472 <render_plasma_frame2+0x322>
d000458e:	9b05      	ldr	r3, [sp, #20]
d0004590:	f8db 20b4 	ldr.w	r2, [fp, #180]	; 0xb4
d0004594:	eb03 01c7 	add.w	r1, r3, r7, lsl #3
d0004598:	4b63      	ldr	r3, [pc, #396]	; (d0004728 <render_plasma_frame2+0x5d8>)
d000459a:	fb83 0401 	smull	r0, r4, r3, r1
d000459e:	17c8      	asrs	r0, r1, #31
d00045a0:	440c      	add	r4, r1
d00045a2:	ebc0 2024 	rsb	r0, r0, r4, asr #8
d00045a6:	fb08 1010 	mls	r0, r8, r0, r1
d00045aa:	4790      	blx	r2
d00045ac:	f8db 20b8 	ldr.w	r2, [fp, #184]	; 0xb8
d00045b0:	4604      	mov	r4, r0
d00045b2:	ee19 0a90 	vmov	r0, s19
d00045b6:	4790      	blx	r2
d00045b8:	9a00      	ldr	r2, [sp, #0]
d00045ba:	4b5b      	ldr	r3, [pc, #364]	; (d0004728 <render_plasma_frame2+0x5d8>)
d00045bc:	ea82 0c07 	eor.w	ip, r2, r7
d00045c0:	9a03      	ldr	r2, [sp, #12]
d00045c2:	f8db 10b4 	ldr.w	r1, [fp, #180]	; 0xb4
d00045c6:	4494      	add	ip, r2
d00045c8:	900a      	str	r0, [sp, #40]	; 0x28
d00045ca:	fb83 3e0c 	smull	r3, lr, r3, ip
d00045ce:	ea4f 70ec 	mov.w	r0, ip, asr #31
d00045d2:	44e6      	add	lr, ip
d00045d4:	ebc0 202e 	rsb	r0, r0, lr, asr #8
d00045d8:	fb08 c010 	mls	r0, r8, r0, ip
d00045dc:	4788      	blx	r1
d00045de:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d00045e0:	4b52      	ldr	r3, [pc, #328]	; (d000472c <render_plasma_frame2+0x5dc>)
d00045e2:	4414      	add	r4, r2
d00045e4:	1822      	adds	r2, r4, r0
d00045e6:	f502 3200 	add.w	r2, r2, #131072	; 0x20000
d00045ea:	fb83 3002 	smull	r3, r0, r3, r2
d00045ee:	17d1      	asrs	r1, r2, #31
d00045f0:	ebc1 2160 	rsb	r1, r1, r0, asr #9
d00045f4:	b2c9      	uxtb	r1, r1
d00045f6:	e683      	b.n	d0004300 <render_plasma_frame2+0x1b0>
d00045f8:	f1a7 0128 	sub.w	r1, r7, #40	; 0x28
d00045fc:	9b05      	ldr	r3, [sp, #20]
d00045fe:	f8db 20b4 	ldr.w	r2, [fp, #180]	; 0xb4
d0004602:	fb01 5101 	mla	r1, r1, r1, r5
d0004606:	ee07 1a90 	vmov	s15, r1
d000460a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d000460e:	eeb1 7ae7 	vsqrt.f32	s14, s15
d0004612:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d0004616:	ee17 1a90 	vmov	r1, s15
d000461a:	eb03 0141 	add.w	r1, r3, r1, lsl #1
d000461e:	4b42      	ldr	r3, [pc, #264]	; (d0004728 <render_plasma_frame2+0x5d8>)
d0004620:	0049      	lsls	r1, r1, #1
d0004622:	fb83 0401 	smull	r0, r4, r3, r1
d0004626:	17c8      	asrs	r0, r1, #31
d0004628:	440c      	add	r4, r1
d000462a:	ebc0 2024 	rsb	r0, r0, r4, asr #8
d000462e:	fb08 1010 	mls	r0, r8, r0, r1
d0004632:	4790      	blx	r2
d0004634:	9a00      	ldr	r2, [sp, #0]
d0004636:	4604      	mov	r4, r0
d0004638:	9803      	ldr	r0, [sp, #12]
d000463a:	ea82 0107 	eor.w	r1, r2, r7
d000463e:	f8db 20b8 	ldr.w	r2, [fp, #184]	; 0xb8
d0004642:	4401      	add	r1, r0
d0004644:	e6bb      	b.n	d00043be <render_plasma_frame2+0x26e>
d0004646:	9b04      	ldr	r3, [sp, #16]
d0004648:	eb07 0187 	add.w	r1, r7, r7, lsl #2
d000464c:	f8db 20b8 	ldr.w	r2, [fp, #184]	; 0xb8
d0004650:	4419      	add	r1, r3
d0004652:	4b35      	ldr	r3, [pc, #212]	; (d0004728 <render_plasma_frame2+0x5d8>)
d0004654:	fb83 3401 	smull	r3, r4, r3, r1
d0004658:	17c8      	asrs	r0, r1, #31
d000465a:	440c      	add	r4, r1
d000465c:	ebc0 2024 	rsb	r0, r0, r4, asr #8
d0004660:	fb08 1010 	mls	r0, r8, r0, r1
d0004664:	4790      	blx	r2
d0004666:	f8db 20b8 	ldr.w	r2, [fp, #184]	; 0xb8
d000466a:	4604      	mov	r4, r0
d000466c:	ee19 0a10 	vmov	r0, s18
d0004670:	4790      	blx	r2
d0004672:	4404      	add	r4, r0
d0004674:	f504 3400 	add.w	r4, r4, #131072	; 0x20000
d0004678:	e63b      	b.n	d00042f2 <render_plasma_frame2+0x1a2>
d000467a:	9b05      	ldr	r3, [sp, #20]
d000467c:	eb07 0187 	add.w	r1, r7, r7, lsl #2
d0004680:	f8db 20b4 	ldr.w	r2, [fp, #180]	; 0xb4
d0004684:	eb03 0141 	add.w	r1, r3, r1, lsl #1
d0004688:	4b27      	ldr	r3, [pc, #156]	; (d0004728 <render_plasma_frame2+0x5d8>)
d000468a:	fb83 0401 	smull	r0, r4, r3, r1
d000468e:	17c8      	asrs	r0, r1, #31
d0004690:	440c      	add	r4, r1
d0004692:	ebc0 2024 	rsb	r0, r0, r4, asr #8
d0004696:	fb08 1010 	mls	r0, r8, r0, r1
d000469a:	4790      	blx	r2
d000469c:	f8db 20b4 	ldr.w	r2, [fp, #180]	; 0xb4
d00046a0:	4604      	mov	r4, r0
d00046a2:	ee18 0a10 	vmov	r0, s16
d00046a6:	4790      	blx	r2
d00046a8:	9a07      	ldr	r2, [sp, #28]
d00046aa:	4b1f      	ldr	r3, [pc, #124]	; (d0004728 <render_plasma_frame2+0x5d8>)
d00046ac:	4404      	add	r4, r0
d00046ae:	443a      	add	r2, r7
d00046b0:	f8db 10b4 	ldr.w	r1, [fp, #180]	; 0xb4
d00046b4:	fb83 3e02 	smull	r3, lr, r3, r2
d00046b8:	ea4f 7ce2 	mov.w	ip, r2, asr #31
d00046bc:	eb0e 0002 	add.w	r0, lr, r2
d00046c0:	ebcc 2020 	rsb	r0, ip, r0, asr #8
d00046c4:	fb08 2010 	mls	r0, r8, r0, r2
d00046c8:	4788      	blx	r1
d00046ca:	4601      	mov	r1, r0
d00046cc:	f8db 20b4 	ldr.w	r2, [fp, #180]	; 0xb4
d00046d0:	ee18 0a90 	vmov	r0, s17
d00046d4:	440c      	add	r4, r1
d00046d6:	e7cb      	b.n	d0004670 <render_plasma_frame2+0x520>
d00046d8:	f1a7 0028 	sub.w	r0, r7, #40	; 0x28
d00046dc:	9b06      	ldr	r3, [sp, #24]
d00046de:	f8db 20b4 	ldr.w	r2, [fp, #180]	; 0xb4
d00046e2:	fb00 6000 	mla	r0, r0, r0, r6
d00046e6:	eb03 1020 	add.w	r0, r3, r0, asr #4
d00046ea:	4790      	blx	r2
d00046ec:	9b04      	ldr	r3, [sp, #16]
d00046ee:	eb07 0c47 	add.w	ip, r7, r7, lsl #1
d00046f2:	4604      	mov	r4, r0
d00046f4:	f1a3 0178 	sub.w	r1, r3, #120	; 0x78
d00046f8:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00046fa:	f8db 20b8 	ldr.w	r2, [fp, #184]	; 0xb8
d00046fe:	4419      	add	r1, r3
d0004700:	4b09      	ldr	r3, [pc, #36]	; (d0004728 <render_plasma_frame2+0x5d8>)
d0004702:	eb01 000c 	add.w	r0, r1, ip
d0004706:	fb83 3c00 	smull	r3, ip, r3, r0
d000470a:	17c1      	asrs	r1, r0, #31
d000470c:	4484      	add	ip, r0
d000470e:	ebc1 212c 	rsb	r1, r1, ip, asr #8
d0004712:	fb08 0011 	mls	r0, r8, r1, r0
d0004716:	0040      	lsls	r0, r0, #1
d0004718:	4790      	blx	r2
d000471a:	4420      	add	r0, r4
d000471c:	f500 3400 	add.w	r4, r0, #131072	; 0x20000
d0004720:	e5e7      	b.n	d00042f2 <render_plasma_frame2+0x1a2>
d0004722:	217f      	movs	r1, #127	; 0x7f
d0004724:	e5ec      	b.n	d0004300 <render_plasma_frame2+0x1b0>
d0004726:	bf00      	nop
d0004728:	b60b60b7 	.word	0xb60b60b7
d000472c:	7f807f81 	.word	0x7f807f81

d0004730 <blit_to_lcd>:
d0004730:	4b27      	ldr	r3, [pc, #156]	; (d00047d0 <blit_to_lcd+0xa0>)
d0004732:	4a28      	ldr	r2, [pc, #160]	; (d00047d4 <blit_to_lcd+0xa4>)
d0004734:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0004738:	f8d3 40f4 	ldr.w	r4, [r3, #244]	; 0xf4
d000473c:	b083      	sub	sp, #12
d000473e:	f8d3 50f4 	ldr.w	r5, [r3, #244]	; 0xf4
d0004742:	6824      	ldr	r4, [r4, #0]
d0004744:	f8d3 00f4 	ldr.w	r0, [r3, #244]	; 0xf4
d0004748:	f8d3 10f4 	ldr.w	r1, [r3, #244]	; 0xf4
d000474c:	f504 7ca0 	add.w	ip, r4, #320	; 0x140
d0004750:	682b      	ldr	r3, [r5, #0]
d0004752:	6800      	ldr	r0, [r0, #0]
d0004754:	6809      	ldr	r1, [r1, #0]
d0004756:	f503 78a0 	add.w	r8, r3, #320	; 0x140
d000475a:	4c1f      	ldr	r4, [pc, #124]	; (d00047d8 <blit_to_lcd+0xa8>)
d000475c:	f500 7b20 	add.w	fp, r0, #640	; 0x280
d0004760:	6812      	ldr	r2, [r2, #0]
d0004762:	f501 7a70 	add.w	sl, r1, #960	; 0x3c0
d0004766:	4423      	add	r3, r4
d0004768:	f8df e070 	ldr.w	lr, [pc, #112]	; d00047dc <blit_to_lcd+0xac>
d000476c:	f102 39ff 	add.w	r9, r2, #4294967295	; 0xffffffff
d0004770:	9301      	str	r3, [sp, #4]
d0004772:	f5ac 70a0 	sub.w	r0, ip, #320	; 0x140
d0004776:	464f      	mov	r7, r9
d0004778:	4656      	mov	r6, sl
d000477a:	465d      	mov	r5, fp
d000477c:	4644      	mov	r4, r8
d000477e:	f817 3f01 	ldrb.w	r3, [r7, #1]!
d0004782:	f85e 2023 	ldr.w	r2, [lr, r3, lsl #2]
d0004786:	b2d3      	uxtb	r3, r2
d0004788:	0411      	lsls	r1, r2, #16
d000478a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000478e:	f401 017f 	and.w	r1, r1, #16711680	; 0xff0000
d0004792:	0212      	lsls	r2, r2, #8
d0004794:	430b      	orrs	r3, r1
d0004796:	b292      	uxth	r2, r2
d0004798:	4313      	orrs	r3, r2
d000479a:	f840 3b04 	str.w	r3, [r0], #4
d000479e:	4560      	cmp	r0, ip
d00047a0:	f844 3b04 	str.w	r3, [r4], #4
d00047a4:	f845 3b04 	str.w	r3, [r5], #4
d00047a8:	f846 3b04 	str.w	r3, [r6], #4
d00047ac:	d1e7      	bne.n	d000477e <blit_to_lcd+0x4e>
d00047ae:	f508 68a0 	add.w	r8, r8, #1280	; 0x500
d00047b2:	9b01      	ldr	r3, [sp, #4]
d00047b4:	f50b 6ba0 	add.w	fp, fp, #1280	; 0x500
d00047b8:	f50a 6aa0 	add.w	sl, sl, #1280	; 0x500
d00047bc:	4598      	cmp	r8, r3
d00047be:	f109 0950 	add.w	r9, r9, #80	; 0x50
d00047c2:	f500 6ca0 	add.w	ip, r0, #1280	; 0x500
d00047c6:	d1d4      	bne.n	d0004772 <blit_to_lcd+0x42>
d00047c8:	b003      	add	sp, #12
d00047ca:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00047ce:	bf00      	nop
d00047d0:	2001f000 	.word	0x2001f000
d00047d4:	d0005afc 	.word	0xd0005afc
d00047d8:	00025940 	.word	0x00025940
d00047dc:	d0005b00 	.word	0xd0005b00

d00047e0 <main>:
d00047e0:	4a48      	ldr	r2, [pc, #288]	; (d0004904 <main+0x124>)
d00047e2:	20ff      	movs	r0, #255	; 0xff
d00047e4:	6813      	ldr	r3, [r2, #0]
d00047e6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00047ea:	f023 0310 	bic.w	r3, r3, #16
d00047ee:	4d46      	ldr	r5, [pc, #280]	; (d0004908 <main+0x128>)
d00047f0:	b082      	sub	sp, #8
d00047f2:	2400      	movs	r4, #0
d00047f4:	6013      	str	r3, [r2, #0]
d00047f6:	f8d5 30c8 	ldr.w	r3, [r5, #200]	; 0xc8
d00047fa:	4798      	blx	r3
d00047fc:	4b43      	ldr	r3, [pc, #268]	; (d000490c <main+0x12c>)
d00047fe:	f8d5 20f4 	ldr.w	r2, [r5, #244]	; 0xf4
d0004802:	4843      	ldr	r0, [pc, #268]	; (d0004910 <main+0x130>)
d0004804:	601c      	str	r4, [r3, #0]
d0004806:	68ab      	ldr	r3, [r5, #8]
d0004808:	4798      	blx	r3
d000480a:	200a      	movs	r0, #10
d000480c:	68eb      	ldr	r3, [r5, #12]
d000480e:	4798      	blx	r3
d0004810:	f8d5 3110 	ldr.w	r3, [r5, #272]	; 0x110
d0004814:	701c      	strb	r4, [r3, #0]
d0004816:	f7ff fbfd 	bl	d0004014 <initDisplayBuffers>
d000481a:	f241 127e 	movw	r2, #4478	; 0x117e
d000481e:	493d      	ldr	r1, [pc, #244]	; (d0004914 <main+0x134>)
d0004820:	f04f 4050 	mov.w	r0, #3489660928	; 0xd0000000
d0004824:	f000 f87a 	bl	d000491c <memcpy>
d0004828:	4620      	mov	r0, r4
d000482a:	f7ff fc31 	bl	d0004090 <StopChannel>
d000482e:	2001      	movs	r0, #1
d0004830:	f7ff fc2e 	bl	d0004090 <StopChannel>
d0004834:	2002      	movs	r0, #2
d0004836:	f7ff fc2b 	bl	d0004090 <StopChannel>
d000483a:	2003      	movs	r0, #3
d000483c:	f7ff fc28 	bl	d0004090 <StopChannel>
d0004840:	2004      	movs	r0, #4
d0004842:	f7ff fc25 	bl	d0004090 <StopChannel>
d0004846:	2005      	movs	r0, #5
d0004848:	f7ff fc22 	bl	d0004090 <StopChannel>
d000484c:	2006      	movs	r0, #6
d000484e:	f7ff fc1f 	bl	d0004090 <StopChannel>
d0004852:	2007      	movs	r0, #7
d0004854:	f7ff fc1c 	bl	d0004090 <StopChannel>
d0004858:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d000485c:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0004860:	f8d5 60e8 	ldr.w	r6, [r5, #232]	; 0xe8
d0004864:	4610      	mov	r0, r2
d0004866:	9400      	str	r4, [sp, #0]
d0004868:	4619      	mov	r1, r3
d000486a:	47b0      	blx	r6
d000486c:	f7ff fc3c 	bl	d00040e8 <init_palette>
d0004870:	4620      	mov	r0, r4
d0004872:	f7ff fbf3 	bl	d000405c <ShowBuffer>
d0004876:	f8d5 3118 	ldr.w	r3, [r5, #280]	; 0x118
d000487a:	20fe      	movs	r0, #254	; 0xfe
d000487c:	4798      	blx	r3
d000487e:	2001      	movs	r0, #1
d0004880:	f7ff fbec 	bl	d000405c <ShowBuffer>
d0004884:	f8d5 3118 	ldr.w	r3, [r5, #280]	; 0x118
d0004888:	20fe      	movs	r0, #254	; 0xfe
d000488a:	4798      	blx	r3
d000488c:	f8d5 311c 	ldr.w	r3, [r5, #284]	; 0x11c
d0004890:	20fe      	movs	r0, #254	; 0xfe
d0004892:	4798      	blx	r3
d0004894:	f8d5 316c 	ldr.w	r3, [r5, #364]	; 0x16c
d0004898:	4621      	mov	r1, r4
d000489a:	2005      	movs	r0, #5
d000489c:	4798      	blx	r3
d000489e:	2805      	cmp	r0, #5
d00048a0:	d102      	bne.n	d00048a8 <main+0xc8>
d00048a2:	68ab      	ldr	r3, [r5, #8]
d00048a4:	481c      	ldr	r0, [pc, #112]	; (d0004918 <main+0x138>)
d00048a6:	4798      	blx	r3
d00048a8:	2600      	movs	r6, #0
d00048aa:	2501      	movs	r5, #1
d00048ac:	f8df 8058 	ldr.w	r8, [pc, #88]	; d0004908 <main+0x128>
d00048b0:	4637      	mov	r7, r6
d00048b2:	4639      	mov	r1, r7
d00048b4:	4630      	mov	r0, r6
d00048b6:	f7ff fc4b 	bl	d0004150 <render_plasma_frame2>
d00048ba:	3501      	adds	r5, #1
d00048bc:	f7ff ff38 	bl	d0004730 <blit_to_lcd>
d00048c0:	4620      	mov	r0, r4
d00048c2:	f7ff fbcb 	bl	d000405c <ShowBuffer>
d00048c6:	f8d8 30cc 	ldr.w	r3, [r8, #204]	; 0xcc
d00048ca:	4798      	blx	r3
d00048cc:	2000      	movs	r0, #0
d00048ce:	f8d8 30c4 	ldr.w	r3, [r8, #196]	; 0xc4
d00048d2:	f1c4 0401 	rsb	r4, r4, #1
d00048d6:	4798      	blx	r3
d00048d8:	f8d8 315c 	ldr.w	r3, [r8, #348]	; 0x15c
d00048dc:	4798      	blx	r3
d00048de:	3602      	adds	r6, #2
d00048e0:	f7ff fbe2 	bl	d00040a8 <ExitCode>
d00048e4:	f010 00ff 	ands.w	r0, r0, #255	; 0xff
d00048e8:	b2e4      	uxtb	r4, r4
d00048ea:	d107      	bne.n	d00048fc <main+0x11c>
d00048ec:	2d33      	cmp	r5, #51	; 0x33
d00048ee:	d1e0      	bne.n	d00048b2 <main+0xd2>
d00048f0:	3701      	adds	r7, #1
d00048f2:	4605      	mov	r5, r0
d00048f4:	2f0f      	cmp	r7, #15
d00048f6:	bfc8      	it	gt
d00048f8:	4607      	movgt	r7, r0
d00048fa:	e7da      	b.n	d00048b2 <main+0xd2>
d00048fc:	b002      	add	sp, #8
d00048fe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0004902:	bf00      	nop
d0004904:	e000ed14 	.word	0xe000ed14
d0004908:	2001f000 	.word	0x2001f000
d000490c:	d0005ae8 	.word	0xd0005ae8
d0004910:	d0004938 	.word	0xd0004938
d0004914:	d0004960 	.word	0xd0004960
d0004918:	d0004948 	.word	0xd0004948

d000491c <memcpy>:
d000491c:	440a      	add	r2, r1
d000491e:	4291      	cmp	r1, r2
d0004920:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0004924:	d100      	bne.n	d0004928 <memcpy+0xc>
d0004926:	4770      	bx	lr
d0004928:	b510      	push	{r4, lr}
d000492a:	f811 4b01 	ldrb.w	r4, [r1], #1
d000492e:	f803 4f01 	strb.w	r4, [r3, #1]!
d0004932:	4291      	cmp	r1, r2
d0004934:	d1f9      	bne.n	d000492a <memcpy+0xe>
d0004936:	bd10      	pop	{r4, pc}
d0004938:	73616c70 	.word	0x73616c70
d000493c:	6620616d 	.word	0x6620616d
d0004940:	0d657269 	.word	0x0d657269
d0004944:	000a0d0a 	.word	0x000a0d0a
d0004948:	20444f4d 	.word	0x20444f4d
d000494c:	59414c50 	.word	0x59414c50
d0004950:	696e6920 	.word	0x696e6920
d0004954:	74616974 	.word	0x74616974
d0004958:	0a216465 	.word	0x0a216465
	...
d0004988:	0e000000 	.word	0x0e000000
d000498c:	00004000 	.word	0x00004000
d0004990:	00000e00 	.word	0x00000e00
	...
d00049a8:	40000e00 	.word	0x40000e00
d00049ac:	0e000000 	.word	0x0e000000
	...
d00049c4:	0e000000 	.word	0x0e000000
d00049c8:	00004000 	.word	0x00004000
d00049cc:	00000e00 	.word	0x00000e00
	...
d00049e4:	40000e00 	.word	0x40000e00
d00049e8:	0e000000 	.word	0x0e000000
	...
d0004a00:	0e000000 	.word	0x0e000000
d0004a04:	00004000 	.word	0x00004000
d0004a08:	00000e00 	.word	0x00000e00
	...
d0004a20:	40000e00 	.word	0x40000e00
d0004a24:	0e000000 	.word	0x0e000000
	...
d0004a3c:	0e000000 	.word	0x0e000000
d0004a40:	00003000 	.word	0x00003000
d0004a44:	00000e00 	.word	0x00000e00
	...
d0004a5c:	30003800 	.word	0x30003800
d0004a60:	38000000 	.word	0x38000000
	...
d0004a78:	07000000 	.word	0x07000000
d0004a7c:	00004000 	.word	0x00004000
d0004a80:	00000700 	.word	0x00000700
	...
d0004a9c:	01000000 	.word	0x01000000
	...
d0004abc:	00000100 	.word	0x00000100
	...
d0004ad8:	01000000 	.word	0x01000000
	...
d0004af8:	00000100 	.word	0x00000100
	...
d0004b14:	01000000 	.word	0x01000000
	...
d0004b34:	00000100 	.word	0x00000100
	...
d0004b50:	01000000 	.word	0x01000000
	...
d0004b70:	00000100 	.word	0x00000100
	...
d0004b8c:	01000000 	.word	0x01000000
	...
d0004bac:	00000100 	.word	0x00000100
	...
d0004bc8:	01000000 	.word	0x01000000
	...
d0004be8:	00000100 	.word	0x00000100
	...
d0004c04:	01000000 	.word	0x01000000
	...
d0004c24:	00000100 	.word	0x00000100
	...
d0004c40:	01000000 	.word	0x01000000
	...
d0004c60:	00000100 	.word	0x00000100
	...
d0004c7c:	01000000 	.word	0x01000000
	...
d0004c9c:	2a5f0100 	.word	0x2a5f0100
d0004ca0:	6f432020 	.word	0x6f432020
d0004ca4:	7265766e 	.word	0x7265766e
d0004ca8:	20646574 	.word	0x20646574
d0004cac:	68746977 	.word	0x68746977
d0004cb0:	002a2020 	.word	0x002a2020
d0004cb4:	00000000 	.word	0x00000000
d0004cb8:	01000000 	.word	0x01000000
d0004cbc:	44202a5f 	.word	0x44202a5f
d0004cc0:	2d696c65 	.word	0x2d696c65
d0004cc4:	617a6957 	.word	0x617a6957
d0004cc8:	32206472 	.word	0x32206472
d0004ccc:	2030322e 	.word	0x2030322e
d0004cd0:	0000002a 	.word	0x0000002a
d0004cd4:	00000000 	.word	0x00000000
d0004cd8:	2a5f0100 	.word	0x2a5f0100
d0004cdc:	20202020 	.word	0x20202020
d0004ce0:	47207962 	.word	0x47207962
d0004ce4:	6f7a7972 	.word	0x6f7a7972
d0004ce8:	20202172 	.word	0x20202172
d0004cec:	002a2020 	.word	0x002a2020
d0004cf0:	00000000 	.word	0x00000000
d0004cf4:	01000000 	.word	0x01000000
	...
d0004d14:	7f060100 	.word	0x7f060100
d0004d18:	01010000 	.word	0x01010000
d0004d1c:	00000202 	.word	0x00000202
	...
d0004d98:	2e4b2e4d 	.word	0x2e4b2e4d
d0004d9c:	37101d01 	.word	0x37101d01
d0004da0:	0010be00 	.word	0x0010be00
d0004da4:	058f3a02 	.word	0x058f3a02
d0004da8:	181c4001 	.word	0x181c4001
d0004dac:	37200000 	.word	0x37200000
d0004db0:	f0133a02 	.word	0xf0133a02
d0004db4:	00000000 	.word	0x00000000
d0004db8:	f0031d01 	.word	0xf0031d01
d0004dbc:	37300000 	.word	0x37300000
d0004dc0:	f013be00 	.word	0xf013be00
d0004dc4:	100c0000 	.word	0x100c0000
d0004dc8:	f003be00 	.word	0xf003be00
d0004dcc:	37400000 	.word	0x37400000
d0004dd0:	f013d600 	.word	0xf013d600
d0004dd4:	00000000 	.word	0x00000000
d0004dd8:	f0033a02 	.word	0xf0033a02
d0004ddc:	37500000 	.word	0x37500000
d0004de0:	f0133a02 	.word	0xf0133a02
d0004de4:	00000000 	.word	0x00000000
d0004de8:	f003be00 	.word	0xf003be00
d0004dec:	37600000 	.word	0x37600000
d0004df0:	f013d600 	.word	0xf013d600
d0004df4:	00000000 	.word	0x00000000
d0004df8:	f003d600 	.word	0xf003d600
d0004dfc:	37000000 	.word	0x37000000
d0004e00:	f013f000 	.word	0xf013f000
d0004e04:	00000000 	.word	0x00000000
d0004e08:	f0033a02 	.word	0xf0033a02
d0004e0c:	37000000 	.word	0x37000000
d0004e10:	f0133a02 	.word	0xf0133a02
d0004e14:	00000000 	.word	0x00000000
d0004e18:	f003d600 	.word	0xf003d600
d0004e1c:	37500000 	.word	0x37500000
d0004e20:	f013f000 	.word	0xf013f000
d0004e24:	00801d01 	.word	0x00801d01
d0004e28:	f003f000 	.word	0xf003f000
d0004e2c:	37400000 	.word	0x37400000
d0004e30:	f013fe00 	.word	0xf013fe00
d0004e34:	00000000 	.word	0x00000000
d0004e38:	f0033a02 	.word	0xf0033a02
d0004e3c:	37300000 	.word	0x37300000
d0004e40:	f0133a02 	.word	0xf0133a02
d0004e44:	100c0000 	.word	0x100c0000
d0004e48:	f003f000 	.word	0xf003f000
d0004e4c:	37200000 	.word	0x37200000
d0004e50:	f013fe00 	.word	0xf013fe00
d0004e54:	00000000 	.word	0x00000000
d0004e58:	f003fe00 	.word	0xf003fe00
d0004e5c:	37300000 	.word	0x37300000
d0004e60:	f0131d01 	.word	0xf0131d01
d0004e64:	00000000 	.word	0x00000000
d0004e68:	f0033a02 	.word	0xf0033a02
d0004e6c:	37400000 	.word	0x37400000
d0004e70:	f0133a02 	.word	0xf0133a02
d0004e74:	00000000 	.word	0x00000000
d0004e78:	f003fe00 	.word	0xf003fe00
d0004e7c:	37300000 	.word	0x37300000
d0004e80:	f0134001 	.word	0xf0134001
d0004e84:	00000000 	.word	0x00000000
d0004e88:	f0031d01 	.word	0xf0031d01
d0004e8c:	37200000 	.word	0x37200000
d0004e90:	f0131d01 	.word	0xf0131d01
d0004e94:	00000000 	.word	0x00000000
d0004e98:	f0033a02 	.word	0xf0033a02
d0004e9c:	47104001 	.word	0x47104001
d0004ea0:	f013be00 	.word	0xf013be00
d0004ea4:	00803a02 	.word	0x00803a02
d0004ea8:	f0034001 	.word	0xf0034001
d0004eac:	47200000 	.word	0x47200000
d0004eb0:	f0133a02 	.word	0xf0133a02
d0004eb4:	00000000 	.word	0x00000000
d0004eb8:	f0031d01 	.word	0xf0031d01
d0004ebc:	47300000 	.word	0x47300000
d0004ec0:	f013be00 	.word	0xf013be00
d0004ec4:	100c0000 	.word	0x100c0000
d0004ec8:	f003be00 	.word	0xf003be00
d0004ecc:	47400000 	.word	0x47400000
d0004ed0:	f013d600 	.word	0xf013d600
d0004ed4:	00000000 	.word	0x00000000
d0004ed8:	f0033a02 	.word	0xf0033a02
d0004edc:	47500000 	.word	0x47500000
d0004ee0:	f0133a02 	.word	0xf0133a02
d0004ee4:	00000000 	.word	0x00000000
d0004ee8:	f003be00 	.word	0xf003be00
d0004eec:	47600000 	.word	0x47600000
d0004ef0:	f013d600 	.word	0xf013d600
d0004ef4:	00000000 	.word	0x00000000
d0004ef8:	f003d600 	.word	0xf003d600
d0004efc:	47000000 	.word	0x47000000
d0004f00:	f013f000 	.word	0xf013f000
d0004f04:	00000000 	.word	0x00000000
d0004f08:	f0033a02 	.word	0xf0033a02
d0004f0c:	47000000 	.word	0x47000000
d0004f10:	f0133a02 	.word	0xf0133a02
d0004f14:	00000000 	.word	0x00000000
d0004f18:	f003d600 	.word	0xf003d600
d0004f1c:	47500000 	.word	0x47500000
d0004f20:	f013f000 	.word	0xf013f000
d0004f24:	00801d01 	.word	0x00801d01
d0004f28:	f003f000 	.word	0xf003f000
d0004f2c:	47400000 	.word	0x47400000
d0004f30:	f013fe00 	.word	0xf013fe00
d0004f34:	00000000 	.word	0x00000000
d0004f38:	f0033a02 	.word	0xf0033a02
d0004f3c:	47300000 	.word	0x47300000
d0004f40:	f0133a02 	.word	0xf0133a02
d0004f44:	100c0000 	.word	0x100c0000
d0004f48:	f003f000 	.word	0xf003f000
d0004f4c:	47200000 	.word	0x47200000
d0004f50:	f013fe00 	.word	0xf013fe00
d0004f54:	00000000 	.word	0x00000000
d0004f58:	f003fe00 	.word	0xf003fe00
d0004f5c:	47300000 	.word	0x47300000
d0004f60:	f0131d01 	.word	0xf0131d01
d0004f64:	00000000 	.word	0x00000000
d0004f68:	f0033a02 	.word	0xf0033a02
d0004f6c:	47400000 	.word	0x47400000
d0004f70:	f0133a02 	.word	0xf0133a02
d0004f74:	00000000 	.word	0x00000000
d0004f78:	f003fe00 	.word	0xf003fe00
d0004f7c:	47300000 	.word	0x47300000
d0004f80:	f0134001 	.word	0xf0134001
d0004f84:	00000000 	.word	0x00000000
d0004f88:	f0031d01 	.word	0xf0031d01
d0004f8c:	47200000 	.word	0x47200000
d0004f90:	f0131d01 	.word	0xf0131d01
d0004f94:	00000000 	.word	0x00000000
d0004f98:	f0033a02 	.word	0xf0033a02
d0004f9c:	47106801 	.word	0x47106801
d0004fa0:	f013be00 	.word	0xf013be00
d0004fa4:	00803a02 	.word	0x00803a02
d0004fa8:	f0034001 	.word	0xf0034001
d0004fac:	47200000 	.word	0x47200000
d0004fb0:	f0133a02 	.word	0xf0133a02
d0004fb4:	00000000 	.word	0x00000000
d0004fb8:	f0031d01 	.word	0xf0031d01
d0004fbc:	47300000 	.word	0x47300000
d0004fc0:	f013be00 	.word	0xf013be00
d0004fc4:	100c0000 	.word	0x100c0000
d0004fc8:	f003be00 	.word	0xf003be00
d0004fcc:	47400000 	.word	0x47400000
d0004fd0:	f013d600 	.word	0xf013d600
d0004fd4:	00000000 	.word	0x00000000
d0004fd8:	f0033a02 	.word	0xf0033a02
d0004fdc:	47500000 	.word	0x47500000
d0004fe0:	f0133a02 	.word	0xf0133a02
d0004fe4:	00000000 	.word	0x00000000
d0004fe8:	f003be00 	.word	0xf003be00
d0004fec:	47600000 	.word	0x47600000
d0004ff0:	f013d600 	.word	0xf013d600
d0004ff4:	00000000 	.word	0x00000000
d0004ff8:	f003d600 	.word	0xf003d600
d0004ffc:	47000000 	.word	0x47000000
d0005000:	f013f000 	.word	0xf013f000
d0005004:	00000000 	.word	0x00000000
d0005008:	f0033a02 	.word	0xf0033a02
d000500c:	47000000 	.word	0x47000000
d0005010:	f0133a02 	.word	0xf0133a02
d0005014:	00000000 	.word	0x00000000
d0005018:	f003d600 	.word	0xf003d600
d000501c:	47500000 	.word	0x47500000
d0005020:	f013f000 	.word	0xf013f000
d0005024:	00801d01 	.word	0x00801d01
d0005028:	f003f000 	.word	0xf003f000
d000502c:	47400000 	.word	0x47400000
d0005030:	f013fe00 	.word	0xf013fe00
d0005034:	00000000 	.word	0x00000000
d0005038:	f0033a02 	.word	0xf0033a02
d000503c:	47300000 	.word	0x47300000
d0005040:	f0133a02 	.word	0xf0133a02
d0005044:	100c0000 	.word	0x100c0000
d0005048:	f003f000 	.word	0xf003f000
d000504c:	47200000 	.word	0x47200000
d0005050:	f013fe00 	.word	0xf013fe00
d0005054:	00000000 	.word	0x00000000
d0005058:	f003fe00 	.word	0xf003fe00
d000505c:	47300000 	.word	0x47300000
d0005060:	f0131d01 	.word	0xf0131d01
d0005064:	00000000 	.word	0x00000000
d0005068:	f0033a02 	.word	0xf0033a02
d000506c:	47400000 	.word	0x47400000
d0005070:	f0133a02 	.word	0xf0133a02
d0005074:	00000000 	.word	0x00000000
d0005078:	f003fe00 	.word	0xf003fe00
d000507c:	47300000 	.word	0x47300000
d0005080:	f0134001 	.word	0xf0134001
d0005084:	00000000 	.word	0x00000000
d0005088:	f0031d01 	.word	0xf0031d01
d000508c:	47200000 	.word	0x47200000
d0005090:	f0131d01 	.word	0xf0131d01
d0005094:	00000000 	.word	0x00000000
d0005098:	f0033a02 	.word	0xf0033a02
d000509c:	47104001 	.word	0x47104001
d00050a0:	f013be00 	.word	0xf013be00
d00050a4:	00803a02 	.word	0x00803a02
d00050a8:	f0034001 	.word	0xf0034001
d00050ac:	47200000 	.word	0x47200000
d00050b0:	f0133a02 	.word	0xf0133a02
d00050b4:	00000000 	.word	0x00000000
d00050b8:	f0031d01 	.word	0xf0031d01
d00050bc:	47300000 	.word	0x47300000
d00050c0:	f013be00 	.word	0xf013be00
d00050c4:	100c0000 	.word	0x100c0000
d00050c8:	f003be00 	.word	0xf003be00
d00050cc:	47400000 	.word	0x47400000
d00050d0:	f013d600 	.word	0xf013d600
d00050d4:	00000000 	.word	0x00000000
d00050d8:	f0033a02 	.word	0xf0033a02
d00050dc:	47500000 	.word	0x47500000
d00050e0:	f0133a02 	.word	0xf0133a02
d00050e4:	00000000 	.word	0x00000000
d00050e8:	f003be00 	.word	0xf003be00
d00050ec:	47600000 	.word	0x47600000
d00050f0:	f013d600 	.word	0xf013d600
d00050f4:	00000000 	.word	0x00000000
d00050f8:	f003d600 	.word	0xf003d600
d00050fc:	47000000 	.word	0x47000000
d0005100:	f013f000 	.word	0xf013f000
d0005104:	00000000 	.word	0x00000000
d0005108:	f0033a02 	.word	0xf0033a02
d000510c:	47000000 	.word	0x47000000
d0005110:	f0133a02 	.word	0xf0133a02
d0005114:	00000000 	.word	0x00000000
d0005118:	f003d600 	.word	0xf003d600
d000511c:	47500000 	.word	0x47500000
d0005120:	f013f000 	.word	0xf013f000
d0005124:	00801d01 	.word	0x00801d01
d0005128:	f003f000 	.word	0xf003f000
d000512c:	47400000 	.word	0x47400000
d0005130:	f013fe00 	.word	0xf013fe00
d0005134:	00000000 	.word	0x00000000
d0005138:	f0033a02 	.word	0xf0033a02
d000513c:	47300000 	.word	0x47300000
d0005140:	f0133a02 	.word	0xf0133a02
d0005144:	100c0000 	.word	0x100c0000
d0005148:	f003f000 	.word	0xf003f000
d000514c:	47200000 	.word	0x47200000
d0005150:	f013fe00 	.word	0xf013fe00
d0005154:	00000000 	.word	0x00000000
d0005158:	f003fe00 	.word	0xf003fe00
d000515c:	47300000 	.word	0x47300000
d0005160:	f0131d01 	.word	0xf0131d01
d0005164:	00000000 	.word	0x00000000
d0005168:	f0033a02 	.word	0xf0033a02
d000516c:	47400000 	.word	0x47400000
d0005170:	f0133a02 	.word	0xf0133a02
d0005174:	00000000 	.word	0x00000000
d0005178:	f003fe00 	.word	0xf003fe00
d000517c:	47300000 	.word	0x47300000
d0005180:	f0134001 	.word	0xf0134001
d0005184:	00000000 	.word	0x00000000
d0005188:	f0031d01 	.word	0xf0031d01
d000518c:	47200000 	.word	0x47200000
d0005190:	f0131d01 	.word	0xf0131d01
d0005194:	00000000 	.word	0x00000000
d0005198:	f0033a02 	.word	0xf0033a02
d000519c:	37101d01 	.word	0x37101d01
d00051a0:	0010be00 	.word	0x0010be00
d00051a4:	058f3a02 	.word	0x058f3a02
d00051a8:	0060f000 	.word	0x0060f000
d00051ac:	37200000 	.word	0x37200000
d00051b0:	f0133a02 	.word	0xf0133a02
d00051b4:	00000000 	.word	0x00000000
d00051b8:	00601d01 	.word	0x00601d01
d00051bc:	37300000 	.word	0x37300000
d00051c0:	f013be00 	.word	0xf013be00
d00051c4:	100c0000 	.word	0x100c0000
d00051c8:	0060f000 	.word	0x0060f000
d00051cc:	37400000 	.word	0x37400000
d00051d0:	f013d600 	.word	0xf013d600
d00051d4:	00000000 	.word	0x00000000
d00051d8:	0060d600 	.word	0x0060d600
d00051dc:	37500000 	.word	0x37500000
d00051e0:	f0133a02 	.word	0xf0133a02
d00051e4:	00801d01 	.word	0x00801d01
d00051e8:	0060be00 	.word	0x0060be00
d00051ec:	37600000 	.word	0x37600000
d00051f0:	f013d600 	.word	0xf013d600
d00051f4:	00000000 	.word	0x00000000
d00051f8:	0060a000 	.word	0x0060a000
d00051fc:	37000000 	.word	0x37000000
d0005200:	f013f000 	.word	0xf013f000
d0005204:	00000000 	.word	0x00000000
d0005208:	00608f00 	.word	0x00608f00
d000520c:	37000000 	.word	0x37000000
d0005210:	f0133a02 	.word	0xf0133a02
d0005214:	00803a02 	.word	0x00803a02
d0005218:	206cbe00 	.word	0x206cbe00
d000521c:	37500000 	.word	0x37500000
d0005220:	f013f000 	.word	0xf013f000
d0005224:	00000000 	.word	0x00000000
d0005228:	0060be00 	.word	0x0060be00
d000522c:	37400000 	.word	0x37400000
d0005230:	f013fe00 	.word	0xf013fe00
d0005234:	100c0000 	.word	0x100c0000
d0005238:	0060a000 	.word	0x0060a000
d000523c:	37300000 	.word	0x37300000
d0005240:	f0133a02 	.word	0xf0133a02
d0005244:	f0831d01 	.word	0xf0831d01
d0005248:	00608f00 	.word	0x00608f00
d000524c:	37200000 	.word	0x37200000
d0005250:	f013fe00 	.word	0xf013fe00
d0005254:	00000000 	.word	0x00000000
d0005258:	206cbe00 	.word	0x206cbe00
d000525c:	37300000 	.word	0x37300000
d0005260:	f0131d01 	.word	0xf0131d01
d0005264:	f0833a02 	.word	0xf0833a02
d0005268:	a264a000 	.word	0xa264a000
d000526c:	37400000 	.word	0x37400000
d0005270:	f0133a02 	.word	0xf0133a02
d0005274:	100c0000 	.word	0x100c0000
d0005278:	a2040000 	.word	0xa2040000
d000527c:	37300000 	.word	0x37300000
d0005280:	f0134001 	.word	0xf0134001
d0005284:	f0831d01 	.word	0xf0831d01
d0005288:	f0638f00 	.word	0xf0638f00
d000528c:	37200000 	.word	0x37200000
d0005290:	f0131d01 	.word	0xf0131d01
d0005294:	00000000 	.word	0x00000000
d0005298:	206cbe00 	.word	0x206cbe00
d000529c:	47104001 	.word	0x47104001
d00052a0:	f013be00 	.word	0xf013be00
d00052a4:	00803a02 	.word	0x00803a02
d00052a8:	0060f000 	.word	0x0060f000
d00052ac:	47200000 	.word	0x47200000
d00052b0:	f0133a02 	.word	0xf0133a02
d00052b4:	00000000 	.word	0x00000000
d00052b8:	00601d01 	.word	0x00601d01
d00052bc:	47300000 	.word	0x47300000
d00052c0:	f013be00 	.word	0xf013be00
d00052c4:	100c0000 	.word	0x100c0000
d00052c8:	0060f000 	.word	0x0060f000
d00052cc:	47400000 	.word	0x47400000
d00052d0:	f013d600 	.word	0xf013d600
d00052d4:	00000000 	.word	0x00000000
d00052d8:	0060d600 	.word	0x0060d600
d00052dc:	47500000 	.word	0x47500000
d00052e0:	f0133a02 	.word	0xf0133a02
d00052e4:	00801d01 	.word	0x00801d01
d00052e8:	0060be00 	.word	0x0060be00
d00052ec:	47600000 	.word	0x47600000
d00052f0:	f013d600 	.word	0xf013d600
d00052f4:	00000000 	.word	0x00000000
d00052f8:	0060a000 	.word	0x0060a000
d00052fc:	47000000 	.word	0x47000000
d0005300:	f013f000 	.word	0xf013f000
d0005304:	00000000 	.word	0x00000000
d0005308:	00608f00 	.word	0x00608f00
d000530c:	47000000 	.word	0x47000000
d0005310:	f0133a02 	.word	0xf0133a02
d0005314:	00803a02 	.word	0x00803a02
d0005318:	206cbe00 	.word	0x206cbe00
d000531c:	47500000 	.word	0x47500000
d0005320:	f013f000 	.word	0xf013f000
d0005324:	00000000 	.word	0x00000000
d0005328:	0060be00 	.word	0x0060be00
d000532c:	47400000 	.word	0x47400000
d0005330:	f013fe00 	.word	0xf013fe00
d0005334:	100c0000 	.word	0x100c0000
d0005338:	0060a000 	.word	0x0060a000
d000533c:	47300000 	.word	0x47300000
d0005340:	f0133a02 	.word	0xf0133a02
d0005344:	f0831d01 	.word	0xf0831d01
d0005348:	00608f00 	.word	0x00608f00
d000534c:	47200000 	.word	0x47200000
d0005350:	f013fe00 	.word	0xf013fe00
d0005354:	00000000 	.word	0x00000000
d0005358:	206cbe00 	.word	0x206cbe00
d000535c:	47300000 	.word	0x47300000
d0005360:	f0131d01 	.word	0xf0131d01
d0005364:	f0833a02 	.word	0xf0833a02
d0005368:	a264a000 	.word	0xa264a000
d000536c:	47400000 	.word	0x47400000
d0005370:	f0133a02 	.word	0xf0133a02
d0005374:	100c0000 	.word	0x100c0000
d0005378:	a2040000 	.word	0xa2040000
d000537c:	47300000 	.word	0x47300000
d0005380:	f0134001 	.word	0xf0134001
d0005384:	f0831d01 	.word	0xf0831d01
d0005388:	f063be00 	.word	0xf063be00
d000538c:	47200000 	.word	0x47200000
d0005390:	f0131d01 	.word	0xf0131d01
d0005394:	00000000 	.word	0x00000000
d0005398:	206cbe00 	.word	0x206cbe00
d000539c:	47106801 	.word	0x47106801
d00053a0:	f013be00 	.word	0xf013be00
d00053a4:	00803a02 	.word	0x00803a02
d00053a8:	0060f000 	.word	0x0060f000
d00053ac:	47200000 	.word	0x47200000
d00053b0:	f0133a02 	.word	0xf0133a02
d00053b4:	00000000 	.word	0x00000000
d00053b8:	00601d01 	.word	0x00601d01
d00053bc:	47300000 	.word	0x47300000
d00053c0:	f013be00 	.word	0xf013be00
d00053c4:	100c0000 	.word	0x100c0000
d00053c8:	0060f000 	.word	0x0060f000
d00053cc:	47400000 	.word	0x47400000
d00053d0:	f013d600 	.word	0xf013d600
d00053d4:	00000000 	.word	0x00000000
d00053d8:	0060d600 	.word	0x0060d600
d00053dc:	47500000 	.word	0x47500000
d00053e0:	f0133a02 	.word	0xf0133a02
d00053e4:	00801d01 	.word	0x00801d01
d00053e8:	0060be00 	.word	0x0060be00
d00053ec:	47600000 	.word	0x47600000
d00053f0:	f013d600 	.word	0xf013d600
d00053f4:	00000000 	.word	0x00000000
d00053f8:	0060a000 	.word	0x0060a000
d00053fc:	47000000 	.word	0x47000000
d0005400:	f013f000 	.word	0xf013f000
d0005404:	00000000 	.word	0x00000000
d0005408:	00608f00 	.word	0x00608f00
d000540c:	47000000 	.word	0x47000000
d0005410:	f0133a02 	.word	0xf0133a02
d0005414:	00803a02 	.word	0x00803a02
d0005418:	206cbe00 	.word	0x206cbe00
d000541c:	47500000 	.word	0x47500000
d0005420:	f013f000 	.word	0xf013f000
d0005424:	00000000 	.word	0x00000000
d0005428:	0060be00 	.word	0x0060be00
d000542c:	47400000 	.word	0x47400000
d0005430:	f013fe00 	.word	0xf013fe00
d0005434:	100c0000 	.word	0x100c0000
d0005438:	0060a000 	.word	0x0060a000
d000543c:	47300000 	.word	0x47300000
d0005440:	f0133a02 	.word	0xf0133a02
d0005444:	f0831d01 	.word	0xf0831d01
d0005448:	00608f00 	.word	0x00608f00
d000544c:	47200000 	.word	0x47200000
d0005450:	f013fe00 	.word	0xf013fe00
d0005454:	00000000 	.word	0x00000000
d0005458:	206cbe00 	.word	0x206cbe00
d000545c:	47300000 	.word	0x47300000
d0005460:	f0131d01 	.word	0xf0131d01
d0005464:	f0833a02 	.word	0xf0833a02
d0005468:	a264be00 	.word	0xa264be00
d000546c:	47400000 	.word	0x47400000
d0005470:	f0133a02 	.word	0xf0133a02
d0005474:	100c0000 	.word	0x100c0000
d0005478:	a2040000 	.word	0xa2040000
d000547c:	47300000 	.word	0x47300000
d0005480:	f0134001 	.word	0xf0134001
d0005484:	f0831d01 	.word	0xf0831d01
d0005488:	f063d600 	.word	0xf063d600
d000548c:	47200000 	.word	0x47200000
d0005490:	f0131d01 	.word	0xf0131d01
d0005494:	00000000 	.word	0x00000000
d0005498:	206cbe00 	.word	0x206cbe00
d000549c:	47104001 	.word	0x47104001
d00054a0:	f013be00 	.word	0xf013be00
d00054a4:	00803a02 	.word	0x00803a02
d00054a8:	0060f000 	.word	0x0060f000
d00054ac:	47200000 	.word	0x47200000
d00054b0:	f0133a02 	.word	0xf0133a02
d00054b4:	00000000 	.word	0x00000000
d00054b8:	00601d01 	.word	0x00601d01
d00054bc:	47300000 	.word	0x47300000
d00054c0:	f013be00 	.word	0xf013be00
d00054c4:	100c0000 	.word	0x100c0000
d00054c8:	0060f000 	.word	0x0060f000
d00054cc:	47400000 	.word	0x47400000
d00054d0:	f013d600 	.word	0xf013d600
d00054d4:	00000000 	.word	0x00000000
d00054d8:	0060d600 	.word	0x0060d600
d00054dc:	47500000 	.word	0x47500000
d00054e0:	f0133a02 	.word	0xf0133a02
d00054e4:	00801d01 	.word	0x00801d01
d00054e8:	0060be00 	.word	0x0060be00
d00054ec:	47600000 	.word	0x47600000
d00054f0:	f013d600 	.word	0xf013d600
d00054f4:	00000000 	.word	0x00000000
d00054f8:	0060a000 	.word	0x0060a000
d00054fc:	47000000 	.word	0x47000000
d0005500:	f013f000 	.word	0xf013f000
d0005504:	00000000 	.word	0x00000000
d0005508:	00608f00 	.word	0x00608f00
d000550c:	47000000 	.word	0x47000000
d0005510:	f0133a02 	.word	0xf0133a02
d0005514:	00803a02 	.word	0x00803a02
d0005518:	206cbe00 	.word	0x206cbe00
d000551c:	47500000 	.word	0x47500000
d0005520:	f013f000 	.word	0xf013f000
d0005524:	00000000 	.word	0x00000000
d0005528:	0060be00 	.word	0x0060be00
d000552c:	47400000 	.word	0x47400000
d0005530:	f013fe00 	.word	0xf013fe00
d0005534:	100c0000 	.word	0x100c0000
d0005538:	0060a000 	.word	0x0060a000
d000553c:	47300000 	.word	0x47300000
d0005540:	f0133a02 	.word	0xf0133a02
d0005544:	f0831d01 	.word	0xf0831d01
d0005548:	00608f00 	.word	0x00608f00
d000554c:	47200000 	.word	0x47200000
d0005550:	f013fe00 	.word	0xf013fe00
d0005554:	00000000 	.word	0x00000000
d0005558:	206cbe00 	.word	0x206cbe00
d000555c:	47300000 	.word	0x47300000
d0005560:	f0131d01 	.word	0xf0131d01
d0005564:	f0833a02 	.word	0xf0833a02
d0005568:	a264a000 	.word	0xa264a000
d000556c:	47400000 	.word	0x47400000
d0005570:	f0133a02 	.word	0xf0133a02
d0005574:	100c0000 	.word	0x100c0000
d0005578:	a2040000 	.word	0xa2040000
d000557c:	47300000 	.word	0x47300000
d0005580:	f0134001 	.word	0xf0134001
d0005584:	f0831d01 	.word	0xf0831d01
d0005588:	f0638f00 	.word	0xf0638f00
d000558c:	47200000 	.word	0x47200000
d0005590:	f0131d01 	.word	0xf0131d01
d0005594:	00000000 	.word	0x00000000
d0005598:	206cbe00 	.word	0x206cbe00
d000559c:	37101d01 	.word	0x37101d01
d00055a0:	37901d01 	.word	0x37901d01
d00055a4:	058f3a02 	.word	0x058f3a02
d00055a8:	0060f000 	.word	0x0060f000
d00055ac:	37200000 	.word	0x37200000
d00055b0:	37000000 	.word	0x37000000
d00055b4:	00000000 	.word	0x00000000
d00055b8:	00601d01 	.word	0x00601d01
d00055bc:	37300000 	.word	0x37300000
d00055c0:	206cf000 	.word	0x206cf000
d00055c4:	100c0000 	.word	0x100c0000
d00055c8:	0060f000 	.word	0x0060f000
d00055cc:	37400000 	.word	0x37400000
d00055d0:	37901d01 	.word	0x37901d01
d00055d4:	00000000 	.word	0x00000000
d00055d8:	0060d600 	.word	0x0060d600
d00055dc:	37500000 	.word	0x37500000
d00055e0:	206cf000 	.word	0x206cf000
d00055e4:	00801d01 	.word	0x00801d01
d00055e8:	0060be00 	.word	0x0060be00
d00055ec:	37600000 	.word	0x37600000
d00055f0:	0000d600 	.word	0x0000d600
d00055f4:	00000000 	.word	0x00000000
d00055f8:	0060a000 	.word	0x0060a000
d00055fc:	37000000 	.word	0x37000000
d0005600:	37901d01 	.word	0x37901d01
d0005604:	00000000 	.word	0x00000000
d0005608:	00608f00 	.word	0x00608f00
d000560c:	37000000 	.word	0x37000000
d0005610:	206ca000 	.word	0x206ca000
d0005614:	00803a02 	.word	0x00803a02
d0005618:	206cbe00 	.word	0x206cbe00
d000561c:	37500000 	.word	0x37500000
d0005620:	00008f00 	.word	0x00008f00
d0005624:	00000000 	.word	0x00000000
d0005628:	0060be00 	.word	0x0060be00
d000562c:	37400000 	.word	0x37400000
d0005630:	100cbe00 	.word	0x100cbe00
d0005634:	100c0000 	.word	0x100c0000
d0005638:	0060a000 	.word	0x0060a000
d000563c:	37300000 	.word	0x37300000
d0005640:	200cbe00 	.word	0x200cbe00
d0005644:	f0831d01 	.word	0xf0831d01
d0005648:	00608f00 	.word	0x00608f00
d000564c:	37200000 	.word	0x37200000
d0005650:	0000a000 	.word	0x0000a000
d0005654:	00000000 	.word	0x00000000
d0005658:	206cbe00 	.word	0x206cbe00
d000565c:	37300000 	.word	0x37300000
d0005660:	00008f00 	.word	0x00008f00
d0005664:	f0833a02 	.word	0xf0833a02
d0005668:	a264a000 	.word	0xa264a000
d000566c:	37400000 	.word	0x37400000
d0005670:	100cbe00 	.word	0x100cbe00
d0005674:	100c0000 	.word	0x100c0000
d0005678:	a2040000 	.word	0xa2040000
d000567c:	37300000 	.word	0x37300000
d0005680:	200ca000 	.word	0x200ca000
d0005684:	f0831d01 	.word	0xf0831d01
d0005688:	f0638f00 	.word	0xf0638f00
d000568c:	37200000 	.word	0x37200000
	...
d0005698:	206cbe00 	.word	0x206cbe00
d000569c:	47104001 	.word	0x47104001
d00056a0:	47904001 	.word	0x47904001
d00056a4:	00803a02 	.word	0x00803a02
d00056a8:	0060f000 	.word	0x0060f000
d00056ac:	47200000 	.word	0x47200000
d00056b0:	47000000 	.word	0x47000000
d00056b4:	00000000 	.word	0x00000000
d00056b8:	00601d01 	.word	0x00601d01
d00056bc:	47300000 	.word	0x47300000
d00056c0:	206cf000 	.word	0x206cf000
d00056c4:	100c0000 	.word	0x100c0000
d00056c8:	0060f000 	.word	0x0060f000
d00056cc:	47400000 	.word	0x47400000
d00056d0:	47904001 	.word	0x47904001
d00056d4:	00000000 	.word	0x00000000
d00056d8:	0060d600 	.word	0x0060d600
d00056dc:	47500000 	.word	0x47500000
d00056e0:	206cf000 	.word	0x206cf000
d00056e4:	00801d01 	.word	0x00801d01
d00056e8:	0060be00 	.word	0x0060be00
d00056ec:	47600000 	.word	0x47600000
d00056f0:	0000d600 	.word	0x0000d600
d00056f4:	00000000 	.word	0x00000000
d00056f8:	0060a000 	.word	0x0060a000
d00056fc:	47000000 	.word	0x47000000
d0005700:	47904001 	.word	0x47904001
d0005704:	00000000 	.word	0x00000000
d0005708:	00608f00 	.word	0x00608f00
d000570c:	47000000 	.word	0x47000000
d0005710:	206ca000 	.word	0x206ca000
d0005714:	00803a02 	.word	0x00803a02
d0005718:	206cbe00 	.word	0x206cbe00
d000571c:	47500000 	.word	0x47500000
d0005720:	00008f00 	.word	0x00008f00
d0005724:	00000000 	.word	0x00000000
d0005728:	0060be00 	.word	0x0060be00
d000572c:	47400000 	.word	0x47400000
d0005730:	100cbe00 	.word	0x100cbe00
d0005734:	100c0000 	.word	0x100c0000
d0005738:	0060a000 	.word	0x0060a000
d000573c:	47300000 	.word	0x47300000
d0005740:	200cbe00 	.word	0x200cbe00
d0005744:	f0831d01 	.word	0xf0831d01
d0005748:	00608f00 	.word	0x00608f00
d000574c:	47200000 	.word	0x47200000
d0005750:	0000a000 	.word	0x0000a000
d0005754:	00000000 	.word	0x00000000
d0005758:	206cbe00 	.word	0x206cbe00
d000575c:	47300000 	.word	0x47300000
d0005760:	00008f00 	.word	0x00008f00
d0005764:	f0833a02 	.word	0xf0833a02
d0005768:	a264a000 	.word	0xa264a000
d000576c:	47400000 	.word	0x47400000
d0005770:	100cbe00 	.word	0x100cbe00
d0005774:	100c0000 	.word	0x100c0000
d0005778:	a2040000 	.word	0xa2040000
d000577c:	47300000 	.word	0x47300000
d0005780:	200ca000 	.word	0x200ca000
d0005784:	f0831d01 	.word	0xf0831d01
d0005788:	f063be00 	.word	0xf063be00
d000578c:	47200000 	.word	0x47200000
	...
d0005798:	206cbe00 	.word	0x206cbe00
d000579c:	47106801 	.word	0x47106801
d00057a0:	47906801 	.word	0x47906801
d00057a4:	00803a02 	.word	0x00803a02
d00057a8:	0060f000 	.word	0x0060f000
d00057ac:	47200000 	.word	0x47200000
d00057b0:	47000000 	.word	0x47000000
d00057b4:	00000000 	.word	0x00000000
d00057b8:	00601d01 	.word	0x00601d01
d00057bc:	47300000 	.word	0x47300000
d00057c0:	206cf000 	.word	0x206cf000
d00057c4:	100c0000 	.word	0x100c0000
d00057c8:	0060f000 	.word	0x0060f000
d00057cc:	47400000 	.word	0x47400000
d00057d0:	47906801 	.word	0x47906801
d00057d4:	00000000 	.word	0x00000000
d00057d8:	0060d600 	.word	0x0060d600
d00057dc:	47500000 	.word	0x47500000
d00057e0:	206cf000 	.word	0x206cf000
d00057e4:	00801d01 	.word	0x00801d01
d00057e8:	0060be00 	.word	0x0060be00
d00057ec:	47600000 	.word	0x47600000
d00057f0:	0000d600 	.word	0x0000d600
d00057f4:	00000000 	.word	0x00000000
d00057f8:	0060a000 	.word	0x0060a000
d00057fc:	47000000 	.word	0x47000000
d0005800:	47906801 	.word	0x47906801
d0005804:	00000000 	.word	0x00000000
d0005808:	00608f00 	.word	0x00608f00
d000580c:	47000000 	.word	0x47000000
d0005810:	206ca000 	.word	0x206ca000
d0005814:	00803a02 	.word	0x00803a02
d0005818:	206cbe00 	.word	0x206cbe00
d000581c:	47500000 	.word	0x47500000
d0005820:	00008f00 	.word	0x00008f00
d0005824:	00000000 	.word	0x00000000
d0005828:	0060be00 	.word	0x0060be00
d000582c:	47400000 	.word	0x47400000
d0005830:	100cbe00 	.word	0x100cbe00
d0005834:	100c0000 	.word	0x100c0000
d0005838:	0060a000 	.word	0x0060a000
d000583c:	47300000 	.word	0x47300000
d0005840:	200cbe00 	.word	0x200cbe00
d0005844:	f0831d01 	.word	0xf0831d01
d0005848:	00608f00 	.word	0x00608f00
d000584c:	47200000 	.word	0x47200000
d0005850:	0000a000 	.word	0x0000a000
d0005854:	00000000 	.word	0x00000000
d0005858:	206cbe00 	.word	0x206cbe00
d000585c:	47300000 	.word	0x47300000
d0005860:	00008f00 	.word	0x00008f00
d0005864:	f0833a02 	.word	0xf0833a02
d0005868:	a264be00 	.word	0xa264be00
d000586c:	47400000 	.word	0x47400000
d0005870:	100cbe00 	.word	0x100cbe00
d0005874:	100c0000 	.word	0x100c0000
d0005878:	a2040000 	.word	0xa2040000
d000587c:	47300000 	.word	0x47300000
d0005880:	200cbe00 	.word	0x200cbe00
d0005884:	f0831d01 	.word	0xf0831d01
d0005888:	f063d600 	.word	0xf063d600
d000588c:	47200000 	.word	0x47200000
	...
d0005898:	206cbe00 	.word	0x206cbe00
d000589c:	47104001 	.word	0x47104001
d00058a0:	47904001 	.word	0x47904001
d00058a4:	00803a02 	.word	0x00803a02
d00058a8:	0060f000 	.word	0x0060f000
d00058ac:	47200000 	.word	0x47200000
d00058b0:	47000000 	.word	0x47000000
d00058b4:	00000000 	.word	0x00000000
d00058b8:	00601d01 	.word	0x00601d01
d00058bc:	47300000 	.word	0x47300000
d00058c0:	206cf000 	.word	0x206cf000
d00058c4:	100c0000 	.word	0x100c0000
d00058c8:	0060f000 	.word	0x0060f000
d00058cc:	47400000 	.word	0x47400000
d00058d0:	47904001 	.word	0x47904001
d00058d4:	00000000 	.word	0x00000000
d00058d8:	0060d600 	.word	0x0060d600
d00058dc:	47500000 	.word	0x47500000
d00058e0:	206cf000 	.word	0x206cf000
d00058e4:	00801d01 	.word	0x00801d01
d00058e8:	0060be00 	.word	0x0060be00
d00058ec:	47600000 	.word	0x47600000
d00058f0:	0000d600 	.word	0x0000d600
d00058f4:	00000000 	.word	0x00000000
d00058f8:	0060a000 	.word	0x0060a000
d00058fc:	47000000 	.word	0x47000000
d0005900:	47904001 	.word	0x47904001
d0005904:	00000000 	.word	0x00000000
d0005908:	00608f00 	.word	0x00608f00
d000590c:	47000000 	.word	0x47000000
d0005910:	206ca000 	.word	0x206ca000
d0005914:	00803a02 	.word	0x00803a02
d0005918:	206cbe00 	.word	0x206cbe00
d000591c:	47500000 	.word	0x47500000
d0005920:	00008f00 	.word	0x00008f00
d0005924:	00000000 	.word	0x00000000
d0005928:	0060be00 	.word	0x0060be00
d000592c:	47400000 	.word	0x47400000
d0005930:	100cbe00 	.word	0x100cbe00
d0005934:	100c0000 	.word	0x100c0000
d0005938:	0060a000 	.word	0x0060a000
d000593c:	47300000 	.word	0x47300000
d0005940:	200cbe00 	.word	0x200cbe00
d0005944:	f0831d01 	.word	0xf0831d01
d0005948:	00608f00 	.word	0x00608f00
d000594c:	47200000 	.word	0x47200000
d0005950:	0000a000 	.word	0x0000a000
d0005954:	00000000 	.word	0x00000000
d0005958:	206cbe00 	.word	0x206cbe00
d000595c:	47300000 	.word	0x47300000
d0005960:	00008f00 	.word	0x00008f00
d0005964:	f0833a02 	.word	0xf0833a02
d0005968:	0000be00 	.word	0x0000be00
d000596c:	47400000 	.word	0x47400000
d0005970:	100cbe00 	.word	0x100cbe00
d0005974:	00000000 	.word	0x00000000
d0005978:	0000a000 	.word	0x0000a000
d000597c:	47300000 	.word	0x47300000
d0005980:	200ca000 	.word	0x200ca000
d0005984:	100c0000 	.word	0x100c0000
d0005988:	00008f00 	.word	0x00008f00
d000598c:	47200000 	.word	0x47200000
	...
d0005998:	100cbe00 	.word	0x100cbe00
d000599c:	02000000 	.word	0x02000000
d00059a0:	785e3613 	.word	0x785e3613
d00059a4:	7f7f7f7f 	.word	0x7f7f7f7f
d00059a8:	7f7f7f7f 	.word	0x7f7f7f7f
d00059ac:	5e66737d 	.word	0x5e66737d
d00059b0:	3a434d56 	.word	0x3a434d56
d00059b4:	151f2831 	.word	0x151f2831
d00059b8:	1b010000 	.word	0x1b010000
d00059bc:	7f7f794f 	.word	0x7f7f794f
d00059c0:	7f7f7f7f 	.word	0x7f7f7f7f
d00059c4:	7f7f7f7f 	.word	0x7f7f7f7f
d00059c8:	525d5f6b 	.word	0x525d5f6b
d00059cc:	2e374049 	.word	0x2e374049
d00059d0:	09121b24 	.word	0x09121b24
d00059d4:	32030000 	.word	0x32030000
d00059d8:	7f7f7f6d 	.word	0x7f7f7f6d
d00059dc:	7f7f7f7f 	.word	0x7f7f7f7f
d00059e0:	7f7f7f7f 	.word	0x7f7f7f7f
d00059e4:	4e576559 	.word	0x4e576559
d00059e8:	29333c45 	.word	0x29333c45
d00059ec:	050e1720 	.word	0x050e1720
d00059f0:	3d030000 	.word	0x3d030000
d00059f4:	7f7f7f7b 	.word	0x7f7f7f7b
d00059f8:	7f7f7f7f 	.word	0x7f7f7f7f
d00059fc:	7f7f7f7f 	.word	0x7f7f7f7f
d0005a00:	4c546850 	.word	0x4c546850
d0005a04:	27313a43 	.word	0x27313a43
d0005a08:	030c151e 	.word	0x030c151e
d0005a0c:	4b030000 	.word	0x4b030000
d0005a10:	7f7f7f7f 	.word	0x7f7f7f7f
d0005a14:	7f7f7f7f 	.word	0x7f7f7f7f
d0005a18:	7f7f7f7f 	.word	0x7f7f7f7f
d0005a1c:	4a4f6e45 	.word	0x4a4f6e45
d0005a20:	252f3841 	.word	0x252f3841
d0005a24:	010a131c 	.word	0x010a131c
d0005a28:	5d030000 	.word	0x5d030000
d0005a2c:	7f7f7f7f 	.word	0x7f7f7f7f
d0005a30:	7f7f7f7f 	.word	0x7f7f7f7f
d0005a34:	7f7f7f7f 	.word	0x7f7f7f7f
d0005a38:	49487837 	.word	0x49487837
d0005a3c:	232d363f 	.word	0x232d363f
d0005a40:	ff08111a 	.word	0xff08111a
d0005a44:	feff0000 	.word	0xfeff0000
d0005a48:	91b3dbf4 	.word	0x91b3dbf4
d0005a4c:	80808080 	.word	0x80808080
d0005a50:	660ab183 	.word	0x660ab183
d0005a54:	616f7f7f 	.word	0x616f7f7f
d0005a58:	3f48515a 	.word	0x3f48515a
d0005a5c:	1a232c35 	.word	0x1a232c35
	...
d0005a74:	fdfeff00 	.word	0xfdfeff00
d0005a78:	e5f4effb 	.word	0xe5f4effb
d0005a7c:	b8dde0ed 	.word	0xb8dde0ed
d0005a80:	afb5beb7 	.word	0xafb5beb7
d0005a84:	979ca3a8 	.word	0x979ca3a8
d0005a88:	9696979a 	.word	0x9696979a
d0005a8c:	96969696 	.word	0x96969696
d0005a90:	96969696 	.word	0x96969696
d0005a94:	a3979696 	.word	0xa3979696
d0005a98:	c9c1b8b1 	.word	0xc9c1b8b1
d0005a9c:	06f1f8f7 	.word	0x06f1f8f7
d0005aa0:	271e150c 	.word	0x271e150c
d0005aa4:	613f5250 	.word	0x613f5250
d0005aa8:	5a595a5d 	.word	0x5a595a5d
d0005aac:	5a5c5d5c 	.word	0x5a5c5d5c
d0005ab0:	4e515457 	.word	0x4e515457
d0005ab4:	443e414d 	.word	0x443e414d
d0005ab8:	3f414141 	.word	0x3f414141
d0005abc:	3a3b3c3d 	.word	0x3a3b3c3d
d0005ac0:	1a0f383a 	.word	0x1a0f383a
d0005ac4:	1a1d1d24 	.word	0x1a1d1d24
d0005ac8:	1718191a 	.word	0x1718191a
d0005acc:	11121314 	.word	0x11121314
d0005ad0:	7a190000 	.word	0x7a190000
d0005ad4:	7f7f7f7f 	.word	0x7f7f7f7f
d0005ad8:	3d505e7d 	.word	0x3d505e7d
d0005adc:	Address 0x00000000d0005adc is out of bounds.


Disassembly of section .init:

d0005ae0 <_init>:
d0005ae0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0005ae2:	bf00      	nop

Disassembly of section .fini:

d0005ae4 <_fini>:
d0005ae4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0005ae6:	bf00      	nop
