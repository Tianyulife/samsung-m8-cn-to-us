
firmware-analysis/CN-1651.1/rootfs/root/usr/bin/TIFSDaemon:	file format elf32-littlearm

Disassembly of section .text:

00059e30 <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s>:
   59e30: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
   59e34: b08f         	sub	sp, #0x3c
   59e36: e9cd 1308    	strd	r1, r3, [sp, #32]
   59e3a: f641 23cc    	movw	r3, #0x1acc
   59e3e: f2c0 0309    	movt	r3, #0x9
   59e42: 681b         	ldr	r3, [r3]
   59e44: 930d         	str	r3, [sp, #0x34]
   59e46: f04f 0300    	mov.w	r3, #0x0
   59e4a: 2800         	cmp	r0, #0x0
   59e4c: f000 80c8    	beq.w	0x59fe0 <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x1b0> @ imm = #0x190
   59e50: 4614         	mov	r4, r2
   59e52: 9a18         	ldr	r2, [sp, #0x60]
   59e54: f06f 4360    	mvn	r3, #0xe0000000
   59e58: 429a         	cmp	r2, r3
   59e5a: f080 810d    	bhs.w	0x5a078 <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x248> @ imm = #0x21a
   59e5e: 9b18         	ldr	r3, [sp, #0x60]
   59e60: 009d         	lsls	r5, r3, #0x2
   59e62: 4628         	mov	r0, r5
   59e64: f7d3 e90c    	blx	0x2d080 <_Znaj@plt>     @ imm = #-0x2cde8
   59e68: 4603         	mov	r3, r0
   59e6a: 4628         	mov	r0, r5
   59e6c: 9306         	str	r3, [sp, #0x18]
   59e6e: f7d3 e908    	blx	0x2d080 <_Znaj@plt>     @ imm = #-0x2cdf0
   59e72: 9b18         	ldr	r3, [sp, #0x60]
   59e74: f249 2aec    	movw	r10, #0x92ec
   59e78: f2c0 0a07    	movt	r10, #0x7
   59e7c: 4faf         	ldr	r7, [pc, #0x2bc]        @ 0x5a13c <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x30c>
   59e7e: 9d06         	ldr	r5, [sp, #0x18]
   59e80: 4684         	mov	r12, r0
   59e82: 9303         	str	r3, [sp, #0xc]
   59e84: 2103         	movs	r1, #0x3
   59e86: f240 6284    	movw	r2, #0x684
   59e8a: 2002         	movs	r0, #0x2
   59e8c: 9202         	str	r2, [sp, #0x8]
   59e8e: f640 2638    	movw	r6, #0xa38
   59e92: f2c0 0609    	movt	r6, #0x9
   59e96: 4652         	mov	r2, r10
   59e98: e9cd 7600    	strd	r7, r6, [sp]
   59e9c: f640 2320    	movw	r3, #0xa20
   59ea0: f2c0 0309    	movt	r3, #0x9
   59ea4: f8cd c01c    	str.w	r12, [sp, #0x1c]
   59ea8: f7d3 eef8    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x2c210
   59eac: 4620         	mov	r0, r4
   59eae: aa0b         	add	r2, sp, #0x2c
   59eb0: f24c 312c    	movw	r1, #0xc32c
   59eb4: f2c0 0108    	movt	r1, #0x8
   59eb8: f1a5 0804    	sub.w	r8, r5, #0x4
   59ebc: f247 7964    	movw	r9, #0x7764
   59ec0: f2c0 0908    	movt	r9, #0x8
   59ec4: 2500         	movs	r5, #0x0
   59ec6: f640 2b50    	movw	r11, #0xa50
   59eca: f2c0 0b09    	movt	r11, #0x9
   59ece: f7d3 e8de    	blx	0x2d08c <g_variant_get@plt> @ imm = #-0x2ce44
   59ed2: e011         	b	0x59ef8 <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0xc8> @ imm = #0x22
   59ed4: 980c         	ldr	r0, [sp, #0x30]
   59ed6: 465b         	mov	r3, r11
   59ed8: 9503         	str	r5, [sp, #0xc]
   59eda: 4652         	mov	r2, r10
   59edc: 9004         	str	r0, [sp, #0x10]
   59ede: 2103         	movs	r1, #0x3
   59ee0: 2002         	movs	r0, #0x2
   59ee2: f240 648b    	movw	r4, #0x68b
   59ee6: 9601         	str	r6, [sp, #0x4]
   59ee8: 3501         	adds	r5, #0x1
   59eea: 9700         	str	r7, [sp]
   59eec: 9402         	str	r4, [sp, #0x8]
   59eee: f7d3 eed6    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x2c254
   59ef2: 9b0c         	ldr	r3, [sp, #0x30]
   59ef4: f848 3f04    	str	r3, [r8, #4]!
   59ef8: 980b         	ldr	r0, [sp, #0x2c]
   59efa: aa0c         	add	r2, sp, #0x30
   59efc: 4649         	mov	r1, r9
   59efe: f7d3 e8cc    	blx	0x2d098 <g_variant_iter_loop@plt> @ imm = #-0x2ce68
   59f02: 2800         	cmp	r0, #0x0
   59f04: d1e6         	bne	0x59ed4 <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0xa4> @ imm = #-0x34
   59f06: 9b07         	ldr	r3, [sp, #0x1c]
   59f08: 4604         	mov	r4, r0
   59f0a: aa0b         	add	r2, sp, #0x2c
   59f0c: 9809         	ldr	r0, [sp, #0x24]
   59f0e: f24c 312c    	movw	r1, #0xc32c
   59f12: f2c0 0108    	movt	r1, #0x8
   59f16: f1a3 0804    	sub.w	r8, r3, #0x4
   59f1a: f247 7964    	movw	r9, #0x7764
   59f1e: f2c0 0908    	movt	r9, #0x8
   59f22: f640 2b6c    	movw	r11, #0xa6c
   59f26: f2c0 0b09    	movt	r11, #0x9
   59f2a: f249 2aec    	movw	r10, #0x92ec
   59f2e: f2c0 0a07    	movt	r10, #0x7
   59f32: f7d3 e8ac    	blx	0x2d08c <g_variant_get@plt> @ imm = #-0x2cea8
   59f36: e011         	b	0x59f5c <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x12c> @ imm = #0x22
   59f38: 980c         	ldr	r0, [sp, #0x30]
   59f3a: 465b         	mov	r3, r11
   59f3c: 9403         	str	r4, [sp, #0xc]
   59f3e: 4652         	mov	r2, r10
   59f40: 9004         	str	r0, [sp, #0x10]
   59f42: 2103         	movs	r1, #0x3
   59f44: 2002         	movs	r0, #0x2
   59f46: f240 6596    	movw	r5, #0x696
   59f4a: 9601         	str	r6, [sp, #0x4]
   59f4c: 3401         	adds	r4, #0x1
   59f4e: 9700         	str	r7, [sp]
   59f50: 9502         	str	r5, [sp, #0x8]
   59f52: f7d3 eea4    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x2c2b8
   59f56: 9b0c         	ldr	r3, [sp, #0x30]
   59f58: f848 3f04    	str	r3, [r8, #4]!
   59f5c: 980b         	ldr	r0, [sp, #0x2c]
   59f5e: aa0c         	add	r2, sp, #0x30
   59f60: 4649         	mov	r1, r9
   59f62: f7d3 e89a    	blx	0x2d098 <g_variant_iter_loop@plt> @ imm = #-0x2cecc
   59f66: 2800         	cmp	r0, #0x0
   59f68: d1e6         	bne	0x59f38 <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x108> @ imm = #-0x34
   59f6a: 4605         	mov	r5, r0
   59f6c: f7fc f9ae    	bl	0x562cc <_ZN13FCStorageBase11GetInstanceEv> @ imm = #-0x3ca4
   59f70: 4680         	mov	r8, r0
   59f72: f7fa f811    	bl	0x53f98 <_ZN8FCObject10GetControlEv> @ imm = #-0x5fde
   59f76: 4643         	mov	r3, r8
   59f78: 4604         	mov	r4, r0
   59f7a: 2b00         	cmp	r3, #0x0
   59f7c: bf18         	it	ne
   59f7e: 2800         	cmpne	r0, #0x0
   59f80: d13f         	bne	0x5a002 <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x1d2> @ imm = #0x7e
   59f82: 9806         	ldr	r0, [sp, #0x18]
   59f84: f7d3 ea06    	blx	0x2d394 <_ZdaPv@plt>    @ imm = #-0x2cbf4
   59f88: 9807         	ldr	r0, [sp, #0x1c]
   59f8a: f7d3 ea04    	blx	0x2d394 <_ZdaPv@plt>    @ imm = #-0x2cbf8
   59f8e: 4629         	mov	r1, r5
   59f90: f64b 2034    	movw	r0, #0xba34
   59f94: f2c0 0008    	movt	r0, #0x8
   59f98: f7d3 eb0e    	blx	0x2d5b8 <g_variant_new@plt> @ imm = #-0x2c9e4
   59f9c: 4601         	mov	r1, r0
   59f9e: 9808         	ldr	r0, [sp, #0x20]
   59fa0: f7d7 fe60    	bl	0x31c64 <_ZN24FCStringForFactoryKeyHTV36m_ConvertValueToStrDoorEyeSrcRetTimeEjiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x184> @ imm = #-0x28340
   59fa4: f240 62bd    	movw	r2, #0x6bd
   59fa8: f640 2388    	movw	r3, #0xa88
   59fac: f2c0 0309    	movt	r3, #0x9
   59fb0: 9202         	str	r2, [sp, #0x8]
   59fb2: 2103         	movs	r1, #0x3
   59fb4: f249 22ec    	movw	r2, #0x92ec
   59fb8: f2c0 0207    	movt	r2, #0x7
   59fbc: 2002         	movs	r0, #0x2
   59fbe: 9503         	str	r5, [sp, #0xc]
   59fc0: 9601         	str	r6, [sp, #0x4]
   59fc2: 9700         	str	r7, [sp]
   59fc4: f7d3 ee6a    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x2c32c
   59fc8: f641 23cc    	movw	r3, #0x1acc
   59fcc: f2c0 0309    	movt	r3, #0x9
   59fd0: 681a         	ldr	r2, [r3]
   59fd2: 9b0d         	ldr	r3, [sp, #0x34]
   59fd4: 405a         	eors	r2, r3
   59fd6: d123         	bne	0x5a020 <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x1f0> @ imm = #0x46
   59fd8: 4628         	mov	r0, r5
   59fda: b00f         	add	sp, #0x3c
   59fdc: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
   59fe0: f24e 0264    	movw	r2, #0xe064
   59fe4: f2c0 0208    	movt	r2, #0x8
   59fe8: f640 13a4    	movw	r3, #0x9a4
   59fec: f2c0 0309    	movt	r3, #0x9
   59ff0: 9200         	str	r2, [sp]
   59ff2: f64d 311c    	movw	r1, #0xdb1c
   59ff6: f2c0 0108    	movt	r1, #0x8
   59ffa: f240 6254    	movw	r2, #0x654
   59ffe: f7d3 e910    	blx	0x2d220 <g_assertion_message_expr@plt> @ imm = #-0x2cde0
   5a002: 4640         	mov	r0, r8
   5a004: f7fc f8e6    	bl	0x561d4 <_ZN13FCStorageBase15LoadFactoryFileEv> @ imm = #-0x3e34
   5a008: 9b18         	ldr	r3, [sp, #0x60]
   5a00a: 9300         	str	r3, [sp]
   5a00c: 4620         	mov	r0, r4
   5a00e: 461a         	mov	r2, r3
   5a010: e9dd 1306    	ldrd	r1, r3, [sp, #24]
   5a014: f01b f860    	bl	0x750d8 <_ZN9FCControl15SetMgaColorToneEPjiPii> @ imm = #0x1b0c0
   5a018: fab0 f580    	clz	r5, r0
   5a01c: 096d         	lsrs	r5, r5, #0x5
   5a01e: e7b0         	b	0x59f82 <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x152> @ imm = #-0xa0
   5a020: f7d3 e988    	blx	0x2d334 <__stack_chk_fail@plt> @ imm = #-0x2ccf0
   5a024: 460c         	mov	r4, r1
   5a026: 2901         	cmp	r1, #0x1
   5a028: d04b         	beq	0x5a0c2 <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x292> @ imm = #0x96
   5a02a: 2902         	cmp	r1, #0x2
   5a02c: d065         	beq	0x5a0fa <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x2ca> @ imm = #0xca
   5a02e: f7d3 eb38    	blx	0x2d6a0 <_Unwind_Resume@plt> @ imm = #-0x2c990
   5a032: 460c         	mov	r4, r1
   5a034: 2901         	cmp	r1, #0x1
   5a036: d021         	beq	0x5a07c <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x24c> @ imm = #0x42
   5a038: 2902         	cmp	r1, #0x2
   5a03a: d1f8         	bne	0x5a02e <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x1fe> @ imm = #-0x10
   5a03c: f7d3 e838    	blx	0x2d0b0 <__cxa_begin_catch@plt> @ imm = #-0x2cf90
   5a040: 6803         	ldr	r3, [r0]
   5a042: 689b         	ldr	r3, [r3, #0x8]
   5a044: 4798         	blx	r3
   5a046: 4a3d         	ldr	r2, [pc, #0xf4]         @ 0x5a13c <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x30c>
   5a048: 4603         	mov	r3, r0
   5a04a: 2106         	movs	r1, #0x6
   5a04c: 9303         	str	r3, [sp, #0xc]
   5a04e: 4620         	mov	r0, r4
   5a050: f640 2338    	movw	r3, #0xa38
   5a054: f2c0 0309    	movt	r3, #0x9
   5a058: e9cd 2300    	strd	r2, r3, [sp]
   5a05c: f240 6261    	movw	r2, #0x661
   5a060: f640 23d4    	movw	r3, #0xad4
   5a064: f2c0 0309    	movt	r3, #0x9
   5a068: 9202         	str	r2, [sp, #0x8]
   5a06a: f249 22ec    	movw	r2, #0x92ec
   5a06e: f2c0 0207    	movt	r2, #0x7
   5a072: f7d3 ee14    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x2c3d8
   5a076: e01b         	b	0x5a0b0 <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x280> @ imm = #0x36
   5a078: f7d4 e9ac    	blx	0x2e3d4 <__cxa_throw_bad_array_new_length@plt> @ imm = #-0x2bca8
   5a07c: f7d3 e818    	blx	0x2d0b0 <__cxa_begin_catch@plt> @ imm = #-0x2cfd0
   5a080: 4a2e         	ldr	r2, [pc, #0xb8]         @ 0x5a13c <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x30c>
   5a082: 9b18         	ldr	r3, [sp, #0x60]
   5a084: 2106         	movs	r1, #0x6
   5a086: 9303         	str	r3, [sp, #0xc]
   5a088: 2002         	movs	r0, #0x2
   5a08a: f640 2338    	movw	r3, #0xa38
   5a08e: f2c0 0309    	movt	r3, #0x9
   5a092: e9cd 2300    	strd	r2, r3, [sp]
   5a096: f240 625c    	movw	r2, #0x65c
   5a09a: f640 23a0    	movw	r3, #0xaa0
   5a09e: f2c0 0309    	movt	r3, #0x9
   5a0a2: 9202         	str	r2, [sp, #0x8]
   5a0a4: f249 22ec    	movw	r2, #0x92ec
   5a0a8: f2c0 0207    	movt	r2, #0x7
   5a0ac: f7d3 edf6    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x2c414
   5a0b0: 2500         	movs	r5, #0x0
   5a0b2: f7d4 e91e    	blx	0x2e2f0 <__cxa_end_catch@plt> @ imm = #-0x2bdc4
   5a0b6: e787         	b	0x59fc8 <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x198> @ imm = #-0xf2
   5a0b8: 4604         	mov	r4, r0
   5a0ba: f7d4 e91a    	blx	0x2e2f0 <__cxa_end_catch@plt> @ imm = #-0x2bdcc
   5a0be: 4620         	mov	r0, r4
   5a0c0: e7b5         	b	0x5a02e <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x1fe> @ imm = #-0x96
   5a0c2: f7d2 eff6    	blx	0x2d0b0 <__cxa_begin_catch@plt> @ imm = #-0x2d014
   5a0c6: 4a1d         	ldr	r2, [pc, #0x74]         @ 0x5a13c <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x30c>
   5a0c8: 9b18         	ldr	r3, [sp, #0x60]
   5a0ca: 2106         	movs	r1, #0x6
   5a0cc: 9303         	str	r3, [sp, #0xc]
   5a0ce: 2002         	movs	r0, #0x2
   5a0d0: f640 2338    	movw	r3, #0xa38
   5a0d4: f2c0 0309    	movt	r3, #0x9
   5a0d8: e9cd 2300    	strd	r2, r3, [sp]
   5a0dc: f240 6271    	movw	r2, #0x671
   5a0e0: f640 23a0    	movw	r3, #0xaa0
   5a0e4: f2c0 0309    	movt	r3, #0x9
   5a0e8: 9202         	str	r2, [sp, #0x8]
   5a0ea: f249 22ec    	movw	r2, #0x92ec
   5a0ee: f2c0 0207    	movt	r2, #0x7
   5a0f2: f7d3 edd4    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x2c458
   5a0f6: e7db         	b	0x5a0b0 <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x280> @ imm = #-0x4a
   5a0f8: e7de         	b	0x5a0b8 <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x288> @ imm = #-0x44
   5a0fa: f7d2 efda    	blx	0x2d0b0 <__cxa_begin_catch@plt> @ imm = #-0x2d04c
   5a0fe: 6803         	ldr	r3, [r0]
   5a100: 689b         	ldr	r3, [r3, #0x8]
   5a102: 4798         	blx	r3
   5a104: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x5a13c <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x30c>
   5a106: 4603         	mov	r3, r0
   5a108: 2106         	movs	r1, #0x6
   5a10a: 9303         	str	r3, [sp, #0xc]
   5a10c: 4620         	mov	r0, r4
   5a10e: f640 2338    	movw	r3, #0xa38
   5a112: f2c0 0309    	movt	r3, #0x9
   5a116: e9cd 2300    	strd	r2, r3, [sp]
   5a11a: f240 6276    	movw	r2, #0x676
   5a11e: f640 23d4    	movw	r3, #0xad4
   5a122: f2c0 0309    	movt	r3, #0x9
   5a126: 9202         	str	r2, [sp, #0x8]
   5a128: f249 22ec    	movw	r2, #0x92ec
   5a12c: f2c0 0207    	movt	r2, #0x7
   5a130: f7d3 edb4    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x2c498
   5a134: e7bc         	b	0x5a0b0 <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x280> @ imm = #-0x88
   5a136: e7bf         	b	0x5a0b8 <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x288> @ imm = #-0x82
   5a138: e7be         	b	0x5a0b8 <_Z22on_set_parameter_arrayP15_FactoryServiceP22_GDBusMethodInvocationP9_GVariantS4_jP16FacValueObject_s+0x288> @ imm = #-0x84
   5a13a: bf00         	nop
   5a13c: db63         	blt	0x5a206 <_Z22on_get_hotel_mode_infoP15_FactoryServiceP22_GDBusMethodInvocationP16FacValueObject_s+0xc6> @ imm = #0xc6
   5a13e: 0008         	movs	r0, r1
