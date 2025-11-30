
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d05e0010 <applet_entry>:
d05e0010:	f000 b800 	b.w	d05e0014 <main>

d05e0014 <main>:
d05e0014:	4a20      	ldr	r2, [pc, #128]	; (d05e0098 <main+0x84>)
d05e0016:	2801      	cmp	r0, #1
d05e0018:	6813      	ldr	r3, [r2, #0]
d05e001a:	f023 0310 	bic.w	r3, r3, #16
d05e001e:	b570      	push	{r4, r5, r6, lr}
d05e0020:	6013      	str	r3, [r2, #0]
d05e0022:	b0a6      	sub	sp, #152	; 0x98
d05e0024:	dd27      	ble.n	d05e0076 <main+0x62>
d05e0026:	684e      	ldr	r6, [r1, #4]
d05e0028:	7831      	ldrb	r1, [r6, #0]
d05e002a:	b191      	cbz	r1, d05e0052 <main+0x3e>
d05e002c:	4634      	mov	r4, r6
d05e002e:	4d1b      	ldr	r5, [pc, #108]	; (d05e009c <main+0x88>)
d05e0030:	e002      	b.n	d05e0038 <main+0x24>
d05e0032:	f814 1f01 	ldrb.w	r1, [r4, #1]!
d05e0036:	b161      	cbz	r1, d05e0052 <main+0x3e>
d05e0038:	4628      	mov	r0, r5
d05e003a:	f000 f83d 	bl	d05e00b8 <strchr>
d05e003e:	2800      	cmp	r0, #0
d05e0040:	d1f7      	bne.n	d05e0032 <main+0x1e>
d05e0042:	4b17      	ldr	r3, [pc, #92]	; (d05e00a0 <main+0x8c>)
d05e0044:	4631      	mov	r1, r6
d05e0046:	4817      	ldr	r0, [pc, #92]	; (d05e00a4 <main+0x90>)
d05e0048:	689b      	ldr	r3, [r3, #8]
d05e004a:	4798      	blx	r3
d05e004c:	2001      	movs	r0, #1
d05e004e:	b026      	add	sp, #152	; 0x98
d05e0050:	bd70      	pop	{r4, r5, r6, pc}
d05e0052:	4d13      	ldr	r5, [pc, #76]	; (d05e00a0 <main+0x8c>)
d05e0054:	4669      	mov	r1, sp
d05e0056:	4630      	mov	r0, r6
d05e0058:	f8d5 3088 	ldr.w	r3, [r5, #136]	; 0x88
d05e005c:	4798      	blx	r3
d05e005e:	b180      	cbz	r0, d05e0082 <main+0x6e>
d05e0060:	6eeb      	ldr	r3, [r5, #108]	; 0x6c
d05e0062:	4630      	mov	r0, r6
d05e0064:	4798      	blx	r3
d05e0066:	68ab      	ldr	r3, [r5, #8]
d05e0068:	4604      	mov	r4, r0
d05e006a:	4631      	mov	r1, r6
d05e006c:	b978      	cbnz	r0, d05e008e <main+0x7a>
d05e006e:	480e      	ldr	r0, [pc, #56]	; (d05e00a8 <main+0x94>)
d05e0070:	4798      	blx	r3
d05e0072:	4620      	mov	r0, r4
d05e0074:	e7eb      	b.n	d05e004e <main+0x3a>
d05e0076:	4b0a      	ldr	r3, [pc, #40]	; (d05e00a0 <main+0x8c>)
d05e0078:	480c      	ldr	r0, [pc, #48]	; (d05e00ac <main+0x98>)
d05e007a:	689b      	ldr	r3, [r3, #8]
d05e007c:	4798      	blx	r3
d05e007e:	2001      	movs	r0, #1
d05e0080:	e7e5      	b.n	d05e004e <main+0x3a>
d05e0082:	480b      	ldr	r0, [pc, #44]	; (d05e00b0 <main+0x9c>)
d05e0084:	4631      	mov	r1, r6
d05e0086:	68ab      	ldr	r3, [r5, #8]
d05e0088:	4798      	blx	r3
d05e008a:	2001      	movs	r0, #1
d05e008c:	e7df      	b.n	d05e004e <main+0x3a>
d05e008e:	4809      	ldr	r0, [pc, #36]	; (d05e00b4 <main+0xa0>)
d05e0090:	4798      	blx	r3
d05e0092:	2001      	movs	r0, #1
d05e0094:	e7db      	b.n	d05e004e <main+0x3a>
d05e0096:	bf00      	nop
d05e0098:	e000ed14 	.word	0xe000ed14
d05e009c:	d05e00d4 	.word	0xd05e00d4
d05e00a0:	2001f000 	.word	0x2001f000
d05e00a4:	d05e0194 	.word	0xd05e0194
d05e00a8:	d05e017c 	.word	0xd05e017c
d05e00ac:	d05e011c 	.word	0xd05e011c
d05e00b0:	d05e013c 	.word	0xd05e013c
d05e00b4:	d05e015c 	.word	0xd05e015c

d05e00b8 <strchr>:
d05e00b8:	b2c9      	uxtb	r1, r1
d05e00ba:	4603      	mov	r3, r0
d05e00bc:	f810 2b01 	ldrb.w	r2, [r0], #1
d05e00c0:	b11a      	cbz	r2, d05e00ca <strchr+0x12>
d05e00c2:	428a      	cmp	r2, r1
d05e00c4:	d1f9      	bne.n	d05e00ba <strchr+0x2>
d05e00c6:	4618      	mov	r0, r3
d05e00c8:	4770      	bx	lr
d05e00ca:	2900      	cmp	r1, #0
d05e00cc:	bf18      	it	ne
d05e00ce:	2300      	movne	r3, #0
d05e00d0:	e7f9      	b.n	d05e00c6 <strchr+0xe>
d05e00d2:	0000      	movs	r0, r0
d05e00d4:	64636261 	.word	0x64636261
d05e00d8:	68676665 	.word	0x68676665
d05e00dc:	6c6b6a69 	.word	0x6c6b6a69
d05e00e0:	706f6e6d 	.word	0x706f6e6d
d05e00e4:	74737271 	.word	0x74737271
d05e00e8:	78777675 	.word	0x78777675
d05e00ec:	42417a79 	.word	0x42417a79
d05e00f0:	46454443 	.word	0x46454443
d05e00f4:	4a494847 	.word	0x4a494847
d05e00f8:	4e4d4c4b 	.word	0x4e4d4c4b
d05e00fc:	5251504f 	.word	0x5251504f
d05e0100:	56555453 	.word	0x56555453
d05e0104:	5a595857 	.word	0x5a595857
d05e0108:	33323130 	.word	0x33323130
d05e010c:	37363534 	.word	0x37363534
d05e0110:	c2213938 	.word	0xc2213938
d05e0114:	282524a3 	.word	0x282524a3
d05e0118:	00002e29 	.word	0x00002e29
d05e011c:	67617355 	.word	0x67617355
d05e0120:	6d203a65 	.word	0x6d203a65
d05e0124:	7269646b 	.word	0x7269646b
d05e0128:	656e3c20 	.word	0x656e3c20
d05e012c:	72696477 	.word	0x72696477
d05e0130:	6f746365 	.word	0x6f746365
d05e0134:	0a3e7972 	.word	0x0a3e7972
d05e0138:	00000000 	.word	0x00000000
d05e013c:	65726944 	.word	0x65726944
d05e0140:	726f7463 	.word	0x726f7463
d05e0144:	6c612079 	.word	0x6c612079
d05e0148:	64616572 	.word	0x64616572
d05e014c:	78652079 	.word	0x78652079
d05e0150:	73747369 	.word	0x73747369
d05e0154:	7325203a 	.word	0x7325203a
d05e0158:	0000000a 	.word	0x0000000a
d05e015c:	6c696146 	.word	0x6c696146
d05e0160:	74206465 	.word	0x74206465
d05e0164:	7263206f 	.word	0x7263206f
d05e0168:	65746165 	.word	0x65746165
d05e016c:	72696420 	.word	0x72696420
d05e0170:	6f746365 	.word	0x6f746365
d05e0174:	203a7972 	.word	0x203a7972
d05e0178:	000a7325 	.word	0x000a7325
d05e017c:	65726944 	.word	0x65726944
d05e0180:	726f7463 	.word	0x726f7463
d05e0184:	72632079 	.word	0x72632079
d05e0188:	65746165 	.word	0x65746165
d05e018c:	25203a64 	.word	0x25203a64
d05e0190:	00000a73 	.word	0x00000a73
d05e0194:	61766e49 	.word	0x61766e49
d05e0198:	2064696c 	.word	0x2064696c
d05e019c:	72616863 	.word	0x72616863
d05e01a0:	65746361 	.word	0x65746361
d05e01a4:	69207372 	.word	0x69207372
d05e01a8:	6964206e 	.word	0x6964206e
d05e01ac:	74636572 	.word	0x74636572
d05e01b0:	2079726f 	.word	0x2079726f
d05e01b4:	656d616e 	.word	0x656d616e
d05e01b8:	7325203a 	.word	0x7325203a
d05e01bc:	Address 0x00000000d05e01bc is out of bounds.


Disassembly of section .init:

d05e01c0 <_init>:
d05e01c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e01c2:	bf00      	nop

Disassembly of section .fini:

d05e01c4 <_fini>:
d05e01c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e01c6:	bf00      	nop
