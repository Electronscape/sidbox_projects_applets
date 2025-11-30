
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0040010 <applet_entry>:
d0040010:	f000 b8f0 	b.w	d00401f4 <main>

d0040014 <initDisplayBuffers>:
d0040014:	4b0c      	ldr	r3, [pc, #48]	; (d0040048 <initDisplayBuffers+0x34>)
d0040016:	4a0d      	ldr	r2, [pc, #52]	; (d004004c <initDisplayBuffers+0x38>)
d0040018:	f8d3 00ec 	ldr.w	r0, [r3, #236]	; 0xec
d004001c:	b410      	push	{r4}
d004001e:	f8d3 40f4 	ldr.w	r4, [r3, #244]	; 0xf4
d0040022:	f8d3 10f4 	ldr.w	r1, [r3, #244]	; 0xf4
d0040026:	6002      	str	r2, [r0, #0]
d0040028:	6022      	str	r2, [r4, #0]
d004002a:	4809      	ldr	r0, [pc, #36]	; (d0040050 <initDisplayBuffers+0x3c>)
d004002c:	680a      	ldr	r2, [r1, #0]
d004002e:	4909      	ldr	r1, [pc, #36]	; (d0040054 <initDisplayBuffers+0x40>)
d0040030:	6002      	str	r2, [r0, #0]
d0040032:	f8d3 00f0 	ldr.w	r0, [r3, #240]	; 0xf0
d0040036:	f8d3 30f0 	ldr.w	r3, [r3, #240]	; 0xf0
d004003a:	4a07      	ldr	r2, [pc, #28]	; (d0040058 <initDisplayBuffers+0x44>)
d004003c:	6008      	str	r0, [r1, #0]
d004003e:	681b      	ldr	r3, [r3, #0]
d0040040:	f85d 4b04 	ldr.w	r4, [sp], #4
d0040044:	6013      	str	r3, [r2, #0]
d0040046:	4770      	bx	lr
d0040048:	2001f000 	.word	0x2001f000
d004004c:	d06b2000 	.word	0xd06b2000
d0040050:	d0040eac 	.word	0xd0040eac
d0040054:	d0040eb0 	.word	0xd0040eb0
d0040058:	d0040eb8 	.word	0xd0040eb8

d004005c <ShowBuffer>:
d004005c:	4b09      	ldr	r3, [pc, #36]	; (d0040084 <ShowBuffer+0x28>)
d004005e:	b140      	cbz	r0, d0040072 <ShowBuffer+0x16>
d0040060:	f8d3 10ec 	ldr.w	r1, [r3, #236]	; 0xec
d0040064:	4808      	ldr	r0, [pc, #32]	; (d0040088 <ShowBuffer+0x2c>)
d0040066:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d004006a:	4a08      	ldr	r2, [pc, #32]	; (d004008c <ShowBuffer+0x30>)
d004006c:	6008      	str	r0, [r1, #0]
d004006e:	601a      	str	r2, [r3, #0]
d0040070:	4770      	bx	lr
d0040072:	f8d3 10ec 	ldr.w	r1, [r3, #236]	; 0xec
d0040076:	4805      	ldr	r0, [pc, #20]	; (d004008c <ShowBuffer+0x30>)
d0040078:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d004007c:	4a02      	ldr	r2, [pc, #8]	; (d0040088 <ShowBuffer+0x2c>)
d004007e:	6008      	str	r0, [r1, #0]
d0040080:	601a      	str	r2, [r3, #0]
d0040082:	4770      	bx	lr
d0040084:	2001f000 	.word	0x2001f000
d0040088:	d06b2000 	.word	0xd06b2000
d004008c:	d06d9000 	.word	0xd06d9000

d0040090 <_sbrk>:
d0040090:	4904      	ldr	r1, [pc, #16]	; (d00400a4 <_sbrk+0x14>)
d0040092:	4a05      	ldr	r2, [pc, #20]	; (d00400a8 <_sbrk+0x18>)
d0040094:	680b      	ldr	r3, [r1, #0]
d0040096:	2b00      	cmp	r3, #0
d0040098:	bf08      	it	eq
d004009a:	4613      	moveq	r3, r2
d004009c:	181a      	adds	r2, r3, r0
d004009e:	4618      	mov	r0, r3
d00400a0:	600a      	str	r2, [r1, #0]
d00400a2:	4770      	bx	lr
d00400a4:	d0040e38 	.word	0xd0040e38
d00400a8:	d0040ec9 	.word	0xd0040ec9

d00400ac <task2>:
d00400ac:	b570      	push	{r4, r5, r6, lr}
d00400ae:	4d17      	ldr	r5, [pc, #92]	; (d004010c <task2+0x60>)
d00400b0:	b088      	sub	sp, #32
d00400b2:	4c17      	ldr	r4, [pc, #92]	; (d0040110 <task2+0x64>)
d00400b4:	2120      	movs	r1, #32
d00400b6:	682b      	ldr	r3, [r5, #0]
d00400b8:	4668      	mov	r0, sp
d00400ba:	4a16      	ldr	r2, [pc, #88]	; (d0040114 <task2+0x68>)
d00400bc:	1c5e      	adds	r6, r3, #1
d00400be:	602e      	str	r6, [r5, #0]
d00400c0:	f000 f99a 	bl	d00403f8 <sniprintf>
d00400c4:	f8d4 5138 	ldr.w	r5, [r4, #312]	; 0x138
d00400c8:	2332      	movs	r3, #50	; 0x32
d00400ca:	2296      	movs	r2, #150	; 0x96
d00400cc:	210a      	movs	r1, #10
d00400ce:	2078      	movs	r0, #120	; 0x78
d00400d0:	47a8      	blx	r5
d00400d2:	4668      	mov	r0, sp
d00400d4:	f000 f9c4 	bl	d0040460 <strlen>
d00400d8:	f8d4 20f8 	ldr.w	r2, [r4, #248]	; 0xf8
d00400dc:	2100      	movs	r1, #0
d00400de:	00c0      	lsls	r0, r0, #3
d00400e0:	232e      	movs	r3, #46	; 0x2e
d00400e2:	7011      	strb	r1, [r2, #0]
d00400e4:	f100 027d 	add.w	r2, r0, #125	; 0x7d
d00400e8:	f8d4 513c 	ldr.w	r5, [r4, #316]	; 0x13c
d00400ec:	211e      	movs	r1, #30
d00400ee:	207d      	movs	r0, #125	; 0x7d
d00400f0:	47a8      	blx	r5
d00400f2:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d00400f6:	25ff      	movs	r5, #255	; 0xff
d00400f8:	466a      	mov	r2, sp
d00400fa:	211e      	movs	r1, #30
d00400fc:	207d      	movs	r0, #125	; 0x7d
d00400fe:	701d      	strb	r5, [r3, #0]
d0040100:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d0040104:	4798      	blx	r3
d0040106:	b008      	add	sp, #32
d0040108:	bd70      	pop	{r4, r5, r6, pc}
d004010a:	bf00      	nop
d004010c:	d0040e3c 	.word	0xd0040e3c
d0040110:	2001f000 	.word	0x2001f000
d0040114:	d0040d5c 	.word	0xd0040d5c

d0040118 <task1>:
d0040118:	b570      	push	{r4, r5, r6, lr}
d004011a:	4c1c      	ldr	r4, [pc, #112]	; (d004018c <task1+0x74>)
d004011c:	210a      	movs	r1, #10
d004011e:	4e1c      	ldr	r6, [pc, #112]	; (d0040190 <task1+0x78>)
d0040120:	2332      	movs	r3, #50	; 0x32
d0040122:	7825      	ldrb	r5, [r4, #0]
d0040124:	4608      	mov	r0, r1
d0040126:	2264      	movs	r2, #100	; 0x64
d0040128:	f085 0501 	eor.w	r5, r5, #1
d004012c:	7025      	strb	r5, [r4, #0]
d004012e:	f8d6 5138 	ldr.w	r5, [r6, #312]	; 0x138
d0040132:	47a8      	blx	r5
d0040134:	7823      	ldrb	r3, [r4, #0]
d0040136:	b133      	cbz	r3, d0040146 <task1+0x2e>
d0040138:	210a      	movs	r1, #10
d004013a:	f8d6 413c 	ldr.w	r4, [r6, #316]	; 0x13c
d004013e:	2332      	movs	r3, #50	; 0x32
d0040140:	2264      	movs	r2, #100	; 0x64
d0040142:	4608      	mov	r0, r1
d0040144:	47a0      	blx	r4
d0040146:	4c12      	ldr	r4, [pc, #72]	; (d0040190 <task1+0x78>)
d0040148:	2600      	movs	r6, #0
d004014a:	232e      	movs	r3, #46	; 0x2e
d004014c:	227f      	movs	r2, #127	; 0x7f
d004014e:	f8d4 50f8 	ldr.w	r5, [r4, #248]	; 0xf8
d0040152:	211e      	movs	r1, #30
d0040154:	200f      	movs	r0, #15
d0040156:	702e      	strb	r6, [r5, #0]
d0040158:	f8d4 513c 	ldr.w	r5, [r4, #316]	; 0x13c
d004015c:	47a8      	blx	r5
d004015e:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d0040162:	25ff      	movs	r5, #255	; 0xff
d0040164:	4a0b      	ldr	r2, [pc, #44]	; (d0040194 <task1+0x7c>)
d0040166:	211e      	movs	r1, #30
d0040168:	200f      	movs	r0, #15
d004016a:	701d      	strb	r5, [r3, #0]
d004016c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d0040170:	4798      	blx	r3
d0040172:	4b09      	ldr	r3, [pc, #36]	; (d0040198 <task1+0x80>)
d0040174:	681b      	ldr	r3, [r3, #0]
d0040176:	2b03      	cmp	r3, #3
d0040178:	d806      	bhi.n	d0040188 <task1+0x70>
d004017a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d004017e:	4a07      	ldr	r2, [pc, #28]	; (d004019c <task1+0x84>)
d0040180:	2101      	movs	r1, #1
d0040182:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
d0040186:	7559      	strb	r1, [r3, #21]
d0040188:	bd70      	pop	{r4, r5, r6, pc}
d004018a:	bf00      	nop
d004018c:	d0040e40 	.word	0xd0040e40
d0040190:	2001f000 	.word	0x2001f000
d0040194:	d0040d68 	.word	0xd0040d68
d0040198:	d0040e34 	.word	0xd0040e34
d004019c:	d0040e44 	.word	0xd0040e44

d00401a0 <task_add>:
d00401a0:	b538      	push	{r3, r4, r5, lr}
d00401a2:	4b13      	ldr	r3, [pc, #76]	; (d00401f0 <task_add+0x50>)
d00401a4:	460d      	mov	r5, r1
d00401a6:	7d1a      	ldrb	r2, [r3, #20]
d00401a8:	b15a      	cbz	r2, d00401c2 <task_add+0x22>
d00401aa:	f893 202c 	ldrb.w	r2, [r3, #44]	; 0x2c
d00401ae:	b1da      	cbz	r2, d00401e8 <task_add+0x48>
d00401b0:	f893 2044 	ldrb.w	r2, [r3, #68]	; 0x44
d00401b4:	b122      	cbz	r2, d00401c0 <task_add+0x20>
d00401b6:	f893 205c 	ldrb.w	r2, [r3, #92]	; 0x5c
d00401ba:	b1ba      	cbz	r2, d00401ec <task_add+0x4c>
d00401bc:	2000      	movs	r0, #0
d00401be:	bd38      	pop	{r3, r4, r5, pc}
d00401c0:	2202      	movs	r2, #2
d00401c2:	eb02 0442 	add.w	r4, r2, r2, lsl #1
d00401c6:	4601      	mov	r1, r0
d00401c8:	220f      	movs	r2, #15
d00401ca:	eb03 03c4 	add.w	r3, r3, r4, lsl #3
d00401ce:	4618      	mov	r0, r3
d00401d0:	f000 f94e 	bl	d0040470 <strncpy>
d00401d4:	4603      	mov	r3, r0
d00401d6:	2101      	movs	r1, #1
d00401d8:	2000      	movs	r0, #0
d00401da:	461a      	mov	r2, r3
d00401dc:	73d8      	strb	r0, [r3, #15]
d00401de:	4608      	mov	r0, r1
d00401e0:	f842 5f10 	str.w	r5, [r2, #16]!
d00401e4:	8091      	strh	r1, [r2, #4]
d00401e6:	bd38      	pop	{r3, r4, r5, pc}
d00401e8:	2201      	movs	r2, #1
d00401ea:	e7ea      	b.n	d00401c2 <task_add+0x22>
d00401ec:	2203      	movs	r2, #3
d00401ee:	e7e8      	b.n	d00401c2 <task_add+0x22>
d00401f0:	d0040e44 	.word	0xd0040e44

d00401f4 <main>:
d00401f4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00401f8:	f8df 91f8 	ldr.w	r9, [pc, #504]	; d00403f4 <main+0x200>
d00401fc:	b083      	sub	sp, #12
d00401fe:	20ff      	movs	r0, #255	; 0xff
d0040200:	2500      	movs	r5, #0
d0040202:	f8d9 30c8 	ldr.w	r3, [r9, #200]	; 0xc8
d0040206:	464c      	mov	r4, r9
d0040208:	4798      	blx	r3
d004020a:	f8d9 3008 	ldr.w	r3, [r9, #8]
d004020e:	486d      	ldr	r0, [pc, #436]	; (d00403c4 <main+0x1d0>)
d0040210:	46a8      	mov	r8, r5
d0040212:	4798      	blx	r3
d0040214:	f8d9 300c 	ldr.w	r3, [r9, #12]
d0040218:	200a      	movs	r0, #10
d004021a:	4e6b      	ldr	r6, [pc, #428]	; (d00403c8 <main+0x1d4>)
d004021c:	4798      	blx	r3
d004021e:	46aa      	mov	sl, r5
d0040220:	f7ff fef8 	bl	d0040014 <initDisplayBuffers>
d0040224:	f8d9 30bc 	ldr.w	r3, [r9, #188]	; 0xbc
d0040228:	2102      	movs	r1, #2
d004022a:	20dc      	movs	r0, #220	; 0xdc
d004022c:	4798      	blx	r3
d004022e:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0040232:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0040236:	2102      	movs	r1, #2
d0040238:	4610      	mov	r0, r2
d004023a:	f8d9 70e8 	ldr.w	r7, [r9, #232]	; 0xe8
d004023e:	9100      	str	r1, [sp, #0]
d0040240:	4619      	mov	r1, r3
d0040242:	47b8      	blx	r7
d0040244:	f8d9 30cc 	ldr.w	r3, [r9, #204]	; 0xcc
d0040248:	4798      	blx	r3
d004024a:	f8d9 30c4 	ldr.w	r3, [r9, #196]	; 0xc4
d004024e:	2001      	movs	r0, #1
d0040250:	4f5e      	ldr	r7, [pc, #376]	; (d00403cc <main+0x1d8>)
d0040252:	4798      	blx	r3
d0040254:	f8d9 3104 	ldr.w	r3, [r9, #260]	; 0x104
d0040258:	4629      	mov	r1, r5
d004025a:	4628      	mov	r0, r5
d004025c:	4798      	blx	r3
d004025e:	4629      	mov	r1, r5
d0040260:	f8d9 3100 	ldr.w	r3, [r9, #256]	; 0x100
d0040264:	4628      	mov	r0, r5
d0040266:	4798      	blx	r3
d0040268:	22ff      	movs	r2, #255	; 0xff
d004026a:	f8d9 30f8 	ldr.w	r3, [r9, #248]	; 0xf8
d004026e:	4628      	mov	r0, r5
d0040270:	f04f 0b0f 	mov.w	fp, #15
d0040274:	701a      	strb	r2, [r3, #0]
d0040276:	f7ff fef1 	bl	d004005c <ShowBuffer>
d004027a:	f8d9 3118 	ldr.w	r3, [r9, #280]	; 0x118
d004027e:	4628      	mov	r0, r5
d0040280:	4798      	blx	r3
d0040282:	2001      	movs	r0, #1
d0040284:	f7ff feea 	bl	d004005c <ShowBuffer>
d0040288:	f8d9 3118 	ldr.w	r3, [r9, #280]	; 0x118
d004028c:	4628      	mov	r0, r5
d004028e:	4798      	blx	r3
d0040290:	f8d9 311c 	ldr.w	r3, [r9, #284]	; 0x11c
d0040294:	4628      	mov	r0, r5
d0040296:	4798      	blx	r3
d0040298:	494d      	ldr	r1, [pc, #308]	; (d00403d0 <main+0x1dc>)
d004029a:	484e      	ldr	r0, [pc, #312]	; (d00403d4 <main+0x1e0>)
d004029c:	f7ff ff80 	bl	d00401a0 <task_add>
d00402a0:	494d      	ldr	r1, [pc, #308]	; (d00403d8 <main+0x1e4>)
d00402a2:	484e      	ldr	r0, [pc, #312]	; (d00403dc <main+0x1e8>)
d00402a4:	f7ff ff7c 	bl	d00401a0 <task_add>
d00402a8:	f8d4 3118 	ldr.w	r3, [r4, #280]	; 0x118
d00402ac:	2000      	movs	r0, #0
d00402ae:	4798      	blx	r3
d00402b0:	f04f 0904 	mov.w	r9, #4
d00402b4:	683b      	ldr	r3, [r7, #0]
d00402b6:	3301      	adds	r3, #1
d00402b8:	425a      	negs	r2, r3
d00402ba:	f003 0303 	and.w	r3, r3, #3
d00402be:	f002 0203 	and.w	r2, r2, #3
d00402c2:	bf58      	it	pl
d00402c4:	4253      	negpl	r3, r2
d00402c6:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d00402ca:	603b      	str	r3, [r7, #0]
d00402cc:	eb06 02c2 	add.w	r2, r6, r2, lsl #3
d00402d0:	7d11      	ldrb	r1, [r2, #20]
d00402d2:	b151      	cbz	r1, d00402ea <main+0xf6>
d00402d4:	6913      	ldr	r3, [r2, #16]
d00402d6:	f882 a015 	strb.w	sl, [r2, #21]
d00402da:	4798      	blx	r3
d00402dc:	683b      	ldr	r3, [r7, #0]
d00402de:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d00402e2:	eb06 02c2 	add.w	r2, r6, r2, lsl #3
d00402e6:	7d52      	ldrb	r2, [r2, #21]
d00402e8:	b912      	cbnz	r2, d00402f0 <main+0xfc>
d00402ea:	f1b9 0901 	subs.w	r9, r9, #1
d00402ee:	d1e2      	bne.n	d00402b6 <main+0xc2>
d00402f0:	f1b8 0f95 	cmp.w	r8, #149	; 0x95
d00402f4:	dc38      	bgt.n	d0040368 <main+0x174>
d00402f6:	f108 0801 	add.w	r8, r8, #1
d00402fa:	f1b8 0f78 	cmp.w	r8, #120	; 0x78
d00402fe:	d133      	bne.n	d0040368 <main+0x174>
d0040300:	7d33      	ldrb	r3, [r6, #20]
d0040302:	b14b      	cbz	r3, d0040318 <main+0x124>
d0040304:	6833      	ldr	r3, [r6, #0]
d0040306:	4a36      	ldr	r2, [pc, #216]	; (d00403e0 <main+0x1ec>)
d0040308:	4293      	cmp	r3, r2
d004030a:	d105      	bne.n	d0040318 <main+0x124>
d004030c:	6873      	ldr	r3, [r6, #4]
d004030e:	4a35      	ldr	r2, [pc, #212]	; (d00403e4 <main+0x1f0>)
d0040310:	4293      	cmp	r3, r2
d0040312:	bf08      	it	eq
d0040314:	f886 a014 	strbeq.w	sl, [r6, #20]
d0040318:	f896 302c 	ldrb.w	r3, [r6, #44]	; 0x2c
d004031c:	b15b      	cbz	r3, d0040336 <main+0x142>
d004031e:	4b32      	ldr	r3, [pc, #200]	; (d00403e8 <main+0x1f4>)
d0040320:	4a2f      	ldr	r2, [pc, #188]	; (d00403e0 <main+0x1ec>)
d0040322:	681b      	ldr	r3, [r3, #0]
d0040324:	4293      	cmp	r3, r2
d0040326:	d106      	bne.n	d0040336 <main+0x142>
d0040328:	4b2f      	ldr	r3, [pc, #188]	; (d00403e8 <main+0x1f4>)
d004032a:	4a2e      	ldr	r2, [pc, #184]	; (d00403e4 <main+0x1f0>)
d004032c:	685b      	ldr	r3, [r3, #4]
d004032e:	4293      	cmp	r3, r2
d0040330:	bf08      	it	eq
d0040332:	f886 a02c 	strbeq.w	sl, [r6, #44]	; 0x2c
d0040336:	f896 3044 	ldrb.w	r3, [r6, #68]	; 0x44
d004033a:	b15b      	cbz	r3, d0040354 <main+0x160>
d004033c:	4b2b      	ldr	r3, [pc, #172]	; (d00403ec <main+0x1f8>)
d004033e:	4a28      	ldr	r2, [pc, #160]	; (d00403e0 <main+0x1ec>)
d0040340:	681b      	ldr	r3, [r3, #0]
d0040342:	4293      	cmp	r3, r2
d0040344:	d106      	bne.n	d0040354 <main+0x160>
d0040346:	4b29      	ldr	r3, [pc, #164]	; (d00403ec <main+0x1f8>)
d0040348:	4a26      	ldr	r2, [pc, #152]	; (d00403e4 <main+0x1f0>)
d004034a:	685b      	ldr	r3, [r3, #4]
d004034c:	4293      	cmp	r3, r2
d004034e:	bf08      	it	eq
d0040350:	f886 a044 	strbeq.w	sl, [r6, #68]	; 0x44
d0040354:	f896 305c 	ldrb.w	r3, [r6, #92]	; 0x5c
d0040358:	b123      	cbz	r3, d0040364 <main+0x170>
d004035a:	4b25      	ldr	r3, [pc, #148]	; (d00403f0 <main+0x1fc>)
d004035c:	4a20      	ldr	r2, [pc, #128]	; (d00403e0 <main+0x1ec>)
d004035e:	681b      	ldr	r3, [r3, #0]
d0040360:	4293      	cmp	r3, r2
d0040362:	d024      	beq.n	d00403ae <main+0x1ba>
d0040364:	f04f 087a 	mov.w	r8, #122	; 0x7a
d0040368:	f8d4 00f8 	ldr.w	r0, [r4, #248]	; 0xf8
d004036c:	23c8      	movs	r3, #200	; 0xc8
d004036e:	226e      	movs	r2, #110	; 0x6e
d0040370:	2164      	movs	r1, #100	; 0x64
d0040372:	f880 b000 	strb.w	fp, [r0]
d0040376:	200a      	movs	r0, #10
d0040378:	f8d4 913c 	ldr.w	r9, [r4, #316]	; 0x13c
d004037c:	47c8      	blx	r9
d004037e:	2296      	movs	r2, #150	; 0x96
d0040380:	2150      	movs	r1, #80	; 0x50
d0040382:	2382      	movs	r3, #130	; 0x82
d0040384:	f8d4 9138 	ldr.w	r9, [r4, #312]	; 0x138
d0040388:	2032      	movs	r0, #50	; 0x32
d004038a:	47c8      	blx	r9
d004038c:	4628      	mov	r0, r5
d004038e:	f7ff fe65 	bl	d004005c <ShowBuffer>
d0040392:	f8d4 30cc 	ldr.w	r3, [r4, #204]	; 0xcc
d0040396:	4798      	blx	r3
d0040398:	f1c5 0501 	rsb	r5, r5, #1
d004039c:	f8d4 30c4 	ldr.w	r3, [r4, #196]	; 0xc4
d00403a0:	2001      	movs	r0, #1
d00403a2:	4798      	blx	r3
d00403a4:	f8d4 315c 	ldr.w	r3, [r4, #348]	; 0x15c
d00403a8:	b2ed      	uxtb	r5, r5
d00403aa:	4798      	blx	r3
d00403ac:	e77c      	b.n	d00402a8 <main+0xb4>
d00403ae:	4b10      	ldr	r3, [pc, #64]	; (d00403f0 <main+0x1fc>)
d00403b0:	4a0c      	ldr	r2, [pc, #48]	; (d00403e4 <main+0x1f0>)
d00403b2:	685b      	ldr	r3, [r3, #4]
d00403b4:	4293      	cmp	r3, r2
d00403b6:	d1d5      	bne.n	d0040364 <main+0x170>
d00403b8:	f04f 087a 	mov.w	r8, #122	; 0x7a
d00403bc:	f886 a05c 	strb.w	sl, [r6, #92]	; 0x5c
d00403c0:	e7d2      	b.n	d0040368 <main+0x174>
d00403c2:	bf00      	nop
d00403c4:	d0040d78 	.word	0xd0040d78
d00403c8:	d0040e44 	.word	0xd0040e44
d00403cc:	d0040e34 	.word	0xd0040e34
d00403d0:	d0040119 	.word	0xd0040119
d00403d4:	d0040d84 	.word	0xd0040d84
d00403d8:	d00400ad 	.word	0xd00400ad
d00403dc:	d0040d8c 	.word	0xd0040d8c
d00403e0:	6e696c42 	.word	0x6e696c42
d00403e4:	0072656b 	.word	0x0072656b
d00403e8:	d0040e5c 	.word	0xd0040e5c
d00403ec:	d0040e74 	.word	0xd0040e74
d00403f0:	d0040e8c 	.word	0xd0040e8c
d00403f4:	2001f000 	.word	0x2001f000

d00403f8 <sniprintf>:
d00403f8:	b40c      	push	{r2, r3}
d00403fa:	b530      	push	{r4, r5, lr}
d00403fc:	4b17      	ldr	r3, [pc, #92]	; (d004045c <sniprintf+0x64>)
d00403fe:	1e0c      	subs	r4, r1, #0
d0040400:	681d      	ldr	r5, [r3, #0]
d0040402:	b09d      	sub	sp, #116	; 0x74
d0040404:	da08      	bge.n	d0040418 <sniprintf+0x20>
d0040406:	238b      	movs	r3, #139	; 0x8b
d0040408:	602b      	str	r3, [r5, #0]
d004040a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004040e:	b01d      	add	sp, #116	; 0x74
d0040410:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0040414:	b002      	add	sp, #8
d0040416:	4770      	bx	lr
d0040418:	f44f 7302 	mov.w	r3, #520	; 0x208
d004041c:	f8ad 3014 	strh.w	r3, [sp, #20]
d0040420:	bf14      	ite	ne
d0040422:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d0040426:	4623      	moveq	r3, r4
d0040428:	9304      	str	r3, [sp, #16]
d004042a:	9307      	str	r3, [sp, #28]
d004042c:	f64f 73ff 	movw	r3, #65535	; 0xffff
d0040430:	9002      	str	r0, [sp, #8]
d0040432:	9006      	str	r0, [sp, #24]
d0040434:	f8ad 3016 	strh.w	r3, [sp, #22]
d0040438:	9a20      	ldr	r2, [sp, #128]	; 0x80
d004043a:	ab21      	add	r3, sp, #132	; 0x84
d004043c:	a902      	add	r1, sp, #8
d004043e:	4628      	mov	r0, r5
d0040440:	9301      	str	r3, [sp, #4]
d0040442:	f000 f883 	bl	d004054c <_svfiprintf_r>
d0040446:	1c43      	adds	r3, r0, #1
d0040448:	bfbc      	itt	lt
d004044a:	238b      	movlt	r3, #139	; 0x8b
d004044c:	602b      	strlt	r3, [r5, #0]
d004044e:	2c00      	cmp	r4, #0
d0040450:	d0dd      	beq.n	d004040e <sniprintf+0x16>
d0040452:	9b02      	ldr	r3, [sp, #8]
d0040454:	2200      	movs	r2, #0
d0040456:	701a      	strb	r2, [r3, #0]
d0040458:	e7d9      	b.n	d004040e <sniprintf+0x16>
d004045a:	bf00      	nop
d004045c:	d0040dd0 	.word	0xd0040dd0

d0040460 <strlen>:
d0040460:	4603      	mov	r3, r0
d0040462:	f813 2b01 	ldrb.w	r2, [r3], #1
d0040466:	2a00      	cmp	r2, #0
d0040468:	d1fb      	bne.n	d0040462 <strlen+0x2>
d004046a:	1a18      	subs	r0, r3, r0
d004046c:	3801      	subs	r0, #1
d004046e:	4770      	bx	lr

d0040470 <strncpy>:
d0040470:	b510      	push	{r4, lr}
d0040472:	3901      	subs	r1, #1
d0040474:	4603      	mov	r3, r0
d0040476:	b132      	cbz	r2, d0040486 <strncpy+0x16>
d0040478:	f811 4f01 	ldrb.w	r4, [r1, #1]!
d004047c:	f803 4b01 	strb.w	r4, [r3], #1
d0040480:	3a01      	subs	r2, #1
d0040482:	2c00      	cmp	r4, #0
d0040484:	d1f7      	bne.n	d0040476 <strncpy+0x6>
d0040486:	441a      	add	r2, r3
d0040488:	2100      	movs	r1, #0
d004048a:	4293      	cmp	r3, r2
d004048c:	d100      	bne.n	d0040490 <strncpy+0x20>
d004048e:	bd10      	pop	{r4, pc}
d0040490:	f803 1b01 	strb.w	r1, [r3], #1
d0040494:	e7f9      	b.n	d004048a <strncpy+0x1a>

d0040496 <__ssputs_r>:
d0040496:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d004049a:	688e      	ldr	r6, [r1, #8]
d004049c:	429e      	cmp	r6, r3
d004049e:	4682      	mov	sl, r0
d00404a0:	460c      	mov	r4, r1
d00404a2:	4690      	mov	r8, r2
d00404a4:	461f      	mov	r7, r3
d00404a6:	d838      	bhi.n	d004051a <__ssputs_r+0x84>
d00404a8:	898a      	ldrh	r2, [r1, #12]
d00404aa:	f412 6f90 	tst.w	r2, #1152	; 0x480
d00404ae:	d032      	beq.n	d0040516 <__ssputs_r+0x80>
d00404b0:	6825      	ldr	r5, [r4, #0]
d00404b2:	6909      	ldr	r1, [r1, #16]
d00404b4:	eba5 0901 	sub.w	r9, r5, r1
d00404b8:	6965      	ldr	r5, [r4, #20]
d00404ba:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d00404be:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d00404c2:	3301      	adds	r3, #1
d00404c4:	444b      	add	r3, r9
d00404c6:	106d      	asrs	r5, r5, #1
d00404c8:	429d      	cmp	r5, r3
d00404ca:	bf38      	it	cc
d00404cc:	461d      	movcc	r5, r3
d00404ce:	0553      	lsls	r3, r2, #21
d00404d0:	d531      	bpl.n	d0040536 <__ssputs_r+0xa0>
d00404d2:	4629      	mov	r1, r5
d00404d4:	f000 fb9c 	bl	d0040c10 <_malloc_r>
d00404d8:	4606      	mov	r6, r0
d00404da:	b950      	cbnz	r0, d00404f2 <__ssputs_r+0x5c>
d00404dc:	230c      	movs	r3, #12
d00404de:	f8ca 3000 	str.w	r3, [sl]
d00404e2:	89a3      	ldrh	r3, [r4, #12]
d00404e4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00404e8:	81a3      	strh	r3, [r4, #12]
d00404ea:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00404ee:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00404f2:	6921      	ldr	r1, [r4, #16]
d00404f4:	464a      	mov	r2, r9
d00404f6:	f000 fb13 	bl	d0040b20 <memcpy>
d00404fa:	89a3      	ldrh	r3, [r4, #12]
d00404fc:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0040500:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0040504:	81a3      	strh	r3, [r4, #12]
d0040506:	6126      	str	r6, [r4, #16]
d0040508:	6165      	str	r5, [r4, #20]
d004050a:	444e      	add	r6, r9
d004050c:	eba5 0509 	sub.w	r5, r5, r9
d0040510:	6026      	str	r6, [r4, #0]
d0040512:	60a5      	str	r5, [r4, #8]
d0040514:	463e      	mov	r6, r7
d0040516:	42be      	cmp	r6, r7
d0040518:	d900      	bls.n	d004051c <__ssputs_r+0x86>
d004051a:	463e      	mov	r6, r7
d004051c:	4632      	mov	r2, r6
d004051e:	6820      	ldr	r0, [r4, #0]
d0040520:	4641      	mov	r1, r8
d0040522:	f000 fb0b 	bl	d0040b3c <memmove>
d0040526:	68a3      	ldr	r3, [r4, #8]
d0040528:	6822      	ldr	r2, [r4, #0]
d004052a:	1b9b      	subs	r3, r3, r6
d004052c:	4432      	add	r2, r6
d004052e:	60a3      	str	r3, [r4, #8]
d0040530:	6022      	str	r2, [r4, #0]
d0040532:	2000      	movs	r0, #0
d0040534:	e7db      	b.n	d00404ee <__ssputs_r+0x58>
d0040536:	462a      	mov	r2, r5
d0040538:	f000 fbc4 	bl	d0040cc4 <_realloc_r>
d004053c:	4606      	mov	r6, r0
d004053e:	2800      	cmp	r0, #0
d0040540:	d1e1      	bne.n	d0040506 <__ssputs_r+0x70>
d0040542:	6921      	ldr	r1, [r4, #16]
d0040544:	4650      	mov	r0, sl
d0040546:	f000 fb13 	bl	d0040b70 <_free_r>
d004054a:	e7c7      	b.n	d00404dc <__ssputs_r+0x46>

d004054c <_svfiprintf_r>:
d004054c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040550:	4698      	mov	r8, r3
d0040552:	898b      	ldrh	r3, [r1, #12]
d0040554:	061b      	lsls	r3, r3, #24
d0040556:	b09d      	sub	sp, #116	; 0x74
d0040558:	4607      	mov	r7, r0
d004055a:	460d      	mov	r5, r1
d004055c:	4614      	mov	r4, r2
d004055e:	d50e      	bpl.n	d004057e <_svfiprintf_r+0x32>
d0040560:	690b      	ldr	r3, [r1, #16]
d0040562:	b963      	cbnz	r3, d004057e <_svfiprintf_r+0x32>
d0040564:	2140      	movs	r1, #64	; 0x40
d0040566:	f000 fb53 	bl	d0040c10 <_malloc_r>
d004056a:	6028      	str	r0, [r5, #0]
d004056c:	6128      	str	r0, [r5, #16]
d004056e:	b920      	cbnz	r0, d004057a <_svfiprintf_r+0x2e>
d0040570:	230c      	movs	r3, #12
d0040572:	603b      	str	r3, [r7, #0]
d0040574:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0040578:	e0d1      	b.n	d004071e <_svfiprintf_r+0x1d2>
d004057a:	2340      	movs	r3, #64	; 0x40
d004057c:	616b      	str	r3, [r5, #20]
d004057e:	2300      	movs	r3, #0
d0040580:	9309      	str	r3, [sp, #36]	; 0x24
d0040582:	2320      	movs	r3, #32
d0040584:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0040588:	f8cd 800c 	str.w	r8, [sp, #12]
d004058c:	2330      	movs	r3, #48	; 0x30
d004058e:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0040738 <_svfiprintf_r+0x1ec>
d0040592:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0040596:	f04f 0901 	mov.w	r9, #1
d004059a:	4623      	mov	r3, r4
d004059c:	469a      	mov	sl, r3
d004059e:	f813 2b01 	ldrb.w	r2, [r3], #1
d00405a2:	b10a      	cbz	r2, d00405a8 <_svfiprintf_r+0x5c>
d00405a4:	2a25      	cmp	r2, #37	; 0x25
d00405a6:	d1f9      	bne.n	d004059c <_svfiprintf_r+0x50>
d00405a8:	ebba 0b04 	subs.w	fp, sl, r4
d00405ac:	d00b      	beq.n	d00405c6 <_svfiprintf_r+0x7a>
d00405ae:	465b      	mov	r3, fp
d00405b0:	4622      	mov	r2, r4
d00405b2:	4629      	mov	r1, r5
d00405b4:	4638      	mov	r0, r7
d00405b6:	f7ff ff6e 	bl	d0040496 <__ssputs_r>
d00405ba:	3001      	adds	r0, #1
d00405bc:	f000 80aa 	beq.w	d0040714 <_svfiprintf_r+0x1c8>
d00405c0:	9a09      	ldr	r2, [sp, #36]	; 0x24
d00405c2:	445a      	add	r2, fp
d00405c4:	9209      	str	r2, [sp, #36]	; 0x24
d00405c6:	f89a 3000 	ldrb.w	r3, [sl]
d00405ca:	2b00      	cmp	r3, #0
d00405cc:	f000 80a2 	beq.w	d0040714 <_svfiprintf_r+0x1c8>
d00405d0:	2300      	movs	r3, #0
d00405d2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d00405d6:	e9cd 2305 	strd	r2, r3, [sp, #20]
d00405da:	f10a 0a01 	add.w	sl, sl, #1
d00405de:	9304      	str	r3, [sp, #16]
d00405e0:	9307      	str	r3, [sp, #28]
d00405e2:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d00405e6:	931a      	str	r3, [sp, #104]	; 0x68
d00405e8:	4654      	mov	r4, sl
d00405ea:	2205      	movs	r2, #5
d00405ec:	f814 1b01 	ldrb.w	r1, [r4], #1
d00405f0:	4851      	ldr	r0, [pc, #324]	; (d0040738 <_svfiprintf_r+0x1ec>)
d00405f2:	f000 fa45 	bl	d0040a80 <memchr>
d00405f6:	9a04      	ldr	r2, [sp, #16]
d00405f8:	b9d8      	cbnz	r0, d0040632 <_svfiprintf_r+0xe6>
d00405fa:	06d0      	lsls	r0, r2, #27
d00405fc:	bf44      	itt	mi
d00405fe:	2320      	movmi	r3, #32
d0040600:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0040604:	0711      	lsls	r1, r2, #28
d0040606:	bf44      	itt	mi
d0040608:	232b      	movmi	r3, #43	; 0x2b
d004060a:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d004060e:	f89a 3000 	ldrb.w	r3, [sl]
d0040612:	2b2a      	cmp	r3, #42	; 0x2a
d0040614:	d015      	beq.n	d0040642 <_svfiprintf_r+0xf6>
d0040616:	9a07      	ldr	r2, [sp, #28]
d0040618:	4654      	mov	r4, sl
d004061a:	2000      	movs	r0, #0
d004061c:	f04f 0c0a 	mov.w	ip, #10
d0040620:	4621      	mov	r1, r4
d0040622:	f811 3b01 	ldrb.w	r3, [r1], #1
d0040626:	3b30      	subs	r3, #48	; 0x30
d0040628:	2b09      	cmp	r3, #9
d004062a:	d94e      	bls.n	d00406ca <_svfiprintf_r+0x17e>
d004062c:	b1b0      	cbz	r0, d004065c <_svfiprintf_r+0x110>
d004062e:	9207      	str	r2, [sp, #28]
d0040630:	e014      	b.n	d004065c <_svfiprintf_r+0x110>
d0040632:	eba0 0308 	sub.w	r3, r0, r8
d0040636:	fa09 f303 	lsl.w	r3, r9, r3
d004063a:	4313      	orrs	r3, r2
d004063c:	9304      	str	r3, [sp, #16]
d004063e:	46a2      	mov	sl, r4
d0040640:	e7d2      	b.n	d00405e8 <_svfiprintf_r+0x9c>
d0040642:	9b03      	ldr	r3, [sp, #12]
d0040644:	1d19      	adds	r1, r3, #4
d0040646:	681b      	ldr	r3, [r3, #0]
d0040648:	9103      	str	r1, [sp, #12]
d004064a:	2b00      	cmp	r3, #0
d004064c:	bfbb      	ittet	lt
d004064e:	425b      	neglt	r3, r3
d0040650:	f042 0202 	orrlt.w	r2, r2, #2
d0040654:	9307      	strge	r3, [sp, #28]
d0040656:	9307      	strlt	r3, [sp, #28]
d0040658:	bfb8      	it	lt
d004065a:	9204      	strlt	r2, [sp, #16]
d004065c:	7823      	ldrb	r3, [r4, #0]
d004065e:	2b2e      	cmp	r3, #46	; 0x2e
d0040660:	d10c      	bne.n	d004067c <_svfiprintf_r+0x130>
d0040662:	7863      	ldrb	r3, [r4, #1]
d0040664:	2b2a      	cmp	r3, #42	; 0x2a
d0040666:	d135      	bne.n	d00406d4 <_svfiprintf_r+0x188>
d0040668:	9b03      	ldr	r3, [sp, #12]
d004066a:	1d1a      	adds	r2, r3, #4
d004066c:	681b      	ldr	r3, [r3, #0]
d004066e:	9203      	str	r2, [sp, #12]
d0040670:	2b00      	cmp	r3, #0
d0040672:	bfb8      	it	lt
d0040674:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0040678:	3402      	adds	r4, #2
d004067a:	9305      	str	r3, [sp, #20]
d004067c:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d0040748 <_svfiprintf_r+0x1fc>
d0040680:	7821      	ldrb	r1, [r4, #0]
d0040682:	2203      	movs	r2, #3
d0040684:	4650      	mov	r0, sl
d0040686:	f000 f9fb 	bl	d0040a80 <memchr>
d004068a:	b140      	cbz	r0, d004069e <_svfiprintf_r+0x152>
d004068c:	2340      	movs	r3, #64	; 0x40
d004068e:	eba0 000a 	sub.w	r0, r0, sl
d0040692:	fa03 f000 	lsl.w	r0, r3, r0
d0040696:	9b04      	ldr	r3, [sp, #16]
d0040698:	4303      	orrs	r3, r0
d004069a:	3401      	adds	r4, #1
d004069c:	9304      	str	r3, [sp, #16]
d004069e:	f814 1b01 	ldrb.w	r1, [r4], #1
d00406a2:	4826      	ldr	r0, [pc, #152]	; (d004073c <_svfiprintf_r+0x1f0>)
d00406a4:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d00406a8:	2206      	movs	r2, #6
d00406aa:	f000 f9e9 	bl	d0040a80 <memchr>
d00406ae:	2800      	cmp	r0, #0
d00406b0:	d038      	beq.n	d0040724 <_svfiprintf_r+0x1d8>
d00406b2:	4b23      	ldr	r3, [pc, #140]	; (d0040740 <_svfiprintf_r+0x1f4>)
d00406b4:	bb1b      	cbnz	r3, d00406fe <_svfiprintf_r+0x1b2>
d00406b6:	9b03      	ldr	r3, [sp, #12]
d00406b8:	3307      	adds	r3, #7
d00406ba:	f023 0307 	bic.w	r3, r3, #7
d00406be:	3308      	adds	r3, #8
d00406c0:	9303      	str	r3, [sp, #12]
d00406c2:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00406c4:	4433      	add	r3, r6
d00406c6:	9309      	str	r3, [sp, #36]	; 0x24
d00406c8:	e767      	b.n	d004059a <_svfiprintf_r+0x4e>
d00406ca:	fb0c 3202 	mla	r2, ip, r2, r3
d00406ce:	460c      	mov	r4, r1
d00406d0:	2001      	movs	r0, #1
d00406d2:	e7a5      	b.n	d0040620 <_svfiprintf_r+0xd4>
d00406d4:	2300      	movs	r3, #0
d00406d6:	3401      	adds	r4, #1
d00406d8:	9305      	str	r3, [sp, #20]
d00406da:	4619      	mov	r1, r3
d00406dc:	f04f 0c0a 	mov.w	ip, #10
d00406e0:	4620      	mov	r0, r4
d00406e2:	f810 2b01 	ldrb.w	r2, [r0], #1
d00406e6:	3a30      	subs	r2, #48	; 0x30
d00406e8:	2a09      	cmp	r2, #9
d00406ea:	d903      	bls.n	d00406f4 <_svfiprintf_r+0x1a8>
d00406ec:	2b00      	cmp	r3, #0
d00406ee:	d0c5      	beq.n	d004067c <_svfiprintf_r+0x130>
d00406f0:	9105      	str	r1, [sp, #20]
d00406f2:	e7c3      	b.n	d004067c <_svfiprintf_r+0x130>
d00406f4:	fb0c 2101 	mla	r1, ip, r1, r2
d00406f8:	4604      	mov	r4, r0
d00406fa:	2301      	movs	r3, #1
d00406fc:	e7f0      	b.n	d00406e0 <_svfiprintf_r+0x194>
d00406fe:	ab03      	add	r3, sp, #12
d0040700:	9300      	str	r3, [sp, #0]
d0040702:	462a      	mov	r2, r5
d0040704:	4b0f      	ldr	r3, [pc, #60]	; (d0040744 <_svfiprintf_r+0x1f8>)
d0040706:	a904      	add	r1, sp, #16
d0040708:	4638      	mov	r0, r7
d004070a:	f3af 8000 	nop.w
d004070e:	1c42      	adds	r2, r0, #1
d0040710:	4606      	mov	r6, r0
d0040712:	d1d6      	bne.n	d00406c2 <_svfiprintf_r+0x176>
d0040714:	89ab      	ldrh	r3, [r5, #12]
d0040716:	065b      	lsls	r3, r3, #25
d0040718:	f53f af2c 	bmi.w	d0040574 <_svfiprintf_r+0x28>
d004071c:	9809      	ldr	r0, [sp, #36]	; 0x24
d004071e:	b01d      	add	sp, #116	; 0x74
d0040720:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040724:	ab03      	add	r3, sp, #12
d0040726:	9300      	str	r3, [sp, #0]
d0040728:	462a      	mov	r2, r5
d004072a:	4b06      	ldr	r3, [pc, #24]	; (d0040744 <_svfiprintf_r+0x1f8>)
d004072c:	a904      	add	r1, sp, #16
d004072e:	4638      	mov	r0, r7
d0040730:	f000 f87a 	bl	d0040828 <_printf_i>
d0040734:	e7eb      	b.n	d004070e <_svfiprintf_r+0x1c2>
d0040736:	bf00      	nop
d0040738:	d0040d94 	.word	0xd0040d94
d004073c:	d0040d9e 	.word	0xd0040d9e
d0040740:	00000000 	.word	0x00000000
d0040744:	d0040497 	.word	0xd0040497
d0040748:	d0040d9a 	.word	0xd0040d9a

d004074c <_printf_common>:
d004074c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0040750:	4616      	mov	r6, r2
d0040752:	4699      	mov	r9, r3
d0040754:	688a      	ldr	r2, [r1, #8]
d0040756:	690b      	ldr	r3, [r1, #16]
d0040758:	f8dd 8020 	ldr.w	r8, [sp, #32]
d004075c:	4293      	cmp	r3, r2
d004075e:	bfb8      	it	lt
d0040760:	4613      	movlt	r3, r2
d0040762:	6033      	str	r3, [r6, #0]
d0040764:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0040768:	4607      	mov	r7, r0
d004076a:	460c      	mov	r4, r1
d004076c:	b10a      	cbz	r2, d0040772 <_printf_common+0x26>
d004076e:	3301      	adds	r3, #1
d0040770:	6033      	str	r3, [r6, #0]
d0040772:	6823      	ldr	r3, [r4, #0]
d0040774:	0699      	lsls	r1, r3, #26
d0040776:	bf42      	ittt	mi
d0040778:	6833      	ldrmi	r3, [r6, #0]
d004077a:	3302      	addmi	r3, #2
d004077c:	6033      	strmi	r3, [r6, #0]
d004077e:	6825      	ldr	r5, [r4, #0]
d0040780:	f015 0506 	ands.w	r5, r5, #6
d0040784:	d106      	bne.n	d0040794 <_printf_common+0x48>
d0040786:	f104 0a19 	add.w	sl, r4, #25
d004078a:	68e3      	ldr	r3, [r4, #12]
d004078c:	6832      	ldr	r2, [r6, #0]
d004078e:	1a9b      	subs	r3, r3, r2
d0040790:	42ab      	cmp	r3, r5
d0040792:	dc26      	bgt.n	d00407e2 <_printf_common+0x96>
d0040794:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0040798:	1e13      	subs	r3, r2, #0
d004079a:	6822      	ldr	r2, [r4, #0]
d004079c:	bf18      	it	ne
d004079e:	2301      	movne	r3, #1
d00407a0:	0692      	lsls	r2, r2, #26
d00407a2:	d42b      	bmi.n	d00407fc <_printf_common+0xb0>
d00407a4:	f104 0243 	add.w	r2, r4, #67	; 0x43
d00407a8:	4649      	mov	r1, r9
d00407aa:	4638      	mov	r0, r7
d00407ac:	47c0      	blx	r8
d00407ae:	3001      	adds	r0, #1
d00407b0:	d01e      	beq.n	d00407f0 <_printf_common+0xa4>
d00407b2:	6823      	ldr	r3, [r4, #0]
d00407b4:	68e5      	ldr	r5, [r4, #12]
d00407b6:	6832      	ldr	r2, [r6, #0]
d00407b8:	f003 0306 	and.w	r3, r3, #6
d00407bc:	2b04      	cmp	r3, #4
d00407be:	bf08      	it	eq
d00407c0:	1aad      	subeq	r5, r5, r2
d00407c2:	68a3      	ldr	r3, [r4, #8]
d00407c4:	6922      	ldr	r2, [r4, #16]
d00407c6:	bf0c      	ite	eq
d00407c8:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d00407cc:	2500      	movne	r5, #0
d00407ce:	4293      	cmp	r3, r2
d00407d0:	bfc4      	itt	gt
d00407d2:	1a9b      	subgt	r3, r3, r2
d00407d4:	18ed      	addgt	r5, r5, r3
d00407d6:	2600      	movs	r6, #0
d00407d8:	341a      	adds	r4, #26
d00407da:	42b5      	cmp	r5, r6
d00407dc:	d11a      	bne.n	d0040814 <_printf_common+0xc8>
d00407de:	2000      	movs	r0, #0
d00407e0:	e008      	b.n	d00407f4 <_printf_common+0xa8>
d00407e2:	2301      	movs	r3, #1
d00407e4:	4652      	mov	r2, sl
d00407e6:	4649      	mov	r1, r9
d00407e8:	4638      	mov	r0, r7
d00407ea:	47c0      	blx	r8
d00407ec:	3001      	adds	r0, #1
d00407ee:	d103      	bne.n	d00407f8 <_printf_common+0xac>
d00407f0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00407f4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00407f8:	3501      	adds	r5, #1
d00407fa:	e7c6      	b.n	d004078a <_printf_common+0x3e>
d00407fc:	18e1      	adds	r1, r4, r3
d00407fe:	1c5a      	adds	r2, r3, #1
d0040800:	2030      	movs	r0, #48	; 0x30
d0040802:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0040806:	4422      	add	r2, r4
d0040808:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d004080c:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0040810:	3302      	adds	r3, #2
d0040812:	e7c7      	b.n	d00407a4 <_printf_common+0x58>
d0040814:	2301      	movs	r3, #1
d0040816:	4622      	mov	r2, r4
d0040818:	4649      	mov	r1, r9
d004081a:	4638      	mov	r0, r7
d004081c:	47c0      	blx	r8
d004081e:	3001      	adds	r0, #1
d0040820:	d0e6      	beq.n	d00407f0 <_printf_common+0xa4>
d0040822:	3601      	adds	r6, #1
d0040824:	e7d9      	b.n	d00407da <_printf_common+0x8e>
	...

d0040828 <_printf_i>:
d0040828:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d004082c:	460c      	mov	r4, r1
d004082e:	4691      	mov	r9, r2
d0040830:	7e27      	ldrb	r7, [r4, #24]
d0040832:	990c      	ldr	r1, [sp, #48]	; 0x30
d0040834:	2f78      	cmp	r7, #120	; 0x78
d0040836:	4680      	mov	r8, r0
d0040838:	469a      	mov	sl, r3
d004083a:	f104 0243 	add.w	r2, r4, #67	; 0x43
d004083e:	d807      	bhi.n	d0040850 <_printf_i+0x28>
d0040840:	2f62      	cmp	r7, #98	; 0x62
d0040842:	d80a      	bhi.n	d004085a <_printf_i+0x32>
d0040844:	2f00      	cmp	r7, #0
d0040846:	f000 80d8 	beq.w	d00409fa <_printf_i+0x1d2>
d004084a:	2f58      	cmp	r7, #88	; 0x58
d004084c:	f000 80a3 	beq.w	d0040996 <_printf_i+0x16e>
d0040850:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0040854:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0040858:	e03a      	b.n	d00408d0 <_printf_i+0xa8>
d004085a:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d004085e:	2b15      	cmp	r3, #21
d0040860:	d8f6      	bhi.n	d0040850 <_printf_i+0x28>
d0040862:	a001      	add	r0, pc, #4	; (adr r0, d0040868 <_printf_i+0x40>)
d0040864:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0040868:	d00408c1 	.word	0xd00408c1
d004086c:	d00408d5 	.word	0xd00408d5
d0040870:	d0040851 	.word	0xd0040851
d0040874:	d0040851 	.word	0xd0040851
d0040878:	d0040851 	.word	0xd0040851
d004087c:	d0040851 	.word	0xd0040851
d0040880:	d00408d5 	.word	0xd00408d5
d0040884:	d0040851 	.word	0xd0040851
d0040888:	d0040851 	.word	0xd0040851
d004088c:	d0040851 	.word	0xd0040851
d0040890:	d0040851 	.word	0xd0040851
d0040894:	d00409e1 	.word	0xd00409e1
d0040898:	d0040905 	.word	0xd0040905
d004089c:	d00409c3 	.word	0xd00409c3
d00408a0:	d0040851 	.word	0xd0040851
d00408a4:	d0040851 	.word	0xd0040851
d00408a8:	d0040a03 	.word	0xd0040a03
d00408ac:	d0040851 	.word	0xd0040851
d00408b0:	d0040905 	.word	0xd0040905
d00408b4:	d0040851 	.word	0xd0040851
d00408b8:	d0040851 	.word	0xd0040851
d00408bc:	d00409cb 	.word	0xd00409cb
d00408c0:	680b      	ldr	r3, [r1, #0]
d00408c2:	1d1a      	adds	r2, r3, #4
d00408c4:	681b      	ldr	r3, [r3, #0]
d00408c6:	600a      	str	r2, [r1, #0]
d00408c8:	f104 0642 	add.w	r6, r4, #66	; 0x42
d00408cc:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d00408d0:	2301      	movs	r3, #1
d00408d2:	e0a3      	b.n	d0040a1c <_printf_i+0x1f4>
d00408d4:	6825      	ldr	r5, [r4, #0]
d00408d6:	6808      	ldr	r0, [r1, #0]
d00408d8:	062e      	lsls	r6, r5, #24
d00408da:	f100 0304 	add.w	r3, r0, #4
d00408de:	d50a      	bpl.n	d00408f6 <_printf_i+0xce>
d00408e0:	6805      	ldr	r5, [r0, #0]
d00408e2:	600b      	str	r3, [r1, #0]
d00408e4:	2d00      	cmp	r5, #0
d00408e6:	da03      	bge.n	d00408f0 <_printf_i+0xc8>
d00408e8:	232d      	movs	r3, #45	; 0x2d
d00408ea:	426d      	negs	r5, r5
d00408ec:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d00408f0:	485e      	ldr	r0, [pc, #376]	; (d0040a6c <_printf_i+0x244>)
d00408f2:	230a      	movs	r3, #10
d00408f4:	e019      	b.n	d004092a <_printf_i+0x102>
d00408f6:	f015 0f40 	tst.w	r5, #64	; 0x40
d00408fa:	6805      	ldr	r5, [r0, #0]
d00408fc:	600b      	str	r3, [r1, #0]
d00408fe:	bf18      	it	ne
d0040900:	b22d      	sxthne	r5, r5
d0040902:	e7ef      	b.n	d00408e4 <_printf_i+0xbc>
d0040904:	680b      	ldr	r3, [r1, #0]
d0040906:	6825      	ldr	r5, [r4, #0]
d0040908:	1d18      	adds	r0, r3, #4
d004090a:	6008      	str	r0, [r1, #0]
d004090c:	0628      	lsls	r0, r5, #24
d004090e:	d501      	bpl.n	d0040914 <_printf_i+0xec>
d0040910:	681d      	ldr	r5, [r3, #0]
d0040912:	e002      	b.n	d004091a <_printf_i+0xf2>
d0040914:	0669      	lsls	r1, r5, #25
d0040916:	d5fb      	bpl.n	d0040910 <_printf_i+0xe8>
d0040918:	881d      	ldrh	r5, [r3, #0]
d004091a:	4854      	ldr	r0, [pc, #336]	; (d0040a6c <_printf_i+0x244>)
d004091c:	2f6f      	cmp	r7, #111	; 0x6f
d004091e:	bf0c      	ite	eq
d0040920:	2308      	moveq	r3, #8
d0040922:	230a      	movne	r3, #10
d0040924:	2100      	movs	r1, #0
d0040926:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d004092a:	6866      	ldr	r6, [r4, #4]
d004092c:	60a6      	str	r6, [r4, #8]
d004092e:	2e00      	cmp	r6, #0
d0040930:	bfa2      	ittt	ge
d0040932:	6821      	ldrge	r1, [r4, #0]
d0040934:	f021 0104 	bicge.w	r1, r1, #4
d0040938:	6021      	strge	r1, [r4, #0]
d004093a:	b90d      	cbnz	r5, d0040940 <_printf_i+0x118>
d004093c:	2e00      	cmp	r6, #0
d004093e:	d04d      	beq.n	d00409dc <_printf_i+0x1b4>
d0040940:	4616      	mov	r6, r2
d0040942:	fbb5 f1f3 	udiv	r1, r5, r3
d0040946:	fb03 5711 	mls	r7, r3, r1, r5
d004094a:	5dc7      	ldrb	r7, [r0, r7]
d004094c:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0040950:	462f      	mov	r7, r5
d0040952:	42bb      	cmp	r3, r7
d0040954:	460d      	mov	r5, r1
d0040956:	d9f4      	bls.n	d0040942 <_printf_i+0x11a>
d0040958:	2b08      	cmp	r3, #8
d004095a:	d10b      	bne.n	d0040974 <_printf_i+0x14c>
d004095c:	6823      	ldr	r3, [r4, #0]
d004095e:	07df      	lsls	r7, r3, #31
d0040960:	d508      	bpl.n	d0040974 <_printf_i+0x14c>
d0040962:	6923      	ldr	r3, [r4, #16]
d0040964:	6861      	ldr	r1, [r4, #4]
d0040966:	4299      	cmp	r1, r3
d0040968:	bfde      	ittt	le
d004096a:	2330      	movle	r3, #48	; 0x30
d004096c:	f806 3c01 	strble.w	r3, [r6, #-1]
d0040970:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0040974:	1b92      	subs	r2, r2, r6
d0040976:	6122      	str	r2, [r4, #16]
d0040978:	f8cd a000 	str.w	sl, [sp]
d004097c:	464b      	mov	r3, r9
d004097e:	aa03      	add	r2, sp, #12
d0040980:	4621      	mov	r1, r4
d0040982:	4640      	mov	r0, r8
d0040984:	f7ff fee2 	bl	d004074c <_printf_common>
d0040988:	3001      	adds	r0, #1
d004098a:	d14c      	bne.n	d0040a26 <_printf_i+0x1fe>
d004098c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0040990:	b004      	add	sp, #16
d0040992:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0040996:	4835      	ldr	r0, [pc, #212]	; (d0040a6c <_printf_i+0x244>)
d0040998:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d004099c:	6823      	ldr	r3, [r4, #0]
d004099e:	680e      	ldr	r6, [r1, #0]
d00409a0:	061f      	lsls	r7, r3, #24
d00409a2:	f856 5b04 	ldr.w	r5, [r6], #4
d00409a6:	600e      	str	r6, [r1, #0]
d00409a8:	d514      	bpl.n	d00409d4 <_printf_i+0x1ac>
d00409aa:	07d9      	lsls	r1, r3, #31
d00409ac:	bf44      	itt	mi
d00409ae:	f043 0320 	orrmi.w	r3, r3, #32
d00409b2:	6023      	strmi	r3, [r4, #0]
d00409b4:	b91d      	cbnz	r5, d00409be <_printf_i+0x196>
d00409b6:	6823      	ldr	r3, [r4, #0]
d00409b8:	f023 0320 	bic.w	r3, r3, #32
d00409bc:	6023      	str	r3, [r4, #0]
d00409be:	2310      	movs	r3, #16
d00409c0:	e7b0      	b.n	d0040924 <_printf_i+0xfc>
d00409c2:	6823      	ldr	r3, [r4, #0]
d00409c4:	f043 0320 	orr.w	r3, r3, #32
d00409c8:	6023      	str	r3, [r4, #0]
d00409ca:	2378      	movs	r3, #120	; 0x78
d00409cc:	4828      	ldr	r0, [pc, #160]	; (d0040a70 <_printf_i+0x248>)
d00409ce:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d00409d2:	e7e3      	b.n	d004099c <_printf_i+0x174>
d00409d4:	065e      	lsls	r6, r3, #25
d00409d6:	bf48      	it	mi
d00409d8:	b2ad      	uxthmi	r5, r5
d00409da:	e7e6      	b.n	d00409aa <_printf_i+0x182>
d00409dc:	4616      	mov	r6, r2
d00409de:	e7bb      	b.n	d0040958 <_printf_i+0x130>
d00409e0:	680b      	ldr	r3, [r1, #0]
d00409e2:	6826      	ldr	r6, [r4, #0]
d00409e4:	6960      	ldr	r0, [r4, #20]
d00409e6:	1d1d      	adds	r5, r3, #4
d00409e8:	600d      	str	r5, [r1, #0]
d00409ea:	0635      	lsls	r5, r6, #24
d00409ec:	681b      	ldr	r3, [r3, #0]
d00409ee:	d501      	bpl.n	d00409f4 <_printf_i+0x1cc>
d00409f0:	6018      	str	r0, [r3, #0]
d00409f2:	e002      	b.n	d00409fa <_printf_i+0x1d2>
d00409f4:	0671      	lsls	r1, r6, #25
d00409f6:	d5fb      	bpl.n	d00409f0 <_printf_i+0x1c8>
d00409f8:	8018      	strh	r0, [r3, #0]
d00409fa:	2300      	movs	r3, #0
d00409fc:	6123      	str	r3, [r4, #16]
d00409fe:	4616      	mov	r6, r2
d0040a00:	e7ba      	b.n	d0040978 <_printf_i+0x150>
d0040a02:	680b      	ldr	r3, [r1, #0]
d0040a04:	1d1a      	adds	r2, r3, #4
d0040a06:	600a      	str	r2, [r1, #0]
d0040a08:	681e      	ldr	r6, [r3, #0]
d0040a0a:	6862      	ldr	r2, [r4, #4]
d0040a0c:	2100      	movs	r1, #0
d0040a0e:	4630      	mov	r0, r6
d0040a10:	f000 f836 	bl	d0040a80 <memchr>
d0040a14:	b108      	cbz	r0, d0040a1a <_printf_i+0x1f2>
d0040a16:	1b80      	subs	r0, r0, r6
d0040a18:	6060      	str	r0, [r4, #4]
d0040a1a:	6863      	ldr	r3, [r4, #4]
d0040a1c:	6123      	str	r3, [r4, #16]
d0040a1e:	2300      	movs	r3, #0
d0040a20:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0040a24:	e7a8      	b.n	d0040978 <_printf_i+0x150>
d0040a26:	6923      	ldr	r3, [r4, #16]
d0040a28:	4632      	mov	r2, r6
d0040a2a:	4649      	mov	r1, r9
d0040a2c:	4640      	mov	r0, r8
d0040a2e:	47d0      	blx	sl
d0040a30:	3001      	adds	r0, #1
d0040a32:	d0ab      	beq.n	d004098c <_printf_i+0x164>
d0040a34:	6823      	ldr	r3, [r4, #0]
d0040a36:	079b      	lsls	r3, r3, #30
d0040a38:	d413      	bmi.n	d0040a62 <_printf_i+0x23a>
d0040a3a:	68e0      	ldr	r0, [r4, #12]
d0040a3c:	9b03      	ldr	r3, [sp, #12]
d0040a3e:	4298      	cmp	r0, r3
d0040a40:	bfb8      	it	lt
d0040a42:	4618      	movlt	r0, r3
d0040a44:	e7a4      	b.n	d0040990 <_printf_i+0x168>
d0040a46:	2301      	movs	r3, #1
d0040a48:	4632      	mov	r2, r6
d0040a4a:	4649      	mov	r1, r9
d0040a4c:	4640      	mov	r0, r8
d0040a4e:	47d0      	blx	sl
d0040a50:	3001      	adds	r0, #1
d0040a52:	d09b      	beq.n	d004098c <_printf_i+0x164>
d0040a54:	3501      	adds	r5, #1
d0040a56:	68e3      	ldr	r3, [r4, #12]
d0040a58:	9903      	ldr	r1, [sp, #12]
d0040a5a:	1a5b      	subs	r3, r3, r1
d0040a5c:	42ab      	cmp	r3, r5
d0040a5e:	dcf2      	bgt.n	d0040a46 <_printf_i+0x21e>
d0040a60:	e7eb      	b.n	d0040a3a <_printf_i+0x212>
d0040a62:	2500      	movs	r5, #0
d0040a64:	f104 0619 	add.w	r6, r4, #25
d0040a68:	e7f5      	b.n	d0040a56 <_printf_i+0x22e>
d0040a6a:	bf00      	nop
d0040a6c:	d0040da5 	.word	0xd0040da5
d0040a70:	d0040db6 	.word	0xd0040db6
	...

d0040a80 <memchr>:
d0040a80:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0040a84:	2a10      	cmp	r2, #16
d0040a86:	db2b      	blt.n	d0040ae0 <memchr+0x60>
d0040a88:	f010 0f07 	tst.w	r0, #7
d0040a8c:	d008      	beq.n	d0040aa0 <memchr+0x20>
d0040a8e:	f810 3b01 	ldrb.w	r3, [r0], #1
d0040a92:	3a01      	subs	r2, #1
d0040a94:	428b      	cmp	r3, r1
d0040a96:	d02d      	beq.n	d0040af4 <memchr+0x74>
d0040a98:	f010 0f07 	tst.w	r0, #7
d0040a9c:	b342      	cbz	r2, d0040af0 <memchr+0x70>
d0040a9e:	d1f6      	bne.n	d0040a8e <memchr+0xe>
d0040aa0:	b4f0      	push	{r4, r5, r6, r7}
d0040aa2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0040aa6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d0040aaa:	f022 0407 	bic.w	r4, r2, #7
d0040aae:	f07f 0700 	mvns.w	r7, #0
d0040ab2:	2300      	movs	r3, #0
d0040ab4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0040ab8:	3c08      	subs	r4, #8
d0040aba:	ea85 0501 	eor.w	r5, r5, r1
d0040abe:	ea86 0601 	eor.w	r6, r6, r1
d0040ac2:	fa85 f547 	uadd8	r5, r5, r7
d0040ac6:	faa3 f587 	sel	r5, r3, r7
d0040aca:	fa86 f647 	uadd8	r6, r6, r7
d0040ace:	faa5 f687 	sel	r6, r5, r7
d0040ad2:	b98e      	cbnz	r6, d0040af8 <memchr+0x78>
d0040ad4:	d1ee      	bne.n	d0040ab4 <memchr+0x34>
d0040ad6:	bcf0      	pop	{r4, r5, r6, r7}
d0040ad8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0040adc:	f002 0207 	and.w	r2, r2, #7
d0040ae0:	b132      	cbz	r2, d0040af0 <memchr+0x70>
d0040ae2:	f810 3b01 	ldrb.w	r3, [r0], #1
d0040ae6:	3a01      	subs	r2, #1
d0040ae8:	ea83 0301 	eor.w	r3, r3, r1
d0040aec:	b113      	cbz	r3, d0040af4 <memchr+0x74>
d0040aee:	d1f8      	bne.n	d0040ae2 <memchr+0x62>
d0040af0:	2000      	movs	r0, #0
d0040af2:	4770      	bx	lr
d0040af4:	3801      	subs	r0, #1
d0040af6:	4770      	bx	lr
d0040af8:	2d00      	cmp	r5, #0
d0040afa:	bf06      	itte	eq
d0040afc:	4635      	moveq	r5, r6
d0040afe:	3803      	subeq	r0, #3
d0040b00:	3807      	subne	r0, #7
d0040b02:	f015 0f01 	tst.w	r5, #1
d0040b06:	d107      	bne.n	d0040b18 <memchr+0x98>
d0040b08:	3001      	adds	r0, #1
d0040b0a:	f415 7f80 	tst.w	r5, #256	; 0x100
d0040b0e:	bf02      	ittt	eq
d0040b10:	3001      	addeq	r0, #1
d0040b12:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0040b16:	3001      	addeq	r0, #1
d0040b18:	bcf0      	pop	{r4, r5, r6, r7}
d0040b1a:	3801      	subs	r0, #1
d0040b1c:	4770      	bx	lr
d0040b1e:	bf00      	nop

d0040b20 <memcpy>:
d0040b20:	440a      	add	r2, r1
d0040b22:	4291      	cmp	r1, r2
d0040b24:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0040b28:	d100      	bne.n	d0040b2c <memcpy+0xc>
d0040b2a:	4770      	bx	lr
d0040b2c:	b510      	push	{r4, lr}
d0040b2e:	f811 4b01 	ldrb.w	r4, [r1], #1
d0040b32:	f803 4f01 	strb.w	r4, [r3, #1]!
d0040b36:	4291      	cmp	r1, r2
d0040b38:	d1f9      	bne.n	d0040b2e <memcpy+0xe>
d0040b3a:	bd10      	pop	{r4, pc}

d0040b3c <memmove>:
d0040b3c:	4288      	cmp	r0, r1
d0040b3e:	b510      	push	{r4, lr}
d0040b40:	eb01 0402 	add.w	r4, r1, r2
d0040b44:	d902      	bls.n	d0040b4c <memmove+0x10>
d0040b46:	4284      	cmp	r4, r0
d0040b48:	4623      	mov	r3, r4
d0040b4a:	d807      	bhi.n	d0040b5c <memmove+0x20>
d0040b4c:	1e43      	subs	r3, r0, #1
d0040b4e:	42a1      	cmp	r1, r4
d0040b50:	d008      	beq.n	d0040b64 <memmove+0x28>
d0040b52:	f811 2b01 	ldrb.w	r2, [r1], #1
d0040b56:	f803 2f01 	strb.w	r2, [r3, #1]!
d0040b5a:	e7f8      	b.n	d0040b4e <memmove+0x12>
d0040b5c:	4402      	add	r2, r0
d0040b5e:	4601      	mov	r1, r0
d0040b60:	428a      	cmp	r2, r1
d0040b62:	d100      	bne.n	d0040b66 <memmove+0x2a>
d0040b64:	bd10      	pop	{r4, pc}
d0040b66:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d0040b6a:	f802 4d01 	strb.w	r4, [r2, #-1]!
d0040b6e:	e7f7      	b.n	d0040b60 <memmove+0x24>

d0040b70 <_free_r>:
d0040b70:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0040b72:	2900      	cmp	r1, #0
d0040b74:	d048      	beq.n	d0040c08 <_free_r+0x98>
d0040b76:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0040b7a:	9001      	str	r0, [sp, #4]
d0040b7c:	2b00      	cmp	r3, #0
d0040b7e:	f1a1 0404 	sub.w	r4, r1, #4
d0040b82:	bfb8      	it	lt
d0040b84:	18e4      	addlt	r4, r4, r3
d0040b86:	f000 f8d3 	bl	d0040d30 <__malloc_lock>
d0040b8a:	4a20      	ldr	r2, [pc, #128]	; (d0040c0c <_free_r+0x9c>)
d0040b8c:	9801      	ldr	r0, [sp, #4]
d0040b8e:	6813      	ldr	r3, [r2, #0]
d0040b90:	4615      	mov	r5, r2
d0040b92:	b933      	cbnz	r3, d0040ba2 <_free_r+0x32>
d0040b94:	6063      	str	r3, [r4, #4]
d0040b96:	6014      	str	r4, [r2, #0]
d0040b98:	b003      	add	sp, #12
d0040b9a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0040b9e:	f000 b8cd 	b.w	d0040d3c <__malloc_unlock>
d0040ba2:	42a3      	cmp	r3, r4
d0040ba4:	d90b      	bls.n	d0040bbe <_free_r+0x4e>
d0040ba6:	6821      	ldr	r1, [r4, #0]
d0040ba8:	1862      	adds	r2, r4, r1
d0040baa:	4293      	cmp	r3, r2
d0040bac:	bf04      	itt	eq
d0040bae:	681a      	ldreq	r2, [r3, #0]
d0040bb0:	685b      	ldreq	r3, [r3, #4]
d0040bb2:	6063      	str	r3, [r4, #4]
d0040bb4:	bf04      	itt	eq
d0040bb6:	1852      	addeq	r2, r2, r1
d0040bb8:	6022      	streq	r2, [r4, #0]
d0040bba:	602c      	str	r4, [r5, #0]
d0040bbc:	e7ec      	b.n	d0040b98 <_free_r+0x28>
d0040bbe:	461a      	mov	r2, r3
d0040bc0:	685b      	ldr	r3, [r3, #4]
d0040bc2:	b10b      	cbz	r3, d0040bc8 <_free_r+0x58>
d0040bc4:	42a3      	cmp	r3, r4
d0040bc6:	d9fa      	bls.n	d0040bbe <_free_r+0x4e>
d0040bc8:	6811      	ldr	r1, [r2, #0]
d0040bca:	1855      	adds	r5, r2, r1
d0040bcc:	42a5      	cmp	r5, r4
d0040bce:	d10b      	bne.n	d0040be8 <_free_r+0x78>
d0040bd0:	6824      	ldr	r4, [r4, #0]
d0040bd2:	4421      	add	r1, r4
d0040bd4:	1854      	adds	r4, r2, r1
d0040bd6:	42a3      	cmp	r3, r4
d0040bd8:	6011      	str	r1, [r2, #0]
d0040bda:	d1dd      	bne.n	d0040b98 <_free_r+0x28>
d0040bdc:	681c      	ldr	r4, [r3, #0]
d0040bde:	685b      	ldr	r3, [r3, #4]
d0040be0:	6053      	str	r3, [r2, #4]
d0040be2:	4421      	add	r1, r4
d0040be4:	6011      	str	r1, [r2, #0]
d0040be6:	e7d7      	b.n	d0040b98 <_free_r+0x28>
d0040be8:	d902      	bls.n	d0040bf0 <_free_r+0x80>
d0040bea:	230c      	movs	r3, #12
d0040bec:	6003      	str	r3, [r0, #0]
d0040bee:	e7d3      	b.n	d0040b98 <_free_r+0x28>
d0040bf0:	6825      	ldr	r5, [r4, #0]
d0040bf2:	1961      	adds	r1, r4, r5
d0040bf4:	428b      	cmp	r3, r1
d0040bf6:	bf04      	itt	eq
d0040bf8:	6819      	ldreq	r1, [r3, #0]
d0040bfa:	685b      	ldreq	r3, [r3, #4]
d0040bfc:	6063      	str	r3, [r4, #4]
d0040bfe:	bf04      	itt	eq
d0040c00:	1949      	addeq	r1, r1, r5
d0040c02:	6021      	streq	r1, [r4, #0]
d0040c04:	6054      	str	r4, [r2, #4]
d0040c06:	e7c7      	b.n	d0040b98 <_free_r+0x28>
d0040c08:	b003      	add	sp, #12
d0040c0a:	bd30      	pop	{r4, r5, pc}
d0040c0c:	d0040ea4 	.word	0xd0040ea4

d0040c10 <_malloc_r>:
d0040c10:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0040c12:	1ccd      	adds	r5, r1, #3
d0040c14:	f025 0503 	bic.w	r5, r5, #3
d0040c18:	3508      	adds	r5, #8
d0040c1a:	2d0c      	cmp	r5, #12
d0040c1c:	bf38      	it	cc
d0040c1e:	250c      	movcc	r5, #12
d0040c20:	2d00      	cmp	r5, #0
d0040c22:	4606      	mov	r6, r0
d0040c24:	db01      	blt.n	d0040c2a <_malloc_r+0x1a>
d0040c26:	42a9      	cmp	r1, r5
d0040c28:	d903      	bls.n	d0040c32 <_malloc_r+0x22>
d0040c2a:	230c      	movs	r3, #12
d0040c2c:	6033      	str	r3, [r6, #0]
d0040c2e:	2000      	movs	r0, #0
d0040c30:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040c32:	f000 f87d 	bl	d0040d30 <__malloc_lock>
d0040c36:	4921      	ldr	r1, [pc, #132]	; (d0040cbc <_malloc_r+0xac>)
d0040c38:	680a      	ldr	r2, [r1, #0]
d0040c3a:	4614      	mov	r4, r2
d0040c3c:	b99c      	cbnz	r4, d0040c66 <_malloc_r+0x56>
d0040c3e:	4f20      	ldr	r7, [pc, #128]	; (d0040cc0 <_malloc_r+0xb0>)
d0040c40:	683b      	ldr	r3, [r7, #0]
d0040c42:	b923      	cbnz	r3, d0040c4e <_malloc_r+0x3e>
d0040c44:	4621      	mov	r1, r4
d0040c46:	4630      	mov	r0, r6
d0040c48:	f000 f862 	bl	d0040d10 <_sbrk_r>
d0040c4c:	6038      	str	r0, [r7, #0]
d0040c4e:	4629      	mov	r1, r5
d0040c50:	4630      	mov	r0, r6
d0040c52:	f000 f85d 	bl	d0040d10 <_sbrk_r>
d0040c56:	1c43      	adds	r3, r0, #1
d0040c58:	d123      	bne.n	d0040ca2 <_malloc_r+0x92>
d0040c5a:	230c      	movs	r3, #12
d0040c5c:	6033      	str	r3, [r6, #0]
d0040c5e:	4630      	mov	r0, r6
d0040c60:	f000 f86c 	bl	d0040d3c <__malloc_unlock>
d0040c64:	e7e3      	b.n	d0040c2e <_malloc_r+0x1e>
d0040c66:	6823      	ldr	r3, [r4, #0]
d0040c68:	1b5b      	subs	r3, r3, r5
d0040c6a:	d417      	bmi.n	d0040c9c <_malloc_r+0x8c>
d0040c6c:	2b0b      	cmp	r3, #11
d0040c6e:	d903      	bls.n	d0040c78 <_malloc_r+0x68>
d0040c70:	6023      	str	r3, [r4, #0]
d0040c72:	441c      	add	r4, r3
d0040c74:	6025      	str	r5, [r4, #0]
d0040c76:	e004      	b.n	d0040c82 <_malloc_r+0x72>
d0040c78:	6863      	ldr	r3, [r4, #4]
d0040c7a:	42a2      	cmp	r2, r4
d0040c7c:	bf0c      	ite	eq
d0040c7e:	600b      	streq	r3, [r1, #0]
d0040c80:	6053      	strne	r3, [r2, #4]
d0040c82:	4630      	mov	r0, r6
d0040c84:	f000 f85a 	bl	d0040d3c <__malloc_unlock>
d0040c88:	f104 000b 	add.w	r0, r4, #11
d0040c8c:	1d23      	adds	r3, r4, #4
d0040c8e:	f020 0007 	bic.w	r0, r0, #7
d0040c92:	1ac2      	subs	r2, r0, r3
d0040c94:	d0cc      	beq.n	d0040c30 <_malloc_r+0x20>
d0040c96:	1a1b      	subs	r3, r3, r0
d0040c98:	50a3      	str	r3, [r4, r2]
d0040c9a:	e7c9      	b.n	d0040c30 <_malloc_r+0x20>
d0040c9c:	4622      	mov	r2, r4
d0040c9e:	6864      	ldr	r4, [r4, #4]
d0040ca0:	e7cc      	b.n	d0040c3c <_malloc_r+0x2c>
d0040ca2:	1cc4      	adds	r4, r0, #3
d0040ca4:	f024 0403 	bic.w	r4, r4, #3
d0040ca8:	42a0      	cmp	r0, r4
d0040caa:	d0e3      	beq.n	d0040c74 <_malloc_r+0x64>
d0040cac:	1a21      	subs	r1, r4, r0
d0040cae:	4630      	mov	r0, r6
d0040cb0:	f000 f82e 	bl	d0040d10 <_sbrk_r>
d0040cb4:	3001      	adds	r0, #1
d0040cb6:	d1dd      	bne.n	d0040c74 <_malloc_r+0x64>
d0040cb8:	e7cf      	b.n	d0040c5a <_malloc_r+0x4a>
d0040cba:	bf00      	nop
d0040cbc:	d0040ea4 	.word	0xd0040ea4
d0040cc0:	d0040ea8 	.word	0xd0040ea8

d0040cc4 <_realloc_r>:
d0040cc4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0040cc6:	4607      	mov	r7, r0
d0040cc8:	4614      	mov	r4, r2
d0040cca:	460e      	mov	r6, r1
d0040ccc:	b921      	cbnz	r1, d0040cd8 <_realloc_r+0x14>
d0040cce:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0040cd2:	4611      	mov	r1, r2
d0040cd4:	f7ff bf9c 	b.w	d0040c10 <_malloc_r>
d0040cd8:	b922      	cbnz	r2, d0040ce4 <_realloc_r+0x20>
d0040cda:	f7ff ff49 	bl	d0040b70 <_free_r>
d0040cde:	4625      	mov	r5, r4
d0040ce0:	4628      	mov	r0, r5
d0040ce2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040ce4:	f000 f830 	bl	d0040d48 <_malloc_usable_size_r>
d0040ce8:	42a0      	cmp	r0, r4
d0040cea:	d20f      	bcs.n	d0040d0c <_realloc_r+0x48>
d0040cec:	4621      	mov	r1, r4
d0040cee:	4638      	mov	r0, r7
d0040cf0:	f7ff ff8e 	bl	d0040c10 <_malloc_r>
d0040cf4:	4605      	mov	r5, r0
d0040cf6:	2800      	cmp	r0, #0
d0040cf8:	d0f2      	beq.n	d0040ce0 <_realloc_r+0x1c>
d0040cfa:	4631      	mov	r1, r6
d0040cfc:	4622      	mov	r2, r4
d0040cfe:	f7ff ff0f 	bl	d0040b20 <memcpy>
d0040d02:	4631      	mov	r1, r6
d0040d04:	4638      	mov	r0, r7
d0040d06:	f7ff ff33 	bl	d0040b70 <_free_r>
d0040d0a:	e7e9      	b.n	d0040ce0 <_realloc_r+0x1c>
d0040d0c:	4635      	mov	r5, r6
d0040d0e:	e7e7      	b.n	d0040ce0 <_realloc_r+0x1c>

d0040d10 <_sbrk_r>:
d0040d10:	b538      	push	{r3, r4, r5, lr}
d0040d12:	4d06      	ldr	r5, [pc, #24]	; (d0040d2c <_sbrk_r+0x1c>)
d0040d14:	2300      	movs	r3, #0
d0040d16:	4604      	mov	r4, r0
d0040d18:	4608      	mov	r0, r1
d0040d1a:	602b      	str	r3, [r5, #0]
d0040d1c:	f7ff f9b8 	bl	d0040090 <_sbrk>
d0040d20:	1c43      	adds	r3, r0, #1
d0040d22:	d102      	bne.n	d0040d2a <_sbrk_r+0x1a>
d0040d24:	682b      	ldr	r3, [r5, #0]
d0040d26:	b103      	cbz	r3, d0040d2a <_sbrk_r+0x1a>
d0040d28:	6023      	str	r3, [r4, #0]
d0040d2a:	bd38      	pop	{r3, r4, r5, pc}
d0040d2c:	d0040ebc 	.word	0xd0040ebc

d0040d30 <__malloc_lock>:
d0040d30:	4801      	ldr	r0, [pc, #4]	; (d0040d38 <__malloc_lock+0x8>)
d0040d32:	f000 b811 	b.w	d0040d58 <__retarget_lock_acquire_recursive>
d0040d36:	bf00      	nop
d0040d38:	d0040ec4 	.word	0xd0040ec4

d0040d3c <__malloc_unlock>:
d0040d3c:	4801      	ldr	r0, [pc, #4]	; (d0040d44 <__malloc_unlock+0x8>)
d0040d3e:	f000 b80c 	b.w	d0040d5a <__retarget_lock_release_recursive>
d0040d42:	bf00      	nop
d0040d44:	d0040ec4 	.word	0xd0040ec4

d0040d48 <_malloc_usable_size_r>:
d0040d48:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0040d4c:	1f18      	subs	r0, r3, #4
d0040d4e:	2b00      	cmp	r3, #0
d0040d50:	bfbc      	itt	lt
d0040d52:	580b      	ldrlt	r3, [r1, r0]
d0040d54:	18c0      	addlt	r0, r0, r3
d0040d56:	4770      	bx	lr

d0040d58 <__retarget_lock_acquire_recursive>:
d0040d58:	4770      	bx	lr

d0040d5a <__retarget_lock_release_recursive>:
d0040d5a:	4770      	bx	lr
d0040d5c:	6e756f43 	.word	0x6e756f43
d0040d60:	25203a74 	.word	0x25203a74
d0040d64:	00000064 	.word	0x00000064
d0040d68:	6b736154 	.word	0x6b736154
d0040d6c:	52203120 	.word	0x52203120
d0040d70:	696e6e75 	.word	0x696e6e75
d0040d74:	0000676e 	.word	0x0000676e
d0040d78:	5620534f 	.word	0x5620534f
d0040d7c:	31302e30 	.word	0x31302e30
d0040d80:	00000a0d 	.word	0x00000a0d
d0040d84:	6e696c42 	.word	0x6e696c42
d0040d88:	0072656b 	.word	0x0072656b
d0040d8c:	6e756f43 	.word	0x6e756f43
d0040d90:	00726574 	.word	0x00726574
d0040d94:	2b302d23 	.word	0x2b302d23
d0040d98:	6c680020 	.word	0x6c680020
d0040d9c:	6665004c 	.word	0x6665004c
d0040da0:	47464567 	.word	0x47464567
d0040da4:	00          	.byte	0x00
d0040da5:	30          	.byte	0x30
d0040da6:	3231      	.short	0x3231
d0040da8:	36353433 	.word	0x36353433
d0040dac:	41393837 	.word	0x41393837
d0040db0:	45444342 	.word	0x45444342
d0040db4:	31300046 	.word	0x31300046
d0040db8:	35343332 	.word	0x35343332
d0040dbc:	39383736 	.word	0x39383736
d0040dc0:	64636261 	.word	0x64636261
d0040dc4:	Address 0x00000000d0040dc4 is out of bounds.


Disassembly of section .init:

d0040dc8 <_init>:
d0040dc8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0040dca:	bf00      	nop

Disassembly of section .fini:

d0040dcc <_fini>:
d0040dcc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0040dce:	bf00      	nop
