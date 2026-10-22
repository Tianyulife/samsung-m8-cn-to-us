
/Users/hty/Documents/samsung_smart_monitor/firmware-analysis/CN-1651.1/rootfs/root/usr/bin/TIFSDaemon:	file format elf32-littlearm

Disassembly of section .text:

00075cbc <_ZN9FCControl17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>:
   75cbc: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
   75cc0: 2400         	movs	r4, #0x0
   75cc2: f8df a2f8    	ldr.w	r10, [pc, #0x2f8]       @ 0x75fbc <_ZN9FCControl17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x300>
   75cc6: b0f1         	sub	sp, #0x1c4
   75cc8: f64d 061c    	movw	r6, #0xd81c
   75ccc: f2c0 0607    	movt	r6, #0x7
   75cd0: f640 1be9    	movw	r11, #0x9e9
   75cd4: 4615         	mov	r5, r2
   75cd6: 4607         	mov	r7, r0
   75cd8: 9601         	str	r6, [sp, #0x4]
   75cda: 4688         	mov	r8, r1
   75cdc: f8cd a000    	str.w	r10, [sp]
   75ce0: 2104         	movs	r1, #0x4
   75ce2: f8cd b008    	str.w	r11, [sp, #0x8]
   75ce6: 4620         	mov	r0, r4
   75ce8: f24e 037c    	movw	r3, #0xe07c
   75cec: f2c0 0308    	movt	r3, #0x8
   75cf0: f249 22ec    	movw	r2, #0x92ec
   75cf4: f2c0 0207    	movt	r2, #0x7
   75cf8: f648 6cc8    	movw	r12, #0x8ec8
   75cfc: f2c0 0c09    	movt	r12, #0x9
   75d00: f8dc c000    	ldr.w	r12, [r12]
   75d04: f8cd c1bc    	str.w	r12, [sp, #0x1bc]
   75d08: f04f 0c00    	mov.w	r12, #0x0
   75d0c: 940a         	str	r4, [sp, #0x28]
   75d0e: f88d 4027    	strb.w	r4, [sp, #0x27]
   75d12: f7b7 efc4    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x48078
   75d16: f24e 1008    	movw	r0, #0xe108
   75d1a: f2c0 0008    	movt	r0, #0x8
   75d1e: f10d 0127    	add.w	r1, sp, #0x27
   75d22: f7b7 eb2c    	blx	0x2d37c <system_info_get_custom_bool@plt> @ imm = #-0x489a8
   75d26: 2800         	cmp	r0, #0x0
   75d28: f040 80df    	bne.w	0x75eea <_ZN9FCControl17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x22e> @ imm = #0x1be
   75d2c: 2104         	movs	r1, #0x4
   75d2e: f8cd b008    	str.w	r11, [sp, #0x8]
   75d32: f24e 2324    	movw	r3, #0xe224
   75d36: f2c0 0308    	movt	r3, #0x8
   75d3a: e9cd a600    	strd	r10, r6, [sp]
   75d3e: f249 22ec    	movw	r2, #0x92ec
   75d42: f2c0 0207    	movt	r2, #0x7
   75d46: 4681         	mov	r9, r0
   75d48: f7b7 efa8    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x480b0
   75d4c: f89d 3027    	ldrb.w	r3, [sp, #0x27]
   75d50: 2b00         	cmp	r3, #0x0
   75d52: f000 80de    	beq.w	0x75f12 <_ZN9FCControl17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x256> @ imm = #0x1bc
   75d56: 68b8         	ldr	r0, [r7, #0x8]
   75d58: 21c2         	movs	r1, #0xc2
   75d5a: aa14         	add	r2, sp, #0x50
   75d5c: f7b8 eb5e    	blx	0x2e41c <_ZN19FCStorageBaseCommon20GetFactoryUniqueItemEjP13FacItemNode_s@plt> @ imm = #-0x47944
   75d60: 4604         	mov	r4, r0
   75d62: 1c43         	adds	r3, r0, #0x1
   75d64: f000 80ea    	beq.w	0x75f3c <_ZN9FCControl17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x280> @ imm = #0x1d4
   75d68: 683b         	ldr	r3, [r7]
   75d6a: a914         	add	r1, sp, #0x50
   75d6c: 4638         	mov	r0, r7
   75d6e: 695b         	ldr	r3, [r3, #0x14]
   75d70: 4798         	blx	r3
   75d72: 9b1c         	ldr	r3, [sp, #0x70]
   75d74: 4604         	mov	r4, r0
   75d76: e9cd a600    	strd	r10, r6, [sp]
   75d7a: 4619         	mov	r1, r3
   75d7c: 9b1d         	ldr	r3, [sp, #0x74]
   75d7e: 9307         	str	r3, [sp, #0x1c]
   75d80: f640 10f8    	movw	r0, #0x9f8
   75d84: 9104         	str	r1, [sp, #0x10]
   75d86: f64d 0330    	movw	r3, #0xd830
   75d8a: f2c0 0307    	movt	r3, #0x7
   75d8e: 9907         	ldr	r1, [sp, #0x1c]
   75d90: 9103         	str	r1, [sp, #0xc]
   75d92: f249 22ec    	movw	r2, #0x92ec
   75d96: f2c0 0207    	movt	r2, #0x7
   75d9a: 9002         	str	r0, [sp, #0x8]
   75d9c: 2104         	movs	r1, #0x4
   75d9e: 4648         	mov	r0, r9
   75da0: f7b7 ef7c    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x48108
   75da4: f1b8 0f00    	cmp.w	r8, #0x0
   75da8: db02         	blt	0x75db0 <_ZN9FCControl17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0xf4> @ imm = #0x4
   75daa: 9b1d         	ldr	r3, [sp, #0x74]
   75dac: 4543         	cmp	r3, r8
   75dae: da49         	bge	0x75e44 <_ZN9FCControl17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x188> @ imm = #0x92
   75db0: 2205         	movs	r2, #0x5
   75db2: 9200         	str	r2, [sp]
   75db4: f249 33d4    	movw	r3, #0x93d4
   75db8: f2c0 0307    	movt	r3, #0x7
   75dbc: 686a         	ldr	r2, [r5, #0x4]
   75dbe: 2100         	movs	r1, #0x0
   75dc0: 4628         	mov	r0, r5
   75dc2: f7b8 eb82    	blx	0x2e4c8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj@plt> @ imm = #-0x478fc
   75dc6: efc0 0050    	vmov.i32	q8, #0x0
   75dca: a80c         	add	r0, sp, #0x30
   75dcc: 221f         	movs	r2, #0x1f
   75dce: 6829         	ldr	r1, [r5]
   75dd0: f940 0a1f    	vst1.8	{d16, d17}, [r0:64]
   75dd4: edcd 0b10    	vstr	d16, [sp, #64]
   75dd8: edcd 0b12    	vstr	d16, [sp, #72]
   75ddc: f7b7 ebda    	blx	0x2d594 <strncpy@plt>   @ imm = #-0x4884c
   75de0: a90c         	add	r1, sp, #0x30
   75de2: 980a         	ldr	r0, [sp, #0x28]
   75de4: f7b8 eca8    	blx	0x2e738 <_Z36fd_config_pnp_localset_convert_biztviPc@plt> @ imm = #-0x476b0
   75de8: 4603         	mov	r3, r0
   75dea: a80c         	add	r0, sp, #0x30
   75dec: 431c         	orrs	r4, r3
   75dee: f7b7 eca0    	blx	0x2d730 <strlen@plt>    @ imm = #-0x486c0
   75df2: 9000         	str	r0, [sp]
   75df4: ab0c         	add	r3, sp, #0x30
   75df6: 2100         	movs	r1, #0x0
   75df8: 686a         	ldr	r2, [r5, #0x4]
   75dfa: 4628         	mov	r0, r5
   75dfc: f7b8 eb64    	blx	0x2e4c8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj@plt> @ imm = #-0x47938
   75e00: 682b         	ldr	r3, [r5]
   75e02: f640 2128    	movw	r1, #0xa28
   75e06: 9304         	str	r3, [sp, #0x10]
   75e08: f249 22ec    	movw	r2, #0x92ec
   75e0c: f2c0 0207    	movt	r2, #0x7
   75e10: f64d 1300    	movw	r3, #0xd900
   75e14: f2c0 0307    	movt	r3, #0x7
   75e18: 9102         	str	r1, [sp, #0x8]
   75e1a: 2000         	movs	r0, #0x0
   75e1c: 2104         	movs	r1, #0x4
   75e1e: f8cd 800c    	str.w	r8, [sp, #0xc]
   75e22: e9cd a600    	strd	r10, r6, [sp]
   75e26: f7b7 ef3a    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x4818c
   75e2a: f648 63c8    	movw	r3, #0x8ec8
   75e2e: f2c0 0309    	movt	r3, #0x9
   75e32: 681a         	ldr	r2, [r3]
   75e34: 9b6f         	ldr	r3, [sp, #0x1bc]
   75e36: 405a         	eors	r2, r3
   75e38: f040 80be    	bne.w	0x75fb8 <_ZN9FCControl17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x2fc> @ imm = #0x17c
   75e3c: 4620         	mov	r0, r4
   75e3e: b071         	add	sp, #0x1c4
   75e40: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
   75e44: ab0a         	add	r3, sp, #0x28
   75e46: 4642         	mov	r2, r8
   75e48: 21c2         	movs	r1, #0xc2
   75e4a: 68b8         	ldr	r0, [r7, #0x8]
   75e4c: f7b7 eb08    	blx	0x2d460 <_ZN19FCStorageBaseCommon29ConvertStoreDataToControlDataEiiPi@plt> @ imm = #-0x489f0
   75e50: 980a         	ldr	r0, [sp, #0x28]
   75e52: f8cd 902c    	str.w	r9, [sp, #0x2c]
   75e56: f7b7 ec2a    	blx	0x2d6ac <_Z33fd_config_pnp_localset_list_biztvi@plt> @ imm = #-0x487ac
   75e5a: 990a         	ldr	r1, [sp, #0x28]
   75e5c: 4683         	mov	r11, r0
   75e5e: f44f 6220    	mov.w	r2, #0xa00
   75e62: 9003         	str	r0, [sp, #0xc]
   75e64: f248 63a8    	movw	r3, #0x86a8
   75e68: f2c0 0309    	movt	r3, #0x9
   75e6c: 9104         	str	r1, [sp, #0x10]
   75e6e: 4648         	mov	r0, r9
   75e70: 9202         	str	r2, [sp, #0x8]
   75e72: 2104         	movs	r1, #0x4
   75e74: f249 22ec    	movw	r2, #0x92ec
   75e78: f2c0 0207    	movt	r2, #0x7
   75e7c: 9601         	str	r6, [sp, #0x4]
   75e7e: f8cd a000    	str.w	r10, [sp]
   75e82: f7b7 ef0c    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x481e8
   75e86: f1bb 0f00    	cmp.w	r11, #0x0
   75e8a: d120         	bne	0x75ece <_ZN9FCControl17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x212> @ imm = #0x40
   75e8c: 2301         	movs	r3, #0x1
   75e8e: 930b         	str	r3, [sp, #0x2c]
   75e90: 990a         	ldr	r1, [sp, #0x28]
   75e92: f640 2011    	movw	r0, #0xa11
   75e96: 9304         	str	r3, [sp, #0x10]
   75e98: f249 22ec    	movw	r2, #0x92ec
   75e9c: f2c0 0207    	movt	r2, #0x7
   75ea0: e9cd 0102    	strd	r0, r1, [sp, #8]
   75ea4: f248 7308    	movw	r3, #0x8708
   75ea8: f2c0 0309    	movt	r3, #0x9
   75eac: 2104         	movs	r1, #0x4
   75eae: 2000         	movs	r0, #0x0
   75eb0: e9cd a600    	strd	r10, r6, [sp]
   75eb4: f7b7 eef2    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x4821c
   75eb8: 9b0b         	ldr	r3, [sp, #0x2c]
   75eba: 2b00         	cmp	r3, #0x0
   75ebc: d151         	bne	0x75f62 <_ZN9FCControl17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x2a6> @ imm = #0xa2
   75ebe: f7de f831    	bl	0x53f24 <_ZN8FCObject29GetControlStringForFactoryKeyEv> @ imm = #-0x21f9e
   75ec2: 9a0a         	ldr	r2, [sp, #0x28]
   75ec4: 462b         	mov	r3, r5
   75ec6: a914         	add	r1, sp, #0x50
   75ec8: f7f8 feb0    	bl	0x6ec2c <_ZN21FCStringForFactoryKey28ConvertValueToStrSpecialItemEP13FacItemNode_siRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x72a0
   75ecc: e77b         	b	0x75dc6 <_ZN9FCControl17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x10a> @ imm = #-0x10a
   75ece: 990a         	ldr	r1, [sp, #0x28]
   75ed0: 4638         	mov	r0, r7
   75ed2: aa0b         	add	r2, sp, #0x2c
   75ed4: f7fa fa16    	bl	0x70304 <_ZN9FCControl17CheckSkipLocalsetEiPi> @ imm = #-0x5bd4
   75ed8: 9b0b         	ldr	r3, [sp, #0x2c]
   75eda: 2b00         	cmp	r3, #0x0
   75edc: d157         	bne	0x75f8e <_ZN9FCControl17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x2d2> @ imm = #0xae
   75ede: 980a         	ldr	r0, [sp, #0x28]
   75ee0: a90b         	add	r1, sp, #0x2c
   75ee2: f7b7 e960    	blx	0x2d1a4 <fd_config_check_unused_localset@plt> @ imm = #-0x48d40
   75ee6: 9b0b         	ldr	r3, [sp, #0x2c]
   75ee8: e7d2         	b	0x75e90 <_ZN9FCControl17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x1d4> @ imm = #-0x5c
   75eea: f04f 32ff    	mov.w	r2, #0xffffffff
   75eee: f24e 1344    	movw	r3, #0xe144
   75ef2: f2c0 0308    	movt	r3, #0x8
   75ef6: 9203         	str	r2, [sp, #0xc]
   75ef8: 2106         	movs	r1, #0x6
   75efa: f249 22ec    	movw	r2, #0x92ec
   75efe: f2c0 0207    	movt	r2, #0x7
   75f02: 2002         	movs	r0, #0x2
   75f04: f8cd b008    	str.w	r11, [sp, #0x8]
   75f08: 9601         	str	r6, [sp, #0x4]
   75f0a: f8cd a000    	str.w	r10, [sp]
   75f0e: f7b7 eec6    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x48274
   75f12: f640 12ed    	movw	r2, #0x9ed
   75f16: 2106         	movs	r1, #0x6
   75f18: 9202         	str	r2, [sp, #0x8]
   75f1a: 2002         	movs	r0, #0x2
   75f1c: 9601         	str	r6, [sp, #0x4]
   75f1e: f248 4304    	movw	r3, #0x8404
   75f22: f2c0 0309    	movt	r3, #0x9
   75f26: f8cd a000    	str.w	r10, [sp]
   75f2a: f249 22ec    	movw	r2, #0x92ec
   75f2e: f2c0 0207    	movt	r2, #0x7
   75f32: f04f 34ff    	mov.w	r4, #0xffffffff
   75f36: f7b7 eeb2    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x4829c
   75f3a: e776         	b	0x75e2a <_ZN9FCControl17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x16e> @ imm = #-0x114
   75f3c: f640 12f3    	movw	r2, #0x9f3
   75f40: 2106         	movs	r1, #0x6
   75f42: 9202         	str	r2, [sp, #0x8]
   75f44: f64c 4364    	movw	r3, #0xcc64
   75f48: f2c0 0307    	movt	r3, #0x7
   75f4c: 9601         	str	r6, [sp, #0x4]
   75f4e: f8cd a000    	str.w	r10, [sp]
   75f52: f249 22ec    	movw	r2, #0x92ec
   75f56: f2c0 0207    	movt	r2, #0x7
   75f5a: 2002         	movs	r0, #0x2
   75f5c: f7b7 ee9e    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x482c4
   75f60: e763         	b	0x75e2a <_ZN9FCControl17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x16e> @ imm = #-0x13a
   75f62: 9b0a         	ldr	r3, [sp, #0x28]
   75f64: f640 2115    	movw	r1, #0xa15
   75f68: 9303         	str	r3, [sp, #0xc]
   75f6a: f249 22ec    	movw	r2, #0x92ec
   75f6e: f2c0 0207    	movt	r2, #0x7
   75f72: f248 733c    	movw	r3, #0x873c
   75f76: f2c0 0309    	movt	r3, #0x9
   75f7a: 9102         	str	r1, [sp, #0x8]
   75f7c: 2000         	movs	r0, #0x0
   75f7e: 2104         	movs	r1, #0x4
   75f80: e9cd a600    	strd	r10, r6, [sp]
   75f84: f7b7 ee8a    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x482ec
   75f88: f04f 34ff    	mov.w	r4, #0xffffffff
   75f8c: e74d         	b	0x75e2a <_ZN9FCControl17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x16e> @ imm = #-0x166
   75f8e: 9b0a         	ldr	r3, [sp, #0x28]
   75f90: f640 2206    	movw	r2, #0xa06
   75f94: 9303         	str	r3, [sp, #0xc]
   75f96: 4648         	mov	r0, r9
   75f98: 9202         	str	r2, [sp, #0x8]
   75f9a: 2104         	movs	r1, #0x4
   75f9c: 9601         	str	r6, [sp, #0x4]
   75f9e: f248 63d8    	movw	r3, #0x86d8
   75fa2: f2c0 0309    	movt	r3, #0x9
   75fa6: f8cd a000    	str.w	r10, [sp]
   75faa: f249 22ec    	movw	r2, #0x92ec
   75fae: f2c0 0207    	movt	r2, #0x7
   75fb2: f7b7 ee74    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x48318
   75fb6: e7e7         	b	0x75f88 <_ZN9FCControl17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x2cc> @ imm = #-0x32
   75fb8: f7b7 e9bc    	blx	0x2d334 <__stack_chk_fail@plt> @ imm = #-0x48c88
   75fbc: 5ce3         	ldrb	r3, [r4, r3]
   75fbe: 0009         	movs	r1, r1
