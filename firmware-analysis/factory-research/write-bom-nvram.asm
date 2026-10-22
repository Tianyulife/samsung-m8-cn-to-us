
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44f028c0 <_ZN10FCNvramMap13WriteBomModelEPKcj>:
44f028c0: b5f0         	push	{r4, r5, r6, r7, lr}
44f028c2: 4614         	mov	r4, r2
44f028c4: 4a2a         	ldr	r2, [pc, #0xa8]         @ 0x44f02970 <_ZN10FCNvramMap13WriteBomModelEPKcj+0xb0>
44f028c6: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x44f02974 <_ZN10FCNvramMap13WriteBomModelEPKcj+0xb4>
44f028c8: b08b         	sub	sp, #0x2c
44f028ca: 447a         	add	r2, pc
44f028cc: 58d3         	ldr	r3, [r2, r3]
44f028ce: 681b         	ldr	r3, [r3]
44f028d0: 9309         	str	r3, [sp, #0x24]
44f028d2: f04f 0300    	mov.w	r3, #0x0
44f028d6: 2900         	cmp	r1, #0x0
44f028d8: d044         	beq	0x44f02964 <_ZN10FCNvramMap13WriteBomModelEPKcj+0xa4> @ imm = #0x88
44f028da: 4606         	mov	r6, r0
44f028dc: 4608         	mov	r0, r1
44f028de: 460d         	mov	r5, r1
44f028e0: f7e2 ed12    	blx	0x44ee5308 <strlen@plt> @ imm = #-0x1d5dc
44f028e4: 2813         	cmp	r0, #0x13
44f028e6: d83d         	bhi	0x44f02964 <_ZN10FCNvramMap13WriteBomModelEPKcj+0xa4> @ imm = #0x7a
44f028e8: efc0 0050    	vmov.i32	q8, #0x0
44f028ec: ab05         	add	r3, sp, #0x14
44f028ee: af04         	add	r7, sp, #0x10
44f028f0: 4629         	mov	r1, r5
44f028f2: 2213         	movs	r2, #0x13
44f028f4: 4638         	mov	r0, r7
44f028f6: 2500         	movs	r5, #0x0
44f028f8: 9504         	str	r5, [sp, #0x10]
44f028fa: f943 0a0f    	vst1.8	{d16, d17}, [r3]
44f028fe: f7e2 ee52    	blx	0x44ee55a4 <strncpy@plt> @ imm = #-0x1d35c
44f02902: 2c13         	cmp	r4, #0x13
44f02904: 4623         	mov	r3, r4
44f02906: bf28         	it	hs
44f02908: 2313         	movhs	r3, #0x13
44f0290a: 462c         	mov	r4, r5
44f0290c: 443b         	add	r3, r7
44f0290e: aa09         	add	r2, sp, #0x24
44f02910: f803 4b01    	strb	r4, [r3], #1
44f02914: 4293         	cmp	r3, r2
44f02916: d1fb         	bne	0x44f02910 <_ZN10FCNvramMap13WriteBomModelEPKcj+0x50> @ imm = #-0xa
44f02918: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x44f02978 <_ZN10FCNvramMap13WriteBomModelEPKcj+0xb8>
44f0291a: 2104         	movs	r1, #0x4
44f0291c: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x44f0297c <_ZN10FCNvramMap13WriteBomModelEPKcj+0xbc>
44f0291e: 2000         	movs	r0, #0x0
44f02920: 447b         	add	r3, pc
44f02922: f240 15ab    	movw	r5, #0x1ab
44f02926: 447a         	add	r2, pc
44f02928: 3345         	adds	r3, #0x45
44f0292a: 9201         	str	r2, [sp, #0x4]
44f0292c: 9300         	str	r3, [sp]
44f0292e: 4a14         	ldr	r2, [pc, #0x50]         @ 0x44f02980 <_ZN10FCNvramMap13WriteBomModelEPKcj+0xc0>
44f02930: 4b14         	ldr	r3, [pc, #0x50]         @ 0x44f02984 <_ZN10FCNvramMap13WriteBomModelEPKcj+0xc4>
44f02932: 447a         	add	r2, pc
44f02934: 9703         	str	r7, [sp, #0xc]
44f02936: 447b         	add	r3, pc
44f02938: 9502         	str	r5, [sp, #0x8]
44f0293a: f7e2 ea4a    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x1db6c
44f0293e: 6831         	ldr	r1, [r6]
44f02940: 9400         	str	r4, [sp]
44f02942: 463b         	mov	r3, r7
44f02944: 4630         	mov	r0, r6
44f02946: 2214         	movs	r2, #0x14
44f02948: 684c         	ldr	r4, [r1, #0x4]
44f0294a: f24f 3121    	movw	r1, #0xf321
44f0294e: 47a0         	blx	r4
44f02950: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x44f02988 <_ZN10FCNvramMap13WriteBomModelEPKcj+0xc8>
44f02952: 4b08         	ldr	r3, [pc, #0x20]         @ 0x44f02974 <_ZN10FCNvramMap13WriteBomModelEPKcj+0xb4>
44f02954: 447a         	add	r2, pc
44f02956: 58d3         	ldr	r3, [r2, r3]
44f02958: 681a         	ldr	r2, [r3]
44f0295a: 9b09         	ldr	r3, [sp, #0x24]
44f0295c: 405a         	eors	r2, r3
44f0295e: d104         	bne	0x44f0296a <_ZN10FCNvramMap13WriteBomModelEPKcj+0xaa> @ imm = #0x8
44f02960: b00b         	add	sp, #0x2c
44f02962: bdf0         	pop	{r4, r5, r6, r7, pc}
44f02964: f04f 30ff    	mov.w	r0, #0xffffffff
44f02968: e7f2         	b	0x44f02950 <_ZN10FCNvramMap13WriteBomModelEPKcj+0x90> @ imm = #-0x1c
44f0296a: f7e2 ea94    	blx	0x44ee4e94 <__stack_chk_fail@plt> @ imm = #-0x1dad8
44f0296e: bf00         	nop
44f02970: c8ea         	ldm	r0!, {r1, r3, r5, r6, r7}
44f02972: 0001         	movs	r1, r0
44f02974: 0704         	lsls	r4, r0, #0x1c
44f02976: 0000         	movs	r0, r0
44f02978: 9178         	str	r1, [sp, #0x1e0]
44f0297a: 0000         	movs	r0, r0
44f0297c: 926e         	str	r2, [sp, #0x1b8]
44f0297e: 0000         	movs	r0, r0
44f02980: 19e2         	adds	r2, r4, r7
44f02982: 0000         	movs	r0, r0
44f02984: 9246         	str	r2, [sp, #0x118]
44f02986: 0000         	movs	r0, r0
44f02988: c860         	ldm	r0!, {r5, r6}
44f0298a: 0001         	movs	r1, r0
