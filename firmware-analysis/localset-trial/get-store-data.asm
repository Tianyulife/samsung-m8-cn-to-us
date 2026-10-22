
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44ef4270 <_ZN19FCStorageBaseCommon12GetStoreDataEjPi17fac_source_info_s>:
44ef4270: b082         	sub	sp, #0x8
44ef4272: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
44ef4276: 4616         	mov	r6, r2
44ef4278: 4c36         	ldr	r4, [pc, #0xd8]         @ 0x44ef4354 <_ZN19FCStorageBaseCommon12GetStoreDataEjPi17fac_source_info_s+0xe4>
44ef427a: b092         	sub	sp, #0x48
44ef427c: 4a36         	ldr	r2, [pc, #0xd8]         @ 0x44ef4358 <_ZN19FCStorageBaseCommon12GetStoreDataEjPi17fac_source_info_s+0xe8>
44ef427e: 447c         	add	r4, pc
44ef4280: 460d         	mov	r5, r1
44ef4282: a909         	add	r1, sp, #0x24
44ef4284: 4607         	mov	r7, r0
44ef4286: 9509         	str	r5, [sp, #0x24]
44ef4288: 58a2         	ldr	r2, [r4, r2]
44ef428a: 6812         	ldr	r2, [r2]
44ef428c: 9211         	str	r2, [sp, #0x44]
44ef428e: f04f 0200    	mov.w	r2, #0x0
44ef4292: 9319         	str	r3, [sp, #0x64]
44ef4294: f7f0 ed0a    	blx	0x44ee4cac <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s@plt> @ imm = #-0xf5ec
44ef4298: 2800         	cmp	r0, #0x0
44ef429a: d044         	beq	0x44ef4326 <_ZN19FCStorageBaseCommon12GetStoreDataEjPi17fac_source_info_s+0xb6> @ imm = #0x88
44ef429c: 4604         	mov	r4, r0
44ef429e: 6940         	ldr	r0, [r0, #0x14]
44ef42a0: b968         	cbnz	r0, 0x44ef42be <_ZN19FCStorageBaseCommon12GetStoreDataEjPi17fac_source_info_s+0x4e> @ imm = #0x1a
44ef42a2: 6030         	str	r0, [r6]
44ef42a4: 4a2d         	ldr	r2, [pc, #0xb4]         @ 0x44ef435c <_ZN19FCStorageBaseCommon12GetStoreDataEjPi17fac_source_info_s+0xec>
44ef42a6: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x44ef4358 <_ZN19FCStorageBaseCommon12GetStoreDataEjPi17fac_source_info_s+0xe8>
44ef42a8: 447a         	add	r2, pc
44ef42aa: 58d3         	ldr	r3, [r2, r3]
44ef42ac: 681a         	ldr	r2, [r3]
44ef42ae: 9b11         	ldr	r3, [sp, #0x44]
44ef42b0: 405a         	eors	r2, r3
44ef42b2: d14d         	bne	0x44ef4350 <_ZN19FCStorageBaseCommon12GetStoreDataEjPi17fac_source_info_s+0xe0> @ imm = #0x9a
44ef42b4: b012         	add	sp, #0x48
44ef42b6: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
44ef42ba: b002         	add	sp, #0x8
44ef42bc: 4770         	bx	lr
44ef42be: 2801         	cmp	r0, #0x1
44ef42c0: d029         	beq	0x44ef4316 <_ZN19FCStorageBaseCommon12GetStoreDataEjPi17fac_source_info_s+0xa6> @ imm = #0x52
44ef42c2: 2802         	cmp	r0, #0x2
44ef42c4: d020         	beq	0x44ef4308 <_ZN19FCStorageBaseCommon12GetStoreDataEjPi17fac_source_info_s+0x98> @ imm = #0x40
44ef42c6: f7f0 e93e    	blx	0x44ee4544 <_ZN18FCStoreTypeControl11GetInstanceEv@plt> @ imm = #-0xfd84
44ef42ca: 4605         	mov	r5, r0
44ef42cc: b198         	cbz	r0, 0x44ef42f6 <_ZN19FCStorageBaseCommon12GetStoreDataEjPi17fac_source_info_s+0x86> @ imm = #0x26
44ef42ce: f10d 0e6c    	add.w	lr, sp, #0x6c
44ef42d2: 46ec         	mov	r12, sp
44ef42d4: f8d4 8014    	ldr.w	r8, [r4, #0x14]
44ef42d8: e8be 000f    	ldm.w	lr!, {r0, r1, r2, r3}
44ef42dc: e8ac 000f    	stm.w	r12!, {r0, r1, r2, r3}
44ef42e0: 9b1a         	ldr	r3, [sp, #0x68]
44ef42e2: e89e 0007    	ldm.w	lr, {r0, r1, r2}
44ef42e6: e88c 0007    	stm.w	r12, {r0, r1, r2}
44ef42ea: 4628         	mov	r0, r5
44ef42ec: 9a19         	ldr	r2, [sp, #0x64]
44ef42ee: 4641         	mov	r1, r8
44ef42f0: f7f1 e840    	blx	0x44ee5374 <_ZN18FCStoreTypeControl17GetStoreTypeIndexE14FacStoreType_e17fac_source_info_s@plt> @ imm = #-0xef80
44ef42f4: 4605         	mov	r5, r0
44ef42f6: 69a2         	ldr	r2, [r4, #0x18]
44ef42f8: 4633         	mov	r3, r6
44ef42fa: 69e1         	ldr	r1, [r4, #0x1c]
44ef42fc: 6878         	ldr	r0, [r7, #0x4]
44ef42fe: fb05 1102    	mla	r1, r5, r2, r1
44ef4302: f7f0 e89e    	blx	0x44ee4440 <_ZN10FCNvramMap15ReadFactoryAreaEjjPi@plt> @ imm = #-0xfec4
44ef4306: e7cd         	b	0x44ef42a4 <_ZN19FCStorageBaseCommon12GetStoreDataEjPi17fac_source_info_s+0x34> @ imm = #-0x66
44ef4308: 6878         	ldr	r0, [r7, #0x4]
44ef430a: 4633         	mov	r3, r6
44ef430c: e9d4 2106    	ldrd	r2, r1, [r4, #24]
44ef4310: f7f0 e896    	blx	0x44ee4440 <_ZN10FCNvramMap15ReadFactoryAreaEjjPi@plt> @ imm = #-0xfed4
44ef4314: e7c6         	b	0x44ef42a4 <_ZN19FCStorageBaseCommon12GetStoreDataEjPi17fac_source_info_s+0x34> @ imm = #-0x74
44ef4316: 4638         	mov	r0, r7
44ef4318: 68e2         	ldr	r2, [r4, #0xc]
44ef431a: 6821         	ldr	r1, [r4]
44ef431c: 4633         	mov	r3, r6
44ef431e: f7f0 ed9a    	blx	0x44ee4e54 <_ZN19FCStorageBaseCommon17t_GetDataVolatileEiiPi@plt> @ imm = #-0xf4cc
44ef4322: 2000         	movs	r0, #0x0
44ef4324: e7be         	b	0x44ef42a4 <_ZN19FCStorageBaseCommon12GetStoreDataEjPi17fac_source_info_s+0x34> @ imm = #-0x84
44ef4326: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x44ef4360 <_ZN19FCStorageBaseCommon12GetStoreDataEjPi17fac_source_info_s+0xf0>
44ef4328: 2104         	movs	r1, #0x4
44ef432a: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x44ef4364 <_ZN19FCStorageBaseCommon12GetStoreDataEjPi17fac_source_info_s+0xf4>
44ef432c: f240 44e3    	movw	r4, #0x4e3
44ef4330: 447b         	add	r3, pc
44ef4332: 9503         	str	r5, [sp, #0xc]
44ef4334: 447a         	add	r2, pc
44ef4336: 334c         	adds	r3, #0x4c
44ef4338: e9cd 3200    	strd	r3, r2, [sp]
44ef433c: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x44ef4368 <_ZN19FCStorageBaseCommon12GetStoreDataEjPi17fac_source_info_s+0xf8>
44ef433e: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x44ef436c <_ZN19FCStorageBaseCommon12GetStoreDataEjPi17fac_source_info_s+0xfc>
44ef4340: 447b         	add	r3, pc
44ef4342: 9402         	str	r4, [sp, #0x8]
44ef4344: 447a         	add	r2, pc
44ef4346: f7f0 ed44    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0xf578
44ef434a: f04f 30ff    	mov.w	r0, #0xffffffff
44ef434e: e7a9         	b	0x44ef42a4 <_ZN19FCStorageBaseCommon12GetStoreDataEjPi17fac_source_info_s+0x34> @ imm = #-0xae
44ef4350: f7f0 eda0    	blx	0x44ee4e94 <__stack_chk_fail@plt> @ imm = #-0xf4c0
44ef4354: af36         	add	r7, sp, #0xd8
44ef4356: 0002         	movs	r2, r0
44ef4358: 0704         	lsls	r4, r0, #0x1c
44ef435a: 0000         	movs	r0, r0
44ef435c: af0c         	add	r7, sp, #0x30
44ef435e: 0002         	movs	r2, r0
44ef4360: 0890         	lsrs	r0, r2, #0x2
44ef4362: 0001         	movs	r1, r0
44ef4364: 4160         	adcs	r0, r4
44ef4366: 0001         	movs	r1, r0
44ef4368: 30f0         	adds	r0, #0xf0
44ef436a: 0001         	movs	r1, r0
44ef436c: ffd0 0000    	vaddl.u16	q8, d0, d0
