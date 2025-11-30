
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0000010 <applet_entry>:
d0000010:	f000 b87c 	b.w	d000010c <main>

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
d0000050:	d0000c5c 	.word	0xd0000c5c
d0000054:	d0000c60 	.word	0xd0000c60
d0000058:	d0000c68 	.word	0xd0000c68

d000005c <ShowBuffer>:
d000005c:	4b09      	ldr	r3, [pc, #36]	; (d0000084 <ShowBuffer+0x28>)
d000005e:	b140      	cbz	r0, d0000072 <ShowBuffer+0x16>
d0000060:	f8d3 10ec 	ldr.w	r1, [r3, #236]	; 0xec
d0000064:	4808      	ldr	r0, [pc, #32]	; (d0000088 <ShowBuffer+0x2c>)
d0000066:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d000006a:	4a08      	ldr	r2, [pc, #32]	; (d000008c <ShowBuffer+0x30>)
d000006c:	6008      	str	r0, [r1, #0]
d000006e:	601a      	str	r2, [r3, #0]
d0000070:	4770      	bx	lr
d0000072:	f8d3 10ec 	ldr.w	r1, [r3, #236]	; 0xec
d0000076:	4805      	ldr	r0, [pc, #20]	; (d000008c <ShowBuffer+0x30>)
d0000078:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d000007c:	4a02      	ldr	r2, [pc, #8]	; (d0000088 <ShowBuffer+0x2c>)
d000007e:	6008      	str	r0, [r1, #0]
d0000080:	601a      	str	r2, [r3, #0]
d0000082:	4770      	bx	lr
d0000084:	2001f000 	.word	0x2001f000
d0000088:	d06b2000 	.word	0xd06b2000
d000008c:	d06d9000 	.word	0xd06d9000

d0000090 <_sbrk>:
d0000090:	4904      	ldr	r1, [pc, #16]	; (d00000a4 <_sbrk+0x14>)
d0000092:	4a05      	ldr	r2, [pc, #20]	; (d00000a8 <_sbrk+0x18>)
d0000094:	680b      	ldr	r3, [r1, #0]
d0000096:	2b00      	cmp	r3, #0
d0000098:	bf08      	it	eq
d000009a:	4613      	moveq	r3, r2
d000009c:	181a      	adds	r2, r3, r0
d000009e:	4618      	mov	r0, r3
d00000a0:	600a      	str	r2, [r1, #0]
d00000a2:	4770      	bx	lr
d00000a4:	d0000c50 	.word	0xd0000c50
d00000a8:	d0000c79 	.word	0xd0000c79

d00000ac <loadScreenFromDisk>:
d00000ac:	b570      	push	{r4, r5, r6, lr}
d00000ae:	b08a      	sub	sp, #40	; 0x28
d00000b0:	4c12      	ldr	r4, [pc, #72]	; (d00000fc <loadScreenFromDisk+0x50>)
d00000b2:	4602      	mov	r2, r0
d00000b4:	4912      	ldr	r1, [pc, #72]	; (d0000100 <loadScreenFromDisk+0x54>)
d00000b6:	a802      	add	r0, sp, #8
d00000b8:	f000 f8ae 	bl	d0000218 <siprintf>
d00000bc:	f8d4 3094 	ldr.w	r3, [r4, #148]	; 0x94
d00000c0:	a902      	add	r1, sp, #8
d00000c2:	2201      	movs	r2, #1
d00000c4:	2000      	movs	r0, #0
d00000c6:	4798      	blx	r3
d00000c8:	f8d4 30ec 	ldr.w	r3, [r4, #236]	; 0xec
d00000cc:	b980      	cbnz	r0, d00000f0 <loadScreenFromDisk+0x44>
d00000ce:	4605      	mov	r5, r0
d00000d0:	6819      	ldr	r1, [r3, #0]
d00000d2:	f44f 3216 	mov.w	r2, #153600	; 0x25800
d00000d6:	ab01      	add	r3, sp, #4
d00000d8:	f8d4 60a0 	ldr.w	r6, [r4, #160]	; 0xa0
d00000dc:	47b0      	blx	r6
d00000de:	f8d4 3098 	ldr.w	r3, [r4, #152]	; 0x98
d00000e2:	4628      	mov	r0, r5
d00000e4:	4798      	blx	r3
d00000e6:	68a3      	ldr	r3, [r4, #8]
d00000e8:	4806      	ldr	r0, [pc, #24]	; (d0000104 <loadScreenFromDisk+0x58>)
d00000ea:	4798      	blx	r3
d00000ec:	b00a      	add	sp, #40	; 0x28
d00000ee:	bd70      	pop	{r4, r5, r6, pc}
d00000f0:	68a3      	ldr	r3, [r4, #8]
d00000f2:	4805      	ldr	r0, [pc, #20]	; (d0000108 <loadScreenFromDisk+0x5c>)
d00000f4:	4798      	blx	r3
d00000f6:	b00a      	add	sp, #40	; 0x28
d00000f8:	bd70      	pop	{r4, r5, r6, pc}
d00000fa:	bf00      	nop
d00000fc:	2001f000 	.word	0x2001f000
d0000100:	d0000b1c 	.word	0xd0000b1c
d0000104:	d0000b28 	.word	0xd0000b28
d0000108:	d0000b3c 	.word	0xd0000b3c

d000010c <main>:
d000010c:	4a3c      	ldr	r2, [pc, #240]	; (d0000200 <main+0xf4>)
d000010e:	20ff      	movs	r0, #255	; 0xff
d0000110:	6813      	ldr	r3, [r2, #0]
d0000112:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0000116:	f023 0310 	bic.w	r3, r3, #16
d000011a:	4c3a      	ldr	r4, [pc, #232]	; (d0000204 <main+0xf8>)
d000011c:	b0a3      	sub	sp, #140	; 0x8c
d000011e:	f04f 0800 	mov.w	r8, #0
d0000122:	6013      	str	r3, [r2, #0]
d0000124:	4626      	mov	r6, r4
d0000126:	f8d4 30c8 	ldr.w	r3, [r4, #200]	; 0xc8
d000012a:	4647      	mov	r7, r8
d000012c:	4798      	blx	r3
d000012e:	4b36      	ldr	r3, [pc, #216]	; (d0000208 <main+0xfc>)
d0000130:	4836      	ldr	r0, [pc, #216]	; (d000020c <main+0x100>)
d0000132:	f8c3 8000 	str.w	r8, [r3]
d0000136:	68a3      	ldr	r3, [r4, #8]
d0000138:	4798      	blx	r3
d000013a:	68e3      	ldr	r3, [r4, #12]
d000013c:	200a      	movs	r0, #10
d000013e:	f8df b0d4 	ldr.w	fp, [pc, #212]	; d0000214 <main+0x108>
d0000142:	4798      	blx	r3
d0000144:	f8d4 30bc 	ldr.w	r3, [r4, #188]	; 0xbc
d0000148:	2102      	movs	r1, #2
d000014a:	20dc      	movs	r0, #220	; 0xdc
d000014c:	4798      	blx	r3
d000014e:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0000152:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0000156:	2002      	movs	r0, #2
d0000158:	f8d4 40e8 	ldr.w	r4, [r4, #232]	; 0xe8
d000015c:	4619      	mov	r1, r3
d000015e:	9000      	str	r0, [sp, #0]
d0000160:	4610      	mov	r0, r2
d0000162:	47a0      	blx	r4
d0000164:	f7ff ff56 	bl	d0000014 <initDisplayBuffers>
d0000168:	e041      	b.n	d00001ee <main+0xe2>
d000016a:	69b3      	ldr	r3, [r6, #24]
d000016c:	ac02      	add	r4, sp, #8
d000016e:	4798      	blx	r3
d0000170:	4d27      	ldr	r5, [pc, #156]	; (d0000210 <main+0x104>)
d0000172:	4681      	mov	r9, r0
d0000174:	4638      	mov	r0, r7
d0000176:	f7ff ff99 	bl	d00000ac <loadScreenFromDisk>
d000017a:	69b3      	ldr	r3, [r6, #24]
d000017c:	4798      	blx	r3
d000017e:	eba0 0a09 	sub.w	sl, r0, r9
d0000182:	f04f 0c03 	mov.w	ip, #3
d0000186:	2f05      	cmp	r7, #5
d0000188:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d000018a:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d000018c:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d000018e:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0000190:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0000192:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0000194:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0000198:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d000019c:	f04f 0114 	mov.w	r1, #20
d00001a0:	f8d6 30f8 	ldr.w	r3, [r6, #248]	; 0xf8
d00001a4:	aa02      	add	r2, sp, #8
d00001a6:	bfa8      	it	ge
d00001a8:	2700      	movge	r7, #0
d00001aa:	f883 c000 	strb.w	ip, [r3]
d00001ae:	4608      	mov	r0, r1
d00001b0:	f8d6 3148 	ldr.w	r3, [r6, #328]	; 0x148
d00001b4:	4798      	blx	r3
d00001b6:	4652      	mov	r2, sl
d00001b8:	4659      	mov	r1, fp
d00001ba:	a802      	add	r0, sp, #8
d00001bc:	f000 f82c 	bl	d0000218 <siprintf>
d00001c0:	aa02      	add	r2, sp, #8
d00001c2:	2128      	movs	r1, #40	; 0x28
d00001c4:	f8d6 3148 	ldr.w	r3, [r6, #328]	; 0x148
d00001c8:	2014      	movs	r0, #20
d00001ca:	4798      	blx	r3
d00001cc:	4640      	mov	r0, r8
d00001ce:	f7ff ff45 	bl	d000005c <ShowBuffer>
d00001d2:	f8d6 30cc 	ldr.w	r3, [r6, #204]	; 0xcc
d00001d6:	4798      	blx	r3
d00001d8:	f1c8 0801 	rsb	r8, r8, #1
d00001dc:	f8d6 30c4 	ldr.w	r3, [r6, #196]	; 0xc4
d00001e0:	2001      	movs	r0, #1
d00001e2:	4798      	blx	r3
d00001e4:	f8d6 315c 	ldr.w	r3, [r6, #348]	; 0x15c
d00001e8:	fa5f f888 	uxtb.w	r8, r8
d00001ec:	4798      	blx	r3
d00001ee:	69f3      	ldr	r3, [r6, #28]
d00001f0:	3701      	adds	r7, #1
d00001f2:	4798      	blx	r3
d00001f4:	0783      	lsls	r3, r0, #30
d00001f6:	d5b8      	bpl.n	d000016a <main+0x5e>
d00001f8:	2007      	movs	r0, #7
d00001fa:	b023      	add	sp, #140	; 0x8c
d00001fc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0000200:	e000ed14 	.word	0xe000ed14
d0000204:	2001f000 	.word	0x2001f000
d0000208:	d0000c4c 	.word	0xd0000c4c
d000020c:	d0000b54 	.word	0xd0000b54
d0000210:	d0000b68 	.word	0xd0000b68
d0000214:	d0000ba4 	.word	0xd0000ba4

d0000218 <siprintf>:
d0000218:	b40e      	push	{r1, r2, r3}
d000021a:	b500      	push	{lr}
d000021c:	b09c      	sub	sp, #112	; 0x70
d000021e:	ab1d      	add	r3, sp, #116	; 0x74
d0000220:	9002      	str	r0, [sp, #8]
d0000222:	9006      	str	r0, [sp, #24]
d0000224:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d0000228:	4809      	ldr	r0, [pc, #36]	; (d0000250 <siprintf+0x38>)
d000022a:	9107      	str	r1, [sp, #28]
d000022c:	9104      	str	r1, [sp, #16]
d000022e:	4909      	ldr	r1, [pc, #36]	; (d0000254 <siprintf+0x3c>)
d0000230:	f853 2b04 	ldr.w	r2, [r3], #4
d0000234:	9105      	str	r1, [sp, #20]
d0000236:	6800      	ldr	r0, [r0, #0]
d0000238:	9301      	str	r3, [sp, #4]
d000023a:	a902      	add	r1, sp, #8
d000023c:	f000 f868 	bl	d0000310 <_svfiprintf_r>
d0000240:	9b02      	ldr	r3, [sp, #8]
d0000242:	2200      	movs	r2, #0
d0000244:	701a      	strb	r2, [r3, #0]
d0000246:	b01c      	add	sp, #112	; 0x70
d0000248:	f85d eb04 	ldr.w	lr, [sp], #4
d000024c:	b003      	add	sp, #12
d000024e:	4770      	bx	lr
d0000250:	d0000be8 	.word	0xd0000be8
d0000254:	ffff0208 	.word	0xffff0208

d0000258 <__ssputs_r>:
d0000258:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d000025c:	688e      	ldr	r6, [r1, #8]
d000025e:	429e      	cmp	r6, r3
d0000260:	4682      	mov	sl, r0
d0000262:	460c      	mov	r4, r1
d0000264:	4690      	mov	r8, r2
d0000266:	461f      	mov	r7, r3
d0000268:	d838      	bhi.n	d00002dc <__ssputs_r+0x84>
d000026a:	898a      	ldrh	r2, [r1, #12]
d000026c:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0000270:	d032      	beq.n	d00002d8 <__ssputs_r+0x80>
d0000272:	6825      	ldr	r5, [r4, #0]
d0000274:	6909      	ldr	r1, [r1, #16]
d0000276:	eba5 0901 	sub.w	r9, r5, r1
d000027a:	6965      	ldr	r5, [r4, #20]
d000027c:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0000280:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0000284:	3301      	adds	r3, #1
d0000286:	444b      	add	r3, r9
d0000288:	106d      	asrs	r5, r5, #1
d000028a:	429d      	cmp	r5, r3
d000028c:	bf38      	it	cc
d000028e:	461d      	movcc	r5, r3
d0000290:	0553      	lsls	r3, r2, #21
d0000292:	d531      	bpl.n	d00002f8 <__ssputs_r+0xa0>
d0000294:	4629      	mov	r1, r5
d0000296:	f000 fb9b 	bl	d00009d0 <_malloc_r>
d000029a:	4606      	mov	r6, r0
d000029c:	b950      	cbnz	r0, d00002b4 <__ssputs_r+0x5c>
d000029e:	230c      	movs	r3, #12
d00002a0:	f8ca 3000 	str.w	r3, [sl]
d00002a4:	89a3      	ldrh	r3, [r4, #12]
d00002a6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00002aa:	81a3      	strh	r3, [r4, #12]
d00002ac:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00002b0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00002b4:	6921      	ldr	r1, [r4, #16]
d00002b6:	464a      	mov	r2, r9
d00002b8:	f000 fb12 	bl	d00008e0 <memcpy>
d00002bc:	89a3      	ldrh	r3, [r4, #12]
d00002be:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d00002c2:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00002c6:	81a3      	strh	r3, [r4, #12]
d00002c8:	6126      	str	r6, [r4, #16]
d00002ca:	6165      	str	r5, [r4, #20]
d00002cc:	444e      	add	r6, r9
d00002ce:	eba5 0509 	sub.w	r5, r5, r9
d00002d2:	6026      	str	r6, [r4, #0]
d00002d4:	60a5      	str	r5, [r4, #8]
d00002d6:	463e      	mov	r6, r7
d00002d8:	42be      	cmp	r6, r7
d00002da:	d900      	bls.n	d00002de <__ssputs_r+0x86>
d00002dc:	463e      	mov	r6, r7
d00002de:	4632      	mov	r2, r6
d00002e0:	6820      	ldr	r0, [r4, #0]
d00002e2:	4641      	mov	r1, r8
d00002e4:	f000 fb0a 	bl	d00008fc <memmove>
d00002e8:	68a3      	ldr	r3, [r4, #8]
d00002ea:	6822      	ldr	r2, [r4, #0]
d00002ec:	1b9b      	subs	r3, r3, r6
d00002ee:	4432      	add	r2, r6
d00002f0:	60a3      	str	r3, [r4, #8]
d00002f2:	6022      	str	r2, [r4, #0]
d00002f4:	2000      	movs	r0, #0
d00002f6:	e7db      	b.n	d00002b0 <__ssputs_r+0x58>
d00002f8:	462a      	mov	r2, r5
d00002fa:	f000 fbc3 	bl	d0000a84 <_realloc_r>
d00002fe:	4606      	mov	r6, r0
d0000300:	2800      	cmp	r0, #0
d0000302:	d1e1      	bne.n	d00002c8 <__ssputs_r+0x70>
d0000304:	6921      	ldr	r1, [r4, #16]
d0000306:	4650      	mov	r0, sl
d0000308:	f000 fb12 	bl	d0000930 <_free_r>
d000030c:	e7c7      	b.n	d000029e <__ssputs_r+0x46>
	...

d0000310 <_svfiprintf_r>:
d0000310:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0000314:	4698      	mov	r8, r3
d0000316:	898b      	ldrh	r3, [r1, #12]
d0000318:	061b      	lsls	r3, r3, #24
d000031a:	b09d      	sub	sp, #116	; 0x74
d000031c:	4607      	mov	r7, r0
d000031e:	460d      	mov	r5, r1
d0000320:	4614      	mov	r4, r2
d0000322:	d50e      	bpl.n	d0000342 <_svfiprintf_r+0x32>
d0000324:	690b      	ldr	r3, [r1, #16]
d0000326:	b963      	cbnz	r3, d0000342 <_svfiprintf_r+0x32>
d0000328:	2140      	movs	r1, #64	; 0x40
d000032a:	f000 fb51 	bl	d00009d0 <_malloc_r>
d000032e:	6028      	str	r0, [r5, #0]
d0000330:	6128      	str	r0, [r5, #16]
d0000332:	b920      	cbnz	r0, d000033e <_svfiprintf_r+0x2e>
d0000334:	230c      	movs	r3, #12
d0000336:	603b      	str	r3, [r7, #0]
d0000338:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d000033c:	e0d1      	b.n	d00004e2 <_svfiprintf_r+0x1d2>
d000033e:	2340      	movs	r3, #64	; 0x40
d0000340:	616b      	str	r3, [r5, #20]
d0000342:	2300      	movs	r3, #0
d0000344:	9309      	str	r3, [sp, #36]	; 0x24
d0000346:	2320      	movs	r3, #32
d0000348:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d000034c:	f8cd 800c 	str.w	r8, [sp, #12]
d0000350:	2330      	movs	r3, #48	; 0x30
d0000352:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d00004fc <_svfiprintf_r+0x1ec>
d0000356:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d000035a:	f04f 0901 	mov.w	r9, #1
d000035e:	4623      	mov	r3, r4
d0000360:	469a      	mov	sl, r3
d0000362:	f813 2b01 	ldrb.w	r2, [r3], #1
d0000366:	b10a      	cbz	r2, d000036c <_svfiprintf_r+0x5c>
d0000368:	2a25      	cmp	r2, #37	; 0x25
d000036a:	d1f9      	bne.n	d0000360 <_svfiprintf_r+0x50>
d000036c:	ebba 0b04 	subs.w	fp, sl, r4
d0000370:	d00b      	beq.n	d000038a <_svfiprintf_r+0x7a>
d0000372:	465b      	mov	r3, fp
d0000374:	4622      	mov	r2, r4
d0000376:	4629      	mov	r1, r5
d0000378:	4638      	mov	r0, r7
d000037a:	f7ff ff6d 	bl	d0000258 <__ssputs_r>
d000037e:	3001      	adds	r0, #1
d0000380:	f000 80aa 	beq.w	d00004d8 <_svfiprintf_r+0x1c8>
d0000384:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0000386:	445a      	add	r2, fp
d0000388:	9209      	str	r2, [sp, #36]	; 0x24
d000038a:	f89a 3000 	ldrb.w	r3, [sl]
d000038e:	2b00      	cmp	r3, #0
d0000390:	f000 80a2 	beq.w	d00004d8 <_svfiprintf_r+0x1c8>
d0000394:	2300      	movs	r3, #0
d0000396:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d000039a:	e9cd 2305 	strd	r2, r3, [sp, #20]
d000039e:	f10a 0a01 	add.w	sl, sl, #1
d00003a2:	9304      	str	r3, [sp, #16]
d00003a4:	9307      	str	r3, [sp, #28]
d00003a6:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d00003aa:	931a      	str	r3, [sp, #104]	; 0x68
d00003ac:	4654      	mov	r4, sl
d00003ae:	2205      	movs	r2, #5
d00003b0:	f814 1b01 	ldrb.w	r1, [r4], #1
d00003b4:	4851      	ldr	r0, [pc, #324]	; (d00004fc <_svfiprintf_r+0x1ec>)
d00003b6:	f000 fa43 	bl	d0000840 <memchr>
d00003ba:	9a04      	ldr	r2, [sp, #16]
d00003bc:	b9d8      	cbnz	r0, d00003f6 <_svfiprintf_r+0xe6>
d00003be:	06d0      	lsls	r0, r2, #27
d00003c0:	bf44      	itt	mi
d00003c2:	2320      	movmi	r3, #32
d00003c4:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00003c8:	0711      	lsls	r1, r2, #28
d00003ca:	bf44      	itt	mi
d00003cc:	232b      	movmi	r3, #43	; 0x2b
d00003ce:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00003d2:	f89a 3000 	ldrb.w	r3, [sl]
d00003d6:	2b2a      	cmp	r3, #42	; 0x2a
d00003d8:	d015      	beq.n	d0000406 <_svfiprintf_r+0xf6>
d00003da:	9a07      	ldr	r2, [sp, #28]
d00003dc:	4654      	mov	r4, sl
d00003de:	2000      	movs	r0, #0
d00003e0:	f04f 0c0a 	mov.w	ip, #10
d00003e4:	4621      	mov	r1, r4
d00003e6:	f811 3b01 	ldrb.w	r3, [r1], #1
d00003ea:	3b30      	subs	r3, #48	; 0x30
d00003ec:	2b09      	cmp	r3, #9
d00003ee:	d94e      	bls.n	d000048e <_svfiprintf_r+0x17e>
d00003f0:	b1b0      	cbz	r0, d0000420 <_svfiprintf_r+0x110>
d00003f2:	9207      	str	r2, [sp, #28]
d00003f4:	e014      	b.n	d0000420 <_svfiprintf_r+0x110>
d00003f6:	eba0 0308 	sub.w	r3, r0, r8
d00003fa:	fa09 f303 	lsl.w	r3, r9, r3
d00003fe:	4313      	orrs	r3, r2
d0000400:	9304      	str	r3, [sp, #16]
d0000402:	46a2      	mov	sl, r4
d0000404:	e7d2      	b.n	d00003ac <_svfiprintf_r+0x9c>
d0000406:	9b03      	ldr	r3, [sp, #12]
d0000408:	1d19      	adds	r1, r3, #4
d000040a:	681b      	ldr	r3, [r3, #0]
d000040c:	9103      	str	r1, [sp, #12]
d000040e:	2b00      	cmp	r3, #0
d0000410:	bfbb      	ittet	lt
d0000412:	425b      	neglt	r3, r3
d0000414:	f042 0202 	orrlt.w	r2, r2, #2
d0000418:	9307      	strge	r3, [sp, #28]
d000041a:	9307      	strlt	r3, [sp, #28]
d000041c:	bfb8      	it	lt
d000041e:	9204      	strlt	r2, [sp, #16]
d0000420:	7823      	ldrb	r3, [r4, #0]
d0000422:	2b2e      	cmp	r3, #46	; 0x2e
d0000424:	d10c      	bne.n	d0000440 <_svfiprintf_r+0x130>
d0000426:	7863      	ldrb	r3, [r4, #1]
d0000428:	2b2a      	cmp	r3, #42	; 0x2a
d000042a:	d135      	bne.n	d0000498 <_svfiprintf_r+0x188>
d000042c:	9b03      	ldr	r3, [sp, #12]
d000042e:	1d1a      	adds	r2, r3, #4
d0000430:	681b      	ldr	r3, [r3, #0]
d0000432:	9203      	str	r2, [sp, #12]
d0000434:	2b00      	cmp	r3, #0
d0000436:	bfb8      	it	lt
d0000438:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d000043c:	3402      	adds	r4, #2
d000043e:	9305      	str	r3, [sp, #20]
d0000440:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d000050c <_svfiprintf_r+0x1fc>
d0000444:	7821      	ldrb	r1, [r4, #0]
d0000446:	2203      	movs	r2, #3
d0000448:	4650      	mov	r0, sl
d000044a:	f000 f9f9 	bl	d0000840 <memchr>
d000044e:	b140      	cbz	r0, d0000462 <_svfiprintf_r+0x152>
d0000450:	2340      	movs	r3, #64	; 0x40
d0000452:	eba0 000a 	sub.w	r0, r0, sl
d0000456:	fa03 f000 	lsl.w	r0, r3, r0
d000045a:	9b04      	ldr	r3, [sp, #16]
d000045c:	4303      	orrs	r3, r0
d000045e:	3401      	adds	r4, #1
d0000460:	9304      	str	r3, [sp, #16]
d0000462:	f814 1b01 	ldrb.w	r1, [r4], #1
d0000466:	4826      	ldr	r0, [pc, #152]	; (d0000500 <_svfiprintf_r+0x1f0>)
d0000468:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d000046c:	2206      	movs	r2, #6
d000046e:	f000 f9e7 	bl	d0000840 <memchr>
d0000472:	2800      	cmp	r0, #0
d0000474:	d038      	beq.n	d00004e8 <_svfiprintf_r+0x1d8>
d0000476:	4b23      	ldr	r3, [pc, #140]	; (d0000504 <_svfiprintf_r+0x1f4>)
d0000478:	bb1b      	cbnz	r3, d00004c2 <_svfiprintf_r+0x1b2>
d000047a:	9b03      	ldr	r3, [sp, #12]
d000047c:	3307      	adds	r3, #7
d000047e:	f023 0307 	bic.w	r3, r3, #7
d0000482:	3308      	adds	r3, #8
d0000484:	9303      	str	r3, [sp, #12]
d0000486:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0000488:	4433      	add	r3, r6
d000048a:	9309      	str	r3, [sp, #36]	; 0x24
d000048c:	e767      	b.n	d000035e <_svfiprintf_r+0x4e>
d000048e:	fb0c 3202 	mla	r2, ip, r2, r3
d0000492:	460c      	mov	r4, r1
d0000494:	2001      	movs	r0, #1
d0000496:	e7a5      	b.n	d00003e4 <_svfiprintf_r+0xd4>
d0000498:	2300      	movs	r3, #0
d000049a:	3401      	adds	r4, #1
d000049c:	9305      	str	r3, [sp, #20]
d000049e:	4619      	mov	r1, r3
d00004a0:	f04f 0c0a 	mov.w	ip, #10
d00004a4:	4620      	mov	r0, r4
d00004a6:	f810 2b01 	ldrb.w	r2, [r0], #1
d00004aa:	3a30      	subs	r2, #48	; 0x30
d00004ac:	2a09      	cmp	r2, #9
d00004ae:	d903      	bls.n	d00004b8 <_svfiprintf_r+0x1a8>
d00004b0:	2b00      	cmp	r3, #0
d00004b2:	d0c5      	beq.n	d0000440 <_svfiprintf_r+0x130>
d00004b4:	9105      	str	r1, [sp, #20]
d00004b6:	e7c3      	b.n	d0000440 <_svfiprintf_r+0x130>
d00004b8:	fb0c 2101 	mla	r1, ip, r1, r2
d00004bc:	4604      	mov	r4, r0
d00004be:	2301      	movs	r3, #1
d00004c0:	e7f0      	b.n	d00004a4 <_svfiprintf_r+0x194>
d00004c2:	ab03      	add	r3, sp, #12
d00004c4:	9300      	str	r3, [sp, #0]
d00004c6:	462a      	mov	r2, r5
d00004c8:	4b0f      	ldr	r3, [pc, #60]	; (d0000508 <_svfiprintf_r+0x1f8>)
d00004ca:	a904      	add	r1, sp, #16
d00004cc:	4638      	mov	r0, r7
d00004ce:	f3af 8000 	nop.w
d00004d2:	1c42      	adds	r2, r0, #1
d00004d4:	4606      	mov	r6, r0
d00004d6:	d1d6      	bne.n	d0000486 <_svfiprintf_r+0x176>
d00004d8:	89ab      	ldrh	r3, [r5, #12]
d00004da:	065b      	lsls	r3, r3, #25
d00004dc:	f53f af2c 	bmi.w	d0000338 <_svfiprintf_r+0x28>
d00004e0:	9809      	ldr	r0, [sp, #36]	; 0x24
d00004e2:	b01d      	add	sp, #116	; 0x74
d00004e4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00004e8:	ab03      	add	r3, sp, #12
d00004ea:	9300      	str	r3, [sp, #0]
d00004ec:	462a      	mov	r2, r5
d00004ee:	4b06      	ldr	r3, [pc, #24]	; (d0000508 <_svfiprintf_r+0x1f8>)
d00004f0:	a904      	add	r1, sp, #16
d00004f2:	4638      	mov	r0, r7
d00004f4:	f000 f87a 	bl	d00005ec <_printf_i>
d00004f8:	e7eb      	b.n	d00004d2 <_svfiprintf_r+0x1c2>
d00004fa:	bf00      	nop
d00004fc:	d0000bab 	.word	0xd0000bab
d0000500:	d0000bb5 	.word	0xd0000bb5
d0000504:	00000000 	.word	0x00000000
d0000508:	d0000259 	.word	0xd0000259
d000050c:	d0000bb1 	.word	0xd0000bb1

d0000510 <_printf_common>:
d0000510:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0000514:	4616      	mov	r6, r2
d0000516:	4699      	mov	r9, r3
d0000518:	688a      	ldr	r2, [r1, #8]
d000051a:	690b      	ldr	r3, [r1, #16]
d000051c:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0000520:	4293      	cmp	r3, r2
d0000522:	bfb8      	it	lt
d0000524:	4613      	movlt	r3, r2
d0000526:	6033      	str	r3, [r6, #0]
d0000528:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d000052c:	4607      	mov	r7, r0
d000052e:	460c      	mov	r4, r1
d0000530:	b10a      	cbz	r2, d0000536 <_printf_common+0x26>
d0000532:	3301      	adds	r3, #1
d0000534:	6033      	str	r3, [r6, #0]
d0000536:	6823      	ldr	r3, [r4, #0]
d0000538:	0699      	lsls	r1, r3, #26
d000053a:	bf42      	ittt	mi
d000053c:	6833      	ldrmi	r3, [r6, #0]
d000053e:	3302      	addmi	r3, #2
d0000540:	6033      	strmi	r3, [r6, #0]
d0000542:	6825      	ldr	r5, [r4, #0]
d0000544:	f015 0506 	ands.w	r5, r5, #6
d0000548:	d106      	bne.n	d0000558 <_printf_common+0x48>
d000054a:	f104 0a19 	add.w	sl, r4, #25
d000054e:	68e3      	ldr	r3, [r4, #12]
d0000550:	6832      	ldr	r2, [r6, #0]
d0000552:	1a9b      	subs	r3, r3, r2
d0000554:	42ab      	cmp	r3, r5
d0000556:	dc26      	bgt.n	d00005a6 <_printf_common+0x96>
d0000558:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d000055c:	1e13      	subs	r3, r2, #0
d000055e:	6822      	ldr	r2, [r4, #0]
d0000560:	bf18      	it	ne
d0000562:	2301      	movne	r3, #1
d0000564:	0692      	lsls	r2, r2, #26
d0000566:	d42b      	bmi.n	d00005c0 <_printf_common+0xb0>
d0000568:	f104 0243 	add.w	r2, r4, #67	; 0x43
d000056c:	4649      	mov	r1, r9
d000056e:	4638      	mov	r0, r7
d0000570:	47c0      	blx	r8
d0000572:	3001      	adds	r0, #1
d0000574:	d01e      	beq.n	d00005b4 <_printf_common+0xa4>
d0000576:	6823      	ldr	r3, [r4, #0]
d0000578:	68e5      	ldr	r5, [r4, #12]
d000057a:	6832      	ldr	r2, [r6, #0]
d000057c:	f003 0306 	and.w	r3, r3, #6
d0000580:	2b04      	cmp	r3, #4
d0000582:	bf08      	it	eq
d0000584:	1aad      	subeq	r5, r5, r2
d0000586:	68a3      	ldr	r3, [r4, #8]
d0000588:	6922      	ldr	r2, [r4, #16]
d000058a:	bf0c      	ite	eq
d000058c:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0000590:	2500      	movne	r5, #0
d0000592:	4293      	cmp	r3, r2
d0000594:	bfc4      	itt	gt
d0000596:	1a9b      	subgt	r3, r3, r2
d0000598:	18ed      	addgt	r5, r5, r3
d000059a:	2600      	movs	r6, #0
d000059c:	341a      	adds	r4, #26
d000059e:	42b5      	cmp	r5, r6
d00005a0:	d11a      	bne.n	d00005d8 <_printf_common+0xc8>
d00005a2:	2000      	movs	r0, #0
d00005a4:	e008      	b.n	d00005b8 <_printf_common+0xa8>
d00005a6:	2301      	movs	r3, #1
d00005a8:	4652      	mov	r2, sl
d00005aa:	4649      	mov	r1, r9
d00005ac:	4638      	mov	r0, r7
d00005ae:	47c0      	blx	r8
d00005b0:	3001      	adds	r0, #1
d00005b2:	d103      	bne.n	d00005bc <_printf_common+0xac>
d00005b4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00005b8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00005bc:	3501      	adds	r5, #1
d00005be:	e7c6      	b.n	d000054e <_printf_common+0x3e>
d00005c0:	18e1      	adds	r1, r4, r3
d00005c2:	1c5a      	adds	r2, r3, #1
d00005c4:	2030      	movs	r0, #48	; 0x30
d00005c6:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d00005ca:	4422      	add	r2, r4
d00005cc:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d00005d0:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d00005d4:	3302      	adds	r3, #2
d00005d6:	e7c7      	b.n	d0000568 <_printf_common+0x58>
d00005d8:	2301      	movs	r3, #1
d00005da:	4622      	mov	r2, r4
d00005dc:	4649      	mov	r1, r9
d00005de:	4638      	mov	r0, r7
d00005e0:	47c0      	blx	r8
d00005e2:	3001      	adds	r0, #1
d00005e4:	d0e6      	beq.n	d00005b4 <_printf_common+0xa4>
d00005e6:	3601      	adds	r6, #1
d00005e8:	e7d9      	b.n	d000059e <_printf_common+0x8e>
	...

d00005ec <_printf_i>:
d00005ec:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d00005f0:	460c      	mov	r4, r1
d00005f2:	4691      	mov	r9, r2
d00005f4:	7e27      	ldrb	r7, [r4, #24]
d00005f6:	990c      	ldr	r1, [sp, #48]	; 0x30
d00005f8:	2f78      	cmp	r7, #120	; 0x78
d00005fa:	4680      	mov	r8, r0
d00005fc:	469a      	mov	sl, r3
d00005fe:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0000602:	d807      	bhi.n	d0000614 <_printf_i+0x28>
d0000604:	2f62      	cmp	r7, #98	; 0x62
d0000606:	d80a      	bhi.n	d000061e <_printf_i+0x32>
d0000608:	2f00      	cmp	r7, #0
d000060a:	f000 80d8 	beq.w	d00007be <_printf_i+0x1d2>
d000060e:	2f58      	cmp	r7, #88	; 0x58
d0000610:	f000 80a3 	beq.w	d000075a <_printf_i+0x16e>
d0000614:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0000618:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d000061c:	e03a      	b.n	d0000694 <_printf_i+0xa8>
d000061e:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0000622:	2b15      	cmp	r3, #21
d0000624:	d8f6      	bhi.n	d0000614 <_printf_i+0x28>
d0000626:	a001      	add	r0, pc, #4	; (adr r0, d000062c <_printf_i+0x40>)
d0000628:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d000062c:	d0000685 	.word	0xd0000685
d0000630:	d0000699 	.word	0xd0000699
d0000634:	d0000615 	.word	0xd0000615
d0000638:	d0000615 	.word	0xd0000615
d000063c:	d0000615 	.word	0xd0000615
d0000640:	d0000615 	.word	0xd0000615
d0000644:	d0000699 	.word	0xd0000699
d0000648:	d0000615 	.word	0xd0000615
d000064c:	d0000615 	.word	0xd0000615
d0000650:	d0000615 	.word	0xd0000615
d0000654:	d0000615 	.word	0xd0000615
d0000658:	d00007a5 	.word	0xd00007a5
d000065c:	d00006c9 	.word	0xd00006c9
d0000660:	d0000787 	.word	0xd0000787
d0000664:	d0000615 	.word	0xd0000615
d0000668:	d0000615 	.word	0xd0000615
d000066c:	d00007c7 	.word	0xd00007c7
d0000670:	d0000615 	.word	0xd0000615
d0000674:	d00006c9 	.word	0xd00006c9
d0000678:	d0000615 	.word	0xd0000615
d000067c:	d0000615 	.word	0xd0000615
d0000680:	d000078f 	.word	0xd000078f
d0000684:	680b      	ldr	r3, [r1, #0]
d0000686:	1d1a      	adds	r2, r3, #4
d0000688:	681b      	ldr	r3, [r3, #0]
d000068a:	600a      	str	r2, [r1, #0]
d000068c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0000690:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0000694:	2301      	movs	r3, #1
d0000696:	e0a3      	b.n	d00007e0 <_printf_i+0x1f4>
d0000698:	6825      	ldr	r5, [r4, #0]
d000069a:	6808      	ldr	r0, [r1, #0]
d000069c:	062e      	lsls	r6, r5, #24
d000069e:	f100 0304 	add.w	r3, r0, #4
d00006a2:	d50a      	bpl.n	d00006ba <_printf_i+0xce>
d00006a4:	6805      	ldr	r5, [r0, #0]
d00006a6:	600b      	str	r3, [r1, #0]
d00006a8:	2d00      	cmp	r5, #0
d00006aa:	da03      	bge.n	d00006b4 <_printf_i+0xc8>
d00006ac:	232d      	movs	r3, #45	; 0x2d
d00006ae:	426d      	negs	r5, r5
d00006b0:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d00006b4:	485e      	ldr	r0, [pc, #376]	; (d0000830 <_printf_i+0x244>)
d00006b6:	230a      	movs	r3, #10
d00006b8:	e019      	b.n	d00006ee <_printf_i+0x102>
d00006ba:	f015 0f40 	tst.w	r5, #64	; 0x40
d00006be:	6805      	ldr	r5, [r0, #0]
d00006c0:	600b      	str	r3, [r1, #0]
d00006c2:	bf18      	it	ne
d00006c4:	b22d      	sxthne	r5, r5
d00006c6:	e7ef      	b.n	d00006a8 <_printf_i+0xbc>
d00006c8:	680b      	ldr	r3, [r1, #0]
d00006ca:	6825      	ldr	r5, [r4, #0]
d00006cc:	1d18      	adds	r0, r3, #4
d00006ce:	6008      	str	r0, [r1, #0]
d00006d0:	0628      	lsls	r0, r5, #24
d00006d2:	d501      	bpl.n	d00006d8 <_printf_i+0xec>
d00006d4:	681d      	ldr	r5, [r3, #0]
d00006d6:	e002      	b.n	d00006de <_printf_i+0xf2>
d00006d8:	0669      	lsls	r1, r5, #25
d00006da:	d5fb      	bpl.n	d00006d4 <_printf_i+0xe8>
d00006dc:	881d      	ldrh	r5, [r3, #0]
d00006de:	4854      	ldr	r0, [pc, #336]	; (d0000830 <_printf_i+0x244>)
d00006e0:	2f6f      	cmp	r7, #111	; 0x6f
d00006e2:	bf0c      	ite	eq
d00006e4:	2308      	moveq	r3, #8
d00006e6:	230a      	movne	r3, #10
d00006e8:	2100      	movs	r1, #0
d00006ea:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d00006ee:	6866      	ldr	r6, [r4, #4]
d00006f0:	60a6      	str	r6, [r4, #8]
d00006f2:	2e00      	cmp	r6, #0
d00006f4:	bfa2      	ittt	ge
d00006f6:	6821      	ldrge	r1, [r4, #0]
d00006f8:	f021 0104 	bicge.w	r1, r1, #4
d00006fc:	6021      	strge	r1, [r4, #0]
d00006fe:	b90d      	cbnz	r5, d0000704 <_printf_i+0x118>
d0000700:	2e00      	cmp	r6, #0
d0000702:	d04d      	beq.n	d00007a0 <_printf_i+0x1b4>
d0000704:	4616      	mov	r6, r2
d0000706:	fbb5 f1f3 	udiv	r1, r5, r3
d000070a:	fb03 5711 	mls	r7, r3, r1, r5
d000070e:	5dc7      	ldrb	r7, [r0, r7]
d0000710:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0000714:	462f      	mov	r7, r5
d0000716:	42bb      	cmp	r3, r7
d0000718:	460d      	mov	r5, r1
d000071a:	d9f4      	bls.n	d0000706 <_printf_i+0x11a>
d000071c:	2b08      	cmp	r3, #8
d000071e:	d10b      	bne.n	d0000738 <_printf_i+0x14c>
d0000720:	6823      	ldr	r3, [r4, #0]
d0000722:	07df      	lsls	r7, r3, #31
d0000724:	d508      	bpl.n	d0000738 <_printf_i+0x14c>
d0000726:	6923      	ldr	r3, [r4, #16]
d0000728:	6861      	ldr	r1, [r4, #4]
d000072a:	4299      	cmp	r1, r3
d000072c:	bfde      	ittt	le
d000072e:	2330      	movle	r3, #48	; 0x30
d0000730:	f806 3c01 	strble.w	r3, [r6, #-1]
d0000734:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0000738:	1b92      	subs	r2, r2, r6
d000073a:	6122      	str	r2, [r4, #16]
d000073c:	f8cd a000 	str.w	sl, [sp]
d0000740:	464b      	mov	r3, r9
d0000742:	aa03      	add	r2, sp, #12
d0000744:	4621      	mov	r1, r4
d0000746:	4640      	mov	r0, r8
d0000748:	f7ff fee2 	bl	d0000510 <_printf_common>
d000074c:	3001      	adds	r0, #1
d000074e:	d14c      	bne.n	d00007ea <_printf_i+0x1fe>
d0000750:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000754:	b004      	add	sp, #16
d0000756:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d000075a:	4835      	ldr	r0, [pc, #212]	; (d0000830 <_printf_i+0x244>)
d000075c:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0000760:	6823      	ldr	r3, [r4, #0]
d0000762:	680e      	ldr	r6, [r1, #0]
d0000764:	061f      	lsls	r7, r3, #24
d0000766:	f856 5b04 	ldr.w	r5, [r6], #4
d000076a:	600e      	str	r6, [r1, #0]
d000076c:	d514      	bpl.n	d0000798 <_printf_i+0x1ac>
d000076e:	07d9      	lsls	r1, r3, #31
d0000770:	bf44      	itt	mi
d0000772:	f043 0320 	orrmi.w	r3, r3, #32
d0000776:	6023      	strmi	r3, [r4, #0]
d0000778:	b91d      	cbnz	r5, d0000782 <_printf_i+0x196>
d000077a:	6823      	ldr	r3, [r4, #0]
d000077c:	f023 0320 	bic.w	r3, r3, #32
d0000780:	6023      	str	r3, [r4, #0]
d0000782:	2310      	movs	r3, #16
d0000784:	e7b0      	b.n	d00006e8 <_printf_i+0xfc>
d0000786:	6823      	ldr	r3, [r4, #0]
d0000788:	f043 0320 	orr.w	r3, r3, #32
d000078c:	6023      	str	r3, [r4, #0]
d000078e:	2378      	movs	r3, #120	; 0x78
d0000790:	4828      	ldr	r0, [pc, #160]	; (d0000834 <_printf_i+0x248>)
d0000792:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0000796:	e7e3      	b.n	d0000760 <_printf_i+0x174>
d0000798:	065e      	lsls	r6, r3, #25
d000079a:	bf48      	it	mi
d000079c:	b2ad      	uxthmi	r5, r5
d000079e:	e7e6      	b.n	d000076e <_printf_i+0x182>
d00007a0:	4616      	mov	r6, r2
d00007a2:	e7bb      	b.n	d000071c <_printf_i+0x130>
d00007a4:	680b      	ldr	r3, [r1, #0]
d00007a6:	6826      	ldr	r6, [r4, #0]
d00007a8:	6960      	ldr	r0, [r4, #20]
d00007aa:	1d1d      	adds	r5, r3, #4
d00007ac:	600d      	str	r5, [r1, #0]
d00007ae:	0635      	lsls	r5, r6, #24
d00007b0:	681b      	ldr	r3, [r3, #0]
d00007b2:	d501      	bpl.n	d00007b8 <_printf_i+0x1cc>
d00007b4:	6018      	str	r0, [r3, #0]
d00007b6:	e002      	b.n	d00007be <_printf_i+0x1d2>
d00007b8:	0671      	lsls	r1, r6, #25
d00007ba:	d5fb      	bpl.n	d00007b4 <_printf_i+0x1c8>
d00007bc:	8018      	strh	r0, [r3, #0]
d00007be:	2300      	movs	r3, #0
d00007c0:	6123      	str	r3, [r4, #16]
d00007c2:	4616      	mov	r6, r2
d00007c4:	e7ba      	b.n	d000073c <_printf_i+0x150>
d00007c6:	680b      	ldr	r3, [r1, #0]
d00007c8:	1d1a      	adds	r2, r3, #4
d00007ca:	600a      	str	r2, [r1, #0]
d00007cc:	681e      	ldr	r6, [r3, #0]
d00007ce:	6862      	ldr	r2, [r4, #4]
d00007d0:	2100      	movs	r1, #0
d00007d2:	4630      	mov	r0, r6
d00007d4:	f000 f834 	bl	d0000840 <memchr>
d00007d8:	b108      	cbz	r0, d00007de <_printf_i+0x1f2>
d00007da:	1b80      	subs	r0, r0, r6
d00007dc:	6060      	str	r0, [r4, #4]
d00007de:	6863      	ldr	r3, [r4, #4]
d00007e0:	6123      	str	r3, [r4, #16]
d00007e2:	2300      	movs	r3, #0
d00007e4:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d00007e8:	e7a8      	b.n	d000073c <_printf_i+0x150>
d00007ea:	6923      	ldr	r3, [r4, #16]
d00007ec:	4632      	mov	r2, r6
d00007ee:	4649      	mov	r1, r9
d00007f0:	4640      	mov	r0, r8
d00007f2:	47d0      	blx	sl
d00007f4:	3001      	adds	r0, #1
d00007f6:	d0ab      	beq.n	d0000750 <_printf_i+0x164>
d00007f8:	6823      	ldr	r3, [r4, #0]
d00007fa:	079b      	lsls	r3, r3, #30
d00007fc:	d413      	bmi.n	d0000826 <_printf_i+0x23a>
d00007fe:	68e0      	ldr	r0, [r4, #12]
d0000800:	9b03      	ldr	r3, [sp, #12]
d0000802:	4298      	cmp	r0, r3
d0000804:	bfb8      	it	lt
d0000806:	4618      	movlt	r0, r3
d0000808:	e7a4      	b.n	d0000754 <_printf_i+0x168>
d000080a:	2301      	movs	r3, #1
d000080c:	4632      	mov	r2, r6
d000080e:	4649      	mov	r1, r9
d0000810:	4640      	mov	r0, r8
d0000812:	47d0      	blx	sl
d0000814:	3001      	adds	r0, #1
d0000816:	d09b      	beq.n	d0000750 <_printf_i+0x164>
d0000818:	3501      	adds	r5, #1
d000081a:	68e3      	ldr	r3, [r4, #12]
d000081c:	9903      	ldr	r1, [sp, #12]
d000081e:	1a5b      	subs	r3, r3, r1
d0000820:	42ab      	cmp	r3, r5
d0000822:	dcf2      	bgt.n	d000080a <_printf_i+0x21e>
d0000824:	e7eb      	b.n	d00007fe <_printf_i+0x212>
d0000826:	2500      	movs	r5, #0
d0000828:	f104 0619 	add.w	r6, r4, #25
d000082c:	e7f5      	b.n	d000081a <_printf_i+0x22e>
d000082e:	bf00      	nop
d0000830:	d0000bbc 	.word	0xd0000bbc
d0000834:	d0000bcd 	.word	0xd0000bcd
	...

d0000840 <memchr>:
d0000840:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0000844:	2a10      	cmp	r2, #16
d0000846:	db2b      	blt.n	d00008a0 <memchr+0x60>
d0000848:	f010 0f07 	tst.w	r0, #7
d000084c:	d008      	beq.n	d0000860 <memchr+0x20>
d000084e:	f810 3b01 	ldrb.w	r3, [r0], #1
d0000852:	3a01      	subs	r2, #1
d0000854:	428b      	cmp	r3, r1
d0000856:	d02d      	beq.n	d00008b4 <memchr+0x74>
d0000858:	f010 0f07 	tst.w	r0, #7
d000085c:	b342      	cbz	r2, d00008b0 <memchr+0x70>
d000085e:	d1f6      	bne.n	d000084e <memchr+0xe>
d0000860:	b4f0      	push	{r4, r5, r6, r7}
d0000862:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0000866:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d000086a:	f022 0407 	bic.w	r4, r2, #7
d000086e:	f07f 0700 	mvns.w	r7, #0
d0000872:	2300      	movs	r3, #0
d0000874:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0000878:	3c08      	subs	r4, #8
d000087a:	ea85 0501 	eor.w	r5, r5, r1
d000087e:	ea86 0601 	eor.w	r6, r6, r1
d0000882:	fa85 f547 	uadd8	r5, r5, r7
d0000886:	faa3 f587 	sel	r5, r3, r7
d000088a:	fa86 f647 	uadd8	r6, r6, r7
d000088e:	faa5 f687 	sel	r6, r5, r7
d0000892:	b98e      	cbnz	r6, d00008b8 <memchr+0x78>
d0000894:	d1ee      	bne.n	d0000874 <memchr+0x34>
d0000896:	bcf0      	pop	{r4, r5, r6, r7}
d0000898:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d000089c:	f002 0207 	and.w	r2, r2, #7
d00008a0:	b132      	cbz	r2, d00008b0 <memchr+0x70>
d00008a2:	f810 3b01 	ldrb.w	r3, [r0], #1
d00008a6:	3a01      	subs	r2, #1
d00008a8:	ea83 0301 	eor.w	r3, r3, r1
d00008ac:	b113      	cbz	r3, d00008b4 <memchr+0x74>
d00008ae:	d1f8      	bne.n	d00008a2 <memchr+0x62>
d00008b0:	2000      	movs	r0, #0
d00008b2:	4770      	bx	lr
d00008b4:	3801      	subs	r0, #1
d00008b6:	4770      	bx	lr
d00008b8:	2d00      	cmp	r5, #0
d00008ba:	bf06      	itte	eq
d00008bc:	4635      	moveq	r5, r6
d00008be:	3803      	subeq	r0, #3
d00008c0:	3807      	subne	r0, #7
d00008c2:	f015 0f01 	tst.w	r5, #1
d00008c6:	d107      	bne.n	d00008d8 <memchr+0x98>
d00008c8:	3001      	adds	r0, #1
d00008ca:	f415 7f80 	tst.w	r5, #256	; 0x100
d00008ce:	bf02      	ittt	eq
d00008d0:	3001      	addeq	r0, #1
d00008d2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d00008d6:	3001      	addeq	r0, #1
d00008d8:	bcf0      	pop	{r4, r5, r6, r7}
d00008da:	3801      	subs	r0, #1
d00008dc:	4770      	bx	lr
d00008de:	bf00      	nop

d00008e0 <memcpy>:
d00008e0:	440a      	add	r2, r1
d00008e2:	4291      	cmp	r1, r2
d00008e4:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d00008e8:	d100      	bne.n	d00008ec <memcpy+0xc>
d00008ea:	4770      	bx	lr
d00008ec:	b510      	push	{r4, lr}
d00008ee:	f811 4b01 	ldrb.w	r4, [r1], #1
d00008f2:	f803 4f01 	strb.w	r4, [r3, #1]!
d00008f6:	4291      	cmp	r1, r2
d00008f8:	d1f9      	bne.n	d00008ee <memcpy+0xe>
d00008fa:	bd10      	pop	{r4, pc}

d00008fc <memmove>:
d00008fc:	4288      	cmp	r0, r1
d00008fe:	b510      	push	{r4, lr}
d0000900:	eb01 0402 	add.w	r4, r1, r2
d0000904:	d902      	bls.n	d000090c <memmove+0x10>
d0000906:	4284      	cmp	r4, r0
d0000908:	4623      	mov	r3, r4
d000090a:	d807      	bhi.n	d000091c <memmove+0x20>
d000090c:	1e43      	subs	r3, r0, #1
d000090e:	42a1      	cmp	r1, r4
d0000910:	d008      	beq.n	d0000924 <memmove+0x28>
d0000912:	f811 2b01 	ldrb.w	r2, [r1], #1
d0000916:	f803 2f01 	strb.w	r2, [r3, #1]!
d000091a:	e7f8      	b.n	d000090e <memmove+0x12>
d000091c:	4402      	add	r2, r0
d000091e:	4601      	mov	r1, r0
d0000920:	428a      	cmp	r2, r1
d0000922:	d100      	bne.n	d0000926 <memmove+0x2a>
d0000924:	bd10      	pop	{r4, pc}
d0000926:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d000092a:	f802 4d01 	strb.w	r4, [r2, #-1]!
d000092e:	e7f7      	b.n	d0000920 <memmove+0x24>

d0000930 <_free_r>:
d0000930:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0000932:	2900      	cmp	r1, #0
d0000934:	d048      	beq.n	d00009c8 <_free_r+0x98>
d0000936:	f851 3c04 	ldr.w	r3, [r1, #-4]
d000093a:	9001      	str	r0, [sp, #4]
d000093c:	2b00      	cmp	r3, #0
d000093e:	f1a1 0404 	sub.w	r4, r1, #4
d0000942:	bfb8      	it	lt
d0000944:	18e4      	addlt	r4, r4, r3
d0000946:	f000 f8d3 	bl	d0000af0 <__malloc_lock>
d000094a:	4a20      	ldr	r2, [pc, #128]	; (d00009cc <_free_r+0x9c>)
d000094c:	9801      	ldr	r0, [sp, #4]
d000094e:	6813      	ldr	r3, [r2, #0]
d0000950:	4615      	mov	r5, r2
d0000952:	b933      	cbnz	r3, d0000962 <_free_r+0x32>
d0000954:	6063      	str	r3, [r4, #4]
d0000956:	6014      	str	r4, [r2, #0]
d0000958:	b003      	add	sp, #12
d000095a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d000095e:	f000 b8cd 	b.w	d0000afc <__malloc_unlock>
d0000962:	42a3      	cmp	r3, r4
d0000964:	d90b      	bls.n	d000097e <_free_r+0x4e>
d0000966:	6821      	ldr	r1, [r4, #0]
d0000968:	1862      	adds	r2, r4, r1
d000096a:	4293      	cmp	r3, r2
d000096c:	bf04      	itt	eq
d000096e:	681a      	ldreq	r2, [r3, #0]
d0000970:	685b      	ldreq	r3, [r3, #4]
d0000972:	6063      	str	r3, [r4, #4]
d0000974:	bf04      	itt	eq
d0000976:	1852      	addeq	r2, r2, r1
d0000978:	6022      	streq	r2, [r4, #0]
d000097a:	602c      	str	r4, [r5, #0]
d000097c:	e7ec      	b.n	d0000958 <_free_r+0x28>
d000097e:	461a      	mov	r2, r3
d0000980:	685b      	ldr	r3, [r3, #4]
d0000982:	b10b      	cbz	r3, d0000988 <_free_r+0x58>
d0000984:	42a3      	cmp	r3, r4
d0000986:	d9fa      	bls.n	d000097e <_free_r+0x4e>
d0000988:	6811      	ldr	r1, [r2, #0]
d000098a:	1855      	adds	r5, r2, r1
d000098c:	42a5      	cmp	r5, r4
d000098e:	d10b      	bne.n	d00009a8 <_free_r+0x78>
d0000990:	6824      	ldr	r4, [r4, #0]
d0000992:	4421      	add	r1, r4
d0000994:	1854      	adds	r4, r2, r1
d0000996:	42a3      	cmp	r3, r4
d0000998:	6011      	str	r1, [r2, #0]
d000099a:	d1dd      	bne.n	d0000958 <_free_r+0x28>
d000099c:	681c      	ldr	r4, [r3, #0]
d000099e:	685b      	ldr	r3, [r3, #4]
d00009a0:	6053      	str	r3, [r2, #4]
d00009a2:	4421      	add	r1, r4
d00009a4:	6011      	str	r1, [r2, #0]
d00009a6:	e7d7      	b.n	d0000958 <_free_r+0x28>
d00009a8:	d902      	bls.n	d00009b0 <_free_r+0x80>
d00009aa:	230c      	movs	r3, #12
d00009ac:	6003      	str	r3, [r0, #0]
d00009ae:	e7d3      	b.n	d0000958 <_free_r+0x28>
d00009b0:	6825      	ldr	r5, [r4, #0]
d00009b2:	1961      	adds	r1, r4, r5
d00009b4:	428b      	cmp	r3, r1
d00009b6:	bf04      	itt	eq
d00009b8:	6819      	ldreq	r1, [r3, #0]
d00009ba:	685b      	ldreq	r3, [r3, #4]
d00009bc:	6063      	str	r3, [r4, #4]
d00009be:	bf04      	itt	eq
d00009c0:	1949      	addeq	r1, r1, r5
d00009c2:	6021      	streq	r1, [r4, #0]
d00009c4:	6054      	str	r4, [r2, #4]
d00009c6:	e7c7      	b.n	d0000958 <_free_r+0x28>
d00009c8:	b003      	add	sp, #12
d00009ca:	bd30      	pop	{r4, r5, pc}
d00009cc:	d0000c54 	.word	0xd0000c54

d00009d0 <_malloc_r>:
d00009d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00009d2:	1ccd      	adds	r5, r1, #3
d00009d4:	f025 0503 	bic.w	r5, r5, #3
d00009d8:	3508      	adds	r5, #8
d00009da:	2d0c      	cmp	r5, #12
d00009dc:	bf38      	it	cc
d00009de:	250c      	movcc	r5, #12
d00009e0:	2d00      	cmp	r5, #0
d00009e2:	4606      	mov	r6, r0
d00009e4:	db01      	blt.n	d00009ea <_malloc_r+0x1a>
d00009e6:	42a9      	cmp	r1, r5
d00009e8:	d903      	bls.n	d00009f2 <_malloc_r+0x22>
d00009ea:	230c      	movs	r3, #12
d00009ec:	6033      	str	r3, [r6, #0]
d00009ee:	2000      	movs	r0, #0
d00009f0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00009f2:	f000 f87d 	bl	d0000af0 <__malloc_lock>
d00009f6:	4921      	ldr	r1, [pc, #132]	; (d0000a7c <_malloc_r+0xac>)
d00009f8:	680a      	ldr	r2, [r1, #0]
d00009fa:	4614      	mov	r4, r2
d00009fc:	b99c      	cbnz	r4, d0000a26 <_malloc_r+0x56>
d00009fe:	4f20      	ldr	r7, [pc, #128]	; (d0000a80 <_malloc_r+0xb0>)
d0000a00:	683b      	ldr	r3, [r7, #0]
d0000a02:	b923      	cbnz	r3, d0000a0e <_malloc_r+0x3e>
d0000a04:	4621      	mov	r1, r4
d0000a06:	4630      	mov	r0, r6
d0000a08:	f000 f862 	bl	d0000ad0 <_sbrk_r>
d0000a0c:	6038      	str	r0, [r7, #0]
d0000a0e:	4629      	mov	r1, r5
d0000a10:	4630      	mov	r0, r6
d0000a12:	f000 f85d 	bl	d0000ad0 <_sbrk_r>
d0000a16:	1c43      	adds	r3, r0, #1
d0000a18:	d123      	bne.n	d0000a62 <_malloc_r+0x92>
d0000a1a:	230c      	movs	r3, #12
d0000a1c:	6033      	str	r3, [r6, #0]
d0000a1e:	4630      	mov	r0, r6
d0000a20:	f000 f86c 	bl	d0000afc <__malloc_unlock>
d0000a24:	e7e3      	b.n	d00009ee <_malloc_r+0x1e>
d0000a26:	6823      	ldr	r3, [r4, #0]
d0000a28:	1b5b      	subs	r3, r3, r5
d0000a2a:	d417      	bmi.n	d0000a5c <_malloc_r+0x8c>
d0000a2c:	2b0b      	cmp	r3, #11
d0000a2e:	d903      	bls.n	d0000a38 <_malloc_r+0x68>
d0000a30:	6023      	str	r3, [r4, #0]
d0000a32:	441c      	add	r4, r3
d0000a34:	6025      	str	r5, [r4, #0]
d0000a36:	e004      	b.n	d0000a42 <_malloc_r+0x72>
d0000a38:	6863      	ldr	r3, [r4, #4]
d0000a3a:	42a2      	cmp	r2, r4
d0000a3c:	bf0c      	ite	eq
d0000a3e:	600b      	streq	r3, [r1, #0]
d0000a40:	6053      	strne	r3, [r2, #4]
d0000a42:	4630      	mov	r0, r6
d0000a44:	f000 f85a 	bl	d0000afc <__malloc_unlock>
d0000a48:	f104 000b 	add.w	r0, r4, #11
d0000a4c:	1d23      	adds	r3, r4, #4
d0000a4e:	f020 0007 	bic.w	r0, r0, #7
d0000a52:	1ac2      	subs	r2, r0, r3
d0000a54:	d0cc      	beq.n	d00009f0 <_malloc_r+0x20>
d0000a56:	1a1b      	subs	r3, r3, r0
d0000a58:	50a3      	str	r3, [r4, r2]
d0000a5a:	e7c9      	b.n	d00009f0 <_malloc_r+0x20>
d0000a5c:	4622      	mov	r2, r4
d0000a5e:	6864      	ldr	r4, [r4, #4]
d0000a60:	e7cc      	b.n	d00009fc <_malloc_r+0x2c>
d0000a62:	1cc4      	adds	r4, r0, #3
d0000a64:	f024 0403 	bic.w	r4, r4, #3
d0000a68:	42a0      	cmp	r0, r4
d0000a6a:	d0e3      	beq.n	d0000a34 <_malloc_r+0x64>
d0000a6c:	1a21      	subs	r1, r4, r0
d0000a6e:	4630      	mov	r0, r6
d0000a70:	f000 f82e 	bl	d0000ad0 <_sbrk_r>
d0000a74:	3001      	adds	r0, #1
d0000a76:	d1dd      	bne.n	d0000a34 <_malloc_r+0x64>
d0000a78:	e7cf      	b.n	d0000a1a <_malloc_r+0x4a>
d0000a7a:	bf00      	nop
d0000a7c:	d0000c54 	.word	0xd0000c54
d0000a80:	d0000c58 	.word	0xd0000c58

d0000a84 <_realloc_r>:
d0000a84:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000a86:	4607      	mov	r7, r0
d0000a88:	4614      	mov	r4, r2
d0000a8a:	460e      	mov	r6, r1
d0000a8c:	b921      	cbnz	r1, d0000a98 <_realloc_r+0x14>
d0000a8e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0000a92:	4611      	mov	r1, r2
d0000a94:	f7ff bf9c 	b.w	d00009d0 <_malloc_r>
d0000a98:	b922      	cbnz	r2, d0000aa4 <_realloc_r+0x20>
d0000a9a:	f7ff ff49 	bl	d0000930 <_free_r>
d0000a9e:	4625      	mov	r5, r4
d0000aa0:	4628      	mov	r0, r5
d0000aa2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0000aa4:	f000 f830 	bl	d0000b08 <_malloc_usable_size_r>
d0000aa8:	42a0      	cmp	r0, r4
d0000aaa:	d20f      	bcs.n	d0000acc <_realloc_r+0x48>
d0000aac:	4621      	mov	r1, r4
d0000aae:	4638      	mov	r0, r7
d0000ab0:	f7ff ff8e 	bl	d00009d0 <_malloc_r>
d0000ab4:	4605      	mov	r5, r0
d0000ab6:	2800      	cmp	r0, #0
d0000ab8:	d0f2      	beq.n	d0000aa0 <_realloc_r+0x1c>
d0000aba:	4631      	mov	r1, r6
d0000abc:	4622      	mov	r2, r4
d0000abe:	f7ff ff0f 	bl	d00008e0 <memcpy>
d0000ac2:	4631      	mov	r1, r6
d0000ac4:	4638      	mov	r0, r7
d0000ac6:	f7ff ff33 	bl	d0000930 <_free_r>
d0000aca:	e7e9      	b.n	d0000aa0 <_realloc_r+0x1c>
d0000acc:	4635      	mov	r5, r6
d0000ace:	e7e7      	b.n	d0000aa0 <_realloc_r+0x1c>

d0000ad0 <_sbrk_r>:
d0000ad0:	b538      	push	{r3, r4, r5, lr}
d0000ad2:	4d06      	ldr	r5, [pc, #24]	; (d0000aec <_sbrk_r+0x1c>)
d0000ad4:	2300      	movs	r3, #0
d0000ad6:	4604      	mov	r4, r0
d0000ad8:	4608      	mov	r0, r1
d0000ada:	602b      	str	r3, [r5, #0]
d0000adc:	f7ff fad8 	bl	d0000090 <_sbrk>
d0000ae0:	1c43      	adds	r3, r0, #1
d0000ae2:	d102      	bne.n	d0000aea <_sbrk_r+0x1a>
d0000ae4:	682b      	ldr	r3, [r5, #0]
d0000ae6:	b103      	cbz	r3, d0000aea <_sbrk_r+0x1a>
d0000ae8:	6023      	str	r3, [r4, #0]
d0000aea:	bd38      	pop	{r3, r4, r5, pc}
d0000aec:	d0000c6c 	.word	0xd0000c6c

d0000af0 <__malloc_lock>:
d0000af0:	4801      	ldr	r0, [pc, #4]	; (d0000af8 <__malloc_lock+0x8>)
d0000af2:	f000 b811 	b.w	d0000b18 <__retarget_lock_acquire_recursive>
d0000af6:	bf00      	nop
d0000af8:	d0000c74 	.word	0xd0000c74

d0000afc <__malloc_unlock>:
d0000afc:	4801      	ldr	r0, [pc, #4]	; (d0000b04 <__malloc_unlock+0x8>)
d0000afe:	f000 b80c 	b.w	d0000b1a <__retarget_lock_release_recursive>
d0000b02:	bf00      	nop
d0000b04:	d0000c74 	.word	0xd0000c74

d0000b08 <_malloc_usable_size_r>:
d0000b08:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0000b0c:	1f18      	subs	r0, r3, #4
d0000b0e:	2b00      	cmp	r3, #0
d0000b10:	bfbc      	itt	lt
d0000b12:	580b      	ldrlt	r3, [r1, r0]
d0000b14:	18c0      	addlt	r0, r0, r3
d0000b16:	4770      	bx	lr

d0000b18 <__retarget_lock_acquire_recursive>:
d0000b18:	4770      	bx	lr

d0000b1a <__retarget_lock_release_recursive>:
d0000b1a:	4770      	bx	lr
d0000b1c:	25726373 	.word	0x25726373
d0000b20:	69622e75 	.word	0x69622e75
d0000b24:	0000006e 	.word	0x0000006e
d0000b28:	65726353 	.word	0x65726353
d0000b2c:	4c206e65 	.word	0x4c206e65
d0000b30:	6564616f 	.word	0x6564616f
d0000b34:	4b4f2064 	.word	0x4b4f2064
d0000b38:	00000a0d 	.word	0x00000a0d
d0000b3c:	656c6966 	.word	0x656c6966
d0000b40:	746f6e20 	.word	0x746f6e20
d0000b44:	616f6c20 	.word	0x616f6c20
d0000b48:	20646564 	.word	0x20646564
d0000b4c:	0d20283a 	.word	0x0d20283a
d0000b50:	0000000a 	.word	0x0000000a
d0000b54:	65726353 	.word	0x65726353
d0000b58:	6f6c6e65 	.word	0x6f6c6e65
d0000b5c:	72656461 	.word	0x72656461
d0000b60:	0a0d0a0d 	.word	0x0a0d0a0d
d0000b64:	00000000 	.word	0x00000000
d0000b68:	6c6c6548 	.word	0x6c6c6548
d0000b6c:	6f77206f 	.word	0x6f77206f
d0000b70:	21646c72 	.word	0x21646c72
d0000b74:	202d2021 	.word	0x202d2021
d0000b78:	73206562 	.word	0x73206562
d0000b7c:	20657275 	.word	0x20657275
d0000b80:	68206f74 	.word	0x68206f74
d0000b84:	20657661 	.word	0x20657661
d0000b88:	65726c61 	.word	0x65726c61
d0000b8c:	20796461 	.word	0x20796461
d0000b90:	6e616863 	.word	0x6e616863
d0000b94:	20646567 	.word	0x20646567
d0000b98:	20524944 	.word	0x20524944
d0000b9c:	68206f74 	.word	0x68206f74
d0000ba0:	00657265 	.word	0x00657265
d0000ba4:	2520736d 	.word	0x2520736d
d0000ba8:	756c      	.short	0x756c
d0000baa:	00          	.byte	0x00
d0000bab:	23          	.byte	0x23
d0000bac:	202b302d 	.word	0x202b302d
d0000bb0:	4c6c6800 	.word	0x4c6c6800
d0000bb4:	67666500 	.word	0x67666500
d0000bb8:	00474645 	.word	0x00474645
d0000bbc:	33323130 	.word	0x33323130
d0000bc0:	37363534 	.word	0x37363534
d0000bc4:	42413938 	.word	0x42413938
d0000bc8:	46454443 	.word	0x46454443
d0000bcc:	32313000 	.word	0x32313000
d0000bd0:	36353433 	.word	0x36353433
d0000bd4:	61393837 	.word	0x61393837
d0000bd8:	65646362 	.word	0x65646362
d0000bdc:	Address 0x00000000d0000bdc is out of bounds.


Disassembly of section .init:

d0000be0 <_init>:
d0000be0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000be2:	bf00      	nop

Disassembly of section .fini:

d0000be4 <_fini>:
d0000be4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000be6:	bf00      	nop
