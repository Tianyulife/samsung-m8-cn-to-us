
firmware-analysis/US-1720.7/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

454f28c0 <_ZN10FCNvramMap13WriteBomModelEPKcj>:
454f28c0: b5f0         	push	{r4, r5, r6, r7, lr}
454f28c2: 4614         	mov	r4, r2
454f28c4: 4a2a         	ldr	r2, [pc, #0xa8]         @ 0x454f2970 <_ZN10FCNvramMap13WriteBomModelEPKcj+0xb0>
454f28c6: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x454f2974 <_ZN10FCNvramMap13WriteBomModelEPKcj+0xb4>
454f28c8: b08b         	sub	sp, #0x2c
454f28ca: 447a         	add	r2, pc
454f28cc: 58d3         	ldr	r3, [r2, r3]
454f28ce: 681b         	ldr	r3, [r3]
454f28d0: 9309         	str	r3, [sp, #0x24]
454f28d2: f04f 0300    	mov.w	r3, #0x0
454f28d6: 2900         	cmp	r1, #0x0
454f28d8: d044         	beq	0x454f2964 <_ZN10FCNvramMap13WriteBomModelEPKcj+0xa4> @ imm = #0x88
454f28da: 4606         	mov	r6, r0
454f28dc: 4608         	mov	r0, r1
454f28de: 460d         	mov	r5, r1
454f28e0: f7e2 ed12    	blx	0x454d5308 <strlen@plt> @ imm = #-0x1d5dc
454f28e4: 2813         	cmp	r0, #0x13
454f28e6: d83d         	bhi	0x454f2964 <_ZN10FCNvramMap13WriteBomModelEPKcj+0xa4> @ imm = #0x7a
454f28e8: efc0 0050    	vmov.i32	q8, #0x0
454f28ec: ab05         	add	r3, sp, #0x14
454f28ee: af04         	add	r7, sp, #0x10
454f28f0: 4629         	mov	r1, r5
454f28f2: 2213         	movs	r2, #0x13
454f28f4: 4638         	mov	r0, r7
454f28f6: 2500         	movs	r5, #0x0
454f28f8: 9504         	str	r5, [sp, #0x10]
454f28fa: f943 0a0f    	vst1.8	{d16, d17}, [r3]
454f28fe: f7e2 ee52    	blx	0x454d55a4 <strncpy@plt> @ imm = #-0x1d35c
454f2902: 2c13         	cmp	r4, #0x13
454f2904: 4623         	mov	r3, r4
454f2906: bf28         	it	hs
454f2908: 2313         	movhs	r3, #0x13
454f290a: 462c         	mov	r4, r5
454f290c: 443b         	add	r3, r7
454f290e: aa09         	add	r2, sp, #0x24
454f2910: f803 4b01    	strb	r4, [r3], #1
454f2914: 4293         	cmp	r3, r2
454f2916: d1fb         	bne	0x454f2910 <_ZN10FCNvramMap13WriteBomModelEPKcj+0x50> @ imm = #-0xa
454f2918: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x454f2978 <_ZN10FCNvramMap13WriteBomModelEPKcj+0xb8>
454f291a: 2104         	movs	r1, #0x4
454f291c: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x454f297c <_ZN10FCNvramMap13WriteBomModelEPKcj+0xbc>
454f291e: 2000         	movs	r0, #0x0
454f2920: 447b         	add	r3, pc
454f2922: f240 15ab    	movw	r5, #0x1ab
454f2926: 447a         	add	r2, pc
454f2928: 3345         	adds	r3, #0x45
454f292a: 9201         	str	r2, [sp, #0x4]
454f292c: 9300         	str	r3, [sp]
454f292e: 4a14         	ldr	r2, [pc, #0x50]         @ 0x454f2980 <_ZN10FCNvramMap13WriteBomModelEPKcj+0xc0>
454f2930: 4b14         	ldr	r3, [pc, #0x50]         @ 0x454f2984 <_ZN10FCNvramMap13WriteBomModelEPKcj+0xc4>
454f2932: 447a         	add	r2, pc
454f2934: 9703         	str	r7, [sp, #0xc]
454f2936: 447b         	add	r3, pc
454f2938: 9502         	str	r5, [sp, #0x8]
454f293a: f7e2 ea4a    	blx	0x454d4dd0 <__dlog_print@plt> @ imm = #-0x1db6c
454f293e: 6831         	ldr	r1, [r6]
454f2940: 9400         	str	r4, [sp]
454f2942: 463b         	mov	r3, r7
454f2944: 4630         	mov	r0, r6
454f2946: 2214         	movs	r2, #0x14
454f2948: 684c         	ldr	r4, [r1, #0x4]
454f294a: f24f 3121    	movw	r1, #0xf321
454f294e: 47a0         	blx	r4
454f2950: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x454f2988 <_ZN10FCNvramMap13WriteBomModelEPKcj+0xc8>
454f2952: 4b08         	ldr	r3, [pc, #0x20]         @ 0x454f2974 <_ZN10FCNvramMap13WriteBomModelEPKcj+0xb4>
454f2954: 447a         	add	r2, pc
454f2956: 58d3         	ldr	r3, [r2, r3]
454f2958: 681a         	ldr	r2, [r3]
454f295a: 9b09         	ldr	r3, [sp, #0x24]
454f295c: 405a         	eors	r2, r3
454f295e: d104         	bne	0x454f296a <_ZN10FCNvramMap13WriteBomModelEPKcj+0xaa> @ imm = #0x8
454f2960: b00b         	add	sp, #0x2c
454f2962: bdf0         	pop	{r4, r5, r6, r7, pc}
454f2964: f04f 30ff    	mov.w	r0, #0xffffffff
454f2968: e7f2         	b	0x454f2950 <_ZN10FCNvramMap13WriteBomModelEPKcj+0x90> @ imm = #-0x1c
454f296a: f7e2 ea94    	blx	0x454d4e94 <__stack_chk_fail@plt> @ imm = #-0x1dad8
454f296e: bf00         	nop
454f2970: c8ea         	ldm	r0!, {r1, r3, r5, r6, r7}
454f2972: 0001         	movs	r1, r0
454f2974: 0704         	lsls	r4, r0, #0x1c
454f2976: 0000         	movs	r0, r0
454f2978: 9178         	str	r1, [sp, #0x1e0]
454f297a: 0000         	movs	r0, r0
454f297c: 926e         	str	r2, [sp, #0x1b8]
454f297e: 0000         	movs	r0, r0
454f2980: 19e2         	adds	r2, r4, r7
454f2982: 0000         	movs	r0, r0
454f2984: 9246         	str	r2, [sp, #0x118]
454f2986: 0000         	movs	r0, r0
454f2988: c860         	ldm	r0!, {r5, r6}
454f298a: 0001         	movs	r1, r0

454f298c <_ZN10FCNvramMap11GetBomModelEPcPi>:
454f298c: e92d 43f0    	push.w	{r4, r5, r6, r7, r8, r9, lr}
454f2990: f04f 0900    	mov.w	r9, #0x0
454f2994: 460c         	mov	r4, r1
454f2996: b087         	sub	sp, #0x1c
454f2998: 460b         	mov	r3, r1
454f299a: 4617         	mov	r7, r2
454f299c: f24f 3121    	movw	r1, #0xf321
454f29a0: 2214         	movs	r2, #0x14
454f29a2: 4606         	mov	r6, r0
454f29a4: f8cd 9000    	str.w	r9, [sp]
454f29a8: 6805         	ldr	r5, [r0]
454f29aa: 682d         	ldr	r5, [r5]
454f29ac: 47a8         	blx	r5
454f29ae: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x454f2a58 <_ZN10FCNvramMap11GetBomModelEPcPi+0xcc>
454f29b0: 4a2a         	ldr	r2, [pc, #0xa8]         @ 0x454f2a5c <_ZN10FCNvramMap11GetBomModelEPcPi+0xd0>
454f29b2: 4680         	mov	r8, r0
454f29b4: 447b         	add	r3, pc
454f29b6: 4648         	mov	r0, r9
454f29b8: 447a         	add	r2, pc
454f29ba: 3345         	adds	r3, #0x45
454f29bc: 9201         	str	r2, [sp, #0x4]
454f29be: 2104         	movs	r1, #0x4
454f29c0: 9300         	str	r3, [sp]
454f29c2: f240 156f    	movw	r5, #0x16f
454f29c6: 4b26         	ldr	r3, [pc, #0x98]         @ 0x454f2a60 <_ZN10FCNvramMap11GetBomModelEPcPi+0xd4>
454f29c8: 4a26         	ldr	r2, [pc, #0x98]         @ 0x454f2a64 <_ZN10FCNvramMap11GetBomModelEPcPi+0xd8>
454f29ca: 447b         	add	r3, pc
454f29cc: 9403         	str	r4, [sp, #0xc]
454f29ce: 447a         	add	r2, pc
454f29d0: 9502         	str	r5, [sp, #0x8]
454f29d2: f7e2 e9fe    	blx	0x454d4dd0 <__dlog_print@plt> @ imm = #-0x1dc04
454f29d6: 1e63         	subs	r3, r4, #0x1
454f29d8: f104 0c13    	add.w	r12, r4, #0x13
454f29dc: f1c4 0201    	rsb.w	r2, r4, #0x1
454f29e0: 18d0         	adds	r0, r2, r3
454f29e2: f913 5f01    	ldrsb	r5, [r3, #1]!
454f29e6: f1a5 0121    	sub.w	r1, r5, #0x21
454f29ea: b2c9         	uxtb	r1, r1
454f29ec: b11d         	cbz	r5, 0x454f29f6 <_ZN10FCNvramMap11GetBomModelEPcPi+0x6a> @ imm = #0x6
454f29ee: 295d         	cmp	r1, #0x5d
454f29f0: d80a         	bhi	0x454f2a08 <_ZN10FCNvramMap11GetBomModelEPcPi+0x7c> @ imm = #0x14
454f29f2: 4563         	cmp	r3, r12
454f29f4: d1f4         	bne	0x454f29e0 <_ZN10FCNvramMap11GetBomModelEPcPi+0x54> @ imm = #-0x18
454f29f6: 4620         	mov	r0, r4
454f29f8: f7e2 ec86    	blx	0x454d5308 <strlen@plt> @ imm = #-0x1d6f4
454f29fc: b1c0         	cbz	r0, 0x454f2a30 <_ZN10FCNvramMap11GetBomModelEPcPi+0xa4> @ imm = #0x30
454f29fe: 6038         	str	r0, [r7]
454f2a00: 4640         	mov	r0, r8
454f2a02: b007         	add	sp, #0x1c
454f2a04: e8bd 83f0    	pop.w	{r4, r5, r6, r7, r8, r9, pc}
454f2a08: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x454f2a68 <_ZN10FCNvramMap11GetBomModelEPcPi+0xdc>
454f2a0a: f44f 7cbd    	mov.w	r12, #0x17a
454f2a0e: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x454f2a6c <_ZN10FCNvramMap11GetBomModelEPcPi+0xe0>
454f2a10: 2106         	movs	r1, #0x6
454f2a12: 447b         	add	r3, pc
454f2a14: 9003         	str	r0, [sp, #0xc]
454f2a16: 447a         	add	r2, pc
454f2a18: 3345         	adds	r3, #0x45
454f2a1a: e9cd 2c01    	strd	r2, r12, [sp, #4]
454f2a1e: 2002         	movs	r0, #0x2
454f2a20: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x454f2a70 <_ZN10FCNvramMap11GetBomModelEPcPi+0xe4>
454f2a22: 9300         	str	r3, [sp]
454f2a24: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x454f2a74 <_ZN10FCNvramMap11GetBomModelEPcPi+0xe8>
454f2a26: 447a         	add	r2, pc
454f2a28: 9504         	str	r5, [sp, #0x10]
454f2a2a: 447b         	add	r3, pc
454f2a2c: f7e2 e9d0    	blx	0x454d4dd0 <__dlog_print@plt> @ imm = #-0x1dc60
454f2a30: 2200         	movs	r2, #0x0
454f2a32: 2330         	movs	r3, #0x30
454f2a34: 7062         	strb	r2, [r4, #0x1]
454f2a36: 4630         	mov	r0, r6
454f2a38: 7023         	strb	r3, [r4]
454f2a3a: 4623         	mov	r3, r4
454f2a3c: 9200         	str	r2, [sp]
454f2a3e: f24f 3121    	movw	r1, #0xf321
454f2a42: 2214         	movs	r2, #0x14
454f2a44: 6834         	ldr	r4, [r6]
454f2a46: 6864         	ldr	r4, [r4, #0x4]
454f2a48: 47a0         	blx	r4
454f2a4a: 4680         	mov	r8, r0
454f2a4c: 2001         	movs	r0, #0x1
454f2a4e: 6038         	str	r0, [r7]
454f2a50: 4640         	mov	r0, r8
454f2a52: b007         	add	sp, #0x1c
454f2a54: e8bd 83f0    	pop.w	{r4, r5, r6, r7, r8, r9, pc}
454f2a58: 90e4         	str	r0, [sp, #0x390]
454f2a5a: 0000         	movs	r0, r0
454f2a5c: 920c         	str	r2, [sp, #0x30]
454f2a5e: 0000         	movs	r0, r0
454f2a60: 91da         	str	r1, [sp, #0x368]
454f2a62: 0000         	movs	r0, r0
454f2a64: 1946         	adds	r6, r0, r5
454f2a66: 0000         	movs	r0, r0
454f2a68: 9086         	str	r0, [sp, #0x218]
454f2a6a: 0000         	movs	r0, r0
454f2a6c: 91ae         	str	r1, [sp, #0x2b8]
454f2a6e: 0000         	movs	r0, r0
454f2a70: 18ee         	adds	r6, r5, r3
454f2a72: 0000         	movs	r0, r0
454f2a74: 91a6         	str	r1, [sp, #0x298]
454f2a76: 0000         	movs	r0, r0
