
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d05e0010 <applet_entry>:
d05e0010:	f000 b800 	b.w	d05e0014 <main>

d05e0014 <main>:
d05e0014:	4a3e      	ldr	r2, [pc, #248]	; (d05e0110 <main+0xfc>)
d05e0016:	2801      	cmp	r0, #1
d05e0018:	6813      	ldr	r3, [r2, #0]
d05e001a:	f023 0310 	bic.w	r3, r3, #16
d05e001e:	b570      	push	{r4, r5, r6, lr}
d05e0020:	6013      	str	r3, [r2, #0]
d05e0022:	b0a6      	sub	sp, #152	; 0x98
d05e0024:	dd42      	ble.n	d05e00ac <main+0x98>
d05e0026:	684b      	ldr	r3, [r1, #4]
d05e0028:	781a      	ldrb	r2, [r3, #0]
d05e002a:	2a3f      	cmp	r2, #63	; 0x3f
d05e002c:	d03b      	beq.n	d05e00a6 <main+0x92>
d05e002e:	2600      	movs	r6, #0
d05e0030:	1f0b      	subs	r3, r1, #4
d05e0032:	4635      	mov	r5, r6
d05e0034:	eb03 0480 	add.w	r4, r3, r0, lsl #2
d05e0038:	e008      	b.n	d05e004c <main+0x38>
d05e003a:	785a      	ldrb	r2, [r3, #1]
d05e003c:	2a66      	cmp	r2, #102	; 0x66
d05e003e:	d10a      	bne.n	d05e0056 <main+0x42>
d05e0040:	789a      	ldrb	r2, [r3, #2]
d05e0042:	b942      	cbnz	r2, d05e0056 <main+0x42>
d05e0044:	428c      	cmp	r4, r1
d05e0046:	f04f 0501 	mov.w	r5, #1
d05e004a:	d007      	beq.n	d05e005c <main+0x48>
d05e004c:	f851 3f04 	ldr.w	r3, [r1, #4]!
d05e0050:	781a      	ldrb	r2, [r3, #0]
d05e0052:	2a2d      	cmp	r2, #45	; 0x2d
d05e0054:	d0f1      	beq.n	d05e003a <main+0x26>
d05e0056:	428c      	cmp	r4, r1
d05e0058:	461e      	mov	r6, r3
d05e005a:	d1f7      	bne.n	d05e004c <main+0x38>
d05e005c:	2e00      	cmp	r6, #0
d05e005e:	d041      	beq.n	d05e00e4 <main+0xd0>
d05e0060:	4c2c      	ldr	r4, [pc, #176]	; (d05e0114 <main+0x100>)
d05e0062:	4669      	mov	r1, sp
d05e0064:	4630      	mov	r0, r6
d05e0066:	f8d4 3088 	ldr.w	r3, [r4, #136]	; 0x88
d05e006a:	4798      	blx	r3
d05e006c:	2800      	cmp	r0, #0
d05e006e:	d133      	bne.n	d05e00d8 <main+0xc4>
d05e0070:	f89d 3008 	ldrb.w	r3, [sp, #8]
d05e0074:	f013 0110 	ands.w	r1, r3, #16
d05e0078:	d129      	bne.n	d05e00ce <main+0xba>
d05e007a:	07db      	lsls	r3, r3, #31
d05e007c:	d507      	bpl.n	d05e008e <main+0x7a>
d05e007e:	2d00      	cmp	r5, #0
d05e0080:	d041      	beq.n	d05e0106 <main+0xf2>
d05e0082:	6fe3      	ldr	r3, [r4, #124]	; 0x7c
d05e0084:	2201      	movs	r2, #1
d05e0086:	4630      	mov	r0, r6
d05e0088:	4798      	blx	r3
d05e008a:	2800      	cmp	r0, #0
d05e008c:	d130      	bne.n	d05e00f0 <main+0xdc>
d05e008e:	4c21      	ldr	r4, [pc, #132]	; (d05e0114 <main+0x100>)
d05e0090:	4630      	mov	r0, r6
d05e0092:	f8d4 3080 	ldr.w	r3, [r4, #128]	; 0x80
d05e0096:	4798      	blx	r3
d05e0098:	2800      	cmp	r0, #0
d05e009a:	d12e      	bne.n	d05e00fa <main+0xe6>
d05e009c:	4605      	mov	r5, r0
d05e009e:	68a3      	ldr	r3, [r4, #8]
d05e00a0:	481d      	ldr	r0, [pc, #116]	; (d05e0118 <main+0x104>)
d05e00a2:	4798      	blx	r3
d05e00a4:	e010      	b.n	d05e00c8 <main+0xb4>
d05e00a6:	785b      	ldrb	r3, [r3, #1]
d05e00a8:	2b00      	cmp	r3, #0
d05e00aa:	d1c0      	bne.n	d05e002e <main+0x1a>
d05e00ac:	4c19      	ldr	r4, [pc, #100]	; (d05e0114 <main+0x100>)
d05e00ae:	2500      	movs	r5, #0
d05e00b0:	481a      	ldr	r0, [pc, #104]	; (d05e011c <main+0x108>)
d05e00b2:	68a3      	ldr	r3, [r4, #8]
d05e00b4:	4798      	blx	r3
d05e00b6:	68a3      	ldr	r3, [r4, #8]
d05e00b8:	4819      	ldr	r0, [pc, #100]	; (d05e0120 <main+0x10c>)
d05e00ba:	4798      	blx	r3
d05e00bc:	68a3      	ldr	r3, [r4, #8]
d05e00be:	4819      	ldr	r0, [pc, #100]	; (d05e0124 <main+0x110>)
d05e00c0:	4798      	blx	r3
d05e00c2:	68a3      	ldr	r3, [r4, #8]
d05e00c4:	4818      	ldr	r0, [pc, #96]	; (d05e0128 <main+0x114>)
d05e00c6:	4798      	blx	r3
d05e00c8:	4628      	mov	r0, r5
d05e00ca:	b026      	add	sp, #152	; 0x98
d05e00cc:	bd70      	pop	{r4, r5, r6, pc}
d05e00ce:	68a3      	ldr	r3, [r4, #8]
d05e00d0:	2501      	movs	r5, #1
d05e00d2:	4816      	ldr	r0, [pc, #88]	; (d05e012c <main+0x118>)
d05e00d4:	4798      	blx	r3
d05e00d6:	e7f7      	b.n	d05e00c8 <main+0xb4>
d05e00d8:	4601      	mov	r1, r0
d05e00da:	68a3      	ldr	r3, [r4, #8]
d05e00dc:	4814      	ldr	r0, [pc, #80]	; (d05e0130 <main+0x11c>)
d05e00de:	2501      	movs	r5, #1
d05e00e0:	4798      	blx	r3
d05e00e2:	e7f1      	b.n	d05e00c8 <main+0xb4>
d05e00e4:	4b0b      	ldr	r3, [pc, #44]	; (d05e0114 <main+0x100>)
d05e00e6:	2501      	movs	r5, #1
d05e00e8:	4812      	ldr	r0, [pc, #72]	; (d05e0134 <main+0x120>)
d05e00ea:	689b      	ldr	r3, [r3, #8]
d05e00ec:	4798      	blx	r3
d05e00ee:	e7eb      	b.n	d05e00c8 <main+0xb4>
d05e00f0:	4601      	mov	r1, r0
d05e00f2:	68a3      	ldr	r3, [r4, #8]
d05e00f4:	4810      	ldr	r0, [pc, #64]	; (d05e0138 <main+0x124>)
d05e00f6:	4798      	blx	r3
d05e00f8:	e7e6      	b.n	d05e00c8 <main+0xb4>
d05e00fa:	4601      	mov	r1, r0
d05e00fc:	68a3      	ldr	r3, [r4, #8]
d05e00fe:	480f      	ldr	r0, [pc, #60]	; (d05e013c <main+0x128>)
d05e0100:	2501      	movs	r5, #1
d05e0102:	4798      	blx	r3
d05e0104:	e7e0      	b.n	d05e00c8 <main+0xb4>
d05e0106:	68a3      	ldr	r3, [r4, #8]
d05e0108:	2501      	movs	r5, #1
d05e010a:	480d      	ldr	r0, [pc, #52]	; (d05e0140 <main+0x12c>)
d05e010c:	4798      	blx	r3
d05e010e:	e7db      	b.n	d05e00c8 <main+0xb4>
d05e0110:	e000ed14 	.word	0xe000ed14
d05e0114:	2001f000 	.word	0x2001f000
d05e0118:	d05e02d0 	.word	0xd05e02d0
d05e011c:	d05e0144 	.word	0xd05e0144
d05e0120:	d05e014c 	.word	0xd05e014c
d05e0124:	d05e0190 	.word	0xd05e0190
d05e0128:	d05e01d4 	.word	0xd05e01d4
d05e012c:	d05e0238 	.word	0xd05e0238
d05e0130:	d05e0218 	.word	0xd05e0218
d05e0134:	d05e01f8 	.word	0xd05e01f8
d05e0138:	d05e0288 	.word	0xd05e0288
d05e013c:	d05e02b4 	.word	0xd05e02b4
d05e0140:	d05e025c 	.word	0xd05e025c
d05e0144:	67617355 	.word	0x67617355
d05e0148:	000a3a65 	.word	0x000a3a65
d05e014c:	65642020 	.word	0x65642020
d05e0150:	6574656c 	.word	0x6574656c
d05e0154:	69663c20 	.word	0x69663c20
d05e0158:	616e656c 	.word	0x616e656c
d05e015c:	203e656d 	.word	0x203e656d
d05e0160:	20202020 	.word	0x20202020
d05e0164:	202d2020 	.word	0x202d2020
d05e0168:	656c6564 	.word	0x656c6564
d05e016c:	66206574 	.word	0x66206574
d05e0170:	20656c69 	.word	0x20656c69
d05e0174:	69616628 	.word	0x69616628
d05e0178:	6f20736c 	.word	0x6f20736c
d05e017c:	6968206e 	.word	0x6968206e
d05e0180:	6e656464 	.word	0x6e656464
d05e0184:	6165722f 	.word	0x6165722f
d05e0188:	6c6e6f64 	.word	0x6c6e6f64
d05e018c:	000a2979 	.word	0x000a2979
d05e0190:	65642020 	.word	0x65642020
d05e0194:	6574656c 	.word	0x6574656c
d05e0198:	20662d20 	.word	0x20662d20
d05e019c:	6c69663c 	.word	0x6c69663c
d05e01a0:	6d616e65 	.word	0x6d616e65
d05e01a4:	20203e65 	.word	0x20203e65
d05e01a8:	202d2020 	.word	0x202d2020
d05e01ac:	63726f66 	.word	0x63726f66
d05e01b0:	65642065 	.word	0x65642065
d05e01b4:	6574656c 	.word	0x6574656c
d05e01b8:	67692820 	.word	0x67692820
d05e01bc:	65726f6e 	.word	0x65726f6e
d05e01c0:	69682073 	.word	0x69682073
d05e01c4:	6e656464 	.word	0x6e656464
d05e01c8:	6165722f 	.word	0x6165722f
d05e01cc:	6c6e6f64 	.word	0x6c6e6f64
d05e01d0:	000a2979 	.word	0x000a2979
d05e01d4:	65746f4e 	.word	0x65746f4e
d05e01d8:	6143203a 	.word	0x6143203a
d05e01dc:	746f6e6e 	.word	0x746f6e6e
d05e01e0:	6c656420 	.word	0x6c656420
d05e01e4:	20657465 	.word	0x20657465
d05e01e8:	65726964 	.word	0x65726964
d05e01ec:	726f7463 	.word	0x726f7463
d05e01f0:	2e736569 	.word	0x2e736569
d05e01f4:	0000000a 	.word	0x0000000a
d05e01f8:	67617355 	.word	0x67617355
d05e01fc:	64203a65 	.word	0x64203a65
d05e0200:	74656c65 	.word	0x74656c65
d05e0204:	2d5b2065 	.word	0x2d5b2065
d05e0208:	66205d66 	.word	0x66205d66
d05e020c:	6e656c69 	.word	0x6e656c69
d05e0210:	0a656d61 	.word	0x0a656d61
d05e0214:	00000000 	.word	0x00000000
d05e0218:	656c6946 	.word	0x656c6946
d05e021c:	746f6e20 	.word	0x746f6e20
d05e0220:	756f6620 	.word	0x756f6620
d05e0224:	6f20646e 	.word	0x6f20646e
d05e0228:	72652072 	.word	0x72652072
d05e022c:	20726f72 	.word	0x20726f72
d05e0230:	0a756c25 	.word	0x0a756c25
d05e0234:	00000000 	.word	0x00000000
d05e0238:	6f727245 	.word	0x6f727245
d05e023c:	43203a72 	.word	0x43203a72
d05e0240:	6f6e6e61 	.word	0x6f6e6e61
d05e0244:	65642074 	.word	0x65642074
d05e0248:	6574656c 	.word	0x6574656c
d05e024c:	72696420 	.word	0x72696420
d05e0250:	6f746365 	.word	0x6f746365
d05e0254:	73656972 	.word	0x73656972
d05e0258:	0000000a 	.word	0x0000000a
d05e025c:	656c6946 	.word	0x656c6946
d05e0260:	20736920 	.word	0x20736920
d05e0264:	64616572 	.word	0x64616572
d05e0268:	6c6e6f2d 	.word	0x6c6e6f2d
d05e026c:	55202e79 	.word	0x55202e79
d05e0270:	2d206573 	.word	0x2d206573
d05e0274:	6f742066 	.word	0x6f742066
d05e0278:	726f6620 	.word	0x726f6620
d05e027c:	64206563 	.word	0x64206563
d05e0280:	74656c65 	.word	0x74656c65
d05e0284:	000a2e65 	.word	0x000a2e65
d05e0288:	6c696146 	.word	0x6c696146
d05e028c:	74206465 	.word	0x74206465
d05e0290:	6c63206f 	.word	0x6c63206f
d05e0294:	20726165 	.word	0x20726165
d05e0298:	64616572 	.word	0x64616572
d05e029c:	6c6e6f2d 	.word	0x6c6e6f2d
d05e02a0:	74612079 	.word	0x74612079
d05e02a4:	62697274 	.word	0x62697274
d05e02a8:	3a657475 	.word	0x3a657475
d05e02ac:	756c2520 	.word	0x756c2520
d05e02b0:	0000000a 	.word	0x0000000a
d05e02b4:	6c696146 	.word	0x6c696146
d05e02b8:	74206465 	.word	0x74206465
d05e02bc:	6564206f 	.word	0x6564206f
d05e02c0:	6574656c 	.word	0x6574656c
d05e02c4:	6c696620 	.word	0x6c696620
d05e02c8:	25203a65 	.word	0x25203a65
d05e02cc:	000a756c 	.word	0x000a756c
d05e02d0:	656c6946 	.word	0x656c6946
d05e02d4:	6c656420 	.word	0x6c656420
d05e02d8:	64657465 	.word	0x64657465
d05e02dc:	63757320 	.word	0x63757320
d05e02e0:	73736563 	.word	0x73736563
d05e02e4:	6c6c7566 	.word	0x6c6c7566
d05e02e8:	000a2e79 	.word	0x000a2e79

Disassembly of section .init:

d05e02ec <_init>:
d05e02ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e02ee:	bf00      	nop

Disassembly of section .fini:

d05e02f0 <_fini>:
d05e02f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e02f2:	bf00      	nop
