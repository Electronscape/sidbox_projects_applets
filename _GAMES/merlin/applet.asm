
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0000010 <applet_entry>:
d0000010:	f000 b96c 	b.w	d00002ec <main>

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
d0000050:	d0001274 	.word	0xd0001274
d0000054:	d0001278 	.word	0xd0001278
d0000058:	d0001280 	.word	0xd0001280

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

d00000a8 <_sbrk>:
d00000a8:	4904      	ldr	r1, [pc, #16]	; (d00000bc <_sbrk+0x14>)
d00000aa:	4a05      	ldr	r2, [pc, #20]	; (d00000c0 <_sbrk+0x18>)
d00000ac:	680b      	ldr	r3, [r1, #0]
d00000ae:	2b00      	cmp	r3, #0
d00000b0:	bf08      	it	eq
d00000b2:	4613      	moveq	r3, r2
d00000b4:	181a      	adds	r2, r3, r0
d00000b6:	4618      	mov	r0, r3
d00000b8:	600a      	str	r2, [r1, #0]
d00000ba:	4770      	bx	lr
d00000bc:	d0001268 	.word	0xd0001268
d00000c0:	d0001299 	.word	0xd0001299

d00000c4 <processPanel>:
d00000c4:	4a79      	ldr	r2, [pc, #484]	; (d00002ac <processPanel+0x1e8>)
d00000c6:	4b7a      	ldr	r3, [pc, #488]	; (d00002b0 <processPanel+0x1ec>)
d00000c8:	b570      	push	{r4, r5, r6, lr}
d00000ca:	6816      	ldr	r6, [r2, #0]
d00000cc:	b082      	sub	sp, #8
d00000ce:	681d      	ldr	r5, [r3, #0]
d00000d0:	f1a6 023c 	sub.w	r2, r6, #60	; 0x3c
d00000d4:	4b77      	ldr	r3, [pc, #476]	; (d00002b4 <processPanel+0x1f0>)
d00000d6:	f1a5 0014 	sub.w	r0, r5, #20
d00000da:	f5b6 7fa5 	cmp.w	r6, #330	; 0x14a
d00000de:	fb83 4102 	smull	r4, r1, r3, r2
d00000e2:	fb83 4300 	smull	r4, r3, r3, r0
d00000e6:	ea4f 74e2 	mov.w	r4, r2, asr #31
d00000ea:	4411      	add	r1, r2
d00000ec:	ea4f 72e0 	mov.w	r2, r0, asr #31
d00000f0:	4403      	add	r3, r0
d00000f2:	ebc4 14a1 	rsb	r4, r4, r1, asr #6
d00000f6:	ebc2 13a3 	rsb	r3, r2, r3, asr #6
d00000fa:	da20      	bge.n	d000013e <processPanel+0x7a>
d00000fc:	f5b5 7f91 	cmp.w	r5, #290	; 0x122
d0000100:	bfb4      	ite	lt
d0000102:	eb03 0343 	addlt.w	r3, r3, r3, lsl #1
d0000106:	2306      	movge	r3, #6
d0000108:	4e6b      	ldr	r6, [pc, #428]	; (d00002b8 <processPanel+0x1f4>)
d000010a:	441c      	add	r4, r3
d000010c:	2502      	movs	r5, #2
d000010e:	4668      	mov	r0, sp
d0000110:	f8d6 30f8 	ldr.w	r3, [r6, #248]	; 0xf8
d0000114:	4622      	mov	r2, r4
d0000116:	4969      	ldr	r1, [pc, #420]	; (d00002bc <processPanel+0x1f8>)
d0000118:	701d      	strb	r5, [r3, #0]
d000011a:	f000 f9c5 	bl	d00004a8 <siprintf>
d000011e:	f8d6 314c 	ldr.w	r3, [r6, #332]	; 0x14c
d0000122:	466a      	mov	r2, sp
d0000124:	4629      	mov	r1, r5
d0000126:	f44f 70c8 	mov.w	r0, #400	; 0x190
d000012a:	4798      	blx	r3
d000012c:	2c08      	cmp	r4, #8
d000012e:	d82b      	bhi.n	d0000188 <processPanel+0xc4>
d0000130:	e8df f004 	tbb	[pc, r4]
d0000134:	65524330 	.word	0x65524330
d0000138:	9aa98b74 	.word	0x9aa98b74
d000013c:	19          	.byte	0x19
d000013d:	00          	.byte	0x00
d000013e:	f5b5 7f91 	cmp.w	r5, #290	; 0x122
d0000142:	db23      	blt.n	d000018c <processPanel+0xc8>
d0000144:	4d5c      	ldr	r5, [pc, #368]	; (d00002b8 <processPanel+0x1f4>)
d0000146:	2402      	movs	r4, #2
d0000148:	2208      	movs	r2, #8
d000014a:	495c      	ldr	r1, [pc, #368]	; (d00002bc <processPanel+0x1f8>)
d000014c:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d0000150:	4668      	mov	r0, sp
d0000152:	701c      	strb	r4, [r3, #0]
d0000154:	f000 f9a8 	bl	d00004a8 <siprintf>
d0000158:	f8d5 314c 	ldr.w	r3, [r5, #332]	; 0x14c
d000015c:	466a      	mov	r2, sp
d000015e:	4621      	mov	r1, r4
d0000160:	f44f 70c8 	mov.w	r0, #400	; 0x190
d0000164:	4798      	blx	r3
d0000166:	4b56      	ldr	r3, [pc, #344]	; (d00002c0 <processPanel+0x1fc>)
d0000168:	791c      	ldrb	r4, [r3, #4]
d000016a:	7958      	ldrb	r0, [r3, #5]
d000016c:	79d9      	ldrb	r1, [r3, #7]
d000016e:	f1c4 0401 	rsb	r4, r4, #1
d0000172:	7a1a      	ldrb	r2, [r3, #8]
d0000174:	f1c0 0001 	rsb	r0, r0, #1
d0000178:	f1c1 0101 	rsb	r1, r1, #1
d000017c:	711c      	strb	r4, [r3, #4]
d000017e:	f1c2 0201 	rsb	r2, r2, #1
d0000182:	7158      	strb	r0, [r3, #5]
d0000184:	71d9      	strb	r1, [r3, #7]
d0000186:	721a      	strb	r2, [r3, #8]
d0000188:	b002      	add	sp, #8
d000018a:	bd70      	pop	{r4, r5, r6, pc}
d000018c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0000190:	2402      	movs	r4, #2
d0000192:	e7b9      	b.n	d0000108 <processPanel+0x44>
d0000194:	4b4a      	ldr	r3, [pc, #296]	; (d00002c0 <processPanel+0x1fc>)
d0000196:	781c      	ldrb	r4, [r3, #0]
d0000198:	7858      	ldrb	r0, [r3, #1]
d000019a:	78d9      	ldrb	r1, [r3, #3]
d000019c:	f1c4 0401 	rsb	r4, r4, #1
d00001a0:	791a      	ldrb	r2, [r3, #4]
d00001a2:	f1c0 0001 	rsb	r0, r0, #1
d00001a6:	f1c1 0101 	rsb	r1, r1, #1
d00001aa:	701c      	strb	r4, [r3, #0]
d00001ac:	f1c2 0201 	rsb	r2, r2, #1
d00001b0:	7058      	strb	r0, [r3, #1]
d00001b2:	70d9      	strb	r1, [r3, #3]
d00001b4:	711a      	strb	r2, [r3, #4]
d00001b6:	b002      	add	sp, #8
d00001b8:	bd70      	pop	{r4, r5, r6, pc}
d00001ba:	4b41      	ldr	r3, [pc, #260]	; (d00002c0 <processPanel+0x1fc>)
d00001bc:	7818      	ldrb	r0, [r3, #0]
d00001be:	7859      	ldrb	r1, [r3, #1]
d00001c0:	789a      	ldrb	r2, [r3, #2]
d00001c2:	f1c0 0001 	rsb	r0, r0, #1
d00001c6:	f1c1 0101 	rsb	r1, r1, #1
d00001ca:	f1c2 0201 	rsb	r2, r2, #1
d00001ce:	7018      	strb	r0, [r3, #0]
d00001d0:	7059      	strb	r1, [r3, #1]
d00001d2:	709a      	strb	r2, [r3, #2]
d00001d4:	b002      	add	sp, #8
d00001d6:	bd70      	pop	{r4, r5, r6, pc}
d00001d8:	4b39      	ldr	r3, [pc, #228]	; (d00002c0 <processPanel+0x1fc>)
d00001da:	785c      	ldrb	r4, [r3, #1]
d00001dc:	7898      	ldrb	r0, [r3, #2]
d00001de:	7919      	ldrb	r1, [r3, #4]
d00001e0:	f1c4 0401 	rsb	r4, r4, #1
d00001e4:	795a      	ldrb	r2, [r3, #5]
d00001e6:	f1c0 0001 	rsb	r0, r0, #1
d00001ea:	f1c1 0101 	rsb	r1, r1, #1
d00001ee:	705c      	strb	r4, [r3, #1]
d00001f0:	f1c2 0201 	rsb	r2, r2, #1
d00001f4:	7098      	strb	r0, [r3, #2]
d00001f6:	7119      	strb	r1, [r3, #4]
d00001f8:	715a      	strb	r2, [r3, #5]
d00001fa:	b002      	add	sp, #8
d00001fc:	bd70      	pop	{r4, r5, r6, pc}
d00001fe:	4b30      	ldr	r3, [pc, #192]	; (d00002c0 <processPanel+0x1fc>)
d0000200:	7818      	ldrb	r0, [r3, #0]
d0000202:	78d9      	ldrb	r1, [r3, #3]
d0000204:	799a      	ldrb	r2, [r3, #6]
d0000206:	f1c0 0001 	rsb	r0, r0, #1
d000020a:	f1c1 0101 	rsb	r1, r1, #1
d000020e:	f1c2 0201 	rsb	r2, r2, #1
d0000212:	7018      	strb	r0, [r3, #0]
d0000214:	70d9      	strb	r1, [r3, #3]
d0000216:	719a      	strb	r2, [r3, #6]
d0000218:	b002      	add	sp, #8
d000021a:	bd70      	pop	{r4, r5, r6, pc}
d000021c:	4b28      	ldr	r3, [pc, #160]	; (d00002c0 <processPanel+0x1fc>)
d000021e:	78dd      	ldrb	r5, [r3, #3]
d0000220:	791c      	ldrb	r4, [r3, #4]
d0000222:	7958      	ldrb	r0, [r3, #5]
d0000224:	f1c5 0501 	rsb	r5, r5, #1
d0000228:	7859      	ldrb	r1, [r3, #1]
d000022a:	f1c4 0401 	rsb	r4, r4, #1
d000022e:	79da      	ldrb	r2, [r3, #7]
d0000230:	f1c0 0001 	rsb	r0, r0, #1
d0000234:	f1c1 0101 	rsb	r1, r1, #1
d0000238:	70dd      	strb	r5, [r3, #3]
d000023a:	f1c2 0201 	rsb	r2, r2, #1
d000023e:	711c      	strb	r4, [r3, #4]
d0000240:	7158      	strb	r0, [r3, #5]
d0000242:	7059      	strb	r1, [r3, #1]
d0000244:	71da      	strb	r2, [r3, #7]
d0000246:	b002      	add	sp, #8
d0000248:	bd70      	pop	{r4, r5, r6, pc}
d000024a:	4b1d      	ldr	r3, [pc, #116]	; (d00002c0 <processPanel+0x1fc>)
d000024c:	7898      	ldrb	r0, [r3, #2]
d000024e:	7959      	ldrb	r1, [r3, #5]
d0000250:	7a1a      	ldrb	r2, [r3, #8]
d0000252:	f1c0 0001 	rsb	r0, r0, #1
d0000256:	f1c1 0101 	rsb	r1, r1, #1
d000025a:	f1c2 0201 	rsb	r2, r2, #1
d000025e:	7098      	strb	r0, [r3, #2]
d0000260:	7159      	strb	r1, [r3, #5]
d0000262:	721a      	strb	r2, [r3, #8]
d0000264:	b002      	add	sp, #8
d0000266:	bd70      	pop	{r4, r5, r6, pc}
d0000268:	4b15      	ldr	r3, [pc, #84]	; (d00002c0 <processPanel+0x1fc>)
d000026a:	7998      	ldrb	r0, [r3, #6]
d000026c:	79d9      	ldrb	r1, [r3, #7]
d000026e:	7a1a      	ldrb	r2, [r3, #8]
d0000270:	f1c0 0001 	rsb	r0, r0, #1
d0000274:	f1c1 0101 	rsb	r1, r1, #1
d0000278:	f1c2 0201 	rsb	r2, r2, #1
d000027c:	7198      	strb	r0, [r3, #6]
d000027e:	71d9      	strb	r1, [r3, #7]
d0000280:	721a      	strb	r2, [r3, #8]
d0000282:	b002      	add	sp, #8
d0000284:	bd70      	pop	{r4, r5, r6, pc}
d0000286:	4b0e      	ldr	r3, [pc, #56]	; (d00002c0 <processPanel+0x1fc>)
d0000288:	78dc      	ldrb	r4, [r3, #3]
d000028a:	7998      	ldrb	r0, [r3, #6]
d000028c:	7919      	ldrb	r1, [r3, #4]
d000028e:	f1c4 0401 	rsb	r4, r4, #1
d0000292:	79da      	ldrb	r2, [r3, #7]
d0000294:	f1c0 0001 	rsb	r0, r0, #1
d0000298:	f1c1 0101 	rsb	r1, r1, #1
d000029c:	70dc      	strb	r4, [r3, #3]
d000029e:	f1c2 0201 	rsb	r2, r2, #1
d00002a2:	7198      	strb	r0, [r3, #6]
d00002a4:	7119      	strb	r1, [r3, #4]
d00002a6:	71da      	strb	r2, [r3, #7]
d00002a8:	b002      	add	sp, #8
d00002aa:	bd70      	pop	{r4, r5, r6, pc}
d00002ac:	d0001288 	.word	0xd0001288
d00002b0:	d0001284 	.word	0xd0001284
d00002b4:	b60b60b7 	.word	0xb60b60b7
d00002b8:	2001f000 	.word	0x2001f000
d00002bc:	d0000dac 	.word	0xd0000dac
d00002c0:	d000125c 	.word	0xd000125c

d00002c4 <clear_screen>:
d00002c4:	b510      	push	{r4, lr}
d00002c6:	4c08      	ldr	r4, [pc, #32]	; (d00002e8 <clear_screen+0x24>)
d00002c8:	2000      	movs	r0, #0
d00002ca:	f7ff fec7 	bl	d000005c <ShowBuffer>
d00002ce:	2000      	movs	r0, #0
d00002d0:	f8d4 3118 	ldr.w	r3, [r4, #280]	; 0x118
d00002d4:	4798      	blx	r3
d00002d6:	2001      	movs	r0, #1
d00002d8:	f7ff fec0 	bl	d000005c <ShowBuffer>
d00002dc:	f8d4 3118 	ldr.w	r3, [r4, #280]	; 0x118
d00002e0:	2000      	movs	r0, #0
d00002e2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00002e6:	4718      	bx	r3
d00002e8:	2001f000 	.word	0x2001f000

d00002ec <main>:
d00002ec:	4a66      	ldr	r2, [pc, #408]	; (d0000488 <main+0x19c>)
d00002ee:	20ff      	movs	r0, #255	; 0xff
d00002f0:	6813      	ldr	r3, [r2, #0]
d00002f2:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00002f6:	f023 0310 	bic.w	r3, r3, #16
d00002fa:	b087      	sub	sp, #28
d00002fc:	4d63      	ldr	r5, [pc, #396]	; (d000048c <main+0x1a0>)
d00002fe:	2700      	movs	r7, #0
d0000300:	f8df 919c 	ldr.w	r9, [pc, #412]	; d00004a0 <main+0x1b4>
d0000304:	9704      	str	r7, [sp, #16]
d0000306:	462c      	mov	r4, r5
d0000308:	9705      	str	r7, [sp, #20]
d000030a:	46bb      	mov	fp, r7
d000030c:	6013      	str	r3, [r2, #0]
d000030e:	f8d5 30c8 	ldr.w	r3, [r5, #200]	; 0xc8
d0000312:	4798      	blx	r3
d0000314:	4b5e      	ldr	r3, [pc, #376]	; (d0000490 <main+0x1a4>)
d0000316:	485f      	ldr	r0, [pc, #380]	; (d0000494 <main+0x1a8>)
d0000318:	601f      	str	r7, [r3, #0]
d000031a:	68ab      	ldr	r3, [r5, #8]
d000031c:	4798      	blx	r3
d000031e:	68eb      	ldr	r3, [r5, #12]
d0000320:	201e      	movs	r0, #30
d0000322:	f8df 8180 	ldr.w	r8, [pc, #384]	; d00004a4 <main+0x1b8>
d0000326:	4798      	blx	r3
d0000328:	f7ff fe74 	bl	d0000014 <initDisplayBuffers>
d000032c:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0000330:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0000334:	f8d5 60e8 	ldr.w	r6, [r5, #232]	; 0xe8
d0000338:	4610      	mov	r0, r2
d000033a:	9700      	str	r7, [sp, #0]
d000033c:	4619      	mov	r1, r3
d000033e:	47b0      	blx	r6
d0000340:	f8d5 30d8 	ldr.w	r3, [r5, #216]	; 0xd8
d0000344:	4639      	mov	r1, r7
d0000346:	4854      	ldr	r0, [pc, #336]	; (d0000498 <main+0x1ac>)
d0000348:	4798      	blx	r3
d000034a:	f8d5 30d8 	ldr.w	r3, [r5, #216]	; 0xd8
d000034e:	2101      	movs	r1, #1
d0000350:	4851      	ldr	r0, [pc, #324]	; (d0000498 <main+0x1ac>)
d0000352:	4798      	blx	r3
d0000354:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d0000358:	2201      	movs	r2, #1
d000035a:	701a      	strb	r2, [r3, #0]
d000035c:	f7ff ffb2 	bl	d00002c4 <clear_screen>
d0000360:	f8d4 3118 	ldr.w	r3, [r4, #280]	; 0x118
d0000364:	2000      	movs	r0, #0
d0000366:	4798      	blx	r3
d0000368:	6a23      	ldr	r3, [r4, #32]
d000036a:	221f      	movs	r2, #31
d000036c:	4f4b      	ldr	r7, [pc, #300]	; (d000049c <main+0x1b0>)
d000036e:	681b      	ldr	r3, [r3, #0]
d0000370:	253c      	movs	r5, #60	; 0x3c
d0000372:	f8c9 3000 	str.w	r3, [r9]
d0000376:	6a63      	ldr	r3, [r4, #36]	; 0x24
d0000378:	681b      	ldr	r3, [r3, #0]
d000037a:	f8c8 3000 	str.w	r3, [r8]
d000037e:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d0000382:	701a      	strb	r2, [r3, #0]
d0000384:	46ba      	mov	sl, r7
d0000386:	2664      	movs	r6, #100	; 0x64
d0000388:	9703      	str	r7, [sp, #12]
d000038a:	f81a cb01 	ldrb.w	ip, [sl], #1
d000038e:	4630      	mov	r0, r6
d0000390:	2301      	movs	r3, #1
d0000392:	365a      	adds	r6, #90	; 0x5a
d0000394:	2228      	movs	r2, #40	; 0x28
d0000396:	4629      	mov	r1, r5
d0000398:	f1bc 0f00 	cmp.w	ip, #0
d000039c:	d002      	beq.n	d00003a4 <main+0xb8>
d000039e:	f8d4 7128 	ldr.w	r7, [r4, #296]	; 0x128
d00003a2:	47b8      	blx	r7
d00003a4:	f5b6 7fb9 	cmp.w	r6, #370	; 0x172
d00003a8:	d1ef      	bne.n	d000038a <main+0x9e>
d00003aa:	355a      	adds	r5, #90	; 0x5a
d00003ac:	9f03      	ldr	r7, [sp, #12]
d00003ae:	f5b5 7fa5 	cmp.w	r5, #330	; 0x14a
d00003b2:	f107 0703 	add.w	r7, r7, #3
d00003b6:	d1e5      	bne.n	d0000384 <main+0x98>
d00003b8:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d00003bc:	2602      	movs	r6, #2
d00003be:	701e      	strb	r6, [r3, #0]
d00003c0:	f8d9 0000 	ldr.w	r0, [r9]
d00003c4:	f8d8 3000 	ldr.w	r3, [r8]
d00003c8:	f100 0208 	add.w	r2, r0, #8
d00003cc:	f8d4 5124 	ldr.w	r5, [r4, #292]	; 0x124
d00003d0:	4619      	mov	r1, r3
d00003d2:	3808      	subs	r0, #8
d00003d4:	47a8      	blx	r5
d00003d6:	f8d9 2000 	ldr.w	r2, [r9]
d00003da:	f8d8 1000 	ldr.w	r1, [r8]
d00003de:	4610      	mov	r0, r2
d00003e0:	f8d4 5124 	ldr.w	r5, [r4, #292]	; 0x124
d00003e4:	f101 0308 	add.w	r3, r1, #8
d00003e8:	3908      	subs	r1, #8
d00003ea:	47a8      	blx	r5
d00003ec:	69e3      	ldr	r3, [r4, #28]
d00003ee:	4798      	blx	r3
d00003f0:	ea10 0706 	ands.w	r7, r0, r6
d00003f4:	4605      	mov	r5, r0
d00003f6:	b2c3      	uxtb	r3, r0
d00003f8:	d003      	beq.n	d0000402 <main+0x116>
d00003fa:	9f05      	ldr	r7, [sp, #20]
d00003fc:	3701      	adds	r7, #1
d00003fe:	2f04      	cmp	r7, #4
d0000400:	dc20      	bgt.n	d0000444 <main+0x158>
d0000402:	f003 0301 	and.w	r3, r3, #1
d0000406:	9a04      	ldr	r2, [sp, #16]
d0000408:	429a      	cmp	r2, r3
d000040a:	d003      	beq.n	d0000414 <main+0x128>
d000040c:	b19a      	cbz	r2, d0000436 <main+0x14a>
d000040e:	f005 0301 	and.w	r3, r5, #1
d0000412:	9304      	str	r3, [sp, #16]
d0000414:	4658      	mov	r0, fp
d0000416:	9705      	str	r7, [sp, #20]
d0000418:	f7ff fe20 	bl	d000005c <ShowBuffer>
d000041c:	f8d4 30cc 	ldr.w	r3, [r4, #204]	; 0xcc
d0000420:	4798      	blx	r3
d0000422:	2001      	movs	r0, #1
d0000424:	f8d4 30c4 	ldr.w	r3, [r4, #196]	; 0xc4
d0000428:	eba0 0b0b 	sub.w	fp, r0, fp
d000042c:	4798      	blx	r3
d000042e:	f8d4 315c 	ldr.w	r3, [r4, #348]	; 0x15c
d0000432:	4798      	blx	r3
d0000434:	e794      	b.n	d0000360 <main+0x74>
d0000436:	f8d8 1000 	ldr.w	r1, [r8]
d000043a:	f8d9 0000 	ldr.w	r0, [r9]
d000043e:	f7ff fe41 	bl	d00000c4 <processPanel>
d0000442:	e7e4      	b.n	d000040e <main+0x122>
d0000444:	4a10      	ldr	r2, [pc, #64]	; (d0000488 <main+0x19c>)
d0000446:	2000      	movs	r0, #0
d0000448:	6813      	ldr	r3, [r2, #0]
d000044a:	f043 0310 	orr.w	r3, r3, #16
d000044e:	6013      	str	r3, [r2, #0]
d0000450:	f7ff fe1e 	bl	d0000090 <StopChannel>
d0000454:	2001      	movs	r0, #1
d0000456:	f7ff fe1b 	bl	d0000090 <StopChannel>
d000045a:	4630      	mov	r0, r6
d000045c:	f7ff fe18 	bl	d0000090 <StopChannel>
d0000460:	2003      	movs	r0, #3
d0000462:	f7ff fe15 	bl	d0000090 <StopChannel>
d0000466:	2004      	movs	r0, #4
d0000468:	f7ff fe12 	bl	d0000090 <StopChannel>
d000046c:	2005      	movs	r0, #5
d000046e:	f7ff fe0f 	bl	d0000090 <StopChannel>
d0000472:	2006      	movs	r0, #6
d0000474:	f7ff fe0c 	bl	d0000090 <StopChannel>
d0000478:	2007      	movs	r0, #7
d000047a:	f7ff fe09 	bl	d0000090 <StopChannel>
d000047e:	2007      	movs	r0, #7
d0000480:	b007      	add	sp, #28
d0000482:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0000486:	bf00      	nop
d0000488:	e000ed14 	.word	0xe000ed14
d000048c:	2001f000 	.word	0x2001f000
d0000490:	d0001258 	.word	0xd0001258
d0000494:	d0000db0 	.word	0xd0000db0
d0000498:	d0000db8 	.word	0xd0000db8
d000049c:	d000125c 	.word	0xd000125c
d00004a0:	d0001288 	.word	0xd0001288
d00004a4:	d0001284 	.word	0xd0001284

d00004a8 <siprintf>:
d00004a8:	b40e      	push	{r1, r2, r3}
d00004aa:	b500      	push	{lr}
d00004ac:	b09c      	sub	sp, #112	; 0x70
d00004ae:	ab1d      	add	r3, sp, #116	; 0x74
d00004b0:	9002      	str	r0, [sp, #8]
d00004b2:	9006      	str	r0, [sp, #24]
d00004b4:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d00004b8:	4809      	ldr	r0, [pc, #36]	; (d00004e0 <siprintf+0x38>)
d00004ba:	9107      	str	r1, [sp, #28]
d00004bc:	9104      	str	r1, [sp, #16]
d00004be:	4909      	ldr	r1, [pc, #36]	; (d00004e4 <siprintf+0x3c>)
d00004c0:	f853 2b04 	ldr.w	r2, [r3], #4
d00004c4:	9105      	str	r1, [sp, #20]
d00004c6:	6800      	ldr	r0, [r0, #0]
d00004c8:	9301      	str	r3, [sp, #4]
d00004ca:	a902      	add	r1, sp, #8
d00004cc:	f000 f868 	bl	d00005a0 <_svfiprintf_r>
d00004d0:	9b02      	ldr	r3, [sp, #8]
d00004d2:	2200      	movs	r2, #0
d00004d4:	701a      	strb	r2, [r3, #0]
d00004d6:	b01c      	add	sp, #112	; 0x70
d00004d8:	f85d eb04 	ldr.w	lr, [sp], #4
d00004dc:	b003      	add	sp, #12
d00004de:	4770      	bx	lr
d00004e0:	d00011f4 	.word	0xd00011f4
d00004e4:	ffff0208 	.word	0xffff0208

d00004e8 <__ssputs_r>:
d00004e8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00004ec:	688e      	ldr	r6, [r1, #8]
d00004ee:	429e      	cmp	r6, r3
d00004f0:	4682      	mov	sl, r0
d00004f2:	460c      	mov	r4, r1
d00004f4:	4690      	mov	r8, r2
d00004f6:	461f      	mov	r7, r3
d00004f8:	d838      	bhi.n	d000056c <__ssputs_r+0x84>
d00004fa:	898a      	ldrh	r2, [r1, #12]
d00004fc:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0000500:	d032      	beq.n	d0000568 <__ssputs_r+0x80>
d0000502:	6825      	ldr	r5, [r4, #0]
d0000504:	6909      	ldr	r1, [r1, #16]
d0000506:	eba5 0901 	sub.w	r9, r5, r1
d000050a:	6965      	ldr	r5, [r4, #20]
d000050c:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0000510:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0000514:	3301      	adds	r3, #1
d0000516:	444b      	add	r3, r9
d0000518:	106d      	asrs	r5, r5, #1
d000051a:	429d      	cmp	r5, r3
d000051c:	bf38      	it	cc
d000051e:	461d      	movcc	r5, r3
d0000520:	0553      	lsls	r3, r2, #21
d0000522:	d531      	bpl.n	d0000588 <__ssputs_r+0xa0>
d0000524:	4629      	mov	r1, r5
d0000526:	f000 fb9b 	bl	d0000c60 <_malloc_r>
d000052a:	4606      	mov	r6, r0
d000052c:	b950      	cbnz	r0, d0000544 <__ssputs_r+0x5c>
d000052e:	230c      	movs	r3, #12
d0000530:	f8ca 3000 	str.w	r3, [sl]
d0000534:	89a3      	ldrh	r3, [r4, #12]
d0000536:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d000053a:	81a3      	strh	r3, [r4, #12]
d000053c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000540:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0000544:	6921      	ldr	r1, [r4, #16]
d0000546:	464a      	mov	r2, r9
d0000548:	f000 fb12 	bl	d0000b70 <memcpy>
d000054c:	89a3      	ldrh	r3, [r4, #12]
d000054e:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0000552:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0000556:	81a3      	strh	r3, [r4, #12]
d0000558:	6126      	str	r6, [r4, #16]
d000055a:	6165      	str	r5, [r4, #20]
d000055c:	444e      	add	r6, r9
d000055e:	eba5 0509 	sub.w	r5, r5, r9
d0000562:	6026      	str	r6, [r4, #0]
d0000564:	60a5      	str	r5, [r4, #8]
d0000566:	463e      	mov	r6, r7
d0000568:	42be      	cmp	r6, r7
d000056a:	d900      	bls.n	d000056e <__ssputs_r+0x86>
d000056c:	463e      	mov	r6, r7
d000056e:	4632      	mov	r2, r6
d0000570:	6820      	ldr	r0, [r4, #0]
d0000572:	4641      	mov	r1, r8
d0000574:	f000 fb0a 	bl	d0000b8c <memmove>
d0000578:	68a3      	ldr	r3, [r4, #8]
d000057a:	6822      	ldr	r2, [r4, #0]
d000057c:	1b9b      	subs	r3, r3, r6
d000057e:	4432      	add	r2, r6
d0000580:	60a3      	str	r3, [r4, #8]
d0000582:	6022      	str	r2, [r4, #0]
d0000584:	2000      	movs	r0, #0
d0000586:	e7db      	b.n	d0000540 <__ssputs_r+0x58>
d0000588:	462a      	mov	r2, r5
d000058a:	f000 fbc3 	bl	d0000d14 <_realloc_r>
d000058e:	4606      	mov	r6, r0
d0000590:	2800      	cmp	r0, #0
d0000592:	d1e1      	bne.n	d0000558 <__ssputs_r+0x70>
d0000594:	6921      	ldr	r1, [r4, #16]
d0000596:	4650      	mov	r0, sl
d0000598:	f000 fb12 	bl	d0000bc0 <_free_r>
d000059c:	e7c7      	b.n	d000052e <__ssputs_r+0x46>
	...

d00005a0 <_svfiprintf_r>:
d00005a0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00005a4:	4698      	mov	r8, r3
d00005a6:	898b      	ldrh	r3, [r1, #12]
d00005a8:	061b      	lsls	r3, r3, #24
d00005aa:	b09d      	sub	sp, #116	; 0x74
d00005ac:	4607      	mov	r7, r0
d00005ae:	460d      	mov	r5, r1
d00005b0:	4614      	mov	r4, r2
d00005b2:	d50e      	bpl.n	d00005d2 <_svfiprintf_r+0x32>
d00005b4:	690b      	ldr	r3, [r1, #16]
d00005b6:	b963      	cbnz	r3, d00005d2 <_svfiprintf_r+0x32>
d00005b8:	2140      	movs	r1, #64	; 0x40
d00005ba:	f000 fb51 	bl	d0000c60 <_malloc_r>
d00005be:	6028      	str	r0, [r5, #0]
d00005c0:	6128      	str	r0, [r5, #16]
d00005c2:	b920      	cbnz	r0, d00005ce <_svfiprintf_r+0x2e>
d00005c4:	230c      	movs	r3, #12
d00005c6:	603b      	str	r3, [r7, #0]
d00005c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00005cc:	e0d1      	b.n	d0000772 <_svfiprintf_r+0x1d2>
d00005ce:	2340      	movs	r3, #64	; 0x40
d00005d0:	616b      	str	r3, [r5, #20]
d00005d2:	2300      	movs	r3, #0
d00005d4:	9309      	str	r3, [sp, #36]	; 0x24
d00005d6:	2320      	movs	r3, #32
d00005d8:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d00005dc:	f8cd 800c 	str.w	r8, [sp, #12]
d00005e0:	2330      	movs	r3, #48	; 0x30
d00005e2:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d000078c <_svfiprintf_r+0x1ec>
d00005e6:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d00005ea:	f04f 0901 	mov.w	r9, #1
d00005ee:	4623      	mov	r3, r4
d00005f0:	469a      	mov	sl, r3
d00005f2:	f813 2b01 	ldrb.w	r2, [r3], #1
d00005f6:	b10a      	cbz	r2, d00005fc <_svfiprintf_r+0x5c>
d00005f8:	2a25      	cmp	r2, #37	; 0x25
d00005fa:	d1f9      	bne.n	d00005f0 <_svfiprintf_r+0x50>
d00005fc:	ebba 0b04 	subs.w	fp, sl, r4
d0000600:	d00b      	beq.n	d000061a <_svfiprintf_r+0x7a>
d0000602:	465b      	mov	r3, fp
d0000604:	4622      	mov	r2, r4
d0000606:	4629      	mov	r1, r5
d0000608:	4638      	mov	r0, r7
d000060a:	f7ff ff6d 	bl	d00004e8 <__ssputs_r>
d000060e:	3001      	adds	r0, #1
d0000610:	f000 80aa 	beq.w	d0000768 <_svfiprintf_r+0x1c8>
d0000614:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0000616:	445a      	add	r2, fp
d0000618:	9209      	str	r2, [sp, #36]	; 0x24
d000061a:	f89a 3000 	ldrb.w	r3, [sl]
d000061e:	2b00      	cmp	r3, #0
d0000620:	f000 80a2 	beq.w	d0000768 <_svfiprintf_r+0x1c8>
d0000624:	2300      	movs	r3, #0
d0000626:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d000062a:	e9cd 2305 	strd	r2, r3, [sp, #20]
d000062e:	f10a 0a01 	add.w	sl, sl, #1
d0000632:	9304      	str	r3, [sp, #16]
d0000634:	9307      	str	r3, [sp, #28]
d0000636:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d000063a:	931a      	str	r3, [sp, #104]	; 0x68
d000063c:	4654      	mov	r4, sl
d000063e:	2205      	movs	r2, #5
d0000640:	f814 1b01 	ldrb.w	r1, [r4], #1
d0000644:	4851      	ldr	r0, [pc, #324]	; (d000078c <_svfiprintf_r+0x1ec>)
d0000646:	f000 fa43 	bl	d0000ad0 <memchr>
d000064a:	9a04      	ldr	r2, [sp, #16]
d000064c:	b9d8      	cbnz	r0, d0000686 <_svfiprintf_r+0xe6>
d000064e:	06d0      	lsls	r0, r2, #27
d0000650:	bf44      	itt	mi
d0000652:	2320      	movmi	r3, #32
d0000654:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0000658:	0711      	lsls	r1, r2, #28
d000065a:	bf44      	itt	mi
d000065c:	232b      	movmi	r3, #43	; 0x2b
d000065e:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0000662:	f89a 3000 	ldrb.w	r3, [sl]
d0000666:	2b2a      	cmp	r3, #42	; 0x2a
d0000668:	d015      	beq.n	d0000696 <_svfiprintf_r+0xf6>
d000066a:	9a07      	ldr	r2, [sp, #28]
d000066c:	4654      	mov	r4, sl
d000066e:	2000      	movs	r0, #0
d0000670:	f04f 0c0a 	mov.w	ip, #10
d0000674:	4621      	mov	r1, r4
d0000676:	f811 3b01 	ldrb.w	r3, [r1], #1
d000067a:	3b30      	subs	r3, #48	; 0x30
d000067c:	2b09      	cmp	r3, #9
d000067e:	d94e      	bls.n	d000071e <_svfiprintf_r+0x17e>
d0000680:	b1b0      	cbz	r0, d00006b0 <_svfiprintf_r+0x110>
d0000682:	9207      	str	r2, [sp, #28]
d0000684:	e014      	b.n	d00006b0 <_svfiprintf_r+0x110>
d0000686:	eba0 0308 	sub.w	r3, r0, r8
d000068a:	fa09 f303 	lsl.w	r3, r9, r3
d000068e:	4313      	orrs	r3, r2
d0000690:	9304      	str	r3, [sp, #16]
d0000692:	46a2      	mov	sl, r4
d0000694:	e7d2      	b.n	d000063c <_svfiprintf_r+0x9c>
d0000696:	9b03      	ldr	r3, [sp, #12]
d0000698:	1d19      	adds	r1, r3, #4
d000069a:	681b      	ldr	r3, [r3, #0]
d000069c:	9103      	str	r1, [sp, #12]
d000069e:	2b00      	cmp	r3, #0
d00006a0:	bfbb      	ittet	lt
d00006a2:	425b      	neglt	r3, r3
d00006a4:	f042 0202 	orrlt.w	r2, r2, #2
d00006a8:	9307      	strge	r3, [sp, #28]
d00006aa:	9307      	strlt	r3, [sp, #28]
d00006ac:	bfb8      	it	lt
d00006ae:	9204      	strlt	r2, [sp, #16]
d00006b0:	7823      	ldrb	r3, [r4, #0]
d00006b2:	2b2e      	cmp	r3, #46	; 0x2e
d00006b4:	d10c      	bne.n	d00006d0 <_svfiprintf_r+0x130>
d00006b6:	7863      	ldrb	r3, [r4, #1]
d00006b8:	2b2a      	cmp	r3, #42	; 0x2a
d00006ba:	d135      	bne.n	d0000728 <_svfiprintf_r+0x188>
d00006bc:	9b03      	ldr	r3, [sp, #12]
d00006be:	1d1a      	adds	r2, r3, #4
d00006c0:	681b      	ldr	r3, [r3, #0]
d00006c2:	9203      	str	r2, [sp, #12]
d00006c4:	2b00      	cmp	r3, #0
d00006c6:	bfb8      	it	lt
d00006c8:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d00006cc:	3402      	adds	r4, #2
d00006ce:	9305      	str	r3, [sp, #20]
d00006d0:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d000079c <_svfiprintf_r+0x1fc>
d00006d4:	7821      	ldrb	r1, [r4, #0]
d00006d6:	2203      	movs	r2, #3
d00006d8:	4650      	mov	r0, sl
d00006da:	f000 f9f9 	bl	d0000ad0 <memchr>
d00006de:	b140      	cbz	r0, d00006f2 <_svfiprintf_r+0x152>
d00006e0:	2340      	movs	r3, #64	; 0x40
d00006e2:	eba0 000a 	sub.w	r0, r0, sl
d00006e6:	fa03 f000 	lsl.w	r0, r3, r0
d00006ea:	9b04      	ldr	r3, [sp, #16]
d00006ec:	4303      	orrs	r3, r0
d00006ee:	3401      	adds	r4, #1
d00006f0:	9304      	str	r3, [sp, #16]
d00006f2:	f814 1b01 	ldrb.w	r1, [r4], #1
d00006f6:	4826      	ldr	r0, [pc, #152]	; (d0000790 <_svfiprintf_r+0x1f0>)
d00006f8:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d00006fc:	2206      	movs	r2, #6
d00006fe:	f000 f9e7 	bl	d0000ad0 <memchr>
d0000702:	2800      	cmp	r0, #0
d0000704:	d038      	beq.n	d0000778 <_svfiprintf_r+0x1d8>
d0000706:	4b23      	ldr	r3, [pc, #140]	; (d0000794 <_svfiprintf_r+0x1f4>)
d0000708:	bb1b      	cbnz	r3, d0000752 <_svfiprintf_r+0x1b2>
d000070a:	9b03      	ldr	r3, [sp, #12]
d000070c:	3307      	adds	r3, #7
d000070e:	f023 0307 	bic.w	r3, r3, #7
d0000712:	3308      	adds	r3, #8
d0000714:	9303      	str	r3, [sp, #12]
d0000716:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0000718:	4433      	add	r3, r6
d000071a:	9309      	str	r3, [sp, #36]	; 0x24
d000071c:	e767      	b.n	d00005ee <_svfiprintf_r+0x4e>
d000071e:	fb0c 3202 	mla	r2, ip, r2, r3
d0000722:	460c      	mov	r4, r1
d0000724:	2001      	movs	r0, #1
d0000726:	e7a5      	b.n	d0000674 <_svfiprintf_r+0xd4>
d0000728:	2300      	movs	r3, #0
d000072a:	3401      	adds	r4, #1
d000072c:	9305      	str	r3, [sp, #20]
d000072e:	4619      	mov	r1, r3
d0000730:	f04f 0c0a 	mov.w	ip, #10
d0000734:	4620      	mov	r0, r4
d0000736:	f810 2b01 	ldrb.w	r2, [r0], #1
d000073a:	3a30      	subs	r2, #48	; 0x30
d000073c:	2a09      	cmp	r2, #9
d000073e:	d903      	bls.n	d0000748 <_svfiprintf_r+0x1a8>
d0000740:	2b00      	cmp	r3, #0
d0000742:	d0c5      	beq.n	d00006d0 <_svfiprintf_r+0x130>
d0000744:	9105      	str	r1, [sp, #20]
d0000746:	e7c3      	b.n	d00006d0 <_svfiprintf_r+0x130>
d0000748:	fb0c 2101 	mla	r1, ip, r1, r2
d000074c:	4604      	mov	r4, r0
d000074e:	2301      	movs	r3, #1
d0000750:	e7f0      	b.n	d0000734 <_svfiprintf_r+0x194>
d0000752:	ab03      	add	r3, sp, #12
d0000754:	9300      	str	r3, [sp, #0]
d0000756:	462a      	mov	r2, r5
d0000758:	4b0f      	ldr	r3, [pc, #60]	; (d0000798 <_svfiprintf_r+0x1f8>)
d000075a:	a904      	add	r1, sp, #16
d000075c:	4638      	mov	r0, r7
d000075e:	f3af 8000 	nop.w
d0000762:	1c42      	adds	r2, r0, #1
d0000764:	4606      	mov	r6, r0
d0000766:	d1d6      	bne.n	d0000716 <_svfiprintf_r+0x176>
d0000768:	89ab      	ldrh	r3, [r5, #12]
d000076a:	065b      	lsls	r3, r3, #25
d000076c:	f53f af2c 	bmi.w	d00005c8 <_svfiprintf_r+0x28>
d0000770:	9809      	ldr	r0, [sp, #36]	; 0x24
d0000772:	b01d      	add	sp, #116	; 0x74
d0000774:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0000778:	ab03      	add	r3, sp, #12
d000077a:	9300      	str	r3, [sp, #0]
d000077c:	462a      	mov	r2, r5
d000077e:	4b06      	ldr	r3, [pc, #24]	; (d0000798 <_svfiprintf_r+0x1f8>)
d0000780:	a904      	add	r1, sp, #16
d0000782:	4638      	mov	r0, r7
d0000784:	f000 f87a 	bl	d000087c <_printf_i>
d0000788:	e7eb      	b.n	d0000762 <_svfiprintf_r+0x1c2>
d000078a:	bf00      	nop
d000078c:	d00011b8 	.word	0xd00011b8
d0000790:	d00011c2 	.word	0xd00011c2
d0000794:	00000000 	.word	0x00000000
d0000798:	d00004e9 	.word	0xd00004e9
d000079c:	d00011be 	.word	0xd00011be

d00007a0 <_printf_common>:
d00007a0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00007a4:	4616      	mov	r6, r2
d00007a6:	4699      	mov	r9, r3
d00007a8:	688a      	ldr	r2, [r1, #8]
d00007aa:	690b      	ldr	r3, [r1, #16]
d00007ac:	f8dd 8020 	ldr.w	r8, [sp, #32]
d00007b0:	4293      	cmp	r3, r2
d00007b2:	bfb8      	it	lt
d00007b4:	4613      	movlt	r3, r2
d00007b6:	6033      	str	r3, [r6, #0]
d00007b8:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d00007bc:	4607      	mov	r7, r0
d00007be:	460c      	mov	r4, r1
d00007c0:	b10a      	cbz	r2, d00007c6 <_printf_common+0x26>
d00007c2:	3301      	adds	r3, #1
d00007c4:	6033      	str	r3, [r6, #0]
d00007c6:	6823      	ldr	r3, [r4, #0]
d00007c8:	0699      	lsls	r1, r3, #26
d00007ca:	bf42      	ittt	mi
d00007cc:	6833      	ldrmi	r3, [r6, #0]
d00007ce:	3302      	addmi	r3, #2
d00007d0:	6033      	strmi	r3, [r6, #0]
d00007d2:	6825      	ldr	r5, [r4, #0]
d00007d4:	f015 0506 	ands.w	r5, r5, #6
d00007d8:	d106      	bne.n	d00007e8 <_printf_common+0x48>
d00007da:	f104 0a19 	add.w	sl, r4, #25
d00007de:	68e3      	ldr	r3, [r4, #12]
d00007e0:	6832      	ldr	r2, [r6, #0]
d00007e2:	1a9b      	subs	r3, r3, r2
d00007e4:	42ab      	cmp	r3, r5
d00007e6:	dc26      	bgt.n	d0000836 <_printf_common+0x96>
d00007e8:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d00007ec:	1e13      	subs	r3, r2, #0
d00007ee:	6822      	ldr	r2, [r4, #0]
d00007f0:	bf18      	it	ne
d00007f2:	2301      	movne	r3, #1
d00007f4:	0692      	lsls	r2, r2, #26
d00007f6:	d42b      	bmi.n	d0000850 <_printf_common+0xb0>
d00007f8:	f104 0243 	add.w	r2, r4, #67	; 0x43
d00007fc:	4649      	mov	r1, r9
d00007fe:	4638      	mov	r0, r7
d0000800:	47c0      	blx	r8
d0000802:	3001      	adds	r0, #1
d0000804:	d01e      	beq.n	d0000844 <_printf_common+0xa4>
d0000806:	6823      	ldr	r3, [r4, #0]
d0000808:	68e5      	ldr	r5, [r4, #12]
d000080a:	6832      	ldr	r2, [r6, #0]
d000080c:	f003 0306 	and.w	r3, r3, #6
d0000810:	2b04      	cmp	r3, #4
d0000812:	bf08      	it	eq
d0000814:	1aad      	subeq	r5, r5, r2
d0000816:	68a3      	ldr	r3, [r4, #8]
d0000818:	6922      	ldr	r2, [r4, #16]
d000081a:	bf0c      	ite	eq
d000081c:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0000820:	2500      	movne	r5, #0
d0000822:	4293      	cmp	r3, r2
d0000824:	bfc4      	itt	gt
d0000826:	1a9b      	subgt	r3, r3, r2
d0000828:	18ed      	addgt	r5, r5, r3
d000082a:	2600      	movs	r6, #0
d000082c:	341a      	adds	r4, #26
d000082e:	42b5      	cmp	r5, r6
d0000830:	d11a      	bne.n	d0000868 <_printf_common+0xc8>
d0000832:	2000      	movs	r0, #0
d0000834:	e008      	b.n	d0000848 <_printf_common+0xa8>
d0000836:	2301      	movs	r3, #1
d0000838:	4652      	mov	r2, sl
d000083a:	4649      	mov	r1, r9
d000083c:	4638      	mov	r0, r7
d000083e:	47c0      	blx	r8
d0000840:	3001      	adds	r0, #1
d0000842:	d103      	bne.n	d000084c <_printf_common+0xac>
d0000844:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000848:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d000084c:	3501      	adds	r5, #1
d000084e:	e7c6      	b.n	d00007de <_printf_common+0x3e>
d0000850:	18e1      	adds	r1, r4, r3
d0000852:	1c5a      	adds	r2, r3, #1
d0000854:	2030      	movs	r0, #48	; 0x30
d0000856:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d000085a:	4422      	add	r2, r4
d000085c:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0000860:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0000864:	3302      	adds	r3, #2
d0000866:	e7c7      	b.n	d00007f8 <_printf_common+0x58>
d0000868:	2301      	movs	r3, #1
d000086a:	4622      	mov	r2, r4
d000086c:	4649      	mov	r1, r9
d000086e:	4638      	mov	r0, r7
d0000870:	47c0      	blx	r8
d0000872:	3001      	adds	r0, #1
d0000874:	d0e6      	beq.n	d0000844 <_printf_common+0xa4>
d0000876:	3601      	adds	r6, #1
d0000878:	e7d9      	b.n	d000082e <_printf_common+0x8e>
	...

d000087c <_printf_i>:
d000087c:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0000880:	460c      	mov	r4, r1
d0000882:	4691      	mov	r9, r2
d0000884:	7e27      	ldrb	r7, [r4, #24]
d0000886:	990c      	ldr	r1, [sp, #48]	; 0x30
d0000888:	2f78      	cmp	r7, #120	; 0x78
d000088a:	4680      	mov	r8, r0
d000088c:	469a      	mov	sl, r3
d000088e:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0000892:	d807      	bhi.n	d00008a4 <_printf_i+0x28>
d0000894:	2f62      	cmp	r7, #98	; 0x62
d0000896:	d80a      	bhi.n	d00008ae <_printf_i+0x32>
d0000898:	2f00      	cmp	r7, #0
d000089a:	f000 80d8 	beq.w	d0000a4e <_printf_i+0x1d2>
d000089e:	2f58      	cmp	r7, #88	; 0x58
d00008a0:	f000 80a3 	beq.w	d00009ea <_printf_i+0x16e>
d00008a4:	f104 0642 	add.w	r6, r4, #66	; 0x42
d00008a8:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d00008ac:	e03a      	b.n	d0000924 <_printf_i+0xa8>
d00008ae:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d00008b2:	2b15      	cmp	r3, #21
d00008b4:	d8f6      	bhi.n	d00008a4 <_printf_i+0x28>
d00008b6:	a001      	add	r0, pc, #4	; (adr r0, d00008bc <_printf_i+0x40>)
d00008b8:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d00008bc:	d0000915 	.word	0xd0000915
d00008c0:	d0000929 	.word	0xd0000929
d00008c4:	d00008a5 	.word	0xd00008a5
d00008c8:	d00008a5 	.word	0xd00008a5
d00008cc:	d00008a5 	.word	0xd00008a5
d00008d0:	d00008a5 	.word	0xd00008a5
d00008d4:	d0000929 	.word	0xd0000929
d00008d8:	d00008a5 	.word	0xd00008a5
d00008dc:	d00008a5 	.word	0xd00008a5
d00008e0:	d00008a5 	.word	0xd00008a5
d00008e4:	d00008a5 	.word	0xd00008a5
d00008e8:	d0000a35 	.word	0xd0000a35
d00008ec:	d0000959 	.word	0xd0000959
d00008f0:	d0000a17 	.word	0xd0000a17
d00008f4:	d00008a5 	.word	0xd00008a5
d00008f8:	d00008a5 	.word	0xd00008a5
d00008fc:	d0000a57 	.word	0xd0000a57
d0000900:	d00008a5 	.word	0xd00008a5
d0000904:	d0000959 	.word	0xd0000959
d0000908:	d00008a5 	.word	0xd00008a5
d000090c:	d00008a5 	.word	0xd00008a5
d0000910:	d0000a1f 	.word	0xd0000a1f
d0000914:	680b      	ldr	r3, [r1, #0]
d0000916:	1d1a      	adds	r2, r3, #4
d0000918:	681b      	ldr	r3, [r3, #0]
d000091a:	600a      	str	r2, [r1, #0]
d000091c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0000920:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0000924:	2301      	movs	r3, #1
d0000926:	e0a3      	b.n	d0000a70 <_printf_i+0x1f4>
d0000928:	6825      	ldr	r5, [r4, #0]
d000092a:	6808      	ldr	r0, [r1, #0]
d000092c:	062e      	lsls	r6, r5, #24
d000092e:	f100 0304 	add.w	r3, r0, #4
d0000932:	d50a      	bpl.n	d000094a <_printf_i+0xce>
d0000934:	6805      	ldr	r5, [r0, #0]
d0000936:	600b      	str	r3, [r1, #0]
d0000938:	2d00      	cmp	r5, #0
d000093a:	da03      	bge.n	d0000944 <_printf_i+0xc8>
d000093c:	232d      	movs	r3, #45	; 0x2d
d000093e:	426d      	negs	r5, r5
d0000940:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0000944:	485e      	ldr	r0, [pc, #376]	; (d0000ac0 <_printf_i+0x244>)
d0000946:	230a      	movs	r3, #10
d0000948:	e019      	b.n	d000097e <_printf_i+0x102>
d000094a:	f015 0f40 	tst.w	r5, #64	; 0x40
d000094e:	6805      	ldr	r5, [r0, #0]
d0000950:	600b      	str	r3, [r1, #0]
d0000952:	bf18      	it	ne
d0000954:	b22d      	sxthne	r5, r5
d0000956:	e7ef      	b.n	d0000938 <_printf_i+0xbc>
d0000958:	680b      	ldr	r3, [r1, #0]
d000095a:	6825      	ldr	r5, [r4, #0]
d000095c:	1d18      	adds	r0, r3, #4
d000095e:	6008      	str	r0, [r1, #0]
d0000960:	0628      	lsls	r0, r5, #24
d0000962:	d501      	bpl.n	d0000968 <_printf_i+0xec>
d0000964:	681d      	ldr	r5, [r3, #0]
d0000966:	e002      	b.n	d000096e <_printf_i+0xf2>
d0000968:	0669      	lsls	r1, r5, #25
d000096a:	d5fb      	bpl.n	d0000964 <_printf_i+0xe8>
d000096c:	881d      	ldrh	r5, [r3, #0]
d000096e:	4854      	ldr	r0, [pc, #336]	; (d0000ac0 <_printf_i+0x244>)
d0000970:	2f6f      	cmp	r7, #111	; 0x6f
d0000972:	bf0c      	ite	eq
d0000974:	2308      	moveq	r3, #8
d0000976:	230a      	movne	r3, #10
d0000978:	2100      	movs	r1, #0
d000097a:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d000097e:	6866      	ldr	r6, [r4, #4]
d0000980:	60a6      	str	r6, [r4, #8]
d0000982:	2e00      	cmp	r6, #0
d0000984:	bfa2      	ittt	ge
d0000986:	6821      	ldrge	r1, [r4, #0]
d0000988:	f021 0104 	bicge.w	r1, r1, #4
d000098c:	6021      	strge	r1, [r4, #0]
d000098e:	b90d      	cbnz	r5, d0000994 <_printf_i+0x118>
d0000990:	2e00      	cmp	r6, #0
d0000992:	d04d      	beq.n	d0000a30 <_printf_i+0x1b4>
d0000994:	4616      	mov	r6, r2
d0000996:	fbb5 f1f3 	udiv	r1, r5, r3
d000099a:	fb03 5711 	mls	r7, r3, r1, r5
d000099e:	5dc7      	ldrb	r7, [r0, r7]
d00009a0:	f806 7d01 	strb.w	r7, [r6, #-1]!
d00009a4:	462f      	mov	r7, r5
d00009a6:	42bb      	cmp	r3, r7
d00009a8:	460d      	mov	r5, r1
d00009aa:	d9f4      	bls.n	d0000996 <_printf_i+0x11a>
d00009ac:	2b08      	cmp	r3, #8
d00009ae:	d10b      	bne.n	d00009c8 <_printf_i+0x14c>
d00009b0:	6823      	ldr	r3, [r4, #0]
d00009b2:	07df      	lsls	r7, r3, #31
d00009b4:	d508      	bpl.n	d00009c8 <_printf_i+0x14c>
d00009b6:	6923      	ldr	r3, [r4, #16]
d00009b8:	6861      	ldr	r1, [r4, #4]
d00009ba:	4299      	cmp	r1, r3
d00009bc:	bfde      	ittt	le
d00009be:	2330      	movle	r3, #48	; 0x30
d00009c0:	f806 3c01 	strble.w	r3, [r6, #-1]
d00009c4:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d00009c8:	1b92      	subs	r2, r2, r6
d00009ca:	6122      	str	r2, [r4, #16]
d00009cc:	f8cd a000 	str.w	sl, [sp]
d00009d0:	464b      	mov	r3, r9
d00009d2:	aa03      	add	r2, sp, #12
d00009d4:	4621      	mov	r1, r4
d00009d6:	4640      	mov	r0, r8
d00009d8:	f7ff fee2 	bl	d00007a0 <_printf_common>
d00009dc:	3001      	adds	r0, #1
d00009de:	d14c      	bne.n	d0000a7a <_printf_i+0x1fe>
d00009e0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00009e4:	b004      	add	sp, #16
d00009e6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00009ea:	4835      	ldr	r0, [pc, #212]	; (d0000ac0 <_printf_i+0x244>)
d00009ec:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d00009f0:	6823      	ldr	r3, [r4, #0]
d00009f2:	680e      	ldr	r6, [r1, #0]
d00009f4:	061f      	lsls	r7, r3, #24
d00009f6:	f856 5b04 	ldr.w	r5, [r6], #4
d00009fa:	600e      	str	r6, [r1, #0]
d00009fc:	d514      	bpl.n	d0000a28 <_printf_i+0x1ac>
d00009fe:	07d9      	lsls	r1, r3, #31
d0000a00:	bf44      	itt	mi
d0000a02:	f043 0320 	orrmi.w	r3, r3, #32
d0000a06:	6023      	strmi	r3, [r4, #0]
d0000a08:	b91d      	cbnz	r5, d0000a12 <_printf_i+0x196>
d0000a0a:	6823      	ldr	r3, [r4, #0]
d0000a0c:	f023 0320 	bic.w	r3, r3, #32
d0000a10:	6023      	str	r3, [r4, #0]
d0000a12:	2310      	movs	r3, #16
d0000a14:	e7b0      	b.n	d0000978 <_printf_i+0xfc>
d0000a16:	6823      	ldr	r3, [r4, #0]
d0000a18:	f043 0320 	orr.w	r3, r3, #32
d0000a1c:	6023      	str	r3, [r4, #0]
d0000a1e:	2378      	movs	r3, #120	; 0x78
d0000a20:	4828      	ldr	r0, [pc, #160]	; (d0000ac4 <_printf_i+0x248>)
d0000a22:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0000a26:	e7e3      	b.n	d00009f0 <_printf_i+0x174>
d0000a28:	065e      	lsls	r6, r3, #25
d0000a2a:	bf48      	it	mi
d0000a2c:	b2ad      	uxthmi	r5, r5
d0000a2e:	e7e6      	b.n	d00009fe <_printf_i+0x182>
d0000a30:	4616      	mov	r6, r2
d0000a32:	e7bb      	b.n	d00009ac <_printf_i+0x130>
d0000a34:	680b      	ldr	r3, [r1, #0]
d0000a36:	6826      	ldr	r6, [r4, #0]
d0000a38:	6960      	ldr	r0, [r4, #20]
d0000a3a:	1d1d      	adds	r5, r3, #4
d0000a3c:	600d      	str	r5, [r1, #0]
d0000a3e:	0635      	lsls	r5, r6, #24
d0000a40:	681b      	ldr	r3, [r3, #0]
d0000a42:	d501      	bpl.n	d0000a48 <_printf_i+0x1cc>
d0000a44:	6018      	str	r0, [r3, #0]
d0000a46:	e002      	b.n	d0000a4e <_printf_i+0x1d2>
d0000a48:	0671      	lsls	r1, r6, #25
d0000a4a:	d5fb      	bpl.n	d0000a44 <_printf_i+0x1c8>
d0000a4c:	8018      	strh	r0, [r3, #0]
d0000a4e:	2300      	movs	r3, #0
d0000a50:	6123      	str	r3, [r4, #16]
d0000a52:	4616      	mov	r6, r2
d0000a54:	e7ba      	b.n	d00009cc <_printf_i+0x150>
d0000a56:	680b      	ldr	r3, [r1, #0]
d0000a58:	1d1a      	adds	r2, r3, #4
d0000a5a:	600a      	str	r2, [r1, #0]
d0000a5c:	681e      	ldr	r6, [r3, #0]
d0000a5e:	6862      	ldr	r2, [r4, #4]
d0000a60:	2100      	movs	r1, #0
d0000a62:	4630      	mov	r0, r6
d0000a64:	f000 f834 	bl	d0000ad0 <memchr>
d0000a68:	b108      	cbz	r0, d0000a6e <_printf_i+0x1f2>
d0000a6a:	1b80      	subs	r0, r0, r6
d0000a6c:	6060      	str	r0, [r4, #4]
d0000a6e:	6863      	ldr	r3, [r4, #4]
d0000a70:	6123      	str	r3, [r4, #16]
d0000a72:	2300      	movs	r3, #0
d0000a74:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0000a78:	e7a8      	b.n	d00009cc <_printf_i+0x150>
d0000a7a:	6923      	ldr	r3, [r4, #16]
d0000a7c:	4632      	mov	r2, r6
d0000a7e:	4649      	mov	r1, r9
d0000a80:	4640      	mov	r0, r8
d0000a82:	47d0      	blx	sl
d0000a84:	3001      	adds	r0, #1
d0000a86:	d0ab      	beq.n	d00009e0 <_printf_i+0x164>
d0000a88:	6823      	ldr	r3, [r4, #0]
d0000a8a:	079b      	lsls	r3, r3, #30
d0000a8c:	d413      	bmi.n	d0000ab6 <_printf_i+0x23a>
d0000a8e:	68e0      	ldr	r0, [r4, #12]
d0000a90:	9b03      	ldr	r3, [sp, #12]
d0000a92:	4298      	cmp	r0, r3
d0000a94:	bfb8      	it	lt
d0000a96:	4618      	movlt	r0, r3
d0000a98:	e7a4      	b.n	d00009e4 <_printf_i+0x168>
d0000a9a:	2301      	movs	r3, #1
d0000a9c:	4632      	mov	r2, r6
d0000a9e:	4649      	mov	r1, r9
d0000aa0:	4640      	mov	r0, r8
d0000aa2:	47d0      	blx	sl
d0000aa4:	3001      	adds	r0, #1
d0000aa6:	d09b      	beq.n	d00009e0 <_printf_i+0x164>
d0000aa8:	3501      	adds	r5, #1
d0000aaa:	68e3      	ldr	r3, [r4, #12]
d0000aac:	9903      	ldr	r1, [sp, #12]
d0000aae:	1a5b      	subs	r3, r3, r1
d0000ab0:	42ab      	cmp	r3, r5
d0000ab2:	dcf2      	bgt.n	d0000a9a <_printf_i+0x21e>
d0000ab4:	e7eb      	b.n	d0000a8e <_printf_i+0x212>
d0000ab6:	2500      	movs	r5, #0
d0000ab8:	f104 0619 	add.w	r6, r4, #25
d0000abc:	e7f5      	b.n	d0000aaa <_printf_i+0x22e>
d0000abe:	bf00      	nop
d0000ac0:	d00011c9 	.word	0xd00011c9
d0000ac4:	d00011da 	.word	0xd00011da
	...

d0000ad0 <memchr>:
d0000ad0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0000ad4:	2a10      	cmp	r2, #16
d0000ad6:	db2b      	blt.n	d0000b30 <memchr+0x60>
d0000ad8:	f010 0f07 	tst.w	r0, #7
d0000adc:	d008      	beq.n	d0000af0 <memchr+0x20>
d0000ade:	f810 3b01 	ldrb.w	r3, [r0], #1
d0000ae2:	3a01      	subs	r2, #1
d0000ae4:	428b      	cmp	r3, r1
d0000ae6:	d02d      	beq.n	d0000b44 <memchr+0x74>
d0000ae8:	f010 0f07 	tst.w	r0, #7
d0000aec:	b342      	cbz	r2, d0000b40 <memchr+0x70>
d0000aee:	d1f6      	bne.n	d0000ade <memchr+0xe>
d0000af0:	b4f0      	push	{r4, r5, r6, r7}
d0000af2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0000af6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d0000afa:	f022 0407 	bic.w	r4, r2, #7
d0000afe:	f07f 0700 	mvns.w	r7, #0
d0000b02:	2300      	movs	r3, #0
d0000b04:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0000b08:	3c08      	subs	r4, #8
d0000b0a:	ea85 0501 	eor.w	r5, r5, r1
d0000b0e:	ea86 0601 	eor.w	r6, r6, r1
d0000b12:	fa85 f547 	uadd8	r5, r5, r7
d0000b16:	faa3 f587 	sel	r5, r3, r7
d0000b1a:	fa86 f647 	uadd8	r6, r6, r7
d0000b1e:	faa5 f687 	sel	r6, r5, r7
d0000b22:	b98e      	cbnz	r6, d0000b48 <memchr+0x78>
d0000b24:	d1ee      	bne.n	d0000b04 <memchr+0x34>
d0000b26:	bcf0      	pop	{r4, r5, r6, r7}
d0000b28:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0000b2c:	f002 0207 	and.w	r2, r2, #7
d0000b30:	b132      	cbz	r2, d0000b40 <memchr+0x70>
d0000b32:	f810 3b01 	ldrb.w	r3, [r0], #1
d0000b36:	3a01      	subs	r2, #1
d0000b38:	ea83 0301 	eor.w	r3, r3, r1
d0000b3c:	b113      	cbz	r3, d0000b44 <memchr+0x74>
d0000b3e:	d1f8      	bne.n	d0000b32 <memchr+0x62>
d0000b40:	2000      	movs	r0, #0
d0000b42:	4770      	bx	lr
d0000b44:	3801      	subs	r0, #1
d0000b46:	4770      	bx	lr
d0000b48:	2d00      	cmp	r5, #0
d0000b4a:	bf06      	itte	eq
d0000b4c:	4635      	moveq	r5, r6
d0000b4e:	3803      	subeq	r0, #3
d0000b50:	3807      	subne	r0, #7
d0000b52:	f015 0f01 	tst.w	r5, #1
d0000b56:	d107      	bne.n	d0000b68 <memchr+0x98>
d0000b58:	3001      	adds	r0, #1
d0000b5a:	f415 7f80 	tst.w	r5, #256	; 0x100
d0000b5e:	bf02      	ittt	eq
d0000b60:	3001      	addeq	r0, #1
d0000b62:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0000b66:	3001      	addeq	r0, #1
d0000b68:	bcf0      	pop	{r4, r5, r6, r7}
d0000b6a:	3801      	subs	r0, #1
d0000b6c:	4770      	bx	lr
d0000b6e:	bf00      	nop

d0000b70 <memcpy>:
d0000b70:	440a      	add	r2, r1
d0000b72:	4291      	cmp	r1, r2
d0000b74:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0000b78:	d100      	bne.n	d0000b7c <memcpy+0xc>
d0000b7a:	4770      	bx	lr
d0000b7c:	b510      	push	{r4, lr}
d0000b7e:	f811 4b01 	ldrb.w	r4, [r1], #1
d0000b82:	f803 4f01 	strb.w	r4, [r3, #1]!
d0000b86:	4291      	cmp	r1, r2
d0000b88:	d1f9      	bne.n	d0000b7e <memcpy+0xe>
d0000b8a:	bd10      	pop	{r4, pc}

d0000b8c <memmove>:
d0000b8c:	4288      	cmp	r0, r1
d0000b8e:	b510      	push	{r4, lr}
d0000b90:	eb01 0402 	add.w	r4, r1, r2
d0000b94:	d902      	bls.n	d0000b9c <memmove+0x10>
d0000b96:	4284      	cmp	r4, r0
d0000b98:	4623      	mov	r3, r4
d0000b9a:	d807      	bhi.n	d0000bac <memmove+0x20>
d0000b9c:	1e43      	subs	r3, r0, #1
d0000b9e:	42a1      	cmp	r1, r4
d0000ba0:	d008      	beq.n	d0000bb4 <memmove+0x28>
d0000ba2:	f811 2b01 	ldrb.w	r2, [r1], #1
d0000ba6:	f803 2f01 	strb.w	r2, [r3, #1]!
d0000baa:	e7f8      	b.n	d0000b9e <memmove+0x12>
d0000bac:	4402      	add	r2, r0
d0000bae:	4601      	mov	r1, r0
d0000bb0:	428a      	cmp	r2, r1
d0000bb2:	d100      	bne.n	d0000bb6 <memmove+0x2a>
d0000bb4:	bd10      	pop	{r4, pc}
d0000bb6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d0000bba:	f802 4d01 	strb.w	r4, [r2, #-1]!
d0000bbe:	e7f7      	b.n	d0000bb0 <memmove+0x24>

d0000bc0 <_free_r>:
d0000bc0:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0000bc2:	2900      	cmp	r1, #0
d0000bc4:	d048      	beq.n	d0000c58 <_free_r+0x98>
d0000bc6:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0000bca:	9001      	str	r0, [sp, #4]
d0000bcc:	2b00      	cmp	r3, #0
d0000bce:	f1a1 0404 	sub.w	r4, r1, #4
d0000bd2:	bfb8      	it	lt
d0000bd4:	18e4      	addlt	r4, r4, r3
d0000bd6:	f000 f8d3 	bl	d0000d80 <__malloc_lock>
d0000bda:	4a20      	ldr	r2, [pc, #128]	; (d0000c5c <_free_r+0x9c>)
d0000bdc:	9801      	ldr	r0, [sp, #4]
d0000bde:	6813      	ldr	r3, [r2, #0]
d0000be0:	4615      	mov	r5, r2
d0000be2:	b933      	cbnz	r3, d0000bf2 <_free_r+0x32>
d0000be4:	6063      	str	r3, [r4, #4]
d0000be6:	6014      	str	r4, [r2, #0]
d0000be8:	b003      	add	sp, #12
d0000bea:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0000bee:	f000 b8cd 	b.w	d0000d8c <__malloc_unlock>
d0000bf2:	42a3      	cmp	r3, r4
d0000bf4:	d90b      	bls.n	d0000c0e <_free_r+0x4e>
d0000bf6:	6821      	ldr	r1, [r4, #0]
d0000bf8:	1862      	adds	r2, r4, r1
d0000bfa:	4293      	cmp	r3, r2
d0000bfc:	bf04      	itt	eq
d0000bfe:	681a      	ldreq	r2, [r3, #0]
d0000c00:	685b      	ldreq	r3, [r3, #4]
d0000c02:	6063      	str	r3, [r4, #4]
d0000c04:	bf04      	itt	eq
d0000c06:	1852      	addeq	r2, r2, r1
d0000c08:	6022      	streq	r2, [r4, #0]
d0000c0a:	602c      	str	r4, [r5, #0]
d0000c0c:	e7ec      	b.n	d0000be8 <_free_r+0x28>
d0000c0e:	461a      	mov	r2, r3
d0000c10:	685b      	ldr	r3, [r3, #4]
d0000c12:	b10b      	cbz	r3, d0000c18 <_free_r+0x58>
d0000c14:	42a3      	cmp	r3, r4
d0000c16:	d9fa      	bls.n	d0000c0e <_free_r+0x4e>
d0000c18:	6811      	ldr	r1, [r2, #0]
d0000c1a:	1855      	adds	r5, r2, r1
d0000c1c:	42a5      	cmp	r5, r4
d0000c1e:	d10b      	bne.n	d0000c38 <_free_r+0x78>
d0000c20:	6824      	ldr	r4, [r4, #0]
d0000c22:	4421      	add	r1, r4
d0000c24:	1854      	adds	r4, r2, r1
d0000c26:	42a3      	cmp	r3, r4
d0000c28:	6011      	str	r1, [r2, #0]
d0000c2a:	d1dd      	bne.n	d0000be8 <_free_r+0x28>
d0000c2c:	681c      	ldr	r4, [r3, #0]
d0000c2e:	685b      	ldr	r3, [r3, #4]
d0000c30:	6053      	str	r3, [r2, #4]
d0000c32:	4421      	add	r1, r4
d0000c34:	6011      	str	r1, [r2, #0]
d0000c36:	e7d7      	b.n	d0000be8 <_free_r+0x28>
d0000c38:	d902      	bls.n	d0000c40 <_free_r+0x80>
d0000c3a:	230c      	movs	r3, #12
d0000c3c:	6003      	str	r3, [r0, #0]
d0000c3e:	e7d3      	b.n	d0000be8 <_free_r+0x28>
d0000c40:	6825      	ldr	r5, [r4, #0]
d0000c42:	1961      	adds	r1, r4, r5
d0000c44:	428b      	cmp	r3, r1
d0000c46:	bf04      	itt	eq
d0000c48:	6819      	ldreq	r1, [r3, #0]
d0000c4a:	685b      	ldreq	r3, [r3, #4]
d0000c4c:	6063      	str	r3, [r4, #4]
d0000c4e:	bf04      	itt	eq
d0000c50:	1949      	addeq	r1, r1, r5
d0000c52:	6021      	streq	r1, [r4, #0]
d0000c54:	6054      	str	r4, [r2, #4]
d0000c56:	e7c7      	b.n	d0000be8 <_free_r+0x28>
d0000c58:	b003      	add	sp, #12
d0000c5a:	bd30      	pop	{r4, r5, pc}
d0000c5c:	d000126c 	.word	0xd000126c

d0000c60 <_malloc_r>:
d0000c60:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000c62:	1ccd      	adds	r5, r1, #3
d0000c64:	f025 0503 	bic.w	r5, r5, #3
d0000c68:	3508      	adds	r5, #8
d0000c6a:	2d0c      	cmp	r5, #12
d0000c6c:	bf38      	it	cc
d0000c6e:	250c      	movcc	r5, #12
d0000c70:	2d00      	cmp	r5, #0
d0000c72:	4606      	mov	r6, r0
d0000c74:	db01      	blt.n	d0000c7a <_malloc_r+0x1a>
d0000c76:	42a9      	cmp	r1, r5
d0000c78:	d903      	bls.n	d0000c82 <_malloc_r+0x22>
d0000c7a:	230c      	movs	r3, #12
d0000c7c:	6033      	str	r3, [r6, #0]
d0000c7e:	2000      	movs	r0, #0
d0000c80:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0000c82:	f000 f87d 	bl	d0000d80 <__malloc_lock>
d0000c86:	4921      	ldr	r1, [pc, #132]	; (d0000d0c <_malloc_r+0xac>)
d0000c88:	680a      	ldr	r2, [r1, #0]
d0000c8a:	4614      	mov	r4, r2
d0000c8c:	b99c      	cbnz	r4, d0000cb6 <_malloc_r+0x56>
d0000c8e:	4f20      	ldr	r7, [pc, #128]	; (d0000d10 <_malloc_r+0xb0>)
d0000c90:	683b      	ldr	r3, [r7, #0]
d0000c92:	b923      	cbnz	r3, d0000c9e <_malloc_r+0x3e>
d0000c94:	4621      	mov	r1, r4
d0000c96:	4630      	mov	r0, r6
d0000c98:	f000 f862 	bl	d0000d60 <_sbrk_r>
d0000c9c:	6038      	str	r0, [r7, #0]
d0000c9e:	4629      	mov	r1, r5
d0000ca0:	4630      	mov	r0, r6
d0000ca2:	f000 f85d 	bl	d0000d60 <_sbrk_r>
d0000ca6:	1c43      	adds	r3, r0, #1
d0000ca8:	d123      	bne.n	d0000cf2 <_malloc_r+0x92>
d0000caa:	230c      	movs	r3, #12
d0000cac:	6033      	str	r3, [r6, #0]
d0000cae:	4630      	mov	r0, r6
d0000cb0:	f000 f86c 	bl	d0000d8c <__malloc_unlock>
d0000cb4:	e7e3      	b.n	d0000c7e <_malloc_r+0x1e>
d0000cb6:	6823      	ldr	r3, [r4, #0]
d0000cb8:	1b5b      	subs	r3, r3, r5
d0000cba:	d417      	bmi.n	d0000cec <_malloc_r+0x8c>
d0000cbc:	2b0b      	cmp	r3, #11
d0000cbe:	d903      	bls.n	d0000cc8 <_malloc_r+0x68>
d0000cc0:	6023      	str	r3, [r4, #0]
d0000cc2:	441c      	add	r4, r3
d0000cc4:	6025      	str	r5, [r4, #0]
d0000cc6:	e004      	b.n	d0000cd2 <_malloc_r+0x72>
d0000cc8:	6863      	ldr	r3, [r4, #4]
d0000cca:	42a2      	cmp	r2, r4
d0000ccc:	bf0c      	ite	eq
d0000cce:	600b      	streq	r3, [r1, #0]
d0000cd0:	6053      	strne	r3, [r2, #4]
d0000cd2:	4630      	mov	r0, r6
d0000cd4:	f000 f85a 	bl	d0000d8c <__malloc_unlock>
d0000cd8:	f104 000b 	add.w	r0, r4, #11
d0000cdc:	1d23      	adds	r3, r4, #4
d0000cde:	f020 0007 	bic.w	r0, r0, #7
d0000ce2:	1ac2      	subs	r2, r0, r3
d0000ce4:	d0cc      	beq.n	d0000c80 <_malloc_r+0x20>
d0000ce6:	1a1b      	subs	r3, r3, r0
d0000ce8:	50a3      	str	r3, [r4, r2]
d0000cea:	e7c9      	b.n	d0000c80 <_malloc_r+0x20>
d0000cec:	4622      	mov	r2, r4
d0000cee:	6864      	ldr	r4, [r4, #4]
d0000cf0:	e7cc      	b.n	d0000c8c <_malloc_r+0x2c>
d0000cf2:	1cc4      	adds	r4, r0, #3
d0000cf4:	f024 0403 	bic.w	r4, r4, #3
d0000cf8:	42a0      	cmp	r0, r4
d0000cfa:	d0e3      	beq.n	d0000cc4 <_malloc_r+0x64>
d0000cfc:	1a21      	subs	r1, r4, r0
d0000cfe:	4630      	mov	r0, r6
d0000d00:	f000 f82e 	bl	d0000d60 <_sbrk_r>
d0000d04:	3001      	adds	r0, #1
d0000d06:	d1dd      	bne.n	d0000cc4 <_malloc_r+0x64>
d0000d08:	e7cf      	b.n	d0000caa <_malloc_r+0x4a>
d0000d0a:	bf00      	nop
d0000d0c:	d000126c 	.word	0xd000126c
d0000d10:	d0001270 	.word	0xd0001270

d0000d14 <_realloc_r>:
d0000d14:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000d16:	4607      	mov	r7, r0
d0000d18:	4614      	mov	r4, r2
d0000d1a:	460e      	mov	r6, r1
d0000d1c:	b921      	cbnz	r1, d0000d28 <_realloc_r+0x14>
d0000d1e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0000d22:	4611      	mov	r1, r2
d0000d24:	f7ff bf9c 	b.w	d0000c60 <_malloc_r>
d0000d28:	b922      	cbnz	r2, d0000d34 <_realloc_r+0x20>
d0000d2a:	f7ff ff49 	bl	d0000bc0 <_free_r>
d0000d2e:	4625      	mov	r5, r4
d0000d30:	4628      	mov	r0, r5
d0000d32:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0000d34:	f000 f830 	bl	d0000d98 <_malloc_usable_size_r>
d0000d38:	42a0      	cmp	r0, r4
d0000d3a:	d20f      	bcs.n	d0000d5c <_realloc_r+0x48>
d0000d3c:	4621      	mov	r1, r4
d0000d3e:	4638      	mov	r0, r7
d0000d40:	f7ff ff8e 	bl	d0000c60 <_malloc_r>
d0000d44:	4605      	mov	r5, r0
d0000d46:	2800      	cmp	r0, #0
d0000d48:	d0f2      	beq.n	d0000d30 <_realloc_r+0x1c>
d0000d4a:	4631      	mov	r1, r6
d0000d4c:	4622      	mov	r2, r4
d0000d4e:	f7ff ff0f 	bl	d0000b70 <memcpy>
d0000d52:	4631      	mov	r1, r6
d0000d54:	4638      	mov	r0, r7
d0000d56:	f7ff ff33 	bl	d0000bc0 <_free_r>
d0000d5a:	e7e9      	b.n	d0000d30 <_realloc_r+0x1c>
d0000d5c:	4635      	mov	r5, r6
d0000d5e:	e7e7      	b.n	d0000d30 <_realloc_r+0x1c>

d0000d60 <_sbrk_r>:
d0000d60:	b538      	push	{r3, r4, r5, lr}
d0000d62:	4d06      	ldr	r5, [pc, #24]	; (d0000d7c <_sbrk_r+0x1c>)
d0000d64:	2300      	movs	r3, #0
d0000d66:	4604      	mov	r4, r0
d0000d68:	4608      	mov	r0, r1
d0000d6a:	602b      	str	r3, [r5, #0]
d0000d6c:	f7ff f99c 	bl	d00000a8 <_sbrk>
d0000d70:	1c43      	adds	r3, r0, #1
d0000d72:	d102      	bne.n	d0000d7a <_sbrk_r+0x1a>
d0000d74:	682b      	ldr	r3, [r5, #0]
d0000d76:	b103      	cbz	r3, d0000d7a <_sbrk_r+0x1a>
d0000d78:	6023      	str	r3, [r4, #0]
d0000d7a:	bd38      	pop	{r3, r4, r5, pc}
d0000d7c:	d000128c 	.word	0xd000128c

d0000d80 <__malloc_lock>:
d0000d80:	4801      	ldr	r0, [pc, #4]	; (d0000d88 <__malloc_lock+0x8>)
d0000d82:	f000 b811 	b.w	d0000da8 <__retarget_lock_acquire_recursive>
d0000d86:	bf00      	nop
d0000d88:	d0001294 	.word	0xd0001294

d0000d8c <__malloc_unlock>:
d0000d8c:	4801      	ldr	r0, [pc, #4]	; (d0000d94 <__malloc_unlock+0x8>)
d0000d8e:	f000 b80c 	b.w	d0000daa <__retarget_lock_release_recursive>
d0000d92:	bf00      	nop
d0000d94:	d0001294 	.word	0xd0001294

d0000d98 <_malloc_usable_size_r>:
d0000d98:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0000d9c:	1f18      	subs	r0, r3, #4
d0000d9e:	2b00      	cmp	r3, #0
d0000da0:	bfbc      	itt	lt
d0000da2:	580b      	ldrlt	r3, [r1, r0]
d0000da4:	18c0      	addlt	r0, r0, r3
d0000da6:	4770      	bx	lr

d0000da8 <__retarget_lock_acquire_recursive>:
d0000da8:	4770      	bx	lr

d0000daa <__retarget_lock_release_recursive>:
d0000daa:	4770      	bx	lr
d0000dac:	00756c25 	.word	0x00756c25
d0000db0:	6c72654d 	.word	0x6c72654d
d0000db4:	000a6e69 	.word	0x000a6e69

d0000db8 <colourPallete>:
d0000db8:	00000000 ffafafaf ffffffff ff3b67a2     .............g;.
d0000dc8:	ffaa907c ff959595 ff7b7b7b ffffa997     |.......{{{.....
d0000dd8:	ff37a91d ff7ca9ff ffbf8112 ffebbf66     ..7...|.....f...
d0000de8:	ff78c178 ff3d9318 ffb33418 ffd9311c     x.x...=..4...1..
d0000df8:	ff000000 ff00000e ff00001d ff00002b     ............+...
d0000e08:	ff000139 ff000147 ff000156 ff000164     9...G...V...d...
d0000e18:	ff0001d2 ff0001ff ffcecece ff00ff00     ................
d0000e28:	ffb2ff00 ffffe700 ffff9600 ffff1100     ................
d0000e38:	ff491200 ff491355 ff4914aa ff4916ff     ..I.U.I...I...I.
d0000e48:	ff5b1700 ff5b1855 ff5b19aa ff5b1aff     ..[.U.[...[...[.
d0000e58:	ff6d1b00 ff6d1c55 ff00e300 ff85ff54     ..m.U.m.....T...
d0000e68:	ffc4ff00 ffffd900 ffffa41f ffe05400     .............T..
d0000e78:	ffff0000 ff922655 ff9227aa ff9228ff     ....U&...'...(..
d0000e88:	ffa42900 ffa42a55 ffa42baa ffa42cff     .)..U*...+...,..
d0000e98:	ffb62d00 ffb62f55 ffb630aa ffb631ff     .-..U/...0...1..
d0000ea8:	ffc93200 ffc93355 ffc934aa ffc935ff     .2..U3...4...5..
d0000eb8:	ffdb3700 ffdb3855 ffdb39aa ffdb3aff     .7..U8...9...:..
d0000ec8:	ffed3b00 ffed3c55 ffed3daa ffed3fff     .;..U<...=...?..
d0000ed8:	ffff4000 ffff4155 ffff42aa ffff43ff     .@..UA...B...C..
d0000ee8:	ff004400 ff004555 ff0046aa ff0048ff     .D..UE...F...H..
d0000ef8:	ffffff00 ff12ff55 ff12ee55 ff12b6ff     ....U...U.......
d0000f08:	ff001fff ff9d0ec7 fff10000 ffff7700     .............w..
d0000f18:	ff375200 ff375355 ff3754aa ff3755ff     .R7.US7..T7..U7.
d0000f28:	ff495600 ff495855 ff4959aa ff495aff     .VI.UXI..YI..ZI.
d0000f38:	ff5b5b00 ff5b5c55 ff5b5daa ff5b5eff     .[[.U\[..][..^[.
d0000f48:	ff6d6000 ff6d6155 ff6d62aa ff6d63ff     .`m.Uam..bm..cm.
d0000f58:	ff6d6400 ff806555 ff8066aa ff8067ff     .dm.Ue...f...g..
d0000f68:	ff926900 ff926a55 ff926baa ff926cff     .i..Uj...k...l..
d0000f78:	ffa46d00 ffa46e55 ffa46faa ffa471ff     .m..Un...o...q..
d0000f88:	ffb67200 ffb67355 ffb674aa ffb675ff     .r..Us...t...u..
d0000f98:	ffc97600 ffc97755 ffc979aa ffc97aff     .v..Uw...y...z..
d0000fa8:	ffdb7b00 ffdb7c55 ffdb7daa ffdb7eff     .{..U|...}...~..
d0000fb8:	ffed7f00 ffed8055 ffed82aa ffed83ff     ....U...........
d0000fc8:	ffff8400 ffff8555 ffff86aa ffff87ff     ....U...........
d0000fd8:	ff008800 ff008a55 ff008baa ff008cff     ....U...........
d0000fe8:	ff128d00 ff128e55 ff128faa ff1290ff     ....U...........
d0000ff8:	ff249200 ff249355 ff2494aa ff2495ff     ..$.U.$...$...$.
d0001008:	ff379600 ff379755 ff3798aa ff3799ff     ..7.U.7...7...7.
d0001018:	ff499b00 ff499c55 ff499daa ff499eff     ..I.U.I...I...I.
d0001028:	ff5b9f00 ff5ba055 ff5ba1aa ff5ba3ff     ..[.U.[...[...[.
d0001038:	ffa4b5d5 ffa0b0f8 ff94a3e6 ff7c89c1     ..............|.
d0001048:	ff6281c0 ff1c62a1 ff4254ea ff62a1bd     ..b..b...TB...b.
d0001058:	ff7093c0 ff4977a1 ff003faa ff1554ff     ..p..wI..?...T..
d0001068:	ff1c50b9 ff00b3ff ff0088aa ff00b5ff     .P..............
d0001078:	ff0e62ff ff5eb7e3 ffbdc0b9 ff85b9ff     .b....^.........
d0001088:	ff006caf ff1f81b9 ff3f5baa ffc9beff     .l.......[?.....
d0001098:	ff5bafcb ffdbc055 ffdbc1aa ffbdc0c0     ..[.U...........
d00010a8:	ffedc400 ffedc555 ffedc6aa ffedc7ff     ....U...........
d00010b8:	ffffc800 ffffc955 ffffcaaa ffffccff     ....U...........
d00010c8:	ff00cd00 ff00ce55 ff00cfaa ff00d0ff     ....U...........
d00010d8:	ff12d100 ff12d255 ff12d3aa ff12d5ff     ....U...........
d00010e8:	ff24d600 ff24d755 ff24d8aa ff24d9ff     ..$.U.$...$...$.
d00010f8:	ff37da00 ff37db55 ff37ddaa ff37deff     ..7.U.7...7...7.
d0001108:	ff49df00 ff49e055 ff49e1aa ff49e2ff     ..I.U.I...I...I.
d0001118:	ff5be300 ff5be555 ff5be6aa ff5be7ff     ..[.U.[...[...[.
d0001128:	ff6de800 ff6de955 ff6deaaa ff6debff     ..m.U.m...m...m.
d0001138:	ff6dec00 ff80ee55 ff80efaa ff80f0ff     ..m.U...........
d0001148:	ff93cea2 ff92f255 ff92f3aa ff92f4ff     ....U...........
d0001158:	ffa4f600 ffa4f755 ffa4f8aa ffa4f9ff     ....U...........
d0001168:	ffb6fa00 ffb6fb55 ffb6fcaa ffb6feff     ....U...........
d0001178:	ffc9ff00 ffc9ff55 ffc9ffaa ffc9ffff     ....U...........
d0001188:	ffdbff00 ffdbff55 ffdbffaa ffdbffff     ....U...........
d0001198:	ffedff00 ffedff55 ffedffaa ffedffff     ....U...........
d00011a8:	ffffff00 ffffff55 ffffffaa ffffffff     ....U...........
d00011b8:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d00011c8:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d00011d8:	31300046 35343332 39383736 64636261     F.0123456789abcd
d00011e8:	                                         ef.

Disassembly of section .init:

d00011ec <_init>:
d00011ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00011ee:	bf00      	nop

Disassembly of section .fini:

d00011f0 <_fini>:
d00011f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00011f2:	bf00      	nop
