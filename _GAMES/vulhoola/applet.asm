
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0000010 <applet_entry>:
d0000010:	f000 b852 	b.w	d00000b8 <main>

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
d0000050:	d00003d0 	.word	0xd00003d0
d0000054:	d00003d4 	.word	0xd00003d4
d0000058:	d00003dc 	.word	0xd00003dc

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

d0000090 <clear_screen>:
d0000090:	b510      	push	{r4, lr}
d0000092:	4c08      	ldr	r4, [pc, #32]	; (d00000b4 <clear_screen+0x24>)
d0000094:	2000      	movs	r0, #0
d0000096:	f7ff ffe1 	bl	d000005c <ShowBuffer>
d000009a:	2000      	movs	r0, #0
d000009c:	f8d4 3118 	ldr.w	r3, [r4, #280]	; 0x118
d00000a0:	4798      	blx	r3
d00000a2:	2001      	movs	r0, #1
d00000a4:	f7ff ffda 	bl	d000005c <ShowBuffer>
d00000a8:	f8d4 3118 	ldr.w	r3, [r4, #280]	; 0x118
d00000ac:	2000      	movs	r0, #0
d00000ae:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00000b2:	4718      	bx	r3
d00000b4:	2001f000 	.word	0x2001f000

d00000b8 <main>:
d00000b8:	4a54      	ldr	r2, [pc, #336]	; (d000020c <main+0x154>)
d00000ba:	20ff      	movs	r0, #255	; 0xff
d00000bc:	6813      	ldr	r3, [r2, #0]
d00000be:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00000c2:	f023 0310 	bic.w	r3, r3, #16
d00000c6:	4d52      	ldr	r5, [pc, #328]	; (d0000210 <main+0x158>)
d00000c8:	b085      	sub	sp, #20
d00000ca:	2600      	movs	r6, #0
d00000cc:	6013      	str	r3, [r2, #0]
d00000ce:	462c      	mov	r4, r5
d00000d0:	f8d5 30c8 	ldr.w	r3, [r5, #200]	; 0xc8
d00000d4:	46b2      	mov	sl, r6
d00000d6:	4798      	blx	r3
d00000d8:	4b4e      	ldr	r3, [pc, #312]	; (d0000214 <main+0x15c>)
d00000da:	484f      	ldr	r0, [pc, #316]	; (d0000218 <main+0x160>)
d00000dc:	601e      	str	r6, [r3, #0]
d00000de:	68ab      	ldr	r3, [r5, #8]
d00000e0:	4798      	blx	r3
d00000e2:	68eb      	ldr	r3, [r5, #12]
d00000e4:	201e      	movs	r0, #30
d00000e6:	f8df 8140 	ldr.w	r8, [pc, #320]	; d0000228 <main+0x170>
d00000ea:	4798      	blx	r3
d00000ec:	f8df 913c 	ldr.w	r9, [pc, #316]	; d000022c <main+0x174>
d00000f0:	f7ff ff90 	bl	d0000014 <initDisplayBuffers>
d00000f4:	f44f 73a0 	mov.w	r3, #320	; 0x140
d00000f8:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00000fc:	f8d5 70e8 	ldr.w	r7, [r5, #232]	; 0xe8
d0000100:	4619      	mov	r1, r3
d0000102:	9600      	str	r6, [sp, #0]
d0000104:	4610      	mov	r0, r2
d0000106:	47b8      	blx	r7
d0000108:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d000010c:	2201      	movs	r2, #1
d000010e:	701a      	strb	r2, [r3, #0]
d0000110:	f7ff ffbe 	bl	d0000090 <clear_screen>
d0000114:	f8d4 3118 	ldr.w	r3, [r4, #280]	; 0x118
d0000118:	2000      	movs	r0, #0
d000011a:	4798      	blx	r3
d000011c:	2500      	movs	r5, #0
d000011e:	f8cd a00c 	str.w	sl, [sp, #12]
d0000122:	e00f      	b.n	d0000144 <main+0x8c>
d0000124:	f8d4 c0f8 	ldr.w	ip, [r4, #248]	; 0xf8
d0000128:	f04f 0e10 	mov.w	lr, #16
d000012c:	4652      	mov	r2, sl
d000012e:	f88c e000 	strb.w	lr, [ip]
d0000132:	f8d4 b13c 	ldr.w	fp, [r4, #316]	; 0x13c
d0000136:	47d8      	blx	fp
d0000138:	f5ba 7fc8 	cmp.w	sl, #400	; 0x190
d000013c:	d108      	bne.n	d0000150 <main+0x98>
d000013e:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d0000142:	d01e      	beq.n	d0000182 <main+0xca>
d0000144:	462e      	mov	r6, r5
d0000146:	4b35      	ldr	r3, [pc, #212]	; (d000021c <main+0x164>)
d0000148:	f04f 0a00 	mov.w	sl, #0
d000014c:	3514      	adds	r5, #20
d000014e:	199f      	adds	r7, r3, r6
d0000150:	f817 2f01 	ldrb.w	r2, [r7, #1]!
d0000154:	4650      	mov	r0, sl
d0000156:	462b      	mov	r3, r5
d0000158:	4631      	mov	r1, r6
d000015a:	2a01      	cmp	r2, #1
d000015c:	f10a 0a14 	add.w	sl, sl, #20
d0000160:	d1e0      	bne.n	d0000124 <main+0x6c>
d0000162:	f8d4 20f8 	ldr.w	r2, [r4, #248]	; 0xf8
d0000166:	f04f 011d 	mov.w	r1, #29
d000016a:	7011      	strb	r1, [r2, #0]
d000016c:	4652      	mov	r2, sl
d000016e:	f8d4 b13c 	ldr.w	fp, [r4, #316]	; 0x13c
d0000172:	4631      	mov	r1, r6
d0000174:	47d8      	blx	fp
d0000176:	f5ba 7fc8 	cmp.w	sl, #400	; 0x190
d000017a:	d1e9      	bne.n	d0000150 <main+0x98>
d000017c:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d0000180:	d1e0      	bne.n	d0000144 <main+0x8c>
d0000182:	f8d9 0000 	ldr.w	r0, [r9]
d0000186:	2208      	movs	r2, #8
d0000188:	f8d8 1000 	ldr.w	r1, [r8]
d000018c:	2310      	movs	r3, #16
d000018e:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d0000192:	4e23      	ldr	r6, [pc, #140]	; (d0000220 <main+0x168>)
d0000194:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d0000198:	f8d4 5154 	ldr.w	r5, [r4, #340]	; 0x154
d000019c:	0080      	lsls	r0, r0, #2
d000019e:	9600      	str	r6, [sp, #0]
d00001a0:	0089      	lsls	r1, r1, #2
d00001a2:	f8dd a00c 	ldr.w	sl, [sp, #12]
d00001a6:	3004      	adds	r0, #4
d00001a8:	47a8      	blx	r5
d00001aa:	69e3      	ldr	r3, [r4, #28]
d00001ac:	4798      	blx	r3
d00001ae:	0701      	lsls	r1, r0, #28
d00001b0:	f8d8 1000 	ldr.w	r1, [r8]
d00001b4:	bf54      	ite	pl
d00001b6:	f340 0380 	sbfxpl	r3, r0, #2, #1
d00001ba:	2301      	movmi	r3, #1
d00001bc:	0682      	lsls	r2, r0, #26
d00001be:	f8d9 2000 	ldr.w	r2, [r9]
d00001c2:	440b      	add	r3, r1
d00001c4:	4917      	ldr	r1, [pc, #92]	; (d0000224 <main+0x16c>)
d00001c6:	bf54      	ite	pl
d00001c8:	f340 1000 	sbfxpl	r0, r0, #4, #1
d00001cc:	2001      	movmi	r0, #1
d00001ce:	4410      	add	r0, r2
d00001d0:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d00001d4:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d00001d8:	5c12      	ldrb	r2, [r2, r0]
d00001da:	b91a      	cbnz	r2, d00001e4 <main+0x12c>
d00001dc:	f8c9 0000 	str.w	r0, [r9]
d00001e0:	f8c8 3000 	str.w	r3, [r8]
d00001e4:	4650      	mov	r0, sl
d00001e6:	f1ca 0a01 	rsb	sl, sl, #1
d00001ea:	f7ff ff37 	bl	d000005c <ShowBuffer>
d00001ee:	f8d4 30cc 	ldr.w	r3, [r4, #204]	; 0xcc
d00001f2:	4798      	blx	r3
d00001f4:	f8d4 30c4 	ldr.w	r3, [r4, #196]	; 0xc4
d00001f8:	2001      	movs	r0, #1
d00001fa:	4798      	blx	r3
d00001fc:	68e3      	ldr	r3, [r4, #12]
d00001fe:	201e      	movs	r0, #30
d0000200:	4798      	blx	r3
d0000202:	f8d4 315c 	ldr.w	r3, [r4, #348]	; 0x15c
d0000206:	4798      	blx	r3
d0000208:	e784      	b.n	d0000114 <main+0x5c>
d000020a:	bf00      	nop
d000020c:	e000ed14 	.word	0xe000ed14
d0000210:	2001f000 	.word	0x2001f000
d0000214:	d0000244 	.word	0xd0000244
d0000218:	d0000230 	.word	0xd0000230
d000021c:	d0000247 	.word	0xd0000247
d0000220:	d0000388 	.word	0xd0000388
d0000224:	d0000248 	.word	0xd0000248
d0000228:	d00003cc 	.word	0xd00003cc
d000022c:	d00003c8 	.word	0xd00003c8
d0000230:	686c6156 	.word	0x686c6156
d0000234:	616c6f6f 	.word	0x616c6f6f
d0000238:	Address 0x00000000d0000238 is out of bounds.


Disassembly of section .init:

d000023c <_init>:
d000023c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d000023e:	bf00      	nop

Disassembly of section .fini:

d0000240 <_fini>:
d0000240:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000242:	bf00      	nop
