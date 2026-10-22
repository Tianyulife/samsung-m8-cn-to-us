
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44ef4070 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s>:
44ef4070: b082         	sub	sp, #0x8
44ef4072: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
44ef4076: 4615         	mov	r5, r2
44ef4078: 4c57         	ldr	r4, [pc, #0x15c]        @ 0x44ef41d8 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x168>
44ef407a: b094         	sub	sp, #0x50
44ef407c: 4a57         	ldr	r2, [pc, #0x15c]        @ 0x44ef41dc <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x16c>
44ef407e: 447c         	add	r4, pc
44ef4080: 460e         	mov	r6, r1
44ef4082: a90b         	add	r1, sp, #0x2c
44ef4084: 4607         	mov	r7, r0
44ef4086: 960b         	str	r6, [sp, #0x2c]
44ef4088: 58a2         	ldr	r2, [r4, r2]
44ef408a: 6812         	ldr	r2, [r2]
44ef408c: 9213         	str	r2, [sp, #0x4c]
44ef408e: f04f 0200    	mov.w	r2, #0x0
44ef4092: 931b         	str	r3, [sp, #0x6c]
44ef4094: f7f0 ee0a    	blx	0x44ee4cac <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s@plt> @ imm = #-0xf3ec
44ef4098: 2800         	cmp	r0, #0x0
44ef409a: f000 8081    	beq.w	0x44ef41a0 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x130> @ imm = #0x102
44ef409e: 6841         	ldr	r1, [r0, #0x4]
44ef40a0: 4604         	mov	r4, r0
44ef40a2: 42a9         	cmp	r1, r5
44ef40a4: dd1b         	ble	0x44ef40de <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x6e> @ imm = #0x36
44ef40a6: 6823         	ldr	r3, [r4]
44ef40a8: f240 22f1    	movw	r2, #0x2f1
44ef40ac: 4293         	cmp	r3, r2
44ef40ae: bf18         	it	ne
44ef40b0: 2b71         	cmpne	r3, #0x71
44ef40b2: d11e         	bne	0x44ef40f2 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x82> @ imm = #0x3c
44ef40b4: 6963         	ldr	r3, [r4, #0x14]
44ef40b6: 1e9a         	subs	r2, r3, #0x2
44ef40b8: 2a37         	cmp	r2, #0x37
44ef40ba: d949         	bls	0x44ef4150 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0xe0> @ imm = #0x92
44ef40bc: 2b01         	cmp	r3, #0x1
44ef40be: bf18         	it	ne
44ef40c0: 2000         	movne	r0, #0x0
44ef40c2: d066         	beq	0x44ef4192 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x122> @ imm = #0xcc
44ef40c4: 4a46         	ldr	r2, [pc, #0x118]        @ 0x44ef41e0 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x170>
44ef40c6: 4b45         	ldr	r3, [pc, #0x114]        @ 0x44ef41dc <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x16c>
44ef40c8: 447a         	add	r2, pc
44ef40ca: 58d3         	ldr	r3, [r2, r3]
44ef40cc: 681a         	ldr	r2, [r3]
44ef40ce: 9b13         	ldr	r3, [sp, #0x4c]
44ef40d0: 405a         	eors	r2, r3
44ef40d2: d17e         	bne	0x44ef41d2 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x162> @ imm = #0xfc
44ef40d4: b014         	add	sp, #0x50
44ef40d6: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
44ef40da: b002         	add	sp, #0x8
44ef40dc: 4770         	bx	lr
44ef40de: 6883         	ldr	r3, [r0, #0x8]
44ef40e0: 42ab         	cmp	r3, r5
44ef40e2: dae7         	bge	0x44ef40b4 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x44> @ imm = #-0x32
44ef40e4: 6823         	ldr	r3, [r4]
44ef40e6: f240 22f1    	movw	r2, #0x2f1
44ef40ea: 4293         	cmp	r3, r2
44ef40ec: bf18         	it	ne
44ef40ee: 2b71         	cmpne	r3, #0x71
44ef40f0: d0e0         	beq	0x44ef40b4 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x44> @ imm = #-0x40
44ef40f2: f8d7 c008    	ldr.w	r12, [r7, #0x8]
44ef40f6: ab0a         	add	r3, sp, #0x28
44ef40f8: 68a0         	ldr	r0, [r4, #0x8]
44ef40fa: aa09         	add	r2, sp, #0x24
44ef40fc: 9109         	str	r1, [sp, #0x24]
44ef40fe: 4631         	mov	r1, r6
44ef4100: 900a         	str	r0, [sp, #0x28]
44ef4102: 4660         	mov	r0, r12
44ef4104: f8dc c000    	ldr.w	r12, [r12]
44ef4108: f8dc 8030    	ldr.w	r8, [r12, #0x30]
44ef410c: 47c0         	blx	r8
44ef410e: 9b09         	ldr	r3, [sp, #0x24]
44ef4110: 42ab         	cmp	r3, r5
44ef4112: dc02         	bgt	0x44ef411a <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0xaa> @ imm = #0x4
44ef4114: 9b0a         	ldr	r3, [sp, #0x28]
44ef4116: 42ab         	cmp	r3, r5
44ef4118: dacc         	bge	0x44ef40b4 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x44> @ imm = #-0x68
44ef411a: 9506         	str	r5, [sp, #0x18]
44ef411c: 2106         	movs	r1, #0x6
44ef411e: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x44ef41e4 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x174>
44ef4120: f240 65ca    	movw	r5, #0x6ca
44ef4124: 68a2         	ldr	r2, [r4, #0x8]
44ef4126: 9205         	str	r2, [sp, #0x14]
44ef4128: 447b         	add	r3, pc
44ef412a: 4a2f         	ldr	r2, [pc, #0xbc]         @ 0x44ef41e8 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x178>
44ef412c: 334c         	adds	r3, #0x4c
44ef412e: 6860         	ldr	r0, [r4, #0x4]
44ef4130: 447a         	add	r2, pc
44ef4132: e9cd 3200    	strd	r3, r2, [sp]
44ef4136: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x44ef41ec <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x17c>
44ef4138: 4a2d         	ldr	r2, [pc, #0xb4]         @ 0x44ef41f0 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x180>
44ef413a: 9004         	str	r0, [sp, #0x10]
44ef413c: 447b         	add	r3, pc
44ef413e: 2002         	movs	r0, #0x2
44ef4140: 447a         	add	r2, pc
44ef4142: 9603         	str	r6, [sp, #0xc]
44ef4144: 9502         	str	r5, [sp, #0x8]
44ef4146: f7f0 ee44    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0xf378
44ef414a: f04f 30ff    	mov.w	r0, #0xffffffff
44ef414e: e7b9         	b	0x44ef40c4 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x54> @ imm = #-0x8e
44ef4150: f7f0 e9f8    	blx	0x44ee4544 <_ZN18FCStoreTypeControl11GetInstanceEv@plt> @ imm = #-0xfc10
44ef4154: 4606         	mov	r6, r0
44ef4156: b198         	cbz	r0, 0x44ef4180 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x110> @ imm = #0x26
44ef4158: f10d 0e74    	add.w	lr, sp, #0x74
44ef415c: 46ec         	mov	r12, sp
44ef415e: f8d4 8014    	ldr.w	r8, [r4, #0x14]
44ef4162: e8be 000f    	ldm.w	lr!, {r0, r1, r2, r3}
44ef4166: e8ac 000f    	stm.w	r12!, {r0, r1, r2, r3}
44ef416a: 9b1c         	ldr	r3, [sp, #0x70]
44ef416c: e89e 0007    	ldm.w	lr, {r0, r1, r2}
44ef4170: e88c 0007    	stm.w	r12, {r0, r1, r2}
44ef4174: 4630         	mov	r0, r6
44ef4176: 9a1b         	ldr	r2, [sp, #0x6c]
44ef4178: 4641         	mov	r1, r8
44ef417a: f7f1 e8fc    	blx	0x44ee5374 <_ZN18FCStoreTypeControl17GetStoreTypeIndexE14FacStoreType_e17fac_source_info_s@plt> @ imm = #-0xee08
44ef417e: 4606         	mov	r6, r0
44ef4180: 69a2         	ldr	r2, [r4, #0x18]
44ef4182: 462b         	mov	r3, r5
44ef4184: 69e1         	ldr	r1, [r4, #0x1c]
44ef4186: 6878         	ldr	r0, [r7, #0x4]
44ef4188: fb06 1102    	mla	r1, r6, r2, r1
44ef418c: f7f0 eb4e    	blx	0x44ee482c <_ZN10FCNvramMap16WriteFactoryAreaEjji@plt> @ imm = #-0xf964
44ef4190: e798         	b	0x44ef40c4 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x54> @ imm = #-0xd0
44ef4192: 4638         	mov	r0, r7
44ef4194: 6821         	ldr	r1, [r4]
44ef4196: 462a         	mov	r2, r5
44ef4198: f7f0 edb8    	blx	0x44ee4d0c <_ZN19FCStorageBaseCommon17t_SetDataVolatileEii@plt> @ imm = #-0xf490
44ef419c: 2000         	movs	r0, #0x0
44ef419e: e791         	b	0x44ef40c4 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x54> @ imm = #-0xde
44ef41a0: 4b14         	ldr	r3, [pc, #0x50]         @ 0x44ef41f4 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x184>
44ef41a2: 2104         	movs	r1, #0x4
44ef41a4: 4a14         	ldr	r2, [pc, #0x50]         @ 0x44ef41f8 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x188>
44ef41a6: f240 64bf    	movw	r4, #0x6bf
44ef41aa: 447b         	add	r3, pc
44ef41ac: 9603         	str	r6, [sp, #0xc]
44ef41ae: 447a         	add	r2, pc
44ef41b0: 334c         	adds	r3, #0x4c
44ef41b2: e9cd 3200    	strd	r3, r2, [sp]
44ef41b6: 4b11         	ldr	r3, [pc, #0x44]         @ 0x44ef41fc <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x18c>
44ef41b8: 4a11         	ldr	r2, [pc, #0x44]         @ 0x44ef4200 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x190>
44ef41ba: 447b         	add	r3, pc
44ef41bc: 9402         	str	r4, [sp, #0x8]
44ef41be: 447a         	add	r2, pc
44ef41c0: f7f0 ee06    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0xf3f4
44ef41c4: 9b1b         	ldr	r3, [sp, #0x6c]
44ef41c6: 462a         	mov	r2, r5
44ef41c8: 4631         	mov	r1, r6
44ef41ca: 4638         	mov	r0, r7
44ef41cc: f7f0 ee5c    	blx	0x44ee4e88 <_ZN19FCStorageBaseCommon24SetFactoryUniqueItemDataEjii@plt> @ imm = #-0xf348
44ef41d0: e778         	b	0x44ef40c4 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x54> @ imm = #-0x110
44ef41d2: f7f0 ee60    	blx	0x44ee4e94 <__stack_chk_fail@plt> @ imm = #-0xf340
44ef41d6: bf00         	nop
44ef41d8: b136         	cbz	r6, 0x44ef41e8 <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s+0x178> @ imm = #0xc
44ef41da: 0002         	movs	r2, r0
44ef41dc: 0704         	lsls	r4, r0, #0x1c
44ef41de: 0000         	movs	r0, r0
44ef41e0: b0ec         	sub	sp, #0x1b0
44ef41e2: 0002         	movs	r2, r0
44ef41e4: 0a98         	lsrs	r0, r3, #0xa
44ef41e6: 0001         	movs	r1, r0
44ef41e8: 4300         	orrs	r0, r0
44ef41ea: 0001         	movs	r1, r0
44ef41ec: 4304         	orrs	r4, r0
44ef41ee: 0001         	movs	r1, r0
44ef41f0: 01d4         	lsls	r4, r2, #0x7
44ef41f2: 0001         	movs	r1, r0
44ef41f4: 0a16         	lsrs	r6, r2, #0x8
44ef41f6: 0001         	movs	r1, r0
44ef41f8: 4282         	cmp	r2, r0
44ef41fa: 0001         	movs	r1, r0
44ef41fc: 3276         	adds	r2, #0x76
44ef41fe: 0001         	movs	r1, r0
44ef4200: 0156         	lsls	r6, r2, #0x5
44ef4202: 0001         	movs	r1, r0
