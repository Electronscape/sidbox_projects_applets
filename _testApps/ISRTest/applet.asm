
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0000010 <applet_entry>:
d0000010:	f000 bdb2 	b.w	d0000b78 <main>

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
d000034c:	d00019c0 	.word	0xd00019c0
d0000350:	d00019bc 	.word	0xd00019bc
d0000354:	d000198c 	.word	0xd000198c
d0000358:	d0001980 	.word	0xd0001980
d000035c:	d000172c 	.word	0xd000172c
d0000360:	d0001998 	.word	0xd0001998
d0000364:	d00019c8 	.word	0xd00019c8
d0000368:	d00017ac 	.word	0xd00017ac
d000036c:	d0001988 	.word	0xd0001988
d0000370:	d0001989 	.word	0xd0001989
d0000374:	d0001994 	.word	0xd0001994
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
d00006b8:	d0001980 	.word	0xd0001980
d00006bc:	d0001998 	.word	0xd0001998
d00006c0:	d00019c8 	.word	0xd00019c8
d00006c4:	d00017ac 	.word	0xd00017ac
d00006c8:	d000172c 	.word	0xd000172c
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
d0000a34:	d0001980 	.word	0xd0001980
d0000a38:	d0001998 	.word	0xd0001998
d0000a3c:	d00019c8 	.word	0xd00019c8
d0000a40:	d000172c 	.word	0xd000172c
d0000a44:	d0001994 	.word	0xd0001994

