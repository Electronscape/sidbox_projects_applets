
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0000010 <applet_entry>:
d0000010:	f000 b912 	b.w	d0000238 <main>

d0000014 <memset>:
d0000014:	4402      	add	r2, r0
d0000016:	4603      	mov	r3, r0
d0000018:	4293      	cmp	r3, r2
d000001a:	d100      	bne.n	d000001e <memset+0xa>
d000001c:	4770      	bx	lr
d000001e:	f803 1b01 	strb.w	r1, [r3], #1
d0000022:	e7f9      	b.n	d0000018 <memset+0x4>

d0000024 <initDisplayBuffers>:
d0000024:	4b0c      	ldr	r3, [pc, #48]	; (d0000058 <initDisplayBuffers+0x34>)
d0000026:	4a0d      	ldr	r2, [pc, #52]	; (d000005c <initDisplayBuffers+0x38>)
d0000028:	f8d3 00ec 	ldr.w	r0, [r3, #236]	; 0xec
d000002c:	b410      	push	{r4}
d000002e:	f8d3 40f4 	ldr.w	r4, [r3, #244]	; 0xf4
d0000032:	f8d3 10f4 	ldr.w	r1, [r3, #244]	; 0xf4
d0000036:	6002      	str	r2, [r0, #0]
d0000038:	6022      	str	r2, [r4, #0]
d000003a:	4809      	ldr	r0, [pc, #36]	; (d0000060 <initDisplayBuffers+0x3c>)
d000003c:	680a      	ldr	r2, [r1, #0]
d000003e:	4909      	ldr	r1, [pc, #36]	; (d0000064 <initDisplayBuffers+0x40>)
d0000040:	6002      	str	r2, [r0, #0]
d0000042:	f8d3 00f0 	ldr.w	r0, [r3, #240]	; 0xf0
d0000046:	f8d3 30f0 	ldr.w	r3, [r3, #240]	; 0xf0
d000004a:	4a07      	ldr	r2, [pc, #28]	; (d0000068 <initDisplayBuffers+0x44>)
d000004c:	6008      	str	r0, [r1, #0]
d000004e:	681b      	ldr	r3, [r3, #0]
d0000050:	f85d 4b04 	ldr.w	r4, [sp], #4
d0000054:	6013      	str	r3, [r2, #0]
d0000056:	4770      	bx	lr
d0000058:	2001f000 	.word	0x2001f000
d000005c:	d06b2000 	.word	0xd06b2000
d0000060:	d000049c 	.word	0xd000049c
d0000064:	d00004a0 	.word	0xd00004a0
d0000068:	d00004a8 	.word	0xd00004a8

d000006c <ShowBuffer>:
d000006c:	4b09      	ldr	r3, [pc, #36]	; (d0000094 <ShowBuffer+0x28>)
d000006e:	b140      	cbz	r0, d0000082 <ShowBuffer+0x16>
d0000070:	f8d3 10ec 	ldr.w	r1, [r3, #236]	; 0xec
d0000074:	4808      	ldr	r0, [pc, #32]	; (d0000098 <ShowBuffer+0x2c>)
d0000076:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d000007a:	4a08      	ldr	r2, [pc, #32]	; (d000009c <ShowBuffer+0x30>)
d000007c:	6008      	str	r0, [r1, #0]
d000007e:	601a      	str	r2, [r3, #0]
d0000080:	4770      	bx	lr
d0000082:	f8d3 10ec 	ldr.w	r1, [r3, #236]	; 0xec
d0000086:	4805      	ldr	r0, [pc, #20]	; (d000009c <ShowBuffer+0x30>)
d0000088:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d000008c:	4a02      	ldr	r2, [pc, #8]	; (d0000098 <ShowBuffer+0x2c>)
d000008e:	6008      	str	r0, [r1, #0]
d0000090:	601a      	str	r2, [r3, #0]
d0000092:	4770      	bx	lr
d0000094:	2001f000 	.word	0x2001f000
d0000098:	d06b2000 	.word	0xd06b2000
d000009c:	d06d9000 	.word	0xd06d9000

d00000a0 <StopChannel>:
d00000a0:	4b04      	ldr	r3, [pc, #16]	; (d00000b4 <StopChannel+0x14>)
d00000a2:	0080      	lsls	r0, r0, #2
d00000a4:	4403      	add	r3, r0
d00000a6:	685b      	ldr	r3, [r3, #4]
d00000a8:	781a      	ldrb	r2, [r3, #0]
d00000aa:	f36f 0200 	bfc	r2, #0, #1
d00000ae:	701a      	strb	r2, [r3, #0]
d00000b0:	4770      	bx	lr
d00000b2:	bf00      	nop
d00000b4:	2001f170 	.word	0x2001f170

d00000b8 <draw_dart.part.0>:
d00000b8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00000bc:	2501      	movs	r5, #1
d00000be:	b08a      	sub	sp, #40	; 0x28
d00000c0:	f8df 90d4 	ldr.w	r9, [pc, #212]	; d0000198 <draw_dart.part.0+0xe0>
d00000c4:	4604      	mov	r4, r0
d00000c6:	f04f 0800 	mov.w	r8, #0
d00000ca:	f100 0728 	add.w	r7, r0, #40	; 0x28
d00000ce:	f100 062a 	add.w	r6, r0, #42	; 0x2a
d00000d2:	f005 0103 	and.w	r1, r5, #3
d00000d6:	f9b4 c02a 	ldrsh.w	ip, [r4, #42]	; 0x2a
d00000da:	2301      	movs	r3, #1
d00000dc:	f9b4 2028 	ldrsh.w	r2, [r4, #40]	; 0x28
d00000e0:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d00000e4:	f937 e025 	ldrsh.w	lr, [r7, r5, lsl #2]
d00000e8:	f8cd c00c 	str.w	ip, [sp, #12]
d00000ec:	f9b1 a02c 	ldrsh.w	sl, [r1, #44]	; 0x2c
d00000f0:	f9b1 002e 	ldrsh.w	r0, [r1, #46]	; 0x2e
d00000f4:	2103      	movs	r1, #3
d00000f6:	f936 c025 	ldrsh.w	ip, [r6, r5, lsl #2]
d00000fa:	441d      	add	r5, r3
d00000fc:	9202      	str	r2, [sp, #8]
d00000fe:	461a      	mov	r2, r3
d0000100:	f8cd a018 	str.w	sl, [sp, #24]
d0000104:	9007      	str	r0, [sp, #28]
d0000106:	a802      	add	r0, sp, #8
d0000108:	f8d9 a130 	ldr.w	sl, [r9, #304]	; 0x130
d000010c:	f8cd 8000 	str.w	r8, [sp]
d0000110:	e9cd ec04 	strd	lr, ip, [sp, #16]
d0000114:	47d0      	blx	sl
d0000116:	2d05      	cmp	r5, #5
d0000118:	d1db      	bne.n	d00000d2 <draw_dart.part.0+0x1a>
d000011a:	f9b4 303e 	ldrsh.w	r3, [r4, #62]	; 0x3e
d000011e:	4625      	mov	r5, r4
d0000120:	f9b4 103c 	ldrsh.w	r1, [r4, #60]	; 0x3c
d0000124:	f104 080c 	add.w	r8, r4, #12
d0000128:	f9b4 2028 	ldrsh.w	r2, [r4, #40]	; 0x28
d000012c:	2700      	movs	r7, #0
d000012e:	9303      	str	r3, [sp, #12]
d0000130:	4e19      	ldr	r6, [pc, #100]	; (d0000198 <draw_dart.part.0+0xe0>)
d0000132:	f9b4 302a 	ldrsh.w	r3, [r4, #42]	; 0x2a
d0000136:	9102      	str	r1, [sp, #8]
d0000138:	e9cd 2304 	strd	r2, r3, [sp, #16]
d000013c:	f9b5 2040 	ldrsh.w	r2, [r5, #64]	; 0x40
d0000140:	2301      	movs	r3, #1
d0000142:	f9b5 0042 	ldrsh.w	r0, [r5, #66]	; 0x42
d0000146:	2103      	movs	r1, #3
d0000148:	f8d6 9130 	ldr.w	r9, [r6, #304]	; 0x130
d000014c:	3504      	adds	r5, #4
d000014e:	9206      	str	r2, [sp, #24]
d0000150:	461a      	mov	r2, r3
d0000152:	9007      	str	r0, [sp, #28]
d0000154:	a802      	add	r0, sp, #8
d0000156:	9700      	str	r7, [sp, #0]
d0000158:	47c8      	blx	r9
d000015a:	f9b5 003c 	ldrsh.w	r0, [r5, #60]	; 0x3c
d000015e:	f9b5 103e 	ldrsh.w	r1, [r5, #62]	; 0x3e
d0000162:	45a8      	cmp	r8, r5
d0000164:	f9b4 2028 	ldrsh.w	r2, [r4, #40]	; 0x28
d0000168:	f9b4 302a 	ldrsh.w	r3, [r4, #42]	; 0x2a
d000016c:	e9cd 0102 	strd	r0, r1, [sp, #8]
d0000170:	e9cd 2304 	strd	r2, r3, [sp, #16]
d0000174:	d1e2      	bne.n	d000013c <draw_dart.part.0+0x84>
d0000176:	f9b4 203c 	ldrsh.w	r2, [r4, #60]	; 0x3c
d000017a:	2301      	movs	r3, #1
d000017c:	f9b4 503e 	ldrsh.w	r5, [r4, #62]	; 0x3e
d0000180:	a802      	add	r0, sp, #8
d0000182:	f8d6 4130 	ldr.w	r4, [r6, #304]	; 0x130
d0000186:	2103      	movs	r1, #3
d0000188:	9206      	str	r2, [sp, #24]
d000018a:	461a      	mov	r2, r3
d000018c:	9700      	str	r7, [sp, #0]
d000018e:	9507      	str	r5, [sp, #28]
d0000190:	47a0      	blx	r4
d0000192:	b00a      	add	sp, #40	; 0x28
d0000194:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0000198:	2001f000 	.word	0x2001f000

d000019c <init_trig>:
d000019c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00001a0:	4c0c      	ldr	r4, [pc, #48]	; (d00001d4 <init_trig+0x38>)
d00001a2:	2600      	movs	r6, #0
d00001a4:	4f0c      	ldr	r7, [pc, #48]	; (d00001d8 <init_trig+0x3c>)
d00001a6:	f504 5800 	add.w	r8, r4, #8192	; 0x2000
d00001aa:	12b5      	asrs	r5, r6, #10
d00001ac:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
d00001b0:	3408      	adds	r4, #8
d00001b2:	f506 76b4 	add.w	r6, r6, #360	; 0x168
d00001b6:	4628      	mov	r0, r5
d00001b8:	4798      	blx	r3
d00001ba:	4602      	mov	r2, r0
d00001bc:	f8d7 30b8 	ldr.w	r3, [r7, #184]	; 0xb8
d00001c0:	4628      	mov	r0, r5
d00001c2:	f844 2c08 	str.w	r2, [r4, #-8]
d00001c6:	4798      	blx	r3
d00001c8:	f844 0c04 	str.w	r0, [r4, #-4]
d00001cc:	4544      	cmp	r4, r8
d00001ce:	d1ec      	bne.n	d00001aa <init_trig+0xe>
d00001d0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00001d4:	d0001d48 	.word	0xd0001d48
d00001d8:	2001f000 	.word	0x2001f000

d00001dc <define_dart>:
d00001dc:	b538      	push	{r3, r4, r5, lr}
d00001de:	22c0      	movs	r2, #192	; 0xc0
d00001e0:	4604      	mov	r4, r0
d00001e2:	2100      	movs	r1, #0
d00001e4:	3068      	adds	r0, #104	; 0x68
d00001e6:	f7ff ff15 	bl	d0000014 <memset>
d00001ea:	4b12      	ldr	r3, [pc, #72]	; (d0000234 <define_dart+0x58>)
d00001ec:	f06f 0131 	mvn.w	r1, #49	; 0x31
d00001f0:	2232      	movs	r2, #50	; 0x32
d00001f2:	f06f 0563 	mvn.w	r5, #99	; 0x63
d00001f6:	2064      	movs	r0, #100	; 0x64
d00001f8:	6723      	str	r3, [r4, #112]	; 0x70
d00001fa:	23c8      	movs	r3, #200	; 0xc8
d00001fc:	6765      	str	r5, [r4, #116]	; 0x74
d00001fe:	f8c4 509c 	str.w	r5, [r4, #156]	; 0x9c
d0000202:	f8c4 0080 	str.w	r0, [r4, #128]	; 0x80
d0000206:	f8c4 0090 	str.w	r0, [r4, #144]	; 0x90
d000020a:	f8c4 10a4 	str.w	r1, [r4, #164]	; 0xa4
d000020e:	f8c4 10cc 	str.w	r1, [r4, #204]	; 0xcc
d0000212:	f8c4 20a8 	str.w	r2, [r4, #168]	; 0xa8
d0000216:	f8c4 20c8 	str.w	r2, [r4, #200]	; 0xc8
d000021a:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d000021e:	f8c4 30b8 	str.w	r3, [r4, #184]	; 0xb8
d0000222:	f8c4 30c4 	str.w	r3, [r4, #196]	; 0xc4
d0000226:	f8c4 30d0 	str.w	r3, [r4, #208]	; 0xd0
d000022a:	e9c4 112f 	strd	r1, r1, [r4, #188]	; 0xbc
d000022e:	e9c4 222c 	strd	r2, r2, [r4, #176]	; 0xb0
d0000232:	bd38      	pop	{r3, r4, r5, pc}
d0000234:	fffffc18 	.word	0xfffffc18

d0000238 <main>:
d0000238:	4a86      	ldr	r2, [pc, #536]	; (d0000454 <main+0x21c>)
d000023a:	20ff      	movs	r0, #255	; 0xff
d000023c:	6813      	ldr	r3, [r2, #0]
d000023e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0000242:	f023 0310 	bic.w	r3, r3, #16
d0000246:	b0f5      	sub	sp, #468	; 0x1d4
d0000248:	2500      	movs	r5, #0
d000024a:	4c83      	ldr	r4, [pc, #524]	; (d0000458 <main+0x220>)
d000024c:	9506      	str	r5, [sp, #24]
d000024e:	9507      	str	r5, [sp, #28]
d0000250:	6013      	str	r3, [r2, #0]
d0000252:	f8d4 30c8 	ldr.w	r3, [r4, #200]	; 0xc8
d0000256:	4798      	blx	r3
d0000258:	4b80      	ldr	r3, [pc, #512]	; (d000045c <main+0x224>)
d000025a:	4881      	ldr	r0, [pc, #516]	; (d0000460 <main+0x228>)
d000025c:	601d      	str	r5, [r3, #0]
d000025e:	68a3      	ldr	r3, [r4, #8]
d0000260:	4798      	blx	r3
d0000262:	68e3      	ldr	r3, [r4, #12]
d0000264:	200a      	movs	r0, #10
d0000266:	4798      	blx	r3
d0000268:	f7ff fedc 	bl	d0000024 <initDisplayBuffers>
d000026c:	4628      	mov	r0, r5
d000026e:	f7ff ff17 	bl	d00000a0 <StopChannel>
d0000272:	2001      	movs	r0, #1
d0000274:	f7ff ff14 	bl	d00000a0 <StopChannel>
d0000278:	2002      	movs	r0, #2
d000027a:	f7ff ff11 	bl	d00000a0 <StopChannel>
d000027e:	2003      	movs	r0, #3
d0000280:	f7ff ff0e 	bl	d00000a0 <StopChannel>
d0000284:	2004      	movs	r0, #4
d0000286:	f7ff ff0b 	bl	d00000a0 <StopChannel>
d000028a:	2005      	movs	r0, #5
d000028c:	f7ff ff08 	bl	d00000a0 <StopChannel>
d0000290:	2006      	movs	r0, #6
d0000292:	f7ff ff05 	bl	d00000a0 <StopChannel>
d0000296:	2007      	movs	r0, #7
d0000298:	f7ff ff02 	bl	d00000a0 <StopChannel>
d000029c:	f7ff ff7e 	bl	d000019c <init_trig>
d00002a0:	f44f 73a0 	mov.w	r3, #320	; 0x140
d00002a4:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00002a8:	f8d4 40e8 	ldr.w	r4, [r4, #232]	; 0xe8
d00002ac:	4619      	mov	r1, r3
d00002ae:	9500      	str	r5, [sp, #0]
d00002b0:	4610      	mov	r0, r2
d00002b2:	47a0      	blx	r4
d00002b4:	4629      	mov	r1, r5
d00002b6:	f44f 7296 	mov.w	r2, #300	; 0x12c
d00002ba:	a829      	add	r0, sp, #164	; 0xa4
d00002bc:	f7ff feaa 	bl	d0000014 <memset>
d00002c0:	a829      	add	r0, sp, #164	; 0xa4
d00002c2:	f7ff ff8b 	bl	d00001dc <define_dart>
d00002c6:	4b67      	ldr	r3, [pc, #412]	; (d0000464 <main+0x22c>)
d00002c8:	932b      	str	r3, [sp, #172]	; 0xac
d00002ca:	4b63      	ldr	r3, [pc, #396]	; (d0000458 <main+0x220>)
d00002cc:	69db      	ldr	r3, [r3, #28]
d00002ce:	4798      	blx	r3
d00002d0:	f010 0002 	ands.w	r0, r0, #2
d00002d4:	f000 80b1 	beq.w	d000043a <main+0x202>
d00002d8:	9b07      	ldr	r3, [sp, #28]
d00002da:	3301      	adds	r3, #1
d00002dc:	2b03      	cmp	r3, #3
d00002de:	9307      	str	r3, [sp, #28]
d00002e0:	f300 80b3 	bgt.w	d000044a <main+0x212>
d00002e4:	4e5c      	ldr	r6, [pc, #368]	; (d0000458 <main+0x220>)
d00002e6:	2000      	movs	r0, #0
d00002e8:	ac09      	add	r4, sp, #36	; 0x24
d00002ea:	25ff      	movs	r5, #255	; 0xff
d00002ec:	f8d6 3118 	ldr.w	r3, [r6, #280]	; 0x118
d00002f0:	4798      	blx	r3
d00002f2:	f8d6 311c 	ldr.w	r3, [r6, #284]	; 0x11c
d00002f6:	2000      	movs	r0, #0
d00002f8:	4798      	blx	r3
d00002fa:	4b5b      	ldr	r3, [pc, #364]	; (d0000468 <main+0x230>)
d00002fc:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
d00002fe:	c407      	stmia	r4!, {r0, r1, r2}
d0000300:	2108      	movs	r1, #8
d0000302:	7023      	strb	r3, [r4, #0]
d0000304:	f8d6 30f8 	ldr.w	r3, [r6, #248]	; 0xf8
d0000308:	aa09      	add	r2, sp, #36	; 0x24
d000030a:	4608      	mov	r0, r1
d000030c:	701d      	strb	r5, [r3, #0]
d000030e:	f8d6 3148 	ldr.w	r3, [r6, #328]	; 0x148
d0000312:	4798      	blx	r3
d0000314:	f8bd 30be 	ldrh.w	r3, [sp, #190]	; 0xbe
d0000318:	3302      	adds	r3, #2
d000031a:	b21a      	sxth	r2, r3
d000031c:	b29b      	uxth	r3, r3
d000031e:	f5b2 6f80 	cmp.w	r2, #1024	; 0x400
d0000322:	f280 808c 	bge.w	d000043e <main+0x206>
d0000326:	f3c3 0309 	ubfx	r3, r3, #0, #10
d000032a:	f8ad 20be 	strh.w	r2, [sp, #190]	; 0xbe
d000032e:	005b      	lsls	r3, r3, #1
d0000330:	1c58      	adds	r0, r3, #1
d0000332:	f8bd 10bc 	ldrh.w	r1, [sp, #188]	; 0xbc
d0000336:	ac29      	add	r4, sp, #164	; 0xa4
d0000338:	4d4c      	ldr	r5, [pc, #304]	; (d000046c <main+0x234>)
d000033a:	f44f 7b7a 	mov.w	fp, #1000	; 0x3e8
d000033e:	f8bd 20c0 	ldrh.w	r2, [sp, #192]	; 0xc0
d0000342:	f3c1 0109 	ubfx	r1, r1, #0, #10
d0000346:	f855 9023 	ldr.w	r9, [r5, r3, lsl #2]
d000034a:	f3c2 0309 	ubfx	r3, r2, #0, #10
d000034e:	004a      	lsls	r2, r1, #1
d0000350:	f9bd 10a6 	ldrsh.w	r1, [sp, #166]	; 0xa6
d0000354:	005b      	lsls	r3, r3, #1
d0000356:	f855 e022 	ldr.w	lr, [r5, r2, lsl #2]
d000035a:	9103      	str	r1, [sp, #12]
d000035c:	f9bd 10aa 	ldrsh.w	r1, [sp, #170]	; 0xaa
d0000360:	f855 c023 	ldr.w	ip, [r5, r3, lsl #2]
d0000364:	9104      	str	r1, [sp, #16]
d0000366:	1c51      	adds	r1, r2, #1
d0000368:	1c5a      	adds	r2, r3, #1
d000036a:	462b      	mov	r3, r5
d000036c:	f855 8020 	ldr.w	r8, [r5, r0, lsl #2]
d0000370:	f853 6022 	ldr.w	r6, [r3, r2, lsl #2]
d0000374:	f9bd 30ae 	ldrsh.w	r3, [sp, #174]	; 0xae
d0000378:	f855 7021 	ldr.w	r7, [r5, r1, lsl #2]
d000037c:	4625      	mov	r5, r4
d000037e:	9305      	str	r3, [sp, #20]
d0000380:	e00f      	b.n	d00003a2 <main+0x16a>
d0000382:	fb93 f3f1 	sdiv	r3, r3, r1
d0000386:	fb0b f202 	mul.w	r2, fp, r2
d000038a:	33a0      	adds	r3, #160	; 0xa0
d000038c:	340c      	adds	r4, #12
d000038e:	3504      	adds	r5, #4
d0000390:	84eb      	strh	r3, [r5, #38]	; 0x26
d0000392:	ab44      	add	r3, sp, #272	; 0x110
d0000394:	fb92 f2f1 	sdiv	r2, r2, r1
d0000398:	429c      	cmp	r4, r3
d000039a:	f102 02f0 	add.w	r2, r2, #240	; 0xf0
d000039e:	84aa      	strh	r2, [r5, #36]	; 0x24
d00003a0:	d033      	beq.n	d000040a <main+0x1d2>
d00003a2:	6f20      	ldr	r0, [r4, #112]	; 0x70
d00003a4:	2301      	movs	r3, #1
d00003a6:	6ea2      	ldr	r2, [r4, #104]	; 0x68
d00003a8:	fb07 f100 	mul.w	r1, r7, r0
d00003ac:	9302      	str	r3, [sp, #8]
d00003ae:	6ee3      	ldr	r3, [r4, #108]	; 0x6c
d00003b0:	fb0e 1103 	mla	r1, lr, r3, r1
d00003b4:	fb07 fa03 	mul.w	sl, r7, r3
d00003b8:	13c9      	asrs	r1, r1, #15
d00003ba:	fb0e a010 	mls	r0, lr, r0, sl
d00003be:	fb01 f309 	mul.w	r3, r1, r9
d00003c2:	13c0      	asrs	r0, r0, #15
d00003c4:	fb01 f108 	mul.w	r1, r1, r8
d00003c8:	fb08 3302 	mla	r3, r8, r2, r3
d00003cc:	fb00 fa06 	mul.w	sl, r0, r6
d00003d0:	13db      	asrs	r3, r3, #15
d00003d2:	fb02 1119 	mls	r1, r2, r9, r1
d00003d6:	fb03 aa0c 	mla	sl, r3, ip, sl
d00003da:	fb03 f206 	mul.w	r2, r3, r6
d00003de:	9b05      	ldr	r3, [sp, #20]
d00003e0:	eb03 31e1 	add.w	r1, r3, r1, asr #15
d00003e4:	9b04      	ldr	r3, [sp, #16]
d00003e6:	fb00 221c 	mls	r2, r0, ip, r2
d00003ea:	9803      	ldr	r0, [sp, #12]
d00003ec:	eb03 33ea 	add.w	r3, r3, sl, asr #15
d00003f0:	2920      	cmp	r1, #32
d00003f2:	eb00 32e2 	add.w	r2, r0, r2, asr #15
d00003f6:	fb0b f303 	mul.w	r3, fp, r3
d00003fa:	dcc2      	bgt.n	d0000382 <main+0x14a>
d00003fc:	2300      	movs	r3, #0
d00003fe:	340c      	adds	r4, #12
d0000400:	3504      	adds	r5, #4
d0000402:	9302      	str	r3, [sp, #8]
d0000404:	ab44      	add	r3, sp, #272	; 0x110
d0000406:	429c      	cmp	r4, r3
d0000408:	d1cb      	bne.n	d00003a2 <main+0x16a>
d000040a:	9b02      	ldr	r3, [sp, #8]
d000040c:	f88d 31cc 	strb.w	r3, [sp, #460]	; 0x1cc
d0000410:	b113      	cbz	r3, d0000418 <main+0x1e0>
d0000412:	a829      	add	r0, sp, #164	; 0xa4
d0000414:	f7ff fe50 	bl	d00000b8 <draw_dart.part.0>
d0000418:	9c06      	ldr	r4, [sp, #24]
d000041a:	4620      	mov	r0, r4
d000041c:	f7ff fe26 	bl	d000006c <ShowBuffer>
d0000420:	f1c4 0201 	rsb	r2, r4, #1
d0000424:	4c0c      	ldr	r4, [pc, #48]	; (d0000458 <main+0x220>)
d0000426:	b2d2      	uxtb	r2, r2
d0000428:	f8d4 30cc 	ldr.w	r3, [r4, #204]	; 0xcc
d000042c:	9206      	str	r2, [sp, #24]
d000042e:	4798      	blx	r3
d0000430:	f8d4 30c4 	ldr.w	r3, [r4, #196]	; 0xc4
d0000434:	2001      	movs	r0, #1
d0000436:	4798      	blx	r3
d0000438:	e747      	b.n	d00002ca <main+0x92>
d000043a:	9007      	str	r0, [sp, #28]
d000043c:	e752      	b.n	d00002e4 <main+0xac>
d000043e:	2200      	movs	r2, #0
d0000440:	2001      	movs	r0, #1
d0000442:	4613      	mov	r3, r2
d0000444:	f8ad 20be 	strh.w	r2, [sp, #190]	; 0xbe
d0000448:	e773      	b.n	d0000332 <main+0xfa>
d000044a:	2007      	movs	r0, #7
d000044c:	b075      	add	sp, #468	; 0x1d4
d000044e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0000452:	bf00      	nop
d0000454:	e000ed14 	.word	0xe000ed14
d0000458:	2001f000 	.word	0x2001f000
d000045c:	d0000498 	.word	0xd0000498
d0000460:	d0000470 	.word	0xd0000470
d0000464:	0bb80000 	.word	0x0bb80000
d0000468:	d0000480 	.word	0xd0000480
d000046c:	d0001d48 	.word	0xd0001d48
d0000470:	6c617544 	.word	0x6c617544
d0000474:	616c5020 	.word	0x616c5020
d0000478:	0d0a0d79 	.word	0x0d0a0d79
d000047c:	0000000a 	.word	0x0000000a
d0000480:	6c6c6548 	.word	0x6c6c6548
d0000484:	6f77206f 	.word	0x6f77206f
d0000488:	21646c72 	.word	0x21646c72
	...

Disassembly of section .init:

d0000490 <_init>:
d0000490:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000492:	bf00      	nop

Disassembly of section .fini:

d0000494 <_fini>:
d0000494:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000496:	bf00      	nop
