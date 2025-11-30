
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d05e0010 <applet_entry>:
d05e0010:	f000 b87c 	b.w	d05e010c <main>

d05e0014 <_sbrk>:
d05e0014:	4904      	ldr	r1, [pc, #16]	; (d05e0028 <_sbrk+0x14>)
d05e0016:	4a05      	ldr	r2, [pc, #20]	; (d05e002c <_sbrk+0x18>)
d05e0018:	680b      	ldr	r3, [r1, #0]
d05e001a:	2b00      	cmp	r3, #0
d05e001c:	bf08      	it	eq
d05e001e:	4613      	moveq	r3, r2
d05e0020:	181a      	adds	r2, r3, r0
d05e0022:	4618      	mov	r0, r3
d05e0024:	600a      	str	r2, [r1, #0]
d05e0026:	4770      	bx	lr
d05e0028:	d05e102c 	.word	0xd05e102c
d05e002c:	d05e1045 	.word	0xd05e1045

d05e0030 <print_hex_line>:
d05e0030:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05e0034:	b0a0      	sub	sp, #128	; 0x80
d05e0036:	4613      	mov	r3, r2
d05e0038:	4606      	mov	r6, r0
d05e003a:	460f      	mov	r7, r1
d05e003c:	4668      	mov	r0, sp
d05e003e:	4a2c      	ldr	r2, [pc, #176]	; (d05e00f0 <print_hex_line+0xc0>)
d05e0040:	2180      	movs	r1, #128	; 0x80
d05e0042:	2500      	movs	r5, #0
d05e0044:	240b      	movs	r4, #11
d05e0046:	f8df 80b8 	ldr.w	r8, [pc, #184]	; d05e0100 <print_hex_line+0xd0>
d05e004a:	f8df 90b8 	ldr.w	r9, [pc, #184]	; d05e0104 <print_hex_line+0xd4>
d05e004e:	f000 f97f 	bl	d05e0350 <sniprintf>
d05e0052:	f8df a0b4 	ldr.w	sl, [pc, #180]	; d05e0108 <print_hex_line+0xd8>
d05e0056:	e009      	b.n	d05e006c <print_hex_line+0x3c>
d05e0058:	5d73      	ldrb	r3, [r6, r5]
d05e005a:	464a      	mov	r2, r9
d05e005c:	f000 f978 	bl	d05e0350 <sniprintf>
d05e0060:	2d07      	cmp	r5, #7
d05e0062:	4404      	add	r4, r0
d05e0064:	d00e      	beq.n	d05e0084 <print_hex_line+0x54>
d05e0066:	2d0f      	cmp	r5, #15
d05e0068:	d015      	beq.n	d05e0096 <print_hex_line+0x66>
d05e006a:	3501      	adds	r5, #1
d05e006c:	42af      	cmp	r7, r5
d05e006e:	4642      	mov	r2, r8
d05e0070:	f1c4 0180 	rsb	r1, r4, #128	; 0x80
d05e0074:	eb0d 0004 	add.w	r0, sp, r4
d05e0078:	d8ee      	bhi.n	d05e0058 <print_hex_line+0x28>
d05e007a:	f000 f969 	bl	d05e0350 <sniprintf>
d05e007e:	2d07      	cmp	r5, #7
d05e0080:	4404      	add	r4, r0
d05e0082:	d1f0      	bne.n	d05e0066 <print_hex_line+0x36>
d05e0084:	f1c4 0180 	rsb	r1, r4, #128	; 0x80
d05e0088:	eb0d 0004 	add.w	r0, sp, r4
d05e008c:	4652      	mov	r2, sl
d05e008e:	f000 f95f 	bl	d05e0350 <sniprintf>
d05e0092:	4404      	add	r4, r0
d05e0094:	e7e9      	b.n	d05e006a <print_hex_line+0x3a>
d05e0096:	f1c4 0180 	rsb	r1, r4, #128	; 0x80
d05e009a:	eb0d 0004 	add.w	r0, sp, r4
d05e009e:	4a15      	ldr	r2, [pc, #84]	; (d05e00f4 <print_hex_line+0xc4>)
d05e00a0:	f000 f956 	bl	d05e0350 <sniprintf>
d05e00a4:	4404      	add	r4, r0
d05e00a6:	b187      	cbz	r7, d05e00ca <print_hex_line+0x9a>
d05e00a8:	19f5      	adds	r5, r6, r7
d05e00aa:	1e63      	subs	r3, r4, #1
d05e00ac:	1e70      	subs	r0, r6, #1
d05e00ae:	262e      	movs	r6, #46	; 0x2e
d05e00b0:	446b      	add	r3, sp
d05e00b2:	3d01      	subs	r5, #1
d05e00b4:	f810 2f01 	ldrb.w	r2, [r0, #1]!
d05e00b8:	f1a2 0120 	sub.w	r1, r2, #32
d05e00bc:	295e      	cmp	r1, #94	; 0x5e
d05e00be:	d911      	bls.n	d05e00e4 <print_hex_line+0xb4>
d05e00c0:	42a8      	cmp	r0, r5
d05e00c2:	f803 6f01 	strb.w	r6, [r3, #1]!
d05e00c6:	d1f5      	bne.n	d05e00b4 <print_hex_line+0x84>
d05e00c8:	443c      	add	r4, r7
d05e00ca:	ab20      	add	r3, sp, #128	; 0x80
d05e00cc:	2200      	movs	r2, #0
d05e00ce:	4669      	mov	r1, sp
d05e00d0:	4809      	ldr	r0, [pc, #36]	; (d05e00f8 <print_hex_line+0xc8>)
d05e00d2:	441c      	add	r4, r3
d05e00d4:	4b09      	ldr	r3, [pc, #36]	; (d05e00fc <print_hex_line+0xcc>)
d05e00d6:	f804 2c80 	strb.w	r2, [r4, #-128]
d05e00da:	689b      	ldr	r3, [r3, #8]
d05e00dc:	4798      	blx	r3
d05e00de:	b020      	add	sp, #128	; 0x80
d05e00e0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e00e4:	42a8      	cmp	r0, r5
d05e00e6:	f803 2f01 	strb.w	r2, [r3, #1]!
d05e00ea:	d1e3      	bne.n	d05e00b4 <print_hex_line+0x84>
d05e00ec:	e7ec      	b.n	d05e00c8 <print_hex_line+0x98>
d05e00ee:	bf00      	nop
d05e00f0:	d05e0dd8 	.word	0xd05e0dd8
d05e00f4:	d05e0dec 	.word	0xd05e0dec
d05e00f8:	d05e0df0 	.word	0xd05e0df0
d05e00fc:	2001f000 	.word	0x2001f000
d05e0100:	d05e0dbc 	.word	0xd05e0dbc
d05e0104:	d05e0de4 	.word	0xd05e0de4
d05e0108:	d05e0de8 	.word	0xd05e0de8

d05e010c <main>:
d05e010c:	2801      	cmp	r0, #1
d05e010e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05e0112:	b0c5      	sub	sp, #276	; 0x114
d05e0114:	f340 80c7 	ble.w	d05e02a6 <main+0x19a>
d05e0118:	2802      	cmp	r0, #2
d05e011a:	4605      	mov	r5, r0
d05e011c:	4689      	mov	r9, r1
d05e011e:	f000 80ae 	beq.w	d05e027e <main+0x172>
d05e0122:	f04f 0800 	mov.w	r8, #0
d05e0126:	684f      	ldr	r7, [r1, #4]
d05e0128:	2402      	movs	r4, #2
d05e012a:	f04f 36ff 	mov.w	r6, #4294967295	; 0xffffffff
d05e012e:	f8cd 8000 	str.w	r8, [sp]
d05e0132:	f859 3024 	ldr.w	r3, [r9, r4, lsl #2]
d05e0136:	ea4f 0c84 	mov.w	ip, r4, lsl #2
d05e013a:	7818      	ldrb	r0, [r3, #0]
d05e013c:	282d      	cmp	r0, #45	; 0x2d
d05e013e:	d008      	beq.n	d05e0152 <main+0x46>
d05e0140:	4a7a      	ldr	r2, [pc, #488]	; (d05e032c <main+0x220>)
d05e0142:	4619      	mov	r1, r3
d05e0144:	487a      	ldr	r0, [pc, #488]	; (d05e0330 <main+0x224>)
d05e0146:	6893      	ldr	r3, [r2, #8]
d05e0148:	4798      	blx	r3
d05e014a:	2001      	movs	r0, #1
d05e014c:	b045      	add	sp, #276	; 0x114
d05e014e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e0152:	7859      	ldrb	r1, [r3, #1]
d05e0154:	296f      	cmp	r1, #111	; 0x6f
d05e0156:	d014      	beq.n	d05e0182 <main+0x76>
d05e0158:	282d      	cmp	r0, #45	; 0x2d
d05e015a:	d1f1      	bne.n	d05e0140 <main+0x34>
d05e015c:	7859      	ldrb	r1, [r3, #1]
d05e015e:	296c      	cmp	r1, #108	; 0x6c
d05e0160:	d118      	bne.n	d05e0194 <main+0x88>
d05e0162:	789a      	ldrb	r2, [r3, #2]
d05e0164:	b9b2      	cbnz	r2, d05e0194 <main+0x88>
d05e0166:	3401      	adds	r4, #1
d05e0168:	42ac      	cmp	r4, r5
d05e016a:	da1e      	bge.n	d05e01aa <main+0x9e>
d05e016c:	44cc      	add	ip, r9
d05e016e:	4611      	mov	r1, r2
d05e0170:	f8dc 0004 	ldr.w	r0, [ip, #4]
d05e0174:	f000 f9a6 	bl	d05e04c4 <strtoul>
d05e0178:	4606      	mov	r6, r0
d05e017a:	3401      	adds	r4, #1
d05e017c:	42a5      	cmp	r5, r4
d05e017e:	dcd8      	bgt.n	d05e0132 <main+0x26>
d05e0180:	e019      	b.n	d05e01b6 <main+0xaa>
d05e0182:	789a      	ldrb	r2, [r3, #2]
d05e0184:	2a00      	cmp	r2, #0
d05e0186:	d1e7      	bne.n	d05e0158 <main+0x4c>
d05e0188:	f104 0e01 	add.w	lr, r4, #1
d05e018c:	45ae      	cmp	lr, r5
d05e018e:	db6d      	blt.n	d05e026c <main+0x160>
d05e0190:	296c      	cmp	r1, #108	; 0x6c
d05e0192:	d00a      	beq.n	d05e01aa <main+0x9e>
d05e0194:	282d      	cmp	r0, #45	; 0x2d
d05e0196:	d1d3      	bne.n	d05e0140 <main+0x34>
d05e0198:	785a      	ldrb	r2, [r3, #1]
d05e019a:	2a62      	cmp	r2, #98	; 0x62
d05e019c:	d1d0      	bne.n	d05e0140 <main+0x34>
d05e019e:	789a      	ldrb	r2, [r3, #2]
d05e01a0:	2a00      	cmp	r2, #0
d05e01a2:	d1cd      	bne.n	d05e0140 <main+0x34>
d05e01a4:	f04f 0801 	mov.w	r8, #1
d05e01a8:	e7e7      	b.n	d05e017a <main+0x6e>
d05e01aa:	282d      	cmp	r0, #45	; 0x2d
d05e01ac:	d1c8      	bne.n	d05e0140 <main+0x34>
d05e01ae:	2962      	cmp	r1, #98	; 0x62
d05e01b0:	d1c6      	bne.n	d05e0140 <main+0x34>
d05e01b2:	f04f 0801 	mov.w	r8, #1
d05e01b6:	4d5d      	ldr	r5, [pc, #372]	; (d05e032c <main+0x220>)
d05e01b8:	2201      	movs	r2, #1
d05e01ba:	4639      	mov	r1, r7
d05e01bc:	2000      	movs	r0, #0
d05e01be:	f8d5 3094 	ldr.w	r3, [r5, #148]	; 0x94
d05e01c2:	4798      	blx	r3
d05e01c4:	4604      	mov	r4, r0
d05e01c6:	2800      	cmp	r0, #0
d05e01c8:	f040 809e 	bne.w	d05e0308 <main+0x1fc>
d05e01cc:	9b00      	ldr	r3, [sp, #0]
d05e01ce:	b133      	cbz	r3, d05e01de <main+0xd2>
d05e01d0:	f8d5 30a8 	ldr.w	r3, [r5, #168]	; 0xa8
d05e01d4:	9900      	ldr	r1, [sp, #0]
d05e01d6:	4798      	blx	r3
d05e01d8:	2800      	cmp	r0, #0
d05e01da:	f040 809c 	bne.w	d05e0316 <main+0x20a>
d05e01de:	2e00      	cmp	r6, #0
d05e01e0:	d036      	beq.n	d05e0250 <main+0x144>
d05e01e2:	f04f 0a00 	mov.w	sl, #0
d05e01e6:	4f51      	ldr	r7, [pc, #324]	; (d05e032c <main+0x220>)
d05e01e8:	4d52      	ldr	r5, [pc, #328]	; (d05e0334 <main+0x228>)
d05e01ea:	f8cd 8004 	str.w	r8, [sp, #4]
d05e01ee:	f5b6 7f80 	cmp.w	r6, #256	; 0x100
d05e01f2:	f04f 0200 	mov.w	r2, #0
d05e01f6:	46b1      	mov	r9, r6
d05e01f8:	f8d7 40a0 	ldr.w	r4, [r7, #160]	; 0xa0
d05e01fc:	bf28      	it	cs
d05e01fe:	f44f 7980 	movcs.w	r9, #256	; 0x100
d05e0202:	4610      	mov	r0, r2
d05e0204:	9203      	str	r2, [sp, #12]
d05e0206:	ab03      	add	r3, sp, #12
d05e0208:	464a      	mov	r2, r9
d05e020a:	a904      	add	r1, sp, #16
d05e020c:	47a0      	blx	r4
d05e020e:	4604      	mov	r4, r0
d05e0210:	b9e0      	cbnz	r0, d05e024c <main+0x140>
d05e0212:	9903      	ldr	r1, [sp, #12]
d05e0214:	b1d1      	cbz	r1, d05e024c <main+0x140>
d05e0216:	9b01      	ldr	r3, [sp, #4]
d05e0218:	2b00      	cmp	r3, #0
d05e021a:	d04a      	beq.n	d05e02b2 <main+0x1a6>
d05e021c:	9b00      	ldr	r3, [sp, #0]
d05e021e:	eb03 0b0a 	add.w	fp, r3, sl
d05e0222:	1b09      	subs	r1, r1, r4
d05e0224:	ab04      	add	r3, sp, #16
d05e0226:	eb04 020b 	add.w	r2, r4, fp
d05e022a:	2910      	cmp	r1, #16
d05e022c:	eb03 0004 	add.w	r0, r3, r4
d05e0230:	f104 0410 	add.w	r4, r4, #16
d05e0234:	bf28      	it	cs
d05e0236:	2110      	movcs	r1, #16
d05e0238:	f7ff fefa 	bl	d05e0030 <print_hex_line>
d05e023c:	9903      	ldr	r1, [sp, #12]
d05e023e:	42a1      	cmp	r1, r4
d05e0240:	d8ef      	bhi.n	d05e0222 <main+0x116>
d05e0242:	4589      	cmp	r9, r1
d05e0244:	448a      	add	sl, r1
d05e0246:	d801      	bhi.n	d05e024c <main+0x140>
d05e0248:	1a76      	subs	r6, r6, r1
d05e024a:	d1d0      	bne.n	d05e01ee <main+0xe2>
d05e024c:	f8dd 8004 	ldr.w	r8, [sp, #4]
d05e0250:	f1b8 0f00 	cmp.w	r8, #0
d05e0254:	d103      	bne.n	d05e025e <main+0x152>
d05e0256:	4b35      	ldr	r3, [pc, #212]	; (d05e032c <main+0x220>)
d05e0258:	4837      	ldr	r0, [pc, #220]	; (d05e0338 <main+0x22c>)
d05e025a:	689b      	ldr	r3, [r3, #8]
d05e025c:	4798      	blx	r3
d05e025e:	4b33      	ldr	r3, [pc, #204]	; (d05e032c <main+0x220>)
d05e0260:	2000      	movs	r0, #0
d05e0262:	f8d3 3098 	ldr.w	r3, [r3, #152]	; 0x98
d05e0266:	4798      	blx	r3
d05e0268:	2000      	movs	r0, #0
d05e026a:	e76f      	b.n	d05e014c <main+0x40>
d05e026c:	44cc      	add	ip, r9
d05e026e:	4611      	mov	r1, r2
d05e0270:	4674      	mov	r4, lr
d05e0272:	f8dc 0004 	ldr.w	r0, [ip, #4]
d05e0276:	f000 f925 	bl	d05e04c4 <strtoul>
d05e027a:	9000      	str	r0, [sp, #0]
d05e027c:	e77d      	b.n	d05e017a <main+0x6e>
d05e027e:	684f      	ldr	r7, [r1, #4]
d05e0280:	492e      	ldr	r1, [pc, #184]	; (d05e033c <main+0x230>)
d05e0282:	4638      	mov	r0, r7
d05e0284:	f000 f898 	bl	d05e03b8 <strcmp>
d05e0288:	b168      	cbz	r0, d05e02a6 <main+0x19a>
d05e028a:	4b28      	ldr	r3, [pc, #160]	; (d05e032c <main+0x220>)
d05e028c:	2201      	movs	r2, #1
d05e028e:	4639      	mov	r1, r7
d05e0290:	2000      	movs	r0, #0
d05e0292:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
d05e0296:	4798      	blx	r3
d05e0298:	9000      	str	r0, [sp, #0]
d05e029a:	2800      	cmp	r0, #0
d05e029c:	d134      	bne.n	d05e0308 <main+0x1fc>
d05e029e:	4680      	mov	r8, r0
d05e02a0:	f04f 36ff 	mov.w	r6, #4294967295	; 0xffffffff
d05e02a4:	e79d      	b.n	d05e01e2 <main+0xd6>
d05e02a6:	4b21      	ldr	r3, [pc, #132]	; (d05e032c <main+0x220>)
d05e02a8:	4825      	ldr	r0, [pc, #148]	; (d05e0340 <main+0x234>)
d05e02aa:	689b      	ldr	r3, [r3, #8]
d05e02ac:	4798      	blx	r3
d05e02ae:	2001      	movs	r0, #1
d05e02b0:	e74c      	b.n	d05e014c <main+0x40>
d05e02b2:	f10d 0810 	add.w	r8, sp, #16
d05e02b6:	f8df b094 	ldr.w	fp, [pc, #148]	; d05e034c <main+0x240>
d05e02ba:	e009      	b.n	d05e02d0 <main+0x1c4>
d05e02bc:	f88d 3008 	strb.w	r3, [sp, #8]
d05e02c0:	f88d c009 	strb.w	ip, [sp, #9]
d05e02c4:	68bb      	ldr	r3, [r7, #8]
d05e02c6:	4798      	blx	r3
d05e02c8:	3401      	adds	r4, #1
d05e02ca:	9903      	ldr	r1, [sp, #12]
d05e02cc:	42a1      	cmp	r1, r4
d05e02ce:	d9b8      	bls.n	d05e0242 <main+0x136>
d05e02d0:	f818 3b01 	ldrb.w	r3, [r8], #1
d05e02d4:	f04f 0c00 	mov.w	ip, #0
d05e02d8:	4628      	mov	r0, r5
d05e02da:	a902      	add	r1, sp, #8
d05e02dc:	f1a3 0220 	sub.w	r2, r3, #32
d05e02e0:	2a5e      	cmp	r2, #94	; 0x5e
d05e02e2:	d9eb      	bls.n	d05e02bc <main+0x1b0>
d05e02e4:	2b0a      	cmp	r3, #10
d05e02e6:	f04f 0200 	mov.w	r2, #0
d05e02ea:	a902      	add	r1, sp, #8
d05e02ec:	d005      	beq.n	d05e02fa <main+0x1ee>
d05e02ee:	2b0d      	cmp	r3, #13
d05e02f0:	d003      	beq.n	d05e02fa <main+0x1ee>
d05e02f2:	68bb      	ldr	r3, [r7, #8]
d05e02f4:	4658      	mov	r0, fp
d05e02f6:	4798      	blx	r3
d05e02f8:	e7e6      	b.n	d05e02c8 <main+0x1bc>
d05e02fa:	f88d 3008 	strb.w	r3, [sp, #8]
d05e02fe:	f88d 2009 	strb.w	r2, [sp, #9]
d05e0302:	68bb      	ldr	r3, [r7, #8]
d05e0304:	4798      	blx	r3
d05e0306:	e7df      	b.n	d05e02c8 <main+0x1bc>
d05e0308:	4b08      	ldr	r3, [pc, #32]	; (d05e032c <main+0x220>)
d05e030a:	4639      	mov	r1, r7
d05e030c:	480d      	ldr	r0, [pc, #52]	; (d05e0344 <main+0x238>)
d05e030e:	689b      	ldr	r3, [r3, #8]
d05e0310:	4798      	blx	r3
d05e0312:	2001      	movs	r0, #1
d05e0314:	e71a      	b.n	d05e014c <main+0x40>
d05e0316:	9900      	ldr	r1, [sp, #0]
d05e0318:	68ab      	ldr	r3, [r5, #8]
d05e031a:	480b      	ldr	r0, [pc, #44]	; (d05e0348 <main+0x23c>)
d05e031c:	4798      	blx	r3
d05e031e:	f8d5 3098 	ldr.w	r3, [r5, #152]	; 0x98
d05e0322:	4620      	mov	r0, r4
d05e0324:	4798      	blx	r3
d05e0326:	2001      	movs	r0, #1
d05e0328:	e710      	b.n	d05e014c <main+0x40>
d05e032a:	bf00      	nop
d05e032c:	2001f000 	.word	0x2001f000
d05e0330:	d05e0e30 	.word	0xd05e0e30
d05e0334:	d05e0e84 	.word	0xd05e0e84
d05e0338:	d05e0e44 	.word	0xd05e0e44
d05e033c:	d05e0df8 	.word	0xd05e0df8
d05e0340:	d05e0dfc 	.word	0xd05e0dfc
d05e0344:	d05e0e48 	.word	0xd05e0e48
d05e0348:	d05e0e64 	.word	0xd05e0e64
d05e034c:	d05e0e88 	.word	0xd05e0e88

d05e0350 <sniprintf>:
d05e0350:	b40c      	push	{r2, r3}
d05e0352:	b530      	push	{r4, r5, lr}
d05e0354:	4b17      	ldr	r3, [pc, #92]	; (d05e03b4 <sniprintf+0x64>)
d05e0356:	1e0c      	subs	r4, r1, #0
d05e0358:	681d      	ldr	r5, [r3, #0]
d05e035a:	b09d      	sub	sp, #116	; 0x74
d05e035c:	da08      	bge.n	d05e0370 <sniprintf+0x20>
d05e035e:	238b      	movs	r3, #139	; 0x8b
d05e0360:	602b      	str	r3, [r5, #0]
d05e0362:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e0366:	b01d      	add	sp, #116	; 0x74
d05e0368:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05e036c:	b002      	add	sp, #8
d05e036e:	4770      	bx	lr
d05e0370:	f44f 7302 	mov.w	r3, #520	; 0x208
d05e0374:	f8ad 3014 	strh.w	r3, [sp, #20]
d05e0378:	bf14      	ite	ne
d05e037a:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d05e037e:	4623      	moveq	r3, r4
d05e0380:	9304      	str	r3, [sp, #16]
d05e0382:	9307      	str	r3, [sp, #28]
d05e0384:	f64f 73ff 	movw	r3, #65535	; 0xffff
d05e0388:	9002      	str	r0, [sp, #8]
d05e038a:	9006      	str	r0, [sp, #24]
d05e038c:	f8ad 3016 	strh.w	r3, [sp, #22]
d05e0390:	9a20      	ldr	r2, [sp, #128]	; 0x80
d05e0392:	ab21      	add	r3, sp, #132	; 0x84
d05e0394:	a902      	add	r1, sp, #8
d05e0396:	4628      	mov	r0, r5
d05e0398:	9301      	str	r3, [sp, #4]
d05e039a:	f000 f8f9 	bl	d05e0590 <_svfiprintf_r>
d05e039e:	1c43      	adds	r3, r0, #1
d05e03a0:	bfbc      	itt	lt
d05e03a2:	238b      	movlt	r3, #139	; 0x8b
d05e03a4:	602b      	strlt	r3, [r5, #0]
d05e03a6:	2c00      	cmp	r4, #0
d05e03a8:	d0dd      	beq.n	d05e0366 <sniprintf+0x16>
d05e03aa:	9b02      	ldr	r3, [sp, #8]
d05e03ac:	2200      	movs	r2, #0
d05e03ae:	701a      	strb	r2, [r3, #0]
d05e03b0:	e7d9      	b.n	d05e0366 <sniprintf+0x16>
d05e03b2:	bf00      	nop
d05e03b4:	d05e0fc8 	.word	0xd05e0fc8

d05e03b8 <strcmp>:
d05e03b8:	f810 2b01 	ldrb.w	r2, [r0], #1
d05e03bc:	f811 3b01 	ldrb.w	r3, [r1], #1
d05e03c0:	2a01      	cmp	r2, #1
d05e03c2:	bf28      	it	cs
d05e03c4:	429a      	cmpcs	r2, r3
d05e03c6:	d0f7      	beq.n	d05e03b8 <strcmp>
d05e03c8:	1ad0      	subs	r0, r2, r3
d05e03ca:	4770      	bx	lr

d05e03cc <_strtoul_l.isra.0>:
d05e03cc:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d05e03d0:	4e3b      	ldr	r6, [pc, #236]	; (d05e04c0 <_strtoul_l.isra.0+0xf4>)
d05e03d2:	4686      	mov	lr, r0
d05e03d4:	468c      	mov	ip, r1
d05e03d6:	4660      	mov	r0, ip
d05e03d8:	f81c 4b01 	ldrb.w	r4, [ip], #1
d05e03dc:	5da5      	ldrb	r5, [r4, r6]
d05e03de:	f015 0508 	ands.w	r5, r5, #8
d05e03e2:	d1f8      	bne.n	d05e03d6 <_strtoul_l.isra.0+0xa>
d05e03e4:	2c2d      	cmp	r4, #45	; 0x2d
d05e03e6:	d134      	bne.n	d05e0452 <_strtoul_l.isra.0+0x86>
d05e03e8:	f89c 4000 	ldrb.w	r4, [ip]
d05e03ec:	f04f 0801 	mov.w	r8, #1
d05e03f0:	f100 0c02 	add.w	ip, r0, #2
d05e03f4:	2b00      	cmp	r3, #0
d05e03f6:	d05e      	beq.n	d05e04b6 <_strtoul_l.isra.0+0xea>
d05e03f8:	2b10      	cmp	r3, #16
d05e03fa:	d10c      	bne.n	d05e0416 <_strtoul_l.isra.0+0x4a>
d05e03fc:	2c30      	cmp	r4, #48	; 0x30
d05e03fe:	d10a      	bne.n	d05e0416 <_strtoul_l.isra.0+0x4a>
d05e0400:	f89c 0000 	ldrb.w	r0, [ip]
d05e0404:	f000 00df 	and.w	r0, r0, #223	; 0xdf
d05e0408:	2858      	cmp	r0, #88	; 0x58
d05e040a:	d14f      	bne.n	d05e04ac <_strtoul_l.isra.0+0xe0>
d05e040c:	f89c 4001 	ldrb.w	r4, [ip, #1]
d05e0410:	2310      	movs	r3, #16
d05e0412:	f10c 0c02 	add.w	ip, ip, #2
d05e0416:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d05e041a:	2500      	movs	r5, #0
d05e041c:	fbb7 f7f3 	udiv	r7, r7, r3
d05e0420:	fb03 f907 	mul.w	r9, r3, r7
d05e0424:	ea6f 0909 	mvn.w	r9, r9
d05e0428:	4628      	mov	r0, r5
d05e042a:	f1a4 0630 	sub.w	r6, r4, #48	; 0x30
d05e042e:	2e09      	cmp	r6, #9
d05e0430:	d818      	bhi.n	d05e0464 <_strtoul_l.isra.0+0x98>
d05e0432:	4634      	mov	r4, r6
d05e0434:	42a3      	cmp	r3, r4
d05e0436:	dd24      	ble.n	d05e0482 <_strtoul_l.isra.0+0xb6>
d05e0438:	2d00      	cmp	r5, #0
d05e043a:	db1f      	blt.n	d05e047c <_strtoul_l.isra.0+0xb0>
d05e043c:	4287      	cmp	r7, r0
d05e043e:	d31d      	bcc.n	d05e047c <_strtoul_l.isra.0+0xb0>
d05e0440:	d101      	bne.n	d05e0446 <_strtoul_l.isra.0+0x7a>
d05e0442:	45a1      	cmp	r9, r4
d05e0444:	db1a      	blt.n	d05e047c <_strtoul_l.isra.0+0xb0>
d05e0446:	fb00 4003 	mla	r0, r0, r3, r4
d05e044a:	2501      	movs	r5, #1
d05e044c:	f81c 4b01 	ldrb.w	r4, [ip], #1
d05e0450:	e7eb      	b.n	d05e042a <_strtoul_l.isra.0+0x5e>
d05e0452:	2c2b      	cmp	r4, #43	; 0x2b
d05e0454:	bf08      	it	eq
d05e0456:	f89c 4000 	ldrbeq.w	r4, [ip]
d05e045a:	46a8      	mov	r8, r5
d05e045c:	bf08      	it	eq
d05e045e:	f100 0c02 	addeq.w	ip, r0, #2
d05e0462:	e7c7      	b.n	d05e03f4 <_strtoul_l.isra.0+0x28>
d05e0464:	f1a4 0641 	sub.w	r6, r4, #65	; 0x41
d05e0468:	2e19      	cmp	r6, #25
d05e046a:	d801      	bhi.n	d05e0470 <_strtoul_l.isra.0+0xa4>
d05e046c:	3c37      	subs	r4, #55	; 0x37
d05e046e:	e7e1      	b.n	d05e0434 <_strtoul_l.isra.0+0x68>
d05e0470:	f1a4 0661 	sub.w	r6, r4, #97	; 0x61
d05e0474:	2e19      	cmp	r6, #25
d05e0476:	d804      	bhi.n	d05e0482 <_strtoul_l.isra.0+0xb6>
d05e0478:	3c57      	subs	r4, #87	; 0x57
d05e047a:	e7db      	b.n	d05e0434 <_strtoul_l.isra.0+0x68>
d05e047c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05e0480:	e7e4      	b.n	d05e044c <_strtoul_l.isra.0+0x80>
d05e0482:	2d00      	cmp	r5, #0
d05e0484:	da07      	bge.n	d05e0496 <_strtoul_l.isra.0+0xca>
d05e0486:	2322      	movs	r3, #34	; 0x22
d05e0488:	f8ce 3000 	str.w	r3, [lr]
d05e048c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e0490:	b942      	cbnz	r2, d05e04a4 <_strtoul_l.isra.0+0xd8>
d05e0492:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d05e0496:	f1b8 0f00 	cmp.w	r8, #0
d05e049a:	d000      	beq.n	d05e049e <_strtoul_l.isra.0+0xd2>
d05e049c:	4240      	negs	r0, r0
d05e049e:	2a00      	cmp	r2, #0
d05e04a0:	d0f7      	beq.n	d05e0492 <_strtoul_l.isra.0+0xc6>
d05e04a2:	b10d      	cbz	r5, d05e04a8 <_strtoul_l.isra.0+0xdc>
d05e04a4:	f10c 31ff 	add.w	r1, ip, #4294967295	; 0xffffffff
d05e04a8:	6011      	str	r1, [r2, #0]
d05e04aa:	e7f2      	b.n	d05e0492 <_strtoul_l.isra.0+0xc6>
d05e04ac:	2430      	movs	r4, #48	; 0x30
d05e04ae:	2b00      	cmp	r3, #0
d05e04b0:	d1b1      	bne.n	d05e0416 <_strtoul_l.isra.0+0x4a>
d05e04b2:	2308      	movs	r3, #8
d05e04b4:	e7af      	b.n	d05e0416 <_strtoul_l.isra.0+0x4a>
d05e04b6:	2c30      	cmp	r4, #48	; 0x30
d05e04b8:	d0a2      	beq.n	d05e0400 <_strtoul_l.isra.0+0x34>
d05e04ba:	230a      	movs	r3, #10
d05e04bc:	e7ab      	b.n	d05e0416 <_strtoul_l.isra.0+0x4a>
d05e04be:	bf00      	nop
d05e04c0:	d05e0e8b 	.word	0xd05e0e8b

d05e04c4 <strtoul>:
d05e04c4:	4613      	mov	r3, r2
d05e04c6:	460a      	mov	r2, r1
d05e04c8:	4601      	mov	r1, r0
d05e04ca:	4802      	ldr	r0, [pc, #8]	; (d05e04d4 <strtoul+0x10>)
d05e04cc:	6800      	ldr	r0, [r0, #0]
d05e04ce:	f7ff bf7d 	b.w	d05e03cc <_strtoul_l.isra.0>
d05e04d2:	bf00      	nop
d05e04d4:	d05e0fc8 	.word	0xd05e0fc8

d05e04d8 <__ssputs_r>:
d05e04d8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05e04dc:	688e      	ldr	r6, [r1, #8]
d05e04de:	429e      	cmp	r6, r3
d05e04e0:	4682      	mov	sl, r0
d05e04e2:	460c      	mov	r4, r1
d05e04e4:	4690      	mov	r8, r2
d05e04e6:	461f      	mov	r7, r3
d05e04e8:	d838      	bhi.n	d05e055c <__ssputs_r+0x84>
d05e04ea:	898a      	ldrh	r2, [r1, #12]
d05e04ec:	f412 6f90 	tst.w	r2, #1152	; 0x480
d05e04f0:	d032      	beq.n	d05e0558 <__ssputs_r+0x80>
d05e04f2:	6825      	ldr	r5, [r4, #0]
d05e04f4:	6909      	ldr	r1, [r1, #16]
d05e04f6:	eba5 0901 	sub.w	r9, r5, r1
d05e04fa:	6965      	ldr	r5, [r4, #20]
d05e04fc:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05e0500:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d05e0504:	3301      	adds	r3, #1
d05e0506:	444b      	add	r3, r9
d05e0508:	106d      	asrs	r5, r5, #1
d05e050a:	429d      	cmp	r5, r3
d05e050c:	bf38      	it	cc
d05e050e:	461d      	movcc	r5, r3
d05e0510:	0553      	lsls	r3, r2, #21
d05e0512:	d531      	bpl.n	d05e0578 <__ssputs_r+0xa0>
d05e0514:	4629      	mov	r1, r5
d05e0516:	f000 fb9b 	bl	d05e0c50 <_malloc_r>
d05e051a:	4606      	mov	r6, r0
d05e051c:	b950      	cbnz	r0, d05e0534 <__ssputs_r+0x5c>
d05e051e:	230c      	movs	r3, #12
d05e0520:	f8ca 3000 	str.w	r3, [sl]
d05e0524:	89a3      	ldrh	r3, [r4, #12]
d05e0526:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05e052a:	81a3      	strh	r3, [r4, #12]
d05e052c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e0530:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e0534:	6921      	ldr	r1, [r4, #16]
d05e0536:	464a      	mov	r2, r9
d05e0538:	f000 fb12 	bl	d05e0b60 <memcpy>
d05e053c:	89a3      	ldrh	r3, [r4, #12]
d05e053e:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d05e0542:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05e0546:	81a3      	strh	r3, [r4, #12]
d05e0548:	6126      	str	r6, [r4, #16]
d05e054a:	6165      	str	r5, [r4, #20]
d05e054c:	444e      	add	r6, r9
d05e054e:	eba5 0509 	sub.w	r5, r5, r9
d05e0552:	6026      	str	r6, [r4, #0]
d05e0554:	60a5      	str	r5, [r4, #8]
d05e0556:	463e      	mov	r6, r7
d05e0558:	42be      	cmp	r6, r7
d05e055a:	d900      	bls.n	d05e055e <__ssputs_r+0x86>
d05e055c:	463e      	mov	r6, r7
d05e055e:	4632      	mov	r2, r6
d05e0560:	6820      	ldr	r0, [r4, #0]
d05e0562:	4641      	mov	r1, r8
d05e0564:	f000 fb0a 	bl	d05e0b7c <memmove>
d05e0568:	68a3      	ldr	r3, [r4, #8]
d05e056a:	6822      	ldr	r2, [r4, #0]
d05e056c:	1b9b      	subs	r3, r3, r6
d05e056e:	4432      	add	r2, r6
d05e0570:	60a3      	str	r3, [r4, #8]
d05e0572:	6022      	str	r2, [r4, #0]
d05e0574:	2000      	movs	r0, #0
d05e0576:	e7db      	b.n	d05e0530 <__ssputs_r+0x58>
d05e0578:	462a      	mov	r2, r5
d05e057a:	f000 fbc3 	bl	d05e0d04 <_realloc_r>
d05e057e:	4606      	mov	r6, r0
d05e0580:	2800      	cmp	r0, #0
d05e0582:	d1e1      	bne.n	d05e0548 <__ssputs_r+0x70>
d05e0584:	6921      	ldr	r1, [r4, #16]
d05e0586:	4650      	mov	r0, sl
d05e0588:	f000 fb12 	bl	d05e0bb0 <_free_r>
d05e058c:	e7c7      	b.n	d05e051e <__ssputs_r+0x46>
	...

d05e0590 <_svfiprintf_r>:
d05e0590:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05e0594:	4698      	mov	r8, r3
d05e0596:	898b      	ldrh	r3, [r1, #12]
d05e0598:	061b      	lsls	r3, r3, #24
d05e059a:	b09d      	sub	sp, #116	; 0x74
d05e059c:	4607      	mov	r7, r0
d05e059e:	460d      	mov	r5, r1
d05e05a0:	4614      	mov	r4, r2
d05e05a2:	d50e      	bpl.n	d05e05c2 <_svfiprintf_r+0x32>
d05e05a4:	690b      	ldr	r3, [r1, #16]
d05e05a6:	b963      	cbnz	r3, d05e05c2 <_svfiprintf_r+0x32>
d05e05a8:	2140      	movs	r1, #64	; 0x40
d05e05aa:	f000 fb51 	bl	d05e0c50 <_malloc_r>
d05e05ae:	6028      	str	r0, [r5, #0]
d05e05b0:	6128      	str	r0, [r5, #16]
d05e05b2:	b920      	cbnz	r0, d05e05be <_svfiprintf_r+0x2e>
d05e05b4:	230c      	movs	r3, #12
d05e05b6:	603b      	str	r3, [r7, #0]
d05e05b8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e05bc:	e0d1      	b.n	d05e0762 <_svfiprintf_r+0x1d2>
d05e05be:	2340      	movs	r3, #64	; 0x40
d05e05c0:	616b      	str	r3, [r5, #20]
d05e05c2:	2300      	movs	r3, #0
d05e05c4:	9309      	str	r3, [sp, #36]	; 0x24
d05e05c6:	2320      	movs	r3, #32
d05e05c8:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d05e05cc:	f8cd 800c 	str.w	r8, [sp, #12]
d05e05d0:	2330      	movs	r3, #48	; 0x30
d05e05d2:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d05e077c <_svfiprintf_r+0x1ec>
d05e05d6:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d05e05da:	f04f 0901 	mov.w	r9, #1
d05e05de:	4623      	mov	r3, r4
d05e05e0:	469a      	mov	sl, r3
d05e05e2:	f813 2b01 	ldrb.w	r2, [r3], #1
d05e05e6:	b10a      	cbz	r2, d05e05ec <_svfiprintf_r+0x5c>
d05e05e8:	2a25      	cmp	r2, #37	; 0x25
d05e05ea:	d1f9      	bne.n	d05e05e0 <_svfiprintf_r+0x50>
d05e05ec:	ebba 0b04 	subs.w	fp, sl, r4
d05e05f0:	d00b      	beq.n	d05e060a <_svfiprintf_r+0x7a>
d05e05f2:	465b      	mov	r3, fp
d05e05f4:	4622      	mov	r2, r4
d05e05f6:	4629      	mov	r1, r5
d05e05f8:	4638      	mov	r0, r7
d05e05fa:	f7ff ff6d 	bl	d05e04d8 <__ssputs_r>
d05e05fe:	3001      	adds	r0, #1
d05e0600:	f000 80aa 	beq.w	d05e0758 <_svfiprintf_r+0x1c8>
d05e0604:	9a09      	ldr	r2, [sp, #36]	; 0x24
d05e0606:	445a      	add	r2, fp
d05e0608:	9209      	str	r2, [sp, #36]	; 0x24
d05e060a:	f89a 3000 	ldrb.w	r3, [sl]
d05e060e:	2b00      	cmp	r3, #0
d05e0610:	f000 80a2 	beq.w	d05e0758 <_svfiprintf_r+0x1c8>
d05e0614:	2300      	movs	r3, #0
d05e0616:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d05e061a:	e9cd 2305 	strd	r2, r3, [sp, #20]
d05e061e:	f10a 0a01 	add.w	sl, sl, #1
d05e0622:	9304      	str	r3, [sp, #16]
d05e0624:	9307      	str	r3, [sp, #28]
d05e0626:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d05e062a:	931a      	str	r3, [sp, #104]	; 0x68
d05e062c:	4654      	mov	r4, sl
d05e062e:	2205      	movs	r2, #5
d05e0630:	f814 1b01 	ldrb.w	r1, [r4], #1
d05e0634:	4851      	ldr	r0, [pc, #324]	; (d05e077c <_svfiprintf_r+0x1ec>)
d05e0636:	f000 fa43 	bl	d05e0ac0 <memchr>
d05e063a:	9a04      	ldr	r2, [sp, #16]
d05e063c:	b9d8      	cbnz	r0, d05e0676 <_svfiprintf_r+0xe6>
d05e063e:	06d0      	lsls	r0, r2, #27
d05e0640:	bf44      	itt	mi
d05e0642:	2320      	movmi	r3, #32
d05e0644:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05e0648:	0711      	lsls	r1, r2, #28
d05e064a:	bf44      	itt	mi
d05e064c:	232b      	movmi	r3, #43	; 0x2b
d05e064e:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05e0652:	f89a 3000 	ldrb.w	r3, [sl]
d05e0656:	2b2a      	cmp	r3, #42	; 0x2a
d05e0658:	d015      	beq.n	d05e0686 <_svfiprintf_r+0xf6>
d05e065a:	9a07      	ldr	r2, [sp, #28]
d05e065c:	4654      	mov	r4, sl
d05e065e:	2000      	movs	r0, #0
d05e0660:	f04f 0c0a 	mov.w	ip, #10
d05e0664:	4621      	mov	r1, r4
d05e0666:	f811 3b01 	ldrb.w	r3, [r1], #1
d05e066a:	3b30      	subs	r3, #48	; 0x30
d05e066c:	2b09      	cmp	r3, #9
d05e066e:	d94e      	bls.n	d05e070e <_svfiprintf_r+0x17e>
d05e0670:	b1b0      	cbz	r0, d05e06a0 <_svfiprintf_r+0x110>
d05e0672:	9207      	str	r2, [sp, #28]
d05e0674:	e014      	b.n	d05e06a0 <_svfiprintf_r+0x110>
d05e0676:	eba0 0308 	sub.w	r3, r0, r8
d05e067a:	fa09 f303 	lsl.w	r3, r9, r3
d05e067e:	4313      	orrs	r3, r2
d05e0680:	9304      	str	r3, [sp, #16]
d05e0682:	46a2      	mov	sl, r4
d05e0684:	e7d2      	b.n	d05e062c <_svfiprintf_r+0x9c>
d05e0686:	9b03      	ldr	r3, [sp, #12]
d05e0688:	1d19      	adds	r1, r3, #4
d05e068a:	681b      	ldr	r3, [r3, #0]
d05e068c:	9103      	str	r1, [sp, #12]
d05e068e:	2b00      	cmp	r3, #0
d05e0690:	bfbb      	ittet	lt
d05e0692:	425b      	neglt	r3, r3
d05e0694:	f042 0202 	orrlt.w	r2, r2, #2
d05e0698:	9307      	strge	r3, [sp, #28]
d05e069a:	9307      	strlt	r3, [sp, #28]
d05e069c:	bfb8      	it	lt
d05e069e:	9204      	strlt	r2, [sp, #16]
d05e06a0:	7823      	ldrb	r3, [r4, #0]
d05e06a2:	2b2e      	cmp	r3, #46	; 0x2e
d05e06a4:	d10c      	bne.n	d05e06c0 <_svfiprintf_r+0x130>
d05e06a6:	7863      	ldrb	r3, [r4, #1]
d05e06a8:	2b2a      	cmp	r3, #42	; 0x2a
d05e06aa:	d135      	bne.n	d05e0718 <_svfiprintf_r+0x188>
d05e06ac:	9b03      	ldr	r3, [sp, #12]
d05e06ae:	1d1a      	adds	r2, r3, #4
d05e06b0:	681b      	ldr	r3, [r3, #0]
d05e06b2:	9203      	str	r2, [sp, #12]
d05e06b4:	2b00      	cmp	r3, #0
d05e06b6:	bfb8      	it	lt
d05e06b8:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d05e06bc:	3402      	adds	r4, #2
d05e06be:	9305      	str	r3, [sp, #20]
d05e06c0:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d05e078c <_svfiprintf_r+0x1fc>
d05e06c4:	7821      	ldrb	r1, [r4, #0]
d05e06c6:	2203      	movs	r2, #3
d05e06c8:	4650      	mov	r0, sl
d05e06ca:	f000 f9f9 	bl	d05e0ac0 <memchr>
d05e06ce:	b140      	cbz	r0, d05e06e2 <_svfiprintf_r+0x152>
d05e06d0:	2340      	movs	r3, #64	; 0x40
d05e06d2:	eba0 000a 	sub.w	r0, r0, sl
d05e06d6:	fa03 f000 	lsl.w	r0, r3, r0
d05e06da:	9b04      	ldr	r3, [sp, #16]
d05e06dc:	4303      	orrs	r3, r0
d05e06de:	3401      	adds	r4, #1
d05e06e0:	9304      	str	r3, [sp, #16]
d05e06e2:	f814 1b01 	ldrb.w	r1, [r4], #1
d05e06e6:	4826      	ldr	r0, [pc, #152]	; (d05e0780 <_svfiprintf_r+0x1f0>)
d05e06e8:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d05e06ec:	2206      	movs	r2, #6
d05e06ee:	f000 f9e7 	bl	d05e0ac0 <memchr>
d05e06f2:	2800      	cmp	r0, #0
d05e06f4:	d038      	beq.n	d05e0768 <_svfiprintf_r+0x1d8>
d05e06f6:	4b23      	ldr	r3, [pc, #140]	; (d05e0784 <_svfiprintf_r+0x1f4>)
d05e06f8:	bb1b      	cbnz	r3, d05e0742 <_svfiprintf_r+0x1b2>
d05e06fa:	9b03      	ldr	r3, [sp, #12]
d05e06fc:	3307      	adds	r3, #7
d05e06fe:	f023 0307 	bic.w	r3, r3, #7
d05e0702:	3308      	adds	r3, #8
d05e0704:	9303      	str	r3, [sp, #12]
d05e0706:	9b09      	ldr	r3, [sp, #36]	; 0x24
d05e0708:	4433      	add	r3, r6
d05e070a:	9309      	str	r3, [sp, #36]	; 0x24
d05e070c:	e767      	b.n	d05e05de <_svfiprintf_r+0x4e>
d05e070e:	fb0c 3202 	mla	r2, ip, r2, r3
d05e0712:	460c      	mov	r4, r1
d05e0714:	2001      	movs	r0, #1
d05e0716:	e7a5      	b.n	d05e0664 <_svfiprintf_r+0xd4>
d05e0718:	2300      	movs	r3, #0
d05e071a:	3401      	adds	r4, #1
d05e071c:	9305      	str	r3, [sp, #20]
d05e071e:	4619      	mov	r1, r3
d05e0720:	f04f 0c0a 	mov.w	ip, #10
d05e0724:	4620      	mov	r0, r4
d05e0726:	f810 2b01 	ldrb.w	r2, [r0], #1
d05e072a:	3a30      	subs	r2, #48	; 0x30
d05e072c:	2a09      	cmp	r2, #9
d05e072e:	d903      	bls.n	d05e0738 <_svfiprintf_r+0x1a8>
d05e0730:	2b00      	cmp	r3, #0
d05e0732:	d0c5      	beq.n	d05e06c0 <_svfiprintf_r+0x130>
d05e0734:	9105      	str	r1, [sp, #20]
d05e0736:	e7c3      	b.n	d05e06c0 <_svfiprintf_r+0x130>
d05e0738:	fb0c 2101 	mla	r1, ip, r1, r2
d05e073c:	4604      	mov	r4, r0
d05e073e:	2301      	movs	r3, #1
d05e0740:	e7f0      	b.n	d05e0724 <_svfiprintf_r+0x194>
d05e0742:	ab03      	add	r3, sp, #12
d05e0744:	9300      	str	r3, [sp, #0]
d05e0746:	462a      	mov	r2, r5
d05e0748:	4b0f      	ldr	r3, [pc, #60]	; (d05e0788 <_svfiprintf_r+0x1f8>)
d05e074a:	a904      	add	r1, sp, #16
d05e074c:	4638      	mov	r0, r7
d05e074e:	f3af 8000 	nop.w
d05e0752:	1c42      	adds	r2, r0, #1
d05e0754:	4606      	mov	r6, r0
d05e0756:	d1d6      	bne.n	d05e0706 <_svfiprintf_r+0x176>
d05e0758:	89ab      	ldrh	r3, [r5, #12]
d05e075a:	065b      	lsls	r3, r3, #25
d05e075c:	f53f af2c 	bmi.w	d05e05b8 <_svfiprintf_r+0x28>
d05e0760:	9809      	ldr	r0, [sp, #36]	; 0x24
d05e0762:	b01d      	add	sp, #116	; 0x74
d05e0764:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e0768:	ab03      	add	r3, sp, #12
d05e076a:	9300      	str	r3, [sp, #0]
d05e076c:	462a      	mov	r2, r5
d05e076e:	4b06      	ldr	r3, [pc, #24]	; (d05e0788 <_svfiprintf_r+0x1f8>)
d05e0770:	a904      	add	r1, sp, #16
d05e0772:	4638      	mov	r0, r7
d05e0774:	f000 f87a 	bl	d05e086c <_printf_i>
d05e0778:	e7eb      	b.n	d05e0752 <_svfiprintf_r+0x1c2>
d05e077a:	bf00      	nop
d05e077c:	d05e0f8b 	.word	0xd05e0f8b
d05e0780:	d05e0f95 	.word	0xd05e0f95
d05e0784:	00000000 	.word	0x00000000
d05e0788:	d05e04d9 	.word	0xd05e04d9
d05e078c:	d05e0f91 	.word	0xd05e0f91

d05e0790 <_printf_common>:
d05e0790:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05e0794:	4616      	mov	r6, r2
d05e0796:	4699      	mov	r9, r3
d05e0798:	688a      	ldr	r2, [r1, #8]
d05e079a:	690b      	ldr	r3, [r1, #16]
d05e079c:	f8dd 8020 	ldr.w	r8, [sp, #32]
d05e07a0:	4293      	cmp	r3, r2
d05e07a2:	bfb8      	it	lt
d05e07a4:	4613      	movlt	r3, r2
d05e07a6:	6033      	str	r3, [r6, #0]
d05e07a8:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d05e07ac:	4607      	mov	r7, r0
d05e07ae:	460c      	mov	r4, r1
d05e07b0:	b10a      	cbz	r2, d05e07b6 <_printf_common+0x26>
d05e07b2:	3301      	adds	r3, #1
d05e07b4:	6033      	str	r3, [r6, #0]
d05e07b6:	6823      	ldr	r3, [r4, #0]
d05e07b8:	0699      	lsls	r1, r3, #26
d05e07ba:	bf42      	ittt	mi
d05e07bc:	6833      	ldrmi	r3, [r6, #0]
d05e07be:	3302      	addmi	r3, #2
d05e07c0:	6033      	strmi	r3, [r6, #0]
d05e07c2:	6825      	ldr	r5, [r4, #0]
d05e07c4:	f015 0506 	ands.w	r5, r5, #6
d05e07c8:	d106      	bne.n	d05e07d8 <_printf_common+0x48>
d05e07ca:	f104 0a19 	add.w	sl, r4, #25
d05e07ce:	68e3      	ldr	r3, [r4, #12]
d05e07d0:	6832      	ldr	r2, [r6, #0]
d05e07d2:	1a9b      	subs	r3, r3, r2
d05e07d4:	42ab      	cmp	r3, r5
d05e07d6:	dc26      	bgt.n	d05e0826 <_printf_common+0x96>
d05e07d8:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d05e07dc:	1e13      	subs	r3, r2, #0
d05e07de:	6822      	ldr	r2, [r4, #0]
d05e07e0:	bf18      	it	ne
d05e07e2:	2301      	movne	r3, #1
d05e07e4:	0692      	lsls	r2, r2, #26
d05e07e6:	d42b      	bmi.n	d05e0840 <_printf_common+0xb0>
d05e07e8:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05e07ec:	4649      	mov	r1, r9
d05e07ee:	4638      	mov	r0, r7
d05e07f0:	47c0      	blx	r8
d05e07f2:	3001      	adds	r0, #1
d05e07f4:	d01e      	beq.n	d05e0834 <_printf_common+0xa4>
d05e07f6:	6823      	ldr	r3, [r4, #0]
d05e07f8:	68e5      	ldr	r5, [r4, #12]
d05e07fa:	6832      	ldr	r2, [r6, #0]
d05e07fc:	f003 0306 	and.w	r3, r3, #6
d05e0800:	2b04      	cmp	r3, #4
d05e0802:	bf08      	it	eq
d05e0804:	1aad      	subeq	r5, r5, r2
d05e0806:	68a3      	ldr	r3, [r4, #8]
d05e0808:	6922      	ldr	r2, [r4, #16]
d05e080a:	bf0c      	ite	eq
d05e080c:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d05e0810:	2500      	movne	r5, #0
d05e0812:	4293      	cmp	r3, r2
d05e0814:	bfc4      	itt	gt
d05e0816:	1a9b      	subgt	r3, r3, r2
d05e0818:	18ed      	addgt	r5, r5, r3
d05e081a:	2600      	movs	r6, #0
d05e081c:	341a      	adds	r4, #26
d05e081e:	42b5      	cmp	r5, r6
d05e0820:	d11a      	bne.n	d05e0858 <_printf_common+0xc8>
d05e0822:	2000      	movs	r0, #0
d05e0824:	e008      	b.n	d05e0838 <_printf_common+0xa8>
d05e0826:	2301      	movs	r3, #1
d05e0828:	4652      	mov	r2, sl
d05e082a:	4649      	mov	r1, r9
d05e082c:	4638      	mov	r0, r7
d05e082e:	47c0      	blx	r8
d05e0830:	3001      	adds	r0, #1
d05e0832:	d103      	bne.n	d05e083c <_printf_common+0xac>
d05e0834:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e0838:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e083c:	3501      	adds	r5, #1
d05e083e:	e7c6      	b.n	d05e07ce <_printf_common+0x3e>
d05e0840:	18e1      	adds	r1, r4, r3
d05e0842:	1c5a      	adds	r2, r3, #1
d05e0844:	2030      	movs	r0, #48	; 0x30
d05e0846:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d05e084a:	4422      	add	r2, r4
d05e084c:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d05e0850:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d05e0854:	3302      	adds	r3, #2
d05e0856:	e7c7      	b.n	d05e07e8 <_printf_common+0x58>
d05e0858:	2301      	movs	r3, #1
d05e085a:	4622      	mov	r2, r4
d05e085c:	4649      	mov	r1, r9
d05e085e:	4638      	mov	r0, r7
d05e0860:	47c0      	blx	r8
d05e0862:	3001      	adds	r0, #1
d05e0864:	d0e6      	beq.n	d05e0834 <_printf_common+0xa4>
d05e0866:	3601      	adds	r6, #1
d05e0868:	e7d9      	b.n	d05e081e <_printf_common+0x8e>
	...

d05e086c <_printf_i>:
d05e086c:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d05e0870:	460c      	mov	r4, r1
d05e0872:	4691      	mov	r9, r2
d05e0874:	7e27      	ldrb	r7, [r4, #24]
d05e0876:	990c      	ldr	r1, [sp, #48]	; 0x30
d05e0878:	2f78      	cmp	r7, #120	; 0x78
d05e087a:	4680      	mov	r8, r0
d05e087c:	469a      	mov	sl, r3
d05e087e:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05e0882:	d807      	bhi.n	d05e0894 <_printf_i+0x28>
d05e0884:	2f62      	cmp	r7, #98	; 0x62
d05e0886:	d80a      	bhi.n	d05e089e <_printf_i+0x32>
d05e0888:	2f00      	cmp	r7, #0
d05e088a:	f000 80d8 	beq.w	d05e0a3e <_printf_i+0x1d2>
d05e088e:	2f58      	cmp	r7, #88	; 0x58
d05e0890:	f000 80a3 	beq.w	d05e09da <_printf_i+0x16e>
d05e0894:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05e0898:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d05e089c:	e03a      	b.n	d05e0914 <_printf_i+0xa8>
d05e089e:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d05e08a2:	2b15      	cmp	r3, #21
d05e08a4:	d8f6      	bhi.n	d05e0894 <_printf_i+0x28>
d05e08a6:	a001      	add	r0, pc, #4	; (adr r0, d05e08ac <_printf_i+0x40>)
d05e08a8:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d05e08ac:	d05e0905 	.word	0xd05e0905
d05e08b0:	d05e0919 	.word	0xd05e0919
d05e08b4:	d05e0895 	.word	0xd05e0895
d05e08b8:	d05e0895 	.word	0xd05e0895
d05e08bc:	d05e0895 	.word	0xd05e0895
d05e08c0:	d05e0895 	.word	0xd05e0895
d05e08c4:	d05e0919 	.word	0xd05e0919
d05e08c8:	d05e0895 	.word	0xd05e0895
d05e08cc:	d05e0895 	.word	0xd05e0895
d05e08d0:	d05e0895 	.word	0xd05e0895
d05e08d4:	d05e0895 	.word	0xd05e0895
d05e08d8:	d05e0a25 	.word	0xd05e0a25
d05e08dc:	d05e0949 	.word	0xd05e0949
d05e08e0:	d05e0a07 	.word	0xd05e0a07
d05e08e4:	d05e0895 	.word	0xd05e0895
d05e08e8:	d05e0895 	.word	0xd05e0895
d05e08ec:	d05e0a47 	.word	0xd05e0a47
d05e08f0:	d05e0895 	.word	0xd05e0895
d05e08f4:	d05e0949 	.word	0xd05e0949
d05e08f8:	d05e0895 	.word	0xd05e0895
d05e08fc:	d05e0895 	.word	0xd05e0895
d05e0900:	d05e0a0f 	.word	0xd05e0a0f
d05e0904:	680b      	ldr	r3, [r1, #0]
d05e0906:	1d1a      	adds	r2, r3, #4
d05e0908:	681b      	ldr	r3, [r3, #0]
d05e090a:	600a      	str	r2, [r1, #0]
d05e090c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05e0910:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d05e0914:	2301      	movs	r3, #1
d05e0916:	e0a3      	b.n	d05e0a60 <_printf_i+0x1f4>
d05e0918:	6825      	ldr	r5, [r4, #0]
d05e091a:	6808      	ldr	r0, [r1, #0]
d05e091c:	062e      	lsls	r6, r5, #24
d05e091e:	f100 0304 	add.w	r3, r0, #4
d05e0922:	d50a      	bpl.n	d05e093a <_printf_i+0xce>
d05e0924:	6805      	ldr	r5, [r0, #0]
d05e0926:	600b      	str	r3, [r1, #0]
d05e0928:	2d00      	cmp	r5, #0
d05e092a:	da03      	bge.n	d05e0934 <_printf_i+0xc8>
d05e092c:	232d      	movs	r3, #45	; 0x2d
d05e092e:	426d      	negs	r5, r5
d05e0930:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05e0934:	485e      	ldr	r0, [pc, #376]	; (d05e0ab0 <_printf_i+0x244>)
d05e0936:	230a      	movs	r3, #10
d05e0938:	e019      	b.n	d05e096e <_printf_i+0x102>
d05e093a:	f015 0f40 	tst.w	r5, #64	; 0x40
d05e093e:	6805      	ldr	r5, [r0, #0]
d05e0940:	600b      	str	r3, [r1, #0]
d05e0942:	bf18      	it	ne
d05e0944:	b22d      	sxthne	r5, r5
d05e0946:	e7ef      	b.n	d05e0928 <_printf_i+0xbc>
d05e0948:	680b      	ldr	r3, [r1, #0]
d05e094a:	6825      	ldr	r5, [r4, #0]
d05e094c:	1d18      	adds	r0, r3, #4
d05e094e:	6008      	str	r0, [r1, #0]
d05e0950:	0628      	lsls	r0, r5, #24
d05e0952:	d501      	bpl.n	d05e0958 <_printf_i+0xec>
d05e0954:	681d      	ldr	r5, [r3, #0]
d05e0956:	e002      	b.n	d05e095e <_printf_i+0xf2>
d05e0958:	0669      	lsls	r1, r5, #25
d05e095a:	d5fb      	bpl.n	d05e0954 <_printf_i+0xe8>
d05e095c:	881d      	ldrh	r5, [r3, #0]
d05e095e:	4854      	ldr	r0, [pc, #336]	; (d05e0ab0 <_printf_i+0x244>)
d05e0960:	2f6f      	cmp	r7, #111	; 0x6f
d05e0962:	bf0c      	ite	eq
d05e0964:	2308      	moveq	r3, #8
d05e0966:	230a      	movne	r3, #10
d05e0968:	2100      	movs	r1, #0
d05e096a:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d05e096e:	6866      	ldr	r6, [r4, #4]
d05e0970:	60a6      	str	r6, [r4, #8]
d05e0972:	2e00      	cmp	r6, #0
d05e0974:	bfa2      	ittt	ge
d05e0976:	6821      	ldrge	r1, [r4, #0]
d05e0978:	f021 0104 	bicge.w	r1, r1, #4
d05e097c:	6021      	strge	r1, [r4, #0]
d05e097e:	b90d      	cbnz	r5, d05e0984 <_printf_i+0x118>
d05e0980:	2e00      	cmp	r6, #0
d05e0982:	d04d      	beq.n	d05e0a20 <_printf_i+0x1b4>
d05e0984:	4616      	mov	r6, r2
d05e0986:	fbb5 f1f3 	udiv	r1, r5, r3
d05e098a:	fb03 5711 	mls	r7, r3, r1, r5
d05e098e:	5dc7      	ldrb	r7, [r0, r7]
d05e0990:	f806 7d01 	strb.w	r7, [r6, #-1]!
d05e0994:	462f      	mov	r7, r5
d05e0996:	42bb      	cmp	r3, r7
d05e0998:	460d      	mov	r5, r1
d05e099a:	d9f4      	bls.n	d05e0986 <_printf_i+0x11a>
d05e099c:	2b08      	cmp	r3, #8
d05e099e:	d10b      	bne.n	d05e09b8 <_printf_i+0x14c>
d05e09a0:	6823      	ldr	r3, [r4, #0]
d05e09a2:	07df      	lsls	r7, r3, #31
d05e09a4:	d508      	bpl.n	d05e09b8 <_printf_i+0x14c>
d05e09a6:	6923      	ldr	r3, [r4, #16]
d05e09a8:	6861      	ldr	r1, [r4, #4]
d05e09aa:	4299      	cmp	r1, r3
d05e09ac:	bfde      	ittt	le
d05e09ae:	2330      	movle	r3, #48	; 0x30
d05e09b0:	f806 3c01 	strble.w	r3, [r6, #-1]
d05e09b4:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d05e09b8:	1b92      	subs	r2, r2, r6
d05e09ba:	6122      	str	r2, [r4, #16]
d05e09bc:	f8cd a000 	str.w	sl, [sp]
d05e09c0:	464b      	mov	r3, r9
d05e09c2:	aa03      	add	r2, sp, #12
d05e09c4:	4621      	mov	r1, r4
d05e09c6:	4640      	mov	r0, r8
d05e09c8:	f7ff fee2 	bl	d05e0790 <_printf_common>
d05e09cc:	3001      	adds	r0, #1
d05e09ce:	d14c      	bne.n	d05e0a6a <_printf_i+0x1fe>
d05e09d0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e09d4:	b004      	add	sp, #16
d05e09d6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e09da:	4835      	ldr	r0, [pc, #212]	; (d05e0ab0 <_printf_i+0x244>)
d05e09dc:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d05e09e0:	6823      	ldr	r3, [r4, #0]
d05e09e2:	680e      	ldr	r6, [r1, #0]
d05e09e4:	061f      	lsls	r7, r3, #24
d05e09e6:	f856 5b04 	ldr.w	r5, [r6], #4
d05e09ea:	600e      	str	r6, [r1, #0]
d05e09ec:	d514      	bpl.n	d05e0a18 <_printf_i+0x1ac>
d05e09ee:	07d9      	lsls	r1, r3, #31
d05e09f0:	bf44      	itt	mi
d05e09f2:	f043 0320 	orrmi.w	r3, r3, #32
d05e09f6:	6023      	strmi	r3, [r4, #0]
d05e09f8:	b91d      	cbnz	r5, d05e0a02 <_printf_i+0x196>
d05e09fa:	6823      	ldr	r3, [r4, #0]
d05e09fc:	f023 0320 	bic.w	r3, r3, #32
d05e0a00:	6023      	str	r3, [r4, #0]
d05e0a02:	2310      	movs	r3, #16
d05e0a04:	e7b0      	b.n	d05e0968 <_printf_i+0xfc>
d05e0a06:	6823      	ldr	r3, [r4, #0]
d05e0a08:	f043 0320 	orr.w	r3, r3, #32
d05e0a0c:	6023      	str	r3, [r4, #0]
d05e0a0e:	2378      	movs	r3, #120	; 0x78
d05e0a10:	4828      	ldr	r0, [pc, #160]	; (d05e0ab4 <_printf_i+0x248>)
d05e0a12:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d05e0a16:	e7e3      	b.n	d05e09e0 <_printf_i+0x174>
d05e0a18:	065e      	lsls	r6, r3, #25
d05e0a1a:	bf48      	it	mi
d05e0a1c:	b2ad      	uxthmi	r5, r5
d05e0a1e:	e7e6      	b.n	d05e09ee <_printf_i+0x182>
d05e0a20:	4616      	mov	r6, r2
d05e0a22:	e7bb      	b.n	d05e099c <_printf_i+0x130>
d05e0a24:	680b      	ldr	r3, [r1, #0]
d05e0a26:	6826      	ldr	r6, [r4, #0]
d05e0a28:	6960      	ldr	r0, [r4, #20]
d05e0a2a:	1d1d      	adds	r5, r3, #4
d05e0a2c:	600d      	str	r5, [r1, #0]
d05e0a2e:	0635      	lsls	r5, r6, #24
d05e0a30:	681b      	ldr	r3, [r3, #0]
d05e0a32:	d501      	bpl.n	d05e0a38 <_printf_i+0x1cc>
d05e0a34:	6018      	str	r0, [r3, #0]
d05e0a36:	e002      	b.n	d05e0a3e <_printf_i+0x1d2>
d05e0a38:	0671      	lsls	r1, r6, #25
d05e0a3a:	d5fb      	bpl.n	d05e0a34 <_printf_i+0x1c8>
d05e0a3c:	8018      	strh	r0, [r3, #0]
d05e0a3e:	2300      	movs	r3, #0
d05e0a40:	6123      	str	r3, [r4, #16]
d05e0a42:	4616      	mov	r6, r2
d05e0a44:	e7ba      	b.n	d05e09bc <_printf_i+0x150>
d05e0a46:	680b      	ldr	r3, [r1, #0]
d05e0a48:	1d1a      	adds	r2, r3, #4
d05e0a4a:	600a      	str	r2, [r1, #0]
d05e0a4c:	681e      	ldr	r6, [r3, #0]
d05e0a4e:	6862      	ldr	r2, [r4, #4]
d05e0a50:	2100      	movs	r1, #0
d05e0a52:	4630      	mov	r0, r6
d05e0a54:	f000 f834 	bl	d05e0ac0 <memchr>
d05e0a58:	b108      	cbz	r0, d05e0a5e <_printf_i+0x1f2>
d05e0a5a:	1b80      	subs	r0, r0, r6
d05e0a5c:	6060      	str	r0, [r4, #4]
d05e0a5e:	6863      	ldr	r3, [r4, #4]
d05e0a60:	6123      	str	r3, [r4, #16]
d05e0a62:	2300      	movs	r3, #0
d05e0a64:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05e0a68:	e7a8      	b.n	d05e09bc <_printf_i+0x150>
d05e0a6a:	6923      	ldr	r3, [r4, #16]
d05e0a6c:	4632      	mov	r2, r6
d05e0a6e:	4649      	mov	r1, r9
d05e0a70:	4640      	mov	r0, r8
d05e0a72:	47d0      	blx	sl
d05e0a74:	3001      	adds	r0, #1
d05e0a76:	d0ab      	beq.n	d05e09d0 <_printf_i+0x164>
d05e0a78:	6823      	ldr	r3, [r4, #0]
d05e0a7a:	079b      	lsls	r3, r3, #30
d05e0a7c:	d413      	bmi.n	d05e0aa6 <_printf_i+0x23a>
d05e0a7e:	68e0      	ldr	r0, [r4, #12]
d05e0a80:	9b03      	ldr	r3, [sp, #12]
d05e0a82:	4298      	cmp	r0, r3
d05e0a84:	bfb8      	it	lt
d05e0a86:	4618      	movlt	r0, r3
d05e0a88:	e7a4      	b.n	d05e09d4 <_printf_i+0x168>
d05e0a8a:	2301      	movs	r3, #1
d05e0a8c:	4632      	mov	r2, r6
d05e0a8e:	4649      	mov	r1, r9
d05e0a90:	4640      	mov	r0, r8
d05e0a92:	47d0      	blx	sl
d05e0a94:	3001      	adds	r0, #1
d05e0a96:	d09b      	beq.n	d05e09d0 <_printf_i+0x164>
d05e0a98:	3501      	adds	r5, #1
d05e0a9a:	68e3      	ldr	r3, [r4, #12]
d05e0a9c:	9903      	ldr	r1, [sp, #12]
d05e0a9e:	1a5b      	subs	r3, r3, r1
d05e0aa0:	42ab      	cmp	r3, r5
d05e0aa2:	dcf2      	bgt.n	d05e0a8a <_printf_i+0x21e>
d05e0aa4:	e7eb      	b.n	d05e0a7e <_printf_i+0x212>
d05e0aa6:	2500      	movs	r5, #0
d05e0aa8:	f104 0619 	add.w	r6, r4, #25
d05e0aac:	e7f5      	b.n	d05e0a9a <_printf_i+0x22e>
d05e0aae:	bf00      	nop
d05e0ab0:	d05e0f9c 	.word	0xd05e0f9c
d05e0ab4:	d05e0fad 	.word	0xd05e0fad
	...

d05e0ac0 <memchr>:
d05e0ac0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05e0ac4:	2a10      	cmp	r2, #16
d05e0ac6:	db2b      	blt.n	d05e0b20 <memchr+0x60>
d05e0ac8:	f010 0f07 	tst.w	r0, #7
d05e0acc:	d008      	beq.n	d05e0ae0 <memchr+0x20>
d05e0ace:	f810 3b01 	ldrb.w	r3, [r0], #1
d05e0ad2:	3a01      	subs	r2, #1
d05e0ad4:	428b      	cmp	r3, r1
d05e0ad6:	d02d      	beq.n	d05e0b34 <memchr+0x74>
d05e0ad8:	f010 0f07 	tst.w	r0, #7
d05e0adc:	b342      	cbz	r2, d05e0b30 <memchr+0x70>
d05e0ade:	d1f6      	bne.n	d05e0ace <memchr+0xe>
d05e0ae0:	b4f0      	push	{r4, r5, r6, r7}
d05e0ae2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d05e0ae6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d05e0aea:	f022 0407 	bic.w	r4, r2, #7
d05e0aee:	f07f 0700 	mvns.w	r7, #0
d05e0af2:	2300      	movs	r3, #0
d05e0af4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d05e0af8:	3c08      	subs	r4, #8
d05e0afa:	ea85 0501 	eor.w	r5, r5, r1
d05e0afe:	ea86 0601 	eor.w	r6, r6, r1
d05e0b02:	fa85 f547 	uadd8	r5, r5, r7
d05e0b06:	faa3 f587 	sel	r5, r3, r7
d05e0b0a:	fa86 f647 	uadd8	r6, r6, r7
d05e0b0e:	faa5 f687 	sel	r6, r5, r7
d05e0b12:	b98e      	cbnz	r6, d05e0b38 <memchr+0x78>
d05e0b14:	d1ee      	bne.n	d05e0af4 <memchr+0x34>
d05e0b16:	bcf0      	pop	{r4, r5, r6, r7}
d05e0b18:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05e0b1c:	f002 0207 	and.w	r2, r2, #7
d05e0b20:	b132      	cbz	r2, d05e0b30 <memchr+0x70>
d05e0b22:	f810 3b01 	ldrb.w	r3, [r0], #1
d05e0b26:	3a01      	subs	r2, #1
d05e0b28:	ea83 0301 	eor.w	r3, r3, r1
d05e0b2c:	b113      	cbz	r3, d05e0b34 <memchr+0x74>
d05e0b2e:	d1f8      	bne.n	d05e0b22 <memchr+0x62>
d05e0b30:	2000      	movs	r0, #0
d05e0b32:	4770      	bx	lr
d05e0b34:	3801      	subs	r0, #1
d05e0b36:	4770      	bx	lr
d05e0b38:	2d00      	cmp	r5, #0
d05e0b3a:	bf06      	itte	eq
d05e0b3c:	4635      	moveq	r5, r6
d05e0b3e:	3803      	subeq	r0, #3
d05e0b40:	3807      	subne	r0, #7
d05e0b42:	f015 0f01 	tst.w	r5, #1
d05e0b46:	d107      	bne.n	d05e0b58 <memchr+0x98>
d05e0b48:	3001      	adds	r0, #1
d05e0b4a:	f415 7f80 	tst.w	r5, #256	; 0x100
d05e0b4e:	bf02      	ittt	eq
d05e0b50:	3001      	addeq	r0, #1
d05e0b52:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d05e0b56:	3001      	addeq	r0, #1
d05e0b58:	bcf0      	pop	{r4, r5, r6, r7}
d05e0b5a:	3801      	subs	r0, #1
d05e0b5c:	4770      	bx	lr
d05e0b5e:	bf00      	nop

d05e0b60 <memcpy>:
d05e0b60:	440a      	add	r2, r1
d05e0b62:	4291      	cmp	r1, r2
d05e0b64:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d05e0b68:	d100      	bne.n	d05e0b6c <memcpy+0xc>
d05e0b6a:	4770      	bx	lr
d05e0b6c:	b510      	push	{r4, lr}
d05e0b6e:	f811 4b01 	ldrb.w	r4, [r1], #1
d05e0b72:	f803 4f01 	strb.w	r4, [r3, #1]!
d05e0b76:	4291      	cmp	r1, r2
d05e0b78:	d1f9      	bne.n	d05e0b6e <memcpy+0xe>
d05e0b7a:	bd10      	pop	{r4, pc}

d05e0b7c <memmove>:
d05e0b7c:	4288      	cmp	r0, r1
d05e0b7e:	b510      	push	{r4, lr}
d05e0b80:	eb01 0402 	add.w	r4, r1, r2
d05e0b84:	d902      	bls.n	d05e0b8c <memmove+0x10>
d05e0b86:	4284      	cmp	r4, r0
d05e0b88:	4623      	mov	r3, r4
d05e0b8a:	d807      	bhi.n	d05e0b9c <memmove+0x20>
d05e0b8c:	1e43      	subs	r3, r0, #1
d05e0b8e:	42a1      	cmp	r1, r4
d05e0b90:	d008      	beq.n	d05e0ba4 <memmove+0x28>
d05e0b92:	f811 2b01 	ldrb.w	r2, [r1], #1
d05e0b96:	f803 2f01 	strb.w	r2, [r3, #1]!
d05e0b9a:	e7f8      	b.n	d05e0b8e <memmove+0x12>
d05e0b9c:	4402      	add	r2, r0
d05e0b9e:	4601      	mov	r1, r0
d05e0ba0:	428a      	cmp	r2, r1
d05e0ba2:	d100      	bne.n	d05e0ba6 <memmove+0x2a>
d05e0ba4:	bd10      	pop	{r4, pc}
d05e0ba6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d05e0baa:	f802 4d01 	strb.w	r4, [r2, #-1]!
d05e0bae:	e7f7      	b.n	d05e0ba0 <memmove+0x24>

d05e0bb0 <_free_r>:
d05e0bb0:	b537      	push	{r0, r1, r2, r4, r5, lr}
d05e0bb2:	2900      	cmp	r1, #0
d05e0bb4:	d048      	beq.n	d05e0c48 <_free_r+0x98>
d05e0bb6:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05e0bba:	9001      	str	r0, [sp, #4]
d05e0bbc:	2b00      	cmp	r3, #0
d05e0bbe:	f1a1 0404 	sub.w	r4, r1, #4
d05e0bc2:	bfb8      	it	lt
d05e0bc4:	18e4      	addlt	r4, r4, r3
d05e0bc6:	f000 f8d3 	bl	d05e0d70 <__malloc_lock>
d05e0bca:	4a20      	ldr	r2, [pc, #128]	; (d05e0c4c <_free_r+0x9c>)
d05e0bcc:	9801      	ldr	r0, [sp, #4]
d05e0bce:	6813      	ldr	r3, [r2, #0]
d05e0bd0:	4615      	mov	r5, r2
d05e0bd2:	b933      	cbnz	r3, d05e0be2 <_free_r+0x32>
d05e0bd4:	6063      	str	r3, [r4, #4]
d05e0bd6:	6014      	str	r4, [r2, #0]
d05e0bd8:	b003      	add	sp, #12
d05e0bda:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05e0bde:	f000 b8cd 	b.w	d05e0d7c <__malloc_unlock>
d05e0be2:	42a3      	cmp	r3, r4
d05e0be4:	d90b      	bls.n	d05e0bfe <_free_r+0x4e>
d05e0be6:	6821      	ldr	r1, [r4, #0]
d05e0be8:	1862      	adds	r2, r4, r1
d05e0bea:	4293      	cmp	r3, r2
d05e0bec:	bf04      	itt	eq
d05e0bee:	681a      	ldreq	r2, [r3, #0]
d05e0bf0:	685b      	ldreq	r3, [r3, #4]
d05e0bf2:	6063      	str	r3, [r4, #4]
d05e0bf4:	bf04      	itt	eq
d05e0bf6:	1852      	addeq	r2, r2, r1
d05e0bf8:	6022      	streq	r2, [r4, #0]
d05e0bfa:	602c      	str	r4, [r5, #0]
d05e0bfc:	e7ec      	b.n	d05e0bd8 <_free_r+0x28>
d05e0bfe:	461a      	mov	r2, r3
d05e0c00:	685b      	ldr	r3, [r3, #4]
d05e0c02:	b10b      	cbz	r3, d05e0c08 <_free_r+0x58>
d05e0c04:	42a3      	cmp	r3, r4
d05e0c06:	d9fa      	bls.n	d05e0bfe <_free_r+0x4e>
d05e0c08:	6811      	ldr	r1, [r2, #0]
d05e0c0a:	1855      	adds	r5, r2, r1
d05e0c0c:	42a5      	cmp	r5, r4
d05e0c0e:	d10b      	bne.n	d05e0c28 <_free_r+0x78>
d05e0c10:	6824      	ldr	r4, [r4, #0]
d05e0c12:	4421      	add	r1, r4
d05e0c14:	1854      	adds	r4, r2, r1
d05e0c16:	42a3      	cmp	r3, r4
d05e0c18:	6011      	str	r1, [r2, #0]
d05e0c1a:	d1dd      	bne.n	d05e0bd8 <_free_r+0x28>
d05e0c1c:	681c      	ldr	r4, [r3, #0]
d05e0c1e:	685b      	ldr	r3, [r3, #4]
d05e0c20:	6053      	str	r3, [r2, #4]
d05e0c22:	4421      	add	r1, r4
d05e0c24:	6011      	str	r1, [r2, #0]
d05e0c26:	e7d7      	b.n	d05e0bd8 <_free_r+0x28>
d05e0c28:	d902      	bls.n	d05e0c30 <_free_r+0x80>
d05e0c2a:	230c      	movs	r3, #12
d05e0c2c:	6003      	str	r3, [r0, #0]
d05e0c2e:	e7d3      	b.n	d05e0bd8 <_free_r+0x28>
d05e0c30:	6825      	ldr	r5, [r4, #0]
d05e0c32:	1961      	adds	r1, r4, r5
d05e0c34:	428b      	cmp	r3, r1
d05e0c36:	bf04      	itt	eq
d05e0c38:	6819      	ldreq	r1, [r3, #0]
d05e0c3a:	685b      	ldreq	r3, [r3, #4]
d05e0c3c:	6063      	str	r3, [r4, #4]
d05e0c3e:	bf04      	itt	eq
d05e0c40:	1949      	addeq	r1, r1, r5
d05e0c42:	6021      	streq	r1, [r4, #0]
d05e0c44:	6054      	str	r4, [r2, #4]
d05e0c46:	e7c7      	b.n	d05e0bd8 <_free_r+0x28>
d05e0c48:	b003      	add	sp, #12
d05e0c4a:	bd30      	pop	{r4, r5, pc}
d05e0c4c:	d05e1030 	.word	0xd05e1030

d05e0c50 <_malloc_r>:
d05e0c50:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0c52:	1ccd      	adds	r5, r1, #3
d05e0c54:	f025 0503 	bic.w	r5, r5, #3
d05e0c58:	3508      	adds	r5, #8
d05e0c5a:	2d0c      	cmp	r5, #12
d05e0c5c:	bf38      	it	cc
d05e0c5e:	250c      	movcc	r5, #12
d05e0c60:	2d00      	cmp	r5, #0
d05e0c62:	4606      	mov	r6, r0
d05e0c64:	db01      	blt.n	d05e0c6a <_malloc_r+0x1a>
d05e0c66:	42a9      	cmp	r1, r5
d05e0c68:	d903      	bls.n	d05e0c72 <_malloc_r+0x22>
d05e0c6a:	230c      	movs	r3, #12
d05e0c6c:	6033      	str	r3, [r6, #0]
d05e0c6e:	2000      	movs	r0, #0
d05e0c70:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e0c72:	f000 f87d 	bl	d05e0d70 <__malloc_lock>
d05e0c76:	4921      	ldr	r1, [pc, #132]	; (d05e0cfc <_malloc_r+0xac>)
d05e0c78:	680a      	ldr	r2, [r1, #0]
d05e0c7a:	4614      	mov	r4, r2
d05e0c7c:	b99c      	cbnz	r4, d05e0ca6 <_malloc_r+0x56>
d05e0c7e:	4f20      	ldr	r7, [pc, #128]	; (d05e0d00 <_malloc_r+0xb0>)
d05e0c80:	683b      	ldr	r3, [r7, #0]
d05e0c82:	b923      	cbnz	r3, d05e0c8e <_malloc_r+0x3e>
d05e0c84:	4621      	mov	r1, r4
d05e0c86:	4630      	mov	r0, r6
d05e0c88:	f000 f862 	bl	d05e0d50 <_sbrk_r>
d05e0c8c:	6038      	str	r0, [r7, #0]
d05e0c8e:	4629      	mov	r1, r5
d05e0c90:	4630      	mov	r0, r6
d05e0c92:	f000 f85d 	bl	d05e0d50 <_sbrk_r>
d05e0c96:	1c43      	adds	r3, r0, #1
d05e0c98:	d123      	bne.n	d05e0ce2 <_malloc_r+0x92>
d05e0c9a:	230c      	movs	r3, #12
d05e0c9c:	6033      	str	r3, [r6, #0]
d05e0c9e:	4630      	mov	r0, r6
d05e0ca0:	f000 f86c 	bl	d05e0d7c <__malloc_unlock>
d05e0ca4:	e7e3      	b.n	d05e0c6e <_malloc_r+0x1e>
d05e0ca6:	6823      	ldr	r3, [r4, #0]
d05e0ca8:	1b5b      	subs	r3, r3, r5
d05e0caa:	d417      	bmi.n	d05e0cdc <_malloc_r+0x8c>
d05e0cac:	2b0b      	cmp	r3, #11
d05e0cae:	d903      	bls.n	d05e0cb8 <_malloc_r+0x68>
d05e0cb0:	6023      	str	r3, [r4, #0]
d05e0cb2:	441c      	add	r4, r3
d05e0cb4:	6025      	str	r5, [r4, #0]
d05e0cb6:	e004      	b.n	d05e0cc2 <_malloc_r+0x72>
d05e0cb8:	6863      	ldr	r3, [r4, #4]
d05e0cba:	42a2      	cmp	r2, r4
d05e0cbc:	bf0c      	ite	eq
d05e0cbe:	600b      	streq	r3, [r1, #0]
d05e0cc0:	6053      	strne	r3, [r2, #4]
d05e0cc2:	4630      	mov	r0, r6
d05e0cc4:	f000 f85a 	bl	d05e0d7c <__malloc_unlock>
d05e0cc8:	f104 000b 	add.w	r0, r4, #11
d05e0ccc:	1d23      	adds	r3, r4, #4
d05e0cce:	f020 0007 	bic.w	r0, r0, #7
d05e0cd2:	1ac2      	subs	r2, r0, r3
d05e0cd4:	d0cc      	beq.n	d05e0c70 <_malloc_r+0x20>
d05e0cd6:	1a1b      	subs	r3, r3, r0
d05e0cd8:	50a3      	str	r3, [r4, r2]
d05e0cda:	e7c9      	b.n	d05e0c70 <_malloc_r+0x20>
d05e0cdc:	4622      	mov	r2, r4
d05e0cde:	6864      	ldr	r4, [r4, #4]
d05e0ce0:	e7cc      	b.n	d05e0c7c <_malloc_r+0x2c>
d05e0ce2:	1cc4      	adds	r4, r0, #3
d05e0ce4:	f024 0403 	bic.w	r4, r4, #3
d05e0ce8:	42a0      	cmp	r0, r4
d05e0cea:	d0e3      	beq.n	d05e0cb4 <_malloc_r+0x64>
d05e0cec:	1a21      	subs	r1, r4, r0
d05e0cee:	4630      	mov	r0, r6
d05e0cf0:	f000 f82e 	bl	d05e0d50 <_sbrk_r>
d05e0cf4:	3001      	adds	r0, #1
d05e0cf6:	d1dd      	bne.n	d05e0cb4 <_malloc_r+0x64>
d05e0cf8:	e7cf      	b.n	d05e0c9a <_malloc_r+0x4a>
d05e0cfa:	bf00      	nop
d05e0cfc:	d05e1030 	.word	0xd05e1030
d05e0d00:	d05e1034 	.word	0xd05e1034

d05e0d04 <_realloc_r>:
d05e0d04:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0d06:	4607      	mov	r7, r0
d05e0d08:	4614      	mov	r4, r2
d05e0d0a:	460e      	mov	r6, r1
d05e0d0c:	b921      	cbnz	r1, d05e0d18 <_realloc_r+0x14>
d05e0d0e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d05e0d12:	4611      	mov	r1, r2
d05e0d14:	f7ff bf9c 	b.w	d05e0c50 <_malloc_r>
d05e0d18:	b922      	cbnz	r2, d05e0d24 <_realloc_r+0x20>
d05e0d1a:	f7ff ff49 	bl	d05e0bb0 <_free_r>
d05e0d1e:	4625      	mov	r5, r4
d05e0d20:	4628      	mov	r0, r5
d05e0d22:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e0d24:	f000 f830 	bl	d05e0d88 <_malloc_usable_size_r>
d05e0d28:	42a0      	cmp	r0, r4
d05e0d2a:	d20f      	bcs.n	d05e0d4c <_realloc_r+0x48>
d05e0d2c:	4621      	mov	r1, r4
d05e0d2e:	4638      	mov	r0, r7
d05e0d30:	f7ff ff8e 	bl	d05e0c50 <_malloc_r>
d05e0d34:	4605      	mov	r5, r0
d05e0d36:	2800      	cmp	r0, #0
d05e0d38:	d0f2      	beq.n	d05e0d20 <_realloc_r+0x1c>
d05e0d3a:	4631      	mov	r1, r6
d05e0d3c:	4622      	mov	r2, r4
d05e0d3e:	f7ff ff0f 	bl	d05e0b60 <memcpy>
d05e0d42:	4631      	mov	r1, r6
d05e0d44:	4638      	mov	r0, r7
d05e0d46:	f7ff ff33 	bl	d05e0bb0 <_free_r>
d05e0d4a:	e7e9      	b.n	d05e0d20 <_realloc_r+0x1c>
d05e0d4c:	4635      	mov	r5, r6
d05e0d4e:	e7e7      	b.n	d05e0d20 <_realloc_r+0x1c>

d05e0d50 <_sbrk_r>:
d05e0d50:	b538      	push	{r3, r4, r5, lr}
d05e0d52:	4d06      	ldr	r5, [pc, #24]	; (d05e0d6c <_sbrk_r+0x1c>)
d05e0d54:	2300      	movs	r3, #0
d05e0d56:	4604      	mov	r4, r0
d05e0d58:	4608      	mov	r0, r1
d05e0d5a:	602b      	str	r3, [r5, #0]
d05e0d5c:	f7ff f95a 	bl	d05e0014 <_sbrk>
d05e0d60:	1c43      	adds	r3, r0, #1
d05e0d62:	d102      	bne.n	d05e0d6a <_sbrk_r+0x1a>
d05e0d64:	682b      	ldr	r3, [r5, #0]
d05e0d66:	b103      	cbz	r3, d05e0d6a <_sbrk_r+0x1a>
d05e0d68:	6023      	str	r3, [r4, #0]
d05e0d6a:	bd38      	pop	{r3, r4, r5, pc}
d05e0d6c:	d05e1038 	.word	0xd05e1038

d05e0d70 <__malloc_lock>:
d05e0d70:	4801      	ldr	r0, [pc, #4]	; (d05e0d78 <__malloc_lock+0x8>)
d05e0d72:	f000 b811 	b.w	d05e0d98 <__retarget_lock_acquire_recursive>
d05e0d76:	bf00      	nop
d05e0d78:	d05e1040 	.word	0xd05e1040

d05e0d7c <__malloc_unlock>:
d05e0d7c:	4801      	ldr	r0, [pc, #4]	; (d05e0d84 <__malloc_unlock+0x8>)
d05e0d7e:	f000 b80c 	b.w	d05e0d9a <__retarget_lock_release_recursive>
d05e0d82:	bf00      	nop
d05e0d84:	d05e1040 	.word	0xd05e1040

d05e0d88 <_malloc_usable_size_r>:
d05e0d88:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05e0d8c:	1f18      	subs	r0, r3, #4
d05e0d8e:	2b00      	cmp	r3, #0
d05e0d90:	bfbc      	itt	lt
d05e0d92:	580b      	ldrlt	r3, [r1, r0]
d05e0d94:	18c0      	addlt	r0, r0, r3
d05e0d96:	4770      	bx	lr

d05e0d98 <__retarget_lock_acquire_recursive>:
d05e0d98:	4770      	bx	lr

d05e0d9a <__retarget_lock_release_recursive>:
d05e0d9a:	4770      	bx	lr
d05e0d9c:	35335b1b 	.word	0x35335b1b
d05e0da0:	3830256d 	.word	0x3830256d
d05e0da4:	1b203a58 	.word	0x1b203a58
d05e0da8:	006d305b 	.word	0x006d305b
d05e0dac:	36395b1b 	.word	0x36395b1b
d05e0db0:	3230256d 	.word	0x3230256d
d05e0db4:	5b1b2058 	.word	0x5b1b2058
d05e0db8:	00006d30 	.word	0x00006d30
d05e0dbc:	00202020 	.word	0x00202020
d05e0dc0:	30395b1b 	.word	0x30395b1b
d05e0dc4:	1b63256d 	.word	0x1b63256d
d05e0dc8:	006d305b 	.word	0x006d305b
d05e0dcc:	30395b1b 	.word	0x30395b1b
d05e0dd0:	5b1b2e6d 	.word	0x5b1b2e6d
d05e0dd4:	00006d30 	.word	0x00006d30
d05e0dd8:	6c383025 	.word	0x6c383025
d05e0ddc:	20203a58 	.word	0x20203a58
d05e0de0:	00000000 	.word	0x00000000
d05e0de4:	58323025 	.word	0x58323025
d05e0de8:	00000020 	.word	0x00000020
d05e0dec:	00207c20 	.word	0x00207c20
d05e0df0:	0a0d7325 	.word	0x0a0d7325
d05e0df4:	00000000 	.word	0x00000000
d05e0df8:	0000003f 	.word	0x0000003f
d05e0dfc:	67617355 	.word	0x67617355
d05e0e00:	74203a65 	.word	0x74203a65
d05e0e04:	20657079 	.word	0x20657079
d05e0e08:	6c69663c 	.word	0x6c69663c
d05e0e0c:	5b203e65 	.word	0x5b203e65
d05e0e10:	6f206f2d 	.word	0x6f206f2d
d05e0e14:	65736666 	.word	0x65736666
d05e0e18:	5b205d74 	.word	0x5b205d74
d05e0e1c:	6c206c2d 	.word	0x6c206c2d
d05e0e20:	74676e65 	.word	0x74676e65
d05e0e24:	5b205d68 	.word	0x5b205d68
d05e0e28:	0d5d622d 	.word	0x0d5d622d
d05e0e2c:	0000000a 	.word	0x0000000a
d05e0e30:	6e6b6e55 	.word	0x6e6b6e55
d05e0e34:	206e776f 	.word	0x206e776f
d05e0e38:	75677261 	.word	0x75677261
d05e0e3c:	746e656d 	.word	0x746e656d
d05e0e40:	7325203a 	.word	0x7325203a
d05e0e44:	00000a0d 	.word	0x00000a0d
d05e0e48:	6c696146 	.word	0x6c696146
d05e0e4c:	74206465 	.word	0x74206465
d05e0e50:	706f206f 	.word	0x706f206f
d05e0e54:	66206e65 	.word	0x66206e65
d05e0e58:	3a656c69 	.word	0x3a656c69
d05e0e5c:	0d732520 	.word	0x0d732520
d05e0e60:	0000000a 	.word	0x0000000a
d05e0e64:	6c696146 	.word	0x6c696146
d05e0e68:	74206465 	.word	0x74206465
d05e0e6c:	6573206f 	.word	0x6573206f
d05e0e70:	74206b65 	.word	0x74206b65
d05e0e74:	666f206f 	.word	0x666f206f
d05e0e78:	74657366 	.word	0x74657366
d05e0e7c:	756c2520 	.word	0x756c2520
d05e0e80:	00000a0d 	.word	0x00000a0d
d05e0e84:	00007325 	.word	0x00007325
d05e0e88:	002e      	.short	0x002e

d05e0e8a <_ctype_>:
d05e0e8a:	2000 2020 2020 2020 2020 2828 2828 2028     .         ((((( 
d05e0e9a:	2020 2020 2020 2020 2020 2020 2020 2020                     
d05e0eaa:	8820 1010 1010 1010 1010 1010 1010 1010      ...............
d05e0eba:	0410 0404 0404 0404 0404 1004 1010 1010     ................
d05e0eca:	1010 4141 4141 4141 0101 0101 0101 0101     ..AAAAAA........
d05e0eda:	0101 0101 0101 0101 0101 0101 1010 1010     ................
d05e0eea:	1010 4242 4242 4242 0202 0202 0202 0202     ..BBBBBB........
d05e0efa:	0202 0202 0202 0202 0202 0202 1010 1010     ................
d05e0f0a:	0020 0000 0000 0000 0000 0000 0000 0000      ...............
	...
d05e0f8a:	2300 302d 202b 6800 4c6c 6500 6766 4645     .#-0+ .hlL.efgEF
d05e0f9a:	0047 3130 3332 3534 3736 3938 4241 4443     G.0123456789ABCD
d05e0faa:	4645 3000 3231 3433 3635 3837 6139 6362     EF.0123456789abc
d05e0fba:	6564 0066                                   def.

Disassembly of section .init:

d05e0fc0 <_init>:
d05e0fc0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0fc2:	bf00      	nop

Disassembly of section .fini:

d05e0fc4 <_fini>:
d05e0fc4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0fc6:	bf00      	nop
