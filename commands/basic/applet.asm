
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0000010 <applet_entry>:
d0000010:	f001 bb78 	b.w	d0001704 <main>

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
d000034c:	d0004b48 	.word	0xd0004b48
d0000350:	d0004b44 	.word	0xd0004b44
d0000354:	d0002bb4 	.word	0xd0002bb4
d0000358:	d0002ba8 	.word	0xd0002ba8
d000035c:	d00026ec 	.word	0xd00026ec
d0000360:	d0002bc0 	.word	0xd0002bc0
d0000364:	d0004b50 	.word	0xd0004b50
d0000368:	d000276c 	.word	0xd000276c
d000036c:	d0002bb0 	.word	0xd0002bb0
d0000370:	d0002bb1 	.word	0xd0002bb1
d0000374:	d0002bbc 	.word	0xd0002bbc
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
d00006b8:	d0002ba8 	.word	0xd0002ba8
d00006bc:	d0002bc0 	.word	0xd0002bc0
d00006c0:	d0004b50 	.word	0xd0004b50
d00006c4:	d000276c 	.word	0xd000276c
d00006c8:	d00026ec 	.word	0xd00026ec
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
d0000a34:	d0002ba8 	.word	0xd0002ba8
d0000a38:	d0002bc0 	.word	0xd0002bc0
d0000a3c:	d0004b50 	.word	0xd0004b50
d0000a40:	d00026ec 	.word	0xd00026ec
d0000a44:	d0002bbc 	.word	0xd0002bbc

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
d0000a84:	d0004b90 	.word	0xd0004b90
d0000a88:	d0004b94 	.word	0xd0004b94
d0000a8c:	d0004b9c 	.word	0xd0004b9c

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

