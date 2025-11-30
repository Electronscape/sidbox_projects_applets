
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d05e0010 <applet_entry>:
d05e0010:	f000 b800 	b.w	d05e0014 <main>

d05e0014 <main>:
d05e0014:	b570      	push	{r4, r5, r6, lr}
d05e0016:	4c28      	ldr	r4, [pc, #160]	; (d05e00b8 <main+0xa4>)
d05e0018:	2802      	cmp	r0, #2
d05e001a:	b0a6      	sub	sp, #152	; 0x98
d05e001c:	6822      	ldr	r2, [r4, #0]
d05e001e:	f022 0210 	bic.w	r2, r2, #16
d05e0022:	6022      	str	r2, [r4, #0]
d05e0024:	dd31      	ble.n	d05e008a <main+0x76>
d05e0026:	684e      	ldr	r6, [r1, #4]
d05e0028:	460b      	mov	r3, r1
d05e002a:	4d24      	ldr	r5, [pc, #144]	; (d05e00bc <main+0xa8>)
d05e002c:	4669      	mov	r1, sp
d05e002e:	4630      	mov	r0, r6
d05e0030:	689c      	ldr	r4, [r3, #8]
d05e0032:	f8d5 2088 	ldr.w	r2, [r5, #136]	; 0x88
d05e0036:	4790      	blx	r2
d05e0038:	bb68      	cbnz	r0, d05e0096 <main+0x82>
d05e003a:	212f      	movs	r1, #47	; 0x2f
d05e003c:	4620      	mov	r0, r4
d05e003e:	f000 f84d 	bl	d05e00dc <strchr>
d05e0042:	b9d8      	cbnz	r0, d05e007c <main+0x68>
d05e0044:	215c      	movs	r1, #92	; 0x5c
d05e0046:	4620      	mov	r0, r4
d05e0048:	f000 f848 	bl	d05e00dc <strchr>
d05e004c:	b9b0      	cbnz	r0, d05e007c <main+0x68>
d05e004e:	f8d5 3088 	ldr.w	r3, [r5, #136]	; 0x88
d05e0052:	4669      	mov	r1, sp
d05e0054:	4620      	mov	r0, r4
d05e0056:	4798      	blx	r3
d05e0058:	68ab      	ldr	r3, [r5, #8]
d05e005a:	b310      	cbz	r0, d05e00a2 <main+0x8e>
d05e005c:	4622      	mov	r2, r4
d05e005e:	4631      	mov	r1, r6
d05e0060:	4817      	ldr	r0, [pc, #92]	; (d05e00c0 <main+0xac>)
d05e0062:	4798      	blx	r3
d05e0064:	4621      	mov	r1, r4
d05e0066:	f8d5 3084 	ldr.w	r3, [r5, #132]	; 0x84
d05e006a:	4630      	mov	r0, r6
d05e006c:	4798      	blx	r3
d05e006e:	68ab      	ldr	r3, [r5, #8]
d05e0070:	4604      	mov	r4, r0
d05e0072:	b9d8      	cbnz	r0, d05e00ac <main+0x98>
d05e0074:	4813      	ldr	r0, [pc, #76]	; (d05e00c4 <main+0xb0>)
d05e0076:	4798      	blx	r3
d05e0078:	4620      	mov	r0, r4
d05e007a:	e004      	b.n	d05e0086 <main+0x72>
d05e007c:	4b0f      	ldr	r3, [pc, #60]	; (d05e00bc <main+0xa8>)
d05e007e:	4812      	ldr	r0, [pc, #72]	; (d05e00c8 <main+0xb4>)
d05e0080:	689b      	ldr	r3, [r3, #8]
d05e0082:	4798      	blx	r3
d05e0084:	2006      	movs	r0, #6
d05e0086:	b026      	add	sp, #152	; 0x98
d05e0088:	bd70      	pop	{r4, r5, r6, pc}
d05e008a:	4b0c      	ldr	r3, [pc, #48]	; (d05e00bc <main+0xa8>)
d05e008c:	480f      	ldr	r0, [pc, #60]	; (d05e00cc <main+0xb8>)
d05e008e:	689b      	ldr	r3, [r3, #8]
d05e0090:	4798      	blx	r3
d05e0092:	2001      	movs	r0, #1
d05e0094:	e7f7      	b.n	d05e0086 <main+0x72>
d05e0096:	480e      	ldr	r0, [pc, #56]	; (d05e00d0 <main+0xbc>)
d05e0098:	4631      	mov	r1, r6
d05e009a:	68ab      	ldr	r3, [r5, #8]
d05e009c:	4798      	blx	r3
d05e009e:	2004      	movs	r0, #4
d05e00a0:	e7f1      	b.n	d05e0086 <main+0x72>
d05e00a2:	480c      	ldr	r0, [pc, #48]	; (d05e00d4 <main+0xc0>)
d05e00a4:	4621      	mov	r1, r4
d05e00a6:	4798      	blx	r3
d05e00a8:	2003      	movs	r0, #3
d05e00aa:	e7ec      	b.n	d05e0086 <main+0x72>
d05e00ac:	4601      	mov	r1, r0
d05e00ae:	480a      	ldr	r0, [pc, #40]	; (d05e00d8 <main+0xc4>)
d05e00b0:	4798      	blx	r3
d05e00b2:	2002      	movs	r0, #2
d05e00b4:	e7e7      	b.n	d05e0086 <main+0x72>
d05e00b6:	bf00      	nop
d05e00b8:	e000ed14 	.word	0xe000ed14
d05e00bc:	2001f000 	.word	0x2001f000
d05e00c0:	d05e0184 	.word	0xd05e0184
d05e00c4:	d05e01b8 	.word	0xd05e01b8
d05e00c8:	d05e0134 	.word	0xd05e0134
d05e00cc:	d05e00f8 	.word	0xd05e00f8
d05e00d0:	d05e011c 	.word	0xd05e011c
d05e00d4:	d05e0168 	.word	0xd05e0168
d05e00d8:	d05e0198 	.word	0xd05e0198

d05e00dc <strchr>:
d05e00dc:	b2c9      	uxtb	r1, r1
d05e00de:	4603      	mov	r3, r0
d05e00e0:	f810 2b01 	ldrb.w	r2, [r0], #1
d05e00e4:	b11a      	cbz	r2, d05e00ee <strchr+0x12>
d05e00e6:	428a      	cmp	r2, r1
d05e00e8:	d1f9      	bne.n	d05e00de <strchr+0x2>
d05e00ea:	4618      	mov	r0, r3
d05e00ec:	4770      	bx	lr
d05e00ee:	2900      	cmp	r1, #0
d05e00f0:	bf18      	it	ne
d05e00f2:	2300      	movne	r3, #0
d05e00f4:	e7f9      	b.n	d05e00ea <strchr+0xe>
d05e00f6:	0000      	movs	r0, r0
d05e00f8:	67617355 	.word	0x67617355
d05e00fc:	72203a65 	.word	0x72203a65
d05e0100:	6d616e65 	.word	0x6d616e65
d05e0104:	6f3c2065 	.word	0x6f3c2065
d05e0108:	616e646c 	.word	0x616e646c
d05e010c:	203e656d 	.word	0x203e656d
d05e0110:	77656e3c 	.word	0x77656e3c
d05e0114:	656d616e 	.word	0x656d616e
d05e0118:	00000a3e 	.word	0x00000a3e
d05e011c:	72756f53 	.word	0x72756f53
d05e0120:	6e206563 	.word	0x6e206563
d05e0124:	6620746f 	.word	0x6620746f
d05e0128:	646e756f 	.word	0x646e756f
d05e012c:	7325203a 	.word	0x7325203a
d05e0130:	0000000a 	.word	0x0000000a
d05e0134:	6f727245 	.word	0x6f727245
d05e0138:	44203a72 	.word	0x44203a72
d05e013c:	69747365 	.word	0x69747365
d05e0140:	6974616e 	.word	0x6974616e
d05e0144:	6d206e6f 	.word	0x6d206e6f
d05e0148:	20747375 	.word	0x20747375
d05e014c:	20746f6e 	.word	0x20746f6e
d05e0150:	6c636e69 	.word	0x6c636e69
d05e0154:	20656475 	.word	0x20656475
d05e0158:	646c6f66 	.word	0x646c6f66
d05e015c:	70207265 	.word	0x70207265
d05e0160:	2e687461 	.word	0x2e687461
d05e0164:	0000000a 	.word	0x0000000a
d05e0168:	67726154 	.word	0x67726154
d05e016c:	61207465 	.word	0x61207465
d05e0170:	6165726c 	.word	0x6165726c
d05e0174:	65207964 	.word	0x65207964
d05e0178:	74736978 	.word	0x74736978
d05e017c:	25203a73 	.word	0x25203a73
d05e0180:	00000a73 	.word	0x00000a73
d05e0184:	616e6552 	.word	0x616e6552
d05e0188:	676e696d 	.word	0x676e696d
d05e018c:	7325203a 	.word	0x7325203a
d05e0190:	203e2d20 	.word	0x203e2d20
d05e0194:	000a7325 	.word	0x000a7325
d05e0198:	616e6552 	.word	0x616e6552
d05e019c:	6620656d 	.word	0x6620656d
d05e01a0:	656c6961 	.word	0x656c6961
d05e01a4:	69772064 	.word	0x69772064
d05e01a8:	63206874 	.word	0x63206874
d05e01ac:	3a65646f 	.word	0x3a65646f
d05e01b0:	756c2520 	.word	0x756c2520
d05e01b4:	0000000a 	.word	0x0000000a
d05e01b8:	616e6552 	.word	0x616e6552
d05e01bc:	7320656d 	.word	0x7320656d
d05e01c0:	65636375 	.word	0x65636375
d05e01c4:	75667373 	.word	0x75667373
d05e01c8:	000a2e6c 	.word	0x000a2e6c

Disassembly of section .init:

d05e01cc <_init>:
d05e01cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e01ce:	bf00      	nop

Disassembly of section .fini:

d05e01d0 <_fini>:
d05e01d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e01d2:	bf00      	nop
