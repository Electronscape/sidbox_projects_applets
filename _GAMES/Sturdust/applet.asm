
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0078a50 <applet_entry>:
d0078a50:	f003 bc28 	b.w	d007c2a4 <main>

d0078a54 <memset>:
d0078a54:	4402      	add	r2, r0
d0078a56:	4603      	mov	r3, r0
d0078a58:	4293      	cmp	r3, r2
d0078a5a:	d100      	bne.n	d0078a5e <memset+0xa>
d0078a5c:	4770      	bx	lr
d0078a5e:	f803 1b01 	strb.w	r1, [r3], #1
d0078a62:	e7f9      	b.n	d0078a58 <memset+0x4>

d0078a64 <initDisplayBuffers>:
d0078a64:	4b0c      	ldr	r3, [pc, #48]	; (d0078a98 <initDisplayBuffers+0x34>)
d0078a66:	4a0d      	ldr	r2, [pc, #52]	; (d0078a9c <initDisplayBuffers+0x38>)
d0078a68:	f8d3 00ec 	ldr.w	r0, [r3, #236]	; 0xec
d0078a6c:	b410      	push	{r4}
d0078a6e:	f8d3 40f4 	ldr.w	r4, [r3, #244]	; 0xf4
d0078a72:	f8d3 10f4 	ldr.w	r1, [r3, #244]	; 0xf4
d0078a76:	6002      	str	r2, [r0, #0]
d0078a78:	6022      	str	r2, [r4, #0]
d0078a7a:	4809      	ldr	r0, [pc, #36]	; (d0078aa0 <initDisplayBuffers+0x3c>)
d0078a7c:	680a      	ldr	r2, [r1, #0]
d0078a7e:	4909      	ldr	r1, [pc, #36]	; (d0078aa4 <initDisplayBuffers+0x40>)
d0078a80:	6002      	str	r2, [r0, #0]
d0078a82:	f8d3 00f0 	ldr.w	r0, [r3, #240]	; 0xf0
d0078a86:	f8d3 30f0 	ldr.w	r3, [r3, #240]	; 0xf0
d0078a8a:	4a07      	ldr	r2, [pc, #28]	; (d0078aa8 <initDisplayBuffers+0x44>)
d0078a8c:	6008      	str	r0, [r1, #0]
d0078a8e:	681b      	ldr	r3, [r3, #0]
d0078a90:	f85d 4b04 	ldr.w	r4, [sp], #4
d0078a94:	6013      	str	r3, [r2, #0]
d0078a96:	4770      	bx	lr
d0078a98:	2001f000 	.word	0x2001f000
d0078a9c:	d06b2000 	.word	0xd06b2000
d0078aa0:	d0083490 	.word	0xd0083490
d0078aa4:	d0083494 	.word	0xd0083494
d0078aa8:	d008349c 	.word	0xd008349c

d0078aac <ShowBuffer>:
d0078aac:	4b09      	ldr	r3, [pc, #36]	; (d0078ad4 <ShowBuffer+0x28>)
d0078aae:	b140      	cbz	r0, d0078ac2 <ShowBuffer+0x16>
d0078ab0:	f8d3 10ec 	ldr.w	r1, [r3, #236]	; 0xec
d0078ab4:	4808      	ldr	r0, [pc, #32]	; (d0078ad8 <ShowBuffer+0x2c>)
d0078ab6:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d0078aba:	4a08      	ldr	r2, [pc, #32]	; (d0078adc <ShowBuffer+0x30>)
d0078abc:	6008      	str	r0, [r1, #0]
d0078abe:	601a      	str	r2, [r3, #0]
d0078ac0:	4770      	bx	lr
d0078ac2:	f8d3 10ec 	ldr.w	r1, [r3, #236]	; 0xec
d0078ac6:	4805      	ldr	r0, [pc, #20]	; (d0078adc <ShowBuffer+0x30>)
d0078ac8:	f8d3 30f4 	ldr.w	r3, [r3, #244]	; 0xf4
d0078acc:	4a02      	ldr	r2, [pc, #8]	; (d0078ad8 <ShowBuffer+0x2c>)
d0078ace:	6008      	str	r0, [r1, #0]
d0078ad0:	601a      	str	r2, [r3, #0]
d0078ad2:	4770      	bx	lr
d0078ad4:	2001f000 	.word	0x2001f000
d0078ad8:	d06b2000 	.word	0xd06b2000
d0078adc:	d06d9000 	.word	0xd06d9000

d0078ae0 <randomi>:
d0078ae0:	4907      	ldr	r1, [pc, #28]	; (d0078b00 <randomi+0x20>)
d0078ae2:	680b      	ldr	r3, [r1, #0]
d0078ae4:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0078ae8:	eb03 0342 	add.w	r3, r3, r2, lsl #1
d0078aec:	337d      	adds	r3, #125	; 0x7d
d0078aee:	141a      	asrs	r2, r3, #16
d0078af0:	600b      	str	r3, [r1, #0]
d0078af2:	fb92 f3f0 	sdiv	r3, r2, r0
d0078af6:	fb03 2010 	mls	r0, r3, r0, r2
d0078afa:	b200      	sxth	r0, r0
d0078afc:	4770      	bx	lr
d0078afe:	bf00      	nop
d0078b00:	d007eee8 	.word	0xd007eee8

d0078b04 <ChannelAssign>:
d0078b04:	b5f0      	push	{r4, r5, r6, r7, lr}
d0078b06:	4e1a      	ldr	r6, [pc, #104]	; (d0078b70 <ChannelAssign+0x6c>)
d0078b08:	f8dd c014 	ldr.w	ip, [sp, #20]
d0078b0c:	eb06 0480 	add.w	r4, r6, r0, lsl #2
d0078b10:	f89d e018 	ldrb.w	lr, [sp, #24]
d0078b14:	f8d4 5174 	ldr.w	r5, [r4, #372]	; 0x174
d0078b18:	b31d      	cbz	r5, d0078b62 <ChannelAssign+0x5e>
d0078b1a:	f8d4 0174 	ldr.w	r0, [r4, #372]	; 0x174
d0078b1e:	005b      	lsls	r3, r3, #1
d0078b20:	f8d4 5174 	ldr.w	r5, [r4, #372]	; 0x174
d0078b24:	2600      	movs	r6, #0
d0078b26:	6201      	str	r1, [r0, #32]
d0078b28:	2700      	movs	r7, #0
d0078b2a:	f8d4 1174 	ldr.w	r1, [r4, #372]	; 0x174
d0078b2e:	2000      	movs	r0, #0
d0078b30:	63ab      	str	r3, [r5, #56]	; 0x38
d0078b32:	f8d4 3174 	ldr.w	r3, [r4, #372]	; 0x174
d0078b36:	610a      	str	r2, [r1, #16]
d0078b38:	f8d4 2174 	ldr.w	r2, [r4, #372]	; 0x174
d0078b3c:	f8c3 c01c 	str.w	ip, [r3, #28]
d0078b40:	7811      	ldrb	r1, [r2, #0]
d0078b42:	f36e 0141 	bfi	r1, lr, #1, #1
d0078b46:	f8d4 e174 	ldr.w	lr, [r4, #372]	; 0x174
d0078b4a:	f8d4 5174 	ldr.w	r5, [r4, #372]	; 0x174
d0078b4e:	f8d4 3174 	ldr.w	r3, [r4, #372]	; 0x174
d0078b52:	7011      	strb	r1, [r2, #0]
d0078b54:	e9ce 6702 	strd	r6, r7, [lr, #8]
d0078b58:	e9c5 670a 	strd	r6, r7, [r5, #40]	; 0x28
d0078b5c:	e9c3 c00c 	strd	ip, r0, [r3, #48]	; 0x30
d0078b60:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0078b62:	68b3      	ldr	r3, [r6, #8]
d0078b64:	4601      	mov	r1, r0
d0078b66:	4803      	ldr	r0, [pc, #12]	; (d0078b74 <ChannelAssign+0x70>)
d0078b68:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0078b6c:	4718      	bx	r3
d0078b6e:	bf00      	nop
d0078b70:	2001f000 	.word	0x2001f000
d0078b74:	d007deec 	.word	0xd007deec

d0078b78 <PlayChannel>:
d0078b78:	4b04      	ldr	r3, [pc, #16]	; (d0078b8c <PlayChannel+0x14>)
d0078b7a:	0080      	lsls	r0, r0, #2
d0078b7c:	4403      	add	r3, r0
d0078b7e:	685a      	ldr	r2, [r3, #4]
d0078b80:	7813      	ldrb	r3, [r2, #0]
d0078b82:	f043 0301 	orr.w	r3, r3, #1
d0078b86:	7013      	strb	r3, [r2, #0]
d0078b88:	4770      	bx	lr
d0078b8a:	bf00      	nop
d0078b8c:	2001f170 	.word	0x2001f170

d0078b90 <StopChannel>:
d0078b90:	4b04      	ldr	r3, [pc, #16]	; (d0078ba4 <StopChannel+0x14>)
d0078b92:	0080      	lsls	r0, r0, #2
d0078b94:	4403      	add	r3, r0
d0078b96:	685b      	ldr	r3, [r3, #4]
d0078b98:	781a      	ldrb	r2, [r3, #0]
d0078b9a:	f36f 0200 	bfc	r2, #0, #1
d0078b9e:	701a      	strb	r2, [r3, #0]
d0078ba0:	4770      	bx	lr
d0078ba2:	bf00      	nop
d0078ba4:	2001f170 	.word	0x2001f170

d0078ba8 <SetChannelFrequency>:
d0078ba8:	4b02      	ldr	r3, [pc, #8]	; (d0078bb4 <SetChannelFrequency+0xc>)
d0078baa:	0080      	lsls	r0, r0, #2
d0078bac:	4403      	add	r3, r0
d0078bae:	685b      	ldr	r3, [r3, #4]
d0078bb0:	6119      	str	r1, [r3, #16]
d0078bb2:	4770      	bx	lr
d0078bb4:	2001f170 	.word	0x2001f170

d0078bb8 <SetChannelVolume>:
d0078bb8:	4b02      	ldr	r3, [pc, #8]	; (d0078bc4 <SetChannelVolume+0xc>)
d0078bba:	0080      	lsls	r0, r0, #2
d0078bbc:	4403      	add	r3, r0
d0078bbe:	685b      	ldr	r3, [r3, #4]
d0078bc0:	6399      	str	r1, [r3, #56]	; 0x38
d0078bc2:	4770      	bx	lr
d0078bc4:	2001f170 	.word	0x2001f170

d0078bc8 <GetChannelVolume>:
d0078bc8:	0080      	lsls	r0, r0, #2
d0078bca:	4b02      	ldr	r3, [pc, #8]	; (d0078bd4 <GetChannelVolume+0xc>)
d0078bcc:	4403      	add	r3, r0
d0078bce:	685b      	ldr	r3, [r3, #4]
d0078bd0:	6b98      	ldr	r0, [r3, #56]	; 0x38
d0078bd2:	4770      	bx	lr
d0078bd4:	2001f170 	.word	0x2001f170

d0078bd8 <initMalloc>:
d0078bd8:	4902      	ldr	r1, [pc, #8]	; (d0078be4 <initMalloc+0xc>)
d0078bda:	4b03      	ldr	r3, [pc, #12]	; (d0078be8 <initMalloc+0x10>)
d0078bdc:	4a03      	ldr	r2, [pc, #12]	; (d0078bec <initMalloc+0x14>)
d0078bde:	1a5b      	subs	r3, r3, r1
d0078be0:	6013      	str	r3, [r2, #0]
d0078be2:	4770      	bx	lr
d0078be4:	d013f120 	.word	0xd013f120
d0078be8:	d0600000 	.word	0xd0600000
d0078bec:	d00834a0 	.word	0xd00834a0

d0078bf0 <_write>:
d0078bf0:	4610      	mov	r0, r2
d0078bf2:	4770      	bx	lr

d0078bf4 <_read>:
d0078bf4:	b508      	push	{r3, lr}
d0078bf6:	f003 ff41 	bl	d007ca7c <__errno>
d0078bfa:	2258      	movs	r2, #88	; 0x58
d0078bfc:	4603      	mov	r3, r0
d0078bfe:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0078c02:	601a      	str	r2, [r3, #0]
d0078c04:	bd08      	pop	{r3, pc}
d0078c06:	bf00      	nop

d0078c08 <_close>:
d0078c08:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0078c0c:	4770      	bx	lr
d0078c0e:	bf00      	nop

d0078c10 <_fstat>:
d0078c10:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d0078c14:	2000      	movs	r0, #0
d0078c16:	604b      	str	r3, [r1, #4]
d0078c18:	4770      	bx	lr
d0078c1a:	bf00      	nop

d0078c1c <_lseek>:
d0078c1c:	2000      	movs	r0, #0
d0078c1e:	4770      	bx	lr

d0078c20 <_sbrk>:
d0078c20:	4904      	ldr	r1, [pc, #16]	; (d0078c34 <_sbrk+0x14>)
d0078c22:	4a05      	ldr	r2, [pc, #20]	; (d0078c38 <_sbrk+0x18>)
d0078c24:	680b      	ldr	r3, [r1, #0]
d0078c26:	2b00      	cmp	r3, #0
d0078c28:	bf08      	it	eq
d0078c2a:	4613      	moveq	r3, r2
d0078c2c:	181a      	adds	r2, r3, r0
d0078c2e:	4618      	mov	r0, r3
d0078c30:	600a      	str	r2, [r1, #0]
d0078c32:	4770      	bx	lr
d0078c34:	d007eef4 	.word	0xd007eef4
d0078c38:	d013f120 	.word	0xd013f120

d0078c3c <_isatty>:
d0078c3c:	2001      	movs	r0, #1
d0078c3e:	4770      	bx	lr

d0078c40 <_exit>:
d0078c40:	e7fe      	b.n	d0078c40 <_exit>
d0078c42:	bf00      	nop

d0078c44 <_getpid>:
d0078c44:	2001      	movs	r0, #1
d0078c46:	4770      	bx	lr

d0078c48 <_kill>:
d0078c48:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0078c4c:	4770      	bx	lr
d0078c4e:	bf00      	nop

d0078c50 <renderShipDeath.part.0>:
d0078c50:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0078c52:	4c33      	ldr	r4, [pc, #204]	; (d0078d20 <renderShipDeath.part.0+0xd0>)
d0078c54:	4f33      	ldr	r7, [pc, #204]	; (d0078d24 <renderShipDeath.part.0+0xd4>)
d0078c56:	f104 0640 	add.w	r6, r4, #64	; 0x40
d0078c5a:	ed2d 8b02 	vpush	{d8}
d0078c5e:	ed9f 8b2e 	vldr	d8, [pc, #184]	; d0078d18 <renderShipDeath.part.0+0xc8>
d0078c62:	edd4 3a04 	vldr	s7, [r4, #16]
d0078c66:	3410      	adds	r4, #16
d0078c68:	ed14 2a03 	vldr	s4, [r4, #-12]
d0078c6c:	eeb7 7ae3 	vcvt.f64.f32	d7, s7
d0078c70:	ed54 2a02 	vldr	s5, [r4, #-8]
d0078c74:	ed14 3a01 	vldr	s6, [r4, #-4]
d0078c78:	eeb7 4ac2 	vcvt.f64.f32	d4, s4
d0078c7c:	ed94 0a10 	vldr	s0, [r4, #64]	; 0x40
d0078c80:	eeb7 5ae2 	vcvt.f64.f32	d5, s5
d0078c84:	ee27 7b08 	vmul.f64	d7, d7, d8
d0078c88:	edd4 0a0f 	vldr	s1, [r4, #60]	; 0x3c
d0078c8c:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0078c90:	edd4 1a0d 	vldr	s3, [r4, #52]	; 0x34
d0078c94:	eeb7 6ac3 	vcvt.f64.f32	d6, s6
d0078c98:	f8d7 5124 	ldr.w	r5, [r7, #292]	; 0x124
d0078c9c:	ee24 4b08 	vmul.f64	d4, d4, d8
d0078ca0:	eeb7 7bc7 	vcvt.f32.f64	s14, d7
d0078ca4:	eefd 7ac0 	vcvt.s32.f32	s15, s0
d0078ca8:	ee25 5b08 	vmul.f64	d5, d5, d8
d0078cac:	ee17 3a90 	vmov	r3, s15
d0078cb0:	ee26 6b08 	vmul.f64	d6, d6, d8
d0078cb4:	eefd 7ae0 	vcvt.s32.f32	s15, s1
d0078cb8:	eeb7 4bc4 	vcvt.f32.f64	s8, d4
d0078cbc:	eeb7 5bc5 	vcvt.f32.f64	s10, d5
d0078cc0:	ee17 2a90 	vmov	r2, s15
d0078cc4:	eefd 7ac1 	vcvt.s32.f32	s15, s2
d0078cc8:	eeb7 6bc6 	vcvt.f32.f64	s12, d6
d0078ccc:	ed04 4a03 	vstr	s8, [r4, #-12]
d0078cd0:	ee31 2a82 	vadd.f32	s4, s3, s4
d0078cd4:	ed04 5a02 	vstr	s10, [r4, #-8]
d0078cd8:	ee71 2a22 	vadd.f32	s5, s2, s5
d0078cdc:	ee17 1a90 	vmov	r1, s15
d0078ce0:	ee30 3a83 	vadd.f32	s6, s1, s6
d0078ce4:	ed04 6a01 	vstr	s12, [r4, #-4]
d0078ce8:	ee70 3a23 	vadd.f32	s7, s0, s7
d0078cec:	ed84 2a0d 	vstr	s4, [r4, #52]	; 0x34
d0078cf0:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d0078cf4:	edc4 2a0e 	vstr	s5, [r4, #56]	; 0x38
d0078cf8:	ed84 3a0f 	vstr	s6, [r4, #60]	; 0x3c
d0078cfc:	edc4 3a10 	vstr	s7, [r4, #64]	; 0x40
d0078d00:	ee17 0a90 	vmov	r0, s15
d0078d04:	ed84 7a00 	vstr	s14, [r4]
d0078d08:	47a8      	blx	r5
d0078d0a:	42b4      	cmp	r4, r6
d0078d0c:	d1a9      	bne.n	d0078c62 <renderShipDeath.part.0+0x12>
d0078d0e:	ecbd 8b02 	vpop	{d8}
d0078d12:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0078d14:	f3af 8000 	nop.w
d0078d18:	4ec4ec4e 	.word	0x4ec4ec4e
d0078d1c:	3feec4ec 	.word	0x3feec4ec
d0078d20:	d007f07c 	.word	0xd007f07c
d0078d24:	2001f000 	.word	0x2001f000

d0078d28 <CreateExplosions.constprop.0>:
d0078d28:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0078d2c:	2400      	movs	r4, #0
d0078d2e:	4605      	mov	r5, r0
d0078d30:	f8df 8108 	ldr.w	r8, [pc, #264]	; d0078e3c <CreateExplosions.constprop.0+0x114>
d0078d34:	4e40      	ldr	r6, [pc, #256]	; (d0078e38 <CreateExplosions.constprop.0+0x110>)
d0078d36:	ed2d 8b06 	vpush	{d8-d10}
d0078d3a:	ed9f 8b3d 	vldr	d8, [pc, #244]	; d0078e30 <CreateExplosions.constprop.0+0x108>
d0078d3e:	ee09 1a90 	vmov	s19, r1
d0078d42:	ee09 2a10 	vmov	s18, r2
d0078d46:	e05c      	b.n	d0078e02 <CreateExplosions.constprop.0+0xda>
d0078d48:	f7ff feca 	bl	d0078ae0 <randomi>
d0078d4c:	eeb8 7ae9 	vcvt.f32.s32	s14, s19
d0078d50:	eef8 7ac9 	vcvt.f32.s32	s15, s18
d0078d54:	3028      	adds	r0, #40	; 0x28
d0078d56:	f8c7 a004 	str.w	sl, [r7, #4]
d0078d5a:	3d01      	subs	r5, #1
d0078d5c:	ed87 7a02 	vstr	s14, [r7, #8]
d0078d60:	edc7 7a03 	vstr	s15, [r7, #12]
d0078d64:	f808 0039 	strb.w	r0, [r8, r9, lsl #3]
d0078d68:	f003 fe9c 	bl	d007caa4 <rand>
d0078d6c:	f010 0f01 	tst.w	r0, #1
d0078d70:	fe4a 7a8a 	vseleq.f32	s15, s21, s20
d0078d74:	edc7 7a04 	vstr	s15, [r7, #16]
d0078d78:	f003 fe94 	bl	d007caa4 <rand>
d0078d7c:	f010 0f01 	tst.w	r0, #1
d0078d80:	fe0a aa8a 	vseleq.f32	s20, s21, s20
d0078d84:	ed87 aa05 	vstr	s20, [r7, #20]
d0078d88:	f003 fe8c 	bl	d007caa4 <rand>
d0078d8c:	fb86 3200 	smull	r3, r2, r6, r0
d0078d90:	17c3      	asrs	r3, r0, #31
d0078d92:	ed97 7a05 	vldr	s14, [r7, #20]
d0078d96:	ebc3 03e2 	rsb	r3, r3, r2, asr #3
d0078d9a:	eeb7 7ac7 	vcvt.f64.f32	d7, s14
d0078d9e:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0078da2:	ee27 6b08 	vmul.f64	d6, d7, d8
d0078da6:	eba0 0383 	sub.w	r3, r0, r3, lsl #2
d0078daa:	ee07 3a10 	vmov	s14, r3
d0078dae:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0078db2:	eeb7 7ac7 	vcvt.f64.f32	d7, s14
d0078db6:	ee27 7b06 	vmul.f64	d7, d7, d6
d0078dba:	eeb7 7bc7 	vcvt.f32.f64	s14, d7
d0078dbe:	ed87 7a05 	vstr	s14, [r7, #20]
d0078dc2:	f003 fe6f 	bl	d007caa4 <rand>
d0078dc6:	fb86 3200 	smull	r3, r2, r6, r0
d0078dca:	17c3      	asrs	r3, r0, #31
d0078dcc:	ed97 7a04 	vldr	s14, [r7, #16]
d0078dd0:	ebc3 03e2 	rsb	r3, r3, r2, asr #3
d0078dd4:	eeb7 7ac7 	vcvt.f64.f32	d7, s14
d0078dd8:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0078ddc:	ee27 6b08 	vmul.f64	d6, d7, d8
d0078de0:	eba0 0383 	sub.w	r3, r0, r3, lsl #2
d0078de4:	ee07 3a10 	vmov	s14, r3
d0078de8:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0078dec:	eeb7 7ac7 	vcvt.f64.f32	d7, s14
d0078df0:	ee27 7b06 	vmul.f64	d7, d7, d6
d0078df4:	eeb7 7bc7 	vcvt.f32.f64	s14, d7
d0078df8:	ed87 7a04 	vstr	s14, [r7, #16]
d0078dfc:	3401      	adds	r4, #1
d0078dfe:	2c64      	cmp	r4, #100	; 0x64
d0078e00:	d012      	beq.n	d0078e28 <CreateExplosions.constprop.0+0x100>
d0078e02:	eb04 0944 	add.w	r9, r4, r4, lsl #1
d0078e06:	eeb0 aa00 	vmov.f32	s20, #0	; 0x40000000  2.0
d0078e0a:	eef8 aa00 	vmov.f32	s21, #128	; 0xc0000000 -2.0
d0078e0e:	2014      	movs	r0, #20
d0078e10:	f818 a039 	ldrb.w	sl, [r8, r9, lsl #3]
d0078e14:	eb08 07c9 	add.w	r7, r8, r9, lsl #3
d0078e18:	f1ba 0f00 	cmp.w	sl, #0
d0078e1c:	d1ee      	bne.n	d0078dfc <CreateExplosions.constprop.0+0xd4>
d0078e1e:	2d00      	cmp	r5, #0
d0078e20:	d192      	bne.n	d0078d48 <CreateExplosions.constprop.0+0x20>
d0078e22:	3401      	adds	r4, #1
d0078e24:	2c64      	cmp	r4, #100	; 0x64
d0078e26:	d1e9      	bne.n	d0078dfc <CreateExplosions.constprop.0+0xd4>
d0078e28:	ecbd 8b06 	vpop	{d8-d10}
d0078e2c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0078e30:	9999999a 	.word	0x9999999a
d0078e34:	3fa99999 	.word	0x3fa99999
d0078e38:	66666667 	.word	0x66666667
d0078e3c:	d007f100 	.word	0xd007f100

d0078e40 <initRock.constprop.0>:
d0078e40:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0078e44:	4d76      	ldr	r5, [pc, #472]	; (d0079020 <initRock.constprop.0+0x1e0>)
d0078e46:	b083      	sub	sp, #12
d0078e48:	2400      	movs	r4, #0
d0078e4a:	462b      	mov	r3, r5
d0078e4c:	e002      	b.n	d0078e54 <initRock.constprop.0+0x14>
d0078e4e:	3401      	adds	r4, #1
d0078e50:	2c20      	cmp	r4, #32
d0078e52:	d004      	beq.n	d0078e5e <initRock.constprop.0+0x1e>
d0078e54:	69da      	ldr	r2, [r3, #28]
d0078e56:	f503 73cc 	add.w	r3, r3, #408	; 0x198
d0078e5a:	2a00      	cmp	r2, #0
d0078e5c:	d1f7      	bne.n	d0078e4e <initRock.constprop.0+0xe>
d0078e5e:	f44f 76cc 	mov.w	r6, #408	; 0x198
d0078e62:	2302      	movs	r3, #2
d0078e64:	2201      	movs	r2, #1
d0078e66:	fb06 5604 	mla	r6, r6, r4, r5
d0078e6a:	e9c6 2307 	strd	r2, r3, [r6, #28]
d0078e6e:	f003 fe19 	bl	d007caa4 <rand>
d0078e72:	4a6c      	ldr	r2, [pc, #432]	; (d0079024 <initRock.constprop.0+0x1e4>)
d0078e74:	fb82 3200 	smull	r3, r2, r2, r0
d0078e78:	17c3      	asrs	r3, r0, #31
d0078e7a:	ebc3 13e2 	rsb	r3, r3, r2, asr #7
d0078e7e:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0078e82:	eba0 1083 	sub.w	r0, r0, r3, lsl #6
d0078e86:	ee07 0a90 	vmov	s15, r0
d0078e8a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0078e8e:	edc6 7a01 	vstr	s15, [r6, #4]
d0078e92:	f003 fe07 	bl	d007caa4 <rand>
d0078e96:	4a64      	ldr	r2, [pc, #400]	; (d0079028 <initRock.constprop.0+0x1e8>)
d0078e98:	eefb 7a04 	vmov.f32	s15, #180	; 0xc1a00000 -20.0
d0078e9c:	f010 0f01 	tst.w	r0, #1
d0078ea0:	7813      	ldrb	r3, [r2, #0]
d0078ea2:	ed9f 7a62 	vldr	s14, [pc, #392]	; d007902c <initRock.constprop.0+0x1ec>
d0078ea6:	f103 0301 	add.w	r3, r3, #1
d0078eaa:	fe47 7a27 	vseleq.f32	s15, s14, s15
d0078eae:	edc6 7a02 	vstr	s15, [r6, #8]
d0078eb2:	b2db      	uxtb	r3, r3
d0078eb4:	7013      	strb	r3, [r2, #0]
d0078eb6:	079a      	lsls	r2, r3, #30
d0078eb8:	f100 8081 	bmi.w	d0078fbe <initRock.constprop.0+0x17e>
d0078ebc:	4b5c      	ldr	r3, [pc, #368]	; (d0079030 <initRock.constprop.0+0x1f0>)
d0078ebe:	9300      	str	r3, [sp, #0]
d0078ec0:	f44f 73cc 	mov.w	r3, #408	; 0x198
d0078ec4:	485b      	ldr	r0, [pc, #364]	; (d0079034 <initRock.constprop.0+0x1f4>)
d0078ec6:	f8df a180 	ldr.w	sl, [pc, #384]	; d0079048 <initRock.constprop.0+0x208>
d0078eca:	2100      	movs	r1, #0
d0078ecc:	fb03 f304 	mul.w	r3, r3, r4
d0078ed0:	4f59      	ldr	r7, [pc, #356]	; (d0079038 <initRock.constprop.0+0x1f8>)
d0078ed2:	4e5a      	ldr	r6, [pc, #360]	; (d007903c <initRock.constprop.0+0x1fc>)
d0078ed4:	f103 0b24 	add.w	fp, r3, #36	; 0x24
d0078ed8:	18ec      	adds	r4, r5, r3
d0078eda:	f8df 9170 	ldr.w	r9, [pc, #368]	; d007904c <initRock.constprop.0+0x20c>
d0078ede:	18c3      	adds	r3, r0, r3
d0078ee0:	44ab      	add	fp, r5
d0078ee2:	4d57      	ldr	r5, [pc, #348]	; (d0079040 <initRock.constprop.0+0x200>)
d0078ee4:	9301      	str	r3, [sp, #4]
d0078ee6:	f8ca 1000 	str.w	r1, [sl]
d0078eea:	f003 fddb 	bl	d007caa4 <rand>
d0078eee:	fb85 2300 	smull	r2, r3, r5, r0
d0078ef2:	4680      	mov	r8, r0
d0078ef4:	eba3 73e0 	sub.w	r3, r3, r0, asr #31
d0078ef8:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0078efc:	1ac3      	subs	r3, r0, r3
d0078efe:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0078f02:	332d      	adds	r3, #45	; 0x2d
d0078f04:	603b      	str	r3, [r7, #0]
d0078f06:	f003 fdcd 	bl	d007caa4 <rand>
d0078f0a:	fb85 2300 	smull	r2, r3, r5, r0
d0078f0e:	eba3 73e0 	sub.w	r3, r3, r0, asr #31
d0078f12:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0078f16:	1ac0      	subs	r0, r0, r3
d0078f18:	3001      	adds	r0, #1
d0078f1a:	7030      	strb	r0, [r6, #0]
d0078f1c:	f003 fdc2 	bl	d007caa4 <rand>
d0078f20:	f1d8 0300 	rsbs	r3, r8, #0
d0078f24:	fb85 1200 	smull	r1, r2, r5, r0
d0078f28:	f008 0803 	and.w	r8, r8, #3
d0078f2c:	f003 0303 	and.w	r3, r3, #3
d0078f30:	eba2 72e0 	sub.w	r2, r2, r0, asr #31
d0078f34:	bf58      	it	pl
d0078f36:	f1c3 0800 	rsbpl	r8, r3, #0
d0078f3a:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0078f3e:	f899 3000 	ldrb.w	r3, [r9]
d0078f42:	1a80      	subs	r0, r0, r2
d0078f44:	f1a8 0880 	sub.w	r8, r8, #128	; 0x80
d0078f48:	3301      	adds	r3, #1
d0078f4a:	4a3e      	ldr	r2, [pc, #248]	; (d0079044 <initRock.constprop.0+0x204>)
d0078f4c:	3001      	adds	r0, #1
d0078f4e:	f884 8018 	strb.w	r8, [r4, #24]
d0078f52:	b2db      	uxtb	r3, r3
d0078f54:	b240      	sxtb	r0, r0
d0078f56:	2b03      	cmp	r3, #3
d0078f58:	f889 3000 	strb.w	r3, [r9]
d0078f5c:	7010      	strb	r0, [r2, #0]
d0078f5e:	d934      	bls.n	d0078fca <initRock.constprop.0+0x18a>
d0078f60:	2300      	movs	r3, #0
d0078f62:	f889 3000 	strb.w	r3, [r9]
d0078f66:	2301      	movs	r3, #1
d0078f68:	6263      	str	r3, [r4, #36]	; 0x24
d0078f6a:	4b2f      	ldr	r3, [pc, #188]	; (d0079028 <initRock.constprop.0+0x1e8>)
d0078f6c:	781b      	ldrb	r3, [r3, #0]
d0078f6e:	f013 0f01 	tst.w	r3, #1
d0078f72:	f996 3000 	ldrsb.w	r3, [r6]
d0078f76:	bf08      	it	eq
d0078f78:	425b      	negeq	r3, r3
d0078f7a:	ee07 3a90 	vmov	s15, r3
d0078f7e:	9b00      	ldr	r3, [sp, #0]
d0078f80:	781b      	ldrb	r3, [r3, #0]
d0078f82:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0078f86:	07db      	lsls	r3, r3, #31
d0078f88:	edc4 7a03 	vstr	s15, [r4, #12]
d0078f8c:	d529      	bpl.n	d0078fe2 <initRock.constprop.0+0x1a2>
d0078f8e:	ee07 0a90 	vmov	s15, r0
d0078f92:	f8da 2000 	ldr.w	r2, [sl]
d0078f96:	683b      	ldr	r3, [r7, #0]
d0078f98:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0078f9c:	f102 0116 	add.w	r1, r2, #22
d0078fa0:	6163      	str	r3, [r4, #20]
d0078fa2:	f8ca 1000 	str.w	r1, [sl]
d0078fa6:	edc4 7a04 	vstr	s15, [r4, #16]
d0078faa:	f84b 2f04 	str.w	r2, [fp, #4]!
d0078fae:	f8cb 305c 	str.w	r3, [fp, #92]	; 0x5c
d0078fb2:	9b01      	ldr	r3, [sp, #4]
d0078fb4:	459b      	cmp	fp, r3
d0078fb6:	d198      	bne.n	d0078eea <initRock.constprop.0+0xaa>
d0078fb8:	b003      	add	sp, #12
d0078fba:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0078fbe:	4a1c      	ldr	r2, [pc, #112]	; (d0079030 <initRock.constprop.0+0x1f0>)
d0078fc0:	7813      	ldrb	r3, [r2, #0]
d0078fc2:	9200      	str	r2, [sp, #0]
d0078fc4:	3301      	adds	r3, #1
d0078fc6:	7013      	strb	r3, [r2, #0]
d0078fc8:	e77a      	b.n	d0078ec0 <initRock.constprop.0+0x80>
d0078fca:	2b02      	cmp	r3, #2
d0078fcc:	d025      	beq.n	d007901a <initRock.constprop.0+0x1da>
d0078fce:	2b03      	cmp	r3, #3
d0078fd0:	d021      	beq.n	d0079016 <initRock.constprop.0+0x1d6>
d0078fd2:	2b00      	cmp	r3, #0
d0078fd4:	d0c7      	beq.n	d0078f66 <initRock.constprop.0+0x126>
d0078fd6:	2b01      	cmp	r3, #1
d0078fd8:	d11d      	bne.n	d0079016 <initRock.constprop.0+0x1d6>
d0078fda:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d0078fde:	6263      	str	r3, [r4, #36]	; 0x24
d0078fe0:	e7c3      	b.n	d0078f6a <initRock.constprop.0+0x12a>
d0078fe2:	4240      	negs	r0, r0
d0078fe4:	f8da 2000 	ldr.w	r2, [sl]
d0078fe8:	683b      	ldr	r3, [r7, #0]
d0078fea:	ee07 0a90 	vmov	s15, r0
d0078fee:	f102 0116 	add.w	r1, r2, #22
d0078ff2:	6163      	str	r3, [r4, #20]
d0078ff4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0078ff8:	f8ca 1000 	str.w	r1, [sl]
d0078ffc:	edc4 7a04 	vstr	s15, [r4, #16]
d0079000:	f84b 2f04 	str.w	r2, [fp, #4]!
d0079004:	f8cb 305c 	str.w	r3, [fp, #92]	; 0x5c
d0079008:	9b01      	ldr	r3, [sp, #4]
d007900a:	455b      	cmp	r3, fp
d007900c:	f47f af6d 	bne.w	d0078eea <initRock.constprop.0+0xaa>
d0079010:	b003      	add	sp, #12
d0079012:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0079016:	f06f 0301 	mvn.w	r3, #1
d007901a:	6263      	str	r3, [r4, #36]	; 0x24
d007901c:	e7a5      	b.n	d0078f6a <initRock.constprop.0+0x12a>
d007901e:	bf00      	nop
d0079020:	d007fd24 	.word	0xd007fd24
d0079024:	66666667 	.word	0x66666667
d0079028:	d00834e4 	.word	0xd00834e4
d007902c:	43820000 	.word	0x43820000
d0079030:	d00834e5 	.word	0xd00834e5
d0079034:	d007fd88 	.word	0xd007fd88
d0079038:	d00833d8 	.word	0xd00833d8
d007903c:	d007fd04 	.word	0xd007fd04
d0079040:	55555556 	.word	0x55555556
d0079044:	d007fd05 	.word	0xd007fd05
d0079048:	d007fc58 	.word	0xd007fc58
d007904c:	d00834bc 	.word	0xd00834bc

d0079050 <init_starfield>:
d0079050:	b508      	push	{r3, lr}
d0079052:	22b4      	movs	r2, #180	; 0xb4
d0079054:	2100      	movs	r1, #0
d0079056:	4807      	ldr	r0, [pc, #28]	; (d0079074 <init_starfield+0x24>)
d0079058:	f7ff fcfc 	bl	d0078a54 <memset>
d007905c:	22b4      	movs	r2, #180	; 0xb4
d007905e:	2100      	movs	r1, #0
d0079060:	4805      	ldr	r0, [pc, #20]	; (d0079078 <init_starfield+0x28>)
d0079062:	f7ff fcf7 	bl	d0078a54 <memset>
d0079066:	22b4      	movs	r2, #180	; 0xb4
d0079068:	2100      	movs	r1, #0
d007906a:	4804      	ldr	r0, [pc, #16]	; (d007907c <init_starfield+0x2c>)
d007906c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d0079070:	f7ff bcf0 	b.w	d0078a54 <memset>
d0079074:	d00831bc 	.word	0xd00831bc
d0079078:	d0083270 	.word	0xd0083270
d007907c:	d0083324 	.word	0xd0083324

d0079080 <initRock>:
d0079080:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0079084:	4daf      	ldr	r5, [pc, #700]	; (d0079344 <initRock+0x2c4>)
d0079086:	b085      	sub	sp, #20
d0079088:	4606      	mov	r6, r0
d007908a:	2400      	movs	r4, #0
d007908c:	462b      	mov	r3, r5
d007908e:	9201      	str	r2, [sp, #4]
d0079090:	e002      	b.n	d0079098 <initRock+0x18>
d0079092:	3401      	adds	r4, #1
d0079094:	2c20      	cmp	r4, #32
d0079096:	d004      	beq.n	d00790a2 <initRock+0x22>
d0079098:	69da      	ldr	r2, [r3, #28]
d007909a:	f503 73cc 	add.w	r3, r3, #408	; 0x198
d007909e:	2a00      	cmp	r2, #0
d00790a0:	d1f7      	bne.n	d0079092 <initRock+0x12>
d00790a2:	f44f 77cc 	mov.w	r7, #408	; 0x198
d00790a6:	2301      	movs	r3, #1
d00790a8:	fb07 5704 	mla	r7, r7, r4, r5
d00790ac:	e9c7 3607 	strd	r3, r6, [r7, #28]
d00790b0:	1c4b      	adds	r3, r1, #1
d00790b2:	f000 812c 	beq.w	d007930e <initRock+0x28e>
d00790b6:	ee07 1a90 	vmov	s15, r1
d00790ba:	ed9d 7a01 	vldr	s14, [sp, #4]
d00790be:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00790c2:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00790c6:	edc7 7a01 	vstr	s15, [r7, #4]
d00790ca:	ed87 7a02 	vstr	s14, [r7, #8]
d00790ce:	4a9e      	ldr	r2, [pc, #632]	; (d0079348 <initRock+0x2c8>)
d00790d0:	7813      	ldrb	r3, [r2, #0]
d00790d2:	3301      	adds	r3, #1
d00790d4:	b2db      	uxtb	r3, r3
d00790d6:	0799      	lsls	r1, r3, #30
d00790d8:	7013      	strb	r3, [r2, #0]
d00790da:	f100 808a 	bmi.w	d00791f2 <initRock+0x172>
d00790de:	4b9b      	ldr	r3, [pc, #620]	; (d007934c <initRock+0x2cc>)
d00790e0:	9301      	str	r3, [sp, #4]
d00790e2:	f44f 73cc 	mov.w	r3, #408	; 0x198
d00790e6:	499a      	ldr	r1, [pc, #616]	; (d0079350 <initRock+0x2d0>)
d00790e8:	4f9a      	ldr	r7, [pc, #616]	; (d0079354 <initRock+0x2d4>)
d00790ea:	2000      	movs	r0, #0
d00790ec:	fb03 f404 	mul.w	r4, r3, r4
d00790f0:	f8df 927c 	ldr.w	r9, [pc, #636]	; d0079370 <initRock+0x2f0>
d00790f4:	f8df 827c 	ldr.w	r8, [pc, #636]	; d0079374 <initRock+0x2f4>
d00790f8:	eb05 0a04 	add.w	sl, r5, r4
d00790fc:	f104 0324 	add.w	r3, r4, #36	; 0x24
d0079100:	190a      	adds	r2, r1, r4
d0079102:	4c95      	ldr	r4, [pc, #596]	; (d0079358 <initRock+0x2d8>)
d0079104:	eb05 0b03 	add.w	fp, r5, r3
d0079108:	4653      	mov	r3, sl
d007910a:	4d94      	ldr	r5, [pc, #592]	; (d007935c <initRock+0x2dc>)
d007910c:	46da      	mov	sl, fp
d007910e:	469b      	mov	fp, r3
d0079110:	9203      	str	r2, [sp, #12]
d0079112:	6038      	str	r0, [r7, #0]
d0079114:	9602      	str	r6, [sp, #8]
d0079116:	f003 fcc5 	bl	d007caa4 <rand>
d007911a:	9b02      	ldr	r3, [sp, #8]
d007911c:	4606      	mov	r6, r0
d007911e:	2b00      	cmp	r3, #0
d0079120:	f000 8097 	beq.w	d0079252 <initRock+0x1d2>
d0079124:	2b01      	cmp	r3, #1
d0079126:	f000 80c9 	beq.w	d00792bc <initRock+0x23c>
d007912a:	fb85 2300 	smull	r2, r3, r5, r0
d007912e:	eba3 73e0 	sub.w	r3, r3, r0, asr #31
d0079132:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0079136:	1ac3      	subs	r3, r0, r3
d0079138:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d007913c:	332d      	adds	r3, #45	; 0x2d
d007913e:	f8c9 3000 	str.w	r3, [r9]
d0079142:	f003 fcaf 	bl	d007caa4 <rand>
d0079146:	fb85 2300 	smull	r2, r3, r5, r0
d007914a:	eba3 73e0 	sub.w	r3, r3, r0, asr #31
d007914e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0079152:	1ac0      	subs	r0, r0, r3
d0079154:	3001      	adds	r0, #1
d0079156:	f888 0000 	strb.w	r0, [r8]
d007915a:	f003 fca3 	bl	d007caa4 <rand>
d007915e:	fb85 1300 	smull	r1, r3, r5, r0
d0079162:	4272      	negs	r2, r6
d0079164:	f006 0603 	and.w	r6, r6, #3
d0079168:	eba3 73e0 	sub.w	r3, r3, r0, asr #31
d007916c:	f002 0203 	and.w	r2, r2, #3
d0079170:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0079174:	bf58      	it	pl
d0079176:	4256      	negpl	r6, r2
d0079178:	4a79      	ldr	r2, [pc, #484]	; (d0079360 <initRock+0x2e0>)
d007917a:	1ac3      	subs	r3, r0, r3
d007917c:	3e80      	subs	r6, #128	; 0x80
d007917e:	3301      	adds	r3, #1
d0079180:	f88b 6018 	strb.w	r6, [fp, #24]
d0079184:	b25b      	sxtb	r3, r3
d0079186:	7013      	strb	r3, [r2, #0]
d0079188:	7822      	ldrb	r2, [r4, #0]
d007918a:	3201      	adds	r2, #1
d007918c:	b2d2      	uxtb	r2, r2
d007918e:	2a03      	cmp	r2, #3
d0079190:	7022      	strb	r2, [r4, #0]
d0079192:	d934      	bls.n	d00791fe <initRock+0x17e>
d0079194:	2200      	movs	r2, #0
d0079196:	7022      	strb	r2, [r4, #0]
d0079198:	2201      	movs	r2, #1
d007919a:	f8cb 2024 	str.w	r2, [fp, #36]	; 0x24
d007919e:	4a6a      	ldr	r2, [pc, #424]	; (d0079348 <initRock+0x2c8>)
d00791a0:	7812      	ldrb	r2, [r2, #0]
d00791a2:	f012 0f01 	tst.w	r2, #1
d00791a6:	f998 2000 	ldrsb.w	r2, [r8]
d00791aa:	bf08      	it	eq
d00791ac:	4252      	negeq	r2, r2
d00791ae:	ee07 2a90 	vmov	s15, r2
d00791b2:	9a01      	ldr	r2, [sp, #4]
d00791b4:	7812      	ldrb	r2, [r2, #0]
d00791b6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00791ba:	07d2      	lsls	r2, r2, #31
d00791bc:	edcb 7a03 	vstr	s15, [fp, #12]
d00791c0:	d52a      	bpl.n	d0079218 <initRock+0x198>
d00791c2:	ee07 3a90 	vmov	s15, r3
d00791c6:	683a      	ldr	r2, [r7, #0]
d00791c8:	f8d9 3000 	ldr.w	r3, [r9]
d00791cc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00791d0:	f102 0016 	add.w	r0, r2, #22
d00791d4:	f8cb 3014 	str.w	r3, [fp, #20]
d00791d8:	6038      	str	r0, [r7, #0]
d00791da:	edcb 7a04 	vstr	s15, [fp, #16]
d00791de:	f84a 2f04 	str.w	r2, [sl, #4]!
d00791e2:	f8ca 305c 	str.w	r3, [sl, #92]	; 0x5c
d00791e6:	9b03      	ldr	r3, [sp, #12]
d00791e8:	459a      	cmp	sl, r3
d00791ea:	d194      	bne.n	d0079116 <initRock+0x96>
d00791ec:	b005      	add	sp, #20
d00791ee:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00791f2:	4a56      	ldr	r2, [pc, #344]	; (d007934c <initRock+0x2cc>)
d00791f4:	7813      	ldrb	r3, [r2, #0]
d00791f6:	9201      	str	r2, [sp, #4]
d00791f8:	3301      	adds	r3, #1
d00791fa:	7013      	strb	r3, [r2, #0]
d00791fc:	e771      	b.n	d00790e2 <initRock+0x62>
d00791fe:	2a02      	cmp	r2, #2
d0079200:	d059      	beq.n	d00792b6 <initRock+0x236>
d0079202:	2a03      	cmp	r2, #3
d0079204:	d055      	beq.n	d00792b2 <initRock+0x232>
d0079206:	2a00      	cmp	r2, #0
d0079208:	d0c6      	beq.n	d0079198 <initRock+0x118>
d007920a:	2a01      	cmp	r2, #1
d007920c:	d151      	bne.n	d00792b2 <initRock+0x232>
d007920e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0079212:	f8cb 2024 	str.w	r2, [fp, #36]	; 0x24
d0079216:	e7c2      	b.n	d007919e <initRock+0x11e>
d0079218:	425b      	negs	r3, r3
d007921a:	6838      	ldr	r0, [r7, #0]
d007921c:	f8d9 2000 	ldr.w	r2, [r9]
d0079220:	ee07 3a90 	vmov	s15, r3
d0079224:	f100 0316 	add.w	r3, r0, #22
d0079228:	f8cb 2014 	str.w	r2, [fp, #20]
d007922c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0079230:	603b      	str	r3, [r7, #0]
d0079232:	9b03      	ldr	r3, [sp, #12]
d0079234:	edcb 7a04 	vstr	s15, [fp, #16]
d0079238:	f84a 0f04 	str.w	r0, [sl, #4]!
d007923c:	4553      	cmp	r3, sl
d007923e:	f8ca 205c 	str.w	r2, [sl, #92]	; 0x5c
d0079242:	d0d3      	beq.n	d00791ec <initRock+0x16c>
d0079244:	f003 fc2e 	bl	d007caa4 <rand>
d0079248:	9b02      	ldr	r3, [sp, #8]
d007924a:	4606      	mov	r6, r0
d007924c:	2b00      	cmp	r3, #0
d007924e:	f47f af69 	bne.w	d0079124 <initRock+0xa4>
d0079252:	4b44      	ldr	r3, [pc, #272]	; (d0079364 <initRock+0x2e4>)
d0079254:	fb83 3200 	smull	r3, r2, r3, r0
d0079258:	17c3      	asrs	r3, r0, #31
d007925a:	ebc3 0362 	rsb	r3, r3, r2, asr #1
d007925e:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0079262:	1ac3      	subs	r3, r0, r3
d0079264:	330a      	adds	r3, #10
d0079266:	f8c9 3000 	str.w	r3, [r9]
d007926a:	f003 fc1b 	bl	d007caa4 <rand>
d007926e:	fb85 2300 	smull	r2, r3, r5, r0
d0079272:	eba3 73e0 	sub.w	r3, r3, r0, asr #31
d0079276:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d007927a:	1ac0      	subs	r0, r0, r3
d007927c:	3003      	adds	r0, #3
d007927e:	f888 0000 	strb.w	r0, [r8]
d0079282:	f003 fc0f 	bl	d007caa4 <rand>
d0079286:	fb85 1300 	smull	r1, r3, r5, r0
d007928a:	4272      	negs	r2, r6
d007928c:	f006 0603 	and.w	r6, r6, #3
d0079290:	eba3 73e0 	sub.w	r3, r3, r0, asr #31
d0079294:	f002 0203 	and.w	r2, r2, #3
d0079298:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d007929c:	bf58      	it	pl
d007929e:	4256      	negpl	r6, r2
d00792a0:	4a2f      	ldr	r2, [pc, #188]	; (d0079360 <initRock+0x2e0>)
d00792a2:	1ac3      	subs	r3, r0, r3
d00792a4:	3660      	adds	r6, #96	; 0x60
d00792a6:	3303      	adds	r3, #3
d00792a8:	f88b 6018 	strb.w	r6, [fp, #24]
d00792ac:	b25b      	sxtb	r3, r3
d00792ae:	7013      	strb	r3, [r2, #0]
d00792b0:	e76a      	b.n	d0079188 <initRock+0x108>
d00792b2:	f06f 0201 	mvn.w	r2, #1
d00792b6:	f8cb 2024 	str.w	r2, [fp, #36]	; 0x24
d00792ba:	e770      	b.n	d007919e <initRock+0x11e>
d00792bc:	4243      	negs	r3, r0
d00792be:	f000 0603 	and.w	r6, r0, #3
d00792c2:	f003 0303 	and.w	r3, r3, #3
d00792c6:	bf58      	it	pl
d00792c8:	425e      	negpl	r6, r3
d00792ca:	eb06 0346 	add.w	r3, r6, r6, lsl #1
d00792ce:	3670      	adds	r6, #112	; 0x70
d00792d0:	3318      	adds	r3, #24
d00792d2:	f8c9 3000 	str.w	r3, [r9]
d00792d6:	f003 fbe5 	bl	d007caa4 <rand>
d00792da:	fb85 2300 	smull	r2, r3, r5, r0
d00792de:	eba3 73e0 	sub.w	r3, r3, r0, asr #31
d00792e2:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00792e6:	1ac0      	subs	r0, r0, r3
d00792e8:	3002      	adds	r0, #2
d00792ea:	f888 0000 	strb.w	r0, [r8]
d00792ee:	f003 fbd9 	bl	d007caa4 <rand>
d00792f2:	fb85 2300 	smull	r2, r3, r5, r0
d00792f6:	4a1a      	ldr	r2, [pc, #104]	; (d0079360 <initRock+0x2e0>)
d00792f8:	f88b 6018 	strb.w	r6, [fp, #24]
d00792fc:	eba3 73e0 	sub.w	r3, r3, r0, asr #31
d0079300:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0079304:	1ac3      	subs	r3, r0, r3
d0079306:	3302      	adds	r3, #2
d0079308:	b25b      	sxtb	r3, r3
d007930a:	7013      	strb	r3, [r2, #0]
d007930c:	e73c      	b.n	d0079188 <initRock+0x108>
d007930e:	f003 fbc9 	bl	d007caa4 <rand>
d0079312:	4a14      	ldr	r2, [pc, #80]	; (d0079364 <initRock+0x2e4>)
d0079314:	fb82 3200 	smull	r3, r2, r2, r0
d0079318:	17c3      	asrs	r3, r0, #31
d007931a:	ebc3 13e2 	rsb	r3, r3, r2, asr #7
d007931e:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0079322:	eba0 1083 	sub.w	r0, r0, r3, lsl #6
d0079326:	ee07 0a90 	vmov	s15, r0
d007932a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d007932e:	edc7 7a01 	vstr	s15, [r7, #4]
d0079332:	f003 fbb7 	bl	d007caa4 <rand>
d0079336:	07c0      	lsls	r0, r0, #31
d0079338:	bf4c      	ite	mi
d007933a:	4b0b      	ldrmi	r3, [pc, #44]	; (d0079368 <initRock+0x2e8>)
d007933c:	4b0b      	ldrpl	r3, [pc, #44]	; (d007936c <initRock+0x2ec>)
d007933e:	60bb      	str	r3, [r7, #8]
d0079340:	e6c5      	b.n	d00790ce <initRock+0x4e>
d0079342:	bf00      	nop
d0079344:	d007fd24 	.word	0xd007fd24
d0079348:	d00834e4 	.word	0xd00834e4
d007934c:	d00834e5 	.word	0xd00834e5
d0079350:	d007fd88 	.word	0xd007fd88
d0079354:	d007fc58 	.word	0xd007fc58
d0079358:	d00834bc 	.word	0xd00834bc
d007935c:	55555556 	.word	0x55555556
d0079360:	d007fd05 	.word	0xd007fd05
d0079364:	66666667 	.word	0x66666667
d0079368:	c1a00000 	.word	0xc1a00000
d007936c:	43820000 	.word	0x43820000
d0079370:	d00833d8 	.word	0xd00833d8
d0079374:	d007fd04 	.word	0xd007fd04

d0079378 <doCheckShipToAsteroidHit>:
d0079378:	4b72      	ldr	r3, [pc, #456]	; (d0079544 <doCheckShipToAsteroidHit+0x1cc>)
d007937a:	f8df c1d0 	ldr.w	ip, [pc, #464]	; d007954c <doCheckShipToAsteroidHit+0x1d4>
d007937e:	6e1a      	ldr	r2, [r3, #96]	; 0x60
d0079380:	6c98      	ldr	r0, [r3, #72]	; 0x48
d0079382:	4611      	mov	r1, r2
d0079384:	4282      	cmp	r2, r0
d0079386:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d007938a:	bfa8      	it	ge
d007938c:	4601      	movge	r1, r0
d007938e:	b0a5      	sub	sp, #148	; 0x94
d0079390:	4282      	cmp	r2, r0
d0079392:	6d1d      	ldr	r5, [r3, #80]	; 0x50
d0079394:	9104      	str	r1, [sp, #16]
d0079396:	4611      	mov	r1, r2
d0079398:	bfb8      	it	lt
d007939a:	4601      	movlt	r1, r0
d007939c:	6d9e      	ldr	r6, [r3, #88]	; 0x58
d007939e:	46ae      	mov	lr, r5
d00793a0:	901d      	str	r0, [sp, #116]	; 0x74
d00793a2:	9108      	str	r1, [sp, #32]
d00793a4:	4601      	mov	r1, r0
d00793a6:	1a10      	subs	r0, r2, r0
d00793a8:	6e5f      	ldr	r7, [r3, #100]	; 0x64
d00793aa:	428d      	cmp	r5, r1
d00793ac:	6cdc      	ldr	r4, [r3, #76]	; 0x4c
d00793ae:	9019      	str	r0, [sp, #100]	; 0x64
d00793b0:	bfa8      	it	ge
d00793b2:	468e      	movge	lr, r1
d00793b4:	428d      	cmp	r5, r1
d00793b6:	6d58      	ldr	r0, [r3, #84]	; 0x54
d00793b8:	f8cd e014 	str.w	lr, [sp, #20]
d00793bc:	46ae      	mov	lr, r5
d00793be:	6ddb      	ldr	r3, [r3, #92]	; 0x5c
d00793c0:	bfb8      	it	lt
d00793c2:	468e      	movlt	lr, r1
d00793c4:	42ae      	cmp	r6, r5
d00793c6:	901c      	str	r0, [sp, #112]	; 0x70
d00793c8:	9321      	str	r3, [sp, #132]	; 0x84
d00793ca:	4618      	mov	r0, r3
d00793cc:	eba1 0305 	sub.w	r3, r1, r5
d00793d0:	4631      	mov	r1, r6
d00793d2:	bfa8      	it	ge
d00793d4:	4629      	movge	r1, r5
d00793d6:	42ae      	cmp	r6, r5
d00793d8:	931a      	str	r3, [sp, #104]	; 0x68
d00793da:	eba5 0306 	sub.w	r3, r5, r6
d00793de:	9106      	str	r1, [sp, #24]
d00793e0:	4631      	mov	r1, r6
d00793e2:	bfb8      	it	lt
d00793e4:	4629      	movlt	r1, r5
d00793e6:	42b2      	cmp	r2, r6
d00793e8:	931b      	str	r3, [sp, #108]	; 0x6c
d00793ea:	4613      	mov	r3, r2
d00793ec:	bfa8      	it	ge
d00793ee:	4633      	movge	r3, r6
d00793f0:	42b2      	cmp	r2, r6
d00793f2:	910a      	str	r1, [sp, #40]	; 0x28
d00793f4:	eba7 0104 	sub.w	r1, r7, r4
d00793f8:	9307      	str	r3, [sp, #28]
d00793fa:	4613      	mov	r3, r2
d00793fc:	bfb8      	it	lt
d00793fe:	4633      	movlt	r3, r6
d0079400:	42a7      	cmp	r7, r4
d0079402:	9110      	str	r1, [sp, #64]	; 0x40
d0079404:	930b      	str	r3, [sp, #44]	; 0x2c
d0079406:	eba6 0302 	sub.w	r3, r6, r2
d007940a:	9222      	str	r2, [sp, #136]	; 0x88
d007940c:	9313      	str	r3, [sp, #76]	; 0x4c
d007940e:	463b      	mov	r3, r7
d0079410:	bfa8      	it	ge
d0079412:	4623      	movge	r3, r4
d0079414:	42a7      	cmp	r7, r4
d0079416:	951f      	str	r5, [sp, #124]	; 0x7c
d0079418:	930c      	str	r3, [sp, #48]	; 0x30
d007941a:	463b      	mov	r3, r7
d007941c:	bfb8      	it	lt
d007941e:	4623      	movlt	r3, r4
d0079420:	9620      	str	r6, [sp, #128]	; 0x80
d0079422:	9723      	str	r7, [sp, #140]	; 0x8c
d0079424:	9315      	str	r3, [sp, #84]	; 0x54
d0079426:	941e      	str	r4, [sp, #120]	; 0x78
d0079428:	f8cd e024 	str.w	lr, [sp, #36]	; 0x24
d007942c:	9a1c      	ldr	r2, [sp, #112]	; 0x70
d007942e:	42a2      	cmp	r2, r4
d0079430:	4611      	mov	r1, r2
d0079432:	eba4 0302 	sub.w	r3, r4, r2
d0079436:	bfa8      	it	ge
d0079438:	4621      	movge	r1, r4
d007943a:	42a2      	cmp	r2, r4
d007943c:	9311      	str	r3, [sp, #68]	; 0x44
d007943e:	eba2 0300 	sub.w	r3, r2, r0
d0079442:	910d      	str	r1, [sp, #52]	; 0x34
d0079444:	4611      	mov	r1, r2
d0079446:	bfb8      	it	lt
d0079448:	4621      	movlt	r1, r4
d007944a:	4290      	cmp	r0, r2
d007944c:	9312      	str	r3, [sp, #72]	; 0x48
d007944e:	463b      	mov	r3, r7
d0079450:	9116      	str	r1, [sp, #88]	; 0x58
d0079452:	4601      	mov	r1, r0
d0079454:	bfa8      	it	ge
d0079456:	4611      	movge	r1, r2
d0079458:	4290      	cmp	r0, r2
d007945a:	910e      	str	r1, [sp, #56]	; 0x38
d007945c:	4601      	mov	r1, r0
d007945e:	bfb8      	it	lt
d0079460:	4611      	movlt	r1, r2
d0079462:	4287      	cmp	r7, r0
d0079464:	bfa8      	it	ge
d0079466:	4603      	movge	r3, r0
d0079468:	4287      	cmp	r7, r0
d007946a:	9117      	str	r1, [sp, #92]	; 0x5c
d007946c:	930f      	str	r3, [sp, #60]	; 0x3c
d007946e:	463b      	mov	r3, r7
d0079470:	bfb8      	it	lt
d0079472:	4603      	movlt	r3, r0
d0079474:	9318      	str	r3, [sp, #96]	; 0x60
d0079476:	1bc3      	subs	r3, r0, r7
d0079478:	9314      	str	r3, [sp, #80]	; 0x50
d007947a:	f85c 3c64 	ldr.w	r3, [ip, #-100]
d007947e:	b943      	cbnz	r3, d0079492 <doCheckShipToAsteroidHit+0x11a>
d0079480:	f50c 7ccc 	add.w	ip, ip, #408	; 0x198
d0079484:	4b30      	ldr	r3, [pc, #192]	; (d0079548 <doCheckShipToAsteroidHit+0x1d0>)
d0079486:	4563      	cmp	r3, ip
d0079488:	d1f7      	bne.n	d007947a <doCheckShipToAsteroidHit+0x102>
d007948a:	2000      	movs	r0, #0
d007948c:	b025      	add	sp, #148	; 0x94
d007948e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0079492:	f1ac 0180 	sub.w	r1, ip, #128	; 0x80
d0079496:	f8dc 20d8 	ldr.w	r2, [ip, #216]	; 0xd8
d007949a:	f8dc 30dc 	ldr.w	r3, [ip, #220]	; 0xdc
d007949e:	f8cd c00c 	str.w	ip, [sp, #12]
d00794a2:	9101      	str	r1, [sp, #4]
d00794a4:	9901      	ldr	r1, [sp, #4]
d00794a6:	4614      	mov	r4, r2
d00794a8:	4618      	mov	r0, r3
d00794aa:	f8d1 20e0 	ldr.w	r2, [r1, #224]	; 0xe0
d00794ae:	f8d1 30e4 	ldr.w	r3, [r1, #228]	; 0xe4
d00794b2:	42a2      	cmp	r2, r4
d00794b4:	4615      	mov	r5, r2
d00794b6:	4616      	mov	r6, r2
d00794b8:	469c      	mov	ip, r3
d00794ba:	bfb8      	it	lt
d00794bc:	4625      	movlt	r5, r4
d00794be:	42a2      	cmp	r2, r4
d00794c0:	461f      	mov	r7, r3
d00794c2:	bfa8      	it	ge
d00794c4:	4626      	movge	r6, r4
d00794c6:	4283      	cmp	r3, r0
d00794c8:	bfa8      	it	ge
d00794ca:	4684      	movge	ip, r0
d00794cc:	4283      	cmp	r3, r0
d00794ce:	bfb8      	it	lt
d00794d0:	4607      	movlt	r7, r0
d00794d2:	4639      	mov	r1, r7
d00794d4:	9702      	str	r7, [sp, #8]
d00794d6:	9f04      	ldr	r7, [sp, #16]
d00794d8:	42bd      	cmp	r5, r7
d00794da:	db43      	blt.n	d0079564 <doCheckShipToAsteroidHit+0x1ec>
d00794dc:	9f08      	ldr	r7, [sp, #32]
d00794de:	42be      	cmp	r6, r7
d00794e0:	dc40      	bgt.n	d0079564 <doCheckShipToAsteroidHit+0x1ec>
d00794e2:	9f0c      	ldr	r7, [sp, #48]	; 0x30
d00794e4:	42b9      	cmp	r1, r7
d00794e6:	db3d      	blt.n	d0079564 <doCheckShipToAsteroidHit+0x1ec>
d00794e8:	9f15      	ldr	r7, [sp, #84]	; 0x54
d00794ea:	45bc      	cmp	ip, r7
d00794ec:	dc3a      	bgt.n	d0079564 <doCheckShipToAsteroidHit+0x1ec>
d00794ee:	9910      	ldr	r1, [sp, #64]	; 0x40
d00794f0:	eba4 0b02 	sub.w	fp, r4, r2
d00794f4:	eba0 0a03 	sub.w	sl, r0, r3
d00794f8:	fb01 f80b 	mul.w	r8, r1, fp
d00794fc:	9919      	ldr	r1, [sp, #100]	; 0x64
d00794fe:	fb01 881a 	mls	r8, r1, sl, r8
d0079502:	f1b8 0f00 	cmp.w	r8, #0
d0079506:	d02d      	beq.n	d0079564 <doCheckShipToAsteroidHit+0x1ec>
d0079508:	9f1e      	ldr	r7, [sp, #120]	; 0x78
d007950a:	eba3 0907 	sub.w	r9, r3, r7
d007950e:	9f1d      	ldr	r7, [sp, #116]	; 0x74
d0079510:	fb09 fb0b 	mul.w	fp, r9, fp
d0079514:	eba2 0e07 	sub.w	lr, r2, r7
d0079518:	fb09 f901 	mul.w	r9, r9, r1
d007951c:	9f10      	ldr	r7, [sp, #64]	; 0x40
d007951e:	fb0e ba1a 	mls	sl, lr, sl, fp
d0079522:	fb0e 9e17 	mls	lr, lr, r7, r9
d0079526:	dd13      	ble.n	d0079550 <doCheckShipToAsteroidHit+0x1d8>
d0079528:	f1be 0f00 	cmp.w	lr, #0
d007952c:	db1a      	blt.n	d0079564 <doCheckShipToAsteroidHit+0x1ec>
d007952e:	45f0      	cmp	r8, lr
d0079530:	db18      	blt.n	d0079564 <doCheckShipToAsteroidHit+0x1ec>
d0079532:	f1ba 0f00 	cmp.w	sl, #0
d0079536:	db15      	blt.n	d0079564 <doCheckShipToAsteroidHit+0x1ec>
d0079538:	45d0      	cmp	r8, sl
d007953a:	db13      	blt.n	d0079564 <doCheckShipToAsteroidHit+0x1ec>
d007953c:	2001      	movs	r0, #1
d007953e:	b025      	add	sp, #148	; 0x94
d0079540:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0079544:	d00833dc 	.word	0xd00833dc
d0079548:	d00830a4 	.word	0xd00830a4
d007954c:	d007fda4 	.word	0xd007fda4
d0079550:	f1be 0f00 	cmp.w	lr, #0
d0079554:	dc06      	bgt.n	d0079564 <doCheckShipToAsteroidHit+0x1ec>
d0079556:	45f0      	cmp	r8, lr
d0079558:	dc04      	bgt.n	d0079564 <doCheckShipToAsteroidHit+0x1ec>
d007955a:	f1ba 0f00 	cmp.w	sl, #0
d007955e:	dc01      	bgt.n	d0079564 <doCheckShipToAsteroidHit+0x1ec>
d0079560:	45d0      	cmp	r8, sl
d0079562:	ddeb      	ble.n	d007953c <doCheckShipToAsteroidHit+0x1c4>
d0079564:	9f05      	ldr	r7, [sp, #20]
d0079566:	42bd      	cmp	r5, r7
d0079568:	db30      	blt.n	d00795cc <doCheckShipToAsteroidHit+0x254>
d007956a:	9f09      	ldr	r7, [sp, #36]	; 0x24
d007956c:	42be      	cmp	r6, r7
d007956e:	dc2d      	bgt.n	d00795cc <doCheckShipToAsteroidHit+0x254>
d0079570:	9f0d      	ldr	r7, [sp, #52]	; 0x34
d0079572:	9902      	ldr	r1, [sp, #8]
d0079574:	42b9      	cmp	r1, r7
d0079576:	db29      	blt.n	d00795cc <doCheckShipToAsteroidHit+0x254>
d0079578:	9f16      	ldr	r7, [sp, #88]	; 0x58
d007957a:	45bc      	cmp	ip, r7
d007957c:	dc26      	bgt.n	d00795cc <doCheckShipToAsteroidHit+0x254>
d007957e:	9f11      	ldr	r7, [sp, #68]	; 0x44
d0079580:	eba4 0b02 	sub.w	fp, r4, r2
d0079584:	eba0 0a03 	sub.w	sl, r0, r3
d0079588:	fb07 f80b 	mul.w	r8, r7, fp
d007958c:	9f1a      	ldr	r7, [sp, #104]	; 0x68
d007958e:	fb07 881a 	mls	r8, r7, sl, r8
d0079592:	f1b8 0f00 	cmp.w	r8, #0
d0079596:	d019      	beq.n	d00795cc <doCheckShipToAsteroidHit+0x254>
d0079598:	991c      	ldr	r1, [sp, #112]	; 0x70
d007959a:	eba3 0901 	sub.w	r9, r3, r1
d007959e:	991f      	ldr	r1, [sp, #124]	; 0x7c
d00795a0:	fb09 fb0b 	mul.w	fp, r9, fp
d00795a4:	eba2 0e01 	sub.w	lr, r2, r1
d00795a8:	fb09 f907 	mul.w	r9, r9, r7
d00795ac:	9911      	ldr	r1, [sp, #68]	; 0x44
d00795ae:	fb0e ba1a 	mls	sl, lr, sl, fp
d00795b2:	fb0e 9e11 	mls	lr, lr, r1, r9
d00795b6:	dd77      	ble.n	d00796a8 <doCheckShipToAsteroidHit+0x330>
d00795b8:	f1be 0f00 	cmp.w	lr, #0
d00795bc:	db06      	blt.n	d00795cc <doCheckShipToAsteroidHit+0x254>
d00795be:	45f0      	cmp	r8, lr
d00795c0:	db04      	blt.n	d00795cc <doCheckShipToAsteroidHit+0x254>
d00795c2:	f1ba 0f00 	cmp.w	sl, #0
d00795c6:	db01      	blt.n	d00795cc <doCheckShipToAsteroidHit+0x254>
d00795c8:	45d0      	cmp	r8, sl
d00795ca:	dab7      	bge.n	d007953c <doCheckShipToAsteroidHit+0x1c4>
d00795cc:	9f06      	ldr	r7, [sp, #24]
d00795ce:	42bd      	cmp	r5, r7
d00795d0:	db30      	blt.n	d0079634 <doCheckShipToAsteroidHit+0x2bc>
d00795d2:	9f0a      	ldr	r7, [sp, #40]	; 0x28
d00795d4:	42be      	cmp	r6, r7
d00795d6:	dc2d      	bgt.n	d0079634 <doCheckShipToAsteroidHit+0x2bc>
d00795d8:	9f0e      	ldr	r7, [sp, #56]	; 0x38
d00795da:	9902      	ldr	r1, [sp, #8]
d00795dc:	42b9      	cmp	r1, r7
d00795de:	db29      	blt.n	d0079634 <doCheckShipToAsteroidHit+0x2bc>
d00795e0:	9f17      	ldr	r7, [sp, #92]	; 0x5c
d00795e2:	45bc      	cmp	ip, r7
d00795e4:	dc26      	bgt.n	d0079634 <doCheckShipToAsteroidHit+0x2bc>
d00795e6:	9f12      	ldr	r7, [sp, #72]	; 0x48
d00795e8:	eba4 0b02 	sub.w	fp, r4, r2
d00795ec:	eba0 0a03 	sub.w	sl, r0, r3
d00795f0:	fb07 f80b 	mul.w	r8, r7, fp
d00795f4:	9f1b      	ldr	r7, [sp, #108]	; 0x6c
d00795f6:	fb07 881a 	mls	r8, r7, sl, r8
d00795fa:	f1b8 0f00 	cmp.w	r8, #0
d00795fe:	d019      	beq.n	d0079634 <doCheckShipToAsteroidHit+0x2bc>
d0079600:	9921      	ldr	r1, [sp, #132]	; 0x84
d0079602:	eba3 0901 	sub.w	r9, r3, r1
d0079606:	9920      	ldr	r1, [sp, #128]	; 0x80
d0079608:	fb09 fb0b 	mul.w	fp, r9, fp
d007960c:	eba2 0e01 	sub.w	lr, r2, r1
d0079610:	fb09 f907 	mul.w	r9, r9, r7
d0079614:	9912      	ldr	r1, [sp, #72]	; 0x48
d0079616:	fb0e ba1a 	mls	sl, lr, sl, fp
d007961a:	fb0e 9e11 	mls	lr, lr, r1, r9
d007961e:	dd4f      	ble.n	d00796c0 <doCheckShipToAsteroidHit+0x348>
d0079620:	f1be 0f00 	cmp.w	lr, #0
d0079624:	db06      	blt.n	d0079634 <doCheckShipToAsteroidHit+0x2bc>
d0079626:	45f0      	cmp	r8, lr
d0079628:	db04      	blt.n	d0079634 <doCheckShipToAsteroidHit+0x2bc>
d007962a:	f1ba 0f00 	cmp.w	sl, #0
d007962e:	db01      	blt.n	d0079634 <doCheckShipToAsteroidHit+0x2bc>
d0079630:	45d0      	cmp	r8, sl
d0079632:	da83      	bge.n	d007953c <doCheckShipToAsteroidHit+0x1c4>
d0079634:	9f07      	ldr	r7, [sp, #28]
d0079636:	42bd      	cmp	r5, r7
d0079638:	db2d      	blt.n	d0079696 <doCheckShipToAsteroidHit+0x31e>
d007963a:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
d007963c:	42ae      	cmp	r6, r5
d007963e:	dc2a      	bgt.n	d0079696 <doCheckShipToAsteroidHit+0x31e>
d0079640:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
d0079642:	9902      	ldr	r1, [sp, #8]
d0079644:	42a9      	cmp	r1, r5
d0079646:	db26      	blt.n	d0079696 <doCheckShipToAsteroidHit+0x31e>
d0079648:	9d18      	ldr	r5, [sp, #96]	; 0x60
d007964a:	45ac      	cmp	ip, r5
d007964c:	dc23      	bgt.n	d0079696 <doCheckShipToAsteroidHit+0x31e>
d007964e:	9d14      	ldr	r5, [sp, #80]	; 0x50
d0079650:	1aa4      	subs	r4, r4, r2
d0079652:	1ac0      	subs	r0, r0, r3
d0079654:	fb05 f604 	mul.w	r6, r5, r4
d0079658:	9d13      	ldr	r5, [sp, #76]	; 0x4c
d007965a:	fb05 6610 	mls	r6, r5, r0, r6
d007965e:	2e00      	cmp	r6, #0
d0079660:	d019      	beq.n	d0079696 <doCheckShipToAsteroidHit+0x31e>
d0079662:	9922      	ldr	r1, [sp, #136]	; 0x88
d0079664:	9f23      	ldr	r7, [sp, #140]	; 0x8c
d0079666:	eba2 0501 	sub.w	r5, r2, r1
d007966a:	9913      	ldr	r1, [sp, #76]	; 0x4c
d007966c:	eba3 0707 	sub.w	r7, r3, r7
d0079670:	fb07 f404 	mul.w	r4, r7, r4
d0079674:	fb07 f701 	mul.w	r7, r7, r1
d0079678:	9914      	ldr	r1, [sp, #80]	; 0x50
d007967a:	fb05 4410 	mls	r4, r5, r0, r4
d007967e:	fb05 7711 	mls	r7, r5, r1, r7
d0079682:	dd29      	ble.n	d00796d8 <doCheckShipToAsteroidHit+0x360>
d0079684:	2f00      	cmp	r7, #0
d0079686:	db06      	blt.n	d0079696 <doCheckShipToAsteroidHit+0x31e>
d0079688:	42be      	cmp	r6, r7
d007968a:	db04      	blt.n	d0079696 <doCheckShipToAsteroidHit+0x31e>
d007968c:	2c00      	cmp	r4, #0
d007968e:	db02      	blt.n	d0079696 <doCheckShipToAsteroidHit+0x31e>
d0079690:	42a6      	cmp	r6, r4
d0079692:	f6bf af53 	bge.w	d007953c <doCheckShipToAsteroidHit+0x1c4>
d0079696:	9901      	ldr	r1, [sp, #4]
d0079698:	9803      	ldr	r0, [sp, #12]
d007969a:	3108      	adds	r1, #8
d007969c:	4288      	cmp	r0, r1
d007969e:	9101      	str	r1, [sp, #4]
d00796a0:	f47f af00 	bne.w	d00794a4 <doCheckShipToAsteroidHit+0x12c>
d00796a4:	4684      	mov	ip, r0
d00796a6:	e6eb      	b.n	d0079480 <doCheckShipToAsteroidHit+0x108>
d00796a8:	f1be 0f00 	cmp.w	lr, #0
d00796ac:	dc8e      	bgt.n	d00795cc <doCheckShipToAsteroidHit+0x254>
d00796ae:	45f0      	cmp	r8, lr
d00796b0:	dc8c      	bgt.n	d00795cc <doCheckShipToAsteroidHit+0x254>
d00796b2:	f1ba 0f00 	cmp.w	sl, #0
d00796b6:	dc89      	bgt.n	d00795cc <doCheckShipToAsteroidHit+0x254>
d00796b8:	45d0      	cmp	r8, sl
d00796ba:	f77f af3f 	ble.w	d007953c <doCheckShipToAsteroidHit+0x1c4>
d00796be:	e785      	b.n	d00795cc <doCheckShipToAsteroidHit+0x254>
d00796c0:	f1be 0f00 	cmp.w	lr, #0
d00796c4:	dcb6      	bgt.n	d0079634 <doCheckShipToAsteroidHit+0x2bc>
d00796c6:	45f0      	cmp	r8, lr
d00796c8:	dcb4      	bgt.n	d0079634 <doCheckShipToAsteroidHit+0x2bc>
d00796ca:	f1ba 0f00 	cmp.w	sl, #0
d00796ce:	dcb1      	bgt.n	d0079634 <doCheckShipToAsteroidHit+0x2bc>
d00796d0:	45d0      	cmp	r8, sl
d00796d2:	f77f af33 	ble.w	d007953c <doCheckShipToAsteroidHit+0x1c4>
d00796d6:	e7ad      	b.n	d0079634 <doCheckShipToAsteroidHit+0x2bc>
d00796d8:	2f00      	cmp	r7, #0
d00796da:	dcdc      	bgt.n	d0079696 <doCheckShipToAsteroidHit+0x31e>
d00796dc:	42be      	cmp	r6, r7
d00796de:	dcda      	bgt.n	d0079696 <doCheckShipToAsteroidHit+0x31e>
d00796e0:	2c00      	cmp	r4, #0
d00796e2:	dcd8      	bgt.n	d0079696 <doCheckShipToAsteroidHit+0x31e>
d00796e4:	42a6      	cmp	r6, r4
d00796e6:	f77f af29 	ble.w	d007953c <doCheckShipToAsteroidHit+0x1c4>
d00796ea:	e7d4      	b.n	d0079696 <doCheckShipToAsteroidHit+0x31e>
d00796ec:	0000      	movs	r0, r0
	...

d00796f0 <doShipLogic>:
d00796f0:	4b33      	ldr	r3, [pc, #204]	; (d00797c0 <doShipLogic+0xd0>)
d00796f2:	ed9f 5a34 	vldr	s10, [pc, #208]	; d00797c4 <doShipLogic+0xd4>
d00796f6:	ed93 7a02 	vldr	s14, [r3, #8]
d00796fa:	ed93 6a03 	vldr	s12, [r3, #12]
d00796fe:	eeb7 7ac7 	vcvt.f64.f32	d7, s14
d0079702:	ed93 4a00 	vldr	s8, [r3]
d0079706:	eeb7 6ac6 	vcvt.f64.f32	d6, s12
d007970a:	edd3 4a05 	vldr	s9, [r3, #20]
d007970e:	edd3 5a01 	vldr	s11, [r3, #4]
d0079712:	ee34 5a85 	vadd.f32	s10, s9, s10
d0079716:	ed9f 3b28 	vldr	d3, [pc, #160]	; d00797b8 <doShipLogic+0xc8>
d007971a:	ee27 7b03 	vmul.f64	d7, d7, d3
d007971e:	ee26 6b03 	vmul.f64	d6, d6, d3
d0079722:	eeb7 7bc7 	vcvt.f32.f64	s14, d7
d0079726:	ed83 7a02 	vstr	s14, [r3, #8]
d007972a:	ee37 7a04 	vadd.f32	s14, s14, s8
d007972e:	eeb7 6bc6 	vcvt.f32.f64	s12, d6
d0079732:	eddf 6a25 	vldr	s13, [pc, #148]	; d00797c8 <doShipLogic+0xd8>
d0079736:	eeb4 7ac5 	vcmpe.f32	s14, s10
d007973a:	ed83 7a00 	vstr	s14, [r3]
d007973e:	ee76 7a25 	vadd.f32	s15, s12, s11
d0079742:	ed83 6a03 	vstr	s12, [r3, #12]
d0079746:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007974a:	edc3 7a01 	vstr	s15, [r3, #4]
d007974e:	dd0d      	ble.n	d007976c <doShipLogic+0x7c>
d0079750:	ee74 6aa6 	vadd.f32	s13, s9, s13
d0079754:	eeb1 6a64 	vneg.f32	s12, s9
d0079758:	eef4 7ae6 	vcmpe.f32	s15, s13
d007975c:	ed83 6a00 	vstr	s12, [r3]
d0079760:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0079764:	dd16      	ble.n	d0079794 <doShipLogic+0xa4>
d0079766:	ed83 6a01 	vstr	s12, [r3, #4]
d007976a:	4770      	bx	lr
d007976c:	ee74 6aa6 	vadd.f32	s13, s9, s13
d0079770:	eeb1 6a64 	vneg.f32	s12, s9
d0079774:	eef4 7ae6 	vcmpe.f32	s15, s13
d0079778:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007977c:	dd12      	ble.n	d00797a4 <doShipLogic+0xb4>
d007977e:	eeb4 7ac6 	vcmpe.f32	s14, s12
d0079782:	ed83 6a01 	vstr	s12, [r3, #4]
d0079786:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007978a:	d511      	bpl.n	d00797b0 <doShipLogic+0xc0>
d007978c:	eef0 7a46 	vmov.f32	s15, s12
d0079790:	ed83 5a00 	vstr	s10, [r3]
d0079794:	eef4 7ac6 	vcmpe.f32	s15, s12
d0079798:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007979c:	d5e5      	bpl.n	d007976a <doShipLogic+0x7a>
d007979e:	edc3 6a01 	vstr	s13, [r3, #4]
d00797a2:	4770      	bx	lr
d00797a4:	eeb4 7ac6 	vcmpe.f32	s14, s12
d00797a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00797ac:	d4f0      	bmi.n	d0079790 <doShipLogic+0xa0>
d00797ae:	e7f1      	b.n	d0079794 <doShipLogic+0xa4>
d00797b0:	4770      	bx	lr
d00797b2:	bf00      	nop
d00797b4:	f3af 8000 	nop.w
d00797b8:	1e6a7498 	.word	0x1e6a7498
d00797bc:	3fefaee4 	.word	0x3fefaee4
d00797c0:	d00833dc 	.word	0xd00833dc
d00797c4:	43f00000 	.word	0x43f00000
d00797c8:	43a00000 	.word	0x43a00000

d00797cc <fireFlame>:
d00797cc:	b570      	push	{r4, r5, r6, lr}
d00797ce:	4c2d      	ldr	r4, [pc, #180]	; (d0079884 <fireFlame+0xb8>)
d00797d0:	4d2d      	ldr	r5, [pc, #180]	; (d0079888 <fireFlame+0xbc>)
d00797d2:	4e2e      	ldr	r6, [pc, #184]	; (d007988c <fireFlame+0xc0>)
d00797d4:	ed2d 8b02 	vpush	{d8}
d00797d8:	ed94 8a04 	vldr	s16, [r4, #16]
d00797dc:	f003 f962 	bl	d007caa4 <rand>
d00797e0:	4a2b      	ldr	r2, [pc, #172]	; (d0079890 <fireFlame+0xc4>)
d00797e2:	2132      	movs	r1, #50	; 0x32
d00797e4:	eef3 7a09 	vmov.f32	s15, #57	; 0x41c80000  25.0
d00797e8:	fb82 3200 	smull	r3, r2, r2, r0
d00797ec:	17c3      	asrs	r3, r0, #31
d00797ee:	ebc3 1322 	rsb	r3, r3, r2, asr #4
d00797f2:	ee38 7a67 	vsub.f32	s14, s16, s15
d00797f6:	f44f 72b4 	mov.w	r2, #360	; 0x168
d00797fa:	fb01 0313 	mls	r3, r1, r3, r0
d00797fe:	ee07 3a90 	vmov	s15, r3
d0079802:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0079806:	ee77 7a87 	vadd.f32	s15, s15, s14
d007980a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007980e:	ee17 3a90 	vmov	r3, s15
d0079812:	fb85 1003 	smull	r1, r0, r5, r3
d0079816:	17dd      	asrs	r5, r3, #31
d0079818:	4418      	add	r0, r3
d007981a:	ebc5 2520 	rsb	r5, r5, r0, asr #8
d007981e:	fb02 3515 	mls	r5, r2, r5, r3
d0079822:	f8d6 30b0 	ldr.w	r3, [r6, #176]	; 0xb0
d0079826:	2d00      	cmp	r5, #0
d0079828:	bfb8      	it	lt
d007982a:	18ad      	addlt	r5, r5, r2
d007982c:	4628      	mov	r0, r5
d007982e:	4798      	blx	r3
d0079830:	f8d6 30ac 	ldr.w	r3, [r6, #172]	; 0xac
d0079834:	4628      	mov	r0, r5
d0079836:	eeb0 8a40 	vmov.f32	s16, s0
d007983a:	4798      	blx	r3
d007983c:	4815      	ldr	r0, [pc, #84]	; (d0079894 <fireFlame+0xc8>)
d007983e:	eef0 7a40 	vmov.f32	s15, s0
d0079842:	2300      	movs	r3, #0
d0079844:	4602      	mov	r2, r0
d0079846:	e002      	b.n	d007984e <fireFlame+0x82>
d0079848:	3301      	adds	r3, #1
d007984a:	2b18      	cmp	r3, #24
d007984c:	d017      	beq.n	d007987e <fireFlame+0xb2>
d007984e:	6911      	ldr	r1, [r2, #16]
d0079850:	3214      	adds	r2, #20
d0079852:	2900      	cmp	r1, #0
d0079854:	d1f8      	bne.n	d0079848 <fireFlame+0x7c>
d0079856:	eeb8 0a00 	vmov.f32	s0, #128	; 0xc0000000 -2.0
d007985a:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d007985e:	251e      	movs	r5, #30
d0079860:	6821      	ldr	r1, [r4, #0]
d0079862:	eb00 0383 	add.w	r3, r0, r3, lsl #2
d0079866:	6862      	ldr	r2, [r4, #4]
d0079868:	ee28 8a00 	vmul.f32	s16, s16, s0
d007986c:	ee27 0a80 	vmul.f32	s0, s15, s0
d0079870:	611d      	str	r5, [r3, #16]
d0079872:	6019      	str	r1, [r3, #0]
d0079874:	605a      	str	r2, [r3, #4]
d0079876:	ed83 8a02 	vstr	s16, [r3, #8]
d007987a:	ed83 0a03 	vstr	s0, [r3, #12]
d007987e:	ecbd 8b02 	vpop	{d8}
d0079882:	bd70      	pop	{r4, r5, r6, pc}
d0079884:	d00833dc 	.word	0xd00833dc
d0079888:	b60b60b7 	.word	0xb60b60b7
d007988c:	2001f000 	.word	0x2001f000
d0079890:	51eb851f 	.word	0x51eb851f
d0079894:	d007fa60 	.word	0xd007fa60

d0079898 <renderFlames>:
d0079898:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d007989c:	4c2a      	ldr	r4, [pc, #168]	; (d0079948 <renderFlames+0xb0>)
d007989e:	f04f 0843 	mov.w	r8, #67	; 0x43
d00798a2:	4d2a      	ldr	r5, [pc, #168]	; (d007994c <renderFlames+0xb4>)
d00798a4:	f504 77f0 	add.w	r7, r4, #480	; 0x1e0
d00798a8:	4e29      	ldr	r6, [pc, #164]	; (d0079950 <renderFlames+0xb8>)
d00798aa:	ed2d 8b02 	vpush	{d8}
d00798ae:	ed9f 8b24 	vldr	d8, [pc, #144]	; d0079940 <renderFlames+0xa8>
d00798b2:	6923      	ldr	r3, [r4, #16]
d00798b4:	2b00      	cmp	r3, #0
d00798b6:	f103 32ff 	add.w	r2, r3, #4294967295	; 0xffffffff
d00798ba:	dd38      	ble.n	d007992e <renderFlames+0x96>
d00798bc:	ed94 4a02 	vldr	s8, [r4, #8]
d00798c0:	2141      	movs	r1, #65	; 0x41
d00798c2:	edd4 4a03 	vldr	s9, [r4, #12]
d00798c6:	eeb7 6ac4 	vcvt.f64.f32	d6, s8
d00798ca:	ed94 5a00 	vldr	s10, [r4]
d00798ce:	eeb7 7ae4 	vcvt.f64.f32	d7, s9
d00798d2:	edd4 5a01 	vldr	s11, [r4, #4]
d00798d6:	69ab      	ldr	r3, [r5, #24]
d00798d8:	ee35 5a04 	vadd.f32	s10, s10, s8
d00798dc:	ee26 6b08 	vmul.f64	d6, d6, d8
d00798e0:	6122      	str	r2, [r4, #16]
d00798e2:	2b04      	cmp	r3, #4
d00798e4:	f8d6 30f8 	ldr.w	r3, [r6, #248]	; 0xf8
d00798e8:	ed84 5a00 	vstr	s10, [r4]
d00798ec:	ee27 7b08 	vmul.f64	d7, d7, d8
d00798f0:	eeb7 6bc6 	vcvt.f32.f64	s12, d6
d00798f4:	ee75 6aa4 	vadd.f32	s13, s11, s9
d00798f8:	eeb7 7bc7 	vcvt.f32.f64	s14, d7
d00798fc:	ed84 6a02 	vstr	s12, [r4, #8]
d0079900:	edc4 6a01 	vstr	s13, [r4, #4]
d0079904:	ed84 7a03 	vstr	s14, [r4, #12]
d0079908:	bfd4      	ite	le
d007990a:	7019      	strble	r1, [r3, #0]
d007990c:	f883 8000 	strbgt.w	r8, [r3]
d0079910:	ed94 7a01 	vldr	s14, [r4, #4]
d0079914:	edd4 7a00 	vldr	s15, [r4]
d0079918:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d007991c:	f8d6 3120 	ldr.w	r3, [r6, #288]	; 0x120
d0079920:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0079924:	ee17 1a10 	vmov	r1, s14
d0079928:	ee17 0a90 	vmov	r0, s15
d007992c:	4798      	blx	r3
d007992e:	3414      	adds	r4, #20
d0079930:	351c      	adds	r5, #28
d0079932:	42bc      	cmp	r4, r7
d0079934:	d1bd      	bne.n	d00798b2 <renderFlames+0x1a>
d0079936:	ecbd 8b02 	vpop	{d8}
d007993a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d007993e:	bf00      	nop
d0079940:	d1745d17 	.word	0xd1745d17
d0079944:	3fed1745 	.word	0x3fed1745
d0079948:	d007fa60 	.word	0xd007fa60
d007994c:	d007ef10 	.word	0xd007ef10
d0079950:	2001f000 	.word	0x2001f000

d0079954 <renderShip>:
d0079954:	4b4d      	ldr	r3, [pc, #308]	; (d0079a8c <renderShip+0x138>)
d0079956:	2157      	movs	r1, #87	; 0x57
d0079958:	484d      	ldr	r0, [pc, #308]	; (d0079a90 <renderShip+0x13c>)
d007995a:	f44f 72b4 	mov.w	r2, #360	; 0x168
d007995e:	f8d3 30f8 	ldr.w	r3, [r3, #248]	; 0xf8
d0079962:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0079966:	4f4b      	ldr	r7, [pc, #300]	; (d0079a94 <renderShip+0x140>)
d0079968:	4d48      	ldr	r5, [pc, #288]	; (d0079a8c <renderShip+0x138>)
d007996a:	4e4b      	ldr	r6, [pc, #300]	; (d0079a98 <renderShip+0x144>)
d007996c:	46a9      	mov	r9, r5
d007996e:	ed2d 8b02 	vpush	{d8}
d0079972:	7019      	strb	r1, [r3, #0]
d0079974:	b083      	sub	sp, #12
d0079976:	6c3b      	ldr	r3, [r7, #64]	; 0x40
d0079978:	fb80 1003 	smull	r1, r0, r0, r3
d007997c:	17dc      	asrs	r4, r3, #31
d007997e:	4418      	add	r0, r3
d0079980:	ebc4 2420 	rsb	r4, r4, r0, asr #8
d0079984:	fb02 3414 	mls	r4, r2, r4, r3
d0079988:	f8d5 30b0 	ldr.w	r3, [r5, #176]	; 0xb0
d007998c:	2c00      	cmp	r4, #0
d007998e:	bfb8      	it	lt
d0079990:	18a4      	addlt	r4, r4, r2
d0079992:	4620      	mov	r0, r4
d0079994:	4798      	blx	r3
d0079996:	edd7 7a0b 	vldr	s15, [r7, #44]	; 0x2c
d007999a:	ed97 7a05 	vldr	s14, [r7, #20]
d007999e:	4620      	mov	r0, r4
d00799a0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00799a4:	f8d5 30ac 	ldr.w	r3, [r5, #172]	; 0xac
d00799a8:	ee67 7a87 	vmul.f32	s15, s15, s14
d00799ac:	ee27 0a80 	vmul.f32	s0, s15, s0
d00799b0:	eefd 7ac0 	vcvt.s32.f32	s15, s0
d00799b4:	edcd 7a00 	vstr	s15, [sp]
d00799b8:	4798      	blx	r3
d00799ba:	edd7 7a0b 	vldr	s15, [r7, #44]	; 0x2c
d00799be:	edd7 6a05 	vldr	s13, [r7, #20]
d00799c2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00799c6:	ed97 6a00 	vldr	s12, [r7]
d00799ca:	ed97 7a01 	vldr	s14, [r7, #4]
d00799ce:	f1a6 0720 	sub.w	r7, r6, #32
d00799d2:	eebd 6ac6 	vcvt.s32.f32	s12, s12
d00799d6:	ee67 7aa6 	vmul.f32	s15, s15, s13
d00799da:	463d      	mov	r5, r7
d00799dc:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d00799e0:	ee16 aa10 	vmov	sl, s12
d00799e4:	ee27 0a80 	vmul.f32	s0, s15, s0
d00799e8:	ed8d 7a01 	vstr	s14, [sp, #4]
d00799ec:	eefd 7ac0 	vcvt.s32.f32	s15, s0
d00799f0:	ee17 4a90 	vmov	r4, s15
d00799f4:	6973      	ldr	r3, [r6, #20]
d00799f6:	3508      	adds	r5, #8
d00799f8:	4a25      	ldr	r2, [pc, #148]	; (d0079a90 <renderShip+0x13c>)
d00799fa:	ea4f 7be3 	mov.w	fp, r3, asr #31
d00799fe:	fb82 2003 	smull	r2, r0, r2, r3
d0079a02:	f44f 72b4 	mov.w	r2, #360	; 0x168
d0079a06:	4418      	add	r0, r3
d0079a08:	ebcb 2b20 	rsb	fp, fp, r0, asr #8
d0079a0c:	fb02 3b1b 	mls	fp, r2, fp, r3
d0079a10:	f8d9 30b0 	ldr.w	r3, [r9, #176]	; 0xb0
d0079a14:	f1bb 0f00 	cmp.w	fp, #0
d0079a18:	bfb8      	it	lt
d0079a1a:	4493      	addlt	fp, r2
d0079a1c:	4658      	mov	r0, fp
d0079a1e:	4798      	blx	r3
d0079a20:	edd6 7a00 	vldr	s15, [r6]
d0079a24:	ed97 8a05 	vldr	s16, [r7, #20]
d0079a28:	4658      	mov	r0, fp
d0079a2a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0079a2e:	f8d9 30ac 	ldr.w	r3, [r9, #172]	; 0xac
d0079a32:	ee67 7a88 	vmul.f32	s15, s15, s16
d0079a36:	ee27 0a80 	vmul.f32	s0, s15, s0
d0079a3a:	eebd 8ac0 	vcvt.s32.f32	s16, s0
d0079a3e:	4798      	blx	r3
d0079a40:	ecf6 7a01 	vldmia	r6!, {s15}
d0079a44:	ed97 7a05 	vldr	s14, [r7, #20]
d0079a48:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0079a4c:	9b01      	ldr	r3, [sp, #4]
d0079a4e:	ee18 2a10 	vmov	r2, s16
d0079a52:	9800      	ldr	r0, [sp, #0]
d0079a54:	1919      	adds	r1, r3, r4
d0079a56:	f8d9 b124 	ldr.w	fp, [r9, #292]	; 0x124
d0079a5a:	ee67 7a87 	vmul.f32	s15, s15, s14
d0079a5e:	4452      	add	r2, sl
d0079a60:	4450      	add	r0, sl
d0079a62:	ed8d 8a00 	vstr	s16, [sp]
d0079a66:	642a      	str	r2, [r5, #64]	; 0x40
d0079a68:	ee27 0a80 	vmul.f32	s0, s15, s0
d0079a6c:	eefd 7ac0 	vcvt.s32.f32	s15, s0
d0079a70:	ee17 4a90 	vmov	r4, s15
d0079a74:	4423      	add	r3, r4
d0079a76:	646b      	str	r3, [r5, #68]	; 0x44
d0079a78:	47d8      	blx	fp
d0079a7a:	4b07      	ldr	r3, [pc, #28]	; (d0079a98 <renderShip+0x144>)
d0079a7c:	429d      	cmp	r5, r3
d0079a7e:	d1b9      	bne.n	d00799f4 <renderShip+0xa0>
d0079a80:	b003      	add	sp, #12
d0079a82:	ecbd 8b02 	vpop	{d8}
d0079a86:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0079a8a:	bf00      	nop
d0079a8c:	2001f000 	.word	0x2001f000
d0079a90:	b60b60b7 	.word	0xb60b60b7
d0079a94:	d00833dc 	.word	0xd00833dc
d0079a98:	d00833fc 	.word	0xd00833fc

d0079a9c <testShipToShipCollision>:
d0079a9c:	4ac3      	ldr	r2, [pc, #780]	; (d0079dac <testShipToShipCollision+0x310>)
d0079a9e:	4bc4      	ldr	r3, [pc, #784]	; (d0079db0 <testShipToShipCollision+0x314>)
d0079aa0:	edd2 6a00 	vldr	s13, [r2]
d0079aa4:	ed92 7a01 	vldr	s14, [r2, #4]
d0079aa8:	eef0 0a66 	vmov.f32	s1, s13
d0079aac:	edd2 7a03 	vldr	s15, [r2, #12]
d0079ab0:	ed92 5a0b 	vldr	s10, [r2, #44]	; 0x2c
d0079ab4:	eeb0 2a47 	vmov.f32	s4, s14
d0079ab8:	eef0 3a66 	vmov.f32	s7, s13
d0079abc:	edd2 5a09 	vldr	s11, [r2, #36]	; 0x24
d0079ac0:	eee7 0a85 	vfma.f32	s1, s15, s10
d0079ac4:	ed92 5a0e 	vldr	s10, [r2, #56]	; 0x38
d0079ac8:	eeb0 1a47 	vmov.f32	s2, s14
d0079acc:	ed92 6a0a 	vldr	s12, [r2, #40]	; 0x28
d0079ad0:	eea7 2a85 	vfma.f32	s4, s15, s10
d0079ad4:	ed92 5a11 	vldr	s10, [r2, #68]	; 0x44
d0079ad8:	eef0 2a66 	vmov.f32	s5, s13
d0079adc:	eee7 3a85 	vfma.f32	s7, s15, s10
d0079ae0:	ed92 5a14 	vldr	s10, [r2, #80]	; 0x50
d0079ae4:	eeb0 4a47 	vmov.f32	s8, s14
d0079ae8:	eeb0 0a47 	vmov.f32	s0, s14
d0079aec:	eef0 1a66 	vmov.f32	s3, s13
d0079af0:	eeb0 3a47 	vmov.f32	s6, s14
d0079af4:	eea7 0a86 	vfma.f32	s0, s15, s12
d0079af8:	ed92 6a0d 	vldr	s12, [r2, #52]	; 0x34
d0079afc:	eef0 4a66 	vmov.f32	s9, s13
d0079b00:	eee7 1a86 	vfma.f32	s3, s15, s12
d0079b04:	ed92 6a10 	vldr	s12, [r2, #64]	; 0x40
d0079b08:	eefd 0ae0 	vcvt.s32.f32	s1, s1
d0079b0c:	eea7 3a86 	vfma.f32	s6, s15, s12
d0079b10:	ed92 6a13 	vldr	s12, [r2, #76]	; 0x4c
d0079b14:	eebd 2ac2 	vcvt.s32.f32	s4, s4
d0079b18:	eee7 4a86 	vfma.f32	s9, s15, s12
d0079b1c:	ed92 6a16 	vldr	s12, [r2, #88]	; 0x58
d0079b20:	eebd 0ac0 	vcvt.s32.f32	s0, s0
d0079b24:	eefd 1ae1 	vcvt.s32.f32	s3, s3
d0079b28:	eefd 3ae3 	vcvt.s32.f32	s7, s7
d0079b2c:	eebd 3ac3 	vcvt.s32.f32	s6, s6
d0079b30:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0079b34:	ed2d 8b02 	vpush	{d8}
d0079b38:	eef0 8a47 	vmov.f32	s17, s14
d0079b3c:	b0b3      	sub	sp, #204	; 0xcc
d0079b3e:	eeb0 8a66 	vmov.f32	s16, s13
d0079b42:	2400      	movs	r4, #0
d0079b44:	eefd 4ae4 	vcvt.s32.f32	s9, s9
d0079b48:	ed8d 0a2a 	vstr	s0, [sp, #168]	; 0xa8
d0079b4c:	eee7 8a85 	vfma.f32	s17, s15, s10
d0079b50:	edcd 0a23 	vstr	s1, [sp, #140]	; 0x8c
d0079b54:	eea7 8aa5 	vfma.f32	s16, s15, s11
d0079b58:	edd2 5a0c 	vldr	s11, [r2, #48]	; 0x30
d0079b5c:	edcd 1a24 	vstr	s3, [sp, #144]	; 0x90
d0079b60:	eea7 1aa5 	vfma.f32	s2, s15, s11
d0079b64:	edd2 5a0f 	vldr	s11, [r2, #60]	; 0x3c
d0079b68:	ed8d 2a2c 	vstr	s4, [sp, #176]	; 0xb0
d0079b6c:	eee7 2aa5 	vfma.f32	s5, s15, s11
d0079b70:	edd2 5a12 	vldr	s11, [r2, #72]	; 0x48
d0079b74:	eeb0 5a68 	vmov.f32	s10, s17
d0079b78:	ed8d 3a2d 	vstr	s6, [sp, #180]	; 0xb4
d0079b7c:	eef0 8a66 	vmov.f32	s17, s13
d0079b80:	edcd 3a26 	vstr	s7, [sp, #152]	; 0x98
d0079b84:	eea7 4aa5 	vfma.f32	s8, s15, s11
d0079b88:	edd2 5a15 	vldr	s11, [r2, #84]	; 0x54
d0079b8c:	eebd 8ac8 	vcvt.s32.f32	s16, s16
d0079b90:	edcd 4a27 	vstr	s9, [sp, #156]	; 0x9c
d0079b94:	eee7 8aa5 	vfma.f32	s17, s15, s11
d0079b98:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0079b9c:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0079ba0:	ed8d 8a22 	vstr	s16, [sp, #136]	; 0x88
d0079ba4:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d0079ba8:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d0079bac:	ed8d 1a2b 	vstr	s2, [sp, #172]	; 0xac
d0079bb0:	edcd 2a25 	vstr	s5, [sp, #148]	; 0x94
d0079bb4:	eef0 5a68 	vmov.f32	s11, s17
d0079bb8:	ed8d 5a2f 	vstr	s10, [sp, #188]	; 0xbc
d0079bbc:	eef0 8a47 	vmov.f32	s17, s14
d0079bc0:	ed8d 4a2e 	vstr	s8, [sp, #184]	; 0xb8
d0079bc4:	eefd 5ae5 	vcvt.s32.f32	s11, s11
d0079bc8:	eee7 8a86 	vfma.f32	s17, s15, s12
d0079bcc:	eeb0 6a68 	vmov.f32	s12, s17
d0079bd0:	edd2 8a17 	vldr	s17, [r2, #92]	; 0x5c
d0079bd4:	edcd 5a28 	vstr	s11, [sp, #160]	; 0xa0
d0079bd8:	6c9d      	ldr	r5, [r3, #72]	; 0x48
d0079bda:	eee8 6aa7 	vfma.f32	s13, s17, s15
d0079bde:	6e19      	ldr	r1, [r3, #96]	; 0x60
d0079be0:	eebd 6ac6 	vcvt.s32.f32	s12, s12
d0079be4:	6d98      	ldr	r0, [r3, #88]	; 0x58
d0079be6:	46ae      	mov	lr, r5
d0079be8:	42a9      	cmp	r1, r5
d0079bea:	6d1f      	ldr	r7, [r3, #80]	; 0x50
d0079bec:	9018      	str	r0, [sp, #96]	; 0x60
d0079bee:	4608      	mov	r0, r1
d0079bf0:	bfa8      	it	ge
d0079bf2:	4628      	movge	r0, r5
d0079bf4:	42a9      	cmp	r1, r5
d0079bf6:	6e5e      	ldr	r6, [r3, #100]	; 0x64
d0079bf8:	46bc      	mov	ip, r7
d0079bfa:	9002      	str	r0, [sp, #8]
d0079bfc:	4608      	mov	r0, r1
d0079bfe:	bfb8      	it	lt
d0079c00:	4628      	movlt	r0, r5
d0079c02:	42af      	cmp	r7, r5
d0079c04:	961a      	str	r6, [sp, #104]	; 0x68
d0079c06:	eba1 0605 	sub.w	r6, r1, r5
d0079c0a:	bfa8      	it	ge
d0079c0c:	46ac      	movge	ip, r5
d0079c0e:	9006      	str	r0, [sp, #24]
d0079c10:	42af      	cmp	r7, r5
d0079c12:	6cd8      	ldr	r0, [r3, #76]	; 0x4c
d0079c14:	951f      	str	r5, [sp, #124]	; 0x7c
d0079c16:	9016      	str	r0, [sp, #88]	; 0x58
d0079c18:	eba5 0007 	sub.w	r0, r5, r7
d0079c1c:	f8cd c00c 	str.w	ip, [sp, #12]
d0079c20:	46bc      	mov	ip, r7
d0079c22:	bfb8      	it	lt
d0079c24:	46ac      	movlt	ip, r5
d0079c26:	9d18      	ldr	r5, [sp, #96]	; 0x60
d0079c28:	9720      	str	r7, [sp, #128]	; 0x80
d0079c2a:	42bd      	cmp	r5, r7
d0079c2c:	f8cd c01c 	str.w	ip, [sp, #28]
d0079c30:	46ac      	mov	ip, r5
d0079c32:	961b      	str	r6, [sp, #108]	; 0x6c
d0079c34:	bfa8      	it	ge
d0079c36:	46bc      	movge	ip, r7
d0079c38:	42bd      	cmp	r5, r7
d0079c3a:	6d5e      	ldr	r6, [r3, #84]	; 0x54
d0079c3c:	f8cd c010 	str.w	ip, [sp, #16]
d0079c40:	46ac      	mov	ip, r5
d0079c42:	bfb8      	it	lt
d0079c44:	46bc      	movlt	ip, r7
d0079c46:	42a9      	cmp	r1, r5
d0079c48:	eba7 0705 	sub.w	r7, r7, r5
d0079c4c:	6ddb      	ldr	r3, [r3, #92]	; 0x5c
d0079c4e:	ed8d 6a30 	vstr	s12, [sp, #192]	; 0xc0
d0079c52:	971d      	str	r7, [sp, #116]	; 0x74
d0079c54:	460f      	mov	r7, r1
d0079c56:	bfa8      	it	ge
d0079c58:	462f      	movge	r7, r5
d0079c5a:	42a9      	cmp	r1, r5
d0079c5c:	ed92 6a18 	vldr	s12, [r2, #96]	; 0x60
d0079c60:	9705      	str	r7, [sp, #20]
d0079c62:	460f      	mov	r7, r1
d0079c64:	bfb8      	it	lt
d0079c66:	462f      	movlt	r7, r5
d0079c68:	9121      	str	r1, [sp, #132]	; 0x84
d0079c6a:	9617      	str	r6, [sp, #92]	; 0x5c
d0079c6c:	eea7 7a86 	vfma.f32	s14, s15, s12
d0079c70:	9709      	str	r7, [sp, #36]	; 0x24
d0079c72:	1a6f      	subs	r7, r5, r1
d0079c74:	9319      	str	r3, [sp, #100]	; 0x64
d0079c76:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0079c7a:	991a      	ldr	r1, [sp, #104]	; 0x68
d0079c7c:	901c      	str	r0, [sp, #112]	; 0x70
d0079c7e:	970d      	str	r7, [sp, #52]	; 0x34
d0079c80:	4608      	mov	r0, r1
d0079c82:	f8cd c020 	str.w	ip, [sp, #32]
d0079c86:	ee17 2a90 	vmov	r2, s15
d0079c8a:	9d16      	ldr	r5, [sp, #88]	; 0x58
d0079c8c:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d0079c90:	9e17      	ldr	r6, [sp, #92]	; 0x5c
d0079c92:	42a9      	cmp	r1, r5
d0079c94:	eba1 0705 	sub.w	r7, r1, r5
d0079c98:	ee17 3a90 	vmov	r3, s15
d0079c9c:	9229      	str	r2, [sp, #164]	; 0xa4
d0079c9e:	bfa8      	it	ge
d0079ca0:	4628      	movge	r0, r5
d0079ca2:	42a9      	cmp	r1, r5
d0079ca4:	970a      	str	r7, [sp, #40]	; 0x28
d0079ca6:	4637      	mov	r7, r6
d0079ca8:	900e      	str	r0, [sp, #56]	; 0x38
d0079caa:	4608      	mov	r0, r1
d0079cac:	bfb8      	it	lt
d0079cae:	4628      	movlt	r0, r5
d0079cb0:	42ae      	cmp	r6, r5
d0079cb2:	edcd 7a31 	vstr	s15, [sp, #196]	; 0xc4
d0079cb6:	bfa8      	it	ge
d0079cb8:	462f      	movge	r7, r5
d0079cba:	42ae      	cmp	r6, r5
d0079cbc:	9012      	str	r0, [sp, #72]	; 0x48
d0079cbe:	eba5 0006 	sub.w	r0, r5, r6
d0079cc2:	970f      	str	r7, [sp, #60]	; 0x3c
d0079cc4:	4637      	mov	r7, r6
d0079cc6:	bfb8      	it	lt
d0079cc8:	462f      	movlt	r7, r5
d0079cca:	9d19      	ldr	r5, [sp, #100]	; 0x64
d0079ccc:	900b      	str	r0, [sp, #44]	; 0x2c
d0079cce:	42b5      	cmp	r5, r6
d0079cd0:	9713      	str	r7, [sp, #76]	; 0x4c
d0079cd2:	462f      	mov	r7, r5
d0079cd4:	eba6 0005 	sub.w	r0, r6, r5
d0079cd8:	bfa8      	it	ge
d0079cda:	4637      	movge	r7, r6
d0079cdc:	42b5      	cmp	r5, r6
d0079cde:	900c      	str	r0, [sp, #48]	; 0x30
d0079ce0:	4608      	mov	r0, r1
d0079ce2:	9710      	str	r7, [sp, #64]	; 0x40
d0079ce4:	462f      	mov	r7, r5
d0079ce6:	bfb8      	it	lt
d0079ce8:	4637      	movlt	r7, r6
d0079cea:	42a9      	cmp	r1, r5
d0079cec:	9400      	str	r4, [sp, #0]
d0079cee:	bfa8      	it	ge
d0079cf0:	4628      	movge	r0, r5
d0079cf2:	42a9      	cmp	r1, r5
d0079cf4:	9714      	str	r7, [sp, #80]	; 0x50
d0079cf6:	9011      	str	r0, [sp, #68]	; 0x44
d0079cf8:	4608      	mov	r0, r1
d0079cfa:	bfb8      	it	lt
d0079cfc:	4628      	movlt	r0, r5
d0079cfe:	1a69      	subs	r1, r5, r1
d0079d00:	9015      	str	r0, [sp, #84]	; 0x54
d0079d02:	911e      	str	r1, [sp, #120]	; 0x78
d0079d04:	9c00      	ldr	r4, [sp, #0]
d0079d06:	a922      	add	r1, sp, #136	; 0x88
d0079d08:	4610      	mov	r0, r2
d0079d0a:	f851 2024 	ldr.w	r2, [r1, r4, lsl #2]
d0079d0e:	4619      	mov	r1, r3
d0079d10:	ab2a      	add	r3, sp, #168	; 0xa8
d0079d12:	4282      	cmp	r2, r0
d0079d14:	4615      	mov	r5, r2
d0079d16:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
d0079d1a:	4616      	mov	r6, r2
d0079d1c:	bfb8      	it	lt
d0079d1e:	4605      	movlt	r5, r0
d0079d20:	4282      	cmp	r2, r0
d0079d22:	469c      	mov	ip, r3
d0079d24:	9c02      	ldr	r4, [sp, #8]
d0079d26:	bfa8      	it	ge
d0079d28:	4606      	movge	r6, r0
d0079d2a:	428b      	cmp	r3, r1
d0079d2c:	461f      	mov	r7, r3
d0079d2e:	bfa8      	it	ge
d0079d30:	468c      	movge	ip, r1
d0079d32:	428b      	cmp	r3, r1
d0079d34:	bfb8      	it	lt
d0079d36:	460f      	movlt	r7, r1
d0079d38:	42a5      	cmp	r5, r4
d0079d3a:	9701      	str	r7, [sp, #4]
d0079d3c:	db44      	blt.n	d0079dc8 <testShipToShipCollision+0x32c>
d0079d3e:	9c06      	ldr	r4, [sp, #24]
d0079d40:	42a6      	cmp	r6, r4
d0079d42:	dc41      	bgt.n	d0079dc8 <testShipToShipCollision+0x32c>
d0079d44:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d0079d46:	42a7      	cmp	r7, r4
d0079d48:	db3e      	blt.n	d0079dc8 <testShipToShipCollision+0x32c>
d0079d4a:	9c12      	ldr	r4, [sp, #72]	; 0x48
d0079d4c:	45a4      	cmp	ip, r4
d0079d4e:	dc3b      	bgt.n	d0079dc8 <testShipToShipCollision+0x32c>
d0079d50:	9f0a      	ldr	r7, [sp, #40]	; 0x28
d0079d52:	eba0 0b02 	sub.w	fp, r0, r2
d0079d56:	eba1 0a03 	sub.w	sl, r1, r3
d0079d5a:	fb07 f80b 	mul.w	r8, r7, fp
d0079d5e:	9f1b      	ldr	r7, [sp, #108]	; 0x6c
d0079d60:	fb07 881a 	mls	r8, r7, sl, r8
d0079d64:	f1b8 0f00 	cmp.w	r8, #0
d0079d68:	d02e      	beq.n	d0079dc8 <testShipToShipCollision+0x32c>
d0079d6a:	9c16      	ldr	r4, [sp, #88]	; 0x58
d0079d6c:	eba3 0904 	sub.w	r9, r3, r4
d0079d70:	9c1f      	ldr	r4, [sp, #124]	; 0x7c
d0079d72:	fb09 fb0b 	mul.w	fp, r9, fp
d0079d76:	eba2 0e04 	sub.w	lr, r2, r4
d0079d7a:	fb09 f907 	mul.w	r9, r9, r7
d0079d7e:	9c0a      	ldr	r4, [sp, #40]	; 0x28
d0079d80:	fb0e ba1a 	mls	sl, lr, sl, fp
d0079d84:	fb0e 9e14 	mls	lr, lr, r4, r9
d0079d88:	dd14      	ble.n	d0079db4 <testShipToShipCollision+0x318>
d0079d8a:	f1be 0f00 	cmp.w	lr, #0
d0079d8e:	db1b      	blt.n	d0079dc8 <testShipToShipCollision+0x32c>
d0079d90:	45f0      	cmp	r8, lr
d0079d92:	db19      	blt.n	d0079dc8 <testShipToShipCollision+0x32c>
d0079d94:	f1ba 0f00 	cmp.w	sl, #0
d0079d98:	db16      	blt.n	d0079dc8 <testShipToShipCollision+0x32c>
d0079d9a:	45d0      	cmp	r8, sl
d0079d9c:	db14      	blt.n	d0079dc8 <testShipToShipCollision+0x32c>
d0079d9e:	2001      	movs	r0, #1
d0079da0:	b033      	add	sp, #204	; 0xcc
d0079da2:	ecbd 8b02 	vpop	{d8}
d0079da6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0079daa:	bf00      	nop
d0079dac:	d007fc60 	.word	0xd007fc60
d0079db0:	d00833dc 	.word	0xd00833dc
d0079db4:	f1be 0f00 	cmp.w	lr, #0
d0079db8:	dc06      	bgt.n	d0079dc8 <testShipToShipCollision+0x32c>
d0079dba:	45f0      	cmp	r8, lr
d0079dbc:	dc04      	bgt.n	d0079dc8 <testShipToShipCollision+0x32c>
d0079dbe:	f1ba 0f00 	cmp.w	sl, #0
d0079dc2:	dc01      	bgt.n	d0079dc8 <testShipToShipCollision+0x32c>
d0079dc4:	45d0      	cmp	r8, sl
d0079dc6:	ddea      	ble.n	d0079d9e <testShipToShipCollision+0x302>
d0079dc8:	9c03      	ldr	r4, [sp, #12]
d0079dca:	42a5      	cmp	r5, r4
d0079dcc:	db30      	blt.n	d0079e30 <testShipToShipCollision+0x394>
d0079dce:	9c07      	ldr	r4, [sp, #28]
d0079dd0:	42a6      	cmp	r6, r4
d0079dd2:	dc2d      	bgt.n	d0079e30 <testShipToShipCollision+0x394>
d0079dd4:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
d0079dd6:	9f01      	ldr	r7, [sp, #4]
d0079dd8:	42a7      	cmp	r7, r4
d0079dda:	db29      	blt.n	d0079e30 <testShipToShipCollision+0x394>
d0079ddc:	9c13      	ldr	r4, [sp, #76]	; 0x4c
d0079dde:	45a4      	cmp	ip, r4
d0079de0:	dc26      	bgt.n	d0079e30 <testShipToShipCollision+0x394>
d0079de2:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
d0079de4:	eba0 0b02 	sub.w	fp, r0, r2
d0079de8:	eba1 0a03 	sub.w	sl, r1, r3
d0079dec:	fb07 f80b 	mul.w	r8, r7, fp
d0079df0:	9f1c      	ldr	r7, [sp, #112]	; 0x70
d0079df2:	fb07 881a 	mls	r8, r7, sl, r8
d0079df6:	f1b8 0f00 	cmp.w	r8, #0
d0079dfa:	d019      	beq.n	d0079e30 <testShipToShipCollision+0x394>
d0079dfc:	9c17      	ldr	r4, [sp, #92]	; 0x5c
d0079dfe:	eba3 0904 	sub.w	r9, r3, r4
d0079e02:	9c20      	ldr	r4, [sp, #128]	; 0x80
d0079e04:	fb09 fb0b 	mul.w	fp, r9, fp
d0079e08:	eba2 0e04 	sub.w	lr, r2, r4
d0079e0c:	fb09 f907 	mul.w	r9, r9, r7
d0079e10:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
d0079e12:	fb0e ba1a 	mls	sl, lr, sl, fp
d0079e16:	fb0e 9e14 	mls	lr, lr, r4, r9
d0079e1a:	dd7a      	ble.n	d0079f12 <testShipToShipCollision+0x476>
d0079e1c:	f1be 0f00 	cmp.w	lr, #0
d0079e20:	db06      	blt.n	d0079e30 <testShipToShipCollision+0x394>
d0079e22:	45f0      	cmp	r8, lr
d0079e24:	db04      	blt.n	d0079e30 <testShipToShipCollision+0x394>
d0079e26:	f1ba 0f00 	cmp.w	sl, #0
d0079e2a:	db01      	blt.n	d0079e30 <testShipToShipCollision+0x394>
d0079e2c:	45d0      	cmp	r8, sl
d0079e2e:	dab6      	bge.n	d0079d9e <testShipToShipCollision+0x302>
d0079e30:	9c04      	ldr	r4, [sp, #16]
d0079e32:	42a5      	cmp	r5, r4
d0079e34:	db30      	blt.n	d0079e98 <testShipToShipCollision+0x3fc>
d0079e36:	9c08      	ldr	r4, [sp, #32]
d0079e38:	42a6      	cmp	r6, r4
d0079e3a:	dc2d      	bgt.n	d0079e98 <testShipToShipCollision+0x3fc>
d0079e3c:	9c10      	ldr	r4, [sp, #64]	; 0x40
d0079e3e:	9f01      	ldr	r7, [sp, #4]
d0079e40:	42a7      	cmp	r7, r4
d0079e42:	db29      	blt.n	d0079e98 <testShipToShipCollision+0x3fc>
d0079e44:	9c14      	ldr	r4, [sp, #80]	; 0x50
d0079e46:	45a4      	cmp	ip, r4
d0079e48:	dc26      	bgt.n	d0079e98 <testShipToShipCollision+0x3fc>
d0079e4a:	9f0c      	ldr	r7, [sp, #48]	; 0x30
d0079e4c:	eba0 0b02 	sub.w	fp, r0, r2
d0079e50:	eba1 0a03 	sub.w	sl, r1, r3
d0079e54:	fb07 f80b 	mul.w	r8, r7, fp
d0079e58:	9f1d      	ldr	r7, [sp, #116]	; 0x74
d0079e5a:	fb07 881a 	mls	r8, r7, sl, r8
d0079e5e:	f1b8 0f00 	cmp.w	r8, #0
d0079e62:	d019      	beq.n	d0079e98 <testShipToShipCollision+0x3fc>
d0079e64:	9c19      	ldr	r4, [sp, #100]	; 0x64
d0079e66:	eba3 0904 	sub.w	r9, r3, r4
d0079e6a:	9c18      	ldr	r4, [sp, #96]	; 0x60
d0079e6c:	fb09 fb0b 	mul.w	fp, r9, fp
d0079e70:	eba2 0e04 	sub.w	lr, r2, r4
d0079e74:	fb09 f907 	mul.w	r9, r9, r7
d0079e78:	9c0c      	ldr	r4, [sp, #48]	; 0x30
d0079e7a:	fb0e ba1a 	mls	sl, lr, sl, fp
d0079e7e:	fb0e 9e14 	mls	lr, lr, r4, r9
d0079e82:	dd52      	ble.n	d0079f2a <testShipToShipCollision+0x48e>
d0079e84:	f1be 0f00 	cmp.w	lr, #0
d0079e88:	db06      	blt.n	d0079e98 <testShipToShipCollision+0x3fc>
d0079e8a:	45f0      	cmp	r8, lr
d0079e8c:	db04      	blt.n	d0079e98 <testShipToShipCollision+0x3fc>
d0079e8e:	f1ba 0f00 	cmp.w	sl, #0
d0079e92:	db01      	blt.n	d0079e98 <testShipToShipCollision+0x3fc>
d0079e94:	45d0      	cmp	r8, sl
d0079e96:	da82      	bge.n	d0079d9e <testShipToShipCollision+0x302>
d0079e98:	9c05      	ldr	r4, [sp, #20]
d0079e9a:	42a5      	cmp	r5, r4
d0079e9c:	db2d      	blt.n	d0079efa <testShipToShipCollision+0x45e>
d0079e9e:	9c09      	ldr	r4, [sp, #36]	; 0x24
d0079ea0:	42a6      	cmp	r6, r4
d0079ea2:	dc2a      	bgt.n	d0079efa <testShipToShipCollision+0x45e>
d0079ea4:	9c11      	ldr	r4, [sp, #68]	; 0x44
d0079ea6:	9d01      	ldr	r5, [sp, #4]
d0079ea8:	42a5      	cmp	r5, r4
d0079eaa:	db26      	blt.n	d0079efa <testShipToShipCollision+0x45e>
d0079eac:	9c15      	ldr	r4, [sp, #84]	; 0x54
d0079eae:	45a4      	cmp	ip, r4
d0079eb0:	dc23      	bgt.n	d0079efa <testShipToShipCollision+0x45e>
d0079eb2:	1a80      	subs	r0, r0, r2
d0079eb4:	9c1e      	ldr	r4, [sp, #120]	; 0x78
d0079eb6:	eba1 0c03 	sub.w	ip, r1, r3
d0079eba:	9d0d      	ldr	r5, [sp, #52]	; 0x34
d0079ebc:	fb04 f600 	mul.w	r6, r4, r0
d0079ec0:	fb05 661c 	mls	r6, r5, ip, r6
d0079ec4:	2e00      	cmp	r6, #0
d0079ec6:	d018      	beq.n	d0079efa <testShipToShipCollision+0x45e>
d0079ec8:	9921      	ldr	r1, [sp, #132]	; 0x84
d0079eca:	9f1a      	ldr	r7, [sp, #104]	; 0x68
d0079ecc:	eba2 0501 	sub.w	r5, r2, r1
d0079ed0:	990d      	ldr	r1, [sp, #52]	; 0x34
d0079ed2:	eba3 0707 	sub.w	r7, r3, r7
d0079ed6:	fb07 f000 	mul.w	r0, r7, r0
d0079eda:	fb07 f701 	mul.w	r7, r7, r1
d0079ede:	fb05 001c 	mls	r0, r5, ip, r0
d0079ee2:	fb05 7714 	mls	r7, r5, r4, r7
d0079ee6:	dd2c      	ble.n	d0079f42 <testShipToShipCollision+0x4a6>
d0079ee8:	2f00      	cmp	r7, #0
d0079eea:	db06      	blt.n	d0079efa <testShipToShipCollision+0x45e>
d0079eec:	42be      	cmp	r6, r7
d0079eee:	db04      	blt.n	d0079efa <testShipToShipCollision+0x45e>
d0079ef0:	2800      	cmp	r0, #0
d0079ef2:	db02      	blt.n	d0079efa <testShipToShipCollision+0x45e>
d0079ef4:	4286      	cmp	r6, r0
d0079ef6:	f6bf af52 	bge.w	d0079d9e <testShipToShipCollision+0x302>
d0079efa:	9900      	ldr	r1, [sp, #0]
d0079efc:	3101      	adds	r1, #1
d0079efe:	2908      	cmp	r1, #8
d0079f00:	9100      	str	r1, [sp, #0]
d0079f02:	f47f aeff 	bne.w	d0079d04 <testShipToShipCollision+0x268>
d0079f06:	2000      	movs	r0, #0
d0079f08:	b033      	add	sp, #204	; 0xcc
d0079f0a:	ecbd 8b02 	vpop	{d8}
d0079f0e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0079f12:	f1be 0f00 	cmp.w	lr, #0
d0079f16:	dc8b      	bgt.n	d0079e30 <testShipToShipCollision+0x394>
d0079f18:	45f0      	cmp	r8, lr
d0079f1a:	dc89      	bgt.n	d0079e30 <testShipToShipCollision+0x394>
d0079f1c:	f1ba 0f00 	cmp.w	sl, #0
d0079f20:	dc86      	bgt.n	d0079e30 <testShipToShipCollision+0x394>
d0079f22:	45d0      	cmp	r8, sl
d0079f24:	f77f af3b 	ble.w	d0079d9e <testShipToShipCollision+0x302>
d0079f28:	e782      	b.n	d0079e30 <testShipToShipCollision+0x394>
d0079f2a:	f1be 0f00 	cmp.w	lr, #0
d0079f2e:	dcb3      	bgt.n	d0079e98 <testShipToShipCollision+0x3fc>
d0079f30:	45f0      	cmp	r8, lr
d0079f32:	dcb1      	bgt.n	d0079e98 <testShipToShipCollision+0x3fc>
d0079f34:	f1ba 0f00 	cmp.w	sl, #0
d0079f38:	dcae      	bgt.n	d0079e98 <testShipToShipCollision+0x3fc>
d0079f3a:	45d0      	cmp	r8, sl
d0079f3c:	f77f af2f 	ble.w	d0079d9e <testShipToShipCollision+0x302>
d0079f40:	e7aa      	b.n	d0079e98 <testShipToShipCollision+0x3fc>
d0079f42:	2f00      	cmp	r7, #0
d0079f44:	dcd9      	bgt.n	d0079efa <testShipToShipCollision+0x45e>
d0079f46:	42be      	cmp	r6, r7
d0079f48:	dcd7      	bgt.n	d0079efa <testShipToShipCollision+0x45e>
d0079f4a:	2800      	cmp	r0, #0
d0079f4c:	dcd5      	bgt.n	d0079efa <testShipToShipCollision+0x45e>
d0079f4e:	4286      	cmp	r6, r0
d0079f50:	f77f af25 	ble.w	d0079d9e <testShipToShipCollision+0x302>
d0079f54:	e7d1      	b.n	d0079efa <testShipToShipCollision+0x45e>
d0079f56:	bf00      	nop

d0079f58 <testBulletToBonusCollision>:
d0079f58:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0079f5c:	f8df 82f0 	ldr.w	r8, [pc, #752]	; d007a250 <testBulletToBonusCollision+0x2f8>
d0079f60:	edd8 6a00 	vldr	s13, [r8]
d0079f64:	ed98 7a01 	vldr	s14, [r8, #4]
d0079f68:	eef0 0a66 	vmov.f32	s1, s13
d0079f6c:	edd8 7a03 	vldr	s15, [r8, #12]
d0079f70:	ed98 5a0b 	vldr	s10, [r8, #44]	; 0x2c
d0079f74:	eeb0 2a47 	vmov.f32	s4, s14
d0079f78:	eef0 3a66 	vmov.f32	s7, s13
d0079f7c:	edd8 5a09 	vldr	s11, [r8, #36]	; 0x24
d0079f80:	eee7 0a85 	vfma.f32	s1, s15, s10
d0079f84:	ed98 5a0e 	vldr	s10, [r8, #56]	; 0x38
d0079f88:	eeb0 1a47 	vmov.f32	s2, s14
d0079f8c:	ed98 6a0a 	vldr	s12, [r8, #40]	; 0x28
d0079f90:	eea7 2a85 	vfma.f32	s4, s15, s10
d0079f94:	ed98 5a11 	vldr	s10, [r8, #68]	; 0x44
d0079f98:	eef0 2a66 	vmov.f32	s5, s13
d0079f9c:	eee7 3a85 	vfma.f32	s7, s15, s10
d0079fa0:	ed98 5a14 	vldr	s10, [r8, #80]	; 0x50
d0079fa4:	eeb0 4a47 	vmov.f32	s8, s14
d0079fa8:	eeb0 0a47 	vmov.f32	s0, s14
d0079fac:	eef0 1a66 	vmov.f32	s3, s13
d0079fb0:	eeb0 3a47 	vmov.f32	s6, s14
d0079fb4:	eea7 0a86 	vfma.f32	s0, s15, s12
d0079fb8:	ed98 6a0d 	vldr	s12, [r8, #52]	; 0x34
d0079fbc:	eef0 4a66 	vmov.f32	s9, s13
d0079fc0:	eee7 1a86 	vfma.f32	s3, s15, s12
d0079fc4:	ed98 6a10 	vldr	s12, [r8, #64]	; 0x40
d0079fc8:	eefd 0ae0 	vcvt.s32.f32	s1, s1
d0079fcc:	eea7 3a86 	vfma.f32	s6, s15, s12
d0079fd0:	ed98 6a13 	vldr	s12, [r8, #76]	; 0x4c
d0079fd4:	eebd 2ac2 	vcvt.s32.f32	s4, s4
d0079fd8:	eee7 4a86 	vfma.f32	s9, s15, s12
d0079fdc:	ed98 6a16 	vldr	s12, [r8, #88]	; 0x58
d0079fe0:	eebd 0ac0 	vcvt.s32.f32	s0, s0
d0079fe4:	eefd 1ae1 	vcvt.s32.f32	s3, s3
d0079fe8:	eefd 3ae3 	vcvt.s32.f32	s7, s7
d0079fec:	eebd 3ac3 	vcvt.s32.f32	s6, s6
d0079ff0:	ed2d 8b02 	vpush	{d8}
d0079ff4:	eef0 8a47 	vmov.f32	s17, s14
d0079ff8:	b097      	sub	sp, #92	; 0x5c
d0079ffa:	eeb0 8a66 	vmov.f32	s16, s13
d0079ffe:	ab0d      	add	r3, sp, #52	; 0x34
d007a000:	eefd 4ae4 	vcvt.s32.f32	s9, s9
d007a004:	eee7 8a85 	vfma.f32	s17, s15, s10
d007a008:	ed8d 0a0e 	vstr	s0, [sp, #56]	; 0x38
d007a00c:	eea7 8aa5 	vfma.f32	s16, s15, s11
d007a010:	edd8 5a0c 	vldr	s11, [r8, #48]	; 0x30
d007a014:	9305      	str	r3, [sp, #20]
d007a016:	ab05      	add	r3, sp, #20
d007a018:	eea7 1aa5 	vfma.f32	s2, s15, s11
d007a01c:	edd8 5a0f 	vldr	s11, [r8, #60]	; 0x3c
d007a020:	9302      	str	r3, [sp, #8]
d007a022:	eee7 2aa5 	vfma.f32	s5, s15, s11
d007a026:	edd8 5a12 	vldr	s11, [r8, #72]	; 0x48
d007a02a:	eeb0 5a68 	vmov.f32	s10, s17
d007a02e:	edcd 0a07 	vstr	s1, [sp, #28]
d007a032:	eef0 8a66 	vmov.f32	s17, s13
d007a036:	edcd 1a08 	vstr	s3, [sp, #32]
d007a03a:	eea7 4aa5 	vfma.f32	s8, s15, s11
d007a03e:	edd8 5a15 	vldr	s11, [r8, #84]	; 0x54
d007a042:	eebd 8ac8 	vcvt.s32.f32	s16, s16
d007a046:	ed8d 2a10 	vstr	s4, [sp, #64]	; 0x40
d007a04a:	eee7 8aa5 	vfma.f32	s17, s15, s11
d007a04e:	ed8d 3a11 	vstr	s6, [sp, #68]	; 0x44
d007a052:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d007a056:	edcd 3a0a 	vstr	s7, [sp, #40]	; 0x28
d007a05a:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d007a05e:	ed8d 8a06 	vstr	s16, [sp, #24]
d007a062:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d007a066:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d007a06a:	ed8d 1a0f 	vstr	s2, [sp, #60]	; 0x3c
d007a06e:	edcd 2a09 	vstr	s5, [sp, #36]	; 0x24
d007a072:	eef0 5a68 	vmov.f32	s11, s17
d007a076:	eef0 8a47 	vmov.f32	s17, s14
d007a07a:	ed8d 4a12 	vstr	s8, [sp, #72]	; 0x48
d007a07e:	eefd 5ae5 	vcvt.s32.f32	s11, s11
d007a082:	eee7 8a86 	vfma.f32	s17, s15, s12
d007a086:	eeb0 6a68 	vmov.f32	s12, s17
d007a08a:	edd8 8a17 	vldr	s17, [r8, #92]	; 0x5c
d007a08e:	edcd 4a0b 	vstr	s9, [sp, #44]	; 0x2c
d007a092:	eee8 6aa7 	vfma.f32	s13, s17, s15
d007a096:	ed8d 5a13 	vstr	s10, [sp, #76]	; 0x4c
d007a09a:	eebd 6ac6 	vcvt.s32.f32	s12, s12
d007a09e:	edcd 5a0c 	vstr	s11, [sp, #48]	; 0x30
d007a0a2:	ed8d 6a14 	vstr	s12, [sp, #80]	; 0x50
d007a0a6:	ed98 6a18 	vldr	s12, [r8, #96]	; 0x60
d007a0aa:	eea7 7a86 	vfma.f32	s14, s15, s12
d007a0ae:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d007a0b2:	ee17 3a90 	vmov	r3, s15
d007a0b6:	edcd 7a0d 	vstr	s15, [sp, #52]	; 0x34
d007a0ba:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d007a0be:	469e      	mov	lr, r3
d007a0c0:	ee17 aa90 	vmov	sl, s15
d007a0c4:	edcd 7a15 	vstr	s15, [sp, #84]	; 0x54
d007a0c8:	9902      	ldr	r1, [sp, #8]
d007a0ca:	4672      	mov	r2, lr
d007a0cc:	4653      	mov	r3, sl
d007a0ce:	2500      	movs	r5, #0
d007a0d0:	f851 ef04 	ldr.w	lr, [r1, #4]!
d007a0d4:	4596      	cmp	lr, r2
d007a0d6:	9102      	str	r1, [sp, #8]
d007a0d8:	9905      	ldr	r1, [sp, #20]
d007a0da:	46f4      	mov	ip, lr
d007a0dc:	bfb8      	it	lt
d007a0de:	4694      	movlt	ip, r2
d007a0e0:	4596      	cmp	lr, r2
d007a0e2:	f851 af04 	ldr.w	sl, [r1, #4]!
d007a0e6:	4677      	mov	r7, lr
d007a0e8:	bfa8      	it	ge
d007a0ea:	4617      	movge	r7, r2
d007a0ec:	eba2 020e 	sub.w	r2, r2, lr
d007a0f0:	459a      	cmp	sl, r3
d007a0f2:	4656      	mov	r6, sl
d007a0f4:	9200      	str	r2, [sp, #0]
d007a0f6:	4652      	mov	r2, sl
d007a0f8:	bfb8      	it	lt
d007a0fa:	461e      	movlt	r6, r3
d007a0fc:	459a      	cmp	sl, r3
d007a0fe:	9105      	str	r1, [sp, #20]
d007a100:	bfa8      	it	ge
d007a102:	461a      	movge	r2, r3
d007a104:	eba3 030a 	sub.w	r3, r3, sl
d007a108:	f8cd e00c 	str.w	lr, [sp, #12]
d007a10c:	9301      	str	r3, [sp, #4]
d007a10e:	4691      	mov	r9, r2
d007a110:	4b4e      	ldr	r3, [pc, #312]	; (d007a24c <testBulletToBonusCollision+0x2f4>)
d007a112:	e003      	b.n	d007a11c <testBulletToBonusCollision+0x1c4>
d007a114:	3501      	adds	r5, #1
d007a116:	331c      	adds	r3, #28
d007a118:	2d0c      	cmp	r5, #12
d007a11a:	d07f      	beq.n	d007a21c <testBulletToBonusCollision+0x2c4>
d007a11c:	699a      	ldr	r2, [r3, #24]
d007a11e:	2a00      	cmp	r2, #0
d007a120:	d0f8      	beq.n	d007a114 <testBulletToBonusCollision+0x1bc>
d007a122:	edd3 7a00 	vldr	s15, [r3]
d007a126:	ed93 7a04 	vldr	s14, [r3, #16]
d007a12a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007a12e:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d007a132:	ee17 2a90 	vmov	r2, s15
d007a136:	edd3 7a01 	vldr	s15, [r3, #4]
d007a13a:	ee17 1a10 	vmov	r1, s14
d007a13e:	ed93 7a05 	vldr	s14, [r3, #20]
d007a142:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007a146:	4614      	mov	r4, r2
d007a148:	428a      	cmp	r2, r1
d007a14a:	4693      	mov	fp, r2
d007a14c:	bfa8      	it	ge
d007a14e:	460c      	movge	r4, r1
d007a150:	428a      	cmp	r2, r1
d007a152:	ee17 ea90 	vmov	lr, s15
d007a156:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d007a15a:	bfb8      	it	lt
d007a15c:	468b      	movlt	fp, r1
d007a15e:	ee17 0a90 	vmov	r0, s15
d007a162:	45bb      	cmp	fp, r7
d007a164:	bfa8      	it	ge
d007a166:	45a4      	cmpge	ip, r4
d007a168:	4674      	mov	r4, lr
d007a16a:	bfb4      	ite	lt
d007a16c:	f04f 0b01 	movlt.w	fp, #1
d007a170:	f04f 0b00 	movge.w	fp, #0
d007a174:	4586      	cmp	lr, r0
d007a176:	bfa8      	it	ge
d007a178:	4604      	movge	r4, r0
d007a17a:	42a6      	cmp	r6, r4
d007a17c:	bfac      	ite	ge
d007a17e:	465c      	movge	r4, fp
d007a180:	f04b 0401 	orrlt.w	r4, fp, #1
d007a184:	2c00      	cmp	r4, #0
d007a186:	d1c5      	bne.n	d007a114 <testBulletToBonusCollision+0x1bc>
d007a188:	4586      	cmp	lr, r0
d007a18a:	46f3      	mov	fp, lr
d007a18c:	bfb8      	it	lt
d007a18e:	4683      	movlt	fp, r0
d007a190:	45d9      	cmp	r9, fp
d007a192:	dcbf      	bgt.n	d007a114 <testBulletToBonusCollision+0x1bc>
d007a194:	eba0 000e 	sub.w	r0, r0, lr
d007a198:	9c00      	ldr	r4, [sp, #0]
d007a19a:	1a89      	subs	r1, r1, r2
d007a19c:	fb00 fb04 	mul.w	fp, r0, r4
d007a1a0:	9004      	str	r0, [sp, #16]
d007a1a2:	9801      	ldr	r0, [sp, #4]
d007a1a4:	fb01 bb10 	mls	fp, r1, r0, fp
d007a1a8:	f1bb 0f00 	cmp.w	fp, #0
d007a1ac:	d0b2      	beq.n	d007a114 <testBulletToBonusCollision+0x1bc>
d007a1ae:	9803      	ldr	r0, [sp, #12]
d007a1b0:	ebaa 040e 	sub.w	r4, sl, lr
d007a1b4:	eba0 0202 	sub.w	r2, r0, r2
d007a1b8:	9800      	ldr	r0, [sp, #0]
d007a1ba:	fb04 f101 	mul.w	r1, r4, r1
d007a1be:	fb04 f400 	mul.w	r4, r4, r0
d007a1c2:	9804      	ldr	r0, [sp, #16]
d007a1c4:	fb02 1110 	mls	r1, r2, r0, r1
d007a1c8:	9801      	ldr	r0, [sp, #4]
d007a1ca:	fb02 4210 	mls	r2, r2, r0, r4
d007a1ce:	dd31      	ble.n	d007a234 <testBulletToBonusCollision+0x2dc>
d007a1d0:	2900      	cmp	r1, #0
d007a1d2:	db9f      	blt.n	d007a114 <testBulletToBonusCollision+0x1bc>
d007a1d4:	458b      	cmp	fp, r1
d007a1d6:	db9d      	blt.n	d007a114 <testBulletToBonusCollision+0x1bc>
d007a1d8:	2a00      	cmp	r2, #0
d007a1da:	db9b      	blt.n	d007a114 <testBulletToBonusCollision+0x1bc>
d007a1dc:	4593      	cmp	fp, r2
d007a1de:	db99      	blt.n	d007a114 <testBulletToBonusCollision+0x1bc>
d007a1e0:	eeb7 7a08 	vmov.f32	s14, #120	; 0x3fc00000  1.5
d007a1e4:	edd8 7a04 	vldr	s15, [r8, #16]
d007a1e8:	4a18      	ldr	r2, [pc, #96]	; (d007a24c <testBulletToBonusCollision+0x2f4>)
d007a1ea:	ebc5 05c5 	rsb	r5, r5, r5, lsl #3
d007a1ee:	f8d8 1020 	ldr.w	r1, [r8, #32]
d007a1f2:	2300      	movs	r3, #0
d007a1f4:	ee67 7a87 	vmul.f32	s15, s15, s14
d007a1f8:	eb02 0585 	add.w	r5, r2, r5, lsl #2
d007a1fc:	f201 414c 	addw	r1, r1, #1100	; 0x44c
d007a200:	2004      	movs	r0, #4
d007a202:	61ab      	str	r3, [r5, #24]
d007a204:	f8c8 1020 	str.w	r1, [r8, #32]
d007a208:	edc8 7a04 	vstr	s15, [r8, #16]
d007a20c:	f7fe fccc 	bl	d0078ba8 <SetChannelFrequency>
d007a210:	2001      	movs	r0, #1
d007a212:	b017      	add	sp, #92	; 0x5c
d007a214:	ecbd 8b02 	vpop	{d8}
d007a218:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d007a21c:	e9dd 3e02 	ldrd	r3, lr, [sp, #8]
d007a220:	aa0d      	add	r2, sp, #52	; 0x34
d007a222:	4293      	cmp	r3, r2
d007a224:	f47f af50 	bne.w	d007a0c8 <testBulletToBonusCollision+0x170>
d007a228:	2000      	movs	r0, #0
d007a22a:	b017      	add	sp, #92	; 0x5c
d007a22c:	ecbd 8b02 	vpop	{d8}
d007a230:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d007a234:	2900      	cmp	r1, #0
d007a236:	f73f af6d 	bgt.w	d007a114 <testBulletToBonusCollision+0x1bc>
d007a23a:	458b      	cmp	fp, r1
d007a23c:	f73f af6a 	bgt.w	d007a114 <testBulletToBonusCollision+0x1bc>
d007a240:	2a00      	cmp	r2, #0
d007a242:	f73f af67 	bgt.w	d007a114 <testBulletToBonusCollision+0x1bc>
d007a246:	4593      	cmp	fp, r2
d007a248:	ddca      	ble.n	d007a1e0 <testBulletToBonusCollision+0x288>
d007a24a:	e763      	b.n	d007a114 <testBulletToBonusCollision+0x1bc>
d007a24c:	d007ef10 	.word	0xd007ef10
d007a250:	d007fc60 	.word	0xd007fc60

d007a254 <renderShipLive>:
d007a254:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d007a258:	2106      	movs	r1, #6
d007a25a:	4d13      	ldr	r5, [pc, #76]	; (d007a2a8 <renderShipLive+0x54>)
d007a25c:	f04f 0c43 	mov.w	ip, #67	; 0x43
d007a260:	4604      	mov	r4, r0
d007a262:	1846      	adds	r6, r0, r1
d007a264:	f8d5 20f8 	ldr.w	r2, [r5, #248]	; 0xf8
d007a268:	1f87      	subs	r7, r0, #6
d007a26a:	2314      	movs	r3, #20
d007a26c:	f882 c000 	strb.w	ip, [r2]
d007a270:	4632      	mov	r2, r6
d007a272:	f8d5 8124 	ldr.w	r8, [r5, #292]	; 0x124
d007a276:	47c0      	blx	r8
d007a278:	463a      	mov	r2, r7
d007a27a:	4620      	mov	r0, r4
d007a27c:	f8d5 8124 	ldr.w	r8, [r5, #292]	; 0x124
d007a280:	2314      	movs	r3, #20
d007a282:	2106      	movs	r1, #6
d007a284:	47c0      	blx	r8
d007a286:	463a      	mov	r2, r7
d007a288:	4620      	mov	r0, r4
d007a28a:	f8d5 7124 	ldr.w	r7, [r5, #292]	; 0x124
d007a28e:	2314      	movs	r3, #20
d007a290:	210e      	movs	r1, #14
d007a292:	47b8      	blx	r7
d007a294:	4620      	mov	r0, r4
d007a296:	f8d5 4124 	ldr.w	r4, [r5, #292]	; 0x124
d007a29a:	4632      	mov	r2, r6
d007a29c:	2314      	movs	r3, #20
d007a29e:	210e      	movs	r1, #14
d007a2a0:	46a4      	mov	ip, r4
d007a2a2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d007a2a6:	4760      	bx	ip
d007a2a8:	2001f000 	.word	0x2001f000

d007a2ac <initMath>:
d007a2ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d007a2ae:	2500      	movs	r5, #0
d007a2b0:	4b34      	ldr	r3, [pc, #208]	; (d007a384 <initMath+0xd8>)
d007a2b2:	f44f 6216 	mov.w	r2, #2400	; 0x960
d007a2b6:	4834      	ldr	r0, [pc, #208]	; (d007a388 <initMath+0xdc>)
d007a2b8:	4629      	mov	r1, r5
d007a2ba:	601d      	str	r5, [r3, #0]
d007a2bc:	f7fe fbca 	bl	d0078a54 <memset>
d007a2c0:	4629      	mov	r1, r5
d007a2c2:	f243 4298 	movw	r2, #13464	; 0x3498
d007a2c6:	4831      	ldr	r0, [pc, #196]	; (d007a38c <initMath+0xe0>)
d007a2c8:	f7fe fbc4 	bl	d0078a54 <memset>
d007a2cc:	4629      	mov	r1, r5
d007a2ce:	2228      	movs	r2, #40	; 0x28
d007a2d0:	482f      	ldr	r0, [pc, #188]	; (d007a390 <initMath+0xe4>)
d007a2d2:	f7fe fbbf 	bl	d0078a54 <memset>
d007a2d6:	4629      	mov	r1, r5
d007a2d8:	f44f 72b6 	mov.w	r2, #364	; 0x16c
d007a2dc:	482d      	ldr	r0, [pc, #180]	; (d007a394 <initMath+0xe8>)
d007a2de:	f7fe fbb9 	bl	d0078a54 <memset>
d007a2e2:	4629      	mov	r1, r5
d007a2e4:	f44f 72fa 	mov.w	r2, #500	; 0x1f4
d007a2e8:	482b      	ldr	r0, [pc, #172]	; (d007a398 <initMath+0xec>)
d007a2ea:	f7fe fbb3 	bl	d0078a54 <memset>
d007a2ee:	4629      	mov	r1, r5
d007a2f0:	2284      	movs	r2, #132	; 0x84
d007a2f2:	482a      	ldr	r0, [pc, #168]	; (d007a39c <initMath+0xf0>)
d007a2f4:	f7fe fbae 	bl	d0078a54 <memset>
d007a2f8:	4b24      	ldr	r3, [pc, #144]	; (d007a38c <initMath+0xe0>)
d007a2fa:	4929      	ldr	r1, [pc, #164]	; (d007a3a0 <initMath+0xf4>)
d007a2fc:	462c      	mov	r4, r5
d007a2fe:	f503 524c 	add.w	r2, r3, #13056	; 0x3300
d007a302:	600d      	str	r5, [r1, #0]
d007a304:	61dc      	str	r4, [r3, #28]
d007a306:	701c      	strb	r4, [r3, #0]
d007a308:	f503 73cc 	add.w	r3, r3, #408	; 0x198
d007a30c:	4293      	cmp	r3, r2
d007a30e:	d1f9      	bne.n	d007a304 <initMath+0x58>
d007a310:	4b24      	ldr	r3, [pc, #144]	; (d007a3a4 <initMath+0xf8>)
d007a312:	2682      	movs	r6, #130	; 0x82
d007a314:	4a24      	ldr	r2, [pc, #144]	; (d007a3a8 <initMath+0xfc>)
d007a316:	25b4      	movs	r5, #180	; 0xb4
d007a318:	20e6      	movs	r0, #230	; 0xe6
d007a31a:	4924      	ldr	r1, [pc, #144]	; (d007a3ac <initMath+0x100>)
d007a31c:	615a      	str	r2, [r3, #20]
d007a31e:	2201      	movs	r2, #1
d007a320:	6418      	str	r0, [r3, #64]	; 0x40
d007a322:	4f23      	ldr	r7, [pc, #140]	; (d007a3b0 <initMath+0x104>)
d007a324:	4823      	ldr	r0, [pc, #140]	; (d007a3b4 <initMath+0x108>)
d007a326:	6019      	str	r1, [r3, #0]
d007a328:	2120      	movs	r1, #32
d007a32a:	605f      	str	r7, [r3, #4]
d007a32c:	2703      	movs	r7, #3
d007a32e:	61d8      	str	r0, [r3, #28]
d007a330:	635c      	str	r4, [r3, #52]	; 0x34
d007a332:	4821      	ldr	r0, [pc, #132]	; (d007a3b8 <initMath+0x10c>)
d007a334:	629c      	str	r4, [r3, #40]	; 0x28
d007a336:	645c      	str	r4, [r3, #68]	; 0x44
d007a338:	6002      	str	r2, [r0, #0]
d007a33a:	e9c3 650e 	strd	r6, r5, [r3, #56]	; 0x38
d007a33e:	2500      	movs	r5, #0
d007a340:	4e1e      	ldr	r6, [pc, #120]	; (d007a3bc <initMath+0x110>)
d007a342:	e9c3 2208 	strd	r2, r2, [r3, #32]
d007a346:	e9c3 220b 	strd	r2, r2, [r3, #44]	; 0x2c
d007a34a:	609d      	str	r5, [r3, #8]
d007a34c:	60dd      	str	r5, [r3, #12]
d007a34e:	611d      	str	r5, [r3, #16]
d007a350:	619d      	str	r5, [r3, #24]
d007a352:	4b1b      	ldr	r3, [pc, #108]	; (d007a3c0 <initMath+0x114>)
d007a354:	4a1b      	ldr	r2, [pc, #108]	; (d007a3c4 <initMath+0x118>)
d007a356:	7019      	strb	r1, [r3, #0]
d007a358:	4b1b      	ldr	r3, [pc, #108]	; (d007a3c8 <initMath+0x11c>)
d007a35a:	6017      	str	r7, [r2, #0]
d007a35c:	601c      	str	r4, [r3, #0]
d007a35e:	f7fe fd6f 	bl	d0078e40 <initRock.constprop.0>
d007a362:	4b1a      	ldr	r3, [pc, #104]	; (d007a3cc <initMath+0x120>)
d007a364:	220a      	movs	r2, #10
d007a366:	491a      	ldr	r1, [pc, #104]	; (d007a3d0 <initMath+0x124>)
d007a368:	611d      	str	r5, [r3, #16]
d007a36a:	61df      	str	r7, [r3, #28]
d007a36c:	6019      	str	r1, [r3, #0]
d007a36e:	6032      	str	r2, [r6, #0]
d007a370:	f002 fb98 	bl	d007caa4 <rand>
d007a374:	f400 707a 	and.w	r0, r0, #1000	; 0x3e8
d007a378:	4b16      	ldr	r3, [pc, #88]	; (d007a3d4 <initMath+0x128>)
d007a37a:	f500 707a 	add.w	r0, r0, #1000	; 0x3e8
d007a37e:	601c      	str	r4, [r3, #0]
d007a380:	6030      	str	r0, [r6, #0]
d007a382:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d007a384:	d00834a8 	.word	0xd00834a8
d007a388:	d007f100 	.word	0xd007f100
d007a38c:	d007fd24 	.word	0xd007fd24
d007a390:	d0083424 	.word	0xd0083424
d007a394:	d007ef10 	.word	0xd007ef10
d007a398:	d007fa60 	.word	0xd007fa60
d007a39c:	d007f07c 	.word	0xd007f07c
d007a3a0:	d00834c8 	.word	0xd00834c8
d007a3a4:	d00833dc 	.word	0xd00833dc
d007a3a8:	41700000 	.word	0x41700000
d007a3ac:	43700000 	.word	0x43700000
d007a3b0:	43200000 	.word	0x43200000
d007a3b4:	3dcccccd 	.word	0x3dcccccd
d007a3b8:	d00834cc 	.word	0xd00834cc
d007a3bc:	d00834a4 	.word	0xd00834a4
d007a3c0:	d007fd18 	.word	0xd007fd18
d007a3c4:	d00834d0 	.word	0xd00834d0
d007a3c8:	d00834d4 	.word	0xd00834d4
d007a3cc:	d007fc60 	.word	0xd007fc60
d007a3d0:	c1f00000 	.word	0xc1f00000
d007a3d4:	d007fd1c 	.word	0xd007fd1c

d007a3d8 <doGameOverScreen>:
d007a3d8:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d007a3dc:	4e71      	ldr	r6, [pc, #452]	; (d007a5a4 <doGameOverScreen+0x1cc>)
d007a3de:	b091      	sub	sp, #68	; 0x44
d007a3e0:	4c71      	ldr	r4, [pc, #452]	; (d007a5a8 <doGameOverScreen+0x1d0>)
d007a3e2:	7833      	ldrb	r3, [r6, #0]
d007a3e4:	f104 07b4 	add.w	r7, r4, #180	; 0xb4
d007a3e8:	4d70      	ldr	r5, [pc, #448]	; (d007a5ac <doGameOverScreen+0x1d4>)
d007a3ea:	fab3 f383 	clz	r3, r3
d007a3ee:	f8df 91e0 	ldr.w	r9, [pc, #480]	; d007a5d0 <doGameOverScreen+0x1f8>
d007a3f2:	f8df 81bc 	ldr.w	r8, [pc, #444]	; d007a5b0 <doGameOverScreen+0x1d8>
d007a3f6:	095b      	lsrs	r3, r3, #5
d007a3f8:	7033      	strb	r3, [r6, #0]
d007a3fa:	e010      	b.n	d007a41e <doGameOverScreen+0x46>
d007a3fc:	f8d8 30f8 	ldr.w	r3, [r8, #248]	; 0xf8
d007a400:	2257      	movs	r2, #87	; 0x57
d007a402:	701a      	strb	r2, [r3, #0]
d007a404:	2801      	cmp	r0, #1
d007a406:	d904      	bls.n	d007a412 <doGameOverScreen+0x3a>
d007a408:	2901      	cmp	r1, #1
d007a40a:	d902      	bls.n	d007a412 <doGameOverScreen+0x3a>
d007a40c:	f8d8 3120 	ldr.w	r3, [r8, #288]	; 0x120
d007a410:	4798      	blx	r3
d007a412:	42a7      	cmp	r7, r4
d007a414:	f105 0502 	add.w	r5, r5, #2
d007a418:	f109 0902 	add.w	r9, r9, #2
d007a41c:	d022      	beq.n	d007a464 <doGameOverScreen+0x8c>
d007a41e:	f834 3f02 	ldrh.w	r3, [r4, #2]!
d007a422:	3b01      	subs	r3, #1
d007a424:	b21b      	sxth	r3, r3
d007a426:	8023      	strh	r3, [r4, #0]
d007a428:	2b00      	cmp	r3, #0
d007a42a:	f340 8095 	ble.w	d007a558 <doGameOverScreen+0x180>
d007a42e:	f9b9 1000 	ldrsh.w	r1, [r9]
d007a432:	f9b5 0000 	ldrsh.w	r0, [r5]
d007a436:	0149      	lsls	r1, r1, #5
d007a438:	0140      	lsls	r0, r0, #5
d007a43a:	fb90 f0f3 	sdiv	r0, r0, r3
d007a43e:	fb91 f1f3 	sdiv	r1, r1, r3
d007a442:	30ef      	adds	r0, #239	; 0xef
d007a444:	319f      	adds	r1, #159	; 0x9f
d007a446:	f5b0 7fef 	cmp.w	r0, #478	; 0x1de
d007a44a:	d86e      	bhi.n	d007a52a <doGameOverScreen+0x152>
d007a44c:	f5b1 7f9f 	cmp.w	r1, #318	; 0x13e
d007a450:	d86b      	bhi.n	d007a52a <doGameOverScreen+0x152>
d007a452:	2b3b      	cmp	r3, #59	; 0x3b
d007a454:	ddd2      	ble.n	d007a3fc <doGameOverScreen+0x24>
d007a456:	2b90      	cmp	r3, #144	; 0x90
d007a458:	dc5e      	bgt.n	d007a518 <doGameOverScreen+0x140>
d007a45a:	f8d8 30f8 	ldr.w	r3, [r8, #248]	; 0xf8
d007a45e:	2253      	movs	r2, #83	; 0x53
d007a460:	701a      	strb	r2, [r3, #0]
d007a462:	e7cf      	b.n	d007a404 <doGameOverScreen+0x2c>
d007a464:	4f52      	ldr	r7, [pc, #328]	; (d007a5b0 <doGameOverScreen+0x1d8>)
d007a466:	2257      	movs	r2, #87	; 0x57
d007a468:	4d52      	ldr	r5, [pc, #328]	; (d007a5b4 <doGameOverScreen+0x1dc>)
d007a46a:	466c      	mov	r4, sp
d007a46c:	f8d7 30f8 	ldr.w	r3, [r7, #248]	; 0xf8
d007a470:	4e51      	ldr	r6, [pc, #324]	; (d007a5b8 <doGameOverScreen+0x1e0>)
d007a472:	701a      	strb	r2, [r3, #0]
d007a474:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d007a476:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d007a478:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d007a47a:	682d      	ldr	r5, [r5, #0]
d007a47c:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d007a47e:	7025      	strb	r5, [r4, #0]
d007a480:	466a      	mov	r2, sp
d007a482:	2150      	movs	r1, #80	; 0x50
d007a484:	f8d7 3148 	ldr.w	r3, [r7, #328]	; 0x148
d007a488:	2070      	movs	r0, #112	; 0x70
d007a48a:	4798      	blx	r3
d007a48c:	f8d7 10f8 	ldr.w	r1, [r7, #248]	; 0xf8
d007a490:	4b4a      	ldr	r3, [pc, #296]	; (d007a5bc <doGameOverScreen+0x1e4>)
d007a492:	2052      	movs	r0, #82	; 0x52
d007a494:	466a      	mov	r2, sp
d007a496:	7008      	strb	r0, [r1, #0]
d007a498:	e893 0003 	ldmia.w	r3, {r0, r1}
d007a49c:	0c0b      	lsrs	r3, r1, #16
d007a49e:	9000      	str	r0, [sp, #0]
d007a4a0:	f8ad 1004 	strh.w	r1, [sp, #4]
d007a4a4:	20d8      	movs	r0, #216	; 0xd8
d007a4a6:	f88d 3006 	strb.w	r3, [sp, #6]
d007a4aa:	21f0      	movs	r1, #240	; 0xf0
d007a4ac:	f8d7 3148 	ldr.w	r3, [r7, #328]	; 0x148
d007a4b0:	4798      	blx	r3
d007a4b2:	4b43      	ldr	r3, [pc, #268]	; (d007a5c0 <doGameOverScreen+0x1e8>)
d007a4b4:	4943      	ldr	r1, [pc, #268]	; (d007a5c4 <doGameOverScreen+0x1ec>)
d007a4b6:	4668      	mov	r0, sp
d007a4b8:	681a      	ldr	r2, [r3, #0]
d007a4ba:	f002 fb33 	bl	d007cb24 <siprintf>
d007a4be:	4668      	mov	r0, sp
d007a4c0:	f002 fb50 	bl	d007cb64 <strlen>
d007a4c4:	f8d7 3148 	ldr.w	r3, [r7, #328]	; 0x148
d007a4c8:	00c0      	lsls	r0, r0, #3
d007a4ca:	466a      	mov	r2, sp
d007a4cc:	f44f 7182 	mov.w	r1, #260	; 0x104
d007a4d0:	0840      	lsrs	r0, r0, #1
d007a4d2:	f1c0 00f0 	rsb	r0, r0, #240	; 0xf0
d007a4d6:	4798      	blx	r3
d007a4d8:	4b3b      	ldr	r3, [pc, #236]	; (d007a5c8 <doGameOverScreen+0x1f0>)
d007a4da:	493c      	ldr	r1, [pc, #240]	; (d007a5cc <doGameOverScreen+0x1f4>)
d007a4dc:	4668      	mov	r0, sp
d007a4de:	681a      	ldr	r2, [r3, #0]
d007a4e0:	f002 fb20 	bl	d007cb24 <siprintf>
d007a4e4:	4668      	mov	r0, sp
d007a4e6:	f002 fb3d 	bl	d007cb64 <strlen>
d007a4ea:	f8d7 3148 	ldr.w	r3, [r7, #328]	; 0x148
d007a4ee:	00c0      	lsls	r0, r0, #3
d007a4f0:	466a      	mov	r2, sp
d007a4f2:	f44f 7196 	mov.w	r1, #300	; 0x12c
d007a4f6:	0840      	lsrs	r0, r0, #1
d007a4f8:	f1c0 00f0 	rsb	r0, r0, #240	; 0xf0
d007a4fc:	4798      	blx	r3
d007a4fe:	2004      	movs	r0, #4
d007a500:	f7fe fb46 	bl	d0078b90 <StopChannel>
d007a504:	6830      	ldr	r0, [r6, #0]
d007a506:	2800      	cmp	r0, #0
d007a508:	dd03      	ble.n	d007a512 <doGameOverScreen+0x13a>
d007a50a:	3801      	subs	r0, #1
d007a50c:	2801      	cmp	r0, #1
d007a50e:	6030      	str	r0, [r6, #0]
d007a510:	d041      	beq.n	d007a596 <doGameOverScreen+0x1be>
d007a512:	b011      	add	sp, #68	; 0x44
d007a514:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d007a518:	2bfe      	cmp	r3, #254	; 0xfe
d007a51a:	dc37      	bgt.n	d007a58c <doGameOverScreen+0x1b4>
d007a51c:	7833      	ldrb	r3, [r6, #0]
d007a51e:	b3ab      	cbz	r3, d007a58c <doGameOverScreen+0x1b4>
d007a520:	f8d8 30f8 	ldr.w	r3, [r8, #248]	; 0xf8
d007a524:	2256      	movs	r2, #86	; 0x56
d007a526:	701a      	strb	r2, [r3, #0]
d007a528:	e76c      	b.n	d007a404 <doGameOverScreen+0x2c>
d007a52a:	2064      	movs	r0, #100	; 0x64
d007a52c:	f7fe fad8 	bl	d0078ae0 <randomi>
d007a530:	4603      	mov	r3, r0
d007a532:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
d007a536:	3396      	adds	r3, #150	; 0x96
d007a538:	8023      	strh	r3, [r4, #0]
d007a53a:	f7fe fad1 	bl	d0078ae0 <randomi>
d007a53e:	4603      	mov	r3, r0
d007a540:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
d007a544:	f5a3 737a 	sub.w	r3, r3, #1000	; 0x3e8
d007a548:	802b      	strh	r3, [r5, #0]
d007a54a:	f7fe fac9 	bl	d0078ae0 <randomi>
d007a54e:	f5a0 707a 	sub.w	r0, r0, #1000	; 0x3e8
d007a552:	f8a9 0000 	strh.w	r0, [r9]
d007a556:	e75c      	b.n	d007a412 <doGameOverScreen+0x3a>
d007a558:	2064      	movs	r0, #100	; 0x64
d007a55a:	f7fe fac1 	bl	d0078ae0 <randomi>
d007a55e:	4603      	mov	r3, r0
d007a560:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
d007a564:	3396      	adds	r3, #150	; 0x96
d007a566:	8023      	strh	r3, [r4, #0]
d007a568:	f7fe faba 	bl	d0078ae0 <randomi>
d007a56c:	4603      	mov	r3, r0
d007a56e:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
d007a572:	f5a3 737a 	sub.w	r3, r3, #1000	; 0x3e8
d007a576:	802b      	strh	r3, [r5, #0]
d007a578:	f7fe fab2 	bl	d0078ae0 <randomi>
d007a57c:	f5a0 707a 	sub.w	r0, r0, #1000	; 0x3e8
d007a580:	f9b4 3000 	ldrsh.w	r3, [r4]
d007a584:	b201      	sxth	r1, r0
d007a586:	f8a9 1000 	strh.w	r1, [r9]
d007a58a:	e752      	b.n	d007a432 <doGameOverScreen+0x5a>
d007a58c:	f8d8 30f8 	ldr.w	r3, [r8, #248]	; 0xf8
d007a590:	2200      	movs	r2, #0
d007a592:	701a      	strb	r2, [r3, #0]
d007a594:	e736      	b.n	d007a404 <doGameOverScreen+0x2c>
d007a596:	f7ff fe89 	bl	d007a2ac <initMath>
d007a59a:	6830      	ldr	r0, [r6, #0]
d007a59c:	b011      	add	sp, #68	; 0x44
d007a59e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d007a5a2:	bf00      	nop
d007a5a4:	d007fd0c 	.word	0xd007fd0c
d007a5a8:	d0083322 	.word	0xd0083322
d007a5ac:	d00831bc 	.word	0xd00831bc
d007a5b0:	2001f000 	.word	0x2001f000
d007a5b4:	d007df10 	.word	0xd007df10
d007a5b8:	d00834b8 	.word	0xd00834b8
d007a5bc:	d007df34 	.word	0xd007df34
d007a5c0:	d00834a8 	.word	0xd00834a8
d007a5c4:	d007df3c 	.word	0xd007df3c
d007a5c8:	d00834cc 	.word	0xd00834cc
d007a5cc:	d007df40 	.word	0xd007df40
d007a5d0:	d0083270 	.word	0xd0083270

d007a5d4 <renderStroids>:
d007a5d4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d007a5d8:	2300      	movs	r3, #0
d007a5da:	4c68      	ldr	r4, [pc, #416]	; (d007a77c <renderStroids+0x1a8>)
d007a5dc:	4d68      	ldr	r5, [pc, #416]	; (d007a780 <renderStroids+0x1ac>)
d007a5de:	f504 584c 	add.w	r8, r4, #13056	; 0x3300
d007a5e2:	ed2d 8b04 	vpush	{d8-d9}
d007a5e6:	b085      	sub	sp, #20
d007a5e8:	ed9f 9a66 	vldr	s18, [pc, #408]	; d007a784 <renderStroids+0x1b0>
d007a5ec:	9303      	str	r3, [sp, #12]
d007a5ee:	e004      	b.n	d007a5fa <renderStroids+0x26>
d007a5f0:	f504 74cc 	add.w	r4, r4, #408	; 0x198
d007a5f4:	4544      	cmp	r4, r8
d007a5f6:	f000 8091 	beq.w	d007a71c <renderStroids+0x148>
d007a5fa:	f854 3c48 	ldr.w	r3, [r4, #-72]
d007a5fe:	2b00      	cmp	r3, #0
d007a600:	d0f6      	beq.n	d007a5f0 <renderStroids+0x1c>
d007a602:	9a03      	ldr	r2, [sp, #12]
d007a604:	f854 3c50 	ldr.w	r3, [r4, #-80]
d007a608:	3201      	adds	r2, #1
d007a60a:	ed54 7a18 	vldr	s15, [r4, #-96]	; 0xffffffa0
d007a60e:	9203      	str	r2, [sp, #12]
d007a610:	f06f 0205 	mvn.w	r2, #5
d007a614:	1ad2      	subs	r2, r2, r3
d007a616:	ee06 2a90 	vmov	s13, r2
d007a61a:	f503 72f3 	add.w	r2, r3, #486	; 0x1e6
d007a61e:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d007a622:	eef4 7ae6 	vcmpe.f32	s15, s13
d007a626:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007a62a:	f140 8092 	bpl.w	d007a752 <renderStroids+0x17e>
d007a62e:	ee07 2a90 	vmov	s15, r2
d007a632:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d007a636:	ed44 7a18 	vstr	s15, [r4, #-96]	; 0xffffffa0
d007a63a:	ed14 7a17 	vldr	s14, [r4, #-92]	; 0xffffffa4
d007a63e:	eef4 6ac7 	vcmpe.f32	s13, s14
d007a642:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007a646:	dd6f      	ble.n	d007a728 <renderStroids+0x154>
d007a648:	f503 73a3 	add.w	r3, r3, #326	; 0x146
d007a64c:	ee07 3a10 	vmov	s14, r3
d007a650:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d007a654:	ed04 7a17 	vstr	s14, [r4, #-92]	; 0xffffffa4
d007a658:	ed54 6a15 	vldr	s13, [r4, #-84]	; 0xffffffac
d007a65c:	f1a4 0b40 	sub.w	fp, r4, #64	; 0x40
d007a660:	ed14 6a16 	vldr	s12, [r4, #-88]	; 0xffffffa8
d007a664:	f1a4 0a64 	sub.w	sl, r4, #100	; 0x64
d007a668:	eea6 7a89 	vfma.f32	s14, s13, s18
d007a66c:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d007a670:	eee6 7a09 	vfma.f32	s15, s12, s18
d007a674:	f814 1c4c 	ldrb.w	r1, [r4, #-76]
d007a678:	ed04 7a17 	vstr	s14, [r4, #-92]	; 0xffffffa4
d007a67c:	eefd 6ae7 	vcvt.s32.f32	s13, s15
d007a680:	ed44 7a18 	vstr	s15, [r4, #-96]	; 0xffffffa0
d007a684:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d007a688:	7019      	strb	r1, [r3, #0]
d007a68a:	ee16 9a90 	vmov	r9, s13
d007a68e:	ee17 7a90 	vmov	r7, s15
d007a692:	e025      	b.n	d007a6e0 <renderStroids+0x10c>
d007a694:	f5a6 76b4 	sub.w	r6, r6, #360	; 0x168
d007a698:	f8cb 6000 	str.w	r6, [fp]
d007a69c:	ed9b 8a17 	vldr	s16, [fp, #92]	; 0x5c
d007a6a0:	4630      	mov	r0, r6
d007a6a2:	f8d5 30b0 	ldr.w	r3, [r5, #176]	; 0xb0
d007a6a6:	4798      	blx	r3
d007a6a8:	eeb8 8ac8 	vcvt.f32.s32	s16, s16
d007a6ac:	eef0 8a40 	vmov.f32	s17, s0
d007a6b0:	f8d5 30ac 	ldr.w	r3, [r5, #172]	; 0xac
d007a6b4:	4630      	mov	r0, r6
d007a6b6:	4798      	blx	r3
d007a6b8:	45a3      	cmp	fp, r4
d007a6ba:	ee68 8a88 	vmul.f32	s17, s17, s16
d007a6be:	ee28 8a00 	vmul.f32	s16, s16, s0
d007a6c2:	eefd 7ae8 	vcvt.s32.f32	s15, s17
d007a6c6:	ee17 2a90 	vmov	r2, s15
d007a6ca:	eefd 7ac8 	vcvt.s32.f32	s15, s16
d007a6ce:	444a      	add	r2, r9
d007a6d0:	ee17 3a90 	vmov	r3, s15
d007a6d4:	443b      	add	r3, r7
d007a6d6:	e9ca 2338 	strd	r2, r3, [sl, #224]	; 0xe0
d007a6da:	f10a 0a08 	add.w	sl, sl, #8
d007a6de:	d00e      	beq.n	d007a6fe <renderStroids+0x12a>
d007a6e0:	f85b 6f04 	ldr.w	r6, [fp, #4]!
d007a6e4:	f854 0c40 	ldr.w	r0, [r4, #-64]
d007a6e8:	4406      	add	r6, r0
d007a6ea:	f5b6 7fb4 	cmp.w	r6, #360	; 0x168
d007a6ee:	dad1      	bge.n	d007a694 <renderStroids+0xc0>
d007a6f0:	2e00      	cmp	r6, #0
d007a6f2:	bfb8      	it	lt
d007a6f4:	f506 76b4 	addlt.w	r6, r6, #360	; 0x168
d007a6f8:	f8cb 6000 	str.w	r6, [fp]
d007a6fc:	e7ce      	b.n	d007a69c <renderStroids+0xc8>
d007a6fe:	2200      	movs	r2, #0
d007a700:	2301      	movs	r3, #1
d007a702:	f104 007c 	add.w	r0, r4, #124	; 0x7c
d007a706:	f504 74cc 	add.w	r4, r4, #408	; 0x198
d007a70a:	f8d5 6130 	ldr.w	r6, [r5, #304]	; 0x130
d007a70e:	2110      	movs	r1, #16
d007a710:	9200      	str	r2, [sp, #0]
d007a712:	461a      	mov	r2, r3
d007a714:	47b0      	blx	r6
d007a716:	4544      	cmp	r4, r8
d007a718:	f47f af6f 	bne.w	d007a5fa <renderStroids+0x26>
d007a71c:	9803      	ldr	r0, [sp, #12]
d007a71e:	b005      	add	sp, #20
d007a720:	ecbd 8b04 	vpop	{d8-d9}
d007a724:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d007a728:	f503 72a3 	add.w	r2, r3, #326	; 0x146
d007a72c:	ee06 2a90 	vmov	s13, r2
d007a730:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d007a734:	eeb4 7ae6 	vcmpe.f32	s14, s13
d007a738:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007a73c:	dd8c      	ble.n	d007a658 <renderStroids+0x84>
d007a73e:	425b      	negs	r3, r3
d007a740:	ee07 3a10 	vmov	s14, r3
d007a744:	eef8 6ac7 	vcvt.f32.s32	s13, s14
d007a748:	eeb0 7a66 	vmov.f32	s14, s13
d007a74c:	ed44 6a17 	vstr	s13, [r4, #-92]	; 0xffffffa4
d007a750:	e782      	b.n	d007a658 <renderStroids+0x84>
d007a752:	ee07 2a10 	vmov	s14, r2
d007a756:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d007a75a:	eef4 7ac7 	vcmpe.f32	s15, s14
d007a75e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007a762:	f77f af6a 	ble.w	d007a63a <renderStroids+0x66>
d007a766:	425a      	negs	r2, r3
d007a768:	ee07 2a10 	vmov	s14, r2
d007a76c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d007a770:	eef0 7a47 	vmov.f32	s15, s14
d007a774:	ed04 7a18 	vstr	s14, [r4, #-96]	; 0xffffffa0
d007a778:	e75f      	b.n	d007a63a <renderStroids+0x66>
d007a77a:	bf00      	nop
d007a77c:	d007fd88 	.word	0xd007fd88
d007a780:	2001f000 	.word	0x2001f000
d007a784:	3eaaaaab 	.word	0x3eaaaaab

d007a788 <createBonus>:
d007a788:	b570      	push	{r4, r5, r6, lr}
d007a78a:	f002 f98b 	bl	d007caa4 <rand>
d007a78e:	f000 0001 	and.w	r0, r0, #1
d007a792:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d007a796:	4c30      	ldr	r4, [pc, #192]	; (d007a858 <createBonus+0xd0>)
d007a798:	eefb 6a04 	vmov.f32	s13, #180	; 0xc1a00000 -20.0
d007a79c:	2800      	cmp	r0, #0
d007a79e:	eebe 7a00 	vmov.f32	s14, #224	; 0xbf000000 -0.5
d007a7a2:	eddf 7a2e 	vldr	s15, [pc, #184]	; d007a85c <createBonus+0xd4>
d007a7a6:	fe46 7aa7 	vseleq.f32	s15, s13, s15
d007a7aa:	edc4 7a00 	vstr	s15, [r4]
d007a7ae:	fe06 7a07 	vseleq.f32	s14, s12, s14
d007a7b2:	ed84 7a04 	vstr	s14, [r4, #16]
d007a7b6:	f002 f975 	bl	d007caa4 <rand>
d007a7ba:	f000 0001 	and.w	r0, r0, #1
d007a7be:	eef2 7a04 	vmov.f32	s15, #36	; 0x41200000  10.0
d007a7c2:	ed9f 6a27 	vldr	s12, [pc, #156]	; d007a860 <createBonus+0xd8>
d007a7c6:	2800      	cmp	r0, #0
d007a7c8:	eddf 6a26 	vldr	s13, [pc, #152]	; d007a864 <createBonus+0xdc>
d007a7cc:	ed9f 7a26 	vldr	s14, [pc, #152]	; d007a868 <createBonus+0xe0>
d007a7d0:	fe46 7aa7 	vseleq.f32	s15, s13, s15
d007a7d4:	edc4 7a01 	vstr	s15, [r4, #4]
d007a7d8:	fe06 7a07 	vseleq.f32	s14, s12, s14
d007a7dc:	ed84 7a05 	vstr	s14, [r4, #20]
d007a7e0:	f002 f960 	bl	d007caa4 <rand>
d007a7e4:	07c3      	lsls	r3, r0, #31
d007a7e6:	d52e      	bpl.n	d007a846 <createBonus+0xbe>
d007a7e8:	4a20      	ldr	r2, [pc, #128]	; (d007a86c <createBonus+0xe4>)
d007a7ea:	f64a 4144 	movw	r1, #44100	; 0xac44
d007a7ee:	23c8      	movs	r3, #200	; 0xc8
d007a7f0:	6221      	str	r1, [r4, #32]
d007a7f2:	60e2      	str	r2, [r4, #12]
d007a7f4:	61a3      	str	r3, [r4, #24]
d007a7f6:	2004      	movs	r0, #4
d007a7f8:	4d1d      	ldr	r5, [pc, #116]	; (d007a870 <createBonus+0xe8>)
d007a7fa:	f7fe f9bd 	bl	d0078b78 <PlayChannel>
d007a7fe:	6a21      	ldr	r1, [r4, #32]
d007a800:	2004      	movs	r0, #4
d007a802:	2603      	movs	r6, #3
d007a804:	f7fe f9d0 	bl	d0078ba8 <SetChannelFrequency>
d007a808:	481a      	ldr	r0, [pc, #104]	; (d007a874 <createBonus+0xec>)
d007a80a:	f04f 537a 	mov.w	r3, #1048576000	; 0x3e800000
d007a80e:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d007a812:	4a19      	ldr	r2, [pc, #100]	; (d007a878 <createBonus+0xf0>)
d007a814:	6260      	str	r0, [r4, #36]	; 0x24
d007a816:	2000      	movs	r0, #0
d007a818:	62e3      	str	r3, [r4, #44]	; 0x2c
d007a81a:	63a3      	str	r3, [r4, #56]	; 0x38
d007a81c:	6623      	str	r3, [r4, #96]	; 0x60
d007a81e:	63e1      	str	r1, [r4, #60]	; 0x3c
d007a820:	4b16      	ldr	r3, [pc, #88]	; (d007a87c <createBonus+0xf4>)
d007a822:	4917      	ldr	r1, [pc, #92]	; (d007a880 <createBonus+0xf8>)
d007a824:	6562      	str	r2, [r4, #84]	; 0x54
d007a826:	60a5      	str	r5, [r4, #8]
d007a828:	4a16      	ldr	r2, [pc, #88]	; (d007a884 <createBonus+0xfc>)
d007a82a:	4d17      	ldr	r5, [pc, #92]	; (d007a888 <createBonus+0x100>)
d007a82c:	62a0      	str	r0, [r4, #40]	; 0x28
d007a82e:	6320      	str	r0, [r4, #48]	; 0x30
d007a830:	4816      	ldr	r0, [pc, #88]	; (d007a88c <createBonus+0x104>)
d007a832:	61e6      	str	r6, [r4, #28]
d007a834:	6361      	str	r1, [r4, #52]	; 0x34
d007a836:	6461      	str	r1, [r4, #68]	; 0x44
d007a838:	6422      	str	r2, [r4, #64]	; 0x40
d007a83a:	65a2      	str	r2, [r4, #88]	; 0x58
d007a83c:	64a5      	str	r5, [r4, #72]	; 0x48
d007a83e:	64e3      	str	r3, [r4, #76]	; 0x4c
d007a840:	65e3      	str	r3, [r4, #92]	; 0x5c
d007a842:	6520      	str	r0, [r4, #80]	; 0x50
d007a844:	bd70      	pop	{r4, r5, r6, pc}
d007a846:	4a12      	ldr	r2, [pc, #72]	; (d007a890 <createBonus+0x108>)
d007a848:	f44f 73c8 	mov.w	r3, #400	; 0x190
d007a84c:	4911      	ldr	r1, [pc, #68]	; (d007a894 <createBonus+0x10c>)
d007a84e:	60e2      	str	r2, [r4, #12]
d007a850:	6221      	str	r1, [r4, #32]
d007a852:	61a3      	str	r3, [r4, #24]
d007a854:	e7cf      	b.n	d007a7f6 <createBonus+0x6e>
d007a856:	bf00      	nop
d007a858:	d007fc60 	.word	0xd007fc60
d007a85c:	43fa0000 	.word	0x43fa0000
d007a860:	be99999a 	.word	0xbe99999a
d007a864:	43a00000 	.word	0x43a00000
d007a868:	3e99999a 	.word	0x3e99999a
d007a86c:	41c00000 	.word	0x41c00000
d007a870:	448f2000 	.word	0x448f2000
d007a874:	be800000 	.word	0xbe800000
d007a878:	bf800000 	.word	0xbf800000
d007a87c:	becccccd 	.word	0xbecccccd
d007a880:	3ecccccd 	.word	0x3ecccccd
d007a884:	3ee66666 	.word	0x3ee66666
d007a888:	3f266666 	.word	0x3f266666
d007a88c:	3f28f5c3 	.word	0x3f28f5c3
d007a890:	41400000 	.word	0x41400000
d007a894:	00010234 	.word	0x00010234

d007a898 <CreateShipDeath>:
d007a898:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d007a89c:	4f4a      	ldr	r7, [pc, #296]	; (d007a9c8 <CreateShipDeath+0x130>)
d007a89e:	2001      	movs	r0, #1
d007a8a0:	f8df 8144 	ldr.w	r8, [pc, #324]	; d007a9e8 <CreateShipDeath+0x150>
d007a8a4:	ed2d 8b02 	vpush	{d8}
d007a8a8:	f7fe f966 	bl	d0078b78 <PlayChannel>
d007a8ac:	edd7 7a12 	vldr	s15, [r7, #72]	; 0x48
d007a8b0:	4946      	ldr	r1, [pc, #280]	; (d007a9cc <CreateShipDeath+0x134>)
d007a8b2:	2200      	movs	r2, #0
d007a8b4:	eeb8 4ae7 	vcvt.f32.s32	s8, s15
d007a8b8:	edd7 7a13 	vldr	s15, [r7, #76]	; 0x4c
d007a8bc:	4b44      	ldr	r3, [pc, #272]	; (d007a9d0 <CreateShipDeath+0x138>)
d007a8be:	4615      	mov	r5, r2
d007a8c0:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d007a8c4:	edd7 7a14 	vldr	s15, [r7, #80]	; 0x50
d007a8c8:	6179      	str	r1, [r7, #20]
d007a8ca:	2132      	movs	r1, #50	; 0x32
d007a8cc:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d007a8d0:	edd7 7a15 	vldr	s15, [r7, #84]	; 0x54
d007a8d4:	7019      	strb	r1, [r3, #0]
d007a8d6:	461e      	mov	r6, r3
d007a8d8:	eef8 5ae7 	vcvt.f32.s32	s11, s15
d007a8dc:	edd7 7a16 	vldr	s15, [r7, #88]	; 0x58
d007a8e0:	ed83 4a11 	vstr	s8, [r3, #68]	; 0x44
d007a8e4:	21c8      	movs	r1, #200	; 0xc8
d007a8e6:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d007a8ea:	edd7 7a17 	vldr	s15, [r7, #92]	; 0x5c
d007a8ee:	ed83 4a1f 	vstr	s8, [r3, #124]	; 0x7c
d007a8f2:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d007a8f6:	edd7 7a18 	vldr	s15, [r7, #96]	; 0x60
d007a8fa:	edc3 4a12 	vstr	s9, [r3, #72]	; 0x48
d007a8fe:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d007a902:	edd7 7a19 	vldr	s15, [r7, #100]	; 0x64
d007a906:	edc3 4a20 	vstr	s9, [r3, #128]	; 0x80
d007a90a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d007a90e:	ed83 5a13 	vstr	s10, [r3, #76]	; 0x4c
d007a912:	ed83 5a15 	vstr	s10, [r3, #84]	; 0x54
d007a916:	edc3 5a14 	vstr	s11, [r3, #80]	; 0x50
d007a91a:	edc3 5a16 	vstr	s11, [r3, #88]	; 0x58
d007a91e:	ed83 6a17 	vstr	s12, [r3, #92]	; 0x5c
d007a922:	ed83 6a19 	vstr	s12, [r3, #100]	; 0x64
d007a926:	edc3 6a18 	vstr	s13, [r3, #96]	; 0x60
d007a92a:	edc3 6a1a 	vstr	s13, [r3, #104]	; 0x68
d007a92e:	ed83 7a1b 	vstr	s14, [r3, #108]	; 0x6c
d007a932:	ed83 7a1d 	vstr	s14, [r3, #116]	; 0x74
d007a936:	edc3 7a1c 	vstr	s15, [r3, #112]	; 0x70
d007a93a:	edc3 7a1e 	vstr	s15, [r3, #120]	; 0x78
d007a93e:	4b25      	ldr	r3, [pc, #148]	; (d007a9d4 <CreateShipDeath+0x13c>)
d007a940:	ed9f 8b1f 	vldr	d8, [pc, #124]	; d007a9c0 <CreateShipDeath+0x128>
d007a944:	601a      	str	r2, [r3, #0]
d007a946:	4b24      	ldr	r3, [pc, #144]	; (d007a9d8 <CreateShipDeath+0x140>)
d007a948:	6019      	str	r1, [r3, #0]
d007a94a:	106c      	asrs	r4, r5, #1
d007a94c:	f8d8 30b0 	ldr.w	r3, [r8, #176]	; 0xb0
d007a950:	3501      	adds	r5, #1
d007a952:	3608      	adds	r6, #8
d007a954:	340c      	adds	r4, #12
d007a956:	eb07 0484 	add.w	r4, r7, r4, lsl #2
d007a95a:	6860      	ldr	r0, [r4, #4]
d007a95c:	300d      	adds	r0, #13
d007a95e:	4798      	blx	r3
d007a960:	eeb7 0ac0 	vcvt.f64.f32	d0, s0
d007a964:	6860      	ldr	r0, [r4, #4]
d007a966:	f8d8 30ac 	ldr.w	r3, [r8, #172]	; 0xac
d007a96a:	ee20 0b08 	vmul.f64	d0, d0, d8
d007a96e:	300d      	adds	r0, #13
d007a970:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d007a974:	ed06 0a01 	vstr	s0, [r6, #-4]
d007a978:	4798      	blx	r3
d007a97a:	eeb7 0ac0 	vcvt.f64.f32	d0, s0
d007a97e:	2d08      	cmp	r5, #8
d007a980:	ee20 0b08 	vmul.f64	d0, d0, d8
d007a984:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d007a988:	ed86 0a00 	vstr	s0, [r6]
d007a98c:	d1dd      	bne.n	d007a94a <CreateShipDeath+0xb2>
d007a98e:	4a13      	ldr	r2, [pc, #76]	; (d007a9dc <CreateShipDeath+0x144>)
d007a990:	2100      	movs	r1, #0
d007a992:	4c13      	ldr	r4, [pc, #76]	; (d007a9e0 <CreateShipDeath+0x148>)
d007a994:	4813      	ldr	r0, [pc, #76]	; (d007a9e4 <CreateShipDeath+0x14c>)
d007a996:	6813      	ldr	r3, [r2, #0]
d007a998:	603c      	str	r4, [r7, #0]
d007a99a:	6078      	str	r0, [r7, #4]
d007a99c:	60b9      	str	r1, [r7, #8]
d007a99e:	60f9      	str	r1, [r7, #12]
d007a9a0:	b12b      	cbz	r3, d007a9ae <CreateShipDeath+0x116>
d007a9a2:	3b01      	subs	r3, #1
d007a9a4:	ecbd 8b02 	vpop	{d8}
d007a9a8:	6013      	str	r3, [r2, #0]
d007a9aa:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d007a9ae:	2303      	movs	r3, #3
d007a9b0:	ecbd 8b02 	vpop	{d8}
d007a9b4:	6013      	str	r3, [r2, #0]
d007a9b6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d007a9ba:	bf00      	nop
d007a9bc:	f3af 8000 	nop.w
d007a9c0:	d2d2d2d3 	.word	0xd2d2d2d3
d007a9c4:	3ff2d2d2 	.word	0x3ff2d2d2
d007a9c8:	d00833dc 	.word	0xd00833dc
d007a9cc:	41700000 	.word	0x41700000
d007a9d0:	d007f07c 	.word	0xd007f07c
d007a9d4:	d00834c8 	.word	0xd00834c8
d007a9d8:	d00834d4 	.word	0xd00834d4
d007a9dc:	d00834d0 	.word	0xd00834d0
d007a9e0:	43200000 	.word	0x43200000
d007a9e4:	42f00000 	.word	0x42f00000
d007a9e8:	2001f000 	.word	0x2001f000

d007a9ec <CreateStarBurst>:
d007a9ec:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d007a9f0:	4c24      	ldr	r4, [pc, #144]	; (d007aa84 <CreateStarBurst+0x98>)
d007a9f2:	4605      	mov	r5, r0
d007a9f4:	2600      	movs	r6, #0
d007a9f6:	f04f 0901 	mov.w	r9, #1
d007a9fa:	f504 6716 	add.w	r7, r4, #2400	; 0x960
d007a9fe:	f8df 808c 	ldr.w	r8, [pc, #140]	; d007aa8c <CreateStarBurst+0xa0>
d007aa02:	ed2d 8b04 	vpush	{d8-d9}
d007aa06:	ee09 2a10 	vmov	s18, r2
d007aa0a:	ee08 3a90 	vmov	s17, r3
d007aa0e:	eddf 9a1e 	vldr	s19, [pc, #120]	; d007aa88 <CreateStarBurst+0x9c>
d007aa12:	e002      	b.n	d007aa1a <CreateStarBurst+0x2e>
d007aa14:	3418      	adds	r4, #24
d007aa16:	42bc      	cmp	r4, r7
d007aa18:	d030      	beq.n	d007aa7c <CreateStarBurst+0x90>
d007aa1a:	7823      	ldrb	r3, [r4, #0]
d007aa1c:	2b00      	cmp	r3, #0
d007aa1e:	d1f9      	bne.n	d007aa14 <CreateStarBurst+0x28>
d007aa20:	2d00      	cmp	r5, #0
d007aa22:	d0f7      	beq.n	d007aa14 <CreateStarBurst+0x28>
d007aa24:	200a      	movs	r0, #10
d007aa26:	f8c4 9004 	str.w	r9, [r4, #4]
d007aa2a:	f7fe f859 	bl	d0078ae0 <randomi>
d007aa2e:	eeb8 7ac9 	vcvt.f32.s32	s14, s18
d007aa32:	eef8 7ae8 	vcvt.f32.s32	s15, s17
d007aa36:	361e      	adds	r6, #30
d007aa38:	f100 0328 	add.w	r3, r0, #40	; 0x28
d007aa3c:	3418      	adds	r4, #24
d007aa3e:	ed04 7a04 	vstr	s14, [r4, #-16]
d007aa42:	4630      	mov	r0, r6
d007aa44:	f804 3c18 	strb.w	r3, [r4, #-24]
d007aa48:	3d01      	subs	r5, #1
d007aa4a:	f8d8 30b0 	ldr.w	r3, [r8, #176]	; 0xb0
d007aa4e:	ed44 7a03 	vstr	s15, [r4, #-12]
d007aa52:	4798      	blx	r3
d007aa54:	ee07 6a90 	vmov	s15, r6
d007aa58:	f8d8 30ac 	ldr.w	r3, [r8, #172]	; 0xac
d007aa5c:	4630      	mov	r0, r6
d007aa5e:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d007aa62:	ee28 8a29 	vmul.f32	s16, s16, s19
d007aa66:	ee20 0a08 	vmul.f32	s0, s0, s16
d007aa6a:	ed04 0a02 	vstr	s0, [r4, #-8]
d007aa6e:	4798      	blx	r3
d007aa70:	ee20 0a08 	vmul.f32	s0, s0, s16
d007aa74:	ed04 0a01 	vstr	s0, [r4, #-4]
d007aa78:	42bc      	cmp	r4, r7
d007aa7a:	d1ce      	bne.n	d007aa1a <CreateStarBurst+0x2e>
d007aa7c:	ecbd 8b04 	vpop	{d8-d9}
d007aa80:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d007aa84:	d007f100 	.word	0xd007f100
d007aa88:	3aa3d70a 	.word	0x3aa3d70a
d007aa8c:	2001f000 	.word	0x2001f000

d007aa90 <doBonusShipBullet>:
d007aa90:	495c      	ldr	r1, [pc, #368]	; (d007ac04 <doBonusShipBullet+0x174>)
d007aa92:	4a5d      	ldr	r2, [pc, #372]	; (d007ac08 <doBonusShipBullet+0x178>)
d007aa94:	edd1 7a02 	vldr	s15, [r1, #8]
d007aa98:	6c90      	ldr	r0, [r2, #72]	; 0x48
d007aa9a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007aa9e:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d007aaa2:	6e54      	ldr	r4, [r2, #100]	; 0x64
d007aaa4:	ee17 3a90 	vmov	r3, s15
d007aaa8:	6cd7      	ldr	r7, [r2, #76]	; 0x4c
d007aaaa:	edd1 7a03 	vldr	s15, [r1, #12]
d007aaae:	3b04      	subs	r3, #4
d007aab0:	eba4 0e07 	sub.w	lr, r4, r7
d007aab4:	6e16      	ldr	r6, [r2, #96]	; 0x60
d007aab6:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007aaba:	f1be 0f00 	cmp.w	lr, #0
d007aabe:	ee17 1a90 	vmov	r1, s15
d007aac2:	d016      	beq.n	d007aaf2 <doBonusShipBullet+0x62>
d007aac4:	eba1 0807 	sub.w	r8, r1, r7
d007aac8:	eba6 0c00 	sub.w	ip, r6, r0
d007aacc:	eba3 0500 	sub.w	r5, r3, r0
d007aad0:	ea4f 09ce 	mov.w	r9, lr, lsl #3
d007aad4:	fb08 fc0c 	mul.w	ip, r8, ip
d007aad8:	fb0e c515 	mls	r5, lr, r5, ip
d007aadc:	f340 8083 	ble.w	d007abe6 <doBonusShipBullet+0x156>
d007aae0:	454d      	cmp	r5, r9
d007aae2:	dc06      	bgt.n	d007aaf2 <doBonusShipBullet+0x62>
d007aae4:	2d00      	cmp	r5, #0
d007aae6:	db04      	blt.n	d007aaf2 <doBonusShipBullet+0x62>
d007aae8:	42a1      	cmp	r1, r4
d007aaea:	dc02      	bgt.n	d007aaf2 <doBonusShipBullet+0x62>
d007aaec:	f1b8 0f00 	cmp.w	r8, #0
d007aaf0:	da1f      	bge.n	d007ab32 <doBonusShipBullet+0xa2>
d007aaf2:	e9d2 5c14 	ldrd	r5, ip, [r2, #80]	; 0x50
d007aaf6:	eba7 0e0c 	sub.w	lr, r7, ip
d007aafa:	f1be 0f00 	cmp.w	lr, #0
d007aafe:	d024      	beq.n	d007ab4a <doBonusShipBullet+0xba>
d007ab00:	eba0 0005 	sub.w	r0, r0, r5
d007ab04:	eba1 080c 	sub.w	r8, r1, ip
d007ab08:	eba3 0a05 	sub.w	sl, r3, r5
d007ab0c:	ea4f 09ce 	mov.w	r9, lr, lsl #3
d007ab10:	fb08 f000 	mul.w	r0, r8, r0
d007ab14:	fb0e 001a 	mls	r0, lr, sl, r0
d007ab18:	dd08      	ble.n	d007ab2c <doBonusShipBullet+0x9c>
d007ab1a:	2800      	cmp	r0, #0
d007ab1c:	db15      	blt.n	d007ab4a <doBonusShipBullet+0xba>
d007ab1e:	4581      	cmp	r9, r0
d007ab20:	db13      	blt.n	d007ab4a <doBonusShipBullet+0xba>
d007ab22:	f1b8 0f00 	cmp.w	r8, #0
d007ab26:	db10      	blt.n	d007ab4a <doBonusShipBullet+0xba>
d007ab28:	42b9      	cmp	r1, r7
d007ab2a:	dc0e      	bgt.n	d007ab4a <doBonusShipBullet+0xba>
d007ab2c:	f1b9 0f00 	cmp.w	r9, #0
d007ab30:	db02      	blt.n	d007ab38 <doBonusShipBullet+0xa8>
d007ab32:	2001      	movs	r0, #1
d007ab34:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d007ab38:	2800      	cmp	r0, #0
d007ab3a:	dc06      	bgt.n	d007ab4a <doBonusShipBullet+0xba>
d007ab3c:	4581      	cmp	r9, r0
d007ab3e:	dc04      	bgt.n	d007ab4a <doBonusShipBullet+0xba>
d007ab40:	f1b8 0f00 	cmp.w	r8, #0
d007ab44:	dc01      	bgt.n	d007ab4a <doBonusShipBullet+0xba>
d007ab46:	42b9      	cmp	r1, r7
d007ab48:	daf3      	bge.n	d007ab32 <doBonusShipBullet+0xa2>
d007ab4a:	e9d2 2716 	ldrd	r2, r7, [r2, #88]	; 0x58
d007ab4e:	ebac 0e07 	sub.w	lr, ip, r7
d007ab52:	f1be 0f00 	cmp.w	lr, #0
d007ab56:	d021      	beq.n	d007ab9c <doBonusShipBullet+0x10c>
d007ab58:	eba5 0502 	sub.w	r5, r5, r2
d007ab5c:	eba1 0807 	sub.w	r8, r1, r7
d007ab60:	eba3 0002 	sub.w	r0, r3, r2
d007ab64:	ea4f 09ce 	mov.w	r9, lr, lsl #3
d007ab68:	fb08 f505 	mul.w	r5, r8, r5
d007ab6c:	fb0e 5510 	mls	r5, lr, r0, r5
d007ab70:	dd08      	ble.n	d007ab84 <doBonusShipBullet+0xf4>
d007ab72:	2d00      	cmp	r5, #0
d007ab74:	db12      	blt.n	d007ab9c <doBonusShipBullet+0x10c>
d007ab76:	45a9      	cmp	r9, r5
d007ab78:	db10      	blt.n	d007ab9c <doBonusShipBullet+0x10c>
d007ab7a:	f1b8 0f00 	cmp.w	r8, #0
d007ab7e:	db0d      	blt.n	d007ab9c <doBonusShipBullet+0x10c>
d007ab80:	4561      	cmp	r1, ip
d007ab82:	dc0b      	bgt.n	d007ab9c <doBonusShipBullet+0x10c>
d007ab84:	f1b9 0f00 	cmp.w	r9, #0
d007ab88:	dad3      	bge.n	d007ab32 <doBonusShipBullet+0xa2>
d007ab8a:	2d00      	cmp	r5, #0
d007ab8c:	dc06      	bgt.n	d007ab9c <doBonusShipBullet+0x10c>
d007ab8e:	45a9      	cmp	r9, r5
d007ab90:	dc04      	bgt.n	d007ab9c <doBonusShipBullet+0x10c>
d007ab92:	f1b8 0f00 	cmp.w	r8, #0
d007ab96:	dc01      	bgt.n	d007ab9c <doBonusShipBullet+0x10c>
d007ab98:	4561      	cmp	r1, ip
d007ab9a:	daca      	bge.n	d007ab32 <doBonusShipBullet+0xa2>
d007ab9c:	1b38      	subs	r0, r7, r4
d007ab9e:	2800      	cmp	r0, #0
d007aba0:	d0c8      	beq.n	d007ab34 <doBonusShipBullet+0xa4>
d007aba2:	eba1 0404 	sub.w	r4, r1, r4
d007aba6:	eba2 0206 	sub.w	r2, r2, r6
d007abaa:	eba3 0306 	sub.w	r3, r3, r6
d007abae:	ea4f 05c0 	mov.w	r5, r0, lsl #3
d007abb2:	fb04 f202 	mul.w	r2, r4, r2
d007abb6:	fb00 2313 	mls	r3, r0, r3, r2
d007abba:	dd07      	ble.n	d007abcc <doBonusShipBullet+0x13c>
d007abbc:	2b00      	cmp	r3, #0
d007abbe:	db0f      	blt.n	d007abe0 <doBonusShipBullet+0x150>
d007abc0:	429d      	cmp	r5, r3
d007abc2:	db0d      	blt.n	d007abe0 <doBonusShipBullet+0x150>
d007abc4:	2c00      	cmp	r4, #0
d007abc6:	db0b      	blt.n	d007abe0 <doBonusShipBullet+0x150>
d007abc8:	42b9      	cmp	r1, r7
d007abca:	dc09      	bgt.n	d007abe0 <doBonusShipBullet+0x150>
d007abcc:	2d00      	cmp	r5, #0
d007abce:	dab0      	bge.n	d007ab32 <doBonusShipBullet+0xa2>
d007abd0:	2b00      	cmp	r3, #0
d007abd2:	dc05      	bgt.n	d007abe0 <doBonusShipBullet+0x150>
d007abd4:	429d      	cmp	r5, r3
d007abd6:	dc03      	bgt.n	d007abe0 <doBonusShipBullet+0x150>
d007abd8:	2c00      	cmp	r4, #0
d007abda:	dc01      	bgt.n	d007abe0 <doBonusShipBullet+0x150>
d007abdc:	42b9      	cmp	r1, r7
d007abde:	daa8      	bge.n	d007ab32 <doBonusShipBullet+0xa2>
d007abe0:	2000      	movs	r0, #0
d007abe2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d007abe6:	f1b9 0f00 	cmp.w	r9, #0
d007abea:	daa2      	bge.n	d007ab32 <doBonusShipBullet+0xa2>
d007abec:	454d      	cmp	r5, r9
d007abee:	db80      	blt.n	d007aaf2 <doBonusShipBullet+0x62>
d007abf0:	2d00      	cmp	r5, #0
d007abf2:	f73f af7e 	bgt.w	d007aaf2 <doBonusShipBullet+0x62>
d007abf6:	f1b8 0f00 	cmp.w	r8, #0
d007abfa:	f73f af7a 	bgt.w	d007aaf2 <doBonusShipBullet+0x62>
d007abfe:	42a1      	cmp	r1, r4
d007ac00:	da97      	bge.n	d007ab32 <doBonusShipBullet+0xa2>
d007ac02:	e776      	b.n	d007aaf2 <doBonusShipBullet+0x62>
d007ac04:	d007eef8 	.word	0xd007eef8
d007ac08:	d00833dc 	.word	0xd00833dc

d007ac0c <doCheckBulletToAsteroid>:
d007ac0c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d007ac10:	f8df a210 	ldr.w	sl, [pc, #528]	; d007ae24 <doCheckBulletToAsteroid+0x218>
d007ac14:	2700      	movs	r7, #0
d007ac16:	f85a 3c64 	ldr.w	r3, [sl, #-100]
d007ac1a:	b933      	cbnz	r3, d007ac2a <doCheckBulletToAsteroid+0x1e>
d007ac1c:	3701      	adds	r7, #1
d007ac1e:	f50a 7acc 	add.w	sl, sl, #408	; 0x198
d007ac22:	2f20      	cmp	r7, #32
d007ac24:	d1f7      	bne.n	d007ac16 <doCheckBulletToAsteroid+0xa>
d007ac26:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d007ac2a:	f8da 80d8 	ldr.w	r8, [sl, #216]	; 0xd8
d007ac2e:	f1aa 0980 	sub.w	r9, sl, #128	; 0x80
d007ac32:	f8da e0dc 	ldr.w	lr, [sl, #220]	; 0xdc
d007ac36:	46c4      	mov	ip, r8
d007ac38:	4676      	mov	r6, lr
d007ac3a:	f8d9 80e0 	ldr.w	r8, [r9, #224]	; 0xe0
d007ac3e:	2500      	movs	r5, #0
d007ac40:	f8d9 e0e4 	ldr.w	lr, [r9, #228]	; 0xe4
d007ac44:	ebac 0c08 	sub.w	ip, ip, r8
d007ac48:	4b72      	ldr	r3, [pc, #456]	; (d007ae14 <doCheckBulletToAsteroid+0x208>)
d007ac4a:	eba6 060e 	sub.w	r6, r6, lr
d007ac4e:	699a      	ldr	r2, [r3, #24]
d007ac50:	2a00      	cmp	r2, #0
d007ac52:	f000 808e 	beq.w	d007ad72 <doCheckBulletToAsteroid+0x166>
d007ac56:	edd3 7a01 	vldr	s15, [r3, #4]
d007ac5a:	ed93 7a05 	vldr	s14, [r3, #20]
d007ac5e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007ac62:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d007ac66:	ee17 4a90 	vmov	r4, s15
d007ac6a:	edd3 7a00 	vldr	s15, [r3]
d007ac6e:	ee17 2a10 	vmov	r2, s14
d007ac72:	ed93 7a04 	vldr	s14, [r3, #16]
d007ac76:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007ac7a:	1b12      	subs	r2, r2, r4
d007ac7c:	ee17 1a90 	vmov	r1, s15
d007ac80:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d007ac84:	fb02 fb0c 	mul.w	fp, r2, ip
d007ac88:	ee17 0a90 	vmov	r0, s15
d007ac8c:	1a40      	subs	r0, r0, r1
d007ac8e:	fb00 bb16 	mls	fp, r0, r6, fp
d007ac92:	f1bb 0f00 	cmp.w	fp, #0
d007ac96:	d06c      	beq.n	d007ad72 <doCheckBulletToAsteroid+0x166>
d007ac98:	ebae 0404 	sub.w	r4, lr, r4
d007ac9c:	eba8 0101 	sub.w	r1, r8, r1
d007aca0:	fb04 f000 	mul.w	r0, r4, r0
d007aca4:	fb04 f40c 	mul.w	r4, r4, ip
d007aca8:	fb01 0012 	mls	r0, r1, r2, r0
d007acac:	fb01 4116 	mls	r1, r1, r6, r4
d007acb0:	dd57      	ble.n	d007ad62 <doCheckBulletToAsteroid+0x156>
d007acb2:	2800      	cmp	r0, #0
d007acb4:	db5d      	blt.n	d007ad72 <doCheckBulletToAsteroid+0x166>
d007acb6:	4583      	cmp	fp, r0
d007acb8:	db5b      	blt.n	d007ad72 <doCheckBulletToAsteroid+0x166>
d007acba:	2900      	cmp	r1, #0
d007acbc:	db59      	blt.n	d007ad72 <doCheckBulletToAsteroid+0x166>
d007acbe:	458b      	cmp	fp, r1
d007acc0:	db57      	blt.n	d007ad72 <doCheckBulletToAsteroid+0x166>
d007acc2:	4e55      	ldr	r6, [pc, #340]	; (d007ae18 <doCheckBulletToAsteroid+0x20c>)
d007acc4:	f44f 74cc 	mov.w	r4, #408	; 0x198
d007acc8:	fb04 6407 	mla	r4, r4, r7, r6
d007accc:	6a20      	ldr	r0, [r4, #32]
d007acce:	2802      	cmp	r0, #2
d007acd0:	d076      	beq.n	d007adc0 <doCheckBulletToAsteroid+0x1b4>
d007acd2:	2801      	cmp	r0, #1
d007acd4:	d158      	bne.n	d007ad88 <doCheckBulletToAsteroid+0x17c>
d007acd6:	4a51      	ldr	r2, [pc, #324]	; (d007ae1c <doCheckBulletToAsteroid+0x210>)
d007acd8:	2002      	movs	r0, #2
d007acda:	6813      	ldr	r3, [r2, #0]
d007acdc:	331e      	adds	r3, #30
d007acde:	6013      	str	r3, [r2, #0]
d007ace0:	f7fd ff4a 	bl	d0078b78 <PlayChannel>
d007ace4:	ed94 7a02 	vldr	s14, [r4, #8]
d007ace8:	2028      	movs	r0, #40	; 0x28
d007acea:	edd4 7a01 	vldr	s15, [r4, #4]
d007acee:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d007acf2:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007acf6:	ee17 2a10 	vmov	r2, s14
d007acfa:	ee17 1a90 	vmov	r1, s15
d007acfe:	f7fe f813 	bl	d0078d28 <CreateExplosions.constprop.0>
d007ad02:	ed94 7a02 	vldr	s14, [r4, #8]
d007ad06:	edd4 7a01 	vldr	s15, [r4, #4]
d007ad0a:	2000      	movs	r0, #0
d007ad0c:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d007ad10:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007ad14:	ee17 2a10 	vmov	r2, s14
d007ad18:	ee17 1a90 	vmov	r1, s15
d007ad1c:	f7fe f9b0 	bl	d0079080 <initRock>
d007ad20:	ed94 7a02 	vldr	s14, [r4, #8]
d007ad24:	edd4 7a01 	vldr	s15, [r4, #4]
d007ad28:	2000      	movs	r0, #0
d007ad2a:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d007ad2e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007ad32:	ee17 2a10 	vmov	r2, s14
d007ad36:	ee17 1a90 	vmov	r1, s15
d007ad3a:	f7fe f9a1 	bl	d0079080 <initRock>
d007ad3e:	f44f 73cc 	mov.w	r3, #408	; 0x198
d007ad42:	4934      	ldr	r1, [pc, #208]	; (d007ae14 <doCheckBulletToAsteroid+0x208>)
d007ad44:	ebc5 05c5 	rsb	r5, r5, r5, lsl #3
d007ad48:	2200      	movs	r2, #0
d007ad4a:	fb03 6707 	mla	r7, r3, r7, r6
d007ad4e:	2301      	movs	r3, #1
d007ad50:	eb01 0585 	add.w	r5, r1, r5, lsl #2
d007ad54:	4932      	ldr	r1, [pc, #200]	; (d007ae20 <doCheckBulletToAsteroid+0x214>)
d007ad56:	4618      	mov	r0, r3
d007ad58:	61fa      	str	r2, [r7, #28]
d007ad5a:	61aa      	str	r2, [r5, #24]
d007ad5c:	600b      	str	r3, [r1, #0]
d007ad5e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d007ad62:	2800      	cmp	r0, #0
d007ad64:	dc05      	bgt.n	d007ad72 <doCheckBulletToAsteroid+0x166>
d007ad66:	4583      	cmp	fp, r0
d007ad68:	dc03      	bgt.n	d007ad72 <doCheckBulletToAsteroid+0x166>
d007ad6a:	2900      	cmp	r1, #0
d007ad6c:	dc01      	bgt.n	d007ad72 <doCheckBulletToAsteroid+0x166>
d007ad6e:	458b      	cmp	fp, r1
d007ad70:	dda7      	ble.n	d007acc2 <doCheckBulletToAsteroid+0xb6>
d007ad72:	3501      	adds	r5, #1
d007ad74:	331c      	adds	r3, #28
d007ad76:	2d0c      	cmp	r5, #12
d007ad78:	f47f af69 	bne.w	d007ac4e <doCheckBulletToAsteroid+0x42>
d007ad7c:	f109 0908 	add.w	r9, r9, #8
d007ad80:	45d1      	cmp	r9, sl
d007ad82:	f47f af58 	bne.w	d007ac36 <doCheckBulletToAsteroid+0x2a>
d007ad86:	e749      	b.n	d007ac1c <doCheckBulletToAsteroid+0x10>
d007ad88:	b918      	cbnz	r0, d007ad92 <doCheckBulletToAsteroid+0x186>
d007ad8a:	4a24      	ldr	r2, [pc, #144]	; (d007ae1c <doCheckBulletToAsteroid+0x210>)
d007ad8c:	6813      	ldr	r3, [r2, #0]
d007ad8e:	3332      	adds	r3, #50	; 0x32
d007ad90:	6013      	str	r3, [r2, #0]
d007ad92:	2002      	movs	r0, #2
d007ad94:	f7fd fef0 	bl	d0078b78 <PlayChannel>
d007ad98:	f44f 73cc 	mov.w	r3, #408	; 0x198
d007ad9c:	2014      	movs	r0, #20
d007ad9e:	fb03 6307 	mla	r3, r3, r7, r6
d007ada2:	ed93 7a02 	vldr	s14, [r3, #8]
d007ada6:	edd3 7a01 	vldr	s15, [r3, #4]
d007adaa:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d007adae:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007adb2:	ee17 2a10 	vmov	r2, s14
d007adb6:	ee17 1a90 	vmov	r1, s15
d007adba:	f7fd ffb5 	bl	d0078d28 <CreateExplosions.constprop.0>
d007adbe:	e7be      	b.n	d007ad3e <doCheckBulletToAsteroid+0x132>
d007adc0:	4a16      	ldr	r2, [pc, #88]	; (d007ae1c <doCheckBulletToAsteroid+0x210>)
d007adc2:	6813      	ldr	r3, [r2, #0]
d007adc4:	330f      	adds	r3, #15
d007adc6:	6013      	str	r3, [r2, #0]
d007adc8:	f7fd fed6 	bl	d0078b78 <PlayChannel>
d007adcc:	ed94 7a02 	vldr	s14, [r4, #8]
d007add0:	2032      	movs	r0, #50	; 0x32
d007add2:	edd4 7a01 	vldr	s15, [r4, #4]
d007add6:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d007adda:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007adde:	ee17 2a10 	vmov	r2, s14
d007ade2:	ee17 1a90 	vmov	r1, s15
d007ade6:	f7fd ff9f 	bl	d0078d28 <CreateExplosions.constprop.0>
d007adea:	ed94 7a02 	vldr	s14, [r4, #8]
d007adee:	edd4 7a01 	vldr	s15, [r4, #4]
d007adf2:	2001      	movs	r0, #1
d007adf4:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d007adf8:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007adfc:	ee17 2a10 	vmov	r2, s14
d007ae00:	ee17 1a90 	vmov	r1, s15
d007ae04:	f7fe f93c 	bl	d0079080 <initRock>
d007ae08:	ed94 7a02 	vldr	s14, [r4, #8]
d007ae0c:	edd4 7a01 	vldr	s15, [r4, #4]
d007ae10:	2001      	movs	r0, #1
d007ae12:	e78a      	b.n	d007ad2a <doCheckBulletToAsteroid+0x11e>
d007ae14:	d007ef10 	.word	0xd007ef10
d007ae18:	d007fd24 	.word	0xd007fd24
d007ae1c:	d00834a8 	.word	0xd00834a8
d007ae20:	d0083454 	.word	0xd0083454
d007ae24:	d007fda4 	.word	0xd007fda4

d007ae28 <renderBullets>:
d007ae28:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d007ae2a:	4f47      	ldr	r7, [pc, #284]	; (d007af48 <renderBullets+0x120>)
d007ae2c:	2257      	movs	r2, #87	; 0x57
d007ae2e:	4c47      	ldr	r4, [pc, #284]	; (d007af4c <renderBullets+0x124>)
d007ae30:	f8d7 30f8 	ldr.w	r3, [r7, #248]	; 0xf8
d007ae34:	f504 76a8 	add.w	r6, r4, #336	; 0x150
d007ae38:	ed2d 8b02 	vpush	{d8}
d007ae3c:	eddf 8a44 	vldr	s17, [pc, #272]	; d007af50 <renderBullets+0x128>
d007ae40:	ed9f 8a44 	vldr	s16, [pc, #272]	; d007af54 <renderBullets+0x12c>
d007ae44:	701a      	strb	r2, [r3, #0]
d007ae46:	69a3      	ldr	r3, [r4, #24]
d007ae48:	2b00      	cmp	r3, #0
d007ae4a:	dd76      	ble.n	d007af3a <renderBullets+0x112>
d007ae4c:	edd4 5a02 	vldr	s11, [r4, #8]
d007ae50:	eef3 4a0e 	vmov.f32	s9, #62	; 0x41f00000  30.0
d007ae54:	edd4 7a00 	vldr	s15, [r4]
d007ae58:	3b01      	subs	r3, #1
d007ae5a:	ed94 6a04 	vldr	s12, [r4, #16]
d007ae5e:	ee75 7aa7 	vadd.f32	s15, s11, s15
d007ae62:	ed94 7a01 	vldr	s14, [r4, #4]
d007ae66:	ee35 6a86 	vadd.f32	s12, s11, s12
d007ae6a:	edd4 6a03 	vldr	s13, [r4, #12]
d007ae6e:	edd4 5a05 	vldr	s11, [r4, #20]
d007ae72:	eef4 7ae4 	vcmpe.f32	s15, s9
d007ae76:	61a3      	str	r3, [r4, #24]
d007ae78:	ee36 5a87 	vadd.f32	s10, s13, s14
d007ae7c:	edc4 7a00 	vstr	s15, [r4]
d007ae80:	ee76 6aa5 	vadd.f32	s13, s13, s11
d007ae84:	ed84 6a04 	vstr	s12, [r4, #16]
d007ae88:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007ae8c:	eeb0 7a45 	vmov.f32	s14, s10
d007ae90:	ed84 5a01 	vstr	s10, [r4, #4]
d007ae94:	eef0 5a66 	vmov.f32	s11, s13
d007ae98:	edc4 6a05 	vstr	s13, [r4, #20]
d007ae9c:	d50b      	bpl.n	d007aeb6 <renderBullets+0x8e>
d007ae9e:	ee37 4aa8 	vadd.f32	s8, s15, s17
d007aea2:	ee76 4a28 	vadd.f32	s9, s12, s17
d007aea6:	eef0 7a44 	vmov.f32	s15, s8
d007aeaa:	ed84 4a00 	vstr	s8, [r4]
d007aeae:	eeb0 6a64 	vmov.f32	s12, s9
d007aeb2:	edc4 4a04 	vstr	s9, [r4, #16]
d007aeb6:	eef4 7ae8 	vcmpe.f32	s15, s17
d007aeba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007aebe:	dd09      	ble.n	d007aed4 <renderBullets+0xac>
d007aec0:	ee77 4ae8 	vsub.f32	s9, s15, s17
d007aec4:	ee36 6a68 	vsub.f32	s12, s12, s17
d007aec8:	eef0 7a64 	vmov.f32	s15, s9
d007aecc:	edc4 4a00 	vstr	s9, [r4]
d007aed0:	ed84 6a04 	vstr	s12, [r4, #16]
d007aed4:	eef3 4a0e 	vmov.f32	s9, #62	; 0x41f00000  30.0
d007aed8:	eeb4 5ae4 	vcmpe.f32	s10, s9
d007aedc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007aee0:	d50b      	bpl.n	d007aefa <renderBullets+0xd2>
d007aee2:	ee35 5a08 	vadd.f32	s10, s10, s16
d007aee6:	ee76 6a88 	vadd.f32	s13, s13, s16
d007aeea:	eeb0 7a45 	vmov.f32	s14, s10
d007aeee:	ed84 5a01 	vstr	s10, [r4, #4]
d007aef2:	eef0 5a66 	vmov.f32	s11, s13
d007aef6:	edc4 6a05 	vstr	s13, [r4, #20]
d007aefa:	eeb4 7ac8 	vcmpe.f32	s14, s16
d007aefe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007af02:	dd07      	ble.n	d007af14 <renderBullets+0xec>
d007af04:	ee37 7a48 	vsub.f32	s14, s14, s16
d007af08:	ee75 5ac8 	vsub.f32	s11, s11, s16
d007af0c:	ed84 7a01 	vstr	s14, [r4, #4]
d007af10:	edc4 5a05 	vstr	s11, [r4, #20]
d007af14:	eefd 6ae5 	vcvt.s32.f32	s13, s11
d007af18:	f8d7 5124 	ldr.w	r5, [r7, #292]	; 0x124
d007af1c:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d007af20:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007af24:	ee16 3a90 	vmov	r3, s13
d007af28:	eefd 6ac6 	vcvt.s32.f32	s13, s12
d007af2c:	ee17 1a10 	vmov	r1, s14
d007af30:	ee17 0a90 	vmov	r0, s15
d007af34:	ee16 2a90 	vmov	r2, s13
d007af38:	47a8      	blx	r5
d007af3a:	341c      	adds	r4, #28
d007af3c:	42b4      	cmp	r4, r6
d007af3e:	d182      	bne.n	d007ae46 <renderBullets+0x1e>
d007af40:	ecbd 8b02 	vpop	{d8}
d007af44:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d007af46:	bf00      	nop
d007af48:	2001f000 	.word	0x2001f000
d007af4c:	d007ef10 	.word	0xd007ef10
d007af50:	43f50000 	.word	0x43f50000
d007af54:	43a50000 	.word	0x43a50000

d007af58 <renderBonusShipLarge>:
d007af58:	4b7d      	ldr	r3, [pc, #500]	; (d007b150 <renderBonusShipLarge+0x1f8>)
d007af5a:	2255      	movs	r2, #85	; 0x55
d007af5c:	eddf 7a7d 	vldr	s15, [pc, #500]	; d007b154 <renderBonusShipLarge+0x1fc>
d007af60:	f8d3 30f8 	ldr.w	r3, [r3, #248]	; 0xf8
d007af64:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d007af68:	4c7b      	ldr	r4, [pc, #492]	; (d007b158 <renderBonusShipLarge+0x200>)
d007af6a:	ed2d 8b02 	vpush	{d8}
d007af6e:	701a      	strb	r2, [r3, #0]
d007af70:	ed94 8a00 	vldr	s16, [r4]
d007af74:	edd4 6a04 	vldr	s13, [r4, #16]
d007af78:	edd4 8a01 	vldr	s17, [r4, #4]
d007af7c:	ee38 8a26 	vadd.f32	s16, s16, s13
d007af80:	ed94 7a05 	vldr	s14, [r4, #20]
d007af84:	ee78 8a87 	vadd.f32	s17, s17, s14
d007af88:	eeb4 8ae7 	vcmpe.f32	s16, s15
d007af8c:	ed84 8a00 	vstr	s16, [r4]
d007af90:	edc4 8a01 	vstr	s17, [r4, #4]
d007af94:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007af98:	d423      	bmi.n	d007afe2 <renderBonusShipLarge+0x8a>
d007af9a:	eddf 7a70 	vldr	s15, [pc, #448]	; d007b15c <renderBonusShipLarge+0x204>
d007af9e:	eeb4 8a67 	vcmp.f32	s16, s15
d007afa2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007afa6:	dc1c      	bgt.n	d007afe2 <renderBonusShipLarge+0x8a>
d007afa8:	edd4 7a02 	vldr	s15, [r4, #8]
d007afac:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d007afb0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007afb4:	dd29      	ble.n	d007b00a <renderBonusShipLarge+0xb2>
d007afb6:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d007afba:	2004      	movs	r0, #4
d007afbc:	ee77 7ac7 	vsub.f32	s15, s15, s14
d007afc0:	edc4 7a02 	vstr	s15, [r4, #8]
d007afc4:	f7fd fe00 	bl	d0078bc8 <GetChannelVolume>
d007afc8:	4601      	mov	r1, r0
d007afca:	2004      	movs	r0, #4
d007afcc:	3102      	adds	r1, #2
d007afce:	2922      	cmp	r1, #34	; 0x22
d007afd0:	bfa8      	it	ge
d007afd2:	2122      	movge	r1, #34	; 0x22
d007afd4:	f7fd fdf0 	bl	d0078bb8 <SetChannelVolume>
d007afd8:	ed94 8a00 	vldr	s16, [r4]
d007afdc:	edd4 8a01 	vldr	s17, [r4, #4]
d007afe0:	e013      	b.n	d007b00a <renderBonusShipLarge+0xb2>
d007afe2:	2004      	movs	r0, #4
d007afe4:	f7fd fdf0 	bl	d0078bc8 <GetChannelVolume>
d007afe8:	4605      	mov	r5, r0
d007afea:	2004      	movs	r0, #4
d007afec:	1ea9      	subs	r1, r5, #2
d007afee:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d007aff2:	f7fd fde1 	bl	d0078bb8 <SetChannelVolume>
d007aff6:	2d06      	cmp	r5, #6
d007aff8:	f340 80a6 	ble.w	d007b148 <renderBonusShipLarge+0x1f0>
d007affc:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
d007b000:	ed94 8a00 	vldr	s16, [r4]
d007b004:	edd4 8a01 	vldr	s17, [r4, #4]
d007b008:	60a3      	str	r3, [r4, #8]
d007b00a:	eeb0 6a48 	vmov.f32	s12, s16
d007b00e:	edd4 6a17 	vldr	s13, [r4, #92]	; 0x5c
d007b012:	edd4 7a03 	vldr	s15, [r4, #12]
d007b016:	ed94 7a18 	vldr	s14, [r4, #96]	; 0x60
d007b01a:	eea7 6aa6 	vfma.f32	s12, s15, s13
d007b01e:	4c4e      	ldr	r4, [pc, #312]	; (d007b158 <renderBonusShipLarge+0x200>)
d007b020:	4f4b      	ldr	r7, [pc, #300]	; (d007b150 <renderBonusShipLarge+0x1f8>)
d007b022:	4625      	mov	r5, r4
d007b024:	f104 0840 	add.w	r8, r4, #64	; 0x40
d007b028:	eef0 6a46 	vmov.f32	s13, s12
d007b02c:	eeb0 6a68 	vmov.f32	s12, s17
d007b030:	eea7 6a87 	vfma.f32	s12, s15, s14
d007b034:	eeb0 7a46 	vmov.f32	s14, s12
d007b038:	e005      	b.n	d007b046 <renderBonusShipLarge+0xee>
d007b03a:	edd4 7a03 	vldr	s15, [r4, #12]
d007b03e:	ed94 8a00 	vldr	s16, [r4]
d007b042:	edd4 8a01 	vldr	s17, [r4, #4]
d007b046:	ed95 6a09 	vldr	s12, [r5, #36]	; 0x24
d007b04a:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d007b04e:	3508      	adds	r5, #8
d007b050:	f8d7 6124 	ldr.w	r6, [r7, #292]	; 0x124
d007b054:	eea6 8a27 	vfma.f32	s16, s12, s15
d007b058:	ee17 3a10 	vmov	r3, s14
d007b05c:	ed95 7a08 	vldr	s14, [r5, #32]
d007b060:	eee7 8a27 	vfma.f32	s17, s14, s15
d007b064:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d007b068:	ee17 2a90 	vmov	r2, s15
d007b06c:	eefd 7ac8 	vcvt.s32.f32	s15, s16
d007b070:	ee17 0a90 	vmov	r0, s15
d007b074:	eefd 7ae8 	vcvt.s32.f32	s15, s17
d007b078:	ee17 1a90 	vmov	r1, s15
d007b07c:	47b0      	blx	r6
d007b07e:	45a8      	cmp	r8, r5
d007b080:	eeb0 7a68 	vmov.f32	s14, s17
d007b084:	eef0 6a48 	vmov.f32	s13, s16
d007b088:	d1d7      	bne.n	d007b03a <renderBonusShipLarge+0xe2>
d007b08a:	ed94 7a00 	vldr	s14, [r4]
d007b08e:	edd4 6a03 	vldr	s13, [r4, #12]
d007b092:	eef0 5a47 	vmov.f32	s11, s14
d007b096:	edd4 7a0d 	vldr	s15, [r4, #52]	; 0x34
d007b09a:	ed94 5a17 	vldr	s10, [r4, #92]	; 0x5c
d007b09e:	ed94 6a0e 	vldr	s12, [r4, #56]	; 0x38
d007b0a2:	eee6 5aa7 	vfma.f32	s11, s13, s15
d007b0a6:	edd4 7a01 	vldr	s15, [r4, #4]
d007b0aa:	eea6 7a85 	vfma.f32	s14, s13, s10
d007b0ae:	ed94 5a18 	vldr	s10, [r4, #96]	; 0x60
d007b0b2:	eef0 4a67 	vmov.f32	s9, s15
d007b0b6:	f8d7 5124 	ldr.w	r5, [r7, #292]	; 0x124
d007b0ba:	eee6 7a85 	vfma.f32	s15, s13, s10
d007b0be:	eee6 4a86 	vfma.f32	s9, s13, s12
d007b0c2:	eefd 6ae5 	vcvt.s32.f32	s13, s11
d007b0c6:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d007b0ca:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007b0ce:	ee16 0a90 	vmov	r0, s13
d007b0d2:	ee17 2a10 	vmov	r2, s14
d007b0d6:	eebd 7ae4 	vcvt.s32.f32	s14, s9
d007b0da:	ee17 3a90 	vmov	r3, s15
d007b0de:	ee17 1a10 	vmov	r1, s14
d007b0e2:	47a8      	blx	r5
d007b0e4:	ed94 7a00 	vldr	s14, [r4]
d007b0e8:	edd4 6a03 	vldr	s13, [r4, #12]
d007b0ec:	eef0 5a47 	vmov.f32	s11, s14
d007b0f0:	edd4 7a0f 	vldr	s15, [r4, #60]	; 0x3c
d007b0f4:	ed94 5a15 	vldr	s10, [r4, #84]	; 0x54
d007b0f8:	ed94 6a10 	vldr	s12, [r4, #64]	; 0x40
d007b0fc:	eee6 5aa7 	vfma.f32	s11, s13, s15
d007b100:	edd4 7a01 	vldr	s15, [r4, #4]
d007b104:	eea6 7a85 	vfma.f32	s14, s13, s10
d007b108:	ed94 5a16 	vldr	s10, [r4, #88]	; 0x58
d007b10c:	eef0 4a67 	vmov.f32	s9, s15
d007b110:	f8d7 4124 	ldr.w	r4, [r7, #292]	; 0x124
d007b114:	eee6 7a85 	vfma.f32	s15, s13, s10
d007b118:	46a4      	mov	ip, r4
d007b11a:	eee6 4a86 	vfma.f32	s9, s13, s12
d007b11e:	eefd 6ae5 	vcvt.s32.f32	s13, s11
d007b122:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d007b126:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007b12a:	ee16 0a90 	vmov	r0, s13
d007b12e:	ee17 2a10 	vmov	r2, s14
d007b132:	eebd 7ae4 	vcvt.s32.f32	s14, s9
d007b136:	ee17 3a90 	vmov	r3, s15
d007b13a:	ecbd 8b02 	vpop	{d8}
d007b13e:	ee17 1a10 	vmov	r1, s14
d007b142:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d007b146:	4760      	bx	ip
d007b148:	2004      	movs	r0, #4
d007b14a:	f7fd fd21 	bl	d0078b90 <StopChannel>
d007b14e:	e755      	b.n	d007affc <renderBonusShipLarge+0xa4>
d007b150:	2001f000 	.word	0x2001f000
d007b154:	c2200000 	.word	0xc2200000
d007b158:	d007fc60 	.word	0xd007fc60
d007b15c:	43ff0000 	.word	0x43ff0000

d007b160 <renderBonusShipBullet>:
d007b160:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d007b164:	4c1d      	ldr	r4, [pc, #116]	; (d007b1dc <renderBonusShipBullet+0x7c>)
d007b166:	b082      	sub	sp, #8
d007b168:	7823      	ldrb	r3, [r4, #0]
d007b16a:	b3a3      	cbz	r3, d007b1d6 <renderBonusShipBullet+0x76>
d007b16c:	ed94 7a02 	vldr	s14, [r4, #8]
d007b170:	3b01      	subs	r3, #1
d007b172:	ed94 6a04 	vldr	s12, [r4, #16]
d007b176:	2153      	movs	r1, #83	; 0x53
d007b178:	edd4 7a03 	vldr	s15, [r4, #12]
d007b17c:	edd4 6a05 	vldr	s13, [r4, #20]
d007b180:	ee37 7a06 	vadd.f32	s14, s14, s12
d007b184:	4e16      	ldr	r6, [pc, #88]	; (d007b1e0 <renderBonusShipBullet+0x80>)
d007b186:	ee77 7aa6 	vadd.f32	s15, s15, s13
d007b18a:	7023      	strb	r3, [r4, #0]
d007b18c:	eefd 6ac7 	vcvt.s32.f32	s13, s14
d007b190:	f8d6 20f8 	ldr.w	r2, [r6, #248]	; 0xf8
d007b194:	ed84 7a02 	vstr	s14, [r4, #8]
d007b198:	eebd 7ae7 	vcvt.s32.f32	s14, s15
d007b19c:	7011      	strb	r1, [r2, #0]
d007b19e:	ee16 5a90 	vmov	r5, s13
d007b1a2:	f8d6 8124 	ldr.w	r8, [r6, #292]	; 0x124
d007b1a6:	edc4 7a03 	vstr	s15, [r4, #12]
d007b1aa:	ee17 3a10 	vmov	r3, s14
d007b1ae:	1f2f      	subs	r7, r5, #4
d007b1b0:	3504      	adds	r5, #4
d007b1b2:	1f19      	subs	r1, r3, #4
d007b1b4:	3304      	adds	r3, #4
d007b1b6:	462a      	mov	r2, r5
d007b1b8:	4638      	mov	r0, r7
d007b1ba:	e9cd 1300 	strd	r1, r3, [sp]
d007b1be:	47c0      	blx	r8
d007b1c0:	f8d6 4124 	ldr.w	r4, [r6, #292]	; 0x124
d007b1c4:	9b01      	ldr	r3, [sp, #4]
d007b1c6:	463a      	mov	r2, r7
d007b1c8:	9900      	ldr	r1, [sp, #0]
d007b1ca:	4628      	mov	r0, r5
d007b1cc:	46a4      	mov	ip, r4
d007b1ce:	b002      	add	sp, #8
d007b1d0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d007b1d4:	4760      	bx	ip
d007b1d6:	b002      	add	sp, #8
d007b1d8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d007b1dc:	d007eef8 	.word	0xd007eef8
d007b1e0:	2001f000 	.word	0x2001f000

d007b1e4 <shipThrust>:
d007b1e4:	b570      	push	{r4, r5, r6, lr}
d007b1e6:	4c1f      	ldr	r4, [pc, #124]	; (d007b264 <shipThrust+0x80>)
d007b1e8:	f44f 72b4 	mov.w	r2, #360	; 0x168
d007b1ec:	481e      	ldr	r0, [pc, #120]	; (d007b268 <shipThrust+0x84>)
d007b1ee:	edd4 7a04 	vldr	s15, [r4, #16]
d007b1f2:	eddf 6a1e 	vldr	s13, [pc, #120]	; d007b26c <shipThrust+0x88>
d007b1f6:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007b1fa:	ed94 7a06 	vldr	s14, [r4, #24]
d007b1fe:	4e1c      	ldr	r6, [pc, #112]	; (d007b270 <shipThrust+0x8c>)
d007b200:	ee37 7a26 	vadd.f32	s14, s14, s13
d007b204:	ee17 3a90 	vmov	r3, s15
d007b208:	edd4 7a07 	vldr	s15, [r4, #28]
d007b20c:	fb80 1003 	smull	r1, r0, r0, r3
d007b210:	17dd      	asrs	r5, r3, #31
d007b212:	fec7 7ac7 	vminnm.f32	s15, s15, s14
d007b216:	edc4 7a06 	vstr	s15, [r4, #24]
d007b21a:	4418      	add	r0, r3
d007b21c:	ebc5 2520 	rsb	r5, r5, r0, asr #8
d007b220:	fb02 3515 	mls	r5, r2, r5, r3
d007b224:	f8d6 30b0 	ldr.w	r3, [r6, #176]	; 0xb0
d007b228:	2d00      	cmp	r5, #0
d007b22a:	bfb8      	it	lt
d007b22c:	18ad      	addlt	r5, r5, r2
d007b22e:	ed2d 8b02 	vpush	{d8}
d007b232:	4628      	mov	r0, r5
d007b234:	4798      	blx	r3
d007b236:	f8d6 30ac 	ldr.w	r3, [r6, #172]	; 0xac
d007b23a:	eeb0 8a40 	vmov.f32	s16, s0
d007b23e:	4628      	mov	r0, r5
d007b240:	4798      	blx	r3
d007b242:	edd4 6a06 	vldr	s13, [r4, #24]
d007b246:	ed94 7a02 	vldr	s14, [r4, #8]
d007b24a:	edd4 7a03 	vldr	s15, [r4, #12]
d007b24e:	eea6 7a88 	vfma.f32	s14, s13, s16
d007b252:	eee6 7a80 	vfma.f32	s15, s13, s0
d007b256:	ecbd 8b02 	vpop	{d8}
d007b25a:	ed84 7a02 	vstr	s14, [r4, #8]
d007b25e:	edc4 7a03 	vstr	s15, [r4, #12]
d007b262:	bd70      	pop	{r4, r5, r6, pc}
d007b264:	d00833dc 	.word	0xd00833dc
d007b268:	b60b60b7 	.word	0xb60b60b7
d007b26c:	3da3d70a 	.word	0x3da3d70a
d007b270:	2001f000 	.word	0x2001f000
d007b274:	00000000 	.word	0x00000000

d007b278 <doAsterGame>:
d007b278:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d007b27c:	4cc2      	ldr	r4, [pc, #776]	; (d007b588 <doAsterGame+0x310>)
d007b27e:	2100      	movs	r1, #0
d007b280:	6823      	ldr	r3, [r4, #0]
d007b282:	3301      	adds	r3, #1
d007b284:	2b04      	cmp	r3, #4
d007b286:	bfc8      	it	gt
d007b288:	2300      	movgt	r3, #0
d007b28a:	ed2d 8b0c 	vpush	{d8-d13}
d007b28e:	6023      	str	r3, [r4, #0]
d007b290:	b093      	sub	sp, #76	; 0x4c
d007b292:	4bbe      	ldr	r3, [pc, #760]	; (d007b58c <doAsterGame+0x314>)
d007b294:	f503 504c 	add.w	r0, r3, #13056	; 0x3300
d007b298:	69da      	ldr	r2, [r3, #28]
d007b29a:	f503 73cc 	add.w	r3, r3, #408	; 0x198
d007b29e:	b102      	cbz	r2, d007b2a2 <doAsterGame+0x2a>
d007b2a0:	3101      	adds	r1, #1
d007b2a2:	4298      	cmp	r0, r3
d007b2a4:	d1f8      	bne.n	d007b298 <doAsterGame+0x20>
d007b2a6:	f8df a340 	ldr.w	sl, [pc, #832]	; d007b5e8 <doAsterGame+0x370>
d007b2aa:	f8ca 1000 	str.w	r1, [sl]
d007b2ae:	2900      	cmp	r1, #0
d007b2b0:	d078      	beq.n	d007b3a4 <doAsterGame+0x12c>
d007b2b2:	4eb7      	ldr	r6, [pc, #732]	; (d007b590 <doAsterGame+0x318>)
d007b2b4:	6833      	ldr	r3, [r6, #0]
d007b2b6:	2b00      	cmp	r3, #0
d007b2b8:	f340 80c4 	ble.w	d007b444 <doAsterGame+0x1cc>
d007b2bc:	3b01      	subs	r3, #1
d007b2be:	4fb5      	ldr	r7, [pc, #724]	; (d007b594 <doAsterGame+0x31c>)
d007b2c0:	2200      	movs	r2, #0
d007b2c2:	2b81      	cmp	r3, #129	; 0x81
d007b2c4:	6033      	str	r3, [r6, #0]
d007b2c6:	603a      	str	r2, [r7, #0]
d007b2c8:	f300 811b 	bgt.w	d007b502 <doAsterGame+0x28a>
d007b2cc:	2301      	movs	r3, #1
d007b2ce:	6023      	str	r3, [r4, #0]
d007b2d0:	4db1      	ldr	r5, [pc, #708]	; (d007b598 <doAsterGame+0x320>)
d007b2d2:	2100      	movs	r1, #0
d007b2d4:	ac02      	add	r4, sp, #8
d007b2d6:	f04f 09c8 	mov.w	r9, #200	; 0xc8
d007b2da:	4608      	mov	r0, r1
d007b2dc:	f8d5 3104 	ldr.w	r3, [r5, #260]	; 0x104
d007b2e0:	4798      	blx	r3
d007b2e2:	4bae      	ldr	r3, [pc, #696]	; (d007b59c <doAsterGame+0x324>)
d007b2e4:	49ae      	ldr	r1, [pc, #696]	; (d007b5a0 <doAsterGame+0x328>)
d007b2e6:	4620      	mov	r0, r4
d007b2e8:	681a      	ldr	r2, [r3, #0]
d007b2ea:	f04f 08ff 	mov.w	r8, #255	; 0xff
d007b2ee:	f001 fc19 	bl	d007cb24 <siprintf>
d007b2f2:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d007b2f6:	4620      	mov	r0, r4
d007b2f8:	f883 9000 	strb.w	r9, [r3]
d007b2fc:	f001 fc32 	bl	d007cb64 <strlen>
d007b300:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
d007b304:	00c0      	lsls	r0, r0, #3
d007b306:	4622      	mov	r2, r4
d007b308:	2164      	movs	r1, #100	; 0x64
d007b30a:	0840      	lsrs	r0, r0, #1
d007b30c:	f5c0 708c 	rsb	r0, r0, #280	; 0x118
d007b310:	4798      	blx	r3
d007b312:	4aa4      	ldr	r2, [pc, #656]	; (d007b5a4 <doAsterGame+0x32c>)
d007b314:	4623      	mov	r3, r4
d007b316:	ca07      	ldmia	r2, {r0, r1, r2}
d007b318:	c303      	stmia	r3!, {r0, r1}
d007b31a:	0c11      	lsrs	r1, r2, #16
d007b31c:	f823 2b02 	strh.w	r2, [r3], #2
d007b320:	4620      	mov	r0, r4
d007b322:	7019      	strb	r1, [r3, #0]
d007b324:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d007b328:	f883 8000 	strb.w	r8, [r3]
d007b32c:	f001 fc1a 	bl	d007cb64 <strlen>
d007b330:	4649      	mov	r1, r9
d007b332:	00c0      	lsls	r0, r0, #3
d007b334:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
d007b338:	4622      	mov	r2, r4
d007b33a:	0840      	lsrs	r0, r0, #1
d007b33c:	f5c0 708c 	rsb	r0, r0, #280	; 0x118
d007b340:	4798      	blx	r3
d007b342:	2004      	movs	r0, #4
d007b344:	f7fd fc24 	bl	d0078b90 <StopChannel>
d007b348:	4a97      	ldr	r2, [pc, #604]	; (d007b5a8 <doAsterGame+0x330>)
d007b34a:	4b98      	ldr	r3, [pc, #608]	; (d007b5ac <doAsterGame+0x334>)
d007b34c:	2064      	movs	r0, #100	; 0x64
d007b34e:	4998      	ldr	r1, [pc, #608]	; (d007b5b0 <doAsterGame+0x338>)
d007b350:	781b      	ldrb	r3, [r3, #0]
d007b352:	7812      	ldrb	r2, [r2, #0]
d007b354:	6008      	str	r0, [r1, #0]
d007b356:	2100      	movs	r1, #0
d007b358:	431a      	orrs	r2, r3
d007b35a:	f8df c284 	ldr.w	ip, [pc, #644]	; d007b5e0 <doAsterGame+0x368>
d007b35e:	4b95      	ldr	r3, [pc, #596]	; (d007b5b4 <doAsterGame+0x33c>)
d007b360:	4895      	ldr	r0, [pc, #596]	; (d007b5b8 <doAsterGame+0x340>)
d007b362:	f8c3 c000 	str.w	ip, [r3]
d007b366:	6058      	str	r0, [r3, #4]
d007b368:	6099      	str	r1, [r3, #8]
d007b36a:	60d9      	str	r1, [r3, #12]
d007b36c:	07d3      	lsls	r3, r2, #31
d007b36e:	f8d6 9000 	ldr.w	r9, [r6]
d007b372:	f140 80db 	bpl.w	d007b52c <doAsterGame+0x2b4>
d007b376:	f1b9 0f01 	cmp.w	r9, #1
d007b37a:	f040 80d1 	bne.w	d007b520 <doAsterGame+0x2a8>
d007b37e:	2400      	movs	r4, #0
d007b380:	4b85      	ldr	r3, [pc, #532]	; (d007b598 <doAsterGame+0x320>)
d007b382:	2105      	movs	r1, #5
d007b384:	488d      	ldr	r0, [pc, #564]	; (d007b5bc <doAsterGame+0x344>)
d007b386:	f8d3 3164 	ldr.w	r3, [r3, #356]	; 0x164
d007b38a:	4622      	mov	r2, r4
d007b38c:	6034      	str	r4, [r6, #0]
d007b38e:	4798      	blx	r3
d007b390:	f000 ff2a 	bl	d007c1e8 <SetupGameScreen>
d007b394:	4620      	mov	r0, r4
d007b396:	f8c7 9000 	str.w	r9, [r7]
d007b39a:	b013      	add	sp, #76	; 0x4c
d007b39c:	ecbd 8b0c 	vpop	{d8-d13}
d007b3a0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d007b3a4:	4d7d      	ldr	r5, [pc, #500]	; (d007b59c <doAsterGame+0x324>)
d007b3a6:	6021      	str	r1, [r4, #0]
d007b3a8:	682b      	ldr	r3, [r5, #0]
d007b3aa:	3301      	adds	r3, #1
d007b3ac:	2b01      	cmp	r3, #1
d007b3ae:	602b      	str	r3, [r5, #0]
d007b3b0:	dd0c      	ble.n	d007b3cc <doAsterGame+0x154>
d007b3b2:	f7fd fd45 	bl	d0078e40 <initRock.constprop.0>
d007b3b6:	682a      	ldr	r2, [r5, #0]
d007b3b8:	6823      	ldr	r3, [r4, #0]
d007b3ba:	2a00      	cmp	r2, #0
d007b3bc:	f103 0301 	add.w	r3, r3, #1
d007b3c0:	bfb8      	it	lt
d007b3c2:	3201      	addlt	r2, #1
d007b3c4:	6023      	str	r3, [r4, #0]
d007b3c6:	ebb3 0f62 	cmp.w	r3, r2, asr #1
d007b3ca:	dbf2      	blt.n	d007b3b2 <doAsterGame+0x13a>
d007b3cc:	4d72      	ldr	r5, [pc, #456]	; (d007b598 <doAsterGame+0x320>)
d007b3ce:	2200      	movs	r2, #0
d007b3d0:	2105      	movs	r1, #5
d007b3d2:	487b      	ldr	r0, [pc, #492]	; (d007b5c0 <doAsterGame+0x348>)
d007b3d4:	f8d5 3164 	ldr.w	r3, [r5, #356]	; 0x164
d007b3d8:	4617      	mov	r7, r2
d007b3da:	4e6d      	ldr	r6, [pc, #436]	; (d007b590 <doAsterGame+0x318>)
d007b3dc:	4798      	blx	r3
d007b3de:	f04f 0cc8 	mov.w	ip, #200	; 0xc8
d007b3e2:	f44f 73a0 	mov.w	r3, #320	; 0x140
d007b3e6:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d007b3ea:	4976      	ldr	r1, [pc, #472]	; (d007b5c4 <doAsterGame+0x34c>)
d007b3ec:	2002      	movs	r0, #2
d007b3ee:	f8d5 80e8 	ldr.w	r8, [r5, #232]	; 0xe8
d007b3f2:	600f      	str	r7, [r1, #0]
d007b3f4:	4619      	mov	r1, r3
d007b3f6:	9000      	str	r0, [sp, #0]
d007b3f8:	4610      	mov	r0, r2
d007b3fa:	f8c6 c000 	str.w	ip, [r6]
d007b3fe:	47c0      	blx	r8
d007b400:	4a71      	ldr	r2, [pc, #452]	; (d007b5c8 <doAsterGame+0x350>)
d007b402:	f8d5 30f0 	ldr.w	r3, [r5, #240]	; 0xf0
d007b406:	6812      	ldr	r2, [r2, #0]
d007b408:	4870      	ldr	r0, [pc, #448]	; (d007b5cc <doAsterGame+0x354>)
d007b40a:	601a      	str	r2, [r3, #0]
d007b40c:	f000 feda 	bl	d007c1c4 <CLUTAlpha>
d007b410:	4639      	mov	r1, r7
d007b412:	486f      	ldr	r0, [pc, #444]	; (d007b5d0 <doAsterGame+0x358>)
d007b414:	f8d5 30d8 	ldr.w	r3, [r5, #216]	; 0xd8
d007b418:	4798      	blx	r3
d007b41a:	f8d5 30cc 	ldr.w	r3, [r5, #204]	; 0xcc
d007b41e:	4798      	blx	r3
d007b420:	2101      	movs	r1, #1
d007b422:	486b      	ldr	r0, [pc, #428]	; (d007b5d0 <doAsterGame+0x358>)
d007b424:	f8d5 30d8 	ldr.w	r3, [r5, #216]	; 0xd8
d007b428:	4798      	blx	r3
d007b42a:	f8d5 30cc 	ldr.w	r3, [r5, #204]	; 0xcc
d007b42e:	4798      	blx	r3
d007b430:	4868      	ldr	r0, [pc, #416]	; (d007b5d4 <doAsterGame+0x35c>)
d007b432:	f000 febb 	bl	d007c1ac <IMGtoBG>
d007b436:	f8d5 30cc 	ldr.w	r3, [r5, #204]	; 0xcc
d007b43a:	4798      	blx	r3
d007b43c:	6833      	ldr	r3, [r6, #0]
d007b43e:	2b00      	cmp	r3, #0
d007b440:	f73f af3c 	bgt.w	d007b2bc <doAsterGame+0x44>
d007b444:	4e5a      	ldr	r6, [pc, #360]	; (d007b5b0 <doAsterGame+0x338>)
d007b446:	f7ff f8c5 	bl	d007a5d4 <renderStroids>
d007b44a:	6833      	ldr	r3, [r6, #0]
d007b44c:	2b00      	cmp	r3, #0
d007b44e:	f340 80d1 	ble.w	d007b5f4 <doAsterGame+0x37c>
d007b452:	3b01      	subs	r3, #1
d007b454:	2b4f      	cmp	r3, #79	; 0x4f
d007b456:	6033      	str	r3, [r6, #0]
d007b458:	f340 80cc 	ble.w	d007b5f4 <doAsterGame+0x37c>
d007b45c:	f8df 918c 	ldr.w	r9, [pc, #396]	; d007b5ec <doAsterGame+0x374>
d007b460:	f8df b18c 	ldr.w	fp, [pc, #396]	; d007b5f0 <doAsterGame+0x378>
d007b464:	eddb 7a02 	vldr	s15, [fp, #8]
d007b468:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d007b46c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007b470:	dd0a      	ble.n	d007b488 <doAsterGame+0x210>
d007b472:	4a59      	ldr	r2, [pc, #356]	; (d007b5d8 <doAsterGame+0x360>)
d007b474:	6813      	ldr	r3, [r2, #0]
d007b476:	3301      	adds	r3, #1
d007b478:	2b28      	cmp	r3, #40	; 0x28
d007b47a:	f300 824f 	bgt.w	d007b91c <doAsterGame+0x6a4>
d007b47e:	6013      	str	r3, [r2, #0]
d007b480:	f7ff fd6a 	bl	d007af58 <renderBonusShipLarge>
d007b484:	f7ff fe6c 	bl	d007b160 <renderBonusShipBullet>
d007b488:	4c54      	ldr	r4, [pc, #336]	; (d007b5dc <doAsterGame+0x364>)
d007b48a:	f04f 0846 	mov.w	r8, #70	; 0x46
d007b48e:	4d42      	ldr	r5, [pc, #264]	; (d007b598 <doAsterGame+0x320>)
d007b490:	2743      	movs	r7, #67	; 0x43
d007b492:	f504 6616 	add.w	r6, r4, #2400	; 0x960
d007b496:	f7ff fbb9 	bl	d007ac0c <doCheckBulletToAsteroid>
d007b49a:	e015      	b.n	d007b4c8 <doAsterGame+0x250>
d007b49c:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d007b4a0:	701f      	strb	r7, [r3, #0]
d007b4a2:	ed94 7a03 	vldr	s14, [r4, #12]
d007b4a6:	edd4 7a02 	vldr	s15, [r4, #8]
d007b4aa:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d007b4ae:	f8d5 3120 	ldr.w	r3, [r5, #288]	; 0x120
d007b4b2:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007b4b6:	ee17 1a10 	vmov	r1, s14
d007b4ba:	ee17 0a90 	vmov	r0, s15
d007b4be:	4798      	blx	r3
d007b4c0:	3418      	adds	r4, #24
d007b4c2:	42b4      	cmp	r4, r6
d007b4c4:	f000 80de 	beq.w	d007b684 <doAsterGame+0x40c>
d007b4c8:	7823      	ldrb	r3, [r4, #0]
d007b4ca:	1e5a      	subs	r2, r3, #1
d007b4cc:	2b00      	cmp	r3, #0
d007b4ce:	d0f7      	beq.n	d007b4c0 <doAsterGame+0x248>
d007b4d0:	ed94 7a02 	vldr	s14, [r4, #8]
d007b4d4:	edd4 7a03 	vldr	s15, [r4, #12]
d007b4d8:	ed94 6a04 	vldr	s12, [r4, #16]
d007b4dc:	edd4 6a05 	vldr	s13, [r4, #20]
d007b4e0:	ee37 7a06 	vadd.f32	s14, s14, s12
d007b4e4:	6863      	ldr	r3, [r4, #4]
d007b4e6:	ee77 7aa6 	vadd.f32	s15, s15, s13
d007b4ea:	7022      	strb	r2, [r4, #0]
d007b4ec:	ed84 7a02 	vstr	s14, [r4, #8]
d007b4f0:	edc4 7a03 	vstr	s15, [r4, #12]
d007b4f4:	2b00      	cmp	r3, #0
d007b4f6:	d0d1      	beq.n	d007b49c <doAsterGame+0x224>
d007b4f8:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d007b4fc:	f883 8000 	strb.w	r8, [r3]
d007b500:	e7cf      	b.n	d007b4a2 <doAsterGame+0x22a>
d007b502:	6823      	ldr	r3, [r4, #0]
d007b504:	079a      	lsls	r2, r3, #30
d007b506:	f47f aee3 	bne.w	d007b2d0 <doAsterGame+0x58>
d007b50a:	4b2a      	ldr	r3, [pc, #168]	; (d007b5b4 <doAsterGame+0x33c>)
d007b50c:	2200      	movs	r2, #0
d007b50e:	4c28      	ldr	r4, [pc, #160]	; (d007b5b0 <doAsterGame+0x338>)
d007b510:	2564      	movs	r5, #100	; 0x64
d007b512:	4833      	ldr	r0, [pc, #204]	; (d007b5e0 <doAsterGame+0x368>)
d007b514:	4928      	ldr	r1, [pc, #160]	; (d007b5b8 <doAsterGame+0x340>)
d007b516:	6025      	str	r5, [r4, #0]
d007b518:	6018      	str	r0, [r3, #0]
d007b51a:	6059      	str	r1, [r3, #4]
d007b51c:	609a      	str	r2, [r3, #8]
d007b51e:	60da      	str	r2, [r3, #12]
d007b520:	2000      	movs	r0, #0
d007b522:	b013      	add	sp, #76	; 0x4c
d007b524:	ecbd 8b0c 	vpop	{d8-d13}
d007b528:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d007b52c:	f1b9 0f02 	cmp.w	r9, #2
d007b530:	dcf6      	bgt.n	d007b520 <doAsterGame+0x2a8>
d007b532:	f8df a090 	ldr.w	sl, [pc, #144]	; d007b5c4 <doAsterGame+0x34c>
d007b536:	2102      	movs	r1, #2
d007b538:	4a2a      	ldr	r2, [pc, #168]	; (d007b5e4 <doAsterGame+0x36c>)
d007b53a:	f8da 3000 	ldr.w	r3, [sl]
d007b53e:	6031      	str	r1, [r6, #0]
d007b540:	3301      	adds	r3, #1
d007b542:	ca07      	ldmia	r2, {r0, r1, r2}
d007b544:	2b1d      	cmp	r3, #29
d007b546:	f8ca 3000 	str.w	r3, [sl]
d007b54a:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d007b54e:	dc11      	bgt.n	d007b574 <doAsterGame+0x2fc>
d007b550:	f8d5 30f8 	ldr.w	r3, [r5, #248]	; 0xf8
d007b554:	4620      	mov	r0, r4
d007b556:	f883 8000 	strb.w	r8, [r3]
d007b55a:	f001 fb03 	bl	d007cb64 <strlen>
d007b55e:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
d007b562:	00c0      	lsls	r0, r0, #3
d007b564:	4622      	mov	r2, r4
d007b566:	21b4      	movs	r1, #180	; 0xb4
d007b568:	0840      	lsrs	r0, r0, #1
d007b56a:	f5c0 708c 	rsb	r0, r0, #280	; 0x118
d007b56e:	4798      	blx	r3
d007b570:	f8da 3000 	ldr.w	r3, [sl]
d007b574:	2b3c      	cmp	r3, #60	; 0x3c
d007b576:	f340 820f 	ble.w	d007b998 <doAsterGame+0x720>
d007b57a:	2300      	movs	r3, #0
d007b57c:	f8d6 9000 	ldr.w	r9, [r6]
d007b580:	f8ca 3000 	str.w	r3, [sl]
d007b584:	e6f7      	b.n	d007b376 <doAsterGame+0xfe>
d007b586:	bf00      	nop
d007b588:	d007fd10 	.word	0xd007fd10
d007b58c:	d007fd24 	.word	0xd007fd24
d007b590:	d007fd1c 	.word	0xd007fd1c
d007b594:	d007fc54 	.word	0xd007fc54
d007b598:	2001f000 	.word	0x2001f000
d007b59c:	d00834cc 	.word	0xd00834cc
d007b5a0:	d007df58 	.word	0xd007df58
d007b5a4:	d007df68 	.word	0xd007df68
d007b5a8:	d00834e8 	.word	0xd00834e8
d007b5ac:	d00834f8 	.word	0xd00834f8
d007b5b0:	d00834d4 	.word	0xd00834d4
d007b5b4:	d00833dc 	.word	0xd00833dc
d007b5b8:	43200000 	.word	0x43200000
d007b5bc:	d007df80 	.word	0xd007df80
d007b5c0:	d007df4c 	.word	0xd007df4c
d007b5c4:	d007fd14 	.word	0xd007fd14
d007b5c8:	d008349c 	.word	0xd008349c
d007b5cc:	d007e534 	.word	0xd007e534
d007b5d0:	d00834fc 	.word	0xd00834fc
d007b5d4:	d0083900 	.word	0xd0083900
d007b5d8:	d00834c0 	.word	0xd00834c0
d007b5dc:	d007f100 	.word	0xd007f100
d007b5e0:	43700000 	.word	0x43700000
d007b5e4:	d007df74 	.word	0xd007df74
d007b5e8:	d007fc5c 	.word	0xd007fc5c
d007b5ec:	d00834d0 	.word	0xd00834d0
d007b5f0:	d007fc60 	.word	0xd007fc60
d007b5f4:	4db5      	ldr	r5, [pc, #724]	; (d007b8cc <doAsterGame+0x654>)
d007b5f6:	682b      	ldr	r3, [r5, #0]
d007b5f8:	3b01      	subs	r3, #1
d007b5fa:	2b00      	cmp	r3, #0
d007b5fc:	602b      	str	r3, [r5, #0]
d007b5fe:	f2c0 81c1 	blt.w	d007b984 <doAsterGame+0x70c>
d007b602:	f8df 930c 	ldr.w	r9, [pc, #780]	; d007b910 <doAsterGame+0x698>
d007b606:	f8d9 2000 	ldr.w	r2, [r9]
d007b60a:	2a00      	cmp	r2, #0
d007b60c:	f000 80b3 	beq.w	d007b776 <doAsterGame+0x4fe>
d007b610:	4daf      	ldr	r5, [pc, #700]	; (d007b8d0 <doAsterGame+0x658>)
d007b612:	682a      	ldr	r2, [r5, #0]
d007b614:	3201      	adds	r2, #1
d007b616:	2a0f      	cmp	r2, #15
d007b618:	602a      	str	r2, [r5, #0]
d007b61a:	f340 80b8 	ble.w	d007b78e <doAsterGame+0x516>
d007b61e:	4fad      	ldr	r7, [pc, #692]	; (d007b8d4 <doAsterGame+0x65c>)
d007b620:	210f      	movs	r1, #15
d007b622:	f8df b2f0 	ldr.w	fp, [pc, #752]	; d007b914 <doAsterGame+0x69c>
d007b626:	783a      	ldrb	r2, [r7, #0]
d007b628:	f89b 3000 	ldrb.w	r3, [fp]
d007b62c:	6029      	str	r1, [r5, #0]
d007b62e:	4313      	orrs	r3, r2
d007b630:	07d8      	lsls	r0, r3, #31
d007b632:	f100 80b9 	bmi.w	d007b7a8 <doAsterGame+0x530>
d007b636:	4aa8      	ldr	r2, [pc, #672]	; (d007b8d8 <doAsterGame+0x660>)
d007b638:	2100      	movs	r1, #0
d007b63a:	6011      	str	r1, [r2, #0]
d007b63c:	f013 0104 	ands.w	r1, r3, #4
d007b640:	f040 825c 	bne.w	d007bafc <doAsterGame+0x884>
d007b644:	4aa5      	ldr	r2, [pc, #660]	; (d007b8dc <doAsterGame+0x664>)
d007b646:	7810      	ldrb	r0, [r2, #0]
d007b648:	2801      	cmp	r0, #1
d007b64a:	f000 8398 	beq.w	d007bd7e <doAsterGame+0xb06>
d007b64e:	071d      	lsls	r5, r3, #28
d007b650:	f8df 82c4 	ldr.w	r8, [pc, #708]	; d007b918 <doAsterGame+0x6a0>
d007b654:	f100 818e 	bmi.w	d007b974 <doAsterGame+0x6fc>
d007b658:	f8d8 1000 	ldr.w	r1, [r8]
d007b65c:	06d8      	lsls	r0, r3, #27
d007b65e:	f100 82ab 	bmi.w	d007bbb8 <doAsterGame+0x940>
d007b662:	069a      	lsls	r2, r3, #26
d007b664:	f100 81b7 	bmi.w	d007b9d6 <doAsterGame+0x75e>
d007b668:	2901      	cmp	r1, #1
d007b66a:	f000 81a0 	beq.w	d007b9ae <doAsterGame+0x736>
d007b66e:	6833      	ldr	r3, [r6, #0]
d007b670:	2b00      	cmp	r3, #0
d007b672:	f340 832e 	ble.w	d007bcd2 <doAsterGame+0xa5a>
d007b676:	6823      	ldr	r3, [r4, #0]
d007b678:	079b      	lsls	r3, r3, #30
d007b67a:	f040 8327 	bne.w	d007bccc <doAsterGame+0xa54>
d007b67e:	f7fe f90b 	bl	d0079898 <renderFlames>
d007b682:	e6ed      	b.n	d007b460 <doAsterGame+0x1e8>
d007b684:	f7ff fbd0 	bl	d007ae28 <renderBullets>
d007b688:	f7fe f832 	bl	d00796f0 <doShipLogic>
d007b68c:	f7fe fc64 	bl	d0079f58 <testBulletToBonusCollision>
d007b690:	2800      	cmp	r0, #0
d007b692:	d166      	bne.n	d007b762 <doAsterGame+0x4ea>
d007b694:	4d92      	ldr	r5, [pc, #584]	; (d007b8e0 <doAsterGame+0x668>)
d007b696:	4a93      	ldr	r2, [pc, #588]	; (d007b8e4 <doAsterGame+0x66c>)
d007b698:	7813      	ldrb	r3, [r2, #0]
d007b69a:	b143      	cbz	r3, d007b6ae <doAsterGame+0x436>
d007b69c:	3b01      	subs	r3, #1
d007b69e:	4992      	ldr	r1, [pc, #584]	; (d007b8e8 <doAsterGame+0x670>)
d007b6a0:	7013      	strb	r3, [r2, #0]
d007b6a2:	2241      	movs	r2, #65	; 0x41
d007b6a4:	f8d1 30f8 	ldr.w	r3, [r1, #248]	; 0xf8
d007b6a8:	701a      	strb	r2, [r3, #0]
d007b6aa:	f7fd fad1 	bl	d0078c50 <renderShipDeath.part.0>
d007b6ae:	4c8e      	ldr	r4, [pc, #568]	; (d007b8e8 <doAsterGame+0x670>)
d007b6b0:	2252      	movs	r2, #82	; 0x52
d007b6b2:	498e      	ldr	r1, [pc, #568]	; (d007b8ec <doAsterGame+0x674>)
d007b6b4:	a80a      	add	r0, sp, #40	; 0x28
d007b6b6:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d007b6ba:	701a      	strb	r2, [r3, #0]
d007b6bc:	682a      	ldr	r2, [r5, #0]
d007b6be:	f001 fa31 	bl	d007cb24 <siprintf>
d007b6c2:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d007b6c6:	aa0a      	add	r2, sp, #40	; 0x28
d007b6c8:	2105      	movs	r1, #5
d007b6ca:	2008      	movs	r0, #8
d007b6cc:	4798      	blx	r3
d007b6ce:	4b88      	ldr	r3, [pc, #544]	; (d007b8f0 <doAsterGame+0x678>)
d007b6d0:	4988      	ldr	r1, [pc, #544]	; (d007b8f4 <doAsterGame+0x67c>)
d007b6d2:	a802      	add	r0, sp, #8
d007b6d4:	681a      	ldr	r2, [r3, #0]
d007b6d6:	f001 fa25 	bl	d007cb24 <siprintf>
d007b6da:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d007b6de:	aa02      	add	r2, sp, #8
d007b6e0:	f44f 7196 	mov.w	r1, #300	; 0x12c
d007b6e4:	f44f 70c3 	mov.w	r0, #390	; 0x186
d007b6e8:	4798      	blx	r3
d007b6ea:	f8d4 10f8 	ldr.w	r1, [r4, #248]	; 0xf8
d007b6ee:	4b82      	ldr	r3, [pc, #520]	; (d007b8f8 <doAsterGame+0x680>)
d007b6f0:	2051      	movs	r0, #81	; 0x51
d007b6f2:	aa0a      	add	r2, sp, #40	; 0x28
d007b6f4:	7008      	strb	r0, [r1, #0]
d007b6f6:	e893 0003 	ldmia.w	r3, {r0, r1}
d007b6fa:	0c0b      	lsrs	r3, r1, #16
d007b6fc:	900a      	str	r0, [sp, #40]	; 0x28
d007b6fe:	f8ad 102c 	strh.w	r1, [sp, #44]	; 0x2c
d007b702:	f44f 70af 	mov.w	r0, #350	; 0x15e
d007b706:	f88d 302e 	strb.w	r3, [sp, #46]	; 0x2e
d007b70a:	2105      	movs	r1, #5
d007b70c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d007b710:	4798      	blx	r3
d007b712:	f8d9 3000 	ldr.w	r3, [r9]
d007b716:	2b00      	cmp	r3, #0
d007b718:	dd0b      	ble.n	d007b732 <doAsterGame+0x4ba>
d007b71a:	f44f 75cd 	mov.w	r5, #410	; 0x19a
d007b71e:	2400      	movs	r4, #0
d007b720:	4628      	mov	r0, r5
d007b722:	3401      	adds	r4, #1
d007b724:	f7fe fd96 	bl	d007a254 <renderShipLive>
d007b728:	f8d9 3000 	ldr.w	r3, [r9]
d007b72c:	350d      	adds	r5, #13
d007b72e:	42a3      	cmp	r3, r4
d007b730:	dcf6      	bgt.n	d007b720 <doAsterGame+0x4a8>
d007b732:	4c6d      	ldr	r4, [pc, #436]	; (d007b8e8 <doAsterGame+0x670>)
d007b734:	2154      	movs	r1, #84	; 0x54
d007b736:	f8da 2000 	ldr.w	r2, [sl]
d007b73a:	a802      	add	r0, sp, #8
d007b73c:	f8d4 30f8 	ldr.w	r3, [r4, #248]	; 0xf8
d007b740:	7019      	strb	r1, [r3, #0]
d007b742:	496e      	ldr	r1, [pc, #440]	; (d007b8fc <doAsterGame+0x684>)
d007b744:	f001 f9ee 	bl	d007cb24 <siprintf>
d007b748:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
d007b74c:	aa02      	add	r2, sp, #8
d007b74e:	f44f 7196 	mov.w	r1, #300	; 0x12c
d007b752:	2008      	movs	r0, #8
d007b754:	4798      	blx	r3
d007b756:	2000      	movs	r0, #0
d007b758:	b013      	add	sp, #76	; 0x4c
d007b75a:	ecbd 8b0c 	vpop	{d8-d13}
d007b75e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d007b762:	f8db 301c 	ldr.w	r3, [fp, #28]
d007b766:	2b00      	cmp	r3, #0
d007b768:	f340 81d6 	ble.w	d007bb18 <doAsterGame+0x8a0>
d007b76c:	3b01      	subs	r3, #1
d007b76e:	4d5c      	ldr	r5, [pc, #368]	; (d007b8e0 <doAsterGame+0x668>)
d007b770:	f8cb 301c 	str.w	r3, [fp, #28]
d007b774:	e78f      	b.n	d007b696 <doAsterGame+0x41e>
d007b776:	4962      	ldr	r1, [pc, #392]	; (d007b900 <doAsterGame+0x688>)
d007b778:	f44f 7096 	mov.w	r0, #300	; 0x12c
d007b77c:	4b5a      	ldr	r3, [pc, #360]	; (d007b8e8 <doAsterGame+0x670>)
d007b77e:	6008      	str	r0, [r1, #0]
d007b780:	2105      	movs	r1, #5
d007b782:	4860      	ldr	r0, [pc, #384]	; (d007b904 <doAsterGame+0x68c>)
d007b784:	f8d3 3164 	ldr.w	r3, [r3, #356]	; 0x164
d007b788:	4798      	blx	r3
d007b78a:	2001      	movs	r0, #1
d007b78c:	e605      	b.n	d007b39a <doAsterGame+0x122>
d007b78e:	f8df b184 	ldr.w	fp, [pc, #388]	; d007b914 <doAsterGame+0x69c>
d007b792:	4f50      	ldr	r7, [pc, #320]	; (d007b8d4 <doAsterGame+0x65c>)
d007b794:	f89b 1000 	ldrb.w	r1, [fp]
d007b798:	783b      	ldrb	r3, [r7, #0]
d007b79a:	430b      	orrs	r3, r1
d007b79c:	07d9      	lsls	r1, r3, #31
d007b79e:	f57f af4a 	bpl.w	d007b636 <doAsterGame+0x3be>
d007b7a2:	2a0f      	cmp	r2, #15
d007b7a4:	f47f af4a 	bne.w	d007b63c <doAsterGame+0x3c4>
d007b7a8:	4a4b      	ldr	r2, [pc, #300]	; (d007b8d8 <doAsterGame+0x660>)
d007b7aa:	6810      	ldr	r0, [r2, #0]
d007b7ac:	2800      	cmp	r0, #0
d007b7ae:	f47f af45 	bne.w	d007b63c <doAsterGame+0x3c4>
d007b7b2:	f8df 8134 	ldr.w	r8, [pc, #308]	; d007b8e8 <doAsterGame+0x670>
d007b7b6:	2101      	movs	r1, #1
d007b7b8:	6028      	str	r0, [r5, #0]
d007b7ba:	f8d8 c170 	ldr.w	ip, [r8, #368]	; 0x170
d007b7be:	6011      	str	r1, [r2, #0]
d007b7c0:	f89c 3001 	ldrb.w	r3, [ip, #1]
d007b7c4:	4d50      	ldr	r5, [pc, #320]	; (d007b908 <doAsterGame+0x690>)
d007b7c6:	f3c3 0200 	ubfx	r2, r3, #0, #1
d007b7ca:	404a      	eors	r2, r1
d007b7cc:	f362 0300 	bfi	r3, r2, #0, #1
d007b7d0:	f88c 3001 	strb.w	r3, [ip, #1]
d007b7d4:	f7fd f9d0 	bl	d0078b78 <PlayChannel>
d007b7d8:	edd5 7a04 	vldr	s15, [r5, #16]
d007b7dc:	f8d8 30b0 	ldr.w	r3, [r8, #176]	; 0xb0
d007b7e0:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007b7e4:	ee17 0a90 	vmov	r0, s15
d007b7e8:	4798      	blx	r3
d007b7ea:	edd5 7a04 	vldr	s15, [r5, #16]
d007b7ee:	f8d8 30ac 	ldr.w	r3, [r8, #172]	; 0xac
d007b7f2:	eef0 8a40 	vmov.f32	s17, s0
d007b7f6:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007b7fa:	ee17 0a90 	vmov	r0, s15
d007b7fe:	4798      	blx	r3
d007b800:	f8d8 30b0 	ldr.w	r3, [r8, #176]	; 0xb0
d007b804:	6c68      	ldr	r0, [r5, #68]	; 0x44
d007b806:	eeb0 8a40 	vmov.f32	s16, s0
d007b80a:	4798      	blx	r3
d007b80c:	f8d8 30ac 	ldr.w	r3, [r8, #172]	; 0xac
d007b810:	6c68      	ldr	r0, [r5, #68]	; 0x44
d007b812:	eef0 ba40 	vmov.f32	s23, s0
d007b816:	ed95 aa0c 	vldr	s20, [r5, #48]	; 0x30
d007b81a:	ed95 da05 	vldr	s26, [r5, #20]
d007b81e:	4798      	blx	r3
d007b820:	f8d8 30b0 	ldr.w	r3, [r8, #176]	; 0xb0
d007b824:	eeb0 ba40 	vmov.f32	s22, s0
d007b828:	6c68      	ldr	r0, [r5, #68]	; 0x44
d007b82a:	edd5 9a0c 	vldr	s19, [r5, #48]	; 0x30
d007b82e:	edd5 ca05 	vldr	s25, [r5, #20]
d007b832:	4798      	blx	r3
d007b834:	f8d8 30ac 	ldr.w	r3, [r8, #172]	; 0xac
d007b838:	eef0 aa40 	vmov.f32	s21, s0
d007b83c:	6c68      	ldr	r0, [r5, #68]	; 0x44
d007b83e:	ed95 ca0c 	vldr	s24, [r5, #48]	; 0x30
d007b842:	ed95 9a05 	vldr	s18, [r5, #20]
d007b846:	4798      	blx	r3
d007b848:	4a30      	ldr	r2, [pc, #192]	; (d007b90c <doAsterGame+0x694>)
d007b84a:	eef0 4a40 	vmov.f32	s9, s0
d007b84e:	6993      	ldr	r3, [r2, #24]
d007b850:	2b00      	cmp	r3, #0
d007b852:	f000 82ea 	beq.w	d007be2a <doAsterGame+0xbb2>
d007b856:	6b53      	ldr	r3, [r2, #52]	; 0x34
d007b858:	2101      	movs	r1, #1
d007b85a:	2b00      	cmp	r3, #0
d007b85c:	f000 832f 	beq.w	d007bebe <doAsterGame+0xc46>
d007b860:	6d13      	ldr	r3, [r2, #80]	; 0x50
d007b862:	2b00      	cmp	r3, #0
d007b864:	f000 832f 	beq.w	d007bec6 <doAsterGame+0xc4e>
d007b868:	6ed3      	ldr	r3, [r2, #108]	; 0x6c
d007b86a:	2b00      	cmp	r3, #0
d007b86c:	f000 8329 	beq.w	d007bec2 <doAsterGame+0xc4a>
d007b870:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
d007b874:	2b00      	cmp	r3, #0
d007b876:	f000 8334 	beq.w	d007bee2 <doAsterGame+0xc6a>
d007b87a:	f8d2 30a4 	ldr.w	r3, [r2, #164]	; 0xa4
d007b87e:	2b00      	cmp	r3, #0
d007b880:	f000 832d 	beq.w	d007bede <doAsterGame+0xc66>
d007b884:	f8d2 30c0 	ldr.w	r3, [r2, #192]	; 0xc0
d007b888:	2b00      	cmp	r3, #0
d007b88a:	f000 8326 	beq.w	d007beda <doAsterGame+0xc62>
d007b88e:	f8d2 30dc 	ldr.w	r3, [r2, #220]	; 0xdc
d007b892:	2b00      	cmp	r3, #0
d007b894:	f000 831f 	beq.w	d007bed6 <doAsterGame+0xc5e>
d007b898:	f8d2 30f8 	ldr.w	r3, [r2, #248]	; 0xf8
d007b89c:	2b00      	cmp	r3, #0
d007b89e:	f000 8318 	beq.w	d007bed2 <doAsterGame+0xc5a>
d007b8a2:	f8d2 3114 	ldr.w	r3, [r2, #276]	; 0x114
d007b8a6:	2b00      	cmp	r3, #0
d007b8a8:	f000 8311 	beq.w	d007bece <doAsterGame+0xc56>
d007b8ac:	f8d2 3130 	ldr.w	r3, [r2, #304]	; 0x130
d007b8b0:	2b00      	cmp	r3, #0
d007b8b2:	f000 82b9 	beq.w	d007be28 <doAsterGame+0xbb0>
d007b8b6:	f8d2 314c 	ldr.w	r3, [r2, #332]	; 0x14c
d007b8ba:	2b00      	cmp	r3, #0
d007b8bc:	f000 8305 	beq.w	d007beca <doAsterGame+0xc52>
d007b8c0:	f89b 2000 	ldrb.w	r2, [fp]
d007b8c4:	783b      	ldrb	r3, [r7, #0]
d007b8c6:	4313      	orrs	r3, r2
d007b8c8:	e6b8      	b.n	d007b63c <doAsterGame+0x3c4>
d007b8ca:	bf00      	nop
d007b8cc:	d00834a4 	.word	0xd00834a4
d007b8d0:	d007fd20 	.word	0xd007fd20
d007b8d4:	d00834f8 	.word	0xd00834f8
d007b8d8:	d007fd08 	.word	0xd007fd08
d007b8dc:	d00834d8 	.word	0xd00834d8
d007b8e0:	d00834a8 	.word	0xd00834a8
d007b8e4:	d007f07c 	.word	0xd007f07c
d007b8e8:	2001f000 	.word	0x2001f000
d007b8ec:	d007df9c 	.word	0xd007df9c
d007b8f0:	d00834cc 	.word	0xd00834cc
d007b8f4:	d007df40 	.word	0xd007df40
d007b8f8:	d007dfa8 	.word	0xd007dfa8
d007b8fc:	d007dfb0 	.word	0xd007dfb0
d007b900:	d00834b8 	.word	0xd00834b8
d007b904:	d007df8c 	.word	0xd007df8c
d007b908:	d00833dc 	.word	0xd00833dc
d007b90c:	d007ef10 	.word	0xd007ef10
d007b910:	d00834d0 	.word	0xd00834d0
d007b914:	d00834e8 	.word	0xd00834e8
d007b918:	d00834c8 	.word	0xd00834c8
d007b91c:	2300      	movs	r3, #0
d007b91e:	eeb0 8a08 	vmov.f32	s16, #8	; 0x40400000  3.0
d007b922:	4d9b      	ldr	r5, [pc, #620]	; (d007bb90 <doAsterGame+0x918>)
d007b924:	6013      	str	r3, [r2, #0]
d007b926:	f001 f8bd 	bl	d007caa4 <rand>
d007b92a:	4b9a      	ldr	r3, [pc, #616]	; (d007bb94 <doAsterGame+0x91c>)
d007b92c:	17c4      	asrs	r4, r0, #31
d007b92e:	f44f 72b4 	mov.w	r2, #360	; 0x168
d007b932:	4e99      	ldr	r6, [pc, #612]	; (d007bb98 <doAsterGame+0x920>)
d007b934:	fb83 1300 	smull	r1, r3, r3, r0
d007b938:	4403      	add	r3, r0
d007b93a:	ebc4 2423 	rsb	r4, r4, r3, asr #8
d007b93e:	f8d5 30b0 	ldr.w	r3, [r5, #176]	; 0xb0
d007b942:	fb02 0414 	mls	r4, r2, r4, r0
d007b946:	4620      	mov	r0, r4
d007b948:	4798      	blx	r3
d007b94a:	ee20 0a08 	vmul.f32	s0, s0, s16
d007b94e:	f8d5 30ac 	ldr.w	r3, [r5, #172]	; 0xac
d007b952:	4620      	mov	r0, r4
d007b954:	ed86 0a04 	vstr	s0, [r6, #16]
d007b958:	4798      	blx	r3
d007b95a:	ee20 0a08 	vmul.f32	s0, s0, s16
d007b95e:	2132      	movs	r1, #50	; 0x32
d007b960:	f8db 2000 	ldr.w	r2, [fp]
d007b964:	f8db 3004 	ldr.w	r3, [fp, #4]
d007b968:	7031      	strb	r1, [r6, #0]
d007b96a:	60b2      	str	r2, [r6, #8]
d007b96c:	ed86 0a05 	vstr	s0, [r6, #20]
d007b970:	60f3      	str	r3, [r6, #12]
d007b972:	e585      	b.n	d007b480 <doAsterGame+0x208>
d007b974:	f8d8 2000 	ldr.w	r2, [r8]
d007b978:	b18a      	cbz	r2, d007b99e <doAsterGame+0x726>
d007b97a:	2201      	movs	r2, #1
d007b97c:	4611      	mov	r1, r2
d007b97e:	f8c8 2000 	str.w	r2, [r8]
d007b982:	e66b      	b.n	d007b65c <doAsterGame+0x3e4>
d007b984:	f001 f88e 	bl	d007caa4 <rand>
d007b988:	f400 707a 	and.w	r0, r0, #1000	; 0x3e8
d007b98c:	f500 707a 	add.w	r0, r0, #1000	; 0x3e8
d007b990:	6028      	str	r0, [r5, #0]
d007b992:	f7fe fef9 	bl	d007a788 <createBonus>
d007b996:	e634      	b.n	d007b602 <doAsterGame+0x38a>
d007b998:	f8d6 9000 	ldr.w	r9, [r6]
d007b99c:	e4eb      	b.n	d007b376 <doAsterGame+0xfe>
d007b99e:	2005      	movs	r0, #5
d007b9a0:	f7fd f8ea 	bl	d0078b78 <PlayChannel>
d007b9a4:	f89b 2000 	ldrb.w	r2, [fp]
d007b9a8:	783b      	ldrb	r3, [r7, #0]
d007b9aa:	4313      	orrs	r3, r2
d007b9ac:	e7e5      	b.n	d007b97a <doAsterGame+0x702>
d007b9ae:	4d7b      	ldr	r5, [pc, #492]	; (d007bb9c <doAsterGame+0x924>)
d007b9b0:	ed95 7a05 	vldr	s14, [r5, #20]
d007b9b4:	ed9f 6b74 	vldr	d6, [pc, #464]	; d007bb88 <doAsterGame+0x910>
d007b9b8:	eeb7 7ac7 	vcvt.f64.f32	d7, s14
d007b9bc:	ee37 7b46 	vsub.f64	d7, d7, d6
d007b9c0:	eeb7 7bc7 	vcvt.f32.f64	s14, d7
d007b9c4:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d007b9c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007b9cc:	f100 81e6 	bmi.w	d007bd9c <doAsterGame+0xb24>
d007b9d0:	ed85 7a05 	vstr	s14, [r5, #20]
d007b9d4:	e64b      	b.n	d007b66e <doAsterGame+0x3f6>
d007b9d6:	4d71      	ldr	r5, [pc, #452]	; (d007bb9c <doAsterGame+0x924>)
d007b9d8:	eef1 7a00 	vmov.f32	s15, #16	; 0x40800000  4.0
d007b9dc:	6b6b      	ldr	r3, [r5, #52]	; 0x34
d007b9de:	ed95 7a04 	vldr	s14, [r5, #16]
d007b9e2:	3304      	adds	r3, #4
d007b9e4:	ee77 7a27 	vadd.f32	s15, s14, s15
d007b9e8:	f5b3 7fb4 	cmp.w	r3, #360	; 0x168
d007b9ec:	edc5 7a04 	vstr	s15, [r5, #16]
d007b9f0:	f300 8192 	bgt.w	d007bd18 <doAsterGame+0xaa0>
d007b9f4:	2b00      	cmp	r3, #0
d007b9f6:	f280 8190 	bge.w	d007bd1a <doAsterGame+0xaa2>
d007b9fa:	f44f 73b4 	mov.w	r3, #360	; 0x168
d007b9fe:	636b      	str	r3, [r5, #52]	; 0x34
d007ba00:	eddf 6a67 	vldr	s13, [pc, #412]	; d007bba0 <doAsterGame+0x928>
d007ba04:	eeb4 7ae6 	vcmpe.f32	s14, s13
d007ba08:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007ba0c:	f300 819f 	bgt.w	d007bd4e <doAsterGame+0xad6>
d007ba10:	eeb9 6a00 	vmov.f32	s12, #144	; 0xc0800000 -4.0
d007ba14:	eddf 6a63 	vldr	s13, [pc, #396]	; d007bba4 <doAsterGame+0x92c>
d007ba18:	eeb4 7a46 	vcmp.f32	s14, s12
d007ba1c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007ba20:	bf48      	it	mi
d007ba22:	eef0 7a66 	vmovmi.f32	s15, s13
d007ba26:	6bab      	ldr	r3, [r5, #56]	; 0x38
d007ba28:	3304      	adds	r3, #4
d007ba2a:	f5b3 7fb4 	cmp.w	r3, #360	; 0x168
d007ba2e:	f300 8170 	bgt.w	d007bd12 <doAsterGame+0xa9a>
d007ba32:	2b00      	cmp	r3, #0
d007ba34:	f280 816e 	bge.w	d007bd14 <doAsterGame+0xa9c>
d007ba38:	f44f 73b4 	mov.w	r3, #360	; 0x168
d007ba3c:	63ab      	str	r3, [r5, #56]	; 0x38
d007ba3e:	ed9f 7a59 	vldr	s14, [pc, #356]	; d007bba4 <doAsterGame+0x92c>
d007ba42:	eef4 7ac7 	vcmpe.f32	s15, s14
d007ba46:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007ba4a:	f300 817d 	bgt.w	d007bd48 <doAsterGame+0xad0>
d007ba4e:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d007ba52:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007ba56:	d501      	bpl.n	d007ba5c <doAsterGame+0x7e4>
d007ba58:	eef0 7a47 	vmov.f32	s15, s14
d007ba5c:	6beb      	ldr	r3, [r5, #60]	; 0x3c
d007ba5e:	3304      	adds	r3, #4
d007ba60:	f5b3 7fb4 	cmp.w	r3, #360	; 0x168
d007ba64:	f300 815e 	bgt.w	d007bd24 <doAsterGame+0xaac>
d007ba68:	2b00      	cmp	r3, #0
d007ba6a:	f280 815c 	bge.w	d007bd26 <doAsterGame+0xaae>
d007ba6e:	f44f 73b4 	mov.w	r3, #360	; 0x168
d007ba72:	63eb      	str	r3, [r5, #60]	; 0x3c
d007ba74:	ed9f 7a4b 	vldr	s14, [pc, #300]	; d007bba4 <doAsterGame+0x92c>
d007ba78:	eef4 7ac7 	vcmpe.f32	s15, s14
d007ba7c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007ba80:	f300 8153 	bgt.w	d007bd2a <doAsterGame+0xab2>
d007ba84:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d007ba88:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007ba8c:	d501      	bpl.n	d007ba92 <doAsterGame+0x81a>
d007ba8e:	eef0 7a47 	vmov.f32	s15, s14
d007ba92:	6c2b      	ldr	r3, [r5, #64]	; 0x40
d007ba94:	3304      	adds	r3, #4
d007ba96:	f5b3 7fb4 	cmp.w	r3, #360	; 0x168
d007ba9a:	f300 8140 	bgt.w	d007bd1e <doAsterGame+0xaa6>
d007ba9e:	2b00      	cmp	r3, #0
d007baa0:	f280 813e 	bge.w	d007bd20 <doAsterGame+0xaa8>
d007baa4:	f44f 73b4 	mov.w	r3, #360	; 0x168
d007baa8:	642b      	str	r3, [r5, #64]	; 0x40
d007baaa:	ed9f 7a3e 	vldr	s14, [pc, #248]	; d007bba4 <doAsterGame+0x92c>
d007baae:	eef4 7ac7 	vcmpe.f32	s15, s14
d007bab2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007bab6:	f300 8153 	bgt.w	d007bd60 <doAsterGame+0xae8>
d007baba:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d007babe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007bac2:	d501      	bpl.n	d007bac8 <doAsterGame+0x850>
d007bac4:	eef0 7a47 	vmov.f32	s15, s14
d007bac8:	6c6b      	ldr	r3, [r5, #68]	; 0x44
d007baca:	3304      	adds	r3, #4
d007bacc:	f5b3 7fb4 	cmp.w	r3, #360	; 0x168
d007bad0:	f340 8140 	ble.w	d007bd54 <doAsterGame+0xadc>
d007bad4:	2300      	movs	r3, #0
d007bad6:	646b      	str	r3, [r5, #68]	; 0x44
d007bad8:	ed9f 7a32 	vldr	s14, [pc, #200]	; d007bba4 <doAsterGame+0x92c>
d007badc:	eef4 7ac7 	vcmpe.f32	s15, s14
d007bae0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007bae4:	f300 8148 	bgt.w	d007bd78 <doAsterGame+0xb00>
d007bae8:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d007baec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007baf0:	d501      	bpl.n	d007baf6 <doAsterGame+0x87e>
d007baf2:	eef0 7a47 	vmov.f32	s15, s14
d007baf6:	edc5 7a04 	vstr	s15, [r5, #16]
d007bafa:	e5b5      	b.n	d007b668 <doAsterGame+0x3f0>
d007bafc:	f7fd fe66 	bl	d00797cc <fireFlame>
d007bb00:	f7ff fb70 	bl	d007b1e4 <shipThrust>
d007bb04:	4b28      	ldr	r3, [pc, #160]	; (d007bba8 <doAsterGame+0x930>)
d007bb06:	781a      	ldrb	r2, [r3, #0]
d007bb08:	2a00      	cmp	r2, #0
d007bb0a:	f000 813d 	beq.w	d007bd88 <doAsterGame+0xb10>
d007bb0e:	f89b 2000 	ldrb.w	r2, [fp]
d007bb12:	783b      	ldrb	r3, [r7, #0]
d007bb14:	4313      	orrs	r3, r2
d007bb16:	e59a      	b.n	d007b64e <doAsterGame+0x3d6>
d007bb18:	4d24      	ldr	r5, [pc, #144]	; (d007bbac <doAsterGame+0x934>)
d007bb1a:	2032      	movs	r0, #50	; 0x32
d007bb1c:	ed9b 7a01 	vldr	s14, [fp, #4]
d007bb20:	eddb 7a00 	vldr	s15, [fp]
d007bb24:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d007bb28:	682a      	ldr	r2, [r5, #0]
d007bb2a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007bb2e:	f8db 3018 	ldr.w	r3, [fp, #24]
d007bb32:	4413      	add	r3, r2
d007bb34:	ee17 2a10 	vmov	r2, s14
d007bb38:	ee17 1a90 	vmov	r1, s15
d007bb3c:	602b      	str	r3, [r5, #0]
d007bb3e:	f7fd f8f3 	bl	d0078d28 <CreateExplosions.constprop.0>
d007bb42:	f8d9 3000 	ldr.w	r3, [r9]
d007bb46:	2004      	movs	r0, #4
d007bb48:	3301      	adds	r3, #1
d007bb4a:	2b05      	cmp	r3, #5
d007bb4c:	bfc8      	it	gt
d007bb4e:	2305      	movgt	r3, #5
d007bb50:	f8c9 3000 	str.w	r3, [r9]
d007bb54:	f7fd f81c 	bl	d0078b90 <StopChannel>
d007bb58:	2001      	movs	r0, #1
d007bb5a:	f7fd f80d 	bl	d0078b78 <PlayChannel>
d007bb5e:	2006      	movs	r0, #6
d007bb60:	f7fd f80a 	bl	d0078b78 <PlayChannel>
d007bb64:	2200      	movs	r2, #0
d007bb66:	4912      	ldr	r1, [pc, #72]	; (d007bbb0 <doAsterGame+0x938>)
d007bb68:	2303      	movs	r3, #3
d007bb6a:	f8cb 2010 	str.w	r2, [fp, #16]
d007bb6e:	f8cb 1000 	str.w	r1, [fp]
d007bb72:	f8cb 301c 	str.w	r3, [fp, #28]
d007bb76:	f000 ff95 	bl	d007caa4 <rand>
d007bb7a:	f400 707a 	and.w	r0, r0, #1000	; 0x3e8
d007bb7e:	4a0d      	ldr	r2, [pc, #52]	; (d007bbb4 <doAsterGame+0x93c>)
d007bb80:	f500 707a 	add.w	r0, r0, #1000	; 0x3e8
d007bb84:	6010      	str	r0, [r2, #0]
d007bb86:	e586      	b.n	d007b696 <doAsterGame+0x41e>
d007bb88:	9999999a 	.word	0x9999999a
d007bb8c:	3fd99999 	.word	0x3fd99999
d007bb90:	2001f000 	.word	0x2001f000
d007bb94:	b60b60b7 	.word	0xb60b60b7
d007bb98:	d007eef8 	.word	0xd007eef8
d007bb9c:	d00833dc 	.word	0xd00833dc
d007bba0:	43b20000 	.word	0x43b20000
d007bba4:	43b40000 	.word	0x43b40000
d007bba8:	d00834d8 	.word	0xd00834d8
d007bbac:	d00834a8 	.word	0xd00834a8
d007bbb0:	c1f00000 	.word	0xc1f00000
d007bbb4:	d00834a4 	.word	0xd00834a4
d007bbb8:	4dcb      	ldr	r5, [pc, #812]	; (d007bee8 <doAsterGame+0xc70>)
d007bbba:	eef1 7a00 	vmov.f32	s15, #16	; 0x40800000  4.0
d007bbbe:	6b6a      	ldr	r2, [r5, #52]	; 0x34
d007bbc0:	ed95 7a04 	vldr	s14, [r5, #16]
d007bbc4:	3a04      	subs	r2, #4
d007bbc6:	ee77 7a67 	vsub.f32	s15, s14, s15
d007bbca:	f5b2 7fb4 	cmp.w	r2, #360	; 0x168
d007bbce:	edc5 7a04 	vstr	s15, [r5, #16]
d007bbd2:	f300 8098 	bgt.w	d007bd06 <doAsterGame+0xa8e>
d007bbd6:	2a00      	cmp	r2, #0
d007bbd8:	f280 8096 	bge.w	d007bd08 <doAsterGame+0xa90>
d007bbdc:	f44f 72b4 	mov.w	r2, #360	; 0x168
d007bbe0:	636a      	str	r2, [r5, #52]	; 0x34
d007bbe2:	eddf 6ac2 	vldr	s13, [pc, #776]	; d007beec <doAsterGame+0xc74>
d007bbe6:	eeb4 7ae6 	vcmpe.f32	s14, s13
d007bbea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007bbee:	f300 809f 	bgt.w	d007bd30 <doAsterGame+0xab8>
d007bbf2:	eeb1 6a00 	vmov.f32	s12, #16	; 0x40800000  4.0
d007bbf6:	eddf 6abe 	vldr	s13, [pc, #760]	; d007bef0 <doAsterGame+0xc78>
d007bbfa:	eeb4 7a46 	vcmp.f32	s14, s12
d007bbfe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007bc02:	bf48      	it	mi
d007bc04:	eef0 7a66 	vmovmi.f32	s15, s13
d007bc08:	6baa      	ldr	r2, [r5, #56]	; 0x38
d007bc0a:	3a04      	subs	r2, #4
d007bc0c:	f5b2 7fb4 	cmp.w	r2, #360	; 0x168
d007bc10:	dc76      	bgt.n	d007bd00 <doAsterGame+0xa88>
d007bc12:	2a00      	cmp	r2, #0
d007bc14:	da75      	bge.n	d007bd02 <doAsterGame+0xa8a>
d007bc16:	f44f 72b4 	mov.w	r2, #360	; 0x168
d007bc1a:	63aa      	str	r2, [r5, #56]	; 0x38
d007bc1c:	ed9f 7ab4 	vldr	s14, [pc, #720]	; d007bef0 <doAsterGame+0xc78>
d007bc20:	eef4 7ac7 	vcmpe.f32	s15, s14
d007bc24:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007bc28:	f300 80a3 	bgt.w	d007bd72 <doAsterGame+0xafa>
d007bc2c:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d007bc30:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007bc34:	d501      	bpl.n	d007bc3a <doAsterGame+0x9c2>
d007bc36:	eef0 7a47 	vmov.f32	s15, s14
d007bc3a:	6bea      	ldr	r2, [r5, #60]	; 0x3c
d007bc3c:	3a04      	subs	r2, #4
d007bc3e:	f5b2 7fb4 	cmp.w	r2, #360	; 0x168
d007bc42:	dc5a      	bgt.n	d007bcfa <doAsterGame+0xa82>
d007bc44:	2a00      	cmp	r2, #0
d007bc46:	da59      	bge.n	d007bcfc <doAsterGame+0xa84>
d007bc48:	f44f 72b4 	mov.w	r2, #360	; 0x168
d007bc4c:	63ea      	str	r2, [r5, #60]	; 0x3c
d007bc4e:	ed9f 7aa8 	vldr	s14, [pc, #672]	; d007bef0 <doAsterGame+0xc78>
d007bc52:	eef4 7ac7 	vcmpe.f32	s15, s14
d007bc56:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007bc5a:	f300 8087 	bgt.w	d007bd6c <doAsterGame+0xaf4>
d007bc5e:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d007bc62:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007bc66:	d501      	bpl.n	d007bc6c <doAsterGame+0x9f4>
d007bc68:	eef0 7a47 	vmov.f32	s15, s14
d007bc6c:	6c2a      	ldr	r2, [r5, #64]	; 0x40
d007bc6e:	3a04      	subs	r2, #4
d007bc70:	f5b2 7fb4 	cmp.w	r2, #360	; 0x168
d007bc74:	dc4a      	bgt.n	d007bd0c <doAsterGame+0xa94>
d007bc76:	2a00      	cmp	r2, #0
d007bc78:	da49      	bge.n	d007bd0e <doAsterGame+0xa96>
d007bc7a:	f44f 72b4 	mov.w	r2, #360	; 0x168
d007bc7e:	642a      	str	r2, [r5, #64]	; 0x40
d007bc80:	ed9f 7a9b 	vldr	s14, [pc, #620]	; d007bef0 <doAsterGame+0xc78>
d007bc84:	eef4 7ac7 	vcmpe.f32	s15, s14
d007bc88:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007bc8c:	dc59      	bgt.n	d007bd42 <doAsterGame+0xaca>
d007bc8e:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d007bc92:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007bc96:	d501      	bpl.n	d007bc9c <doAsterGame+0xa24>
d007bc98:	eef0 7a47 	vmov.f32	s15, s14
d007bc9c:	6c6a      	ldr	r2, [r5, #68]	; 0x44
d007bc9e:	3a04      	subs	r2, #4
d007bca0:	f5b2 7fb4 	cmp.w	r2, #360	; 0x168
d007bca4:	dd47      	ble.n	d007bd36 <doAsterGame+0xabe>
d007bca6:	2200      	movs	r2, #0
d007bca8:	646a      	str	r2, [r5, #68]	; 0x44
d007bcaa:	ed9f 7a91 	vldr	s14, [pc, #580]	; d007bef0 <doAsterGame+0xc78>
d007bcae:	eef4 7ac7 	vcmpe.f32	s15, s14
d007bcb2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007bcb6:	dc56      	bgt.n	d007bd66 <doAsterGame+0xaee>
d007bcb8:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d007bcbc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d007bcc0:	d501      	bpl.n	d007bcc6 <doAsterGame+0xa4e>
d007bcc2:	eef0 7a47 	vmov.f32	s15, s14
d007bcc6:	edc5 7a04 	vstr	s15, [r5, #16]
d007bcca:	e4ca      	b.n	d007b662 <doAsterGame+0x3ea>
d007bccc:	f7fd fe42 	bl	d0079954 <renderShip>
d007bcd0:	e4d5      	b.n	d007b67e <doAsterGame+0x406>
d007bcd2:	f7fd fe3f 	bl	d0079954 <renderShip>
d007bcd6:	f7fd fb4f 	bl	d0079378 <doCheckShipToAsteroidHit>
d007bcda:	2800      	cmp	r0, #0
d007bcdc:	f040 80a1 	bne.w	d007be22 <doAsterGame+0xbaa>
d007bce0:	f7fd fedc 	bl	d0079a9c <testShipToShipCollision>
d007bce4:	2800      	cmp	r0, #0
d007bce6:	f040 8099 	bne.w	d007be1c <doAsterGame+0xba4>
d007bcea:	f7fe fed1 	bl	d007aa90 <doBonusShipBullet>
d007bcee:	2800      	cmp	r0, #0
d007bcf0:	f43f acc5 	beq.w	d007b67e <doAsterGame+0x406>
d007bcf4:	f7fe fdd0 	bl	d007a898 <CreateShipDeath>
d007bcf8:	e4c1      	b.n	d007b67e <doAsterGame+0x406>
d007bcfa:	2200      	movs	r2, #0
d007bcfc:	63ea      	str	r2, [r5, #60]	; 0x3c
d007bcfe:	e7a6      	b.n	d007bc4e <doAsterGame+0x9d6>
d007bd00:	2200      	movs	r2, #0
d007bd02:	63aa      	str	r2, [r5, #56]	; 0x38
d007bd04:	e78a      	b.n	d007bc1c <doAsterGame+0x9a4>
d007bd06:	2200      	movs	r2, #0
d007bd08:	636a      	str	r2, [r5, #52]	; 0x34
d007bd0a:	e76a      	b.n	d007bbe2 <doAsterGame+0x96a>
d007bd0c:	2200      	movs	r2, #0
d007bd0e:	642a      	str	r2, [r5, #64]	; 0x40
d007bd10:	e7b6      	b.n	d007bc80 <doAsterGame+0xa08>
d007bd12:	2300      	movs	r3, #0
d007bd14:	63ab      	str	r3, [r5, #56]	; 0x38
d007bd16:	e692      	b.n	d007ba3e <doAsterGame+0x7c6>
d007bd18:	2300      	movs	r3, #0
d007bd1a:	636b      	str	r3, [r5, #52]	; 0x34
d007bd1c:	e670      	b.n	d007ba00 <doAsterGame+0x788>
d007bd1e:	2300      	movs	r3, #0
d007bd20:	642b      	str	r3, [r5, #64]	; 0x40
d007bd22:	e6c2      	b.n	d007baaa <doAsterGame+0x832>
d007bd24:	2300      	movs	r3, #0
d007bd26:	63eb      	str	r3, [r5, #60]	; 0x3c
d007bd28:	e6a4      	b.n	d007ba74 <doAsterGame+0x7fc>
d007bd2a:	eddf 7a72 	vldr	s15, [pc, #456]	; d007bef4 <doAsterGame+0xc7c>
d007bd2e:	e6b0      	b.n	d007ba92 <doAsterGame+0x81a>
d007bd30:	eddf 7a70 	vldr	s15, [pc, #448]	; d007bef4 <doAsterGame+0xc7c>
d007bd34:	e768      	b.n	d007bc08 <doAsterGame+0x990>
d007bd36:	2a00      	cmp	r2, #0
d007bd38:	bfb8      	it	lt
d007bd3a:	f44f 72b4 	movlt.w	r2, #360	; 0x168
d007bd3e:	646a      	str	r2, [r5, #68]	; 0x44
d007bd40:	e7b3      	b.n	d007bcaa <doAsterGame+0xa32>
d007bd42:	eddf 7a6c 	vldr	s15, [pc, #432]	; d007bef4 <doAsterGame+0xc7c>
d007bd46:	e7a9      	b.n	d007bc9c <doAsterGame+0xa24>
d007bd48:	eddf 7a6a 	vldr	s15, [pc, #424]	; d007bef4 <doAsterGame+0xc7c>
d007bd4c:	e686      	b.n	d007ba5c <doAsterGame+0x7e4>
d007bd4e:	eddf 7a69 	vldr	s15, [pc, #420]	; d007bef4 <doAsterGame+0xc7c>
d007bd52:	e668      	b.n	d007ba26 <doAsterGame+0x7ae>
d007bd54:	2b00      	cmp	r3, #0
d007bd56:	bfb8      	it	lt
d007bd58:	f44f 73b4 	movlt.w	r3, #360	; 0x168
d007bd5c:	646b      	str	r3, [r5, #68]	; 0x44
d007bd5e:	e6bb      	b.n	d007bad8 <doAsterGame+0x860>
d007bd60:	eddf 7a64 	vldr	s15, [pc, #400]	; d007bef4 <doAsterGame+0xc7c>
d007bd64:	e6b0      	b.n	d007bac8 <doAsterGame+0x850>
d007bd66:	eddf 7a63 	vldr	s15, [pc, #396]	; d007bef4 <doAsterGame+0xc7c>
d007bd6a:	e7ac      	b.n	d007bcc6 <doAsterGame+0xa4e>
d007bd6c:	eddf 7a61 	vldr	s15, [pc, #388]	; d007bef4 <doAsterGame+0xc7c>
d007bd70:	e77c      	b.n	d007bc6c <doAsterGame+0x9f4>
d007bd72:	eddf 7a60 	vldr	s15, [pc, #384]	; d007bef4 <doAsterGame+0xc7c>
d007bd76:	e760      	b.n	d007bc3a <doAsterGame+0x9c2>
d007bd78:	eddf 7a5e 	vldr	s15, [pc, #376]	; d007bef4 <doAsterGame+0xc7c>
d007bd7c:	e6bb      	b.n	d007baf6 <doAsterGame+0x87e>
d007bd7e:	2003      	movs	r0, #3
d007bd80:	7011      	strb	r1, [r2, #0]
d007bd82:	f7fc ff05 	bl	d0078b90 <StopChannel>
d007bd86:	e6c2      	b.n	d007bb0e <doAsterGame+0x896>
d007bd88:	2201      	movs	r2, #1
d007bd8a:	2003      	movs	r0, #3
d007bd8c:	701a      	strb	r2, [r3, #0]
d007bd8e:	f7fc fef3 	bl	d0078b78 <PlayChannel>
d007bd92:	f89b 2000 	ldrb.w	r2, [fp]
d007bd96:	783b      	ldrb	r3, [r7, #0]
d007bd98:	4313      	orrs	r3, r2
d007bd9a:	e458      	b.n	d007b64e <doAsterGame+0x3d6>
d007bd9c:	ed95 7a01 	vldr	s14, [r5, #4]
d007bda0:	2100      	movs	r1, #0
d007bda2:	edd5 7a00 	vldr	s15, [r5]
d007bda6:	2764      	movs	r7, #100	; 0x64
d007bda8:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d007bdac:	4a52      	ldr	r2, [pc, #328]	; (d007bef8 <doAsterGame+0xc80>)
d007bdae:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007bdb2:	203c      	movs	r0, #60	; 0x3c
d007bdb4:	616a      	str	r2, [r5, #20]
d007bdb6:	ee17 3a10 	vmov	r3, s14
d007bdba:	f8c8 1000 	str.w	r1, [r8]
d007bdbe:	ee17 2a90 	vmov	r2, s15
d007bdc2:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d007bdc6:	6037      	str	r7, [r6, #0]
d007bdc8:	f7fe fe10 	bl	d007a9ec <CreateStarBurst>
d007bdcc:	f000 fe6a 	bl	d007caa4 <rand>
d007bdd0:	4a4a      	ldr	r2, [pc, #296]	; (d007befc <doAsterGame+0xc84>)
d007bdd2:	f44f 71e1 	mov.w	r1, #450	; 0x1c2
d007bdd6:	fb82 3200 	smull	r3, r2, r2, r0
d007bdda:	17c3      	asrs	r3, r0, #31
d007bddc:	4402      	add	r2, r0
d007bdde:	ebc3 2322 	rsb	r3, r3, r2, asr #8
d007bde2:	fb01 0313 	mls	r3, r1, r3, r0
d007bde6:	331e      	adds	r3, #30
d007bde8:	ee07 3a90 	vmov	s15, r3
d007bdec:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d007bdf0:	edc5 7a00 	vstr	s15, [r5]
d007bdf4:	f000 fe56 	bl	d007caa4 <rand>
d007bdf8:	4a41      	ldr	r2, [pc, #260]	; (d007bf00 <doAsterGame+0xc88>)
d007bdfa:	fb82 3200 	smull	r3, r2, r2, r0
d007bdfe:	17c3      	asrs	r3, r0, #31
d007be00:	ebc3 13e2 	rsb	r3, r3, r2, asr #7
d007be04:	eb03 1383 	add.w	r3, r3, r3, lsl #6
d007be08:	eba0 0083 	sub.w	r0, r0, r3, lsl #2
d007be0c:	301e      	adds	r0, #30
d007be0e:	ee07 0a90 	vmov	s15, r0
d007be12:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d007be16:	edc5 7a01 	vstr	s15, [r5, #4]
d007be1a:	e428      	b.n	d007b66e <doAsterGame+0x3f6>
d007be1c:	f7fe fd3c 	bl	d007a898 <CreateShipDeath>
d007be20:	e763      	b.n	d007bcea <doAsterGame+0xa72>
d007be22:	f7fe fd39 	bl	d007a898 <CreateShipDeath>
d007be26:	e75b      	b.n	d007bce0 <doAsterGame+0xa68>
d007be28:	230a      	movs	r3, #10
d007be2a:	eddf 5a36 	vldr	s11, [pc, #216]	; d007bf04 <doAsterGame+0xc8c>
d007be2e:	eeb8 6aca 	vcvt.f32.s32	s12, s20
d007be32:	ed95 4a05 	vldr	s8, [r5, #20]
d007be36:	eef8 6ae9 	vcvt.f32.s32	s13, s19
d007be3a:	edd5 7a0c 	vldr	s15, [r5, #48]	; 0x30
d007be3e:	ee29 7a25 	vmul.f32	s14, s18, s11
d007be42:	ee24 4a25 	vmul.f32	s8, s8, s11
d007be46:	ed95 5a00 	vldr	s10, [r5]
d007be4a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d007be4e:	edd5 5a01 	vldr	s11, [r5, #4]
d007be52:	ee26 6a0d 	vmul.f32	s12, s12, s26
d007be56:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
d007be5a:	eeb8 cacc 	vcvt.f32.s32	s24, s24
d007be5e:	2032      	movs	r0, #50	; 0x32
d007be60:	ee67 7a84 	vmul.f32	s15, s15, s8
d007be64:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d007be68:	eeb0 4a45 	vmov.f32	s8, s10
d007be6c:	f89b 1000 	ldrb.w	r1, [fp]
d007be70:	ee66 6aac 	vmul.f32	s13, s13, s25
d007be74:	783b      	ldrb	r3, [r7, #0]
d007be76:	ee27 7a0c 	vmul.f32	s14, s14, s24
d007be7a:	6190      	str	r0, [r2, #24]
d007be7c:	eeab 4a86 	vfma.f32	s8, s23, s12
d007be80:	430b      	orrs	r3, r1
d007be82:	eea7 5a2a 	vfma.f32	s10, s14, s21
d007be86:	eeb0 6a44 	vmov.f32	s12, s8
d007be8a:	eeb0 4a65 	vmov.f32	s8, s11
d007be8e:	eee4 5aa7 	vfma.f32	s11, s9, s15
d007be92:	ed82 5a04 	vstr	s10, [r2, #16]
d007be96:	eef1 7a00 	vmov.f32	s15, #16	; 0x40800000  4.0
d007be9a:	ed82 6a00 	vstr	s12, [r2]
d007be9e:	eea6 4a8b 	vfma.f32	s8, s13, s22
d007bea2:	ee68 8aa7 	vmul.f32	s17, s17, s15
d007bea6:	ee28 8a27 	vmul.f32	s16, s16, s15
d007beaa:	edc2 5a05 	vstr	s11, [r2, #20]
d007beae:	edc2 8a02 	vstr	s17, [r2, #8]
d007beb2:	ed82 4a01 	vstr	s8, [r2, #4]
d007beb6:	ed82 8a03 	vstr	s16, [r2, #12]
d007beba:	f7ff bbbf 	b.w	d007b63c <doAsterGame+0x3c4>
d007bebe:	460b      	mov	r3, r1
d007bec0:	e7b3      	b.n	d007be2a <doAsterGame+0xbb2>
d007bec2:	2303      	movs	r3, #3
d007bec4:	e7b1      	b.n	d007be2a <doAsterGame+0xbb2>
d007bec6:	2302      	movs	r3, #2
d007bec8:	e7af      	b.n	d007be2a <doAsterGame+0xbb2>
d007beca:	230b      	movs	r3, #11
d007becc:	e7ad      	b.n	d007be2a <doAsterGame+0xbb2>
d007bece:	2309      	movs	r3, #9
d007bed0:	e7ab      	b.n	d007be2a <doAsterGame+0xbb2>
d007bed2:	2308      	movs	r3, #8
d007bed4:	e7a9      	b.n	d007be2a <doAsterGame+0xbb2>
d007bed6:	2307      	movs	r3, #7
d007bed8:	e7a7      	b.n	d007be2a <doAsterGame+0xbb2>
d007beda:	2306      	movs	r3, #6
d007bedc:	e7a5      	b.n	d007be2a <doAsterGame+0xbb2>
d007bede:	2305      	movs	r3, #5
d007bee0:	e7a3      	b.n	d007be2a <doAsterGame+0xbb2>
d007bee2:	2304      	movs	r3, #4
d007bee4:	e7a1      	b.n	d007be2a <doAsterGame+0xbb2>
d007bee6:	bf00      	nop
d007bee8:	d00833dc 	.word	0xd00833dc
d007beec:	43b60000 	.word	0x43b60000
d007bef0:	43b40000 	.word	0x43b40000
d007bef4:	00000000 	.word	0x00000000
d007bef8:	41700000 	.word	0x41700000
d007befc:	91a2b3c5 	.word	0x91a2b3c5
d007bf00:	7e07e07f 	.word	0x7e07e07f
d007bf04:	3ff33333 	.word	0x3ff33333

d007bf08 <getSpeedSX>:
d007bf08:	4b03      	ldr	r3, [pc, #12]	; (d007bf18 <getSpeedSX+0x10>)
d007bf0a:	edd3 7a02 	vldr	s15, [r3, #8]
d007bf0e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007bf12:	ee17 0a90 	vmov	r0, s15
d007bf16:	4770      	bx	lr
d007bf18:	d00833dc 	.word	0xd00833dc

d007bf1c <getSpeedSY>:
d007bf1c:	4b03      	ldr	r3, [pc, #12]	; (d007bf2c <getSpeedSY+0x10>)
d007bf1e:	edd3 7a03 	vldr	s15, [r3, #12]
d007bf22:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d007bf26:	ee17 0a90 	vmov	r0, s15
d007bf2a:	4770      	bx	lr
d007bf2c:	d00833dc 	.word	0xd00833dc

d007bf30 <ISR_KB>:
d007bf30:	4a4b      	ldr	r2, [pc, #300]	; (d007c060 <ISR_KB+0x130>)
d007bf32:	2100      	movs	r1, #0
d007bf34:	4b4b      	ldr	r3, [pc, #300]	; (d007c064 <ISR_KB+0x134>)
d007bf36:	6010      	str	r0, [r2, #0]
d007bf38:	7882      	ldrb	r2, [r0, #2]
d007bf3a:	7019      	strb	r1, [r3, #0]
d007bf3c:	3a2c      	subs	r2, #44	; 0x2c
d007bf3e:	2a26      	cmp	r2, #38	; 0x26
d007bf40:	d819      	bhi.n	d007bf76 <ISR_KB+0x46>
d007bf42:	e8df f002 	tbb	[pc, r2]
d007bf46:	1814      	.short	0x1814
d007bf48:	18181818 	.word	0x18181818
d007bf4c:	18181818 	.word	0x18181818
d007bf50:	18181818 	.word	0x18181818
d007bf54:	18181818 	.word	0x18181818
d007bf58:	18181818 	.word	0x18181818
d007bf5c:	18181818 	.word	0x18181818
d007bf60:	18181818 	.word	0x18181818
d007bf64:	18181818 	.word	0x18181818
d007bf68:	c3beb918 	.word	0xc3beb918
d007bf6c:	c8          	.byte	0xc8
d007bf6d:	00          	.byte	0x00
d007bf6e:	781a      	ldrb	r2, [r3, #0]
d007bf70:	f042 0201 	orr.w	r2, r2, #1
d007bf74:	701a      	strb	r2, [r3, #0]
d007bf76:	78c2      	ldrb	r2, [r0, #3]
d007bf78:	3a2c      	subs	r2, #44	; 0x2c
d007bf7a:	2a26      	cmp	r2, #38	; 0x26
d007bf7c:	d819      	bhi.n	d007bfb2 <ISR_KB+0x82>
d007bf7e:	e8df f002 	tbb	[pc, r2]
d007bf82:	1814      	.short	0x1814
d007bf84:	18181818 	.word	0x18181818
d007bf88:	18181818 	.word	0x18181818
d007bf8c:	18181818 	.word	0x18181818
d007bf90:	18181818 	.word	0x18181818
d007bf94:	18181818 	.word	0x18181818
d007bf98:	18181818 	.word	0x18181818
d007bf9c:	18181818 	.word	0x18181818
d007bfa0:	18181818 	.word	0x18181818
d007bfa4:	b9b4af18 	.word	0xb9b4af18
d007bfa8:	be          	.byte	0xbe
d007bfa9:	00          	.byte	0x00
d007bfaa:	781a      	ldrb	r2, [r3, #0]
d007bfac:	f042 0201 	orr.w	r2, r2, #1
d007bfb0:	701a      	strb	r2, [r3, #0]
d007bfb2:	7902      	ldrb	r2, [r0, #4]
d007bfb4:	3a2c      	subs	r2, #44	; 0x2c
d007bfb6:	2a26      	cmp	r2, #38	; 0x26
d007bfb8:	d819      	bhi.n	d007bfee <ISR_KB+0xbe>
d007bfba:	e8df f002 	tbb	[pc, r2]
d007bfbe:	1814      	.short	0x1814
d007bfc0:	18181818 	.word	0x18181818
d007bfc4:	18181818 	.word	0x18181818
d007bfc8:	18181818 	.word	0x18181818
d007bfcc:	18181818 	.word	0x18181818
d007bfd0:	18181818 	.word	0x18181818
d007bfd4:	18181818 	.word	0x18181818
d007bfd8:	18181818 	.word	0x18181818
d007bfdc:	18181818 	.word	0x18181818
d007bfe0:	afaaa518 	.word	0xafaaa518
d007bfe4:	b4          	.byte	0xb4
d007bfe5:	00          	.byte	0x00
d007bfe6:	781a      	ldrb	r2, [r3, #0]
d007bfe8:	f042 0201 	orr.w	r2, r2, #1
d007bfec:	701a      	strb	r2, [r3, #0]
d007bfee:	7942      	ldrb	r2, [r0, #5]
d007bff0:	3a2c      	subs	r2, #44	; 0x2c
d007bff2:	2a26      	cmp	r2, #38	; 0x26
d007bff4:	d819      	bhi.n	d007c02a <ISR_KB+0xfa>
d007bff6:	e8df f002 	tbb	[pc, r2]
d007bffa:	1814      	.short	0x1814
d007bffc:	18181818 	.word	0x18181818
d007c000:	18181818 	.word	0x18181818
d007c004:	18181818 	.word	0x18181818
d007c008:	18181818 	.word	0x18181818
d007c00c:	18181818 	.word	0x18181818
d007c010:	18181818 	.word	0x18181818
d007c014:	18181818 	.word	0x18181818
d007c018:	18181818 	.word	0x18181818
d007c01c:	a5a09b18 	.word	0xa5a09b18
d007c020:	aa          	.byte	0xaa
d007c021:	00          	.byte	0x00
d007c022:	781a      	ldrb	r2, [r3, #0]
d007c024:	f042 0201 	orr.w	r2, r2, #1
d007c028:	701a      	strb	r2, [r3, #0]
d007c02a:	7982      	ldrb	r2, [r0, #6]
d007c02c:	3a2c      	subs	r2, #44	; 0x2c
d007c02e:	2a26      	cmp	r2, #38	; 0x26
d007c030:	d81e      	bhi.n	d007c070 <ISR_KB+0x140>
d007c032:	e8df f002 	tbb	[pc, r2]
d007c036:	1d19      	.short	0x1d19
d007c038:	1d1d1d1d 	.word	0x1d1d1d1d
d007c03c:	1d1d1d1d 	.word	0x1d1d1d1d
d007c040:	1d1d1d1d 	.word	0x1d1d1d1d
d007c044:	1d1d1d1d 	.word	0x1d1d1d1d
d007c048:	1d1d1d1d 	.word	0x1d1d1d1d
d007c04c:	1d1d1d1d 	.word	0x1d1d1d1d
d007c050:	1d1d1d1d 	.word	0x1d1d1d1d
d007c054:	1d1d1d1d 	.word	0x1d1d1d1d
d007c058:	9b96911d 	.word	0x9b96911d
d007c05c:	a0          	.byte	0xa0
d007c05d:	00          	.byte	0x00
d007c05e:	bf00      	nop
d007c060:	d00838fc 	.word	0xd00838fc
d007c064:	d00834f8 	.word	0xd00834f8
d007c068:	781a      	ldrb	r2, [r3, #0]
d007c06a:	f042 0201 	orr.w	r2, r2, #1
d007c06e:	701a      	strb	r2, [r3, #0]
d007c070:	79c2      	ldrb	r2, [r0, #7]
d007c072:	3a2c      	subs	r2, #44	; 0x2c
d007c074:	2a26      	cmp	r2, #38	; 0x26
d007c076:	d819      	bhi.n	d007c0ac <ISR_KB+0x17c>
d007c078:	e8df f002 	tbb	[pc, r2]
d007c07c:	18181882 	.word	0x18181882
d007c080:	18181818 	.word	0x18181818
d007c084:	18181818 	.word	0x18181818
d007c088:	18181818 	.word	0x18181818
d007c08c:	18181818 	.word	0x18181818
d007c090:	18181818 	.word	0x18181818
d007c094:	18181818 	.word	0x18181818
d007c098:	18181818 	.word	0x18181818
d007c09c:	14181818 	.word	0x14181818
d007c0a0:	8c87      	.short	0x8c87
d007c0a2:	19          	.byte	0x19
d007c0a3:	00          	.byte	0x00
d007c0a4:	781a      	ldrb	r2, [r3, #0]
d007c0a6:	f042 0220 	orr.w	r2, r2, #32
d007c0aa:	701a      	strb	r2, [r3, #0]
d007c0ac:	4770      	bx	lr
d007c0ae:	781a      	ldrb	r2, [r3, #0]
d007c0b0:	f042 0204 	orr.w	r2, r2, #4
d007c0b4:	701a      	strb	r2, [r3, #0]
d007c0b6:	4770      	bx	lr
d007c0b8:	781a      	ldrb	r2, [r3, #0]
d007c0ba:	f042 0220 	orr.w	r2, r2, #32
d007c0be:	701a      	strb	r2, [r3, #0]
d007c0c0:	e759      	b.n	d007bf76 <ISR_KB+0x46>
d007c0c2:	781a      	ldrb	r2, [r3, #0]
d007c0c4:	f042 0210 	orr.w	r2, r2, #16
d007c0c8:	701a      	strb	r2, [r3, #0]
d007c0ca:	e754      	b.n	d007bf76 <ISR_KB+0x46>
d007c0cc:	781a      	ldrb	r2, [r3, #0]
d007c0ce:	f042 0208 	orr.w	r2, r2, #8
d007c0d2:	701a      	strb	r2, [r3, #0]
d007c0d4:	e74f      	b.n	d007bf76 <ISR_KB+0x46>
d007c0d6:	781a      	ldrb	r2, [r3, #0]
d007c0d8:	f042 0204 	orr.w	r2, r2, #4
d007c0dc:	701a      	strb	r2, [r3, #0]
d007c0de:	e74a      	b.n	d007bf76 <ISR_KB+0x46>
d007c0e0:	781a      	ldrb	r2, [r3, #0]
d007c0e2:	f042 0220 	orr.w	r2, r2, #32
d007c0e6:	701a      	strb	r2, [r3, #0]
d007c0e8:	e763      	b.n	d007bfb2 <ISR_KB+0x82>
d007c0ea:	781a      	ldrb	r2, [r3, #0]
d007c0ec:	f042 0210 	orr.w	r2, r2, #16
d007c0f0:	701a      	strb	r2, [r3, #0]
d007c0f2:	e75e      	b.n	d007bfb2 <ISR_KB+0x82>
d007c0f4:	781a      	ldrb	r2, [r3, #0]
d007c0f6:	f042 0208 	orr.w	r2, r2, #8
d007c0fa:	701a      	strb	r2, [r3, #0]
d007c0fc:	e759      	b.n	d007bfb2 <ISR_KB+0x82>
d007c0fe:	781a      	ldrb	r2, [r3, #0]
d007c100:	f042 0204 	orr.w	r2, r2, #4
d007c104:	701a      	strb	r2, [r3, #0]
d007c106:	e754      	b.n	d007bfb2 <ISR_KB+0x82>
d007c108:	781a      	ldrb	r2, [r3, #0]
d007c10a:	f042 0220 	orr.w	r2, r2, #32
d007c10e:	701a      	strb	r2, [r3, #0]
d007c110:	e76d      	b.n	d007bfee <ISR_KB+0xbe>
d007c112:	781a      	ldrb	r2, [r3, #0]
d007c114:	f042 0210 	orr.w	r2, r2, #16
d007c118:	701a      	strb	r2, [r3, #0]
d007c11a:	e768      	b.n	d007bfee <ISR_KB+0xbe>
d007c11c:	781a      	ldrb	r2, [r3, #0]
d007c11e:	f042 0208 	orr.w	r2, r2, #8
d007c122:	701a      	strb	r2, [r3, #0]
d007c124:	e763      	b.n	d007bfee <ISR_KB+0xbe>
d007c126:	781a      	ldrb	r2, [r3, #0]
d007c128:	f042 0204 	orr.w	r2, r2, #4
d007c12c:	701a      	strb	r2, [r3, #0]
d007c12e:	e75e      	b.n	d007bfee <ISR_KB+0xbe>
d007c130:	781a      	ldrb	r2, [r3, #0]
d007c132:	f042 0220 	orr.w	r2, r2, #32
d007c136:	701a      	strb	r2, [r3, #0]
d007c138:	e777      	b.n	d007c02a <ISR_KB+0xfa>
d007c13a:	781a      	ldrb	r2, [r3, #0]
d007c13c:	f042 0210 	orr.w	r2, r2, #16
d007c140:	701a      	strb	r2, [r3, #0]
d007c142:	e772      	b.n	d007c02a <ISR_KB+0xfa>
d007c144:	781a      	ldrb	r2, [r3, #0]
d007c146:	f042 0208 	orr.w	r2, r2, #8
d007c14a:	701a      	strb	r2, [r3, #0]
d007c14c:	e76d      	b.n	d007c02a <ISR_KB+0xfa>
d007c14e:	781a      	ldrb	r2, [r3, #0]
d007c150:	f042 0204 	orr.w	r2, r2, #4
d007c154:	701a      	strb	r2, [r3, #0]
d007c156:	e768      	b.n	d007c02a <ISR_KB+0xfa>
d007c158:	781a      	ldrb	r2, [r3, #0]
d007c15a:	f042 0220 	orr.w	r2, r2, #32
d007c15e:	701a      	strb	r2, [r3, #0]
d007c160:	e786      	b.n	d007c070 <ISR_KB+0x140>
d007c162:	781a      	ldrb	r2, [r3, #0]
d007c164:	f042 0210 	orr.w	r2, r2, #16
d007c168:	701a      	strb	r2, [r3, #0]
d007c16a:	e781      	b.n	d007c070 <ISR_KB+0x140>
d007c16c:	781a      	ldrb	r2, [r3, #0]
d007c16e:	f042 0208 	orr.w	r2, r2, #8
d007c172:	701a      	strb	r2, [r3, #0]
d007c174:	e77c      	b.n	d007c070 <ISR_KB+0x140>
d007c176:	781a      	ldrb	r2, [r3, #0]
d007c178:	f042 0204 	orr.w	r2, r2, #4
d007c17c:	701a      	strb	r2, [r3, #0]
d007c17e:	e777      	b.n	d007c070 <ISR_KB+0x140>
d007c180:	781a      	ldrb	r2, [r3, #0]
d007c182:	f042 0201 	orr.w	r2, r2, #1
d007c186:	701a      	strb	r2, [r3, #0]
d007c188:	4770      	bx	lr
d007c18a:	781a      	ldrb	r2, [r3, #0]
d007c18c:	f042 0210 	orr.w	r2, r2, #16
d007c190:	701a      	strb	r2, [r3, #0]
d007c192:	4770      	bx	lr
d007c194:	781a      	ldrb	r2, [r3, #0]
d007c196:	f042 0208 	orr.w	r2, r2, #8
d007c19a:	701a      	strb	r2, [r3, #0]
d007c19c:	4770      	bx	lr
d007c19e:	bf00      	nop

d007c1a0 <ISR_JP>:
d007c1a0:	4b01      	ldr	r3, [pc, #4]	; (d007c1a8 <ISR_JP+0x8>)
d007c1a2:	7802      	ldrb	r2, [r0, #0]
d007c1a4:	701a      	strb	r2, [r3, #0]
d007c1a6:	4770      	bx	lr
d007c1a8:	d00834e8 	.word	0xd00834e8

d007c1ac <IMGtoBG>:
d007c1ac:	4b04      	ldr	r3, [pc, #16]	; (d007c1c0 <IMGtoBG+0x14>)
d007c1ae:	4601      	mov	r1, r0
d007c1b0:	f44f 3216 	mov.w	r2, #153600	; 0x25800
d007c1b4:	f8d3 30f0 	ldr.w	r3, [r3, #240]	; 0xf0
d007c1b8:	6818      	ldr	r0, [r3, #0]
d007c1ba:	f000 bc65 	b.w	d007ca88 <memcpy>
d007c1be:	bf00      	nop
d007c1c0:	2001f000 	.word	0x2001f000

d007c1c4 <CLUTAlpha>:
d007c1c4:	2300      	movs	r3, #0
d007c1c6:	4907      	ldr	r1, [pc, #28]	; (d007c1e4 <CLUTAlpha+0x20>)
d007c1c8:	3804      	subs	r0, #4
d007c1ca:	f850 2f04 	ldr.w	r2, [r0, #4]!
d007c1ce:	f042 427f 	orr.w	r2, r2, #4278190080	; 0xff000000
d007c1d2:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
d007c1d6:	3301      	adds	r3, #1
d007c1d8:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d007c1dc:	d1f5      	bne.n	d007c1ca <CLUTAlpha+0x6>
d007c1de:	2300      	movs	r3, #0
d007c1e0:	600b      	str	r3, [r1, #0]
d007c1e2:	4770      	bx	lr
d007c1e4:	d00834fc 	.word	0xd00834fc

d007c1e8 <SetupGameScreen>:
d007c1e8:	b5f0      	push	{r4, r5, r6, r7, lr}
d007c1ea:	4d28      	ldr	r5, [pc, #160]	; (d007c28c <SetupGameScreen+0xa4>)
d007c1ec:	2000      	movs	r0, #0
d007c1ee:	b083      	sub	sp, #12
d007c1f0:	2702      	movs	r7, #2
d007c1f2:	f8d5 30c8 	ldr.w	r3, [r5, #200]	; 0xc8
d007c1f6:	4604      	mov	r4, r0
d007c1f8:	4798      	blx	r3
d007c1fa:	f8d5 60f0 	ldr.w	r6, [r5, #240]	; 0xf0
d007c1fe:	f8df c0a0 	ldr.w	ip, [pc, #160]	; d007c2a0 <SetupGameScreen+0xb8>
d007c202:	f44f 71a0 	mov.w	r1, #320	; 0x140
d007c206:	4b22      	ldr	r3, [pc, #136]	; (d007c290 <SetupGameScreen+0xa8>)
d007c208:	f44f 70f0 	mov.w	r0, #480	; 0x1e0
d007c20c:	4a21      	ldr	r2, [pc, #132]	; (d007c294 <SetupGameScreen+0xac>)
d007c20e:	601c      	str	r4, [r3, #0]
d007c210:	f44f 7320 	mov.w	r3, #640	; 0x280
d007c214:	6014      	str	r4, [r2, #0]
d007c216:	f44f 7270 	mov.w	r2, #960	; 0x3c0
d007c21a:	f8c6 c000 	str.w	ip, [r6]
d007c21e:	f8d5 60e8 	ldr.w	r6, [r5, #232]	; 0xe8
d007c222:	9700      	str	r7, [sp, #0]
d007c224:	47b0      	blx	r6
d007c226:	4621      	mov	r1, r4
d007c228:	4620      	mov	r0, r4
d007c22a:	f8d5 3100 	ldr.w	r3, [r5, #256]	; 0x100
d007c22e:	4798      	blx	r3
d007c230:	4621      	mov	r1, r4
d007c232:	4620      	mov	r0, r4
d007c234:	f8d5 3104 	ldr.w	r3, [r5, #260]	; 0x104
d007c238:	4798      	blx	r3
d007c23a:	4621      	mov	r1, r4
d007c23c:	4a16      	ldr	r2, [pc, #88]	; (d007c298 <SetupGameScreen+0xb0>)
d007c23e:	4c17      	ldr	r4, [pc, #92]	; (d007c29c <SetupGameScreen+0xb4>)
d007c240:	f852 3f04 	ldr.w	r3, [r2, #4]!
d007c244:	f043 437f 	orr.w	r3, r3, #4278190080	; 0xff000000
d007c248:	f844 3021 	str.w	r3, [r4, r1, lsl #2]
d007c24c:	3101      	adds	r1, #1
d007c24e:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
d007c252:	d1f5      	bne.n	d007c240 <SetupGameScreen+0x58>
d007c254:	4d0d      	ldr	r5, [pc, #52]	; (d007c28c <SetupGameScreen+0xa4>)
d007c256:	2600      	movs	r6, #0
d007c258:	4810      	ldr	r0, [pc, #64]	; (d007c29c <SetupGameScreen+0xb4>)
d007c25a:	4631      	mov	r1, r6
d007c25c:	6026      	str	r6, [r4, #0]
d007c25e:	f8d5 30d8 	ldr.w	r3, [r5, #216]	; 0xd8
d007c262:	4798      	blx	r3
d007c264:	f8d5 30d8 	ldr.w	r3, [r5, #216]	; 0xd8
d007c268:	2101      	movs	r1, #1
d007c26a:	480c      	ldr	r0, [pc, #48]	; (d007c29c <SetupGameScreen+0xb4>)
d007c26c:	4798      	blx	r3
d007c26e:	4630      	mov	r0, r6
d007c270:	f8d5 30c4 	ldr.w	r3, [r5, #196]	; 0xc4
d007c274:	4798      	blx	r3
d007c276:	f8d5 3110 	ldr.w	r3, [r5, #272]	; 0x110
d007c27a:	2201      	movs	r2, #1
d007c27c:	20ff      	movs	r0, #255	; 0xff
d007c27e:	701a      	strb	r2, [r3, #0]
d007c280:	f8d5 30c8 	ldr.w	r3, [r5, #200]	; 0xc8
d007c284:	b003      	add	sp, #12
d007c286:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d007c28a:	4718      	bx	r3
d007c28c:	2001f000 	.word	0x2001f000
d007c290:	d00834ec 	.word	0xd00834ec
d007c294:	d00834f4 	.word	0xd00834f4
d007c298:	d007e130 	.word	0xd007e130
d007c29c:	d00834fc 	.word	0xd00834fc
d007c2a0:	d00a9120 	.word	0xd00a9120

d007c2a4 <main>:
d007c2a4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d007c2a8:	4cb5      	ldr	r4, [pc, #724]	; (d007c580 <main+0x2dc>)
d007c2aa:	2020      	movs	r0, #32
d007c2ac:	2500      	movs	r5, #0
d007c2ae:	f8d4 3194 	ldr.w	r3, [r4, #404]	; 0x194
d007c2b2:	ed2d 8b02 	vpush	{d8}
d007c2b6:	b0ab      	sub	sp, #172	; 0xac
d007c2b8:	4798      	blx	r3
d007c2ba:	f8d4 3160 	ldr.w	r3, [r4, #352]	; 0x160
d007c2be:	2001      	movs	r0, #1
d007c2c0:	4798      	blx	r3
d007c2c2:	f8d4 3170 	ldr.w	r3, [r4, #368]	; 0x170
d007c2c6:	4aaf      	ldr	r2, [pc, #700]	; (d007c584 <main+0x2e0>)
d007c2c8:	681b      	ldr	r3, [r3, #0]
d007c2ca:	48af      	ldr	r0, [pc, #700]	; (d007c588 <main+0x2e4>)
d007c2cc:	6013      	str	r3, [r2, #0]
d007c2ce:	6e63      	ldr	r3, [r4, #100]	; 0x64
d007c2d0:	4798      	blx	r3
d007c2d2:	f8d4 30c8 	ldr.w	r3, [r4, #200]	; 0xc8
d007c2d6:	4628      	mov	r0, r5
d007c2d8:	4798      	blx	r3
d007c2da:	2280      	movs	r2, #128	; 0x80
d007c2dc:	4629      	mov	r1, r5
d007c2de:	a80a      	add	r0, sp, #40	; 0x28
d007c2e0:	f7fc fbb8 	bl	d0078a54 <memset>
d007c2e4:	4ba9      	ldr	r3, [pc, #676]	; (d007c58c <main+0x2e8>)
d007c2e6:	601d      	str	r5, [r3, #0]
d007c2e8:	f7fd ffe0 	bl	d007a2ac <initMath>
d007c2ec:	f7fc feb0 	bl	d0079050 <init_starfield>
d007c2f0:	4628      	mov	r0, r5
d007c2f2:	f8d4 3094 	ldr.w	r3, [r4, #148]	; 0x94
d007c2f6:	2201      	movs	r2, #1
d007c2f8:	49a5      	ldr	r1, [pc, #660]	; (d007c590 <main+0x2ec>)
d007c2fa:	4798      	blx	r3
d007c2fc:	2800      	cmp	r0, #0
d007c2fe:	f040 827b 	bne.w	d007c7f8 <main+0x554>
d007c302:	4605      	mov	r5, r0
d007c304:	2280      	movs	r2, #128	; 0x80
d007c306:	a90a      	add	r1, sp, #40	; 0x28
d007c308:	ab05      	add	r3, sp, #20
d007c30a:	f8d4 60a0 	ldr.w	r6, [r4, #160]	; 0xa0
d007c30e:	47b0      	blx	r6
d007c310:	f8d4 3098 	ldr.w	r3, [r4, #152]	; 0x98
d007c314:	4628      	mov	r0, r5
d007c316:	4798      	blx	r3
d007c318:	68a3      	ldr	r3, [r4, #8]
d007c31a:	9905      	ldr	r1, [sp, #20]
d007c31c:	489d      	ldr	r0, [pc, #628]	; (d007c594 <main+0x2f0>)
d007c31e:	4798      	blx	r3
d007c320:	68a3      	ldr	r3, [r4, #8]
d007c322:	489d      	ldr	r0, [pc, #628]	; (d007c598 <main+0x2f4>)
d007c324:	4798      	blx	r3
d007c326:	68a3      	ldr	r3, [r4, #8]
d007c328:	a80a      	add	r0, sp, #40	; 0x28
d007c32a:	4798      	blx	r3
d007c32c:	4c94      	ldr	r4, [pc, #592]	; (d007c580 <main+0x2dc>)
d007c32e:	f7fc fc53 	bl	d0078bd8 <initMalloc>
d007c332:	4a9a      	ldr	r2, [pc, #616]	; (d007c59c <main+0x2f8>)
d007c334:	2602      	movs	r6, #2
d007c336:	68a3      	ldr	r3, [r4, #8]
d007c338:	6811      	ldr	r1, [r2, #0]
d007c33a:	4899      	ldr	r0, [pc, #612]	; (d007c5a0 <main+0x2fc>)
d007c33c:	4798      	blx	r3
d007c33e:	4a99      	ldr	r2, [pc, #612]	; (d007c5a4 <main+0x300>)
d007c340:	68a3      	ldr	r3, [r4, #8]
d007c342:	6811      	ldr	r1, [r2, #0]
d007c344:	4898      	ldr	r0, [pc, #608]	; (d007c5a8 <main+0x304>)
d007c346:	4798      	blx	r3
d007c348:	68a3      	ldr	r3, [r4, #8]
d007c34a:	4898      	ldr	r0, [pc, #608]	; (d007c5ac <main+0x308>)
d007c34c:	4798      	blx	r3
d007c34e:	6d21      	ldr	r1, [r4, #80]	; 0x50
d007c350:	4a97      	ldr	r2, [pc, #604]	; (d007c5b0 <main+0x30c>)
d007c352:	6d23      	ldr	r3, [r4, #80]	; 0x50
d007c354:	4897      	ldr	r0, [pc, #604]	; (d007c5b4 <main+0x310>)
d007c356:	4d98      	ldr	r5, [pc, #608]	; (d007c5b8 <main+0x314>)
d007c358:	60c8      	str	r0, [r1, #12]
d007c35a:	609a      	str	r2, [r3, #8]
d007c35c:	f7fc fb82 	bl	d0078a64 <initDisplayBuffers>
d007c360:	f8d4 30bc 	ldr.w	r3, [r4, #188]	; 0xbc
d007c364:	4631      	mov	r1, r6
d007c366:	20dc      	movs	r0, #220	; 0xdc
d007c368:	4798      	blx	r3
d007c36a:	f44f 73a0 	mov.w	r3, #320	; 0x140
d007c36e:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d007c372:	f8d4 70e8 	ldr.w	r7, [r4, #232]	; 0xe8
d007c376:	4619      	mov	r1, r3
d007c378:	9600      	str	r6, [sp, #0]
d007c37a:	4610      	mov	r0, r2
d007c37c:	f8df 8288 	ldr.w	r8, [pc, #648]	; d007c608 <main+0x364>
d007c380:	47b8      	blx	r7
d007c382:	4a8e      	ldr	r2, [pc, #568]	; (d007c5bc <main+0x318>)
d007c384:	4f8e      	ldr	r7, [pc, #568]	; (d007c5c0 <main+0x31c>)
d007c386:	2000      	movs	r0, #0
d007c388:	498e      	ldr	r1, [pc, #568]	; (d007c5c4 <main+0x320>)
d007c38a:	f8d4 309c 	ldr.w	r3, [r4, #156]	; 0x9c
d007c38e:	602a      	str	r2, [r5, #0]
d007c390:	603a      	str	r2, [r7, #0]
d007c392:	4798      	blx	r3
d007c394:	4602      	mov	r2, r0
d007c396:	f8c8 0000 	str.w	r0, [r8]
d007c39a:	2800      	cmp	r0, #0
d007c39c:	f000 8239 	beq.w	d007c812 <main+0x56e>
d007c3a0:	682b      	ldr	r3, [r5, #0]
d007c3a2:	2000      	movs	r0, #0
d007c3a4:	f8df 9264 	ldr.w	r9, [pc, #612]	; d007c60c <main+0x368>
d007c3a8:	3303      	adds	r3, #3
d007c3aa:	f8df a264 	ldr.w	sl, [pc, #612]	; d007c610 <main+0x36c>
d007c3ae:	4986      	ldr	r1, [pc, #536]	; (d007c5c8 <main+0x324>)
d007c3b0:	441a      	add	r2, r3
d007c3b2:	f8d4 309c 	ldr.w	r3, [r4, #156]	; 0x9c
d007c3b6:	f022 0203 	bic.w	r2, r2, #3
d007c3ba:	602a      	str	r2, [r5, #0]
d007c3bc:	f8c9 2000 	str.w	r2, [r9]
d007c3c0:	4798      	blx	r3
d007c3c2:	4602      	mov	r2, r0
d007c3c4:	f8ca 0000 	str.w	r0, [sl]
d007c3c8:	2800      	cmp	r0, #0
d007c3ca:	f000 8219 	beq.w	d007c800 <main+0x55c>
d007c3ce:	682b      	ldr	r3, [r5, #0]
d007c3d0:	2000      	movs	r0, #0
d007c3d2:	f8df b240 	ldr.w	fp, [pc, #576]	; d007c614 <main+0x370>
d007c3d6:	3303      	adds	r3, #3
d007c3d8:	497c      	ldr	r1, [pc, #496]	; (d007c5cc <main+0x328>)
d007c3da:	441a      	add	r2, r3
d007c3dc:	4b7c      	ldr	r3, [pc, #496]	; (d007c5d0 <main+0x32c>)
d007c3de:	f022 0203 	bic.w	r2, r2, #3
d007c3e2:	601a      	str	r2, [r3, #0]
d007c3e4:	f8d4 309c 	ldr.w	r3, [r4, #156]	; 0x9c
d007c3e8:	602a      	str	r2, [r5, #0]
d007c3ea:	4798      	blx	r3
d007c3ec:	4602      	mov	r2, r0
d007c3ee:	f8cb 0000 	str.w	r0, [fp]
d007c3f2:	2800      	cmp	r0, #0
d007c3f4:	f000 8217 	beq.w	d007c826 <main+0x582>
d007c3f8:	682b      	ldr	r3, [r5, #0]
d007c3fa:	2000      	movs	r0, #0
d007c3fc:	4975      	ldr	r1, [pc, #468]	; (d007c5d4 <main+0x330>)
d007c3fe:	3303      	adds	r3, #3
d007c400:	441a      	add	r2, r3
d007c402:	4b75      	ldr	r3, [pc, #468]	; (d007c5d8 <main+0x334>)
d007c404:	f022 0203 	bic.w	r2, r2, #3
d007c408:	601a      	str	r2, [r3, #0]
d007c40a:	f8d4 309c 	ldr.w	r3, [r4, #156]	; 0x9c
d007c40e:	602a      	str	r2, [r5, #0]
d007c410:	4798      	blx	r3
d007c412:	4b72      	ldr	r3, [pc, #456]	; (d007c5dc <main+0x338>)
d007c414:	4602      	mov	r2, r0
d007c416:	6018      	str	r0, [r3, #0]
d007c418:	2800      	cmp	r0, #0
d007c41a:	f000 81ff 	beq.w	d007c81c <main+0x578>
d007c41e:	682b      	ldr	r3, [r5, #0]
d007c420:	2000      	movs	r0, #0
d007c422:	496f      	ldr	r1, [pc, #444]	; (d007c5e0 <main+0x33c>)
d007c424:	3303      	adds	r3, #3
d007c426:	441a      	add	r2, r3
d007c428:	4b6e      	ldr	r3, [pc, #440]	; (d007c5e4 <main+0x340>)
d007c42a:	f022 0203 	bic.w	r2, r2, #3
d007c42e:	601a      	str	r2, [r3, #0]
d007c430:	f8d4 309c 	ldr.w	r3, [r4, #156]	; 0x9c
d007c434:	602a      	str	r2, [r5, #0]
d007c436:	4798      	blx	r3
d007c438:	4b6b      	ldr	r3, [pc, #428]	; (d007c5e8 <main+0x344>)
d007c43a:	4602      	mov	r2, r0
d007c43c:	6018      	str	r0, [r3, #0]
d007c43e:	2800      	cmp	r0, #0
d007c440:	f000 81f6 	beq.w	d007c830 <main+0x58c>
d007c444:	682b      	ldr	r3, [r5, #0]
d007c446:	2000      	movs	r0, #0
d007c448:	4968      	ldr	r1, [pc, #416]	; (d007c5ec <main+0x348>)
d007c44a:	3303      	adds	r3, #3
d007c44c:	441a      	add	r2, r3
d007c44e:	4b68      	ldr	r3, [pc, #416]	; (d007c5f0 <main+0x34c>)
d007c450:	f022 0203 	bic.w	r2, r2, #3
d007c454:	601a      	str	r2, [r3, #0]
d007c456:	f8d4 309c 	ldr.w	r3, [r4, #156]	; 0x9c
d007c45a:	602a      	str	r2, [r5, #0]
d007c45c:	4798      	blx	r3
d007c45e:	4b65      	ldr	r3, [pc, #404]	; (d007c5f4 <main+0x350>)
d007c460:	4602      	mov	r2, r0
d007c462:	6018      	str	r0, [r3, #0]
d007c464:	2800      	cmp	r0, #0
d007c466:	f000 81f2 	beq.w	d007c84e <main+0x5aa>
d007c46a:	682b      	ldr	r3, [r5, #0]
d007c46c:	2000      	movs	r0, #0
d007c46e:	4962      	ldr	r1, [pc, #392]	; (d007c5f8 <main+0x354>)
d007c470:	3303      	adds	r3, #3
d007c472:	441a      	add	r2, r3
d007c474:	4b61      	ldr	r3, [pc, #388]	; (d007c5fc <main+0x358>)
d007c476:	f022 0203 	bic.w	r2, r2, #3
d007c47a:	601a      	str	r2, [r3, #0]
d007c47c:	f8d4 309c 	ldr.w	r3, [r4, #156]	; 0x9c
d007c480:	602a      	str	r2, [r5, #0]
d007c482:	4798      	blx	r3
d007c484:	4b5e      	ldr	r3, [pc, #376]	; (d007c600 <main+0x35c>)
d007c486:	6018      	str	r0, [r3, #0]
d007c488:	2800      	cmp	r0, #0
d007c48a:	f000 81d6 	beq.w	d007c83a <main+0x596>
d007c48e:	682b      	ldr	r3, [r5, #0]
d007c490:	f245 5cff 	movw	ip, #22015	; 0x55ff
d007c494:	2200      	movs	r2, #0
d007c496:	2105      	movs	r1, #5
d007c498:	3303      	adds	r3, #3
d007c49a:	4403      	add	r3, r0
d007c49c:	4859      	ldr	r0, [pc, #356]	; (d007c604 <main+0x360>)
d007c49e:	f023 0303 	bic.w	r3, r3, #3
d007c4a2:	602b      	str	r3, [r5, #0]
d007c4a4:	4615      	mov	r5, r2
d007c4a6:	f8d4 3170 	ldr.w	r3, [r4, #368]	; 0x170
d007c4aa:	f8c3 c000 	str.w	ip, [r3]
d007c4ae:	f8d4 3164 	ldr.w	r3, [r4, #356]	; 0x164
d007c4b2:	4798      	blx	r3
d007c4b4:	f8d8 2000 	ldr.w	r2, [r8]
d007c4b8:	6839      	ldr	r1, [r7, #0]
d007c4ba:	4628      	mov	r0, r5
d007c4bc:	3a36      	subs	r2, #54	; 0x36
d007c4be:	2350      	movs	r3, #80	; 0x50
d007c4c0:	312c      	adds	r1, #44	; 0x2c
d007c4c2:	9501      	str	r5, [sp, #4]
d007c4c4:	9200      	str	r2, [sp, #0]
d007c4c6:	f64a 4244 	movw	r2, #44100	; 0xac44
d007c4ca:	f7fc fb1b 	bl	d0078b04 <ChannelAssign>
d007c4ce:	f8da 0000 	ldr.w	r0, [sl]
d007c4d2:	f8d9 1000 	ldr.w	r1, [r9]
d007c4d6:	2350      	movs	r3, #80	; 0x50
d007c4d8:	3836      	subs	r0, #54	; 0x36
d007c4da:	f642 322a 	movw	r2, #11050	; 0x2b2a
d007c4de:	312c      	adds	r1, #44	; 0x2c
d007c4e0:	9501      	str	r5, [sp, #4]
d007c4e2:	9000      	str	r0, [sp, #0]
d007c4e4:	4630      	mov	r0, r6
d007c4e6:	f7fc fb0d 	bl	d0078b04 <ChannelAssign>
d007c4ea:	4b3f      	ldr	r3, [pc, #252]	; (d007c5e8 <main+0x344>)
d007c4ec:	f64a 4244 	movw	r2, #44100	; 0xac44
d007c4f0:	2701      	movs	r7, #1
d007c4f2:	6818      	ldr	r0, [r3, #0]
d007c4f4:	4b3b      	ldr	r3, [pc, #236]	; (d007c5e4 <main+0x340>)
d007c4f6:	3836      	subs	r0, #54	; 0x36
d007c4f8:	6819      	ldr	r1, [r3, #0]
d007c4fa:	2340      	movs	r3, #64	; 0x40
d007c4fc:	9501      	str	r5, [sp, #4]
d007c4fe:	312c      	adds	r1, #44	; 0x2c
d007c500:	9000      	str	r0, [sp, #0]
d007c502:	2001      	movs	r0, #1
d007c504:	f7fc fafe 	bl	d0078b04 <ChannelAssign>
d007c508:	f8db 2000 	ldr.w	r2, [fp]
d007c50c:	4b30      	ldr	r3, [pc, #192]	; (d007c5d0 <main+0x32c>)
d007c50e:	2003      	movs	r0, #3
d007c510:	3a36      	subs	r2, #54	; 0x36
d007c512:	6819      	ldr	r1, [r3, #0]
d007c514:	2350      	movs	r3, #80	; 0x50
d007c516:	312c      	adds	r1, #44	; 0x2c
d007c518:	e9cd 2700 	strd	r2, r7, [sp]
d007c51c:	f64a 4244 	movw	r2, #44100	; 0xac44
d007c520:	f7fc faf0 	bl	d0078b04 <ChannelAssign>
d007c524:	4b2d      	ldr	r3, [pc, #180]	; (d007c5dc <main+0x338>)
d007c526:	f64a 4244 	movw	r2, #44100	; 0xac44
d007c52a:	6818      	ldr	r0, [r3, #0]
d007c52c:	4b2a      	ldr	r3, [pc, #168]	; (d007c5d8 <main+0x334>)
d007c52e:	3836      	subs	r0, #54	; 0x36
d007c530:	6819      	ldr	r1, [r3, #0]
d007c532:	2322      	movs	r3, #34	; 0x22
d007c534:	9000      	str	r0, [sp, #0]
d007c536:	2004      	movs	r0, #4
d007c538:	312c      	adds	r1, #44	; 0x2c
d007c53a:	9701      	str	r7, [sp, #4]
d007c53c:	f7fc fae2 	bl	d0078b04 <ChannelAssign>
d007c540:	4b2c      	ldr	r3, [pc, #176]	; (d007c5f4 <main+0x350>)
d007c542:	f245 6222 	movw	r2, #22050	; 0x5622
d007c546:	6818      	ldr	r0, [r3, #0]
d007c548:	4b29      	ldr	r3, [pc, #164]	; (d007c5f0 <main+0x34c>)
d007c54a:	3836      	subs	r0, #54	; 0x36
d007c54c:	6819      	ldr	r1, [r3, #0]
d007c54e:	2350      	movs	r3, #80	; 0x50
d007c550:	9501      	str	r5, [sp, #4]
d007c552:	312c      	adds	r1, #44	; 0x2c
d007c554:	9000      	str	r0, [sp, #0]
d007c556:	2005      	movs	r0, #5
d007c558:	f7fc fad4 	bl	d0078b04 <ChannelAssign>
d007c55c:	4b28      	ldr	r3, [pc, #160]	; (d007c600 <main+0x35c>)
d007c55e:	f64a 4244 	movw	r2, #44100	; 0xac44
d007c562:	6818      	ldr	r0, [r3, #0]
d007c564:	4b25      	ldr	r3, [pc, #148]	; (d007c5fc <main+0x358>)
d007c566:	3836      	subs	r0, #54	; 0x36
d007c568:	6819      	ldr	r1, [r3, #0]
d007c56a:	2350      	movs	r3, #80	; 0x50
d007c56c:	9501      	str	r5, [sp, #4]
d007c56e:	312c      	adds	r1, #44	; 0x2c
d007c570:	9000      	str	r0, [sp, #0]
d007c572:	2006      	movs	r0, #6
d007c574:	f7fc fac6 	bl	d0078b04 <ChannelAssign>
d007c578:	4628      	mov	r0, r5
d007c57a:	f7fc fb09 	bl	d0078b90 <StopChannel>
d007c57e:	e04b      	b.n	d007c618 <main+0x374>
d007c580:	2001f000 	.word	0x2001f000
d007c584:	d00834f0 	.word	0xd00834f0
d007c588:	d007dfc0 	.word	0xd007dfc0
d007c58c:	d007eee8 	.word	0xd007eee8
d007c590:	d007dfcc 	.word	0xd007dfcc
d007c594:	d007dfdc 	.word	0xd007dfdc
d007c598:	d007dfec 	.word	0xd007dfec
d007c59c:	d007eeec 	.word	0xd007eeec
d007c5a0:	d007e01c 	.word	0xd007e01c
d007c5a4:	d00834a0 	.word	0xd00834a0
d007c5a8:	d007e034 	.word	0xd007e034
d007c5ac:	d007e050 	.word	0xd007e050
d007c5b0:	d007c1a1 	.word	0xd007c1a1
d007c5b4:	d007bf31 	.word	0xd007bf31
d007c5b8:	d007eef0 	.word	0xd007eef0
d007c5bc:	d0010000 	.word	0xd0010000
d007c5c0:	d0083468 	.word	0xd0083468
d007c5c4:	d007e064 	.word	0xd007e064
d007c5c8:	d007e08c 	.word	0xd007e08c
d007c5cc:	d007e09c 	.word	0xd007e09c
d007c5d0:	d0083478 	.word	0xd0083478
d007c5d4:	d007e0a8 	.word	0xd007e0a8
d007c5d8:	d0083470 	.word	0xd0083470
d007c5dc:	d0083474 	.word	0xd0083474
d007c5e0:	d007e0b4 	.word	0xd007e0b4
d007c5e4:	d0083460 	.word	0xd0083460
d007c5e8:	d0083464 	.word	0xd0083464
d007c5ec:	d007e0c0 	.word	0xd007e0c0
d007c5f0:	d0083480 	.word	0xd0083480
d007c5f4:	d0083484 	.word	0xd0083484
d007c5f8:	d007e0d0 	.word	0xd007e0d0
d007c5fc:	d0083450 	.word	0xd0083450
d007c600:	d008344c 	.word	0xd008344c
d007c604:	d007e0e0 	.word	0xd007e0e0
d007c608:	d008346c 	.word	0xd008346c
d007c60c:	d0083458 	.word	0xd0083458
d007c610:	d008345c 	.word	0xd008345c
d007c614:	d008347c 	.word	0xd008347c
d007c618:	4630      	mov	r0, r6
d007c61a:	f7fc fab9 	bl	d0078b90 <StopChannel>
d007c61e:	4638      	mov	r0, r7
d007c620:	f7fc fab6 	bl	d0078b90 <StopChannel>
d007c624:	2003      	movs	r0, #3
d007c626:	f7fc fab3 	bl	d0078b90 <StopChannel>
d007c62a:	2004      	movs	r0, #4
d007c62c:	f7fc fab0 	bl	d0078b90 <StopChannel>
d007c630:	2005      	movs	r0, #5
d007c632:	f7fc faad 	bl	d0078b90 <StopChannel>
d007c636:	2006      	movs	r0, #6
d007c638:	f7fc faaa 	bl	d0078b90 <StopChannel>
d007c63c:	f8d4 3110 	ldr.w	r3, [r4, #272]	; 0x110
d007c640:	4628      	mov	r0, r5
d007c642:	463a      	mov	r2, r7
d007c644:	701f      	strb	r7, [r3, #0]
d007c646:	498e      	ldr	r1, [pc, #568]	; (d007c880 <main+0x5dc>)
d007c648:	f8d4 3094 	ldr.w	r3, [r4, #148]	; 0x94
d007c64c:	4798      	blx	r3
d007c64e:	4605      	mov	r5, r0
d007c650:	2800      	cmp	r0, #0
d007c652:	f040 81fc 	bne.w	d007ca4e <main+0x7aa>
d007c656:	ab05      	add	r3, sp, #20
d007c658:	f8d4 60a0 	ldr.w	r6, [r4, #160]	; 0xa0
d007c65c:	f44f 2216 	mov.w	r2, #614400	; 0x96000
d007c660:	4988      	ldr	r1, [pc, #544]	; (d007c884 <main+0x5e0>)
d007c662:	47b0      	blx	r6
d007c664:	f8d4 3098 	ldr.w	r3, [r4, #152]	; 0x98
d007c668:	4628      	mov	r0, r5
d007c66a:	4798      	blx	r3
d007c66c:	f44f 73a0 	mov.w	r3, #320	; 0x140
d007c670:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d007c674:	4d84      	ldr	r5, [pc, #528]	; (d007c888 <main+0x5e4>)
d007c676:	2002      	movs	r0, #2
d007c678:	4619      	mov	r1, r3
d007c67a:	4c84      	ldr	r4, [pc, #528]	; (d007c88c <main+0x5e8>)
d007c67c:	f8d5 60e8 	ldr.w	r6, [r5, #232]	; 0xe8
d007c680:	9000      	str	r0, [sp, #0]
d007c682:	4610      	mov	r0, r2
d007c684:	47b0      	blx	r6
d007c686:	4982      	ldr	r1, [pc, #520]	; (d007c890 <main+0x5ec>)
d007c688:	f8d5 20f0 	ldr.w	r2, [r5, #240]	; 0xf0
d007c68c:	2300      	movs	r3, #0
d007c68e:	6808      	ldr	r0, [r1, #0]
d007c690:	4980      	ldr	r1, [pc, #512]	; (d007c894 <main+0x5f0>)
d007c692:	6010      	str	r0, [r2, #0]
d007c694:	f851 2f04 	ldr.w	r2, [r1, #4]!
d007c698:	f042 427f 	orr.w	r2, r2, #4278190080	; 0xff000000
d007c69c:	f844 2023 	str.w	r2, [r4, r3, lsl #2]
d007c6a0:	3301      	adds	r3, #1
d007c6a2:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d007c6a6:	d1f5      	bne.n	d007c694 <main+0x3f0>
d007c6a8:	4d77      	ldr	r5, [pc, #476]	; (d007c888 <main+0x5e4>)
d007c6aa:	2600      	movs	r6, #0
d007c6ac:	4877      	ldr	r0, [pc, #476]	; (d007c88c <main+0x5e8>)
d007c6ae:	4631      	mov	r1, r6
d007c6b0:	6026      	str	r6, [r4, #0]
d007c6b2:	f8d5 30d8 	ldr.w	r3, [r5, #216]	; 0xd8
d007c6b6:	4798      	blx	r3
d007c6b8:	f8d5 30cc 	ldr.w	r3, [r5, #204]	; 0xcc
d007c6bc:	4798      	blx	r3
d007c6be:	2101      	movs	r1, #1
d007c6c0:	4872      	ldr	r0, [pc, #456]	; (d007c88c <main+0x5e8>)
d007c6c2:	f8d5 30d8 	ldr.w	r3, [r5, #216]	; 0xd8
d007c6c6:	4798      	blx	r3
d007c6c8:	f8d5 30cc 	ldr.w	r3, [r5, #204]	; 0xcc
d007c6cc:	4798      	blx	r3
d007c6ce:	4630      	mov	r0, r6
d007c6d0:	f8d5 3094 	ldr.w	r3, [r5, #148]	; 0x94
d007c6d4:	2201      	movs	r2, #1
d007c6d6:	4970      	ldr	r1, [pc, #448]	; (d007c898 <main+0x5f4>)
d007c6d8:	4798      	blx	r3
d007c6da:	4606      	mov	r6, r0
d007c6dc:	2800      	cmp	r0, #0
d007c6de:	f040 81b2 	bne.w	d007ca46 <main+0x7a2>
d007c6e2:	f8d5 70a0 	ldr.w	r7, [r5, #160]	; 0xa0
d007c6e6:	ab05      	add	r3, sp, #20
d007c6e8:	f8d5 10f0 	ldr.w	r1, [r5, #240]	; 0xf0
d007c6ec:	f44f 3216 	mov.w	r2, #153600	; 0x25800
d007c6f0:	6809      	ldr	r1, [r1, #0]
d007c6f2:	47b8      	blx	r7
d007c6f4:	f8d5 3098 	ldr.w	r3, [r5, #152]	; 0x98
d007c6f8:	4630      	mov	r0, r6
d007c6fa:	4798      	blx	r3
d007c6fc:	4e62      	ldr	r6, [pc, #392]	; (d007c888 <main+0x5e4>)
d007c6fe:	2201      	movs	r2, #1
d007c700:	4966      	ldr	r1, [pc, #408]	; (d007c89c <main+0x5f8>)
d007c702:	2000      	movs	r0, #0
d007c704:	f8d6 3094 	ldr.w	r3, [r6, #148]	; 0x94
d007c708:	4798      	blx	r3
d007c70a:	4605      	mov	r5, r0
d007c70c:	2800      	cmp	r0, #0
d007c70e:	f040 8196 	bne.w	d007ca3e <main+0x79a>
d007c712:	ab05      	add	r3, sp, #20
d007c714:	f8d6 70a0 	ldr.w	r7, [r6, #160]	; 0xa0
d007c718:	f44f 3216 	mov.w	r2, #153600	; 0x25800
d007c71c:	4960      	ldr	r1, [pc, #384]	; (d007c8a0 <main+0x5fc>)
d007c71e:	47b8      	blx	r7
d007c720:	f8d6 3098 	ldr.w	r3, [r6, #152]	; 0x98
d007c724:	4628      	mov	r0, r5
d007c726:	4798      	blx	r3
d007c728:	4d57      	ldr	r5, [pc, #348]	; (d007c888 <main+0x5e4>)
d007c72a:	ee18 aa10 	vmov	sl, s16
d007c72e:	f8df b1b4 	ldr.w	fp, [pc, #436]	; d007c8e4 <main+0x640>
d007c732:	f8d5 30cc 	ldr.w	r3, [r5, #204]	; 0xcc
d007c736:	4798      	blx	r3
d007c738:	2300      	movs	r3, #0
d007c73a:	4a5a      	ldr	r2, [pc, #360]	; (d007c8a4 <main+0x600>)
d007c73c:	4698      	mov	r8, r3
d007c73e:	461f      	mov	r7, r3
d007c740:	6812      	ldr	r2, [r2, #0]
d007c742:	9302      	str	r3, [sp, #8]
d007c744:	7013      	strb	r3, [r2, #0]
d007c746:	4b58      	ldr	r3, [pc, #352]	; (d007c8a8 <main+0x604>)
d007c748:	f108 0801 	add.w	r8, r8, #1
d007c74c:	f10d 0918 	add.w	r9, sp, #24
d007c750:	7818      	ldrb	r0, [r3, #0]
d007c752:	4b56      	ldr	r3, [pc, #344]	; (d007c8ac <main+0x608>)
d007c754:	781a      	ldrb	r2, [r3, #0]
d007c756:	4310      	orrs	r0, r2
d007c758:	f010 0001 	ands.w	r0, r0, #1
d007c75c:	d17c      	bne.n	d007c858 <main+0x5b4>
d007c75e:	f8d5 2118 	ldr.w	r2, [r5, #280]	; 0x118
d007c762:	4790      	blx	r2
d007c764:	f1b8 0f1e 	cmp.w	r8, #30
d007c768:	dd1a      	ble.n	d007c7a0 <main+0x4fc>
d007c76a:	f10d 0918 	add.w	r9, sp, #24
d007c76e:	4950      	ldr	r1, [pc, #320]	; (d007c8b0 <main+0x60c>)
d007c770:	4648      	mov	r0, r9
d007c772:	f000 f9d7 	bl	d007cb24 <siprintf>
d007c776:	f8d5 20f8 	ldr.w	r2, [r5, #248]	; 0xf8
d007c77a:	21ff      	movs	r1, #255	; 0xff
d007c77c:	4648      	mov	r0, r9
d007c77e:	7011      	strb	r1, [r2, #0]
d007c780:	f000 f9f0 	bl	d007cb64 <strlen>
d007c784:	f8d5 6148 	ldr.w	r6, [r5, #328]	; 0x148
d007c788:	00c0      	lsls	r0, r0, #3
d007c78a:	464a      	mov	r2, r9
d007c78c:	21a0      	movs	r1, #160	; 0xa0
d007c78e:	0840      	lsrs	r0, r0, #1
d007c790:	f1c0 00f0 	rsb	r0, r0, #240	; 0xf0
d007c794:	47b0      	blx	r6
d007c796:	f1b8 0f3d 	cmp.w	r8, #61	; 0x3d
d007c79a:	bfa8      	it	ge
d007c79c:	f04f 0800 	movge.w	r8, #0
d007c7a0:	4652      	mov	r2, sl
d007c7a2:	4659      	mov	r1, fp
d007c7a4:	4648      	mov	r0, r9
d007c7a6:	26ff      	movs	r6, #255	; 0xff
d007c7a8:	f000 f9bc 	bl	d007cb24 <siprintf>
d007c7ac:	f8d5 00f8 	ldr.w	r0, [r5, #248]	; 0xf8
d007c7b0:	2102      	movs	r1, #2
d007c7b2:	464a      	mov	r2, r9
d007c7b4:	7006      	strb	r6, [r0, #0]
d007c7b6:	2078      	movs	r0, #120	; 0x78
d007c7b8:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
d007c7bc:	4798      	blx	r3
d007c7be:	4638      	mov	r0, r7
d007c7c0:	f7fc f974 	bl	d0078aac <ShowBuffer>
d007c7c4:	f8d5 20cc 	ldr.w	r2, [r5, #204]	; 0xcc
d007c7c8:	4790      	blx	r2
d007c7ca:	69aa      	ldr	r2, [r5, #24]
d007c7cc:	4790      	blx	r2
d007c7ce:	f8d5 20c4 	ldr.w	r2, [r5, #196]	; 0xc4
d007c7d2:	4682      	mov	sl, r0
d007c7d4:	2001      	movs	r0, #1
d007c7d6:	4790      	blx	r2
d007c7d8:	69aa      	ldr	r2, [r5, #24]
d007c7da:	4790      	blx	r2
d007c7dc:	f8d5 215c 	ldr.w	r2, [r5, #348]	; 0x15c
d007c7e0:	eba0 0a0a 	sub.w	sl, r0, sl
d007c7e4:	4790      	blx	r2
d007c7e6:	9b02      	ldr	r3, [sp, #8]
d007c7e8:	f1c7 0701 	rsb	r7, r7, #1
d007c7ec:	2b06      	cmp	r3, #6
d007c7ee:	d029      	beq.n	d007c844 <main+0x5a0>
d007c7f0:	9b02      	ldr	r3, [sp, #8]
d007c7f2:	3301      	adds	r3, #1
d007c7f4:	9302      	str	r3, [sp, #8]
d007c7f6:	e7a6      	b.n	d007c746 <main+0x4a2>
d007c7f8:	68a3      	ldr	r3, [r4, #8]
d007c7fa:	482e      	ldr	r0, [pc, #184]	; (d007c8b4 <main+0x610>)
d007c7fc:	4798      	blx	r3
d007c7fe:	e595      	b.n	d007c32c <main+0x88>
d007c800:	68a3      	ldr	r3, [r4, #8]
d007c802:	492d      	ldr	r1, [pc, #180]	; (d007c8b8 <main+0x614>)
d007c804:	482d      	ldr	r0, [pc, #180]	; (d007c8bc <main+0x618>)
d007c806:	4798      	blx	r3
d007c808:	b02b      	add	sp, #172	; 0xac
d007c80a:	ecbd 8b02 	vpop	{d8}
d007c80e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d007c812:	68a3      	ldr	r3, [r4, #8]
d007c814:	492a      	ldr	r1, [pc, #168]	; (d007c8c0 <main+0x61c>)
d007c816:	4829      	ldr	r0, [pc, #164]	; (d007c8bc <main+0x618>)
d007c818:	4798      	blx	r3
d007c81a:	e7f5      	b.n	d007c808 <main+0x564>
d007c81c:	68a3      	ldr	r3, [r4, #8]
d007c81e:	4929      	ldr	r1, [pc, #164]	; (d007c8c4 <main+0x620>)
d007c820:	4826      	ldr	r0, [pc, #152]	; (d007c8bc <main+0x618>)
d007c822:	4798      	blx	r3
d007c824:	e7f0      	b.n	d007c808 <main+0x564>
d007c826:	68a3      	ldr	r3, [r4, #8]
d007c828:	4927      	ldr	r1, [pc, #156]	; (d007c8c8 <main+0x624>)
d007c82a:	4824      	ldr	r0, [pc, #144]	; (d007c8bc <main+0x618>)
d007c82c:	4798      	blx	r3
d007c82e:	e7eb      	b.n	d007c808 <main+0x564>
d007c830:	68a3      	ldr	r3, [r4, #8]
d007c832:	4926      	ldr	r1, [pc, #152]	; (d007c8cc <main+0x628>)
d007c834:	4821      	ldr	r0, [pc, #132]	; (d007c8bc <main+0x618>)
d007c836:	4798      	blx	r3
d007c838:	e7e6      	b.n	d007c808 <main+0x564>
d007c83a:	68a3      	ldr	r3, [r4, #8]
d007c83c:	4924      	ldr	r1, [pc, #144]	; (d007c8d0 <main+0x62c>)
d007c83e:	481f      	ldr	r0, [pc, #124]	; (d007c8bc <main+0x618>)
d007c840:	4798      	blx	r3
d007c842:	e7e1      	b.n	d007c808 <main+0x564>
d007c844:	4630      	mov	r0, r6
d007c846:	f8d5 20c8 	ldr.w	r2, [r5, #200]	; 0xc8
d007c84a:	4790      	blx	r2
d007c84c:	e77b      	b.n	d007c746 <main+0x4a2>
d007c84e:	68a3      	ldr	r3, [r4, #8]
d007c850:	4920      	ldr	r1, [pc, #128]	; (d007c8d4 <main+0x630>)
d007c852:	481a      	ldr	r0, [pc, #104]	; (d007c8bc <main+0x618>)
d007c854:	4798      	blx	r3
d007c856:	e7d7      	b.n	d007c808 <main+0x564>
d007c858:	f04f 0900 	mov.w	r9, #0
d007c85c:	4e0a      	ldr	r6, [pc, #40]	; (d007c888 <main+0x5e4>)
d007c85e:	f7ff fcc3 	bl	d007c1e8 <SetupGameScreen>
d007c862:	2105      	movs	r1, #5
d007c864:	464a      	mov	r2, r9
d007c866:	f8d6 3164 	ldr.w	r3, [r6, #356]	; 0x164
d007c86a:	481b      	ldr	r0, [pc, #108]	; (d007c8d8 <main+0x634>)
d007c86c:	4798      	blx	r3
d007c86e:	2301      	movs	r3, #1
d007c870:	4a1a      	ldr	r2, [pc, #104]	; (d007c8dc <main+0x638>)
d007c872:	4f1b      	ldr	r7, [pc, #108]	; (d007c8e0 <main+0x63c>)
d007c874:	f8df b070 	ldr.w	fp, [pc, #112]	; d007c8e8 <main+0x644>
d007c878:	f8cd 9008 	str.w	r9, [sp, #8]
d007c87c:	6013      	str	r3, [r2, #0]
d007c87e:	e077      	b.n	d007c970 <main+0x6cc>
d007c880:	d007e0f0 	.word	0xd007e0f0
d007c884:	d00a9120 	.word	0xd00a9120
d007c888:	2001f000 	.word	0x2001f000
d007c88c:	d00834fc 	.word	0xd00834fc
d007c890:	d008349c 	.word	0xd008349c
d007c894:	d007e930 	.word	0xd007e930
d007c898:	d007e0fc 	.word	0xd007e0fc
d007c89c:	d007e108 	.word	0xd007e108
d007c8a0:	d0083900 	.word	0xd0083900
d007c8a4:	d00838fc 	.word	0xd00838fc
d007c8a8:	d00834e8 	.word	0xd00834e8
d007c8ac:	d00834f8 	.word	0xd00834f8
d007c8b0:	d007e114 	.word	0xd007e114
d007c8b4:	d007e004 	.word	0xd007e004
d007c8b8:	d007e08c 	.word	0xd007e08c
d007c8bc:	d007e070 	.word	0xd007e070
d007c8c0:	d007e064 	.word	0xd007e064
d007c8c4:	d007e0a8 	.word	0xd007e0a8
d007c8c8:	d007e09c 	.word	0xd007e09c
d007c8cc:	d007e0b4 	.word	0xd007e0b4
d007c8d0:	d007e0d0 	.word	0xd007e0d0
d007c8d4:	d007e0c0 	.word	0xd007e0c0
d007c8d8:	d007df80 	.word	0xd007df80
d007c8dc:	d007fc54 	.word	0xd007fc54
d007c8e0:	d00834ec 	.word	0xd00834ec
d007c8e4:	d007e128 	.word	0xd007e128
d007c8e8:	d00834f4 	.word	0xd00834f4
d007c8ec:	f7fe fcc4 	bl	d007b278 <doAsterGame>
d007c8f0:	9002      	str	r0, [sp, #8]
d007c8f2:	2100      	movs	r1, #0
d007c8f4:	f8d6 3100 	ldr.w	r3, [r6, #256]	; 0x100
d007c8f8:	4608      	mov	r0, r1
d007c8fa:	4798      	blx	r3
d007c8fc:	4b56      	ldr	r3, [pc, #344]	; (d007ca58 <main+0x7b4>)
d007c8fe:	6819      	ldr	r1, [r3, #0]
d007c900:	f8d6 3104 	ldr.w	r3, [r6, #260]	; 0x104
d007c904:	2900      	cmp	r1, #0
d007c906:	d070      	beq.n	d007c9ea <main+0x746>
d007c908:	f8db 1000 	ldr.w	r1, [fp]
d007c90c:	6838      	ldr	r0, [r7, #0]
d007c90e:	4798      	blx	r3
d007c910:	4652      	mov	r2, sl
d007c912:	4952      	ldr	r1, [pc, #328]	; (d007ca5c <main+0x7b8>)
d007c914:	a806      	add	r0, sp, #24
d007c916:	f000 f905 	bl	d007cb24 <siprintf>
d007c91a:	f8d6 30f8 	ldr.w	r3, [r6, #248]	; 0xf8
d007c91e:	22ff      	movs	r2, #255	; 0xff
d007c920:	701a      	strb	r2, [r3, #0]
d007c922:	f1b9 0f00 	cmp.w	r9, #0
d007c926:	d005      	beq.n	d007c934 <main+0x690>
d007c928:	aa06      	add	r2, sp, #24
d007c92a:	f8d6 3148 	ldr.w	r3, [r6, #328]	; 0x148
d007c92e:	2102      	movs	r1, #2
d007c930:	2078      	movs	r0, #120	; 0x78
d007c932:	4798      	blx	r3
d007c934:	4d4a      	ldr	r5, [pc, #296]	; (d007ca60 <main+0x7bc>)
d007c936:	69b3      	ldr	r3, [r6, #24]
d007c938:	4798      	blx	r3
d007c93a:	682b      	ldr	r3, [r5, #0]
d007c93c:	eba0 0a08 	sub.w	sl, r0, r8
d007c940:	2b01      	cmp	r3, #1
d007c942:	d05c      	beq.n	d007c9fe <main+0x75a>
d007c944:	2b02      	cmp	r3, #2
d007c946:	d10a      	bne.n	d007c95e <main+0x6ba>
d007c948:	f04f 0800 	mov.w	r8, #0
d007c94c:	4845      	ldr	r0, [pc, #276]	; (d007ca64 <main+0x7c0>)
d007c94e:	f8c4 8000 	str.w	r8, [r4]
d007c952:	4641      	mov	r1, r8
d007c954:	f8d6 30d8 	ldr.w	r3, [r6, #216]	; 0xd8
d007c958:	4798      	blx	r3
d007c95a:	f8c5 8000 	str.w	r8, [r5]
d007c95e:	4648      	mov	r0, r9
d007c960:	f1c9 0901 	rsb	r9, r9, #1
d007c964:	f7fc f8a2 	bl	d0078aac <ShowBuffer>
d007c968:	f8d6 30c4 	ldr.w	r3, [r6, #196]	; 0xc4
d007c96c:	2081      	movs	r0, #129	; 0x81
d007c96e:	4798      	blx	r3
d007c970:	69b3      	ldr	r3, [r6, #24]
d007c972:	4798      	blx	r3
d007c974:	4b3c      	ldr	r3, [pc, #240]	; (d007ca68 <main+0x7c4>)
d007c976:	4680      	mov	r8, r0
d007c978:	781b      	ldrb	r3, [r3, #0]
d007c97a:	f013 0302 	ands.w	r3, r3, #2
d007c97e:	d149      	bne.n	d007ca14 <main+0x770>
d007c980:	2564      	movs	r5, #100	; 0x64
d007c982:	f8d6 2118 	ldr.w	r2, [r6, #280]	; 0x118
d007c986:	4618      	mov	r0, r3
d007c988:	9303      	str	r3, [sp, #12]
d007c98a:	4790      	blx	r2
d007c98c:	f7ff fabc 	bl	d007bf08 <getSpeedSX>
d007c990:	225a      	movs	r2, #90	; 0x5a
d007c992:	fb05 f100 	mul.w	r1, r5, r0
d007c996:	683b      	ldr	r3, [r7, #0]
d007c998:	fb91 f1f2 	sdiv	r1, r1, r2
d007c99c:	4419      	add	r1, r3
d007c99e:	6039      	str	r1, [r7, #0]
d007c9a0:	f7ff fabc 	bl	d007bf1c <getSpeedSY>
d007c9a4:	225a      	movs	r2, #90	; 0x5a
d007c9a6:	fb05 f500 	mul.w	r5, r5, r0
d007c9aa:	f8db 3000 	ldr.w	r3, [fp]
d007c9ae:	6839      	ldr	r1, [r7, #0]
d007c9b0:	fb95 f5f2 	sdiv	r5, r5, r2
d007c9b4:	2900      	cmp	r1, #0
d007c9b6:	441d      	add	r5, r3
d007c9b8:	f8cb 5000 	str.w	r5, [fp]
d007c9bc:	db1c      	blt.n	d007c9f8 <main+0x754>
d007c9be:	f5b1 7ff0 	cmp.w	r1, #480	; 0x1e0
d007c9c2:	dd02      	ble.n	d007c9ca <main+0x726>
d007c9c4:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d007c9c8:	603b      	str	r3, [r7, #0]
d007c9ca:	2d00      	cmp	r5, #0
d007c9cc:	db10      	blt.n	d007c9f0 <main+0x74c>
d007c9ce:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d007c9d2:	dd03      	ble.n	d007c9dc <main+0x738>
d007c9d4:	f44f 73a0 	mov.w	r3, #320	; 0x140
d007c9d8:	f8cb 3000 	str.w	r3, [fp]
d007c9dc:	9b02      	ldr	r3, [sp, #8]
d007c9de:	2b00      	cmp	r3, #0
d007c9e0:	d084      	beq.n	d007c8ec <main+0x648>
d007c9e2:	f7fd fcf9 	bl	d007a3d8 <doGameOverScreen>
d007c9e6:	9002      	str	r0, [sp, #8]
d007c9e8:	e783      	b.n	d007c8f2 <main+0x64e>
d007c9ea:	4608      	mov	r0, r1
d007c9ec:	4798      	blx	r3
d007c9ee:	e78f      	b.n	d007c910 <main+0x66c>
d007c9f0:	2300      	movs	r3, #0
d007c9f2:	f8cb 3000 	str.w	r3, [fp]
d007c9f6:	e7f1      	b.n	d007c9dc <main+0x738>
d007c9f8:	9b03      	ldr	r3, [sp, #12]
d007c9fa:	603b      	str	r3, [r7, #0]
d007c9fc:	e7e5      	b.n	d007c9ca <main+0x726>
d007c9fe:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d007ca02:	2100      	movs	r1, #0
d007ca04:	4817      	ldr	r0, [pc, #92]	; (d007ca64 <main+0x7c0>)
d007ca06:	6023      	str	r3, [r4, #0]
d007ca08:	f8d6 30d8 	ldr.w	r3, [r6, #216]	; 0xd8
d007ca0c:	4798      	blx	r3
d007ca0e:	2302      	movs	r3, #2
d007ca10:	602b      	str	r3, [r5, #0]
d007ca12:	e7a4      	b.n	d007c95e <main+0x6ba>
d007ca14:	2200      	movs	r2, #0
d007ca16:	f8d6 3164 	ldr.w	r3, [r6, #356]	; 0x164
d007ca1a:	4814      	ldr	r0, [pc, #80]	; (d007ca6c <main+0x7c8>)
d007ca1c:	4611      	mov	r1, r2
d007ca1e:	4614      	mov	r4, r2
d007ca20:	4798      	blx	r3
d007ca22:	4620      	mov	r0, r4
d007ca24:	3401      	adds	r4, #1
d007ca26:	f7fc f8b3 	bl	d0078b90 <StopChannel>
d007ca2a:	2c08      	cmp	r4, #8
d007ca2c:	d1f9      	bne.n	d007ca22 <main+0x77e>
d007ca2e:	4b10      	ldr	r3, [pc, #64]	; (d007ca70 <main+0x7cc>)
d007ca30:	2007      	movs	r0, #7
d007ca32:	4a10      	ldr	r2, [pc, #64]	; (d007ca74 <main+0x7d0>)
d007ca34:	f8d3 3170 	ldr.w	r3, [r3, #368]	; 0x170
d007ca38:	6812      	ldr	r2, [r2, #0]
d007ca3a:	601a      	str	r2, [r3, #0]
d007ca3c:	e6e4      	b.n	d007c808 <main+0x564>
d007ca3e:	68b3      	ldr	r3, [r6, #8]
d007ca40:	480d      	ldr	r0, [pc, #52]	; (d007ca78 <main+0x7d4>)
d007ca42:	4798      	blx	r3
d007ca44:	e670      	b.n	d007c728 <main+0x484>
d007ca46:	68ab      	ldr	r3, [r5, #8]
d007ca48:	480b      	ldr	r0, [pc, #44]	; (d007ca78 <main+0x7d4>)
d007ca4a:	4798      	blx	r3
d007ca4c:	e656      	b.n	d007c6fc <main+0x458>
d007ca4e:	68a3      	ldr	r3, [r4, #8]
d007ca50:	4809      	ldr	r0, [pc, #36]	; (d007ca78 <main+0x7d4>)
d007ca52:	4798      	blx	r3
d007ca54:	e60a      	b.n	d007c66c <main+0x3c8>
d007ca56:	bf00      	nop
d007ca58:	d007fc54 	.word	0xd007fc54
d007ca5c:	d007e128 	.word	0xd007e128
d007ca60:	d0083454 	.word	0xd0083454
d007ca64:	d00834fc 	.word	0xd00834fc
d007ca68:	d00834e8 	.word	0xd00834e8
d007ca6c:	d007e04c 	.word	0xd007e04c
d007ca70:	2001f000 	.word	0x2001f000
d007ca74:	d00834f0 	.word	0xd00834f0
d007ca78:	d007e004 	.word	0xd007e004

d007ca7c <__errno>:
d007ca7c:	4b01      	ldr	r3, [pc, #4]	; (d007ca84 <__errno+0x8>)
d007ca7e:	6818      	ldr	r0, [r3, #0]
d007ca80:	4770      	bx	lr
d007ca82:	bf00      	nop
d007ca84:	d007ee84 	.word	0xd007ee84

d007ca88 <memcpy>:
d007ca88:	440a      	add	r2, r1
d007ca8a:	4291      	cmp	r1, r2
d007ca8c:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d007ca90:	d100      	bne.n	d007ca94 <memcpy+0xc>
d007ca92:	4770      	bx	lr
d007ca94:	b510      	push	{r4, lr}
d007ca96:	f811 4b01 	ldrb.w	r4, [r1], #1
d007ca9a:	f803 4f01 	strb.w	r4, [r3, #1]!
d007ca9e:	4291      	cmp	r1, r2
d007caa0:	d1f9      	bne.n	d007ca96 <memcpy+0xe>
d007caa2:	bd10      	pop	{r4, pc}

d007caa4 <rand>:
d007caa4:	4b17      	ldr	r3, [pc, #92]	; (d007cb04 <rand+0x60>)
d007caa6:	b510      	push	{r4, lr}
d007caa8:	681c      	ldr	r4, [r3, #0]
d007caaa:	6ba3      	ldr	r3, [r4, #56]	; 0x38
d007caac:	b9b3      	cbnz	r3, d007cadc <rand+0x38>
d007caae:	2018      	movs	r0, #24
d007cab0:	f000 f890 	bl	d007cbd4 <malloc>
d007cab4:	63a0      	str	r0, [r4, #56]	; 0x38
d007cab6:	b928      	cbnz	r0, d007cac4 <rand+0x20>
d007cab8:	4602      	mov	r2, r0
d007caba:	4b13      	ldr	r3, [pc, #76]	; (d007cb08 <rand+0x64>)
d007cabc:	4813      	ldr	r0, [pc, #76]	; (d007cb0c <rand+0x68>)
d007cabe:	214e      	movs	r1, #78	; 0x4e
d007cac0:	f000 f858 	bl	d007cb74 <__assert_func>
d007cac4:	4a12      	ldr	r2, [pc, #72]	; (d007cb10 <rand+0x6c>)
d007cac6:	4b13      	ldr	r3, [pc, #76]	; (d007cb14 <rand+0x70>)
d007cac8:	e9c0 2300 	strd	r2, r3, [r0]
d007cacc:	4b12      	ldr	r3, [pc, #72]	; (d007cb18 <rand+0x74>)
d007cace:	6083      	str	r3, [r0, #8]
d007cad0:	230b      	movs	r3, #11
d007cad2:	8183      	strh	r3, [r0, #12]
d007cad4:	2201      	movs	r2, #1
d007cad6:	2300      	movs	r3, #0
d007cad8:	e9c0 2304 	strd	r2, r3, [r0, #16]
d007cadc:	6ba1      	ldr	r1, [r4, #56]	; 0x38
d007cade:	480f      	ldr	r0, [pc, #60]	; (d007cb1c <rand+0x78>)
d007cae0:	690a      	ldr	r2, [r1, #16]
d007cae2:	694b      	ldr	r3, [r1, #20]
d007cae4:	4c0e      	ldr	r4, [pc, #56]	; (d007cb20 <rand+0x7c>)
d007cae6:	4350      	muls	r0, r2
d007cae8:	fb04 0003 	mla	r0, r4, r3, r0
d007caec:	fba2 3404 	umull	r3, r4, r2, r4
d007caf0:	1c5a      	adds	r2, r3, #1
d007caf2:	4404      	add	r4, r0
d007caf4:	f144 0000 	adc.w	r0, r4, #0
d007caf8:	e9c1 2004 	strd	r2, r0, [r1, #16]
d007cafc:	f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
d007cb00:	bd10      	pop	{r4, pc}
d007cb02:	bf00      	nop
d007cb04:	d007ee84 	.word	0xd007ee84
d007cb08:	d007ed34 	.word	0xd007ed34
d007cb0c:	d007ed4b 	.word	0xd007ed4b
d007cb10:	abcd330e 	.word	0xabcd330e
d007cb14:	e66d1234 	.word	0xe66d1234
d007cb18:	0005deec 	.word	0x0005deec
d007cb1c:	5851f42d 	.word	0x5851f42d
d007cb20:	4c957f2d 	.word	0x4c957f2d

d007cb24 <siprintf>:
d007cb24:	b40e      	push	{r1, r2, r3}
d007cb26:	b500      	push	{lr}
d007cb28:	b09c      	sub	sp, #112	; 0x70
d007cb2a:	ab1d      	add	r3, sp, #116	; 0x74
d007cb2c:	9002      	str	r0, [sp, #8]
d007cb2e:	9006      	str	r0, [sp, #24]
d007cb30:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d007cb34:	4809      	ldr	r0, [pc, #36]	; (d007cb5c <siprintf+0x38>)
d007cb36:	9107      	str	r1, [sp, #28]
d007cb38:	9104      	str	r1, [sp, #16]
d007cb3a:	4909      	ldr	r1, [pc, #36]	; (d007cb60 <siprintf+0x3c>)
d007cb3c:	f853 2b04 	ldr.w	r2, [r3], #4
d007cb40:	9105      	str	r1, [sp, #20]
d007cb42:	6800      	ldr	r0, [r0, #0]
d007cb44:	9301      	str	r3, [sp, #4]
d007cb46:	a902      	add	r1, sp, #8
d007cb48:	f000 f952 	bl	d007cdf0 <_svfiprintf_r>
d007cb4c:	9b02      	ldr	r3, [sp, #8]
d007cb4e:	2200      	movs	r2, #0
d007cb50:	701a      	strb	r2, [r3, #0]
d007cb52:	b01c      	add	sp, #112	; 0x70
d007cb54:	f85d eb04 	ldr.w	lr, [sp], #4
d007cb58:	b003      	add	sp, #12
d007cb5a:	4770      	bx	lr
d007cb5c:	d007ee84 	.word	0xd007ee84
d007cb60:	ffff0208 	.word	0xffff0208

d007cb64 <strlen>:
d007cb64:	4603      	mov	r3, r0
d007cb66:	f813 2b01 	ldrb.w	r2, [r3], #1
d007cb6a:	2a00      	cmp	r2, #0
d007cb6c:	d1fb      	bne.n	d007cb66 <strlen+0x2>
d007cb6e:	1a18      	subs	r0, r3, r0
d007cb70:	3801      	subs	r0, #1
d007cb72:	4770      	bx	lr

d007cb74 <__assert_func>:
d007cb74:	b51f      	push	{r0, r1, r2, r3, r4, lr}
d007cb76:	4614      	mov	r4, r2
d007cb78:	461a      	mov	r2, r3
d007cb7a:	4b09      	ldr	r3, [pc, #36]	; (d007cba0 <__assert_func+0x2c>)
d007cb7c:	681b      	ldr	r3, [r3, #0]
d007cb7e:	4605      	mov	r5, r0
d007cb80:	68d8      	ldr	r0, [r3, #12]
d007cb82:	b14c      	cbz	r4, d007cb98 <__assert_func+0x24>
d007cb84:	4b07      	ldr	r3, [pc, #28]	; (d007cba4 <__assert_func+0x30>)
d007cb86:	9100      	str	r1, [sp, #0]
d007cb88:	e9cd 3401 	strd	r3, r4, [sp, #4]
d007cb8c:	4906      	ldr	r1, [pc, #24]	; (d007cba8 <__assert_func+0x34>)
d007cb8e:	462b      	mov	r3, r5
d007cb90:	f000 f80e 	bl	d007cbb0 <fiprintf>
d007cb94:	f000 fdea 	bl	d007d76c <abort>
d007cb98:	4b04      	ldr	r3, [pc, #16]	; (d007cbac <__assert_func+0x38>)
d007cb9a:	461c      	mov	r4, r3
d007cb9c:	e7f3      	b.n	d007cb86 <__assert_func+0x12>
d007cb9e:	bf00      	nop
d007cba0:	d007ee84 	.word	0xd007ee84
d007cba4:	d007edaa 	.word	0xd007edaa
d007cba8:	d007edb7 	.word	0xd007edb7
d007cbac:	d007ede5 	.word	0xd007ede5

d007cbb0 <fiprintf>:
d007cbb0:	b40e      	push	{r1, r2, r3}
d007cbb2:	b503      	push	{r0, r1, lr}
d007cbb4:	4601      	mov	r1, r0
d007cbb6:	ab03      	add	r3, sp, #12
d007cbb8:	4805      	ldr	r0, [pc, #20]	; (d007cbd0 <fiprintf+0x20>)
d007cbba:	f853 2b04 	ldr.w	r2, [r3], #4
d007cbbe:	6800      	ldr	r0, [r0, #0]
d007cbc0:	9301      	str	r3, [sp, #4]
d007cbc2:	f000 fa3f 	bl	d007d044 <_vfiprintf_r>
d007cbc6:	b002      	add	sp, #8
d007cbc8:	f85d eb04 	ldr.w	lr, [sp], #4
d007cbcc:	b003      	add	sp, #12
d007cbce:	4770      	bx	lr
d007cbd0:	d007ee84 	.word	0xd007ee84

d007cbd4 <malloc>:
d007cbd4:	4b02      	ldr	r3, [pc, #8]	; (d007cbe0 <malloc+0xc>)
d007cbd6:	4601      	mov	r1, r0
d007cbd8:	6818      	ldr	r0, [r3, #0]
d007cbda:	f000 b853 	b.w	d007cc84 <_malloc_r>
d007cbde:	bf00      	nop
d007cbe0:	d007ee84 	.word	0xd007ee84

d007cbe4 <_free_r>:
d007cbe4:	b537      	push	{r0, r1, r2, r4, r5, lr}
d007cbe6:	2900      	cmp	r1, #0
d007cbe8:	d048      	beq.n	d007cc7c <_free_r+0x98>
d007cbea:	f851 3c04 	ldr.w	r3, [r1, #-4]
d007cbee:	9001      	str	r0, [sp, #4]
d007cbf0:	2b00      	cmp	r3, #0
d007cbf2:	f1a1 0404 	sub.w	r4, r1, #4
d007cbf6:	bfb8      	it	lt
d007cbf8:	18e4      	addlt	r4, r4, r3
d007cbfa:	f001 f84b 	bl	d007dc94 <__malloc_lock>
d007cbfe:	4a20      	ldr	r2, [pc, #128]	; (d007cc80 <_free_r+0x9c>)
d007cc00:	9801      	ldr	r0, [sp, #4]
d007cc02:	6813      	ldr	r3, [r2, #0]
d007cc04:	4615      	mov	r5, r2
d007cc06:	b933      	cbnz	r3, d007cc16 <_free_r+0x32>
d007cc08:	6063      	str	r3, [r4, #4]
d007cc0a:	6014      	str	r4, [r2, #0]
d007cc0c:	b003      	add	sp, #12
d007cc0e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d007cc12:	f001 b845 	b.w	d007dca0 <__malloc_unlock>
d007cc16:	42a3      	cmp	r3, r4
d007cc18:	d90b      	bls.n	d007cc32 <_free_r+0x4e>
d007cc1a:	6821      	ldr	r1, [r4, #0]
d007cc1c:	1862      	adds	r2, r4, r1
d007cc1e:	4293      	cmp	r3, r2
d007cc20:	bf04      	itt	eq
d007cc22:	681a      	ldreq	r2, [r3, #0]
d007cc24:	685b      	ldreq	r3, [r3, #4]
d007cc26:	6063      	str	r3, [r4, #4]
d007cc28:	bf04      	itt	eq
d007cc2a:	1852      	addeq	r2, r2, r1
d007cc2c:	6022      	streq	r2, [r4, #0]
d007cc2e:	602c      	str	r4, [r5, #0]
d007cc30:	e7ec      	b.n	d007cc0c <_free_r+0x28>
d007cc32:	461a      	mov	r2, r3
d007cc34:	685b      	ldr	r3, [r3, #4]
d007cc36:	b10b      	cbz	r3, d007cc3c <_free_r+0x58>
d007cc38:	42a3      	cmp	r3, r4
d007cc3a:	d9fa      	bls.n	d007cc32 <_free_r+0x4e>
d007cc3c:	6811      	ldr	r1, [r2, #0]
d007cc3e:	1855      	adds	r5, r2, r1
d007cc40:	42a5      	cmp	r5, r4
d007cc42:	d10b      	bne.n	d007cc5c <_free_r+0x78>
d007cc44:	6824      	ldr	r4, [r4, #0]
d007cc46:	4421      	add	r1, r4
d007cc48:	1854      	adds	r4, r2, r1
d007cc4a:	42a3      	cmp	r3, r4
d007cc4c:	6011      	str	r1, [r2, #0]
d007cc4e:	d1dd      	bne.n	d007cc0c <_free_r+0x28>
d007cc50:	681c      	ldr	r4, [r3, #0]
d007cc52:	685b      	ldr	r3, [r3, #4]
d007cc54:	6053      	str	r3, [r2, #4]
d007cc56:	4421      	add	r1, r4
d007cc58:	6011      	str	r1, [r2, #0]
d007cc5a:	e7d7      	b.n	d007cc0c <_free_r+0x28>
d007cc5c:	d902      	bls.n	d007cc64 <_free_r+0x80>
d007cc5e:	230c      	movs	r3, #12
d007cc60:	6003      	str	r3, [r0, #0]
d007cc62:	e7d3      	b.n	d007cc0c <_free_r+0x28>
d007cc64:	6825      	ldr	r5, [r4, #0]
d007cc66:	1961      	adds	r1, r4, r5
d007cc68:	428b      	cmp	r3, r1
d007cc6a:	bf04      	itt	eq
d007cc6c:	6819      	ldreq	r1, [r3, #0]
d007cc6e:	685b      	ldreq	r3, [r3, #4]
d007cc70:	6063      	str	r3, [r4, #4]
d007cc72:	bf04      	itt	eq
d007cc74:	1949      	addeq	r1, r1, r5
d007cc76:	6021      	streq	r1, [r4, #0]
d007cc78:	6054      	str	r4, [r2, #4]
d007cc7a:	e7c7      	b.n	d007cc0c <_free_r+0x28>
d007cc7c:	b003      	add	sp, #12
d007cc7e:	bd30      	pop	{r4, r5, pc}
d007cc80:	d0083488 	.word	0xd0083488

d007cc84 <_malloc_r>:
d007cc84:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d007cc86:	1ccd      	adds	r5, r1, #3
d007cc88:	f025 0503 	bic.w	r5, r5, #3
d007cc8c:	3508      	adds	r5, #8
d007cc8e:	2d0c      	cmp	r5, #12
d007cc90:	bf38      	it	cc
d007cc92:	250c      	movcc	r5, #12
d007cc94:	2d00      	cmp	r5, #0
d007cc96:	4606      	mov	r6, r0
d007cc98:	db01      	blt.n	d007cc9e <_malloc_r+0x1a>
d007cc9a:	42a9      	cmp	r1, r5
d007cc9c:	d903      	bls.n	d007cca6 <_malloc_r+0x22>
d007cc9e:	230c      	movs	r3, #12
d007cca0:	6033      	str	r3, [r6, #0]
d007cca2:	2000      	movs	r0, #0
d007cca4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d007cca6:	f000 fff5 	bl	d007dc94 <__malloc_lock>
d007ccaa:	4921      	ldr	r1, [pc, #132]	; (d007cd30 <_malloc_r+0xac>)
d007ccac:	680a      	ldr	r2, [r1, #0]
d007ccae:	4614      	mov	r4, r2
d007ccb0:	b99c      	cbnz	r4, d007ccda <_malloc_r+0x56>
d007ccb2:	4f20      	ldr	r7, [pc, #128]	; (d007cd34 <_malloc_r+0xb0>)
d007ccb4:	683b      	ldr	r3, [r7, #0]
d007ccb6:	b923      	cbnz	r3, d007ccc2 <_malloc_r+0x3e>
d007ccb8:	4621      	mov	r1, r4
d007ccba:	4630      	mov	r0, r6
d007ccbc:	f000 fc86 	bl	d007d5cc <_sbrk_r>
d007ccc0:	6038      	str	r0, [r7, #0]
d007ccc2:	4629      	mov	r1, r5
d007ccc4:	4630      	mov	r0, r6
d007ccc6:	f000 fc81 	bl	d007d5cc <_sbrk_r>
d007ccca:	1c43      	adds	r3, r0, #1
d007cccc:	d123      	bne.n	d007cd16 <_malloc_r+0x92>
d007ccce:	230c      	movs	r3, #12
d007ccd0:	6033      	str	r3, [r6, #0]
d007ccd2:	4630      	mov	r0, r6
d007ccd4:	f000 ffe4 	bl	d007dca0 <__malloc_unlock>
d007ccd8:	e7e3      	b.n	d007cca2 <_malloc_r+0x1e>
d007ccda:	6823      	ldr	r3, [r4, #0]
d007ccdc:	1b5b      	subs	r3, r3, r5
d007ccde:	d417      	bmi.n	d007cd10 <_malloc_r+0x8c>
d007cce0:	2b0b      	cmp	r3, #11
d007cce2:	d903      	bls.n	d007ccec <_malloc_r+0x68>
d007cce4:	6023      	str	r3, [r4, #0]
d007cce6:	441c      	add	r4, r3
d007cce8:	6025      	str	r5, [r4, #0]
d007ccea:	e004      	b.n	d007ccf6 <_malloc_r+0x72>
d007ccec:	6863      	ldr	r3, [r4, #4]
d007ccee:	42a2      	cmp	r2, r4
d007ccf0:	bf0c      	ite	eq
d007ccf2:	600b      	streq	r3, [r1, #0]
d007ccf4:	6053      	strne	r3, [r2, #4]
d007ccf6:	4630      	mov	r0, r6
d007ccf8:	f000 ffd2 	bl	d007dca0 <__malloc_unlock>
d007ccfc:	f104 000b 	add.w	r0, r4, #11
d007cd00:	1d23      	adds	r3, r4, #4
d007cd02:	f020 0007 	bic.w	r0, r0, #7
d007cd06:	1ac2      	subs	r2, r0, r3
d007cd08:	d0cc      	beq.n	d007cca4 <_malloc_r+0x20>
d007cd0a:	1a1b      	subs	r3, r3, r0
d007cd0c:	50a3      	str	r3, [r4, r2]
d007cd0e:	e7c9      	b.n	d007cca4 <_malloc_r+0x20>
d007cd10:	4622      	mov	r2, r4
d007cd12:	6864      	ldr	r4, [r4, #4]
d007cd14:	e7cc      	b.n	d007ccb0 <_malloc_r+0x2c>
d007cd16:	1cc4      	adds	r4, r0, #3
d007cd18:	f024 0403 	bic.w	r4, r4, #3
d007cd1c:	42a0      	cmp	r0, r4
d007cd1e:	d0e3      	beq.n	d007cce8 <_malloc_r+0x64>
d007cd20:	1a21      	subs	r1, r4, r0
d007cd22:	4630      	mov	r0, r6
d007cd24:	f000 fc52 	bl	d007d5cc <_sbrk_r>
d007cd28:	3001      	adds	r0, #1
d007cd2a:	d1dd      	bne.n	d007cce8 <_malloc_r+0x64>
d007cd2c:	e7cf      	b.n	d007ccce <_malloc_r+0x4a>
d007cd2e:	bf00      	nop
d007cd30:	d0083488 	.word	0xd0083488
d007cd34:	d008348c 	.word	0xd008348c

d007cd38 <__ssputs_r>:
d007cd38:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d007cd3c:	688e      	ldr	r6, [r1, #8]
d007cd3e:	429e      	cmp	r6, r3
d007cd40:	4682      	mov	sl, r0
d007cd42:	460c      	mov	r4, r1
d007cd44:	4690      	mov	r8, r2
d007cd46:	461f      	mov	r7, r3
d007cd48:	d838      	bhi.n	d007cdbc <__ssputs_r+0x84>
d007cd4a:	898a      	ldrh	r2, [r1, #12]
d007cd4c:	f412 6f90 	tst.w	r2, #1152	; 0x480
d007cd50:	d032      	beq.n	d007cdb8 <__ssputs_r+0x80>
d007cd52:	6825      	ldr	r5, [r4, #0]
d007cd54:	6909      	ldr	r1, [r1, #16]
d007cd56:	eba5 0901 	sub.w	r9, r5, r1
d007cd5a:	6965      	ldr	r5, [r4, #20]
d007cd5c:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d007cd60:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d007cd64:	3301      	adds	r3, #1
d007cd66:	444b      	add	r3, r9
d007cd68:	106d      	asrs	r5, r5, #1
d007cd6a:	429d      	cmp	r5, r3
d007cd6c:	bf38      	it	cc
d007cd6e:	461d      	movcc	r5, r3
d007cd70:	0553      	lsls	r3, r2, #21
d007cd72:	d531      	bpl.n	d007cdd8 <__ssputs_r+0xa0>
d007cd74:	4629      	mov	r1, r5
d007cd76:	f7ff ff85 	bl	d007cc84 <_malloc_r>
d007cd7a:	4606      	mov	r6, r0
d007cd7c:	b950      	cbnz	r0, d007cd94 <__ssputs_r+0x5c>
d007cd7e:	230c      	movs	r3, #12
d007cd80:	f8ca 3000 	str.w	r3, [sl]
d007cd84:	89a3      	ldrh	r3, [r4, #12]
d007cd86:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d007cd8a:	81a3      	strh	r3, [r4, #12]
d007cd8c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d007cd90:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d007cd94:	6921      	ldr	r1, [r4, #16]
d007cd96:	464a      	mov	r2, r9
d007cd98:	f7ff fe76 	bl	d007ca88 <memcpy>
d007cd9c:	89a3      	ldrh	r3, [r4, #12]
d007cd9e:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d007cda2:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d007cda6:	81a3      	strh	r3, [r4, #12]
d007cda8:	6126      	str	r6, [r4, #16]
d007cdaa:	6165      	str	r5, [r4, #20]
d007cdac:	444e      	add	r6, r9
d007cdae:	eba5 0509 	sub.w	r5, r5, r9
d007cdb2:	6026      	str	r6, [r4, #0]
d007cdb4:	60a5      	str	r5, [r4, #8]
d007cdb6:	463e      	mov	r6, r7
d007cdb8:	42be      	cmp	r6, r7
d007cdba:	d900      	bls.n	d007cdbe <__ssputs_r+0x86>
d007cdbc:	463e      	mov	r6, r7
d007cdbe:	4632      	mov	r2, r6
d007cdc0:	6820      	ldr	r0, [r4, #0]
d007cdc2:	4641      	mov	r1, r8
d007cdc4:	f000 ff4c 	bl	d007dc60 <memmove>
d007cdc8:	68a3      	ldr	r3, [r4, #8]
d007cdca:	6822      	ldr	r2, [r4, #0]
d007cdcc:	1b9b      	subs	r3, r3, r6
d007cdce:	4432      	add	r2, r6
d007cdd0:	60a3      	str	r3, [r4, #8]
d007cdd2:	6022      	str	r2, [r4, #0]
d007cdd4:	2000      	movs	r0, #0
d007cdd6:	e7db      	b.n	d007cd90 <__ssputs_r+0x58>
d007cdd8:	462a      	mov	r2, r5
d007cdda:	f000 ff67 	bl	d007dcac <_realloc_r>
d007cdde:	4606      	mov	r6, r0
d007cde0:	2800      	cmp	r0, #0
d007cde2:	d1e1      	bne.n	d007cda8 <__ssputs_r+0x70>
d007cde4:	6921      	ldr	r1, [r4, #16]
d007cde6:	4650      	mov	r0, sl
d007cde8:	f7ff fefc 	bl	d007cbe4 <_free_r>
d007cdec:	e7c7      	b.n	d007cd7e <__ssputs_r+0x46>
	...

d007cdf0 <_svfiprintf_r>:
d007cdf0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d007cdf4:	4698      	mov	r8, r3
d007cdf6:	898b      	ldrh	r3, [r1, #12]
d007cdf8:	061b      	lsls	r3, r3, #24
d007cdfa:	b09d      	sub	sp, #116	; 0x74
d007cdfc:	4607      	mov	r7, r0
d007cdfe:	460d      	mov	r5, r1
d007ce00:	4614      	mov	r4, r2
d007ce02:	d50e      	bpl.n	d007ce22 <_svfiprintf_r+0x32>
d007ce04:	690b      	ldr	r3, [r1, #16]
d007ce06:	b963      	cbnz	r3, d007ce22 <_svfiprintf_r+0x32>
d007ce08:	2140      	movs	r1, #64	; 0x40
d007ce0a:	f7ff ff3b 	bl	d007cc84 <_malloc_r>
d007ce0e:	6028      	str	r0, [r5, #0]
d007ce10:	6128      	str	r0, [r5, #16]
d007ce12:	b920      	cbnz	r0, d007ce1e <_svfiprintf_r+0x2e>
d007ce14:	230c      	movs	r3, #12
d007ce16:	603b      	str	r3, [r7, #0]
d007ce18:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d007ce1c:	e0d1      	b.n	d007cfc2 <_svfiprintf_r+0x1d2>
d007ce1e:	2340      	movs	r3, #64	; 0x40
d007ce20:	616b      	str	r3, [r5, #20]
d007ce22:	2300      	movs	r3, #0
d007ce24:	9309      	str	r3, [sp, #36]	; 0x24
d007ce26:	2320      	movs	r3, #32
d007ce28:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d007ce2c:	f8cd 800c 	str.w	r8, [sp, #12]
d007ce30:	2330      	movs	r3, #48	; 0x30
d007ce32:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d007cfdc <_svfiprintf_r+0x1ec>
d007ce36:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d007ce3a:	f04f 0901 	mov.w	r9, #1
d007ce3e:	4623      	mov	r3, r4
d007ce40:	469a      	mov	sl, r3
d007ce42:	f813 2b01 	ldrb.w	r2, [r3], #1
d007ce46:	b10a      	cbz	r2, d007ce4c <_svfiprintf_r+0x5c>
d007ce48:	2a25      	cmp	r2, #37	; 0x25
d007ce4a:	d1f9      	bne.n	d007ce40 <_svfiprintf_r+0x50>
d007ce4c:	ebba 0b04 	subs.w	fp, sl, r4
d007ce50:	d00b      	beq.n	d007ce6a <_svfiprintf_r+0x7a>
d007ce52:	465b      	mov	r3, fp
d007ce54:	4622      	mov	r2, r4
d007ce56:	4629      	mov	r1, r5
d007ce58:	4638      	mov	r0, r7
d007ce5a:	f7ff ff6d 	bl	d007cd38 <__ssputs_r>
d007ce5e:	3001      	adds	r0, #1
d007ce60:	f000 80aa 	beq.w	d007cfb8 <_svfiprintf_r+0x1c8>
d007ce64:	9a09      	ldr	r2, [sp, #36]	; 0x24
d007ce66:	445a      	add	r2, fp
d007ce68:	9209      	str	r2, [sp, #36]	; 0x24
d007ce6a:	f89a 3000 	ldrb.w	r3, [sl]
d007ce6e:	2b00      	cmp	r3, #0
d007ce70:	f000 80a2 	beq.w	d007cfb8 <_svfiprintf_r+0x1c8>
d007ce74:	2300      	movs	r3, #0
d007ce76:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d007ce7a:	e9cd 2305 	strd	r2, r3, [sp, #20]
d007ce7e:	f10a 0a01 	add.w	sl, sl, #1
d007ce82:	9304      	str	r3, [sp, #16]
d007ce84:	9307      	str	r3, [sp, #28]
d007ce86:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d007ce8a:	931a      	str	r3, [sp, #104]	; 0x68
d007ce8c:	4654      	mov	r4, sl
d007ce8e:	2205      	movs	r2, #5
d007ce90:	f814 1b01 	ldrb.w	r1, [r4], #1
d007ce94:	4851      	ldr	r0, [pc, #324]	; (d007cfdc <_svfiprintf_r+0x1ec>)
d007ce96:	f000 fe93 	bl	d007dbc0 <memchr>
d007ce9a:	9a04      	ldr	r2, [sp, #16]
d007ce9c:	b9d8      	cbnz	r0, d007ced6 <_svfiprintf_r+0xe6>
d007ce9e:	06d0      	lsls	r0, r2, #27
d007cea0:	bf44      	itt	mi
d007cea2:	2320      	movmi	r3, #32
d007cea4:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d007cea8:	0711      	lsls	r1, r2, #28
d007ceaa:	bf44      	itt	mi
d007ceac:	232b      	movmi	r3, #43	; 0x2b
d007ceae:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d007ceb2:	f89a 3000 	ldrb.w	r3, [sl]
d007ceb6:	2b2a      	cmp	r3, #42	; 0x2a
d007ceb8:	d015      	beq.n	d007cee6 <_svfiprintf_r+0xf6>
d007ceba:	9a07      	ldr	r2, [sp, #28]
d007cebc:	4654      	mov	r4, sl
d007cebe:	2000      	movs	r0, #0
d007cec0:	f04f 0c0a 	mov.w	ip, #10
d007cec4:	4621      	mov	r1, r4
d007cec6:	f811 3b01 	ldrb.w	r3, [r1], #1
d007ceca:	3b30      	subs	r3, #48	; 0x30
d007cecc:	2b09      	cmp	r3, #9
d007cece:	d94e      	bls.n	d007cf6e <_svfiprintf_r+0x17e>
d007ced0:	b1b0      	cbz	r0, d007cf00 <_svfiprintf_r+0x110>
d007ced2:	9207      	str	r2, [sp, #28]
d007ced4:	e014      	b.n	d007cf00 <_svfiprintf_r+0x110>
d007ced6:	eba0 0308 	sub.w	r3, r0, r8
d007ceda:	fa09 f303 	lsl.w	r3, r9, r3
d007cede:	4313      	orrs	r3, r2
d007cee0:	9304      	str	r3, [sp, #16]
d007cee2:	46a2      	mov	sl, r4
d007cee4:	e7d2      	b.n	d007ce8c <_svfiprintf_r+0x9c>
d007cee6:	9b03      	ldr	r3, [sp, #12]
d007cee8:	1d19      	adds	r1, r3, #4
d007ceea:	681b      	ldr	r3, [r3, #0]
d007ceec:	9103      	str	r1, [sp, #12]
d007ceee:	2b00      	cmp	r3, #0
d007cef0:	bfbb      	ittet	lt
d007cef2:	425b      	neglt	r3, r3
d007cef4:	f042 0202 	orrlt.w	r2, r2, #2
d007cef8:	9307      	strge	r3, [sp, #28]
d007cefa:	9307      	strlt	r3, [sp, #28]
d007cefc:	bfb8      	it	lt
d007cefe:	9204      	strlt	r2, [sp, #16]
d007cf00:	7823      	ldrb	r3, [r4, #0]
d007cf02:	2b2e      	cmp	r3, #46	; 0x2e
d007cf04:	d10c      	bne.n	d007cf20 <_svfiprintf_r+0x130>
d007cf06:	7863      	ldrb	r3, [r4, #1]
d007cf08:	2b2a      	cmp	r3, #42	; 0x2a
d007cf0a:	d135      	bne.n	d007cf78 <_svfiprintf_r+0x188>
d007cf0c:	9b03      	ldr	r3, [sp, #12]
d007cf0e:	1d1a      	adds	r2, r3, #4
d007cf10:	681b      	ldr	r3, [r3, #0]
d007cf12:	9203      	str	r2, [sp, #12]
d007cf14:	2b00      	cmp	r3, #0
d007cf16:	bfb8      	it	lt
d007cf18:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d007cf1c:	3402      	adds	r4, #2
d007cf1e:	9305      	str	r3, [sp, #20]
d007cf20:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d007cfec <_svfiprintf_r+0x1fc>
d007cf24:	7821      	ldrb	r1, [r4, #0]
d007cf26:	2203      	movs	r2, #3
d007cf28:	4650      	mov	r0, sl
d007cf2a:	f000 fe49 	bl	d007dbc0 <memchr>
d007cf2e:	b140      	cbz	r0, d007cf42 <_svfiprintf_r+0x152>
d007cf30:	2340      	movs	r3, #64	; 0x40
d007cf32:	eba0 000a 	sub.w	r0, r0, sl
d007cf36:	fa03 f000 	lsl.w	r0, r3, r0
d007cf3a:	9b04      	ldr	r3, [sp, #16]
d007cf3c:	4303      	orrs	r3, r0
d007cf3e:	3401      	adds	r4, #1
d007cf40:	9304      	str	r3, [sp, #16]
d007cf42:	f814 1b01 	ldrb.w	r1, [r4], #1
d007cf46:	4826      	ldr	r0, [pc, #152]	; (d007cfe0 <_svfiprintf_r+0x1f0>)
d007cf48:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d007cf4c:	2206      	movs	r2, #6
d007cf4e:	f000 fe37 	bl	d007dbc0 <memchr>
d007cf52:	2800      	cmp	r0, #0
d007cf54:	d038      	beq.n	d007cfc8 <_svfiprintf_r+0x1d8>
d007cf56:	4b23      	ldr	r3, [pc, #140]	; (d007cfe4 <_svfiprintf_r+0x1f4>)
d007cf58:	bb1b      	cbnz	r3, d007cfa2 <_svfiprintf_r+0x1b2>
d007cf5a:	9b03      	ldr	r3, [sp, #12]
d007cf5c:	3307      	adds	r3, #7
d007cf5e:	f023 0307 	bic.w	r3, r3, #7
d007cf62:	3308      	adds	r3, #8
d007cf64:	9303      	str	r3, [sp, #12]
d007cf66:	9b09      	ldr	r3, [sp, #36]	; 0x24
d007cf68:	4433      	add	r3, r6
d007cf6a:	9309      	str	r3, [sp, #36]	; 0x24
d007cf6c:	e767      	b.n	d007ce3e <_svfiprintf_r+0x4e>
d007cf6e:	fb0c 3202 	mla	r2, ip, r2, r3
d007cf72:	460c      	mov	r4, r1
d007cf74:	2001      	movs	r0, #1
d007cf76:	e7a5      	b.n	d007cec4 <_svfiprintf_r+0xd4>
d007cf78:	2300      	movs	r3, #0
d007cf7a:	3401      	adds	r4, #1
d007cf7c:	9305      	str	r3, [sp, #20]
d007cf7e:	4619      	mov	r1, r3
d007cf80:	f04f 0c0a 	mov.w	ip, #10
d007cf84:	4620      	mov	r0, r4
d007cf86:	f810 2b01 	ldrb.w	r2, [r0], #1
d007cf8a:	3a30      	subs	r2, #48	; 0x30
d007cf8c:	2a09      	cmp	r2, #9
d007cf8e:	d903      	bls.n	d007cf98 <_svfiprintf_r+0x1a8>
d007cf90:	2b00      	cmp	r3, #0
d007cf92:	d0c5      	beq.n	d007cf20 <_svfiprintf_r+0x130>
d007cf94:	9105      	str	r1, [sp, #20]
d007cf96:	e7c3      	b.n	d007cf20 <_svfiprintf_r+0x130>
d007cf98:	fb0c 2101 	mla	r1, ip, r1, r2
d007cf9c:	4604      	mov	r4, r0
d007cf9e:	2301      	movs	r3, #1
d007cfa0:	e7f0      	b.n	d007cf84 <_svfiprintf_r+0x194>
d007cfa2:	ab03      	add	r3, sp, #12
d007cfa4:	9300      	str	r3, [sp, #0]
d007cfa6:	462a      	mov	r2, r5
d007cfa8:	4b0f      	ldr	r3, [pc, #60]	; (d007cfe8 <_svfiprintf_r+0x1f8>)
d007cfaa:	a904      	add	r1, sp, #16
d007cfac:	4638      	mov	r0, r7
d007cfae:	f3af 8000 	nop.w
d007cfb2:	1c42      	adds	r2, r0, #1
d007cfb4:	4606      	mov	r6, r0
d007cfb6:	d1d6      	bne.n	d007cf66 <_svfiprintf_r+0x176>
d007cfb8:	89ab      	ldrh	r3, [r5, #12]
d007cfba:	065b      	lsls	r3, r3, #25
d007cfbc:	f53f af2c 	bmi.w	d007ce18 <_svfiprintf_r+0x28>
d007cfc0:	9809      	ldr	r0, [sp, #36]	; 0x24
d007cfc2:	b01d      	add	sp, #116	; 0x74
d007cfc4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d007cfc8:	ab03      	add	r3, sp, #12
d007cfca:	9300      	str	r3, [sp, #0]
d007cfcc:	462a      	mov	r2, r5
d007cfce:	4b06      	ldr	r3, [pc, #24]	; (d007cfe8 <_svfiprintf_r+0x1f8>)
d007cfd0:	a904      	add	r1, sp, #16
d007cfd2:	4638      	mov	r0, r7
d007cfd4:	f000 f9d4 	bl	d007d380 <_printf_i>
d007cfd8:	e7eb      	b.n	d007cfb2 <_svfiprintf_r+0x1c2>
d007cfda:	bf00      	nop
d007cfdc:	d007ede6 	.word	0xd007ede6
d007cfe0:	d007edf0 	.word	0xd007edf0
d007cfe4:	00000000 	.word	0x00000000
d007cfe8:	d007cd39 	.word	0xd007cd39
d007cfec:	d007edec 	.word	0xd007edec

d007cff0 <__sfputc_r>:
d007cff0:	6893      	ldr	r3, [r2, #8]
d007cff2:	3b01      	subs	r3, #1
d007cff4:	2b00      	cmp	r3, #0
d007cff6:	b410      	push	{r4}
d007cff8:	6093      	str	r3, [r2, #8]
d007cffa:	da08      	bge.n	d007d00e <__sfputc_r+0x1e>
d007cffc:	6994      	ldr	r4, [r2, #24]
d007cffe:	42a3      	cmp	r3, r4
d007d000:	db01      	blt.n	d007d006 <__sfputc_r+0x16>
d007d002:	290a      	cmp	r1, #10
d007d004:	d103      	bne.n	d007d00e <__sfputc_r+0x1e>
d007d006:	f85d 4b04 	ldr.w	r4, [sp], #4
d007d00a:	f000 baef 	b.w	d007d5ec <__swbuf_r>
d007d00e:	6813      	ldr	r3, [r2, #0]
d007d010:	1c58      	adds	r0, r3, #1
d007d012:	6010      	str	r0, [r2, #0]
d007d014:	7019      	strb	r1, [r3, #0]
d007d016:	4608      	mov	r0, r1
d007d018:	f85d 4b04 	ldr.w	r4, [sp], #4
d007d01c:	4770      	bx	lr

d007d01e <__sfputs_r>:
d007d01e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d007d020:	4606      	mov	r6, r0
d007d022:	460f      	mov	r7, r1
d007d024:	4614      	mov	r4, r2
d007d026:	18d5      	adds	r5, r2, r3
d007d028:	42ac      	cmp	r4, r5
d007d02a:	d101      	bne.n	d007d030 <__sfputs_r+0x12>
d007d02c:	2000      	movs	r0, #0
d007d02e:	e007      	b.n	d007d040 <__sfputs_r+0x22>
d007d030:	f814 1b01 	ldrb.w	r1, [r4], #1
d007d034:	463a      	mov	r2, r7
d007d036:	4630      	mov	r0, r6
d007d038:	f7ff ffda 	bl	d007cff0 <__sfputc_r>
d007d03c:	1c43      	adds	r3, r0, #1
d007d03e:	d1f3      	bne.n	d007d028 <__sfputs_r+0xa>
d007d040:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d007d044 <_vfiprintf_r>:
d007d044:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d007d048:	460d      	mov	r5, r1
d007d04a:	b09d      	sub	sp, #116	; 0x74
d007d04c:	4614      	mov	r4, r2
d007d04e:	4698      	mov	r8, r3
d007d050:	4606      	mov	r6, r0
d007d052:	b118      	cbz	r0, d007d05c <_vfiprintf_r+0x18>
d007d054:	6983      	ldr	r3, [r0, #24]
d007d056:	b90b      	cbnz	r3, d007d05c <_vfiprintf_r+0x18>
d007d058:	f000 fcaa 	bl	d007d9b0 <__sinit>
d007d05c:	4b89      	ldr	r3, [pc, #548]	; (d007d284 <_vfiprintf_r+0x240>)
d007d05e:	429d      	cmp	r5, r3
d007d060:	d11b      	bne.n	d007d09a <_vfiprintf_r+0x56>
d007d062:	6875      	ldr	r5, [r6, #4]
d007d064:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d007d066:	07d9      	lsls	r1, r3, #31
d007d068:	d405      	bmi.n	d007d076 <_vfiprintf_r+0x32>
d007d06a:	89ab      	ldrh	r3, [r5, #12]
d007d06c:	059a      	lsls	r2, r3, #22
d007d06e:	d402      	bmi.n	d007d076 <_vfiprintf_r+0x32>
d007d070:	6da8      	ldr	r0, [r5, #88]	; 0x58
d007d072:	f000 fd3b 	bl	d007daec <__retarget_lock_acquire_recursive>
d007d076:	89ab      	ldrh	r3, [r5, #12]
d007d078:	071b      	lsls	r3, r3, #28
d007d07a:	d501      	bpl.n	d007d080 <_vfiprintf_r+0x3c>
d007d07c:	692b      	ldr	r3, [r5, #16]
d007d07e:	b9eb      	cbnz	r3, d007d0bc <_vfiprintf_r+0x78>
d007d080:	4629      	mov	r1, r5
d007d082:	4630      	mov	r0, r6
d007d084:	f000 fb04 	bl	d007d690 <__swsetup_r>
d007d088:	b1c0      	cbz	r0, d007d0bc <_vfiprintf_r+0x78>
d007d08a:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d007d08c:	07dc      	lsls	r4, r3, #31
d007d08e:	d50e      	bpl.n	d007d0ae <_vfiprintf_r+0x6a>
d007d090:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d007d094:	b01d      	add	sp, #116	; 0x74
d007d096:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d007d09a:	4b7b      	ldr	r3, [pc, #492]	; (d007d288 <_vfiprintf_r+0x244>)
d007d09c:	429d      	cmp	r5, r3
d007d09e:	d101      	bne.n	d007d0a4 <_vfiprintf_r+0x60>
d007d0a0:	68b5      	ldr	r5, [r6, #8]
d007d0a2:	e7df      	b.n	d007d064 <_vfiprintf_r+0x20>
d007d0a4:	4b79      	ldr	r3, [pc, #484]	; (d007d28c <_vfiprintf_r+0x248>)
d007d0a6:	429d      	cmp	r5, r3
d007d0a8:	bf08      	it	eq
d007d0aa:	68f5      	ldreq	r5, [r6, #12]
d007d0ac:	e7da      	b.n	d007d064 <_vfiprintf_r+0x20>
d007d0ae:	89ab      	ldrh	r3, [r5, #12]
d007d0b0:	0598      	lsls	r0, r3, #22
d007d0b2:	d4ed      	bmi.n	d007d090 <_vfiprintf_r+0x4c>
d007d0b4:	6da8      	ldr	r0, [r5, #88]	; 0x58
d007d0b6:	f000 fd1a 	bl	d007daee <__retarget_lock_release_recursive>
d007d0ba:	e7e9      	b.n	d007d090 <_vfiprintf_r+0x4c>
d007d0bc:	2300      	movs	r3, #0
d007d0be:	9309      	str	r3, [sp, #36]	; 0x24
d007d0c0:	2320      	movs	r3, #32
d007d0c2:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d007d0c6:	f8cd 800c 	str.w	r8, [sp, #12]
d007d0ca:	2330      	movs	r3, #48	; 0x30
d007d0cc:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d007d290 <_vfiprintf_r+0x24c>
d007d0d0:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d007d0d4:	f04f 0901 	mov.w	r9, #1
d007d0d8:	4623      	mov	r3, r4
d007d0da:	469a      	mov	sl, r3
d007d0dc:	f813 2b01 	ldrb.w	r2, [r3], #1
d007d0e0:	b10a      	cbz	r2, d007d0e6 <_vfiprintf_r+0xa2>
d007d0e2:	2a25      	cmp	r2, #37	; 0x25
d007d0e4:	d1f9      	bne.n	d007d0da <_vfiprintf_r+0x96>
d007d0e6:	ebba 0b04 	subs.w	fp, sl, r4
d007d0ea:	d00b      	beq.n	d007d104 <_vfiprintf_r+0xc0>
d007d0ec:	465b      	mov	r3, fp
d007d0ee:	4622      	mov	r2, r4
d007d0f0:	4629      	mov	r1, r5
d007d0f2:	4630      	mov	r0, r6
d007d0f4:	f7ff ff93 	bl	d007d01e <__sfputs_r>
d007d0f8:	3001      	adds	r0, #1
d007d0fa:	f000 80aa 	beq.w	d007d252 <_vfiprintf_r+0x20e>
d007d0fe:	9a09      	ldr	r2, [sp, #36]	; 0x24
d007d100:	445a      	add	r2, fp
d007d102:	9209      	str	r2, [sp, #36]	; 0x24
d007d104:	f89a 3000 	ldrb.w	r3, [sl]
d007d108:	2b00      	cmp	r3, #0
d007d10a:	f000 80a2 	beq.w	d007d252 <_vfiprintf_r+0x20e>
d007d10e:	2300      	movs	r3, #0
d007d110:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d007d114:	e9cd 2305 	strd	r2, r3, [sp, #20]
d007d118:	f10a 0a01 	add.w	sl, sl, #1
d007d11c:	9304      	str	r3, [sp, #16]
d007d11e:	9307      	str	r3, [sp, #28]
d007d120:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d007d124:	931a      	str	r3, [sp, #104]	; 0x68
d007d126:	4654      	mov	r4, sl
d007d128:	2205      	movs	r2, #5
d007d12a:	f814 1b01 	ldrb.w	r1, [r4], #1
d007d12e:	4858      	ldr	r0, [pc, #352]	; (d007d290 <_vfiprintf_r+0x24c>)
d007d130:	f000 fd46 	bl	d007dbc0 <memchr>
d007d134:	9a04      	ldr	r2, [sp, #16]
d007d136:	b9d8      	cbnz	r0, d007d170 <_vfiprintf_r+0x12c>
d007d138:	06d1      	lsls	r1, r2, #27
d007d13a:	bf44      	itt	mi
d007d13c:	2320      	movmi	r3, #32
d007d13e:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d007d142:	0713      	lsls	r3, r2, #28
d007d144:	bf44      	itt	mi
d007d146:	232b      	movmi	r3, #43	; 0x2b
d007d148:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d007d14c:	f89a 3000 	ldrb.w	r3, [sl]
d007d150:	2b2a      	cmp	r3, #42	; 0x2a
d007d152:	d015      	beq.n	d007d180 <_vfiprintf_r+0x13c>
d007d154:	9a07      	ldr	r2, [sp, #28]
d007d156:	4654      	mov	r4, sl
d007d158:	2000      	movs	r0, #0
d007d15a:	f04f 0c0a 	mov.w	ip, #10
d007d15e:	4621      	mov	r1, r4
d007d160:	f811 3b01 	ldrb.w	r3, [r1], #1
d007d164:	3b30      	subs	r3, #48	; 0x30
d007d166:	2b09      	cmp	r3, #9
d007d168:	d94e      	bls.n	d007d208 <_vfiprintf_r+0x1c4>
d007d16a:	b1b0      	cbz	r0, d007d19a <_vfiprintf_r+0x156>
d007d16c:	9207      	str	r2, [sp, #28]
d007d16e:	e014      	b.n	d007d19a <_vfiprintf_r+0x156>
d007d170:	eba0 0308 	sub.w	r3, r0, r8
d007d174:	fa09 f303 	lsl.w	r3, r9, r3
d007d178:	4313      	orrs	r3, r2
d007d17a:	9304      	str	r3, [sp, #16]
d007d17c:	46a2      	mov	sl, r4
d007d17e:	e7d2      	b.n	d007d126 <_vfiprintf_r+0xe2>
d007d180:	9b03      	ldr	r3, [sp, #12]
d007d182:	1d19      	adds	r1, r3, #4
d007d184:	681b      	ldr	r3, [r3, #0]
d007d186:	9103      	str	r1, [sp, #12]
d007d188:	2b00      	cmp	r3, #0
d007d18a:	bfbb      	ittet	lt
d007d18c:	425b      	neglt	r3, r3
d007d18e:	f042 0202 	orrlt.w	r2, r2, #2
d007d192:	9307      	strge	r3, [sp, #28]
d007d194:	9307      	strlt	r3, [sp, #28]
d007d196:	bfb8      	it	lt
d007d198:	9204      	strlt	r2, [sp, #16]
d007d19a:	7823      	ldrb	r3, [r4, #0]
d007d19c:	2b2e      	cmp	r3, #46	; 0x2e
d007d19e:	d10c      	bne.n	d007d1ba <_vfiprintf_r+0x176>
d007d1a0:	7863      	ldrb	r3, [r4, #1]
d007d1a2:	2b2a      	cmp	r3, #42	; 0x2a
d007d1a4:	d135      	bne.n	d007d212 <_vfiprintf_r+0x1ce>
d007d1a6:	9b03      	ldr	r3, [sp, #12]
d007d1a8:	1d1a      	adds	r2, r3, #4
d007d1aa:	681b      	ldr	r3, [r3, #0]
d007d1ac:	9203      	str	r2, [sp, #12]
d007d1ae:	2b00      	cmp	r3, #0
d007d1b0:	bfb8      	it	lt
d007d1b2:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d007d1b6:	3402      	adds	r4, #2
d007d1b8:	9305      	str	r3, [sp, #20]
d007d1ba:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d007d2a0 <_vfiprintf_r+0x25c>
d007d1be:	7821      	ldrb	r1, [r4, #0]
d007d1c0:	2203      	movs	r2, #3
d007d1c2:	4650      	mov	r0, sl
d007d1c4:	f000 fcfc 	bl	d007dbc0 <memchr>
d007d1c8:	b140      	cbz	r0, d007d1dc <_vfiprintf_r+0x198>
d007d1ca:	2340      	movs	r3, #64	; 0x40
d007d1cc:	eba0 000a 	sub.w	r0, r0, sl
d007d1d0:	fa03 f000 	lsl.w	r0, r3, r0
d007d1d4:	9b04      	ldr	r3, [sp, #16]
d007d1d6:	4303      	orrs	r3, r0
d007d1d8:	3401      	adds	r4, #1
d007d1da:	9304      	str	r3, [sp, #16]
d007d1dc:	f814 1b01 	ldrb.w	r1, [r4], #1
d007d1e0:	482c      	ldr	r0, [pc, #176]	; (d007d294 <_vfiprintf_r+0x250>)
d007d1e2:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d007d1e6:	2206      	movs	r2, #6
d007d1e8:	f000 fcea 	bl	d007dbc0 <memchr>
d007d1ec:	2800      	cmp	r0, #0
d007d1ee:	d03f      	beq.n	d007d270 <_vfiprintf_r+0x22c>
d007d1f0:	4b29      	ldr	r3, [pc, #164]	; (d007d298 <_vfiprintf_r+0x254>)
d007d1f2:	bb1b      	cbnz	r3, d007d23c <_vfiprintf_r+0x1f8>
d007d1f4:	9b03      	ldr	r3, [sp, #12]
d007d1f6:	3307      	adds	r3, #7
d007d1f8:	f023 0307 	bic.w	r3, r3, #7
d007d1fc:	3308      	adds	r3, #8
d007d1fe:	9303      	str	r3, [sp, #12]
d007d200:	9b09      	ldr	r3, [sp, #36]	; 0x24
d007d202:	443b      	add	r3, r7
d007d204:	9309      	str	r3, [sp, #36]	; 0x24
d007d206:	e767      	b.n	d007d0d8 <_vfiprintf_r+0x94>
d007d208:	fb0c 3202 	mla	r2, ip, r2, r3
d007d20c:	460c      	mov	r4, r1
d007d20e:	2001      	movs	r0, #1
d007d210:	e7a5      	b.n	d007d15e <_vfiprintf_r+0x11a>
d007d212:	2300      	movs	r3, #0
d007d214:	3401      	adds	r4, #1
d007d216:	9305      	str	r3, [sp, #20]
d007d218:	4619      	mov	r1, r3
d007d21a:	f04f 0c0a 	mov.w	ip, #10
d007d21e:	4620      	mov	r0, r4
d007d220:	f810 2b01 	ldrb.w	r2, [r0], #1
d007d224:	3a30      	subs	r2, #48	; 0x30
d007d226:	2a09      	cmp	r2, #9
d007d228:	d903      	bls.n	d007d232 <_vfiprintf_r+0x1ee>
d007d22a:	2b00      	cmp	r3, #0
d007d22c:	d0c5      	beq.n	d007d1ba <_vfiprintf_r+0x176>
d007d22e:	9105      	str	r1, [sp, #20]
d007d230:	e7c3      	b.n	d007d1ba <_vfiprintf_r+0x176>
d007d232:	fb0c 2101 	mla	r1, ip, r1, r2
d007d236:	4604      	mov	r4, r0
d007d238:	2301      	movs	r3, #1
d007d23a:	e7f0      	b.n	d007d21e <_vfiprintf_r+0x1da>
d007d23c:	ab03      	add	r3, sp, #12
d007d23e:	9300      	str	r3, [sp, #0]
d007d240:	462a      	mov	r2, r5
d007d242:	4b16      	ldr	r3, [pc, #88]	; (d007d29c <_vfiprintf_r+0x258>)
d007d244:	a904      	add	r1, sp, #16
d007d246:	4630      	mov	r0, r6
d007d248:	f3af 8000 	nop.w
d007d24c:	4607      	mov	r7, r0
d007d24e:	1c78      	adds	r0, r7, #1
d007d250:	d1d6      	bne.n	d007d200 <_vfiprintf_r+0x1bc>
d007d252:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d007d254:	07d9      	lsls	r1, r3, #31
d007d256:	d405      	bmi.n	d007d264 <_vfiprintf_r+0x220>
d007d258:	89ab      	ldrh	r3, [r5, #12]
d007d25a:	059a      	lsls	r2, r3, #22
d007d25c:	d402      	bmi.n	d007d264 <_vfiprintf_r+0x220>
d007d25e:	6da8      	ldr	r0, [r5, #88]	; 0x58
d007d260:	f000 fc45 	bl	d007daee <__retarget_lock_release_recursive>
d007d264:	89ab      	ldrh	r3, [r5, #12]
d007d266:	065b      	lsls	r3, r3, #25
d007d268:	f53f af12 	bmi.w	d007d090 <_vfiprintf_r+0x4c>
d007d26c:	9809      	ldr	r0, [sp, #36]	; 0x24
d007d26e:	e711      	b.n	d007d094 <_vfiprintf_r+0x50>
d007d270:	ab03      	add	r3, sp, #12
d007d272:	9300      	str	r3, [sp, #0]
d007d274:	462a      	mov	r2, r5
d007d276:	4b09      	ldr	r3, [pc, #36]	; (d007d29c <_vfiprintf_r+0x258>)
d007d278:	a904      	add	r1, sp, #16
d007d27a:	4630      	mov	r0, r6
d007d27c:	f000 f880 	bl	d007d380 <_printf_i>
d007d280:	e7e4      	b.n	d007d24c <_vfiprintf_r+0x208>
d007d282:	bf00      	nop
d007d284:	d007ee3c 	.word	0xd007ee3c
d007d288:	d007ee5c 	.word	0xd007ee5c
d007d28c:	d007ee1c 	.word	0xd007ee1c
d007d290:	d007ede6 	.word	0xd007ede6
d007d294:	d007edf0 	.word	0xd007edf0
d007d298:	00000000 	.word	0x00000000
d007d29c:	d007d01f 	.word	0xd007d01f
d007d2a0:	d007edec 	.word	0xd007edec

d007d2a4 <_printf_common>:
d007d2a4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d007d2a8:	4616      	mov	r6, r2
d007d2aa:	4699      	mov	r9, r3
d007d2ac:	688a      	ldr	r2, [r1, #8]
d007d2ae:	690b      	ldr	r3, [r1, #16]
d007d2b0:	f8dd 8020 	ldr.w	r8, [sp, #32]
d007d2b4:	4293      	cmp	r3, r2
d007d2b6:	bfb8      	it	lt
d007d2b8:	4613      	movlt	r3, r2
d007d2ba:	6033      	str	r3, [r6, #0]
d007d2bc:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d007d2c0:	4607      	mov	r7, r0
d007d2c2:	460c      	mov	r4, r1
d007d2c4:	b10a      	cbz	r2, d007d2ca <_printf_common+0x26>
d007d2c6:	3301      	adds	r3, #1
d007d2c8:	6033      	str	r3, [r6, #0]
d007d2ca:	6823      	ldr	r3, [r4, #0]
d007d2cc:	0699      	lsls	r1, r3, #26
d007d2ce:	bf42      	ittt	mi
d007d2d0:	6833      	ldrmi	r3, [r6, #0]
d007d2d2:	3302      	addmi	r3, #2
d007d2d4:	6033      	strmi	r3, [r6, #0]
d007d2d6:	6825      	ldr	r5, [r4, #0]
d007d2d8:	f015 0506 	ands.w	r5, r5, #6
d007d2dc:	d106      	bne.n	d007d2ec <_printf_common+0x48>
d007d2de:	f104 0a19 	add.w	sl, r4, #25
d007d2e2:	68e3      	ldr	r3, [r4, #12]
d007d2e4:	6832      	ldr	r2, [r6, #0]
d007d2e6:	1a9b      	subs	r3, r3, r2
d007d2e8:	42ab      	cmp	r3, r5
d007d2ea:	dc26      	bgt.n	d007d33a <_printf_common+0x96>
d007d2ec:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d007d2f0:	1e13      	subs	r3, r2, #0
d007d2f2:	6822      	ldr	r2, [r4, #0]
d007d2f4:	bf18      	it	ne
d007d2f6:	2301      	movne	r3, #1
d007d2f8:	0692      	lsls	r2, r2, #26
d007d2fa:	d42b      	bmi.n	d007d354 <_printf_common+0xb0>
d007d2fc:	f104 0243 	add.w	r2, r4, #67	; 0x43
d007d300:	4649      	mov	r1, r9
d007d302:	4638      	mov	r0, r7
d007d304:	47c0      	blx	r8
d007d306:	3001      	adds	r0, #1
d007d308:	d01e      	beq.n	d007d348 <_printf_common+0xa4>
d007d30a:	6823      	ldr	r3, [r4, #0]
d007d30c:	68e5      	ldr	r5, [r4, #12]
d007d30e:	6832      	ldr	r2, [r6, #0]
d007d310:	f003 0306 	and.w	r3, r3, #6
d007d314:	2b04      	cmp	r3, #4
d007d316:	bf08      	it	eq
d007d318:	1aad      	subeq	r5, r5, r2
d007d31a:	68a3      	ldr	r3, [r4, #8]
d007d31c:	6922      	ldr	r2, [r4, #16]
d007d31e:	bf0c      	ite	eq
d007d320:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d007d324:	2500      	movne	r5, #0
d007d326:	4293      	cmp	r3, r2
d007d328:	bfc4      	itt	gt
d007d32a:	1a9b      	subgt	r3, r3, r2
d007d32c:	18ed      	addgt	r5, r5, r3
d007d32e:	2600      	movs	r6, #0
d007d330:	341a      	adds	r4, #26
d007d332:	42b5      	cmp	r5, r6
d007d334:	d11a      	bne.n	d007d36c <_printf_common+0xc8>
d007d336:	2000      	movs	r0, #0
d007d338:	e008      	b.n	d007d34c <_printf_common+0xa8>
d007d33a:	2301      	movs	r3, #1
d007d33c:	4652      	mov	r2, sl
d007d33e:	4649      	mov	r1, r9
d007d340:	4638      	mov	r0, r7
d007d342:	47c0      	blx	r8
d007d344:	3001      	adds	r0, #1
d007d346:	d103      	bne.n	d007d350 <_printf_common+0xac>
d007d348:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d007d34c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d007d350:	3501      	adds	r5, #1
d007d352:	e7c6      	b.n	d007d2e2 <_printf_common+0x3e>
d007d354:	18e1      	adds	r1, r4, r3
d007d356:	1c5a      	adds	r2, r3, #1
d007d358:	2030      	movs	r0, #48	; 0x30
d007d35a:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d007d35e:	4422      	add	r2, r4
d007d360:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d007d364:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d007d368:	3302      	adds	r3, #2
d007d36a:	e7c7      	b.n	d007d2fc <_printf_common+0x58>
d007d36c:	2301      	movs	r3, #1
d007d36e:	4622      	mov	r2, r4
d007d370:	4649      	mov	r1, r9
d007d372:	4638      	mov	r0, r7
d007d374:	47c0      	blx	r8
d007d376:	3001      	adds	r0, #1
d007d378:	d0e6      	beq.n	d007d348 <_printf_common+0xa4>
d007d37a:	3601      	adds	r6, #1
d007d37c:	e7d9      	b.n	d007d332 <_printf_common+0x8e>
	...

d007d380 <_printf_i>:
d007d380:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d007d384:	460c      	mov	r4, r1
d007d386:	4691      	mov	r9, r2
d007d388:	7e27      	ldrb	r7, [r4, #24]
d007d38a:	990c      	ldr	r1, [sp, #48]	; 0x30
d007d38c:	2f78      	cmp	r7, #120	; 0x78
d007d38e:	4680      	mov	r8, r0
d007d390:	469a      	mov	sl, r3
d007d392:	f104 0243 	add.w	r2, r4, #67	; 0x43
d007d396:	d807      	bhi.n	d007d3a8 <_printf_i+0x28>
d007d398:	2f62      	cmp	r7, #98	; 0x62
d007d39a:	d80a      	bhi.n	d007d3b2 <_printf_i+0x32>
d007d39c:	2f00      	cmp	r7, #0
d007d39e:	f000 80d8 	beq.w	d007d552 <_printf_i+0x1d2>
d007d3a2:	2f58      	cmp	r7, #88	; 0x58
d007d3a4:	f000 80a3 	beq.w	d007d4ee <_printf_i+0x16e>
d007d3a8:	f104 0642 	add.w	r6, r4, #66	; 0x42
d007d3ac:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d007d3b0:	e03a      	b.n	d007d428 <_printf_i+0xa8>
d007d3b2:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d007d3b6:	2b15      	cmp	r3, #21
d007d3b8:	d8f6      	bhi.n	d007d3a8 <_printf_i+0x28>
d007d3ba:	a001      	add	r0, pc, #4	; (adr r0, d007d3c0 <_printf_i+0x40>)
d007d3bc:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d007d3c0:	d007d419 	.word	0xd007d419
d007d3c4:	d007d42d 	.word	0xd007d42d
d007d3c8:	d007d3a9 	.word	0xd007d3a9
d007d3cc:	d007d3a9 	.word	0xd007d3a9
d007d3d0:	d007d3a9 	.word	0xd007d3a9
d007d3d4:	d007d3a9 	.word	0xd007d3a9
d007d3d8:	d007d42d 	.word	0xd007d42d
d007d3dc:	d007d3a9 	.word	0xd007d3a9
d007d3e0:	d007d3a9 	.word	0xd007d3a9
d007d3e4:	d007d3a9 	.word	0xd007d3a9
d007d3e8:	d007d3a9 	.word	0xd007d3a9
d007d3ec:	d007d539 	.word	0xd007d539
d007d3f0:	d007d45d 	.word	0xd007d45d
d007d3f4:	d007d51b 	.word	0xd007d51b
d007d3f8:	d007d3a9 	.word	0xd007d3a9
d007d3fc:	d007d3a9 	.word	0xd007d3a9
d007d400:	d007d55b 	.word	0xd007d55b
d007d404:	d007d3a9 	.word	0xd007d3a9
d007d408:	d007d45d 	.word	0xd007d45d
d007d40c:	d007d3a9 	.word	0xd007d3a9
d007d410:	d007d3a9 	.word	0xd007d3a9
d007d414:	d007d523 	.word	0xd007d523
d007d418:	680b      	ldr	r3, [r1, #0]
d007d41a:	1d1a      	adds	r2, r3, #4
d007d41c:	681b      	ldr	r3, [r3, #0]
d007d41e:	600a      	str	r2, [r1, #0]
d007d420:	f104 0642 	add.w	r6, r4, #66	; 0x42
d007d424:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d007d428:	2301      	movs	r3, #1
d007d42a:	e0a3      	b.n	d007d574 <_printf_i+0x1f4>
d007d42c:	6825      	ldr	r5, [r4, #0]
d007d42e:	6808      	ldr	r0, [r1, #0]
d007d430:	062e      	lsls	r6, r5, #24
d007d432:	f100 0304 	add.w	r3, r0, #4
d007d436:	d50a      	bpl.n	d007d44e <_printf_i+0xce>
d007d438:	6805      	ldr	r5, [r0, #0]
d007d43a:	600b      	str	r3, [r1, #0]
d007d43c:	2d00      	cmp	r5, #0
d007d43e:	da03      	bge.n	d007d448 <_printf_i+0xc8>
d007d440:	232d      	movs	r3, #45	; 0x2d
d007d442:	426d      	negs	r5, r5
d007d444:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d007d448:	485e      	ldr	r0, [pc, #376]	; (d007d5c4 <_printf_i+0x244>)
d007d44a:	230a      	movs	r3, #10
d007d44c:	e019      	b.n	d007d482 <_printf_i+0x102>
d007d44e:	f015 0f40 	tst.w	r5, #64	; 0x40
d007d452:	6805      	ldr	r5, [r0, #0]
d007d454:	600b      	str	r3, [r1, #0]
d007d456:	bf18      	it	ne
d007d458:	b22d      	sxthne	r5, r5
d007d45a:	e7ef      	b.n	d007d43c <_printf_i+0xbc>
d007d45c:	680b      	ldr	r3, [r1, #0]
d007d45e:	6825      	ldr	r5, [r4, #0]
d007d460:	1d18      	adds	r0, r3, #4
d007d462:	6008      	str	r0, [r1, #0]
d007d464:	0628      	lsls	r0, r5, #24
d007d466:	d501      	bpl.n	d007d46c <_printf_i+0xec>
d007d468:	681d      	ldr	r5, [r3, #0]
d007d46a:	e002      	b.n	d007d472 <_printf_i+0xf2>
d007d46c:	0669      	lsls	r1, r5, #25
d007d46e:	d5fb      	bpl.n	d007d468 <_printf_i+0xe8>
d007d470:	881d      	ldrh	r5, [r3, #0]
d007d472:	4854      	ldr	r0, [pc, #336]	; (d007d5c4 <_printf_i+0x244>)
d007d474:	2f6f      	cmp	r7, #111	; 0x6f
d007d476:	bf0c      	ite	eq
d007d478:	2308      	moveq	r3, #8
d007d47a:	230a      	movne	r3, #10
d007d47c:	2100      	movs	r1, #0
d007d47e:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d007d482:	6866      	ldr	r6, [r4, #4]
d007d484:	60a6      	str	r6, [r4, #8]
d007d486:	2e00      	cmp	r6, #0
d007d488:	bfa2      	ittt	ge
d007d48a:	6821      	ldrge	r1, [r4, #0]
d007d48c:	f021 0104 	bicge.w	r1, r1, #4
d007d490:	6021      	strge	r1, [r4, #0]
d007d492:	b90d      	cbnz	r5, d007d498 <_printf_i+0x118>
d007d494:	2e00      	cmp	r6, #0
d007d496:	d04d      	beq.n	d007d534 <_printf_i+0x1b4>
d007d498:	4616      	mov	r6, r2
d007d49a:	fbb5 f1f3 	udiv	r1, r5, r3
d007d49e:	fb03 5711 	mls	r7, r3, r1, r5
d007d4a2:	5dc7      	ldrb	r7, [r0, r7]
d007d4a4:	f806 7d01 	strb.w	r7, [r6, #-1]!
d007d4a8:	462f      	mov	r7, r5
d007d4aa:	42bb      	cmp	r3, r7
d007d4ac:	460d      	mov	r5, r1
d007d4ae:	d9f4      	bls.n	d007d49a <_printf_i+0x11a>
d007d4b0:	2b08      	cmp	r3, #8
d007d4b2:	d10b      	bne.n	d007d4cc <_printf_i+0x14c>
d007d4b4:	6823      	ldr	r3, [r4, #0]
d007d4b6:	07df      	lsls	r7, r3, #31
d007d4b8:	d508      	bpl.n	d007d4cc <_printf_i+0x14c>
d007d4ba:	6923      	ldr	r3, [r4, #16]
d007d4bc:	6861      	ldr	r1, [r4, #4]
d007d4be:	4299      	cmp	r1, r3
d007d4c0:	bfde      	ittt	le
d007d4c2:	2330      	movle	r3, #48	; 0x30
d007d4c4:	f806 3c01 	strble.w	r3, [r6, #-1]
d007d4c8:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d007d4cc:	1b92      	subs	r2, r2, r6
d007d4ce:	6122      	str	r2, [r4, #16]
d007d4d0:	f8cd a000 	str.w	sl, [sp]
d007d4d4:	464b      	mov	r3, r9
d007d4d6:	aa03      	add	r2, sp, #12
d007d4d8:	4621      	mov	r1, r4
d007d4da:	4640      	mov	r0, r8
d007d4dc:	f7ff fee2 	bl	d007d2a4 <_printf_common>
d007d4e0:	3001      	adds	r0, #1
d007d4e2:	d14c      	bne.n	d007d57e <_printf_i+0x1fe>
d007d4e4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d007d4e8:	b004      	add	sp, #16
d007d4ea:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d007d4ee:	4835      	ldr	r0, [pc, #212]	; (d007d5c4 <_printf_i+0x244>)
d007d4f0:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d007d4f4:	6823      	ldr	r3, [r4, #0]
d007d4f6:	680e      	ldr	r6, [r1, #0]
d007d4f8:	061f      	lsls	r7, r3, #24
d007d4fa:	f856 5b04 	ldr.w	r5, [r6], #4
d007d4fe:	600e      	str	r6, [r1, #0]
d007d500:	d514      	bpl.n	d007d52c <_printf_i+0x1ac>
d007d502:	07d9      	lsls	r1, r3, #31
d007d504:	bf44      	itt	mi
d007d506:	f043 0320 	orrmi.w	r3, r3, #32
d007d50a:	6023      	strmi	r3, [r4, #0]
d007d50c:	b91d      	cbnz	r5, d007d516 <_printf_i+0x196>
d007d50e:	6823      	ldr	r3, [r4, #0]
d007d510:	f023 0320 	bic.w	r3, r3, #32
d007d514:	6023      	str	r3, [r4, #0]
d007d516:	2310      	movs	r3, #16
d007d518:	e7b0      	b.n	d007d47c <_printf_i+0xfc>
d007d51a:	6823      	ldr	r3, [r4, #0]
d007d51c:	f043 0320 	orr.w	r3, r3, #32
d007d520:	6023      	str	r3, [r4, #0]
d007d522:	2378      	movs	r3, #120	; 0x78
d007d524:	4828      	ldr	r0, [pc, #160]	; (d007d5c8 <_printf_i+0x248>)
d007d526:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d007d52a:	e7e3      	b.n	d007d4f4 <_printf_i+0x174>
d007d52c:	065e      	lsls	r6, r3, #25
d007d52e:	bf48      	it	mi
d007d530:	b2ad      	uxthmi	r5, r5
d007d532:	e7e6      	b.n	d007d502 <_printf_i+0x182>
d007d534:	4616      	mov	r6, r2
d007d536:	e7bb      	b.n	d007d4b0 <_printf_i+0x130>
d007d538:	680b      	ldr	r3, [r1, #0]
d007d53a:	6826      	ldr	r6, [r4, #0]
d007d53c:	6960      	ldr	r0, [r4, #20]
d007d53e:	1d1d      	adds	r5, r3, #4
d007d540:	600d      	str	r5, [r1, #0]
d007d542:	0635      	lsls	r5, r6, #24
d007d544:	681b      	ldr	r3, [r3, #0]
d007d546:	d501      	bpl.n	d007d54c <_printf_i+0x1cc>
d007d548:	6018      	str	r0, [r3, #0]
d007d54a:	e002      	b.n	d007d552 <_printf_i+0x1d2>
d007d54c:	0671      	lsls	r1, r6, #25
d007d54e:	d5fb      	bpl.n	d007d548 <_printf_i+0x1c8>
d007d550:	8018      	strh	r0, [r3, #0]
d007d552:	2300      	movs	r3, #0
d007d554:	6123      	str	r3, [r4, #16]
d007d556:	4616      	mov	r6, r2
d007d558:	e7ba      	b.n	d007d4d0 <_printf_i+0x150>
d007d55a:	680b      	ldr	r3, [r1, #0]
d007d55c:	1d1a      	adds	r2, r3, #4
d007d55e:	600a      	str	r2, [r1, #0]
d007d560:	681e      	ldr	r6, [r3, #0]
d007d562:	6862      	ldr	r2, [r4, #4]
d007d564:	2100      	movs	r1, #0
d007d566:	4630      	mov	r0, r6
d007d568:	f000 fb2a 	bl	d007dbc0 <memchr>
d007d56c:	b108      	cbz	r0, d007d572 <_printf_i+0x1f2>
d007d56e:	1b80      	subs	r0, r0, r6
d007d570:	6060      	str	r0, [r4, #4]
d007d572:	6863      	ldr	r3, [r4, #4]
d007d574:	6123      	str	r3, [r4, #16]
d007d576:	2300      	movs	r3, #0
d007d578:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d007d57c:	e7a8      	b.n	d007d4d0 <_printf_i+0x150>
d007d57e:	6923      	ldr	r3, [r4, #16]
d007d580:	4632      	mov	r2, r6
d007d582:	4649      	mov	r1, r9
d007d584:	4640      	mov	r0, r8
d007d586:	47d0      	blx	sl
d007d588:	3001      	adds	r0, #1
d007d58a:	d0ab      	beq.n	d007d4e4 <_printf_i+0x164>
d007d58c:	6823      	ldr	r3, [r4, #0]
d007d58e:	079b      	lsls	r3, r3, #30
d007d590:	d413      	bmi.n	d007d5ba <_printf_i+0x23a>
d007d592:	68e0      	ldr	r0, [r4, #12]
d007d594:	9b03      	ldr	r3, [sp, #12]
d007d596:	4298      	cmp	r0, r3
d007d598:	bfb8      	it	lt
d007d59a:	4618      	movlt	r0, r3
d007d59c:	e7a4      	b.n	d007d4e8 <_printf_i+0x168>
d007d59e:	2301      	movs	r3, #1
d007d5a0:	4632      	mov	r2, r6
d007d5a2:	4649      	mov	r1, r9
d007d5a4:	4640      	mov	r0, r8
d007d5a6:	47d0      	blx	sl
d007d5a8:	3001      	adds	r0, #1
d007d5aa:	d09b      	beq.n	d007d4e4 <_printf_i+0x164>
d007d5ac:	3501      	adds	r5, #1
d007d5ae:	68e3      	ldr	r3, [r4, #12]
d007d5b0:	9903      	ldr	r1, [sp, #12]
d007d5b2:	1a5b      	subs	r3, r3, r1
d007d5b4:	42ab      	cmp	r3, r5
d007d5b6:	dcf2      	bgt.n	d007d59e <_printf_i+0x21e>
d007d5b8:	e7eb      	b.n	d007d592 <_printf_i+0x212>
d007d5ba:	2500      	movs	r5, #0
d007d5bc:	f104 0619 	add.w	r6, r4, #25
d007d5c0:	e7f5      	b.n	d007d5ae <_printf_i+0x22e>
d007d5c2:	bf00      	nop
d007d5c4:	d007edf7 	.word	0xd007edf7
d007d5c8:	d007ee08 	.word	0xd007ee08

d007d5cc <_sbrk_r>:
d007d5cc:	b538      	push	{r3, r4, r5, lr}
d007d5ce:	4d06      	ldr	r5, [pc, #24]	; (d007d5e8 <_sbrk_r+0x1c>)
d007d5d0:	2300      	movs	r3, #0
d007d5d2:	4604      	mov	r4, r0
d007d5d4:	4608      	mov	r0, r1
d007d5d6:	602b      	str	r3, [r5, #0]
d007d5d8:	f7fb fb22 	bl	d0078c20 <_sbrk>
d007d5dc:	1c43      	adds	r3, r0, #1
d007d5de:	d102      	bne.n	d007d5e6 <_sbrk_r+0x1a>
d007d5e0:	682b      	ldr	r3, [r5, #0]
d007d5e2:	b103      	cbz	r3, d007d5e6 <_sbrk_r+0x1a>
d007d5e4:	6023      	str	r3, [r4, #0]
d007d5e6:	bd38      	pop	{r3, r4, r5, pc}
d007d5e8:	d00a910c 	.word	0xd00a910c

d007d5ec <__swbuf_r>:
d007d5ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d007d5ee:	460e      	mov	r6, r1
d007d5f0:	4614      	mov	r4, r2
d007d5f2:	4605      	mov	r5, r0
d007d5f4:	b118      	cbz	r0, d007d5fe <__swbuf_r+0x12>
d007d5f6:	6983      	ldr	r3, [r0, #24]
d007d5f8:	b90b      	cbnz	r3, d007d5fe <__swbuf_r+0x12>
d007d5fa:	f000 f9d9 	bl	d007d9b0 <__sinit>
d007d5fe:	4b21      	ldr	r3, [pc, #132]	; (d007d684 <__swbuf_r+0x98>)
d007d600:	429c      	cmp	r4, r3
d007d602:	d12b      	bne.n	d007d65c <__swbuf_r+0x70>
d007d604:	686c      	ldr	r4, [r5, #4]
d007d606:	69a3      	ldr	r3, [r4, #24]
d007d608:	60a3      	str	r3, [r4, #8]
d007d60a:	89a3      	ldrh	r3, [r4, #12]
d007d60c:	071a      	lsls	r2, r3, #28
d007d60e:	d52f      	bpl.n	d007d670 <__swbuf_r+0x84>
d007d610:	6923      	ldr	r3, [r4, #16]
d007d612:	b36b      	cbz	r3, d007d670 <__swbuf_r+0x84>
d007d614:	6923      	ldr	r3, [r4, #16]
d007d616:	6820      	ldr	r0, [r4, #0]
d007d618:	1ac0      	subs	r0, r0, r3
d007d61a:	6963      	ldr	r3, [r4, #20]
d007d61c:	b2f6      	uxtb	r6, r6
d007d61e:	4283      	cmp	r3, r0
d007d620:	4637      	mov	r7, r6
d007d622:	dc04      	bgt.n	d007d62e <__swbuf_r+0x42>
d007d624:	4621      	mov	r1, r4
d007d626:	4628      	mov	r0, r5
d007d628:	f000 f92e 	bl	d007d888 <_fflush_r>
d007d62c:	bb30      	cbnz	r0, d007d67c <__swbuf_r+0x90>
d007d62e:	68a3      	ldr	r3, [r4, #8]
d007d630:	3b01      	subs	r3, #1
d007d632:	60a3      	str	r3, [r4, #8]
d007d634:	6823      	ldr	r3, [r4, #0]
d007d636:	1c5a      	adds	r2, r3, #1
d007d638:	6022      	str	r2, [r4, #0]
d007d63a:	701e      	strb	r6, [r3, #0]
d007d63c:	6963      	ldr	r3, [r4, #20]
d007d63e:	3001      	adds	r0, #1
d007d640:	4283      	cmp	r3, r0
d007d642:	d004      	beq.n	d007d64e <__swbuf_r+0x62>
d007d644:	89a3      	ldrh	r3, [r4, #12]
d007d646:	07db      	lsls	r3, r3, #31
d007d648:	d506      	bpl.n	d007d658 <__swbuf_r+0x6c>
d007d64a:	2e0a      	cmp	r6, #10
d007d64c:	d104      	bne.n	d007d658 <__swbuf_r+0x6c>
d007d64e:	4621      	mov	r1, r4
d007d650:	4628      	mov	r0, r5
d007d652:	f000 f919 	bl	d007d888 <_fflush_r>
d007d656:	b988      	cbnz	r0, d007d67c <__swbuf_r+0x90>
d007d658:	4638      	mov	r0, r7
d007d65a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d007d65c:	4b0a      	ldr	r3, [pc, #40]	; (d007d688 <__swbuf_r+0x9c>)
d007d65e:	429c      	cmp	r4, r3
d007d660:	d101      	bne.n	d007d666 <__swbuf_r+0x7a>
d007d662:	68ac      	ldr	r4, [r5, #8]
d007d664:	e7cf      	b.n	d007d606 <__swbuf_r+0x1a>
d007d666:	4b09      	ldr	r3, [pc, #36]	; (d007d68c <__swbuf_r+0xa0>)
d007d668:	429c      	cmp	r4, r3
d007d66a:	bf08      	it	eq
d007d66c:	68ec      	ldreq	r4, [r5, #12]
d007d66e:	e7ca      	b.n	d007d606 <__swbuf_r+0x1a>
d007d670:	4621      	mov	r1, r4
d007d672:	4628      	mov	r0, r5
d007d674:	f000 f80c 	bl	d007d690 <__swsetup_r>
d007d678:	2800      	cmp	r0, #0
d007d67a:	d0cb      	beq.n	d007d614 <__swbuf_r+0x28>
d007d67c:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d007d680:	e7ea      	b.n	d007d658 <__swbuf_r+0x6c>
d007d682:	bf00      	nop
d007d684:	d007ee3c 	.word	0xd007ee3c
d007d688:	d007ee5c 	.word	0xd007ee5c
d007d68c:	d007ee1c 	.word	0xd007ee1c

d007d690 <__swsetup_r>:
d007d690:	4b32      	ldr	r3, [pc, #200]	; (d007d75c <__swsetup_r+0xcc>)
d007d692:	b570      	push	{r4, r5, r6, lr}
d007d694:	681d      	ldr	r5, [r3, #0]
d007d696:	4606      	mov	r6, r0
d007d698:	460c      	mov	r4, r1
d007d69a:	b125      	cbz	r5, d007d6a6 <__swsetup_r+0x16>
d007d69c:	69ab      	ldr	r3, [r5, #24]
d007d69e:	b913      	cbnz	r3, d007d6a6 <__swsetup_r+0x16>
d007d6a0:	4628      	mov	r0, r5
d007d6a2:	f000 f985 	bl	d007d9b0 <__sinit>
d007d6a6:	4b2e      	ldr	r3, [pc, #184]	; (d007d760 <__swsetup_r+0xd0>)
d007d6a8:	429c      	cmp	r4, r3
d007d6aa:	d10f      	bne.n	d007d6cc <__swsetup_r+0x3c>
d007d6ac:	686c      	ldr	r4, [r5, #4]
d007d6ae:	89a3      	ldrh	r3, [r4, #12]
d007d6b0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d007d6b4:	0719      	lsls	r1, r3, #28
d007d6b6:	d42c      	bmi.n	d007d712 <__swsetup_r+0x82>
d007d6b8:	06dd      	lsls	r5, r3, #27
d007d6ba:	d411      	bmi.n	d007d6e0 <__swsetup_r+0x50>
d007d6bc:	2309      	movs	r3, #9
d007d6be:	6033      	str	r3, [r6, #0]
d007d6c0:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d007d6c4:	81a3      	strh	r3, [r4, #12]
d007d6c6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d007d6ca:	e03e      	b.n	d007d74a <__swsetup_r+0xba>
d007d6cc:	4b25      	ldr	r3, [pc, #148]	; (d007d764 <__swsetup_r+0xd4>)
d007d6ce:	429c      	cmp	r4, r3
d007d6d0:	d101      	bne.n	d007d6d6 <__swsetup_r+0x46>
d007d6d2:	68ac      	ldr	r4, [r5, #8]
d007d6d4:	e7eb      	b.n	d007d6ae <__swsetup_r+0x1e>
d007d6d6:	4b24      	ldr	r3, [pc, #144]	; (d007d768 <__swsetup_r+0xd8>)
d007d6d8:	429c      	cmp	r4, r3
d007d6da:	bf08      	it	eq
d007d6dc:	68ec      	ldreq	r4, [r5, #12]
d007d6de:	e7e6      	b.n	d007d6ae <__swsetup_r+0x1e>
d007d6e0:	0758      	lsls	r0, r3, #29
d007d6e2:	d512      	bpl.n	d007d70a <__swsetup_r+0x7a>
d007d6e4:	6b61      	ldr	r1, [r4, #52]	; 0x34
d007d6e6:	b141      	cbz	r1, d007d6fa <__swsetup_r+0x6a>
d007d6e8:	f104 0344 	add.w	r3, r4, #68	; 0x44
d007d6ec:	4299      	cmp	r1, r3
d007d6ee:	d002      	beq.n	d007d6f6 <__swsetup_r+0x66>
d007d6f0:	4630      	mov	r0, r6
d007d6f2:	f7ff fa77 	bl	d007cbe4 <_free_r>
d007d6f6:	2300      	movs	r3, #0
d007d6f8:	6363      	str	r3, [r4, #52]	; 0x34
d007d6fa:	89a3      	ldrh	r3, [r4, #12]
d007d6fc:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d007d700:	81a3      	strh	r3, [r4, #12]
d007d702:	2300      	movs	r3, #0
d007d704:	6063      	str	r3, [r4, #4]
d007d706:	6923      	ldr	r3, [r4, #16]
d007d708:	6023      	str	r3, [r4, #0]
d007d70a:	89a3      	ldrh	r3, [r4, #12]
d007d70c:	f043 0308 	orr.w	r3, r3, #8
d007d710:	81a3      	strh	r3, [r4, #12]
d007d712:	6923      	ldr	r3, [r4, #16]
d007d714:	b94b      	cbnz	r3, d007d72a <__swsetup_r+0x9a>
d007d716:	89a3      	ldrh	r3, [r4, #12]
d007d718:	f403 7320 	and.w	r3, r3, #640	; 0x280
d007d71c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d007d720:	d003      	beq.n	d007d72a <__swsetup_r+0x9a>
d007d722:	4621      	mov	r1, r4
d007d724:	4630      	mov	r0, r6
d007d726:	f000 fa07 	bl	d007db38 <__smakebuf_r>
d007d72a:	89a0      	ldrh	r0, [r4, #12]
d007d72c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d007d730:	f010 0301 	ands.w	r3, r0, #1
d007d734:	d00a      	beq.n	d007d74c <__swsetup_r+0xbc>
d007d736:	2300      	movs	r3, #0
d007d738:	60a3      	str	r3, [r4, #8]
d007d73a:	6963      	ldr	r3, [r4, #20]
d007d73c:	425b      	negs	r3, r3
d007d73e:	61a3      	str	r3, [r4, #24]
d007d740:	6923      	ldr	r3, [r4, #16]
d007d742:	b943      	cbnz	r3, d007d756 <__swsetup_r+0xc6>
d007d744:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d007d748:	d1ba      	bne.n	d007d6c0 <__swsetup_r+0x30>
d007d74a:	bd70      	pop	{r4, r5, r6, pc}
d007d74c:	0781      	lsls	r1, r0, #30
d007d74e:	bf58      	it	pl
d007d750:	6963      	ldrpl	r3, [r4, #20]
d007d752:	60a3      	str	r3, [r4, #8]
d007d754:	e7f4      	b.n	d007d740 <__swsetup_r+0xb0>
d007d756:	2000      	movs	r0, #0
d007d758:	e7f7      	b.n	d007d74a <__swsetup_r+0xba>
d007d75a:	bf00      	nop
d007d75c:	d007ee84 	.word	0xd007ee84
d007d760:	d007ee3c 	.word	0xd007ee3c
d007d764:	d007ee5c 	.word	0xd007ee5c
d007d768:	d007ee1c 	.word	0xd007ee1c

d007d76c <abort>:
d007d76c:	b508      	push	{r3, lr}
d007d76e:	2006      	movs	r0, #6
d007d770:	f000 faea 	bl	d007dd48 <raise>
d007d774:	2001      	movs	r0, #1
d007d776:	f7fb fa63 	bl	d0078c40 <_exit>
	...

d007d77c <__sflush_r>:
d007d77c:	898a      	ldrh	r2, [r1, #12]
d007d77e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d007d782:	4605      	mov	r5, r0
d007d784:	0710      	lsls	r0, r2, #28
d007d786:	460c      	mov	r4, r1
d007d788:	d458      	bmi.n	d007d83c <__sflush_r+0xc0>
d007d78a:	684b      	ldr	r3, [r1, #4]
d007d78c:	2b00      	cmp	r3, #0
d007d78e:	dc05      	bgt.n	d007d79c <__sflush_r+0x20>
d007d790:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d007d792:	2b00      	cmp	r3, #0
d007d794:	dc02      	bgt.n	d007d79c <__sflush_r+0x20>
d007d796:	2000      	movs	r0, #0
d007d798:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d007d79c:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d007d79e:	2e00      	cmp	r6, #0
d007d7a0:	d0f9      	beq.n	d007d796 <__sflush_r+0x1a>
d007d7a2:	2300      	movs	r3, #0
d007d7a4:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d007d7a8:	682f      	ldr	r7, [r5, #0]
d007d7aa:	602b      	str	r3, [r5, #0]
d007d7ac:	d032      	beq.n	d007d814 <__sflush_r+0x98>
d007d7ae:	6d60      	ldr	r0, [r4, #84]	; 0x54
d007d7b0:	89a3      	ldrh	r3, [r4, #12]
d007d7b2:	075a      	lsls	r2, r3, #29
d007d7b4:	d505      	bpl.n	d007d7c2 <__sflush_r+0x46>
d007d7b6:	6863      	ldr	r3, [r4, #4]
d007d7b8:	1ac0      	subs	r0, r0, r3
d007d7ba:	6b63      	ldr	r3, [r4, #52]	; 0x34
d007d7bc:	b10b      	cbz	r3, d007d7c2 <__sflush_r+0x46>
d007d7be:	6c23      	ldr	r3, [r4, #64]	; 0x40
d007d7c0:	1ac0      	subs	r0, r0, r3
d007d7c2:	2300      	movs	r3, #0
d007d7c4:	4602      	mov	r2, r0
d007d7c6:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d007d7c8:	6a21      	ldr	r1, [r4, #32]
d007d7ca:	4628      	mov	r0, r5
d007d7cc:	47b0      	blx	r6
d007d7ce:	1c43      	adds	r3, r0, #1
d007d7d0:	89a3      	ldrh	r3, [r4, #12]
d007d7d2:	d106      	bne.n	d007d7e2 <__sflush_r+0x66>
d007d7d4:	6829      	ldr	r1, [r5, #0]
d007d7d6:	291d      	cmp	r1, #29
d007d7d8:	d82c      	bhi.n	d007d834 <__sflush_r+0xb8>
d007d7da:	4a2a      	ldr	r2, [pc, #168]	; (d007d884 <__sflush_r+0x108>)
d007d7dc:	40ca      	lsrs	r2, r1
d007d7de:	07d6      	lsls	r6, r2, #31
d007d7e0:	d528      	bpl.n	d007d834 <__sflush_r+0xb8>
d007d7e2:	2200      	movs	r2, #0
d007d7e4:	6062      	str	r2, [r4, #4]
d007d7e6:	04d9      	lsls	r1, r3, #19
d007d7e8:	6922      	ldr	r2, [r4, #16]
d007d7ea:	6022      	str	r2, [r4, #0]
d007d7ec:	d504      	bpl.n	d007d7f8 <__sflush_r+0x7c>
d007d7ee:	1c42      	adds	r2, r0, #1
d007d7f0:	d101      	bne.n	d007d7f6 <__sflush_r+0x7a>
d007d7f2:	682b      	ldr	r3, [r5, #0]
d007d7f4:	b903      	cbnz	r3, d007d7f8 <__sflush_r+0x7c>
d007d7f6:	6560      	str	r0, [r4, #84]	; 0x54
d007d7f8:	6b61      	ldr	r1, [r4, #52]	; 0x34
d007d7fa:	602f      	str	r7, [r5, #0]
d007d7fc:	2900      	cmp	r1, #0
d007d7fe:	d0ca      	beq.n	d007d796 <__sflush_r+0x1a>
d007d800:	f104 0344 	add.w	r3, r4, #68	; 0x44
d007d804:	4299      	cmp	r1, r3
d007d806:	d002      	beq.n	d007d80e <__sflush_r+0x92>
d007d808:	4628      	mov	r0, r5
d007d80a:	f7ff f9eb 	bl	d007cbe4 <_free_r>
d007d80e:	2000      	movs	r0, #0
d007d810:	6360      	str	r0, [r4, #52]	; 0x34
d007d812:	e7c1      	b.n	d007d798 <__sflush_r+0x1c>
d007d814:	6a21      	ldr	r1, [r4, #32]
d007d816:	2301      	movs	r3, #1
d007d818:	4628      	mov	r0, r5
d007d81a:	47b0      	blx	r6
d007d81c:	1c41      	adds	r1, r0, #1
d007d81e:	d1c7      	bne.n	d007d7b0 <__sflush_r+0x34>
d007d820:	682b      	ldr	r3, [r5, #0]
d007d822:	2b00      	cmp	r3, #0
d007d824:	d0c4      	beq.n	d007d7b0 <__sflush_r+0x34>
d007d826:	2b1d      	cmp	r3, #29
d007d828:	d001      	beq.n	d007d82e <__sflush_r+0xb2>
d007d82a:	2b16      	cmp	r3, #22
d007d82c:	d101      	bne.n	d007d832 <__sflush_r+0xb6>
d007d82e:	602f      	str	r7, [r5, #0]
d007d830:	e7b1      	b.n	d007d796 <__sflush_r+0x1a>
d007d832:	89a3      	ldrh	r3, [r4, #12]
d007d834:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d007d838:	81a3      	strh	r3, [r4, #12]
d007d83a:	e7ad      	b.n	d007d798 <__sflush_r+0x1c>
d007d83c:	690f      	ldr	r7, [r1, #16]
d007d83e:	2f00      	cmp	r7, #0
d007d840:	d0a9      	beq.n	d007d796 <__sflush_r+0x1a>
d007d842:	0793      	lsls	r3, r2, #30
d007d844:	680e      	ldr	r6, [r1, #0]
d007d846:	bf08      	it	eq
d007d848:	694b      	ldreq	r3, [r1, #20]
d007d84a:	600f      	str	r7, [r1, #0]
d007d84c:	bf18      	it	ne
d007d84e:	2300      	movne	r3, #0
d007d850:	eba6 0807 	sub.w	r8, r6, r7
d007d854:	608b      	str	r3, [r1, #8]
d007d856:	f1b8 0f00 	cmp.w	r8, #0
d007d85a:	dd9c      	ble.n	d007d796 <__sflush_r+0x1a>
d007d85c:	6a21      	ldr	r1, [r4, #32]
d007d85e:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d007d860:	4643      	mov	r3, r8
d007d862:	463a      	mov	r2, r7
d007d864:	4628      	mov	r0, r5
d007d866:	47b0      	blx	r6
d007d868:	2800      	cmp	r0, #0
d007d86a:	dc06      	bgt.n	d007d87a <__sflush_r+0xfe>
d007d86c:	89a3      	ldrh	r3, [r4, #12]
d007d86e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d007d872:	81a3      	strh	r3, [r4, #12]
d007d874:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d007d878:	e78e      	b.n	d007d798 <__sflush_r+0x1c>
d007d87a:	4407      	add	r7, r0
d007d87c:	eba8 0800 	sub.w	r8, r8, r0
d007d880:	e7e9      	b.n	d007d856 <__sflush_r+0xda>
d007d882:	bf00      	nop
d007d884:	20400001 	.word	0x20400001

d007d888 <_fflush_r>:
d007d888:	b538      	push	{r3, r4, r5, lr}
d007d88a:	690b      	ldr	r3, [r1, #16]
d007d88c:	4605      	mov	r5, r0
d007d88e:	460c      	mov	r4, r1
d007d890:	b913      	cbnz	r3, d007d898 <_fflush_r+0x10>
d007d892:	2500      	movs	r5, #0
d007d894:	4628      	mov	r0, r5
d007d896:	bd38      	pop	{r3, r4, r5, pc}
d007d898:	b118      	cbz	r0, d007d8a2 <_fflush_r+0x1a>
d007d89a:	6983      	ldr	r3, [r0, #24]
d007d89c:	b90b      	cbnz	r3, d007d8a2 <_fflush_r+0x1a>
d007d89e:	f000 f887 	bl	d007d9b0 <__sinit>
d007d8a2:	4b14      	ldr	r3, [pc, #80]	; (d007d8f4 <_fflush_r+0x6c>)
d007d8a4:	429c      	cmp	r4, r3
d007d8a6:	d11b      	bne.n	d007d8e0 <_fflush_r+0x58>
d007d8a8:	686c      	ldr	r4, [r5, #4]
d007d8aa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d007d8ae:	2b00      	cmp	r3, #0
d007d8b0:	d0ef      	beq.n	d007d892 <_fflush_r+0xa>
d007d8b2:	6e62      	ldr	r2, [r4, #100]	; 0x64
d007d8b4:	07d0      	lsls	r0, r2, #31
d007d8b6:	d404      	bmi.n	d007d8c2 <_fflush_r+0x3a>
d007d8b8:	0599      	lsls	r1, r3, #22
d007d8ba:	d402      	bmi.n	d007d8c2 <_fflush_r+0x3a>
d007d8bc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d007d8be:	f000 f915 	bl	d007daec <__retarget_lock_acquire_recursive>
d007d8c2:	4628      	mov	r0, r5
d007d8c4:	4621      	mov	r1, r4
d007d8c6:	f7ff ff59 	bl	d007d77c <__sflush_r>
d007d8ca:	6e63      	ldr	r3, [r4, #100]	; 0x64
d007d8cc:	07da      	lsls	r2, r3, #31
d007d8ce:	4605      	mov	r5, r0
d007d8d0:	d4e0      	bmi.n	d007d894 <_fflush_r+0xc>
d007d8d2:	89a3      	ldrh	r3, [r4, #12]
d007d8d4:	059b      	lsls	r3, r3, #22
d007d8d6:	d4dd      	bmi.n	d007d894 <_fflush_r+0xc>
d007d8d8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d007d8da:	f000 f908 	bl	d007daee <__retarget_lock_release_recursive>
d007d8de:	e7d9      	b.n	d007d894 <_fflush_r+0xc>
d007d8e0:	4b05      	ldr	r3, [pc, #20]	; (d007d8f8 <_fflush_r+0x70>)
d007d8e2:	429c      	cmp	r4, r3
d007d8e4:	d101      	bne.n	d007d8ea <_fflush_r+0x62>
d007d8e6:	68ac      	ldr	r4, [r5, #8]
d007d8e8:	e7df      	b.n	d007d8aa <_fflush_r+0x22>
d007d8ea:	4b04      	ldr	r3, [pc, #16]	; (d007d8fc <_fflush_r+0x74>)
d007d8ec:	429c      	cmp	r4, r3
d007d8ee:	bf08      	it	eq
d007d8f0:	68ec      	ldreq	r4, [r5, #12]
d007d8f2:	e7da      	b.n	d007d8aa <_fflush_r+0x22>
d007d8f4:	d007ee3c 	.word	0xd007ee3c
d007d8f8:	d007ee5c 	.word	0xd007ee5c
d007d8fc:	d007ee1c 	.word	0xd007ee1c

d007d900 <std>:
d007d900:	2300      	movs	r3, #0
d007d902:	b510      	push	{r4, lr}
d007d904:	4604      	mov	r4, r0
d007d906:	e9c0 3300 	strd	r3, r3, [r0]
d007d90a:	e9c0 3304 	strd	r3, r3, [r0, #16]
d007d90e:	6083      	str	r3, [r0, #8]
d007d910:	8181      	strh	r1, [r0, #12]
d007d912:	6643      	str	r3, [r0, #100]	; 0x64
d007d914:	81c2      	strh	r2, [r0, #14]
d007d916:	6183      	str	r3, [r0, #24]
d007d918:	4619      	mov	r1, r3
d007d91a:	2208      	movs	r2, #8
d007d91c:	305c      	adds	r0, #92	; 0x5c
d007d91e:	f7fb f899 	bl	d0078a54 <memset>
d007d922:	4b05      	ldr	r3, [pc, #20]	; (d007d938 <std+0x38>)
d007d924:	6263      	str	r3, [r4, #36]	; 0x24
d007d926:	4b05      	ldr	r3, [pc, #20]	; (d007d93c <std+0x3c>)
d007d928:	62a3      	str	r3, [r4, #40]	; 0x28
d007d92a:	4b05      	ldr	r3, [pc, #20]	; (d007d940 <std+0x40>)
d007d92c:	62e3      	str	r3, [r4, #44]	; 0x2c
d007d92e:	4b05      	ldr	r3, [pc, #20]	; (d007d944 <std+0x44>)
d007d930:	6224      	str	r4, [r4, #32]
d007d932:	6323      	str	r3, [r4, #48]	; 0x30
d007d934:	bd10      	pop	{r4, pc}
d007d936:	bf00      	nop
d007d938:	d007dd81 	.word	0xd007dd81
d007d93c:	d007dda3 	.word	0xd007dda3
d007d940:	d007dddb 	.word	0xd007dddb
d007d944:	d007ddff 	.word	0xd007ddff

d007d948 <_cleanup_r>:
d007d948:	4901      	ldr	r1, [pc, #4]	; (d007d950 <_cleanup_r+0x8>)
d007d94a:	f000 b8af 	b.w	d007daac <_fwalk_reent>
d007d94e:	bf00      	nop
d007d950:	d007d889 	.word	0xd007d889

d007d954 <__sfmoreglue>:
d007d954:	b570      	push	{r4, r5, r6, lr}
d007d956:	1e4a      	subs	r2, r1, #1
d007d958:	2568      	movs	r5, #104	; 0x68
d007d95a:	4355      	muls	r5, r2
d007d95c:	460e      	mov	r6, r1
d007d95e:	f105 0174 	add.w	r1, r5, #116	; 0x74
d007d962:	f7ff f98f 	bl	d007cc84 <_malloc_r>
d007d966:	4604      	mov	r4, r0
d007d968:	b140      	cbz	r0, d007d97c <__sfmoreglue+0x28>
d007d96a:	2100      	movs	r1, #0
d007d96c:	e9c0 1600 	strd	r1, r6, [r0]
d007d970:	300c      	adds	r0, #12
d007d972:	60a0      	str	r0, [r4, #8]
d007d974:	f105 0268 	add.w	r2, r5, #104	; 0x68
d007d978:	f7fb f86c 	bl	d0078a54 <memset>
d007d97c:	4620      	mov	r0, r4
d007d97e:	bd70      	pop	{r4, r5, r6, pc}

d007d980 <__sfp_lock_acquire>:
d007d980:	4801      	ldr	r0, [pc, #4]	; (d007d988 <__sfp_lock_acquire+0x8>)
d007d982:	f000 b8b3 	b.w	d007daec <__retarget_lock_acquire_recursive>
d007d986:	bf00      	nop
d007d988:	d00a9108 	.word	0xd00a9108

d007d98c <__sfp_lock_release>:
d007d98c:	4801      	ldr	r0, [pc, #4]	; (d007d994 <__sfp_lock_release+0x8>)
d007d98e:	f000 b8ae 	b.w	d007daee <__retarget_lock_release_recursive>
d007d992:	bf00      	nop
d007d994:	d00a9108 	.word	0xd00a9108

d007d998 <__sinit_lock_acquire>:
d007d998:	4801      	ldr	r0, [pc, #4]	; (d007d9a0 <__sinit_lock_acquire+0x8>)
d007d99a:	f000 b8a7 	b.w	d007daec <__retarget_lock_acquire_recursive>
d007d99e:	bf00      	nop
d007d9a0:	d00a9103 	.word	0xd00a9103

d007d9a4 <__sinit_lock_release>:
d007d9a4:	4801      	ldr	r0, [pc, #4]	; (d007d9ac <__sinit_lock_release+0x8>)
d007d9a6:	f000 b8a2 	b.w	d007daee <__retarget_lock_release_recursive>
d007d9aa:	bf00      	nop
d007d9ac:	d00a9103 	.word	0xd00a9103

d007d9b0 <__sinit>:
d007d9b0:	b510      	push	{r4, lr}
d007d9b2:	4604      	mov	r4, r0
d007d9b4:	f7ff fff0 	bl	d007d998 <__sinit_lock_acquire>
d007d9b8:	69a3      	ldr	r3, [r4, #24]
d007d9ba:	b11b      	cbz	r3, d007d9c4 <__sinit+0x14>
d007d9bc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d007d9c0:	f7ff bff0 	b.w	d007d9a4 <__sinit_lock_release>
d007d9c4:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d007d9c8:	6523      	str	r3, [r4, #80]	; 0x50
d007d9ca:	4b13      	ldr	r3, [pc, #76]	; (d007da18 <__sinit+0x68>)
d007d9cc:	4a13      	ldr	r2, [pc, #76]	; (d007da1c <__sinit+0x6c>)
d007d9ce:	681b      	ldr	r3, [r3, #0]
d007d9d0:	62a2      	str	r2, [r4, #40]	; 0x28
d007d9d2:	42a3      	cmp	r3, r4
d007d9d4:	bf04      	itt	eq
d007d9d6:	2301      	moveq	r3, #1
d007d9d8:	61a3      	streq	r3, [r4, #24]
d007d9da:	4620      	mov	r0, r4
d007d9dc:	f000 f820 	bl	d007da20 <__sfp>
d007d9e0:	6060      	str	r0, [r4, #4]
d007d9e2:	4620      	mov	r0, r4
d007d9e4:	f000 f81c 	bl	d007da20 <__sfp>
d007d9e8:	60a0      	str	r0, [r4, #8]
d007d9ea:	4620      	mov	r0, r4
d007d9ec:	f000 f818 	bl	d007da20 <__sfp>
d007d9f0:	2200      	movs	r2, #0
d007d9f2:	60e0      	str	r0, [r4, #12]
d007d9f4:	2104      	movs	r1, #4
d007d9f6:	6860      	ldr	r0, [r4, #4]
d007d9f8:	f7ff ff82 	bl	d007d900 <std>
d007d9fc:	68a0      	ldr	r0, [r4, #8]
d007d9fe:	2201      	movs	r2, #1
d007da00:	2109      	movs	r1, #9
d007da02:	f7ff ff7d 	bl	d007d900 <std>
d007da06:	68e0      	ldr	r0, [r4, #12]
d007da08:	2202      	movs	r2, #2
d007da0a:	2112      	movs	r1, #18
d007da0c:	f7ff ff78 	bl	d007d900 <std>
d007da10:	2301      	movs	r3, #1
d007da12:	61a3      	str	r3, [r4, #24]
d007da14:	e7d2      	b.n	d007d9bc <__sinit+0xc>
d007da16:	bf00      	nop
d007da18:	d007dee8 	.word	0xd007dee8
d007da1c:	d007d949 	.word	0xd007d949

d007da20 <__sfp>:
d007da20:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d007da22:	4607      	mov	r7, r0
d007da24:	f7ff ffac 	bl	d007d980 <__sfp_lock_acquire>
d007da28:	4b1e      	ldr	r3, [pc, #120]	; (d007daa4 <__sfp+0x84>)
d007da2a:	681e      	ldr	r6, [r3, #0]
d007da2c:	69b3      	ldr	r3, [r6, #24]
d007da2e:	b913      	cbnz	r3, d007da36 <__sfp+0x16>
d007da30:	4630      	mov	r0, r6
d007da32:	f7ff ffbd 	bl	d007d9b0 <__sinit>
d007da36:	3648      	adds	r6, #72	; 0x48
d007da38:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d007da3c:	3b01      	subs	r3, #1
d007da3e:	d503      	bpl.n	d007da48 <__sfp+0x28>
d007da40:	6833      	ldr	r3, [r6, #0]
d007da42:	b30b      	cbz	r3, d007da88 <__sfp+0x68>
d007da44:	6836      	ldr	r6, [r6, #0]
d007da46:	e7f7      	b.n	d007da38 <__sfp+0x18>
d007da48:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d007da4c:	b9d5      	cbnz	r5, d007da84 <__sfp+0x64>
d007da4e:	4b16      	ldr	r3, [pc, #88]	; (d007daa8 <__sfp+0x88>)
d007da50:	60e3      	str	r3, [r4, #12]
d007da52:	f104 0058 	add.w	r0, r4, #88	; 0x58
d007da56:	6665      	str	r5, [r4, #100]	; 0x64
d007da58:	f000 f847 	bl	d007daea <__retarget_lock_init_recursive>
d007da5c:	f7ff ff96 	bl	d007d98c <__sfp_lock_release>
d007da60:	e9c4 5501 	strd	r5, r5, [r4, #4]
d007da64:	e9c4 5504 	strd	r5, r5, [r4, #16]
d007da68:	6025      	str	r5, [r4, #0]
d007da6a:	61a5      	str	r5, [r4, #24]
d007da6c:	2208      	movs	r2, #8
d007da6e:	4629      	mov	r1, r5
d007da70:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d007da74:	f7fa ffee 	bl	d0078a54 <memset>
d007da78:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d007da7c:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d007da80:	4620      	mov	r0, r4
d007da82:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d007da84:	3468      	adds	r4, #104	; 0x68
d007da86:	e7d9      	b.n	d007da3c <__sfp+0x1c>
d007da88:	2104      	movs	r1, #4
d007da8a:	4638      	mov	r0, r7
d007da8c:	f7ff ff62 	bl	d007d954 <__sfmoreglue>
d007da90:	4604      	mov	r4, r0
d007da92:	6030      	str	r0, [r6, #0]
d007da94:	2800      	cmp	r0, #0
d007da96:	d1d5      	bne.n	d007da44 <__sfp+0x24>
d007da98:	f7ff ff78 	bl	d007d98c <__sfp_lock_release>
d007da9c:	230c      	movs	r3, #12
d007da9e:	603b      	str	r3, [r7, #0]
d007daa0:	e7ee      	b.n	d007da80 <__sfp+0x60>
d007daa2:	bf00      	nop
d007daa4:	d007dee8 	.word	0xd007dee8
d007daa8:	ffff0001 	.word	0xffff0001

d007daac <_fwalk_reent>:
d007daac:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d007dab0:	4606      	mov	r6, r0
d007dab2:	4688      	mov	r8, r1
d007dab4:	f100 0448 	add.w	r4, r0, #72	; 0x48
d007dab8:	2700      	movs	r7, #0
d007daba:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d007dabe:	f1b9 0901 	subs.w	r9, r9, #1
d007dac2:	d505      	bpl.n	d007dad0 <_fwalk_reent+0x24>
d007dac4:	6824      	ldr	r4, [r4, #0]
d007dac6:	2c00      	cmp	r4, #0
d007dac8:	d1f7      	bne.n	d007daba <_fwalk_reent+0xe>
d007daca:	4638      	mov	r0, r7
d007dacc:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d007dad0:	89ab      	ldrh	r3, [r5, #12]
d007dad2:	2b01      	cmp	r3, #1
d007dad4:	d907      	bls.n	d007dae6 <_fwalk_reent+0x3a>
d007dad6:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d007dada:	3301      	adds	r3, #1
d007dadc:	d003      	beq.n	d007dae6 <_fwalk_reent+0x3a>
d007dade:	4629      	mov	r1, r5
d007dae0:	4630      	mov	r0, r6
d007dae2:	47c0      	blx	r8
d007dae4:	4307      	orrs	r7, r0
d007dae6:	3568      	adds	r5, #104	; 0x68
d007dae8:	e7e9      	b.n	d007dabe <_fwalk_reent+0x12>

d007daea <__retarget_lock_init_recursive>:
d007daea:	4770      	bx	lr

d007daec <__retarget_lock_acquire_recursive>:
d007daec:	4770      	bx	lr

d007daee <__retarget_lock_release_recursive>:
d007daee:	4770      	bx	lr

d007daf0 <__swhatbuf_r>:
d007daf0:	b570      	push	{r4, r5, r6, lr}
d007daf2:	460e      	mov	r6, r1
d007daf4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d007daf8:	2900      	cmp	r1, #0
d007dafa:	b096      	sub	sp, #88	; 0x58
d007dafc:	4614      	mov	r4, r2
d007dafe:	461d      	mov	r5, r3
d007db00:	da07      	bge.n	d007db12 <__swhatbuf_r+0x22>
d007db02:	2300      	movs	r3, #0
d007db04:	602b      	str	r3, [r5, #0]
d007db06:	89b3      	ldrh	r3, [r6, #12]
d007db08:	061a      	lsls	r2, r3, #24
d007db0a:	d410      	bmi.n	d007db2e <__swhatbuf_r+0x3e>
d007db0c:	f44f 6380 	mov.w	r3, #1024	; 0x400
d007db10:	e00e      	b.n	d007db30 <__swhatbuf_r+0x40>
d007db12:	466a      	mov	r2, sp
d007db14:	f000 f99a 	bl	d007de4c <_fstat_r>
d007db18:	2800      	cmp	r0, #0
d007db1a:	dbf2      	blt.n	d007db02 <__swhatbuf_r+0x12>
d007db1c:	9a01      	ldr	r2, [sp, #4]
d007db1e:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d007db22:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d007db26:	425a      	negs	r2, r3
d007db28:	415a      	adcs	r2, r3
d007db2a:	602a      	str	r2, [r5, #0]
d007db2c:	e7ee      	b.n	d007db0c <__swhatbuf_r+0x1c>
d007db2e:	2340      	movs	r3, #64	; 0x40
d007db30:	2000      	movs	r0, #0
d007db32:	6023      	str	r3, [r4, #0]
d007db34:	b016      	add	sp, #88	; 0x58
d007db36:	bd70      	pop	{r4, r5, r6, pc}

d007db38 <__smakebuf_r>:
d007db38:	898b      	ldrh	r3, [r1, #12]
d007db3a:	b573      	push	{r0, r1, r4, r5, r6, lr}
d007db3c:	079d      	lsls	r5, r3, #30
d007db3e:	4606      	mov	r6, r0
d007db40:	460c      	mov	r4, r1
d007db42:	d507      	bpl.n	d007db54 <__smakebuf_r+0x1c>
d007db44:	f104 0347 	add.w	r3, r4, #71	; 0x47
d007db48:	6023      	str	r3, [r4, #0]
d007db4a:	6123      	str	r3, [r4, #16]
d007db4c:	2301      	movs	r3, #1
d007db4e:	6163      	str	r3, [r4, #20]
d007db50:	b002      	add	sp, #8
d007db52:	bd70      	pop	{r4, r5, r6, pc}
d007db54:	ab01      	add	r3, sp, #4
d007db56:	466a      	mov	r2, sp
d007db58:	f7ff ffca 	bl	d007daf0 <__swhatbuf_r>
d007db5c:	9900      	ldr	r1, [sp, #0]
d007db5e:	4605      	mov	r5, r0
d007db60:	4630      	mov	r0, r6
d007db62:	f7ff f88f 	bl	d007cc84 <_malloc_r>
d007db66:	b948      	cbnz	r0, d007db7c <__smakebuf_r+0x44>
d007db68:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d007db6c:	059a      	lsls	r2, r3, #22
d007db6e:	d4ef      	bmi.n	d007db50 <__smakebuf_r+0x18>
d007db70:	f023 0303 	bic.w	r3, r3, #3
d007db74:	f043 0302 	orr.w	r3, r3, #2
d007db78:	81a3      	strh	r3, [r4, #12]
d007db7a:	e7e3      	b.n	d007db44 <__smakebuf_r+0xc>
d007db7c:	4b0d      	ldr	r3, [pc, #52]	; (d007dbb4 <__smakebuf_r+0x7c>)
d007db7e:	62b3      	str	r3, [r6, #40]	; 0x28
d007db80:	89a3      	ldrh	r3, [r4, #12]
d007db82:	6020      	str	r0, [r4, #0]
d007db84:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d007db88:	81a3      	strh	r3, [r4, #12]
d007db8a:	9b00      	ldr	r3, [sp, #0]
d007db8c:	6163      	str	r3, [r4, #20]
d007db8e:	9b01      	ldr	r3, [sp, #4]
d007db90:	6120      	str	r0, [r4, #16]
d007db92:	b15b      	cbz	r3, d007dbac <__smakebuf_r+0x74>
d007db94:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d007db98:	4630      	mov	r0, r6
d007db9a:	f000 f969 	bl	d007de70 <_isatty_r>
d007db9e:	b128      	cbz	r0, d007dbac <__smakebuf_r+0x74>
d007dba0:	89a3      	ldrh	r3, [r4, #12]
d007dba2:	f023 0303 	bic.w	r3, r3, #3
d007dba6:	f043 0301 	orr.w	r3, r3, #1
d007dbaa:	81a3      	strh	r3, [r4, #12]
d007dbac:	89a0      	ldrh	r0, [r4, #12]
d007dbae:	4305      	orrs	r5, r0
d007dbb0:	81a5      	strh	r5, [r4, #12]
d007dbb2:	e7cd      	b.n	d007db50 <__smakebuf_r+0x18>
d007dbb4:	d007d949 	.word	0xd007d949
	...

d007dbc0 <memchr>:
d007dbc0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d007dbc4:	2a10      	cmp	r2, #16
d007dbc6:	db2b      	blt.n	d007dc20 <memchr+0x60>
d007dbc8:	f010 0f07 	tst.w	r0, #7
d007dbcc:	d008      	beq.n	d007dbe0 <memchr+0x20>
d007dbce:	f810 3b01 	ldrb.w	r3, [r0], #1
d007dbd2:	3a01      	subs	r2, #1
d007dbd4:	428b      	cmp	r3, r1
d007dbd6:	d02d      	beq.n	d007dc34 <memchr+0x74>
d007dbd8:	f010 0f07 	tst.w	r0, #7
d007dbdc:	b342      	cbz	r2, d007dc30 <memchr+0x70>
d007dbde:	d1f6      	bne.n	d007dbce <memchr+0xe>
d007dbe0:	b4f0      	push	{r4, r5, r6, r7}
d007dbe2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d007dbe6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d007dbea:	f022 0407 	bic.w	r4, r2, #7
d007dbee:	f07f 0700 	mvns.w	r7, #0
d007dbf2:	2300      	movs	r3, #0
d007dbf4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d007dbf8:	3c08      	subs	r4, #8
d007dbfa:	ea85 0501 	eor.w	r5, r5, r1
d007dbfe:	ea86 0601 	eor.w	r6, r6, r1
d007dc02:	fa85 f547 	uadd8	r5, r5, r7
d007dc06:	faa3 f587 	sel	r5, r3, r7
d007dc0a:	fa86 f647 	uadd8	r6, r6, r7
d007dc0e:	faa5 f687 	sel	r6, r5, r7
d007dc12:	b98e      	cbnz	r6, d007dc38 <memchr+0x78>
d007dc14:	d1ee      	bne.n	d007dbf4 <memchr+0x34>
d007dc16:	bcf0      	pop	{r4, r5, r6, r7}
d007dc18:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d007dc1c:	f002 0207 	and.w	r2, r2, #7
d007dc20:	b132      	cbz	r2, d007dc30 <memchr+0x70>
d007dc22:	f810 3b01 	ldrb.w	r3, [r0], #1
d007dc26:	3a01      	subs	r2, #1
d007dc28:	ea83 0301 	eor.w	r3, r3, r1
d007dc2c:	b113      	cbz	r3, d007dc34 <memchr+0x74>
d007dc2e:	d1f8      	bne.n	d007dc22 <memchr+0x62>
d007dc30:	2000      	movs	r0, #0
d007dc32:	4770      	bx	lr
d007dc34:	3801      	subs	r0, #1
d007dc36:	4770      	bx	lr
d007dc38:	2d00      	cmp	r5, #0
d007dc3a:	bf06      	itte	eq
d007dc3c:	4635      	moveq	r5, r6
d007dc3e:	3803      	subeq	r0, #3
d007dc40:	3807      	subne	r0, #7
d007dc42:	f015 0f01 	tst.w	r5, #1
d007dc46:	d107      	bne.n	d007dc58 <memchr+0x98>
d007dc48:	3001      	adds	r0, #1
d007dc4a:	f415 7f80 	tst.w	r5, #256	; 0x100
d007dc4e:	bf02      	ittt	eq
d007dc50:	3001      	addeq	r0, #1
d007dc52:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d007dc56:	3001      	addeq	r0, #1
d007dc58:	bcf0      	pop	{r4, r5, r6, r7}
d007dc5a:	3801      	subs	r0, #1
d007dc5c:	4770      	bx	lr
d007dc5e:	bf00      	nop

d007dc60 <memmove>:
d007dc60:	4288      	cmp	r0, r1
d007dc62:	b510      	push	{r4, lr}
d007dc64:	eb01 0402 	add.w	r4, r1, r2
d007dc68:	d902      	bls.n	d007dc70 <memmove+0x10>
d007dc6a:	4284      	cmp	r4, r0
d007dc6c:	4623      	mov	r3, r4
d007dc6e:	d807      	bhi.n	d007dc80 <memmove+0x20>
d007dc70:	1e43      	subs	r3, r0, #1
d007dc72:	42a1      	cmp	r1, r4
d007dc74:	d008      	beq.n	d007dc88 <memmove+0x28>
d007dc76:	f811 2b01 	ldrb.w	r2, [r1], #1
d007dc7a:	f803 2f01 	strb.w	r2, [r3, #1]!
d007dc7e:	e7f8      	b.n	d007dc72 <memmove+0x12>
d007dc80:	4402      	add	r2, r0
d007dc82:	4601      	mov	r1, r0
d007dc84:	428a      	cmp	r2, r1
d007dc86:	d100      	bne.n	d007dc8a <memmove+0x2a>
d007dc88:	bd10      	pop	{r4, pc}
d007dc8a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d007dc8e:	f802 4d01 	strb.w	r4, [r2, #-1]!
d007dc92:	e7f7      	b.n	d007dc84 <memmove+0x24>

d007dc94 <__malloc_lock>:
d007dc94:	4801      	ldr	r0, [pc, #4]	; (d007dc9c <__malloc_lock+0x8>)
d007dc96:	f7ff bf29 	b.w	d007daec <__retarget_lock_acquire_recursive>
d007dc9a:	bf00      	nop
d007dc9c:	d00a9104 	.word	0xd00a9104

d007dca0 <__malloc_unlock>:
d007dca0:	4801      	ldr	r0, [pc, #4]	; (d007dca8 <__malloc_unlock+0x8>)
d007dca2:	f7ff bf24 	b.w	d007daee <__retarget_lock_release_recursive>
d007dca6:	bf00      	nop
d007dca8:	d00a9104 	.word	0xd00a9104

d007dcac <_realloc_r>:
d007dcac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d007dcae:	4607      	mov	r7, r0
d007dcb0:	4614      	mov	r4, r2
d007dcb2:	460e      	mov	r6, r1
d007dcb4:	b921      	cbnz	r1, d007dcc0 <_realloc_r+0x14>
d007dcb6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d007dcba:	4611      	mov	r1, r2
d007dcbc:	f7fe bfe2 	b.w	d007cc84 <_malloc_r>
d007dcc0:	b922      	cbnz	r2, d007dccc <_realloc_r+0x20>
d007dcc2:	f7fe ff8f 	bl	d007cbe4 <_free_r>
d007dcc6:	4625      	mov	r5, r4
d007dcc8:	4628      	mov	r0, r5
d007dcca:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d007dccc:	f000 f8f2 	bl	d007deb4 <_malloc_usable_size_r>
d007dcd0:	42a0      	cmp	r0, r4
d007dcd2:	d20f      	bcs.n	d007dcf4 <_realloc_r+0x48>
d007dcd4:	4621      	mov	r1, r4
d007dcd6:	4638      	mov	r0, r7
d007dcd8:	f7fe ffd4 	bl	d007cc84 <_malloc_r>
d007dcdc:	4605      	mov	r5, r0
d007dcde:	2800      	cmp	r0, #0
d007dce0:	d0f2      	beq.n	d007dcc8 <_realloc_r+0x1c>
d007dce2:	4631      	mov	r1, r6
d007dce4:	4622      	mov	r2, r4
d007dce6:	f7fe fecf 	bl	d007ca88 <memcpy>
d007dcea:	4631      	mov	r1, r6
d007dcec:	4638      	mov	r0, r7
d007dcee:	f7fe ff79 	bl	d007cbe4 <_free_r>
d007dcf2:	e7e9      	b.n	d007dcc8 <_realloc_r+0x1c>
d007dcf4:	4635      	mov	r5, r6
d007dcf6:	e7e7      	b.n	d007dcc8 <_realloc_r+0x1c>

d007dcf8 <_raise_r>:
d007dcf8:	291f      	cmp	r1, #31
d007dcfa:	b538      	push	{r3, r4, r5, lr}
d007dcfc:	4604      	mov	r4, r0
d007dcfe:	460d      	mov	r5, r1
d007dd00:	d904      	bls.n	d007dd0c <_raise_r+0x14>
d007dd02:	2316      	movs	r3, #22
d007dd04:	6003      	str	r3, [r0, #0]
d007dd06:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d007dd0a:	bd38      	pop	{r3, r4, r5, pc}
d007dd0c:	6c42      	ldr	r2, [r0, #68]	; 0x44
d007dd0e:	b112      	cbz	r2, d007dd16 <_raise_r+0x1e>
d007dd10:	f852 3021 	ldr.w	r3, [r2, r1, lsl #2]
d007dd14:	b94b      	cbnz	r3, d007dd2a <_raise_r+0x32>
d007dd16:	4620      	mov	r0, r4
d007dd18:	f000 f830 	bl	d007dd7c <_getpid_r>
d007dd1c:	462a      	mov	r2, r5
d007dd1e:	4601      	mov	r1, r0
d007dd20:	4620      	mov	r0, r4
d007dd22:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d007dd26:	f000 b817 	b.w	d007dd58 <_kill_r>
d007dd2a:	2b01      	cmp	r3, #1
d007dd2c:	d00a      	beq.n	d007dd44 <_raise_r+0x4c>
d007dd2e:	1c59      	adds	r1, r3, #1
d007dd30:	d103      	bne.n	d007dd3a <_raise_r+0x42>
d007dd32:	2316      	movs	r3, #22
d007dd34:	6003      	str	r3, [r0, #0]
d007dd36:	2001      	movs	r0, #1
d007dd38:	e7e7      	b.n	d007dd0a <_raise_r+0x12>
d007dd3a:	2400      	movs	r4, #0
d007dd3c:	f842 4025 	str.w	r4, [r2, r5, lsl #2]
d007dd40:	4628      	mov	r0, r5
d007dd42:	4798      	blx	r3
d007dd44:	2000      	movs	r0, #0
d007dd46:	e7e0      	b.n	d007dd0a <_raise_r+0x12>

d007dd48 <raise>:
d007dd48:	4b02      	ldr	r3, [pc, #8]	; (d007dd54 <raise+0xc>)
d007dd4a:	4601      	mov	r1, r0
d007dd4c:	6818      	ldr	r0, [r3, #0]
d007dd4e:	f7ff bfd3 	b.w	d007dcf8 <_raise_r>
d007dd52:	bf00      	nop
d007dd54:	d007ee84 	.word	0xd007ee84

d007dd58 <_kill_r>:
d007dd58:	b538      	push	{r3, r4, r5, lr}
d007dd5a:	4d07      	ldr	r5, [pc, #28]	; (d007dd78 <_kill_r+0x20>)
d007dd5c:	2300      	movs	r3, #0
d007dd5e:	4604      	mov	r4, r0
d007dd60:	4608      	mov	r0, r1
d007dd62:	4611      	mov	r1, r2
d007dd64:	602b      	str	r3, [r5, #0]
d007dd66:	f7fa ff6f 	bl	d0078c48 <_kill>
d007dd6a:	1c43      	adds	r3, r0, #1
d007dd6c:	d102      	bne.n	d007dd74 <_kill_r+0x1c>
d007dd6e:	682b      	ldr	r3, [r5, #0]
d007dd70:	b103      	cbz	r3, d007dd74 <_kill_r+0x1c>
d007dd72:	6023      	str	r3, [r4, #0]
d007dd74:	bd38      	pop	{r3, r4, r5, pc}
d007dd76:	bf00      	nop
d007dd78:	d00a910c 	.word	0xd00a910c

d007dd7c <_getpid_r>:
d007dd7c:	f7fa bf62 	b.w	d0078c44 <_getpid>

d007dd80 <__sread>:
d007dd80:	b510      	push	{r4, lr}
d007dd82:	460c      	mov	r4, r1
d007dd84:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d007dd88:	f000 f89c 	bl	d007dec4 <_read_r>
d007dd8c:	2800      	cmp	r0, #0
d007dd8e:	bfab      	itete	ge
d007dd90:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d007dd92:	89a3      	ldrhlt	r3, [r4, #12]
d007dd94:	181b      	addge	r3, r3, r0
d007dd96:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d007dd9a:	bfac      	ite	ge
d007dd9c:	6563      	strge	r3, [r4, #84]	; 0x54
d007dd9e:	81a3      	strhlt	r3, [r4, #12]
d007dda0:	bd10      	pop	{r4, pc}

d007dda2 <__swrite>:
d007dda2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d007dda6:	461f      	mov	r7, r3
d007dda8:	898b      	ldrh	r3, [r1, #12]
d007ddaa:	05db      	lsls	r3, r3, #23
d007ddac:	4605      	mov	r5, r0
d007ddae:	460c      	mov	r4, r1
d007ddb0:	4616      	mov	r6, r2
d007ddb2:	d505      	bpl.n	d007ddc0 <__swrite+0x1e>
d007ddb4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d007ddb8:	2302      	movs	r3, #2
d007ddba:	2200      	movs	r2, #0
d007ddbc:	f000 f868 	bl	d007de90 <_lseek_r>
d007ddc0:	89a3      	ldrh	r3, [r4, #12]
d007ddc2:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d007ddc6:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d007ddca:	81a3      	strh	r3, [r4, #12]
d007ddcc:	4632      	mov	r2, r6
d007ddce:	463b      	mov	r3, r7
d007ddd0:	4628      	mov	r0, r5
d007ddd2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d007ddd6:	f000 b817 	b.w	d007de08 <_write_r>

d007ddda <__sseek>:
d007ddda:	b510      	push	{r4, lr}
d007dddc:	460c      	mov	r4, r1
d007ddde:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d007dde2:	f000 f855 	bl	d007de90 <_lseek_r>
d007dde6:	1c43      	adds	r3, r0, #1
d007dde8:	89a3      	ldrh	r3, [r4, #12]
d007ddea:	bf15      	itete	ne
d007ddec:	6560      	strne	r0, [r4, #84]	; 0x54
d007ddee:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d007ddf2:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d007ddf6:	81a3      	strheq	r3, [r4, #12]
d007ddf8:	bf18      	it	ne
d007ddfa:	81a3      	strhne	r3, [r4, #12]
d007ddfc:	bd10      	pop	{r4, pc}

d007ddfe <__sclose>:
d007ddfe:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d007de02:	f000 b813 	b.w	d007de2c <_close_r>
	...

d007de08 <_write_r>:
d007de08:	b538      	push	{r3, r4, r5, lr}
d007de0a:	4d07      	ldr	r5, [pc, #28]	; (d007de28 <_write_r+0x20>)
d007de0c:	4604      	mov	r4, r0
d007de0e:	4608      	mov	r0, r1
d007de10:	4611      	mov	r1, r2
d007de12:	2200      	movs	r2, #0
d007de14:	602a      	str	r2, [r5, #0]
d007de16:	461a      	mov	r2, r3
d007de18:	f7fa feea 	bl	d0078bf0 <_write>
d007de1c:	1c43      	adds	r3, r0, #1
d007de1e:	d102      	bne.n	d007de26 <_write_r+0x1e>
d007de20:	682b      	ldr	r3, [r5, #0]
d007de22:	b103      	cbz	r3, d007de26 <_write_r+0x1e>
d007de24:	6023      	str	r3, [r4, #0]
d007de26:	bd38      	pop	{r3, r4, r5, pc}
d007de28:	d00a910c 	.word	0xd00a910c

d007de2c <_close_r>:
d007de2c:	b538      	push	{r3, r4, r5, lr}
d007de2e:	4d06      	ldr	r5, [pc, #24]	; (d007de48 <_close_r+0x1c>)
d007de30:	2300      	movs	r3, #0
d007de32:	4604      	mov	r4, r0
d007de34:	4608      	mov	r0, r1
d007de36:	602b      	str	r3, [r5, #0]
d007de38:	f7fa fee6 	bl	d0078c08 <_close>
d007de3c:	1c43      	adds	r3, r0, #1
d007de3e:	d102      	bne.n	d007de46 <_close_r+0x1a>
d007de40:	682b      	ldr	r3, [r5, #0]
d007de42:	b103      	cbz	r3, d007de46 <_close_r+0x1a>
d007de44:	6023      	str	r3, [r4, #0]
d007de46:	bd38      	pop	{r3, r4, r5, pc}
d007de48:	d00a910c 	.word	0xd00a910c

d007de4c <_fstat_r>:
d007de4c:	b538      	push	{r3, r4, r5, lr}
d007de4e:	4d07      	ldr	r5, [pc, #28]	; (d007de6c <_fstat_r+0x20>)
d007de50:	2300      	movs	r3, #0
d007de52:	4604      	mov	r4, r0
d007de54:	4608      	mov	r0, r1
d007de56:	4611      	mov	r1, r2
d007de58:	602b      	str	r3, [r5, #0]
d007de5a:	f7fa fed9 	bl	d0078c10 <_fstat>
d007de5e:	1c43      	adds	r3, r0, #1
d007de60:	d102      	bne.n	d007de68 <_fstat_r+0x1c>
d007de62:	682b      	ldr	r3, [r5, #0]
d007de64:	b103      	cbz	r3, d007de68 <_fstat_r+0x1c>
d007de66:	6023      	str	r3, [r4, #0]
d007de68:	bd38      	pop	{r3, r4, r5, pc}
d007de6a:	bf00      	nop
d007de6c:	d00a910c 	.word	0xd00a910c

d007de70 <_isatty_r>:
d007de70:	b538      	push	{r3, r4, r5, lr}
d007de72:	4d06      	ldr	r5, [pc, #24]	; (d007de8c <_isatty_r+0x1c>)
d007de74:	2300      	movs	r3, #0
d007de76:	4604      	mov	r4, r0
d007de78:	4608      	mov	r0, r1
d007de7a:	602b      	str	r3, [r5, #0]
d007de7c:	f7fa fede 	bl	d0078c3c <_isatty>
d007de80:	1c43      	adds	r3, r0, #1
d007de82:	d102      	bne.n	d007de8a <_isatty_r+0x1a>
d007de84:	682b      	ldr	r3, [r5, #0]
d007de86:	b103      	cbz	r3, d007de8a <_isatty_r+0x1a>
d007de88:	6023      	str	r3, [r4, #0]
d007de8a:	bd38      	pop	{r3, r4, r5, pc}
d007de8c:	d00a910c 	.word	0xd00a910c

d007de90 <_lseek_r>:
d007de90:	b538      	push	{r3, r4, r5, lr}
d007de92:	4d07      	ldr	r5, [pc, #28]	; (d007deb0 <_lseek_r+0x20>)
d007de94:	4604      	mov	r4, r0
d007de96:	4608      	mov	r0, r1
d007de98:	4611      	mov	r1, r2
d007de9a:	2200      	movs	r2, #0
d007de9c:	602a      	str	r2, [r5, #0]
d007de9e:	461a      	mov	r2, r3
d007dea0:	f7fa febc 	bl	d0078c1c <_lseek>
d007dea4:	1c43      	adds	r3, r0, #1
d007dea6:	d102      	bne.n	d007deae <_lseek_r+0x1e>
d007dea8:	682b      	ldr	r3, [r5, #0]
d007deaa:	b103      	cbz	r3, d007deae <_lseek_r+0x1e>
d007deac:	6023      	str	r3, [r4, #0]
d007deae:	bd38      	pop	{r3, r4, r5, pc}
d007deb0:	d00a910c 	.word	0xd00a910c

d007deb4 <_malloc_usable_size_r>:
d007deb4:	f851 3c04 	ldr.w	r3, [r1, #-4]
d007deb8:	1f18      	subs	r0, r3, #4
d007deba:	2b00      	cmp	r3, #0
d007debc:	bfbc      	itt	lt
d007debe:	580b      	ldrlt	r3, [r1, r0]
d007dec0:	18c0      	addlt	r0, r0, r3
d007dec2:	4770      	bx	lr

d007dec4 <_read_r>:
d007dec4:	b538      	push	{r3, r4, r5, lr}
d007dec6:	4d07      	ldr	r5, [pc, #28]	; (d007dee4 <_read_r+0x20>)
d007dec8:	4604      	mov	r4, r0
d007deca:	4608      	mov	r0, r1
d007decc:	4611      	mov	r1, r2
d007dece:	2200      	movs	r2, #0
d007ded0:	602a      	str	r2, [r5, #0]
d007ded2:	461a      	mov	r2, r3
d007ded4:	f7fa fe8e 	bl	d0078bf4 <_read>
d007ded8:	1c43      	adds	r3, r0, #1
d007deda:	d102      	bne.n	d007dee2 <_read_r+0x1e>
d007dedc:	682b      	ldr	r3, [r5, #0]
d007dede:	b103      	cbz	r3, d007dee2 <_read_r+0x1e>
d007dee0:	6023      	str	r3, [r4, #0]
d007dee2:	bd38      	pop	{r3, r4, r5, pc}
d007dee4:	d00a910c 	.word	0xd00a910c

d007dee8 <_global_impure_ptr>:
d007dee8:	d007ee88 69737341 6f536e67 3a646e75     ....AssignSound:
d007def8:	69706120 6475615f 5d75255b 20736920      api_aud[%u] is 
d007df08:	4c4c554e 000a0d21 202a2a2a 454d4147     NULL!...*** GAME
d007df18:	45564f20 59202152 4720554f 4420544f      OVER! YOU GOT D
d007df28:	21444145 2a2a2a20 00000000 726f6353     EAD! ***....Scor
d007df38:	00003a65 00756c25 6576654c 25203a6c     e:..%lu.Level: %
d007df48:	00000075 6376656c 2e706d6f 00646f6d     u...levcomp.mod.
d007df58:	4c202a2a 4c455645 20752520 00002a2a     ** LEVEL %u **..
d007df68:	20544547 44414552 00002159 53455250     GET READY!..PRES
d007df78:	49462053 00214552 656c6473 6d2e3176     S FIRE!.sdlev1.m
d007df88:	0000646f 72746567 79646165 646f6d2e     od..getready.mod
d007df98:	00000000 726f6353 25203a65 0000756c     ....Score: %lu..
d007dfa8:	6576694c 00003a73 65747341 64696f72     Lives:..Asteroid
d007dfb8:	25203a73 00000075 7574732f 73756472     s: %u.../sturdus
d007dfc8:	00000074 74736574 656c6966 7478742e     t...testfile.txt
d007dfd8:	00000000 656c6946 3a4e454c 756c2520     ....FileLEN: %lu
d007dfe8:	00000a0d 656c6946 61657220 756f2064     ....File read ou
d007dff8:	61772074 203a2073 00000000 62616e75     t was : ....unab
d007e008:	7420656c 706f206f 66206e65 0d656c69     le to open file.
d007e018:	0000000a 6548202a 73207061 74726174     ....* Heap start
d007e028:	74612073 7025203a 00000a0d 6548202a     s at: %p....* He
d007e038:	73207061 3a657a69 756c2520 74796220     ap size: %lu byt
d007e048:	0a0d7365 00000000 72747341 7364696f     es......Astroids
d007e058:	6d654420 0d0a0d6f 0000000a 65726966      Demo.......fire
d007e068:	61772e6d 00000076 6c696146 74206465     m.wav...Failed t
d007e078:	6f6c206f 66206461 3a656c69 0d732520     o load file: %s.
d007e088:	0000000a 676e6162 6c616d53 61772e6c     ....bangSmall.wa
d007e098:	00000076 75726874 2e327473 00766177     v...thrust2.wav.
d007e0a8:	63756173 2e6d7265 00766177 64616564     saucerm.wav.dead
d007e0b8:	61772e6d 00000076 656c6574 74726f70     m.wav...teleport
d007e0c8:	61772e6d 00000076 72747865 66696c61     m.wav...extralif
d007e0d8:	61772e65 00000076 72617473 74737564     e.wav...stardust
d007e0e8:	646f6d2e 00000000 62676962 2e6b6361     .mod....bigback.
d007e0f8:	00627070 6c746974 70702e65 00000062     ppb.title.ppb...
d007e108:	6476656c 2e656e6f 00627070 50202a2a     levdone.ppb.** P
d007e118:	53534552 52494620 2a2a2045 00000000     RESS FIRE **....
d007e128:	6c252040 736d2075 00000000              @ %lu ms....

d007e134 <clutSrcBigBack>:
d007e134:	000a0a22 ff02020a ff272676 ff111134     ".......v&'.4...
d007e144:	ff161648 ff2d2d8f ffdcd8f2 ff1a1b54     H....--.....T...
d007e154:	ff080412 ff3331a2 ff080818 ff5f5e96     .....13......^_.
d007e164:	ff2a2955 ff59576e ff1b1a64 ff030311     U)*.nWY.d.......
d007e174:	ff11112a ff0c0d2a ff060630 ff2a2838     *...*...0...8(*.
d007e184:	ff000003 ff0a0912 ff08041a ff222066     ............f ".
d007e194:	ff6562c7 ff02021c ff1d1d5b ff100b24     .be.....[...$...
d007e1a4:	ff1a1c4e ff413f95 ff0f0e3b ff04071e     N....?A.;.......
d007e1b4:	ff0d0b1b ff9793cb ff14121e ff080840     ............@...
d007e1c4:	ff3f3d53 ff1e2075 ff1e1c2a ff1b1987     S=?.u ..*.......
d007e1d4:	ff140f40 ff08030c ff111343 ff272884     @.......C....('.
d007e1e4:	ff4f3dca ff0c0c31 ff3f3dae ff08080c     .=O.1....=?.....
d007e1f4:	ff0a0953 ff3e3d6f ff020912 ff131256     S...o=>.....V...
d007e204:	ff030f1a ff191a3c ff3837ba ff01090b     ....<....78.....
d007e214:	ff82809a ff10000b ff090102 ff252495     .............$%.
d007e224:	ff25091b ff363342 ff2a299f ff030503     ..%.B36..)*.....
d007e234:	ff282828 ffff0000 ff00ff00 ffffff00     (((.............
d007e244:	ff0000ff ffff00ff ff00ffff ffffffff     ................
d007e254:	ffffff00 ff12ff55 ff12ee55 ff12b6ff     ....U...U.......
d007e264:	ff001fff ff9d0ec7 fff10000 ff375200     .............R7.
d007e274:	ff000000 ffc80000 ff00c800 ffc8c800     ................
d007e284:	ff0000c8 ffc800c8 ff00c8c8 ffe6e6e6     ................
d007e294:	ffff7700 ff375355 ff3754aa ff3755ff     .w..US7..T7..U7.
d007e2a4:	ff495600 ff495855 ff4959aa ff495aff     .VI.UXI..YI..ZI.
d007e2b4:	ff593400 ff7c4b00 ff9f6200 ffc27900     .4Y..K|..b...y..
d007e2c4:	ff6d6000 ff6d6155 ff6d62aa ff6d63ff     .`m.Uam..bm..cm.
d007e2d4:	ff6d6400 ff806555 ff8066aa ff8067ff     .dm.Ue...f...g..
d007e2e4:	ff926900 ff926a55 ff926baa ff926cff     .i..Uj...k...l..
d007e2f4:	ffeb6d00 fff28d37 fff8ae6f ffffcea6     .m..7...o.......
d007e304:	ffb67200 ffb67355 ffb674aa ffb675ff     .r..Us...t...u..
d007e314:	ffc97600 ffc97755 ffc979aa ffc97aff     .v..Uw...y...z..
d007e324:	ffdb7b00 ffdb7c55 ffdb7daa ffdb7eff     .{..U|...}...~..
d007e334:	ffd3cebe ffe2d9c8 fff0e4d1 ffffefdb     ................
d007e344:	ffff8400 ffff8555 ffff86aa ffff87ff     ....U...........
d007e354:	ff008800 ff008a55 ff008baa ff008cff     ....U...........
d007e364:	ff128d00 ff128e55 ff128faa ff1290ff     ....U...........
d007e374:	ff249200 ff249355 ff2494aa ff2495ff     ..$.U.$...$...$.
d007e384:	ff379600 ff379755 ff3798aa ff3799ff     ..7.U.7...7...7.
d007e394:	ff499b00 ff499c55 ff499daa ff499eff     ..I.U.I...I...I.
d007e3a4:	ff5b9f00 ff5ba055 ff5ba1aa ff5ba3ff     ..[.U.[...[...[.
d007e3b4:	ffa4b5d5 ffa0b0f8 ff94a3e6 ff7c89c1     ..............|.
d007e3c4:	ff6281c0 ff1c62a1 ff4254ea ff62a1bd     ..b..b...TB...b.
d007e3d4:	ff7093c0 ff4977a1 ff003faa ff1554ff     ..p..wI..?...T..
d007e3e4:	ff1c50b9 ff00b3ff ff0088aa ff00b5ff     .P..............
d007e3f4:	ff0e62ff ff5eb7e3 ffbdc0b9 ff85b9ff     .b....^.........
d007e404:	ff006caf ff1f81b9 ff3f5baa ffc9beff     .l.......[?.....
d007e414:	ff5bafcb ffdbc055 ffdbc1aa ffbdc0c0     ..[.U...........
d007e424:	ffedc400 ffedc555 ffedc6aa ffedc7ff     ....U...........
d007e434:	ffffc800 ffffc955 ffffcaaa ffffccff     ....U...........
d007e444:	ff00cd00 ff00ce55 ff00cfaa ff00d0ff     ....U...........
d007e454:	ff12d100 ff12d255 ff12d3aa ff12d5ff     ....U...........
d007e464:	ff24d600 ff24d755 ff24d8aa ff24d9ff     ..$.U.$...$...$.
d007e474:	ff37da00 ff37db55 ff37ddaa ff37deff     ..7.U.7...7...7.
d007e484:	ff49df00 ff49e055 ff49e1aa ff49e2ff     ..I.U.I...I...I.
d007e494:	ff5be300 ff5be555 ff5be6aa ff5be7ff     ..[.U.[...[...[.
d007e4a4:	ff6de800 ff6de955 ff6deaaa ff6debff     ..m.U.m...m...m.
d007e4b4:	ff6dec00 ff80ee55 ff80efaa ff80f0ff     ..m.U...........
d007e4c4:	ff93cea2 ff92f255 ff92f3aa ff92f4ff     ....U...........
d007e4d4:	ffa4f600 ffa4f755 ffa4f8aa ffa4f9ff     ....U...........
d007e4e4:	ffb6fa00 ffb6fb55 ffb6fcaa ffb6feff     ....U...........
d007e4f4:	ffc9ff00 ffc9ff55 ffc9ffaa ffc9ffff     ....U...........
d007e504:	ffdbff00 ffdbff55 ffdbffaa ffdbffff     ....U...........
d007e514:	ffedff00 ffedff55 ffedffaa ffedffff     ....U...........
d007e524:	ffffff00 ffffff55 ffffffaa ffffffff     ....U...........

d007e534 <leveldoneclut32>:
d007e534:	00000000 008c8c8c 00383837 00001000     ........788.....
d007e544:	00a7a7a7 00434343 00000100 00606060     ....CCC.....```.
d007e554:	00575757 006b6b6b 00dff2f3 00768ea0     WWW.kkk.......v.
d007e564:	00817060 003a4c5e 00b7d3dc 006a7a8a     `p..^L:......zj.
d007e574:	00493b1d 004a5c6d 00576777 0087a5b9     .;I.m\J.wgW.....
d007e584:	00162716 007d6955 00756d66 002b3b4b     .'..Ui}.fmu.K;+.
d007e594:	00848380 00141915 00879aab 003a4139     ............9A:.
d007e5a4:	00473e2e 00414650 005e6c7c 00b6bbbf     .>G.PFA.|l^.....
d007e5b4:	00301f02 00432e07 002a2c2b 00465360     ..0...C.+,*.`SF.
d007e5c4:	007d746b 00151601 00716d70 00635d59     kt}.....pmq.Y]c.
d007e5d4:	003e3e3e 004f4f4f 004a534b 00120c03     >>>.OOO.KSJ.....
d007e5e4:	001e2221 00737477 00797979 00535252     !"..wts.yyy.RRS.
d007e5f4:	006e6e6e 0009190b 00080909 0068625e     nnn.........^bh.
d007e604:	00656565 00605b63 00969696 006d6864     eee.c[`.....dhm.
d007e614:	005b5b5b 0064686b 000f0f11 004a4a4a     [[[.khd.....JJJ.
d007e624:	00a0a0a0 0068686a 00a3a3a3 00636269     ....jhh.....ibc.
d007e634:	00707070 00db3855 00db39aa 00db3aff     ppp.U8...9...:..
d007e644:	00ed3b00 00ed3c55 00ed3daa 00ed3fff     .;..U<...=...?..
d007e654:	00ff4000 00ff4155 00ff42aa 00ff43ff     .@..UA...B...C..
d007e664:	00004400 00004555 000046aa 000048ff     .D..UE...F...H..
d007e674:	00ffff00 0012ff55 0012ee55 0012b6ff     ....U...U.......
d007e684:	00001fff 009d0ec7 00f10000 00ff7700     .............w..
d007e694:	00375200 00375355 003754aa 003755ff     .R7.US7..T7..U7.
d007e6a4:	00495600 00495855 004959aa 00495aff     .VI.UXI..YI..ZI.
d007e6b4:	005b5b00 005b5c55 005b5daa 005b5eff     .[[.U\[..][..^[.
d007e6c4:	006d6000 006d6155 006d62aa 006d63ff     .`m.Uam..bm..cm.
d007e6d4:	006d6400 00806555 008066aa 008067ff     .dm.Ue...f...g..
d007e6e4:	00926900 00926a55 00926baa 00926cff     .i..Uj...k...l..
d007e6f4:	00a46d00 00a46e55 00a46faa 00a471ff     .m..Un...o...q..
d007e704:	00b67200 00b67355 00b674aa 00b675ff     .r..Us...t...u..
d007e714:	00c97600 00c97755 00c979aa 00c97aff     .v..Uw...y...z..
d007e724:	00db7b00 00db7c55 00db7daa 00db7eff     .{..U|...}...~..
d007e734:	00ed7f00 00ed8055 00ed82aa 00ed83ff     ....U...........
d007e744:	00ff8400 00ff8555 00ff86aa 00ff87ff     ....U...........
d007e754:	00008800 00008a55 00008baa 00008cff     ....U...........
d007e764:	00128d00 00128e55 00128faa 001290ff     ....U...........
d007e774:	00249200 00249355 002494aa 002495ff     ..$.U.$...$...$.
d007e784:	00379600 00379755 003798aa 003799ff     ..7.U.7...7...7.
d007e794:	00499b00 00499c55 00499daa 00499eff     ..I.U.I...I...I.
d007e7a4:	005b9f00 005ba055 005ba1aa 005ba3ff     ..[.U.[...[...[.
d007e7b4:	00a4b5d5 00a0b0f8 0094a3e6 007c89c1     ..............|.
d007e7c4:	006281c0 001c62a1 004254ea 0062a1bd     ..b..b...TB...b.
d007e7d4:	007093c0 004977a1 00003faa 001554ff     ..p..wI..?...T..
d007e7e4:	001c50b9 0000b3ff 000088aa 0000b5ff     .P..............
d007e7f4:	000e62ff 005eb7e3 00bdc0b9 0085b9ff     .b....^.........
d007e804:	00006caf 001f81b9 003f5baa 00c9beff     .l.......[?.....
d007e814:	005bafcb 00dbc055 00dbc1aa 00bdc0c0     ..[.U...........
d007e824:	00edc400 00edc555 00edc6aa 00edc7ff     ....U...........
d007e834:	00ffc800 00ffc955 00ffcaaa 00ffccff     ....U...........
d007e844:	0000cd00 0000ce55 0000cfaa 0000d0ff     ....U...........
d007e854:	0012d100 0012d255 0012d3aa 0012d5ff     ....U...........
d007e864:	0024d600 0024d755 0024d8aa 0024d9ff     ..$.U.$...$...$.
d007e874:	0037da00 0037db55 0037ddaa 0037deff     ..7.U.7...7...7.
d007e884:	0049df00 0049e055 0049e1aa 0049e2ff     ..I.U.I...I...I.
d007e894:	005be300 005be555 005be6aa 005be7ff     ..[.U.[...[...[.
d007e8a4:	006de800 006de955 006deaaa 006debff     ..m.U.m...m...m.
d007e8b4:	006dec00 0080ee55 0080efaa 0080f0ff     ..m.U...........
d007e8c4:	0093cea2 0092f255 0092f3aa 0092f4ff     ....U...........
d007e8d4:	00a4f600 00a4f755 00a4f8aa 00a4f9ff     ....U...........
d007e8e4:	00b6fa00 00b6fb55 00b6fcaa 00b6feff     ....U...........
d007e8f4:	00c9ff00 00c9ff55 00c9ffaa 00c9ffff     ....U...........
d007e904:	00dbff00 00dbff55 00dbffaa 00dbffff     ....U...........
d007e914:	00edff00 00edff55 00edffaa 00edffff     ....U...........
d007e924:	00ffff00 00ffff55 00ffffaa 00ffffff     ....U...........

d007e934 <titleclut32>:
d007e934:	00000036 00a25500 00000004 00000026     6....U......&...
d007e944:	00000016 00000046 00dfdfea 00d7a602     ....F...........
d007e954:	004d0400 00000056 0001006a 00722900     ..M.V...j....)r.
d007e964:	00242434 000e0094 00565666 00343445     4$$.....fVV.E44.
d007e974:	00320104 004a4a5a 00b9b9cd 00676777     ..2.ZJJ.....wgg.
d007e984:	009898a8 00777788 00a8a8b9 00888898     .....ww.........
d007e994:	00ecd20f 001b1b2b 00641400 00f0e462     ....+.....d.b...
d007e9a4:	00f2eeaa 008e4100 00171735 00c58b01     .....A..5.......
d007e9b4:	00130024 00150002 00b96e00 001a0016     $........n......
d007e9c4:	0029021e 00d6ae3f 00100032 00541d07     ..).?...2.....T.
d007e9d4:	007d3a00 001d1d44 00ddc18f 004701d7     .:}.D.........G.
d007e9e4:	0010101e 00a16a40 00c08f41 002900b5     ....@j..A.....).
d007e9f4:	000c0044 000c0160 00080944 00272757     D...`...D...W''.
d007ea04:	004d2220 00a37c89 00161457 006a351d      "M..|..W....5j.
d007ea14:	00401016 000d0d38 00210b3e 00090a51     ..@.8...>.!.Q...
d007ea24:	000e007e 00c39d7b 003f3f4f 00090a2b     ~...{...O??.+...
d007ea34:	00db3700 00db3855 00db39aa 00db3aff     .7..U8...9...:..
d007ea44:	00ed3b00 00ed3c55 00ed3daa 00ed3fff     .;..U<...=...?..
d007ea54:	00ff4000 00ff4155 00ff42aa 00ff43ff     .@..UA...B...C..
d007ea64:	00004400 00004555 000046aa 000048ff     .D..UE...F...H..
d007ea74:	00ffff00 0012ff55 0012ee55 0012b6ff     ....U...U.......
d007ea84:	00001fff 009d0ec7 00f10000 00ff7700     .............w..
d007ea94:	00375200 00375355 003754aa 003755ff     .R7.US7..T7..U7.
d007eaa4:	00495600 00495855 004959aa 00495aff     .VI.UXI..YI..ZI.
d007eab4:	005b5b00 005b5c55 005b5daa 005b5eff     .[[.U\[..][..^[.
d007eac4:	006d6000 006d6155 006d62aa 006d63ff     .`m.Uam..bm..cm.
d007ead4:	006d6400 00806555 008066aa 008067ff     .dm.Ue...f...g..
d007eae4:	00926900 00926a55 00926baa 00926cff     .i..Uj...k...l..
d007eaf4:	00a46d00 00a46e55 00a46faa 00a471ff     .m..Un...o...q..
d007eb04:	00b67200 00b67355 00b674aa 00b675ff     .r..Us...t...u..
d007eb14:	00c97600 00c97755 00c979aa 00c97aff     .v..Uw...y...z..
d007eb24:	00db7b00 00db7c55 00db7daa 00db7eff     .{..U|...}...~..
d007eb34:	00ed7f00 00ed8055 00ed82aa 00ed83ff     ....U...........
d007eb44:	00ff8400 00ff8555 00ff86aa 00ff87ff     ....U...........
d007eb54:	00008800 00008a55 00008baa 00008cff     ....U...........
d007eb64:	00128d00 00128e55 00128faa 001290ff     ....U...........
d007eb74:	00249200 00249355 002494aa 002495ff     ..$.U.$...$...$.
d007eb84:	00379600 00379755 003798aa 003799ff     ..7.U.7...7...7.
d007eb94:	00499b00 00499c55 00499daa 00499eff     ..I.U.I...I...I.
d007eba4:	005b9f00 005ba055 005ba1aa 005ba3ff     ..[.U.[...[...[.
d007ebb4:	00a4b5d5 00a0b0f8 0094a3e6 007c89c1     ..............|.
d007ebc4:	006281c0 001c62a1 004254ea 0062a1bd     ..b..b...TB...b.
d007ebd4:	007093c0 004977a1 00003faa 001554ff     ..p..wI..?...T..
d007ebe4:	001c50b9 0000b3ff 000088aa 0000b5ff     .P..............
d007ebf4:	000e62ff 005eb7e3 00bdc0b9 0085b9ff     .b....^.........
d007ec04:	00006caf 001f81b9 003f5baa 00c9beff     .l.......[?.....
d007ec14:	005bafcb 00dbc055 00dbc1aa 00bdc0c0     ..[.U...........
d007ec24:	00edc400 00edc555 00edc6aa 00edc7ff     ....U...........
d007ec34:	00ffc800 00ffc955 00ffcaaa 00ffccff     ....U...........
d007ec44:	0000cd00 0000ce55 0000cfaa 0000d0ff     ....U...........
d007ec54:	0012d100 0012d255 0012d3aa 0012d5ff     ....U...........
d007ec64:	0024d600 0024d755 0024d8aa 0024d9ff     ..$.U.$...$...$.
d007ec74:	0037da00 0037db55 0037ddaa 0037deff     ..7.U.7...7...7.
d007ec84:	0049df00 0049e055 0049e1aa 0049e2ff     ..I.U.I...I...I.
d007ec94:	005be300 005be555 005be6aa 005be7ff     ..[.U.[...[...[.
d007eca4:	006de800 006de955 006deaaa 006debff     ..m.U.m...m...m.
d007ecb4:	006dec00 0080ee55 0080efaa 0080f0ff     ..m.U...........
d007ecc4:	0093cea2 0092f255 0092f3aa 0092f4ff     ....U...........
d007ecd4:	00a4f600 00a4f755 00a4f8aa 00a4f9ff     ....U...........
d007ece4:	00b6fa00 00b6fb55 00b6fcaa 00b6feff     ....U...........
d007ecf4:	00c9ff00 00c9ff55 00c9ffaa 00c9ffff     ....U...........
d007ed04:	00dbff00 00dbff55 00dbffaa 00dbffff     ....U...........
d007ed14:	00edff00 00edff55 00edffaa 00edffff     ....U...........
d007ed24:	00ffff00 00ffff55 00ffffaa 00ffffff     ....U...........
d007ed34:	4e454552 616d2054 636f6c6c 63757320     REENT malloc suc
d007ed44:	64656563 2f006465 6c697562 6e672f64     ceeded./build/gn
d007ed54:	6f742d75 2d736c6f 2d726f66 336d7473     u-tools-for-stm3
d007ed64:	2d395f32 30323032 2d32712d 61647075     2_9-2020-q2-upda
d007ed74:	322e6574 31303230 2d313030 31323631     te.20201001-1621
d007ed84:	6372732f 77656e2f 2f62696c 6c77656e     /src/newlib/newl
d007ed94:	6c2f6269 2f636269 6c647473 722f6269     ib/libc/stdlib/r
d007eda4:	2e646e61 202c0063 636e7566 6e6f6974     and.c., function
d007edb4:	6100203a 72657373 6e6f6974 73252220     : .assertion "%s
d007edc4:	61662022 64656c69 6966203a 2220656c     " failed: file "
d007edd4:	2c227325 6e696c20 64252065 73257325     %s", line %d%s%s
d007ede4:	2d23000a 00202b30 004c6c68 45676665     ..#-0+ .hlL.efgE
d007edf4:	30004746 34333231 38373635 43424139     FG.0123456789ABC
d007ee04:	00464544 33323130 37363534 62613938     DEF.0123456789ab
d007ee14:	66656463 00000000                       cdef....

d007ee1c <__sf_fake_stderr>:
	...

d007ee3c <__sf_fake_stdin>:
	...

d007ee5c <__sf_fake_stdout>:
	...

Disassembly of section .init:

d007ee7c <_init>:
d007ee7c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d007ee7e:	bf00      	nop

Disassembly of section .fini:

d007ee80 <_fini>:
d007ee80:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d007ee82:	bf00      	nop