d0000ac4 <_sbrk>:
d0000ac4:	4904      	ldr	r1, [pc, #16]	; (d0000ad8 <_sbrk+0x14>)
d0000ac6:	4a05      	ldr	r2, [pc, #20]	; (d0000adc <_sbrk+0x18>)
d0000ac8:	680b      	ldr	r3, [r1, #0]
d0000aca:	2b00      	cmp	r3, #0
d0000acc:	bf08      	it	eq
d0000ace:	4613      	moveq	r3, r2
d0000ad0:	181a      	adds	r2, r3, r0
d0000ad2:	4618      	mov	r0, r3
d0000ad4:	600a      	str	r2, [r1, #0]
d0000ad6:	4770      	bx	lr
d0000ad8:	d0002bc4 	.word	0xd0002bc4
d0000adc:	d00066ed 	.word	0xd00066ed

d0000ae0 <compare_lines>:
d0000ae0:	6800      	ldr	r0, [r0, #0]
d0000ae2:	680b      	ldr	r3, [r1, #0]
d0000ae4:	1ac0      	subs	r0, r0, r3
d0000ae6:	4770      	bx	lr

d0000ae8 <getPrintrowvline>:
d0000ae8:	4b01      	ldr	r3, [pc, #4]	; (d0000af0 <getPrintrowvline+0x8>)
d0000aea:	6818      	ldr	r0, [r3, #0]
d0000aec:	0100      	lsls	r0, r0, #4
d0000aee:	4770      	bx	lr
d0000af0:	d0004b28 	.word	0xd0004b28

d0000af4 <print>:
d0000af4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0000af8:	f8df 810c 	ldr.w	r8, [pc, #268]	; d0000c08 <print+0x114>
d0000afc:	b083      	sub	sp, #12
d0000afe:	4605      	mov	r5, r0
d0000b00:	f8d8 4000 	ldr.w	r4, [r8]
d0000b04:	2c63      	cmp	r4, #99	; 0x63
d0000b06:	dc17      	bgt.n	d0000b38 <print+0x44>
d0000b08:	eb04 0384 	add.w	r3, r4, r4, lsl #2
d0000b0c:	f8df 90fc 	ldr.w	r9, [pc, #252]	; d0000c0c <print+0x118>
d0000b10:	4601      	mov	r1, r0
d0000b12:	224f      	movs	r2, #79	; 0x4f
d0000b14:	eb09 1303 	add.w	r3, r9, r3, lsl #4
d0000b18:	4618      	mov	r0, r3
d0000b1a:	f001 f8f4 	bl	d0001d06 <strncpy>
d0000b1e:	1c61      	adds	r1, r4, #1
d0000b20:	2200      	movs	r2, #0
d0000b22:	3c12      	subs	r4, #18
d0000b24:	f8c8 1000 	str.w	r1, [r8]
d0000b28:	f880 204f 	strb.w	r2, [r0, #79]	; 0x4f
d0000b2c:	d518      	bpl.n	d0000b60 <print+0x6c>
d0000b2e:	f8df a0e0 	ldr.w	sl, [pc, #224]	; d0000c10 <print+0x11c>
d0000b32:	f8ca 2000 	str.w	r2, [sl]
d0000b36:	e017      	b.n	d0000b68 <print+0x74>
d0000b38:	f8df 90d0 	ldr.w	r9, [pc, #208]	; d0000c0c <print+0x118>
d0000b3c:	f641 62f0 	movw	r2, #7920	; 0x1ef0
d0000b40:	3c13      	subs	r4, #19
d0000b42:	f109 0150 	add.w	r1, r9, #80	; 0x50
d0000b46:	4648      	mov	r0, r9
d0000b48:	f000 feb6 	bl	d00018b8 <memmove>
d0000b4c:	224f      	movs	r2, #79	; 0x4f
d0000b4e:	4629      	mov	r1, r5
d0000b50:	482b      	ldr	r0, [pc, #172]	; (d0000c00 <print+0x10c>)
d0000b52:	f001 f8d8 	bl	d0001d06 <strncpy>
d0000b56:	f641 733f 	movw	r3, #7999	; 0x1f3f
d0000b5a:	2200      	movs	r2, #0
d0000b5c:	f809 2003 	strb.w	r2, [r9, r3]
d0000b60:	f8df a0ac 	ldr.w	sl, [pc, #172]	; d0000c10 <print+0x11c>
d0000b64:	f8ca 4000 	str.w	r4, [sl]
d0000b68:	f8df b0a8 	ldr.w	fp, [pc, #168]	; d0000c14 <print+0x120>
d0000b6c:	2400      	movs	r4, #0
d0000b6e:	4e25      	ldr	r6, [pc, #148]	; (d0000c04 <print+0x110>)
d0000b70:	f8db 30f8 	ldr.w	r3, [fp, #248]	; 0xf8
d0000b74:	465f      	mov	r7, fp
d0000b76:	701c      	strb	r4, [r3, #0]
d0000b78:	f000 fd4e 	bl	d0001618 <FlipBuff>
d0000b7c:	4621      	mov	r1, r4
d0000b7e:	f44f 7398 	mov.w	r3, #304	; 0x130
d0000b82:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0000b86:	f8db 513c 	ldr.w	r5, [fp, #316]	; 0x13c
d0000b8a:	4620      	mov	r0, r4
d0000b8c:	47a8      	blx	r5
d0000b8e:	f000 fd43 	bl	d0001618 <FlipBuff>
d0000b92:	f8db 513c 	ldr.w	r5, [fp, #316]	; 0x13c
d0000b96:	f44f 7398 	mov.w	r3, #304	; 0x130
d0000b9a:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0000b9e:	4621      	mov	r1, r4
d0000ba0:	4620      	mov	r0, r4
d0000ba2:	47a8      	blx	r5
d0000ba4:	f8db 30f8 	ldr.w	r3, [fp, #248]	; 0xf8
d0000ba8:	222e      	movs	r2, #46	; 0x2e
d0000baa:	4625      	mov	r5, r4
d0000bac:	6034      	str	r4, [r6, #0]
d0000bae:	701a      	strb	r2, [r3, #0]
d0000bb0:	e019      	b.n	d0000be6 <print+0xf2>
d0000bb2:	6833      	ldr	r3, [r6, #0]
d0000bb4:	eb04 0484 	add.w	r4, r4, r4, lsl #2
d0000bb8:	3301      	adds	r3, #1
d0000bba:	6033      	str	r3, [r6, #0]
d0000bbc:	f000 fd2c 	bl	d0001618 <FlipBuff>
d0000bc0:	9900      	ldr	r1, [sp, #0]
d0000bc2:	eb09 1204 	add.w	r2, r9, r4, lsl #4
d0000bc6:	f8d7 3148 	ldr.w	r3, [r7, #328]	; 0x148
d0000bca:	2000      	movs	r0, #0
d0000bcc:	9101      	str	r1, [sp, #4]
d0000bce:	9200      	str	r2, [sp, #0]
d0000bd0:	4798      	blx	r3
d0000bd2:	f000 fd21 	bl	d0001618 <FlipBuff>
d0000bd6:	f8d7 3148 	ldr.w	r3, [r7, #328]	; 0x148
d0000bda:	2000      	movs	r0, #0
d0000bdc:	e9dd 2100 	ldrd	r2, r1, [sp]
d0000be0:	4798      	blx	r3
d0000be2:	2d13      	cmp	r5, #19
d0000be4:	d009      	beq.n	d0000bfa <print+0x106>
d0000be6:	f8da 4000 	ldr.w	r4, [sl]
d0000bea:	0129      	lsls	r1, r5, #4
d0000bec:	f8d8 3000 	ldr.w	r3, [r8]
d0000bf0:	442c      	add	r4, r5
d0000bf2:	9100      	str	r1, [sp, #0]
d0000bf4:	3501      	adds	r5, #1
d0000bf6:	42a3      	cmp	r3, r4
d0000bf8:	dcdb      	bgt.n	d0000bb2 <print+0xbe>
d0000bfa:	b003      	add	sp, #12
d0000bfc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0000c00:	d0004ad0 	.word	0xd0004ad0
d0000c04:	d0004b28 	.word	0xd0004b28
d0000c08:	d0002bc8 	.word	0xd0002bc8
d0000c0c:	d0002be0 	.word	0xd0002be0
d0000c10:	d0004b20 	.word	0xd0004b20
d0000c14:	2001f000 	.word	0x2001f000

d0000c18 <parse_number>:
d0000c18:	b430      	push	{r4, r5}
d0000c1a:	4c19      	ldr	r4, [pc, #100]	; (d0000c80 <parse_number+0x68>)
d0000c1c:	4919      	ldr	r1, [pc, #100]	; (d0000c84 <parse_number+0x6c>)
d0000c1e:	6823      	ldr	r3, [r4, #0]
d0000c20:	781a      	ldrb	r2, [r3, #0]
d0000c22:	5c8a      	ldrb	r2, [r1, r2]
d0000c24:	0715      	lsls	r5, r2, #28
d0000c26:	d505      	bpl.n	d0000c34 <parse_number+0x1c>
d0000c28:	3301      	adds	r3, #1
d0000c2a:	6023      	str	r3, [r4, #0]
d0000c2c:	781a      	ldrb	r2, [r3, #0]
d0000c2e:	5c8a      	ldrb	r2, [r1, r2]
d0000c30:	0710      	lsls	r0, r2, #28
d0000c32:	d4f9      	bmi.n	d0000c28 <parse_number+0x10>
d0000c34:	f012 0003 	ands.w	r0, r2, #3
d0000c38:	d111      	bne.n	d0000c5e <parse_number+0x46>
d0000c3a:	f012 0204 	ands.w	r2, r2, #4
d0000c3e:	d01d      	beq.n	d0000c7c <parse_number+0x64>
d0000c40:	3301      	adds	r3, #1
d0000c42:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d0000c46:	6023      	str	r3, [r4, #0]
d0000c48:	f813 2c01 	ldrb.w	r2, [r3, #-1]
d0000c4c:	781d      	ldrb	r5, [r3, #0]
d0000c4e:	3a30      	subs	r2, #48	; 0x30
d0000c50:	5d4d      	ldrb	r5, [r1, r5]
d0000c52:	eb02 0040 	add.w	r0, r2, r0, lsl #1
d0000c56:	076a      	lsls	r2, r5, #29
d0000c58:	d4f2      	bmi.n	d0000c40 <parse_number+0x28>
d0000c5a:	bc30      	pop	{r4, r5}
d0000c5c:	4770      	bx	lr
d0000c5e:	1c5a      	adds	r2, r3, #1
d0000c60:	6022      	str	r2, [r4, #0]
d0000c62:	781b      	ldrb	r3, [r3, #0]
d0000c64:	5cca      	ldrb	r2, [r1, r3]
d0000c66:	f002 0203 	and.w	r2, r2, #3
d0000c6a:	2a02      	cmp	r2, #2
d0000c6c:	4a06      	ldr	r2, [pc, #24]	; (d0000c88 <parse_number+0x70>)
d0000c6e:	bf08      	it	eq
d0000c70:	3b20      	subeq	r3, #32
d0000c72:	3b41      	subs	r3, #65	; 0x41
d0000c74:	bc30      	pop	{r4, r5}
d0000c76:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
d0000c7a:	4770      	bx	lr
d0000c7c:	4610      	mov	r0, r2
d0000c7e:	e7ec      	b.n	d0000c5a <parse_number+0x42>
d0000c80:	d0006670 	.word	0xd0006670
d0000c84:	d0002a05 	.word	0xd0002a05
d0000c88:	d0006674 	.word	0xd0006674

d0000c8c <parse_term>:
d0000c8c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0000c90:	4c4b      	ldr	r4, [pc, #300]	; (d0000dc0 <parse_term+0x134>)
d0000c92:	4d4c      	ldr	r5, [pc, #304]	; (d0000dc4 <parse_term+0x138>)
d0000c94:	6823      	ldr	r3, [r4, #0]
d0000c96:	781a      	ldrb	r2, [r3, #0]
d0000c98:	5ca9      	ldrb	r1, [r5, r2]
d0000c9a:	070f      	lsls	r7, r1, #28
d0000c9c:	d505      	bpl.n	d0000caa <parse_term+0x1e>
d0000c9e:	3301      	adds	r3, #1
d0000ca0:	6023      	str	r3, [r4, #0]
d0000ca2:	781a      	ldrb	r2, [r3, #0]
d0000ca4:	5ca9      	ldrb	r1, [r5, r2]
d0000ca6:	070e      	lsls	r6, r1, #28
d0000ca8:	d4f9      	bmi.n	d0000c9e <parse_term+0x12>
d0000caa:	2a28      	cmp	r2, #40	; 0x28
d0000cac:	d05e      	beq.n	d0000d6c <parse_term+0xe0>
d0000cae:	f7ff ffb3 	bl	d0000c18 <parse_number>
d0000cb2:	6823      	ldr	r3, [r4, #0]
d0000cb4:	4607      	mov	r7, r0
d0000cb6:	781a      	ldrb	r2, [r3, #0]
d0000cb8:	e002      	b.n	d0000cc0 <parse_term+0x34>
d0000cba:	3301      	adds	r3, #1
d0000cbc:	6023      	str	r3, [r4, #0]
d0000cbe:	781a      	ldrb	r2, [r3, #0]
d0000cc0:	5ca9      	ldrb	r1, [r5, r2]
d0000cc2:	070e      	lsls	r6, r1, #28
d0000cc4:	d4f9      	bmi.n	d0000cba <parse_term+0x2e>
d0000cc6:	2a2a      	cmp	r2, #42	; 0x2a
d0000cc8:	d001      	beq.n	d0000cce <parse_term+0x42>
d0000cca:	2a2f      	cmp	r2, #47	; 0x2f
d0000ccc:	d14b      	bne.n	d0000d66 <parse_term+0xda>
d0000cce:	1c5a      	adds	r2, r3, #1
d0000cd0:	6022      	str	r2, [r4, #0]
d0000cd2:	7859      	ldrb	r1, [r3, #1]
d0000cd4:	781e      	ldrb	r6, [r3, #0]
d0000cd6:	5c6b      	ldrb	r3, [r5, r1]
d0000cd8:	0718      	lsls	r0, r3, #28
d0000cda:	d505      	bpl.n	d0000ce8 <parse_term+0x5c>
d0000cdc:	3201      	adds	r2, #1
d0000cde:	6022      	str	r2, [r4, #0]
d0000ce0:	7811      	ldrb	r1, [r2, #0]
d0000ce2:	5c6b      	ldrb	r3, [r5, r1]
d0000ce4:	071b      	lsls	r3, r3, #28
d0000ce6:	d4f9      	bmi.n	d0000cdc <parse_term+0x50>
d0000ce8:	2928      	cmp	r1, #40	; 0x28
d0000cea:	d00e      	beq.n	d0000d0a <parse_term+0x7e>
d0000cec:	f7ff ff94 	bl	d0000c18 <parse_number>
d0000cf0:	6823      	ldr	r3, [r4, #0]
d0000cf2:	4680      	mov	r8, r0
d0000cf4:	781a      	ldrb	r2, [r3, #0]
d0000cf6:	2e2a      	cmp	r6, #42	; 0x2a
d0000cf8:	d004      	beq.n	d0000d04 <parse_term+0x78>
d0000cfa:	2e2f      	cmp	r6, #47	; 0x2f
d0000cfc:	bf08      	it	eq
d0000cfe:	fb97 f7f8 	sdiveq	r7, r7, r8
d0000d02:	e7e0      	b.n	d0000cc6 <parse_term+0x3a>
d0000d04:	fb08 f707 	mul.w	r7, r8, r7
d0000d08:	e7dd      	b.n	d0000cc6 <parse_term+0x3a>
d0000d0a:	3201      	adds	r2, #1
d0000d0c:	6022      	str	r2, [r4, #0]
d0000d0e:	f7ff ffbd 	bl	d0000c8c <parse_term>
d0000d12:	6823      	ldr	r3, [r4, #0]
d0000d14:	4680      	mov	r8, r0
d0000d16:	781a      	ldrb	r2, [r3, #0]
d0000d18:	5ca9      	ldrb	r1, [r5, r2]
d0000d1a:	0708      	lsls	r0, r1, #28
d0000d1c:	d50d      	bpl.n	d0000d3a <parse_term+0xae>
d0000d1e:	3301      	adds	r3, #1
d0000d20:	6023      	str	r3, [r4, #0]
d0000d22:	781a      	ldrb	r2, [r3, #0]
d0000d24:	5ca9      	ldrb	r1, [r5, r2]
d0000d26:	0709      	lsls	r1, r1, #28
d0000d28:	d4f9      	bmi.n	d0000d1e <parse_term+0x92>
d0000d2a:	e006      	b.n	d0000d3a <parse_term+0xae>
d0000d2c:	f1b9 0f2d 	cmp.w	r9, #45	; 0x2d
d0000d30:	bf08      	it	eq
d0000d32:	eba8 0800 	subeq.w	r8, r8, r0
d0000d36:	6823      	ldr	r3, [r4, #0]
d0000d38:	781a      	ldrb	r2, [r3, #0]
d0000d3a:	2a2b      	cmp	r2, #43	; 0x2b
d0000d3c:	d001      	beq.n	d0000d42 <parse_term+0xb6>
d0000d3e:	2a2d      	cmp	r2, #45	; 0x2d
d0000d40:	d10a      	bne.n	d0000d58 <parse_term+0xcc>
d0000d42:	1c5a      	adds	r2, r3, #1
d0000d44:	6022      	str	r2, [r4, #0]
d0000d46:	f893 9000 	ldrb.w	r9, [r3]
d0000d4a:	f7ff ff9f 	bl	d0000c8c <parse_term>
d0000d4e:	f1b9 0f2b 	cmp.w	r9, #43	; 0x2b
d0000d52:	d1eb      	bne.n	d0000d2c <parse_term+0xa0>
d0000d54:	4480      	add	r8, r0
d0000d56:	e7ee      	b.n	d0000d36 <parse_term+0xaa>
d0000d58:	2a29      	cmp	r2, #41	; 0x29
d0000d5a:	d1cc      	bne.n	d0000cf6 <parse_term+0x6a>
d0000d5c:	1c59      	adds	r1, r3, #1
d0000d5e:	6021      	str	r1, [r4, #0]
d0000d60:	785a      	ldrb	r2, [r3, #1]
d0000d62:	460b      	mov	r3, r1
d0000d64:	e7c7      	b.n	d0000cf6 <parse_term+0x6a>
d0000d66:	4638      	mov	r0, r7
d0000d68:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0000d6c:	3301      	adds	r3, #1
d0000d6e:	6023      	str	r3, [r4, #0]
d0000d70:	f7ff ff8c 	bl	d0000c8c <parse_term>
d0000d74:	6823      	ldr	r3, [r4, #0]
d0000d76:	4607      	mov	r7, r0
d0000d78:	781a      	ldrb	r2, [r3, #0]
d0000d7a:	5ca9      	ldrb	r1, [r5, r2]
d0000d7c:	0708      	lsls	r0, r1, #28
d0000d7e:	d50b      	bpl.n	d0000d98 <parse_term+0x10c>
d0000d80:	3301      	adds	r3, #1
d0000d82:	6023      	str	r3, [r4, #0]
d0000d84:	781a      	ldrb	r2, [r3, #0]
d0000d86:	5ca9      	ldrb	r1, [r5, r2]
d0000d88:	0709      	lsls	r1, r1, #28
d0000d8a:	d4f9      	bmi.n	d0000d80 <parse_term+0xf4>
d0000d8c:	e004      	b.n	d0000d98 <parse_term+0x10c>
d0000d8e:	2e2d      	cmp	r6, #45	; 0x2d
d0000d90:	bf08      	it	eq
d0000d92:	1a3f      	subeq	r7, r7, r0
d0000d94:	6823      	ldr	r3, [r4, #0]
d0000d96:	781a      	ldrb	r2, [r3, #0]
d0000d98:	2a2b      	cmp	r2, #43	; 0x2b
d0000d9a:	d001      	beq.n	d0000da0 <parse_term+0x114>
d0000d9c:	2a2d      	cmp	r2, #45	; 0x2d
d0000d9e:	d108      	bne.n	d0000db2 <parse_term+0x126>
d0000da0:	1c5a      	adds	r2, r3, #1
d0000da2:	6022      	str	r2, [r4, #0]
d0000da4:	781e      	ldrb	r6, [r3, #0]
d0000da6:	f7ff ff71 	bl	d0000c8c <parse_term>
d0000daa:	2e2b      	cmp	r6, #43	; 0x2b
d0000dac:	d1ef      	bne.n	d0000d8e <parse_term+0x102>
d0000dae:	4407      	add	r7, r0
d0000db0:	e7f0      	b.n	d0000d94 <parse_term+0x108>
d0000db2:	2a29      	cmp	r2, #41	; 0x29
d0000db4:	d184      	bne.n	d0000cc0 <parse_term+0x34>
d0000db6:	1c59      	adds	r1, r3, #1
d0000db8:	6021      	str	r1, [r4, #0]
d0000dba:	785a      	ldrb	r2, [r3, #1]
d0000dbc:	460b      	mov	r3, r1
d0000dbe:	e77f      	b.n	d0000cc0 <parse_term+0x34>
d0000dc0:	d0006670 	.word	0xd0006670
d0000dc4:	d0002a05 	.word	0xd0002a05

d0000dc8 <getIsProgramRunning>:
d0000dc8:	4b01      	ldr	r3, [pc, #4]	; (d0000dd0 <getIsProgramRunning+0x8>)
d0000dca:	6818      	ldr	r0, [r3, #0]
d0000dcc:	4770      	bx	lr
d0000dce:	bf00      	nop
d0000dd0:	d0002bd0 	.word	0xd0002bd0

d0000dd4 <break_program>:
d0000dd4:	b510      	push	{r4, lr}
d0000dd6:	2300      	movs	r3, #0
d0000dd8:	4c0b      	ldr	r4, [pc, #44]	; (d0000e08 <break_program+0x34>)
d0000dda:	4a0c      	ldr	r2, [pc, #48]	; (d0000e0c <break_program+0x38>)
d0000ddc:	b094      	sub	sp, #80	; 0x50
d0000dde:	480c      	ldr	r0, [pc, #48]	; (d0000e10 <break_program+0x3c>)
d0000de0:	6023      	str	r3, [r4, #0]
d0000de2:	6013      	str	r3, [r2, #0]
d0000de4:	f7ff fe86 	bl	d0000af4 <print>
d0000de8:	6823      	ldr	r3, [r4, #0]
d0000dea:	4668      	mov	r0, sp
d0000dec:	4a09      	ldr	r2, [pc, #36]	; (d0000e14 <break_program+0x40>)
d0000dee:	eb03 1303 	add.w	r3, r3, r3, lsl #4
d0000df2:	4909      	ldr	r1, [pc, #36]	; (d0000e18 <break_program+0x44>)
d0000df4:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
d0000df8:	f000 ff36 	bl	d0001c68 <siprintf>
d0000dfc:	4668      	mov	r0, sp
d0000dfe:	f7ff fe79 	bl	d0000af4 <print>
d0000e02:	b014      	add	sp, #80	; 0x50
d0000e04:	bd10      	pop	{r4, pc}
d0000e06:	bf00      	nop
d0000e08:	d0002bd4 	.word	0xd0002bd4
d0000e0c:	d0002bd0 	.word	0xd0002bd0
d0000e10:	d00028d4 	.word	0xd00028d4
d0000e14:	d0004ba0 	.word	0xd0004ba0
d0000e18:	d00027ec 	.word	0xd00027ec

d0000e1c <interpret_line>:
d0000e1c:	b5f0      	push	{r4, r5, r6, r7, lr}
d0000e1e:	b0a7      	sub	sp, #156	; 0x9c
d0000e20:	4601      	mov	r1, r0
d0000e22:	4d8a      	ldr	r5, [pc, #552]	; (d000104c <interpret_line+0x230>)
d0000e24:	a802      	add	r0, sp, #8
d0000e26:	f000 ff4c 	bl	d0001cc2 <strcpy>
d0000e2a:	f89d 3008 	ldrb.w	r3, [sp, #8]
d0000e2e:	5cea      	ldrb	r2, [r5, r3]
d0000e30:	0714      	lsls	r4, r2, #28
d0000e32:	f140 80ed 	bpl.w	d0001010 <interpret_line+0x1f4>
d0000e36:	ac02      	add	r4, sp, #8
d0000e38:	f814 1f01 	ldrb.w	r1, [r4, #1]!
d0000e3c:	5c69      	ldrb	r1, [r5, r1]
d0000e3e:	0708      	lsls	r0, r1, #28
d0000e40:	d4fa      	bmi.n	d0000e38 <interpret_line+0x1c>
d0000e42:	074f      	lsls	r7, r1, #29
d0000e44:	d442      	bmi.n	d0000ecc <interpret_line+0xb0>
d0000e46:	b183      	cbz	r3, d0000e6a <interpret_line+0x4e>
d0000e48:	a902      	add	r1, sp, #8
d0000e4a:	e004      	b.n	d0000e56 <interpret_line+0x3a>
d0000e4c:	700b      	strb	r3, [r1, #0]
d0000e4e:	f811 3f01 	ldrb.w	r3, [r1, #1]!
d0000e52:	b153      	cbz	r3, d0000e6a <interpret_line+0x4e>
d0000e54:	5cea      	ldrb	r2, [r5, r3]
d0000e56:	f002 0203 	and.w	r2, r2, #3
d0000e5a:	2a02      	cmp	r2, #2
d0000e5c:	d1f6      	bne.n	d0000e4c <interpret_line+0x30>
d0000e5e:	3b20      	subs	r3, #32
d0000e60:	700b      	strb	r3, [r1, #0]
d0000e62:	f811 3f01 	ldrb.w	r3, [r1, #1]!
d0000e66:	2b00      	cmp	r3, #0
d0000e68:	d1f4      	bne.n	d0000e54 <interpret_line+0x38>
d0000e6a:	2204      	movs	r2, #4
d0000e6c:	4978      	ldr	r1, [pc, #480]	; (d0001050 <interpret_line+0x234>)
d0000e6e:	4620      	mov	r0, r4
d0000e70:	f000 ff37 	bl	d0001ce2 <strncmp>
d0000e74:	4605      	mov	r5, r0
d0000e76:	b9b8      	cbnz	r0, d0000ea8 <interpret_line+0x8c>
d0000e78:	4e76      	ldr	r6, [pc, #472]	; (d0001054 <interpret_line+0x238>)
d0000e7a:	6833      	ldr	r3, [r6, #0]
d0000e7c:	2b00      	cmp	r3, #0
d0000e7e:	dd11      	ble.n	d0000ea4 <interpret_line+0x88>
d0000e80:	4c75      	ldr	r4, [pc, #468]	; (d0001058 <interpret_line+0x23c>)
d0000e82:	4f76      	ldr	r7, [pc, #472]	; (d000105c <interpret_line+0x240>)
d0000e84:	9400      	str	r4, [sp, #0]
d0000e86:	463a      	mov	r2, r7
d0000e88:	f854 3c04 	ldr.w	r3, [r4, #-4]
d0000e8c:	2150      	movs	r1, #80	; 0x50
d0000e8e:	a812      	add	r0, sp, #72	; 0x48
d0000e90:	3501      	adds	r5, #1
d0000e92:	f000 feb5 	bl	d0001c00 <sniprintf>
d0000e96:	a812      	add	r0, sp, #72	; 0x48
d0000e98:	f7ff fe2c 	bl	d0000af4 <print>
d0000e9c:	6833      	ldr	r3, [r6, #0]
d0000e9e:	3444      	adds	r4, #68	; 0x44
d0000ea0:	42ab      	cmp	r3, r5
d0000ea2:	dcef      	bgt.n	d0000e84 <interpret_line+0x68>
d0000ea4:	b027      	add	sp, #156	; 0x9c
d0000ea6:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0000ea8:	7821      	ldrb	r1, [r4, #0]
d0000eaa:	2952      	cmp	r1, #82	; 0x52
d0000eac:	d148      	bne.n	d0000f40 <interpret_line+0x124>
d0000eae:	7863      	ldrb	r3, [r4, #1]
d0000eb0:	2b55      	cmp	r3, #85	; 0x55
d0000eb2:	d145      	bne.n	d0000f40 <interpret_line+0x124>
d0000eb4:	78a3      	ldrb	r3, [r4, #2]
d0000eb6:	3b4e      	subs	r3, #78	; 0x4e
d0000eb8:	d142      	bne.n	d0000f40 <interpret_line+0x124>
d0000eba:	4c69      	ldr	r4, [pc, #420]	; (d0001060 <interpret_line+0x244>)
d0000ebc:	2001      	movs	r0, #1
d0000ebe:	4969      	ldr	r1, [pc, #420]	; (d0001064 <interpret_line+0x248>)
d0000ec0:	4a69      	ldr	r2, [pc, #420]	; (d0001068 <interpret_line+0x24c>)
d0000ec2:	6023      	str	r3, [r4, #0]
d0000ec4:	6008      	str	r0, [r1, #0]
d0000ec6:	6013      	str	r3, [r2, #0]
d0000ec8:	b027      	add	sp, #156	; 0x9c
d0000eca:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0000ecc:	4620      	mov	r0, r4
d0000ece:	f000 fcdb 	bl	d0001888 <atoi>
d0000ed2:	7823      	ldrb	r3, [r4, #0]
d0000ed4:	5cea      	ldrb	r2, [r5, r3]
d0000ed6:	0756      	lsls	r6, r2, #29
d0000ed8:	d509      	bpl.n	d0000eee <interpret_line+0xd2>
d0000eda:	f814 3f01 	ldrb.w	r3, [r4, #1]!
d0000ede:	5cea      	ldrb	r2, [r5, r3]
d0000ee0:	0751      	lsls	r1, r2, #29
d0000ee2:	d4fa      	bmi.n	d0000eda <interpret_line+0xbe>
d0000ee4:	0712      	lsls	r2, r2, #28
d0000ee6:	d504      	bpl.n	d0000ef2 <interpret_line+0xd6>
d0000ee8:	f814 3f01 	ldrb.w	r3, [r4, #1]!
d0000eec:	5cea      	ldrb	r2, [r5, r3]
d0000eee:	0712      	lsls	r2, r2, #28
d0000ef0:	d4fa      	bmi.n	d0000ee8 <interpret_line+0xcc>
d0000ef2:	4e58      	ldr	r6, [pc, #352]	; (d0001054 <interpret_line+0x238>)
d0000ef4:	2b00      	cmp	r3, #0
d0000ef6:	d154      	bne.n	d0000fa2 <interpret_line+0x186>
d0000ef8:	6834      	ldr	r4, [r6, #0]
d0000efa:	2c00      	cmp	r4, #0
d0000efc:	ddd2      	ble.n	d0000ea4 <interpret_line+0x88>
d0000efe:	4d5b      	ldr	r5, [pc, #364]	; (d000106c <interpret_line+0x250>)
d0000f00:	462a      	mov	r2, r5
d0000f02:	e002      	b.n	d0000f0a <interpret_line+0xee>
d0000f04:	3301      	adds	r3, #1
d0000f06:	429c      	cmp	r4, r3
d0000f08:	d0cc      	beq.n	d0000ea4 <interpret_line+0x88>
d0000f0a:	6811      	ldr	r1, [r2, #0]
d0000f0c:	3244      	adds	r2, #68	; 0x44
d0000f0e:	4288      	cmp	r0, r1
d0000f10:	d1f8      	bne.n	d0000f04 <interpret_line+0xe8>
d0000f12:	1e67      	subs	r7, r4, #1
d0000f14:	429f      	cmp	r7, r3
d0000f16:	dd0d      	ble.n	d0000f34 <interpret_line+0x118>
d0000f18:	1ae4      	subs	r4, r4, r3
d0000f1a:	eb03 1303 	add.w	r3, r3, r3, lsl #4
d0000f1e:	eb04 1404 	add.w	r4, r4, r4, lsl #4
d0000f22:	0098      	lsls	r0, r3, #2
d0000f24:	00a2      	lsls	r2, r4, #2
d0000f26:	f100 0144 	add.w	r1, r0, #68	; 0x44
d0000f2a:	4428      	add	r0, r5
d0000f2c:	3a44      	subs	r2, #68	; 0x44
d0000f2e:	4429      	add	r1, r5
d0000f30:	f000 fcc2 	bl	d00018b8 <memmove>
d0000f34:	484e      	ldr	r0, [pc, #312]	; (d0001070 <interpret_line+0x254>)
d0000f36:	6037      	str	r7, [r6, #0]
d0000f38:	f7ff fddc 	bl	d0000af4 <print>
d0000f3c:	b027      	add	sp, #156	; 0x9c
d0000f3e:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0000f40:	2943      	cmp	r1, #67	; 0x43
d0000f42:	d145      	bne.n	d0000fd0 <interpret_line+0x1b4>
d0000f44:	7863      	ldrb	r3, [r4, #1]
d0000f46:	2b4c      	cmp	r3, #76	; 0x4c
d0000f48:	d142      	bne.n	d0000fd0 <interpret_line+0x1b4>
d0000f4a:	78a3      	ldrb	r3, [r4, #2]
d0000f4c:	f1b3 0253 	subs.w	r2, r3, #83	; 0x53
d0000f50:	d13e      	bne.n	d0000fd0 <interpret_line+0x1b4>
d0000f52:	4b48      	ldr	r3, [pc, #288]	; (d0001074 <interpret_line+0x258>)
d0000f54:	f503 51fa 	add.w	r1, r3, #8000	; 0x1f40
d0000f58:	f803 2b50 	strb.w	r2, [r3], #80
d0000f5c:	4299      	cmp	r1, r3
d0000f5e:	d1fb      	bne.n	d0000f58 <interpret_line+0x13c>
d0000f60:	4c45      	ldr	r4, [pc, #276]	; (d0001078 <interpret_line+0x25c>)
d0000f62:	4b46      	ldr	r3, [pc, #280]	; (d000107c <interpret_line+0x260>)
d0000f64:	4946      	ldr	r1, [pc, #280]	; (d0001080 <interpret_line+0x264>)
d0000f66:	601a      	str	r2, [r3, #0]
d0000f68:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d0000f6c:	4845      	ldr	r0, [pc, #276]	; (d0001084 <interpret_line+0x268>)
d0000f6e:	701a      	strb	r2, [r3, #0]
d0000f70:	600a      	str	r2, [r1, #0]
d0000f72:	6002      	str	r2, [r0, #0]
d0000f74:	f000 fb50 	bl	d0001618 <FlipBuff>
d0000f78:	2100      	movs	r1, #0
d0000f7a:	f8d4 513c 	ldr.w	r5, [r4, #316]	; 0x13c
d0000f7e:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0000f82:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0000f86:	4608      	mov	r0, r1
d0000f88:	47a8      	blx	r5
d0000f8a:	f000 fb45 	bl	d0001618 <FlipBuff>
d0000f8e:	2100      	movs	r1, #0
d0000f90:	f8d4 413c 	ldr.w	r4, [r4, #316]	; 0x13c
d0000f94:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0000f98:	4608      	mov	r0, r1
d0000f9a:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0000f9e:	47a0      	blx	r4
d0000fa0:	e780      	b.n	d0000ea4 <interpret_line+0x88>
d0000fa2:	6837      	ldr	r7, [r6, #0]
d0000fa4:	4d31      	ldr	r5, [pc, #196]	; (d000106c <interpret_line+0x250>)
d0000fa6:	2f00      	cmp	r7, #0
d0000fa8:	dd3f      	ble.n	d000102a <interpret_line+0x20e>
d0000faa:	2300      	movs	r3, #0
d0000fac:	462a      	mov	r2, r5
d0000fae:	e002      	b.n	d0000fb6 <interpret_line+0x19a>
d0000fb0:	3301      	adds	r3, #1
d0000fb2:	42bb      	cmp	r3, r7
d0000fb4:	d02f      	beq.n	d0001016 <interpret_line+0x1fa>
d0000fb6:	6811      	ldr	r1, [r2, #0]
d0000fb8:	3244      	adds	r2, #68	; 0x44
d0000fba:	4288      	cmp	r0, r1
d0000fbc:	d1f8      	bne.n	d0000fb0 <interpret_line+0x194>
d0000fbe:	eb03 1303 	add.w	r3, r3, r3, lsl #4
d0000fc2:	4621      	mov	r1, r4
d0000fc4:	eb05 0083 	add.w	r0, r5, r3, lsl #2
d0000fc8:	3004      	adds	r0, #4
d0000fca:	f000 fe7a 	bl	d0001cc2 <strcpy>
d0000fce:	e769      	b.n	d0000ea4 <interpret_line+0x88>
d0000fd0:	294e      	cmp	r1, #78	; 0x4e
d0000fd2:	d110      	bne.n	d0000ff6 <interpret_line+0x1da>
d0000fd4:	7863      	ldrb	r3, [r4, #1]
d0000fd6:	2b45      	cmp	r3, #69	; 0x45
d0000fd8:	d10d      	bne.n	d0000ff6 <interpret_line+0x1da>
d0000fda:	78a1      	ldrb	r1, [r4, #2]
d0000fdc:	3957      	subs	r1, #87	; 0x57
d0000fde:	d10a      	bne.n	d0000ff6 <interpret_line+0x1da>
d0000fe0:	4b1c      	ldr	r3, [pc, #112]	; (d0001054 <interpret_line+0x238>)
d0000fe2:	f641 2290 	movw	r2, #6800	; 0x1a90
d0000fe6:	4821      	ldr	r0, [pc, #132]	; (d000106c <interpret_line+0x250>)
d0000fe8:	6019      	str	r1, [r3, #0]
d0000fea:	f7ff f813 	bl	d0000014 <memset>
d0000fee:	4826      	ldr	r0, [pc, #152]	; (d0001088 <interpret_line+0x26c>)
d0000ff0:	f7ff fd80 	bl	d0000af4 <print>
d0000ff4:	e756      	b.n	d0000ea4 <interpret_line+0x88>
d0000ff6:	4620      	mov	r0, r4
d0000ff8:	2204      	movs	r2, #4
d0000ffa:	4924      	ldr	r1, [pc, #144]	; (d000108c <interpret_line+0x270>)
d0000ffc:	f000 fe71 	bl	d0001ce2 <strncmp>
d0001000:	b978      	cbnz	r0, d0001022 <interpret_line+0x206>
d0001002:	4823      	ldr	r0, [pc, #140]	; (d0001090 <interpret_line+0x274>)
d0001004:	f7ff fd76 	bl	d0000af4 <print>
d0001008:	4822      	ldr	r0, [pc, #136]	; (d0001094 <interpret_line+0x278>)
d000100a:	f7ff fd73 	bl	d0000af4 <print>
d000100e:	e749      	b.n	d0000ea4 <interpret_line+0x88>
d0001010:	4611      	mov	r1, r2
d0001012:	ac02      	add	r4, sp, #8
d0001014:	e715      	b.n	d0000e42 <interpret_line+0x26>
d0001016:	2b63      	cmp	r3, #99	; 0x63
d0001018:	dd07      	ble.n	d000102a <interpret_line+0x20e>
d000101a:	481f      	ldr	r0, [pc, #124]	; (d0001098 <interpret_line+0x27c>)
d000101c:	f7ff fd6a 	bl	d0000af4 <print>
d0001020:	e740      	b.n	d0000ea4 <interpret_line+0x88>
d0001022:	481e      	ldr	r0, [pc, #120]	; (d000109c <interpret_line+0x280>)
d0001024:	f7ff fd66 	bl	d0000af4 <print>
d0001028:	e73c      	b.n	d0000ea4 <interpret_line+0x88>
d000102a:	eb07 1307 	add.w	r3, r7, r7, lsl #4
d000102e:	4621      	mov	r1, r4
d0001030:	009b      	lsls	r3, r3, #2
d0001032:	1d1a      	adds	r2, r3, #4
d0001034:	50e8      	str	r0, [r5, r3]
d0001036:	18a8      	adds	r0, r5, r2
d0001038:	f000 fe43 	bl	d0001cc2 <strcpy>
d000103c:	1c79      	adds	r1, r7, #1
d000103e:	4b18      	ldr	r3, [pc, #96]	; (d00010a0 <interpret_line+0x284>)
d0001040:	2244      	movs	r2, #68	; 0x44
d0001042:	480a      	ldr	r0, [pc, #40]	; (d000106c <interpret_line+0x250>)
d0001044:	6031      	str	r1, [r6, #0]
d0001046:	f000 fc8a 	bl	d000195e <qsort>
d000104a:	e72b      	b.n	d0000ea4 <interpret_line+0x88>
d000104c:	d0002a05 	.word	0xd0002a05
d0001050:	d0002820 	.word	0xd0002820
d0001054:	d0002bd8 	.word	0xd0002bd8
d0001058:	d0004ba4 	.word	0xd0004ba4
d000105c:	d0002828 	.word	0xd0002828
d0001060:	d0002bd4 	.word	0xd0002bd4
d0001064:	d0002bd0 	.word	0xd0002bd0
d0001068:	d0002bcc 	.word	0xd0002bcc
d000106c:	d0004ba0 	.word	0xd0004ba0
d0001070:	d0002800 	.word	0xd0002800
d0001074:	d0002be0 	.word	0xd0002be0
d0001078:	2001f000 	.word	0x2001f000
d000107c:	d0004b28 	.word	0xd0004b28
d0001080:	d0004b20 	.word	0xd0004b20
d0001084:	d0002bc8 	.word	0xd0002bc8
d0001088:	d0002830 	.word	0xd0002830
d000108c:	d000283c 	.word	0xd000283c
d0001090:	d0002844 	.word	0xd0002844
d0001094:	d0002880 	.word	0xd0002880
d0001098:	d0002810 	.word	0xd0002810
d000109c:	d000288c 	.word	0xd000288c
d00010a0:	d0000ae1 	.word	0xd0000ae1

d00010a4 <step_program>:
d00010a4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00010a8:	4db6      	ldr	r5, [pc, #728]	; (d0001384 <step_program+0x2e0>)
d00010aa:	b0a4      	sub	sp, #144	; 0x90
d00010ac:	4cb6      	ldr	r4, [pc, #728]	; (d0001388 <step_program+0x2e4>)
d00010ae:	682e      	ldr	r6, [r5, #0]
d00010b0:	a810      	add	r0, sp, #64	; 0x40
d00010b2:	eb06 1306 	add.w	r3, r6, r6, lsl #4
d00010b6:	eb04 0483 	add.w	r4, r4, r3, lsl #2
d00010ba:	4621      	mov	r1, r4
d00010bc:	f000 fe01 	bl	d0001cc2 <strcpy>
d00010c0:	f89d 3040 	ldrb.w	r3, [sp, #64]	; 0x40
d00010c4:	b15b      	cbz	r3, d00010de <step_program+0x3a>
d00010c6:	a910      	add	r1, sp, #64	; 0x40
d00010c8:	4fb0      	ldr	r7, [pc, #704]	; (d000138c <step_program+0x2e8>)
d00010ca:	5cfa      	ldrb	r2, [r7, r3]
d00010cc:	f002 0203 	and.w	r2, r2, #3
d00010d0:	2a02      	cmp	r2, #2
d00010d2:	d042      	beq.n	d000115a <step_program+0xb6>
d00010d4:	700b      	strb	r3, [r1, #0]
d00010d6:	f811 3f01 	ldrb.w	r3, [r1, #1]!
d00010da:	2b00      	cmp	r3, #0
d00010dc:	d1f5      	bne.n	d00010ca <step_program+0x26>
d00010de:	f8df 92e0 	ldr.w	r9, [pc, #736]	; d00013c0 <step_program+0x31c>
d00010e2:	f8d9 8000 	ldr.w	r8, [r9]
d00010e6:	f1b8 0f00 	cmp.w	r8, #0
d00010ea:	d143      	bne.n	d0001174 <step_program+0xd0>
d00010ec:	2204      	movs	r2, #4
d00010ee:	49a8      	ldr	r1, [pc, #672]	; (d0001390 <step_program+0x2ec>)
d00010f0:	a810      	add	r0, sp, #64	; 0x40
d00010f2:	f000 fdf6 	bl	d0001ce2 <strncmp>
d00010f6:	2800      	cmp	r0, #0
d00010f8:	d154      	bne.n	d00011a4 <step_program+0x100>
d00010fa:	f89d 9044 	ldrb.w	r9, [sp, #68]	; 0x44
d00010fe:	4fa3      	ldr	r7, [pc, #652]	; (d000138c <step_program+0x2e8>)
d0001100:	f817 3009 	ldrb.w	r3, [r7, r9]
d0001104:	f003 0303 	and.w	r3, r3, #3
d0001108:	2b02      	cmp	r3, #2
d000110a:	d103      	bne.n	d0001114 <step_program+0x70>
d000110c:	f1a9 0920 	sub.w	r9, r9, #32
d0001110:	fa5f f989 	uxtb.w	r9, r9
d0001114:	f1a9 0341 	sub.w	r3, r9, #65	; 0x41
d0001118:	2b19      	cmp	r3, #25
d000111a:	f200 80fa 	bhi.w	d0001312 <step_program+0x26e>
d000111e:	f8df a2a4 	ldr.w	sl, [pc, #676]	; d00013c4 <step_program+0x320>
d0001122:	a810      	add	r0, sp, #64	; 0x40
d0001124:	213d      	movs	r1, #61	; 0x3d
d0001126:	f000 fdbf 	bl	d0001ca8 <strchr>
d000112a:	4604      	mov	r4, r0
d000112c:	2800      	cmp	r0, #0
d000112e:	f000 814b 	beq.w	d00013c8 <step_program+0x324>
d0001132:	3401      	adds	r4, #1
d0001134:	4e97      	ldr	r6, [pc, #604]	; (d0001394 <step_program+0x2f0>)
d0001136:	f1a9 0941 	sub.w	r9, r9, #65	; 0x41
d000113a:	6034      	str	r4, [r6, #0]
d000113c:	f7ff fda6 	bl	d0000c8c <parse_term>
d0001140:	6833      	ldr	r3, [r6, #0]
d0001142:	4604      	mov	r4, r0
d0001144:	781a      	ldrb	r2, [r3, #0]
d0001146:	5cb9      	ldrb	r1, [r7, r2]
d0001148:	0709      	lsls	r1, r1, #28
d000114a:	d573      	bpl.n	d0001234 <step_program+0x190>
d000114c:	3301      	adds	r3, #1
d000114e:	6033      	str	r3, [r6, #0]
d0001150:	781a      	ldrb	r2, [r3, #0]
d0001152:	5cb9      	ldrb	r1, [r7, r2]
d0001154:	0708      	lsls	r0, r1, #28
d0001156:	d4f9      	bmi.n	d000114c <step_program+0xa8>
d0001158:	e06c      	b.n	d0001234 <step_program+0x190>
d000115a:	3b20      	subs	r3, #32
d000115c:	700b      	strb	r3, [r1, #0]
d000115e:	f811 3f01 	ldrb.w	r3, [r1, #1]!
d0001162:	2b00      	cmp	r3, #0
d0001164:	d1b1      	bne.n	d00010ca <step_program+0x26>
d0001166:	f8df 9258 	ldr.w	r9, [pc, #600]	; d00013c0 <step_program+0x31c>
d000116a:	f8d9 8000 	ldr.w	r8, [r9]
d000116e:	f1b8 0f00 	cmp.w	r8, #0
d0001172:	d0bb      	beq.n	d00010ec <step_program+0x48>
d0001174:	f89d 3040 	ldrb.w	r3, [sp, #64]	; 0x40
d0001178:	2b49      	cmp	r3, #73	; 0x49
d000117a:	d17d      	bne.n	d0001278 <step_program+0x1d4>
d000117c:	f89d 3041 	ldrb.w	r3, [sp, #65]	; 0x41
d0001180:	2b46      	cmp	r3, #70	; 0x46
d0001182:	d179      	bne.n	d0001278 <step_program+0x1d4>
d0001184:	f89d 3042 	ldrb.w	r3, [sp, #66]	; 0x42
d0001188:	2b20      	cmp	r3, #32
d000118a:	d175      	bne.n	d0001278 <step_program+0x1d4>
d000118c:	4a82      	ldr	r2, [pc, #520]	; (d0001398 <step_program+0x2f4>)
d000118e:	6813      	ldr	r3, [r2, #0]
d0001190:	3301      	adds	r3, #1
d0001192:	6013      	str	r3, [r2, #0]
d0001194:	f04f 0801 	mov.w	r8, #1
d0001198:	3601      	adds	r6, #1
d000119a:	4640      	mov	r0, r8
d000119c:	602e      	str	r6, [r5, #0]
d000119e:	b024      	add	sp, #144	; 0x90
d00011a0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00011a4:	2206      	movs	r2, #6
d00011a6:	497d      	ldr	r1, [pc, #500]	; (d000139c <step_program+0x2f8>)
d00011a8:	a810      	add	r0, sp, #64	; 0x40
d00011aa:	f000 fd9a 	bl	d0001ce2 <strncmp>
d00011ae:	2800      	cmp	r0, #0
d00011b0:	d071      	beq.n	d0001296 <step_program+0x1f2>
d00011b2:	2205      	movs	r2, #5
d00011b4:	497a      	ldr	r1, [pc, #488]	; (d00013a0 <step_program+0x2fc>)
d00011b6:	a810      	add	r0, sp, #64	; 0x40
d00011b8:	f000 fd93 	bl	d0001ce2 <strncmp>
d00011bc:	4604      	mov	r4, r0
d00011be:	2800      	cmp	r0, #0
d00011c0:	f000 8167 	beq.w	d0001492 <step_program+0x3ee>
d00011c4:	2206      	movs	r2, #6
d00011c6:	4977      	ldr	r1, [pc, #476]	; (d00013a4 <step_program+0x300>)
d00011c8:	a810      	add	r0, sp, #64	; 0x40
d00011ca:	f000 fd8a 	bl	d0001ce2 <strncmp>
d00011ce:	4604      	mov	r4, r0
d00011d0:	2800      	cmp	r0, #0
d00011d2:	f000 813c 	beq.w	d000144e <step_program+0x3aa>
d00011d6:	2206      	movs	r2, #6
d00011d8:	4973      	ldr	r1, [pc, #460]	; (d00013a8 <step_program+0x304>)
d00011da:	a810      	add	r0, sp, #64	; 0x40
d00011dc:	f000 fd81 	bl	d0001ce2 <strncmp>
d00011e0:	2800      	cmp	r0, #0
d00011e2:	f000 816a 	beq.w	d00014ba <step_program+0x416>
d00011e6:	f89d 3040 	ldrb.w	r3, [sp, #64]	; 0x40
d00011ea:	2b49      	cmp	r3, #73	; 0x49
d00011ec:	f000 80f5 	beq.w	d00013da <step_program+0x336>
d00011f0:	2206      	movs	r2, #6
d00011f2:	496e      	ldr	r1, [pc, #440]	; (d00013ac <step_program+0x308>)
d00011f4:	a810      	add	r0, sp, #64	; 0x40
d00011f6:	f000 fd74 	bl	d0001ce2 <strncmp>
d00011fa:	2800      	cmp	r0, #0
d00011fc:	f000 8146 	beq.w	d000148c <step_program+0x3e8>
d0001200:	f89d 3040 	ldrb.w	r3, [sp, #64]	; 0x40
d0001204:	2b45      	cmp	r3, #69	; 0x45
d0001206:	f040 8178 	bne.w	d00014fa <step_program+0x456>
d000120a:	f89d 2041 	ldrb.w	r2, [sp, #65]	; 0x41
d000120e:	2a4e      	cmp	r2, #78	; 0x4e
d0001210:	f040 8173 	bne.w	d00014fa <step_program+0x456>
d0001214:	f89d 2042 	ldrb.w	r2, [sp, #66]	; 0x42
d0001218:	3a44      	subs	r2, #68	; 0x44
d000121a:	f040 816e 	bne.w	d00014fa <step_program+0x456>
d000121e:	f8df a1a4 	ldr.w	sl, [pc, #420]	; d00013c4 <step_program+0x320>
d0001222:	4f63      	ldr	r7, [pc, #396]	; (d00013b0 <step_program+0x30c>)
d0001224:	f8ca 2000 	str.w	r2, [sl]
d0001228:	e016      	b.n	d0001258 <step_program+0x1b4>
d000122a:	2f2d      	cmp	r7, #45	; 0x2d
d000122c:	bf08      	it	eq
d000122e:	1a24      	subeq	r4, r4, r0
d0001230:	6833      	ldr	r3, [r6, #0]
d0001232:	781a      	ldrb	r2, [r3, #0]
d0001234:	2a2b      	cmp	r2, #43	; 0x2b
d0001236:	d001      	beq.n	d000123c <step_program+0x198>
d0001238:	2a2d      	cmp	r2, #45	; 0x2d
d000123a:	d108      	bne.n	d000124e <step_program+0x1aa>
d000123c:	1c5a      	adds	r2, r3, #1
d000123e:	6032      	str	r2, [r6, #0]
d0001240:	781f      	ldrb	r7, [r3, #0]
d0001242:	f7ff fd23 	bl	d0000c8c <parse_term>
d0001246:	2f2b      	cmp	r7, #43	; 0x2b
d0001248:	d1ef      	bne.n	d000122a <step_program+0x186>
d000124a:	4404      	add	r4, r0
d000124c:	e7f0      	b.n	d0001230 <step_program+0x18c>
d000124e:	4b59      	ldr	r3, [pc, #356]	; (d00013b4 <step_program+0x310>)
d0001250:	682e      	ldr	r6, [r5, #0]
d0001252:	4f57      	ldr	r7, [pc, #348]	; (d00013b0 <step_program+0x30c>)
d0001254:	f843 4029 	str.w	r4, [r3, r9, lsl #2]
d0001258:	3601      	adds	r6, #1
d000125a:	683b      	ldr	r3, [r7, #0]
d000125c:	429e      	cmp	r6, r3
d000125e:	602e      	str	r6, [r5, #0]
d0001260:	da50      	bge.n	d0001304 <step_program+0x260>
d0001262:	f8da 3000 	ldr.w	r3, [sl]
d0001266:	f1b3 0800 	subs.w	r8, r3, #0
d000126a:	bf18      	it	ne
d000126c:	f04f 0801 	movne.w	r8, #1
d0001270:	4640      	mov	r0, r8
d0001272:	b024      	add	sp, #144	; 0x90
d0001274:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0001278:	a810      	add	r0, sp, #64	; 0x40
d000127a:	2206      	movs	r2, #6
d000127c:	494b      	ldr	r1, [pc, #300]	; (d00013ac <step_program+0x308>)
d000127e:	f000 fd30 	bl	d0001ce2 <strncmp>
d0001282:	2800      	cmp	r0, #0
d0001284:	d186      	bne.n	d0001194 <step_program+0xf0>
d0001286:	4a44      	ldr	r2, [pc, #272]	; (d0001398 <step_program+0x2f4>)
d0001288:	6813      	ldr	r3, [r2, #0]
d000128a:	2b00      	cmp	r3, #0
d000128c:	f040 80a2 	bne.w	d00013d4 <step_program+0x330>
d0001290:	f8c9 3000 	str.w	r3, [r9]
d0001294:	e77e      	b.n	d0001194 <step_program+0xf0>
d0001296:	79a3      	ldrb	r3, [r4, #6]
d0001298:	3406      	adds	r4, #6
d000129a:	4f3c      	ldr	r7, [pc, #240]	; (d000138c <step_program+0x2e8>)
d000129c:	4e3d      	ldr	r6, [pc, #244]	; (d0001394 <step_program+0x2f0>)
d000129e:	5cfa      	ldrb	r2, [r7, r3]
d00012a0:	6034      	str	r4, [r6, #0]
d00012a2:	0711      	lsls	r1, r2, #28
d00012a4:	d505      	bpl.n	d00012b2 <step_program+0x20e>
d00012a6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
d00012aa:	5cfa      	ldrb	r2, [r7, r3]
d00012ac:	0712      	lsls	r2, r2, #28
d00012ae:	d4fa      	bmi.n	d00012a6 <step_program+0x202>
d00012b0:	6034      	str	r4, [r6, #0]
d00012b2:	2b22      	cmp	r3, #34	; 0x22
d00012b4:	d136      	bne.n	d0001324 <step_program+0x280>
d00012b6:	1c63      	adds	r3, r4, #1
d00012b8:	2100      	movs	r1, #0
d00012ba:	223c      	movs	r2, #60	; 0x3c
d00012bc:	a801      	add	r0, sp, #4
d00012be:	6033      	str	r3, [r6, #0]
d00012c0:	9100      	str	r1, [sp, #0]
d00012c2:	f7fe fea7 	bl	d0000014 <memset>
d00012c6:	7863      	ldrb	r3, [r4, #1]
d00012c8:	4668      	mov	r0, sp
d00012ca:	2b00      	cmp	r3, #0
d00012cc:	f000 817a 	beq.w	d00015c4 <step_program+0x520>
d00012d0:	2b22      	cmp	r3, #34	; 0x22
d00012d2:	f000 8177 	beq.w	d00015c4 <step_program+0x520>
d00012d6:	3402      	adds	r4, #2
d00012d8:	4602      	mov	r2, r0
d00012da:	f802 3b01 	strb.w	r3, [r2], #1
d00012de:	4627      	mov	r7, r4
d00012e0:	f814 3b01 	ldrb.w	r3, [r4], #1
d00012e4:	1a11      	subs	r1, r2, r0
d00012e6:	b11b      	cbz	r3, d00012f0 <step_program+0x24c>
d00012e8:	2b22      	cmp	r3, #34	; 0x22
d00012ea:	d001      	beq.n	d00012f0 <step_program+0x24c>
d00012ec:	293e      	cmp	r1, #62	; 0x3e
d00012ee:	ddf4      	ble.n	d00012da <step_program+0x236>
d00012f0:	6037      	str	r7, [r6, #0]
d00012f2:	2300      	movs	r3, #0
d00012f4:	f8df a0cc 	ldr.w	sl, [pc, #204]	; d00013c4 <step_program+0x320>
d00012f8:	4f2d      	ldr	r7, [pc, #180]	; (d00013b0 <step_program+0x30c>)
d00012fa:	7013      	strb	r3, [r2, #0]
d00012fc:	f7ff fbfa 	bl	d0000af4 <print>
d0001300:	682e      	ldr	r6, [r5, #0]
d0001302:	e7a9      	b.n	d0001258 <step_program+0x1b4>
d0001304:	2300      	movs	r3, #0
d0001306:	4640      	mov	r0, r8
d0001308:	f8ca 3000 	str.w	r3, [sl]
d000130c:	b024      	add	sp, #144	; 0x90
d000130e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0001312:	4829      	ldr	r0, [pc, #164]	; (d00013b8 <step_program+0x314>)
d0001314:	f7ff fbee 	bl	d0000af4 <print>
d0001318:	f8df a0a8 	ldr.w	sl, [pc, #168]	; d00013c4 <step_program+0x320>
d000131c:	2300      	movs	r3, #0
d000131e:	f8ca 3000 	str.w	r3, [sl]
d0001322:	e6fe      	b.n	d0001122 <step_program+0x7e>
d0001324:	f7ff fcb2 	bl	d0000c8c <parse_term>
d0001328:	6833      	ldr	r3, [r6, #0]
d000132a:	4604      	mov	r4, r0
d000132c:	781a      	ldrb	r2, [r3, #0]
d000132e:	5cb9      	ldrb	r1, [r7, r2]
d0001330:	0708      	lsls	r0, r1, #28
d0001332:	d50b      	bpl.n	d000134c <step_program+0x2a8>
d0001334:	3301      	adds	r3, #1
d0001336:	6033      	str	r3, [r6, #0]
d0001338:	781a      	ldrb	r2, [r3, #0]
d000133a:	5cb9      	ldrb	r1, [r7, r2]
d000133c:	0709      	lsls	r1, r1, #28
d000133e:	d4f9      	bmi.n	d0001334 <step_program+0x290>
d0001340:	e004      	b.n	d000134c <step_program+0x2a8>
d0001342:	2f2d      	cmp	r7, #45	; 0x2d
d0001344:	bf08      	it	eq
d0001346:	1a24      	subeq	r4, r4, r0
d0001348:	6833      	ldr	r3, [r6, #0]
d000134a:	781a      	ldrb	r2, [r3, #0]
d000134c:	2a2b      	cmp	r2, #43	; 0x2b
d000134e:	d001      	beq.n	d0001354 <step_program+0x2b0>
d0001350:	2a2d      	cmp	r2, #45	; 0x2d
d0001352:	d108      	bne.n	d0001366 <step_program+0x2c2>
d0001354:	1c5a      	adds	r2, r3, #1
d0001356:	6032      	str	r2, [r6, #0]
d0001358:	781f      	ldrb	r7, [r3, #0]
d000135a:	f7ff fc97 	bl	d0000c8c <parse_term>
d000135e:	2f2b      	cmp	r7, #43	; 0x2b
d0001360:	d1ef      	bne.n	d0001342 <step_program+0x29e>
d0001362:	4404      	add	r4, r0
d0001364:	e7f0      	b.n	d0001348 <step_program+0x2a4>
d0001366:	4623      	mov	r3, r4
d0001368:	4a14      	ldr	r2, [pc, #80]	; (d00013bc <step_program+0x318>)
d000136a:	2120      	movs	r1, #32
d000136c:	4668      	mov	r0, sp
d000136e:	f000 fc47 	bl	d0001c00 <sniprintf>
d0001372:	4668      	mov	r0, sp
d0001374:	f7ff fbbe 	bl	d0000af4 <print>
d0001378:	f8df a048 	ldr.w	sl, [pc, #72]	; d00013c4 <step_program+0x320>
d000137c:	4f0c      	ldr	r7, [pc, #48]	; (d00013b0 <step_program+0x30c>)
d000137e:	682e      	ldr	r6, [r5, #0]
d0001380:	e76a      	b.n	d0001258 <step_program+0x1b4>
d0001382:	bf00      	nop
d0001384:	d0002bd4 	.word	0xd0002bd4
d0001388:	d0004ba4 	.word	0xd0004ba4
d000138c:	d0002a05 	.word	0xd0002a05
d0001390:	d00028a4 	.word	0xd00028a4
d0001394:	d0006670 	.word	0xd0006670
d0001398:	d0002bdc 	.word	0xd0002bdc
d000139c:	d00028c4 	.word	0xd00028c4
d00013a0:	d00028d0 	.word	0xd00028d0
d00013a4:	d00028d8 	.word	0xd00028d8
d00013a8:	d00029b8 	.word	0xd00029b8
d00013ac:	d000289c 	.word	0xd000289c
d00013b0:	d0002bd8 	.word	0xd0002bd8
d00013b4:	d0006674 	.word	0xd0006674
d00013b8:	d00028ac 	.word	0xd00028ac
d00013bc:	d00028cc 	.word	0xd00028cc
d00013c0:	d0004b24 	.word	0xd0004b24
d00013c4:	d0002bd0 	.word	0xd0002bd0
d00013c8:	487f      	ldr	r0, [pc, #508]	; (d00015c8 <step_program+0x524>)
d00013ca:	f7ff fb93 	bl	d0000af4 <print>
d00013ce:	f8ca 4000 	str.w	r4, [sl]
d00013d2:	e6ae      	b.n	d0001132 <step_program+0x8e>
d00013d4:	3b01      	subs	r3, #1
d00013d6:	6013      	str	r3, [r2, #0]
d00013d8:	e6dc      	b.n	d0001194 <step_program+0xf0>
d00013da:	f89d 3041 	ldrb.w	r3, [sp, #65]	; 0x41
d00013de:	2b46      	cmp	r3, #70	; 0x46
d00013e0:	f47f af06 	bne.w	d00011f0 <step_program+0x14c>
d00013e4:	f89d 3042 	ldrb.w	r3, [sp, #66]	; 0x42
d00013e8:	2b20      	cmp	r3, #32
d00013ea:	f47f af01 	bne.w	d00011f0 <step_program+0x14c>
d00013ee:	a810      	add	r0, sp, #64	; 0x40
d00013f0:	4976      	ldr	r1, [pc, #472]	; (d00015cc <step_program+0x528>)
d00013f2:	f000 fc9b 	bl	d0001d2c <strstr>
d00013f6:	4605      	mov	r5, r0
d00013f8:	2800      	cmp	r0, #0
d00013fa:	f000 80bf 	beq.w	d000157c <step_program+0x4d8>
d00013fe:	2200      	movs	r2, #0
d0001400:	f10d 0343 	add.w	r3, sp, #67	; 0x43
d0001404:	4e72      	ldr	r6, [pc, #456]	; (d00015d0 <step_program+0x52c>)
d0001406:	7002      	strb	r2, [r0, #0]
d0001408:	6033      	str	r3, [r6, #0]
d000140a:	f7ff fc3f 	bl	d0000c8c <parse_term>
d000140e:	6833      	ldr	r3, [r6, #0]
d0001410:	4604      	mov	r4, r0
d0001412:	4f70      	ldr	r7, [pc, #448]	; (d00015d4 <step_program+0x530>)
d0001414:	781a      	ldrb	r2, [r3, #0]
d0001416:	5cb9      	ldrb	r1, [r7, r2]
d0001418:	0708      	lsls	r0, r1, #28
d000141a:	d50b      	bpl.n	d0001434 <step_program+0x390>
d000141c:	3301      	adds	r3, #1
d000141e:	6033      	str	r3, [r6, #0]
d0001420:	781a      	ldrb	r2, [r3, #0]
d0001422:	5cb9      	ldrb	r1, [r7, r2]
d0001424:	0709      	lsls	r1, r1, #28
d0001426:	d4f9      	bmi.n	d000141c <step_program+0x378>
d0001428:	e004      	b.n	d0001434 <step_program+0x390>
d000142a:	2f2d      	cmp	r7, #45	; 0x2d
d000142c:	bf08      	it	eq
d000142e:	1a24      	subeq	r4, r4, r0
d0001430:	6833      	ldr	r3, [r6, #0]
d0001432:	781a      	ldrb	r2, [r3, #0]
d0001434:	2a2b      	cmp	r2, #43	; 0x2b
d0001436:	d001      	beq.n	d000143c <step_program+0x398>
d0001438:	2a2d      	cmp	r2, #45	; 0x2d
d000143a:	d14b      	bne.n	d00014d4 <step_program+0x430>
d000143c:	1c5a      	adds	r2, r3, #1
d000143e:	6032      	str	r2, [r6, #0]
d0001440:	781f      	ldrb	r7, [r3, #0]
d0001442:	f7ff fc23 	bl	d0000c8c <parse_term>
d0001446:	2f2b      	cmp	r7, #43	; 0x2b
d0001448:	d1ef      	bne.n	d000142a <step_program+0x386>
d000144a:	4404      	add	r4, r0
d000144c:	e7f0      	b.n	d0001430 <step_program+0x38c>
d000144e:	f10d 0046 	add.w	r0, sp, #70	; 0x46
d0001452:	f000 fa19 	bl	d0001888 <atoi>
d0001456:	4960      	ldr	r1, [pc, #384]	; (d00015d8 <step_program+0x534>)
d0001458:	680b      	ldr	r3, [r1, #0]
d000145a:	2b0f      	cmp	r3, #15
d000145c:	dc43      	bgt.n	d00014e6 <step_program+0x442>
d000145e:	f103 0c01 	add.w	ip, r3, #1
d0001462:	4f5e      	ldr	r7, [pc, #376]	; (d00015dc <step_program+0x538>)
d0001464:	682a      	ldr	r2, [r5, #0]
d0001466:	f8c1 c000 	str.w	ip, [r1]
d000146a:	6839      	ldr	r1, [r7, #0]
d000146c:	3201      	adds	r2, #1
d000146e:	4e5c      	ldr	r6, [pc, #368]	; (d00015e0 <step_program+0x53c>)
d0001470:	2900      	cmp	r1, #0
d0001472:	f846 2023 	str.w	r2, [r6, r3, lsl #2]
d0001476:	dd77      	ble.n	d0001568 <step_program+0x4c4>
d0001478:	4b5a      	ldr	r3, [pc, #360]	; (d00015e4 <step_program+0x540>)
d000147a:	e002      	b.n	d0001482 <step_program+0x3de>
d000147c:	3401      	adds	r4, #1
d000147e:	428c      	cmp	r4, r1
d0001480:	d072      	beq.n	d0001568 <step_program+0x4c4>
d0001482:	681a      	ldr	r2, [r3, #0]
d0001484:	3344      	adds	r3, #68	; 0x44
d0001486:	4290      	cmp	r0, r2
d0001488:	d1f8      	bne.n	d000147c <step_program+0x3d8>
d000148a:	602c      	str	r4, [r5, #0]
d000148c:	f04f 0801 	mov.w	r8, #1
d0001490:	e6ee      	b.n	d0001270 <step_program+0x1cc>
d0001492:	f10d 0045 	add.w	r0, sp, #69	; 0x45
d0001496:	f000 f9f7 	bl	d0001888 <atoi>
d000149a:	4b50      	ldr	r3, [pc, #320]	; (d00015dc <step_program+0x538>)
d000149c:	6819      	ldr	r1, [r3, #0]
d000149e:	2900      	cmp	r1, #0
d00014a0:	f340 8087 	ble.w	d00015b2 <step_program+0x50e>
d00014a4:	4b4f      	ldr	r3, [pc, #316]	; (d00015e4 <step_program+0x540>)
d00014a6:	e003      	b.n	d00014b0 <step_program+0x40c>
d00014a8:	3401      	adds	r4, #1
d00014aa:	428c      	cmp	r4, r1
d00014ac:	f000 8081 	beq.w	d00015b2 <step_program+0x50e>
d00014b0:	681a      	ldr	r2, [r3, #0]
d00014b2:	3344      	adds	r3, #68	; 0x44
d00014b4:	4290      	cmp	r0, r2
d00014b6:	d1f7      	bne.n	d00014a8 <step_program+0x404>
d00014b8:	e7e7      	b.n	d000148a <step_program+0x3e6>
d00014ba:	4a47      	ldr	r2, [pc, #284]	; (d00015d8 <step_program+0x534>)
d00014bc:	6813      	ldr	r3, [r2, #0]
d00014be:	2b00      	cmp	r3, #0
d00014c0:	dd64      	ble.n	d000158c <step_program+0x4e8>
d00014c2:	3b01      	subs	r3, #1
d00014c4:	4946      	ldr	r1, [pc, #280]	; (d00015e0 <step_program+0x53c>)
d00014c6:	f04f 0801 	mov.w	r8, #1
d00014ca:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
d00014ce:	6013      	str	r3, [r2, #0]
d00014d0:	6029      	str	r1, [r5, #0]
d00014d2:	e6cd      	b.n	d0001270 <step_program+0x1cc>
d00014d4:	2c00      	cmp	r4, #0
d00014d6:	d166      	bne.n	d00015a6 <step_program+0x502>
d00014d8:	2301      	movs	r3, #1
d00014da:	4a43      	ldr	r2, [pc, #268]	; (d00015e8 <step_program+0x544>)
d00014dc:	4698      	mov	r8, r3
d00014de:	f8c9 3000 	str.w	r3, [r9]
d00014e2:	6014      	str	r4, [r2, #0]
d00014e4:	e6c4      	b.n	d0001270 <step_program+0x1cc>
d00014e6:	f8df a124 	ldr.w	sl, [pc, #292]	; d000160c <step_program+0x568>
d00014ea:	4840      	ldr	r0, [pc, #256]	; (d00015ec <step_program+0x548>)
d00014ec:	f7ff fb02 	bl	d0000af4 <print>
d00014f0:	4f3a      	ldr	r7, [pc, #232]	; (d00015dc <step_program+0x538>)
d00014f2:	682e      	ldr	r6, [r5, #0]
d00014f4:	f8ca 8000 	str.w	r8, [sl]
d00014f8:	e6ae      	b.n	d0001258 <step_program+0x1b4>
d00014fa:	2b43      	cmp	r3, #67	; 0x43
d00014fc:	d14f      	bne.n	d000159e <step_program+0x4fa>
d00014fe:	f89d 3041 	ldrb.w	r3, [sp, #65]	; 0x41
d0001502:	2b4c      	cmp	r3, #76	; 0x4c
d0001504:	d14b      	bne.n	d000159e <step_program+0x4fa>
d0001506:	f89d 3042 	ldrb.w	r3, [sp, #66]	; 0x42
d000150a:	f1b3 0253 	subs.w	r2, r3, #83	; 0x53
d000150e:	d146      	bne.n	d000159e <step_program+0x4fa>
d0001510:	4b37      	ldr	r3, [pc, #220]	; (d00015f0 <step_program+0x54c>)
d0001512:	f503 51fa 	add.w	r1, r3, #8000	; 0x1f40
d0001516:	f803 2b50 	strb.w	r2, [r3], #80
d000151a:	4299      	cmp	r1, r3
d000151c:	d1fb      	bne.n	d0001516 <step_program+0x472>
d000151e:	4c35      	ldr	r4, [pc, #212]	; (d00015f4 <step_program+0x550>)
d0001520:	4b35      	ldr	r3, [pc, #212]	; (d00015f8 <step_program+0x554>)
d0001522:	4936      	ldr	r1, [pc, #216]	; (d00015fc <step_program+0x558>)
d0001524:	601a      	str	r2, [r3, #0]
d0001526:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d000152a:	4835      	ldr	r0, [pc, #212]	; (d0001600 <step_program+0x55c>)
d000152c:	701a      	strb	r2, [r3, #0]
d000152e:	600a      	str	r2, [r1, #0]
d0001530:	6002      	str	r2, [r0, #0]
d0001532:	f000 f871 	bl	d0001618 <FlipBuff>
d0001536:	2100      	movs	r1, #0
d0001538:	f8d4 613c 	ldr.w	r6, [r4, #316]	; 0x13c
d000153c:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0001540:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0001544:	4608      	mov	r0, r1
d0001546:	f8df a0c4 	ldr.w	sl, [pc, #196]	; d000160c <step_program+0x568>
d000154a:	47b0      	blx	r6
d000154c:	4f23      	ldr	r7, [pc, #140]	; (d00015dc <step_program+0x538>)
d000154e:	f000 f863 	bl	d0001618 <FlipBuff>
d0001552:	2100      	movs	r1, #0
d0001554:	f8d4 413c 	ldr.w	r4, [r4, #316]	; 0x13c
d0001558:	f44f 73a0 	mov.w	r3, #320	; 0x140
d000155c:	4608      	mov	r0, r1
d000155e:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0001562:	47a0      	blx	r4
d0001564:	682e      	ldr	r6, [r5, #0]
d0001566:	e677      	b.n	d0001258 <step_program+0x1b4>
d0001568:	4826      	ldr	r0, [pc, #152]	; (d0001604 <step_program+0x560>)
d000156a:	f7ff fac3 	bl	d0000af4 <print>
d000156e:	f8df a09c 	ldr.w	sl, [pc, #156]	; d000160c <step_program+0x568>
d0001572:	2300      	movs	r3, #0
d0001574:	682e      	ldr	r6, [r5, #0]
d0001576:	f8ca 3000 	str.w	r3, [sl]
d000157a:	e66d      	b.n	d0001258 <step_program+0x1b4>
d000157c:	4822      	ldr	r0, [pc, #136]	; (d0001608 <step_program+0x564>)
d000157e:	f7ff fab9 	bl	d0000af4 <print>
d0001582:	2300      	movs	r3, #0
d0001584:	4a21      	ldr	r2, [pc, #132]	; (d000160c <step_program+0x568>)
d0001586:	4698      	mov	r8, r3
d0001588:	6013      	str	r3, [r2, #0]
d000158a:	e671      	b.n	d0001270 <step_program+0x1cc>
d000158c:	4820      	ldr	r0, [pc, #128]	; (d0001610 <step_program+0x56c>)
d000158e:	f7ff fab1 	bl	d0000af4 <print>
d0001592:	4b1e      	ldr	r3, [pc, #120]	; (d000160c <step_program+0x568>)
d0001594:	f8c3 8000 	str.w	r8, [r3]
d0001598:	f04f 0801 	mov.w	r8, #1
d000159c:	e668      	b.n	d0001270 <step_program+0x1cc>
d000159e:	f8df a06c 	ldr.w	sl, [pc, #108]	; d000160c <step_program+0x568>
d00015a2:	4f0e      	ldr	r7, [pc, #56]	; (d00015dc <step_program+0x538>)
d00015a4:	e658      	b.n	d0001258 <step_program+0x1b4>
d00015a6:	1d28      	adds	r0, r5, #4
d00015a8:	f04f 0801 	mov.w	r8, #1
d00015ac:	f7ff fc36 	bl	d0000e1c <interpret_line>
d00015b0:	e65e      	b.n	d0001270 <step_program+0x1cc>
d00015b2:	4818      	ldr	r0, [pc, #96]	; (d0001614 <step_program+0x570>)
d00015b4:	f04f 0801 	mov.w	r8, #1
d00015b8:	f7ff fa9c 	bl	d0000af4 <print>
d00015bc:	4b13      	ldr	r3, [pc, #76]	; (d000160c <step_program+0x568>)
d00015be:	2200      	movs	r2, #0
d00015c0:	601a      	str	r2, [r3, #0]
d00015c2:	e655      	b.n	d0001270 <step_program+0x1cc>
d00015c4:	4602      	mov	r2, r0
d00015c6:	e694      	b.n	d00012f2 <step_program+0x24e>
d00015c8:	d00028b8 	.word	0xd00028b8
d00015cc:	d0002884 	.word	0xd0002884
d00015d0:	d0006670 	.word	0xd0006670
d00015d4:	d0002a05 	.word	0xd0002a05
d00015d8:	d0002bcc 	.word	0xd0002bcc
d00015dc:	d0002bd8 	.word	0xd0002bd8
d00015e0:	d0006630 	.word	0xd0006630
d00015e4:	d0004ba0 	.word	0xd0004ba0
d00015e8:	d0002bdc 	.word	0xd0002bdc
d00015ec:	d00028e0 	.word	0xd00028e0
d00015f0:	d0002be0 	.word	0xd0002be0
d00015f4:	2001f000 	.word	0x2001f000
d00015f8:	d0004b28 	.word	0xd0004b28
d00015fc:	d0004b20 	.word	0xd0004b20
d0001600:	d0002bc8 	.word	0xd0002bc8
d0001604:	d0002924 	.word	0xd0002924
d0001608:	d0002908 	.word	0xd0002908
d000160c:	d0002bd0 	.word	0xd0002bd0
d0001610:	d00028f0 	.word	0xd00028f0
d0001614:	d0002918 	.word	0xd0002918

d0001618 <FlipBuff>:
d0001618:	b510      	push	{r4, lr}
d000161a:	4c04      	ldr	r4, [pc, #16]	; (d000162c <FlipBuff+0x14>)
d000161c:	6820      	ldr	r0, [r4, #0]
d000161e:	f7ff fa37 	bl	d0000a90 <ShowBuffer>
d0001622:	6823      	ldr	r3, [r4, #0]
d0001624:	f1c3 0301 	rsb	r3, r3, #1
d0001628:	6023      	str	r3, [r4, #0]
d000162a:	bd10      	pop	{r4, pc}
d000162c:	d0004b38 	.word	0xd0004b38

d0001630 <prompt>:
d0001630:	b5f0      	push	{r4, r5, r6, r7, lr}
d0001632:	b09f      	sub	sp, #124	; 0x7c
d0001634:	2400      	movs	r4, #0
d0001636:	f7ff fa57 	bl	d0000ae8 <getPrintrowvline>
d000163a:	4a20      	ldr	r2, [pc, #128]	; (d00016bc <prompt+0x8c>)
d000163c:	4d20      	ldr	r5, [pc, #128]	; (d00016c0 <prompt+0x90>)
d000163e:	6813      	ldr	r3, [r2, #0]
d0001640:	4920      	ldr	r1, [pc, #128]	; (d00016c4 <prompt+0x94>)
d0001642:	3301      	adds	r3, #1
d0001644:	6028      	str	r0, [r5, #0]
d0001646:	704c      	strb	r4, [r1, #1]
d0001648:	2b19      	cmp	r3, #25
d000164a:	dc29      	bgt.n	d00016a0 <prompt+0x70>
d000164c:	6013      	str	r3, [r2, #0]
d000164e:	4c1e      	ldr	r4, [pc, #120]	; (d00016c8 <prompt+0x98>)
d0001650:	4668      	mov	r0, sp
d0001652:	4b1c      	ldr	r3, [pc, #112]	; (d00016c4 <prompt+0x94>)
d0001654:	2600      	movs	r6, #0
d0001656:	4a1d      	ldr	r2, [pc, #116]	; (d00016cc <prompt+0x9c>)
d0001658:	491d      	ldr	r1, [pc, #116]	; (d00016d0 <prompt+0xa0>)
d000165a:	f000 fb05 	bl	d0001c68 <siprintf>
d000165e:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d0001662:	6829      	ldr	r1, [r5, #0]
d0001664:	4630      	mov	r0, r6
d0001666:	701e      	strb	r6, [r3, #0]
d0001668:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d000166c:	f8d4 713c 	ldr.w	r7, [r4, #316]	; 0x13c
d0001670:	f101 0310 	add.w	r3, r1, #16
d0001674:	47b8      	blx	r7
d0001676:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d000167a:	272e      	movs	r7, #46	; 0x2e
d000167c:	466a      	mov	r2, sp
d000167e:	6829      	ldr	r1, [r5, #0]
d0001680:	4630      	mov	r0, r6
d0001682:	701f      	strb	r7, [r3, #0]
d0001684:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d0001688:	4798      	blx	r3
d000168a:	4668      	mov	r0, sp
d000168c:	f000 fb21 	bl	d0001cd2 <strlen>
d0001690:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d0001694:	00c0      	lsls	r0, r0, #3
d0001696:	6829      	ldr	r1, [r5, #0]
d0001698:	4a0a      	ldr	r2, [pc, #40]	; (d00016c4 <prompt+0x94>)
d000169a:	4798      	blx	r3
d000169c:	b01f      	add	sp, #124	; 0x7c
d000169e:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00016a0:	480c      	ldr	r0, [pc, #48]	; (d00016d4 <prompt+0xa4>)
d00016a2:	6014      	str	r4, [r2, #0]
d00016a4:	6803      	ldr	r3, [r0, #0]
d00016a6:	f1c3 0301 	rsb	r3, r3, #1
d00016aa:	6003      	str	r3, [r0, #0]
d00016ac:	b113      	cbz	r3, d00016b4 <prompt+0x84>
d00016ae:	235f      	movs	r3, #95	; 0x5f
d00016b0:	700b      	strb	r3, [r1, #0]
d00016b2:	e7cc      	b.n	d000164e <prompt+0x1e>
d00016b4:	2320      	movs	r3, #32
d00016b6:	700b      	strb	r3, [r1, #0]
d00016b8:	e7c9      	b.n	d000164e <prompt+0x1e>
d00016ba:	bf00      	nop
d00016bc:	d0004b30 	.word	0xd0004b30
d00016c0:	d0004b2c 	.word	0xd0004b2c
d00016c4:	d00066dc 	.word	0xd00066dc
d00016c8:	2001f000 	.word	0x2001f000
d00016cc:	d0004b50 	.word	0xd0004b50
d00016d0:	d0002930 	.word	0xd0002930
d00016d4:	d0004b34 	.word	0xd0004b34

d00016d8 <clear_screen>:
d00016d8:	b510      	push	{r4, lr}
d00016da:	4c09      	ldr	r4, [pc, #36]	; (d0001700 <clear_screen+0x28>)
d00016dc:	2000      	movs	r0, #0
d00016de:	f7ff f9d7 	bl	d0000a90 <ShowBuffer>
d00016e2:	2000      	movs	r0, #0
d00016e4:	f8d4 3118 	ldr.w	r3, [r4, #280]	; 0x118
d00016e8:	4798      	blx	r3
d00016ea:	2001      	movs	r0, #1
d00016ec:	f7ff f9d0 	bl	d0000a90 <ShowBuffer>
d00016f0:	f8d4 3118 	ldr.w	r3, [r4, #280]	; 0x118
d00016f4:	2000      	movs	r0, #0
d00016f6:	4798      	blx	r3
d00016f8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00016fc:	f7ff bf98 	b.w	d0001630 <prompt>
d0001700:	2001f000 	.word	0x2001f000

d0001704 <main>:
d0001704:	4a4e      	ldr	r2, [pc, #312]	; (d0001840 <main+0x13c>)
d0001706:	20ff      	movs	r0, #255	; 0xff
d0001708:	6813      	ldr	r3, [r2, #0]
d000170a:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d000170e:	f023 0310 	bic.w	r3, r3, #16
d0001712:	4c4c      	ldr	r4, [pc, #304]	; (d0001844 <main+0x140>)
d0001714:	b096      	sub	sp, #88	; 0x58
d0001716:	2500      	movs	r5, #0
d0001718:	6013      	str	r3, [r2, #0]
d000171a:	4626      	mov	r6, r4
d000171c:	f8d4 30c8 	ldr.w	r3, [r4, #200]	; 0xc8
d0001720:	46a8      	mov	r8, r5
d0001722:	4798      	blx	r3
d0001724:	4b48      	ldr	r3, [pc, #288]	; (d0001848 <main+0x144>)
d0001726:	4849      	ldr	r0, [pc, #292]	; (d000184c <main+0x148>)
d0001728:	601d      	str	r5, [r3, #0]
d000172a:	68a3      	ldr	r3, [r4, #8]
d000172c:	4798      	blx	r3
d000172e:	68e3      	ldr	r3, [r4, #12]
d0001730:	200a      	movs	r0, #10
d0001732:	f8df a14c 	ldr.w	sl, [pc, #332]	; d0001880 <main+0x17c>
d0001736:	4798      	blx	r3
d0001738:	f8df 9148 	ldr.w	r9, [pc, #328]	; d0001884 <main+0x180>
d000173c:	f7ff f984 	bl	d0000a48 <initDisplayBuffers>
d0001740:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0001744:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0001748:	f8d4 70e8 	ldr.w	r7, [r4, #232]	; 0xe8
d000174c:	4619      	mov	r1, r3
d000174e:	9500      	str	r5, [sp, #0]
d0001750:	4610      	mov	r0, r2
d0001752:	4d3f      	ldr	r5, [pc, #252]	; (d0001850 <main+0x14c>)
d0001754:	47b8      	blx	r7
d0001756:	212e      	movs	r1, #46	; 0x2e
d0001758:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d000175c:	4a3d      	ldr	r2, [pc, #244]	; (d0001854 <main+0x150>)
d000175e:	7019      	strb	r1, [r3, #0]
d0001760:	6d23      	ldr	r3, [r4, #80]	; 0x50
d0001762:	60da      	str	r2, [r3, #12]
d0001764:	f7ff ffb8 	bl	d00016d8 <clear_screen>
d0001768:	483b      	ldr	r0, [pc, #236]	; (d0001858 <main+0x154>)
d000176a:	f7ff f9c3 	bl	d0000af4 <print>
d000176e:	483b      	ldr	r0, [pc, #236]	; (d000185c <main+0x158>)
d0001770:	f7ff f9c0 	bl	d0000af4 <print>
d0001774:	483a      	ldr	r0, [pc, #232]	; (d0001860 <main+0x15c>)
d0001776:	f7ff fb51 	bl	d0000e1c <interpret_line>
d000177a:	483a      	ldr	r0, [pc, #232]	; (d0001864 <main+0x160>)
d000177c:	f7ff fb4e 	bl	d0000e1c <interpret_line>
d0001780:	4839      	ldr	r0, [pc, #228]	; (d0001868 <main+0x164>)
d0001782:	f7ff fb4b 	bl	d0000e1c <interpret_line>
d0001786:	4839      	ldr	r0, [pc, #228]	; (d000186c <main+0x168>)
d0001788:	f7ff fb48 	bl	d0000e1c <interpret_line>
d000178c:	4838      	ldr	r0, [pc, #224]	; (d0001870 <main+0x16c>)
d000178e:	f7ff fb45 	bl	d0000e1c <interpret_line>
d0001792:	4838      	ldr	r0, [pc, #224]	; (d0001874 <main+0x170>)
d0001794:	f7ff fb42 	bl	d0000e1c <interpret_line>
d0001798:	682b      	ldr	r3, [r5, #0]
d000179a:	2b01      	cmp	r3, #1
d000179c:	d034      	beq.n	d0001808 <main+0x104>
d000179e:	2432      	movs	r4, #50	; 0x32
d00017a0:	4f35      	ldr	r7, [pc, #212]	; (d0001878 <main+0x174>)
d00017a2:	f7ff ff45 	bl	d0001630 <prompt>
d00017a6:	e004      	b.n	d00017b2 <main+0xae>
d00017a8:	f7ff fb0e 	bl	d0000dc8 <getIsProgramRunning>
d00017ac:	b988      	cbnz	r0, d00017d2 <main+0xce>
d00017ae:	3c01      	subs	r4, #1
d00017b0:	d013      	beq.n	d00017da <main+0xd6>
d00017b2:	682b      	ldr	r3, [r5, #0]
d00017b4:	2bff      	cmp	r3, #255	; 0xff
d00017b6:	d1f7      	bne.n	d00017a8 <main+0xa4>
d00017b8:	68b3      	ldr	r3, [r6, #8]
d00017ba:	4638      	mov	r0, r7
d00017bc:	4798      	blx	r3
d00017be:	f7ff fb03 	bl	d0000dc8 <getIsProgramRunning>
d00017c2:	2800      	cmp	r0, #0
d00017c4:	d138      	bne.n	d0001838 <main+0x134>
d00017c6:	f8c5 8000 	str.w	r8, [r5]
d00017ca:	f7ff fafd 	bl	d0000dc8 <getIsProgramRunning>
d00017ce:	2800      	cmp	r0, #0
d00017d0:	d0ed      	beq.n	d00017ae <main+0xaa>
d00017d2:	f7ff fc67 	bl	d00010a4 <step_program>
d00017d6:	3c01      	subs	r4, #1
d00017d8:	d1eb      	bne.n	d00017b2 <main+0xae>
d00017da:	f8d9 0000 	ldr.w	r0, [r9]
d00017de:	f7ff f957 	bl	d0000a90 <ShowBuffer>
d00017e2:	f8d9 3000 	ldr.w	r3, [r9]
d00017e6:	f1c3 0301 	rsb	r3, r3, #1
d00017ea:	f8c9 3000 	str.w	r3, [r9]
d00017ee:	f8d6 30cc 	ldr.w	r3, [r6, #204]	; 0xcc
d00017f2:	4798      	blx	r3
d00017f4:	f8d6 30c4 	ldr.w	r3, [r6, #196]	; 0xc4
d00017f8:	2001      	movs	r0, #1
d00017fa:	4798      	blx	r3
d00017fc:	f8d6 315c 	ldr.w	r3, [r6, #348]	; 0x15c
d0001800:	4798      	blx	r3
d0001802:	682b      	ldr	r3, [r5, #0]
d0001804:	2b01      	cmp	r3, #1
d0001806:	d1ca      	bne.n	d000179e <main+0x9a>
d0001808:	f89a 3000 	ldrb.w	r3, [sl]
d000180c:	f8c5 8000 	str.w	r8, [r5]
d0001810:	2b00      	cmp	r3, #0
d0001812:	d0c4      	beq.n	d000179e <main+0x9a>
d0001814:	4919      	ldr	r1, [pc, #100]	; (d000187c <main+0x178>)
d0001816:	a802      	add	r0, sp, #8
d0001818:	f000 fa53 	bl	d0001cc2 <strcpy>
d000181c:	a802      	add	r0, sp, #8
d000181e:	f7ff f969 	bl	d0000af4 <print>
d0001822:	a802      	add	r0, sp, #8
d0001824:	f7ff fafa 	bl	d0000e1c <interpret_line>
d0001828:	2250      	movs	r2, #80	; 0x50
d000182a:	2100      	movs	r1, #0
d000182c:	4813      	ldr	r0, [pc, #76]	; (d000187c <main+0x178>)
d000182e:	f7fe fbf1 	bl	d0000014 <memset>
d0001832:	f88a 8000 	strb.w	r8, [sl]
d0001836:	e7b2      	b.n	d000179e <main+0x9a>
d0001838:	f7ff facc 	bl	d0000dd4 <break_program>
d000183c:	e7c3      	b.n	d00017c6 <main+0xc2>
d000183e:	bf00      	nop
d0001840:	e000ed14 	.word	0xe000ed14
d0001844:	2001f000 	.word	0x2001f000
d0001848:	d0002ba4 	.word	0xd0002ba4
d000184c:	d0002938 	.word	0xd0002938
d0001850:	d0002bbc 	.word	0xd0002bbc
d0001854:	d0000025 	.word	0xd0000025
d0001858:	d0002944 	.word	0xd0002944
d000185c:	d0002958 	.word	0xd0002958
d0001860:	d000296c 	.word	0xd000296c
d0001864:	d0002984 	.word	0xd0002984
d0001868:	d00029a4 	.word	0xd00029a4
d000186c:	d00029b4 	.word	0xd00029b4
d0001870:	d00029c0 	.word	0xd00029c0
d0001874:	d00029e8 	.word	0xd00029e8
d0001878:	d00029fc 	.word	0xd00029fc
d000187c:	d0004b50 	.word	0xd0004b50
d0001880:	d0002bc0 	.word	0xd0002bc0
d0001884:	d0004b38 	.word	0xd0004b38

d0001888 <atoi>:
d0001888:	220a      	movs	r2, #10
d000188a:	2100      	movs	r1, #0
d000188c:	f000 baea 	b.w	d0001e64 <strtol>

d0001890 <__errno>:
d0001890:	4b01      	ldr	r3, [pc, #4]	; (d0001898 <__errno+0x8>)
d0001892:	6818      	ldr	r0, [r3, #0]
d0001894:	4770      	bx	lr
d0001896:	bf00      	nop
d0001898:	d0002b40 	.word	0xd0002b40

d000189c <memcpy>:
d000189c:	440a      	add	r2, r1
d000189e:	4291      	cmp	r1, r2
d00018a0:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d00018a4:	d100      	bne.n	d00018a8 <memcpy+0xc>
d00018a6:	4770      	bx	lr
d00018a8:	b510      	push	{r4, lr}
d00018aa:	f811 4b01 	ldrb.w	r4, [r1], #1
d00018ae:	f803 4f01 	strb.w	r4, [r3, #1]!
d00018b2:	4291      	cmp	r1, r2
d00018b4:	d1f9      	bne.n	d00018aa <memcpy+0xe>
d00018b6:	bd10      	pop	{r4, pc}

d00018b8 <memmove>:
d00018b8:	4288      	cmp	r0, r1
d00018ba:	b510      	push	{r4, lr}
d00018bc:	eb01 0402 	add.w	r4, r1, r2
d00018c0:	d902      	bls.n	d00018c8 <memmove+0x10>
d00018c2:	4284      	cmp	r4, r0
d00018c4:	4623      	mov	r3, r4
d00018c6:	d807      	bhi.n	d00018d8 <memmove+0x20>
d00018c8:	1e43      	subs	r3, r0, #1
d00018ca:	42a1      	cmp	r1, r4
d00018cc:	d008      	beq.n	d00018e0 <memmove+0x28>
d00018ce:	f811 2b01 	ldrb.w	r2, [r1], #1
d00018d2:	f803 2f01 	strb.w	r2, [r3, #1]!
d00018d6:	e7f8      	b.n	d00018ca <memmove+0x12>
d00018d8:	4402      	add	r2, r0
d00018da:	4601      	mov	r1, r0
d00018dc:	428a      	cmp	r2, r1
d00018de:	d100      	bne.n	d00018e2 <memmove+0x2a>
d00018e0:	bd10      	pop	{r4, pc}
d00018e2:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d00018e6:	f802 4d01 	strb.w	r4, [r2, #-1]!
d00018ea:	e7f7      	b.n	d00018dc <memmove+0x24>

d00018ec <swapfunc>:
d00018ec:	2b02      	cmp	r3, #2
d00018ee:	b510      	push	{r4, lr}
d00018f0:	d00a      	beq.n	d0001908 <swapfunc+0x1c>
d00018f2:	0892      	lsrs	r2, r2, #2
d00018f4:	3a01      	subs	r2, #1
d00018f6:	6803      	ldr	r3, [r0, #0]
d00018f8:	680c      	ldr	r4, [r1, #0]
d00018fa:	f840 4b04 	str.w	r4, [r0], #4
d00018fe:	2a00      	cmp	r2, #0
d0001900:	f841 3b04 	str.w	r3, [r1], #4
d0001904:	dcf6      	bgt.n	d00018f4 <swapfunc+0x8>
d0001906:	bd10      	pop	{r4, pc}
d0001908:	4402      	add	r2, r0
d000190a:	780c      	ldrb	r4, [r1, #0]
d000190c:	7803      	ldrb	r3, [r0, #0]
d000190e:	f800 4b01 	strb.w	r4, [r0], #1
d0001912:	f801 3b01 	strb.w	r3, [r1], #1
d0001916:	1a13      	subs	r3, r2, r0
d0001918:	2b00      	cmp	r3, #0
d000191a:	dcf6      	bgt.n	d000190a <swapfunc+0x1e>
d000191c:	e7f3      	b.n	d0001906 <swapfunc+0x1a>

d000191e <med3.isra.0>:
d000191e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0001920:	460f      	mov	r7, r1
d0001922:	4614      	mov	r4, r2
d0001924:	4606      	mov	r6, r0
d0001926:	461d      	mov	r5, r3
d0001928:	4798      	blx	r3
d000192a:	2800      	cmp	r0, #0
d000192c:	4621      	mov	r1, r4
d000192e:	4638      	mov	r0, r7
d0001930:	da0c      	bge.n	d000194c <med3.isra.0+0x2e>
d0001932:	47a8      	blx	r5
d0001934:	2800      	cmp	r0, #0
d0001936:	da02      	bge.n	d000193e <med3.isra.0+0x20>
d0001938:	463c      	mov	r4, r7
d000193a:	4620      	mov	r0, r4
d000193c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d000193e:	4621      	mov	r1, r4
d0001940:	4630      	mov	r0, r6
d0001942:	47a8      	blx	r5
d0001944:	2800      	cmp	r0, #0
d0001946:	dbf8      	blt.n	d000193a <med3.isra.0+0x1c>
d0001948:	4634      	mov	r4, r6
d000194a:	e7f6      	b.n	d000193a <med3.isra.0+0x1c>
d000194c:	47a8      	blx	r5
d000194e:	2800      	cmp	r0, #0
d0001950:	dcf2      	bgt.n	d0001938 <med3.isra.0+0x1a>
d0001952:	4621      	mov	r1, r4
d0001954:	4630      	mov	r0, r6
d0001956:	47a8      	blx	r5
d0001958:	2800      	cmp	r0, #0
d000195a:	daee      	bge.n	d000193a <med3.isra.0+0x1c>
d000195c:	e7f4      	b.n	d0001948 <med3.isra.0+0x2a>

d000195e <qsort>:
d000195e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0001962:	469a      	mov	sl, r3
d0001964:	ea40 0302 	orr.w	r3, r0, r2
d0001968:	079b      	lsls	r3, r3, #30
d000196a:	b097      	sub	sp, #92	; 0x5c
d000196c:	4606      	mov	r6, r0
d000196e:	4614      	mov	r4, r2
d0001970:	d11a      	bne.n	d00019a8 <qsort+0x4a>
d0001972:	f1b2 0804 	subs.w	r8, r2, #4
d0001976:	bf18      	it	ne
d0001978:	f04f 0801 	movne.w	r8, #1
d000197c:	2300      	movs	r3, #0
d000197e:	9302      	str	r3, [sp, #8]
d0001980:	1933      	adds	r3, r6, r4
d0001982:	fb04 f701 	mul.w	r7, r4, r1
d0001986:	9301      	str	r3, [sp, #4]
d0001988:	2906      	cmp	r1, #6
d000198a:	eb06 0307 	add.w	r3, r6, r7
d000198e:	9303      	str	r3, [sp, #12]
d0001990:	d82a      	bhi.n	d00019e8 <qsort+0x8a>
d0001992:	9b01      	ldr	r3, [sp, #4]
d0001994:	9a03      	ldr	r2, [sp, #12]
d0001996:	4293      	cmp	r3, r2
d0001998:	d310      	bcc.n	d00019bc <qsort+0x5e>
d000199a:	9b02      	ldr	r3, [sp, #8]
d000199c:	2b00      	cmp	r3, #0
d000199e:	f040 811f 	bne.w	d0001be0 <qsort+0x282>
d00019a2:	b017      	add	sp, #92	; 0x5c
d00019a4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00019a8:	f04f 0802 	mov.w	r8, #2
d00019ac:	e7e6      	b.n	d000197c <qsort+0x1e>
d00019ae:	4643      	mov	r3, r8
d00019b0:	4622      	mov	r2, r4
d00019b2:	4639      	mov	r1, r7
d00019b4:	4628      	mov	r0, r5
d00019b6:	f7ff ff99 	bl	d00018ec <swapfunc>
d00019ba:	e00e      	b.n	d00019da <qsort+0x7c>
d00019bc:	9d01      	ldr	r5, [sp, #4]
d00019be:	e00d      	b.n	d00019dc <qsort+0x7e>
d00019c0:	1b2f      	subs	r7, r5, r4
d00019c2:	4629      	mov	r1, r5
d00019c4:	4638      	mov	r0, r7
d00019c6:	47d0      	blx	sl
d00019c8:	2800      	cmp	r0, #0
d00019ca:	dd09      	ble.n	d00019e0 <qsort+0x82>
d00019cc:	f1b8 0f00 	cmp.w	r8, #0
d00019d0:	d1ed      	bne.n	d00019ae <qsort+0x50>
d00019d2:	682b      	ldr	r3, [r5, #0]
d00019d4:	683a      	ldr	r2, [r7, #0]
d00019d6:	602a      	str	r2, [r5, #0]
d00019d8:	603b      	str	r3, [r7, #0]
d00019da:	463d      	mov	r5, r7
d00019dc:	42ae      	cmp	r6, r5
d00019de:	d3ef      	bcc.n	d00019c0 <qsort+0x62>
d00019e0:	9b01      	ldr	r3, [sp, #4]
d00019e2:	4423      	add	r3, r4
d00019e4:	9301      	str	r3, [sp, #4]
d00019e6:	e7d4      	b.n	d0001992 <qsort+0x34>
d00019e8:	ea4f 0951 	mov.w	r9, r1, lsr #1
d00019ec:	1b3f      	subs	r7, r7, r4
d00019ee:	2907      	cmp	r1, #7
d00019f0:	fb04 6909 	mla	r9, r4, r9, r6
d00019f4:	4437      	add	r7, r6
d00019f6:	d022      	beq.n	d0001a3e <qsort+0xe0>
d00019f8:	2928      	cmp	r1, #40	; 0x28
d00019fa:	d945      	bls.n	d0001a88 <qsort+0x12a>
d00019fc:	08c9      	lsrs	r1, r1, #3
d00019fe:	fb04 f501 	mul.w	r5, r4, r1
d0001a02:	4653      	mov	r3, sl
d0001a04:	eb06 0245 	add.w	r2, r6, r5, lsl #1
d0001a08:	1971      	adds	r1, r6, r5
d0001a0a:	4630      	mov	r0, r6
d0001a0c:	f7ff ff87 	bl	d000191e <med3.isra.0>
d0001a10:	4649      	mov	r1, r9
d0001a12:	eb09 0205 	add.w	r2, r9, r5
d0001a16:	4653      	mov	r3, sl
d0001a18:	4683      	mov	fp, r0
d0001a1a:	1b48      	subs	r0, r1, r5
d0001a1c:	f7ff ff7f 	bl	d000191e <med3.isra.0>
d0001a20:	463a      	mov	r2, r7
d0001a22:	4681      	mov	r9, r0
d0001a24:	4653      	mov	r3, sl
d0001a26:	1b79      	subs	r1, r7, r5
d0001a28:	eba7 0045 	sub.w	r0, r7, r5, lsl #1
d0001a2c:	f7ff ff77 	bl	d000191e <med3.isra.0>
d0001a30:	4602      	mov	r2, r0
d0001a32:	4649      	mov	r1, r9
d0001a34:	4653      	mov	r3, sl
d0001a36:	4658      	mov	r0, fp
d0001a38:	f7ff ff71 	bl	d000191e <med3.isra.0>
d0001a3c:	4681      	mov	r9, r0
d0001a3e:	f1b8 0f00 	cmp.w	r8, #0
d0001a42:	d124      	bne.n	d0001a8e <qsort+0x130>
d0001a44:	6833      	ldr	r3, [r6, #0]
d0001a46:	f8d9 2000 	ldr.w	r2, [r9]
d0001a4a:	6032      	str	r2, [r6, #0]
d0001a4c:	f8c9 3000 	str.w	r3, [r9]
d0001a50:	eb06 0b04 	add.w	fp, r6, r4
d0001a54:	46b9      	mov	r9, r7
d0001a56:	465d      	mov	r5, fp
d0001a58:	2300      	movs	r3, #0
d0001a5a:	45bb      	cmp	fp, r7
d0001a5c:	d835      	bhi.n	d0001aca <qsort+0x16c>
d0001a5e:	4631      	mov	r1, r6
d0001a60:	4658      	mov	r0, fp
d0001a62:	9304      	str	r3, [sp, #16]
d0001a64:	47d0      	blx	sl
d0001a66:	2800      	cmp	r0, #0
d0001a68:	9b04      	ldr	r3, [sp, #16]
d0001a6a:	dc3e      	bgt.n	d0001aea <qsort+0x18c>
d0001a6c:	d10a      	bne.n	d0001a84 <qsort+0x126>
d0001a6e:	f1b8 0f00 	cmp.w	r8, #0
d0001a72:	d113      	bne.n	d0001a9c <qsort+0x13e>
d0001a74:	682b      	ldr	r3, [r5, #0]
d0001a76:	f8db 2000 	ldr.w	r2, [fp]
d0001a7a:	602a      	str	r2, [r5, #0]
d0001a7c:	f8cb 3000 	str.w	r3, [fp]
d0001a80:	4425      	add	r5, r4
d0001a82:	2301      	movs	r3, #1
d0001a84:	44a3      	add	fp, r4
d0001a86:	e7e8      	b.n	d0001a5a <qsort+0xfc>
d0001a88:	463a      	mov	r2, r7
d0001a8a:	46b3      	mov	fp, r6
d0001a8c:	e7d1      	b.n	d0001a32 <qsort+0xd4>
d0001a8e:	4643      	mov	r3, r8
d0001a90:	4622      	mov	r2, r4
d0001a92:	4649      	mov	r1, r9
d0001a94:	4630      	mov	r0, r6
d0001a96:	f7ff ff29 	bl	d00018ec <swapfunc>
d0001a9a:	e7d9      	b.n	d0001a50 <qsort+0xf2>
d0001a9c:	4643      	mov	r3, r8
d0001a9e:	4622      	mov	r2, r4
d0001aa0:	4659      	mov	r1, fp
d0001aa2:	4628      	mov	r0, r5
d0001aa4:	f7ff ff22 	bl	d00018ec <swapfunc>
d0001aa8:	e7ea      	b.n	d0001a80 <qsort+0x122>
d0001aaa:	d10b      	bne.n	d0001ac4 <qsort+0x166>
d0001aac:	f1b8 0f00 	cmp.w	r8, #0
d0001ab0:	d114      	bne.n	d0001adc <qsort+0x17e>
d0001ab2:	683b      	ldr	r3, [r7, #0]
d0001ab4:	f8d9 2000 	ldr.w	r2, [r9]
d0001ab8:	603a      	str	r2, [r7, #0]
d0001aba:	f8c9 3000 	str.w	r3, [r9]
d0001abe:	eba9 0904 	sub.w	r9, r9, r4
d0001ac2:	2301      	movs	r3, #1
d0001ac4:	9f04      	ldr	r7, [sp, #16]
d0001ac6:	45bb      	cmp	fp, r7
d0001ac8:	d90f      	bls.n	d0001aea <qsort+0x18c>
d0001aca:	2b00      	cmp	r3, #0
d0001acc:	d143      	bne.n	d0001b56 <qsort+0x1f8>
d0001ace:	9b01      	ldr	r3, [sp, #4]
d0001ad0:	9a03      	ldr	r2, [sp, #12]
d0001ad2:	4293      	cmp	r3, r2
d0001ad4:	f4bf af61 	bcs.w	d000199a <qsort+0x3c>
d0001ad8:	9d01      	ldr	r5, [sp, #4]
d0001ada:	e036      	b.n	d0001b4a <qsort+0x1ec>
d0001adc:	4643      	mov	r3, r8
d0001ade:	4622      	mov	r2, r4
d0001ae0:	4649      	mov	r1, r9
d0001ae2:	4638      	mov	r0, r7
d0001ae4:	f7ff ff02 	bl	d00018ec <swapfunc>
d0001ae8:	e7e9      	b.n	d0001abe <qsort+0x160>
d0001aea:	4631      	mov	r1, r6
d0001aec:	4638      	mov	r0, r7
d0001aee:	9305      	str	r3, [sp, #20]
d0001af0:	47d0      	blx	sl
d0001af2:	1b3b      	subs	r3, r7, r4
d0001af4:	2800      	cmp	r0, #0
d0001af6:	9304      	str	r3, [sp, #16]
d0001af8:	9b05      	ldr	r3, [sp, #20]
d0001afa:	dad6      	bge.n	d0001aaa <qsort+0x14c>
d0001afc:	f1b8 0f00 	cmp.w	r8, #0
d0001b00:	d006      	beq.n	d0001b10 <qsort+0x1b2>
d0001b02:	4643      	mov	r3, r8
d0001b04:	4622      	mov	r2, r4
d0001b06:	4639      	mov	r1, r7
d0001b08:	4658      	mov	r0, fp
d0001b0a:	f7ff feef 	bl	d00018ec <swapfunc>
d0001b0e:	e005      	b.n	d0001b1c <qsort+0x1be>
d0001b10:	f8db 3000 	ldr.w	r3, [fp]
d0001b14:	683a      	ldr	r2, [r7, #0]
d0001b16:	f8cb 2000 	str.w	r2, [fp]
d0001b1a:	603b      	str	r3, [r7, #0]
d0001b1c:	9f04      	ldr	r7, [sp, #16]
d0001b1e:	e7b0      	b.n	d0001a82 <qsort+0x124>
d0001b20:	4643      	mov	r3, r8
d0001b22:	4622      	mov	r2, r4
d0001b24:	4639      	mov	r1, r7
d0001b26:	4628      	mov	r0, r5
d0001b28:	f7ff fee0 	bl	d00018ec <swapfunc>
d0001b2c:	e00c      	b.n	d0001b48 <qsort+0x1ea>
d0001b2e:	1b2f      	subs	r7, r5, r4
d0001b30:	4629      	mov	r1, r5
d0001b32:	4638      	mov	r0, r7
d0001b34:	47d0      	blx	sl
d0001b36:	2800      	cmp	r0, #0
d0001b38:	dd09      	ble.n	d0001b4e <qsort+0x1f0>
d0001b3a:	f1b8 0f00 	cmp.w	r8, #0
d0001b3e:	d1ef      	bne.n	d0001b20 <qsort+0x1c2>
d0001b40:	682b      	ldr	r3, [r5, #0]
d0001b42:	683a      	ldr	r2, [r7, #0]
d0001b44:	602a      	str	r2, [r5, #0]
d0001b46:	603b      	str	r3, [r7, #0]
d0001b48:	463d      	mov	r5, r7
d0001b4a:	42ae      	cmp	r6, r5
d0001b4c:	d3ef      	bcc.n	d0001b2e <qsort+0x1d0>
d0001b4e:	9b01      	ldr	r3, [sp, #4]
d0001b50:	4423      	add	r3, r4
d0001b52:	9301      	str	r3, [sp, #4]
d0001b54:	e7bb      	b.n	d0001ace <qsort+0x170>
d0001b56:	ebab 0305 	sub.w	r3, fp, r5
d0001b5a:	1baa      	subs	r2, r5, r6
d0001b5c:	429a      	cmp	r2, r3
d0001b5e:	bfa8      	it	ge
d0001b60:	461a      	movge	r2, r3
d0001b62:	9301      	str	r3, [sp, #4]
d0001b64:	b12a      	cbz	r2, d0001b72 <qsort+0x214>
d0001b66:	4643      	mov	r3, r8
d0001b68:	ebab 0102 	sub.w	r1, fp, r2
d0001b6c:	4630      	mov	r0, r6
d0001b6e:	f7ff febd 	bl	d00018ec <swapfunc>
d0001b72:	9b03      	ldr	r3, [sp, #12]
d0001b74:	eba3 0209 	sub.w	r2, r3, r9
d0001b78:	eba9 0707 	sub.w	r7, r9, r7
d0001b7c:	1b12      	subs	r2, r2, r4
d0001b7e:	42ba      	cmp	r2, r7
d0001b80:	bf28      	it	cs
d0001b82:	463a      	movcs	r2, r7
d0001b84:	b12a      	cbz	r2, d0001b92 <qsort+0x234>
d0001b86:	9903      	ldr	r1, [sp, #12]
d0001b88:	4643      	mov	r3, r8
d0001b8a:	1a89      	subs	r1, r1, r2
d0001b8c:	4658      	mov	r0, fp
d0001b8e:	f7ff fead 	bl	d00018ec <swapfunc>
d0001b92:	f8dd 9004 	ldr.w	r9, [sp, #4]
d0001b96:	9b03      	ldr	r3, [sp, #12]
d0001b98:	454f      	cmp	r7, r9
d0001b9a:	eba3 0007 	sub.w	r0, r3, r7
d0001b9e:	d904      	bls.n	d0001baa <qsort+0x24c>
d0001ba0:	4633      	mov	r3, r6
d0001ba2:	46b9      	mov	r9, r7
d0001ba4:	9f01      	ldr	r7, [sp, #4]
d0001ba6:	4606      	mov	r6, r0
d0001ba8:	4618      	mov	r0, r3
d0001baa:	42a7      	cmp	r7, r4
d0001bac:	d921      	bls.n	d0001bf2 <qsort+0x294>
d0001bae:	fbb7 f1f4 	udiv	r1, r7, r4
d0001bb2:	9b02      	ldr	r3, [sp, #8]
d0001bb4:	2b07      	cmp	r3, #7
d0001bb6:	d80d      	bhi.n	d0001bd4 <qsort+0x276>
d0001bb8:	fbb9 f7f4 	udiv	r7, r9, r4
d0001bbc:	aa16      	add	r2, sp, #88	; 0x58
d0001bbe:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
d0001bc2:	f843 6c40 	str.w	r6, [r3, #-64]
d0001bc6:	f843 7c3c 	str.w	r7, [r3, #-60]
d0001bca:	9b02      	ldr	r3, [sp, #8]
d0001bcc:	3301      	adds	r3, #1
d0001bce:	9302      	str	r3, [sp, #8]
d0001bd0:	4606      	mov	r6, r0
d0001bd2:	e6d5      	b.n	d0001980 <qsort+0x22>
d0001bd4:	4653      	mov	r3, sl
d0001bd6:	4622      	mov	r2, r4
d0001bd8:	f7ff fec1 	bl	d000195e <qsort>
d0001bdc:	45a1      	cmp	r9, r4
d0001bde:	d80b      	bhi.n	d0001bf8 <qsort+0x29a>
d0001be0:	9b02      	ldr	r3, [sp, #8]
d0001be2:	aa16      	add	r2, sp, #88	; 0x58
d0001be4:	3b01      	subs	r3, #1
d0001be6:	9302      	str	r3, [sp, #8]
d0001be8:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
d0001bec:	e953 0110 	ldrd	r0, r1, [r3, #-64]	; 0x40
d0001bf0:	e7ee      	b.n	d0001bd0 <qsort+0x272>
d0001bf2:	45a1      	cmp	r9, r4
d0001bf4:	f67f aed1 	bls.w	d000199a <qsort+0x3c>
d0001bf8:	fbb9 f1f4 	udiv	r1, r9, r4
d0001bfc:	4630      	mov	r0, r6
d0001bfe:	e7e7      	b.n	d0001bd0 <qsort+0x272>

d0001c00 <sniprintf>:
d0001c00:	b40c      	push	{r2, r3}
d0001c02:	b530      	push	{r4, r5, lr}
d0001c04:	4b17      	ldr	r3, [pc, #92]	; (d0001c64 <sniprintf+0x64>)
d0001c06:	1e0c      	subs	r4, r1, #0
d0001c08:	681d      	ldr	r5, [r3, #0]
d0001c0a:	b09d      	sub	sp, #116	; 0x74
d0001c0c:	da08      	bge.n	d0001c20 <sniprintf+0x20>
d0001c0e:	238b      	movs	r3, #139	; 0x8b
d0001c10:	602b      	str	r3, [r5, #0]
d0001c12:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0001c16:	b01d      	add	sp, #116	; 0x74
d0001c18:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0001c1c:	b002      	add	sp, #8
d0001c1e:	4770      	bx	lr
d0001c20:	f44f 7302 	mov.w	r3, #520	; 0x208
d0001c24:	f8ad 3014 	strh.w	r3, [sp, #20]
d0001c28:	bf14      	ite	ne
d0001c2a:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d0001c2e:	4623      	moveq	r3, r4
d0001c30:	9304      	str	r3, [sp, #16]
d0001c32:	9307      	str	r3, [sp, #28]
d0001c34:	f64f 73ff 	movw	r3, #65535	; 0xffff
d0001c38:	9002      	str	r0, [sp, #8]
d0001c3a:	9006      	str	r0, [sp, #24]
d0001c3c:	f8ad 3016 	strh.w	r3, [sp, #22]
d0001c40:	9a20      	ldr	r2, [sp, #128]	; 0x80
d0001c42:	ab21      	add	r3, sp, #132	; 0x84
d0001c44:	a902      	add	r1, sp, #8
d0001c46:	4628      	mov	r0, r5
d0001c48:	9301      	str	r3, [sp, #4]
d0001c4a:	f000 f971 	bl	d0001f30 <_svfiprintf_r>
d0001c4e:	1c43      	adds	r3, r0, #1
d0001c50:	bfbc      	itt	lt
d0001c52:	238b      	movlt	r3, #139	; 0x8b
d0001c54:	602b      	strlt	r3, [r5, #0]
d0001c56:	2c00      	cmp	r4, #0
d0001c58:	d0dd      	beq.n	d0001c16 <sniprintf+0x16>
d0001c5a:	9b02      	ldr	r3, [sp, #8]
d0001c5c:	2200      	movs	r2, #0
d0001c5e:	701a      	strb	r2, [r3, #0]
d0001c60:	e7d9      	b.n	d0001c16 <sniprintf+0x16>
d0001c62:	bf00      	nop
d0001c64:	d0002b40 	.word	0xd0002b40

d0001c68 <siprintf>:
d0001c68:	b40e      	push	{r1, r2, r3}
d0001c6a:	b500      	push	{lr}
d0001c6c:	b09c      	sub	sp, #112	; 0x70
d0001c6e:	ab1d      	add	r3, sp, #116	; 0x74
d0001c70:	9002      	str	r0, [sp, #8]
d0001c72:	9006      	str	r0, [sp, #24]
d0001c74:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d0001c78:	4809      	ldr	r0, [pc, #36]	; (d0001ca0 <siprintf+0x38>)
d0001c7a:	9107      	str	r1, [sp, #28]
d0001c7c:	9104      	str	r1, [sp, #16]
d0001c7e:	4909      	ldr	r1, [pc, #36]	; (d0001ca4 <siprintf+0x3c>)
d0001c80:	f853 2b04 	ldr.w	r2, [r3], #4
d0001c84:	9105      	str	r1, [sp, #20]
d0001c86:	6800      	ldr	r0, [r0, #0]
d0001c88:	9301      	str	r3, [sp, #4]
d0001c8a:	a902      	add	r1, sp, #8
d0001c8c:	f000 f950 	bl	d0001f30 <_svfiprintf_r>
d0001c90:	9b02      	ldr	r3, [sp, #8]
d0001c92:	2200      	movs	r2, #0
d0001c94:	701a      	strb	r2, [r3, #0]
d0001c96:	b01c      	add	sp, #112	; 0x70
d0001c98:	f85d eb04 	ldr.w	lr, [sp], #4
d0001c9c:	b003      	add	sp, #12
d0001c9e:	4770      	bx	lr
d0001ca0:	d0002b40 	.word	0xd0002b40
d0001ca4:	ffff0208 	.word	0xffff0208

d0001ca8 <strchr>:
d0001ca8:	b2c9      	uxtb	r1, r1
d0001caa:	4603      	mov	r3, r0
d0001cac:	f810 2b01 	ldrb.w	r2, [r0], #1
d0001cb0:	b11a      	cbz	r2, d0001cba <strchr+0x12>
d0001cb2:	428a      	cmp	r2, r1
d0001cb4:	d1f9      	bne.n	d0001caa <strchr+0x2>
d0001cb6:	4618      	mov	r0, r3
d0001cb8:	4770      	bx	lr
d0001cba:	2900      	cmp	r1, #0
d0001cbc:	bf18      	it	ne
d0001cbe:	2300      	movne	r3, #0
d0001cc0:	e7f9      	b.n	d0001cb6 <strchr+0xe>

d0001cc2 <strcpy>:
d0001cc2:	4603      	mov	r3, r0
d0001cc4:	f811 2b01 	ldrb.w	r2, [r1], #1
d0001cc8:	f803 2b01 	strb.w	r2, [r3], #1
d0001ccc:	2a00      	cmp	r2, #0
d0001cce:	d1f9      	bne.n	d0001cc4 <strcpy+0x2>
d0001cd0:	4770      	bx	lr

d0001cd2 <strlen>:
d0001cd2:	4603      	mov	r3, r0
d0001cd4:	f813 2b01 	ldrb.w	r2, [r3], #1
d0001cd8:	2a00      	cmp	r2, #0
d0001cda:	d1fb      	bne.n	d0001cd4 <strlen+0x2>
d0001cdc:	1a18      	subs	r0, r3, r0
d0001cde:	3801      	subs	r0, #1
d0001ce0:	4770      	bx	lr

d0001ce2 <strncmp>:
d0001ce2:	b510      	push	{r4, lr}
d0001ce4:	b16a      	cbz	r2, d0001d02 <strncmp+0x20>
d0001ce6:	3901      	subs	r1, #1
d0001ce8:	1884      	adds	r4, r0, r2
d0001cea:	f810 3b01 	ldrb.w	r3, [r0], #1
d0001cee:	f811 2f01 	ldrb.w	r2, [r1, #1]!
d0001cf2:	4293      	cmp	r3, r2
d0001cf4:	d103      	bne.n	d0001cfe <strncmp+0x1c>
d0001cf6:	42a0      	cmp	r0, r4
d0001cf8:	d001      	beq.n	d0001cfe <strncmp+0x1c>
d0001cfa:	2b00      	cmp	r3, #0
d0001cfc:	d1f5      	bne.n	d0001cea <strncmp+0x8>
d0001cfe:	1a98      	subs	r0, r3, r2
d0001d00:	bd10      	pop	{r4, pc}
d0001d02:	4610      	mov	r0, r2
d0001d04:	e7fc      	b.n	d0001d00 <strncmp+0x1e>

d0001d06 <strncpy>:
d0001d06:	b510      	push	{r4, lr}
d0001d08:	3901      	subs	r1, #1
d0001d0a:	4603      	mov	r3, r0
d0001d0c:	b132      	cbz	r2, d0001d1c <strncpy+0x16>
d0001d0e:	f811 4f01 	ldrb.w	r4, [r1, #1]!
d0001d12:	f803 4b01 	strb.w	r4, [r3], #1
d0001d16:	3a01      	subs	r2, #1
d0001d18:	2c00      	cmp	r4, #0
d0001d1a:	d1f7      	bne.n	d0001d0c <strncpy+0x6>
d0001d1c:	441a      	add	r2, r3
d0001d1e:	2100      	movs	r1, #0
d0001d20:	4293      	cmp	r3, r2
d0001d22:	d100      	bne.n	d0001d26 <strncpy+0x20>
d0001d24:	bd10      	pop	{r4, pc}
d0001d26:	f803 1b01 	strb.w	r1, [r3], #1
d0001d2a:	e7f9      	b.n	d0001d20 <strncpy+0x1a>

d0001d2c <strstr>:
d0001d2c:	b5f0      	push	{r4, r5, r6, r7, lr}
d0001d2e:	780c      	ldrb	r4, [r1, #0]
d0001d30:	b164      	cbz	r4, d0001d4c <strstr+0x20>
d0001d32:	4603      	mov	r3, r0
d0001d34:	781a      	ldrb	r2, [r3, #0]
d0001d36:	4618      	mov	r0, r3
d0001d38:	1c5e      	adds	r6, r3, #1
d0001d3a:	b90a      	cbnz	r2, d0001d40 <strstr+0x14>
d0001d3c:	4610      	mov	r0, r2
d0001d3e:	e005      	b.n	d0001d4c <strstr+0x20>
d0001d40:	4294      	cmp	r4, r2
d0001d42:	d108      	bne.n	d0001d56 <strstr+0x2a>
d0001d44:	460d      	mov	r5, r1
d0001d46:	f815 2f01 	ldrb.w	r2, [r5, #1]!
d0001d4a:	b902      	cbnz	r2, d0001d4e <strstr+0x22>
d0001d4c:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0001d4e:	f813 7f01 	ldrb.w	r7, [r3, #1]!
d0001d52:	4297      	cmp	r7, r2
d0001d54:	d0f7      	beq.n	d0001d46 <strstr+0x1a>
d0001d56:	4633      	mov	r3, r6
d0001d58:	e7ec      	b.n	d0001d34 <strstr+0x8>
	...

d0001d5c <_strtol_l.isra.0>:
d0001d5c:	2b01      	cmp	r3, #1
d0001d5e:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0001d62:	d001      	beq.n	d0001d68 <_strtol_l.isra.0+0xc>
d0001d64:	2b24      	cmp	r3, #36	; 0x24
d0001d66:	d906      	bls.n	d0001d76 <_strtol_l.isra.0+0x1a>
d0001d68:	f7ff fd92 	bl	d0001890 <__errno>
d0001d6c:	2316      	movs	r3, #22
d0001d6e:	6003      	str	r3, [r0, #0]
d0001d70:	2000      	movs	r0, #0
d0001d72:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0001d76:	4f3a      	ldr	r7, [pc, #232]	; (d0001e60 <_strtol_l.isra.0+0x104>)
d0001d78:	468e      	mov	lr, r1
d0001d7a:	4676      	mov	r6, lr
d0001d7c:	f81e 4b01 	ldrb.w	r4, [lr], #1
d0001d80:	5de5      	ldrb	r5, [r4, r7]
d0001d82:	f015 0508 	ands.w	r5, r5, #8
d0001d86:	d1f8      	bne.n	d0001d7a <_strtol_l.isra.0+0x1e>
d0001d88:	2c2d      	cmp	r4, #45	; 0x2d
d0001d8a:	d134      	bne.n	d0001df6 <_strtol_l.isra.0+0x9a>
d0001d8c:	f89e 4000 	ldrb.w	r4, [lr]
d0001d90:	f04f 0801 	mov.w	r8, #1
d0001d94:	f106 0e02 	add.w	lr, r6, #2
d0001d98:	2b00      	cmp	r3, #0
d0001d9a:	d05c      	beq.n	d0001e56 <_strtol_l.isra.0+0xfa>
d0001d9c:	2b10      	cmp	r3, #16
d0001d9e:	d10c      	bne.n	d0001dba <_strtol_l.isra.0+0x5e>
d0001da0:	2c30      	cmp	r4, #48	; 0x30
d0001da2:	d10a      	bne.n	d0001dba <_strtol_l.isra.0+0x5e>
d0001da4:	f89e 4000 	ldrb.w	r4, [lr]
d0001da8:	f004 04df 	and.w	r4, r4, #223	; 0xdf
d0001dac:	2c58      	cmp	r4, #88	; 0x58
d0001dae:	d14d      	bne.n	d0001e4c <_strtol_l.isra.0+0xf0>
d0001db0:	f89e 4001 	ldrb.w	r4, [lr, #1]
d0001db4:	2310      	movs	r3, #16
d0001db6:	f10e 0e02 	add.w	lr, lr, #2
d0001dba:	f108 4c00 	add.w	ip, r8, #2147483648	; 0x80000000
d0001dbe:	f10c 3cff 	add.w	ip, ip, #4294967295	; 0xffffffff
d0001dc2:	2600      	movs	r6, #0
d0001dc4:	fbbc f9f3 	udiv	r9, ip, r3
d0001dc8:	4635      	mov	r5, r6
d0001dca:	fb03 ca19 	mls	sl, r3, r9, ip
d0001dce:	f1a4 0730 	sub.w	r7, r4, #48	; 0x30
d0001dd2:	2f09      	cmp	r7, #9
d0001dd4:	d818      	bhi.n	d0001e08 <_strtol_l.isra.0+0xac>
d0001dd6:	463c      	mov	r4, r7
d0001dd8:	42a3      	cmp	r3, r4
d0001dda:	dd24      	ble.n	d0001e26 <_strtol_l.isra.0+0xca>
d0001ddc:	2e00      	cmp	r6, #0
d0001dde:	db1f      	blt.n	d0001e20 <_strtol_l.isra.0+0xc4>
d0001de0:	45a9      	cmp	r9, r5
d0001de2:	d31d      	bcc.n	d0001e20 <_strtol_l.isra.0+0xc4>
d0001de4:	d101      	bne.n	d0001dea <_strtol_l.isra.0+0x8e>
d0001de6:	45a2      	cmp	sl, r4
d0001de8:	db1a      	blt.n	d0001e20 <_strtol_l.isra.0+0xc4>
d0001dea:	fb05 4503 	mla	r5, r5, r3, r4
d0001dee:	2601      	movs	r6, #1
d0001df0:	f81e 4b01 	ldrb.w	r4, [lr], #1
d0001df4:	e7eb      	b.n	d0001dce <_strtol_l.isra.0+0x72>
d0001df6:	2c2b      	cmp	r4, #43	; 0x2b
d0001df8:	bf08      	it	eq
d0001dfa:	f89e 4000 	ldrbeq.w	r4, [lr]
d0001dfe:	46a8      	mov	r8, r5
d0001e00:	bf08      	it	eq
d0001e02:	f106 0e02 	addeq.w	lr, r6, #2
d0001e06:	e7c7      	b.n	d0001d98 <_strtol_l.isra.0+0x3c>
d0001e08:	f1a4 0741 	sub.w	r7, r4, #65	; 0x41
d0001e0c:	2f19      	cmp	r7, #25
d0001e0e:	d801      	bhi.n	d0001e14 <_strtol_l.isra.0+0xb8>
d0001e10:	3c37      	subs	r4, #55	; 0x37
d0001e12:	e7e1      	b.n	d0001dd8 <_strtol_l.isra.0+0x7c>
d0001e14:	f1a4 0761 	sub.w	r7, r4, #97	; 0x61
d0001e18:	2f19      	cmp	r7, #25
d0001e1a:	d804      	bhi.n	d0001e26 <_strtol_l.isra.0+0xca>
d0001e1c:	3c57      	subs	r4, #87	; 0x57
d0001e1e:	e7db      	b.n	d0001dd8 <_strtol_l.isra.0+0x7c>
d0001e20:	f04f 36ff 	mov.w	r6, #4294967295	; 0xffffffff
d0001e24:	e7e4      	b.n	d0001df0 <_strtol_l.isra.0+0x94>
d0001e26:	2e00      	cmp	r6, #0
d0001e28:	da05      	bge.n	d0001e36 <_strtol_l.isra.0+0xda>
d0001e2a:	2322      	movs	r3, #34	; 0x22
d0001e2c:	6003      	str	r3, [r0, #0]
d0001e2e:	4665      	mov	r5, ip
d0001e30:	b942      	cbnz	r2, d0001e44 <_strtol_l.isra.0+0xe8>
d0001e32:	4628      	mov	r0, r5
d0001e34:	e79d      	b.n	d0001d72 <_strtol_l.isra.0+0x16>
d0001e36:	f1b8 0f00 	cmp.w	r8, #0
d0001e3a:	d000      	beq.n	d0001e3e <_strtol_l.isra.0+0xe2>
d0001e3c:	426d      	negs	r5, r5
d0001e3e:	2a00      	cmp	r2, #0
d0001e40:	d0f7      	beq.n	d0001e32 <_strtol_l.isra.0+0xd6>
d0001e42:	b10e      	cbz	r6, d0001e48 <_strtol_l.isra.0+0xec>
d0001e44:	f10e 31ff 	add.w	r1, lr, #4294967295	; 0xffffffff
d0001e48:	6011      	str	r1, [r2, #0]
d0001e4a:	e7f2      	b.n	d0001e32 <_strtol_l.isra.0+0xd6>
d0001e4c:	2430      	movs	r4, #48	; 0x30
d0001e4e:	2b00      	cmp	r3, #0
d0001e50:	d1b3      	bne.n	d0001dba <_strtol_l.isra.0+0x5e>
d0001e52:	2308      	movs	r3, #8
d0001e54:	e7b1      	b.n	d0001dba <_strtol_l.isra.0+0x5e>
d0001e56:	2c30      	cmp	r4, #48	; 0x30
d0001e58:	d0a4      	beq.n	d0001da4 <_strtol_l.isra.0+0x48>
d0001e5a:	230a      	movs	r3, #10
d0001e5c:	e7ad      	b.n	d0001dba <_strtol_l.isra.0+0x5e>
d0001e5e:	bf00      	nop
d0001e60:	d0002a05 	.word	0xd0002a05

d0001e64 <strtol>:
d0001e64:	4613      	mov	r3, r2
d0001e66:	460a      	mov	r2, r1
d0001e68:	4601      	mov	r1, r0
d0001e6a:	4802      	ldr	r0, [pc, #8]	; (d0001e74 <strtol+0x10>)
d0001e6c:	6800      	ldr	r0, [r0, #0]
d0001e6e:	f7ff bf75 	b.w	d0001d5c <_strtol_l.isra.0>
d0001e72:	bf00      	nop
d0001e74:	d0002b40 	.word	0xd0002b40

d0001e78 <__ssputs_r>:
d0001e78:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0001e7c:	688e      	ldr	r6, [r1, #8]
d0001e7e:	429e      	cmp	r6, r3
d0001e80:	4682      	mov	sl, r0
d0001e82:	460c      	mov	r4, r1
d0001e84:	4690      	mov	r8, r2
d0001e86:	461f      	mov	r7, r3
d0001e88:	d838      	bhi.n	d0001efc <__ssputs_r+0x84>
d0001e8a:	898a      	ldrh	r2, [r1, #12]
d0001e8c:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0001e90:	d032      	beq.n	d0001ef8 <__ssputs_r+0x80>
d0001e92:	6825      	ldr	r5, [r4, #0]
d0001e94:	6909      	ldr	r1, [r1, #16]
d0001e96:	eba5 0901 	sub.w	r9, r5, r1
d0001e9a:	6965      	ldr	r5, [r4, #20]
d0001e9c:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0001ea0:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0001ea4:	3301      	adds	r3, #1
d0001ea6:	444b      	add	r3, r9
d0001ea8:	106d      	asrs	r5, r5, #1
d0001eaa:	429d      	cmp	r5, r3
d0001eac:	bf38      	it	cc
d0001eae:	461d      	movcc	r5, r3
d0001eb0:	0553      	lsls	r3, r2, #21
d0001eb2:	d531      	bpl.n	d0001f18 <__ssputs_r+0xa0>
d0001eb4:	4629      	mov	r1, r5
d0001eb6:	f000 fb73 	bl	d00025a0 <_malloc_r>
d0001eba:	4606      	mov	r6, r0
d0001ebc:	b950      	cbnz	r0, d0001ed4 <__ssputs_r+0x5c>
d0001ebe:	230c      	movs	r3, #12
d0001ec0:	f8ca 3000 	str.w	r3, [sl]
d0001ec4:	89a3      	ldrh	r3, [r4, #12]
d0001ec6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0001eca:	81a3      	strh	r3, [r4, #12]
d0001ecc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0001ed0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0001ed4:	6921      	ldr	r1, [r4, #16]
d0001ed6:	464a      	mov	r2, r9
d0001ed8:	f7ff fce0 	bl	d000189c <memcpy>
d0001edc:	89a3      	ldrh	r3, [r4, #12]
d0001ede:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0001ee2:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0001ee6:	81a3      	strh	r3, [r4, #12]
d0001ee8:	6126      	str	r6, [r4, #16]
d0001eea:	6165      	str	r5, [r4, #20]
d0001eec:	444e      	add	r6, r9
d0001eee:	eba5 0509 	sub.w	r5, r5, r9
d0001ef2:	6026      	str	r6, [r4, #0]
d0001ef4:	60a5      	str	r5, [r4, #8]
d0001ef6:	463e      	mov	r6, r7
d0001ef8:	42be      	cmp	r6, r7
d0001efa:	d900      	bls.n	d0001efe <__ssputs_r+0x86>
d0001efc:	463e      	mov	r6, r7
d0001efe:	4632      	mov	r2, r6
d0001f00:	6820      	ldr	r0, [r4, #0]
d0001f02:	4641      	mov	r1, r8
d0001f04:	f7ff fcd8 	bl	d00018b8 <memmove>
d0001f08:	68a3      	ldr	r3, [r4, #8]
d0001f0a:	6822      	ldr	r2, [r4, #0]
d0001f0c:	1b9b      	subs	r3, r3, r6
d0001f0e:	4432      	add	r2, r6
d0001f10:	60a3      	str	r3, [r4, #8]
d0001f12:	6022      	str	r2, [r4, #0]
d0001f14:	2000      	movs	r0, #0
d0001f16:	e7db      	b.n	d0001ed0 <__ssputs_r+0x58>
d0001f18:	462a      	mov	r2, r5
d0001f1a:	f000 fb9b 	bl	d0002654 <_realloc_r>
d0001f1e:	4606      	mov	r6, r0
d0001f20:	2800      	cmp	r0, #0
d0001f22:	d1e1      	bne.n	d0001ee8 <__ssputs_r+0x70>
d0001f24:	6921      	ldr	r1, [r4, #16]
d0001f26:	4650      	mov	r0, sl
d0001f28:	f000 faea 	bl	d0002500 <_free_r>
d0001f2c:	e7c7      	b.n	d0001ebe <__ssputs_r+0x46>
	...

d0001f30 <_svfiprintf_r>:
d0001f30:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0001f34:	4698      	mov	r8, r3
d0001f36:	898b      	ldrh	r3, [r1, #12]
d0001f38:	061b      	lsls	r3, r3, #24
d0001f3a:	b09d      	sub	sp, #116	; 0x74
d0001f3c:	4607      	mov	r7, r0
d0001f3e:	460d      	mov	r5, r1
d0001f40:	4614      	mov	r4, r2
d0001f42:	d50e      	bpl.n	d0001f62 <_svfiprintf_r+0x32>
d0001f44:	690b      	ldr	r3, [r1, #16]
d0001f46:	b963      	cbnz	r3, d0001f62 <_svfiprintf_r+0x32>
d0001f48:	2140      	movs	r1, #64	; 0x40
d0001f4a:	f000 fb29 	bl	d00025a0 <_malloc_r>
d0001f4e:	6028      	str	r0, [r5, #0]
d0001f50:	6128      	str	r0, [r5, #16]
d0001f52:	b920      	cbnz	r0, d0001f5e <_svfiprintf_r+0x2e>
d0001f54:	230c      	movs	r3, #12
d0001f56:	603b      	str	r3, [r7, #0]
d0001f58:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0001f5c:	e0d1      	b.n	d0002102 <_svfiprintf_r+0x1d2>
d0001f5e:	2340      	movs	r3, #64	; 0x40
d0001f60:	616b      	str	r3, [r5, #20]
d0001f62:	2300      	movs	r3, #0
d0001f64:	9309      	str	r3, [sp, #36]	; 0x24
d0001f66:	2320      	movs	r3, #32
d0001f68:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0001f6c:	f8cd 800c 	str.w	r8, [sp, #12]
d0001f70:	2330      	movs	r3, #48	; 0x30
d0001f72:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d000211c <_svfiprintf_r+0x1ec>
d0001f76:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0001f7a:	f04f 0901 	mov.w	r9, #1
d0001f7e:	4623      	mov	r3, r4
d0001f80:	469a      	mov	sl, r3
d0001f82:	f813 2b01 	ldrb.w	r2, [r3], #1
d0001f86:	b10a      	cbz	r2, d0001f8c <_svfiprintf_r+0x5c>
d0001f88:	2a25      	cmp	r2, #37	; 0x25
d0001f8a:	d1f9      	bne.n	d0001f80 <_svfiprintf_r+0x50>
d0001f8c:	ebba 0b04 	subs.w	fp, sl, r4
d0001f90:	d00b      	beq.n	d0001faa <_svfiprintf_r+0x7a>
d0001f92:	465b      	mov	r3, fp
d0001f94:	4622      	mov	r2, r4
d0001f96:	4629      	mov	r1, r5
d0001f98:	4638      	mov	r0, r7
d0001f9a:	f7ff ff6d 	bl	d0001e78 <__ssputs_r>
d0001f9e:	3001      	adds	r0, #1
d0001fa0:	f000 80aa 	beq.w	d00020f8 <_svfiprintf_r+0x1c8>
d0001fa4:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0001fa6:	445a      	add	r2, fp
d0001fa8:	9209      	str	r2, [sp, #36]	; 0x24
d0001faa:	f89a 3000 	ldrb.w	r3, [sl]
d0001fae:	2b00      	cmp	r3, #0
d0001fb0:	f000 80a2 	beq.w	d00020f8 <_svfiprintf_r+0x1c8>
d0001fb4:	2300      	movs	r3, #0
d0001fb6:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0001fba:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0001fbe:	f10a 0a01 	add.w	sl, sl, #1
d0001fc2:	9304      	str	r3, [sp, #16]
d0001fc4:	9307      	str	r3, [sp, #28]
d0001fc6:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0001fca:	931a      	str	r3, [sp, #104]	; 0x68
d0001fcc:	4654      	mov	r4, sl
d0001fce:	2205      	movs	r2, #5
d0001fd0:	f814 1b01 	ldrb.w	r1, [r4], #1
d0001fd4:	4851      	ldr	r0, [pc, #324]	; (d000211c <_svfiprintf_r+0x1ec>)
d0001fd6:	f000 fa43 	bl	d0002460 <memchr>
d0001fda:	9a04      	ldr	r2, [sp, #16]
d0001fdc:	b9d8      	cbnz	r0, d0002016 <_svfiprintf_r+0xe6>
d0001fde:	06d0      	lsls	r0, r2, #27
d0001fe0:	bf44      	itt	mi
d0001fe2:	2320      	movmi	r3, #32
d0001fe4:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0001fe8:	0711      	lsls	r1, r2, #28
d0001fea:	bf44      	itt	mi
d0001fec:	232b      	movmi	r3, #43	; 0x2b
d0001fee:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0001ff2:	f89a 3000 	ldrb.w	r3, [sl]
d0001ff6:	2b2a      	cmp	r3, #42	; 0x2a
d0001ff8:	d015      	beq.n	d0002026 <_svfiprintf_r+0xf6>
d0001ffa:	9a07      	ldr	r2, [sp, #28]
d0001ffc:	4654      	mov	r4, sl
d0001ffe:	2000      	movs	r0, #0
d0002000:	f04f 0c0a 	mov.w	ip, #10
d0002004:	4621      	mov	r1, r4
d0002006:	f811 3b01 	ldrb.w	r3, [r1], #1
d000200a:	3b30      	subs	r3, #48	; 0x30
d000200c:	2b09      	cmp	r3, #9
d000200e:	d94e      	bls.n	d00020ae <_svfiprintf_r+0x17e>
d0002010:	b1b0      	cbz	r0, d0002040 <_svfiprintf_r+0x110>
d0002012:	9207      	str	r2, [sp, #28]
d0002014:	e014      	b.n	d0002040 <_svfiprintf_r+0x110>
d0002016:	eba0 0308 	sub.w	r3, r0, r8
d000201a:	fa09 f303 	lsl.w	r3, r9, r3
d000201e:	4313      	orrs	r3, r2
d0002020:	9304      	str	r3, [sp, #16]
d0002022:	46a2      	mov	sl, r4
d0002024:	e7d2      	b.n	d0001fcc <_svfiprintf_r+0x9c>
d0002026:	9b03      	ldr	r3, [sp, #12]
d0002028:	1d19      	adds	r1, r3, #4
d000202a:	681b      	ldr	r3, [r3, #0]
d000202c:	9103      	str	r1, [sp, #12]
d000202e:	2b00      	cmp	r3, #0
d0002030:	bfbb      	ittet	lt
d0002032:	425b      	neglt	r3, r3
d0002034:	f042 0202 	orrlt.w	r2, r2, #2
d0002038:	9307      	strge	r3, [sp, #28]
d000203a:	9307      	strlt	r3, [sp, #28]
d000203c:	bfb8      	it	lt
d000203e:	9204      	strlt	r2, [sp, #16]
d0002040:	7823      	ldrb	r3, [r4, #0]
d0002042:	2b2e      	cmp	r3, #46	; 0x2e
d0002044:	d10c      	bne.n	d0002060 <_svfiprintf_r+0x130>
d0002046:	7863      	ldrb	r3, [r4, #1]
d0002048:	2b2a      	cmp	r3, #42	; 0x2a
d000204a:	d135      	bne.n	d00020b8 <_svfiprintf_r+0x188>
d000204c:	9b03      	ldr	r3, [sp, #12]
d000204e:	1d1a      	adds	r2, r3, #4
d0002050:	681b      	ldr	r3, [r3, #0]
d0002052:	9203      	str	r2, [sp, #12]
d0002054:	2b00      	cmp	r3, #0
d0002056:	bfb8      	it	lt
d0002058:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d000205c:	3402      	adds	r4, #2
d000205e:	9305      	str	r3, [sp, #20]
d0002060:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d000212c <_svfiprintf_r+0x1fc>
d0002064:	7821      	ldrb	r1, [r4, #0]
d0002066:	2203      	movs	r2, #3
d0002068:	4650      	mov	r0, sl
d000206a:	f000 f9f9 	bl	d0002460 <memchr>
d000206e:	b140      	cbz	r0, d0002082 <_svfiprintf_r+0x152>
d0002070:	2340      	movs	r3, #64	; 0x40
d0002072:	eba0 000a 	sub.w	r0, r0, sl
d0002076:	fa03 f000 	lsl.w	r0, r3, r0
d000207a:	9b04      	ldr	r3, [sp, #16]
d000207c:	4303      	orrs	r3, r0
d000207e:	3401      	adds	r4, #1
d0002080:	9304      	str	r3, [sp, #16]
d0002082:	f814 1b01 	ldrb.w	r1, [r4], #1
d0002086:	4826      	ldr	r0, [pc, #152]	; (d0002120 <_svfiprintf_r+0x1f0>)
d0002088:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d000208c:	2206      	movs	r2, #6
d000208e:	f000 f9e7 	bl	d0002460 <memchr>
d0002092:	2800      	cmp	r0, #0
d0002094:	d038      	beq.n	d0002108 <_svfiprintf_r+0x1d8>
d0002096:	4b23      	ldr	r3, [pc, #140]	; (d0002124 <_svfiprintf_r+0x1f4>)
d0002098:	bb1b      	cbnz	r3, d00020e2 <_svfiprintf_r+0x1b2>
d000209a:	9b03      	ldr	r3, [sp, #12]
d000209c:	3307      	adds	r3, #7
d000209e:	f023 0307 	bic.w	r3, r3, #7
d00020a2:	3308      	adds	r3, #8
d00020a4:	9303      	str	r3, [sp, #12]
d00020a6:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00020a8:	4433      	add	r3, r6
d00020aa:	9309      	str	r3, [sp, #36]	; 0x24
d00020ac:	e767      	b.n	d0001f7e <_svfiprintf_r+0x4e>
d00020ae:	fb0c 3202 	mla	r2, ip, r2, r3
d00020b2:	460c      	mov	r4, r1
d00020b4:	2001      	movs	r0, #1
d00020b6:	e7a5      	b.n	d0002004 <_svfiprintf_r+0xd4>
d00020b8:	2300      	movs	r3, #0
d00020ba:	3401      	adds	r4, #1
d00020bc:	9305      	str	r3, [sp, #20]
d00020be:	4619      	mov	r1, r3
d00020c0:	f04f 0c0a 	mov.w	ip, #10
d00020c4:	4620      	mov	r0, r4
d00020c6:	f810 2b01 	ldrb.w	r2, [r0], #1
d00020ca:	3a30      	subs	r2, #48	; 0x30
d00020cc:	2a09      	cmp	r2, #9
d00020ce:	d903      	bls.n	d00020d8 <_svfiprintf_r+0x1a8>
d00020d0:	2b00      	cmp	r3, #0
d00020d2:	d0c5      	beq.n	d0002060 <_svfiprintf_r+0x130>
d00020d4:	9105      	str	r1, [sp, #20]
d00020d6:	e7c3      	b.n	d0002060 <_svfiprintf_r+0x130>
d00020d8:	fb0c 2101 	mla	r1, ip, r1, r2
d00020dc:	4604      	mov	r4, r0
d00020de:	2301      	movs	r3, #1
d00020e0:	e7f0      	b.n	d00020c4 <_svfiprintf_r+0x194>
d00020e2:	ab03      	add	r3, sp, #12
d00020e4:	9300      	str	r3, [sp, #0]
d00020e6:	462a      	mov	r2, r5
d00020e8:	4b0f      	ldr	r3, [pc, #60]	; (d0002128 <_svfiprintf_r+0x1f8>)
d00020ea:	a904      	add	r1, sp, #16
d00020ec:	4638      	mov	r0, r7
d00020ee:	f3af 8000 	nop.w
d00020f2:	1c42      	adds	r2, r0, #1
d00020f4:	4606      	mov	r6, r0
d00020f6:	d1d6      	bne.n	d00020a6 <_svfiprintf_r+0x176>
d00020f8:	89ab      	ldrh	r3, [r5, #12]
d00020fa:	065b      	lsls	r3, r3, #25
d00020fc:	f53f af2c 	bmi.w	d0001f58 <_svfiprintf_r+0x28>
d0002100:	9809      	ldr	r0, [sp, #36]	; 0x24
d0002102:	b01d      	add	sp, #116	; 0x74
d0002104:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0002108:	ab03      	add	r3, sp, #12
d000210a:	9300      	str	r3, [sp, #0]
d000210c:	462a      	mov	r2, r5
d000210e:	4b06      	ldr	r3, [pc, #24]	; (d0002128 <_svfiprintf_r+0x1f8>)
d0002110:	a904      	add	r1, sp, #16
d0002112:	4638      	mov	r0, r7
d0002114:	f000 f87a 	bl	d000220c <_printf_i>
d0002118:	e7eb      	b.n	d00020f2 <_svfiprintf_r+0x1c2>
d000211a:	bf00      	nop
d000211c:	d0002b05 	.word	0xd0002b05
d0002120:	d0002b0f 	.word	0xd0002b0f
d0002124:	00000000 	.word	0x00000000
d0002128:	d0001e79 	.word	0xd0001e79
d000212c:	d0002b0b 	.word	0xd0002b0b

d0002130 <_printf_common>:
d0002130:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0002134:	4616      	mov	r6, r2
d0002136:	4699      	mov	r9, r3
d0002138:	688a      	ldr	r2, [r1, #8]
d000213a:	690b      	ldr	r3, [r1, #16]
d000213c:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0002140:	4293      	cmp	r3, r2
d0002142:	bfb8      	it	lt
d0002144:	4613      	movlt	r3, r2
d0002146:	6033      	str	r3, [r6, #0]
d0002148:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d000214c:	4607      	mov	r7, r0
d000214e:	460c      	mov	r4, r1
d0002150:	b10a      	cbz	r2, d0002156 <_printf_common+0x26>
d0002152:	3301      	adds	r3, #1
d0002154:	6033      	str	r3, [r6, #0]
d0002156:	6823      	ldr	r3, [r4, #0]
d0002158:	0699      	lsls	r1, r3, #26
d000215a:	bf42      	ittt	mi
d000215c:	6833      	ldrmi	r3, [r6, #0]
d000215e:	3302      	addmi	r3, #2
d0002160:	6033      	strmi	r3, [r6, #0]
d0002162:	6825      	ldr	r5, [r4, #0]
d0002164:	f015 0506 	ands.w	r5, r5, #6
d0002168:	d106      	bne.n	d0002178 <_printf_common+0x48>
d000216a:	f104 0a19 	add.w	sl, r4, #25
d000216e:	68e3      	ldr	r3, [r4, #12]
d0002170:	6832      	ldr	r2, [r6, #0]
d0002172:	1a9b      	subs	r3, r3, r2
d0002174:	42ab      	cmp	r3, r5
d0002176:	dc26      	bgt.n	d00021c6 <_printf_common+0x96>
d0002178:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d000217c:	1e13      	subs	r3, r2, #0
d000217e:	6822      	ldr	r2, [r4, #0]
d0002180:	bf18      	it	ne
d0002182:	2301      	movne	r3, #1
d0002184:	0692      	lsls	r2, r2, #26
d0002186:	d42b      	bmi.n	d00021e0 <_printf_common+0xb0>
d0002188:	f104 0243 	add.w	r2, r4, #67	; 0x43
d000218c:	4649      	mov	r1, r9
d000218e:	4638      	mov	r0, r7
d0002190:	47c0      	blx	r8
d0002192:	3001      	adds	r0, #1
d0002194:	d01e      	beq.n	d00021d4 <_printf_common+0xa4>
d0002196:	6823      	ldr	r3, [r4, #0]
d0002198:	68e5      	ldr	r5, [r4, #12]
d000219a:	6832      	ldr	r2, [r6, #0]
d000219c:	f003 0306 	and.w	r3, r3, #6
d00021a0:	2b04      	cmp	r3, #4
d00021a2:	bf08      	it	eq
d00021a4:	1aad      	subeq	r5, r5, r2
d00021a6:	68a3      	ldr	r3, [r4, #8]
d00021a8:	6922      	ldr	r2, [r4, #16]
d00021aa:	bf0c      	ite	eq
d00021ac:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d00021b0:	2500      	movne	r5, #0
d00021b2:	4293      	cmp	r3, r2
d00021b4:	bfc4      	itt	gt
d00021b6:	1a9b      	subgt	r3, r3, r2
d00021b8:	18ed      	addgt	r5, r5, r3
d00021ba:	2600      	movs	r6, #0
d00021bc:	341a      	adds	r4, #26
d00021be:	42b5      	cmp	r5, r6
d00021c0:	d11a      	bne.n	d00021f8 <_printf_common+0xc8>
d00021c2:	2000      	movs	r0, #0
d00021c4:	e008      	b.n	d00021d8 <_printf_common+0xa8>
d00021c6:	2301      	movs	r3, #1
d00021c8:	4652      	mov	r2, sl
d00021ca:	4649      	mov	r1, r9
d00021cc:	4638      	mov	r0, r7
d00021ce:	47c0      	blx	r8
d00021d0:	3001      	adds	r0, #1
d00021d2:	d103      	bne.n	d00021dc <_printf_common+0xac>
d00021d4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00021d8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00021dc:	3501      	adds	r5, #1
d00021de:	e7c6      	b.n	d000216e <_printf_common+0x3e>
d00021e0:	18e1      	adds	r1, r4, r3
d00021e2:	1c5a      	adds	r2, r3, #1
d00021e4:	2030      	movs	r0, #48	; 0x30
d00021e6:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d00021ea:	4422      	add	r2, r4
d00021ec:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d00021f0:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d00021f4:	3302      	adds	r3, #2
d00021f6:	e7c7      	b.n	d0002188 <_printf_common+0x58>
d00021f8:	2301      	movs	r3, #1
d00021fa:	4622      	mov	r2, r4
d00021fc:	4649      	mov	r1, r9
d00021fe:	4638      	mov	r0, r7
d0002200:	47c0      	blx	r8
d0002202:	3001      	adds	r0, #1
d0002204:	d0e6      	beq.n	d00021d4 <_printf_common+0xa4>
d0002206:	3601      	adds	r6, #1
d0002208:	e7d9      	b.n	d00021be <_printf_common+0x8e>
	...

d000220c <_printf_i>:
d000220c:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0002210:	460c      	mov	r4, r1
d0002212:	4691      	mov	r9, r2
d0002214:	7e27      	ldrb	r7, [r4, #24]
d0002216:	990c      	ldr	r1, [sp, #48]	; 0x30
d0002218:	2f78      	cmp	r7, #120	; 0x78
d000221a:	4680      	mov	r8, r0
d000221c:	469a      	mov	sl, r3
d000221e:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0002222:	d807      	bhi.n	d0002234 <_printf_i+0x28>
d0002224:	2f62      	cmp	r7, #98	; 0x62
d0002226:	d80a      	bhi.n	d000223e <_printf_i+0x32>
d0002228:	2f00      	cmp	r7, #0
d000222a:	f000 80d8 	beq.w	d00023de <_printf_i+0x1d2>
d000222e:	2f58      	cmp	r7, #88	; 0x58
d0002230:	f000 80a3 	beq.w	d000237a <_printf_i+0x16e>
d0002234:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0002238:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d000223c:	e03a      	b.n	d00022b4 <_printf_i+0xa8>
d000223e:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0002242:	2b15      	cmp	r3, #21
d0002244:	d8f6      	bhi.n	d0002234 <_printf_i+0x28>
d0002246:	a001      	add	r0, pc, #4	; (adr r0, d000224c <_printf_i+0x40>)
d0002248:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d000224c:	d00022a5 	.word	0xd00022a5
d0002250:	d00022b9 	.word	0xd00022b9
d0002254:	d0002235 	.word	0xd0002235
d0002258:	d0002235 	.word	0xd0002235
d000225c:	d0002235 	.word	0xd0002235
d0002260:	d0002235 	.word	0xd0002235
d0002264:	d00022b9 	.word	0xd00022b9
d0002268:	d0002235 	.word	0xd0002235
d000226c:	d0002235 	.word	0xd0002235
d0002270:	d0002235 	.word	0xd0002235
d0002274:	d0002235 	.word	0xd0002235
d0002278:	d00023c5 	.word	0xd00023c5
d000227c:	d00022e9 	.word	0xd00022e9
d0002280:	d00023a7 	.word	0xd00023a7
d0002284:	d0002235 	.word	0xd0002235
d0002288:	d0002235 	.word	0xd0002235
d000228c:	d00023e7 	.word	0xd00023e7
d0002290:	d0002235 	.word	0xd0002235
d0002294:	d00022e9 	.word	0xd00022e9
d0002298:	d0002235 	.word	0xd0002235
d000229c:	d0002235 	.word	0xd0002235
d00022a0:	d00023af 	.word	0xd00023af
d00022a4:	680b      	ldr	r3, [r1, #0]
d00022a6:	1d1a      	adds	r2, r3, #4
d00022a8:	681b      	ldr	r3, [r3, #0]
d00022aa:	600a      	str	r2, [r1, #0]
d00022ac:	f104 0642 	add.w	r6, r4, #66	; 0x42
d00022b0:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d00022b4:	2301      	movs	r3, #1
d00022b6:	e0a3      	b.n	d0002400 <_printf_i+0x1f4>
d00022b8:	6825      	ldr	r5, [r4, #0]
d00022ba:	6808      	ldr	r0, [r1, #0]
d00022bc:	062e      	lsls	r6, r5, #24
d00022be:	f100 0304 	add.w	r3, r0, #4
d00022c2:	d50a      	bpl.n	d00022da <_printf_i+0xce>
d00022c4:	6805      	ldr	r5, [r0, #0]
d00022c6:	600b      	str	r3, [r1, #0]
d00022c8:	2d00      	cmp	r5, #0
d00022ca:	da03      	bge.n	d00022d4 <_printf_i+0xc8>
d00022cc:	232d      	movs	r3, #45	; 0x2d
d00022ce:	426d      	negs	r5, r5
d00022d0:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d00022d4:	485e      	ldr	r0, [pc, #376]	; (d0002450 <_printf_i+0x244>)
d00022d6:	230a      	movs	r3, #10
d00022d8:	e019      	b.n	d000230e <_printf_i+0x102>
d00022da:	f015 0f40 	tst.w	r5, #64	; 0x40
d00022de:	6805      	ldr	r5, [r0, #0]
d00022e0:	600b      	str	r3, [r1, #0]
d00022e2:	bf18      	it	ne
d00022e4:	b22d      	sxthne	r5, r5
d00022e6:	e7ef      	b.n	d00022c8 <_printf_i+0xbc>
d00022e8:	680b      	ldr	r3, [r1, #0]
d00022ea:	6825      	ldr	r5, [r4, #0]
d00022ec:	1d18      	adds	r0, r3, #4
d00022ee:	6008      	str	r0, [r1, #0]
d00022f0:	0628      	lsls	r0, r5, #24
d00022f2:	d501      	bpl.n	d00022f8 <_printf_i+0xec>
d00022f4:	681d      	ldr	r5, [r3, #0]
d00022f6:	e002      	b.n	d00022fe <_printf_i+0xf2>
d00022f8:	0669      	lsls	r1, r5, #25
d00022fa:	d5fb      	bpl.n	d00022f4 <_printf_i+0xe8>
d00022fc:	881d      	ldrh	r5, [r3, #0]
d00022fe:	4854      	ldr	r0, [pc, #336]	; (d0002450 <_printf_i+0x244>)
d0002300:	2f6f      	cmp	r7, #111	; 0x6f
d0002302:	bf0c      	ite	eq
d0002304:	2308      	moveq	r3, #8
d0002306:	230a      	movne	r3, #10
d0002308:	2100      	movs	r1, #0
d000230a:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d000230e:	6866      	ldr	r6, [r4, #4]
d0002310:	60a6      	str	r6, [r4, #8]
d0002312:	2e00      	cmp	r6, #0
d0002314:	bfa2      	ittt	ge
d0002316:	6821      	ldrge	r1, [r4, #0]
d0002318:	f021 0104 	bicge.w	r1, r1, #4
d000231c:	6021      	strge	r1, [r4, #0]
d000231e:	b90d      	cbnz	r5, d0002324 <_printf_i+0x118>
d0002320:	2e00      	cmp	r6, #0
d0002322:	d04d      	beq.n	d00023c0 <_printf_i+0x1b4>
d0002324:	4616      	mov	r6, r2
d0002326:	fbb5 f1f3 	udiv	r1, r5, r3
d000232a:	fb03 5711 	mls	r7, r3, r1, r5
d000232e:	5dc7      	ldrb	r7, [r0, r7]
d0002330:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0002334:	462f      	mov	r7, r5
d0002336:	42bb      	cmp	r3, r7
d0002338:	460d      	mov	r5, r1
d000233a:	d9f4      	bls.n	d0002326 <_printf_i+0x11a>
d000233c:	2b08      	cmp	r3, #8
d000233e:	d10b      	bne.n	d0002358 <_printf_i+0x14c>
d0002340:	6823      	ldr	r3, [r4, #0]
d0002342:	07df      	lsls	r7, r3, #31
d0002344:	d508      	bpl.n	d0002358 <_printf_i+0x14c>
d0002346:	6923      	ldr	r3, [r4, #16]
d0002348:	6861      	ldr	r1, [r4, #4]
d000234a:	4299      	cmp	r1, r3
d000234c:	bfde      	ittt	le
d000234e:	2330      	movle	r3, #48	; 0x30
d0002350:	f806 3c01 	strble.w	r3, [r6, #-1]
d0002354:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0002358:	1b92      	subs	r2, r2, r6
d000235a:	6122      	str	r2, [r4, #16]
d000235c:	f8cd a000 	str.w	sl, [sp]
d0002360:	464b      	mov	r3, r9
d0002362:	aa03      	add	r2, sp, #12
d0002364:	4621      	mov	r1, r4
d0002366:	4640      	mov	r0, r8
d0002368:	f7ff fee2 	bl	d0002130 <_printf_common>
d000236c:	3001      	adds	r0, #1
d000236e:	d14c      	bne.n	d000240a <_printf_i+0x1fe>
d0002370:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0002374:	b004      	add	sp, #16
d0002376:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d000237a:	4835      	ldr	r0, [pc, #212]	; (d0002450 <_printf_i+0x244>)
d000237c:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0002380:	6823      	ldr	r3, [r4, #0]
d0002382:	680e      	ldr	r6, [r1, #0]
d0002384:	061f      	lsls	r7, r3, #24
d0002386:	f856 5b04 	ldr.w	r5, [r6], #4
d000238a:	600e      	str	r6, [r1, #0]
d000238c:	d514      	bpl.n	d00023b8 <_printf_i+0x1ac>
d000238e:	07d9      	lsls	r1, r3, #31
d0002390:	bf44      	itt	mi
d0002392:	f043 0320 	orrmi.w	r3, r3, #32
d0002396:	6023      	strmi	r3, [r4, #0]
d0002398:	b91d      	cbnz	r5, d00023a2 <_printf_i+0x196>
d000239a:	6823      	ldr	r3, [r4, #0]
d000239c:	f023 0320 	bic.w	r3, r3, #32
d00023a0:	6023      	str	r3, [r4, #0]
d00023a2:	2310      	movs	r3, #16
d00023a4:	e7b0      	b.n	d0002308 <_printf_i+0xfc>
d00023a6:	6823      	ldr	r3, [r4, #0]
d00023a8:	f043 0320 	orr.w	r3, r3, #32
d00023ac:	6023      	str	r3, [r4, #0]
d00023ae:	2378      	movs	r3, #120	; 0x78
d00023b0:	4828      	ldr	r0, [pc, #160]	; (d0002454 <_printf_i+0x248>)
d00023b2:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d00023b6:	e7e3      	b.n	d0002380 <_printf_i+0x174>
d00023b8:	065e      	lsls	r6, r3, #25
d00023ba:	bf48      	it	mi
d00023bc:	b2ad      	uxthmi	r5, r5
d00023be:	e7e6      	b.n	d000238e <_printf_i+0x182>
d00023c0:	4616      	mov	r6, r2
d00023c2:	e7bb      	b.n	d000233c <_printf_i+0x130>
d00023c4:	680b      	ldr	r3, [r1, #0]
d00023c6:	6826      	ldr	r6, [r4, #0]
d00023c8:	6960      	ldr	r0, [r4, #20]
d00023ca:	1d1d      	adds	r5, r3, #4
d00023cc:	600d      	str	r5, [r1, #0]
d00023ce:	0635      	lsls	r5, r6, #24
d00023d0:	681b      	ldr	r3, [r3, #0]
d00023d2:	d501      	bpl.n	d00023d8 <_printf_i+0x1cc>
d00023d4:	6018      	str	r0, [r3, #0]
d00023d6:	e002      	b.n	d00023de <_printf_i+0x1d2>
d00023d8:	0671      	lsls	r1, r6, #25
d00023da:	d5fb      	bpl.n	d00023d4 <_printf_i+0x1c8>
d00023dc:	8018      	strh	r0, [r3, #0]
d00023de:	2300      	movs	r3, #0
d00023e0:	6123      	str	r3, [r4, #16]
d00023e2:	4616      	mov	r6, r2
d00023e4:	e7ba      	b.n	d000235c <_printf_i+0x150>
d00023e6:	680b      	ldr	r3, [r1, #0]
d00023e8:	1d1a      	adds	r2, r3, #4
d00023ea:	600a      	str	r2, [r1, #0]
d00023ec:	681e      	ldr	r6, [r3, #0]
d00023ee:	6862      	ldr	r2, [r4, #4]
d00023f0:	2100      	movs	r1, #0
d00023f2:	4630      	mov	r0, r6
d00023f4:	f000 f834 	bl	d0002460 <memchr>
d00023f8:	b108      	cbz	r0, d00023fe <_printf_i+0x1f2>
d00023fa:	1b80      	subs	r0, r0, r6
d00023fc:	6060      	str	r0, [r4, #4]
d00023fe:	6863      	ldr	r3, [r4, #4]
d0002400:	6123      	str	r3, [r4, #16]
d0002402:	2300      	movs	r3, #0
d0002404:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0002408:	e7a8      	b.n	d000235c <_printf_i+0x150>
d000240a:	6923      	ldr	r3, [r4, #16]
d000240c:	4632      	mov	r2, r6
d000240e:	4649      	mov	r1, r9
d0002410:	4640      	mov	r0, r8
d0002412:	47d0      	blx	sl
d0002414:	3001      	adds	r0, #1
d0002416:	d0ab      	beq.n	d0002370 <_printf_i+0x164>
d0002418:	6823      	ldr	r3, [r4, #0]
d000241a:	079b      	lsls	r3, r3, #30
d000241c:	d413      	bmi.n	d0002446 <_printf_i+0x23a>
d000241e:	68e0      	ldr	r0, [r4, #12]
d0002420:	9b03      	ldr	r3, [sp, #12]
d0002422:	4298      	cmp	r0, r3
d0002424:	bfb8      	it	lt
d0002426:	4618      	movlt	r0, r3
d0002428:	e7a4      	b.n	d0002374 <_printf_i+0x168>
d000242a:	2301      	movs	r3, #1
d000242c:	4632      	mov	r2, r6
d000242e:	4649      	mov	r1, r9
d0002430:	4640      	mov	r0, r8
d0002432:	47d0      	blx	sl
d0002434:	3001      	adds	r0, #1
d0002436:	d09b      	beq.n	d0002370 <_printf_i+0x164>
d0002438:	3501      	adds	r5, #1
d000243a:	68e3      	ldr	r3, [r4, #12]
d000243c:	9903      	ldr	r1, [sp, #12]
d000243e:	1a5b      	subs	r3, r3, r1
d0002440:	42ab      	cmp	r3, r5
d0002442:	dcf2      	bgt.n	d000242a <_printf_i+0x21e>
d0002444:	e7eb      	b.n	d000241e <_printf_i+0x212>
d0002446:	2500      	movs	r5, #0
d0002448:	f104 0619 	add.w	r6, r4, #25
d000244c:	e7f5      	b.n	d000243a <_printf_i+0x22e>
d000244e:	bf00      	nop
d0002450:	d0002b16 	.word	0xd0002b16
d0002454:	d0002b27 	.word	0xd0002b27
	...

d0002460 <memchr>:
d0002460:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0002464:	2a10      	cmp	r2, #16
d0002466:	db2b      	blt.n	d00024c0 <memchr+0x60>
d0002468:	f010 0f07 	tst.w	r0, #7
d000246c:	d008      	beq.n	d0002480 <memchr+0x20>
d000246e:	f810 3b01 	ldrb.w	r3, [r0], #1
d0002472:	3a01      	subs	r2, #1
d0002474:	428b      	cmp	r3, r1
d0002476:	d02d      	beq.n	d00024d4 <memchr+0x74>
d0002478:	f010 0f07 	tst.w	r0, #7
d000247c:	b342      	cbz	r2, d00024d0 <memchr+0x70>
d000247e:	d1f6      	bne.n	d000246e <memchr+0xe>
d0002480:	b4f0      	push	{r4, r5, r6, r7}
d0002482:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0002486:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d000248a:	f022 0407 	bic.w	r4, r2, #7
d000248e:	f07f 0700 	mvns.w	r7, #0
d0002492:	2300      	movs	r3, #0
d0002494:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0002498:	3c08      	subs	r4, #8
d000249a:	ea85 0501 	eor.w	r5, r5, r1
d000249e:	ea86 0601 	eor.w	r6, r6, r1
d00024a2:	fa85 f547 	uadd8	r5, r5, r7
d00024a6:	faa3 f587 	sel	r5, r3, r7
d00024aa:	fa86 f647 	uadd8	r6, r6, r7
d00024ae:	faa5 f687 	sel	r6, r5, r7
d00024b2:	b98e      	cbnz	r6, d00024d8 <memchr+0x78>
d00024b4:	d1ee      	bne.n	d0002494 <memchr+0x34>
d00024b6:	bcf0      	pop	{r4, r5, r6, r7}
d00024b8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00024bc:	f002 0207 	and.w	r2, r2, #7
d00024c0:	b132      	cbz	r2, d00024d0 <memchr+0x70>
d00024c2:	f810 3b01 	ldrb.w	r3, [r0], #1
d00024c6:	3a01      	subs	r2, #1
d00024c8:	ea83 0301 	eor.w	r3, r3, r1
d00024cc:	b113      	cbz	r3, d00024d4 <memchr+0x74>
d00024ce:	d1f8      	bne.n	d00024c2 <memchr+0x62>
d00024d0:	2000      	movs	r0, #0
d00024d2:	4770      	bx	lr
d00024d4:	3801      	subs	r0, #1
d00024d6:	4770      	bx	lr
d00024d8:	2d00      	cmp	r5, #0
d00024da:	bf06      	itte	eq
d00024dc:	4635      	moveq	r5, r6
d00024de:	3803      	subeq	r0, #3
d00024e0:	3807      	subne	r0, #7
d00024e2:	f015 0f01 	tst.w	r5, #1
d00024e6:	d107      	bne.n	d00024f8 <memchr+0x98>
d00024e8:	3001      	adds	r0, #1
d00024ea:	f415 7f80 	tst.w	r5, #256	; 0x100
d00024ee:	bf02      	ittt	eq
d00024f0:	3001      	addeq	r0, #1
d00024f2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d00024f6:	3001      	addeq	r0, #1
d00024f8:	bcf0      	pop	{r4, r5, r6, r7}
d00024fa:	3801      	subs	r0, #1
d00024fc:	4770      	bx	lr
d00024fe:	bf00      	nop

d0002500 <_free_r>:
d0002500:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0002502:	2900      	cmp	r1, #0
d0002504:	d048      	beq.n	d0002598 <_free_r+0x98>
d0002506:	f851 3c04 	ldr.w	r3, [r1, #-4]
d000250a:	9001      	str	r0, [sp, #4]
d000250c:	2b00      	cmp	r3, #0
d000250e:	f1a1 0404 	sub.w	r4, r1, #4
d0002512:	bfb8      	it	lt
d0002514:	18e4      	addlt	r4, r4, r3
d0002516:	f000 f8d3 	bl	d00026c0 <__malloc_lock>
d000251a:	4a20      	ldr	r2, [pc, #128]	; (d000259c <_free_r+0x9c>)
d000251c:	9801      	ldr	r0, [sp, #4]
d000251e:	6813      	ldr	r3, [r2, #0]
d0002520:	4615      	mov	r5, r2
d0002522:	b933      	cbnz	r3, d0002532 <_free_r+0x32>
d0002524:	6063      	str	r3, [r4, #4]
d0002526:	6014      	str	r4, [r2, #0]
d0002528:	b003      	add	sp, #12
d000252a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d000252e:	f000 b8cd 	b.w	d00026cc <__malloc_unlock>
d0002532:	42a3      	cmp	r3, r4
d0002534:	d90b      	bls.n	d000254e <_free_r+0x4e>
d0002536:	6821      	ldr	r1, [r4, #0]
d0002538:	1862      	adds	r2, r4, r1
d000253a:	4293      	cmp	r3, r2
d000253c:	bf04      	itt	eq
d000253e:	681a      	ldreq	r2, [r3, #0]
d0002540:	685b      	ldreq	r3, [r3, #4]
d0002542:	6063      	str	r3, [r4, #4]
d0002544:	bf04      	itt	eq
d0002546:	1852      	addeq	r2, r2, r1
d0002548:	6022      	streq	r2, [r4, #0]
d000254a:	602c      	str	r4, [r5, #0]
d000254c:	e7ec      	b.n	d0002528 <_free_r+0x28>
d000254e:	461a      	mov	r2, r3
d0002550:	685b      	ldr	r3, [r3, #4]
d0002552:	b10b      	cbz	r3, d0002558 <_free_r+0x58>
d0002554:	42a3      	cmp	r3, r4
d0002556:	d9fa      	bls.n	d000254e <_free_r+0x4e>
d0002558:	6811      	ldr	r1, [r2, #0]
d000255a:	1855      	adds	r5, r2, r1
d000255c:	42a5      	cmp	r5, r4
d000255e:	d10b      	bne.n	d0002578 <_free_r+0x78>
d0002560:	6824      	ldr	r4, [r4, #0]
d0002562:	4421      	add	r1, r4
d0002564:	1854      	adds	r4, r2, r1
d0002566:	42a3      	cmp	r3, r4
d0002568:	6011      	str	r1, [r2, #0]
d000256a:	d1dd      	bne.n	d0002528 <_free_r+0x28>
d000256c:	681c      	ldr	r4, [r3, #0]
d000256e:	685b      	ldr	r3, [r3, #4]
d0002570:	6053      	str	r3, [r2, #4]
d0002572:	4421      	add	r1, r4
d0002574:	6011      	str	r1, [r2, #0]
d0002576:	e7d7      	b.n	d0002528 <_free_r+0x28>
d0002578:	d902      	bls.n	d0002580 <_free_r+0x80>
d000257a:	230c      	movs	r3, #12
d000257c:	6003      	str	r3, [r0, #0]
d000257e:	e7d3      	b.n	d0002528 <_free_r+0x28>
d0002580:	6825      	ldr	r5, [r4, #0]
d0002582:	1961      	adds	r1, r4, r5
d0002584:	428b      	cmp	r3, r1
d0002586:	bf04      	itt	eq
d0002588:	6819      	ldreq	r1, [r3, #0]
d000258a:	685b      	ldreq	r3, [r3, #4]
d000258c:	6063      	str	r3, [r4, #4]
d000258e:	bf04      	itt	eq
d0002590:	1949      	addeq	r1, r1, r5
d0002592:	6021      	streq	r1, [r4, #0]
d0002594:	6054      	str	r4, [r2, #4]
d0002596:	e7c7      	b.n	d0002528 <_free_r+0x28>
d0002598:	b003      	add	sp, #12
d000259a:	bd30      	pop	{r4, r5, pc}
d000259c:	d0004b3c 	.word	0xd0004b3c

d00025a0 <_malloc_r>:
d00025a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00025a2:	1ccd      	adds	r5, r1, #3
d00025a4:	f025 0503 	bic.w	r5, r5, #3
d00025a8:	3508      	adds	r5, #8
d00025aa:	2d0c      	cmp	r5, #12
d00025ac:	bf38      	it	cc
d00025ae:	250c      	movcc	r5, #12
d00025b0:	2d00      	cmp	r5, #0
d00025b2:	4606      	mov	r6, r0
d00025b4:	db01      	blt.n	d00025ba <_malloc_r+0x1a>
d00025b6:	42a9      	cmp	r1, r5
d00025b8:	d903      	bls.n	d00025c2 <_malloc_r+0x22>
d00025ba:	230c      	movs	r3, #12
d00025bc:	6033      	str	r3, [r6, #0]
d00025be:	2000      	movs	r0, #0
d00025c0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00025c2:	f000 f87d 	bl	d00026c0 <__malloc_lock>
d00025c6:	4921      	ldr	r1, [pc, #132]	; (d000264c <_malloc_r+0xac>)
d00025c8:	680a      	ldr	r2, [r1, #0]
d00025ca:	4614      	mov	r4, r2
d00025cc:	b99c      	cbnz	r4, d00025f6 <_malloc_r+0x56>
d00025ce:	4f20      	ldr	r7, [pc, #128]	; (d0002650 <_malloc_r+0xb0>)
d00025d0:	683b      	ldr	r3, [r7, #0]
d00025d2:	b923      	cbnz	r3, d00025de <_malloc_r+0x3e>
d00025d4:	4621      	mov	r1, r4
d00025d6:	4630      	mov	r0, r6
d00025d8:	f000 f862 	bl	d00026a0 <_sbrk_r>
d00025dc:	6038      	str	r0, [r7, #0]
d00025de:	4629      	mov	r1, r5
d00025e0:	4630      	mov	r0, r6
d00025e2:	f000 f85d 	bl	d00026a0 <_sbrk_r>
d00025e6:	1c43      	adds	r3, r0, #1
d00025e8:	d123      	bne.n	d0002632 <_malloc_r+0x92>
d00025ea:	230c      	movs	r3, #12
d00025ec:	6033      	str	r3, [r6, #0]
d00025ee:	4630      	mov	r0, r6
d00025f0:	f000 f86c 	bl	d00026cc <__malloc_unlock>
d00025f4:	e7e3      	b.n	d00025be <_malloc_r+0x1e>
d00025f6:	6823      	ldr	r3, [r4, #0]
d00025f8:	1b5b      	subs	r3, r3, r5
d00025fa:	d417      	bmi.n	d000262c <_malloc_r+0x8c>
d00025fc:	2b0b      	cmp	r3, #11
d00025fe:	d903      	bls.n	d0002608 <_malloc_r+0x68>
d0002600:	6023      	str	r3, [r4, #0]
d0002602:	441c      	add	r4, r3
d0002604:	6025      	str	r5, [r4, #0]
d0002606:	e004      	b.n	d0002612 <_malloc_r+0x72>
d0002608:	6863      	ldr	r3, [r4, #4]
d000260a:	42a2      	cmp	r2, r4
d000260c:	bf0c      	ite	eq
d000260e:	600b      	streq	r3, [r1, #0]
d0002610:	6053      	strne	r3, [r2, #4]
d0002612:	4630      	mov	r0, r6
d0002614:	f000 f85a 	bl	d00026cc <__malloc_unlock>
d0002618:	f104 000b 	add.w	r0, r4, #11
d000261c:	1d23      	adds	r3, r4, #4
d000261e:	f020 0007 	bic.w	r0, r0, #7
d0002622:	1ac2      	subs	r2, r0, r3
d0002624:	d0cc      	beq.n	d00025c0 <_malloc_r+0x20>
d0002626:	1a1b      	subs	r3, r3, r0
d0002628:	50a3      	str	r3, [r4, r2]
d000262a:	e7c9      	b.n	d00025c0 <_malloc_r+0x20>
d000262c:	4622      	mov	r2, r4
d000262e:	6864      	ldr	r4, [r4, #4]
d0002630:	e7cc      	b.n	d00025cc <_malloc_r+0x2c>
d0002632:	1cc4      	adds	r4, r0, #3
d0002634:	f024 0403 	bic.w	r4, r4, #3
d0002638:	42a0      	cmp	r0, r4
d000263a:	d0e3      	beq.n	d0002604 <_malloc_r+0x64>
d000263c:	1a21      	subs	r1, r4, r0
d000263e:	4630      	mov	r0, r6
d0002640:	f000 f82e 	bl	d00026a0 <_sbrk_r>
d0002644:	3001      	adds	r0, #1
d0002646:	d1dd      	bne.n	d0002604 <_malloc_r+0x64>
d0002648:	e7cf      	b.n	d00025ea <_malloc_r+0x4a>
d000264a:	bf00      	nop
d000264c:	d0004b3c 	.word	0xd0004b3c
d0002650:	d0004b40 	.word	0xd0004b40

d0002654 <_realloc_r>:
d0002654:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0002656:	4607      	mov	r7, r0
d0002658:	4614      	mov	r4, r2
d000265a:	460e      	mov	r6, r1
d000265c:	b921      	cbnz	r1, d0002668 <_realloc_r+0x14>
d000265e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0002662:	4611      	mov	r1, r2
d0002664:	f7ff bf9c 	b.w	d00025a0 <_malloc_r>
d0002668:	b922      	cbnz	r2, d0002674 <_realloc_r+0x20>
d000266a:	f7ff ff49 	bl	d0002500 <_free_r>
d000266e:	4625      	mov	r5, r4
d0002670:	4628      	mov	r0, r5
d0002672:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0002674:	f000 f830 	bl	d00026d8 <_malloc_usable_size_r>
d0002678:	42a0      	cmp	r0, r4
d000267a:	d20f      	bcs.n	d000269c <_realloc_r+0x48>
d000267c:	4621      	mov	r1, r4
d000267e:	4638      	mov	r0, r7
d0002680:	f7ff ff8e 	bl	d00025a0 <_malloc_r>
d0002684:	4605      	mov	r5, r0
d0002686:	2800      	cmp	r0, #0
d0002688:	d0f2      	beq.n	d0002670 <_realloc_r+0x1c>
d000268a:	4631      	mov	r1, r6
d000268c:	4622      	mov	r2, r4
d000268e:	f7ff f905 	bl	d000189c <memcpy>
d0002692:	4631      	mov	r1, r6
d0002694:	4638      	mov	r0, r7
d0002696:	f7ff ff33 	bl	d0002500 <_free_r>
d000269a:	e7e9      	b.n	d0002670 <_realloc_r+0x1c>
d000269c:	4635      	mov	r5, r6
d000269e:	e7e7      	b.n	d0002670 <_realloc_r+0x1c>

d00026a0 <_sbrk_r>:
d00026a0:	b538      	push	{r3, r4, r5, lr}
d00026a2:	4d06      	ldr	r5, [pc, #24]	; (d00026bc <_sbrk_r+0x1c>)
d00026a4:	2300      	movs	r3, #0
d00026a6:	4604      	mov	r4, r0
d00026a8:	4608      	mov	r0, r1
d00026aa:	602b      	str	r3, [r5, #0]
d00026ac:	f7fe fa0a 	bl	d0000ac4 <_sbrk>
d00026b0:	1c43      	adds	r3, r0, #1
d00026b2:	d102      	bne.n	d00026ba <_sbrk_r+0x1a>
d00026b4:	682b      	ldr	r3, [r5, #0]
d00026b6:	b103      	cbz	r3, d00026ba <_sbrk_r+0x1a>
d00026b8:	6023      	str	r3, [r4, #0]
d00026ba:	bd38      	pop	{r3, r4, r5, pc}
d00026bc:	d00066e0 	.word	0xd00066e0

d00026c0 <__malloc_lock>:
d00026c0:	4801      	ldr	r0, [pc, #4]	; (d00026c8 <__malloc_lock+0x8>)
d00026c2:	f000 b811 	b.w	d00026e8 <__retarget_lock_acquire_recursive>
d00026c6:	bf00      	nop
d00026c8:	d00066e8 	.word	0xd00066e8

d00026cc <__malloc_unlock>:
d00026cc:	4801      	ldr	r0, [pc, #4]	; (d00026d4 <__malloc_unlock+0x8>)
d00026ce:	f000 b80c 	b.w	d00026ea <__retarget_lock_release_recursive>
d00026d2:	bf00      	nop
d00026d4:	d00066e8 	.word	0xd00066e8

d00026d8 <_malloc_usable_size_r>:
d00026d8:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00026dc:	1f18      	subs	r0, r3, #4
d00026de:	2b00      	cmp	r3, #0
d00026e0:	bfbc      	itt	lt
d00026e2:	580b      	ldrlt	r3, [r1, r0]
d00026e4:	18c0      	addlt	r0, r0, r3
d00026e6:	4770      	bx	lr

d00026e8 <__retarget_lock_acquire_recursive>:
d00026e8:	4770      	bx	lr

d00026ea <__retarget_lock_release_recursive>:
d00026ea:	4770      	bx	lr

d00026ec <hid_keymap_uk>:
d00026ec:	0000 0000 6261 6463 6665 6867 6a69 6c6b     ....abcdefghijkl
d00026fc:	6e6d 706f 7271 7473 7675 7877 7a79 3231     mnopqrstuvwxyz12
d000270c:	3433 3635 3837 3039 000a 0000 2d20 5b3d     34567890.... -=[
d000271c:	235d 3b5c 6027 2e2c 002f 0000 0000 0000     ]#\;'`,./.......
	...

d000276c <hid_keymap_uk_shift>:
d000276c:	0000 0000 4241 4443 4645 4847 4a49 4c4b     ....ABCDEFGHIJKL
d000277c:	4e4d 504f 5251 5453 5655 5857 5a59 2221     MNOPQRSTUVWXYZ!"
d000278c:	24a3 5e25 2a26 2928 0000 0000 5f00 7b2b     .$%^&*()....._+{
d000279c:	7e7d 3a7c ac40 3e3c 003f 0000 0000 0000     }~|:@.<>?.......
	...
d00027ec:	5242 4145 204b 4e4f 4c20 4e49 2045 6c25     BREAK ON LINE %l
d00027fc:	0075 0000 694c 656e 6420 6c65 7465 6465     u...Line deleted
d000280c:	0000 0000 7250 676f 6172 206d 7566 6c6c     ....Program full
d000281c:	0000 0000 494c 5453 0000 0000 6425 2520     ....LIST....%d %
d000282c:	0073 0000 654e 2077 7270 676f 6172 006d     s...New program.
d000283c:	4548 504c 0000 0000 6f43 6d6d 6e61 7364     HELP....Commands
d000284c:	203a 494c 5453 202c 5552 2c4e 4e20 5745     : LIST, RUN, NEW
d000285c:	202c 5250 4e49 2c54 4c20 5445 202c 4f47     , PRINT, LET, GO
d000286c:	4f54 202c 4f47 5553 2c42 5220 5445 5255     TO, GOSUB, RETUR
d000287c:	004e 0000 4649 202c 4854 4e45 0000 0000     N...IF, THEN....
d000288c:	533f 6e79 6174 2078 7265 6f72 0072 0000     ?Syntax error...
d000289c:	4e45 2044 4649 0000 454c 2054 0000 0000     END IF..LET ....
d00028ac:	423f 6461 7620 7261 0000 0000 4d3f 7369     ?Bad var....?Mis
d00028bc:	6973 676e 3d20 0000 5250 4e49 2054 0000     sing =..PRINT ..
d00028cc:	6425 0000 4f47 4f54 0020 0000 4f47 5553     %d..GOTO ...GOSU
d00028dc:	2042 0000 533f 6174 6b63 4f20 6576 6672     B ..?Stack Overf
d00028ec:	6f6c 0077 523f 7465 7275 206e 6977 6874     low.?Return with
d00028fc:	756f 2074 4f47 5553 0042 0000 4d3f 7369     out GOSUB...?Mis
d000290c:	6973 676e 5420 4548 004e 0000 423f 6461     sing THEN...?Bad
d000291c:	4720 544f 004f 0000 423f 6461 4720 534f      GOTO...?Bad GOS
d000292c:	4255 0000 203e 7325 0000 0000 4242 2043     UB..> %s....BBC 
d000293c:	4142 4953 0a58 0000 4953 4244 584f 4220     BASIX...SIDBOX B
d000294c:	5341 4349 5620 2e30 0031 0000 7954 6570     ASIC V0.1...Type
d000295c:	4820 4c45 2050 6f66 2072 6568 706c 0000      HELP for help..
d000296c:	3031 5020 4952 544e 2220 6568 6c6c 206f     10 PRINT "hello 
d000297c:	6f77 6c72 2264 0000 3032 2030 5250 4e49     world"..200 PRIN
d000298c:	2054 5422 6968 2073 7369 6c20 6e69 2065     T "This is line 
d000299c:	3032 2130 2121 0022 3032 4720 534f 4255     200!!!".20 GOSUB
d00029ac:	3220 3030 0000 0000 3132 2030 4552 5554      200....210 RETU
d00029bc:	4e52 0000 3033 5020 4952 544e 2220 6873     RN..30 PRINT "sh
d00029cc:	756f 646c 6e20 7665 7265 7320 6565 7420     ould never see t
d00029dc:	6968 2073 696c 656e 0022 0000 3332 2030     his line"...230 
d00029ec:	5250 4e49 2054 6222 746f 6f74 226d 0000     PRINT "bottom"..
d00029fc:	7242 6165 0d6b 000a                         Break...

d0002a04 <_ctype_>:
d0002a04:	2000 2020 2020 2020 2020 2828 2828 2028     .         ((((( 
d0002a14:	2020 2020 2020 2020 2020 2020 2020 2020                     
d0002a24:	8820 1010 1010 1010 1010 1010 1010 1010      ...............
d0002a34:	0410 0404 0404 0404 0404 1004 1010 1010     ................
d0002a44:	1010 4141 4141 4141 0101 0101 0101 0101     ..AAAAAA........
d0002a54:	0101 0101 0101 0101 0101 0101 1010 1010     ................
d0002a64:	1010 4242 4242 4242 0202 0202 0202 0202     ..BBBBBB........
d0002a74:	0202 0202 0202 0202 0202 0202 1010 1010     ................
d0002a84:	0020 0000 0000 0000 0000 0000 0000 0000      ...............
	...
d0002b04:	2300 302d 202b 6800 4c6c 6500 6766 4645     .#-0+ .hlL.efgEF
d0002b14:	0047 3130 3332 3534 3736 3938 4241 4443     G.0123456789ABCD
d0002b24:	4645 3000 3231 3433 3635 3837 6139 6362     EF.0123456789abc
d0002b34:	6564 0066                                   def.

Disassembly of section .init:

d0002b38 <_init>:
d0002b38:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0002b3a:	bf00      	nop

Disassembly of section .fini:

d0002b3c <_fini>:
d0002b3c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0002b3e:	bf00      	nop
