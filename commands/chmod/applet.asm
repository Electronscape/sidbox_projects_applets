
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d05e0010 <applet_entry>:
d05e0010:	f000 b800 	b.w	d05e0014 <main>

d05e0014 <main>:
d05e0014:	2802      	cmp	r0, #2
d05e0016:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0018:	dd4a      	ble.n	d05e00b0 <main+0x9c>
d05e001a:	f06f 4340 	mvn.w	r3, #3221225472	; 0xc0000000
d05e001e:	2200      	movs	r2, #0
d05e0020:	460c      	mov	r4, r1
d05e0022:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
d05e0026:	4403      	add	r3, r0
d05e0028:	4617      	mov	r7, r2
d05e002a:	f04f 0e01 	mov.w	lr, #1
d05e002e:	4e2b      	ldr	r6, [pc, #172]	; (d05e00dc <main+0xc8>)
d05e0030:	f851 5023 	ldr.w	r5, [r1, r3, lsl #2]
d05e0034:	f854 3f04 	ldr.w	r3, [r4, #4]!
d05e0038:	7818      	ldrb	r0, [r3, #0]
d05e003a:	282b      	cmp	r0, #43	; 0x2b
d05e003c:	d001      	beq.n	d05e0042 <main+0x2e>
d05e003e:	282d      	cmp	r0, #45	; 0x2d
d05e0040:	d13f      	bne.n	d05e00c2 <main+0xae>
d05e0042:	7859      	ldrb	r1, [r3, #1]
d05e0044:	b179      	cbz	r1, d05e0066 <main+0x52>
d05e0046:	282b      	cmp	r0, #43	; 0x2b
d05e0048:	f103 0301 	add.w	r3, r3, #1
d05e004c:	d022      	beq.n	d05e0094 <main+0x80>
d05e004e:	f1a1 0064 	sub.w	r0, r1, #100	; 0x64
d05e0052:	b2c0      	uxtb	r0, r0
d05e0054:	2813      	cmp	r0, #19
d05e0056:	d825      	bhi.n	d05e00a4 <main+0x90>
d05e0058:	5c30      	ldrb	r0, [r6, r0]
d05e005a:	b318      	cbz	r0, d05e00a4 <main+0x90>
d05e005c:	f813 1f01 	ldrb.w	r1, [r3, #1]!
d05e0060:	4302      	orrs	r2, r0
d05e0062:	2900      	cmp	r1, #0
d05e0064:	d1f3      	bne.n	d05e004e <main+0x3a>
d05e0066:	f10e 0e01 	add.w	lr, lr, #1
d05e006a:	45e6      	cmp	lr, ip
d05e006c:	d1e2      	bne.n	d05e0034 <main+0x20>
d05e006e:	4e1c      	ldr	r6, [pc, #112]	; (d05e00e0 <main+0xcc>)
d05e0070:	4639      	mov	r1, r7
d05e0072:	4628      	mov	r0, r5
d05e0074:	6ff3      	ldr	r3, [r6, #124]	; 0x7c
d05e0076:	4798      	blx	r3
d05e0078:	68b3      	ldr	r3, [r6, #8]
d05e007a:	4604      	mov	r4, r0
d05e007c:	bb40      	cbnz	r0, d05e00d0 <main+0xbc>
d05e007e:	4629      	mov	r1, r5
d05e0080:	4818      	ldr	r0, [pc, #96]	; (d05e00e4 <main+0xd0>)
d05e0082:	4798      	blx	r3
d05e0084:	4620      	mov	r0, r4
d05e0086:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e0088:	f813 1f01 	ldrb.w	r1, [r3, #1]!
d05e008c:	4302      	orrs	r2, r0
d05e008e:	4307      	orrs	r7, r0
d05e0090:	2900      	cmp	r1, #0
d05e0092:	d0e8      	beq.n	d05e0066 <main+0x52>
d05e0094:	f1a1 0064 	sub.w	r0, r1, #100	; 0x64
d05e0098:	b2c0      	uxtb	r0, r0
d05e009a:	2813      	cmp	r0, #19
d05e009c:	d802      	bhi.n	d05e00a4 <main+0x90>
d05e009e:	5c30      	ldrb	r0, [r6, r0]
d05e00a0:	2800      	cmp	r0, #0
d05e00a2:	d1f1      	bne.n	d05e0088 <main+0x74>
d05e00a4:	4b0e      	ldr	r3, [pc, #56]	; (d05e00e0 <main+0xcc>)
d05e00a6:	4810      	ldr	r0, [pc, #64]	; (d05e00e8 <main+0xd4>)
d05e00a8:	689b      	ldr	r3, [r3, #8]
d05e00aa:	4798      	blx	r3
d05e00ac:	2001      	movs	r0, #1
d05e00ae:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e00b0:	4c0b      	ldr	r4, [pc, #44]	; (d05e00e0 <main+0xcc>)
d05e00b2:	480e      	ldr	r0, [pc, #56]	; (d05e00ec <main+0xd8>)
d05e00b4:	68a3      	ldr	r3, [r4, #8]
d05e00b6:	4798      	blx	r3
d05e00b8:	68a3      	ldr	r3, [r4, #8]
d05e00ba:	480d      	ldr	r0, [pc, #52]	; (d05e00f0 <main+0xdc>)
d05e00bc:	4798      	blx	r3
d05e00be:	2001      	movs	r0, #1
d05e00c0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e00c2:	4a07      	ldr	r2, [pc, #28]	; (d05e00e0 <main+0xcc>)
d05e00c4:	4619      	mov	r1, r3
d05e00c6:	480b      	ldr	r0, [pc, #44]	; (d05e00f4 <main+0xe0>)
d05e00c8:	6893      	ldr	r3, [r2, #8]
d05e00ca:	4798      	blx	r3
d05e00cc:	2001      	movs	r0, #1
d05e00ce:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e00d0:	4602      	mov	r2, r0
d05e00d2:	4629      	mov	r1, r5
d05e00d4:	4808      	ldr	r0, [pc, #32]	; (d05e00f8 <main+0xe4>)
d05e00d6:	4798      	blx	r3
d05e00d8:	2001      	movs	r0, #1
d05e00da:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e00dc:	d05e01d8 	.word	0xd05e01d8
d05e00e0:	2001f000 	.word	0x2001f000
d05e00e4:	d05e01c0 	.word	0xd05e01c0
d05e00e8:	d05e0184 	.word	0xd05e0184
d05e00ec:	d05e00fc 	.word	0xd05e00fc
d05e00f0:	d05e0128 	.word	0xd05e0128
d05e00f4:	d05e016c 	.word	0xd05e016c
d05e00f8:	d05e019c 	.word	0xd05e019c
d05e00fc:	550a0d20 	.word	0x550a0d20
d05e0100:	65676173 	.word	0x65676173
d05e0104:	6863203a 	.word	0x6863203a
d05e0108:	20646f6d 	.word	0x20646f6d
d05e010c:	20722b5b 	.word	0x20722b5b
d05e0110:	2e20772d 	.word	0x2e20772d
d05e0114:	205d2e2e 	.word	0x205d2e2e
d05e0118:	6c69663c 	.word	0x6c69663c
d05e011c:	6d616e65 	.word	0x6d616e65
d05e0120:	0a0d3e65 	.word	0x0a0d3e65
d05e0124:	00000000 	.word	0x00000000
d05e0128:	67616c46 	.word	0x67616c46
d05e012c:	72203a73 	.word	0x72203a73
d05e0130:	6165723d 	.word	0x6165723d
d05e0134:	77202c64 	.word	0x77202c64
d05e0138:	6972773d 	.word	0x6972773d
d05e013c:	202c6574 	.word	0x202c6574
d05e0140:	78653d65 	.word	0x78653d65
d05e0144:	202c6365 	.word	0x202c6365
d05e0148:	65643d64 	.word	0x65643d64
d05e014c:	6574656c 	.word	0x6574656c
d05e0150:	3d73202c 	.word	0x3d73202c
d05e0154:	69726373 	.word	0x69726373
d05e0158:	202c7470 	.word	0x202c7470
d05e015c:	69683d68 	.word	0x69683d68
d05e0160:	6e656464 	.word	0x6e656464
d05e0164:	0d200a0d 	.word	0x0d200a0d
d05e0168:	0000000a 	.word	0x0000000a
d05e016c:	490a0d20 	.word	0x490a0d20
d05e0170:	6c61766e 	.word	0x6c61766e
d05e0174:	66206469 	.word	0x66206469
d05e0178:	3a67616c 	.word	0x3a67616c
d05e017c:	0d732520 	.word	0x0d732520
d05e0180:	0000000a 	.word	0x0000000a
d05e0184:	550a0d20 	.word	0x550a0d20
d05e0188:	6f6e6b6e 	.word	0x6f6e6b6e
d05e018c:	66206e77 	.word	0x66206e77
d05e0190:	3a67616c 	.word	0x3a67616c
d05e0194:	0d632520 	.word	0x0d632520
d05e0198:	0000000a 	.word	0x0000000a
d05e019c:	630a0d20 	.word	0x630a0d20
d05e01a0:	646f6d68 	.word	0x646f6d68
d05e01a4:	69616620 	.word	0x69616620
d05e01a8:	2064656c 	.word	0x2064656c
d05e01ac:	203a6e6f 	.word	0x203a6e6f
d05e01b0:	28207325 	.word	0x28207325
d05e01b4:	65646f63 	.word	0x65646f63
d05e01b8:	756c2520 	.word	0x756c2520
d05e01bc:	000a0d29 	.word	0x000a0d29
d05e01c0:	630a0d20 	.word	0x630a0d20
d05e01c4:	646f6d68 	.word	0x646f6d68
d05e01c8:	64707520 	.word	0x64707520
d05e01cc:	64657461 	.word	0x64657461
d05e01d0:	7325203a 	.word	0x7325203a
d05e01d4:	00000a0d 	.word	0x00000a0d

d05e01d8 <CSWTCH.6>:
d05e01d8:	00000408 00000020 00000000 10010000     .... ...........
d05e01e8:	02000000                                ....

Disassembly of section .init:

d05e01ec <_init>:
d05e01ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e01ee:	bf00      	nop

Disassembly of section .fini:

d05e01f0 <_fini>:
d05e01f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e01f2:	bf00      	nop
