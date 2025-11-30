
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0000010 <applet_entry>:
d0000010:	f001 bd16 	b.w	d0001a40 <main>

d0000014 <memset>:
d0000014:	4402      	add	r2, r0
d0000016:	4603      	mov	r3, r0
d0000018:	4293      	cmp	r3, r2
d000001a:	d100      	bne.n	d000001e <memset+0xa>
d000001c:	4770      	bx	lr
d000001e:	f803 1b01 	strb.w	r1, [r3], #1
d0000022:	e7f9      	b.n	d0000018 <memset+0x4>

d0000024 <KB_ISR>:
d0000024:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0000028:	7802      	ldrb	r2, [r0, #0]
d000002a:	b085      	sub	sp, #20
d000002c:	4bc7      	ldr	r3, [pc, #796]	; (d000034c <KB_ISR+0x328>)
d000002e:	f002 0222 	and.w	r2, r2, #34	; 0x22
d0000032:	49c7      	ldr	r1, [pc, #796]	; (d0000350 <KB_ISR+0x32c>)
d0000034:	f8df c334 	ldr.w	ip, [pc, #820]	; d000036c <KB_ISR+0x348>
d0000038:	2a00      	cmp	r2, #0
d000003a:	795a      	ldrb	r2, [r3, #5]
d000003c:	f89c 7000 	ldrb.w	r7, [ip]
d0000040:	9201      	str	r2, [sp, #4]
d0000042:	bf14      	ite	ne
d0000044:	2201      	movne	r2, #1
d0000046:	2200      	moveq	r2, #0
d0000048:	f8df b324 	ldr.w	fp, [pc, #804]	; d0000370 <KB_ISR+0x34c>
d000004c:	791e      	ldrb	r6, [r3, #4]
d000004e:	700a      	strb	r2, [r1, #0]
d0000050:	f890 c002 	ldrb.w	ip, [r0, #2]
d0000054:	4abf      	ldr	r2, [pc, #764]	; (d0000354 <KB_ISR+0x330>)
d0000056:	789d      	ldrb	r5, [r3, #2]
d0000058:	78dc      	ldrb	r4, [r3, #3]
d000005a:	f893 9006 	ldrb.w	r9, [r3, #6]
d000005e:	f893 a007 	ldrb.w	sl, [r3, #7]
d0000062:	f89b 1000 	ldrb.w	r1, [fp]
d0000066:	9600      	str	r6, [sp, #0]
d0000068:	9702      	str	r7, [sp, #8]
d000006a:	f882 c000 	strb.w	ip, [r2]
d000006e:	d15e      	bne.n	d000012e <KB_ISR+0x10a>
d0000070:	f1bc 0f00 	cmp.w	ip, #0
d0000074:	f040 8096 	bne.w	d00001a4 <KB_ISR+0x180>
d0000078:	f8df c2f8 	ldr.w	ip, [pc, #760]	; d0000374 <KB_ISR+0x350>
d000007c:	f890 e003 	ldrb.w	lr, [r0, #3]
d0000080:	f882 e001 	strb.w	lr, [r2, #1]
d0000084:	f1be 0f00 	cmp.w	lr, #0
d0000088:	f040 8363 	bne.w	d0000752 <KB_ISR+0x72e>
d000008c:	f890 e004 	ldrb.w	lr, [r0, #4]
d0000090:	f882 e002 	strb.w	lr, [r2, #2]
d0000094:	f1be 0f00 	cmp.w	lr, #0
d0000098:	f040 8318 	bne.w	d00006cc <KB_ISR+0x6a8>
d000009c:	f890 e005 	ldrb.w	lr, [r0, #5]
d00000a0:	f882 e003 	strb.w	lr, [r2, #3]
d00000a4:	f1be 0f00 	cmp.w	lr, #0
d00000a8:	f040 82c2 	bne.w	d0000630 <KB_ISR+0x60c>
d00000ac:	f890 e006 	ldrb.w	lr, [r0, #6]
d00000b0:	f882 e004 	strb.w	lr, [r2, #4]
d00000b4:	f1be 0f00 	cmp.w	lr, #0
d00000b8:	f040 8276 	bne.w	d00005a8 <KB_ISR+0x584>
d00000bc:	f890 e007 	ldrb.w	lr, [r0, #7]
d00000c0:	f882 e005 	strb.w	lr, [r2, #5]
d00000c4:	f1be 0f00 	cmp.w	lr, #0
d00000c8:	d05e      	beq.n	d0000188 <KB_ISR+0x164>
d00000ca:	4575      	cmp	r5, lr
d00000cc:	d05c      	beq.n	d0000188 <KB_ISR+0x164>
d00000ce:	4574      	cmp	r4, lr
d00000d0:	d05a      	beq.n	d0000188 <KB_ISR+0x164>
d00000d2:	9a00      	ldr	r2, [sp, #0]
d00000d4:	4572      	cmp	r2, lr
d00000d6:	d057      	beq.n	d0000188 <KB_ISR+0x164>
d00000d8:	9a01      	ldr	r2, [sp, #4]
d00000da:	4572      	cmp	r2, lr
d00000dc:	d054      	beq.n	d0000188 <KB_ISR+0x164>
d00000de:	45ce      	cmp	lr, r9
d00000e0:	d052      	beq.n	d0000188 <KB_ISR+0x164>
d00000e2:	45d6      	cmp	lr, sl
d00000e4:	d050      	beq.n	d0000188 <KB_ISR+0x164>
d00000e6:	f1be 0f2a 	cmp.w	lr, #42	; 0x2a
d00000ea:	f000 8376 	beq.w	d00007da <KB_ISR+0x7b6>
d00000ee:	1c4a      	adds	r2, r1, #1
d00000f0:	9c02      	ldr	r4, [sp, #8]
d00000f2:	f002 0207 	and.w	r2, r2, #7
d00000f6:	4294      	cmp	r4, r2
d00000f8:	d003      	beq.n	d0000102 <KB_ISR+0xde>
d00000fa:	4c97      	ldr	r4, [pc, #604]	; (d0000358 <KB_ISR+0x334>)
d00000fc:	f804 e001 	strb.w	lr, [r4, r1]
d0000100:	4611      	mov	r1, r2
d0000102:	f1be 0f28 	cmp.w	lr, #40	; 0x28
d0000106:	f000 8450 	beq.w	d00009aa <KB_ISR+0x986>
d000010a:	4a94      	ldr	r2, [pc, #592]	; (d000035c <KB_ISR+0x338>)
d000010c:	f812 200e 	ldrb.w	r2, [r2, lr]
d0000110:	b3d2      	cbz	r2, d0000188 <KB_ISR+0x164>
d0000112:	4e93      	ldr	r6, [pc, #588]	; (d0000360 <KB_ISR+0x33c>)
d0000114:	7834      	ldrb	r4, [r6, #0]
d0000116:	2c3e      	cmp	r4, #62	; 0x3e
d0000118:	d836      	bhi.n	d0000188 <KB_ISR+0x164>
d000011a:	1c65      	adds	r5, r4, #1
d000011c:	4f91      	ldr	r7, [pc, #580]	; (d0000364 <KB_ISR+0x340>)
d000011e:	f04f 0e00 	mov.w	lr, #0
d0000122:	b2ed      	uxtb	r5, r5
d0000124:	553a      	strb	r2, [r7, r4]
d0000126:	7035      	strb	r5, [r6, #0]
d0000128:	f807 e005 	strb.w	lr, [r7, r5]
d000012c:	e02c      	b.n	d0000188 <KB_ISR+0x164>
d000012e:	f1bc 0f00 	cmp.w	ip, #0
d0000132:	d17d      	bne.n	d0000230 <KB_ISR+0x20c>
d0000134:	f8df c23c 	ldr.w	ip, [pc, #572]	; d0000374 <KB_ISR+0x350>
d0000138:	f890 e003 	ldrb.w	lr, [r0, #3]
d000013c:	f882 e001 	strb.w	lr, [r2, #1]
d0000140:	f1be 0f00 	cmp.w	lr, #0
d0000144:	f040 81ea 	bne.w	d000051c <KB_ISR+0x4f8>
d0000148:	f890 e004 	ldrb.w	lr, [r0, #4]
d000014c:	f882 e002 	strb.w	lr, [r2, #2]
d0000150:	f1be 0f00 	cmp.w	lr, #0
d0000154:	f040 819c 	bne.w	d0000490 <KB_ISR+0x46c>
d0000158:	f890 e005 	ldrb.w	lr, [r0, #5]
d000015c:	f882 e003 	strb.w	lr, [r2, #3]
d0000160:	f1be 0f00 	cmp.w	lr, #0
d0000164:	f040 814e 	bne.w	d0000404 <KB_ISR+0x3e0>
d0000168:	f890 e006 	ldrb.w	lr, [r0, #6]
d000016c:	f882 e004 	strb.w	lr, [r2, #4]
d0000170:	f1be 0f00 	cmp.w	lr, #0
d0000174:	f040 8100 	bne.w	d0000378 <KB_ISR+0x354>
d0000178:	f890 e007 	ldrb.w	lr, [r0, #7]
d000017c:	f882 e005 	strb.w	lr, [r2, #5]
d0000180:	f1be 0f00 	cmp.w	lr, #0
d0000184:	f040 80a6 	bne.w	d00002d4 <KB_ISR+0x2b0>
d0000188:	6804      	ldr	r4, [r0, #0]
d000018a:	f8dc 2000 	ldr.w	r2, [ip]
d000018e:	6840      	ldr	r0, [r0, #4]
d0000190:	f88b 1000 	strb.w	r1, [fp]
d0000194:	601c      	str	r4, [r3, #0]
d0000196:	6058      	str	r0, [r3, #4]
d0000198:	2a00      	cmp	r2, #0
d000019a:	f040 808e 	bne.w	d00002ba <KB_ISR+0x296>
d000019e:	b005      	add	sp, #20
d00001a0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00001a4:	4565      	cmp	r5, ip
d00001a6:	f43f af67 	beq.w	d0000078 <KB_ISR+0x54>
d00001aa:	4564      	cmp	r4, ip
d00001ac:	f43f af64 	beq.w	d0000078 <KB_ISR+0x54>
d00001b0:	4566      	cmp	r6, ip
d00001b2:	f43f af61 	beq.w	d0000078 <KB_ISR+0x54>
d00001b6:	9e01      	ldr	r6, [sp, #4]
d00001b8:	4566      	cmp	r6, ip
d00001ba:	f43f af5d 	beq.w	d0000078 <KB_ISR+0x54>
d00001be:	45e1      	cmp	r9, ip
d00001c0:	f43f af5a 	beq.w	d0000078 <KB_ISR+0x54>
d00001c4:	45e2      	cmp	sl, ip
d00001c6:	f43f af57 	beq.w	d0000078 <KB_ISR+0x54>
d00001ca:	f1bc 0f2a 	cmp.w	ip, #42	; 0x2a
d00001ce:	f000 8360 	beq.w	d0000892 <KB_ISR+0x86e>
d00001d2:	f101 0e01 	add.w	lr, r1, #1
d00001d6:	f00e 0e07 	and.w	lr, lr, #7
d00001da:	4577      	cmp	r7, lr
d00001dc:	d004      	beq.n	d00001e8 <KB_ISR+0x1c4>
d00001de:	f8df 8178 	ldr.w	r8, [pc, #376]	; d0000358 <KB_ISR+0x334>
d00001e2:	f808 c001 	strb.w	ip, [r8, r1]
d00001e6:	4671      	mov	r1, lr
d00001e8:	f1bc 0f28 	cmp.w	ip, #40	; 0x28
d00001ec:	f000 83e3 	beq.w	d00009b6 <KB_ISR+0x992>
d00001f0:	f8df e168 	ldr.w	lr, [pc, #360]	; d000035c <KB_ISR+0x338>
d00001f4:	f81e 800c 	ldrb.w	r8, [lr, ip]
d00001f8:	f8df c178 	ldr.w	ip, [pc, #376]	; d0000374 <KB_ISR+0x350>
d00001fc:	f1b8 0f00 	cmp.w	r8, #0
d0000200:	f43f af3c 	beq.w	d000007c <KB_ISR+0x58>
d0000204:	4f56      	ldr	r7, [pc, #344]	; (d0000360 <KB_ISR+0x33c>)
d0000206:	f897 e000 	ldrb.w	lr, [r7]
d000020a:	f1be 0f3e 	cmp.w	lr, #62	; 0x3e
d000020e:	f63f af35 	bhi.w	d000007c <KB_ISR+0x58>
d0000212:	f10e 0601 	add.w	r6, lr, #1
d0000216:	b2f7      	uxtb	r7, r6
d0000218:	463e      	mov	r6, r7
d000021a:	4f52      	ldr	r7, [pc, #328]	; (d0000364 <KB_ISR+0x340>)
d000021c:	f807 800e 	strb.w	r8, [r7, lr]
d0000220:	f04f 0e00 	mov.w	lr, #0
d0000224:	4f4e      	ldr	r7, [pc, #312]	; (d0000360 <KB_ISR+0x33c>)
d0000226:	703e      	strb	r6, [r7, #0]
d0000228:	4f4e      	ldr	r7, [pc, #312]	; (d0000364 <KB_ISR+0x340>)
d000022a:	f807 e006 	strb.w	lr, [r7, r6]
d000022e:	e725      	b.n	d000007c <KB_ISR+0x58>
d0000230:	4565      	cmp	r5, ip
d0000232:	f43f af7f 	beq.w	d0000134 <KB_ISR+0x110>
d0000236:	4564      	cmp	r4, ip
d0000238:	f43f af7c 	beq.w	d0000134 <KB_ISR+0x110>
d000023c:	4566      	cmp	r6, ip
d000023e:	f43f af79 	beq.w	d0000134 <KB_ISR+0x110>
d0000242:	9e01      	ldr	r6, [sp, #4]
d0000244:	4566      	cmp	r6, ip
d0000246:	f43f af75 	beq.w	d0000134 <KB_ISR+0x110>
d000024a:	45e1      	cmp	r9, ip
d000024c:	f43f af72 	beq.w	d0000134 <KB_ISR+0x110>
d0000250:	45e2      	cmp	sl, ip
d0000252:	f43f af6f 	beq.w	d0000134 <KB_ISR+0x110>
d0000256:	f1bc 0f2a 	cmp.w	ip, #42	; 0x2a
d000025a:	f000 8345 	beq.w	d00008e8 <KB_ISR+0x8c4>
d000025e:	f101 0e01 	add.w	lr, r1, #1
d0000262:	f00e 0e07 	and.w	lr, lr, #7
d0000266:	4577      	cmp	r7, lr
d0000268:	d004      	beq.n	d0000274 <KB_ISR+0x250>
d000026a:	f8df 80ec 	ldr.w	r8, [pc, #236]	; d0000358 <KB_ISR+0x334>
d000026e:	f808 c001 	strb.w	ip, [r8, r1]
d0000272:	4671      	mov	r1, lr
d0000274:	f1bc 0f28 	cmp.w	ip, #40	; 0x28
d0000278:	f000 83ac 	beq.w	d00009d4 <KB_ISR+0x9b0>
d000027c:	f8df e0e8 	ldr.w	lr, [pc, #232]	; d0000368 <KB_ISR+0x344>
d0000280:	f81e 700c 	ldrb.w	r7, [lr, ip]
d0000284:	2f00      	cmp	r7, #0
d0000286:	f43f af55 	beq.w	d0000134 <KB_ISR+0x110>
d000028a:	f8df 80d4 	ldr.w	r8, [pc, #212]	; d0000360 <KB_ISR+0x33c>
d000028e:	f898 c000 	ldrb.w	ip, [r8]
d0000292:	f1bc 0f3e 	cmp.w	ip, #62	; 0x3e
d0000296:	f63f af4d 	bhi.w	d0000134 <KB_ISR+0x110>
d000029a:	f10c 0e01 	add.w	lr, ip, #1
d000029e:	4e31      	ldr	r6, [pc, #196]	; (d0000364 <KB_ISR+0x340>)
d00002a0:	fa5f fe8e 	uxtb.w	lr, lr
d00002a4:	f806 700c 	strb.w	r7, [r6, ip]
d00002a8:	f04f 0700 	mov.w	r7, #0
d00002ac:	f8df c0c4 	ldr.w	ip, [pc, #196]	; d0000374 <KB_ISR+0x350>
d00002b0:	f888 e000 	strb.w	lr, [r8]
d00002b4:	f806 700e 	strb.w	r7, [r6, lr]
d00002b8:	e73e      	b.n	d0000138 <KB_ISR+0x114>
d00002ba:	2400      	movs	r4, #0
d00002bc:	2240      	movs	r2, #64	; 0x40
d00002be:	4829      	ldr	r0, [pc, #164]	; (d0000364 <KB_ISR+0x340>)
d00002c0:	4621      	mov	r1, r4
d00002c2:	f8cc 4000 	str.w	r4, [ip]
d00002c6:	f7ff fea5 	bl	d0000014 <memset>
d00002ca:	4b25      	ldr	r3, [pc, #148]	; (d0000360 <KB_ISR+0x33c>)
d00002cc:	701c      	strb	r4, [r3, #0]
d00002ce:	b005      	add	sp, #20
d00002d0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00002d4:	45ae      	cmp	lr, r5
d00002d6:	f43f af57 	beq.w	d0000188 <KB_ISR+0x164>
d00002da:	45a6      	cmp	lr, r4
d00002dc:	f43f af54 	beq.w	d0000188 <KB_ISR+0x164>
d00002e0:	9a00      	ldr	r2, [sp, #0]
d00002e2:	4596      	cmp	lr, r2
d00002e4:	f43f af50 	beq.w	d0000188 <KB_ISR+0x164>
d00002e8:	9a01      	ldr	r2, [sp, #4]
d00002ea:	4596      	cmp	lr, r2
d00002ec:	f43f af4c 	beq.w	d0000188 <KB_ISR+0x164>
d00002f0:	45ce      	cmp	lr, r9
d00002f2:	f43f af49 	beq.w	d0000188 <KB_ISR+0x164>
d00002f6:	45d6      	cmp	lr, sl
d00002f8:	f43f af46 	beq.w	d0000188 <KB_ISR+0x164>
d00002fc:	f1be 0f2a 	cmp.w	lr, #42	; 0x2a
d0000300:	f000 826b 	beq.w	d00007da <KB_ISR+0x7b6>
d0000304:	1c4a      	adds	r2, r1, #1
d0000306:	9c02      	ldr	r4, [sp, #8]
d0000308:	f002 0207 	and.w	r2, r2, #7
d000030c:	42a2      	cmp	r2, r4
d000030e:	d003      	beq.n	d0000318 <KB_ISR+0x2f4>
d0000310:	4c11      	ldr	r4, [pc, #68]	; (d0000358 <KB_ISR+0x334>)
d0000312:	f804 e001 	strb.w	lr, [r4, r1]
d0000316:	4611      	mov	r1, r2
d0000318:	f1be 0f28 	cmp.w	lr, #40	; 0x28
d000031c:	f000 8370 	beq.w	d0000a00 <KB_ISR+0x9dc>
d0000320:	4a11      	ldr	r2, [pc, #68]	; (d0000368 <KB_ISR+0x344>)
d0000322:	f812 600e 	ldrb.w	r6, [r2, lr]
d0000326:	2e00      	cmp	r6, #0
d0000328:	f43f af2e 	beq.w	d0000188 <KB_ISR+0x164>
d000032c:	4d0c      	ldr	r5, [pc, #48]	; (d0000360 <KB_ISR+0x33c>)
d000032e:	782a      	ldrb	r2, [r5, #0]
d0000330:	2a3e      	cmp	r2, #62	; 0x3e
d0000332:	f63f af29 	bhi.w	d0000188 <KB_ISR+0x164>
d0000336:	1c54      	adds	r4, r2, #1
d0000338:	4f0a      	ldr	r7, [pc, #40]	; (d0000364 <KB_ISR+0x340>)
d000033a:	f04f 0e00 	mov.w	lr, #0
d000033e:	b2e4      	uxtb	r4, r4
d0000340:	54be      	strb	r6, [r7, r2]
d0000342:	702c      	strb	r4, [r5, #0]
d0000344:	f807 e004 	strb.w	lr, [r7, r4]
d0000348:	e71e      	b.n	d0000188 <KB_ISR+0x164>
d000034a:	bf00      	nop
d000034c:	d0002294 	.word	0xd0002294
d0000350:	d0002290 	.word	0xd0002290
d0000354:	d0002280 	.word	0xd0002280
d0000358:	d0002274 	.word	0xd0002274
d000035c:	d0001ba8 	.word	0xd0001ba8
d0000360:	d000228c 	.word	0xd000228c
d0000364:	d000229c 	.word	0xd000229c
d0000368:	d0001c28 	.word	0xd0001c28
d000036c:	d000227c 	.word	0xd000227c
d0000370:	d000227d 	.word	0xd000227d
d0000374:	d0002288 	.word	0xd0002288
d0000378:	4575      	cmp	r5, lr
d000037a:	f43f aefd 	beq.w	d0000178 <KB_ISR+0x154>
d000037e:	4574      	cmp	r4, lr
d0000380:	f43f aefa 	beq.w	d0000178 <KB_ISR+0x154>
d0000384:	9e00      	ldr	r6, [sp, #0]
d0000386:	4576      	cmp	r6, lr
d0000388:	f43f aef6 	beq.w	d0000178 <KB_ISR+0x154>
d000038c:	9e01      	ldr	r6, [sp, #4]
d000038e:	4576      	cmp	r6, lr
d0000390:	f43f aef2 	beq.w	d0000178 <KB_ISR+0x154>
d0000394:	45f1      	cmp	r9, lr
d0000396:	f43f aeef 	beq.w	d0000178 <KB_ISR+0x154>
d000039a:	45f2      	cmp	sl, lr
d000039c:	f43f aeec 	beq.w	d0000178 <KB_ISR+0x154>
d00003a0:	f1be 0f2a 	cmp.w	lr, #42	; 0x2a
d00003a4:	f000 82e0 	beq.w	d0000968 <KB_ISR+0x944>
d00003a8:	f101 0801 	add.w	r8, r1, #1
d00003ac:	9f02      	ldr	r7, [sp, #8]
d00003ae:	f008 0807 	and.w	r8, r8, #7
d00003b2:	4547      	cmp	r7, r8
d00003b4:	d003      	beq.n	d00003be <KB_ISR+0x39a>
d00003b6:	4fc0      	ldr	r7, [pc, #768]	; (d00006b8 <KB_ISR+0x694>)
d00003b8:	f807 e001 	strb.w	lr, [r7, r1]
d00003bc:	4641      	mov	r1, r8
d00003be:	f1be 0f28 	cmp.w	lr, #40	; 0x28
d00003c2:	f000 82e6 	beq.w	d0000992 <KB_ISR+0x96e>
d00003c6:	f8df 82fc 	ldr.w	r8, [pc, #764]	; d00006c4 <KB_ISR+0x6a0>
d00003ca:	f818 700e 	ldrb.w	r7, [r8, lr]
d00003ce:	9703      	str	r7, [sp, #12]
d00003d0:	2f00      	cmp	r7, #0
d00003d2:	f43f aed1 	beq.w	d0000178 <KB_ISR+0x154>
d00003d6:	4fb9      	ldr	r7, [pc, #740]	; (d00006bc <KB_ISR+0x698>)
d00003d8:	f897 e000 	ldrb.w	lr, [r7]
d00003dc:	f1be 0f3e 	cmp.w	lr, #62	; 0x3e
d00003e0:	f63f aeca 	bhi.w	d0000178 <KB_ISR+0x154>
d00003e4:	4eb6      	ldr	r6, [pc, #728]	; (d00006c0 <KB_ISR+0x69c>)
d00003e6:	f10e 0801 	add.w	r8, lr, #1
d00003ea:	9f03      	ldr	r7, [sp, #12]
d00003ec:	fa5f f888 	uxtb.w	r8, r8
d00003f0:	f806 700e 	strb.w	r7, [r6, lr]
d00003f4:	4fb1      	ldr	r7, [pc, #708]	; (d00006bc <KB_ISR+0x698>)
d00003f6:	f887 8000 	strb.w	r8, [r7]
d00003fa:	f04f 0700 	mov.w	r7, #0
d00003fe:	f806 7008 	strb.w	r7, [r6, r8]
d0000402:	e6b9      	b.n	d0000178 <KB_ISR+0x154>
d0000404:	4575      	cmp	r5, lr
d0000406:	f43f aeaf 	beq.w	d0000168 <KB_ISR+0x144>
d000040a:	4574      	cmp	r4, lr
d000040c:	f43f aeac 	beq.w	d0000168 <KB_ISR+0x144>
d0000410:	9e00      	ldr	r6, [sp, #0]
d0000412:	4576      	cmp	r6, lr
d0000414:	f43f aea8 	beq.w	d0000168 <KB_ISR+0x144>
d0000418:	9e01      	ldr	r6, [sp, #4]
d000041a:	4576      	cmp	r6, lr
d000041c:	f43f aea4 	beq.w	d0000168 <KB_ISR+0x144>
d0000420:	45f1      	cmp	r9, lr
d0000422:	f43f aea1 	beq.w	d0000168 <KB_ISR+0x144>
d0000426:	45f2      	cmp	sl, lr
d0000428:	f43f ae9e 	beq.w	d0000168 <KB_ISR+0x144>
d000042c:	f1be 0f2a 	cmp.w	lr, #42	; 0x2a
d0000430:	f000 8246 	beq.w	d00008c0 <KB_ISR+0x89c>
d0000434:	f101 0801 	add.w	r8, r1, #1
d0000438:	9f02      	ldr	r7, [sp, #8]
d000043a:	f008 0807 	and.w	r8, r8, #7
d000043e:	4547      	cmp	r7, r8
d0000440:	d003      	beq.n	d000044a <KB_ISR+0x426>
d0000442:	4f9d      	ldr	r7, [pc, #628]	; (d00006b8 <KB_ISR+0x694>)
d0000444:	f807 e001 	strb.w	lr, [r7, r1]
d0000448:	4641      	mov	r1, r8
d000044a:	f1be 0f28 	cmp.w	lr, #40	; 0x28
d000044e:	f000 82bb 	beq.w	d00009c8 <KB_ISR+0x9a4>
d0000452:	f8df 8270 	ldr.w	r8, [pc, #624]	; d00006c4 <KB_ISR+0x6a0>
d0000456:	f818 700e 	ldrb.w	r7, [r8, lr]
d000045a:	9703      	str	r7, [sp, #12]
d000045c:	2f00      	cmp	r7, #0
d000045e:	f43f ae83 	beq.w	d0000168 <KB_ISR+0x144>
d0000462:	4f96      	ldr	r7, [pc, #600]	; (d00006bc <KB_ISR+0x698>)
d0000464:	f897 e000 	ldrb.w	lr, [r7]
d0000468:	f1be 0f3e 	cmp.w	lr, #62	; 0x3e
d000046c:	f63f ae7c 	bhi.w	d0000168 <KB_ISR+0x144>
d0000470:	4e93      	ldr	r6, [pc, #588]	; (d00006c0 <KB_ISR+0x69c>)
d0000472:	f10e 0801 	add.w	r8, lr, #1
d0000476:	9f03      	ldr	r7, [sp, #12]
d0000478:	fa5f f888 	uxtb.w	r8, r8
d000047c:	f806 700e 	strb.w	r7, [r6, lr]
d0000480:	4f8e      	ldr	r7, [pc, #568]	; (d00006bc <KB_ISR+0x698>)
d0000482:	f887 8000 	strb.w	r8, [r7]
d0000486:	f04f 0700 	mov.w	r7, #0
d000048a:	f806 7008 	strb.w	r7, [r6, r8]
d000048e:	e66b      	b.n	d0000168 <KB_ISR+0x144>
d0000490:	4575      	cmp	r5, lr
d0000492:	f43f ae61 	beq.w	d0000158 <KB_ISR+0x134>
d0000496:	4574      	cmp	r4, lr
d0000498:	f43f ae5e 	beq.w	d0000158 <KB_ISR+0x134>
d000049c:	9e00      	ldr	r6, [sp, #0]
d000049e:	4576      	cmp	r6, lr
d00004a0:	f43f ae5a 	beq.w	d0000158 <KB_ISR+0x134>
d00004a4:	9e01      	ldr	r6, [sp, #4]
d00004a6:	4576      	cmp	r6, lr
d00004a8:	f43f ae56 	beq.w	d0000158 <KB_ISR+0x134>
d00004ac:	45f1      	cmp	r9, lr
d00004ae:	f43f ae53 	beq.w	d0000158 <KB_ISR+0x134>
d00004b2:	45f2      	cmp	sl, lr
d00004b4:	f43f ae50 	beq.w	d0000158 <KB_ISR+0x134>
d00004b8:	f1be 0f2a 	cmp.w	lr, #42	; 0x2a
d00004bc:	f000 823f 	beq.w	d000093e <KB_ISR+0x91a>
d00004c0:	f101 0801 	add.w	r8, r1, #1
d00004c4:	9f02      	ldr	r7, [sp, #8]
d00004c6:	f008 0807 	and.w	r8, r8, #7
d00004ca:	4547      	cmp	r7, r8
d00004cc:	d003      	beq.n	d00004d6 <KB_ISR+0x4b2>
d00004ce:	4f7a      	ldr	r7, [pc, #488]	; (d00006b8 <KB_ISR+0x694>)
d00004d0:	f807 e001 	strb.w	lr, [r7, r1]
d00004d4:	4641      	mov	r1, r8
d00004d6:	f1be 0f28 	cmp.w	lr, #40	; 0x28
d00004da:	f000 8260 	beq.w	d000099e <KB_ISR+0x97a>
d00004de:	f8df 81e4 	ldr.w	r8, [pc, #484]	; d00006c4 <KB_ISR+0x6a0>
d00004e2:	f818 700e 	ldrb.w	r7, [r8, lr]
d00004e6:	9703      	str	r7, [sp, #12]
d00004e8:	2f00      	cmp	r7, #0
d00004ea:	f43f ae35 	beq.w	d0000158 <KB_ISR+0x134>
d00004ee:	4f73      	ldr	r7, [pc, #460]	; (d00006bc <KB_ISR+0x698>)
d00004f0:	f897 e000 	ldrb.w	lr, [r7]
d00004f4:	f1be 0f3e 	cmp.w	lr, #62	; 0x3e
d00004f8:	f63f ae2e 	bhi.w	d0000158 <KB_ISR+0x134>
d00004fc:	4e70      	ldr	r6, [pc, #448]	; (d00006c0 <KB_ISR+0x69c>)
d00004fe:	f10e 0801 	add.w	r8, lr, #1
d0000502:	9f03      	ldr	r7, [sp, #12]
d0000504:	fa5f f888 	uxtb.w	r8, r8
d0000508:	f806 700e 	strb.w	r7, [r6, lr]
d000050c:	4f6b      	ldr	r7, [pc, #428]	; (d00006bc <KB_ISR+0x698>)
d000050e:	f887 8000 	strb.w	r8, [r7]
d0000512:	f04f 0700 	mov.w	r7, #0
d0000516:	f806 7008 	strb.w	r7, [r6, r8]
d000051a:	e61d      	b.n	d0000158 <KB_ISR+0x134>
d000051c:	4575      	cmp	r5, lr
d000051e:	f43f ae13 	beq.w	d0000148 <KB_ISR+0x124>
d0000522:	4574      	cmp	r4, lr
d0000524:	f43f ae10 	beq.w	d0000148 <KB_ISR+0x124>
d0000528:	9e00      	ldr	r6, [sp, #0]
d000052a:	4576      	cmp	r6, lr
d000052c:	f43f ae0c 	beq.w	d0000148 <KB_ISR+0x124>
d0000530:	9e01      	ldr	r6, [sp, #4]
d0000532:	4576      	cmp	r6, lr
d0000534:	f43f ae08 	beq.w	d0000148 <KB_ISR+0x124>
d0000538:	45f1      	cmp	r9, lr
d000053a:	f43f ae05 	beq.w	d0000148 <KB_ISR+0x124>
d000053e:	45f2      	cmp	sl, lr
d0000540:	f43f ae02 	beq.w	d0000148 <KB_ISR+0x124>
d0000544:	f1be 0f2a 	cmp.w	lr, #42	; 0x2a
d0000548:	f000 818f 	beq.w	d000086a <KB_ISR+0x846>
d000054c:	f101 0801 	add.w	r8, r1, #1
d0000550:	9f02      	ldr	r7, [sp, #8]
d0000552:	f008 0807 	and.w	r8, r8, #7
d0000556:	4547      	cmp	r7, r8
d0000558:	d003      	beq.n	d0000562 <KB_ISR+0x53e>
d000055a:	4f57      	ldr	r7, [pc, #348]	; (d00006b8 <KB_ISR+0x694>)
d000055c:	f807 e001 	strb.w	lr, [r7, r1]
d0000560:	4641      	mov	r1, r8
d0000562:	f1be 0f28 	cmp.w	lr, #40	; 0x28
d0000566:	f000 8250 	beq.w	d0000a0a <KB_ISR+0x9e6>
d000056a:	f8df 8158 	ldr.w	r8, [pc, #344]	; d00006c4 <KB_ISR+0x6a0>
d000056e:	f818 700e 	ldrb.w	r7, [r8, lr]
d0000572:	9703      	str	r7, [sp, #12]
d0000574:	2f00      	cmp	r7, #0
d0000576:	f43f ade7 	beq.w	d0000148 <KB_ISR+0x124>
d000057a:	4f50      	ldr	r7, [pc, #320]	; (d00006bc <KB_ISR+0x698>)
d000057c:	f897 e000 	ldrb.w	lr, [r7]
d0000580:	f1be 0f3e 	cmp.w	lr, #62	; 0x3e
d0000584:	f63f ade0 	bhi.w	d0000148 <KB_ISR+0x124>
d0000588:	4e4d      	ldr	r6, [pc, #308]	; (d00006c0 <KB_ISR+0x69c>)
d000058a:	f10e 0801 	add.w	r8, lr, #1
d000058e:	9f03      	ldr	r7, [sp, #12]
d0000590:	fa5f f888 	uxtb.w	r8, r8
d0000594:	f806 700e 	strb.w	r7, [r6, lr]
d0000598:	4f48      	ldr	r7, [pc, #288]	; (d00006bc <KB_ISR+0x698>)
d000059a:	f887 8000 	strb.w	r8, [r7]
d000059e:	f04f 0700 	mov.w	r7, #0
d00005a2:	f806 7008 	strb.w	r7, [r6, r8]
d00005a6:	e5cf      	b.n	d0000148 <KB_ISR+0x124>
d00005a8:	4575      	cmp	r5, lr
d00005aa:	f43f ad87 	beq.w	d00000bc <KB_ISR+0x98>
d00005ae:	4574      	cmp	r4, lr
d00005b0:	f43f ad84 	beq.w	d00000bc <KB_ISR+0x98>
d00005b4:	9e00      	ldr	r6, [sp, #0]
d00005b6:	4576      	cmp	r6, lr
d00005b8:	f43f ad80 	beq.w	d00000bc <KB_ISR+0x98>
d00005bc:	9e01      	ldr	r6, [sp, #4]
d00005be:	4576      	cmp	r6, lr
d00005c0:	f43f ad7c 	beq.w	d00000bc <KB_ISR+0x98>
d00005c4:	45f1      	cmp	r9, lr
d00005c6:	f43f ad79 	beq.w	d00000bc <KB_ISR+0x98>
d00005ca:	45f2      	cmp	sl, lr
d00005cc:	f43f ad76 	beq.w	d00000bc <KB_ISR+0x98>
d00005d0:	f1be 0f2a 	cmp.w	lr, #42	; 0x2a
d00005d4:	f000 8135 	beq.w	d0000842 <KB_ISR+0x81e>
d00005d8:	f101 0801 	add.w	r8, r1, #1
d00005dc:	9f02      	ldr	r7, [sp, #8]
d00005de:	f008 0807 	and.w	r8, r8, #7
d00005e2:	4547      	cmp	r7, r8
d00005e4:	d003      	beq.n	d00005ee <KB_ISR+0x5ca>
d00005e6:	4f34      	ldr	r7, [pc, #208]	; (d00006b8 <KB_ISR+0x694>)
d00005e8:	f807 e001 	strb.w	lr, [r7, r1]
d00005ec:	4641      	mov	r1, r8
d00005ee:	f1be 0f28 	cmp.w	lr, #40	; 0x28
d00005f2:	f000 8210 	beq.w	d0000a16 <KB_ISR+0x9f2>
d00005f6:	f8df 80d0 	ldr.w	r8, [pc, #208]	; d00006c8 <KB_ISR+0x6a4>
d00005fa:	f818 800e 	ldrb.w	r8, [r8, lr]
d00005fe:	f1b8 0f00 	cmp.w	r8, #0
d0000602:	f43f ad5b 	beq.w	d00000bc <KB_ISR+0x98>
d0000606:	4f2d      	ldr	r7, [pc, #180]	; (d00006bc <KB_ISR+0x698>)
d0000608:	f897 e000 	ldrb.w	lr, [r7]
d000060c:	f1be 0f3e 	cmp.w	lr, #62	; 0x3e
d0000610:	f63f ad54 	bhi.w	d00000bc <KB_ISR+0x98>
d0000614:	f10e 0601 	add.w	r6, lr, #1
d0000618:	4f29      	ldr	r7, [pc, #164]	; (d00006c0 <KB_ISR+0x69c>)
d000061a:	b2f6      	uxtb	r6, r6
d000061c:	f807 800e 	strb.w	r8, [r7, lr]
d0000620:	4f26      	ldr	r7, [pc, #152]	; (d00006bc <KB_ISR+0x698>)
d0000622:	f04f 0e00 	mov.w	lr, #0
d0000626:	703e      	strb	r6, [r7, #0]
d0000628:	4f25      	ldr	r7, [pc, #148]	; (d00006c0 <KB_ISR+0x69c>)
d000062a:	f807 e006 	strb.w	lr, [r7, r6]
d000062e:	e545      	b.n	d00000bc <KB_ISR+0x98>
d0000630:	4575      	cmp	r5, lr
d0000632:	f43f ad3b 	beq.w	d00000ac <KB_ISR+0x88>
d0000636:	4574      	cmp	r4, lr
d0000638:	f43f ad38 	beq.w	d00000ac <KB_ISR+0x88>
d000063c:	9e00      	ldr	r6, [sp, #0]
d000063e:	4576      	cmp	r6, lr
d0000640:	f43f ad34 	beq.w	d00000ac <KB_ISR+0x88>
d0000644:	9e01      	ldr	r6, [sp, #4]
d0000646:	4576      	cmp	r6, lr
d0000648:	f43f ad30 	beq.w	d00000ac <KB_ISR+0x88>
d000064c:	45f1      	cmp	r9, lr
d000064e:	f43f ad2d 	beq.w	d00000ac <KB_ISR+0x88>
d0000652:	45f2      	cmp	sl, lr
d0000654:	f43f ad2a 	beq.w	d00000ac <KB_ISR+0x88>
d0000658:	f1be 0f2a 	cmp.w	lr, #42	; 0x2a
d000065c:	f000 80dd 	beq.w	d000081a <KB_ISR+0x7f6>
d0000660:	f101 0801 	add.w	r8, r1, #1
d0000664:	9f02      	ldr	r7, [sp, #8]
d0000666:	f008 0807 	and.w	r8, r8, #7
d000066a:	4547      	cmp	r7, r8
d000066c:	d003      	beq.n	d0000676 <KB_ISR+0x652>
d000066e:	4f12      	ldr	r7, [pc, #72]	; (d00006b8 <KB_ISR+0x694>)
d0000670:	f807 e001 	strb.w	lr, [r7, r1]
d0000674:	4641      	mov	r1, r8
d0000676:	f1be 0f28 	cmp.w	lr, #40	; 0x28
d000067a:	f000 81d3 	beq.w	d0000a24 <KB_ISR+0xa00>
d000067e:	f8df 8048 	ldr.w	r8, [pc, #72]	; d00006c8 <KB_ISR+0x6a4>
d0000682:	f818 800e 	ldrb.w	r8, [r8, lr]
d0000686:	f1b8 0f00 	cmp.w	r8, #0
d000068a:	f43f ad0f 	beq.w	d00000ac <KB_ISR+0x88>
d000068e:	4f0b      	ldr	r7, [pc, #44]	; (d00006bc <KB_ISR+0x698>)
d0000690:	f897 e000 	ldrb.w	lr, [r7]
d0000694:	f1be 0f3e 	cmp.w	lr, #62	; 0x3e
d0000698:	f63f ad08 	bhi.w	d00000ac <KB_ISR+0x88>
d000069c:	f10e 0601 	add.w	r6, lr, #1
d00006a0:	4f07      	ldr	r7, [pc, #28]	; (d00006c0 <KB_ISR+0x69c>)
d00006a2:	b2f6      	uxtb	r6, r6
d00006a4:	f807 800e 	strb.w	r8, [r7, lr]
d00006a8:	4f04      	ldr	r7, [pc, #16]	; (d00006bc <KB_ISR+0x698>)
d00006aa:	f04f 0e00 	mov.w	lr, #0
d00006ae:	703e      	strb	r6, [r7, #0]
d00006b0:	4f03      	ldr	r7, [pc, #12]	; (d00006c0 <KB_ISR+0x69c>)
d00006b2:	f807 e006 	strb.w	lr, [r7, r6]
d00006b6:	e4f9      	b.n	d00000ac <KB_ISR+0x88>
d00006b8:	d0002274 	.word	0xd0002274
d00006bc:	d000228c 	.word	0xd000228c
d00006c0:	d000229c 	.word	0xd000229c
d00006c4:	d0001c28 	.word	0xd0001c28
d00006c8:	d0001ba8 	.word	0xd0001ba8
d00006cc:	4575      	cmp	r5, lr
d00006ce:	f43f ace5 	beq.w	d000009c <KB_ISR+0x78>
d00006d2:	4574      	cmp	r4, lr
d00006d4:	f43f ace2 	beq.w	d000009c <KB_ISR+0x78>
d00006d8:	9e00      	ldr	r6, [sp, #0]
d00006da:	4576      	cmp	r6, lr
d00006dc:	f43f acde 	beq.w	d000009c <KB_ISR+0x78>
d00006e0:	9e01      	ldr	r6, [sp, #4]
d00006e2:	4576      	cmp	r6, lr
d00006e4:	f43f acda 	beq.w	d000009c <KB_ISR+0x78>
d00006e8:	45f1      	cmp	r9, lr
d00006ea:	f43f acd7 	beq.w	d000009c <KB_ISR+0x78>
d00006ee:	45f2      	cmp	sl, lr
d00006f0:	f43f acd4 	beq.w	d000009c <KB_ISR+0x78>
d00006f4:	f1be 0f2a 	cmp.w	lr, #42	; 0x2a
d00006f8:	d07b      	beq.n	d00007f2 <KB_ISR+0x7ce>
d00006fa:	f101 0801 	add.w	r8, r1, #1
d00006fe:	9f02      	ldr	r7, [sp, #8]
d0000700:	f008 0807 	and.w	r8, r8, #7
d0000704:	4547      	cmp	r7, r8
d0000706:	d003      	beq.n	d0000710 <KB_ISR+0x6ec>
d0000708:	4fca      	ldr	r7, [pc, #808]	; (d0000a34 <KB_ISR+0xa10>)
d000070a:	f807 e001 	strb.w	lr, [r7, r1]
d000070e:	4641      	mov	r1, r8
d0000710:	f1be 0f28 	cmp.w	lr, #40	; 0x28
d0000714:	f000 8166 	beq.w	d00009e4 <KB_ISR+0x9c0>
d0000718:	f8df 8324 	ldr.w	r8, [pc, #804]	; d0000a40 <KB_ISR+0xa1c>
d000071c:	f818 800e 	ldrb.w	r8, [r8, lr]
d0000720:	f1b8 0f00 	cmp.w	r8, #0
d0000724:	f43f acba 	beq.w	d000009c <KB_ISR+0x78>
d0000728:	4fc3      	ldr	r7, [pc, #780]	; (d0000a38 <KB_ISR+0xa14>)
d000072a:	f897 e000 	ldrb.w	lr, [r7]
d000072e:	f1be 0f3e 	cmp.w	lr, #62	; 0x3e
d0000732:	f63f acb3 	bhi.w	d000009c <KB_ISR+0x78>
d0000736:	f10e 0601 	add.w	r6, lr, #1
d000073a:	4fc0      	ldr	r7, [pc, #768]	; (d0000a3c <KB_ISR+0xa18>)
d000073c:	b2f6      	uxtb	r6, r6
d000073e:	f807 800e 	strb.w	r8, [r7, lr]
d0000742:	4fbd      	ldr	r7, [pc, #756]	; (d0000a38 <KB_ISR+0xa14>)
d0000744:	f04f 0e00 	mov.w	lr, #0
d0000748:	703e      	strb	r6, [r7, #0]
d000074a:	4fbc      	ldr	r7, [pc, #752]	; (d0000a3c <KB_ISR+0xa18>)
d000074c:	f807 e006 	strb.w	lr, [r7, r6]
d0000750:	e4a4      	b.n	d000009c <KB_ISR+0x78>
d0000752:	4575      	cmp	r5, lr
d0000754:	f43f ac9a 	beq.w	d000008c <KB_ISR+0x68>
d0000758:	4574      	cmp	r4, lr
d000075a:	f43f ac97 	beq.w	d000008c <KB_ISR+0x68>
d000075e:	9e00      	ldr	r6, [sp, #0]
d0000760:	4576      	cmp	r6, lr
d0000762:	f43f ac93 	beq.w	d000008c <KB_ISR+0x68>
d0000766:	9e01      	ldr	r6, [sp, #4]
d0000768:	4576      	cmp	r6, lr
d000076a:	f43f ac8f 	beq.w	d000008c <KB_ISR+0x68>
d000076e:	45f1      	cmp	r9, lr
d0000770:	f43f ac8c 	beq.w	d000008c <KB_ISR+0x68>
d0000774:	45f2      	cmp	sl, lr
d0000776:	f43f ac89 	beq.w	d000008c <KB_ISR+0x68>
d000077a:	f1be 0f2a 	cmp.w	lr, #42	; 0x2a
d000077e:	f000 80c9 	beq.w	d0000914 <KB_ISR+0x8f0>
d0000782:	f101 0801 	add.w	r8, r1, #1
d0000786:	9f02      	ldr	r7, [sp, #8]
d0000788:	f008 0807 	and.w	r8, r8, #7
d000078c:	4547      	cmp	r7, r8
d000078e:	d003      	beq.n	d0000798 <KB_ISR+0x774>
d0000790:	4fa8      	ldr	r7, [pc, #672]	; (d0000a34 <KB_ISR+0xa10>)
d0000792:	f807 e001 	strb.w	lr, [r7, r1]
d0000796:	4641      	mov	r1, r8
d0000798:	f1be 0f28 	cmp.w	lr, #40	; 0x28
d000079c:	f000 8129 	beq.w	d00009f2 <KB_ISR+0x9ce>
d00007a0:	f8df 829c 	ldr.w	r8, [pc, #668]	; d0000a40 <KB_ISR+0xa1c>
d00007a4:	f818 800e 	ldrb.w	r8, [r8, lr]
d00007a8:	f1b8 0f00 	cmp.w	r8, #0
d00007ac:	f43f ac6e 	beq.w	d000008c <KB_ISR+0x68>
d00007b0:	4fa1      	ldr	r7, [pc, #644]	; (d0000a38 <KB_ISR+0xa14>)
d00007b2:	f897 e000 	ldrb.w	lr, [r7]
d00007b6:	f1be 0f3e 	cmp.w	lr, #62	; 0x3e
d00007ba:	f63f ac67 	bhi.w	d000008c <KB_ISR+0x68>
d00007be:	f10e 0601 	add.w	r6, lr, #1
d00007c2:	4f9e      	ldr	r7, [pc, #632]	; (d0000a3c <KB_ISR+0xa18>)
d00007c4:	b2f6      	uxtb	r6, r6
d00007c6:	f807 800e 	strb.w	r8, [r7, lr]
d00007ca:	4f9b      	ldr	r7, [pc, #620]	; (d0000a38 <KB_ISR+0xa14>)
d00007cc:	f04f 0e00 	mov.w	lr, #0
d00007d0:	703e      	strb	r6, [r7, #0]
d00007d2:	4f9a      	ldr	r7, [pc, #616]	; (d0000a3c <KB_ISR+0xa18>)
d00007d4:	f807 e006 	strb.w	lr, [r7, r6]
d00007d8:	e458      	b.n	d000008c <KB_ISR+0x68>
d00007da:	4c97      	ldr	r4, [pc, #604]	; (d0000a38 <KB_ISR+0xa14>)
d00007dc:	7822      	ldrb	r2, [r4, #0]
d00007de:	2a00      	cmp	r2, #0
d00007e0:	f43f acd2 	beq.w	d0000188 <KB_ISR+0x164>
d00007e4:	3a01      	subs	r2, #1
d00007e6:	4d95      	ldr	r5, [pc, #596]	; (d0000a3c <KB_ISR+0xa18>)
d00007e8:	2600      	movs	r6, #0
d00007ea:	b2d2      	uxtb	r2, r2
d00007ec:	7022      	strb	r2, [r4, #0]
d00007ee:	54ae      	strb	r6, [r5, r2]
d00007f0:	e4ca      	b.n	d0000188 <KB_ISR+0x164>
d00007f2:	f8df 8244 	ldr.w	r8, [pc, #580]	; d0000a38 <KB_ISR+0xa14>
d00007f6:	f898 e000 	ldrb.w	lr, [r8]
d00007fa:	f1be 0f00 	cmp.w	lr, #0
d00007fe:	f43f ac4d 	beq.w	d000009c <KB_ISR+0x78>
d0000802:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
d0000806:	4e8d      	ldr	r6, [pc, #564]	; (d0000a3c <KB_ISR+0xa18>)
d0000808:	f04f 0700 	mov.w	r7, #0
d000080c:	fa5f fe8e 	uxtb.w	lr, lr
d0000810:	f888 e000 	strb.w	lr, [r8]
d0000814:	f806 700e 	strb.w	r7, [r6, lr]
d0000818:	e440      	b.n	d000009c <KB_ISR+0x78>
d000081a:	f8df 821c 	ldr.w	r8, [pc, #540]	; d0000a38 <KB_ISR+0xa14>
d000081e:	f898 e000 	ldrb.w	lr, [r8]
d0000822:	f1be 0f00 	cmp.w	lr, #0
d0000826:	f43f ac41 	beq.w	d00000ac <KB_ISR+0x88>
d000082a:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
d000082e:	4e83      	ldr	r6, [pc, #524]	; (d0000a3c <KB_ISR+0xa18>)
d0000830:	f04f 0700 	mov.w	r7, #0
d0000834:	fa5f fe8e 	uxtb.w	lr, lr
d0000838:	f888 e000 	strb.w	lr, [r8]
d000083c:	f806 700e 	strb.w	r7, [r6, lr]
d0000840:	e434      	b.n	d00000ac <KB_ISR+0x88>
d0000842:	f8df 81f4 	ldr.w	r8, [pc, #500]	; d0000a38 <KB_ISR+0xa14>
d0000846:	f898 e000 	ldrb.w	lr, [r8]
d000084a:	f1be 0f00 	cmp.w	lr, #0
d000084e:	f43f ac35 	beq.w	d00000bc <KB_ISR+0x98>
d0000852:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
d0000856:	4e79      	ldr	r6, [pc, #484]	; (d0000a3c <KB_ISR+0xa18>)
d0000858:	f04f 0700 	mov.w	r7, #0
d000085c:	fa5f fe8e 	uxtb.w	lr, lr
d0000860:	f888 e000 	strb.w	lr, [r8]
d0000864:	f806 700e 	strb.w	r7, [r6, lr]
d0000868:	e428      	b.n	d00000bc <KB_ISR+0x98>
d000086a:	f8df 81cc 	ldr.w	r8, [pc, #460]	; d0000a38 <KB_ISR+0xa14>
d000086e:	f898 e000 	ldrb.w	lr, [r8]
d0000872:	f1be 0f00 	cmp.w	lr, #0
d0000876:	f43f ac67 	beq.w	d0000148 <KB_ISR+0x124>
d000087a:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
d000087e:	4e6f      	ldr	r6, [pc, #444]	; (d0000a3c <KB_ISR+0xa18>)
d0000880:	f04f 0700 	mov.w	r7, #0
d0000884:	fa5f fe8e 	uxtb.w	lr, lr
d0000888:	f888 e000 	strb.w	lr, [r8]
d000088c:	f806 700e 	strb.w	r7, [r6, lr]
d0000890:	e45a      	b.n	d0000148 <KB_ISR+0x124>
d0000892:	f8df e1a4 	ldr.w	lr, [pc, #420]	; d0000a38 <KB_ISR+0xa14>
d0000896:	f89e 8000 	ldrb.w	r8, [lr]
d000089a:	f1b8 0f00 	cmp.w	r8, #0
d000089e:	f43f abeb 	beq.w	d0000078 <KB_ISR+0x54>
d00008a2:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
d00008a6:	4e65      	ldr	r6, [pc, #404]	; (d0000a3c <KB_ISR+0xa18>)
d00008a8:	f04f 0700 	mov.w	r7, #0
d00008ac:	f8df c194 	ldr.w	ip, [pc, #404]	; d0000a44 <KB_ISR+0xa20>
d00008b0:	fa5f f888 	uxtb.w	r8, r8
d00008b4:	f88e 8000 	strb.w	r8, [lr]
d00008b8:	f806 7008 	strb.w	r7, [r6, r8]
d00008bc:	f7ff bbde 	b.w	d000007c <KB_ISR+0x58>
d00008c0:	f8df 8174 	ldr.w	r8, [pc, #372]	; d0000a38 <KB_ISR+0xa14>
d00008c4:	f898 e000 	ldrb.w	lr, [r8]
d00008c8:	f1be 0f00 	cmp.w	lr, #0
d00008cc:	f43f ac4c 	beq.w	d0000168 <KB_ISR+0x144>
d00008d0:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
d00008d4:	4e59      	ldr	r6, [pc, #356]	; (d0000a3c <KB_ISR+0xa18>)
d00008d6:	f04f 0700 	mov.w	r7, #0
d00008da:	fa5f fe8e 	uxtb.w	lr, lr
d00008de:	f888 e000 	strb.w	lr, [r8]
d00008e2:	f806 700e 	strb.w	r7, [r6, lr]
d00008e6:	e43f      	b.n	d0000168 <KB_ISR+0x144>
d00008e8:	f8df e14c 	ldr.w	lr, [pc, #332]	; d0000a38 <KB_ISR+0xa14>
d00008ec:	f89e 8000 	ldrb.w	r8, [lr]
d00008f0:	f1b8 0f00 	cmp.w	r8, #0
d00008f4:	f43f ac1e 	beq.w	d0000134 <KB_ISR+0x110>
d00008f8:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
d00008fc:	4e4f      	ldr	r6, [pc, #316]	; (d0000a3c <KB_ISR+0xa18>)
d00008fe:	f04f 0700 	mov.w	r7, #0
d0000902:	f8df c140 	ldr.w	ip, [pc, #320]	; d0000a44 <KB_ISR+0xa20>
d0000906:	fa5f f888 	uxtb.w	r8, r8
d000090a:	f88e 8000 	strb.w	r8, [lr]
d000090e:	f806 7008 	strb.w	r7, [r6, r8]
d0000912:	e411      	b.n	d0000138 <KB_ISR+0x114>
d0000914:	f8df 8120 	ldr.w	r8, [pc, #288]	; d0000a38 <KB_ISR+0xa14>
d0000918:	f898 e000 	ldrb.w	lr, [r8]
d000091c:	f1be 0f00 	cmp.w	lr, #0
d0000920:	f43f abb4 	beq.w	d000008c <KB_ISR+0x68>
d0000924:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
d0000928:	4e44      	ldr	r6, [pc, #272]	; (d0000a3c <KB_ISR+0xa18>)
d000092a:	f04f 0700 	mov.w	r7, #0
d000092e:	fa5f fe8e 	uxtb.w	lr, lr
d0000932:	f888 e000 	strb.w	lr, [r8]
d0000936:	f806 700e 	strb.w	r7, [r6, lr]
d000093a:	f7ff bba7 	b.w	d000008c <KB_ISR+0x68>
d000093e:	f8df 80f8 	ldr.w	r8, [pc, #248]	; d0000a38 <KB_ISR+0xa14>
d0000942:	f898 e000 	ldrb.w	lr, [r8]
d0000946:	f1be 0f00 	cmp.w	lr, #0
d000094a:	f43f ac05 	beq.w	d0000158 <KB_ISR+0x134>
d000094e:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
d0000952:	4e3a      	ldr	r6, [pc, #232]	; (d0000a3c <KB_ISR+0xa18>)
d0000954:	f04f 0700 	mov.w	r7, #0
d0000958:	fa5f fe8e 	uxtb.w	lr, lr
d000095c:	f888 e000 	strb.w	lr, [r8]
d0000960:	f806 700e 	strb.w	r7, [r6, lr]
d0000964:	f7ff bbf8 	b.w	d0000158 <KB_ISR+0x134>
d0000968:	f8df 80cc 	ldr.w	r8, [pc, #204]	; d0000a38 <KB_ISR+0xa14>
d000096c:	f898 e000 	ldrb.w	lr, [r8]
d0000970:	f1be 0f00 	cmp.w	lr, #0
d0000974:	f43f ac00 	beq.w	d0000178 <KB_ISR+0x154>
d0000978:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
d000097c:	4e2f      	ldr	r6, [pc, #188]	; (d0000a3c <KB_ISR+0xa18>)
d000097e:	f04f 0700 	mov.w	r7, #0
d0000982:	fa5f fe8e 	uxtb.w	lr, lr
d0000986:	f888 e000 	strb.w	lr, [r8]
d000098a:	f806 700e 	strb.w	r7, [r6, lr]
d000098e:	f7ff bbf3 	b.w	d0000178 <KB_ISR+0x154>
d0000992:	f04f 0e01 	mov.w	lr, #1
d0000996:	f8cc e000 	str.w	lr, [ip]
d000099a:	f7ff bbed 	b.w	d0000178 <KB_ISR+0x154>
d000099e:	f04f 0e01 	mov.w	lr, #1
d00009a2:	f8cc e000 	str.w	lr, [ip]
d00009a6:	f7ff bbd7 	b.w	d0000158 <KB_ISR+0x134>
d00009aa:	2401      	movs	r4, #1
d00009ac:	220a      	movs	r2, #10
d00009ae:	f8cc 4000 	str.w	r4, [ip]
d00009b2:	f7ff bbae 	b.w	d0000112 <KB_ISR+0xee>
d00009b6:	f8df c08c 	ldr.w	ip, [pc, #140]	; d0000a44 <KB_ISR+0xa20>
d00009ba:	f04f 0e01 	mov.w	lr, #1
d00009be:	f04f 080a 	mov.w	r8, #10
d00009c2:	f8cc e000 	str.w	lr, [ip]
d00009c6:	e41d      	b.n	d0000204 <KB_ISR+0x1e0>
d00009c8:	f04f 0e01 	mov.w	lr, #1
d00009cc:	f8cc e000 	str.w	lr, [ip]
d00009d0:	f7ff bbca 	b.w	d0000168 <KB_ISR+0x144>
d00009d4:	f8df c06c 	ldr.w	ip, [pc, #108]	; d0000a44 <KB_ISR+0xa20>
d00009d8:	f04f 0e01 	mov.w	lr, #1
d00009dc:	f8cc e000 	str.w	lr, [ip]
d00009e0:	f7ff bbaa 	b.w	d0000138 <KB_ISR+0x114>
d00009e4:	f04f 0e01 	mov.w	lr, #1
d00009e8:	f04f 080a 	mov.w	r8, #10
d00009ec:	f8cc e000 	str.w	lr, [ip]
d00009f0:	e69a      	b.n	d0000728 <KB_ISR+0x704>
d00009f2:	f04f 0e01 	mov.w	lr, #1
d00009f6:	f04f 080a 	mov.w	r8, #10
d00009fa:	f8cc e000 	str.w	lr, [ip]
d00009fe:	e6d7      	b.n	d00007b0 <KB_ISR+0x78c>
d0000a00:	2201      	movs	r2, #1
d0000a02:	f8cc 2000 	str.w	r2, [ip]
d0000a06:	f7ff bbbf 	b.w	d0000188 <KB_ISR+0x164>
d0000a0a:	f04f 0e01 	mov.w	lr, #1
d0000a0e:	f8cc e000 	str.w	lr, [ip]
d0000a12:	f7ff bb99 	b.w	d0000148 <KB_ISR+0x124>
d0000a16:	f04f 0e01 	mov.w	lr, #1
d0000a1a:	f04f 080a 	mov.w	r8, #10
d0000a1e:	f8cc e000 	str.w	lr, [ip]
d0000a22:	e5f0      	b.n	d0000606 <KB_ISR+0x5e2>
d0000a24:	f04f 0e01 	mov.w	lr, #1
d0000a28:	f04f 080a 	mov.w	r8, #10
d0000a2c:	f8cc e000 	str.w	lr, [ip]
d0000a30:	e62d      	b.n	d000068e <KB_ISR+0x66a>
d0000a32:	bf00      	nop
d0000a34:	d0002274 	.word	0xd0002274
d0000a38:	d000228c 	.word	0xd000228c
d0000a3c:	d000229c 	.word	0xd000229c
d0000a40:	d0001ba8 	.word	0xd0001ba8
d0000a44:	d0002288 	.word	0xd0002288

d0000a48 <GetKeyIn>:
d0000a48:	4b0e      	ldr	r3, [pc, #56]	; (d0000a84 <GetKeyIn+0x3c>)
d0000a4a:	781a      	ldrb	r2, [r3, #0]
d0000a4c:	4282      	cmp	r2, r0
d0000a4e:	d016      	beq.n	d0000a7e <GetKeyIn+0x36>
d0000a50:	785a      	ldrb	r2, [r3, #1]
d0000a52:	4282      	cmp	r2, r0
d0000a54:	d013      	beq.n	d0000a7e <GetKeyIn+0x36>
d0000a56:	789a      	ldrb	r2, [r3, #2]
d0000a58:	4282      	cmp	r2, r0
d0000a5a:	d010      	beq.n	d0000a7e <GetKeyIn+0x36>
d0000a5c:	78da      	ldrb	r2, [r3, #3]
d0000a5e:	4282      	cmp	r2, r0
d0000a60:	d00d      	beq.n	d0000a7e <GetKeyIn+0x36>
d0000a62:	791a      	ldrb	r2, [r3, #4]
d0000a64:	4282      	cmp	r2, r0
d0000a66:	d00a      	beq.n	d0000a7e <GetKeyIn+0x36>
d0000a68:	795a      	ldrb	r2, [r3, #5]
d0000a6a:	4282      	cmp	r2, r0
d0000a6c:	d007      	beq.n	d0000a7e <GetKeyIn+0x36>
d0000a6e:	799a      	ldrb	r2, [r3, #6]
d0000a70:	4282      	cmp	r2, r0
d0000a72:	d004      	beq.n	d0000a7e <GetKeyIn+0x36>
d0000a74:	79db      	ldrb	r3, [r3, #7]
d0000a76:	4283      	cmp	r3, r0
d0000a78:	bf18      	it	ne
d0000a7a:	2000      	movne	r0, #0
d0000a7c:	4770      	bx	lr
d0000a7e:	4610      	mov	r0, r2
d0000a80:	4770      	bx	lr
d0000a82:	bf00      	nop
d0000a84:	d0002280 	.word	0xd0002280

d0000a88 <initDisplayBuffers>:
d0000a88:	4b0c      	ldr	r3, [pc, #48]	; (d0000abc <initDisplayBuffers+0x34>)
d0000a8a:	4a0d      	ldr	r2, [pc, #52]	; (d0000ac0 <initDisplayBuffers+0x38>)
d0000a8c:	f8d3 00ec 	ldr.w	r0, [r3, #236]	; 0xec
d0000a90:	b410      	push	{r4}
d0000a92:	f8d3 40f4 	ldr.w	r4, [r3, #244]	; 0xf4
d0000a96:	f8d3 10f4 	ldr.w	r1, [r3, #244]	; 0xf4
d0000a9a:	6002      	str	r2, [r0, #0]
d0000a9c:	6022      	str	r2, [r4, #0]
d0000a9e:	4809      	ldr	r0, [pc, #36]	; (d0000ac4 <initDisplayBuffers+0x3c>)
d0000aa0:	680a      	ldr	r2, [r1, #0]
d0000aa2:	4909      	ldr	r1, [pc, #36]	; (d0000ac8 <initDisplayBuffers+0x40>)
d0000aa4:	6002      	str	r2, [r0, #0]
d0000aa6:	f8d3 00f0 	ldr.w	r0, [r3, #240]	; 0xf0
d0000aaa:	f8d3 30f0 	ldr.w	r3, [r3, #240]	; 0xf0
d0000aae:	4a07      	ldr	r2, [pc, #28]	; (d0000acc <initDisplayBuffers+0x44>)
d0000ab0:	6008      	str	r0, [r1, #0]
d0000ab2:	681b      	ldr	r3, [r3, #0]
d0000ab4:	f85d 4b04 	ldr.w	r4, [sp], #4
d0000ab8:	6013      	str	r3, [r2, #0]
d0000aba:	4770      	bx	lr
d0000abc:	2001f000 	.word	0x2001f000
d0000ac0:	d06b2000 	.word	0xd06b2000
d0000ac4:	d00022dc 	.word	0xd00022dc
d0000ac8:	d00022e0 	.word	0xd00022e0
d0000acc:	d00022e8 	.word	0xd00022e8

d0000ad0 <ShowBuffer>:
d0000ad0:	4b09      	ldr	r3, [pc, #36]	; (d0000af8 <ShowBuffer+0x28>)
d0000ad2:	b140      	cbz	r0, d0000ae6 <ShowBuffer+0x16>
d0000ad4:	f8d3 10ec 	ldr.w	r1, [r3, #236]	; 0xec
d0000ad8:	4808      	ldr	r0, [pc, #32]	; (d0000afc <ShowBuffer+0x2c>)
d0000ada:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d0000ade:	4a08      	ldr	r2, [pc, #32]	; (d0000b00 <ShowBuffer+0x30>)
d0000ae0:	6008      	str	r0, [r1, #0]
d0000ae2:	601a      	str	r2, [r3, #0]
d0000ae4:	4770      	bx	lr
d0000ae6:	f8d3 10ec 	ldr.w	r1, [r3, #236]	; 0xec
d0000aea:	4805      	ldr	r0, [pc, #20]	; (d0000b00 <ShowBuffer+0x30>)
d0000aec:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d0000af0:	4a02      	ldr	r2, [pc, #8]	; (d0000afc <ShowBuffer+0x2c>)
d0000af2:	6008      	str	r0, [r1, #0]
d0000af4:	601a      	str	r2, [r3, #0]
d0000af6:	4770      	bx	lr
d0000af8:	2001f000 	.word	0x2001f000
d0000afc:	d06b2000 	.word	0xd06b2000
d0000b00:	d06d9000 	.word	0xd06d9000

d0000b04 <StopChannel>:
d0000b04:	4b04      	ldr	r3, [pc, #16]	; (d0000b18 <StopChannel+0x14>)
d0000b06:	0080      	lsls	r0, r0, #2
d0000b08:	4403      	add	r3, r0
d0000b0a:	685b      	ldr	r3, [r3, #4]
d0000b0c:	781a      	ldrb	r2, [r3, #0]
d0000b0e:	f36f 0200 	bfc	r2, #0, #1
d0000b12:	701a      	strb	r2, [r3, #0]
d0000b14:	4770      	bx	lr
d0000b16:	bf00      	nop
d0000b18:	2001f170 	.word	0x2001f170

d0000b1c <scanKeys>:
d0000b1c:	b510      	push	{r4, lr}
d0000b1e:	2014      	movs	r0, #20
d0000b20:	4c17      	ldr	r4, [pc, #92]	; (d0000b80 <scanKeys+0x64>)
d0000b22:	f7ff ff91 	bl	d0000a48 <GetKeyIn>
d0000b26:	4603      	mov	r3, r0
d0000b28:	2008      	movs	r0, #8
d0000b2a:	3b00      	subs	r3, #0
d0000b2c:	bf18      	it	ne
d0000b2e:	2301      	movne	r3, #1
d0000b30:	60a3      	str	r3, [r4, #8]
d0000b32:	f7ff ff89 	bl	d0000a48 <GetKeyIn>
d0000b36:	4603      	mov	r3, r0
d0000b38:	2004      	movs	r0, #4
d0000b3a:	3b00      	subs	r3, #0
d0000b3c:	bf18      	it	ne
d0000b3e:	2301      	movne	r3, #1
d0000b40:	60e3      	str	r3, [r4, #12]
d0000b42:	f7ff ff81 	bl	d0000a48 <GetKeyIn>
d0000b46:	4603      	mov	r3, r0
d0000b48:	2007      	movs	r0, #7
d0000b4a:	3b00      	subs	r3, #0
d0000b4c:	bf18      	it	ne
d0000b4e:	2301      	movne	r3, #1
d0000b50:	6123      	str	r3, [r4, #16]
d0000b52:	f7ff ff79 	bl	d0000a48 <GetKeyIn>
d0000b56:	4603      	mov	r3, r0
d0000b58:	201a      	movs	r0, #26
d0000b5a:	3b00      	subs	r3, #0
d0000b5c:	bf18      	it	ne
d0000b5e:	2301      	movne	r3, #1
d0000b60:	6163      	str	r3, [r4, #20]
d0000b62:	f7ff ff71 	bl	d0000a48 <GetKeyIn>
d0000b66:	4603      	mov	r3, r0
d0000b68:	2016      	movs	r0, #22
d0000b6a:	3b00      	subs	r3, #0
d0000b6c:	bf18      	it	ne
d0000b6e:	2301      	movne	r3, #1
d0000b70:	6023      	str	r3, [r4, #0]
d0000b72:	f7ff ff69 	bl	d0000a48 <GetKeyIn>
d0000b76:	3800      	subs	r0, #0
d0000b78:	bf18      	it	ne
d0000b7a:	2001      	movne	r0, #1
d0000b7c:	6060      	str	r0, [r4, #4]
d0000b7e:	bd10      	pop	{r4, pc}
d0000b80:	d00022ec 	.word	0xd00022ec

d0000b84 <movePlayer>:
d0000b84:	4b8f      	ldr	r3, [pc, #572]	; (d0000dc4 <movePlayer+0x240>)
d0000b86:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0000b8a:	689f      	ldr	r7, [r3, #8]
d0000b8c:	2f01      	cmp	r7, #1
d0000b8e:	f000 80b7 	beq.w	d0000d00 <movePlayer+0x17c>
d0000b92:	68de      	ldr	r6, [r3, #12]
d0000b94:	2e01      	cmp	r6, #1
d0000b96:	d07d      	beq.n	d0000c94 <movePlayer+0x110>
d0000b98:	488b      	ldr	r0, [pc, #556]	; (d0000dc8 <movePlayer+0x244>)
d0000b9a:	68c4      	ldr	r4, [r0, #12]
d0000b9c:	4a8b      	ldr	r2, [pc, #556]	; (d0000dcc <movePlayer+0x248>)
d0000b9e:	f504 71b4 	add.w	r1, r4, #360	; 0x168
d0000ba2:	eef2 6a04 	vmov.f32	s13, #36	; 0x41200000  10.0
d0000ba6:	681d      	ldr	r5, [r3, #0]
d0000ba8:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d0000bac:	eb02 0284 	add.w	r2, r2, r4, lsl #2
d0000bb0:	2d01      	cmp	r5, #1
d0000bb2:	edd1 7a00 	vldr	s15, [r1]
d0000bb6:	ed92 7a00 	vldr	s14, [r2]
d0000bba:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0000bbe:	ee27 7a26 	vmul.f32	s14, s14, s13
d0000bc2:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0000bc6:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0000bca:	d014      	beq.n	d0000bf6 <movePlayer+0x72>
d0000bcc:	685c      	ldr	r4, [r3, #4]
d0000bce:	2c01      	cmp	r4, #1
d0000bd0:	f000 808a 	beq.w	d0000ce8 <movePlayer+0x164>
d0000bd4:	695a      	ldr	r2, [r3, #20]
d0000bd6:	2a01      	cmp	r2, #1
d0000bd8:	d023      	beq.n	d0000c22 <movePlayer+0x9e>
d0000bda:	691a      	ldr	r2, [r3, #16]
d0000bdc:	2a01      	cmp	r2, #1
d0000bde:	d04c      	beq.n	d0000c7a <movePlayer+0xf6>
d0000be0:	2f01      	cmp	r7, #1
d0000be2:	d033      	beq.n	d0000c4c <movePlayer+0xc8>
d0000be4:	2e01      	cmp	r6, #1
d0000be6:	d041      	beq.n	d0000c6c <movePlayer+0xe8>
d0000be8:	2d01      	cmp	r5, #1
d0000bea:	f000 80dc 	beq.w	d0000da6 <movePlayer+0x222>
d0000bee:	2c01      	cmp	r4, #1
d0000bf0:	d034      	beq.n	d0000c5c <movePlayer+0xd8>
d0000bf2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0000bf6:	699a      	ldr	r2, [r3, #24]
d0000bf8:	2a00      	cmp	r2, #0
d0000bfa:	d1e7      	bne.n	d0000bcc <movePlayer+0x48>
d0000bfc:	ee17 2a90 	vmov	r2, s15
d0000c00:	685c      	ldr	r4, [r3, #4]
d0000c02:	e9d0 8e00 	ldrd	r8, lr, [r0]
d0000c06:	2c01      	cmp	r4, #1
d0000c08:	eb08 0102 	add.w	r1, r8, r2
d0000c0c:	ee17 2a10 	vmov	r2, s14
d0000c10:	4472      	add	r2, lr
d0000c12:	e9c0 1200 	strd	r1, r2, [r0]
d0000c16:	f000 80d3 	beq.w	d0000dc0 <movePlayer+0x23c>
d0000c1a:	695a      	ldr	r2, [r3, #20]
d0000c1c:	2501      	movs	r5, #1
d0000c1e:	2a01      	cmp	r2, #1
d0000c20:	d1db      	bne.n	d0000bda <movePlayer+0x56>
d0000c22:	699a      	ldr	r2, [r3, #24]
d0000c24:	2a00      	cmp	r2, #0
d0000c26:	d1db      	bne.n	d0000be0 <movePlayer+0x5c>
d0000c28:	e9d0 8e00 	ldrd	r8, lr, [r0]
d0000c2c:	ee17 1a10 	vmov	r1, s14
d0000c30:	ee17 2a90 	vmov	r2, s15
d0000c34:	4441      	add	r1, r8
d0000c36:	ebae 0202 	sub.w	r2, lr, r2
d0000c3a:	e9c0 1200 	strd	r1, r2, [r0]
d0000c3e:	691a      	ldr	r2, [r3, #16]
d0000c40:	2a01      	cmp	r2, #1
d0000c42:	d1cd      	bne.n	d0000be0 <movePlayer+0x5c>
d0000c44:	2f01      	cmp	r7, #1
d0000c46:	e9c0 8e00 	strd	r8, lr, [r0]
d0000c4a:	d1cb      	bne.n	d0000be4 <movePlayer+0x60>
d0000c4c:	699a      	ldr	r2, [r3, #24]
d0000c4e:	2a01      	cmp	r2, #1
d0000c50:	f000 8082 	beq.w	d0000d58 <movePlayer+0x1d4>
d0000c54:	2d01      	cmp	r5, #1
d0000c56:	d0cc      	beq.n	d0000bf2 <movePlayer+0x6e>
d0000c58:	2c01      	cmp	r4, #1
d0000c5a:	d1ca      	bne.n	d0000bf2 <movePlayer+0x6e>
d0000c5c:	699b      	ldr	r3, [r3, #24]
d0000c5e:	2b01      	cmp	r3, #1
d0000c60:	d1c7      	bne.n	d0000bf2 <movePlayer+0x6e>
d0000c62:	6883      	ldr	r3, [r0, #8]
d0000c64:	3304      	adds	r3, #4
d0000c66:	6083      	str	r3, [r0, #8]
d0000c68:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0000c6c:	699a      	ldr	r2, [r3, #24]
d0000c6e:	2a01      	cmp	r2, #1
d0000c70:	d1f0      	bne.n	d0000c54 <movePlayer+0xd0>
d0000c72:	6902      	ldr	r2, [r0, #16]
d0000c74:	3201      	adds	r2, #1
d0000c76:	6102      	str	r2, [r0, #16]
d0000c78:	e074      	b.n	d0000d64 <movePlayer+0x1e0>
d0000c7a:	699a      	ldr	r2, [r3, #24]
d0000c7c:	2a00      	cmp	r2, #0
d0000c7e:	d1af      	bne.n	d0000be0 <movePlayer+0x5c>
d0000c80:	ee17 ca10 	vmov	ip, s14
d0000c84:	ee17 ea90 	vmov	lr, s15
d0000c88:	e9d0 1200 	ldrd	r1, r2, [r0]
d0000c8c:	eba1 080c 	sub.w	r8, r1, ip
d0000c90:	4496      	add	lr, r2
d0000c92:	e7d7      	b.n	d0000c44 <movePlayer+0xc0>
d0000c94:	699a      	ldr	r2, [r3, #24]
d0000c96:	2a00      	cmp	r2, #0
d0000c98:	d15a      	bne.n	d0000d50 <movePlayer+0x1cc>
d0000c9a:	484b      	ldr	r0, [pc, #300]	; (d0000dc8 <movePlayer+0x244>)
d0000c9c:	68c2      	ldr	r2, [r0, #12]
d0000c9e:	1d11      	adds	r1, r2, #4
d0000ca0:	f5b1 7fb4 	cmp.w	r1, #360	; 0x168
d0000ca4:	f2c0 8084 	blt.w	d0000db0 <movePlayer+0x22c>
d0000ca8:	f5a2 71b2 	sub.w	r1, r2, #356	; 0x164
d0000cac:	60c1      	str	r1, [r0, #12]
d0000cae:	4a47      	ldr	r2, [pc, #284]	; (d0000dcc <movePlayer+0x248>)
d0000cb0:	f501 74b4 	add.w	r4, r1, #360	; 0x168
d0000cb4:	eef2 6a04 	vmov.f32	s13, #36	; 0x41200000  10.0
d0000cb8:	681d      	ldr	r5, [r3, #0]
d0000cba:	eb02 0484 	add.w	r4, r2, r4, lsl #2
d0000cbe:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d0000cc2:	2d01      	cmp	r5, #1
d0000cc4:	edd4 7a00 	vldr	s15, [r4]
d0000cc8:	ed91 7a00 	vldr	s14, [r1]
d0000ccc:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0000cd0:	ee27 7a26 	vmul.f32	s14, s14, s13
d0000cd4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0000cd8:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0000cdc:	d06e      	beq.n	d0000dbc <movePlayer+0x238>
d0000cde:	685c      	ldr	r4, [r3, #4]
d0000ce0:	2601      	movs	r6, #1
d0000ce2:	2c01      	cmp	r4, #1
d0000ce4:	f47f af76 	bne.w	d0000bd4 <movePlayer+0x50>
d0000ce8:	699a      	ldr	r2, [r3, #24]
d0000cea:	2a00      	cmp	r2, #0
d0000cec:	d045      	beq.n	d0000d7a <movePlayer+0x1f6>
d0000cee:	695a      	ldr	r2, [r3, #20]
d0000cf0:	2a01      	cmp	r2, #1
d0000cf2:	f43f af75 	beq.w	d0000be0 <movePlayer+0x5c>
d0000cf6:	691a      	ldr	r2, [r3, #16]
d0000cf8:	2a01      	cmp	r2, #1
d0000cfa:	f47f af71 	bne.w	d0000be0 <movePlayer+0x5c>
d0000cfe:	e7bc      	b.n	d0000c7a <movePlayer+0xf6>
d0000d00:	699a      	ldr	r2, [r3, #24]
d0000d02:	bb0a      	cbnz	r2, d0000d48 <movePlayer+0x1c4>
d0000d04:	4830      	ldr	r0, [pc, #192]	; (d0000dc8 <movePlayer+0x244>)
d0000d06:	68c1      	ldr	r1, [r0, #12]
d0000d08:	1f0a      	subs	r2, r1, #4
d0000d0a:	d453      	bmi.n	d0000db4 <movePlayer+0x230>
d0000d0c:	60c2      	str	r2, [r0, #12]
d0000d0e:	68de      	ldr	r6, [r3, #12]
d0000d10:	2e01      	cmp	r6, #1
d0000d12:	d0c4      	beq.n	d0000c9e <movePlayer+0x11a>
d0000d14:	492d      	ldr	r1, [pc, #180]	; (d0000dcc <movePlayer+0x248>)
d0000d16:	f502 74b4 	add.w	r4, r2, #360	; 0x168
d0000d1a:	eef2 6a04 	vmov.f32	s13, #36	; 0x41200000  10.0
d0000d1e:	681d      	ldr	r5, [r3, #0]
d0000d20:	eb01 0484 	add.w	r4, r1, r4, lsl #2
d0000d24:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0000d28:	2d01      	cmp	r5, #1
d0000d2a:	edd4 7a00 	vldr	s15, [r4]
d0000d2e:	ed92 7a00 	vldr	s14, [r2]
d0000d32:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0000d36:	ee27 7a26 	vmul.f32	s14, s14, s13
d0000d3a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0000d3e:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0000d42:	f47f af43 	bne.w	d0000bcc <movePlayer+0x48>
d0000d46:	e759      	b.n	d0000bfc <movePlayer+0x78>
d0000d48:	68de      	ldr	r6, [r3, #12]
d0000d4a:	2e01      	cmp	r6, #1
d0000d4c:	f47f af24 	bne.w	d0000b98 <movePlayer+0x14>
d0000d50:	481d      	ldr	r0, [pc, #116]	; (d0000dc8 <movePlayer+0x244>)
d0000d52:	2601      	movs	r6, #1
d0000d54:	68c4      	ldr	r4, [r0, #12]
d0000d56:	e721      	b.n	d0000b9c <movePlayer+0x18>
d0000d58:	6902      	ldr	r2, [r0, #16]
d0000d5a:	2e01      	cmp	r6, #1
d0000d5c:	f102 31ff 	add.w	r1, r2, #4294967295	; 0xffffffff
d0000d60:	6101      	str	r1, [r0, #16]
d0000d62:	d088      	beq.n	d0000c76 <movePlayer+0xf2>
d0000d64:	2d01      	cmp	r5, #1
d0000d66:	f47f af42 	bne.w	d0000bee <movePlayer+0x6a>
d0000d6a:	6883      	ldr	r3, [r0, #8]
d0000d6c:	2c01      	cmp	r4, #1
d0000d6e:	f1a3 0204 	sub.w	r2, r3, #4
d0000d72:	6082      	str	r2, [r0, #8]
d0000d74:	f47f af3d 	bne.w	d0000bf2 <movePlayer+0x6e>
d0000d78:	e775      	b.n	d0000c66 <movePlayer+0xe2>
d0000d7a:	e9d0 1200 	ldrd	r1, r2, [r0]
d0000d7e:	ee17 4a90 	vmov	r4, s15
d0000d82:	eba1 0804 	sub.w	r8, r1, r4
d0000d86:	ee17 1a10 	vmov	r1, s14
d0000d8a:	eba2 0e01 	sub.w	lr, r2, r1
d0000d8e:	695c      	ldr	r4, [r3, #20]
d0000d90:	2c01      	cmp	r4, #1
d0000d92:	e9c0 8e00 	strd	r8, lr, [r0]
d0000d96:	f43f af49 	beq.w	d0000c2c <movePlayer+0xa8>
d0000d9a:	691a      	ldr	r2, [r3, #16]
d0000d9c:	2401      	movs	r4, #1
d0000d9e:	2a01      	cmp	r2, #1
d0000da0:	f47f af1e 	bne.w	d0000be0 <movePlayer+0x5c>
d0000da4:	e769      	b.n	d0000c7a <movePlayer+0xf6>
d0000da6:	699b      	ldr	r3, [r3, #24]
d0000da8:	2b01      	cmp	r3, #1
d0000daa:	f47f af22 	bne.w	d0000bf2 <movePlayer+0x6e>
d0000dae:	e7dc      	b.n	d0000d6a <movePlayer+0x1e6>
d0000db0:	60c1      	str	r1, [r0, #12]
d0000db2:	e77c      	b.n	d0000cae <movePlayer+0x12a>
d0000db4:	f501 72b2 	add.w	r2, r1, #356	; 0x164
d0000db8:	60c2      	str	r2, [r0, #12]
d0000dba:	e7a8      	b.n	d0000d0e <movePlayer+0x18a>
d0000dbc:	462e      	mov	r6, r5
d0000dbe:	e71d      	b.n	d0000bfc <movePlayer+0x78>
d0000dc0:	4625      	mov	r5, r4
d0000dc2:	e7e4      	b.n	d0000d8e <movePlayer+0x20a>
d0000dc4:	d00022ec 	.word	0xd00022ec
d0000dc8:	d0011560 	.word	0xd0011560
d0000dcc:	d0010a20 	.word	0xd0010a20

d0000dd0 <initEngine>:
d0000dd0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0000dd4:	4d97      	ldr	r5, [pc, #604]	; (d0001034 <initEngine+0x264>)
d0000dd6:	b083      	sub	sp, #12
d0000dd8:	2400      	movs	r4, #0
d0000dda:	4f97      	ldr	r7, [pc, #604]	; (d0001038 <initEngine+0x268>)
d0000ddc:	f505 66b4 	add.w	r6, r5, #1440	; 0x5a0
d0000de0:	4620      	mov	r0, r4
d0000de2:	f8d7 30b0 	ldr.w	r3, [r7, #176]	; 0xb0
d0000de6:	4798      	blx	r3
d0000de8:	4620      	mov	r0, r4
d0000dea:	3401      	adds	r4, #1
d0000dec:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
d0000df0:	eca5 0a01 	vstmia	r5!, {s0}
d0000df4:	4798      	blx	r3
d0000df6:	f5b4 7fb4 	cmp.w	r4, #360	; 0x168
d0000dfa:	eca6 0a01 	vstmia	r6!, {s0}
d0000dfe:	d1ef      	bne.n	d0000de0 <initEngine+0x10>
d0000e00:	4b8e      	ldr	r3, [pc, #568]	; (d000103c <initEngine+0x26c>)
d0000e02:	2200      	movs	r2, #0
d0000e04:	2446      	movs	r4, #70	; 0x46
d0000e06:	4e8e      	ldr	r6, [pc, #568]	; (d0001040 <initEngine+0x270>)
d0000e08:	f06f 006d 	mvn.w	r0, #109	; 0x6d
d0000e0c:	2114      	movs	r1, #20
d0000e0e:	601c      	str	r4, [r3, #0]
d0000e10:	4694      	mov	ip, r2
d0000e12:	f506 5ef4 	add.w	lr, r6, #7808	; 0x1e80
d0000e16:	4f8b      	ldr	r7, [pc, #556]	; (d0001044 <initEngine+0x274>)
d0000e18:	4d8b      	ldr	r5, [pc, #556]	; (d0001048 <initEngine+0x278>)
d0000e1a:	4c8c      	ldr	r4, [pc, #560]	; (d000104c <initEngine+0x27c>)
d0000e1c:	6058      	str	r0, [r3, #4]
d0000e1e:	6099      	str	r1, [r3, #8]
d0000e20:	e9c3 2203 	strd	r2, r2, [r3, #12]
d0000e24:	e9d7 1202 	ldrd	r1, r2, [r7, #8]
d0000e28:	683b      	ldr	r3, [r7, #0]
d0000e2a:	1a52      	subs	r2, r2, r1
d0000e2c:	6878      	ldr	r0, [r7, #4]
d0000e2e:	e9c6 1202 	strd	r1, r2, [r6, #8]
d0000e32:	693a      	ldr	r2, [r7, #16]
d0000e34:	4283      	cmp	r3, r0
d0000e36:	6172      	str	r2, [r6, #20]
d0000e38:	697a      	ldr	r2, [r7, #20]
d0000e3a:	e9c6 3000 	strd	r3, r0, [r6]
d0000e3e:	61b2      	str	r2, [r6, #24]
d0000e40:	f280 80ef 	bge.w	d0001022 <initEngine+0x252>
d0000e44:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0000e48:	eba0 0903 	sub.w	r9, r0, r3
d0000e4c:	eb05 088c 	add.w	r8, r5, ip, lsl #2
d0000e50:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0000e54:	ea4f 018c 	mov.w	r1, ip, lsl #2
d0000e58:	ea42 0a08 	orr.w	sl, r2, r8
d0000e5c:	ea4f 0b83 	mov.w	fp, r3, lsl #2
d0000e60:	f01a 0f07 	tst.w	sl, #7
d0000e64:	f040 80f4 	bne.w	d0001050 <initEngine+0x280>
d0000e68:	f109 3aff 	add.w	sl, r9, #4294967295	; 0xffffffff
d0000e6c:	f1ba 0f02 	cmp.w	sl, #2
d0000e70:	f240 80ee 	bls.w	d0001050 <initEngine+0x280>
d0000e74:	ea4f 0159 	mov.w	r1, r9, lsr #1
d0000e78:	9101      	str	r1, [sp, #4]
d0000e7a:	e9d8 0100 	ldrd	r0, r1, [r8]
d0000e7e:	e9c2 0100 	strd	r0, r1, [r2]
d0000e82:	e9d8 0102 	ldrd	r0, r1, [r8, #8]
d0000e86:	e9c2 0102 	strd	r0, r1, [r2, #8]
d0000e8a:	e9d8 0104 	ldrd	r0, r1, [r8, #16]
d0000e8e:	e9c2 0104 	strd	r0, r1, [r2, #16]
d0000e92:	e9d8 0106 	ldrd	r0, r1, [r8, #24]
d0000e96:	e9c2 0106 	strd	r0, r1, [r2, #24]
d0000e9a:	e9d8 0108 	ldrd	r0, r1, [r8, #32]
d0000e9e:	e9c2 0108 	strd	r0, r1, [r2, #32]
d0000ea2:	9901      	ldr	r1, [sp, #4]
d0000ea4:	2901      	cmp	r1, #1
d0000ea6:	f000 809f 	beq.w	d0000fe8 <initEngine+0x218>
d0000eaa:	e9d8 010a 	ldrd	r0, r1, [r8, #40]	; 0x28
d0000eae:	e9c2 010a 	strd	r0, r1, [r2, #40]	; 0x28
d0000eb2:	e9d8 010e 	ldrd	r0, r1, [r8, #56]	; 0x38
d0000eb6:	e9d8 ab0c 	ldrd	sl, fp, [r8, #48]	; 0x30
d0000eba:	e9c2 010e 	strd	r0, r1, [r2, #56]	; 0x38
d0000ebe:	e9c2 ab0c 	strd	sl, fp, [r2, #48]	; 0x30
d0000ec2:	e9d8 0112 	ldrd	r0, r1, [r8, #72]	; 0x48
d0000ec6:	e9d8 ab10 	ldrd	sl, fp, [r8, #64]	; 0x40
d0000eca:	e9c2 0112 	strd	r0, r1, [r2, #72]	; 0x48
d0000ece:	9901      	ldr	r1, [sp, #4]
d0000ed0:	2902      	cmp	r1, #2
d0000ed2:	e9c2 ab10 	strd	sl, fp, [r2, #64]	; 0x40
d0000ed6:	f000 8087 	beq.w	d0000fe8 <initEngine+0x218>
d0000eda:	e9d8 0114 	ldrd	r0, r1, [r8, #80]	; 0x50
d0000ede:	e9c2 0114 	strd	r0, r1, [r2, #80]	; 0x50
d0000ee2:	e9d8 0118 	ldrd	r0, r1, [r8, #96]	; 0x60
d0000ee6:	e9d8 ab16 	ldrd	sl, fp, [r8, #88]	; 0x58
d0000eea:	e9c2 0118 	strd	r0, r1, [r2, #96]	; 0x60
d0000eee:	e9c2 ab16 	strd	sl, fp, [r2, #88]	; 0x58
d0000ef2:	e9d8 011c 	ldrd	r0, r1, [r8, #112]	; 0x70
d0000ef6:	e9d8 ab1a 	ldrd	sl, fp, [r8, #104]	; 0x68
d0000efa:	e9c2 011c 	strd	r0, r1, [r2, #112]	; 0x70
d0000efe:	9901      	ldr	r1, [sp, #4]
d0000f00:	2903      	cmp	r1, #3
d0000f02:	e9c2 ab1a 	strd	sl, fp, [r2, #104]	; 0x68
d0000f06:	d06f      	beq.n	d0000fe8 <initEngine+0x218>
d0000f08:	e9d8 011e 	ldrd	r0, r1, [r8, #120]	; 0x78
d0000f0c:	e9c2 011e 	strd	r0, r1, [r2, #120]	; 0x78
d0000f10:	e9d8 0122 	ldrd	r0, r1, [r8, #136]	; 0x88
d0000f14:	e9d8 ab20 	ldrd	sl, fp, [r8, #128]	; 0x80
d0000f18:	e9c2 0122 	strd	r0, r1, [r2, #136]	; 0x88
d0000f1c:	e9c2 ab20 	strd	sl, fp, [r2, #128]	; 0x80
d0000f20:	e9d8 0126 	ldrd	r0, r1, [r8, #152]	; 0x98
d0000f24:	e9d8 ab24 	ldrd	sl, fp, [r8, #144]	; 0x90
d0000f28:	e9c2 0126 	strd	r0, r1, [r2, #152]	; 0x98
d0000f2c:	9901      	ldr	r1, [sp, #4]
d0000f2e:	2904      	cmp	r1, #4
d0000f30:	e9c2 ab24 	strd	sl, fp, [r2, #144]	; 0x90
d0000f34:	d058      	beq.n	d0000fe8 <initEngine+0x218>
d0000f36:	e9d8 0128 	ldrd	r0, r1, [r8, #160]	; 0xa0
d0000f3a:	e9c2 0128 	strd	r0, r1, [r2, #160]	; 0xa0
d0000f3e:	e9d8 012c 	ldrd	r0, r1, [r8, #176]	; 0xb0
d0000f42:	e9d8 ab2a 	ldrd	sl, fp, [r8, #168]	; 0xa8
d0000f46:	e9c2 012c 	strd	r0, r1, [r2, #176]	; 0xb0
d0000f4a:	e9c2 ab2a 	strd	sl, fp, [r2, #168]	; 0xa8
d0000f4e:	e9d8 0130 	ldrd	r0, r1, [r8, #192]	; 0xc0
d0000f52:	e9d8 ab2e 	ldrd	sl, fp, [r8, #184]	; 0xb8
d0000f56:	e9c2 0130 	strd	r0, r1, [r2, #192]	; 0xc0
d0000f5a:	9901      	ldr	r1, [sp, #4]
d0000f5c:	2905      	cmp	r1, #5
d0000f5e:	e9c2 ab2e 	strd	sl, fp, [r2, #184]	; 0xb8
d0000f62:	d041      	beq.n	d0000fe8 <initEngine+0x218>
d0000f64:	e9d8 0132 	ldrd	r0, r1, [r8, #200]	; 0xc8
d0000f68:	e9c2 0132 	strd	r0, r1, [r2, #200]	; 0xc8
d0000f6c:	e9d8 0136 	ldrd	r0, r1, [r8, #216]	; 0xd8
d0000f70:	e9d8 ab34 	ldrd	sl, fp, [r8, #208]	; 0xd0
d0000f74:	e9c2 0136 	strd	r0, r1, [r2, #216]	; 0xd8
d0000f78:	e9c2 ab34 	strd	sl, fp, [r2, #208]	; 0xd0
d0000f7c:	e9d8 013a 	ldrd	r0, r1, [r8, #232]	; 0xe8
d0000f80:	e9d8 ab38 	ldrd	sl, fp, [r8, #224]	; 0xe0
d0000f84:	e9c2 013a 	strd	r0, r1, [r2, #232]	; 0xe8
d0000f88:	9901      	ldr	r1, [sp, #4]
d0000f8a:	2906      	cmp	r1, #6
d0000f8c:	e9c2 ab38 	strd	sl, fp, [r2, #224]	; 0xe0
d0000f90:	d02a      	beq.n	d0000fe8 <initEngine+0x218>
d0000f92:	e9d8 013c 	ldrd	r0, r1, [r8, #240]	; 0xf0
d0000f96:	e9c2 013c 	strd	r0, r1, [r2, #240]	; 0xf0
d0000f9a:	e9d8 0140 	ldrd	r0, r1, [r8, #256]	; 0x100
d0000f9e:	e9d8 ab3e 	ldrd	sl, fp, [r8, #248]	; 0xf8
d0000fa2:	e9c2 0140 	strd	r0, r1, [r2, #256]	; 0x100
d0000fa6:	e9c2 ab3e 	strd	sl, fp, [r2, #248]	; 0xf8
d0000faa:	e9d8 0144 	ldrd	r0, r1, [r8, #272]	; 0x110
d0000fae:	e9d8 ab42 	ldrd	sl, fp, [r8, #264]	; 0x108
d0000fb2:	e9c2 0144 	strd	r0, r1, [r2, #272]	; 0x110
d0000fb6:	9901      	ldr	r1, [sp, #4]
d0000fb8:	2907      	cmp	r1, #7
d0000fba:	e9c2 ab42 	strd	sl, fp, [r2, #264]	; 0x108
d0000fbe:	d013      	beq.n	d0000fe8 <initEngine+0x218>
d0000fc0:	e9d8 0146 	ldrd	r0, r1, [r8, #280]	; 0x118
d0000fc4:	e9d8 ab48 	ldrd	sl, fp, [r8, #288]	; 0x120
d0000fc8:	e9c2 0146 	strd	r0, r1, [r2, #280]	; 0x118
d0000fcc:	e9c2 ab48 	strd	sl, fp, [r2, #288]	; 0x120
d0000fd0:	e9d8 ab4a 	ldrd	sl, fp, [r8, #296]	; 0x128
d0000fd4:	e9d8 014c 	ldrd	r0, r1, [r8, #304]	; 0x130
d0000fd8:	e9c2 ab4a 	strd	sl, fp, [r2, #296]	; 0x128
d0000fdc:	e9d8 ab4e 	ldrd	sl, fp, [r8, #312]	; 0x138
d0000fe0:	e9c2 014c 	strd	r0, r1, [r2, #304]	; 0x130
d0000fe4:	e9c2 ab4e 	strd	sl, fp, [r2, #312]	; 0x138
d0000fe8:	f029 0101 	bic.w	r1, r9, #1
d0000fec:	eb01 0281 	add.w	r2, r1, r1, lsl #2
d0000ff0:	4589      	cmp	r9, r1
d0000ff2:	440b      	add	r3, r1
d0000ff4:	4462      	add	r2, ip
d0000ff6:	d011      	beq.n	d000101c <initEngine+0x24c>
d0000ff8:	f855 1022 	ldr.w	r1, [r5, r2, lsl #2]
d0000ffc:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0001000:	eb05 0282 	add.w	r2, r5, r2, lsl #2
d0001004:	f844 1023 	str.w	r1, [r4, r3, lsl #2]
d0001008:	eb04 0083 	add.w	r0, r4, r3, lsl #2
d000100c:	e9d2 a301 	ldrd	sl, r3, [r2, #4]
d0001010:	e9d2 1203 	ldrd	r1, r2, [r2, #12]
d0001014:	e9c0 a301 	strd	sl, r3, [r0, #4]
d0001018:	e9c0 1203 	strd	r1, r2, [r0, #12]
d000101c:	eb09 0989 	add.w	r9, r9, r9, lsl #2
d0001020:	44cc      	add	ip, r9
d0001022:	f506 66f4 	add.w	r6, r6, #1952	; 0x7a0
d0001026:	3718      	adds	r7, #24
d0001028:	45b6      	cmp	lr, r6
d000102a:	f47f aefb 	bne.w	d0000e24 <initEngine+0x54>
d000102e:	b003      	add	sp, #12
d0001030:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0001034:	d0010a20 	.word	0xd0010a20
d0001038:	2001f000 	.word	0x2001f000
d000103c:	d0011560 	.word	0xd0011560
d0001040:	d0002308 	.word	0xd0002308
d0001044:	d00020d4 	.word	0xd00020d4
d0001048:	d0002134 	.word	0xd0002134
d000104c:	d00107c8 	.word	0xd00107c8
d0001050:	586a      	ldr	r2, [r5, r1]
d0001052:	eb05 0a01 	add.w	sl, r5, r1
d0001056:	449b      	add	fp, r3
d0001058:	1c59      	adds	r1, r3, #1
d000105a:	f844 202b 	str.w	r2, [r4, fp, lsl #2]
d000105e:	eb04 088b 	add.w	r8, r4, fp, lsl #2
d0001062:	f8da 2004 	ldr.w	r2, [sl, #4]
d0001066:	4288      	cmp	r0, r1
d0001068:	f10c 0b05 	add.w	fp, ip, #5
d000106c:	f8c8 2004 	str.w	r2, [r8, #4]
d0001070:	f8da 2008 	ldr.w	r2, [sl, #8]
d0001074:	f8c8 2008 	str.w	r2, [r8, #8]
d0001078:	f8da 200c 	ldr.w	r2, [sl, #12]
d000107c:	9201      	str	r2, [sp, #4]
d000107e:	f8da 2010 	ldr.w	r2, [sl, #16]
d0001082:	f8c8 2010 	str.w	r2, [r8, #16]
d0001086:	9a01      	ldr	r2, [sp, #4]
d0001088:	f8c8 200c 	str.w	r2, [r8, #12]
d000108c:	ddc6      	ble.n	d000101c <initEngine+0x24c>
d000108e:	f855 202b 	ldr.w	r2, [r5, fp, lsl #2]
d0001092:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d0001096:	eb05 0b8b 	add.w	fp, r5, fp, lsl #2
d000109a:	f103 0802 	add.w	r8, r3, #2
d000109e:	f844 2021 	str.w	r2, [r4, r1, lsl #2]
d00010a2:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d00010a6:	f8db 2004 	ldr.w	r2, [fp, #4]
d00010aa:	4540      	cmp	r0, r8
d00010ac:	f10c 0a0a 	add.w	sl, ip, #10
d00010b0:	604a      	str	r2, [r1, #4]
d00010b2:	f8db 2008 	ldr.w	r2, [fp, #8]
d00010b6:	608a      	str	r2, [r1, #8]
d00010b8:	f8db 200c 	ldr.w	r2, [fp, #12]
d00010bc:	9201      	str	r2, [sp, #4]
d00010be:	f8db 2010 	ldr.w	r2, [fp, #16]
d00010c2:	610a      	str	r2, [r1, #16]
d00010c4:	9a01      	ldr	r2, [sp, #4]
d00010c6:	60ca      	str	r2, [r1, #12]
d00010c8:	dda8      	ble.n	d000101c <initEngine+0x24c>
d00010ca:	f855 202a 	ldr.w	r2, [r5, sl, lsl #2]
d00010ce:	eb08 0888 	add.w	r8, r8, r8, lsl #2
d00010d2:	eb05 0a8a 	add.w	sl, r5, sl, lsl #2
d00010d6:	f103 0b03 	add.w	fp, r3, #3
d00010da:	f844 2028 	str.w	r2, [r4, r8, lsl #2]
d00010de:	eb04 0188 	add.w	r1, r4, r8, lsl #2
d00010e2:	f8da 2004 	ldr.w	r2, [sl, #4]
d00010e6:	4558      	cmp	r0, fp
d00010e8:	f10c 080f 	add.w	r8, ip, #15
d00010ec:	604a      	str	r2, [r1, #4]
d00010ee:	f8da 2008 	ldr.w	r2, [sl, #8]
d00010f2:	608a      	str	r2, [r1, #8]
d00010f4:	f8da 200c 	ldr.w	r2, [sl, #12]
d00010f8:	9201      	str	r2, [sp, #4]
d00010fa:	f8da 2010 	ldr.w	r2, [sl, #16]
d00010fe:	610a      	str	r2, [r1, #16]
d0001100:	9a01      	ldr	r2, [sp, #4]
d0001102:	60ca      	str	r2, [r1, #12]
d0001104:	dd8a      	ble.n	d000101c <initEngine+0x24c>
d0001106:	f855 2028 	ldr.w	r2, [r5, r8, lsl #2]
d000110a:	eb0b 0b8b 	add.w	fp, fp, fp, lsl #2
d000110e:	eb05 0888 	add.w	r8, r5, r8, lsl #2
d0001112:	f103 0a04 	add.w	sl, r3, #4
d0001116:	f844 202b 	str.w	r2, [r4, fp, lsl #2]
d000111a:	eb04 018b 	add.w	r1, r4, fp, lsl #2
d000111e:	f8d8 2004 	ldr.w	r2, [r8, #4]
d0001122:	4550      	cmp	r0, sl
d0001124:	f10c 0b14 	add.w	fp, ip, #20
d0001128:	604a      	str	r2, [r1, #4]
d000112a:	f8d8 2008 	ldr.w	r2, [r8, #8]
d000112e:	608a      	str	r2, [r1, #8]
d0001130:	f8d8 200c 	ldr.w	r2, [r8, #12]
d0001134:	9201      	str	r2, [sp, #4]
d0001136:	f8d8 2010 	ldr.w	r2, [r8, #16]
d000113a:	610a      	str	r2, [r1, #16]
d000113c:	9a01      	ldr	r2, [sp, #4]
d000113e:	60ca      	str	r2, [r1, #12]
d0001140:	f77f af6c 	ble.w	d000101c <initEngine+0x24c>
d0001144:	f855 202b 	ldr.w	r2, [r5, fp, lsl #2]
d0001148:	eb0a 0a8a 	add.w	sl, sl, sl, lsl #2
d000114c:	eb05 0b8b 	add.w	fp, r5, fp, lsl #2
d0001150:	f103 0805 	add.w	r8, r3, #5
d0001154:	f844 202a 	str.w	r2, [r4, sl, lsl #2]
d0001158:	eb04 018a 	add.w	r1, r4, sl, lsl #2
d000115c:	f8db 2004 	ldr.w	r2, [fp, #4]
d0001160:	4540      	cmp	r0, r8
d0001162:	f10c 0a19 	add.w	sl, ip, #25
d0001166:	604a      	str	r2, [r1, #4]
d0001168:	f8db 2008 	ldr.w	r2, [fp, #8]
d000116c:	608a      	str	r2, [r1, #8]
d000116e:	f8db 200c 	ldr.w	r2, [fp, #12]
d0001172:	9201      	str	r2, [sp, #4]
d0001174:	f8db 2010 	ldr.w	r2, [fp, #16]
d0001178:	610a      	str	r2, [r1, #16]
d000117a:	9a01      	ldr	r2, [sp, #4]
d000117c:	60ca      	str	r2, [r1, #12]
d000117e:	f77f af4d 	ble.w	d000101c <initEngine+0x24c>
d0001182:	f855 202a 	ldr.w	r2, [r5, sl, lsl #2]
d0001186:	eb08 0888 	add.w	r8, r8, r8, lsl #2
d000118a:	eb05 0a8a 	add.w	sl, r5, sl, lsl #2
d000118e:	f103 0b06 	add.w	fp, r3, #6
d0001192:	f844 2028 	str.w	r2, [r4, r8, lsl #2]
d0001196:	eb04 0188 	add.w	r1, r4, r8, lsl #2
d000119a:	f8da 2004 	ldr.w	r2, [sl, #4]
d000119e:	4558      	cmp	r0, fp
d00011a0:	f10c 081e 	add.w	r8, ip, #30
d00011a4:	604a      	str	r2, [r1, #4]
d00011a6:	f8da 2008 	ldr.w	r2, [sl, #8]
d00011aa:	608a      	str	r2, [r1, #8]
d00011ac:	f8da 200c 	ldr.w	r2, [sl, #12]
d00011b0:	9201      	str	r2, [sp, #4]
d00011b2:	f8da 2010 	ldr.w	r2, [sl, #16]
d00011b6:	610a      	str	r2, [r1, #16]
d00011b8:	9a01      	ldr	r2, [sp, #4]
d00011ba:	60ca      	str	r2, [r1, #12]
d00011bc:	f77f af2e 	ble.w	d000101c <initEngine+0x24c>
d00011c0:	f855 2028 	ldr.w	r2, [r5, r8, lsl #2]
d00011c4:	eb0b 0b8b 	add.w	fp, fp, fp, lsl #2
d00011c8:	eb05 0888 	add.w	r8, r5, r8, lsl #2
d00011cc:	f103 0a07 	add.w	sl, r3, #7
d00011d0:	f844 202b 	str.w	r2, [r4, fp, lsl #2]
d00011d4:	eb04 018b 	add.w	r1, r4, fp, lsl #2
d00011d8:	f8d8 2004 	ldr.w	r2, [r8, #4]
d00011dc:	4550      	cmp	r0, sl
d00011de:	f10c 0b23 	add.w	fp, ip, #35	; 0x23
d00011e2:	604a      	str	r2, [r1, #4]
d00011e4:	f8d8 2008 	ldr.w	r2, [r8, #8]
d00011e8:	608a      	str	r2, [r1, #8]
d00011ea:	f8d8 200c 	ldr.w	r2, [r8, #12]
d00011ee:	9201      	str	r2, [sp, #4]
d00011f0:	f8d8 2010 	ldr.w	r2, [r8, #16]
d00011f4:	610a      	str	r2, [r1, #16]
d00011f6:	9a01      	ldr	r2, [sp, #4]
d00011f8:	60ca      	str	r2, [r1, #12]
d00011fa:	f77f af0f 	ble.w	d000101c <initEngine+0x24c>
d00011fe:	f855 202b 	ldr.w	r2, [r5, fp, lsl #2]
d0001202:	eb0a 0a8a 	add.w	sl, sl, sl, lsl #2
d0001206:	eb05 0b8b 	add.w	fp, r5, fp, lsl #2
d000120a:	f103 0808 	add.w	r8, r3, #8
d000120e:	f844 202a 	str.w	r2, [r4, sl, lsl #2]
d0001212:	eb04 018a 	add.w	r1, r4, sl, lsl #2
d0001216:	f8db 2004 	ldr.w	r2, [fp, #4]
d000121a:	4540      	cmp	r0, r8
d000121c:	f10c 0a28 	add.w	sl, ip, #40	; 0x28
d0001220:	604a      	str	r2, [r1, #4]
d0001222:	f8db 2008 	ldr.w	r2, [fp, #8]
d0001226:	608a      	str	r2, [r1, #8]
d0001228:	f8db 200c 	ldr.w	r2, [fp, #12]
d000122c:	9201      	str	r2, [sp, #4]
d000122e:	f8db 2010 	ldr.w	r2, [fp, #16]
d0001232:	610a      	str	r2, [r1, #16]
d0001234:	9a01      	ldr	r2, [sp, #4]
d0001236:	60ca      	str	r2, [r1, #12]
d0001238:	f77f aef0 	ble.w	d000101c <initEngine+0x24c>
d000123c:	f855 202a 	ldr.w	r2, [r5, sl, lsl #2]
d0001240:	eb08 0888 	add.w	r8, r8, r8, lsl #2
d0001244:	eb05 0a8a 	add.w	sl, r5, sl, lsl #2
d0001248:	f103 0b09 	add.w	fp, r3, #9
d000124c:	f844 2028 	str.w	r2, [r4, r8, lsl #2]
d0001250:	eb04 0188 	add.w	r1, r4, r8, lsl #2
d0001254:	f8da 2004 	ldr.w	r2, [sl, #4]
d0001258:	4558      	cmp	r0, fp
d000125a:	f10c 082d 	add.w	r8, ip, #45	; 0x2d
d000125e:	604a      	str	r2, [r1, #4]
d0001260:	f8da 2008 	ldr.w	r2, [sl, #8]
d0001264:	608a      	str	r2, [r1, #8]
d0001266:	f8da 200c 	ldr.w	r2, [sl, #12]
d000126a:	9201      	str	r2, [sp, #4]
d000126c:	f8da 2010 	ldr.w	r2, [sl, #16]
d0001270:	610a      	str	r2, [r1, #16]
d0001272:	9a01      	ldr	r2, [sp, #4]
d0001274:	60ca      	str	r2, [r1, #12]
d0001276:	f77f aed1 	ble.w	d000101c <initEngine+0x24c>
d000127a:	f855 2028 	ldr.w	r2, [r5, r8, lsl #2]
d000127e:	eb0b 0b8b 	add.w	fp, fp, fp, lsl #2
d0001282:	eb05 0888 	add.w	r8, r5, r8, lsl #2
d0001286:	f103 010a 	add.w	r1, r3, #10
d000128a:	f844 202b 	str.w	r2, [r4, fp, lsl #2]
d000128e:	eb04 0a8b 	add.w	sl, r4, fp, lsl #2
d0001292:	f8d8 2004 	ldr.w	r2, [r8, #4]
d0001296:	4288      	cmp	r0, r1
d0001298:	f10c 0b32 	add.w	fp, ip, #50	; 0x32
d000129c:	f8ca 2004 	str.w	r2, [sl, #4]
d00012a0:	f8d8 2008 	ldr.w	r2, [r8, #8]
d00012a4:	f8ca 2008 	str.w	r2, [sl, #8]
d00012a8:	f8d8 200c 	ldr.w	r2, [r8, #12]
d00012ac:	9201      	str	r2, [sp, #4]
d00012ae:	f8d8 2010 	ldr.w	r2, [r8, #16]
d00012b2:	f8ca 2010 	str.w	r2, [sl, #16]
d00012b6:	9a01      	ldr	r2, [sp, #4]
d00012b8:	f8ca 200c 	str.w	r2, [sl, #12]
d00012bc:	f77f aeae 	ble.w	d000101c <initEngine+0x24c>
d00012c0:	f855 202b 	ldr.w	r2, [r5, fp, lsl #2]
d00012c4:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d00012c8:	eb05 0b8b 	add.w	fp, r5, fp, lsl #2
d00012cc:	f103 080b 	add.w	r8, r3, #11
d00012d0:	f844 2021 	str.w	r2, [r4, r1, lsl #2]
d00012d4:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d00012d8:	f8db 2004 	ldr.w	r2, [fp, #4]
d00012dc:	4540      	cmp	r0, r8
d00012de:	f10c 0a37 	add.w	sl, ip, #55	; 0x37
d00012e2:	604a      	str	r2, [r1, #4]
d00012e4:	f8db 2008 	ldr.w	r2, [fp, #8]
d00012e8:	608a      	str	r2, [r1, #8]
d00012ea:	f8db 200c 	ldr.w	r2, [fp, #12]
d00012ee:	9201      	str	r2, [sp, #4]
d00012f0:	f8db 2010 	ldr.w	r2, [fp, #16]
d00012f4:	610a      	str	r2, [r1, #16]
d00012f6:	9a01      	ldr	r2, [sp, #4]
d00012f8:	60ca      	str	r2, [r1, #12]
d00012fa:	f77f ae8f 	ble.w	d000101c <initEngine+0x24c>
d00012fe:	f855 202a 	ldr.w	r2, [r5, sl, lsl #2]
d0001302:	eb08 0888 	add.w	r8, r8, r8, lsl #2
d0001306:	eb05 0a8a 	add.w	sl, r5, sl, lsl #2
d000130a:	f103 0b0c 	add.w	fp, r3, #12
d000130e:	f844 2028 	str.w	r2, [r4, r8, lsl #2]
d0001312:	eb04 0188 	add.w	r1, r4, r8, lsl #2
d0001316:	f8da 2004 	ldr.w	r2, [sl, #4]
d000131a:	4558      	cmp	r0, fp
d000131c:	f10c 083c 	add.w	r8, ip, #60	; 0x3c
d0001320:	604a      	str	r2, [r1, #4]
d0001322:	f8da 2008 	ldr.w	r2, [sl, #8]
d0001326:	608a      	str	r2, [r1, #8]
d0001328:	f8da 200c 	ldr.w	r2, [sl, #12]
d000132c:	9201      	str	r2, [sp, #4]
d000132e:	f8da 2010 	ldr.w	r2, [sl, #16]
d0001332:	610a      	str	r2, [r1, #16]
d0001334:	9a01      	ldr	r2, [sp, #4]
d0001336:	60ca      	str	r2, [r1, #12]
d0001338:	f77f ae70 	ble.w	d000101c <initEngine+0x24c>
d000133c:	f855 2028 	ldr.w	r2, [r5, r8, lsl #2]
d0001340:	eb0b 0b8b 	add.w	fp, fp, fp, lsl #2
d0001344:	eb05 0888 	add.w	r8, r5, r8, lsl #2
d0001348:	f103 0a0d 	add.w	sl, r3, #13
d000134c:	f844 202b 	str.w	r2, [r4, fp, lsl #2]
d0001350:	eb04 018b 	add.w	r1, r4, fp, lsl #2
d0001354:	f8d8 2004 	ldr.w	r2, [r8, #4]
d0001358:	4550      	cmp	r0, sl
d000135a:	f10c 0b41 	add.w	fp, ip, #65	; 0x41
d000135e:	604a      	str	r2, [r1, #4]
d0001360:	f8d8 2008 	ldr.w	r2, [r8, #8]
d0001364:	608a      	str	r2, [r1, #8]
d0001366:	f8d8 200c 	ldr.w	r2, [r8, #12]
d000136a:	9201      	str	r2, [sp, #4]
d000136c:	f8d8 2010 	ldr.w	r2, [r8, #16]
d0001370:	610a      	str	r2, [r1, #16]
d0001372:	9a01      	ldr	r2, [sp, #4]
d0001374:	60ca      	str	r2, [r1, #12]
d0001376:	f77f ae51 	ble.w	d000101c <initEngine+0x24c>
d000137a:	f855 202b 	ldr.w	r2, [r5, fp, lsl #2]
d000137e:	eb0a 0a8a 	add.w	sl, sl, sl, lsl #2
d0001382:	eb05 0b8b 	add.w	fp, r5, fp, lsl #2
d0001386:	f103 080e 	add.w	r8, r3, #14
d000138a:	f844 202a 	str.w	r2, [r4, sl, lsl #2]
d000138e:	eb04 018a 	add.w	r1, r4, sl, lsl #2
d0001392:	f8db 2004 	ldr.w	r2, [fp, #4]
d0001396:	4540      	cmp	r0, r8
d0001398:	f10c 0a46 	add.w	sl, ip, #70	; 0x46
d000139c:	604a      	str	r2, [r1, #4]
d000139e:	f8db 2008 	ldr.w	r2, [fp, #8]
d00013a2:	608a      	str	r2, [r1, #8]
d00013a4:	f8db 200c 	ldr.w	r2, [fp, #12]
d00013a8:	9201      	str	r2, [sp, #4]
d00013aa:	f8db 2010 	ldr.w	r2, [fp, #16]
d00013ae:	610a      	str	r2, [r1, #16]
d00013b0:	9a01      	ldr	r2, [sp, #4]
d00013b2:	60ca      	str	r2, [r1, #12]
d00013b4:	f77f ae32 	ble.w	d000101c <initEngine+0x24c>
d00013b8:	f855 202a 	ldr.w	r2, [r5, sl, lsl #2]
d00013bc:	eb05 018a 	add.w	r1, r5, sl, lsl #2
d00013c0:	eb08 0888 	add.w	r8, r8, r8, lsl #2
d00013c4:	330f      	adds	r3, #15
d00013c6:	f844 2028 	str.w	r2, [r4, r8, lsl #2]
d00013ca:	eb04 0a88 	add.w	sl, r4, r8, lsl #2
d00013ce:	684a      	ldr	r2, [r1, #4]
d00013d0:	4298      	cmp	r0, r3
d00013d2:	f10c 084b 	add.w	r8, ip, #75	; 0x4b
d00013d6:	f8ca 2004 	str.w	r2, [sl, #4]
d00013da:	688a      	ldr	r2, [r1, #8]
d00013dc:	f8ca 2008 	str.w	r2, [sl, #8]
d00013e0:	e9d1 2103 	ldrd	r2, r1, [r1, #12]
d00013e4:	e9ca 2103 	strd	r2, r1, [sl, #12]
d00013e8:	f77f ae18 	ble.w	d000101c <initEngine+0x24c>
d00013ec:	f855 2028 	ldr.w	r2, [r5, r8, lsl #2]
d00013f0:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d00013f4:	eb05 0888 	add.w	r8, r5, r8, lsl #2
d00013f8:	f844 2023 	str.w	r2, [r4, r3, lsl #2]
d00013fc:	eb04 0183 	add.w	r1, r4, r3, lsl #2
d0001400:	e9d8 3001 	ldrd	r3, r0, [r8, #4]
d0001404:	604b      	str	r3, [r1, #4]
d0001406:	e9d8 2303 	ldrd	r2, r3, [r8, #12]
d000140a:	e9c1 0202 	strd	r0, r2, [r1, #8]
d000140e:	610b      	str	r3, [r1, #16]
d0001410:	e604      	b.n	d000101c <initEngine+0x24c>
d0001412:	bf00      	nop
d0001414:	0000      	movs	r0, r0
	...

d0001418 <draw3D>:
d0001418:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d000141c:	f8df b390 	ldr.w	fp, [pc, #912]	; d00017b0 <draw3D+0x398>
d0001420:	4bdd      	ldr	r3, [pc, #884]	; (d0001798 <draw3D+0x380>)
d0001422:	f8db 200c 	ldr.w	r2, [fp, #12]
d0001426:	4cdd      	ldr	r4, [pc, #884]	; (d000179c <draw3D+0x384>)
d0001428:	f502 71b4 	add.w	r1, r2, #360	; 0x168
d000142c:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d0001430:	f8d4 07b0 	ldr.w	r0, [r4, #1968]	; 0x7b0
d0001434:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d0001438:	6921      	ldr	r1, [r4, #16]
d000143a:	4288      	cmp	r0, r1
d000143c:	ed2d 8b0e 	vpush	{d8-d14}
d0001440:	ed92 ea00 	vldr	s28, [r2]
d0001444:	f2ad 7dbc 	subw	sp, sp, #1980	; 0x7bc
d0001448:	edd3 ea00 	vldr	s29, [r3]
d000144c:	dd11      	ble.n	d0001472 <draw3D+0x5a>
d000144e:	f44f 62f4 	mov.w	r2, #1952	; 0x7a0
d0001452:	4621      	mov	r1, r4
d0001454:	a806      	add	r0, sp, #24
d0001456:	f000 fb99 	bl	d0001b8c <memcpy>
d000145a:	f44f 62f4 	mov.w	r2, #1952	; 0x7a0
d000145e:	4620      	mov	r0, r4
d0001460:	18a1      	adds	r1, r4, r2
d0001462:	f000 fb93 	bl	d0001b8c <memcpy>
d0001466:	f44f 62f4 	mov.w	r2, #1952	; 0x7a0
d000146a:	a906      	add	r1, sp, #24
d000146c:	18a0      	adds	r0, r4, r2
d000146e:	f000 fb8d 	bl	d0001b8c <memcpy>
d0001472:	4bca      	ldr	r3, [pc, #808]	; (d000179c <draw3D+0x384>)
d0001474:	f8d3 2f50 	ldr.w	r2, [r3, #3920]	; 0xf50
d0001478:	f8d3 37b0 	ldr.w	r3, [r3, #1968]	; 0x7b0
d000147c:	429a      	cmp	r2, r3
d000147e:	dd12      	ble.n	d00014a6 <draw3D+0x8e>
d0001480:	f44f 62f4 	mov.w	r2, #1952	; 0x7a0
d0001484:	49c6      	ldr	r1, [pc, #792]	; (d00017a0 <draw3D+0x388>)
d0001486:	a806      	add	r0, sp, #24
d0001488:	f000 fb80 	bl	d0001b8c <memcpy>
d000148c:	49c5      	ldr	r1, [pc, #788]	; (d00017a4 <draw3D+0x38c>)
d000148e:	f44f 62f4 	mov.w	r2, #1952	; 0x7a0
d0001492:	f5a1 60f4 	sub.w	r0, r1, #1952	; 0x7a0
d0001496:	f000 fb79 	bl	d0001b8c <memcpy>
d000149a:	a906      	add	r1, sp, #24
d000149c:	f44f 62f4 	mov.w	r2, #1952	; 0x7a0
d00014a0:	48c0      	ldr	r0, [pc, #768]	; (d00017a4 <draw3D+0x38c>)
d00014a2:	f000 fb73 	bl	d0001b8c <memcpy>
d00014a6:	49bd      	ldr	r1, [pc, #756]	; (d000179c <draw3D+0x384>)
d00014a8:	f241 62f0 	movw	r2, #5872	; 0x16f0
d00014ac:	f8d1 3f50 	ldr.w	r3, [r1, #3920]	; 0xf50
d00014b0:	588a      	ldr	r2, [r1, r2]
d00014b2:	429a      	cmp	r2, r3
d00014b4:	f300 8294 	bgt.w	d00019e0 <draw3D+0x5c8>
d00014b8:	4bb8      	ldr	r3, [pc, #736]	; (d000179c <draw3D+0x384>)
d00014ba:	f8d3 27b0 	ldr.w	r2, [r3, #1968]	; 0x7b0
d00014be:	691b      	ldr	r3, [r3, #16]
d00014c0:	429a      	cmp	r2, r3
d00014c2:	dd12      	ble.n	d00014ea <draw3D+0xd2>
d00014c4:	f44f 62f4 	mov.w	r2, #1952	; 0x7a0
d00014c8:	49b4      	ldr	r1, [pc, #720]	; (d000179c <draw3D+0x384>)
d00014ca:	a806      	add	r0, sp, #24
d00014cc:	f000 fb5e 	bl	d0001b8c <memcpy>
d00014d0:	49b3      	ldr	r1, [pc, #716]	; (d00017a0 <draw3D+0x388>)
d00014d2:	f44f 62f4 	mov.w	r2, #1952	; 0x7a0
d00014d6:	f5a1 60f4 	sub.w	r0, r1, #1952	; 0x7a0
d00014da:	f000 fb57 	bl	d0001b8c <memcpy>
d00014de:	a906      	add	r1, sp, #24
d00014e0:	f44f 62f4 	mov.w	r2, #1952	; 0x7a0
d00014e4:	48ae      	ldr	r0, [pc, #696]	; (d00017a0 <draw3D+0x388>)
d00014e6:	f000 fb51 	bl	d0001b8c <memcpy>
d00014ea:	4bac      	ldr	r3, [pc, #688]	; (d000179c <draw3D+0x384>)
d00014ec:	f8d3 2f50 	ldr.w	r2, [r3, #3920]	; 0xf50
d00014f0:	f8d3 37b0 	ldr.w	r3, [r3, #1968]	; 0x7b0
d00014f4:	429a      	cmp	r2, r3
d00014f6:	dd12      	ble.n	d000151e <draw3D+0x106>
d00014f8:	f44f 62f4 	mov.w	r2, #1952	; 0x7a0
d00014fc:	49a8      	ldr	r1, [pc, #672]	; (d00017a0 <draw3D+0x388>)
d00014fe:	a806      	add	r0, sp, #24
d0001500:	f000 fb44 	bl	d0001b8c <memcpy>
d0001504:	49a7      	ldr	r1, [pc, #668]	; (d00017a4 <draw3D+0x38c>)
d0001506:	f44f 62f4 	mov.w	r2, #1952	; 0x7a0
d000150a:	f5a1 60f4 	sub.w	r0, r1, #1952	; 0x7a0
d000150e:	f000 fb3d 	bl	d0001b8c <memcpy>
d0001512:	a906      	add	r1, sp, #24
d0001514:	f44f 62f4 	mov.w	r2, #1952	; 0x7a0
d0001518:	48a2      	ldr	r0, [pc, #648]	; (d00017a4 <draw3D+0x38c>)
d000151a:	f000 fb37 	bl	d0001b8c <memcpy>
d000151e:	4b9f      	ldr	r3, [pc, #636]	; (d000179c <draw3D+0x384>)
d0001520:	f8d3 27b0 	ldr.w	r2, [r3, #1968]	; 0x7b0
d0001524:	691b      	ldr	r3, [r3, #16]
d0001526:	429a      	cmp	r2, r3
d0001528:	dd12      	ble.n	d0001550 <draw3D+0x138>
d000152a:	f44f 62f4 	mov.w	r2, #1952	; 0x7a0
d000152e:	499b      	ldr	r1, [pc, #620]	; (d000179c <draw3D+0x384>)
d0001530:	a806      	add	r0, sp, #24
d0001532:	f000 fb2b 	bl	d0001b8c <memcpy>
d0001536:	499a      	ldr	r1, [pc, #616]	; (d00017a0 <draw3D+0x388>)
d0001538:	f44f 62f4 	mov.w	r2, #1952	; 0x7a0
d000153c:	f5a1 60f4 	sub.w	r0, r1, #1952	; 0x7a0
d0001540:	f000 fb24 	bl	d0001b8c <memcpy>
d0001544:	a906      	add	r1, sp, #24
d0001546:	f44f 62f4 	mov.w	r2, #1952	; 0x7a0
d000154a:	4895      	ldr	r0, [pc, #596]	; (d00017a0 <draw3D+0x388>)
d000154c:	f000 fb1e 	bl	d0001b8c <memcpy>
d0001550:	2300      	movs	r3, #0
d0001552:	f8df 8248 	ldr.w	r8, [pc, #584]	; d000179c <draw3D+0x384>
d0001556:	ed9f bb8e 	vldr	d11, [pc, #568]	; d0001790 <draw3D+0x378>
d000155a:	9305      	str	r3, [sp, #20]
d000155c:	2301      	movs	r3, #1
d000155e:	9304      	str	r3, [sp, #16]
d0001560:	f8db 3008 	ldr.w	r3, [fp, #8]
d0001564:	2100      	movs	r1, #0
d0001566:	f8d8 2008 	ldr.w	r2, [r8, #8]
d000156a:	f8c8 1010 	str.w	r1, [r8, #16]
d000156e:	4293      	cmp	r3, r2
d0001570:	f280 822d 	bge.w	d00019ce <draw3D+0x5b6>
d0001574:	2301      	movs	r3, #1
d0001576:	f8c8 379c 	str.w	r3, [r8, #1948]	; 0x79c
d000157a:	46c2      	mov	sl, r8
d000157c:	2300      	movs	r3, #0
d000157e:	e9d8 0c00 	ldrd	r0, ip, [r8]
d0001582:	9303      	str	r3, [sp, #12]
d0001584:	46e0      	mov	r8, ip
d0001586:	9001      	str	r0, [sp, #4]
d0001588:	4540      	cmp	r0, r8
d000158a:	f280 821d 	bge.w	d00019c8 <draw3D+0x5b0>
d000158e:	eb00 0680 	add.w	r6, r0, r0, lsl #2
d0001592:	4a85      	ldr	r2, [pc, #532]	; (d00017a8 <draw3D+0x390>)
d0001594:	f8da 3010 	ldr.w	r3, [sl, #16]
d0001598:	eb02 0686 	add.w	r6, r2, r6, lsl #2
d000159c:	9600      	str	r6, [sp, #0]
d000159e:	9e00      	ldr	r6, [sp, #0]
d00015a0:	f8db 1000 	ldr.w	r1, [fp]
d00015a4:	68b2      	ldr	r2, [r6, #8]
d00015a6:	6830      	ldr	r0, [r6, #0]
d00015a8:	f8db 5004 	ldr.w	r5, [fp, #4]
d00015ac:	1a40      	subs	r0, r0, r1
d00015ae:	6874      	ldr	r4, [r6, #4]
d00015b0:	1a51      	subs	r1, r2, r1
d00015b2:	68f2      	ldr	r2, [r6, #12]
d00015b4:	1b64      	subs	r4, r4, r5
d00015b6:	1b52      	subs	r2, r2, r5
d00015b8:	9d03      	ldr	r5, [sp, #12]
d00015ba:	b12d      	cbz	r5, d00015c8 <draw3D+0x1b0>
d00015bc:	4617      	mov	r7, r2
d00015be:	460d      	mov	r5, r1
d00015c0:	4622      	mov	r2, r4
d00015c2:	4601      	mov	r1, r0
d00015c4:	463c      	mov	r4, r7
d00015c6:	4628      	mov	r0, r5
d00015c8:	ee07 2a90 	vmov	s15, r2
d00015cc:	f8da 6008 	ldr.w	r6, [sl, #8]
d00015d0:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d00015d4:	ee07 4a90 	vmov	s15, r4
d00015d8:	f8db 4008 	ldr.w	r4, [fp, #8]
d00015dc:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d00015e0:	ee07 1a90 	vmov	s15, r1
d00015e4:	ee2e 5ac6 	vnmul.f32	s10, s29, s12
d00015e8:	1b34      	subs	r4, r6, r4
d00015ea:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d00015ee:	ee07 0a90 	vmov	s15, r0
d00015f2:	ee6e 5ae6 	vnmul.f32	s11, s29, s13
d00015f6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00015fa:	eea7 5a0e 	vfma.f32	s10, s14, s28
d00015fe:	ee27 7a2e 	vmul.f32	s14, s14, s29
d0001602:	eee7 5a8e 	vfma.f32	s11, s15, s28
d0001606:	ee67 7aae 	vmul.f32	s15, s15, s29
d000160a:	eea6 7a0e 	vfma.f32	s14, s12, s28
d000160e:	eee6 7a8e 	vfma.f32	s15, s13, s28
d0001612:	eefd 6ac5 	vcvt.s32.f32	s13, s10
d0001616:	eefd 2ae5 	vcvt.s32.f32	s5, s11
d000161a:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d000161e:	ee16 2a90 	vmov	r2, s13
d0001622:	ee12 0a90 	vmov	r0, s5
d0001626:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d000162a:	ee17 1a10 	vmov	r1, s14
d000162e:	1817      	adds	r7, r2, r0
d0001630:	f8db 0010 	ldr.w	r0, [fp, #16]
d0001634:	ee07 4a10 	vmov	s14, r4
d0001638:	ee17 5a90 	vmov	r5, s15
d000163c:	bf48      	it	mi
d000163e:	3701      	addmi	r7, #1
d0001640:	fb00 f601 	mul.w	r6, r0, r1
d0001644:	eeb8 7bc7 	vcvt.f64.s32	d7, s14
d0001648:	eb11 0c05 	adds.w	ip, r1, r5
d000164c:	ea4f 0767 	mov.w	r7, r7, asr #1
d0001650:	fb00 f905 	mul.w	r9, r0, r5
d0001654:	ee04 6a10 	vmov	s8, r6
d0001658:	bf48      	it	mi
d000165a:	f10c 0c01 	addmi.w	ip, ip, #1
d000165e:	f8da 400c 	ldr.w	r4, [sl, #12]
d0001662:	eeb8 4bc4 	vcvt.f64.s32	d4, s8
d0001666:	2900      	cmp	r1, #0
d0001668:	ea4f 0c6c 	mov.w	ip, ip, asr #1
d000166c:	fb0c fc0c 	mul.w	ip, ip, ip
d0001670:	fb07 c707 	mla	r7, r7, r7, ip
d0001674:	ee06 7a90 	vmov	s13, r7
d0001678:	eeb8 5be6 	vcvt.f64.s32	d5, s13
d000167c:	ee06 9a90 	vmov	s13, r9
d0001680:	eeb8 6be6 	vcvt.f64.s32	d6, s13
d0001684:	eeb1 3bc5 	vsqrt.f64	d3, d5
d0001688:	eeb0 5b47 	vmov.f64	d5, d7
d000168c:	eea6 7b0b 	vfma.f64	d7, d6, d11
d0001690:	eea4 5b0b 	vfma.f64	d5, d4, d11
d0001694:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d0001698:	ee17 ca90 	vmov	ip, s15
d000169c:	eefd 6bc5 	vcvt.s32.f64	s13, d5
d00016a0:	eb0c 0e04 	add.w	lr, ip, r4
d00016a4:	ee16 0a90 	vmov	r0, s13
d00016a8:	eb00 0904 	add.w	r9, r0, r4
d00016ac:	eebd 3bc3 	vcvt.s32.f64	s6, d3
d00016b0:	ee13 4a10 	vmov	r4, s6
d00016b4:	4423      	add	r3, r4
d00016b6:	f8ca 3010 	str.w	r3, [sl, #16]
d00016ba:	f340 8134 	ble.w	d0001926 <draw3D+0x50e>
d00016be:	2d00      	cmp	r5, #0
d00016c0:	dc40      	bgt.n	d0001744 <draw3D+0x32c>
d00016c2:	ee07 5a90 	vmov	s15, r5
d00016c6:	1b4d      	subs	r5, r1, r5
d00016c8:	ee12 3a90 	vmov	r3, s5
d00016cc:	ee05 ea90 	vmov	s11, lr
d00016d0:	ee07 5a10 	vmov	s14, r5
d00016d4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00016d8:	1ad3      	subs	r3, r2, r3
d00016da:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d00016de:	eeb8 4ac7 	vcvt.f32.s32	s8, s14
d00016e2:	ee07 1a10 	vmov	s14, r1
d00016e6:	ee04 3a90 	vmov	s9, r3
d00016ea:	eba0 030c 	sub.w	r3, r0, ip
d00016ee:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00016f2:	ee06 3a90 	vmov	s13, r3
d00016f6:	eeb8 5ae2 	vcvt.f32.s32	s10, s5
d00016fa:	eef8 4ae4 	vcvt.f32.s32	s9, s9
d00016fe:	ee37 7ac7 	vsub.f32	s14, s15, s14
d0001702:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0001706:	ee87 6a87 	vdiv.f32	s12, s15, s14
d000170a:	ee07 ca10 	vmov	s14, ip
d000170e:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0001712:	eee6 7a04 	vfma.f32	s15, s12, s8
d0001716:	eea6 7a26 	vfma.f32	s14, s12, s13
d000171a:	eee6 5a26 	vfma.f32	s11, s12, s13
d000171e:	eea6 5a24 	vfma.f32	s10, s12, s9
d0001722:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0001726:	ee17 5a90 	vmov	r5, s15
d000172a:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d000172e:	eefd 2ac5 	vcvt.s32.f32	s5, s10
d0001732:	2d00      	cmp	r5, #0
d0001734:	ee17 ca90 	vmov	ip, s15
d0001738:	eefd 7ae5 	vcvt.s32.f32	s15, s11
d000173c:	bf08      	it	eq
d000173e:	2501      	moveq	r5, #1
d0001740:	ee17 ea90 	vmov	lr, s15
d0001744:	24c8      	movs	r4, #200	; 0xc8
d0001746:	ee12 3a90 	vmov	r3, s5
d000174a:	f240 18df 	movw	r8, #479	; 0x1df
d000174e:	fb04 f202 	mul.w	r2, r4, r2
d0001752:	fb04 f303 	mul.w	r3, r4, r3
d0001756:	fb04 f000 	mul.w	r0, r4, r0
d000175a:	fb04 f909 	mul.w	r9, r4, r9
d000175e:	fb04 fc0c 	mul.w	ip, r4, ip
d0001762:	fb04 fe0e 	mul.w	lr, r4, lr
d0001766:	4c11      	ldr	r4, [pc, #68]	; (d00017ac <draw3D+0x394>)
d0001768:	fb92 f2f1 	sdiv	r2, r2, r1
d000176c:	fb93 f3f5 	sdiv	r3, r3, r5
d0001770:	1a9e      	subs	r6, r3, r2
d0001772:	f103 03f0 	add.w	r3, r3, #240	; 0xf0
d0001776:	f8d4 40f8 	ldr.w	r4, [r4, #248]	; 0xf8
d000177a:	f102 07f0 	add.w	r7, r2, #240	; 0xf0
d000177e:	9302      	str	r3, [sp, #8]
d0001780:	9b04      	ldr	r3, [sp, #16]
d0001782:	7023      	strb	r3, [r4, #0]
d0001784:	bf14      	ite	ne
d0001786:	4633      	movne	r3, r6
d0001788:	2301      	moveq	r3, #1
d000178a:	2f01      	cmp	r7, #1
d000178c:	461e      	mov	r6, r3
d000178e:	e011      	b.n	d00017b4 <draw3D+0x39c>
d0001790:	00000000 	.word	0x00000000
d0001794:	3fa00000 	.word	0x3fa00000
d0001798:	d0010a20 	.word	0xd0010a20
d000179c:	d0002308 	.word	0xd0002308
d00017a0:	d0002aa8 	.word	0xd0002aa8
d00017a4:	d0003248 	.word	0xd0003248
d00017a8:	d00107c8 	.word	0xd00107c8
d00017ac:	2001f000 	.word	0x2001f000
d00017b0:	d0011560 	.word	0xd0011560
d00017b4:	9b02      	ldr	r3, [sp, #8]
d00017b6:	bfb8      	it	lt
d00017b8:	2701      	movlt	r7, #1
d00017ba:	2b01      	cmp	r3, #1
d00017bc:	bfb8      	it	lt
d00017be:	2301      	movlt	r3, #1
d00017c0:	4547      	cmp	r7, r8
d00017c2:	bfa8      	it	ge
d00017c4:	4647      	movge	r7, r8
d00017c6:	4543      	cmp	r3, r8
d00017c8:	461c      	mov	r4, r3
d00017ca:	bfa8      	it	ge
d00017cc:	4644      	movge	r4, r8
d00017ce:	fb90 f0f1 	sdiv	r0, r0, r1
d00017d2:	fb9c fcf5 	sdiv	ip, ip, r5
d00017d6:	fb99 f1f1 	sdiv	r1, r9, r1
d00017da:	fb9e f5f5 	sdiv	r5, lr, r5
d00017de:	42a7      	cmp	r7, r4
d00017e0:	ebac 0c00 	sub.w	ip, ip, r0
d00017e4:	eba5 0501 	sub.w	r5, r5, r1
d00017e8:	f100 00a0 	add.w	r0, r0, #160	; 0xa0
d00017ec:	f101 01a0 	add.w	r1, r1, #160	; 0xa0
d00017f0:	da67      	bge.n	d00018c2 <draw3D+0x4aa>
d00017f2:	ee07 6a90 	vmov	s15, r6
d00017f6:	ee06 ca90 	vmov	s13, ip
d00017fa:	eeb7 5b00 	vmov.f64	d5, #112	; 0x3f800000  1.0
d00017fe:	9b05      	ldr	r3, [sp, #20]
d0001800:	eeb8 7be7 	vcvt.f64.s32	d7, s15
d0001804:	f06f 08ef 	mvn.w	r8, #239	; 0xef
d0001808:	eeb8 9be6 	vcvt.f64.s32	d9, s13
d000180c:	ee06 5a90 	vmov	s13, r5
d0001810:	3307      	adds	r3, #7
d0001812:	eba8 0802 	sub.w	r8, r8, r2
d0001816:	eeb8 dbe6 	vcvt.f64.s32	d13, s13
d000181a:	4a7b      	ldr	r2, [pc, #492]	; (d0001a08 <draw3D+0x5f0>)
d000181c:	ee85 6b07 	vdiv.f64	d6, d5, d7
d0001820:	ee07 0a90 	vmov	s15, r0
d0001824:	443b      	add	r3, r7
d0001826:	f240 193f 	movw	r9, #319	; 0x13f
d000182a:	4626      	mov	r6, r4
d000182c:	eb02 0583 	add.w	r5, r2, r3, lsl #2
d0001830:	eeb8 abe7 	vcvt.f64.s32	d10, s15
d0001834:	ee07 1a90 	vmov	s15, r1
d0001838:	eeb6 cb00 	vmov.f64	d12, #96	; 0x3f000000  0.5
d000183c:	eeb8 8be7 	vcvt.f64.s32	d8, s15
d0001840:	ee26 9b09 	vmul.f64	d9, d6, d9
d0001844:	ee26 db0d 	vmul.f64	d13, d6, d13
d0001848:	e00a      	b.n	d0001860 <draw3D+0x448>
d000184a:	f1bc 0f02 	cmp.w	ip, #2
d000184e:	d068      	beq.n	d0001922 <draw3D+0x50a>
d0001850:	4c6e      	ldr	r4, [pc, #440]	; (d0001a0c <draw3D+0x5f4>)
d0001852:	f8d4 4124 	ldr.w	r4, [r4, #292]	; 0x124
d0001856:	47a0      	blx	r4
d0001858:	3701      	adds	r7, #1
d000185a:	3504      	adds	r5, #4
d000185c:	42be      	cmp	r6, r7
d000185e:	d030      	beq.n	d00018c2 <draw3D+0x4aa>
d0001860:	eb08 0307 	add.w	r3, r8, r7
d0001864:	eeb0 6b4a 	vmov.f64	d6, d10
d0001868:	eeb0 5b48 	vmov.f64	d5, d8
d000186c:	f8da c79c 	ldr.w	ip, [sl, #1948]	; 0x79c
d0001870:	ee07 3a90 	vmov	s15, r3
d0001874:	463a      	mov	r2, r7
d0001876:	4638      	mov	r0, r7
d0001878:	eeb8 7be7 	vcvt.f64.s32	d7, s15
d000187c:	ee37 7b0c 	vadd.f64	d7, d7, d12
d0001880:	eea7 6b09 	vfma.f64	d6, d7, d9
d0001884:	eead 5b07 	vfma.f64	d5, d13, d7
d0001888:	eefd 6bc6 	vcvt.s32.f64	s13, d6
d000188c:	ee16 1a90 	vmov	r1, s13
d0001890:	eefd 7bc5 	vcvt.s32.f64	s15, d5
d0001894:	2901      	cmp	r1, #1
d0001896:	bfb8      	it	lt
d0001898:	2101      	movlt	r1, #1
d000189a:	ee17 4a90 	vmov	r4, s15
d000189e:	4549      	cmp	r1, r9
d00018a0:	bfa8      	it	ge
d00018a2:	4649      	movge	r1, r9
d00018a4:	2c01      	cmp	r4, #1
d00018a6:	bfb8      	it	lt
d00018a8:	2401      	movlt	r4, #1
d00018aa:	454c      	cmp	r4, r9
d00018ac:	bfa8      	it	ge
d00018ae:	464c      	movge	r4, r9
d00018b0:	f1bc 0f01 	cmp.w	ip, #1
d00018b4:	4623      	mov	r3, r4
d00018b6:	d1c8      	bne.n	d000184a <draw3D+0x432>
d00018b8:	3701      	adds	r7, #1
d00018ba:	6029      	str	r1, [r5, #0]
d00018bc:	3504      	adds	r5, #4
d00018be:	42be      	cmp	r6, r7
d00018c0:	d1ce      	bne.n	d0001860 <draw3D+0x448>
d00018c2:	f8da 3010 	ldr.w	r3, [sl, #16]
d00018c6:	f8da 8004 	ldr.w	r8, [sl, #4]
d00018ca:	9a01      	ldr	r2, [sp, #4]
d00018cc:	9900      	ldr	r1, [sp, #0]
d00018ce:	3201      	adds	r2, #1
d00018d0:	3114      	adds	r1, #20
d00018d2:	4590      	cmp	r8, r2
d00018d4:	9201      	str	r2, [sp, #4]
d00018d6:	9100      	str	r1, [sp, #0]
d00018d8:	f73f ae61 	bgt.w	d000159e <draw3D+0x186>
d00018dc:	f8da 0000 	ldr.w	r0, [sl]
d00018e0:	eba8 0100 	sub.w	r1, r8, r0
d00018e4:	f8da 279c 	ldr.w	r2, [sl, #1948]	; 0x79c
d00018e8:	fb93 f3f1 	sdiv	r3, r3, r1
d00018ec:	4252      	negs	r2, r2
d00018ee:	f8ca 3010 	str.w	r3, [sl, #16]
d00018f2:	9b03      	ldr	r3, [sp, #12]
d00018f4:	f8ca 279c 	str.w	r2, [sl, #1948]	; 0x79c
d00018f8:	2b00      	cmp	r3, #0
d00018fa:	d05f      	beq.n	d00019bc <draw3D+0x5a4>
d00018fc:	9b05      	ldr	r3, [sp, #20]
d00018fe:	f50a 68f4 	add.w	r8, sl, #1952	; 0x7a0
d0001902:	9a04      	ldr	r2, [sp, #16]
d0001904:	f503 73f4 	add.w	r3, r3, #488	; 0x1e8
d0001908:	3201      	adds	r2, #1
d000190a:	f5b3 6ff4 	cmp.w	r3, #1952	; 0x7a0
d000190e:	9305      	str	r3, [sp, #20]
d0001910:	9204      	str	r2, [sp, #16]
d0001912:	f47f ae25 	bne.w	d0001560 <draw3D+0x148>
d0001916:	f20d 7dbc 	addw	sp, sp, #1980	; 0x7bc
d000191a:	ecbd 8b0e 	vpop	{d8-d14}
d000191e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0001922:	602c      	str	r4, [r5, #0]
d0001924:	e798      	b.n	d0001858 <draw3D+0x440>
d0001926:	2d00      	cmp	r5, #0
d0001928:	ddcf      	ble.n	d00018ca <draw3D+0x4b2>
d000192a:	ee07 1a90 	vmov	s15, r1
d000192e:	1a69      	subs	r1, r5, r1
d0001930:	ee12 3a90 	vmov	r3, s5
d0001934:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d0001938:	ee07 1a90 	vmov	s15, r1
d000193c:	1a9b      	subs	r3, r3, r2
d000193e:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d0001942:	ee07 5a90 	vmov	s15, r5
d0001946:	ee05 3a90 	vmov	s11, r3
d000194a:	ebac 0300 	sub.w	r3, ip, r0
d000194e:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0001952:	ee07 2a90 	vmov	s15, r2
d0001956:	eef8 5ae5 	vcvt.f32.s32	s11, s11
d000195a:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d000195e:	ee77 6a66 	vsub.f32	s13, s14, s13
d0001962:	eec7 7a26 	vdiv.f32	s15, s14, s13
d0001966:	eef0 6a46 	vmov.f32	s13, s12
d000196a:	eea7 7a85 	vfma.f32	s14, s15, s10
d000196e:	eee7 6aa5 	vfma.f32	s13, s15, s11
d0001972:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0001976:	ee17 1a10 	vmov	r1, s14
d000197a:	eebd 7ae6 	vcvt.s32.f32	s14, s13
d000197e:	ee06 0a90 	vmov	s13, r0
d0001982:	ee17 2a10 	vmov	r2, s14
d0001986:	eeb8 5ae6 	vcvt.f32.s32	s10, s13
d000198a:	ee07 3a10 	vmov	s14, r3
d000198e:	b901      	cbnz	r1, d0001992 <draw3D+0x57a>
d0001990:	2101      	movs	r1, #1
d0001992:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0001996:	ee67 7a27 	vmul.f32	s15, s14, s15
d000199a:	ee35 5a27 	vadd.f32	s10, s10, s15
d000199e:	eebd 7ac5 	vcvt.s32.f32	s14, s10
d00019a2:	ee17 0a10 	vmov	r0, s14
d00019a6:	ee07 9a10 	vmov	s14, r9
d00019aa:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00019ae:	ee77 7a27 	vadd.f32	s15, s14, s15
d00019b2:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00019b6:	ee17 9a90 	vmov	r9, s15
d00019ba:	e6c3      	b.n	d0001744 <draw3D+0x32c>
d00019bc:	2301      	movs	r3, #1
d00019be:	4540      	cmp	r0, r8
d00019c0:	9001      	str	r0, [sp, #4]
d00019c2:	9303      	str	r3, [sp, #12]
d00019c4:	f6ff ade3 	blt.w	d000158e <draw3D+0x176>
d00019c8:	f8da 3010 	ldr.w	r3, [sl, #16]
d00019cc:	e788      	b.n	d00018e0 <draw3D+0x4c8>
d00019ce:	f8d8 200c 	ldr.w	r2, [r8, #12]
d00019d2:	4293      	cmp	r3, r2
d00019d4:	bfcc      	ite	gt
d00019d6:	2302      	movgt	r3, #2
d00019d8:	2300      	movle	r3, #0
d00019da:	f8c8 379c 	str.w	r3, [r8, #1948]	; 0x79c
d00019de:	e5cc      	b.n	d000157a <draw3D+0x162>
d00019e0:	f44f 62f4 	mov.w	r2, #1952	; 0x7a0
d00019e4:	490a      	ldr	r1, [pc, #40]	; (d0001a10 <draw3D+0x5f8>)
d00019e6:	a806      	add	r0, sp, #24
d00019e8:	f000 f8d0 	bl	d0001b8c <memcpy>
d00019ec:	4909      	ldr	r1, [pc, #36]	; (d0001a14 <draw3D+0x5fc>)
d00019ee:	f44f 62f4 	mov.w	r2, #1952	; 0x7a0
d00019f2:	f5a1 60f4 	sub.w	r0, r1, #1952	; 0x7a0
d00019f6:	f000 f8c9 	bl	d0001b8c <memcpy>
d00019fa:	a906      	add	r1, sp, #24
d00019fc:	f44f 62f4 	mov.w	r2, #1952	; 0x7a0
d0001a00:	4804      	ldr	r0, [pc, #16]	; (d0001a14 <draw3D+0x5fc>)
d0001a02:	f000 f8c3 	bl	d0001b8c <memcpy>
d0001a06:	e557      	b.n	d00014b8 <draw3D+0xa0>
d0001a08:	d0002308 	.word	0xd0002308
d0001a0c:	2001f000 	.word	0x2001f000
d0001a10:	d0003248 	.word	0xd0003248
d0001a14:	d00039e8 	.word	0xd00039e8

d0001a18 <clear_screen>:
d0001a18:	b510      	push	{r4, lr}
d0001a1a:	4c08      	ldr	r4, [pc, #32]	; (d0001a3c <clear_screen+0x24>)
d0001a1c:	2000      	movs	r0, #0
d0001a1e:	f7ff f857 	bl	d0000ad0 <ShowBuffer>
d0001a22:	2000      	movs	r0, #0
d0001a24:	f8d4 3118 	ldr.w	r3, [r4, #280]	; 0x118
d0001a28:	4798      	blx	r3
d0001a2a:	2001      	movs	r0, #1
d0001a2c:	f7ff f850 	bl	d0000ad0 <ShowBuffer>
d0001a30:	f8d4 3118 	ldr.w	r3, [r4, #280]	; 0x118
d0001a34:	2000      	movs	r0, #0
d0001a36:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0001a3a:	4718      	bx	r3
d0001a3c:	2001f000 	.word	0x2001f000

d0001a40 <main>:
d0001a40:	4a49      	ldr	r2, [pc, #292]	; (d0001b68 <main+0x128>)
d0001a42:	20ff      	movs	r0, #255	; 0xff
d0001a44:	6813      	ldr	r3, [r2, #0]
d0001a46:	f023 0310 	bic.w	r3, r3, #16
d0001a4a:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d0001a4e:	4f47      	ldr	r7, [pc, #284]	; (d0001b6c <main+0x12c>)
d0001a50:	b083      	sub	sp, #12
d0001a52:	6013      	str	r3, [r2, #0]
d0001a54:	2600      	movs	r6, #0
d0001a56:	f8d7 30c8 	ldr.w	r3, [r7, #200]	; 0xc8
d0001a5a:	463c      	mov	r4, r7
d0001a5c:	4798      	blx	r3
d0001a5e:	4b44      	ldr	r3, [pc, #272]	; (d0001b70 <main+0x130>)
d0001a60:	4844      	ldr	r0, [pc, #272]	; (d0001b74 <main+0x134>)
d0001a62:	4635      	mov	r5, r6
d0001a64:	601e      	str	r6, [r3, #0]
d0001a66:	68bb      	ldr	r3, [r7, #8]
d0001a68:	4798      	blx	r3
d0001a6a:	68fb      	ldr	r3, [r7, #12]
d0001a6c:	201e      	movs	r0, #30
d0001a6e:	f8df 9114 	ldr.w	r9, [pc, #276]	; d0001b84 <main+0x144>
d0001a72:	4798      	blx	r3
d0001a74:	f7ff f808 	bl	d0000a88 <initDisplayBuffers>
d0001a78:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0001a7c:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0001a80:	f8d7 80e8 	ldr.w	r8, [r7, #232]	; 0xe8
d0001a84:	4619      	mov	r1, r3
d0001a86:	9600      	str	r6, [sp, #0]
d0001a88:	4610      	mov	r0, r2
d0001a8a:	47c0      	blx	r8
d0001a8c:	f8d7 3110 	ldr.w	r3, [r7, #272]	; 0x110
d0001a90:	4a39      	ldr	r2, [pc, #228]	; (d0001b78 <main+0x138>)
d0001a92:	4631      	mov	r1, r6
d0001a94:	701e      	strb	r6, [r3, #0]
d0001a96:	6d3b      	ldr	r3, [r7, #80]	; 0x50
d0001a98:	4838      	ldr	r0, [pc, #224]	; (d0001b7c <main+0x13c>)
d0001a9a:	60da      	str	r2, [r3, #12]
d0001a9c:	f8d7 30d8 	ldr.w	r3, [r7, #216]	; 0xd8
d0001aa0:	4798      	blx	r3
d0001aa2:	f8d7 30d8 	ldr.w	r3, [r7, #216]	; 0xd8
d0001aa6:	2101      	movs	r1, #1
d0001aa8:	4834      	ldr	r0, [pc, #208]	; (d0001b7c <main+0x13c>)
d0001aaa:	4798      	blx	r3
d0001aac:	f8d7 30f8 	ldr.w	r3, [r7, #248]	; 0xf8
d0001ab0:	2202      	movs	r2, #2
d0001ab2:	f8df 80d4 	ldr.w	r8, [pc, #212]	; d0001b88 <main+0x148>
d0001ab6:	4f32      	ldr	r7, [pc, #200]	; (d0001b80 <main+0x140>)
d0001ab8:	701a      	strb	r2, [r3, #0]
d0001aba:	f7ff ffad 	bl	d0001a18 <clear_screen>
d0001abe:	f7ff f987 	bl	d0000dd0 <initEngine>
d0001ac2:	e01c      	b.n	d0001afe <main+0xbe>
d0001ac4:	2d04      	cmp	r5, #4
d0001ac6:	dc2d      	bgt.n	d0001b24 <main+0xe4>
d0001ac8:	f7ff f828 	bl	d0000b1c <scanKeys>
d0001acc:	f7ff f85a 	bl	d0000b84 <movePlayer>
d0001ad0:	f7ff fca2 	bl	d0001418 <draw3D>
d0001ad4:	464a      	mov	r2, r9
d0001ad6:	f44f 7196 	mov.w	r1, #300	; 0x12c
d0001ada:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d0001ade:	2014      	movs	r0, #20
d0001ae0:	4798      	blx	r3
d0001ae2:	4630      	mov	r0, r6
d0001ae4:	f7fe fff4 	bl	d0000ad0 <ShowBuffer>
d0001ae8:	f8d4 30cc 	ldr.w	r3, [r4, #204]	; 0xcc
d0001aec:	4798      	blx	r3
d0001aee:	2001      	movs	r0, #1
d0001af0:	f8d4 30c4 	ldr.w	r3, [r4, #196]	; 0xc4
d0001af4:	1b86      	subs	r6, r0, r6
d0001af6:	4798      	blx	r3
d0001af8:	f8d4 315c 	ldr.w	r3, [r4, #348]	; 0x15c
d0001afc:	4798      	blx	r3
d0001afe:	f8d4 3118 	ldr.w	r3, [r4, #280]	; 0x118
d0001b02:	2000      	movs	r0, #0
d0001b04:	4798      	blx	r3
d0001b06:	6a23      	ldr	r3, [r4, #32]
d0001b08:	3501      	adds	r5, #1
d0001b0a:	681b      	ldr	r3, [r3, #0]
d0001b0c:	f8c8 3000 	str.w	r3, [r8]
d0001b10:	6a63      	ldr	r3, [r4, #36]	; 0x24
d0001b12:	681b      	ldr	r3, [r3, #0]
d0001b14:	603b      	str	r3, [r7, #0]
d0001b16:	69e3      	ldr	r3, [r4, #28]
d0001b18:	4798      	blx	r3
d0001b1a:	f010 0002 	ands.w	r0, r0, #2
d0001b1e:	d1d1      	bne.n	d0001ac4 <main+0x84>
d0001b20:	4605      	mov	r5, r0
d0001b22:	e7d1      	b.n	d0001ac8 <main+0x88>
d0001b24:	4a10      	ldr	r2, [pc, #64]	; (d0001b68 <main+0x128>)
d0001b26:	2000      	movs	r0, #0
d0001b28:	6813      	ldr	r3, [r2, #0]
d0001b2a:	f043 0310 	orr.w	r3, r3, #16
d0001b2e:	6013      	str	r3, [r2, #0]
d0001b30:	f7fe ffe8 	bl	d0000b04 <StopChannel>
d0001b34:	2001      	movs	r0, #1
d0001b36:	f7fe ffe5 	bl	d0000b04 <StopChannel>
d0001b3a:	2002      	movs	r0, #2
d0001b3c:	f7fe ffe2 	bl	d0000b04 <StopChannel>
d0001b40:	2003      	movs	r0, #3
d0001b42:	f7fe ffdf 	bl	d0000b04 <StopChannel>
d0001b46:	2004      	movs	r0, #4
d0001b48:	f7fe ffdc 	bl	d0000b04 <StopChannel>
d0001b4c:	2005      	movs	r0, #5
d0001b4e:	f7fe ffd9 	bl	d0000b04 <StopChannel>
d0001b52:	2006      	movs	r0, #6
d0001b54:	f7fe ffd6 	bl	d0000b04 <StopChannel>
d0001b58:	2007      	movs	r0, #7
d0001b5a:	f7fe ffd3 	bl	d0000b04 <StopChannel>
d0001b5e:	2007      	movs	r0, #7
d0001b60:	b003      	add	sp, #12
d0001b62:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0001b66:	bf00      	nop
d0001b68:	e000ed14 	.word	0xe000ed14
d0001b6c:	2001f000 	.word	0x2001f000
d0001b70:	d00020d0 	.word	0xd00020d0
d0001b74:	d0001ca8 	.word	0xd0001ca8
d0001b78:	d0000025 	.word	0xd0000025
d0001b7c:	d0001cc8 	.word	0xd0001cc8
d0001b80:	d0011574 	.word	0xd0011574
d0001b84:	d0001cb4 	.word	0xd0001cb4
d0001b88:	d0011578 	.word	0xd0011578

d0001b8c <memcpy>:
d0001b8c:	440a      	add	r2, r1
d0001b8e:	4291      	cmp	r1, r2
d0001b90:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0001b94:	d100      	bne.n	d0001b98 <memcpy+0xc>
d0001b96:	4770      	bx	lr
d0001b98:	b510      	push	{r4, lr}
d0001b9a:	f811 4b01 	ldrb.w	r4, [r1], #1
d0001b9e:	f803 4f01 	strb.w	r4, [r3, #1]!
d0001ba2:	4291      	cmp	r1, r2
d0001ba4:	d1f9      	bne.n	d0001b9a <memcpy+0xe>
d0001ba6:	bd10      	pop	{r4, pc}

d0001ba8 <hid_keymap_uk>:
d0001ba8:	0000 0000 6261 6463 6665 6867 6a69 6c6b     ....abcdefghijkl
d0001bb8:	6e6d 706f 7271 7473 7675 7877 7a79 3231     mnopqrstuvwxyz12
d0001bc8:	3433 3635 3837 3039 000a 0000 2d20 5b3d     34567890.... -=[
d0001bd8:	235d 3b5c 6027 2e2c 002f 0000 0000 0000     ]#\;'`,./.......
	...

d0001c28 <hid_keymap_uk_shift>:
d0001c28:	0000 0000 4241 4443 4645 4847 4a49 4c4b     ....ABCDEFGHIJKL
d0001c38:	4e4d 504f 5251 5453 5655 5857 5a59 2221     MNOPQRSTUVWXYZ!"
d0001c48:	24a3 5e25 2a26 2928 0000 0000 5f00 7b2b     .$%^&*()....._+{
d0001c58:	7e7d 3a7c ac40 3e3c 003f 0000 0000 0000     }~|:@.<>?.......
	...
d0001ca8:	7544 676e 6f65 206e 0a31 0000 4433 4220     Dungeon 1...3D B
d0001cb8:	7761 6162 6767 2073 3156 302e 0030 0000     awbaggs V1.00...

d0001cc8 <colourPallete>:
d0001cc8:	0000 0000 afaf ffaf ffff ffff 67a2 ff3b     .............g;.
d0001cd8:	907c ffaa 9595 ff95 7b7b ff7b a997 ffff     |.......{{{.....
d0001ce8:	a91d ff37 a9ff ff7c 8112 ffbf bf66 ffeb     ..7...|.....f...
d0001cf8:	c178 ff78 9318 ff3d 3418 ffb3 311c ffd9     x.x...=..4...1..
d0001d08:	0000 ff00 000e ff00 001d ff00 002b ff00     ............+...
d0001d18:	0139 ff00 0147 ff00 0156 ff00 0164 ff00     9...G...V...d...
d0001d28:	01d2 ff00 01ff ff00 cece ffce ff00 ff00     ................
d0001d38:	ff00 ffb2 e700 ffff 9600 ffff 1100 ffff     ................
d0001d48:	1200 ff49 1355 ff49 14aa ff49 16ff ff49     ..I.U.I...I...I.
d0001d58:	1700 ff5b 1855 ff5b 19aa ff5b 1aff ff5b     ..[.U.[...[...[.
d0001d68:	1b00 ff6d 1c55 ff6d e300 ff00 ff54 ff85     ..m.U.m.....T...
d0001d78:	ff00 ffc4 d900 ffff a41f ffff 5400 ffe0     .............T..
d0001d88:	0000 ffff 2655 ff92 27aa ff92 28ff ff92     ....U&...'...(..
d0001d98:	2900 ffa4 2a55 ffa4 2baa ffa4 2cff ffa4     .)..U*...+...,..
d0001da8:	2d00 ffb6 2f55 ffb6 30aa ffb6 31ff ffb6     .-..U/...0...1..
d0001db8:	3200 ffc9 3355 ffc9 34aa ffc9 35ff ffc9     .2..U3...4...5..
d0001dc8:	3700 ffdb 3855 ffdb 39aa ffdb 3aff ffdb     .7..U8...9...:..
d0001dd8:	3b00 ffed 3c55 ffed 3daa ffed 3fff ffed     .;..U<...=...?..
d0001de8:	4000 ffff 4155 ffff 42aa ffff 43ff ffff     .@..UA...B...C..
d0001df8:	4400 ff00 4555 ff00 46aa ff00 48ff ff00     .D..UE...F...H..
d0001e08:	ff00 ffff ff55 ff12 ee55 ff12 b6ff ff12     ....U...U.......
d0001e18:	1fff ff00 0ec7 ff9d 0000 fff1 7700 ffff     .............w..
d0001e28:	5200 ff37 5355 ff37 54aa ff37 55ff ff37     .R7.US7..T7..U7.
d0001e38:	5600 ff49 5855 ff49 59aa ff49 5aff ff49     .VI.UXI..YI..ZI.
d0001e48:	5b00 ff5b 5c55 ff5b 5daa ff5b 5eff ff5b     .[[.U\[..][..^[.
d0001e58:	6000 ff6d 6155 ff6d 62aa ff6d 63ff ff6d     .`m.Uam..bm..cm.
d0001e68:	6400 ff6d 6555 ff80 66aa ff80 67ff ff80     .dm.Ue...f...g..
d0001e78:	6900 ff92 6a55 ff92 6baa ff92 6cff ff92     .i..Uj...k...l..
d0001e88:	6d00 ffa4 6e55 ffa4 6faa ffa4 71ff ffa4     .m..Un...o...q..
d0001e98:	7200 ffb6 7355 ffb6 74aa ffb6 75ff ffb6     .r..Us...t...u..
d0001ea8:	7600 ffc9 7755 ffc9 79aa ffc9 7aff ffc9     .v..Uw...y...z..
d0001eb8:	7b00 ffdb 7c55 ffdb 7daa ffdb 7eff ffdb     .{..U|...}...~..
d0001ec8:	7f00 ffed 8055 ffed 82aa ffed 83ff ffed     ....U...........
d0001ed8:	8400 ffff 8555 ffff 86aa ffff 87ff ffff     ....U...........
d0001ee8:	8800 ff00 8a55 ff00 8baa ff00 8cff ff00     ....U...........
d0001ef8:	8d00 ff12 8e55 ff12 8faa ff12 90ff ff12     ....U...........
d0001f08:	9200 ff24 9355 ff24 94aa ff24 95ff ff24     ..$.U.$...$...$.
d0001f18:	9600 ff37 9755 ff37 98aa ff37 99ff ff37     ..7.U.7...7...7.
d0001f28:	9b00 ff49 9c55 ff49 9daa ff49 9eff ff49     ..I.U.I...I...I.
d0001f38:	9f00 ff5b a055 ff5b a1aa ff5b a3ff ff5b     ..[.U.[...[...[.
d0001f48:	b5d5 ffa4 b0f8 ffa0 a3e6 ff94 89c1 ff7c     ..............|.
d0001f58:	81c0 ff62 62a1 ff1c 54ea ff42 a1bd ff62     ..b..b...TB...b.
d0001f68:	93c0 ff70 77a1 ff49 3faa ff00 54ff ff15     ..p..wI..?...T..
d0001f78:	50b9 ff1c b3ff ff00 88aa ff00 b5ff ff00     .P..............
d0001f88:	62ff ff0e b7e3 ff5e c0b9 ffbd b9ff ff85     .b....^.........
d0001f98:	6caf ff00 81b9 ff1f 5baa ff3f beff ffc9     .l.......[?.....
d0001fa8:	afcb ff5b c055 ffdb c1aa ffdb c0c0 ffbd     ..[.U...........
d0001fb8:	c400 ffed c555 ffed c6aa ffed c7ff ffed     ....U...........
d0001fc8:	c800 ffff c955 ffff caaa ffff ccff ffff     ....U...........
d0001fd8:	cd00 ff00 ce55 ff00 cfaa ff00 d0ff ff00     ....U...........
d0001fe8:	d100 ff12 d255 ff12 d3aa ff12 d5ff ff12     ....U...........
d0001ff8:	d600 ff24 d755 ff24 d8aa ff24 d9ff ff24     ..$.U.$...$...$.
d0002008:	da00 ff37 db55 ff37 ddaa ff37 deff ff37     ..7.U.7...7...7.
d0002018:	df00 ff49 e055 ff49 e1aa ff49 e2ff ff49     ..I.U.I...I...I.
d0002028:	e300 ff5b e555 ff5b e6aa ff5b e7ff ff5b     ..[.U.[...[...[.
d0002038:	e800 ff6d e955 ff6d eaaa ff6d ebff ff6d     ..m.U.m...m...m.
d0002048:	ec00 ff6d ee55 ff80 efaa ff80 f0ff ff80     ..m.U...........
d0002058:	cea2 ff93 f255 ff92 f3aa ff92 f4ff ff92     ....U...........
d0002068:	f600 ffa4 f755 ffa4 f8aa ffa4 f9ff ffa4     ....U...........
d0002078:	fa00 ffb6 fb55 ffb6 fcaa ffb6 feff ffb6     ....U...........
d0002088:	ff00 ffc9 ff55 ffc9 ffaa ffc9 ffff ffc9     ....U...........
d0002098:	ff00 ffdb ff55 ffdb ffaa ffdb ffff ffdb     ....U...........
d00020a8:	ff00 ffed ff55 ffed ffaa ffed ffff ffed     ....U...........
d00020b8:	ff00 ffff ff55 ffff ffaa ffff ffff ffff     ....U...........

Disassembly of section .init:

d00020c8 <_init>:
d00020c8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00020ca:	bf00      	nop

Disassembly of section .fini:

d00020cc <_fini>:
d00020cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00020ce:	bf00      	nop
