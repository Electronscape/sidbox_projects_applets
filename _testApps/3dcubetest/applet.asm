
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0010010 <applet_entry>:
d0010010:	f000 bd74 	b.w	d0010afc <main>

d0010014 <memset>:
d0010014:	4402      	add	r2, r0
d0010016:	4603      	mov	r3, r0
d0010018:	4293      	cmp	r3, r2
d001001a:	d100      	bne.n	d001001e <memset+0xa>
d001001c:	4770      	bx	lr
d001001e:	f803 1b01 	strb.w	r1, [r3], #1
d0010022:	e7f9      	b.n	d0010018 <memset+0x4>
d0010024:	0000      	movs	r0, r0
	...

d0010028 <init_clut>:
d0010028:	b4d0      	push	{r4, r6, r7}
d001002a:	4829      	ldr	r0, [pc, #164]	; (d00100d0 <init_clut+0xa8>)
d001002c:	2600      	movs	r6, #0
d001002e:	4c29      	ldr	r4, [pc, #164]	; (d00100d4 <init_clut+0xac>)
d0010030:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d0010034:	4f28      	ldr	r7, [pc, #160]	; (d00100d8 <init_clut+0xb0>)
d0010036:	4a29      	ldr	r2, [pc, #164]	; (d00100dc <init_clut+0xb4>)
d0010038:	f104 0350 	add.w	r3, r4, #80	; 0x50
d001003c:	e9c4 6700 	strd	r6, r7, [r4]
d0010040:	e9c4 0108 	strd	r0, r1, [r4, #32]
d0010044:	a718      	add	r7, pc, #96	; (adr r7, d00100a8 <init_clut+0x80>)
d0010046:	e9d7 6700 	ldrd	r6, r7, [r7]
d001004a:	a119      	add	r1, pc, #100	; (adr r1, d00100b0 <init_clut+0x88>)
d001004c:	e9d1 0100 	ldrd	r0, r1, [r1]
d0010050:	e9c4 6702 	strd	r6, r7, [r4, #8]
d0010054:	e9c4 0104 	strd	r0, r1, [r4, #16]
d0010058:	a717      	add	r7, pc, #92	; (adr r7, d00100b8 <init_clut+0x90>)
d001005a:	e9d7 6700 	ldrd	r6, r7, [r7]
d001005e:	a118      	add	r1, pc, #96	; (adr r1, d00100c0 <init_clut+0x98>)
d0010060:	e9d1 0100 	ldrd	r0, r1, [r1]
d0010064:	e9c4 6706 	strd	r6, r7, [r4, #24]
d0010068:	e9c4 010a 	strd	r0, r1, [r4, #40]	; 0x28
d001006c:	a716      	add	r7, pc, #88	; (adr r7, d00100c8 <init_clut+0xa0>)
d001006e:	e9d7 6700 	ldrd	r6, r7, [r7]
d0010072:	481b      	ldr	r0, [pc, #108]	; (d00100e0 <init_clut+0xb8>)
d0010074:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d0010078:	63a2      	str	r2, [r4, #56]	; 0x38
d001007a:	f504 6280 	add.w	r2, r4, #1024	; 0x400
d001007e:	e9c4 670c 	strd	r6, r7, [r4, #48]	; 0x30
d0010082:	e9c4 0110 	strd	r0, r1, [r4, #64]	; 0x40
d0010086:	f04f 567c 	mov.w	r6, #1056964608	; 0x3f000000
d001008a:	f04f 477f 	mov.w	r7, #4278190080	; 0xff000000
d001008e:	f04f 407f 	mov.w	r0, #4278190080	; 0xff000000
d0010092:	f04f 417f 	mov.w	r1, #4278190080	; 0xff000000
d0010096:	e9c4 6712 	strd	r6, r7, [r4, #72]	; 0x48
d001009a:	e8e3 0102 	strd	r0, r1, [r3], #8
d001009e:	4293      	cmp	r3, r2
d00100a0:	d1fb      	bne.n	d001009a <init_clut+0x72>
d00100a2:	bcd0      	pop	{r4, r6, r7}
d00100a4:	4770      	bx	lr
d00100a6:	bf00      	nop
d00100a8:	5f00ff00 	.word	0x5f00ff00
d00100ac:	5fff0000 	.word	0x5fff0000
d00100b0:	5f800080 	.word	0x5f800080
d00100b4:	5fffff00 	.word	0x5fffff00
d00100b8:	5fff8000 	.word	0x5fff8000
d00100bc:	3f000080 	.word	0x3f000080
d00100c0:	3f400040 	.word	0x3f400040
d00100c4:	3f808000 	.word	0x3f808000
d00100c8:	3f804000 	.word	0x3f804000
d00100cc:	ff3b67a2 	.word	0xff3b67a2
d00100d0:	3f008000 	.word	0x3f008000
d00100d4:	d04c5e98 	.word	0xd04c5e98
d00100d8:	5f0000ff 	.word	0x5f0000ff
d00100dc:	ffafafaf 	.word	0xffafafaf
d00100e0:	ffff0000 	.word	0xffff0000

d00100e4 <generate_subdivided_cube>:
d00100e4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00100e8:	b0bd      	sub	sp, #244	; 0xf4
d00100ea:	2230      	movs	r2, #48	; 0x30
d00100ec:	2100      	movs	r1, #0
d00100ee:	2401      	movs	r4, #1
d00100f0:	a818      	add	r0, sp, #96	; 0x60
d00100f2:	f8df 9394 	ldr.w	r9, [pc, #916]	; d0010488 <generate_subdivided_cube+0x3a4>
d00100f6:	f7ff ff8d 	bl	d0010014 <memset>
d00100fa:	f64f 73ff 	movw	r3, #65535	; 0xffff
d00100fe:	2230      	movs	r2, #48	; 0x30
d0010100:	2100      	movs	r1, #0
d0010102:	a824      	add	r0, sp, #144	; 0x90
d0010104:	f8ad 3064 	strh.w	r3, [sp, #100]	; 0x64
d0010108:	f8ad 3072 	strh.w	r3, [sp, #114]	; 0x72
d001010c:	4625      	mov	r5, r4
d001010e:	f8ad 3080 	strh.w	r3, [sp, #128]	; 0x80
d0010112:	46ca      	mov	sl, r9
d0010114:	f8ad 406c 	strh.w	r4, [sp, #108]	; 0x6c
d0010118:	f8ad 407a 	strh.w	r4, [sp, #122]	; 0x7a
d001011c:	f8ad 4088 	strh.w	r4, [sp, #136]	; 0x88
d0010120:	f7ff ff78 	bl	d0010014 <memset>
d0010124:	2230      	movs	r2, #48	; 0x30
d0010126:	2100      	movs	r1, #0
d0010128:	a830      	add	r0, sp, #192	; 0xc0
d001012a:	f8ad 4092 	strh.w	r4, [sp, #146]	; 0x92
d001012e:	f8ad 4098 	strh.w	r4, [sp, #152]	; 0x98
d0010132:	f8ad 40a0 	strh.w	r4, [sp, #160]	; 0xa0
d0010136:	f8ad 40ac 	strh.w	r4, [sp, #172]	; 0xac
d001013a:	f8ad 40b4 	strh.w	r4, [sp, #180]	; 0xb4
d001013e:	f8ad 40ba 	strh.w	r4, [sp, #186]	; 0xba
d0010142:	f7ff ff67 	bl	d0010014 <memset>
d0010146:	aa18      	add	r2, sp, #96	; 0x60
d0010148:	2100      	movs	r1, #0
d001014a:	48c9      	ldr	r0, [pc, #804]	; (d0010470 <generate_subdivided_cube+0x38c>)
d001014c:	eef7 3a00 	vmov.f32	s7, #112	; 0x3f800000  1.0
d0010150:	9210      	str	r2, [sp, #64]	; 0x40
d0010152:	aa24      	add	r2, sp, #144	; 0x90
d0010154:	4623      	mov	r3, r4
d0010156:	9013      	str	r0, [sp, #76]	; 0x4c
d0010158:	9212      	str	r2, [sp, #72]	; 0x48
d001015a:	aa30      	add	r2, sp, #192	; 0xc0
d001015c:	2019      	movs	r0, #25
d001015e:	f8ad 40c0 	strh.w	r4, [sp, #192]	; 0xc0
d0010162:	9211      	str	r2, [sp, #68]	; 0x44
d0010164:	468e      	mov	lr, r1
d0010166:	f8ad 40ca 	strh.w	r4, [sp, #202]	; 0xca
d001016a:	460a      	mov	r2, r1
d001016c:	f8ad 40d4 	strh.w	r4, [sp, #212]	; 0xd4
d0010170:	468b      	mov	fp, r1
d0010172:	f8ad 40d8 	strh.w	r4, [sp, #216]	; 0xd8
d0010176:	f8ad 40e2 	strh.w	r4, [sp, #226]	; 0xe2
d001017a:	f8ad 40ec 	strh.w	r4, [sp, #236]	; 0xec
d001017e:	ed9f 3abd 	vldr	s6, [pc, #756]	; d0010474 <generate_subdivided_cube+0x390>
d0010182:	ed9f 5abd 	vldr	s10, [pc, #756]	; d0010478 <generate_subdivided_cube+0x394>
d0010186:	ed9f 4abd 	vldr	s8, [pc, #756]	; d001047c <generate_subdivided_cube+0x398>
d001018a:	9c10      	ldr	r4, [sp, #64]	; 0x40
d001018c:	9002      	str	r0, [sp, #8]
d001018e:	fa1f f08e 	uxth.w	r0, lr
d0010192:	f8b4 9000 	ldrh.w	r9, [r4]
d0010196:	b29e      	uxth	r6, r3
d0010198:	f8b4 8002 	ldrh.w	r8, [r4, #2]
d001019c:	fa1f f78b 	uxth.w	r7, fp
d00101a0:	9001      	str	r0, [sp, #4]
d00101a2:	1983      	adds	r3, r0, r6
d00101a4:	fa1f fb82 	uxth.w	fp, r2
d00101a8:	9a02      	ldr	r2, [sp, #8]
d00101aa:	ebc6 3cc6 	rsb	ip, r6, r6, lsl #15
d00101ae:	9300      	str	r3, [sp, #0]
d00101b0:	b28b      	uxth	r3, r1
d00101b2:	ebc0 31c0 	rsb	r1, r0, r0, lsl #15
d00101b6:	f8b4 e004 	ldrh.w	lr, [r4, #4]
d00101ba:	f1a2 0419 	sub.w	r4, r2, #25
d00101be:	eb08 0888 	add.w	r8, r8, r8, lsl #2
d00101c2:	4608      	mov	r0, r1
d00101c4:	eb0e 0e8e 	add.w	lr, lr, lr, lsl #2
d00101c8:	9414      	str	r4, [sp, #80]	; 0x50
d00101ca:	eb08 0888 	add.w	r8, r8, r8, lsl #2
d00101ce:	9415      	str	r4, [sp, #84]	; 0x54
d00101d0:	ebc6 0440 	rsb	r4, r6, r0, lsl #1
d00101d4:	9800      	ldr	r0, [sp, #0]
d00101d6:	eb0e 0e8e 	add.w	lr, lr, lr, lsl #2
d00101da:	9405      	str	r4, [sp, #20]
d00101dc:	eb0b 0103 	add.w	r1, fp, r3
d00101e0:	ebc0 2440 	rsb	r4, r0, r0, lsl #9
d00101e4:	f8cd e010 	str.w	lr, [sp, #16]
d00101e8:	f8cd 800c 	str.w	r8, [sp, #12]
d00101ec:	ebcb 38cb 	rsb	r8, fp, fp, lsl #15
d00101f0:	9406      	str	r4, [sp, #24]
d00101f2:	b2ad      	uxth	r5, r5
d00101f4:	9c01      	ldr	r4, [sp, #4]
d00101f6:	ebc3 0848 	rsb	r8, r3, r8, lsl #1
d00101fa:	19ea      	adds	r2, r5, r7
d00101fc:	9109      	str	r1, [sp, #36]	; 0x24
d00101fe:	ebc4 0c4c 	rsb	ip, r4, ip, lsl #1
d0010202:	9c05      	ldr	r4, [sp, #20]
d0010204:	9208      	str	r2, [sp, #32]
d0010206:	ebc7 32c7 	rsb	r2, r7, r7, lsl #15
d001020a:	eb04 0e84 	add.w	lr, r4, r4, lsl #2
d001020e:	9c06      	ldr	r4, [sp, #24]
d0010210:	ebc5 0242 	rsb	r2, r5, r2, lsl #1
d0010214:	eb00 0484 	add.w	r4, r0, r4, lsl #2
d0010218:	f8cd e014 	str.w	lr, [sp, #20]
d001021c:	ebc3 3ec3 	rsb	lr, r3, r3, lsl #15
d0010220:	9801      	ldr	r0, [sp, #4]
d0010222:	9407      	str	r4, [sp, #28]
d0010224:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0010228:	9c03      	ldr	r4, [sp, #12]
d001022a:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d001022e:	9306      	str	r3, [sp, #24]
d0010230:	eb09 0989 	add.w	r9, r9, r9, lsl #2
d0010234:	00a4      	lsls	r4, r4, #2
d0010236:	9b05      	ldr	r3, [sp, #20]
d0010238:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d001023c:	9401      	str	r4, [sp, #4]
d001023e:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0010242:	9c04      	ldr	r4, [sp, #16]
d0010244:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d0010248:	9304      	str	r3, [sp, #16]
d001024a:	ebc5 31c5 	rsb	r1, r5, r5, lsl #15
d001024e:	00a4      	lsls	r4, r4, #2
d0010250:	9b07      	ldr	r3, [sp, #28]
d0010252:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d0010256:	9403      	str	r4, [sp, #12]
d0010258:	eb09 0989 	add.w	r9, r9, r9, lsl #2
d001025c:	9c00      	ldr	r4, [sp, #0]
d001025e:	eb05 0585 	add.w	r5, r5, r5, lsl #2
d0010262:	ebc7 0141 	rsb	r1, r7, r1, lsl #1
d0010266:	ebc4 03c3 	rsb	r3, r4, r3, lsl #3
d001026a:	9c08      	ldr	r4, [sp, #32]
d001026c:	eb05 0585 	add.w	r5, r5, r5, lsl #2
d0010270:	9307      	str	r3, [sp, #28]
d0010272:	ebc4 2344 	rsb	r3, r4, r4, lsl #9
d0010276:	ea4f 0989 	mov.w	r9, r9, lsl #2
d001027a:	9300      	str	r3, [sp, #0]
d001027c:	eb06 0686 	add.w	r6, r6, r6, lsl #2
d0010280:	9b00      	ldr	r3, [sp, #0]
d0010282:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d0010286:	900a      	str	r0, [sp, #40]	; 0x28
d0010288:	fa1f f989 	uxth.w	r9, r9
d001028c:	eb04 0383 	add.w	r3, r4, r3, lsl #2
d0010290:	950b      	str	r5, [sp, #44]	; 0x2c
d0010292:	eb06 0686 	add.w	r6, r6, r6, lsl #2
d0010296:	f8bd 500c 	ldrh.w	r5, [sp, #12]
d001029a:	ebc4 00c3 	rsb	r0, r4, r3, lsl #3
d001029e:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00102a0:	9209      	str	r2, [sp, #36]	; 0x24
d00102a2:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d00102a6:	9008      	str	r0, [sp, #32]
d00102a8:	ebc3 2043 	rsb	r0, r3, r3, lsl #9
d00102ac:	9c0a      	ldr	r4, [sp, #40]	; 0x28
d00102ae:	0076      	lsls	r6, r6, #1
d00102b0:	eb03 0280 	add.w	r2, r3, r0, lsl #2
d00102b4:	9806      	ldr	r0, [sp, #24]
d00102b6:	9500      	str	r5, [sp, #0]
d00102b8:	eb0c 0c8c 	add.w	ip, ip, ip, lsl #2
d00102bc:	ebc3 02c2 	rsb	r2, r3, r2, lsl #3
d00102c0:	9105      	str	r1, [sp, #20]
d00102c2:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d00102c6:	9804      	ldr	r0, [sp, #16]
d00102c8:	f8bd 1004 	ldrh.w	r1, [sp, #4]
d00102cc:	eb0c 0c8c 	add.w	ip, ip, ip, lsl #2
d00102d0:	eb09 0540 	add.w	r5, r9, r0, lsl #1
d00102d4:	9807      	ldr	r0, [sp, #28]
d00102d6:	9601      	str	r6, [sp, #4]
d00102d8:	0066      	lsls	r6, r4, #1
d00102da:	eb09 0080 	add.w	r0, r9, r0, lsl #2
d00102de:	9c05      	ldr	r4, [sp, #20]
d00102e0:	eb09 094c 	add.w	r9, r9, ip, lsl #1
d00102e4:	9306      	str	r3, [sp, #24]
d00102e6:	eb01 0c44 	add.w	ip, r1, r4, lsl #1
d00102ea:	9c08      	ldr	r4, [sp, #32]
d00102ec:	b280      	uxth	r0, r0
d00102ee:	9b00      	ldr	r3, [sp, #0]
d00102f0:	eb01 0484 	add.w	r4, r1, r4, lsl #2
d00102f4:	9503      	str	r5, [sp, #12]
d00102f6:	9007      	str	r0, [sp, #28]
d00102f8:	eb08 0888 	add.w	r8, r8, r8, lsl #2
d00102fc:	fa1f f089 	uxth.w	r0, r9
d0010300:	9404      	str	r4, [sp, #16]
d0010302:	ebcb 0e4e 	rsb	lr, fp, lr, lsl #1
d0010306:	9c09      	ldr	r4, [sp, #36]	; 0x24
d0010308:	eb08 0888 	add.w	r8, r8, r8, lsl #2
d001030c:	9005      	str	r0, [sp, #20]
d001030e:	eb07 0787 	add.w	r7, r7, r7, lsl #2
d0010312:	f8bd 0004 	ldrh.w	r0, [sp, #4]
d0010316:	eb03 0548 	add.w	r5, r3, r8, lsl #1
d001031a:	eb01 0144 	add.w	r1, r1, r4, lsl #1
d001031e:	900e      	str	r0, [sp, #56]	; 0x38
d0010320:	eb0e 0e8e 	add.w	lr, lr, lr, lsl #2
d0010324:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
d0010326:	b2b0      	uxth	r0, r6
d0010328:	46a8      	mov	r8, r5
d001032a:	eb07 0787 	add.w	r7, r7, r7, lsl #2
d001032e:	f8bd 500c 	ldrh.w	r5, [sp, #12]
d0010332:	b289      	uxth	r1, r1
d0010334:	900f      	str	r0, [sp, #60]	; 0x3c
d0010336:	eb0b 0b8b 	add.w	fp, fp, fp, lsl #2
d001033a:	950d      	str	r5, [sp, #52]	; 0x34
d001033c:	fa1f f08c 	uxth.w	r0, ip
d0010340:	eb0e 0e8e 	add.w	lr, lr, lr, lsl #2
d0010344:	007f      	lsls	r7, r7, #1
d0010346:	900c      	str	r0, [sp, #48]	; 0x30
d0010348:	0064      	lsls	r4, r4, #1
d001034a:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d001034e:	eb03 0e4e 	add.w	lr, r3, lr, lsl #1
d0010352:	9b06      	ldr	r3, [sp, #24]
d0010354:	eb0b 0b8b 	add.w	fp, fp, fp, lsl #2
d0010358:	f8bd 0010 	ldrh.w	r0, [sp, #16]
d001035c:	9104      	str	r1, [sp, #16]
d001035e:	b2b9      	uxth	r1, r7
d0010360:	b292      	uxth	r2, r2
d0010362:	9009      	str	r0, [sp, #36]	; 0x24
d0010364:	005b      	lsls	r3, r3, #1
d0010366:	910a      	str	r1, [sp, #40]	; 0x28
d0010368:	ea4f 0b4b 	mov.w	fp, fp, lsl #1
d001036c:	9206      	str	r2, [sp, #24]
d001036e:	b2a1      	uxth	r1, r4
d0010370:	9d09      	ldr	r5, [sp, #36]	; 0x24
d0010372:	fa1f f088 	uxth.w	r0, r8
d0010376:	9c15      	ldr	r4, [sp, #84]	; 0x54
d0010378:	fa1f f28e 	uxth.w	r2, lr
d001037c:	f8cd a054 	str.w	sl, [sp, #84]	; 0x54
d0010380:	b29b      	uxth	r3, r3
d0010382:	468a      	mov	sl, r1
d0010384:	fa1f fb8b 	uxth.w	fp, fp
d0010388:	900b      	str	r0, [sp, #44]	; 0x2c
d001038a:	9203      	str	r2, [sp, #12]
d001038c:	9308      	str	r3, [sp, #32]
d001038e:	4623      	mov	r3, r4
d0010390:	4a3b      	ldr	r2, [pc, #236]	; (d0010480 <generate_subdivided_cube+0x39c>)
d0010392:	f8dd 903c 	ldr.w	r9, [sp, #60]	; 0x3c
d0010396:	eb02 04c4 	add.w	r4, r2, r4, lsl #3
d001039a:	1d5a      	adds	r2, r3, #5
d001039c:	e9dd 8c03 	ldrd	r8, ip, [sp, #12]
d00103a0:	9201      	str	r2, [sp, #4]
d00103a2:	9a07      	ldr	r2, [sp, #28]
d00103a4:	e9dd 7605 	ldrd	r7, r6, [sp, #20]
d00103a8:	fa0f f18c 	sxth.w	r1, ip
d00103ac:	4834      	ldr	r0, [pc, #208]	; (d0010480 <generate_subdivided_cube+0x39c>)
d00103ae:	fa0f fe85 	sxth.w	lr, r5
d00103b2:	44d4      	add	ip, sl
d00103b4:	ee07 1a90 	vmov	s15, r1
d00103b8:	2100      	movs	r1, #0
d00103ba:	ee06 ea90 	vmov	s13, lr
d00103be:	4455      	add	r5, sl
d00103c0:	f840 1033 	str.w	r1, [r0, r3, lsl #3]
d00103c4:	b239      	sxth	r1, r7
d00103c6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00103ca:	eb00 00c3 	add.w	r0, r0, r3, lsl #3
d00103ce:	ee07 1a10 	vmov	s14, r1
d00103d2:	eb02 0109 	add.w	r1, r2, r9
d00103d6:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d00103da:	b212      	sxth	r2, r2
d00103dc:	ee67 7a85 	vmul.f32	s15, s15, s10
d00103e0:	9100      	str	r1, [sp, #0]
d00103e2:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00103e6:	fa0f f188 	sxth.w	r1, r8
d00103ea:	ee26 6a05 	vmul.f32	s12, s12, s10
d00103ee:	444f      	add	r7, r9
d00103f0:	ee67 6aa7 	vmul.f32	s13, s15, s15
d00103f4:	ee05 1a90 	vmov	s11, r1
d00103f8:	ee27 7a05 	vmul.f32	s14, s14, s10
d00103fc:	ee07 2a90 	vmov	s15, r2
d0010400:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d0010404:	2100      	movs	r1, #0
d0010406:	ee66 4a06 	vmul.f32	s9, s12, s12
d001040a:	44d8      	add	r8, fp
d001040c:	eee7 6a07 	vfma.f32	s13, s14, s14
d0010410:	6041      	str	r1, [r0, #4]
d0010412:	ee65 5a85 	vmul.f32	s11, s11, s10
d0010416:	b230      	sxth	r0, r6
d0010418:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d001041c:	f8a4 e002 	strh.w	lr, [r4, #2]
d0010420:	ee07 0a90 	vmov	s15, r0
d0010424:	ea4f 0ec3 	mov.w	lr, r3, lsl #3
d0010428:	8022      	strh	r2, [r4, #0]
d001042a:	445e      	add	r6, fp
d001042c:	ee27 7a05 	vmul.f32	s14, s14, s10
d0010430:	4a14      	ldr	r2, [pc, #80]	; (d0010484 <generate_subdivided_cube+0x3a0>)
d0010432:	eee5 6aa5 	vfma.f32	s13, s11, s11
d0010436:	80a0      	strh	r0, [r4, #4]
d0010438:	eef0 5a64 	vmov.f32	s11, s9
d001043c:	4496      	add	lr, r2
d001043e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0010442:	3301      	adds	r3, #1
d0010444:	f8bd 2000 	ldrh.w	r2, [sp]
d0010448:	3408      	adds	r4, #8
d001044a:	eee7 5a07 	vfma.f32	s11, s14, s14
d001044e:	b2ad      	uxth	r5, r5
d0010450:	ee67 7a85 	vmul.f32	s15, s15, s10
d0010454:	b2b6      	uxth	r6, r6
d0010456:	b2bf      	uxth	r7, r7
d0010458:	fa1f fc8c 	uxth.w	ip, ip
d001045c:	fa1f f888 	uxth.w	r8, r8
d0010460:	eee7 5aa7 	vfma.f32	s11, s15, s15
d0010464:	eef5 5a40 	vcmp.f32	s11, #0.0
d0010468:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d001046c:	d016      	beq.n	d001049c <generate_subdivided_cube+0x3b8>
d001046e:	e00d      	b.n	d001048c <generate_subdivided_cube+0x3a8>
d0010470:	d0011144 	.word	0xd0011144
d0010474:	3fddb3d7 	.word	0x3fddb3d7
d0010478:	3c23d70a 	.word	0x3c23d70a
d001047c:	42c80000 	.word	0x42c80000
d0010480:	d04c70a8 	.word	0xd04c70a8
d0010484:	d04c6bf8 	.word	0xd04c6bf8
d0010488:	d04c7558 	.word	0xd04c7558
d001048c:	eec3 5a83 	vdiv.f32	s11, s7, s6
d0010490:	ee27 7a25 	vmul.f32	s14, s14, s11
d0010494:	ee26 6a25 	vmul.f32	s12, s12, s11
d0010498:	ee67 7aa5 	vmul.f32	s15, s15, s11
d001049c:	ee27 7a04 	vmul.f32	s14, s14, s8
d00104a0:	f04f 0100 	mov.w	r1, #0
d00104a4:	ee26 6a04 	vmul.f32	s12, s12, s8
d00104a8:	ee67 7a84 	vmul.f32	s15, s15, s8
d00104ac:	f8ad 105e 	strh.w	r1, [sp, #94]	; 0x5e
d00104b0:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d00104b4:	eebd 6ac6 	vcvt.s32.f32	s12, s12
d00104b8:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00104bc:	ee17 1a10 	vmov	r1, s14
d00104c0:	f8ad 1058 	strh.w	r1, [sp, #88]	; 0x58
d00104c4:	ee16 1a10 	vmov	r1, s12
d00104c8:	f8ad 105a 	strh.w	r1, [sp, #90]	; 0x5a
d00104cc:	ee17 1a90 	vmov	r1, s15
d00104d0:	f8ad 105c 	strh.w	r1, [sp, #92]	; 0x5c
d00104d4:	a916      	add	r1, sp, #88	; 0x58
d00104d6:	c903      	ldmia	r1, {r0, r1}
d00104d8:	e88e 0003 	stmia.w	lr, {r0, r1}
d00104dc:	9901      	ldr	r1, [sp, #4]
d00104de:	428b      	cmp	r3, r1
d00104e0:	d002      	beq.n	d00104e8 <generate_subdivided_cube+0x404>
d00104e2:	eeb1 3ae6 	vsqrt.f32	s6, s13
d00104e6:	e75f      	b.n	d00103a8 <generate_subdivided_cube+0x2c4>
d00104e8:	9a07      	ldr	r2, [sp, #28]
d00104ea:	9c08      	ldr	r4, [sp, #32]
d00104ec:	4616      	mov	r6, r2
d00104ee:	9a06      	ldr	r2, [sp, #24]
d00104f0:	9f0e      	ldr	r7, [sp, #56]	; 0x38
d00104f2:	4615      	mov	r5, r2
d00104f4:	9a05      	ldr	r2, [sp, #20]
d00104f6:	443e      	add	r6, r7
d00104f8:	4610      	mov	r0, r2
d00104fa:	9a04      	ldr	r2, [sp, #16]
d00104fc:	4425      	add	r5, r4
d00104fe:	b2b6      	uxth	r6, r6
d0010500:	4611      	mov	r1, r2
d0010502:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d0010504:	4438      	add	r0, r7
d0010506:	9607      	str	r6, [sp, #28]
d0010508:	4411      	add	r1, r2
d001050a:	9a03      	ldr	r2, [sp, #12]
d001050c:	b2ae      	uxth	r6, r5
d001050e:	4422      	add	r2, r4
d0010510:	b289      	uxth	r1, r1
d0010512:	b280      	uxth	r0, r0
d0010514:	461c      	mov	r4, r3
d0010516:	9104      	str	r1, [sp, #16]
d0010518:	b291      	uxth	r1, r2
d001051a:	9606      	str	r6, [sp, #24]
d001051c:	9103      	str	r1, [sp, #12]
d001051e:	9902      	ldr	r1, [sp, #8]
d0010520:	9005      	str	r0, [sp, #20]
d0010522:	428b      	cmp	r3, r1
d0010524:	d034      	beq.n	d0010590 <generate_subdivided_cube+0x4ac>
d0010526:	9e0c      	ldr	r6, [sp, #48]	; 0x30
d0010528:	9d08      	ldr	r5, [sp, #32]
d001052a:	b231      	sxth	r1, r6
d001052c:	4632      	mov	r2, r6
d001052e:	ee07 1a90 	vmov	s15, r1
d0010532:	e9dd 1309 	ldrd	r1, r3, [sp, #36]	; 0x24
d0010536:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d001053a:	4419      	add	r1, r3
d001053c:	441a      	add	r2, r3
d001053e:	9b0d      	ldr	r3, [sp, #52]	; 0x34
d0010540:	4608      	mov	r0, r1
d0010542:	4611      	mov	r1, r2
d0010544:	b21a      	sxth	r2, r3
d0010546:	443b      	add	r3, r7
d0010548:	ee67 7a85 	vmul.f32	s15, s15, s10
d001054c:	b280      	uxth	r0, r0
d001054e:	ee06 2a90 	vmov	s13, r2
d0010552:	461a      	mov	r2, r3
d0010554:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d0010556:	b289      	uxth	r1, r1
d0010558:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d001055c:	b292      	uxth	r2, r2
d001055e:	b21e      	sxth	r6, r3
d0010560:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0010564:	442b      	add	r3, r5
d0010566:	9009      	str	r0, [sp, #36]	; 0x24
d0010568:	ee66 6a85 	vmul.f32	s13, s13, s10
d001056c:	ee07 6a10 	vmov	s14, r6
d0010570:	b29b      	uxth	r3, r3
d0010572:	4605      	mov	r5, r0
d0010574:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0010578:	910c      	str	r1, [sp, #48]	; 0x30
d001057a:	eee6 7aa6 	vfma.f32	s15, s13, s13
d001057e:	920d      	str	r2, [sp, #52]	; 0x34
d0010580:	930b      	str	r3, [sp, #44]	; 0x2c
d0010582:	ee27 7a05 	vmul.f32	s14, s14, s10
d0010586:	eee7 7a07 	vfma.f32	s15, s14, s14
d001058a:	eeb1 3ae7 	vsqrt.f32	s6, s15
d001058e:	e6fe      	b.n	d001038e <generate_subdivided_cube+0x2aa>
d0010590:	9b13      	ldr	r3, [sp, #76]	; 0x4c
d0010592:	f1a1 0c13 	sub.w	ip, r1, #19
d0010596:	f8dd a054 	ldr.w	sl, [sp, #84]	; 0x54
d001059a:	f1a1 0412 	sub.w	r4, r1, #18
d001059e:	f813 2b01 	ldrb.w	r2, [r3], #1
d00105a2:	f1a1 0718 	sub.w	r7, r1, #24
d00105a6:	f1a1 0e14 	sub.w	lr, r1, #20
d00105aa:	f1a1 0617 	sub.w	r6, r1, #23
d00105ae:	9313      	str	r3, [sp, #76]	; 0x4c
d00105b0:	1d93      	adds	r3, r2, #6
d00105b2:	f1a1 0516 	sub.w	r5, r1, #22
d00105b6:	4608      	mov	r0, r1
d00105b8:	fa5f fb83 	uxtb.w	fp, r3
d00105bc:	9b14      	ldr	r3, [sp, #80]	; 0x50
d00105be:	3911      	subs	r1, #17
d00105c0:	3810      	subs	r0, #16
d00105c2:	f8ca 3000 	str.w	r3, [sl]
d00105c6:	f8ca 3010 	str.w	r3, [sl, #16]
d00105ca:	9b02      	ldr	r3, [sp, #8]
d00105cc:	f8ca 7004 	str.w	r7, [sl, #4]
d00105d0:	f1a3 080f 	sub.w	r8, r3, #15
d00105d4:	f1a3 0915 	sub.w	r9, r3, #21
d00105d8:	f8ca 7020 	str.w	r7, [sl, #32]
d00105dc:	f8ca 7030 	str.w	r7, [sl, #48]	; 0x30
d00105e0:	f1a3 070e 	sub.w	r7, r3, #14
d00105e4:	f8ca e018 	str.w	lr, [sl, #24]
d00105e8:	f8ca c008 	str.w	ip, [sl, #8]
d00105ec:	f8ca c014 	str.w	ip, [sl, #20]
d00105f0:	f8ca c038 	str.w	ip, [sl, #56]	; 0x38
d00105f4:	f8ca 6024 	str.w	r6, [sl, #36]	; 0x24
d00105f8:	f8ca 6040 	str.w	r6, [sl, #64]	; 0x40
d00105fc:	f8ca 6050 	str.w	r6, [sl, #80]	; 0x50
d0010600:	f1a3 060d 	sub.w	r6, r3, #13
d0010604:	f8ca 4028 	str.w	r4, [sl, #40]	; 0x28
d0010608:	f8ca 4034 	str.w	r4, [sl, #52]	; 0x34
d001060c:	f8ca 4058 	str.w	r4, [sl, #88]	; 0x58
d0010610:	f8ca 5044 	str.w	r5, [sl, #68]	; 0x44
d0010614:	f8ca 5060 	str.w	r5, [sl, #96]	; 0x60
d0010618:	f8ca 5070 	str.w	r5, [sl, #112]	; 0x70
d001061c:	f1a3 050c 	sub.w	r5, r3, #12
d0010620:	f8ca 1048 	str.w	r1, [sl, #72]	; 0x48
d0010624:	f88a 200c 	strb.w	r2, [sl, #12]
d0010628:	f88a 201c 	strb.w	r2, [sl, #28]
d001062c:	f88a 204c 	strb.w	r2, [sl, #76]	; 0x4c
d0010630:	f88a 205c 	strb.w	r2, [sl, #92]	; 0x5c
d0010634:	f88a b02c 	strb.w	fp, [sl, #44]	; 0x2c
d0010638:	f88a b03c 	strb.w	fp, [sl, #60]	; 0x3c
d001063c:	f88a b06c 	strb.w	fp, [sl, #108]	; 0x6c
d0010640:	f8ca 1054 	str.w	r1, [sl, #84]	; 0x54
d0010644:	f8ca e090 	str.w	lr, [sl, #144]	; 0x90
d0010648:	f8ca 1078 	str.w	r1, [sl, #120]	; 0x78
d001064c:	f8ca 0068 	str.w	r0, [sl, #104]	; 0x68
d0010650:	f8ca 0074 	str.w	r0, [sl, #116]	; 0x74
d0010654:	f8ca 9064 	str.w	r9, [sl, #100]	; 0x64
d0010658:	f1a3 0906 	sub.w	r9, r3, #6
d001065c:	f8ca c0b0 	str.w	ip, [sl, #176]	; 0xb0
d0010660:	f8ca 40d0 	str.w	r4, [sl, #208]	; 0xd0
d0010664:	f8ca 10f0 	str.w	r1, [sl, #240]	; 0xf0
d0010668:	f8ca 8098 	str.w	r8, [sl, #152]	; 0x98
d001066c:	f8ca 7088 	str.w	r7, [sl, #136]	; 0x88
d0010670:	f8ca 7094 	str.w	r7, [sl, #148]	; 0x94
d0010674:	f8ca 70b8 	str.w	r7, [sl, #184]	; 0xb8
d0010678:	f8ca 60a8 	str.w	r6, [sl, #168]	; 0xa8
d001067c:	f8ca 60b4 	str.w	r6, [sl, #180]	; 0xb4
d0010680:	f8ca 60d8 	str.w	r6, [sl, #216]	; 0xd8
d0010684:	f88a b07c 	strb.w	fp, [sl, #124]	; 0x7c
d0010688:	f88a b08c 	strb.w	fp, [sl, #140]	; 0x8c
d001068c:	f88a b09c 	strb.w	fp, [sl, #156]	; 0x9c
d0010690:	f88a b0cc 	strb.w	fp, [sl, #204]	; 0xcc
d0010694:	f88a b0dc 	strb.w	fp, [sl, #220]	; 0xdc
d0010698:	f88a 20ac 	strb.w	r2, [sl, #172]	; 0xac
d001069c:	f88a 20bc 	strb.w	r2, [sl, #188]	; 0xbc
d00106a0:	f88a 20ec 	strb.w	r2, [sl, #236]	; 0xec
d00106a4:	f88a 20fc 	strb.w	r2, [sl, #252]	; 0xfc
d00106a8:	e9ca ec20 	strd	lr, ip, [sl, #128]	; 0x80
d00106ac:	f1a3 0e0b 	sub.w	lr, r3, #11
d00106b0:	e9ca c428 	strd	ip, r4, [sl, #160]	; 0xa0
d00106b4:	e9ca 4130 	strd	r4, r1, [sl, #192]	; 0xc0
d00106b8:	f1a3 0c0a 	sub.w	ip, r3, #10
d00106bc:	f1a3 0409 	sub.w	r4, r3, #9
d00106c0:	e9ca 1038 	strd	r1, r0, [sl, #224]	; 0xe0
d00106c4:	f8ca 50c8 	str.w	r5, [sl, #200]	; 0xc8
d00106c8:	f1a3 0008 	sub.w	r0, r3, #8
d00106cc:	1fd9      	subs	r1, r3, #7
d00106ce:	f8ca 50d4 	str.w	r5, [sl, #212]	; 0xd4
d00106d2:	f8ca 50f8 	str.w	r5, [sl, #248]	; 0xf8
d00106d6:	f8ca e0e8 	str.w	lr, [sl, #232]	; 0xe8
d00106da:	f8ca e0f4 	str.w	lr, [sl, #244]	; 0xf4
d00106de:	f8ca 8100 	str.w	r8, [sl, #256]	; 0x100
d00106e2:	f8ca 7104 	str.w	r7, [sl, #260]	; 0x104
d00106e6:	f8ca 8110 	str.w	r8, [sl, #272]	; 0x110
d00106ea:	f103 38ff 	add.w	r8, r3, #4294967295	; 0xffffffff
d00106ee:	f8ca 7130 	str.w	r7, [sl, #304]	; 0x130
d00106f2:	f8ca 6150 	str.w	r6, [sl, #336]	; 0x150
d00106f6:	f8ca 5170 	str.w	r5, [sl, #368]	; 0x170
d00106fa:	f88a b12c 	strb.w	fp, [sl, #300]	; 0x12c
d00106fe:	f88a b13c 	strb.w	fp, [sl, #316]	; 0x13c
d0010702:	f88a b16c 	strb.w	fp, [sl, #364]	; 0x16c
d0010706:	f88a b17c 	strb.w	fp, [sl, #380]	; 0x17c
d001070a:	f88a 210c 	strb.w	r2, [sl, #268]	; 0x10c
d001070e:	f88a 211c 	strb.w	r2, [sl, #284]	; 0x11c
d0010712:	f88a 214c 	strb.w	r2, [sl, #332]	; 0x14c
d0010716:	f88a 215c 	strb.w	r2, [sl, #348]	; 0x15c
d001071a:	f8ca c118 	str.w	ip, [sl, #280]	; 0x118
d001071e:	f8ca c180 	str.w	ip, [sl, #384]	; 0x180
d0010722:	f8ca 4108 	str.w	r4, [sl, #264]	; 0x108
d0010726:	f8ca 4114 	str.w	r4, [sl, #276]	; 0x114
d001072a:	f8ca 4138 	str.w	r4, [sl, #312]	; 0x138
d001072e:	f8ca 0128 	str.w	r0, [sl, #296]	; 0x128
d0010732:	f8ca 0134 	str.w	r0, [sl, #308]	; 0x134
d0010736:	e9ca 7648 	strd	r7, r6, [sl, #288]	; 0x120
d001073a:	e9ca 6550 	strd	r6, r5, [sl, #320]	; 0x140
d001073e:	1f1f      	subs	r7, r3, #4
d0010740:	1f5e      	subs	r6, r3, #5
d0010742:	e9ca 5e58 	strd	r5, lr, [sl, #352]	; 0x160
d0010746:	f1a3 0e03 	sub.w	lr, r3, #3
d001074a:	1e9d      	subs	r5, r3, #2
d001074c:	3319      	adds	r3, #25
d001074e:	2baf      	cmp	r3, #175	; 0xaf
d0010750:	9302      	str	r3, [sp, #8]
d0010752:	f8ca 0158 	str.w	r0, [sl, #344]	; 0x158
d0010756:	f8ca 1148 	str.w	r1, [sl, #328]	; 0x148
d001075a:	f8ca 1154 	str.w	r1, [sl, #340]	; 0x154
d001075e:	f8ca 1178 	str.w	r1, [sl, #376]	; 0x178
d0010762:	f8ca 9168 	str.w	r9, [sl, #360]	; 0x168
d0010766:	f8ca 9174 	str.w	r9, [sl, #372]	; 0x174
d001076a:	f8ca 4184 	str.w	r4, [sl, #388]	; 0x184
d001076e:	f88a b18c 	strb.w	fp, [sl, #396]	; 0x18c
d0010772:	f88a b19c 	strb.w	fp, [sl, #412]	; 0x19c
d0010776:	f88a b1cc 	strb.w	fp, [sl, #460]	; 0x1cc
d001077a:	f88a b1dc 	strb.w	fp, [sl, #476]	; 0x1dc
d001077e:	f8ca c190 	str.w	ip, [sl, #400]	; 0x190
d0010782:	f88a 21ac 	strb.w	r2, [sl, #428]	; 0x1ac
d0010786:	f8ca 41b0 	str.w	r4, [sl, #432]	; 0x1b0
d001078a:	f88a 21bc 	strb.w	r2, [sl, #444]	; 0x1bc
d001078e:	f8ca 01d0 	str.w	r0, [sl, #464]	; 0x1d0
d0010792:	f88a 21ec 	strb.w	r2, [sl, #492]	; 0x1ec
d0010796:	f8ca 11f0 	str.w	r1, [sl, #496]	; 0x1f0
d001079a:	f88a 21fc 	strb.w	r2, [sl, #508]	; 0x1fc
d001079e:	f8ca 7188 	str.w	r7, [sl, #392]	; 0x188
d00107a2:	f8ca 7194 	str.w	r7, [sl, #404]	; 0x194
d00107a6:	f8ca 71b8 	str.w	r7, [sl, #440]	; 0x1b8
d00107aa:	f8ca 6198 	str.w	r6, [sl, #408]	; 0x198
d00107ae:	f8ca e1a8 	str.w	lr, [sl, #424]	; 0x1a8
d00107b2:	f8ca e1b4 	str.w	lr, [sl, #436]	; 0x1b4
d00107b6:	f8ca e1d8 	str.w	lr, [sl, #472]	; 0x1d8
d00107ba:	f8ca 51c8 	str.w	r5, [sl, #456]	; 0x1c8
d00107be:	e9ca 4068 	strd	r4, r0, [sl, #416]	; 0x1a0
d00107c2:	e9ca 0170 	strd	r0, r1, [sl, #448]	; 0x1c0
d00107c6:	e9ca 1978 	strd	r1, r9, [sl, #480]	; 0x1e0
d00107ca:	f8ca 51d4 	str.w	r5, [sl, #468]	; 0x1d4
d00107ce:	f50a 7a00 	add.w	sl, sl, #512	; 0x200
d00107d2:	f84a 5c08 	str.w	r5, [sl, #-8]
d00107d6:	f84a 8c18 	str.w	r8, [sl, #-24]
d00107da:	f84a 8c0c 	str.w	r8, [sl, #-12]
d00107de:	d069      	beq.n	d00108b4 <generate_subdivided_cube+0x7d0>
d00107e0:	9a12      	ldr	r2, [sp, #72]	; 0x48
d00107e2:	9911      	ldr	r1, [sp, #68]	; 0x44
d00107e4:	f9b2 500a 	ldrsh.w	r5, [r2, #10]
d00107e8:	f9b1 b00a 	ldrsh.w	fp, [r1, #10]
d00107ec:	9f10      	ldr	r7, [sp, #64]	; 0x40
d00107ee:	eb05 060b 	add.w	r6, r5, fp
d00107f2:	f9b1 3008 	ldrsh.w	r3, [r1, #8]
d00107f6:	f9b2 e008 	ldrsh.w	lr, [r2, #8]
d00107fa:	ebc6 2446 	rsb	r4, r6, r6, lsl #9
d00107fe:	8978      	ldrh	r0, [r7, #10]
d0010800:	eb03 0c0e 	add.w	ip, r3, lr
d0010804:	893f      	ldrh	r7, [r7, #8]
d0010806:	eb06 0484 	add.w	r4, r6, r4, lsl #2
d001080a:	f9b2 200c 	ldrsh.w	r2, [r2, #12]
d001080e:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d0010812:	ebc6 06c4 	rsb	r6, r6, r4, lsl #3
d0010816:	9c11      	ldr	r4, [sp, #68]	; 0x44
d0010818:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d001081c:	f9b4 100c 	ldrsh.w	r1, [r4, #12]
d0010820:	00b4      	lsls	r4, r6, #2
d0010822:	9e12      	ldr	r6, [sp, #72]	; 0x48
d0010824:	eb07 0787 	add.w	r7, r7, r7, lsl #2
d0010828:	eb04 0480 	add.w	r4, r4, r0, lsl #2
d001082c:	f106 0808 	add.w	r8, r6, #8
d0010830:	9e11      	ldr	r6, [sp, #68]	; 0x44
d0010832:	eb07 0787 	add.w	r7, r7, r7, lsl #2
d0010836:	3608      	adds	r6, #8
d0010838:	b220      	sxth	r0, r4
d001083a:	00bf      	lsls	r7, r7, #2
d001083c:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
d0010840:	9611      	str	r6, [sp, #68]	; 0x44
d0010842:	ebcc 264c 	rsb	r6, ip, ip, lsl #9
d0010846:	eb01 0802 	add.w	r8, r1, r2
d001084a:	ee07 0a90 	vmov	s15, r0
d001084e:	eb0c 0686 	add.w	r6, ip, r6, lsl #2
d0010852:	ebc8 2048 	rsb	r0, r8, r8, lsl #9
d0010856:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d001085a:	ebcc 06c6 	rsb	r6, ip, r6, lsl #3
d001085e:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0010862:	eb07 0786 	add.w	r7, r7, r6, lsl #2
d0010866:	9e10      	ldr	r6, [sp, #64]	; 0x40
d0010868:	ebc8 00c0 	rsb	r0, r8, r0, lsl #3
d001086c:	ee67 7a85 	vmul.f32	s15, s15, s10
d0010870:	89b4      	ldrh	r4, [r6, #12]
d0010872:	b23f      	sxth	r7, r7
d0010874:	0080      	lsls	r0, r0, #2
d0010876:	3608      	adds	r6, #8
d0010878:	eb04 0484 	add.w	r4, r4, r4, lsl #2
d001087c:	ee07 7a10 	vmov	s14, r7
d0010880:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0010884:	9610      	str	r6, [sp, #64]	; 0x40
d0010886:	eb04 0484 	add.w	r4, r4, r4, lsl #2
d001088a:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d001088e:	eb00 0084 	add.w	r0, r0, r4, lsl #2
d0010892:	4634      	mov	r4, r6
d0010894:	ee27 7a05 	vmul.f32	s14, s14, s10
d0010898:	b200      	sxth	r0, r0
d001089a:	eee7 7a07 	vfma.f32	s15, s14, s14
d001089e:	ee07 0a10 	vmov	s14, r0
d00108a2:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00108a6:	ee27 7a05 	vmul.f32	s14, s14, s10
d00108aa:	eee7 7a07 	vfma.f32	s15, s14, s14
d00108ae:	eeb1 3ae7 	vsqrt.f32	s6, s15
d00108b2:	e46c      	b.n	d001018e <generate_subdivided_cube+0xaa>
d00108b4:	b03d      	add	sp, #244	; 0xf4
d00108b6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00108ba:	bf00      	nop

d00108bc <rotate>:
d00108bc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00108c0:	b083      	sub	sp, #12
d00108c2:	f8df a0b4 	ldr.w	sl, [pc, #180]	; d0010978 <rotate+0xbc>
d00108c6:	461c      	mov	r4, r3
d00108c8:	4605      	mov	r5, r0
d00108ca:	af02      	add	r7, sp, #8
d00108cc:	f8da 30b4 	ldr.w	r3, [sl, #180]	; 0xb4
d00108d0:	9e0c      	ldr	r6, [sp, #48]	; 0x30
d00108d2:	4620      	mov	r0, r4
d00108d4:	f8dd b034 	ldr.w	fp, [sp, #52]	; 0x34
d00108d8:	e907 0006 	stmdb	r7, {r1, r2}
d00108dc:	4798      	blx	r3
d00108de:	f8da 20b8 	ldr.w	r2, [sl, #184]	; 0xb8
d00108e2:	4681      	mov	r9, r0
d00108e4:	4620      	mov	r0, r4
d00108e6:	4790      	blx	r2
d00108e8:	f8da 20b4 	ldr.w	r2, [sl, #180]	; 0xb4
d00108ec:	4680      	mov	r8, r0
d00108ee:	4630      	mov	r0, r6
d00108f0:	4790      	blx	r2
d00108f2:	f8da 30b8 	ldr.w	r3, [sl, #184]	; 0xb8
d00108f6:	4607      	mov	r7, r0
d00108f8:	4630      	mov	r0, r6
d00108fa:	4798      	blx	r3
d00108fc:	f8da 30b4 	ldr.w	r3, [sl, #180]	; 0xb4
d0010900:	4604      	mov	r4, r0
d0010902:	4658      	mov	r0, fp
d0010904:	4798      	blx	r3
d0010906:	f8da 20b8 	ldr.w	r2, [sl, #184]	; 0xb8
d001090a:	4606      	mov	r6, r0
d001090c:	4658      	mov	r0, fp
d001090e:	4790      	blx	r2
d0010910:	f9bd c004 	ldrsh.w	ip, [sp, #4]
d0010914:	f9bd 2002 	ldrsh.w	r2, [sp, #2]
d0010918:	4601      	mov	r1, r0
d001091a:	fb08 fe0c 	mul.w	lr, r8, ip
d001091e:	4628      	mov	r0, r5
d0010920:	fb08 f302 	mul.w	r3, r8, r2
d0010924:	fb09 e202 	mla	r2, r9, r2, lr
d0010928:	f9bd e000 	ldrsh.w	lr, [sp]
d001092c:	fb09 331c 	mls	r3, r9, ip, r3
d0010930:	f9bd c006 	ldrsh.w	ip, [sp, #6]
d0010934:	f342 32cf 	sbfx	r2, r2, #15, #16
d0010938:	f8a5 c006 	strh.w	ip, [r5, #6]
d001093c:	f343 33cf 	sbfx	r3, r3, #15, #16
d0010940:	fb07 fc02 	mul.w	ip, r7, r2
d0010944:	fb04 f202 	mul.w	r2, r4, r2
d0010948:	fb04 c40e 	mla	r4, r4, lr, ip
d001094c:	fb01 fc03 	mul.w	ip, r1, r3
d0010950:	f344 34cf 	sbfx	r4, r4, #15, #16
d0010954:	fb0e 2217 	mls	r2, lr, r7, r2
d0010958:	fb01 f104 	mul.w	r1, r1, r4
d001095c:	13d2      	asrs	r2, r2, #15
d001095e:	fb06 c404 	mla	r4, r6, r4, ip
d0010962:	fb06 1313 	mls	r3, r6, r3, r1
d0010966:	13e4      	asrs	r4, r4, #15
d0010968:	80aa      	strh	r2, [r5, #4]
d001096a:	13db      	asrs	r3, r3, #15
d001096c:	806c      	strh	r4, [r5, #2]
d001096e:	802b      	strh	r3, [r5, #0]
d0010970:	b003      	add	sp, #12
d0010972:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0010976:	bf00      	nop
d0010978:	2001f000 	.word	0x2001f000

d001097c <draw_rotating_checkerboard>:
d001097c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0010980:	4c5d      	ldr	r4, [pc, #372]	; (d0010af8 <draw_rotating_checkerboard+0x17c>)
d0010982:	b09b      	sub	sp, #108	; 0x6c
d0010984:	4606      	mov	r6, r0
d0010986:	460d      	mov	r5, r1
d0010988:	f8d4 70b8 	ldr.w	r7, [r4, #184]	; 0xb8
d001098c:	46a3      	mov	fp, r4
d001098e:	e9cd 230a 	strd	r2, r3, [sp, #40]	; 0x28
d0010992:	47b8      	blx	r7
d0010994:	4602      	mov	r2, r0
d0010996:	f8d4 30b4 	ldr.w	r3, [r4, #180]	; 0xb4
d001099a:	4630      	mov	r0, r6
d001099c:	9205      	str	r2, [sp, #20]
d001099e:	4798      	blx	r3
d00109a0:	2100      	movs	r1, #0
d00109a2:	4602      	mov	r2, r0
d00109a4:	f8d4 30b8 	ldr.w	r3, [r4, #184]	; 0xb8
d00109a8:	4628      	mov	r0, r5
d00109aa:	9104      	str	r1, [sp, #16]
d00109ac:	9206      	str	r2, [sp, #24]
d00109ae:	4798      	blx	r3
d00109b0:	f340 2050 	sbfx	r0, r0, #9, #17
d00109b4:	f100 0380 	add.w	r3, r0, #128	; 0x80
d00109b8:	ebc3 6203 	rsb	r2, r3, r3, lsl #24
d00109bc:	0199      	lsls	r1, r3, #6
d00109be:	ebc3 0382 	rsb	r3, r3, r2, lsl #2
d00109c2:	9107      	str	r1, [sp, #28]
d00109c4:	019b      	lsls	r3, r3, #6
d00109c6:	119a      	asrs	r2, r3, #6
d00109c8:	930e      	str	r3, [sp, #56]	; 0x38
d00109ca:	e9cd 320c 	strd	r3, r2, [sp, #48]	; 0x30
d00109ce:	920f      	str	r2, [sp, #60]	; 0x3c
d00109d0:	980e      	ldr	r0, [sp, #56]	; 0x38
d00109d2:	9a0d      	ldr	r2, [sp, #52]	; 0x34
d00109d4:	9002      	str	r0, [sp, #8]
d00109d6:	9806      	ldr	r0, [sp, #24]
d00109d8:	990c      	ldr	r1, [sp, #48]	; 0x30
d00109da:	4604      	mov	r4, r0
d00109dc:	9b07      	ldr	r3, [sp, #28]
d00109de:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
d00109e2:	fb02 f404 	mul.w	r4, r2, r4
d00109e6:	4419      	add	r1, r3
d00109e8:	9b04      	ldr	r3, [sp, #16]
d00109ea:	9408      	str	r4, [sp, #32]
d00109ec:	9c05      	ldr	r4, [sp, #20]
d00109ee:	3b0a      	subs	r3, #10
d00109f0:	910c      	str	r1, [sp, #48]	; 0x30
d00109f2:	1189      	asrs	r1, r1, #6
d00109f4:	fb02 f204 	mul.w	r2, r2, r4
d00109f8:	910d      	str	r1, [sp, #52]	; 0x34
d00109fa:	9209      	str	r2, [sp, #36]	; 0x24
d00109fc:	460a      	mov	r2, r1
d00109fe:	fb02 f200 	mul.w	r2, r2, r0
d0010a02:	9200      	str	r2, [sp, #0]
d0010a04:	fb01 f204 	mul.w	r2, r1, r4
d0010a08:	9201      	str	r2, [sp, #4]
d0010a0a:	4652      	mov	r2, sl
d0010a0c:	469a      	mov	sl, r3
d0010a0e:	4613      	mov	r3, r2
d0010a10:	9a02      	ldr	r2, [sp, #8]
d0010a12:	f01a 0f01 	tst.w	sl, #1
d0010a16:	9907      	ldr	r1, [sp, #28]
d0010a18:	461c      	mov	r4, r3
d0010a1a:	f8db 00f8 	ldr.w	r0, [fp, #248]	; 0xf8
d0010a1e:	f10a 0a01 	add.w	sl, sl, #1
d0010a22:	440a      	add	r2, r1
d0010a24:	9906      	ldr	r1, [sp, #24]
d0010a26:	ea4f 13a2 	mov.w	r3, r2, asr #6
d0010a2a:	9202      	str	r2, [sp, #8]
d0010a2c:	9a05      	ldr	r2, [sp, #20]
d0010a2e:	9303      	str	r3, [sp, #12]
d0010a30:	fb04 f702 	mul.w	r7, r4, r2
d0010a34:	fb04 f401 	mul.w	r4, r4, r1
d0010a38:	e9dd 650a 	ldrd	r6, r5, [sp, #40]	; 0x28
d0010a3c:	bf18      	it	ne
d0010a3e:	46b4      	movne	ip, r6
d0010a40:	fb03 f602 	mul.w	r6, r3, r2
d0010a44:	9a08      	ldr	r2, [sp, #32]
d0010a46:	bf08      	it	eq
d0010a48:	46ac      	moveq	ip, r5
d0010a4a:	fb03 f501 	mul.w	r5, r3, r1
d0010a4e:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0010a50:	eba7 0902 	sub.w	r9, r7, r2
d0010a54:	1ab1      	subs	r1, r6, r2
d0010a56:	9a00      	ldr	r2, [sp, #0]
d0010a58:	eb04 0803 	add.w	r8, r4, r3
d0010a5c:	13c9      	asrs	r1, r1, #15
d0010a5e:	f880 c000 	strb.w	ip, [r0]
d0010a62:	1ab6      	subs	r6, r6, r2
d0010a64:	195a      	adds	r2, r3, r5
d0010a66:	9b01      	ldr	r3, [sp, #4]
d0010a68:	ea4f 39e9 	mov.w	r9, r9, asr #15
d0010a6c:	13f6      	asrs	r6, r6, #15
d0010a6e:	f501 71f0 	add.w	r1, r1, #480	; 0x1e0
d0010a72:	441d      	add	r5, r3
d0010a74:	9b00      	ldr	r3, [sp, #0]
d0010a76:	13d2      	asrs	r2, r2, #15
d0010a78:	f506 76f0 	add.w	r6, r6, #480	; 0x1e0
d0010a7c:	1aff      	subs	r7, r7, r3
d0010a7e:	9b01      	ldr	r3, [sp, #4]
d0010a80:	13ed      	asrs	r5, r5, #15
d0010a82:	f502 72a0 	add.w	r2, r2, #320	; 0x140
d0010a86:	441c      	add	r4, r3
d0010a88:	ea4f 38e8 	mov.w	r8, r8, asr #15
d0010a8c:	13ff      	asrs	r7, r7, #15
d0010a8e:	2300      	movs	r3, #0
d0010a90:	13e4      	asrs	r4, r4, #15
d0010a92:	f505 75a0 	add.w	r5, r5, #320	; 0x140
d0010a96:	f509 79f0 	add.w	r9, r9, #480	; 0x1e0
d0010a9a:	f508 78a0 	add.w	r8, r8, #320	; 0x140
d0010a9e:	f507 77f0 	add.w	r7, r7, #480	; 0x1e0
d0010aa2:	f504 74a0 	add.w	r4, r4, #320	; 0x140
d0010aa6:	9319      	str	r3, [sp, #100]	; 0x64
d0010aa8:	a811      	add	r0, sp, #68	; 0x44
d0010aaa:	9318      	str	r3, [sp, #96]	; 0x60
d0010aac:	9317      	str	r3, [sp, #92]	; 0x5c
d0010aae:	9112      	str	r1, [sp, #72]	; 0x48
d0010ab0:	2101      	movs	r1, #1
d0010ab2:	9613      	str	r6, [sp, #76]	; 0x4c
d0010ab4:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
d0010ab8:	f8cd 8050 	str.w	r8, [sp, #80]	; 0x50
d0010abc:	e9cd 2515 	strd	r2, r5, [sp, #84]	; 0x54
d0010ac0:	f8db 2134 	ldr.w	r2, [fp, #308]	; 0x134
d0010ac4:	4790      	blx	r2
d0010ac6:	2101      	movs	r1, #1
d0010ac8:	a811      	add	r0, sp, #68	; 0x44
d0010aca:	f8db 2134 	ldr.w	r2, [fp, #308]	; 0x134
d0010ace:	9612      	str	r6, [sp, #72]	; 0x48
d0010ad0:	9515      	str	r5, [sp, #84]	; 0x54
d0010ad2:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
d0010ad6:	9416      	str	r4, [sp, #88]	; 0x58
d0010ad8:	e9cd 7813 	strd	r7, r8, [sp, #76]	; 0x4c
d0010adc:	4790      	blx	r2
d0010ade:	9b04      	ldr	r3, [sp, #16]
d0010ae0:	4553      	cmp	r3, sl
d0010ae2:	9b03      	ldr	r3, [sp, #12]
d0010ae4:	d194      	bne.n	d0010a10 <draw_rotating_checkerboard+0x94>
d0010ae6:	9b04      	ldr	r3, [sp, #16]
d0010ae8:	3301      	adds	r3, #1
d0010aea:	2b0a      	cmp	r3, #10
d0010aec:	9304      	str	r3, [sp, #16]
d0010aee:	f47f af6f 	bne.w	d00109d0 <draw_rotating_checkerboard+0x54>
d0010af2:	b01b      	add	sp, #108	; 0x6c
d0010af4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0010af8:	2001f000 	.word	0x2001f000

d0010afc <main>:
d0010afc:	4ad0      	ldr	r2, [pc, #832]	; (d0010e40 <main+0x344>)
d0010afe:	20ff      	movs	r0, #255	; 0xff
d0010b00:	6813      	ldr	r3, [r2, #0]
d0010b02:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0010b06:	f023 0310 	bic.w	r3, r3, #16
d0010b0a:	4dce      	ldr	r5, [pc, #824]	; (d0010e44 <main+0x348>)
d0010b0c:	4ece      	ldr	r6, [pc, #824]	; (d0010e48 <main+0x34c>)
d0010b0e:	4fcf      	ldr	r7, [pc, #828]	; (d0010e4c <main+0x350>)
d0010b10:	f8df 8360 	ldr.w	r8, [pc, #864]	; d0010e74 <main+0x378>
d0010b14:	ed2d 8b02 	vpush	{d8}
d0010b18:	6013      	str	r3, [r2, #0]
d0010b1a:	f2ad 5dac 	subw	sp, sp, #1452	; 0x5ac
d0010b1e:	f8d5 30c8 	ldr.w	r3, [r5, #200]	; 0xc8
d0010b22:	4798      	blx	r3
d0010b24:	f8d5 30bc 	ldr.w	r3, [r5, #188]	; 0xbc
d0010b28:	2102      	movs	r1, #2
d0010b2a:	20dc      	movs	r0, #220	; 0xdc
d0010b2c:	4798      	blx	r3
d0010b2e:	2202      	movs	r2, #2
d0010b30:	f44f 71a0 	mov.w	r1, #320	; 0x140
d0010b34:	f8d5 40e8 	ldr.w	r4, [r5, #232]	; 0xe8
d0010b38:	f44f 7320 	mov.w	r3, #640	; 0x280
d0010b3c:	f44f 70f0 	mov.w	r0, #480	; 0x1e0
d0010b40:	9200      	str	r2, [sp, #0]
d0010b42:	f44f 7270 	mov.w	r2, #960	; 0x3c0
d0010b46:	47a0      	blx	r4
d0010b48:	f8d5 20f4 	ldr.w	r2, [r5, #244]	; 0xf4
d0010b4c:	2000      	movs	r0, #0
d0010b4e:	f8d5 3118 	ldr.w	r3, [r5, #280]	; 0x118
d0010b52:	6016      	str	r6, [r2, #0]
d0010b54:	4798      	blx	r3
d0010b56:	f8d5 20f4 	ldr.w	r2, [r5, #244]	; 0xf4
d0010b5a:	2000      	movs	r0, #0
d0010b5c:	f8d5 3118 	ldr.w	r3, [r5, #280]	; 0x118
d0010b60:	6017      	str	r7, [r2, #0]
d0010b62:	4798      	blx	r3
d0010b64:	f8d5 2170 	ldr.w	r2, [r5, #368]	; 0x170
d0010b68:	2000      	movs	r0, #0
d0010b6a:	f8d5 311c 	ldr.w	r3, [r5, #284]	; 0x11c
d0010b6e:	6812      	ldr	r2, [r2, #0]
d0010b70:	4cb7      	ldr	r4, [pc, #732]	; (d0010e50 <main+0x354>)
d0010b72:	920b      	str	r2, [sp, #44]	; 0x2c
d0010b74:	4798      	blx	r3
d0010b76:	2100      	movs	r1, #0
d0010b78:	f8d5 3100 	ldr.w	r3, [r5, #256]	; 0x100
d0010b7c:	4608      	mov	r0, r1
d0010b7e:	4798      	blx	r3
d0010b80:	2100      	movs	r1, #0
d0010b82:	f8d5 3104 	ldr.w	r3, [r5, #260]	; 0x104
d0010b86:	4608      	mov	r0, r1
d0010b88:	4798      	blx	r3
d0010b8a:	f7ff faab 	bl	d00100e4 <generate_subdivided_cube>
d0010b8e:	f644 0250 	movw	r2, #18512	; 0x4850
d0010b92:	49b0      	ldr	r1, [pc, #704]	; (d0010e54 <main+0x358>)
d0010b94:	f04f 4050 	mov.w	r0, #3489660928	; 0xd0000000
d0010b98:	f000 fab8 	bl	d001110c <memcpy>
d0010b9c:	68eb      	ldr	r3, [r5, #12]
d0010b9e:	200a      	movs	r0, #10
d0010ba0:	4798      	blx	r3
d0010ba2:	f7ff fa41 	bl	d0010028 <init_clut>
d0010ba6:	f8d5 30d8 	ldr.w	r3, [r5, #216]	; 0xd8
d0010baa:	2100      	movs	r1, #0
d0010bac:	48aa      	ldr	r0, [pc, #680]	; (d0010e58 <main+0x35c>)
d0010bae:	4798      	blx	r3
d0010bb0:	f8d5 30d8 	ldr.w	r3, [r5, #216]	; 0xd8
d0010bb4:	2101      	movs	r1, #1
d0010bb6:	48a8      	ldr	r0, [pc, #672]	; (d0010e58 <main+0x35c>)
d0010bb8:	4798      	blx	r3
d0010bba:	f8d5 2170 	ldr.w	r2, [r5, #368]	; 0x170
d0010bbe:	f245 50ff 	movw	r0, #22015	; 0x55ff
d0010bc2:	f8d5 316c 	ldr.w	r3, [r5, #364]	; 0x16c
d0010bc6:	2100      	movs	r1, #0
d0010bc8:	6010      	str	r0, [r2, #0]
d0010bca:	2005      	movs	r0, #5
d0010bcc:	4798      	blx	r3
d0010bce:	f8d5 30c4 	ldr.w	r3, [r5, #196]	; 0xc4
d0010bd2:	2001      	movs	r0, #1
d0010bd4:	4798      	blx	r3
d0010bd6:	f8d5 20f0 	ldr.w	r2, [r5, #240]	; 0xf0
d0010bda:	48a0      	ldr	r0, [pc, #640]	; (d0010e5c <main+0x360>)
d0010bdc:	f44f 7120 	mov.w	r1, #640	; 0x280
d0010be0:	f8d5 30f4 	ldr.w	r3, [r5, #244]	; 0xf4
d0010be4:	6010      	str	r0, [r2, #0]
d0010be6:	f44f 7070 	mov.w	r0, #960	; 0x3c0
d0010bea:	f8c3 8000 	str.w	r8, [r3]
d0010bee:	f8d5 3114 	ldr.w	r3, [r5, #276]	; 0x114
d0010bf2:	4798      	blx	r3
d0010bf4:	220d      	movs	r2, #13
d0010bf6:	230e      	movs	r3, #14
d0010bf8:	218c      	movs	r1, #140	; 0x8c
d0010bfa:	2021      	movs	r0, #33	; 0x21
d0010bfc:	f7ff febe 	bl	d001097c <draw_rotating_checkerboard>
d0010c00:	f8d5 3114 	ldr.w	r3, [r5, #276]	; 0x114
d0010c04:	f44f 71a0 	mov.w	r1, #320	; 0x140
d0010c08:	f44f 70f0 	mov.w	r0, #480	; 0x1e0
d0010c0c:	4798      	blx	r3
d0010c0e:	f8d5 10f0 	ldr.w	r1, [r5, #240]	; 0xf0
d0010c12:	f8d5 20f4 	ldr.w	r2, [r5, #244]	; 0xf4
d0010c16:	4620      	mov	r0, r4
d0010c18:	f8d5 30ec 	ldr.w	r3, [r5, #236]	; 0xec
d0010c1c:	f8c1 8000 	str.w	r8, [r1]
d0010c20:	6017      	str	r7, [r2, #0]
d0010c22:	601e      	str	r6, [r3, #0]
d0010c24:	f000 fa80 	bl	d0011128 <strlen>
d0010c28:	2800      	cmp	r0, #0
d0010c2a:	f000 825a 	beq.w	d00110e2 <main+0x5e6>
d0010c2e:	4623      	mov	r3, r4
d0010c30:	2400      	movs	r4, #0
d0010c32:	1819      	adds	r1, r3, r0
d0010c34:	f813 2b01 	ldrb.w	r2, [r3], #1
d0010c38:	2a0a      	cmp	r2, #10
d0010c3a:	bf08      	it	eq
d0010c3c:	3401      	addeq	r4, #1
d0010c3e:	4299      	cmp	r1, r3
d0010c40:	d1f8      	bne.n	d0010c34 <main+0x138>
d0010c42:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0010c46:	2300      	movs	r3, #0
d0010c48:	3414      	adds	r4, #20
d0010c4a:	9202      	str	r2, [sp, #8]
d0010c4c:	2201      	movs	r2, #1
d0010c4e:	469a      	mov	sl, r3
d0010c50:	4699      	mov	r9, r3
d0010c52:	9209      	str	r2, [sp, #36]	; 0x24
d0010c54:	0122      	lsls	r2, r4, #4
d0010c56:	9307      	str	r3, [sp, #28]
d0010c58:	920a      	str	r2, [sp, #40]	; 0x28
d0010c5a:	9303      	str	r3, [sp, #12]
d0010c5c:	9304      	str	r3, [sp, #16]
d0010c5e:	e9cd 3305 	strd	r3, r3, [sp, #20]
d0010c62:	4b78      	ldr	r3, [pc, #480]	; (d0010e44 <main+0x348>)
d0010c64:	69db      	ldr	r3, [r3, #28]
d0010c66:	4798      	blx	r3
d0010c68:	f010 0002 	ands.w	r0, r0, #2
d0010c6c:	f040 8227 	bne.w	d00110be <main+0x5c2>
d0010c70:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0010c72:	eb0a 0a43 	add.w	sl, sl, r3, lsl #1
d0010c76:	4b73      	ldr	r3, [pc, #460]	; (d0010e44 <main+0x348>)
d0010c78:	f8d3 3118 	ldr.w	r3, [r3, #280]	; 0x118
d0010c7c:	4798      	blx	r3
d0010c7e:	f5ba 7f80 	cmp.w	sl, #256	; 0x100
d0010c82:	f300 81ef 	bgt.w	d0011064 <main+0x568>
d0010c86:	f11a 0fff 	cmn.w	sl, #255	; 0xff
d0010c8a:	da03      	bge.n	d0010c94 <main+0x198>
d0010c8c:	2305      	movs	r3, #5
d0010c8e:	f06f 0afe 	mvn.w	sl, #254	; 0xfe
d0010c92:	9309      	str	r3, [sp, #36]	; 0x24
d0010c94:	4b72      	ldr	r3, [pc, #456]	; (d0010e60 <main+0x364>)
d0010c96:	681b      	ldr	r3, [r3, #0]
d0010c98:	459a      	cmp	sl, r3
d0010c9a:	f000 81ed 	beq.w	d0011078 <main+0x57c>
d0010c9e:	4a71      	ldr	r2, [pc, #452]	; (d0010e64 <main+0x368>)
d0010ca0:	4e71      	ldr	r6, [pc, #452]	; (d0010e68 <main+0x36c>)
d0010ca2:	f502 6896 	add.w	r8, r2, #1200	; 0x4b0
d0010ca6:	f8df c1d0 	ldr.w	ip, [pc, #464]	; d0010e78 <main+0x37c>
d0010caa:	4631      	mov	r1, r6
d0010cac:	f9b2 4002 	ldrsh.w	r4, [r2, #2]
d0010cb0:	3208      	adds	r2, #8
d0010cb2:	f932 ec04 	ldrsh.w	lr, [r2, #-4]
d0010cb6:	3108      	adds	r1, #8
d0010cb8:	f932 7c08 	ldrsh.w	r7, [r2, #-8]
d0010cbc:	4590      	cmp	r8, r2
d0010cbe:	f9bc 5002 	ldrsh.w	r5, [ip, #2]
d0010cc2:	f9bc 0004 	ldrsh.w	r0, [ip, #4]
d0010cc6:	f93c 3b08 	ldrsh.w	r3, [ip], #8
d0010cca:	eba5 0504 	sub.w	r5, r5, r4
d0010cce:	eba0 000e 	sub.w	r0, r0, lr
d0010cd2:	eba3 0307 	sub.w	r3, r3, r7
d0010cd6:	fb0a f505 	mul.w	r5, sl, r5
d0010cda:	fb0a f000 	mul.w	r0, sl, r0
d0010cde:	fb0a f303 	mul.w	r3, sl, r3
d0010ce2:	eb04 2425 	add.w	r4, r4, r5, asr #8
d0010ce6:	eb0e 2020 	add.w	r0, lr, r0, asr #8
d0010cea:	f04f 0500 	mov.w	r5, #0
d0010cee:	eb07 2323 	add.w	r3, r7, r3, asr #8
d0010cf2:	f821 4c06 	strh.w	r4, [r1, #-6]
d0010cf6:	f821 5c02 	strh.w	r5, [r1, #-2]
d0010cfa:	f821 0c04 	strh.w	r0, [r1, #-4]
d0010cfe:	f821 3c08 	strh.w	r3, [r1, #-8]
d0010d02:	d1d3      	bne.n	d0010cac <main+0x1b0>
d0010d04:	4b56      	ldr	r3, [pc, #344]	; (d0010e60 <main+0x364>)
d0010d06:	f8c3 a000 	str.w	sl, [r3]
d0010d0a:	f8cd a020 	str.w	sl, [sp, #32]
d0010d0e:	2400      	movs	r4, #0
d0010d10:	46b2      	mov	sl, r6
d0010d12:	f8df 8158 	ldr.w	r8, [pc, #344]	; d0010e6c <main+0x370>
d0010d16:	af0c      	add	r7, sp, #48	; 0x30
d0010d18:	f8dd b018 	ldr.w	fp, [sp, #24]
d0010d1c:	9e05      	ldr	r6, [sp, #20]
d0010d1e:	eb0a 02c4 	add.w	r2, sl, r4, lsl #3
d0010d22:	4638      	mov	r0, r7
d0010d24:	00e5      	lsls	r5, r4, #3
d0010d26:	3401      	adds	r4, #1
d0010d28:	f8cd b004 	str.w	fp, [sp, #4]
d0010d2c:	464b      	mov	r3, r9
d0010d2e:	9600      	str	r6, [sp, #0]
d0010d30:	4445      	add	r5, r8
d0010d32:	ca06      	ldmia	r2, {r1, r2}
d0010d34:	f7ff fdc2 	bl	d00108bc <rotate>
d0010d38:	2c96      	cmp	r4, #150	; 0x96
d0010d3a:	e897 0003 	ldmia.w	r7, {r0, r1}
d0010d3e:	e885 0003 	stmia.w	r5, {r0, r1}
d0010d42:	d1ec      	bne.n	d0010d1e <main+0x222>
d0010d44:	2400      	movs	r4, #0
d0010d46:	ad3e      	add	r5, sp, #248	; 0xf8
d0010d48:	2292      	movs	r2, #146	; 0x92
d0010d4a:	a819      	add	r0, sp, #100	; 0x64
d0010d4c:	4621      	mov	r1, r4
d0010d4e:	9418      	str	r4, [sp, #96]	; 0x60
d0010d50:	f8dd a020 	ldr.w	sl, [sp, #32]
d0010d54:	ae18      	add	r6, sp, #96	; 0x60
d0010d56:	f7ff f95d 	bl	d0010014 <memset>
d0010d5a:	462f      	mov	r7, r5
d0010d5c:	4621      	mov	r1, r4
d0010d5e:	f10d 0c5f 	add.w	ip, sp, #95	; 0x5f
d0010d62:	4c42      	ldr	r4, [pc, #264]	; (d0010e6c <main+0x370>)
d0010d64:	f10d 0ef5 	add.w	lr, sp, #245	; 0xf5
d0010d68:	f04f 0801 	mov.w	r8, #1
d0010d6c:	f9b4 3004 	ldrsh.w	r3, [r4, #4]
d0010d70:	f503 70fa 	add.w	r0, r3, #500	; 0x1f4
d0010d74:	2800      	cmp	r0, #0
d0010d76:	f340 816b 	ble.w	d0011050 <main+0x554>
d0010d7a:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
d0010d7e:	f934 3b08 	ldrsh.w	r3, [r4], #8
d0010d82:	ebc2 1202 	rsb	r2, r2, r2, lsl #4
d0010d86:	f80c 8f01 	strb.w	r8, [ip, #1]!
d0010d8a:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d0010d8e:	45e6      	cmp	lr, ip
d0010d90:	ea4f 1202 	mov.w	r2, r2, lsl #4
d0010d94:	ea4f 1303 	mov.w	r3, r3, lsl #4
d0010d98:	fb92 f2f0 	sdiv	r2, r2, r0
d0010d9c:	fb93 f3f0 	sdiv	r3, r3, r0
d0010da0:	f1c2 02a0 	rsb	r2, r2, #160	; 0xa0
d0010da4:	f103 03f0 	add.w	r3, r3, #240	; 0xf0
d0010da8:	e9c7 3200 	strd	r3, r2, [r7]
d0010dac:	f107 0708 	add.w	r7, r7, #8
d0010db0:	d1dc      	bne.n	d0010d6c <main+0x270>
d0010db2:	4c2f      	ldr	r4, [pc, #188]	; (d0010e70 <main+0x374>)
d0010db4:	ee08 9a10 	vmov	s16, r9
d0010db8:	f8cd a020 	str.w	sl, [sp, #32]
d0010dbc:	6823      	ldr	r3, [r4, #0]
d0010dbe:	5cf2      	ldrb	r2, [r6, r3]
d0010dc0:	2a00      	cmp	r2, #0
d0010dc2:	d061      	beq.n	d0010e88 <main+0x38c>
d0010dc4:	f8d4 e004 	ldr.w	lr, [r4, #4]
d0010dc8:	eb05 00c3 	add.w	r0, r5, r3, lsl #3
d0010dcc:	f816 200e 	ldrb.w	r2, [r6, lr]
d0010dd0:	eb05 08ce 	add.w	r8, r5, lr, lsl #3
d0010dd4:	2a00      	cmp	r2, #0
d0010dd6:	d057      	beq.n	d0010e88 <main+0x38c>
d0010dd8:	68a2      	ldr	r2, [r4, #8]
d0010dda:	5cb1      	ldrb	r1, [r6, r2]
d0010ddc:	eb05 0ac2 	add.w	sl, r5, r2, lsl #3
d0010de0:	2900      	cmp	r1, #0
d0010de2:	d051      	beq.n	d0010e88 <main+0x38c>
d0010de4:	f855 c033 	ldr.w	ip, [r5, r3, lsl #3]
d0010de8:	2101      	movs	r1, #1
d0010dea:	6847      	ldr	r7, [r0, #4]
d0010dec:	a80f      	add	r0, sp, #60	; 0x3c
d0010dee:	f855 b03e 	ldr.w	fp, [r5, lr, lsl #3]
d0010df2:	f8da e004 	ldr.w	lr, [sl, #4]
d0010df6:	ebab 090c 	sub.w	r9, fp, ip
d0010dfa:	f8d8 a004 	ldr.w	sl, [r8, #4]
d0010dfe:	f855 8032 	ldr.w	r8, [r5, r2, lsl #3]
d0010e02:	ebae 0207 	sub.w	r2, lr, r7
d0010e06:	ebaa 0307 	sub.w	r3, sl, r7
d0010e0a:	fb02 f209 	mul.w	r2, r2, r9
d0010e0e:	eba8 090c 	sub.w	r9, r8, ip
d0010e12:	fb09 2313 	mls	r3, r9, r3, r2
d0010e16:	2b00      	cmp	r3, #0
d0010e18:	db36      	blt.n	d0010e88 <main+0x38c>
d0010e1a:	4b0a      	ldr	r3, [pc, #40]	; (d0010e44 <main+0x348>)
d0010e1c:	7b22      	ldrb	r2, [r4, #12]
d0010e1e:	f8d3 30f8 	ldr.w	r3, [r3, #248]	; 0xf8
d0010e22:	701a      	strb	r2, [r3, #0]
d0010e24:	2200      	movs	r2, #0
d0010e26:	4b07      	ldr	r3, [pc, #28]	; (d0010e44 <main+0x348>)
d0010e28:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
d0010e2c:	f8d3 3134 	ldr.w	r3, [r3, #308]	; 0x134
d0010e30:	9712      	str	r7, [sp, #72]	; 0x48
d0010e32:	9215      	str	r2, [sp, #84]	; 0x54
d0010e34:	f8cd b040 	str.w	fp, [sp, #64]	; 0x40
d0010e38:	f8cd a04c 	str.w	sl, [sp, #76]	; 0x4c
d0010e3c:	9216      	str	r2, [sp, #88]	; 0x58
d0010e3e:	e01d      	b.n	d0010e7c <main+0x380>
d0010e40:	e000ed14 	.word	0xe000ed14
d0010e44:	2001f000 	.word	0x2001f000
d0010e48:	d06b2000 	.word	0xd06b2000
d0010e4c:	d06d9000 	.word	0xd06d9000
d0010e50:	d0011150 	.word	0xd0011150
d0010e54:	d0011644 	.word	0xd0011644
d0010e58:	d04c5e98 	.word	0xd04c5e98
d0010e5c:	d026de98 	.word	0xd026de98
d0010e60:	d001114c 	.word	0xd001114c
d0010e64:	d04c70a8 	.word	0xd04c70a8
d0010e68:	d04c6298 	.word	0xd04c6298
d0010e6c:	d04c6748 	.word	0xd04c6748
d0010e70:	d04c7558 	.word	0xd04c7558
d0010e74:	d0015e98 	.word	0xd0015e98
d0010e78:	d04c6bf8 	.word	0xd04c6bf8
d0010e7c:	f8cd 8044 	str.w	r8, [sp, #68]	; 0x44
d0010e80:	f8cd e050 	str.w	lr, [sp, #80]	; 0x50
d0010e84:	9217      	str	r2, [sp, #92]	; 0x5c
d0010e86:	4798      	blx	r3
d0010e88:	3410      	adds	r4, #16
d0010e8a:	4b97      	ldr	r3, [pc, #604]	; (d00110e8 <main+0x5ec>)
d0010e8c:	42a3      	cmp	r3, r4
d0010e8e:	d195      	bne.n	d0010dbc <main+0x2c0>
d0010e90:	9902      	ldr	r1, [sp, #8]
d0010e92:	ee18 9a10 	vmov	r9, s16
d0010e96:	980a      	ldr	r0, [sp, #40]	; 0x28
d0010e98:	1e4b      	subs	r3, r1, #1
d0010e9a:	f8dd a020 	ldr.w	sl, [sp, #32]
d0010e9e:	4242      	negs	r2, r0
d0010ea0:	429a      	cmp	r2, r3
d0010ea2:	f300 80fd 	bgt.w	d00110a0 <main+0x5a4>
d0010ea6:	f5c0 72a0 	rsb	r2, r0, #320	; 0x140
d0010eaa:	429a      	cmp	r2, r3
d0010eac:	f300 80f0 	bgt.w	d0011090 <main+0x594>
d0010eb0:	f2c0 80fc 	blt.w	d00110ac <main+0x5b0>
d0010eb4:	3101      	adds	r1, #1
d0010eb6:	9302      	str	r3, [sp, #8]
d0010eb8:	4f8c      	ldr	r7, [pc, #560]	; (d00110ec <main+0x5f0>)
d0010eba:	2412      	movs	r4, #18
d0010ebc:	4a8c      	ldr	r2, [pc, #560]	; (d00110f0 <main+0x5f4>)
d0010ebe:	2058      	movs	r0, #88	; 0x58
d0010ec0:	f8d7 30f8 	ldr.w	r3, [r7, #248]	; 0xf8
d0010ec4:	2611      	movs	r6, #17
d0010ec6:	701c      	strb	r4, [r3, #0]
d0010ec8:	f8d7 3148 	ldr.w	r3, [r7, #328]	; 0x148
d0010ecc:	4798      	blx	r3
d0010ece:	f8d7 30f8 	ldr.w	r3, [r7, #248]	; 0xf8
d0010ed2:	4a87      	ldr	r2, [pc, #540]	; (d00110f0 <main+0x5f4>)
d0010ed4:	2056      	movs	r0, #86	; 0x56
d0010ed6:	701e      	strb	r6, [r3, #0]
d0010ed8:	f8d7 3148 	ldr.w	r3, [r7, #328]	; 0x148
d0010edc:	9902      	ldr	r1, [sp, #8]
d0010ede:	9d03      	ldr	r5, [sp, #12]
d0010ee0:	4798      	blx	r3
d0010ee2:	2310      	movs	r3, #16
d0010ee4:	f8d7 7124 	ldr.w	r7, [r7, #292]	; 0x124
d0010ee8:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0010eec:	2000      	movs	r0, #0
d0010eee:	4619      	mov	r1, r3
d0010ef0:	f5c5 75ef 	rsb	r5, r5, #478	; 0x1de
d0010ef4:	47b8      	blx	r7
d0010ef6:	f44f 7397 	mov.w	r3, #302	; 0x12e
d0010efa:	4f7c      	ldr	r7, [pc, #496]	; (d00110ec <main+0x5f0>)
d0010efc:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0010f00:	4619      	mov	r1, r3
d0010f02:	2000      	movs	r0, #0
d0010f04:	f8d7 7124 	ldr.w	r7, [r7, #292]	; 0x124
d0010f08:	47b8      	blx	r7
d0010f0a:	4f78      	ldr	r7, [pc, #480]	; (d00110ec <main+0x5f0>)
d0010f0c:	2100      	movs	r1, #0
d0010f0e:	2310      	movs	r3, #16
d0010f10:	f8d7 20f8 	ldr.w	r2, [r7, #248]	; 0xf8
d0010f14:	4608      	mov	r0, r1
d0010f16:	7014      	strb	r4, [r2, #0]
d0010f18:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0010f1c:	f8d7 713c 	ldr.w	r7, [r7, #316]	; 0x13c
d0010f20:	47b8      	blx	r7
d0010f22:	4f72      	ldr	r7, [pc, #456]	; (d00110ec <main+0x5f0>)
d0010f24:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0010f28:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0010f2c:	f8d7 713c 	ldr.w	r7, [r7, #316]	; 0x13c
d0010f30:	f44f 7198 	mov.w	r1, #304	; 0x130
d0010f34:	2000      	movs	r0, #0
d0010f36:	47b8      	blx	r7
d0010f38:	f8dd 800c 	ldr.w	r8, [sp, #12]
d0010f3c:	4f6b      	ldr	r7, [pc, #428]	; (d00110ec <main+0x5f0>)
d0010f3e:	4621      	mov	r1, r4
d0010f40:	f44f 7397 	mov.w	r3, #302	; 0x12e
d0010f44:	4642      	mov	r2, r8
d0010f46:	f8d7 713c 	ldr.w	r7, [r7, #316]	; 0x13c
d0010f4a:	2000      	movs	r0, #0
d0010f4c:	47b8      	blx	r7
d0010f4e:	4f67      	ldr	r7, [pc, #412]	; (d00110ec <main+0x5f0>)
d0010f50:	4621      	mov	r1, r4
d0010f52:	4628      	mov	r0, r5
d0010f54:	f8d7 713c 	ldr.w	r7, [r7, #316]	; 0x13c
d0010f58:	f44f 7397 	mov.w	r3, #302	; 0x12e
d0010f5c:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0010f60:	47b8      	blx	r7
d0010f62:	4f62      	ldr	r7, [pc, #392]	; (d00110ec <main+0x5f0>)
d0010f64:	4621      	mov	r1, r4
d0010f66:	f44f 7397 	mov.w	r3, #302	; 0x12e
d0010f6a:	f8d7 20f8 	ldr.w	r2, [r7, #248]	; 0xf8
d0010f6e:	4640      	mov	r0, r8
d0010f70:	7016      	strb	r6, [r2, #0]
d0010f72:	4642      	mov	r2, r8
d0010f74:	f8d7 6124 	ldr.w	r6, [r7, #292]	; 0x124
d0010f78:	47b0      	blx	r6
d0010f7a:	4621      	mov	r1, r4
d0010f7c:	462a      	mov	r2, r5
d0010f7e:	4628      	mov	r0, r5
d0010f80:	f8d7 4124 	ldr.w	r4, [r7, #292]	; 0x124
d0010f84:	f44f 7397 	mov.w	r3, #302	; 0x12e
d0010f88:	47a0      	blx	r4
d0010f8a:	9a07      	ldr	r2, [sp, #28]
d0010f8c:	4959      	ldr	r1, [pc, #356]	; (d00110f4 <main+0x5f8>)
d0010f8e:	f44f 75b4 	mov.w	r5, #360	; 0x168
d0010f92:	eb02 0042 	add.w	r0, r2, r2, lsl #1
d0010f96:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
d0010f9a:	0056      	lsls	r6, r2, #1
d0010f9c:	08c2      	lsrs	r2, r0, #3
d0010f9e:	fba1 4202 	umull	r4, r2, r1, r2
d0010fa2:	0892      	lsrs	r2, r2, #2
d0010fa4:	fb05 0012 	mls	r0, r5, r2, r0
d0010fa8:	4798      	blx	r3
d0010faa:	4952      	ldr	r1, [pc, #328]	; (d00110f4 <main+0x5f8>)
d0010fac:	08f2      	lsrs	r2, r6, #3
d0010fae:	4604      	mov	r4, r0
d0010fb0:	f8d7 30b8 	ldr.w	r3, [r7, #184]	; 0xb8
d0010fb4:	fba1 1202 	umull	r1, r2, r1, r2
d0010fb8:	f344 2450 	sbfx	r4, r4, #9, #17
d0010fbc:	0890      	lsrs	r0, r2, #2
d0010fbe:	fb05 6010 	mls	r0, r5, r0, r6
d0010fc2:	4798      	blx	r3
d0010fc4:	f340 2150 	sbfx	r1, r0, #9, #17
d0010fc8:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
d0010fcc:	f104 00f6 	add.w	r0, r4, #246	; 0xf6
d0010fd0:	31a0      	adds	r1, #160	; 0xa0
d0010fd2:	4798      	blx	r3
d0010fd4:	9b04      	ldr	r3, [sp, #16]
d0010fd6:	2b00      	cmp	r3, #0
d0010fd8:	d050      	beq.n	d001107c <main+0x580>
d0010fda:	4b44      	ldr	r3, [pc, #272]	; (d00110ec <main+0x5f0>)
d0010fdc:	4946      	ldr	r1, [pc, #280]	; (d00110f8 <main+0x5fc>)
d0010fde:	f8d3 20ec 	ldr.w	r2, [r3, #236]	; 0xec
d0010fe2:	4b46      	ldr	r3, [pc, #280]	; (d00110fc <main+0x600>)
d0010fe4:	6011      	str	r1, [r2, #0]
d0010fe6:	4f41      	ldr	r7, [pc, #260]	; (d00110ec <main+0x5f0>)
d0010fe8:	f109 0502 	add.w	r5, r9, #2
d0010fec:	9a04      	ldr	r2, [sp, #16]
d0010fee:	9807      	ldr	r0, [sp, #28]
d0010ff0:	08ee      	lsrs	r6, r5, #3
d0010ff2:	f8d7 10f4 	ldr.w	r1, [r7, #244]	; 0xf4
d0010ff6:	f082 0201 	eor.w	r2, r2, #1
d0010ffa:	3001      	adds	r0, #1
d0010ffc:	9204      	str	r2, [sp, #16]
d0010ffe:	f8d7 20cc 	ldr.w	r2, [r7, #204]	; 0xcc
d0011002:	600b      	str	r3, [r1, #0]
d0011004:	9007      	str	r0, [sp, #28]
d0011006:	4790      	blx	r2
d0011008:	f8d7 30c4 	ldr.w	r3, [r7, #196]	; 0xc4
d001100c:	2001      	movs	r0, #1
d001100e:	4798      	blx	r3
d0011010:	9c05      	ldr	r4, [sp, #20]
d0011012:	9806      	ldr	r0, [sp, #24]
d0011014:	f44f 73b4 	mov.w	r3, #360	; 0x168
d0011018:	3403      	adds	r4, #3
d001101a:	4a36      	ldr	r2, [pc, #216]	; (d00110f4 <main+0x5f8>)
d001101c:	3001      	adds	r0, #1
d001101e:	08e1      	lsrs	r1, r4, #3
d0011020:	fba2 c606 	umull	ip, r6, r2, r6
d0011024:	ea4f 0ed0 	mov.w	lr, r0, lsr #3
d0011028:	fba2 c101 	umull	ip, r1, r2, r1
d001102c:	ea4f 0996 	mov.w	r9, r6, lsr #2
d0011030:	fba2 c20e 	umull	ip, r2, r2, lr
d0011034:	0889      	lsrs	r1, r1, #2
d0011036:	fb03 5919 	mls	r9, r3, r9, r5
d001103a:	0896      	lsrs	r6, r2, #2
d001103c:	fb03 4211 	mls	r2, r3, r1, r4
d0011040:	fb03 0316 	mls	r3, r3, r6, r0
d0011044:	9205      	str	r2, [sp, #20]
d0011046:	f8d7 215c 	ldr.w	r2, [r7, #348]	; 0x15c
d001104a:	9306      	str	r3, [sp, #24]
d001104c:	4790      	blx	r2
d001104e:	e608      	b.n	d0010c62 <main+0x166>
d0011050:	f80c 1f01 	strb.w	r1, [ip, #1]!
d0011054:	45e6      	cmp	lr, ip
d0011056:	f104 0408 	add.w	r4, r4, #8
d001105a:	f107 0708 	add.w	r7, r7, #8
d001105e:	f47f ae85 	bne.w	d0010d6c <main+0x270>
d0011062:	e6a6      	b.n	d0010db2 <main+0x2b6>
d0011064:	f06f 0304 	mvn.w	r3, #4
d0011068:	f44f 7a80 	mov.w	sl, #256	; 0x100
d001106c:	9309      	str	r3, [sp, #36]	; 0x24
d001106e:	4b24      	ldr	r3, [pc, #144]	; (d0011100 <main+0x604>)
d0011070:	681b      	ldr	r3, [r3, #0]
d0011072:	459a      	cmp	sl, r3
d0011074:	f47f ae13 	bne.w	d0010c9e <main+0x1a2>
d0011078:	4e22      	ldr	r6, [pc, #136]	; (d0011104 <main+0x608>)
d001107a:	e646      	b.n	d0010d0a <main+0x20e>
d001107c:	4b1b      	ldr	r3, [pc, #108]	; (d00110ec <main+0x5f0>)
d001107e:	491f      	ldr	r1, [pc, #124]	; (d00110fc <main+0x600>)
d0011080:	f8d3 20ec 	ldr.w	r2, [r3, #236]	; 0xec
d0011084:	f1a3 439f 	sub.w	r3, r3, #1333788672	; 0x4f800000
d0011088:	6011      	str	r1, [r2, #0]
d001108a:	f5a3 13a3 	sub.w	r3, r3, #1335296	; 0x146000
d001108e:	e7aa      	b.n	d0010fe6 <main+0x4ea>
d0011090:	9a03      	ldr	r2, [sp, #12]
d0011092:	3101      	adds	r1, #1
d0011094:	9302      	str	r3, [sp, #8]
d0011096:	3a01      	subs	r2, #1
d0011098:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
d001109c:	9303      	str	r3, [sp, #12]
d001109e:	e70b      	b.n	d0010eb8 <main+0x3bc>
d00110a0:	f44f 73a0 	mov.w	r3, #320	; 0x140
d00110a4:	f44f 71a1 	mov.w	r1, #322	; 0x142
d00110a8:	9302      	str	r3, [sp, #8]
d00110aa:	e705      	b.n	d0010eb8 <main+0x3bc>
d00110ac:	9a03      	ldr	r2, [sp, #12]
d00110ae:	3101      	adds	r1, #1
d00110b0:	9302      	str	r3, [sp, #8]
d00110b2:	3201      	adds	r2, #1
d00110b4:	2a40      	cmp	r2, #64	; 0x40
d00110b6:	bfa8      	it	ge
d00110b8:	2240      	movge	r2, #64	; 0x40
d00110ba:	9203      	str	r2, [sp, #12]
d00110bc:	e6fc      	b.n	d0010eb8 <main+0x3bc>
d00110be:	2200      	movs	r2, #0
d00110c0:	4c0a      	ldr	r4, [pc, #40]	; (d00110ec <main+0x5f0>)
d00110c2:	4811      	ldr	r0, [pc, #68]	; (d0011108 <main+0x60c>)
d00110c4:	f8d4 3164 	ldr.w	r3, [r4, #356]	; 0x164
d00110c8:	4611      	mov	r1, r2
d00110ca:	4798      	blx	r3
d00110cc:	f8d4 3170 	ldr.w	r3, [r4, #368]	; 0x170
d00110d0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d00110d2:	2000      	movs	r0, #0
d00110d4:	601a      	str	r2, [r3, #0]
d00110d6:	f20d 5dac 	addw	sp, sp, #1452	; 0x5ac
d00110da:	ecbd 8b02 	vpop	{d8}
d00110de:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00110e2:	2400      	movs	r4, #0
d00110e4:	e5ad      	b.n	d0010c42 <main+0x146>
d00110e6:	bf00      	nop
d00110e8:	d04c8158 	.word	0xd04c8158
d00110ec:	2001f000 	.word	0x2001f000
d00110f0:	d0011150 	.word	0xd0011150
d00110f4:	16c16c17 	.word	0x16c16c17
d00110f8:	d06d9000 	.word	0xd06d9000
d00110fc:	d06b2000 	.word	0xd06b2000
d0011100:	d001114c 	.word	0xd001114c
d0011104:	d04c6298 	.word	0xd04c6298
d0011108:	d0011138 	.word	0xd0011138

d001110c <memcpy>:
d001110c:	440a      	add	r2, r1
d001110e:	4291      	cmp	r1, r2
d0011110:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0011114:	d100      	bne.n	d0011118 <memcpy+0xc>
d0011116:	4770      	bx	lr
d0011118:	b510      	push	{r4, lr}
d001111a:	f811 4b01 	ldrb.w	r4, [r1], #1
d001111e:	f803 4f01 	strb.w	r4, [r3, #1]!
d0011122:	4291      	cmp	r1, r2
d0011124:	d1f9      	bne.n	d001111a <memcpy+0xe>
d0011126:	bd10      	pop	{r4, pc}

d0011128 <strlen>:
d0011128:	4603      	mov	r3, r0
d001112a:	f813 2b01 	ldrb.w	r2, [r3], #1
d001112e:	2a00      	cmp	r2, #0
d0011130:	d1fb      	bne.n	d001112a <strlen+0x2>
d0011132:	1a18      	subs	r0, r3, r0
d0011134:	3801      	subs	r0, #1
d0011136:	4770      	bx	lr
	...

Disassembly of section .init:

d001113c <_init>:
d001113c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d001113e:	bf00      	nop

Disassembly of section .fini:

d0011140 <_fini>:
d0011140:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0011142:	bf00      	nop