d0000a48 <initDisplayBuffers>:
d0000a48:	4b0c      	ldr	r3, [pc, #48]	; (d0000a7c <initDisplayBuffers+0x34>)
d0000a4a:	4a0d      	ldr	r2, [pc, #52]	; (d0000a80 <initDisplayBuffers+0x38>)
d0000a4c:	f8d3 00ec 	ldr.w	r0, [r3, #236]	; 0xec
d0000a50:	b410      	push	{r4}
d0000a52:	f8d3 40f4 	ldr.w	r4, [r3, #244]	; 0xf4
d0000a56:	f8d3 10f4 	ldr.w	r1, [r3, #244]	; 0xf4
d0000a5a:	6002      	str	r2, [r0, #0]
d0000a5c:	6022      	str	r2, [r4, #0]
d0000a5e:	4809      	ldr	r0, [pc, #36]	; (d0000a84 <initDisplayBuffers+0x3c>)
d0000a60:	680a      	ldr	r2, [r1, #0]
d0000a62:	4909      	ldr	r1, [pc, #36]	; (d0000a88 <initDisplayBuffers+0x40>)
d0000a64:	6002      	str	r2, [r0, #0]
d0000a66:	f8d3 00f0 	ldr.w	r0, [r3, #240]	; 0xf0
d0000a6a:	f8d3 30f0 	ldr.w	r3, [r3, #240]	; 0xf0
d0000a6e:	4a07      	ldr	r2, [pc, #28]	; (d0000a8c <initDisplayBuffers+0x44>)
d0000a70:	6008      	str	r0, [r1, #0]
d0000a72:	681b      	ldr	r3, [r3, #0]
d0000a74:	f85d 4b04 	ldr.w	r4, [sp], #4
d0000a78:	6013      	str	r3, [r2, #0]
d0000a7a:	4770      	bx	lr
d0000a7c:	2001f000 	.word	0x2001f000
d0000a80:	d06b2000 	.word	0xd06b2000
d0000a84:	d0001a08 	.word	0xd0001a08
d0000a88:	d0001a0c 	.word	0xd0001a0c
d0000a8c:	d0001a14 	.word	0xd0001a14

d0000a90 <ShowBuffer>:
d0000a90:	4b09      	ldr	r3, [pc, #36]	; (d0000ab8 <ShowBuffer+0x28>)
d0000a92:	b140      	cbz	r0, d0000aa6 <ShowBuffer+0x16>
d0000a94:	f8d3 10ec 	ldr.w	r1, [r3, #236]	; 0xec
d0000a98:	4808      	ldr	r0, [pc, #32]	; (d0000abc <ShowBuffer+0x2c>)
d0000a9a:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d0000a9e:	4a08      	ldr	r2, [pc, #32]	; (d0000ac0 <ShowBuffer+0x30>)
d0000aa0:	6008      	str	r0, [r1, #0]
d0000aa2:	601a      	str	r2, [r3, #0]
d0000aa4:	4770      	bx	lr
d0000aa6:	f8d3 10ec 	ldr.w	r1, [r3, #236]	; 0xec
d0000aaa:	4805      	ldr	r0, [pc, #20]	; (d0000ac0 <ShowBuffer+0x30>)
d0000aac:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d0000ab0:	4a02      	ldr	r2, [pc, #8]	; (d0000abc <ShowBuffer+0x2c>)
d0000ab2:	6008      	str	r0, [r1, #0]
d0000ab4:	601a      	str	r2, [r3, #0]
d0000ab6:	4770      	bx	lr
d0000ab8:	2001f000 	.word	0x2001f000
d0000abc:	d06b2000 	.word	0xd06b2000
d0000ac0:	d06d9000 	.word	0xd06d9000

d0000ac4 <StopChannel>:
d0000ac4:	4b04      	ldr	r3, [pc, #16]	; (d0000ad8 <StopChannel+0x14>)
d0000ac6:	0080      	lsls	r0, r0, #2
d0000ac8:	4403      	add	r3, r0
d0000aca:	685b      	ldr	r3, [r3, #4]
d0000acc:	781a      	ldrb	r2, [r3, #0]
d0000ace:	f36f 0200 	bfc	r2, #0, #1
d0000ad2:	701a      	strb	r2, [r3, #0]
d0000ad4:	4770      	bx	lr
d0000ad6:	bf00      	nop
d0000ad8:	2001f170 	.word	0x2001f170

d0000adc <_sbrk>:
d0000adc:	4904      	ldr	r1, [pc, #16]	; (d0000af0 <_sbrk+0x14>)
d0000ade:	4a05      	ldr	r2, [pc, #20]	; (d0000af4 <_sbrk+0x18>)
d0000ae0:	680b      	ldr	r3, [r1, #0]
d0000ae2:	2b00      	cmp	r3, #0
d0000ae4:	bf08      	it	eq
d0000ae6:	4613      	moveq	r3, r2
d0000ae8:	181a      	adds	r2, r3, r0
d0000aea:	4618      	mov	r0, r3
d0000aec:	600a      	str	r2, [r1, #0]
d0000aee:	4770      	bx	lr
d0000af0:	d000199c 	.word	0xd000199c
d0000af4:	d0001a29 	.word	0xd0001a29

d0000af8 <ISRTimerA>:
d0000af8:	4a02      	ldr	r2, [pc, #8]	; (d0000b04 <ISRTimerA+0xc>)
d0000afa:	6813      	ldr	r3, [r2, #0]
d0000afc:	3301      	adds	r3, #1
d0000afe:	6013      	str	r3, [r2, #0]
d0000b00:	4770      	bx	lr
d0000b02:	bf00      	nop
d0000b04:	d00019a8 	.word	0xd00019a8

d0000b08 <VBISRR>:
d0000b08:	4a02      	ldr	r2, [pc, #8]	; (d0000b14 <VBISRR+0xc>)
d0000b0a:	6813      	ldr	r3, [r2, #0]
d0000b0c:	3301      	adds	r3, #1
d0000b0e:	6013      	str	r3, [r2, #0]
d0000b10:	4770      	bx	lr
d0000b12:	bf00      	nop
d0000b14:	d00019b0 	.word	0xd00019b0

d0000b18 <JP_ISR>:
d0000b18:	4a03      	ldr	r2, [pc, #12]	; (d0000b28 <JP_ISR+0x10>)
d0000b1a:	4904      	ldr	r1, [pc, #16]	; (d0000b2c <JP_ISR+0x14>)
d0000b1c:	6813      	ldr	r3, [r2, #0]
d0000b1e:	3301      	adds	r3, #1
d0000b20:	6013      	str	r3, [r2, #0]
d0000b22:	7803      	ldrb	r3, [r0, #0]
d0000b24:	700b      	strb	r3, [r1, #0]
d0000b26:	4770      	bx	lr
d0000b28:	d00019a0 	.word	0xd00019a0
d0000b2c:	d0001a18 	.word	0xd0001a18

d0000b30 <ISRTimerB>:
d0000b30:	4a0e      	ldr	r2, [pc, #56]	; (d0000b6c <ISRTimerB+0x3c>)
d0000b32:	7813      	ldrb	r3, [r2, #0]
d0000b34:	3301      	adds	r3, #1
d0000b36:	b2db      	uxtb	r3, r3
d0000b38:	7013      	strb	r3, [r2, #0]
d0000b3a:	7813      	ldrb	r3, [r2, #0]
d0000b3c:	2b3b      	cmp	r3, #59	; 0x3b
d0000b3e:	d913      	bls.n	d0000b68 <ISRTimerB+0x38>
d0000b40:	490b      	ldr	r1, [pc, #44]	; (d0000b70 <ISRTimerB+0x40>)
d0000b42:	2000      	movs	r0, #0
d0000b44:	7010      	strb	r0, [r2, #0]
d0000b46:	780b      	ldrb	r3, [r1, #0]
d0000b48:	3301      	adds	r3, #1
d0000b4a:	b2db      	uxtb	r3, r3
d0000b4c:	700b      	strb	r3, [r1, #0]
d0000b4e:	780b      	ldrb	r3, [r1, #0]
d0000b50:	2b3b      	cmp	r3, #59	; 0x3b
d0000b52:	d909      	bls.n	d0000b68 <ISRTimerB+0x38>
d0000b54:	4a07      	ldr	r2, [pc, #28]	; (d0000b74 <ISRTimerB+0x44>)
d0000b56:	7008      	strb	r0, [r1, #0]
d0000b58:	7813      	ldrb	r3, [r2, #0]
d0000b5a:	3301      	adds	r3, #1
d0000b5c:	b2db      	uxtb	r3, r3
d0000b5e:	7013      	strb	r3, [r2, #0]
d0000b60:	7813      	ldrb	r3, [r2, #0]
d0000b62:	2b17      	cmp	r3, #23
d0000b64:	d900      	bls.n	d0000b68 <ISRTimerB+0x38>
d0000b66:	7010      	strb	r0, [r2, #0]
d0000b68:	4770      	bx	lr
d0000b6a:	bf00      	nop
d0000b6c:	d00019a6 	.word	0xd00019a6
d0000b70:	d00019a5 	.word	0xd00019a5
d0000b74:	d00019a4 	.word	0xd00019a4

d0000b78 <main>:
d0000b78:	4a93      	ldr	r2, [pc, #588]	; (d0000dc8 <main+0x250>)
d0000b7a:	20ff      	movs	r0, #255	; 0xff
d0000b7c:	6813      	ldr	r3, [r2, #0]
d0000b7e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0000b82:	f023 0310 	bic.w	r3, r3, #16
d0000b86:	f8df b290 	ldr.w	fp, [pc, #656]	; d0000e18 <main+0x2a0>
d0000b8a:	b0a7      	sub	sp, #156	; 0x9c
d0000b8c:	2500      	movs	r5, #0
d0000b8e:	6013      	str	r3, [r2, #0]
d0000b90:	f04f 0904 	mov.w	r9, #4
d0000b94:	f8db 30c8 	ldr.w	r3, [fp, #200]	; 0xc8
d0000b98:	268c      	movs	r6, #140	; 0x8c
d0000b9a:	4798      	blx	r3
d0000b9c:	4b8b      	ldr	r3, [pc, #556]	; (d0000dcc <main+0x254>)
d0000b9e:	488c      	ldr	r0, [pc, #560]	; (d0000dd0 <main+0x258>)
d0000ba0:	465c      	mov	r4, fp
d0000ba2:	601d      	str	r5, [r3, #0]
d0000ba4:	46a8      	mov	r8, r5
d0000ba6:	f8db 3008 	ldr.w	r3, [fp, #8]
d0000baa:	46ca      	mov	sl, r9
d0000bac:	4798      	blx	r3
d0000bae:	f8db 300c 	ldr.w	r3, [fp, #12]
d0000bb2:	200a      	movs	r0, #10
d0000bb4:	4798      	blx	r3
d0000bb6:	f7ff ff47 	bl	d0000a48 <initDisplayBuffers>
d0000bba:	4b86      	ldr	r3, [pc, #536]	; (d0000dd4 <main+0x25c>)
d0000bbc:	4629      	mov	r1, r5
d0000bbe:	2240      	movs	r2, #64	; 0x40
d0000bc0:	4885      	ldr	r0, [pc, #532]	; (d0000dd8 <main+0x260>)
d0000bc2:	701d      	strb	r5, [r3, #0]
d0000bc4:	f7ff fa26 	bl	d0000014 <memset>
d0000bc8:	4628      	mov	r0, r5
d0000bca:	f7ff ff7b 	bl	d0000ac4 <StopChannel>
d0000bce:	2001      	movs	r0, #1
d0000bd0:	f7ff ff78 	bl	d0000ac4 <StopChannel>
d0000bd4:	2002      	movs	r0, #2
d0000bd6:	f7ff ff75 	bl	d0000ac4 <StopChannel>
d0000bda:	2003      	movs	r0, #3
d0000bdc:	f7ff ff72 	bl	d0000ac4 <StopChannel>
d0000be0:	4648      	mov	r0, r9
d0000be2:	f7ff ff6f 	bl	d0000ac4 <StopChannel>
d0000be6:	2005      	movs	r0, #5
d0000be8:	f7ff ff6c 	bl	d0000ac4 <StopChannel>
d0000bec:	2006      	movs	r0, #6
d0000bee:	f7ff ff69 	bl	d0000ac4 <StopChannel>
d0000bf2:	2007      	movs	r0, #7
d0000bf4:	f7ff ff66 	bl	d0000ac4 <StopChannel>
d0000bf8:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0000bfc:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0000c00:	2002      	movs	r0, #2
d0000c02:	f8db 70e8 	ldr.w	r7, [fp, #232]	; 0xe8
d0000c06:	4619      	mov	r1, r3
d0000c08:	9000      	str	r0, [sp, #0]
d0000c0a:	4610      	mov	r0, r2
d0000c0c:	47b8      	blx	r7
d0000c0e:	f8db 1038 	ldr.w	r1, [fp, #56]	; 0x38
d0000c12:	f645 0316 	movw	r3, #22550	; 0x5816
d0000c16:	f8db 2038 	ldr.w	r2, [fp, #56]	; 0x38
d0000c1a:	4870      	ldr	r0, [pc, #448]	; (d0000ddc <main+0x264>)
d0000c1c:	f240 37df 	movw	r7, #991	; 0x3df
d0000c20:	60c8      	str	r0, [r1, #12]
d0000c22:	f242 710f 	movw	r1, #9999	; 0x270f
d0000c26:	6013      	str	r3, [r2, #0]
d0000c28:	2003      	movs	r0, #3
d0000c2a:	f8db 2038 	ldr.w	r2, [fp, #56]	; 0x38
d0000c2e:	6057      	str	r7, [r2, #4]
d0000c30:	f8db 203c 	ldr.w	r2, [fp, #60]	; 0x3c
d0000c34:	4f6a      	ldr	r7, [pc, #424]	; (d0000de0 <main+0x268>)
d0000c36:	60d7      	str	r7, [r2, #12]
d0000c38:	f8db 703c 	ldr.w	r7, [fp, #60]	; 0x3c
d0000c3c:	f8db 203c 	ldr.w	r2, [fp, #60]	; 0x3c
d0000c40:	603b      	str	r3, [r7, #0]
d0000c42:	4637      	mov	r7, r6
d0000c44:	6051      	str	r1, [r2, #4]
d0000c46:	f8db 3048 	ldr.w	r3, [fp, #72]	; 0x48
d0000c4a:	4798      	blx	r3
d0000c4c:	f8db 304c 	ldr.w	r3, [fp, #76]	; 0x4c
d0000c50:	2003      	movs	r0, #3
d0000c52:	4798      	blx	r3
d0000c54:	f8db 2050 	ldr.w	r2, [fp, #80]	; 0x50
d0000c58:	4862      	ldr	r0, [pc, #392]	; (d0000de4 <main+0x26c>)
d0000c5a:	f8db 1050 	ldr.w	r1, [fp, #80]	; 0x50
d0000c5e:	f8db 3050 	ldr.w	r3, [fp, #80]	; 0x50
d0000c62:	6050      	str	r0, [r2, #4]
d0000c64:	4860      	ldr	r0, [pc, #384]	; (d0000de8 <main+0x270>)
d0000c66:	4a61      	ldr	r2, [pc, #388]	; (d0000dec <main+0x274>)
d0000c68:	6088      	str	r0, [r1, #8]
d0000c6a:	60da      	str	r2, [r3, #12]
d0000c6c:	e0a0      	b.n	d0000db0 <main+0x238>
d0000c6e:	f108 0801 	add.w	r8, r8, #1
d0000c72:	f1b8 0f04 	cmp.w	r8, #4
d0000c76:	f300 80a3 	bgt.w	d0000dc0 <main+0x248>
d0000c7a:	f8d4 3118 	ldr.w	r3, [r4, #280]	; 0x118
d0000c7e:	2000      	movs	r0, #0
d0000c80:	4798      	blx	r3
d0000c82:	f8d4 311c 	ldr.w	r3, [r4, #284]	; 0x11c
d0000c86:	2000      	movs	r0, #0
d0000c88:	4457      	add	r7, sl
d0000c8a:	4798      	blx	r3
d0000c8c:	4b58      	ldr	r3, [pc, #352]	; (d0000df0 <main+0x278>)
d0000c8e:	f8df e18c 	ldr.w	lr, [pc, #396]	; d0000e1c <main+0x2a4>
d0000c92:	444e      	add	r6, r9
d0000c94:	781a      	ldrb	r2, [r3, #0]
d0000c96:	4857      	ldr	r0, [pc, #348]	; (d0000df4 <main+0x27c>)
d0000c98:	f8df c184 	ldr.w	ip, [pc, #388]	; d0000e20 <main+0x2a8>
d0000c9c:	4956      	ldr	r1, [pc, #344]	; (d0000df8 <main+0x280>)
d0000c9e:	4b57      	ldr	r3, [pc, #348]	; (d0000dfc <main+0x284>)
d0000ca0:	781b      	ldrb	r3, [r3, #0]
d0000ca2:	f89e e000 	ldrb.w	lr, [lr]
d0000ca6:	6800      	ldr	r0, [r0, #0]
d0000ca8:	f8dc c000 	ldr.w	ip, [ip]
d0000cac:	6809      	ldr	r1, [r1, #0]
d0000cae:	e9cd e000 	strd	lr, r0, [sp]
d0000cb2:	e9cd c102 	strd	ip, r1, [sp, #8]
d0000cb6:	a806      	add	r0, sp, #24
d0000cb8:	4951      	ldr	r1, [pc, #324]	; (d0000e00 <main+0x288>)
d0000cba:	f000 f8b3 	bl	d0000e24 <siprintf>
d0000cbe:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d0000cc2:	2108      	movs	r1, #8
d0000cc4:	202e      	movs	r0, #46	; 0x2e
d0000cc6:	aa06      	add	r2, sp, #24
d0000cc8:	7018      	strb	r0, [r3, #0]
d0000cca:	4608      	mov	r0, r1
d0000ccc:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d0000cd0:	4798      	blx	r3
d0000cd2:	4a4c      	ldr	r2, [pc, #304]	; (d0000e04 <main+0x28c>)
d0000cd4:	494c      	ldr	r1, [pc, #304]	; (d0000e08 <main+0x290>)
d0000cd6:	a806      	add	r0, sp, #24
d0000cd8:	f892 c007 	ldrb.w	ip, [r2, #7]
d0000cdc:	7993      	ldrb	r3, [r2, #6]
d0000cde:	f8cd c014 	str.w	ip, [sp, #20]
d0000ce2:	f892 c005 	ldrb.w	ip, [r2, #5]
d0000ce6:	9304      	str	r3, [sp, #16]
d0000ce8:	7913      	ldrb	r3, [r2, #4]
d0000cea:	f8cd c00c 	str.w	ip, [sp, #12]
d0000cee:	f892 c003 	ldrb.w	ip, [r2, #3]
d0000cf2:	9302      	str	r3, [sp, #8]
d0000cf4:	7893      	ldrb	r3, [r2, #2]
d0000cf6:	e9cd 3c00 	strd	r3, ip, [sp]
d0000cfa:	7853      	ldrb	r3, [r2, #1]
d0000cfc:	7812      	ldrb	r2, [r2, #0]
d0000cfe:	f000 f891 	bl	d0000e24 <siprintf>
d0000d02:	aa06      	add	r2, sp, #24
d0000d04:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d0000d08:	21a0      	movs	r1, #160	; 0xa0
d0000d0a:	2008      	movs	r0, #8
d0000d0c:	4798      	blx	r3
d0000d0e:	4b3f      	ldr	r3, [pc, #252]	; (d0000e0c <main+0x294>)
d0000d10:	493f      	ldr	r1, [pc, #252]	; (d0000e10 <main+0x298>)
d0000d12:	a806      	add	r0, sp, #24
d0000d14:	781a      	ldrb	r2, [r3, #0]
d0000d16:	f002 0e01 	and.w	lr, r2, #1
d0000d1a:	f3c2 1c00 	ubfx	ip, r2, #4, #1
d0000d1e:	f3c2 0b40 	ubfx	fp, r2, #1, #1
d0000d22:	f3c2 1340 	ubfx	r3, r2, #5, #1
d0000d26:	f8cd c000 	str.w	ip, [sp]
d0000d2a:	9301      	str	r3, [sp, #4]
d0000d2c:	f3c2 03c0 	ubfx	r3, r2, #3, #1
d0000d30:	f3c2 0280 	ubfx	r2, r2, #2, #1
d0000d34:	e9cd eb02 	strd	lr, fp, [sp, #8]
d0000d38:	f000 f874 	bl	d0000e24 <siprintf>
d0000d3c:	aa06      	add	r2, sp, #24
d0000d3e:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d0000d42:	21be      	movs	r1, #190	; 0xbe
d0000d44:	2008      	movs	r0, #8
d0000d46:	4798      	blx	r3
d0000d48:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d0000d4c:	4a22      	ldr	r2, [pc, #136]	; (d0000dd8 <main+0x260>)
d0000d4e:	f44f 7196 	mov.w	r1, #300	; 0x12c
d0000d52:	2008      	movs	r0, #8
d0000d54:	4798      	blx	r3
d0000d56:	f1a7 0328 	sub.w	r3, r7, #40	; 0x28
d0000d5a:	4631      	mov	r1, r6
d0000d5c:	f107 0228 	add.w	r2, r7, #40	; 0x28
d0000d60:	f5b3 7fc8 	cmp.w	r3, #400	; 0x190
d0000d64:	f1a6 0328 	sub.w	r3, r6, #40	; 0x28
d0000d68:	4638      	mov	r0, r7
d0000d6a:	f8d4 b13c 	ldr.w	fp, [r4, #316]	; 0x13c
d0000d6e:	bf88      	it	hi
d0000d70:	f1ca 0a00 	rsbhi	sl, sl, #0
d0000d74:	2bf0      	cmp	r3, #240	; 0xf0
d0000d76:	f106 0328 	add.w	r3, r6, #40	; 0x28
d0000d7a:	bf88      	it	hi
d0000d7c:	f1c9 0900 	rsbhi	r9, r9, #0
d0000d80:	47d8      	blx	fp
d0000d82:	4a24      	ldr	r2, [pc, #144]	; (d0000e14 <main+0x29c>)
d0000d84:	4628      	mov	r0, r5
d0000d86:	f1c5 0501 	rsb	r5, r5, #1
d0000d8a:	6813      	ldr	r3, [r2, #0]
d0000d8c:	b2ed      	uxtb	r5, r5
d0000d8e:	3301      	adds	r3, #1
d0000d90:	2b1e      	cmp	r3, #30
d0000d92:	bfc8      	it	gt
d0000d94:	2300      	movgt	r3, #0
d0000d96:	6013      	str	r3, [r2, #0]
d0000d98:	f7ff fe7a 	bl	d0000a90 <ShowBuffer>
d0000d9c:	f8d4 30cc 	ldr.w	r3, [r4, #204]	; 0xcc
d0000da0:	4798      	blx	r3
d0000da2:	f8d4 30c4 	ldr.w	r3, [r4, #196]	; 0xc4
d0000da6:	2001      	movs	r0, #1
d0000da8:	4798      	blx	r3
d0000daa:	f8d4 315c 	ldr.w	r3, [r4, #348]	; 0x15c
d0000dae:	4798      	blx	r3
d0000db0:	69e3      	ldr	r3, [r4, #28]
d0000db2:	4798      	blx	r3
d0000db4:	f010 0002 	ands.w	r0, r0, #2
d0000db8:	f47f af59 	bne.w	d0000c6e <main+0xf6>
d0000dbc:	4680      	mov	r8, r0
d0000dbe:	e75c      	b.n	d0000c7a <main+0x102>
d0000dc0:	2007      	movs	r0, #7
d0000dc2:	b027      	add	sp, #156	; 0x9c
d0000dc4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0000dc8:	e000ed14 	.word	0xe000ed14
d0000dcc:	d000197c 	.word	0xd000197c
d0000dd0:	d000182c 	.word	0xd000182c
d0000dd4:	d0001998 	.word	0xd0001998
d0000dd8:	d00019c8 	.word	0xd00019c8
d0000ddc:	d0000af9 	.word	0xd0000af9
d0000de0:	d0000b31 	.word	0xd0000b31
d0000de4:	d0000b09 	.word	0xd0000b09
d0000de8:	d0000b19 	.word	0xd0000b19
d0000dec:	d0000025 	.word	0xd0000025
d0000df0:	d00019a4 	.word	0xd00019a4
d0000df4:	d00019a8 	.word	0xd00019a8
d0000df8:	d00019a0 	.word	0xd00019a0
d0000dfc:	d00019a5 	.word	0xd00019a5
d0000e00:	d0001840 	.word	0xd0001840
d0000e04:	d00019c0 	.word	0xd00019c0
d0000e08:	d000188c 	.word	0xd000188c
d0000e0c:	d0001a18 	.word	0xd0001a18
d0000e10:	d00018bc 	.word	0xd00018bc
d0000e14:	d00019ac 	.word	0xd00019ac
d0000e18:	2001f000 	.word	0x2001f000
d0000e1c:	d00019a6 	.word	0xd00019a6
d0000e20:	d00019b0 	.word	0xd00019b0

d0000e24 <siprintf>:
d0000e24:	b40e      	push	{r1, r2, r3}
d0000e26:	b500      	push	{lr}
d0000e28:	b09c      	sub	sp, #112	; 0x70
d0000e2a:	ab1d      	add	r3, sp, #116	; 0x74
d0000e2c:	9002      	str	r0, [sp, #8]
d0000e2e:	9006      	str	r0, [sp, #24]
d0000e30:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d0000e34:	4809      	ldr	r0, [pc, #36]	; (d0000e5c <siprintf+0x38>)
d0000e36:	9107      	str	r1, [sp, #28]
d0000e38:	9104      	str	r1, [sp, #16]
d0000e3a:	4909      	ldr	r1, [pc, #36]	; (d0000e60 <siprintf+0x3c>)
d0000e3c:	f853 2b04 	ldr.w	r2, [r3], #4
d0000e40:	9105      	str	r1, [sp, #20]
d0000e42:	6800      	ldr	r0, [r0, #0]
d0000e44:	9301      	str	r3, [sp, #4]
d0000e46:	a902      	add	r1, sp, #8
d0000e48:	f000 f868 	bl	d0000f1c <_svfiprintf_r>
d0000e4c:	9b02      	ldr	r3, [sp, #8]
d0000e4e:	2200      	movs	r2, #0
d0000e50:	701a      	strb	r2, [r3, #0]
d0000e52:	b01c      	add	sp, #112	; 0x70
d0000e54:	f85d eb04 	ldr.w	lr, [sp], #4
d0000e58:	b003      	add	sp, #12
d0000e5a:	4770      	bx	lr
d0000e5c:	d0001918 	.word	0xd0001918
d0000e60:	ffff0208 	.word	0xffff0208

d0000e64 <__ssputs_r>:
d0000e64:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0000e68:	688e      	ldr	r6, [r1, #8]
d0000e6a:	429e      	cmp	r6, r3
d0000e6c:	4682      	mov	sl, r0
d0000e6e:	460c      	mov	r4, r1
d0000e70:	4690      	mov	r8, r2
d0000e72:	461f      	mov	r7, r3
d0000e74:	d838      	bhi.n	d0000ee8 <__ssputs_r+0x84>
d0000e76:	898a      	ldrh	r2, [r1, #12]
d0000e78:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0000e7c:	d032      	beq.n	d0000ee4 <__ssputs_r+0x80>
d0000e7e:	6825      	ldr	r5, [r4, #0]
d0000e80:	6909      	ldr	r1, [r1, #16]
d0000e82:	eba5 0901 	sub.w	r9, r5, r1
d0000e86:	6965      	ldr	r5, [r4, #20]
d0000e88:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0000e8c:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0000e90:	3301      	adds	r3, #1
d0000e92:	444b      	add	r3, r9
d0000e94:	106d      	asrs	r5, r5, #1
d0000e96:	429d      	cmp	r5, r3
d0000e98:	bf38      	it	cc
d0000e9a:	461d      	movcc	r5, r3
d0000e9c:	0553      	lsls	r3, r2, #21
d0000e9e:	d531      	bpl.n	d0000f04 <__ssputs_r+0xa0>
d0000ea0:	4629      	mov	r1, r5
d0000ea2:	f000 fb9d 	bl	d00015e0 <_malloc_r>
d0000ea6:	4606      	mov	r6, r0
d0000ea8:	b950      	cbnz	r0, d0000ec0 <__ssputs_r+0x5c>
d0000eaa:	230c      	movs	r3, #12
d0000eac:	f8ca 3000 	str.w	r3, [sl]
d0000eb0:	89a3      	ldrh	r3, [r4, #12]
d0000eb2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0000eb6:	81a3      	strh	r3, [r4, #12]
d0000eb8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000ebc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0000ec0:	6921      	ldr	r1, [r4, #16]
d0000ec2:	464a      	mov	r2, r9
d0000ec4:	f000 fb14 	bl	d00014f0 <memcpy>
d0000ec8:	89a3      	ldrh	r3, [r4, #12]
d0000eca:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0000ece:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0000ed2:	81a3      	strh	r3, [r4, #12]
d0000ed4:	6126      	str	r6, [r4, #16]
d0000ed6:	6165      	str	r5, [r4, #20]
d0000ed8:	444e      	add	r6, r9
d0000eda:	eba5 0509 	sub.w	r5, r5, r9
d0000ede:	6026      	str	r6, [r4, #0]
d0000ee0:	60a5      	str	r5, [r4, #8]
d0000ee2:	463e      	mov	r6, r7
d0000ee4:	42be      	cmp	r6, r7
d0000ee6:	d900      	bls.n	d0000eea <__ssputs_r+0x86>
d0000ee8:	463e      	mov	r6, r7
d0000eea:	4632      	mov	r2, r6
d0000eec:	6820      	ldr	r0, [r4, #0]
d0000eee:	4641      	mov	r1, r8
d0000ef0:	f000 fb0c 	bl	d000150c <memmove>
d0000ef4:	68a3      	ldr	r3, [r4, #8]
d0000ef6:	6822      	ldr	r2, [r4, #0]
d0000ef8:	1b9b      	subs	r3, r3, r6
d0000efa:	4432      	add	r2, r6
d0000efc:	60a3      	str	r3, [r4, #8]
d0000efe:	6022      	str	r2, [r4, #0]
d0000f00:	2000      	movs	r0, #0
d0000f02:	e7db      	b.n	d0000ebc <__ssputs_r+0x58>
d0000f04:	462a      	mov	r2, r5
d0000f06:	f000 fbc5 	bl	d0001694 <_realloc_r>
d0000f0a:	4606      	mov	r6, r0
d0000f0c:	2800      	cmp	r0, #0
d0000f0e:	d1e1      	bne.n	d0000ed4 <__ssputs_r+0x70>
d0000f10:	6921      	ldr	r1, [r4, #16]
d0000f12:	4650      	mov	r0, sl
d0000f14:	f000 fb14 	bl	d0001540 <_free_r>
d0000f18:	e7c7      	b.n	d0000eaa <__ssputs_r+0x46>
	...

d0000f1c <_svfiprintf_r>:
d0000f1c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0000f20:	4698      	mov	r8, r3
d0000f22:	898b      	ldrh	r3, [r1, #12]
d0000f24:	061b      	lsls	r3, r3, #24
d0000f26:	b09d      	sub	sp, #116	; 0x74
d0000f28:	4607      	mov	r7, r0
d0000f2a:	460d      	mov	r5, r1
d0000f2c:	4614      	mov	r4, r2
d0000f2e:	d50e      	bpl.n	d0000f4e <_svfiprintf_r+0x32>
d0000f30:	690b      	ldr	r3, [r1, #16]
d0000f32:	b963      	cbnz	r3, d0000f4e <_svfiprintf_r+0x32>
d0000f34:	2140      	movs	r1, #64	; 0x40
d0000f36:	f000 fb53 	bl	d00015e0 <_malloc_r>
d0000f3a:	6028      	str	r0, [r5, #0]
d0000f3c:	6128      	str	r0, [r5, #16]
d0000f3e:	b920      	cbnz	r0, d0000f4a <_svfiprintf_r+0x2e>
d0000f40:	230c      	movs	r3, #12
d0000f42:	603b      	str	r3, [r7, #0]
d0000f44:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000f48:	e0d1      	b.n	d00010ee <_svfiprintf_r+0x1d2>
d0000f4a:	2340      	movs	r3, #64	; 0x40
d0000f4c:	616b      	str	r3, [r5, #20]
d0000f4e:	2300      	movs	r3, #0
d0000f50:	9309      	str	r3, [sp, #36]	; 0x24
d0000f52:	2320      	movs	r3, #32
d0000f54:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0000f58:	f8cd 800c 	str.w	r8, [sp, #12]
d0000f5c:	2330      	movs	r3, #48	; 0x30
d0000f5e:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0001108 <_svfiprintf_r+0x1ec>
d0000f62:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0000f66:	f04f 0901 	mov.w	r9, #1
d0000f6a:	4623      	mov	r3, r4
d0000f6c:	469a      	mov	sl, r3
d0000f6e:	f813 2b01 	ldrb.w	r2, [r3], #1
d0000f72:	b10a      	cbz	r2, d0000f78 <_svfiprintf_r+0x5c>
d0000f74:	2a25      	cmp	r2, #37	; 0x25
d0000f76:	d1f9      	bne.n	d0000f6c <_svfiprintf_r+0x50>
d0000f78:	ebba 0b04 	subs.w	fp, sl, r4
d0000f7c:	d00b      	beq.n	d0000f96 <_svfiprintf_r+0x7a>
d0000f7e:	465b      	mov	r3, fp
d0000f80:	4622      	mov	r2, r4
d0000f82:	4629      	mov	r1, r5
d0000f84:	4638      	mov	r0, r7
d0000f86:	f7ff ff6d 	bl	d0000e64 <__ssputs_r>
d0000f8a:	3001      	adds	r0, #1
d0000f8c:	f000 80aa 	beq.w	d00010e4 <_svfiprintf_r+0x1c8>
d0000f90:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0000f92:	445a      	add	r2, fp
d0000f94:	9209      	str	r2, [sp, #36]	; 0x24
d0000f96:	f89a 3000 	ldrb.w	r3, [sl]
d0000f9a:	2b00      	cmp	r3, #0
d0000f9c:	f000 80a2 	beq.w	d00010e4 <_svfiprintf_r+0x1c8>
d0000fa0:	2300      	movs	r3, #0
d0000fa2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0000fa6:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0000faa:	f10a 0a01 	add.w	sl, sl, #1
d0000fae:	9304      	str	r3, [sp, #16]
d0000fb0:	9307      	str	r3, [sp, #28]
d0000fb2:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0000fb6:	931a      	str	r3, [sp, #104]	; 0x68
d0000fb8:	4654      	mov	r4, sl
d0000fba:	2205      	movs	r2, #5
d0000fbc:	f814 1b01 	ldrb.w	r1, [r4], #1
d0000fc0:	4851      	ldr	r0, [pc, #324]	; (d0001108 <_svfiprintf_r+0x1ec>)
d0000fc2:	f000 fa45 	bl	d0001450 <memchr>
d0000fc6:	9a04      	ldr	r2, [sp, #16]
d0000fc8:	b9d8      	cbnz	r0, d0001002 <_svfiprintf_r+0xe6>
d0000fca:	06d0      	lsls	r0, r2, #27
d0000fcc:	bf44      	itt	mi
d0000fce:	2320      	movmi	r3, #32
d0000fd0:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0000fd4:	0711      	lsls	r1, r2, #28
d0000fd6:	bf44      	itt	mi
d0000fd8:	232b      	movmi	r3, #43	; 0x2b
d0000fda:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0000fde:	f89a 3000 	ldrb.w	r3, [sl]
d0000fe2:	2b2a      	cmp	r3, #42	; 0x2a
d0000fe4:	d015      	beq.n	d0001012 <_svfiprintf_r+0xf6>
d0000fe6:	9a07      	ldr	r2, [sp, #28]
d0000fe8:	4654      	mov	r4, sl
d0000fea:	2000      	movs	r0, #0
d0000fec:	f04f 0c0a 	mov.w	ip, #10
d0000ff0:	4621      	mov	r1, r4
d0000ff2:	f811 3b01 	ldrb.w	r3, [r1], #1
d0000ff6:	3b30      	subs	r3, #48	; 0x30
d0000ff8:	2b09      	cmp	r3, #9
d0000ffa:	d94e      	bls.n	d000109a <_svfiprintf_r+0x17e>
d0000ffc:	b1b0      	cbz	r0, d000102c <_svfiprintf_r+0x110>
d0000ffe:	9207      	str	r2, [sp, #28]
d0001000:	e014      	b.n	d000102c <_svfiprintf_r+0x110>
d0001002:	eba0 0308 	sub.w	r3, r0, r8
d0001006:	fa09 f303 	lsl.w	r3, r9, r3
d000100a:	4313      	orrs	r3, r2
d000100c:	9304      	str	r3, [sp, #16]
d000100e:	46a2      	mov	sl, r4
d0001010:	e7d2      	b.n	d0000fb8 <_svfiprintf_r+0x9c>
d0001012:	9b03      	ldr	r3, [sp, #12]
d0001014:	1d19      	adds	r1, r3, #4
d0001016:	681b      	ldr	r3, [r3, #0]
d0001018:	9103      	str	r1, [sp, #12]
d000101a:	2b00      	cmp	r3, #0
d000101c:	bfbb      	ittet	lt
d000101e:	425b      	neglt	r3, r3
d0001020:	f042 0202 	orrlt.w	r2, r2, #2
d0001024:	9307      	strge	r3, [sp, #28]
d0001026:	9307      	strlt	r3, [sp, #28]
d0001028:	bfb8      	it	lt
d000102a:	9204      	strlt	r2, [sp, #16]
d000102c:	7823      	ldrb	r3, [r4, #0]
d000102e:	2b2e      	cmp	r3, #46	; 0x2e
d0001030:	d10c      	bne.n	d000104c <_svfiprintf_r+0x130>
d0001032:	7863      	ldrb	r3, [r4, #1]
d0001034:	2b2a      	cmp	r3, #42	; 0x2a
d0001036:	d135      	bne.n	d00010a4 <_svfiprintf_r+0x188>
d0001038:	9b03      	ldr	r3, [sp, #12]
d000103a:	1d1a      	adds	r2, r3, #4
d000103c:	681b      	ldr	r3, [r3, #0]
d000103e:	9203      	str	r2, [sp, #12]
d0001040:	2b00      	cmp	r3, #0
d0001042:	bfb8      	it	lt
d0001044:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0001048:	3402      	adds	r4, #2
d000104a:	9305      	str	r3, [sp, #20]
d000104c:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d0001118 <_svfiprintf_r+0x1fc>
d0001050:	7821      	ldrb	r1, [r4, #0]
d0001052:	2203      	movs	r2, #3
d0001054:	4650      	mov	r0, sl
d0001056:	f000 f9fb 	bl	d0001450 <memchr>
d000105a:	b140      	cbz	r0, d000106e <_svfiprintf_r+0x152>
d000105c:	2340      	movs	r3, #64	; 0x40
d000105e:	eba0 000a 	sub.w	r0, r0, sl
d0001062:	fa03 f000 	lsl.w	r0, r3, r0
d0001066:	9b04      	ldr	r3, [sp, #16]
d0001068:	4303      	orrs	r3, r0
d000106a:	3401      	adds	r4, #1
d000106c:	9304      	str	r3, [sp, #16]
d000106e:	f814 1b01 	ldrb.w	r1, [r4], #1
d0001072:	4826      	ldr	r0, [pc, #152]	; (d000110c <_svfiprintf_r+0x1f0>)
d0001074:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0001078:	2206      	movs	r2, #6
d000107a:	f000 f9e9 	bl	d0001450 <memchr>
d000107e:	2800      	cmp	r0, #0
d0001080:	d038      	beq.n	d00010f4 <_svfiprintf_r+0x1d8>
d0001082:	4b23      	ldr	r3, [pc, #140]	; (d0001110 <_svfiprintf_r+0x1f4>)
d0001084:	bb1b      	cbnz	r3, d00010ce <_svfiprintf_r+0x1b2>
d0001086:	9b03      	ldr	r3, [sp, #12]
d0001088:	3307      	adds	r3, #7
d000108a:	f023 0307 	bic.w	r3, r3, #7
d000108e:	3308      	adds	r3, #8
d0001090:	9303      	str	r3, [sp, #12]
d0001092:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0001094:	4433      	add	r3, r6
d0001096:	9309      	str	r3, [sp, #36]	; 0x24
d0001098:	e767      	b.n	d0000f6a <_svfiprintf_r+0x4e>
d000109a:	fb0c 3202 	mla	r2, ip, r2, r3
d000109e:	460c      	mov	r4, r1
d00010a0:	2001      	movs	r0, #1
d00010a2:	e7a5      	b.n	d0000ff0 <_svfiprintf_r+0xd4>
d00010a4:	2300      	movs	r3, #0
d00010a6:	3401      	adds	r4, #1
d00010a8:	9305      	str	r3, [sp, #20]
d00010aa:	4619      	mov	r1, r3
d00010ac:	f04f 0c0a 	mov.w	ip, #10
d00010b0:	4620      	mov	r0, r4
d00010b2:	f810 2b01 	ldrb.w	r2, [r0], #1
d00010b6:	3a30      	subs	r2, #48	; 0x30
d00010b8:	2a09      	cmp	r2, #9
d00010ba:	d903      	bls.n	d00010c4 <_svfiprintf_r+0x1a8>
d00010bc:	2b00      	cmp	r3, #0
d00010be:	d0c5      	beq.n	d000104c <_svfiprintf_r+0x130>
d00010c0:	9105      	str	r1, [sp, #20]
d00010c2:	e7c3      	b.n	d000104c <_svfiprintf_r+0x130>
d00010c4:	fb0c 2101 	mla	r1, ip, r1, r2
d00010c8:	4604      	mov	r4, r0
d00010ca:	2301      	movs	r3, #1
d00010cc:	e7f0      	b.n	d00010b0 <_svfiprintf_r+0x194>
d00010ce:	ab03      	add	r3, sp, #12
d00010d0:	9300      	str	r3, [sp, #0]
d00010d2:	462a      	mov	r2, r5
d00010d4:	4b0f      	ldr	r3, [pc, #60]	; (d0001114 <_svfiprintf_r+0x1f8>)
d00010d6:	a904      	add	r1, sp, #16
d00010d8:	4638      	mov	r0, r7
d00010da:	f3af 8000 	nop.w
d00010de:	1c42      	adds	r2, r0, #1
d00010e0:	4606      	mov	r6, r0
d00010e2:	d1d6      	bne.n	d0001092 <_svfiprintf_r+0x176>
d00010e4:	89ab      	ldrh	r3, [r5, #12]
d00010e6:	065b      	lsls	r3, r3, #25
d00010e8:	f53f af2c 	bmi.w	d0000f44 <_svfiprintf_r+0x28>
d00010ec:	9809      	ldr	r0, [sp, #36]	; 0x24
d00010ee:	b01d      	add	sp, #116	; 0x74
d00010f0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00010f4:	ab03      	add	r3, sp, #12
d00010f6:	9300      	str	r3, [sp, #0]
d00010f8:	462a      	mov	r2, r5
d00010fa:	4b06      	ldr	r3, [pc, #24]	; (d0001114 <_svfiprintf_r+0x1f8>)
d00010fc:	a904      	add	r1, sp, #16
d00010fe:	4638      	mov	r0, r7
d0001100:	f000 f87a 	bl	d00011f8 <_printf_i>
d0001104:	e7eb      	b.n	d00010de <_svfiprintf_r+0x1c2>
d0001106:	bf00      	nop
d0001108:	d00018dc 	.word	0xd00018dc
d000110c:	d00018e6 	.word	0xd00018e6
d0001110:	00000000 	.word	0x00000000
d0001114:	d0000e65 	.word	0xd0000e65
d0001118:	d00018e2 	.word	0xd00018e2

d000111c <_printf_common>:
d000111c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0001120:	4616      	mov	r6, r2
d0001122:	4699      	mov	r9, r3
d0001124:	688a      	ldr	r2, [r1, #8]
d0001126:	690b      	ldr	r3, [r1, #16]
d0001128:	f8dd 8020 	ldr.w	r8, [sp, #32]
d000112c:	4293      	cmp	r3, r2
d000112e:	bfb8      	it	lt
d0001130:	4613      	movlt	r3, r2
d0001132:	6033      	str	r3, [r6, #0]
d0001134:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0001138:	4607      	mov	r7, r0
d000113a:	460c      	mov	r4, r1
d000113c:	b10a      	cbz	r2, d0001142 <_printf_common+0x26>
d000113e:	3301      	adds	r3, #1
d0001140:	6033      	str	r3, [r6, #0]
d0001142:	6823      	ldr	r3, [r4, #0]
d0001144:	0699      	lsls	r1, r3, #26
d0001146:	bf42      	ittt	mi
d0001148:	6833      	ldrmi	r3, [r6, #0]
d000114a:	3302      	addmi	r3, #2
d000114c:	6033      	strmi	r3, [r6, #0]
d000114e:	6825      	ldr	r5, [r4, #0]
d0001150:	f015 0506 	ands.w	r5, r5, #6
d0001154:	d106      	bne.n	d0001164 <_printf_common+0x48>
d0001156:	f104 0a19 	add.w	sl, r4, #25
d000115a:	68e3      	ldr	r3, [r4, #12]
d000115c:	6832      	ldr	r2, [r6, #0]
d000115e:	1a9b      	subs	r3, r3, r2
d0001160:	42ab      	cmp	r3, r5
d0001162:	dc26      	bgt.n	d00011b2 <_printf_common+0x96>
d0001164:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0001168:	1e13      	subs	r3, r2, #0
d000116a:	6822      	ldr	r2, [r4, #0]
d000116c:	bf18      	it	ne
d000116e:	2301      	movne	r3, #1
d0001170:	0692      	lsls	r2, r2, #26
d0001172:	d42b      	bmi.n	d00011cc <_printf_common+0xb0>
d0001174:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0001178:	4649      	mov	r1, r9
d000117a:	4638      	mov	r0, r7
d000117c:	47c0      	blx	r8
d000117e:	3001      	adds	r0, #1
d0001180:	d01e      	beq.n	d00011c0 <_printf_common+0xa4>
d0001182:	6823      	ldr	r3, [r4, #0]
d0001184:	68e5      	ldr	r5, [r4, #12]
d0001186:	6832      	ldr	r2, [r6, #0]
d0001188:	f003 0306 	and.w	r3, r3, #6
d000118c:	2b04      	cmp	r3, #4
d000118e:	bf08      	it	eq
d0001190:	1aad      	subeq	r5, r5, r2
d0001192:	68a3      	ldr	r3, [r4, #8]
d0001194:	6922      	ldr	r2, [r4, #16]
d0001196:	bf0c      	ite	eq
d0001198:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d000119c:	2500      	movne	r5, #0
d000119e:	4293      	cmp	r3, r2
d00011a0:	bfc4      	itt	gt
d00011a2:	1a9b      	subgt	r3, r3, r2
d00011a4:	18ed      	addgt	r5, r5, r3
d00011a6:	2600      	movs	r6, #0
d00011a8:	341a      	adds	r4, #26
d00011aa:	42b5      	cmp	r5, r6
d00011ac:	d11a      	bne.n	d00011e4 <_printf_common+0xc8>
d00011ae:	2000      	movs	r0, #0
d00011b0:	e008      	b.n	d00011c4 <_printf_common+0xa8>
d00011b2:	2301      	movs	r3, #1
d00011b4:	4652      	mov	r2, sl
d00011b6:	4649      	mov	r1, r9
d00011b8:	4638      	mov	r0, r7
d00011ba:	47c0      	blx	r8
d00011bc:	3001      	adds	r0, #1
d00011be:	d103      	bne.n	d00011c8 <_printf_common+0xac>
d00011c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00011c4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00011c8:	3501      	adds	r5, #1
d00011ca:	e7c6      	b.n	d000115a <_printf_common+0x3e>
d00011cc:	18e1      	adds	r1, r4, r3
d00011ce:	1c5a      	adds	r2, r3, #1
d00011d0:	2030      	movs	r0, #48	; 0x30
d00011d2:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d00011d6:	4422      	add	r2, r4
d00011d8:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d00011dc:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d00011e0:	3302      	adds	r3, #2
d00011e2:	e7c7      	b.n	d0001174 <_printf_common+0x58>
d00011e4:	2301      	movs	r3, #1
d00011e6:	4622      	mov	r2, r4
d00011e8:	4649      	mov	r1, r9
d00011ea:	4638      	mov	r0, r7
d00011ec:	47c0      	blx	r8
d00011ee:	3001      	adds	r0, #1
d00011f0:	d0e6      	beq.n	d00011c0 <_printf_common+0xa4>
d00011f2:	3601      	adds	r6, #1
d00011f4:	e7d9      	b.n	d00011aa <_printf_common+0x8e>
	...

d00011f8 <_printf_i>:
d00011f8:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d00011fc:	460c      	mov	r4, r1
d00011fe:	4691      	mov	r9, r2
d0001200:	7e27      	ldrb	r7, [r4, #24]
d0001202:	990c      	ldr	r1, [sp, #48]	; 0x30
d0001204:	2f78      	cmp	r7, #120	; 0x78
d0001206:	4680      	mov	r8, r0
d0001208:	469a      	mov	sl, r3
d000120a:	f104 0243 	add.w	r2, r4, #67	; 0x43
d000120e:	d807      	bhi.n	d0001220 <_printf_i+0x28>
d0001210:	2f62      	cmp	r7, #98	; 0x62
d0001212:	d80a      	bhi.n	d000122a <_printf_i+0x32>
d0001214:	2f00      	cmp	r7, #0
d0001216:	f000 80d8 	beq.w	d00013ca <_printf_i+0x1d2>
d000121a:	2f58      	cmp	r7, #88	; 0x58
d000121c:	f000 80a3 	beq.w	d0001366 <_printf_i+0x16e>
d0001220:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0001224:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0001228:	e03a      	b.n	d00012a0 <_printf_i+0xa8>
d000122a:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d000122e:	2b15      	cmp	r3, #21
d0001230:	d8f6      	bhi.n	d0001220 <_printf_i+0x28>
d0001232:	a001      	add	r0, pc, #4	; (adr r0, d0001238 <_printf_i+0x40>)
d0001234:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0001238:	d0001291 	.word	0xd0001291
d000123c:	d00012a5 	.word	0xd00012a5
d0001240:	d0001221 	.word	0xd0001221
d0001244:	d0001221 	.word	0xd0001221
d0001248:	d0001221 	.word	0xd0001221
d000124c:	d0001221 	.word	0xd0001221
d0001250:	d00012a5 	.word	0xd00012a5
d0001254:	d0001221 	.word	0xd0001221
d0001258:	d0001221 	.word	0xd0001221
d000125c:	d0001221 	.word	0xd0001221
d0001260:	d0001221 	.word	0xd0001221
d0001264:	d00013b1 	.word	0xd00013b1
d0001268:	d00012d5 	.word	0xd00012d5
d000126c:	d0001393 	.word	0xd0001393
d0001270:	d0001221 	.word	0xd0001221
d0001274:	d0001221 	.word	0xd0001221
d0001278:	d00013d3 	.word	0xd00013d3
d000127c:	d0001221 	.word	0xd0001221
d0001280:	d00012d5 	.word	0xd00012d5
d0001284:	d0001221 	.word	0xd0001221
d0001288:	d0001221 	.word	0xd0001221
d000128c:	d000139b 	.word	0xd000139b
d0001290:	680b      	ldr	r3, [r1, #0]
d0001292:	1d1a      	adds	r2, r3, #4
d0001294:	681b      	ldr	r3, [r3, #0]
d0001296:	600a      	str	r2, [r1, #0]
d0001298:	f104 0642 	add.w	r6, r4, #66	; 0x42
d000129c:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d00012a0:	2301      	movs	r3, #1
d00012a2:	e0a3      	b.n	d00013ec <_printf_i+0x1f4>
d00012a4:	6825      	ldr	r5, [r4, #0]
d00012a6:	6808      	ldr	r0, [r1, #0]
d00012a8:	062e      	lsls	r6, r5, #24
d00012aa:	f100 0304 	add.w	r3, r0, #4
d00012ae:	d50a      	bpl.n	d00012c6 <_printf_i+0xce>
d00012b0:	6805      	ldr	r5, [r0, #0]
d00012b2:	600b      	str	r3, [r1, #0]
d00012b4:	2d00      	cmp	r5, #0
d00012b6:	da03      	bge.n	d00012c0 <_printf_i+0xc8>
d00012b8:	232d      	movs	r3, #45	; 0x2d
d00012ba:	426d      	negs	r5, r5
d00012bc:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d00012c0:	485e      	ldr	r0, [pc, #376]	; (d000143c <_printf_i+0x244>)
d00012c2:	230a      	movs	r3, #10
d00012c4:	e019      	b.n	d00012fa <_printf_i+0x102>
d00012c6:	f015 0f40 	tst.w	r5, #64	; 0x40
d00012ca:	6805      	ldr	r5, [r0, #0]
d00012cc:	600b      	str	r3, [r1, #0]
d00012ce:	bf18      	it	ne
d00012d0:	b22d      	sxthne	r5, r5
d00012d2:	e7ef      	b.n	d00012b4 <_printf_i+0xbc>
d00012d4:	680b      	ldr	r3, [r1, #0]
d00012d6:	6825      	ldr	r5, [r4, #0]
d00012d8:	1d18      	adds	r0, r3, #4
d00012da:	6008      	str	r0, [r1, #0]
d00012dc:	0628      	lsls	r0, r5, #24
d00012de:	d501      	bpl.n	d00012e4 <_printf_i+0xec>
d00012e0:	681d      	ldr	r5, [r3, #0]
d00012e2:	e002      	b.n	d00012ea <_printf_i+0xf2>
d00012e4:	0669      	lsls	r1, r5, #25
d00012e6:	d5fb      	bpl.n	d00012e0 <_printf_i+0xe8>
d00012e8:	881d      	ldrh	r5, [r3, #0]
d00012ea:	4854      	ldr	r0, [pc, #336]	; (d000143c <_printf_i+0x244>)
d00012ec:	2f6f      	cmp	r7, #111	; 0x6f
d00012ee:	bf0c      	ite	eq
d00012f0:	2308      	moveq	r3, #8
d00012f2:	230a      	movne	r3, #10
d00012f4:	2100      	movs	r1, #0
d00012f6:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d00012fa:	6866      	ldr	r6, [r4, #4]
d00012fc:	60a6      	str	r6, [r4, #8]
d00012fe:	2e00      	cmp	r6, #0
d0001300:	bfa2      	ittt	ge
d0001302:	6821      	ldrge	r1, [r4, #0]
d0001304:	f021 0104 	bicge.w	r1, r1, #4
d0001308:	6021      	strge	r1, [r4, #0]
d000130a:	b90d      	cbnz	r5, d0001310 <_printf_i+0x118>
d000130c:	2e00      	cmp	r6, #0
d000130e:	d04d      	beq.n	d00013ac <_printf_i+0x1b4>
d0001310:	4616      	mov	r6, r2
d0001312:	fbb5 f1f3 	udiv	r1, r5, r3
d0001316:	fb03 5711 	mls	r7, r3, r1, r5
d000131a:	5dc7      	ldrb	r7, [r0, r7]
d000131c:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0001320:	462f      	mov	r7, r5
d0001322:	42bb      	cmp	r3, r7
d0001324:	460d      	mov	r5, r1
d0001326:	d9f4      	bls.n	d0001312 <_printf_i+0x11a>
d0001328:	2b08      	cmp	r3, #8
d000132a:	d10b      	bne.n	d0001344 <_printf_i+0x14c>
d000132c:	6823      	ldr	r3, [r4, #0]
d000132e:	07df      	lsls	r7, r3, #31
d0001330:	d508      	bpl.n	d0001344 <_printf_i+0x14c>
d0001332:	6923      	ldr	r3, [r4, #16]
d0001334:	6861      	ldr	r1, [r4, #4]
d0001336:	4299      	cmp	r1, r3
d0001338:	bfde      	ittt	le
d000133a:	2330      	movle	r3, #48	; 0x30
d000133c:	f806 3c01 	strble.w	r3, [r6, #-1]
d0001340:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0001344:	1b92      	subs	r2, r2, r6
d0001346:	6122      	str	r2, [r4, #16]
d0001348:	f8cd a000 	str.w	sl, [sp]
d000134c:	464b      	mov	r3, r9
d000134e:	aa03      	add	r2, sp, #12
d0001350:	4621      	mov	r1, r4
d0001352:	4640      	mov	r0, r8
d0001354:	f7ff fee2 	bl	d000111c <_printf_common>
d0001358:	3001      	adds	r0, #1
d000135a:	d14c      	bne.n	d00013f6 <_printf_i+0x1fe>
d000135c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0001360:	b004      	add	sp, #16
d0001362:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0001366:	4835      	ldr	r0, [pc, #212]	; (d000143c <_printf_i+0x244>)
d0001368:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d000136c:	6823      	ldr	r3, [r4, #0]
d000136e:	680e      	ldr	r6, [r1, #0]
d0001370:	061f      	lsls	r7, r3, #24
d0001372:	f856 5b04 	ldr.w	r5, [r6], #4
d0001376:	600e      	str	r6, [r1, #0]
d0001378:	d514      	bpl.n	d00013a4 <_printf_i+0x1ac>
d000137a:	07d9      	lsls	r1, r3, #31
d000137c:	bf44      	itt	mi
d000137e:	f043 0320 	orrmi.w	r3, r3, #32
d0001382:	6023      	strmi	r3, [r4, #0]
d0001384:	b91d      	cbnz	r5, d000138e <_printf_i+0x196>
d0001386:	6823      	ldr	r3, [r4, #0]
d0001388:	f023 0320 	bic.w	r3, r3, #32
d000138c:	6023      	str	r3, [r4, #0]
d000138e:	2310      	movs	r3, #16
d0001390:	e7b0      	b.n	d00012f4 <_printf_i+0xfc>
d0001392:	6823      	ldr	r3, [r4, #0]
d0001394:	f043 0320 	orr.w	r3, r3, #32
d0001398:	6023      	str	r3, [r4, #0]
d000139a:	2378      	movs	r3, #120	; 0x78
d000139c:	4828      	ldr	r0, [pc, #160]	; (d0001440 <_printf_i+0x248>)
d000139e:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d00013a2:	e7e3      	b.n	d000136c <_printf_i+0x174>
d00013a4:	065e      	lsls	r6, r3, #25
d00013a6:	bf48      	it	mi
d00013a8:	b2ad      	uxthmi	r5, r5
d00013aa:	e7e6      	b.n	d000137a <_printf_i+0x182>
d00013ac:	4616      	mov	r6, r2
d00013ae:	e7bb      	b.n	d0001328 <_printf_i+0x130>
d00013b0:	680b      	ldr	r3, [r1, #0]
d00013b2:	6826      	ldr	r6, [r4, #0]
d00013b4:	6960      	ldr	r0, [r4, #20]
d00013b6:	1d1d      	adds	r5, r3, #4
d00013b8:	600d      	str	r5, [r1, #0]
d00013ba:	0635      	lsls	r5, r6, #24
d00013bc:	681b      	ldr	r3, [r3, #0]
d00013be:	d501      	bpl.n	d00013c4 <_printf_i+0x1cc>
d00013c0:	6018      	str	r0, [r3, #0]
d00013c2:	e002      	b.n	d00013ca <_printf_i+0x1d2>
d00013c4:	0671      	lsls	r1, r6, #25
d00013c6:	d5fb      	bpl.n	d00013c0 <_printf_i+0x1c8>
d00013c8:	8018      	strh	r0, [r3, #0]
d00013ca:	2300      	movs	r3, #0
d00013cc:	6123      	str	r3, [r4, #16]
d00013ce:	4616      	mov	r6, r2
d00013d0:	e7ba      	b.n	d0001348 <_printf_i+0x150>
d00013d2:	680b      	ldr	r3, [r1, #0]
d00013d4:	1d1a      	adds	r2, r3, #4
d00013d6:	600a      	str	r2, [r1, #0]
d00013d8:	681e      	ldr	r6, [r3, #0]
d00013da:	6862      	ldr	r2, [r4, #4]
d00013dc:	2100      	movs	r1, #0
d00013de:	4630      	mov	r0, r6
d00013e0:	f000 f836 	bl	d0001450 <memchr>
d00013e4:	b108      	cbz	r0, d00013ea <_printf_i+0x1f2>
d00013e6:	1b80      	subs	r0, r0, r6
d00013e8:	6060      	str	r0, [r4, #4]
d00013ea:	6863      	ldr	r3, [r4, #4]
d00013ec:	6123      	str	r3, [r4, #16]
d00013ee:	2300      	movs	r3, #0
d00013f0:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d00013f4:	e7a8      	b.n	d0001348 <_printf_i+0x150>
d00013f6:	6923      	ldr	r3, [r4, #16]
d00013f8:	4632      	mov	r2, r6
d00013fa:	4649      	mov	r1, r9
d00013fc:	4640      	mov	r0, r8
d00013fe:	47d0      	blx	sl
d0001400:	3001      	adds	r0, #1
d0001402:	d0ab      	beq.n	d000135c <_printf_i+0x164>
d0001404:	6823      	ldr	r3, [r4, #0]
d0001406:	079b      	lsls	r3, r3, #30
d0001408:	d413      	bmi.n	d0001432 <_printf_i+0x23a>
d000140a:	68e0      	ldr	r0, [r4, #12]
d000140c:	9b03      	ldr	r3, [sp, #12]
d000140e:	4298      	cmp	r0, r3
d0001410:	bfb8      	it	lt
d0001412:	4618      	movlt	r0, r3
d0001414:	e7a4      	b.n	d0001360 <_printf_i+0x168>
d0001416:	2301      	movs	r3, #1
d0001418:	4632      	mov	r2, r6
d000141a:	4649      	mov	r1, r9
d000141c:	4640      	mov	r0, r8
d000141e:	47d0      	blx	sl
d0001420:	3001      	adds	r0, #1
d0001422:	d09b      	beq.n	d000135c <_printf_i+0x164>
d0001424:	3501      	adds	r5, #1
d0001426:	68e3      	ldr	r3, [r4, #12]
d0001428:	9903      	ldr	r1, [sp, #12]
d000142a:	1a5b      	subs	r3, r3, r1
d000142c:	42ab      	cmp	r3, r5
d000142e:	dcf2      	bgt.n	d0001416 <_printf_i+0x21e>
d0001430:	e7eb      	b.n	d000140a <_printf_i+0x212>
d0001432:	2500      	movs	r5, #0
d0001434:	f104 0619 	add.w	r6, r4, #25
d0001438:	e7f5      	b.n	d0001426 <_printf_i+0x22e>
d000143a:	bf00      	nop
d000143c:	d00018ed 	.word	0xd00018ed
d0001440:	d00018fe 	.word	0xd00018fe
	...

d0001450 <memchr>:
d0001450:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0001454:	2a10      	cmp	r2, #16
d0001456:	db2b      	blt.n	d00014b0 <memchr+0x60>
d0001458:	f010 0f07 	tst.w	r0, #7
d000145c:	d008      	beq.n	d0001470 <memchr+0x20>
d000145e:	f810 3b01 	ldrb.w	r3, [r0], #1
d0001462:	3a01      	subs	r2, #1
d0001464:	428b      	cmp	r3, r1
d0001466:	d02d      	beq.n	d00014c4 <memchr+0x74>
d0001468:	f010 0f07 	tst.w	r0, #7
d000146c:	b342      	cbz	r2, d00014c0 <memchr+0x70>
d000146e:	d1f6      	bne.n	d000145e <memchr+0xe>
d0001470:	b4f0      	push	{r4, r5, r6, r7}
d0001472:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0001476:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d000147a:	f022 0407 	bic.w	r4, r2, #7
d000147e:	f07f 0700 	mvns.w	r7, #0
d0001482:	2300      	movs	r3, #0
d0001484:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0001488:	3c08      	subs	r4, #8
d000148a:	ea85 0501 	eor.w	r5, r5, r1
d000148e:	ea86 0601 	eor.w	r6, r6, r1
d0001492:	fa85 f547 	uadd8	r5, r5, r7
d0001496:	faa3 f587 	sel	r5, r3, r7
d000149a:	fa86 f647 	uadd8	r6, r6, r7
d000149e:	faa5 f687 	sel	r6, r5, r7
d00014a2:	b98e      	cbnz	r6, d00014c8 <memchr+0x78>
d00014a4:	d1ee      	bne.n	d0001484 <memchr+0x34>
d00014a6:	bcf0      	pop	{r4, r5, r6, r7}
d00014a8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00014ac:	f002 0207 	and.w	r2, r2, #7
d00014b0:	b132      	cbz	r2, d00014c0 <memchr+0x70>
d00014b2:	f810 3b01 	ldrb.w	r3, [r0], #1
d00014b6:	3a01      	subs	r2, #1
d00014b8:	ea83 0301 	eor.w	r3, r3, r1
d00014bc:	b113      	cbz	r3, d00014c4 <memchr+0x74>
d00014be:	d1f8      	bne.n	d00014b2 <memchr+0x62>
d00014c0:	2000      	movs	r0, #0
d00014c2:	4770      	bx	lr
d00014c4:	3801      	subs	r0, #1
d00014c6:	4770      	bx	lr
d00014c8:	2d00      	cmp	r5, #0
d00014ca:	bf06      	itte	eq
d00014cc:	4635      	moveq	r5, r6
d00014ce:	3803      	subeq	r0, #3
d00014d0:	3807      	subne	r0, #7
d00014d2:	f015 0f01 	tst.w	r5, #1
d00014d6:	d107      	bne.n	d00014e8 <memchr+0x98>
d00014d8:	3001      	adds	r0, #1
d00014da:	f415 7f80 	tst.w	r5, #256	; 0x100
d00014de:	bf02      	ittt	eq
d00014e0:	3001      	addeq	r0, #1
d00014e2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d00014e6:	3001      	addeq	r0, #1
d00014e8:	bcf0      	pop	{r4, r5, r6, r7}
d00014ea:	3801      	subs	r0, #1
d00014ec:	4770      	bx	lr
d00014ee:	bf00      	nop

d00014f0 <memcpy>:
d00014f0:	440a      	add	r2, r1
d00014f2:	4291      	cmp	r1, r2
d00014f4:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d00014f8:	d100      	bne.n	d00014fc <memcpy+0xc>
d00014fa:	4770      	bx	lr
d00014fc:	b510      	push	{r4, lr}
d00014fe:	f811 4b01 	ldrb.w	r4, [r1], #1
d0001502:	f803 4f01 	strb.w	r4, [r3, #1]!
d0001506:	4291      	cmp	r1, r2
d0001508:	d1f9      	bne.n	d00014fe <memcpy+0xe>
d000150a:	bd10      	pop	{r4, pc}

d000150c <memmove>:
d000150c:	4288      	cmp	r0, r1
d000150e:	b510      	push	{r4, lr}
d0001510:	eb01 0402 	add.w	r4, r1, r2
d0001514:	d902      	bls.n	d000151c <memmove+0x10>
d0001516:	4284      	cmp	r4, r0
d0001518:	4623      	mov	r3, r4
d000151a:	d807      	bhi.n	d000152c <memmove+0x20>
d000151c:	1e43      	subs	r3, r0, #1
d000151e:	42a1      	cmp	r1, r4
d0001520:	d008      	beq.n	d0001534 <memmove+0x28>
d0001522:	f811 2b01 	ldrb.w	r2, [r1], #1
d0001526:	f803 2f01 	strb.w	r2, [r3, #1]!
d000152a:	e7f8      	b.n	d000151e <memmove+0x12>
d000152c:	4402      	add	r2, r0
d000152e:	4601      	mov	r1, r0
d0001530:	428a      	cmp	r2, r1
d0001532:	d100      	bne.n	d0001536 <memmove+0x2a>
d0001534:	bd10      	pop	{r4, pc}
d0001536:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d000153a:	f802 4d01 	strb.w	r4, [r2, #-1]!
d000153e:	e7f7      	b.n	d0001530 <memmove+0x24>

d0001540 <_free_r>:
d0001540:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0001542:	2900      	cmp	r1, #0
d0001544:	d048      	beq.n	d00015d8 <_free_r+0x98>
d0001546:	f851 3c04 	ldr.w	r3, [r1, #-4]
d000154a:	9001      	str	r0, [sp, #4]
d000154c:	2b00      	cmp	r3, #0
d000154e:	f1a1 0404 	sub.w	r4, r1, #4
d0001552:	bfb8      	it	lt
d0001554:	18e4      	addlt	r4, r4, r3
d0001556:	f000 f8d3 	bl	d0001700 <__malloc_lock>
d000155a:	4a20      	ldr	r2, [pc, #128]	; (d00015dc <_free_r+0x9c>)
d000155c:	9801      	ldr	r0, [sp, #4]
d000155e:	6813      	ldr	r3, [r2, #0]
d0001560:	4615      	mov	r5, r2
d0001562:	b933      	cbnz	r3, d0001572 <_free_r+0x32>
d0001564:	6063      	str	r3, [r4, #4]
d0001566:	6014      	str	r4, [r2, #0]
d0001568:	b003      	add	sp, #12
d000156a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d000156e:	f000 b8cd 	b.w	d000170c <__malloc_unlock>
d0001572:	42a3      	cmp	r3, r4
d0001574:	d90b      	bls.n	d000158e <_free_r+0x4e>
d0001576:	6821      	ldr	r1, [r4, #0]
d0001578:	1862      	adds	r2, r4, r1
d000157a:	4293      	cmp	r3, r2
d000157c:	bf04      	itt	eq
d000157e:	681a      	ldreq	r2, [r3, #0]
d0001580:	685b      	ldreq	r3, [r3, #4]
d0001582:	6063      	str	r3, [r4, #4]
d0001584:	bf04      	itt	eq
d0001586:	1852      	addeq	r2, r2, r1
d0001588:	6022      	streq	r2, [r4, #0]
d000158a:	602c      	str	r4, [r5, #0]
d000158c:	e7ec      	b.n	d0001568 <_free_r+0x28>
d000158e:	461a      	mov	r2, r3
d0001590:	685b      	ldr	r3, [r3, #4]
d0001592:	b10b      	cbz	r3, d0001598 <_free_r+0x58>
d0001594:	42a3      	cmp	r3, r4
d0001596:	d9fa      	bls.n	d000158e <_free_r+0x4e>
d0001598:	6811      	ldr	r1, [r2, #0]
d000159a:	1855      	adds	r5, r2, r1
d000159c:	42a5      	cmp	r5, r4
d000159e:	d10b      	bne.n	d00015b8 <_free_r+0x78>
d00015a0:	6824      	ldr	r4, [r4, #0]
d00015a2:	4421      	add	r1, r4
d00015a4:	1854      	adds	r4, r2, r1
d00015a6:	42a3      	cmp	r3, r4
d00015a8:	6011      	str	r1, [r2, #0]
d00015aa:	d1dd      	bne.n	d0001568 <_free_r+0x28>
d00015ac:	681c      	ldr	r4, [r3, #0]
d00015ae:	685b      	ldr	r3, [r3, #4]
d00015b0:	6053      	str	r3, [r2, #4]
d00015b2:	4421      	add	r1, r4
d00015b4:	6011      	str	r1, [r2, #0]
d00015b6:	e7d7      	b.n	d0001568 <_free_r+0x28>
d00015b8:	d902      	bls.n	d00015c0 <_free_r+0x80>
d00015ba:	230c      	movs	r3, #12
d00015bc:	6003      	str	r3, [r0, #0]
d00015be:	e7d3      	b.n	d0001568 <_free_r+0x28>
d00015c0:	6825      	ldr	r5, [r4, #0]
d00015c2:	1961      	adds	r1, r4, r5
d00015c4:	428b      	cmp	r3, r1
d00015c6:	bf04      	itt	eq
d00015c8:	6819      	ldreq	r1, [r3, #0]
d00015ca:	685b      	ldreq	r3, [r3, #4]
d00015cc:	6063      	str	r3, [r4, #4]
d00015ce:	bf04      	itt	eq
d00015d0:	1949      	addeq	r1, r1, r5
d00015d2:	6021      	streq	r1, [r4, #0]
d00015d4:	6054      	str	r4, [r2, #4]
d00015d6:	e7c7      	b.n	d0001568 <_free_r+0x28>
d00015d8:	b003      	add	sp, #12
d00015da:	bd30      	pop	{r4, r5, pc}
d00015dc:	d00019b4 	.word	0xd00019b4

d00015e0 <_malloc_r>:
d00015e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00015e2:	1ccd      	adds	r5, r1, #3
d00015e4:	f025 0503 	bic.w	r5, r5, #3
d00015e8:	3508      	adds	r5, #8
d00015ea:	2d0c      	cmp	r5, #12
d00015ec:	bf38      	it	cc
d00015ee:	250c      	movcc	r5, #12
d00015f0:	2d00      	cmp	r5, #0
d00015f2:	4606      	mov	r6, r0
d00015f4:	db01      	blt.n	d00015fa <_malloc_r+0x1a>
d00015f6:	42a9      	cmp	r1, r5
d00015f8:	d903      	bls.n	d0001602 <_malloc_r+0x22>
d00015fa:	230c      	movs	r3, #12
d00015fc:	6033      	str	r3, [r6, #0]
d00015fe:	2000      	movs	r0, #0
d0001600:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0001602:	f000 f87d 	bl	d0001700 <__malloc_lock>
d0001606:	4921      	ldr	r1, [pc, #132]	; (d000168c <_malloc_r+0xac>)
d0001608:	680a      	ldr	r2, [r1, #0]
d000160a:	4614      	mov	r4, r2
d000160c:	b99c      	cbnz	r4, d0001636 <_malloc_r+0x56>
d000160e:	4f20      	ldr	r7, [pc, #128]	; (d0001690 <_malloc_r+0xb0>)
d0001610:	683b      	ldr	r3, [r7, #0]
d0001612:	b923      	cbnz	r3, d000161e <_malloc_r+0x3e>
d0001614:	4621      	mov	r1, r4
d0001616:	4630      	mov	r0, r6
d0001618:	f000 f862 	bl	d00016e0 <_sbrk_r>
d000161c:	6038      	str	r0, [r7, #0]
d000161e:	4629      	mov	r1, r5
d0001620:	4630      	mov	r0, r6
d0001622:	f000 f85d 	bl	d00016e0 <_sbrk_r>
d0001626:	1c43      	adds	r3, r0, #1
d0001628:	d123      	bne.n	d0001672 <_malloc_r+0x92>
d000162a:	230c      	movs	r3, #12
d000162c:	6033      	str	r3, [r6, #0]
d000162e:	4630      	mov	r0, r6
d0001630:	f000 f86c 	bl	d000170c <__malloc_unlock>
d0001634:	e7e3      	b.n	d00015fe <_malloc_r+0x1e>
d0001636:	6823      	ldr	r3, [r4, #0]
d0001638:	1b5b      	subs	r3, r3, r5
d000163a:	d417      	bmi.n	d000166c <_malloc_r+0x8c>
d000163c:	2b0b      	cmp	r3, #11
d000163e:	d903      	bls.n	d0001648 <_malloc_r+0x68>
d0001640:	6023      	str	r3, [r4, #0]
d0001642:	441c      	add	r4, r3
d0001644:	6025      	str	r5, [r4, #0]
d0001646:	e004      	b.n	d0001652 <_malloc_r+0x72>
d0001648:	6863      	ldr	r3, [r4, #4]
d000164a:	42a2      	cmp	r2, r4
d000164c:	bf0c      	ite	eq
d000164e:	600b      	streq	r3, [r1, #0]
d0001650:	6053      	strne	r3, [r2, #4]
d0001652:	4630      	mov	r0, r6
d0001654:	f000 f85a 	bl	d000170c <__malloc_unlock>
d0001658:	f104 000b 	add.w	r0, r4, #11
d000165c:	1d23      	adds	r3, r4, #4
d000165e:	f020 0007 	bic.w	r0, r0, #7
d0001662:	1ac2      	subs	r2, r0, r3
d0001664:	d0cc      	beq.n	d0001600 <_malloc_r+0x20>
d0001666:	1a1b      	subs	r3, r3, r0
d0001668:	50a3      	str	r3, [r4, r2]
d000166a:	e7c9      	b.n	d0001600 <_malloc_r+0x20>
d000166c:	4622      	mov	r2, r4
d000166e:	6864      	ldr	r4, [r4, #4]
d0001670:	e7cc      	b.n	d000160c <_malloc_r+0x2c>
d0001672:	1cc4      	adds	r4, r0, #3
d0001674:	f024 0403 	bic.w	r4, r4, #3
d0001678:	42a0      	cmp	r0, r4
d000167a:	d0e3      	beq.n	d0001644 <_malloc_r+0x64>
d000167c:	1a21      	subs	r1, r4, r0
d000167e:	4630      	mov	r0, r6
d0001680:	f000 f82e 	bl	d00016e0 <_sbrk_r>
d0001684:	3001      	adds	r0, #1
d0001686:	d1dd      	bne.n	d0001644 <_malloc_r+0x64>
d0001688:	e7cf      	b.n	d000162a <_malloc_r+0x4a>
d000168a:	bf00      	nop
d000168c:	d00019b4 	.word	0xd00019b4
d0001690:	d00019b8 	.word	0xd00019b8

d0001694 <_realloc_r>:
d0001694:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0001696:	4607      	mov	r7, r0
d0001698:	4614      	mov	r4, r2
d000169a:	460e      	mov	r6, r1
d000169c:	b921      	cbnz	r1, d00016a8 <_realloc_r+0x14>
d000169e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00016a2:	4611      	mov	r1, r2
d00016a4:	f7ff bf9c 	b.w	d00015e0 <_malloc_r>
d00016a8:	b922      	cbnz	r2, d00016b4 <_realloc_r+0x20>
d00016aa:	f7ff ff49 	bl	d0001540 <_free_r>
d00016ae:	4625      	mov	r5, r4
d00016b0:	4628      	mov	r0, r5
d00016b2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00016b4:	f000 f830 	bl	d0001718 <_malloc_usable_size_r>
d00016b8:	42a0      	cmp	r0, r4
d00016ba:	d20f      	bcs.n	d00016dc <_realloc_r+0x48>
d00016bc:	4621      	mov	r1, r4
d00016be:	4638      	mov	r0, r7
d00016c0:	f7ff ff8e 	bl	d00015e0 <_malloc_r>
d00016c4:	4605      	mov	r5, r0
d00016c6:	2800      	cmp	r0, #0
d00016c8:	d0f2      	beq.n	d00016b0 <_realloc_r+0x1c>
d00016ca:	4631      	mov	r1, r6
d00016cc:	4622      	mov	r2, r4
d00016ce:	f7ff ff0f 	bl	d00014f0 <memcpy>
d00016d2:	4631      	mov	r1, r6
d00016d4:	4638      	mov	r0, r7
d00016d6:	f7ff ff33 	bl	d0001540 <_free_r>
d00016da:	e7e9      	b.n	d00016b0 <_realloc_r+0x1c>
d00016dc:	4635      	mov	r5, r6
d00016de:	e7e7      	b.n	d00016b0 <_realloc_r+0x1c>

d00016e0 <_sbrk_r>:
d00016e0:	b538      	push	{r3, r4, r5, lr}
d00016e2:	4d06      	ldr	r5, [pc, #24]	; (d00016fc <_sbrk_r+0x1c>)
d00016e4:	2300      	movs	r3, #0
d00016e6:	4604      	mov	r4, r0
d00016e8:	4608      	mov	r0, r1
d00016ea:	602b      	str	r3, [r5, #0]
d00016ec:	f7ff f9f6 	bl	d0000adc <_sbrk>
d00016f0:	1c43      	adds	r3, r0, #1
d00016f2:	d102      	bne.n	d00016fa <_sbrk_r+0x1a>
d00016f4:	682b      	ldr	r3, [r5, #0]
d00016f6:	b103      	cbz	r3, d00016fa <_sbrk_r+0x1a>
d00016f8:	6023      	str	r3, [r4, #0]
d00016fa:	bd38      	pop	{r3, r4, r5, pc}
d00016fc:	d0001a1c 	.word	0xd0001a1c

d0001700 <__malloc_lock>:
d0001700:	4801      	ldr	r0, [pc, #4]	; (d0001708 <__malloc_lock+0x8>)
d0001702:	f000 b811 	b.w	d0001728 <__retarget_lock_acquire_recursive>
d0001706:	bf00      	nop
d0001708:	d0001a24 	.word	0xd0001a24

d000170c <__malloc_unlock>:
d000170c:	4801      	ldr	r0, [pc, #4]	; (d0001714 <__malloc_unlock+0x8>)
d000170e:	f000 b80c 	b.w	d000172a <__retarget_lock_release_recursive>
d0001712:	bf00      	nop
d0001714:	d0001a24 	.word	0xd0001a24

d0001718 <_malloc_usable_size_r>:
d0001718:	f851 3c04 	ldr.w	r3, [r1, #-4]
d000171c:	1f18      	subs	r0, r3, #4
d000171e:	2b00      	cmp	r3, #0
d0001720:	bfbc      	itt	lt
d0001722:	580b      	ldrlt	r3, [r1, r0]
d0001724:	18c0      	addlt	r0, r0, r3
d0001726:	4770      	bx	lr

d0001728 <__retarget_lock_acquire_recursive>:
d0001728:	4770      	bx	lr

d000172a <__retarget_lock_release_recursive>:
d000172a:	4770      	bx	lr

d000172c <hid_keymap_uk>:
d000172c:	0000 0000 6261 6463 6665 6867 6a69 6c6b     ....abcdefghijkl
d000173c:	6e6d 706f 7271 7473 7675 7877 7a79 3231     mnopqrstuvwxyz12
d000174c:	3433 3635 3837 3039 000a 0000 2d20 5b3d     34567890.... -=[
d000175c:	235d 3b5c 6027 2e2c 002f 0000 0000 0000     ]#\;'`,./.......
	...

d00017ac <hid_keymap_uk_shift>:
d00017ac:	0000 0000 4241 4443 4645 4847 4a49 4c4b     ....ABCDEFGHIJKL
d00017bc:	4e4d 504f 5251 5453 5655 5857 5a59 2221     MNOPQRSTUVWXYZ!"
d00017cc:	24a3 5e25 2a26 2928 0000 0000 5f00 7b2b     .$%^&*()....._+{
d00017dc:	7e7d 3a7c ac40 3e3c 003f 0000 0000 0000     }~|:@.<>?.......
	...
d000182c:	5349 2052 6574 7473 6c20 7561 636e 0d68     ISR test launch.
d000183c:	0d0a 000a 6548 6c6c 206f 6f77 6c72 2164     ....Hello world!
d000184c:	0a0d 4954 454d 3a52 2520 3230 3a75 3025     ..TIMER: %02u:%0
d000185c:	7532 253a 3230 0d75 540a 6369 736b 203a     2u:%02u..Ticks: 
d000186c:	6c25 0d75 560a 7342 253a 756c 0a0d 7542     %lu..VBs:%lu..Bu
d000187c:	7474 6e6f 4820 7469 3a73 2520 756c 0000     tton Hits: %lu..
d000188c:	424b 203a 3025 5832 2520 3230 2058 3025     KB: %02X %02X %0
d000189c:	5832 2520 3230 2058 3025 5832 2520 3230     2X %02X %02X %02
d00018ac:	2058 3025 5832 2520 3230 2058 0000 0000     X %02X %02X ....
d00018bc:	3a55 7525 4420 253a 2075 3a4c 7525 5220     U:%u D:%u L:%u R
d00018cc:	253a 2075 3146 253a 2075 3246 253a 0075     :%u F1:%u F2:%u.
d00018dc:	2d23 2b30 0020 6c68 004c 6665 4567 4746     #-0+ .hlL.efgEFG
d00018ec:	3000 3231 3433 3635 3837 4139 4342 4544     .0123456789ABCDE
d00018fc:	0046 3130 3332 3534 3736 3938 6261 6463     F.0123456789abcd
d000190c:	6665                                         ef.

Disassembly of section .init:

d0001910 <_init>:
d0001910:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0001912:	bf00      	nop

Disassembly of section .fini:

d0001914 <_fini>:
d0001914:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0001916:	bf00      	nop
