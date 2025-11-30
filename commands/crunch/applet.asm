
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d05e0010 <applet_entry>:
d05e0010:	f000 bd80 	b.w	d05e0b14 <main>

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
d05e0028:	d05e1b40 	.word	0xd05e1b40
d05e002c:	d09f1b61 	.word	0xd09f1b61

d05e0030 <pack_lzss.part.0>:
d05e0030:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05e0034:	b089      	sub	sp, #36	; 0x24
d05e0036:	4681      	mov	r9, r0
d05e0038:	4610      	mov	r0, r2
d05e003a:	7011      	strb	r1, [r2, #0]
d05e003c:	9306      	str	r3, [sp, #24]
d05e003e:	0a0b      	lsrs	r3, r1, #8
d05e0040:	e9cd 1204 	strd	r1, r2, [sp, #16]
d05e0044:	7043      	strb	r3, [r0, #1]
d05e0046:	0c0a      	lsrs	r2, r1, #16
d05e0048:	0e0b      	lsrs	r3, r1, #24
d05e004a:	7082      	strb	r2, [r0, #2]
d05e004c:	70c3      	strb	r3, [r0, #3]
d05e004e:	2900      	cmp	r1, #0
d05e0050:	f000 80b3 	beq.w	d05e01ba <pack_lzss.part.0+0x18a>
d05e0054:	2300      	movs	r3, #0
d05e0056:	2204      	movs	r2, #4
d05e0058:	4698      	mov	r8, r3
d05e005a:	9207      	str	r2, [sp, #28]
d05e005c:	2205      	movs	r2, #5
d05e005e:	9303      	str	r3, [sp, #12]
d05e0060:	e9cd 2301 	strd	r2, r3, [sp, #4]
d05e0064:	9b04      	ldr	r3, [sp, #16]
d05e0066:	f5b8 5f80 	cmp.w	r8, #4096	; 0x1000
d05e006a:	4646      	mov	r6, r8
d05e006c:	eba3 0b08 	sub.w	fp, r3, r8
d05e0070:	bf38      	it	cc
d05e0072:	f44f 5680 	movcc.w	r6, #4096	; 0x1000
d05e0076:	465d      	mov	r5, fp
d05e0078:	f5a6 5680 	sub.w	r6, r6, #4096	; 0x1000
d05e007c:	2d12      	cmp	r5, #18
d05e007e:	bf28      	it	cs
d05e0080:	2512      	movcs	r5, #18
d05e0082:	4546      	cmp	r6, r8
d05e0084:	d225      	bcs.n	d05e00d2 <pack_lzss.part.0+0xa2>
d05e0086:	f04f 0a00 	mov.w	sl, #0
d05e008a:	f109 3eff 	add.w	lr, r9, #4294967295	; 0xffffffff
d05e008e:	f108 3cff 	add.w	ip, r8, #4294967295	; 0xffffffff
d05e0092:	4657      	mov	r7, sl
d05e0094:	eb0e 0106 	add.w	r1, lr, r6
d05e0098:	eb09 020c 	add.w	r2, r9, ip
d05e009c:	2300      	movs	r3, #0
d05e009e:	f811 4f01 	ldrb.w	r4, [r1, #1]!
d05e00a2:	f812 0f01 	ldrb.w	r0, [r2, #1]!
d05e00a6:	4284      	cmp	r4, r0
d05e00a8:	d14c      	bne.n	d05e0144 <pack_lzss.part.0+0x114>
d05e00aa:	3301      	adds	r3, #1
d05e00ac:	429d      	cmp	r5, r3
d05e00ae:	d1f6      	bne.n	d05e009e <pack_lzss.part.0+0x6e>
d05e00b0:	2f02      	cmp	r7, #2
d05e00b2:	463b      	mov	r3, r7
d05e00b4:	bf38      	it	cc
d05e00b6:	2302      	movcc	r3, #2
d05e00b8:	429d      	cmp	r5, r3
d05e00ba:	d905      	bls.n	d05e00c8 <pack_lzss.part.0+0x98>
d05e00bc:	f1bb 0f11 	cmp.w	fp, #17
d05e00c0:	d84f      	bhi.n	d05e0162 <pack_lzss.part.0+0x132>
d05e00c2:	462b      	mov	r3, r5
d05e00c4:	461f      	mov	r7, r3
d05e00c6:	46b2      	mov	sl, r6
d05e00c8:	3601      	adds	r6, #1
d05e00ca:	45b0      	cmp	r8, r6
d05e00cc:	d8e2      	bhi.n	d05e0094 <pack_lzss.part.0+0x64>
d05e00ce:	2f02      	cmp	r7, #2
d05e00d0:	d860      	bhi.n	d05e0194 <pack_lzss.part.0+0x164>
d05e00d2:	9901      	ldr	r1, [sp, #4]
d05e00d4:	9a06      	ldr	r2, [sp, #24]
d05e00d6:	1c4b      	adds	r3, r1, #1
d05e00d8:	429a      	cmp	r2, r3
d05e00da:	d361      	bcc.n	d05e01a0 <pack_lzss.part.0+0x170>
d05e00dc:	9802      	ldr	r0, [sp, #8]
d05e00de:	f819 2008 	ldrb.w	r2, [r9, r8]
d05e00e2:	f108 0801 	add.w	r8, r8, #1
d05e00e6:	0840      	lsrs	r0, r0, #1
d05e00e8:	9301      	str	r3, [sp, #4]
d05e00ea:	9002      	str	r0, [sp, #8]
d05e00ec:	9805      	ldr	r0, [sp, #20]
d05e00ee:	5442      	strb	r2, [r0, r1]
d05e00f0:	9b03      	ldr	r3, [sp, #12]
d05e00f2:	3301      	adds	r3, #1
d05e00f4:	2b08      	cmp	r3, #8
d05e00f6:	9303      	str	r3, [sp, #12]
d05e00f8:	d10b      	bne.n	d05e0112 <pack_lzss.part.0+0xe2>
d05e00fa:	9b05      	ldr	r3, [sp, #20]
d05e00fc:	9a07      	ldr	r2, [sp, #28]
d05e00fe:	4619      	mov	r1, r3
d05e0100:	9b02      	ldr	r3, [sp, #8]
d05e0102:	548b      	strb	r3, [r1, r2]
d05e0104:	2300      	movs	r3, #0
d05e0106:	9a01      	ldr	r2, [sp, #4]
d05e0108:	9302      	str	r3, [sp, #8]
d05e010a:	9207      	str	r2, [sp, #28]
d05e010c:	3201      	adds	r2, #1
d05e010e:	9303      	str	r3, [sp, #12]
d05e0110:	9201      	str	r2, [sp, #4]
d05e0112:	4a2b      	ldr	r2, [pc, #172]	; (d05e01c0 <pack_lzss.part.0+0x190>)
d05e0114:	6813      	ldr	r3, [r2, #0]
d05e0116:	3301      	adds	r3, #1
d05e0118:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d05e011c:	d819      	bhi.n	d05e0152 <pack_lzss.part.0+0x122>
d05e011e:	6013      	str	r3, [r2, #0]
d05e0120:	9b04      	ldr	r3, [sp, #16]
d05e0122:	4543      	cmp	r3, r8
d05e0124:	d89e      	bhi.n	d05e0064 <pack_lzss.part.0+0x34>
d05e0126:	9b03      	ldr	r3, [sp, #12]
d05e0128:	2b00      	cmp	r3, #0
d05e012a:	d03f      	beq.n	d05e01ac <pack_lzss.part.0+0x17c>
d05e012c:	f1c3 0308 	rsb	r3, r3, #8
d05e0130:	9a02      	ldr	r2, [sp, #8]
d05e0132:	9907      	ldr	r1, [sp, #28]
d05e0134:	411a      	asrs	r2, r3
d05e0136:	4613      	mov	r3, r2
d05e0138:	9a05      	ldr	r2, [sp, #20]
d05e013a:	5453      	strb	r3, [r2, r1]
d05e013c:	9801      	ldr	r0, [sp, #4]
d05e013e:	b009      	add	sp, #36	; 0x24
d05e0140:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e0144:	2f02      	cmp	r7, #2
d05e0146:	463a      	mov	r2, r7
d05e0148:	bf38      	it	cc
d05e014a:	2202      	movcc	r2, #2
d05e014c:	4293      	cmp	r3, r2
d05e014e:	d9bb      	bls.n	d05e00c8 <pack_lzss.part.0+0x98>
d05e0150:	e7b8      	b.n	d05e00c4 <pack_lzss.part.0+0x94>
d05e0152:	4a1b      	ldr	r2, [pc, #108]	; (d05e01c0 <pack_lzss.part.0+0x190>)
d05e0154:	2100      	movs	r1, #0
d05e0156:	4b1b      	ldr	r3, [pc, #108]	; (d05e01c4 <pack_lzss.part.0+0x194>)
d05e0158:	481b      	ldr	r0, [pc, #108]	; (d05e01c8 <pack_lzss.part.0+0x198>)
d05e015a:	689b      	ldr	r3, [r3, #8]
d05e015c:	6011      	str	r1, [r2, #0]
d05e015e:	4798      	blx	r3
d05e0160:	e7de      	b.n	d05e0120 <pack_lzss.part.0+0xf0>
d05e0162:	9c01      	ldr	r4, [sp, #4]
d05e0164:	2712      	movs	r7, #18
d05e0166:	9a06      	ldr	r2, [sp, #24]
d05e0168:	1ca3      	adds	r3, r4, #2
d05e016a:	4293      	cmp	r3, r2
d05e016c:	d818      	bhi.n	d05e01a0 <pack_lzss.part.0+0x170>
d05e016e:	9902      	ldr	r1, [sp, #8]
d05e0170:	1efa      	subs	r2, r7, #3
d05e0172:	ebac 0606 	sub.w	r6, ip, r6
d05e0176:	9d05      	ldr	r5, [sp, #20]
d05e0178:	0849      	lsrs	r1, r1, #1
d05e017a:	44b8      	add	r8, r7
d05e017c:	ea42 1606 	orr.w	r6, r2, r6, lsl #4
d05e0180:	1928      	adds	r0, r5, r4
d05e0182:	f041 0280 	orr.w	r2, r1, #128	; 0x80
d05e0186:	9301      	str	r3, [sp, #4]
d05e0188:	9202      	str	r2, [sp, #8]
d05e018a:	b2b2      	uxth	r2, r6
d05e018c:	0a11      	lsrs	r1, r2, #8
d05e018e:	552a      	strb	r2, [r5, r4]
d05e0190:	7041      	strb	r1, [r0, #1]
d05e0192:	e7ad      	b.n	d05e00f0 <pack_lzss.part.0+0xc0>
d05e0194:	9c01      	ldr	r4, [sp, #4]
d05e0196:	4656      	mov	r6, sl
d05e0198:	9a06      	ldr	r2, [sp, #24]
d05e019a:	1ca3      	adds	r3, r4, #2
d05e019c:	4293      	cmp	r3, r2
d05e019e:	d9e6      	bls.n	d05e016e <pack_lzss.part.0+0x13e>
d05e01a0:	2300      	movs	r3, #0
d05e01a2:	9301      	str	r3, [sp, #4]
d05e01a4:	9801      	ldr	r0, [sp, #4]
d05e01a6:	b009      	add	sp, #36	; 0x24
d05e01a8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e01ac:	9b01      	ldr	r3, [sp, #4]
d05e01ae:	3b01      	subs	r3, #1
d05e01b0:	9301      	str	r3, [sp, #4]
d05e01b2:	9801      	ldr	r0, [sp, #4]
d05e01b4:	b009      	add	sp, #36	; 0x24
d05e01b6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e01ba:	2304      	movs	r3, #4
d05e01bc:	9301      	str	r3, [sp, #4]
d05e01be:	e7bd      	b.n	d05e013c <pack_lzss.part.0+0x10c>
d05e01c0:	d05e1b44 	.word	0xd05e1b44
d05e01c4:	2001f000 	.word	0x2001f000
d05e01c8:	d05e15cc 	.word	0xd05e15cc

d05e01cc <depack_lzss.part.0>:
d05e01cc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05e01d0:	468b      	mov	fp, r1
d05e01d2:	6801      	ldr	r1, [r0, #0]
d05e01d4:	b087      	sub	sp, #28
d05e01d6:	428b      	cmp	r3, r1
d05e01d8:	9103      	str	r1, [sp, #12]
d05e01da:	d323      	bcc.n	d05e0224 <depack_lzss.part.0+0x58>
d05e01dc:	460e      	mov	r6, r1
d05e01de:	2900      	cmp	r1, #0
d05e01e0:	f000 809d 	beq.w	d05e031e <depack_lzss.part.0+0x152>
d05e01e4:	f1bb 0f04 	cmp.w	fp, #4
d05e01e8:	f240 8099 	bls.w	d05e031e <depack_lzss.part.0+0x152>
d05e01ec:	2100      	movs	r1, #0
d05e01ee:	1c93      	adds	r3, r2, #2
d05e01f0:	2404      	movs	r4, #4
d05e01f2:	46b2      	mov	sl, r6
d05e01f4:	9305      	str	r3, [sp, #20]
d05e01f6:	460d      	mov	r5, r1
d05e01f8:	460b      	mov	r3, r1
d05e01fa:	b9cd      	cbnz	r5, d05e0230 <depack_lzss.part.0+0x64>
d05e01fc:	5d01      	ldrb	r1, [r0, r4]
d05e01fe:	1c66      	adds	r6, r4, #1
d05e0200:	07cf      	lsls	r7, r1, #31
d05e0202:	d41a      	bmi.n	d05e023a <depack_lzss.part.0+0x6e>
d05e0204:	455e      	cmp	r6, fp
d05e0206:	d20d      	bcs.n	d05e0224 <depack_lzss.part.0+0x58>
d05e0208:	2507      	movs	r5, #7
d05e020a:	5d87      	ldrb	r7, [r0, r6]
d05e020c:	1c74      	adds	r4, r6, #1
d05e020e:	54d7      	strb	r7, [r2, r3]
d05e0210:	3301      	adds	r3, #1
d05e0212:	4553      	cmp	r3, sl
d05e0214:	ea4f 0151 	mov.w	r1, r1, lsr #1
d05e0218:	d201      	bcs.n	d05e021e <depack_lzss.part.0+0x52>
d05e021a:	45a3      	cmp	fp, r4
d05e021c:	d8ed      	bhi.n	d05e01fa <depack_lzss.part.0+0x2e>
d05e021e:	9a03      	ldr	r2, [sp, #12]
d05e0220:	4293      	cmp	r3, r2
d05e0222:	d07a      	beq.n	d05e031a <depack_lzss.part.0+0x14e>
d05e0224:	2300      	movs	r3, #0
d05e0226:	4618      	mov	r0, r3
d05e0228:	9303      	str	r3, [sp, #12]
d05e022a:	b007      	add	sp, #28
d05e022c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e0230:	07ce      	lsls	r6, r1, #31
d05e0232:	d460      	bmi.n	d05e02f6 <depack_lzss.part.0+0x12a>
d05e0234:	3d01      	subs	r5, #1
d05e0236:	4626      	mov	r6, r4
d05e0238:	e7e7      	b.n	d05e020a <depack_lzss.part.0+0x3e>
d05e023a:	2508      	movs	r5, #8
d05e023c:	1c74      	adds	r4, r6, #1
d05e023e:	455c      	cmp	r4, fp
d05e0240:	d2f0      	bcs.n	d05e0224 <depack_lzss.part.0+0x58>
d05e0242:	5d07      	ldrb	r7, [r0, r4]
d05e0244:	1cb4      	adds	r4, r6, #2
d05e0246:	f810 e006 	ldrb.w	lr, [r0, r6]
d05e024a:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d05e024e:	ea4f 161e 	mov.w	r6, lr, lsr #4
d05e0252:	f00e 0e0f 	and.w	lr, lr, #15
d05e0256:	1c77      	adds	r7, r6, #1
d05e0258:	f10e 0903 	add.w	r9, lr, #3
d05e025c:	429f      	cmp	r7, r3
d05e025e:	d8e1      	bhi.n	d05e0224 <depack_lzss.part.0+0x58>
d05e0260:	eb09 0703 	add.w	r7, r9, r3
d05e0264:	4557      	cmp	r7, sl
d05e0266:	d8dd      	bhi.n	d05e0224 <depack_lzss.part.0+0x58>
d05e0268:	1e5f      	subs	r7, r3, #1
d05e026a:	f103 0c04 	add.w	ip, r3, #4
d05e026e:	1bbe      	subs	r6, r7, r6
d05e0270:	9701      	str	r7, [sp, #4]
d05e0272:	f106 0804 	add.w	r8, r6, #4
d05e0276:	45b4      	cmp	ip, r6
d05e0278:	bfc8      	it	gt
d05e027a:	4598      	cmpgt	r8, r3
d05e027c:	dc3d      	bgt.n	d05e02fa <depack_lzss.part.0+0x12e>
d05e027e:	f10e 0c02 	add.w	ip, lr, #2
d05e0282:	f1bc 0f07 	cmp.w	ip, #7
d05e0286:	d938      	bls.n	d05e02fa <depack_lzss.part.0+0x12e>
d05e0288:	1996      	adds	r6, r2, r6
d05e028a:	f009 081c 	and.w	r8, r9, #28
d05e028e:	4637      	mov	r7, r6
d05e0290:	9601      	str	r6, [sp, #4]
d05e0292:	18d6      	adds	r6, r2, r3
d05e0294:	44b0      	add	r8, r6
d05e0296:	f857 cb04 	ldr.w	ip, [r7], #4
d05e029a:	f846 cb04 	str.w	ip, [r6], #4
d05e029e:	4546      	cmp	r6, r8
d05e02a0:	d1f9      	bne.n	d05e0296 <depack_lzss.part.0+0xca>
d05e02a2:	f029 0603 	bic.w	r6, r9, #3
d05e02a6:	199f      	adds	r7, r3, r6
d05e02a8:	454e      	cmp	r6, r9
d05e02aa:	9702      	str	r7, [sp, #8]
d05e02ac:	d01f      	beq.n	d05e02ee <depack_lzss.part.0+0x122>
d05e02ae:	9f01      	ldr	r7, [sp, #4]
d05e02b0:	f106 0c01 	add.w	ip, r6, #1
d05e02b4:	f817 8006 	ldrb.w	r8, [r7, r6]
d05e02b8:	199f      	adds	r7, r3, r6
d05e02ba:	45e1      	cmp	r9, ip
d05e02bc:	f107 0701 	add.w	r7, r7, #1
d05e02c0:	9704      	str	r7, [sp, #16]
d05e02c2:	eb03 0706 	add.w	r7, r3, r6
d05e02c6:	f802 8007 	strb.w	r8, [r2, r7]
d05e02ca:	d910      	bls.n	d05e02ee <depack_lzss.part.0+0x122>
d05e02cc:	9f01      	ldr	r7, [sp, #4]
d05e02ce:	3602      	adds	r6, #2
d05e02d0:	f817 c00c 	ldrb.w	ip, [r7, ip]
d05e02d4:	45b1      	cmp	r9, r6
d05e02d6:	9f02      	ldr	r7, [sp, #8]
d05e02d8:	f107 0702 	add.w	r7, r7, #2
d05e02dc:	9702      	str	r7, [sp, #8]
d05e02de:	9f04      	ldr	r7, [sp, #16]
d05e02e0:	f802 c007 	strb.w	ip, [r2, r7]
d05e02e4:	d903      	bls.n	d05e02ee <depack_lzss.part.0+0x122>
d05e02e6:	9f01      	ldr	r7, [sp, #4]
d05e02e8:	5dbe      	ldrb	r6, [r7, r6]
d05e02ea:	9f02      	ldr	r7, [sp, #8]
d05e02ec:	55d6      	strb	r6, [r2, r7]
d05e02ee:	3303      	adds	r3, #3
d05e02f0:	3d01      	subs	r5, #1
d05e02f2:	4473      	add	r3, lr
d05e02f4:	e78d      	b.n	d05e0212 <depack_lzss.part.0+0x46>
d05e02f6:	4626      	mov	r6, r4
d05e02f8:	e7a0      	b.n	d05e023c <depack_lzss.part.0+0x70>
d05e02fa:	9f05      	ldr	r7, [sp, #20]
d05e02fc:	f106 3cff 	add.w	ip, r6, #4294967295	; 0xffffffff
d05e0300:	eb07 080e 	add.w	r8, r7, lr
d05e0304:	9f01      	ldr	r7, [sp, #4]
d05e0306:	4494      	add	ip, r2
d05e0308:	4417      	add	r7, r2
d05e030a:	4446      	add	r6, r8
d05e030c:	f81c 8f01 	ldrb.w	r8, [ip, #1]!
d05e0310:	45b4      	cmp	ip, r6
d05e0312:	f807 8f01 	strb.w	r8, [r7, #1]!
d05e0316:	d1f9      	bne.n	d05e030c <depack_lzss.part.0+0x140>
d05e0318:	e7e9      	b.n	d05e02ee <depack_lzss.part.0+0x122>
d05e031a:	4610      	mov	r0, r2
d05e031c:	e785      	b.n	d05e022a <depack_lzss.part.0+0x5e>
d05e031e:	2300      	movs	r3, #0
d05e0320:	e77d      	b.n	d05e021e <depack_lzss.part.0+0x52>
d05e0322:	bf00      	nop

d05e0324 <pack_lzss>:
d05e0324:	b410      	push	{r4}
d05e0326:	1d0c      	adds	r4, r1, #4
d05e0328:	429c      	cmp	r4, r3
d05e032a:	d803      	bhi.n	d05e0334 <pack_lzss+0x10>
d05e032c:	f85d 4b04 	ldr.w	r4, [sp], #4
d05e0330:	f7ff be7e 	b.w	d05e0030 <pack_lzss.part.0>
d05e0334:	2000      	movs	r0, #0
d05e0336:	f85d 4b04 	ldr.w	r4, [sp], #4
d05e033a:	4770      	bx	lr

d05e033c <depack_lzss>:
d05e033c:	2903      	cmp	r1, #3
d05e033e:	d901      	bls.n	d05e0344 <depack_lzss+0x8>
d05e0340:	f7ff bf44 	b.w	d05e01cc <depack_lzss.part.0>
d05e0344:	2000      	movs	r0, #0
d05e0346:	4770      	bx	lr

d05e0348 <lzss_compress>:
d05e0348:	b538      	push	{r3, r4, r5, lr}
d05e034a:	1d0c      	adds	r4, r1, #4
d05e034c:	429c      	cmp	r4, r3
d05e034e:	d901      	bls.n	d05e0354 <lzss_compress+0xc>
d05e0350:	2000      	movs	r0, #0
d05e0352:	bd38      	pop	{r3, r4, r5, pc}
d05e0354:	4615      	mov	r5, r2
d05e0356:	f7ff fe6b 	bl	d05e0030 <pack_lzss.part.0>
d05e035a:	2804      	cmp	r0, #4
d05e035c:	d9f8      	bls.n	d05e0350 <lzss_compress+0x8>
d05e035e:	1f04      	subs	r4, r0, #4
d05e0360:	1d29      	adds	r1, r5, #4
d05e0362:	4628      	mov	r0, r5
d05e0364:	4622      	mov	r2, r4
d05e0366:	f000 fc89 	bl	d05e0c7c <memmove>
d05e036a:	4620      	mov	r0, r4
d05e036c:	bd38      	pop	{r3, r4, r5, pc}
d05e036e:	bf00      	nop

d05e0370 <extract_archive.part.0>:
d05e0370:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05e0374:	23ff      	movs	r3, #255	; 0xff
d05e0376:	b0e8      	sub	sp, #416	; 0x1a0
d05e0378:	4eb1      	ldr	r6, [pc, #708]	; (d05e0640 <extract_archive.part.0+0x2d0>)
d05e037a:	2201      	movs	r2, #1
d05e037c:	f88d 300e 	strb.w	r3, [sp, #14]
d05e0380:	4605      	mov	r5, r0
d05e0382:	f10d 010e 	add.w	r1, sp, #14
d05e0386:	f8d6 70a0 	ldr.w	r7, [r6, #160]	; 0xa0
d05e038a:	4610      	mov	r0, r2
d05e038c:	2300      	movs	r3, #0
d05e038e:	47b8      	blx	r7
d05e0390:	2800      	cmp	r0, #0
d05e0392:	f040 812f 	bne.w	d05e05f4 <extract_archive.part.0+0x284>
d05e0396:	f89d 300e 	ldrb.w	r3, [sp, #14]
d05e039a:	2b02      	cmp	r3, #2
d05e039c:	d90b      	bls.n	d05e03b6 <extract_archive.part.0+0x46>
d05e039e:	4619      	mov	r1, r3
d05e03a0:	48a8      	ldr	r0, [pc, #672]	; (d05e0644 <extract_archive.part.0+0x2d4>)
d05e03a2:	68b3      	ldr	r3, [r6, #8]
d05e03a4:	4798      	blx	r3
d05e03a6:	f8d6 3098 	ldr.w	r3, [r6, #152]	; 0x98
d05e03aa:	2001      	movs	r0, #1
d05e03ac:	4798      	blx	r3
d05e03ae:	2001      	movs	r0, #1
d05e03b0:	b068      	add	sp, #416	; 0x1a0
d05e03b2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e03b6:	f8df 82bc 	ldr.w	r8, [pc, #700]	; d05e0674 <extract_archive.part.0+0x304>
d05e03ba:	4604      	mov	r4, r0
d05e03bc:	4629      	mov	r1, r5
d05e03be:	227f      	movs	r2, #127	; 0x7f
d05e03c0:	a808      	add	r0, sp, #32
d05e03c2:	f888 3000 	strb.w	r3, [r8]
d05e03c6:	f000 fcb9 	bl	d05e0d3c <strncpy>
d05e03ca:	a808      	add	r0, sp, #32
d05e03cc:	f88d 409f 	strb.w	r4, [sp, #159]	; 0x9f
d05e03d0:	f000 fcac 	bl	d05e0d2c <strlen>
d05e03d4:	2800      	cmp	r0, #0
d05e03d6:	f040 8129 	bne.w	d05e062c <extract_archive.part.0+0x2bc>
d05e03da:	4e99      	ldr	r6, [pc, #612]	; (d05e0640 <extract_archive.part.0+0x2d0>)
d05e03dc:	f8df 9298 	ldr.w	r9, [pc, #664]	; d05e0678 <extract_archive.part.0+0x308>
d05e03e0:	2201      	movs	r2, #1
d05e03e2:	2300      	movs	r3, #0
d05e03e4:	f8d6 40a0 	ldr.w	r4, [r6, #160]	; 0xa0
d05e03e8:	f10d 010f 	add.w	r1, sp, #15
d05e03ec:	4610      	mov	r0, r2
d05e03ee:	47a0      	blx	r4
d05e03f0:	4603      	mov	r3, r0
d05e03f2:	2800      	cmp	r0, #0
d05e03f4:	f040 810d 	bne.w	d05e0612 <extract_archive.part.0+0x2a2>
d05e03f8:	f89d 200f 	ldrb.w	r2, [sp, #15]
d05e03fc:	2a00      	cmp	r2, #0
d05e03fe:	f000 8108 	beq.w	d05e0612 <extract_archive.part.0+0x2a2>
d05e0402:	f8d6 40a0 	ldr.w	r4, [r6, #160]	; 0xa0
d05e0406:	a928      	add	r1, sp, #160	; 0xa0
d05e0408:	2001      	movs	r0, #1
d05e040a:	47a0      	blx	r4
d05e040c:	4603      	mov	r3, r0
d05e040e:	2800      	cmp	r0, #0
d05e0410:	f040 80ff 	bne.w	d05e0612 <extract_archive.part.0+0x2a2>
d05e0414:	f89d 200f 	ldrb.w	r2, [sp, #15]
d05e0418:	a928      	add	r1, sp, #160	; 0xa0
d05e041a:	5488      	strb	r0, [r1, r2]
d05e041c:	a904      	add	r1, sp, #16
d05e041e:	f8d6 40a0 	ldr.w	r4, [r6, #160]	; 0xa0
d05e0422:	2204      	movs	r2, #4
d05e0424:	9004      	str	r0, [sp, #16]
d05e0426:	2001      	movs	r0, #1
d05e0428:	9305      	str	r3, [sp, #20]
d05e042a:	47a0      	blx	r4
d05e042c:	4603      	mov	r3, r0
d05e042e:	2800      	cmp	r0, #0
d05e0430:	f040 80ef 	bne.w	d05e0612 <extract_archive.part.0+0x2a2>
d05e0434:	f8d6 40a0 	ldr.w	r4, [r6, #160]	; 0xa0
d05e0438:	2204      	movs	r2, #4
d05e043a:	a905      	add	r1, sp, #20
d05e043c:	2001      	movs	r0, #1
d05e043e:	47a0      	blx	r4
d05e0440:	4607      	mov	r7, r0
d05e0442:	2800      	cmp	r0, #0
d05e0444:	f040 80e5 	bne.w	d05e0612 <extract_archive.part.0+0x2a2>
d05e0448:	ab28      	add	r3, sp, #160	; 0xa0
d05e044a:	464a      	mov	r2, r9
d05e044c:	a848      	add	r0, sp, #288	; 0x120
d05e044e:	2180      	movs	r1, #128	; 0x80
d05e0450:	9300      	str	r3, [sp, #0]
d05e0452:	ab08      	add	r3, sp, #32
d05e0454:	f000 fc2c 	bl	d05e0cb0 <sniprintf>
d05e0458:	f89d 4120 	ldrb.w	r4, [sp, #288]	; 0x120
d05e045c:	b134      	cbz	r4, d05e046c <extract_archive.part.0+0xfc>
d05e045e:	ad48      	add	r5, sp, #288	; 0x120
d05e0460:	2c2f      	cmp	r4, #47	; 0x2f
d05e0462:	d038      	beq.n	d05e04d6 <extract_archive.part.0+0x166>
d05e0464:	f815 4f01 	ldrb.w	r4, [r5, #1]!
d05e0468:	2c00      	cmp	r4, #0
d05e046a:	d1f9      	bne.n	d05e0460 <extract_archive.part.0+0xf0>
d05e046c:	f898 3000 	ldrb.w	r3, [r8]
d05e0470:	2b02      	cmp	r3, #2
d05e0472:	d03d      	beq.n	d05e04f0 <extract_archive.part.0+0x180>
d05e0474:	2b00      	cmp	r3, #0
d05e0476:	d16a      	bne.n	d05e054e <extract_archive.part.0+0x1de>
d05e0478:	f8d6 40a0 	ldr.w	r4, [r6, #160]	; 0xa0
d05e047c:	2001      	movs	r0, #1
d05e047e:	9a05      	ldr	r2, [sp, #20]
d05e0480:	4971      	ldr	r1, [pc, #452]	; (d05e0648 <extract_archive.part.0+0x2d8>)
d05e0482:	47a0      	blx	r4
d05e0484:	4605      	mov	r5, r0
d05e0486:	2800      	cmp	r0, #0
d05e0488:	f040 8107 	bne.w	d05e069a <extract_archive.part.0+0x32a>
d05e048c:	f44f 0380 	mov.w	r3, #4194304	; 0x400000
d05e0490:	9905      	ldr	r1, [sp, #20]
d05e0492:	4a6e      	ldr	r2, [pc, #440]	; (d05e064c <extract_archive.part.0+0x2dc>)
d05e0494:	486c      	ldr	r0, [pc, #432]	; (d05e0648 <extract_archive.part.0+0x2d8>)
d05e0496:	f7ff ff51 	bl	d05e033c <depack_lzss>
d05e049a:	68b3      	ldr	r3, [r6, #8]
d05e049c:	4604      	mov	r4, r0
d05e049e:	2800      	cmp	r0, #0
d05e04a0:	f000 80f7 	beq.w	d05e0692 <extract_archive.part.0+0x322>
d05e04a4:	4602      	mov	r2, r0
d05e04a6:	a948      	add	r1, sp, #288	; 0x120
d05e04a8:	4869      	ldr	r0, [pc, #420]	; (d05e0650 <extract_archive.part.0+0x2e0>)
d05e04aa:	4798      	blx	r3
d05e04ac:	4628      	mov	r0, r5
d05e04ae:	f8d6 3094 	ldr.w	r3, [r6, #148]	; 0x94
d05e04b2:	220a      	movs	r2, #10
d05e04b4:	a948      	add	r1, sp, #288	; 0x120
d05e04b6:	4798      	blx	r3
d05e04b8:	4605      	mov	r5, r0
d05e04ba:	2800      	cmp	r0, #0
d05e04bc:	f040 80e4 	bne.w	d05e0688 <extract_archive.part.0+0x318>
d05e04c0:	4622      	mov	r2, r4
d05e04c2:	4603      	mov	r3, r0
d05e04c4:	f8d6 40a4 	ldr.w	r4, [r6, #164]	; 0xa4
d05e04c8:	4960      	ldr	r1, [pc, #384]	; (d05e064c <extract_archive.part.0+0x2dc>)
d05e04ca:	47a0      	blx	r4
d05e04cc:	4628      	mov	r0, r5
d05e04ce:	f8d6 3098 	ldr.w	r3, [r6, #152]	; 0x98
d05e04d2:	4798      	blx	r3
d05e04d4:	e784      	b.n	d05e03e0 <extract_archive.part.0+0x70>
d05e04d6:	702f      	strb	r7, [r5, #0]
d05e04d8:	a848      	add	r0, sp, #288	; 0x120
d05e04da:	6ef3      	ldr	r3, [r6, #108]	; 0x6c
d05e04dc:	4798      	blx	r3
d05e04de:	702c      	strb	r4, [r5, #0]
d05e04e0:	f815 4f01 	ldrb.w	r4, [r5, #1]!
d05e04e4:	2c00      	cmp	r4, #0
d05e04e6:	d1bb      	bne.n	d05e0460 <extract_archive.part.0+0xf0>
d05e04e8:	f898 3000 	ldrb.w	r3, [r8]
d05e04ec:	2b02      	cmp	r3, #2
d05e04ee:	d1c1      	bne.n	d05e0474 <extract_archive.part.0+0x104>
d05e04f0:	68b3      	ldr	r3, [r6, #8]
d05e04f2:	a948      	add	r1, sp, #288	; 0x120
d05e04f4:	9a04      	ldr	r2, [sp, #16]
d05e04f6:	4857      	ldr	r0, [pc, #348]	; (d05e0654 <extract_archive.part.0+0x2e4>)
d05e04f8:	4798      	blx	r3
d05e04fa:	f8d6 3094 	ldr.w	r3, [r6, #148]	; 0x94
d05e04fe:	220a      	movs	r2, #10
d05e0500:	a948      	add	r1, sp, #288	; 0x120
d05e0502:	2000      	movs	r0, #0
d05e0504:	4798      	blx	r3
d05e0506:	2800      	cmp	r0, #0
d05e0508:	f040 80be 	bne.w	d05e0688 <extract_archive.part.0+0x318>
d05e050c:	9d04      	ldr	r5, [sp, #16]
d05e050e:	b1cd      	cbz	r5, d05e0544 <extract_archive.part.0+0x1d4>
d05e0510:	4f51      	ldr	r7, [pc, #324]	; (d05e0658 <extract_archive.part.0+0x2e8>)
d05e0512:	e004      	b.n	d05e051e <extract_archive.part.0+0x1ae>
d05e0514:	f8d6 a0a4 	ldr.w	sl, [r6, #164]	; 0xa4
d05e0518:	47d0      	blx	sl
d05e051a:	1b2d      	subs	r5, r5, r4
d05e051c:	d012      	beq.n	d05e0544 <extract_archive.part.0+0x1d4>
d05e051e:	f5b5 4f80 	cmp.w	r5, #16384	; 0x4000
d05e0522:	462c      	mov	r4, r5
d05e0524:	f04f 0300 	mov.w	r3, #0
d05e0528:	4639      	mov	r1, r7
d05e052a:	bf28      	it	cs
d05e052c:	f44f 4480 	movcs.w	r4, #16384	; 0x4000
d05e0530:	f8d6 a0a0 	ldr.w	sl, [r6, #160]	; 0xa0
d05e0534:	2001      	movs	r0, #1
d05e0536:	4622      	mov	r2, r4
d05e0538:	47d0      	blx	sl
d05e053a:	4622      	mov	r2, r4
d05e053c:	4639      	mov	r1, r7
d05e053e:	4603      	mov	r3, r0
d05e0540:	2800      	cmp	r0, #0
d05e0542:	d0e7      	beq.n	d05e0514 <extract_archive.part.0+0x1a4>
d05e0544:	f8d6 3098 	ldr.w	r3, [r6, #152]	; 0x98
d05e0548:	2000      	movs	r0, #0
d05e054a:	4798      	blx	r3
d05e054c:	e748      	b.n	d05e03e0 <extract_archive.part.0+0x70>
d05e054e:	2b01      	cmp	r3, #1
d05e0550:	f47f af46 	bne.w	d05e03e0 <extract_archive.part.0+0x70>
d05e0554:	2200      	movs	r2, #0
d05e0556:	4618      	mov	r0, r3
d05e0558:	f8d6 40a0 	ldr.w	r4, [r6, #160]	; 0xa0
d05e055c:	a906      	add	r1, sp, #24
d05e055e:	4613      	mov	r3, r2
d05e0560:	9206      	str	r2, [sp, #24]
d05e0562:	2204      	movs	r2, #4
d05e0564:	47a0      	blx	r4
d05e0566:	2800      	cmp	r0, #0
d05e0568:	d14f      	bne.n	d05e060a <extract_archive.part.0+0x29a>
d05e056a:	f8d6 3094 	ldr.w	r3, [r6, #148]	; 0x94
d05e056e:	220a      	movs	r2, #10
d05e0570:	a948      	add	r1, sp, #288	; 0x120
d05e0572:	4798      	blx	r3
d05e0574:	4604      	mov	r4, r0
d05e0576:	2800      	cmp	r0, #0
d05e0578:	f040 8086 	bne.w	d05e0688 <extract_archive.part.0+0x318>
d05e057c:	9b06      	ldr	r3, [sp, #24]
d05e057e:	b383      	cbz	r3, d05e05e2 <extract_archive.part.0+0x272>
d05e0580:	4d36      	ldr	r5, [pc, #216]	; (d05e065c <extract_archive.part.0+0x2ec>)
d05e0582:	4f37      	ldr	r7, [pc, #220]	; (d05e0660 <extract_archive.part.0+0x2f0>)
d05e0584:	e020      	b.n	d05e05c8 <extract_archive.part.0+0x258>
d05e0586:	9a07      	ldr	r2, [sp, #28]
d05e0588:	f102 3cff 	add.w	ip, r2, #4294967295	; 0xffffffff
d05e058c:	f5bc 4f00 	cmp.w	ip, #32768	; 0x8000
d05e0590:	d227      	bcs.n	d05e05e2 <extract_archive.part.0+0x272>
d05e0592:	f8d6 a0a0 	ldr.w	sl, [r6, #160]	; 0xa0
d05e0596:	47d0      	blx	sl
d05e0598:	4682      	mov	sl, r0
d05e059a:	f44f 4380 	mov.w	r3, #16384	; 0x4000
d05e059e:	463a      	mov	r2, r7
d05e05a0:	4628      	mov	r0, r5
d05e05a2:	f1ba 0f00 	cmp.w	sl, #0
d05e05a6:	d11c      	bne.n	d05e05e2 <extract_archive.part.0+0x272>
d05e05a8:	9907      	ldr	r1, [sp, #28]
d05e05aa:	f7ff fec7 	bl	d05e033c <depack_lzss>
d05e05ae:	4602      	mov	r2, r0
d05e05b0:	4653      	mov	r3, sl
d05e05b2:	4639      	mov	r1, r7
d05e05b4:	4650      	mov	r0, sl
d05e05b6:	2a00      	cmp	r2, #0
d05e05b8:	d060      	beq.n	d05e067c <extract_archive.part.0+0x30c>
d05e05ba:	f8d6 a0a4 	ldr.w	sl, [r6, #164]	; 0xa4
d05e05be:	3401      	adds	r4, #1
d05e05c0:	47d0      	blx	sl
d05e05c2:	9b06      	ldr	r3, [sp, #24]
d05e05c4:	429c      	cmp	r4, r3
d05e05c6:	d20c      	bcs.n	d05e05e2 <extract_archive.part.0+0x272>
d05e05c8:	2300      	movs	r3, #0
d05e05ca:	f8d6 a0a0 	ldr.w	sl, [r6, #160]	; 0xa0
d05e05ce:	a907      	add	r1, sp, #28
d05e05d0:	2204      	movs	r2, #4
d05e05d2:	9307      	str	r3, [sp, #28]
d05e05d4:	2001      	movs	r0, #1
d05e05d6:	47d0      	blx	sl
d05e05d8:	4603      	mov	r3, r0
d05e05da:	4629      	mov	r1, r5
d05e05dc:	2001      	movs	r0, #1
d05e05de:	2b00      	cmp	r3, #0
d05e05e0:	d0d1      	beq.n	d05e0586 <extract_archive.part.0+0x216>
d05e05e2:	f8d6 3098 	ldr.w	r3, [r6, #152]	; 0x98
d05e05e6:	2000      	movs	r0, #0
d05e05e8:	4798      	blx	r3
d05e05ea:	a948      	add	r1, sp, #288	; 0x120
d05e05ec:	68b3      	ldr	r3, [r6, #8]
d05e05ee:	481d      	ldr	r0, [pc, #116]	; (d05e0664 <extract_archive.part.0+0x2f4>)
d05e05f0:	4798      	blx	r3
d05e05f2:	e6f5      	b.n	d05e03e0 <extract_archive.part.0+0x70>
d05e05f4:	68b3      	ldr	r3, [r6, #8]
d05e05f6:	481c      	ldr	r0, [pc, #112]	; (d05e0668 <extract_archive.part.0+0x2f8>)
d05e05f8:	4798      	blx	r3
d05e05fa:	f8d6 3098 	ldr.w	r3, [r6, #152]	; 0x98
d05e05fe:	2001      	movs	r0, #1
d05e0600:	4798      	blx	r3
d05e0602:	2001      	movs	r0, #1
d05e0604:	b068      	add	sp, #416	; 0x1a0
d05e0606:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e060a:	68b3      	ldr	r3, [r6, #8]
d05e060c:	a928      	add	r1, sp, #160	; 0xa0
d05e060e:	4817      	ldr	r0, [pc, #92]	; (d05e066c <extract_archive.part.0+0x2fc>)
d05e0610:	4798      	blx	r3
d05e0612:	4c0b      	ldr	r4, [pc, #44]	; (d05e0640 <extract_archive.part.0+0x2d0>)
d05e0614:	2001      	movs	r0, #1
d05e0616:	f8d4 3098 	ldr.w	r3, [r4, #152]	; 0x98
d05e061a:	4798      	blx	r3
d05e061c:	68a3      	ldr	r3, [r4, #8]
d05e061e:	a908      	add	r1, sp, #32
d05e0620:	4813      	ldr	r0, [pc, #76]	; (d05e0670 <extract_archive.part.0+0x300>)
d05e0622:	4798      	blx	r3
d05e0624:	2000      	movs	r0, #0
d05e0626:	b068      	add	sp, #416	; 0x1a0
d05e0628:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e062c:	3801      	subs	r0, #1
d05e062e:	ab08      	add	r3, sp, #32
d05e0630:	5c1b      	ldrb	r3, [r3, r0]
d05e0632:	2b2f      	cmp	r3, #47	; 0x2f
d05e0634:	f47f aed1 	bne.w	d05e03da <extract_archive.part.0+0x6a>
d05e0638:	ab08      	add	r3, sp, #32
d05e063a:	541c      	strb	r4, [r3, r0]
d05e063c:	e6cd      	b.n	d05e03da <extract_archive.part.0+0x6a>
d05e063e:	bf00      	nop
d05e0640:	2001f000 	.word	0x2001f000
d05e0644:	d05e1600 	.word	0xd05e1600
d05e0648:	d07f1b54 	.word	0xd07f1b54
d05e064c:	d05f1b54 	.word	0xd05f1b54
d05e0650:	d05e16b0 	.word	0xd05e16b0
d05e0654:	d05e1634 	.word	0xd05e1634
d05e0658:	d05e9b4c 	.word	0xd05e9b4c
d05e065c:	d05e1b48 	.word	0xd05e1b48
d05e0660:	d05edb4c 	.word	0xd05edb4c
d05e0664:	d05e1730 	.word	0xd05e1730
d05e0668:	d05e15d0 	.word	0xd05e15d0
d05e066c:	d05e16dc 	.word	0xd05e16dc
d05e0670:	d05e1750 	.word	0xd05e1750
d05e0674:	d05e9b48 	.word	0xd05e9b48
d05e0678:	d05e162c 	.word	0xd05e162c
d05e067c:	4622      	mov	r2, r4
d05e067e:	a928      	add	r1, sp, #160	; 0xa0
d05e0680:	68b3      	ldr	r3, [r6, #8]
d05e0682:	4808      	ldr	r0, [pc, #32]	; (d05e06a4 <extract_archive.part.0+0x334>)
d05e0684:	4798      	blx	r3
d05e0686:	e7ac      	b.n	d05e05e2 <extract_archive.part.0+0x272>
d05e0688:	68b3      	ldr	r3, [r6, #8]
d05e068a:	a948      	add	r1, sp, #288	; 0x120
d05e068c:	4806      	ldr	r0, [pc, #24]	; (d05e06a8 <extract_archive.part.0+0x338>)
d05e068e:	4798      	blx	r3
d05e0690:	e7bf      	b.n	d05e0612 <extract_archive.part.0+0x2a2>
d05e0692:	a928      	add	r1, sp, #160	; 0xa0
d05e0694:	4805      	ldr	r0, [pc, #20]	; (d05e06ac <extract_archive.part.0+0x33c>)
d05e0696:	4798      	blx	r3
d05e0698:	e7bb      	b.n	d05e0612 <extract_archive.part.0+0x2a2>
d05e069a:	68b3      	ldr	r3, [r6, #8]
d05e069c:	a928      	add	r1, sp, #160	; 0xa0
d05e069e:	4804      	ldr	r0, [pc, #16]	; (d05e06b0 <extract_archive.part.0+0x340>)
d05e06a0:	4798      	blx	r3
d05e06a2:	e7b6      	b.n	d05e0612 <extract_archive.part.0+0x2a2>
d05e06a4:	d05e1700 	.word	0xd05e1700
d05e06a8:	d05e1654 	.word	0xd05e1654
d05e06ac:	d05e1694 	.word	0xd05e1694
d05e06b0:	d05e166c 	.word	0xd05e166c

d05e06b4 <create_archive>:
d05e06b4:	2803      	cmp	r0, #3
d05e06b6:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05e06ba:	ed2d 8b02 	vpush	{d8}
d05e06be:	b0af      	sub	sp, #188	; 0xbc
d05e06c0:	f340 814a 	ble.w	d05e0958 <create_archive+0x2a4>
d05e06c4:	f101 0b04 	add.w	fp, r1, #4
d05e06c8:	460f      	mov	r7, r1
d05e06ca:	f100 38ff 	add.w	r8, r0, #4294967295	; 0xffffffff
d05e06ce:	f04f 0a02 	mov.w	sl, #2
d05e06d2:	4da7      	ldr	r5, [pc, #668]	; (d05e0970 <create_archive+0x2bc>)
d05e06d4:	465e      	mov	r6, fp
d05e06d6:	e004      	b.n	d05e06e2 <create_archive+0x2e>
d05e06d8:	f10a 0a01 	add.w	sl, sl, #1
d05e06dc:	45c2      	cmp	sl, r8
d05e06de:	f000 813b 	beq.w	d05e0958 <create_archive+0x2a4>
d05e06e2:	4629      	mov	r1, r5
d05e06e4:	f856 0f04 	ldr.w	r0, [r6, #4]!
d05e06e8:	f000 fb16 	bl	d05e0d18 <strcmp>
d05e06ec:	4604      	mov	r4, r0
d05e06ee:	2800      	cmp	r0, #0
d05e06f0:	d1f2      	bne.n	d05e06d8 <create_archive+0x24>
d05e06f2:	f10a 0301 	add.w	r3, sl, #1
d05e06f6:	f857 3023 	ldr.w	r3, [r7, r3, lsl #2]
d05e06fa:	ee08 3a10 	vmov	s16, r3
d05e06fe:	2b00      	cmp	r3, #0
d05e0700:	f000 812a 	beq.w	d05e0958 <create_archive+0x2a4>
d05e0704:	4e9b      	ldr	r6, [pc, #620]	; (d05e0974 <create_archive+0x2c0>)
d05e0706:	6873      	ldr	r3, [r6, #4]
d05e0708:	4798      	blx	r3
d05e070a:	68b3      	ldr	r3, [r6, #8]
d05e070c:	ee18 1a10 	vmov	r1, s16
d05e0710:	4899      	ldr	r0, [pc, #612]	; (d05e0978 <create_archive+0x2c4>)
d05e0712:	4798      	blx	r3
d05e0714:	f8d6 3094 	ldr.w	r3, [r6, #148]	; 0x94
d05e0718:	220a      	movs	r2, #10
d05e071a:	ee18 1a10 	vmov	r1, s16
d05e071e:	4620      	mov	r0, r4
d05e0720:	4798      	blx	r3
d05e0722:	2800      	cmp	r0, #0
d05e0724:	f040 80c5 	bne.w	d05e08b2 <create_archive+0x1fe>
d05e0728:	4d94      	ldr	r5, [pc, #592]	; (d05e097c <create_archive+0x2c8>)
d05e072a:	4623      	mov	r3, r4
d05e072c:	2201      	movs	r2, #1
d05e072e:	f10d 010a 	add.w	r1, sp, #10
d05e0732:	f895 c000 	ldrb.w	ip, [r5]
d05e0736:	f88d c00a 	strb.w	ip, [sp, #10]
d05e073a:	f8d6 50a4 	ldr.w	r5, [r6, #164]	; 0xa4
d05e073e:	47a8      	blx	r5
d05e0740:	f1ba 0f02 	cmp.w	sl, #2
d05e0744:	f000 8093 	beq.w	d05e086e <create_archive+0x1ba>
d05e0748:	3f04      	subs	r7, #4
d05e074a:	46b1      	mov	r9, r6
d05e074c:	9400      	str	r4, [sp, #0]
d05e074e:	eb07 0a8a 	add.w	sl, r7, sl, lsl #2
d05e0752:	f85b 4f04 	ldr.w	r4, [fp, #4]!
d05e0756:	7823      	ldrb	r3, [r4, #0]
d05e0758:	2b2b      	cmp	r3, #43	; 0x2b
d05e075a:	f040 8084 	bne.w	d05e0866 <create_archive+0x1b2>
d05e075e:	3401      	adds	r4, #1
d05e0760:	f8d9 3088 	ldr.w	r3, [r9, #136]	; 0x88
d05e0764:	a908      	add	r1, sp, #32
d05e0766:	4620      	mov	r0, r4
d05e0768:	4798      	blx	r3
d05e076a:	2800      	cmp	r0, #0
d05e076c:	f040 8092 	bne.w	d05e0894 <create_archive+0x1e0>
d05e0770:	9d08      	ldr	r5, [sp, #32]
d05e0772:	2d00      	cmp	r5, #0
d05e0774:	f000 808e 	beq.w	d05e0894 <create_archive+0x1e0>
d05e0778:	4620      	mov	r0, r4
d05e077a:	f000 fad7 	bl	d05e0d2c <strlen>
d05e077e:	4b7f      	ldr	r3, [pc, #508]	; (d05e097c <create_archive+0x2c8>)
d05e0780:	2201      	movs	r2, #1
d05e0782:	f88d 000b 	strb.w	r0, [sp, #11]
d05e0786:	781b      	ldrb	r3, [r3, #0]
d05e0788:	4621      	mov	r1, r4
d05e078a:	4610      	mov	r0, r2
d05e078c:	9503      	str	r5, [sp, #12]
d05e078e:	2b02      	cmp	r3, #2
d05e0790:	f8d9 3094 	ldr.w	r3, [r9, #148]	; 0x94
d05e0794:	f000 8084 	beq.w	d05e08a0 <create_archive+0x1ec>
d05e0798:	4798      	blx	r3
d05e079a:	2800      	cmp	r0, #0
d05e079c:	f040 8083 	bne.w	d05e08a6 <create_archive+0x1f2>
d05e07a0:	9004      	str	r0, [sp, #16]
d05e07a2:	ab04      	add	r3, sp, #16
d05e07a4:	f8d9 50a0 	ldr.w	r5, [r9, #160]	; 0xa0
d05e07a8:	2001      	movs	r0, #1
d05e07aa:	4975      	ldr	r1, [pc, #468]	; (d05e0980 <create_archive+0x2cc>)
d05e07ac:	9a03      	ldr	r2, [sp, #12]
d05e07ae:	47a8      	blx	r5
d05e07b0:	4606      	mov	r6, r0
d05e07b2:	2800      	cmp	r0, #0
d05e07b4:	d14e      	bne.n	d05e0854 <create_archive+0x1a0>
d05e07b6:	e9dd 3203 	ldrd	r3, r2, [sp, #12]
d05e07ba:	429a      	cmp	r2, r3
d05e07bc:	d14a      	bne.n	d05e0854 <create_archive+0x1a0>
d05e07be:	f8d9 3098 	ldr.w	r3, [r9, #152]	; 0x98
d05e07c2:	2001      	movs	r0, #1
d05e07c4:	4798      	blx	r3
d05e07c6:	4b6d      	ldr	r3, [pc, #436]	; (d05e097c <create_archive+0x2c8>)
d05e07c8:	781d      	ldrb	r5, [r3, #0]
d05e07ca:	2d00      	cmp	r5, #0
d05e07cc:	f040 80ee 	bne.w	d05e09ac <create_archive+0x2f8>
d05e07d0:	f8d9 3004 	ldr.w	r3, [r9, #4]
d05e07d4:	2001      	movs	r0, #1
d05e07d6:	4798      	blx	r3
d05e07d8:	f44f 0380 	mov.w	r3, #4194304	; 0x400000
d05e07dc:	4a69      	ldr	r2, [pc, #420]	; (d05e0984 <create_archive+0x2d0>)
d05e07de:	9903      	ldr	r1, [sp, #12]
d05e07e0:	4867      	ldr	r0, [pc, #412]	; (d05e0980 <create_archive+0x2cc>)
d05e07e2:	f7ff fd9f 	bl	d05e0324 <pack_lzss>
d05e07e6:	4602      	mov	r2, r0
d05e07e8:	f8d9 3004 	ldr.w	r3, [r9, #4]
d05e07ec:	4628      	mov	r0, r5
d05e07ee:	9207      	str	r2, [sp, #28]
d05e07f0:	4798      	blx	r3
d05e07f2:	9b07      	ldr	r3, [sp, #28]
d05e07f4:	2b00      	cmp	r3, #0
d05e07f6:	f000 815c 	beq.w	d05e0ab2 <create_archive+0x3fe>
d05e07fa:	f8d9 60a4 	ldr.w	r6, [r9, #164]	; 0xa4
d05e07fe:	462b      	mov	r3, r5
d05e0800:	f10d 010b 	add.w	r1, sp, #11
d05e0804:	2201      	movs	r2, #1
d05e0806:	4628      	mov	r0, r5
d05e0808:	47b0      	blx	r6
d05e080a:	f8d9 60a4 	ldr.w	r6, [r9, #164]	; 0xa4
d05e080e:	462b      	mov	r3, r5
d05e0810:	f89d 200b 	ldrb.w	r2, [sp, #11]
d05e0814:	4621      	mov	r1, r4
d05e0816:	4628      	mov	r0, r5
d05e0818:	47b0      	blx	r6
d05e081a:	f8d9 60a4 	ldr.w	r6, [r9, #164]	; 0xa4
d05e081e:	462b      	mov	r3, r5
d05e0820:	a903      	add	r1, sp, #12
d05e0822:	2204      	movs	r2, #4
d05e0824:	4628      	mov	r0, r5
d05e0826:	47b0      	blx	r6
d05e0828:	f8d9 60a4 	ldr.w	r6, [r9, #164]	; 0xa4
d05e082c:	462b      	mov	r3, r5
d05e082e:	a907      	add	r1, sp, #28
d05e0830:	2204      	movs	r2, #4
d05e0832:	4628      	mov	r0, r5
d05e0834:	47b0      	blx	r6
d05e0836:	462b      	mov	r3, r5
d05e0838:	9a07      	ldr	r2, [sp, #28]
d05e083a:	4628      	mov	r0, r5
d05e083c:	f8d9 60a4 	ldr.w	r6, [r9, #164]	; 0xa4
d05e0840:	4950      	ldr	r1, [pc, #320]	; (d05e0984 <create_archive+0x2d0>)
d05e0842:	47b0      	blx	r6
d05e0844:	4621      	mov	r1, r4
d05e0846:	9b07      	ldr	r3, [sp, #28]
d05e0848:	f8d9 4008 	ldr.w	r4, [r9, #8]
d05e084c:	9a03      	ldr	r2, [sp, #12]
d05e084e:	484e      	ldr	r0, [pc, #312]	; (d05e0988 <create_archive+0x2d4>)
d05e0850:	47a0      	blx	r4
d05e0852:	e008      	b.n	d05e0866 <create_archive+0x1b2>
d05e0854:	f8d9 3008 	ldr.w	r3, [r9, #8]
d05e0858:	4621      	mov	r1, r4
d05e085a:	484c      	ldr	r0, [pc, #304]	; (d05e098c <create_archive+0x2d8>)
d05e085c:	4798      	blx	r3
d05e085e:	f8d9 3098 	ldr.w	r3, [r9, #152]	; 0x98
d05e0862:	2001      	movs	r0, #1
d05e0864:	4798      	blx	r3
d05e0866:	45da      	cmp	sl, fp
d05e0868:	f47f af73 	bne.w	d05e0752 <create_archive+0x9e>
d05e086c:	9c00      	ldr	r4, [sp, #0]
d05e086e:	4d41      	ldr	r5, [pc, #260]	; (d05e0974 <create_archive+0x2c0>)
d05e0870:	2000      	movs	r0, #0
d05e0872:	f8d5 3098 	ldr.w	r3, [r5, #152]	; 0x98
d05e0876:	4798      	blx	r3
d05e0878:	686b      	ldr	r3, [r5, #4]
d05e087a:	2001      	movs	r0, #1
d05e087c:	4798      	blx	r3
d05e087e:	68ab      	ldr	r3, [r5, #8]
d05e0880:	ee18 1a10 	vmov	r1, s16
d05e0884:	4842      	ldr	r0, [pc, #264]	; (d05e0990 <create_archive+0x2dc>)
d05e0886:	4798      	blx	r3
d05e0888:	4620      	mov	r0, r4
d05e088a:	b02f      	add	sp, #188	; 0xbc
d05e088c:	ecbd 8b02 	vpop	{d8}
d05e0890:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e0894:	4621      	mov	r1, r4
d05e0896:	f8d9 3008 	ldr.w	r3, [r9, #8]
d05e089a:	483e      	ldr	r0, [pc, #248]	; (d05e0994 <create_archive+0x2e0>)
d05e089c:	4798      	blx	r3
d05e089e:	e7e2      	b.n	d05e0866 <create_archive+0x1b2>
d05e08a0:	4798      	blx	r3
d05e08a2:	4606      	mov	r6, r0
d05e08a4:	b188      	cbz	r0, d05e08ca <create_archive+0x216>
d05e08a6:	4621      	mov	r1, r4
d05e08a8:	f8d9 3008 	ldr.w	r3, [r9, #8]
d05e08ac:	483a      	ldr	r0, [pc, #232]	; (d05e0998 <create_archive+0x2e4>)
d05e08ae:	4798      	blx	r3
d05e08b0:	e7d9      	b.n	d05e0866 <create_archive+0x1b2>
d05e08b2:	2401      	movs	r4, #1
d05e08b4:	68b3      	ldr	r3, [r6, #8]
d05e08b6:	ee18 1a10 	vmov	r1, s16
d05e08ba:	4838      	ldr	r0, [pc, #224]	; (d05e099c <create_archive+0x2e8>)
d05e08bc:	4798      	blx	r3
d05e08be:	4620      	mov	r0, r4
d05e08c0:	b02f      	add	sp, #188	; 0xbc
d05e08c2:	ecbd 8b02 	vpop	{d8}
d05e08c6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e08ca:	f8d9 50a4 	ldr.w	r5, [r9, #164]	; 0xa4
d05e08ce:	4603      	mov	r3, r0
d05e08d0:	2201      	movs	r2, #1
d05e08d2:	f10d 010b 	add.w	r1, sp, #11
d05e08d6:	47a8      	blx	r5
d05e08d8:	f8d9 50a4 	ldr.w	r5, [r9, #164]	; 0xa4
d05e08dc:	4633      	mov	r3, r6
d05e08de:	f89d 200b 	ldrb.w	r2, [sp, #11]
d05e08e2:	4621      	mov	r1, r4
d05e08e4:	4630      	mov	r0, r6
d05e08e6:	47a8      	blx	r5
d05e08e8:	a903      	add	r1, sp, #12
d05e08ea:	f8d9 50a4 	ldr.w	r5, [r9, #164]	; 0xa4
d05e08ee:	4633      	mov	r3, r6
d05e08f0:	2204      	movs	r2, #4
d05e08f2:	4630      	mov	r0, r6
d05e08f4:	47a8      	blx	r5
d05e08f6:	f8d9 50a4 	ldr.w	r5, [r9, #164]	; 0xa4
d05e08fa:	a903      	add	r1, sp, #12
d05e08fc:	4633      	mov	r3, r6
d05e08fe:	2204      	movs	r2, #4
d05e0900:	4630      	mov	r0, r6
d05e0902:	47a8      	blx	r5
d05e0904:	9d03      	ldr	r5, [sp, #12]
d05e0906:	b1e5      	cbz	r5, d05e0942 <create_archive+0x28e>
d05e0908:	4f25      	ldr	r7, [pc, #148]	; (d05e09a0 <create_archive+0x2ec>)
d05e090a:	46a0      	mov	r8, r4
d05e090c:	e007      	b.n	d05e091e <create_archive+0x26a>
d05e090e:	9a07      	ldr	r2, [sp, #28]
d05e0910:	b1b2      	cbz	r2, d05e0940 <create_archive+0x28c>
d05e0912:	f8d9 40a4 	ldr.w	r4, [r9, #164]	; 0xa4
d05e0916:	47a0      	blx	r4
d05e0918:	9b07      	ldr	r3, [sp, #28]
d05e091a:	1aed      	subs	r5, r5, r3
d05e091c:	d010      	beq.n	d05e0940 <create_archive+0x28c>
d05e091e:	f5b5 4f80 	cmp.w	r5, #16384	; 0x4000
d05e0922:	ab07      	add	r3, sp, #28
d05e0924:	462a      	mov	r2, r5
d05e0926:	4639      	mov	r1, r7
d05e0928:	f8d9 40a0 	ldr.w	r4, [r9, #160]	; 0xa0
d05e092c:	bf28      	it	cs
d05e092e:	f44f 4280 	movcs.w	r2, #16384	; 0x4000
d05e0932:	2001      	movs	r0, #1
d05e0934:	9607      	str	r6, [sp, #28]
d05e0936:	47a0      	blx	r4
d05e0938:	4639      	mov	r1, r7
d05e093a:	4603      	mov	r3, r0
d05e093c:	2800      	cmp	r0, #0
d05e093e:	d0e6      	beq.n	d05e090e <create_archive+0x25a>
d05e0940:	4644      	mov	r4, r8
d05e0942:	f8d9 3098 	ldr.w	r3, [r9, #152]	; 0x98
d05e0946:	2001      	movs	r0, #1
d05e0948:	4798      	blx	r3
d05e094a:	4621      	mov	r1, r4
d05e094c:	f8d9 3008 	ldr.w	r3, [r9, #8]
d05e0950:	9a03      	ldr	r2, [sp, #12]
d05e0952:	4814      	ldr	r0, [pc, #80]	; (d05e09a4 <create_archive+0x2f0>)
d05e0954:	4798      	blx	r3
d05e0956:	e786      	b.n	d05e0866 <create_archive+0x1b2>
d05e0958:	4b06      	ldr	r3, [pc, #24]	; (d05e0974 <create_archive+0x2c0>)
d05e095a:	2401      	movs	r4, #1
d05e095c:	4812      	ldr	r0, [pc, #72]	; (d05e09a8 <create_archive+0x2f4>)
d05e095e:	689b      	ldr	r3, [r3, #8]
d05e0960:	4798      	blx	r3
d05e0962:	4620      	mov	r0, r4
d05e0964:	b02f      	add	sp, #188	; 0xbc
d05e0966:	ecbd 8b02 	vpop	{d8}
d05e096a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e096e:	bf00      	nop
d05e0970:	d05e176c 	.word	0xd05e176c
d05e0974:	2001f000 	.word	0x2001f000
d05e0978:	d05e1794 	.word	0xd05e1794
d05e097c:	d05e9b48 	.word	0xd05e9b48
d05e0980:	d05f1b54 	.word	0xd05f1b54
d05e0984:	d07f1b54 	.word	0xd07f1b54
d05e0988:	d05e1880 	.word	0xd05e1880
d05e098c:	d05e1844 	.word	0xd05e1844
d05e0990:	d05e17d4 	.word	0xd05e17d4
d05e0994:	d05e17ec 	.word	0xd05e17ec
d05e0998:	d05e1810 	.word	0xd05e1810
d05e099c:	d05e17ac 	.word	0xd05e17ac
d05e09a0:	d05e9b4c 	.word	0xd05e9b4c
d05e09a4:	d05e1824 	.word	0xd05e1824
d05e09a8:	d05e1774 	.word	0xd05e1774
d05e09ac:	2d01      	cmp	r5, #1
d05e09ae:	f47f af5a 	bne.w	d05e0866 <create_archive+0x1b2>
d05e09b2:	9b03      	ldr	r3, [sp, #12]
d05e09b4:	f643 77ff 	movw	r7, #16383	; 0x3fff
d05e09b8:	462a      	mov	r2, r5
d05e09ba:	f10d 010b 	add.w	r1, sp, #11
d05e09be:	441f      	add	r7, r3
d05e09c0:	f8d9 50a4 	ldr.w	r5, [r9, #164]	; 0xa4
d05e09c4:	4633      	mov	r3, r6
d05e09c6:	4630      	mov	r0, r6
d05e09c8:	0bbf      	lsrs	r7, r7, #14
d05e09ca:	9705      	str	r7, [sp, #20]
d05e09cc:	47a8      	blx	r5
d05e09ce:	f8d9 50a4 	ldr.w	r5, [r9, #164]	; 0xa4
d05e09d2:	4633      	mov	r3, r6
d05e09d4:	f89d 200b 	ldrb.w	r2, [sp, #11]
d05e09d8:	4621      	mov	r1, r4
d05e09da:	4630      	mov	r0, r6
d05e09dc:	47a8      	blx	r5
d05e09de:	f8d9 50a4 	ldr.w	r5, [r9, #164]	; 0xa4
d05e09e2:	4633      	mov	r3, r6
d05e09e4:	2204      	movs	r2, #4
d05e09e6:	a903      	add	r1, sp, #12
d05e09e8:	4630      	mov	r0, r6
d05e09ea:	47a8      	blx	r5
d05e09ec:	f8d9 50a4 	ldr.w	r5, [r9, #164]	; 0xa4
d05e09f0:	4633      	mov	r3, r6
d05e09f2:	2204      	movs	r2, #4
d05e09f4:	a906      	add	r1, sp, #24
d05e09f6:	4630      	mov	r0, r6
d05e09f8:	9606      	str	r6, [sp, #24]
d05e09fa:	47a8      	blx	r5
d05e09fc:	4633      	mov	r3, r6
d05e09fe:	f8d9 50a4 	ldr.w	r5, [r9, #164]	; 0xa4
d05e0a02:	2204      	movs	r2, #4
d05e0a04:	a905      	add	r1, sp, #20
d05e0a06:	4630      	mov	r0, r6
d05e0a08:	47a8      	blx	r5
d05e0a0a:	9b05      	ldr	r3, [sp, #20]
d05e0a0c:	2b00      	cmp	r3, #0
d05e0a0e:	d049      	beq.n	d05e0aa4 <create_archive+0x3f0>
d05e0a10:	f8cd b004 	str.w	fp, [sp, #4]
d05e0a14:	f44f 4780 	mov.w	r7, #16384	; 0x4000
d05e0a18:	f8df 80c0 	ldr.w	r8, [pc, #192]	; d05e0adc <create_archive+0x428>
d05e0a1c:	46d3      	mov	fp, sl
d05e0a1e:	e00c      	b.n	d05e0a3a <create_archive+0x386>
d05e0a20:	f8d9 50a4 	ldr.w	r5, [r9, #164]	; 0xa4
d05e0a24:	47a8      	blx	r5
d05e0a26:	2300      	movs	r3, #0
d05e0a28:	f8d9 50a4 	ldr.w	r5, [r9, #164]	; 0xa4
d05e0a2c:	4618      	mov	r0, r3
d05e0a2e:	4926      	ldr	r1, [pc, #152]	; (d05e0ac8 <create_archive+0x414>)
d05e0a30:	9a07      	ldr	r2, [sp, #28]
d05e0a32:	47a8      	blx	r5
d05e0a34:	9b05      	ldr	r3, [sp, #20]
d05e0a36:	429e      	cmp	r6, r3
d05e0a38:	d241      	bcs.n	d05e0abe <create_archive+0x40a>
d05e0a3a:	9b03      	ldr	r3, [sp, #12]
d05e0a3c:	f5a7 4280 	sub.w	r2, r7, #16384	; 0x4000
d05e0a40:	f44f 4580 	mov.w	r5, #16384	; 0x4000
d05e0a44:	4640      	mov	r0, r8
d05e0a46:	42bb      	cmp	r3, r7
d05e0a48:	46b2      	mov	sl, r6
d05e0a4a:	f106 0601 	add.w	r6, r6, #1
d05e0a4e:	bf38      	it	cc
d05e0a50:	1a9d      	subcc	r5, r3, r2
d05e0a52:	4b1e      	ldr	r3, [pc, #120]	; (d05e0acc <create_archive+0x418>)
d05e0a54:	462a      	mov	r2, r5
d05e0a56:	19d9      	adds	r1, r3, r7
d05e0a58:	f000 f902 	bl	d05e0c60 <memcpy>
d05e0a5c:	f8d9 3004 	ldr.w	r3, [r9, #4]
d05e0a60:	2001      	movs	r0, #1
d05e0a62:	f507 4780 	add.w	r7, r7, #16384	; 0x4000
d05e0a66:	4798      	blx	r3
d05e0a68:	4629      	mov	r1, r5
d05e0a6a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
d05e0a6e:	4a16      	ldr	r2, [pc, #88]	; (d05e0ac8 <create_archive+0x414>)
d05e0a70:	4640      	mov	r0, r8
d05e0a72:	f7ff fc69 	bl	d05e0348 <lzss_compress>
d05e0a76:	4602      	mov	r2, r0
d05e0a78:	f8d9 3004 	ldr.w	r3, [r9, #4]
d05e0a7c:	2000      	movs	r0, #0
d05e0a7e:	9207      	str	r2, [sp, #28]
d05e0a80:	4798      	blx	r3
d05e0a82:	2300      	movs	r3, #0
d05e0a84:	9d07      	ldr	r5, [sp, #28]
d05e0a86:	2204      	movs	r2, #4
d05e0a88:	a907      	add	r1, sp, #28
d05e0a8a:	4618      	mov	r0, r3
d05e0a8c:	429d      	cmp	r5, r3
d05e0a8e:	dcc7      	bgt.n	d05e0a20 <create_archive+0x36c>
d05e0a90:	4652      	mov	r2, sl
d05e0a92:	f8d9 3008 	ldr.w	r3, [r9, #8]
d05e0a96:	4621      	mov	r1, r4
d05e0a98:	480d      	ldr	r0, [pc, #52]	; (d05e0ad0 <create_archive+0x41c>)
d05e0a9a:	46da      	mov	sl, fp
d05e0a9c:	f8dd b004 	ldr.w	fp, [sp, #4]
d05e0aa0:	4798      	blx	r3
d05e0aa2:	9b05      	ldr	r3, [sp, #20]
d05e0aa4:	4621      	mov	r1, r4
d05e0aa6:	9a03      	ldr	r2, [sp, #12]
d05e0aa8:	f8d9 4008 	ldr.w	r4, [r9, #8]
d05e0aac:	4809      	ldr	r0, [pc, #36]	; (d05e0ad4 <create_archive+0x420>)
d05e0aae:	47a0      	blx	r4
d05e0ab0:	e6d9      	b.n	d05e0866 <create_archive+0x1b2>
d05e0ab2:	4621      	mov	r1, r4
d05e0ab4:	f8d9 3008 	ldr.w	r3, [r9, #8]
d05e0ab8:	4807      	ldr	r0, [pc, #28]	; (d05e0ad8 <create_archive+0x424>)
d05e0aba:	4798      	blx	r3
d05e0abc:	e6d3      	b.n	d05e0866 <create_archive+0x1b2>
d05e0abe:	46da      	mov	sl, fp
d05e0ac0:	f8dd b004 	ldr.w	fp, [sp, #4]
d05e0ac4:	e7ee      	b.n	d05e0aa4 <create_archive+0x3f0>
d05e0ac6:	bf00      	nop
d05e0ac8:	d05e1b48 	.word	0xd05e1b48
d05e0acc:	d05edb54 	.word	0xd05edb54
d05e0ad0:	d05e18b8 	.word	0xd05e18b8
d05e0ad4:	d05e18e4 	.word	0xd05e18e4
d05e0ad8:	d05e1864 	.word	0xd05e1864
d05e0adc:	d05e9b4c 	.word	0xd05e9b4c

d05e0ae0 <extract_archive>:
d05e0ae0:	b570      	push	{r4, r5, r6, lr}
d05e0ae2:	2201      	movs	r2, #1
d05e0ae4:	4604      	mov	r4, r0
d05e0ae6:	4e09      	ldr	r6, [pc, #36]	; (d05e0b0c <extract_archive+0x2c>)
d05e0ae8:	460d      	mov	r5, r1
d05e0aea:	4610      	mov	r0, r2
d05e0aec:	4621      	mov	r1, r4
d05e0aee:	f8d6 3094 	ldr.w	r3, [r6, #148]	; 0x94
d05e0af2:	4798      	blx	r3
d05e0af4:	b920      	cbnz	r0, d05e0b00 <extract_archive+0x20>
d05e0af6:	4628      	mov	r0, r5
d05e0af8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d05e0afc:	f7ff bc38 	b.w	d05e0370 <extract_archive.part.0>
d05e0b00:	68b3      	ldr	r3, [r6, #8]
d05e0b02:	4621      	mov	r1, r4
d05e0b04:	4802      	ldr	r0, [pc, #8]	; (d05e0b10 <extract_archive+0x30>)
d05e0b06:	4798      	blx	r3
d05e0b08:	2001      	movs	r0, #1
d05e0b0a:	bd70      	pop	{r4, r5, r6, pc}
d05e0b0c:	2001f000 	.word	0x2001f000
d05e0b10:	d05e1920 	.word	0xd05e1920

d05e0b14 <main>:
d05e0b14:	4a44      	ldr	r2, [pc, #272]	; (d05e0c28 <main+0x114>)
d05e0b16:	2801      	cmp	r0, #1
d05e0b18:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d05e0b1c:	6813      	ldr	r3, [r2, #0]
d05e0b1e:	f023 0310 	bic.w	r3, r3, #16
d05e0b22:	6013      	str	r3, [r2, #0]
d05e0b24:	dd36      	ble.n	d05e0b94 <main+0x80>
d05e0b26:	2300      	movs	r3, #0
d05e0b28:	f8df 8130 	ldr.w	r8, [pc, #304]	; d05e0c5c <main+0x148>
d05e0b2c:	684f      	ldr	r7, [r1, #4]
d05e0b2e:	4604      	mov	r4, r0
d05e0b30:	f888 3000 	strb.w	r3, [r8]
d05e0b34:	460e      	mov	r6, r1
d05e0b36:	783b      	ldrb	r3, [r7, #0]
d05e0b38:	2b2b      	cmp	r3, #43	; 0x2b
d05e0b3a:	d00c      	beq.n	d05e0b56 <main+0x42>
d05e0b3c:	4638      	mov	r0, r7
d05e0b3e:	493b      	ldr	r1, [pc, #236]	; (d05e0c2c <main+0x118>)
d05e0b40:	f000 f8ea 	bl	d05e0d18 <strcmp>
d05e0b44:	2800      	cmp	r0, #0
d05e0b46:	d157      	bne.n	d05e0bf8 <main+0xe4>
d05e0b48:	2c03      	cmp	r4, #3
d05e0b4a:	dc4b      	bgt.n	d05e0be4 <main+0xd0>
d05e0b4c:	4b38      	ldr	r3, [pc, #224]	; (d05e0c30 <main+0x11c>)
d05e0b4e:	4839      	ldr	r0, [pc, #228]	; (d05e0c34 <main+0x120>)
d05e0b50:	689b      	ldr	r3, [r3, #8]
d05e0b52:	4798      	blx	r3
d05e0b54:	e025      	b.n	d05e0ba2 <main+0x8e>
d05e0b56:	787b      	ldrb	r3, [r7, #1]
d05e0b58:	2b61      	cmp	r3, #97	; 0x61
d05e0b5a:	d1ef      	bne.n	d05e0b3c <main+0x28>
d05e0b5c:	78bb      	ldrb	r3, [r7, #2]
d05e0b5e:	2b00      	cmp	r3, #0
d05e0b60:	d1ec      	bne.n	d05e0b3c <main+0x28>
d05e0b62:	2802      	cmp	r0, #2
d05e0b64:	d011      	beq.n	d05e0b8a <main+0x76>
d05e0b66:	1d08      	adds	r0, r1, #4
d05e0b68:	2302      	movs	r3, #2
d05e0b6a:	f850 2f04 	ldr.w	r2, [r0, #4]!
d05e0b6e:	7815      	ldrb	r5, [r2, #0]
d05e0b70:	2d2d      	cmp	r5, #45	; 0x2d
d05e0b72:	d13d      	bne.n	d05e0bf0 <main+0xdc>
d05e0b74:	7851      	ldrb	r1, [r2, #1]
d05e0b76:	2974      	cmp	r1, #116	; 0x74
d05e0b78:	d13a      	bne.n	d05e0bf0 <main+0xdc>
d05e0b7a:	7895      	ldrb	r5, [r2, #2]
d05e0b7c:	2d00      	cmp	r5, #0
d05e0b7e:	d137      	bne.n	d05e0bf0 <main+0xdc>
d05e0b80:	3301      	adds	r3, #1
d05e0b82:	42a3      	cmp	r3, r4
d05e0b84:	db10      	blt.n	d05e0ba8 <main+0x94>
d05e0b86:	2c03      	cmp	r4, #3
d05e0b88:	dc3b      	bgt.n	d05e0c02 <main+0xee>
d05e0b8a:	4b29      	ldr	r3, [pc, #164]	; (d05e0c30 <main+0x11c>)
d05e0b8c:	482a      	ldr	r0, [pc, #168]	; (d05e0c38 <main+0x124>)
d05e0b8e:	689b      	ldr	r3, [r3, #8]
d05e0b90:	4798      	blx	r3
d05e0b92:	e006      	b.n	d05e0ba2 <main+0x8e>
d05e0b94:	4c26      	ldr	r4, [pc, #152]	; (d05e0c30 <main+0x11c>)
d05e0b96:	4829      	ldr	r0, [pc, #164]	; (d05e0c3c <main+0x128>)
d05e0b98:	68a3      	ldr	r3, [r4, #8]
d05e0b9a:	4798      	blx	r3
d05e0b9c:	68a3      	ldr	r3, [r4, #8]
d05e0b9e:	4828      	ldr	r0, [pc, #160]	; (d05e0c40 <main+0x12c>)
d05e0ba0:	4798      	blx	r3
d05e0ba2:	2001      	movs	r0, #1
d05e0ba4:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d05e0ba8:	f856 9023 	ldr.w	r9, [r6, r3, lsl #2]
d05e0bac:	4925      	ldr	r1, [pc, #148]	; (d05e0c44 <main+0x130>)
d05e0bae:	4648      	mov	r0, r9
d05e0bb0:	f000 f8b2 	bl	d05e0d18 <strcmp>
d05e0bb4:	b328      	cbz	r0, d05e0c02 <main+0xee>
d05e0bb6:	4924      	ldr	r1, [pc, #144]	; (d05e0c48 <main+0x134>)
d05e0bb8:	4648      	mov	r0, r9
d05e0bba:	f000 f8ad 	bl	d05e0d18 <strcmp>
d05e0bbe:	b330      	cbz	r0, d05e0c0e <main+0xfa>
d05e0bc0:	4922      	ldr	r1, [pc, #136]	; (d05e0c4c <main+0x138>)
d05e0bc2:	4648      	mov	r0, r9
d05e0bc4:	f000 f8a8 	bl	d05e0d18 <strcmp>
d05e0bc8:	bb28      	cbnz	r0, d05e0c16 <main+0x102>
d05e0bca:	2302      	movs	r3, #2
d05e0bcc:	f888 3000 	strb.w	r3, [r8]
d05e0bd0:	491f      	ldr	r1, [pc, #124]	; (d05e0c50 <main+0x13c>)
d05e0bd2:	4638      	mov	r0, r7
d05e0bd4:	f000 f8a0 	bl	d05e0d18 <strcmp>
d05e0bd8:	b198      	cbz	r0, d05e0c02 <main+0xee>
d05e0bda:	4638      	mov	r0, r7
d05e0bdc:	4913      	ldr	r1, [pc, #76]	; (d05e0c2c <main+0x118>)
d05e0bde:	f000 f89b 	bl	d05e0d18 <strcmp>
d05e0be2:	b948      	cbnz	r0, d05e0bf8 <main+0xe4>
d05e0be4:	e9d6 0102 	ldrd	r0, r1, [r6, #8]
d05e0be8:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d05e0bec:	f7ff bf78 	b.w	d05e0ae0 <extract_archive>
d05e0bf0:	3301      	adds	r3, #1
d05e0bf2:	429c      	cmp	r4, r3
d05e0bf4:	d1b9      	bne.n	d05e0b6a <main+0x56>
d05e0bf6:	e7c6      	b.n	d05e0b86 <main+0x72>
d05e0bf8:	4b0d      	ldr	r3, [pc, #52]	; (d05e0c30 <main+0x11c>)
d05e0bfa:	4816      	ldr	r0, [pc, #88]	; (d05e0c54 <main+0x140>)
d05e0bfc:	689b      	ldr	r3, [r3, #8]
d05e0bfe:	4798      	blx	r3
d05e0c00:	e7cf      	b.n	d05e0ba2 <main+0x8e>
d05e0c02:	4631      	mov	r1, r6
d05e0c04:	4620      	mov	r0, r4
d05e0c06:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d05e0c0a:	f7ff bd53 	b.w	d05e06b4 <create_archive>
d05e0c0e:	2301      	movs	r3, #1
d05e0c10:	f888 3000 	strb.w	r3, [r8]
d05e0c14:	e7dc      	b.n	d05e0bd0 <main+0xbc>
d05e0c16:	4b06      	ldr	r3, [pc, #24]	; (d05e0c30 <main+0x11c>)
d05e0c18:	4649      	mov	r1, r9
d05e0c1a:	480f      	ldr	r0, [pc, #60]	; (d05e0c58 <main+0x144>)
d05e0c1c:	689b      	ldr	r3, [r3, #8]
d05e0c1e:	4798      	blx	r3
d05e0c20:	f888 5000 	strb.w	r5, [r8]
d05e0c24:	e7d4      	b.n	d05e0bd0 <main+0xbc>
d05e0c26:	bf00      	nop
d05e0c28:	e000ed14 	.word	0xe000ed14
d05e0c2c:	d05e1a2c 	.word	0xd05e1a2c
d05e0c30:	2001f000 	.word	0x2001f000
d05e0c34:	d05e1a30 	.word	0xd05e1a30
d05e0c38:	d05e1a04 	.word	0xd05e1a04
d05e0c3c:	d05e193c 	.word	0xd05e193c
d05e0c40:	d05e1994 	.word	0xd05e1994
d05e0c44:	d05e19bc 	.word	0xd05e19bc
d05e0c48:	d05e19c4 	.word	0xd05e19c4
d05e0c4c:	d05e19cc 	.word	0xd05e19cc
d05e0c50:	d05e1a9c 	.word	0xd05e1a9c
d05e0c54:	d05e1a64 	.word	0xd05e1a64
d05e0c58:	d05e19d0 	.word	0xd05e19d0
d05e0c5c:	d05e9b48 	.word	0xd05e9b48

d05e0c60 <memcpy>:
d05e0c60:	440a      	add	r2, r1
d05e0c62:	4291      	cmp	r1, r2
d05e0c64:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d05e0c68:	d100      	bne.n	d05e0c6c <memcpy+0xc>
d05e0c6a:	4770      	bx	lr
d05e0c6c:	b510      	push	{r4, lr}
d05e0c6e:	f811 4b01 	ldrb.w	r4, [r1], #1
d05e0c72:	f803 4f01 	strb.w	r4, [r3, #1]!
d05e0c76:	4291      	cmp	r1, r2
d05e0c78:	d1f9      	bne.n	d05e0c6e <memcpy+0xe>
d05e0c7a:	bd10      	pop	{r4, pc}

d05e0c7c <memmove>:
d05e0c7c:	4288      	cmp	r0, r1
d05e0c7e:	b510      	push	{r4, lr}
d05e0c80:	eb01 0402 	add.w	r4, r1, r2
d05e0c84:	d902      	bls.n	d05e0c8c <memmove+0x10>
d05e0c86:	4284      	cmp	r4, r0
d05e0c88:	4623      	mov	r3, r4
d05e0c8a:	d807      	bhi.n	d05e0c9c <memmove+0x20>
d05e0c8c:	1e43      	subs	r3, r0, #1
d05e0c8e:	42a1      	cmp	r1, r4
d05e0c90:	d008      	beq.n	d05e0ca4 <memmove+0x28>
d05e0c92:	f811 2b01 	ldrb.w	r2, [r1], #1
d05e0c96:	f803 2f01 	strb.w	r2, [r3, #1]!
d05e0c9a:	e7f8      	b.n	d05e0c8e <memmove+0x12>
d05e0c9c:	4402      	add	r2, r0
d05e0c9e:	4601      	mov	r1, r0
d05e0ca0:	428a      	cmp	r2, r1
d05e0ca2:	d100      	bne.n	d05e0ca6 <memmove+0x2a>
d05e0ca4:	bd10      	pop	{r4, pc}
d05e0ca6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d05e0caa:	f802 4d01 	strb.w	r4, [r2, #-1]!
d05e0cae:	e7f7      	b.n	d05e0ca0 <memmove+0x24>

d05e0cb0 <sniprintf>:
d05e0cb0:	b40c      	push	{r2, r3}
d05e0cb2:	b530      	push	{r4, r5, lr}
d05e0cb4:	4b17      	ldr	r3, [pc, #92]	; (d05e0d14 <sniprintf+0x64>)
d05e0cb6:	1e0c      	subs	r4, r1, #0
d05e0cb8:	681d      	ldr	r5, [r3, #0]
d05e0cba:	b09d      	sub	sp, #116	; 0x74
d05e0cbc:	da08      	bge.n	d05e0cd0 <sniprintf+0x20>
d05e0cbe:	238b      	movs	r3, #139	; 0x8b
d05e0cc0:	602b      	str	r3, [r5, #0]
d05e0cc2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e0cc6:	b01d      	add	sp, #116	; 0x74
d05e0cc8:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05e0ccc:	b002      	add	sp, #8
d05e0cce:	4770      	bx	lr
d05e0cd0:	f44f 7302 	mov.w	r3, #520	; 0x208
d05e0cd4:	f8ad 3014 	strh.w	r3, [sp, #20]
d05e0cd8:	bf14      	ite	ne
d05e0cda:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d05e0cde:	4623      	moveq	r3, r4
d05e0ce0:	9304      	str	r3, [sp, #16]
d05e0ce2:	9307      	str	r3, [sp, #28]
d05e0ce4:	f64f 73ff 	movw	r3, #65535	; 0xffff
d05e0ce8:	9002      	str	r0, [sp, #8]
d05e0cea:	9006      	str	r0, [sp, #24]
d05e0cec:	f8ad 3016 	strh.w	r3, [sp, #22]
d05e0cf0:	9a20      	ldr	r2, [sp, #128]	; 0x80
d05e0cf2:	ab21      	add	r3, sp, #132	; 0x84
d05e0cf4:	a902      	add	r1, sp, #8
d05e0cf6:	4628      	mov	r0, r5
d05e0cf8:	9301      	str	r3, [sp, #4]
d05e0cfa:	f000 f88d 	bl	d05e0e18 <_svfiprintf_r>
d05e0cfe:	1c43      	adds	r3, r0, #1
d05e0d00:	bfbc      	itt	lt
d05e0d02:	238b      	movlt	r3, #139	; 0x8b
d05e0d04:	602b      	strlt	r3, [r5, #0]
d05e0d06:	2c00      	cmp	r4, #0
d05e0d08:	d0dd      	beq.n	d05e0cc6 <sniprintf+0x16>
d05e0d0a:	9b02      	ldr	r3, [sp, #8]
d05e0d0c:	2200      	movs	r2, #0
d05e0d0e:	701a      	strb	r2, [r3, #0]
d05e0d10:	e7d9      	b.n	d05e0cc6 <sniprintf+0x16>
d05e0d12:	bf00      	nop
d05e0d14:	d05e1adc 	.word	0xd05e1adc

d05e0d18 <strcmp>:
d05e0d18:	f810 2b01 	ldrb.w	r2, [r0], #1
d05e0d1c:	f811 3b01 	ldrb.w	r3, [r1], #1
d05e0d20:	2a01      	cmp	r2, #1
d05e0d22:	bf28      	it	cs
d05e0d24:	429a      	cmpcs	r2, r3
d05e0d26:	d0f7      	beq.n	d05e0d18 <strcmp>
d05e0d28:	1ad0      	subs	r0, r2, r3
d05e0d2a:	4770      	bx	lr

d05e0d2c <strlen>:
d05e0d2c:	4603      	mov	r3, r0
d05e0d2e:	f813 2b01 	ldrb.w	r2, [r3], #1
d05e0d32:	2a00      	cmp	r2, #0
d05e0d34:	d1fb      	bne.n	d05e0d2e <strlen+0x2>
d05e0d36:	1a18      	subs	r0, r3, r0
d05e0d38:	3801      	subs	r0, #1
d05e0d3a:	4770      	bx	lr

d05e0d3c <strncpy>:
d05e0d3c:	b510      	push	{r4, lr}
d05e0d3e:	3901      	subs	r1, #1
d05e0d40:	4603      	mov	r3, r0
d05e0d42:	b132      	cbz	r2, d05e0d52 <strncpy+0x16>
d05e0d44:	f811 4f01 	ldrb.w	r4, [r1, #1]!
d05e0d48:	f803 4b01 	strb.w	r4, [r3], #1
d05e0d4c:	3a01      	subs	r2, #1
d05e0d4e:	2c00      	cmp	r4, #0
d05e0d50:	d1f7      	bne.n	d05e0d42 <strncpy+0x6>
d05e0d52:	441a      	add	r2, r3
d05e0d54:	2100      	movs	r1, #0
d05e0d56:	4293      	cmp	r3, r2
d05e0d58:	d100      	bne.n	d05e0d5c <strncpy+0x20>
d05e0d5a:	bd10      	pop	{r4, pc}
d05e0d5c:	f803 1b01 	strb.w	r1, [r3], #1
d05e0d60:	e7f9      	b.n	d05e0d56 <strncpy+0x1a>

d05e0d62 <__ssputs_r>:
d05e0d62:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05e0d66:	688e      	ldr	r6, [r1, #8]
d05e0d68:	429e      	cmp	r6, r3
d05e0d6a:	4682      	mov	sl, r0
d05e0d6c:	460c      	mov	r4, r1
d05e0d6e:	4690      	mov	r8, r2
d05e0d70:	461f      	mov	r7, r3
d05e0d72:	d838      	bhi.n	d05e0de6 <__ssputs_r+0x84>
d05e0d74:	898a      	ldrh	r2, [r1, #12]
d05e0d76:	f412 6f90 	tst.w	r2, #1152	; 0x480
d05e0d7a:	d032      	beq.n	d05e0de2 <__ssputs_r+0x80>
d05e0d7c:	6825      	ldr	r5, [r4, #0]
d05e0d7e:	6909      	ldr	r1, [r1, #16]
d05e0d80:	eba5 0901 	sub.w	r9, r5, r1
d05e0d84:	6965      	ldr	r5, [r4, #20]
d05e0d86:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05e0d8a:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d05e0d8e:	3301      	adds	r3, #1
d05e0d90:	444b      	add	r3, r9
d05e0d92:	106d      	asrs	r5, r5, #1
d05e0d94:	429d      	cmp	r5, r3
d05e0d96:	bf38      	it	cc
d05e0d98:	461d      	movcc	r5, r3
d05e0d9a:	0553      	lsls	r3, r2, #21
d05e0d9c:	d531      	bpl.n	d05e0e02 <__ssputs_r+0xa0>
d05e0d9e:	4629      	mov	r1, r5
d05e0da0:	f000 fb6e 	bl	d05e1480 <_malloc_r>
d05e0da4:	4606      	mov	r6, r0
d05e0da6:	b950      	cbnz	r0, d05e0dbe <__ssputs_r+0x5c>
d05e0da8:	230c      	movs	r3, #12
d05e0daa:	f8ca 3000 	str.w	r3, [sl]
d05e0dae:	89a3      	ldrh	r3, [r4, #12]
d05e0db0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05e0db4:	81a3      	strh	r3, [r4, #12]
d05e0db6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e0dba:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e0dbe:	6921      	ldr	r1, [r4, #16]
d05e0dc0:	464a      	mov	r2, r9
d05e0dc2:	f7ff ff4d 	bl	d05e0c60 <memcpy>
d05e0dc6:	89a3      	ldrh	r3, [r4, #12]
d05e0dc8:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d05e0dcc:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05e0dd0:	81a3      	strh	r3, [r4, #12]
d05e0dd2:	6126      	str	r6, [r4, #16]
d05e0dd4:	6165      	str	r5, [r4, #20]
d05e0dd6:	444e      	add	r6, r9
d05e0dd8:	eba5 0509 	sub.w	r5, r5, r9
d05e0ddc:	6026      	str	r6, [r4, #0]
d05e0dde:	60a5      	str	r5, [r4, #8]
d05e0de0:	463e      	mov	r6, r7
d05e0de2:	42be      	cmp	r6, r7
d05e0de4:	d900      	bls.n	d05e0de8 <__ssputs_r+0x86>
d05e0de6:	463e      	mov	r6, r7
d05e0de8:	4632      	mov	r2, r6
d05e0dea:	6820      	ldr	r0, [r4, #0]
d05e0dec:	4641      	mov	r1, r8
d05e0dee:	f7ff ff45 	bl	d05e0c7c <memmove>
d05e0df2:	68a3      	ldr	r3, [r4, #8]
d05e0df4:	6822      	ldr	r2, [r4, #0]
d05e0df6:	1b9b      	subs	r3, r3, r6
d05e0df8:	4432      	add	r2, r6
d05e0dfa:	60a3      	str	r3, [r4, #8]
d05e0dfc:	6022      	str	r2, [r4, #0]
d05e0dfe:	2000      	movs	r0, #0
d05e0e00:	e7db      	b.n	d05e0dba <__ssputs_r+0x58>
d05e0e02:	462a      	mov	r2, r5
d05e0e04:	f000 fb96 	bl	d05e1534 <_realloc_r>
d05e0e08:	4606      	mov	r6, r0
d05e0e0a:	2800      	cmp	r0, #0
d05e0e0c:	d1e1      	bne.n	d05e0dd2 <__ssputs_r+0x70>
d05e0e0e:	6921      	ldr	r1, [r4, #16]
d05e0e10:	4650      	mov	r0, sl
d05e0e12:	f000 fae5 	bl	d05e13e0 <_free_r>
d05e0e16:	e7c7      	b.n	d05e0da8 <__ssputs_r+0x46>

d05e0e18 <_svfiprintf_r>:
d05e0e18:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05e0e1c:	4698      	mov	r8, r3
d05e0e1e:	898b      	ldrh	r3, [r1, #12]
d05e0e20:	061b      	lsls	r3, r3, #24
d05e0e22:	b09d      	sub	sp, #116	; 0x74
d05e0e24:	4607      	mov	r7, r0
d05e0e26:	460d      	mov	r5, r1
d05e0e28:	4614      	mov	r4, r2
d05e0e2a:	d50e      	bpl.n	d05e0e4a <_svfiprintf_r+0x32>
d05e0e2c:	690b      	ldr	r3, [r1, #16]
d05e0e2e:	b963      	cbnz	r3, d05e0e4a <_svfiprintf_r+0x32>
d05e0e30:	2140      	movs	r1, #64	; 0x40
d05e0e32:	f000 fb25 	bl	d05e1480 <_malloc_r>
d05e0e36:	6028      	str	r0, [r5, #0]
d05e0e38:	6128      	str	r0, [r5, #16]
d05e0e3a:	b920      	cbnz	r0, d05e0e46 <_svfiprintf_r+0x2e>
d05e0e3c:	230c      	movs	r3, #12
d05e0e3e:	603b      	str	r3, [r7, #0]
d05e0e40:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e0e44:	e0d1      	b.n	d05e0fea <_svfiprintf_r+0x1d2>
d05e0e46:	2340      	movs	r3, #64	; 0x40
d05e0e48:	616b      	str	r3, [r5, #20]
d05e0e4a:	2300      	movs	r3, #0
d05e0e4c:	9309      	str	r3, [sp, #36]	; 0x24
d05e0e4e:	2320      	movs	r3, #32
d05e0e50:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d05e0e54:	f8cd 800c 	str.w	r8, [sp, #12]
d05e0e58:	2330      	movs	r3, #48	; 0x30
d05e0e5a:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d05e1004 <_svfiprintf_r+0x1ec>
d05e0e5e:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d05e0e62:	f04f 0901 	mov.w	r9, #1
d05e0e66:	4623      	mov	r3, r4
d05e0e68:	469a      	mov	sl, r3
d05e0e6a:	f813 2b01 	ldrb.w	r2, [r3], #1
d05e0e6e:	b10a      	cbz	r2, d05e0e74 <_svfiprintf_r+0x5c>
d05e0e70:	2a25      	cmp	r2, #37	; 0x25
d05e0e72:	d1f9      	bne.n	d05e0e68 <_svfiprintf_r+0x50>
d05e0e74:	ebba 0b04 	subs.w	fp, sl, r4
d05e0e78:	d00b      	beq.n	d05e0e92 <_svfiprintf_r+0x7a>
d05e0e7a:	465b      	mov	r3, fp
d05e0e7c:	4622      	mov	r2, r4
d05e0e7e:	4629      	mov	r1, r5
d05e0e80:	4638      	mov	r0, r7
d05e0e82:	f7ff ff6e 	bl	d05e0d62 <__ssputs_r>
d05e0e86:	3001      	adds	r0, #1
d05e0e88:	f000 80aa 	beq.w	d05e0fe0 <_svfiprintf_r+0x1c8>
d05e0e8c:	9a09      	ldr	r2, [sp, #36]	; 0x24
d05e0e8e:	445a      	add	r2, fp
d05e0e90:	9209      	str	r2, [sp, #36]	; 0x24
d05e0e92:	f89a 3000 	ldrb.w	r3, [sl]
d05e0e96:	2b00      	cmp	r3, #0
d05e0e98:	f000 80a2 	beq.w	d05e0fe0 <_svfiprintf_r+0x1c8>
d05e0e9c:	2300      	movs	r3, #0
d05e0e9e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d05e0ea2:	e9cd 2305 	strd	r2, r3, [sp, #20]
d05e0ea6:	f10a 0a01 	add.w	sl, sl, #1
d05e0eaa:	9304      	str	r3, [sp, #16]
d05e0eac:	9307      	str	r3, [sp, #28]
d05e0eae:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d05e0eb2:	931a      	str	r3, [sp, #104]	; 0x68
d05e0eb4:	4654      	mov	r4, sl
d05e0eb6:	2205      	movs	r2, #5
d05e0eb8:	f814 1b01 	ldrb.w	r1, [r4], #1
d05e0ebc:	4851      	ldr	r0, [pc, #324]	; (d05e1004 <_svfiprintf_r+0x1ec>)
d05e0ebe:	f000 fa3f 	bl	d05e1340 <memchr>
d05e0ec2:	9a04      	ldr	r2, [sp, #16]
d05e0ec4:	b9d8      	cbnz	r0, d05e0efe <_svfiprintf_r+0xe6>
d05e0ec6:	06d0      	lsls	r0, r2, #27
d05e0ec8:	bf44      	itt	mi
d05e0eca:	2320      	movmi	r3, #32
d05e0ecc:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05e0ed0:	0711      	lsls	r1, r2, #28
d05e0ed2:	bf44      	itt	mi
d05e0ed4:	232b      	movmi	r3, #43	; 0x2b
d05e0ed6:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05e0eda:	f89a 3000 	ldrb.w	r3, [sl]
d05e0ede:	2b2a      	cmp	r3, #42	; 0x2a
d05e0ee0:	d015      	beq.n	d05e0f0e <_svfiprintf_r+0xf6>
d05e0ee2:	9a07      	ldr	r2, [sp, #28]
d05e0ee4:	4654      	mov	r4, sl
d05e0ee6:	2000      	movs	r0, #0
d05e0ee8:	f04f 0c0a 	mov.w	ip, #10
d05e0eec:	4621      	mov	r1, r4
d05e0eee:	f811 3b01 	ldrb.w	r3, [r1], #1
d05e0ef2:	3b30      	subs	r3, #48	; 0x30
d05e0ef4:	2b09      	cmp	r3, #9
d05e0ef6:	d94e      	bls.n	d05e0f96 <_svfiprintf_r+0x17e>
d05e0ef8:	b1b0      	cbz	r0, d05e0f28 <_svfiprintf_r+0x110>
d05e0efa:	9207      	str	r2, [sp, #28]
d05e0efc:	e014      	b.n	d05e0f28 <_svfiprintf_r+0x110>
d05e0efe:	eba0 0308 	sub.w	r3, r0, r8
d05e0f02:	fa09 f303 	lsl.w	r3, r9, r3
d05e0f06:	4313      	orrs	r3, r2
d05e0f08:	9304      	str	r3, [sp, #16]
d05e0f0a:	46a2      	mov	sl, r4
d05e0f0c:	e7d2      	b.n	d05e0eb4 <_svfiprintf_r+0x9c>
d05e0f0e:	9b03      	ldr	r3, [sp, #12]
d05e0f10:	1d19      	adds	r1, r3, #4
d05e0f12:	681b      	ldr	r3, [r3, #0]
d05e0f14:	9103      	str	r1, [sp, #12]
d05e0f16:	2b00      	cmp	r3, #0
d05e0f18:	bfbb      	ittet	lt
d05e0f1a:	425b      	neglt	r3, r3
d05e0f1c:	f042 0202 	orrlt.w	r2, r2, #2
d05e0f20:	9307      	strge	r3, [sp, #28]
d05e0f22:	9307      	strlt	r3, [sp, #28]
d05e0f24:	bfb8      	it	lt
d05e0f26:	9204      	strlt	r2, [sp, #16]
d05e0f28:	7823      	ldrb	r3, [r4, #0]
d05e0f2a:	2b2e      	cmp	r3, #46	; 0x2e
d05e0f2c:	d10c      	bne.n	d05e0f48 <_svfiprintf_r+0x130>
d05e0f2e:	7863      	ldrb	r3, [r4, #1]
d05e0f30:	2b2a      	cmp	r3, #42	; 0x2a
d05e0f32:	d135      	bne.n	d05e0fa0 <_svfiprintf_r+0x188>
d05e0f34:	9b03      	ldr	r3, [sp, #12]
d05e0f36:	1d1a      	adds	r2, r3, #4
d05e0f38:	681b      	ldr	r3, [r3, #0]
d05e0f3a:	9203      	str	r2, [sp, #12]
d05e0f3c:	2b00      	cmp	r3, #0
d05e0f3e:	bfb8      	it	lt
d05e0f40:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d05e0f44:	3402      	adds	r4, #2
d05e0f46:	9305      	str	r3, [sp, #20]
d05e0f48:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d05e1014 <_svfiprintf_r+0x1fc>
d05e0f4c:	7821      	ldrb	r1, [r4, #0]
d05e0f4e:	2203      	movs	r2, #3
d05e0f50:	4650      	mov	r0, sl
d05e0f52:	f000 f9f5 	bl	d05e1340 <memchr>
d05e0f56:	b140      	cbz	r0, d05e0f6a <_svfiprintf_r+0x152>
d05e0f58:	2340      	movs	r3, #64	; 0x40
d05e0f5a:	eba0 000a 	sub.w	r0, r0, sl
d05e0f5e:	fa03 f000 	lsl.w	r0, r3, r0
d05e0f62:	9b04      	ldr	r3, [sp, #16]
d05e0f64:	4303      	orrs	r3, r0
d05e0f66:	3401      	adds	r4, #1
d05e0f68:	9304      	str	r3, [sp, #16]
d05e0f6a:	f814 1b01 	ldrb.w	r1, [r4], #1
d05e0f6e:	4826      	ldr	r0, [pc, #152]	; (d05e1008 <_svfiprintf_r+0x1f0>)
d05e0f70:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d05e0f74:	2206      	movs	r2, #6
d05e0f76:	f000 f9e3 	bl	d05e1340 <memchr>
d05e0f7a:	2800      	cmp	r0, #0
d05e0f7c:	d038      	beq.n	d05e0ff0 <_svfiprintf_r+0x1d8>
d05e0f7e:	4b23      	ldr	r3, [pc, #140]	; (d05e100c <_svfiprintf_r+0x1f4>)
d05e0f80:	bb1b      	cbnz	r3, d05e0fca <_svfiprintf_r+0x1b2>
d05e0f82:	9b03      	ldr	r3, [sp, #12]
d05e0f84:	3307      	adds	r3, #7
d05e0f86:	f023 0307 	bic.w	r3, r3, #7
d05e0f8a:	3308      	adds	r3, #8
d05e0f8c:	9303      	str	r3, [sp, #12]
d05e0f8e:	9b09      	ldr	r3, [sp, #36]	; 0x24
d05e0f90:	4433      	add	r3, r6
d05e0f92:	9309      	str	r3, [sp, #36]	; 0x24
d05e0f94:	e767      	b.n	d05e0e66 <_svfiprintf_r+0x4e>
d05e0f96:	fb0c 3202 	mla	r2, ip, r2, r3
d05e0f9a:	460c      	mov	r4, r1
d05e0f9c:	2001      	movs	r0, #1
d05e0f9e:	e7a5      	b.n	d05e0eec <_svfiprintf_r+0xd4>
d05e0fa0:	2300      	movs	r3, #0
d05e0fa2:	3401      	adds	r4, #1
d05e0fa4:	9305      	str	r3, [sp, #20]
d05e0fa6:	4619      	mov	r1, r3
d05e0fa8:	f04f 0c0a 	mov.w	ip, #10
d05e0fac:	4620      	mov	r0, r4
d05e0fae:	f810 2b01 	ldrb.w	r2, [r0], #1
d05e0fb2:	3a30      	subs	r2, #48	; 0x30
d05e0fb4:	2a09      	cmp	r2, #9
d05e0fb6:	d903      	bls.n	d05e0fc0 <_svfiprintf_r+0x1a8>
d05e0fb8:	2b00      	cmp	r3, #0
d05e0fba:	d0c5      	beq.n	d05e0f48 <_svfiprintf_r+0x130>
d05e0fbc:	9105      	str	r1, [sp, #20]
d05e0fbe:	e7c3      	b.n	d05e0f48 <_svfiprintf_r+0x130>
d05e0fc0:	fb0c 2101 	mla	r1, ip, r1, r2
d05e0fc4:	4604      	mov	r4, r0
d05e0fc6:	2301      	movs	r3, #1
d05e0fc8:	e7f0      	b.n	d05e0fac <_svfiprintf_r+0x194>
d05e0fca:	ab03      	add	r3, sp, #12
d05e0fcc:	9300      	str	r3, [sp, #0]
d05e0fce:	462a      	mov	r2, r5
d05e0fd0:	4b0f      	ldr	r3, [pc, #60]	; (d05e1010 <_svfiprintf_r+0x1f8>)
d05e0fd2:	a904      	add	r1, sp, #16
d05e0fd4:	4638      	mov	r0, r7
d05e0fd6:	f3af 8000 	nop.w
d05e0fda:	1c42      	adds	r2, r0, #1
d05e0fdc:	4606      	mov	r6, r0
d05e0fde:	d1d6      	bne.n	d05e0f8e <_svfiprintf_r+0x176>
d05e0fe0:	89ab      	ldrh	r3, [r5, #12]
d05e0fe2:	065b      	lsls	r3, r3, #25
d05e0fe4:	f53f af2c 	bmi.w	d05e0e40 <_svfiprintf_r+0x28>
d05e0fe8:	9809      	ldr	r0, [sp, #36]	; 0x24
d05e0fea:	b01d      	add	sp, #116	; 0x74
d05e0fec:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e0ff0:	ab03      	add	r3, sp, #12
d05e0ff2:	9300      	str	r3, [sp, #0]
d05e0ff4:	462a      	mov	r2, r5
d05e0ff6:	4b06      	ldr	r3, [pc, #24]	; (d05e1010 <_svfiprintf_r+0x1f8>)
d05e0ff8:	a904      	add	r1, sp, #16
d05e0ffa:	4638      	mov	r0, r7
d05e0ffc:	f000 f87a 	bl	d05e10f4 <_printf_i>
d05e1000:	e7eb      	b.n	d05e0fda <_svfiprintf_r+0x1c2>
d05e1002:	bf00      	nop
d05e1004:	d05e1a9f 	.word	0xd05e1a9f
d05e1008:	d05e1aa9 	.word	0xd05e1aa9
d05e100c:	00000000 	.word	0x00000000
d05e1010:	d05e0d63 	.word	0xd05e0d63
d05e1014:	d05e1aa5 	.word	0xd05e1aa5

d05e1018 <_printf_common>:
d05e1018:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05e101c:	4616      	mov	r6, r2
d05e101e:	4699      	mov	r9, r3
d05e1020:	688a      	ldr	r2, [r1, #8]
d05e1022:	690b      	ldr	r3, [r1, #16]
d05e1024:	f8dd 8020 	ldr.w	r8, [sp, #32]
d05e1028:	4293      	cmp	r3, r2
d05e102a:	bfb8      	it	lt
d05e102c:	4613      	movlt	r3, r2
d05e102e:	6033      	str	r3, [r6, #0]
d05e1030:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d05e1034:	4607      	mov	r7, r0
d05e1036:	460c      	mov	r4, r1
d05e1038:	b10a      	cbz	r2, d05e103e <_printf_common+0x26>
d05e103a:	3301      	adds	r3, #1
d05e103c:	6033      	str	r3, [r6, #0]
d05e103e:	6823      	ldr	r3, [r4, #0]
d05e1040:	0699      	lsls	r1, r3, #26
d05e1042:	bf42      	ittt	mi
d05e1044:	6833      	ldrmi	r3, [r6, #0]
d05e1046:	3302      	addmi	r3, #2
d05e1048:	6033      	strmi	r3, [r6, #0]
d05e104a:	6825      	ldr	r5, [r4, #0]
d05e104c:	f015 0506 	ands.w	r5, r5, #6
d05e1050:	d106      	bne.n	d05e1060 <_printf_common+0x48>
d05e1052:	f104 0a19 	add.w	sl, r4, #25
d05e1056:	68e3      	ldr	r3, [r4, #12]
d05e1058:	6832      	ldr	r2, [r6, #0]
d05e105a:	1a9b      	subs	r3, r3, r2
d05e105c:	42ab      	cmp	r3, r5
d05e105e:	dc26      	bgt.n	d05e10ae <_printf_common+0x96>
d05e1060:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d05e1064:	1e13      	subs	r3, r2, #0
d05e1066:	6822      	ldr	r2, [r4, #0]
d05e1068:	bf18      	it	ne
d05e106a:	2301      	movne	r3, #1
d05e106c:	0692      	lsls	r2, r2, #26
d05e106e:	d42b      	bmi.n	d05e10c8 <_printf_common+0xb0>
d05e1070:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05e1074:	4649      	mov	r1, r9
d05e1076:	4638      	mov	r0, r7
d05e1078:	47c0      	blx	r8
d05e107a:	3001      	adds	r0, #1
d05e107c:	d01e      	beq.n	d05e10bc <_printf_common+0xa4>
d05e107e:	6823      	ldr	r3, [r4, #0]
d05e1080:	68e5      	ldr	r5, [r4, #12]
d05e1082:	6832      	ldr	r2, [r6, #0]
d05e1084:	f003 0306 	and.w	r3, r3, #6
d05e1088:	2b04      	cmp	r3, #4
d05e108a:	bf08      	it	eq
d05e108c:	1aad      	subeq	r5, r5, r2
d05e108e:	68a3      	ldr	r3, [r4, #8]
d05e1090:	6922      	ldr	r2, [r4, #16]
d05e1092:	bf0c      	ite	eq
d05e1094:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d05e1098:	2500      	movne	r5, #0
d05e109a:	4293      	cmp	r3, r2
d05e109c:	bfc4      	itt	gt
d05e109e:	1a9b      	subgt	r3, r3, r2
d05e10a0:	18ed      	addgt	r5, r5, r3
d05e10a2:	2600      	movs	r6, #0
d05e10a4:	341a      	adds	r4, #26
d05e10a6:	42b5      	cmp	r5, r6
d05e10a8:	d11a      	bne.n	d05e10e0 <_printf_common+0xc8>
d05e10aa:	2000      	movs	r0, #0
d05e10ac:	e008      	b.n	d05e10c0 <_printf_common+0xa8>
d05e10ae:	2301      	movs	r3, #1
d05e10b0:	4652      	mov	r2, sl
d05e10b2:	4649      	mov	r1, r9
d05e10b4:	4638      	mov	r0, r7
d05e10b6:	47c0      	blx	r8
d05e10b8:	3001      	adds	r0, #1
d05e10ba:	d103      	bne.n	d05e10c4 <_printf_common+0xac>
d05e10bc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e10c0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e10c4:	3501      	adds	r5, #1
d05e10c6:	e7c6      	b.n	d05e1056 <_printf_common+0x3e>
d05e10c8:	18e1      	adds	r1, r4, r3
d05e10ca:	1c5a      	adds	r2, r3, #1
d05e10cc:	2030      	movs	r0, #48	; 0x30
d05e10ce:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d05e10d2:	4422      	add	r2, r4
d05e10d4:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d05e10d8:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d05e10dc:	3302      	adds	r3, #2
d05e10de:	e7c7      	b.n	d05e1070 <_printf_common+0x58>
d05e10e0:	2301      	movs	r3, #1
d05e10e2:	4622      	mov	r2, r4
d05e10e4:	4649      	mov	r1, r9
d05e10e6:	4638      	mov	r0, r7
d05e10e8:	47c0      	blx	r8
d05e10ea:	3001      	adds	r0, #1
d05e10ec:	d0e6      	beq.n	d05e10bc <_printf_common+0xa4>
d05e10ee:	3601      	adds	r6, #1
d05e10f0:	e7d9      	b.n	d05e10a6 <_printf_common+0x8e>
	...

d05e10f4 <_printf_i>:
d05e10f4:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d05e10f8:	460c      	mov	r4, r1
d05e10fa:	4691      	mov	r9, r2
d05e10fc:	7e27      	ldrb	r7, [r4, #24]
d05e10fe:	990c      	ldr	r1, [sp, #48]	; 0x30
d05e1100:	2f78      	cmp	r7, #120	; 0x78
d05e1102:	4680      	mov	r8, r0
d05e1104:	469a      	mov	sl, r3
d05e1106:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05e110a:	d807      	bhi.n	d05e111c <_printf_i+0x28>
d05e110c:	2f62      	cmp	r7, #98	; 0x62
d05e110e:	d80a      	bhi.n	d05e1126 <_printf_i+0x32>
d05e1110:	2f00      	cmp	r7, #0
d05e1112:	f000 80d8 	beq.w	d05e12c6 <_printf_i+0x1d2>
d05e1116:	2f58      	cmp	r7, #88	; 0x58
d05e1118:	f000 80a3 	beq.w	d05e1262 <_printf_i+0x16e>
d05e111c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05e1120:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d05e1124:	e03a      	b.n	d05e119c <_printf_i+0xa8>
d05e1126:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d05e112a:	2b15      	cmp	r3, #21
d05e112c:	d8f6      	bhi.n	d05e111c <_printf_i+0x28>
d05e112e:	a001      	add	r0, pc, #4	; (adr r0, d05e1134 <_printf_i+0x40>)
d05e1130:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d05e1134:	d05e118d 	.word	0xd05e118d
d05e1138:	d05e11a1 	.word	0xd05e11a1
d05e113c:	d05e111d 	.word	0xd05e111d
d05e1140:	d05e111d 	.word	0xd05e111d
d05e1144:	d05e111d 	.word	0xd05e111d
d05e1148:	d05e111d 	.word	0xd05e111d
d05e114c:	d05e11a1 	.word	0xd05e11a1
d05e1150:	d05e111d 	.word	0xd05e111d
d05e1154:	d05e111d 	.word	0xd05e111d
d05e1158:	d05e111d 	.word	0xd05e111d
d05e115c:	d05e111d 	.word	0xd05e111d
d05e1160:	d05e12ad 	.word	0xd05e12ad
d05e1164:	d05e11d1 	.word	0xd05e11d1
d05e1168:	d05e128f 	.word	0xd05e128f
d05e116c:	d05e111d 	.word	0xd05e111d
d05e1170:	d05e111d 	.word	0xd05e111d
d05e1174:	d05e12cf 	.word	0xd05e12cf
d05e1178:	d05e111d 	.word	0xd05e111d
d05e117c:	d05e11d1 	.word	0xd05e11d1
d05e1180:	d05e111d 	.word	0xd05e111d
d05e1184:	d05e111d 	.word	0xd05e111d
d05e1188:	d05e1297 	.word	0xd05e1297
d05e118c:	680b      	ldr	r3, [r1, #0]
d05e118e:	1d1a      	adds	r2, r3, #4
d05e1190:	681b      	ldr	r3, [r3, #0]
d05e1192:	600a      	str	r2, [r1, #0]
d05e1194:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05e1198:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d05e119c:	2301      	movs	r3, #1
d05e119e:	e0a3      	b.n	d05e12e8 <_printf_i+0x1f4>
d05e11a0:	6825      	ldr	r5, [r4, #0]
d05e11a2:	6808      	ldr	r0, [r1, #0]
d05e11a4:	062e      	lsls	r6, r5, #24
d05e11a6:	f100 0304 	add.w	r3, r0, #4
d05e11aa:	d50a      	bpl.n	d05e11c2 <_printf_i+0xce>
d05e11ac:	6805      	ldr	r5, [r0, #0]
d05e11ae:	600b      	str	r3, [r1, #0]
d05e11b0:	2d00      	cmp	r5, #0
d05e11b2:	da03      	bge.n	d05e11bc <_printf_i+0xc8>
d05e11b4:	232d      	movs	r3, #45	; 0x2d
d05e11b6:	426d      	negs	r5, r5
d05e11b8:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05e11bc:	485e      	ldr	r0, [pc, #376]	; (d05e1338 <_printf_i+0x244>)
d05e11be:	230a      	movs	r3, #10
d05e11c0:	e019      	b.n	d05e11f6 <_printf_i+0x102>
d05e11c2:	f015 0f40 	tst.w	r5, #64	; 0x40
d05e11c6:	6805      	ldr	r5, [r0, #0]
d05e11c8:	600b      	str	r3, [r1, #0]
d05e11ca:	bf18      	it	ne
d05e11cc:	b22d      	sxthne	r5, r5
d05e11ce:	e7ef      	b.n	d05e11b0 <_printf_i+0xbc>
d05e11d0:	680b      	ldr	r3, [r1, #0]
d05e11d2:	6825      	ldr	r5, [r4, #0]
d05e11d4:	1d18      	adds	r0, r3, #4
d05e11d6:	6008      	str	r0, [r1, #0]
d05e11d8:	0628      	lsls	r0, r5, #24
d05e11da:	d501      	bpl.n	d05e11e0 <_printf_i+0xec>
d05e11dc:	681d      	ldr	r5, [r3, #0]
d05e11de:	e002      	b.n	d05e11e6 <_printf_i+0xf2>
d05e11e0:	0669      	lsls	r1, r5, #25
d05e11e2:	d5fb      	bpl.n	d05e11dc <_printf_i+0xe8>
d05e11e4:	881d      	ldrh	r5, [r3, #0]
d05e11e6:	4854      	ldr	r0, [pc, #336]	; (d05e1338 <_printf_i+0x244>)
d05e11e8:	2f6f      	cmp	r7, #111	; 0x6f
d05e11ea:	bf0c      	ite	eq
d05e11ec:	2308      	moveq	r3, #8
d05e11ee:	230a      	movne	r3, #10
d05e11f0:	2100      	movs	r1, #0
d05e11f2:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d05e11f6:	6866      	ldr	r6, [r4, #4]
d05e11f8:	60a6      	str	r6, [r4, #8]
d05e11fa:	2e00      	cmp	r6, #0
d05e11fc:	bfa2      	ittt	ge
d05e11fe:	6821      	ldrge	r1, [r4, #0]
d05e1200:	f021 0104 	bicge.w	r1, r1, #4
d05e1204:	6021      	strge	r1, [r4, #0]
d05e1206:	b90d      	cbnz	r5, d05e120c <_printf_i+0x118>
d05e1208:	2e00      	cmp	r6, #0
d05e120a:	d04d      	beq.n	d05e12a8 <_printf_i+0x1b4>
d05e120c:	4616      	mov	r6, r2
d05e120e:	fbb5 f1f3 	udiv	r1, r5, r3
d05e1212:	fb03 5711 	mls	r7, r3, r1, r5
d05e1216:	5dc7      	ldrb	r7, [r0, r7]
d05e1218:	f806 7d01 	strb.w	r7, [r6, #-1]!
d05e121c:	462f      	mov	r7, r5
d05e121e:	42bb      	cmp	r3, r7
d05e1220:	460d      	mov	r5, r1
d05e1222:	d9f4      	bls.n	d05e120e <_printf_i+0x11a>
d05e1224:	2b08      	cmp	r3, #8
d05e1226:	d10b      	bne.n	d05e1240 <_printf_i+0x14c>
d05e1228:	6823      	ldr	r3, [r4, #0]
d05e122a:	07df      	lsls	r7, r3, #31
d05e122c:	d508      	bpl.n	d05e1240 <_printf_i+0x14c>
d05e122e:	6923      	ldr	r3, [r4, #16]
d05e1230:	6861      	ldr	r1, [r4, #4]
d05e1232:	4299      	cmp	r1, r3
d05e1234:	bfde      	ittt	le
d05e1236:	2330      	movle	r3, #48	; 0x30
d05e1238:	f806 3c01 	strble.w	r3, [r6, #-1]
d05e123c:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d05e1240:	1b92      	subs	r2, r2, r6
d05e1242:	6122      	str	r2, [r4, #16]
d05e1244:	f8cd a000 	str.w	sl, [sp]
d05e1248:	464b      	mov	r3, r9
d05e124a:	aa03      	add	r2, sp, #12
d05e124c:	4621      	mov	r1, r4
d05e124e:	4640      	mov	r0, r8
d05e1250:	f7ff fee2 	bl	d05e1018 <_printf_common>
d05e1254:	3001      	adds	r0, #1
d05e1256:	d14c      	bne.n	d05e12f2 <_printf_i+0x1fe>
d05e1258:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e125c:	b004      	add	sp, #16
d05e125e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e1262:	4835      	ldr	r0, [pc, #212]	; (d05e1338 <_printf_i+0x244>)
d05e1264:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d05e1268:	6823      	ldr	r3, [r4, #0]
d05e126a:	680e      	ldr	r6, [r1, #0]
d05e126c:	061f      	lsls	r7, r3, #24
d05e126e:	f856 5b04 	ldr.w	r5, [r6], #4
d05e1272:	600e      	str	r6, [r1, #0]
d05e1274:	d514      	bpl.n	d05e12a0 <_printf_i+0x1ac>
d05e1276:	07d9      	lsls	r1, r3, #31
d05e1278:	bf44      	itt	mi
d05e127a:	f043 0320 	orrmi.w	r3, r3, #32
d05e127e:	6023      	strmi	r3, [r4, #0]
d05e1280:	b91d      	cbnz	r5, d05e128a <_printf_i+0x196>
d05e1282:	6823      	ldr	r3, [r4, #0]
d05e1284:	f023 0320 	bic.w	r3, r3, #32
d05e1288:	6023      	str	r3, [r4, #0]
d05e128a:	2310      	movs	r3, #16
d05e128c:	e7b0      	b.n	d05e11f0 <_printf_i+0xfc>
d05e128e:	6823      	ldr	r3, [r4, #0]
d05e1290:	f043 0320 	orr.w	r3, r3, #32
d05e1294:	6023      	str	r3, [r4, #0]
d05e1296:	2378      	movs	r3, #120	; 0x78
d05e1298:	4828      	ldr	r0, [pc, #160]	; (d05e133c <_printf_i+0x248>)
d05e129a:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d05e129e:	e7e3      	b.n	d05e1268 <_printf_i+0x174>
d05e12a0:	065e      	lsls	r6, r3, #25
d05e12a2:	bf48      	it	mi
d05e12a4:	b2ad      	uxthmi	r5, r5
d05e12a6:	e7e6      	b.n	d05e1276 <_printf_i+0x182>
d05e12a8:	4616      	mov	r6, r2
d05e12aa:	e7bb      	b.n	d05e1224 <_printf_i+0x130>
d05e12ac:	680b      	ldr	r3, [r1, #0]
d05e12ae:	6826      	ldr	r6, [r4, #0]
d05e12b0:	6960      	ldr	r0, [r4, #20]
d05e12b2:	1d1d      	adds	r5, r3, #4
d05e12b4:	600d      	str	r5, [r1, #0]
d05e12b6:	0635      	lsls	r5, r6, #24
d05e12b8:	681b      	ldr	r3, [r3, #0]
d05e12ba:	d501      	bpl.n	d05e12c0 <_printf_i+0x1cc>
d05e12bc:	6018      	str	r0, [r3, #0]
d05e12be:	e002      	b.n	d05e12c6 <_printf_i+0x1d2>
d05e12c0:	0671      	lsls	r1, r6, #25
d05e12c2:	d5fb      	bpl.n	d05e12bc <_printf_i+0x1c8>
d05e12c4:	8018      	strh	r0, [r3, #0]
d05e12c6:	2300      	movs	r3, #0
d05e12c8:	6123      	str	r3, [r4, #16]
d05e12ca:	4616      	mov	r6, r2
d05e12cc:	e7ba      	b.n	d05e1244 <_printf_i+0x150>
d05e12ce:	680b      	ldr	r3, [r1, #0]
d05e12d0:	1d1a      	adds	r2, r3, #4
d05e12d2:	600a      	str	r2, [r1, #0]
d05e12d4:	681e      	ldr	r6, [r3, #0]
d05e12d6:	6862      	ldr	r2, [r4, #4]
d05e12d8:	2100      	movs	r1, #0
d05e12da:	4630      	mov	r0, r6
d05e12dc:	f000 f830 	bl	d05e1340 <memchr>
d05e12e0:	b108      	cbz	r0, d05e12e6 <_printf_i+0x1f2>
d05e12e2:	1b80      	subs	r0, r0, r6
d05e12e4:	6060      	str	r0, [r4, #4]
d05e12e6:	6863      	ldr	r3, [r4, #4]
d05e12e8:	6123      	str	r3, [r4, #16]
d05e12ea:	2300      	movs	r3, #0
d05e12ec:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05e12f0:	e7a8      	b.n	d05e1244 <_printf_i+0x150>
d05e12f2:	6923      	ldr	r3, [r4, #16]
d05e12f4:	4632      	mov	r2, r6
d05e12f6:	4649      	mov	r1, r9
d05e12f8:	4640      	mov	r0, r8
d05e12fa:	47d0      	blx	sl
d05e12fc:	3001      	adds	r0, #1
d05e12fe:	d0ab      	beq.n	d05e1258 <_printf_i+0x164>
d05e1300:	6823      	ldr	r3, [r4, #0]
d05e1302:	079b      	lsls	r3, r3, #30
d05e1304:	d413      	bmi.n	d05e132e <_printf_i+0x23a>
d05e1306:	68e0      	ldr	r0, [r4, #12]
d05e1308:	9b03      	ldr	r3, [sp, #12]
d05e130a:	4298      	cmp	r0, r3
d05e130c:	bfb8      	it	lt
d05e130e:	4618      	movlt	r0, r3
d05e1310:	e7a4      	b.n	d05e125c <_printf_i+0x168>
d05e1312:	2301      	movs	r3, #1
d05e1314:	4632      	mov	r2, r6
d05e1316:	4649      	mov	r1, r9
d05e1318:	4640      	mov	r0, r8
d05e131a:	47d0      	blx	sl
d05e131c:	3001      	adds	r0, #1
d05e131e:	d09b      	beq.n	d05e1258 <_printf_i+0x164>
d05e1320:	3501      	adds	r5, #1
d05e1322:	68e3      	ldr	r3, [r4, #12]
d05e1324:	9903      	ldr	r1, [sp, #12]
d05e1326:	1a5b      	subs	r3, r3, r1
d05e1328:	42ab      	cmp	r3, r5
d05e132a:	dcf2      	bgt.n	d05e1312 <_printf_i+0x21e>
d05e132c:	e7eb      	b.n	d05e1306 <_printf_i+0x212>
d05e132e:	2500      	movs	r5, #0
d05e1330:	f104 0619 	add.w	r6, r4, #25
d05e1334:	e7f5      	b.n	d05e1322 <_printf_i+0x22e>
d05e1336:	bf00      	nop
d05e1338:	d05e1ab0 	.word	0xd05e1ab0
d05e133c:	d05e1ac1 	.word	0xd05e1ac1

d05e1340 <memchr>:
d05e1340:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05e1344:	2a10      	cmp	r2, #16
d05e1346:	db2b      	blt.n	d05e13a0 <memchr+0x60>
d05e1348:	f010 0f07 	tst.w	r0, #7
d05e134c:	d008      	beq.n	d05e1360 <memchr+0x20>
d05e134e:	f810 3b01 	ldrb.w	r3, [r0], #1
d05e1352:	3a01      	subs	r2, #1
d05e1354:	428b      	cmp	r3, r1
d05e1356:	d02d      	beq.n	d05e13b4 <memchr+0x74>
d05e1358:	f010 0f07 	tst.w	r0, #7
d05e135c:	b342      	cbz	r2, d05e13b0 <memchr+0x70>
d05e135e:	d1f6      	bne.n	d05e134e <memchr+0xe>
d05e1360:	b4f0      	push	{r4, r5, r6, r7}
d05e1362:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d05e1366:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d05e136a:	f022 0407 	bic.w	r4, r2, #7
d05e136e:	f07f 0700 	mvns.w	r7, #0
d05e1372:	2300      	movs	r3, #0
d05e1374:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d05e1378:	3c08      	subs	r4, #8
d05e137a:	ea85 0501 	eor.w	r5, r5, r1
d05e137e:	ea86 0601 	eor.w	r6, r6, r1
d05e1382:	fa85 f547 	uadd8	r5, r5, r7
d05e1386:	faa3 f587 	sel	r5, r3, r7
d05e138a:	fa86 f647 	uadd8	r6, r6, r7
d05e138e:	faa5 f687 	sel	r6, r5, r7
d05e1392:	b98e      	cbnz	r6, d05e13b8 <memchr+0x78>
d05e1394:	d1ee      	bne.n	d05e1374 <memchr+0x34>
d05e1396:	bcf0      	pop	{r4, r5, r6, r7}
d05e1398:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05e139c:	f002 0207 	and.w	r2, r2, #7
d05e13a0:	b132      	cbz	r2, d05e13b0 <memchr+0x70>
d05e13a2:	f810 3b01 	ldrb.w	r3, [r0], #1
d05e13a6:	3a01      	subs	r2, #1
d05e13a8:	ea83 0301 	eor.w	r3, r3, r1
d05e13ac:	b113      	cbz	r3, d05e13b4 <memchr+0x74>
d05e13ae:	d1f8      	bne.n	d05e13a2 <memchr+0x62>
d05e13b0:	2000      	movs	r0, #0
d05e13b2:	4770      	bx	lr
d05e13b4:	3801      	subs	r0, #1
d05e13b6:	4770      	bx	lr
d05e13b8:	2d00      	cmp	r5, #0
d05e13ba:	bf06      	itte	eq
d05e13bc:	4635      	moveq	r5, r6
d05e13be:	3803      	subeq	r0, #3
d05e13c0:	3807      	subne	r0, #7
d05e13c2:	f015 0f01 	tst.w	r5, #1
d05e13c6:	d107      	bne.n	d05e13d8 <memchr+0x98>
d05e13c8:	3001      	adds	r0, #1
d05e13ca:	f415 7f80 	tst.w	r5, #256	; 0x100
d05e13ce:	bf02      	ittt	eq
d05e13d0:	3001      	addeq	r0, #1
d05e13d2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d05e13d6:	3001      	addeq	r0, #1
d05e13d8:	bcf0      	pop	{r4, r5, r6, r7}
d05e13da:	3801      	subs	r0, #1
d05e13dc:	4770      	bx	lr
d05e13de:	bf00      	nop

d05e13e0 <_free_r>:
d05e13e0:	b537      	push	{r0, r1, r2, r4, r5, lr}
d05e13e2:	2900      	cmp	r1, #0
d05e13e4:	d048      	beq.n	d05e1478 <_free_r+0x98>
d05e13e6:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05e13ea:	9001      	str	r0, [sp, #4]
d05e13ec:	2b00      	cmp	r3, #0
d05e13ee:	f1a1 0404 	sub.w	r4, r1, #4
d05e13f2:	bfb8      	it	lt
d05e13f4:	18e4      	addlt	r4, r4, r3
d05e13f6:	f000 f8d3 	bl	d05e15a0 <__malloc_lock>
d05e13fa:	4a20      	ldr	r2, [pc, #128]	; (d05e147c <_free_r+0x9c>)
d05e13fc:	9801      	ldr	r0, [sp, #4]
d05e13fe:	6813      	ldr	r3, [r2, #0]
d05e1400:	4615      	mov	r5, r2
d05e1402:	b933      	cbnz	r3, d05e1412 <_free_r+0x32>
d05e1404:	6063      	str	r3, [r4, #4]
d05e1406:	6014      	str	r4, [r2, #0]
d05e1408:	b003      	add	sp, #12
d05e140a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05e140e:	f000 b8cd 	b.w	d05e15ac <__malloc_unlock>
d05e1412:	42a3      	cmp	r3, r4
d05e1414:	d90b      	bls.n	d05e142e <_free_r+0x4e>
d05e1416:	6821      	ldr	r1, [r4, #0]
d05e1418:	1862      	adds	r2, r4, r1
d05e141a:	4293      	cmp	r3, r2
d05e141c:	bf04      	itt	eq
d05e141e:	681a      	ldreq	r2, [r3, #0]
d05e1420:	685b      	ldreq	r3, [r3, #4]
d05e1422:	6063      	str	r3, [r4, #4]
d05e1424:	bf04      	itt	eq
d05e1426:	1852      	addeq	r2, r2, r1
d05e1428:	6022      	streq	r2, [r4, #0]
d05e142a:	602c      	str	r4, [r5, #0]
d05e142c:	e7ec      	b.n	d05e1408 <_free_r+0x28>
d05e142e:	461a      	mov	r2, r3
d05e1430:	685b      	ldr	r3, [r3, #4]
d05e1432:	b10b      	cbz	r3, d05e1438 <_free_r+0x58>
d05e1434:	42a3      	cmp	r3, r4
d05e1436:	d9fa      	bls.n	d05e142e <_free_r+0x4e>
d05e1438:	6811      	ldr	r1, [r2, #0]
d05e143a:	1855      	adds	r5, r2, r1
d05e143c:	42a5      	cmp	r5, r4
d05e143e:	d10b      	bne.n	d05e1458 <_free_r+0x78>
d05e1440:	6824      	ldr	r4, [r4, #0]
d05e1442:	4421      	add	r1, r4
d05e1444:	1854      	adds	r4, r2, r1
d05e1446:	42a3      	cmp	r3, r4
d05e1448:	6011      	str	r1, [r2, #0]
d05e144a:	d1dd      	bne.n	d05e1408 <_free_r+0x28>
d05e144c:	681c      	ldr	r4, [r3, #0]
d05e144e:	685b      	ldr	r3, [r3, #4]
d05e1450:	6053      	str	r3, [r2, #4]
d05e1452:	4421      	add	r1, r4
d05e1454:	6011      	str	r1, [r2, #0]
d05e1456:	e7d7      	b.n	d05e1408 <_free_r+0x28>
d05e1458:	d902      	bls.n	d05e1460 <_free_r+0x80>
d05e145a:	230c      	movs	r3, #12
d05e145c:	6003      	str	r3, [r0, #0]
d05e145e:	e7d3      	b.n	d05e1408 <_free_r+0x28>
d05e1460:	6825      	ldr	r5, [r4, #0]
d05e1462:	1961      	adds	r1, r4, r5
d05e1464:	428b      	cmp	r3, r1
d05e1466:	bf04      	itt	eq
d05e1468:	6819      	ldreq	r1, [r3, #0]
d05e146a:	685b      	ldreq	r3, [r3, #4]
d05e146c:	6063      	str	r3, [r4, #4]
d05e146e:	bf04      	itt	eq
d05e1470:	1949      	addeq	r1, r1, r5
d05e1472:	6021      	streq	r1, [r4, #0]
d05e1474:	6054      	str	r4, [r2, #4]
d05e1476:	e7c7      	b.n	d05e1408 <_free_r+0x28>
d05e1478:	b003      	add	sp, #12
d05e147a:	bd30      	pop	{r4, r5, pc}
d05e147c:	d05f1b4c 	.word	0xd05f1b4c

d05e1480 <_malloc_r>:
d05e1480:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e1482:	1ccd      	adds	r5, r1, #3
d05e1484:	f025 0503 	bic.w	r5, r5, #3
d05e1488:	3508      	adds	r5, #8
d05e148a:	2d0c      	cmp	r5, #12
d05e148c:	bf38      	it	cc
d05e148e:	250c      	movcc	r5, #12
d05e1490:	2d00      	cmp	r5, #0
d05e1492:	4606      	mov	r6, r0
d05e1494:	db01      	blt.n	d05e149a <_malloc_r+0x1a>
d05e1496:	42a9      	cmp	r1, r5
d05e1498:	d903      	bls.n	d05e14a2 <_malloc_r+0x22>
d05e149a:	230c      	movs	r3, #12
d05e149c:	6033      	str	r3, [r6, #0]
d05e149e:	2000      	movs	r0, #0
d05e14a0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e14a2:	f000 f87d 	bl	d05e15a0 <__malloc_lock>
d05e14a6:	4921      	ldr	r1, [pc, #132]	; (d05e152c <_malloc_r+0xac>)
d05e14a8:	680a      	ldr	r2, [r1, #0]
d05e14aa:	4614      	mov	r4, r2
d05e14ac:	b99c      	cbnz	r4, d05e14d6 <_malloc_r+0x56>
d05e14ae:	4f20      	ldr	r7, [pc, #128]	; (d05e1530 <_malloc_r+0xb0>)
d05e14b0:	683b      	ldr	r3, [r7, #0]
d05e14b2:	b923      	cbnz	r3, d05e14be <_malloc_r+0x3e>
d05e14b4:	4621      	mov	r1, r4
d05e14b6:	4630      	mov	r0, r6
d05e14b8:	f000 f862 	bl	d05e1580 <_sbrk_r>
d05e14bc:	6038      	str	r0, [r7, #0]
d05e14be:	4629      	mov	r1, r5
d05e14c0:	4630      	mov	r0, r6
d05e14c2:	f000 f85d 	bl	d05e1580 <_sbrk_r>
d05e14c6:	1c43      	adds	r3, r0, #1
d05e14c8:	d123      	bne.n	d05e1512 <_malloc_r+0x92>
d05e14ca:	230c      	movs	r3, #12
d05e14cc:	6033      	str	r3, [r6, #0]
d05e14ce:	4630      	mov	r0, r6
d05e14d0:	f000 f86c 	bl	d05e15ac <__malloc_unlock>
d05e14d4:	e7e3      	b.n	d05e149e <_malloc_r+0x1e>
d05e14d6:	6823      	ldr	r3, [r4, #0]
d05e14d8:	1b5b      	subs	r3, r3, r5
d05e14da:	d417      	bmi.n	d05e150c <_malloc_r+0x8c>
d05e14dc:	2b0b      	cmp	r3, #11
d05e14de:	d903      	bls.n	d05e14e8 <_malloc_r+0x68>
d05e14e0:	6023      	str	r3, [r4, #0]
d05e14e2:	441c      	add	r4, r3
d05e14e4:	6025      	str	r5, [r4, #0]
d05e14e6:	e004      	b.n	d05e14f2 <_malloc_r+0x72>
d05e14e8:	6863      	ldr	r3, [r4, #4]
d05e14ea:	42a2      	cmp	r2, r4
d05e14ec:	bf0c      	ite	eq
d05e14ee:	600b      	streq	r3, [r1, #0]
d05e14f0:	6053      	strne	r3, [r2, #4]
d05e14f2:	4630      	mov	r0, r6
d05e14f4:	f000 f85a 	bl	d05e15ac <__malloc_unlock>
d05e14f8:	f104 000b 	add.w	r0, r4, #11
d05e14fc:	1d23      	adds	r3, r4, #4
d05e14fe:	f020 0007 	bic.w	r0, r0, #7
d05e1502:	1ac2      	subs	r2, r0, r3
d05e1504:	d0cc      	beq.n	d05e14a0 <_malloc_r+0x20>
d05e1506:	1a1b      	subs	r3, r3, r0
d05e1508:	50a3      	str	r3, [r4, r2]
d05e150a:	e7c9      	b.n	d05e14a0 <_malloc_r+0x20>
d05e150c:	4622      	mov	r2, r4
d05e150e:	6864      	ldr	r4, [r4, #4]
d05e1510:	e7cc      	b.n	d05e14ac <_malloc_r+0x2c>
d05e1512:	1cc4      	adds	r4, r0, #3
d05e1514:	f024 0403 	bic.w	r4, r4, #3
d05e1518:	42a0      	cmp	r0, r4
d05e151a:	d0e3      	beq.n	d05e14e4 <_malloc_r+0x64>
d05e151c:	1a21      	subs	r1, r4, r0
d05e151e:	4630      	mov	r0, r6
d05e1520:	f000 f82e 	bl	d05e1580 <_sbrk_r>
d05e1524:	3001      	adds	r0, #1
d05e1526:	d1dd      	bne.n	d05e14e4 <_malloc_r+0x64>
d05e1528:	e7cf      	b.n	d05e14ca <_malloc_r+0x4a>
d05e152a:	bf00      	nop
d05e152c:	d05f1b4c 	.word	0xd05f1b4c
d05e1530:	d05f1b50 	.word	0xd05f1b50

d05e1534 <_realloc_r>:
d05e1534:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e1536:	4607      	mov	r7, r0
d05e1538:	4614      	mov	r4, r2
d05e153a:	460e      	mov	r6, r1
d05e153c:	b921      	cbnz	r1, d05e1548 <_realloc_r+0x14>
d05e153e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d05e1542:	4611      	mov	r1, r2
d05e1544:	f7ff bf9c 	b.w	d05e1480 <_malloc_r>
d05e1548:	b922      	cbnz	r2, d05e1554 <_realloc_r+0x20>
d05e154a:	f7ff ff49 	bl	d05e13e0 <_free_r>
d05e154e:	4625      	mov	r5, r4
d05e1550:	4628      	mov	r0, r5
d05e1552:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e1554:	f000 f830 	bl	d05e15b8 <_malloc_usable_size_r>
d05e1558:	42a0      	cmp	r0, r4
d05e155a:	d20f      	bcs.n	d05e157c <_realloc_r+0x48>
d05e155c:	4621      	mov	r1, r4
d05e155e:	4638      	mov	r0, r7
d05e1560:	f7ff ff8e 	bl	d05e1480 <_malloc_r>
d05e1564:	4605      	mov	r5, r0
d05e1566:	2800      	cmp	r0, #0
d05e1568:	d0f2      	beq.n	d05e1550 <_realloc_r+0x1c>
d05e156a:	4631      	mov	r1, r6
d05e156c:	4622      	mov	r2, r4
d05e156e:	f7ff fb77 	bl	d05e0c60 <memcpy>
d05e1572:	4631      	mov	r1, r6
d05e1574:	4638      	mov	r0, r7
d05e1576:	f7ff ff33 	bl	d05e13e0 <_free_r>
d05e157a:	e7e9      	b.n	d05e1550 <_realloc_r+0x1c>
d05e157c:	4635      	mov	r5, r6
d05e157e:	e7e7      	b.n	d05e1550 <_realloc_r+0x1c>

d05e1580 <_sbrk_r>:
d05e1580:	b538      	push	{r3, r4, r5, lr}
d05e1582:	4d06      	ldr	r5, [pc, #24]	; (d05e159c <_sbrk_r+0x1c>)
d05e1584:	2300      	movs	r3, #0
d05e1586:	4604      	mov	r4, r0
d05e1588:	4608      	mov	r0, r1
d05e158a:	602b      	str	r3, [r5, #0]
d05e158c:	f7fe fd42 	bl	d05e0014 <_sbrk>
d05e1590:	1c43      	adds	r3, r0, #1
d05e1592:	d102      	bne.n	d05e159a <_sbrk_r+0x1a>
d05e1594:	682b      	ldr	r3, [r5, #0]
d05e1596:	b103      	cbz	r3, d05e159a <_sbrk_r+0x1a>
d05e1598:	6023      	str	r3, [r4, #0]
d05e159a:	bd38      	pop	{r3, r4, r5, pc}
d05e159c:	d09f1b54 	.word	0xd09f1b54

d05e15a0 <__malloc_lock>:
d05e15a0:	4801      	ldr	r0, [pc, #4]	; (d05e15a8 <__malloc_lock+0x8>)
d05e15a2:	f000 b811 	b.w	d05e15c8 <__retarget_lock_acquire_recursive>
d05e15a6:	bf00      	nop
d05e15a8:	d09f1b5c 	.word	0xd09f1b5c

d05e15ac <__malloc_unlock>:
d05e15ac:	4801      	ldr	r0, [pc, #4]	; (d05e15b4 <__malloc_unlock+0x8>)
d05e15ae:	f000 b80c 	b.w	d05e15ca <__retarget_lock_release_recursive>
d05e15b2:	bf00      	nop
d05e15b4:	d09f1b5c 	.word	0xd09f1b5c

d05e15b8 <_malloc_usable_size_r>:
d05e15b8:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05e15bc:	1f18      	subs	r0, r3, #4
d05e15be:	2b00      	cmp	r3, #0
d05e15c0:	bfbc      	itt	lt
d05e15c2:	580b      	ldrlt	r3, [r1, r0]
d05e15c4:	18c0      	addlt	r0, r0, r3
d05e15c6:	4770      	bx	lr

d05e15c8 <__retarget_lock_acquire_recursive>:
d05e15c8:	4770      	bx	lr

d05e15ca <__retarget_lock_release_recursive>:
d05e15ca:	4770      	bx	lr
d05e15cc:	0000002e 	.word	0x0000002e
d05e15d0:	6c696146 	.word	0x6c696146
d05e15d4:	74206465 	.word	0x74206465
d05e15d8:	6572206f 	.word	0x6572206f
d05e15dc:	6d206461 	.word	0x6d206461
d05e15e0:	2065646f 	.word	0x2065646f
d05e15e4:	65747962 	.word	0x65747962
d05e15e8:	6f726620 	.word	0x6f726620
d05e15ec:	7261206d 	.word	0x7261206d
d05e15f0:	76696863 	.word	0x76696863
d05e15f4:	65682065 	.word	0x65682065
d05e15f8:	72656461 	.word	0x72656461
d05e15fc:	0000000a 	.word	0x0000000a
d05e1600:	61766e49 	.word	0x61766e49
d05e1604:	2064696c 	.word	0x2064696c
d05e1608:	706d6f63 	.word	0x706d6f63
d05e160c:	73736572 	.word	0x73736572
d05e1610:	206e6f69 	.word	0x206e6f69
d05e1614:	65646f6d 	.word	0x65646f6d
d05e1618:	206e6920 	.word	0x206e6920
d05e161c:	68637261 	.word	0x68637261
d05e1620:	3a657669 	.word	0x3a657669
d05e1624:	0a752520 	.word	0x0a752520
d05e1628:	00000000 	.word	0x00000000
d05e162c:	252f7325 	.word	0x252f7325
d05e1630:	00000073 	.word	0x00000073
d05e1634:	72747845 	.word	0x72747845
d05e1638:	69746361 	.word	0x69746361
d05e163c:	7220676e 	.word	0x7220676e
d05e1640:	203a7761 	.word	0x203a7761
d05e1644:	28207325 	.word	0x28207325
d05e1648:	20756c25 	.word	0x20756c25
d05e164c:	65747962 	.word	0x65747962
d05e1650:	000a2973 	.word	0x000a2973
d05e1654:	6c696146 	.word	0x6c696146
d05e1658:	74206465 	.word	0x74206465
d05e165c:	7263206f 	.word	0x7263206f
d05e1660:	65746165 	.word	0x65746165
d05e1664:	7325203a 	.word	0x7325203a
d05e1668:	0000000a 	.word	0x0000000a
d05e166c:	6c696146 	.word	0x6c696146
d05e1670:	74206465 	.word	0x74206465
d05e1674:	6572206f 	.word	0x6572206f
d05e1678:	63206461 	.word	0x63206461
d05e167c:	72706d6f 	.word	0x72706d6f
d05e1680:	65737365 	.word	0x65737365
d05e1684:	61642064 	.word	0x61642064
d05e1688:	66206174 	.word	0x66206174
d05e168c:	2520726f 	.word	0x2520726f
d05e1690:	00000a73 	.word	0x00000a73
d05e1694:	6f636544 	.word	0x6f636544
d05e1698:	6572706d 	.word	0x6572706d
d05e169c:	6f697373 	.word	0x6f697373
d05e16a0:	6166206e 	.word	0x6166206e
d05e16a4:	64656c69 	.word	0x64656c69
d05e16a8:	7325203a 	.word	0x7325203a
d05e16ac:	0000000a 	.word	0x0000000a
d05e16b0:	72747845 	.word	0x72747845
d05e16b4:	69746361 	.word	0x69746361
d05e16b8:	6620676e 	.word	0x6620676e
d05e16bc:	206c6c75 	.word	0x206c6c75
d05e16c0:	706d6f63 	.word	0x706d6f63
d05e16c4:	73736572 	.word	0x73736572
d05e16c8:	203a6465 	.word	0x203a6465
d05e16cc:	28207325 	.word	0x28207325
d05e16d0:	20756c25 	.word	0x20756c25
d05e16d4:	65747962 	.word	0x65747962
d05e16d8:	000a2973 	.word	0x000a2973
d05e16dc:	6c696146 	.word	0x6c696146
d05e16e0:	74206465 	.word	0x74206465
d05e16e4:	6572206f 	.word	0x6572206f
d05e16e8:	63206461 	.word	0x63206461
d05e16ec:	6b6e7568 	.word	0x6b6e7568
d05e16f0:	756f6320 	.word	0x756f6320
d05e16f4:	6620746e 	.word	0x6620746e
d05e16f8:	2520726f 	.word	0x2520726f
d05e16fc:	00000a73 	.word	0x00000a73
d05e1700:	6e756843 	.word	0x6e756843
d05e1704:	6564206b 	.word	0x6564206b
d05e1708:	706d6f63 	.word	0x706d6f63
d05e170c:	73736572 	.word	0x73736572
d05e1710:	206e6f69 	.word	0x206e6f69
d05e1714:	6c696166 	.word	0x6c696166
d05e1718:	66206465 	.word	0x66206465
d05e171c:	2520726f 	.word	0x2520726f
d05e1720:	68632073 	.word	0x68632073
d05e1724:	206b6e75 	.word	0x206b6e75
d05e1728:	0a756c25 	.word	0x0a756c25
d05e172c:	00000000 	.word	0x00000000
d05e1730:	72747845 	.word	0x72747845
d05e1734:	65746361 	.word	0x65746361
d05e1738:	68632064 	.word	0x68632064
d05e173c:	206b6e75 	.word	0x206b6e75
d05e1740:	706d6f63 	.word	0x706d6f63
d05e1744:	73736572 	.word	0x73736572
d05e1748:	203a6465 	.word	0x203a6465
d05e174c:	000a7325 	.word	0x000a7325
d05e1750:	72747845 	.word	0x72747845
d05e1754:	69746361 	.word	0x69746361
d05e1758:	63206e6f 	.word	0x63206e6f
d05e175c:	6c706d6f 	.word	0x6c706d6f
d05e1760:	20657465 	.word	0x20657465
d05e1764:	203a6f74 	.word	0x203a6f74
d05e1768:	000a7325 	.word	0x000a7325
d05e176c:	74756f2d 	.word	0x74756f2d
d05e1770:	00000000 	.word	0x00000000
d05e1774:	6f727245 	.word	0x6f727245
d05e1778:	4d203a72 	.word	0x4d203a72
d05e177c:	69737369 	.word	0x69737369
d05e1780:	2d20676e 	.word	0x2d20676e
d05e1784:	2074756f 	.word	0x2074756f
d05e1788:	6c69663c 	.word	0x6c69663c
d05e178c:	6d616e65 	.word	0x6d616e65
d05e1790:	000a3e65 	.word	0x000a3e65
d05e1794:	61657243 	.word	0x61657243
d05e1798:	676e6974 	.word	0x676e6974
d05e179c:	63726120 	.word	0x63726120
d05e17a0:	65766968 	.word	0x65766968
d05e17a4:	7325203a 	.word	0x7325203a
d05e17a8:	0000000a 	.word	0x0000000a
d05e17ac:	6c696146 	.word	0x6c696146
d05e17b0:	74206465 	.word	0x74206465
d05e17b4:	706f206f 	.word	0x706f206f
d05e17b8:	61206e65 	.word	0x61206e65
d05e17bc:	69686372 	.word	0x69686372
d05e17c0:	66206576 	.word	0x66206576
d05e17c4:	7720726f 	.word	0x7720726f
d05e17c8:	69746972 	.word	0x69746972
d05e17cc:	203a676e 	.word	0x203a676e
d05e17d0:	000a7325 	.word	0x000a7325
d05e17d4:	68637241 	.word	0x68637241
d05e17d8:	20657669 	.word	0x20657669
d05e17dc:	61657263 	.word	0x61657263
d05e17e0:	3a646574 	.word	0x3a646574
d05e17e4:	0a732520 	.word	0x0a732520
d05e17e8:	00000000 	.word	0x00000000
d05e17ec:	6e6e6143 	.word	0x6e6e6143
d05e17f0:	7320746f 	.word	0x7320746f
d05e17f4:	20746174 	.word	0x20746174
d05e17f8:	656c6966 	.word	0x656c6966
d05e17fc:	20726f20 	.word	0x20726f20
d05e1800:	656c6966 	.word	0x656c6966
d05e1804:	706d6520 	.word	0x706d6520
d05e1808:	203a7974 	.word	0x203a7974
d05e180c:	000a7325 	.word	0x000a7325
d05e1810:	6c696146 	.word	0x6c696146
d05e1814:	74206465 	.word	0x74206465
d05e1818:	706f206f 	.word	0x706f206f
d05e181c:	203a6e65 	.word	0x203a6e65
d05e1820:	000a7325 	.word	0x000a7325
d05e1824:	65646441 	.word	0x65646441
d05e1828:	61722064 	.word	0x61722064
d05e182c:	69662077 	.word	0x69662077
d05e1830:	203a656c 	.word	0x203a656c
d05e1834:	28207325 	.word	0x28207325
d05e1838:	20756c25 	.word	0x20756c25
d05e183c:	65747962 	.word	0x65747962
d05e1840:	000a2973 	.word	0x000a2973
d05e1844:	6c696146 	.word	0x6c696146
d05e1848:	74206465 	.word	0x74206465
d05e184c:	6572206f 	.word	0x6572206f
d05e1850:	66206461 	.word	0x66206461
d05e1854:	206c6c75 	.word	0x206c6c75
d05e1858:	656c6966 	.word	0x656c6966
d05e185c:	7325203a 	.word	0x7325203a
d05e1860:	0000000a 	.word	0x0000000a
d05e1864:	706d6f43 	.word	0x706d6f43
d05e1868:	73736572 	.word	0x73736572
d05e186c:	206e6f69 	.word	0x206e6f69
d05e1870:	6c696166 	.word	0x6c696166
d05e1874:	66206465 	.word	0x66206465
d05e1878:	203a726f 	.word	0x203a726f
d05e187c:	000a7325 	.word	0x000a7325
d05e1880:	65646441 	.word	0x65646441
d05e1884:	75662064 	.word	0x75662064
d05e1888:	63206c6c 	.word	0x63206c6c
d05e188c:	72706d6f 	.word	0x72706d6f
d05e1890:	65737365 	.word	0x65737365
d05e1894:	69662064 	.word	0x69662064
d05e1898:	203a656c 	.word	0x203a656c
d05e189c:	28207325 	.word	0x28207325
d05e18a0:	6769726f 	.word	0x6769726f
d05e18a4:	6c25203a 	.word	0x6c25203a
d05e18a8:	63202c75 	.word	0x63202c75
d05e18ac:	3a706d6f 	.word	0x3a706d6f
d05e18b0:	756c2520 	.word	0x756c2520
d05e18b4:	00000a29 	.word	0x00000a29
d05e18b8:	6e756843 	.word	0x6e756843
d05e18bc:	6f63206b 	.word	0x6f63206b
d05e18c0:	6572706d 	.word	0x6572706d
d05e18c4:	6f697373 	.word	0x6f697373
d05e18c8:	6166206e 	.word	0x6166206e
d05e18cc:	64656c69 	.word	0x64656c69
d05e18d0:	726f6620 	.word	0x726f6620
d05e18d4:	20732520 	.word	0x20732520
d05e18d8:	6e756863 	.word	0x6e756863
d05e18dc:	6c25206b 	.word	0x6c25206b
d05e18e0:	00000a75 	.word	0x00000a75
d05e18e4:	65646441 	.word	0x65646441
d05e18e8:	68632064 	.word	0x68632064
d05e18ec:	206b6e75 	.word	0x206b6e75
d05e18f0:	706d6f63 	.word	0x706d6f63
d05e18f4:	73736572 	.word	0x73736572
d05e18f8:	66206465 	.word	0x66206465
d05e18fc:	3a656c69 	.word	0x3a656c69
d05e1900:	20732520 	.word	0x20732520
d05e1904:	69726f28 	.word	0x69726f28
d05e1908:	25203a67 	.word	0x25203a67
d05e190c:	202c756c 	.word	0x202c756c
d05e1910:	6e756863 	.word	0x6e756863
d05e1914:	203a736b 	.word	0x203a736b
d05e1918:	29756c25 	.word	0x29756c25
d05e191c:	0000000a 	.word	0x0000000a
d05e1920:	6c696146 	.word	0x6c696146
d05e1924:	74206465 	.word	0x74206465
d05e1928:	706f206f 	.word	0x706f206f
d05e192c:	61206e65 	.word	0x61206e65
d05e1930:	69686372 	.word	0x69686372
d05e1934:	203a6576 	.word	0x203a6576
d05e1938:	000a7325 	.word	0x000a7325
d05e193c:	67617355 	.word	0x67617355
d05e1940:	200a3a65 	.word	0x200a3a65
d05e1944:	75726320 	.word	0x75726320
d05e1948:	2068636e 	.word	0x2068636e
d05e194c:	5b20612b 	.word	0x5b20612b
d05e1950:	6620742d 	.word	0x6620742d
d05e1954:	7c6c6c75 	.word	0x7c6c6c75
d05e1958:	6e756863 	.word	0x6e756863
d05e195c:	61727c6b 	.word	0x61727c6b
d05e1960:	2b205d77 	.word	0x2b205d77
d05e1964:	656c6966 	.word	0x656c6966
d05e1968:	78652e31 	.word	0x78652e31
d05e196c:	2b5b2074 	.word	0x2b5b2074
d05e1970:	656c6966 	.word	0x656c6966
d05e1974:	78652e32 	.word	0x78652e32
d05e1978:	2e2e2e74 	.word	0x2e2e2e74
d05e197c:	2d205d2e 	.word	0x2d205d2e
d05e1980:	2074756f 	.word	0x2074756f
d05e1984:	68637261 	.word	0x68637261
d05e1988:	2e657669 	.word	0x2e657669
d05e198c:	0a6e7263 	.word	0x0a6e7263
d05e1990:	00000000 	.word	0x00000000
d05e1994:	72632020 	.word	0x72632020
d05e1998:	68636e75 	.word	0x68636e75
d05e199c:	20612d20 	.word	0x20612d20
d05e19a0:	68637261 	.word	0x68637261
d05e19a4:	2e657669 	.word	0x2e657669
d05e19a8:	206e7263 	.word	0x206e7263
d05e19ac:	7261742f 	.word	0x7261742f
d05e19b0:	64746567 	.word	0x64746567
d05e19b4:	0a2f7269 	.word	0x0a2f7269
d05e19b8:	00000000 	.word	0x00000000
d05e19bc:	6c6c7566 	.word	0x6c6c7566
d05e19c0:	00000000 	.word	0x00000000
d05e19c4:	6e756863 	.word	0x6e756863
d05e19c8:	0000006b 	.word	0x0000006b
d05e19cc:	00776172 	.word	0x00776172
d05e19d0:	6e6b6e55 	.word	0x6e6b6e55
d05e19d4:	206e776f 	.word	0x206e776f
d05e19d8:	706d6f63 	.word	0x706d6f63
d05e19dc:	73736572 	.word	0x73736572
d05e19e0:	206e6f69 	.word	0x206e6f69
d05e19e4:	65646f6d 	.word	0x65646f6d
d05e19e8:	73252720 	.word	0x73252720
d05e19ec:	64202c27 	.word	0x64202c27
d05e19f0:	75616665 	.word	0x75616665
d05e19f4:	6e69746c 	.word	0x6e69746c
d05e19f8:	6f742067 	.word	0x6f742067
d05e19fc:	6c756620 	.word	0x6c756620
d05e1a00:	000a2e6c 	.word	0x000a2e6c
d05e1a04:	6f727245 	.word	0x6f727245
d05e1a08:	6d203a72 	.word	0x6d203a72
d05e1a0c:	69737369 	.word	0x69737369
d05e1a10:	6620676e 	.word	0x6620676e
d05e1a14:	73656c69 	.word	0x73656c69
d05e1a18:	20726f20 	.word	0x20726f20
d05e1a1c:	7074756f 	.word	0x7074756f
d05e1a20:	61207475 	.word	0x61207475
d05e1a24:	69686372 	.word	0x69686372
d05e1a28:	000a6576 	.word	0x000a6576
d05e1a2c:	0000612d 	.word	0x0000612d
d05e1a30:	6f727245 	.word	0x6f727245
d05e1a34:	6d203a72 	.word	0x6d203a72
d05e1a38:	69737369 	.word	0x69737369
d05e1a3c:	6120676e 	.word	0x6120676e
d05e1a40:	69686372 	.word	0x69686372
d05e1a44:	66206576 	.word	0x66206576
d05e1a48:	20656c69 	.word	0x20656c69
d05e1a4c:	7420726f 	.word	0x7420726f
d05e1a50:	65677261 	.word	0x65677261
d05e1a54:	69642074 	.word	0x69642074
d05e1a58:	74636572 	.word	0x74636572
d05e1a5c:	0a79726f 	.word	0x0a79726f
d05e1a60:	00000000 	.word	0x00000000
d05e1a64:	61766e49 	.word	0x61766e49
d05e1a68:	2064696c 	.word	0x2064696c
d05e1a6c:	6d6d6f63 	.word	0x6d6d6f63
d05e1a70:	2e646e61 	.word	0x2e646e61
d05e1a74:	65735520 	.word	0x65735520
d05e1a78:	20612b20 	.word	0x20612b20
d05e1a7c:	61206f74 	.word	0x61206f74
d05e1a80:	66206464 	.word	0x66206464
d05e1a84:	73656c69 	.word	0x73656c69
d05e1a88:	612d202c 	.word	0x612d202c
d05e1a8c:	206f7420 	.word	0x206f7420
d05e1a90:	72747865 	.word	0x72747865
d05e1a94:	2e746361 	.word	0x2e746361
d05e1a98:	0000000a 	.word	0x0000000a
d05e1a9c:	612b      	.short	0x612b
d05e1a9e:	00          	.byte	0x00
d05e1a9f:	23          	.byte	0x23
d05e1aa0:	202b302d 	.word	0x202b302d
d05e1aa4:	4c6c6800 	.word	0x4c6c6800
d05e1aa8:	67666500 	.word	0x67666500
d05e1aac:	00474645 	.word	0x00474645
d05e1ab0:	33323130 	.word	0x33323130
d05e1ab4:	37363534 	.word	0x37363534
d05e1ab8:	42413938 	.word	0x42413938
d05e1abc:	46454443 	.word	0x46454443
d05e1ac0:	32313000 	.word	0x32313000
d05e1ac4:	36353433 	.word	0x36353433
d05e1ac8:	61393837 	.word	0x61393837
d05e1acc:	65646362 	.word	0x65646362
d05e1ad0:	Address 0x00000000d05e1ad0 is out of bounds.


Disassembly of section .init:

d05e1ad4 <_init>:
d05e1ad4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e1ad6:	bf00      	nop

Disassembly of section .fini:

d05e1ad8 <_fini>:
d05e1ad8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e1ada:	bf00      	nop
