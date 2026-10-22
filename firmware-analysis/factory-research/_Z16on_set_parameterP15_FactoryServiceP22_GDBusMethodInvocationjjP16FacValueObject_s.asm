
firmware-analysis/CN-1651.1/rootfs/root/usr/bin/TIFSDaemon:	file format elf32-littlearm

Disassembly of section .text:

00058f08 <_Z16on_set_parameterP15_FactoryServiceP22_GDBusMethodInvocationjjP16FacValueObject_s>:
   58f08: e92d 43f0    	push.w	{r4, r5, r6, r7, r8, r9, lr}
   58f0c: 4607         	mov	r7, r0
   58f0e: f8df 916c    	ldr.w	r9, [pc, #0x16c]        @ 0x5907c <_Z16on_set_parameterP15_FactoryServiceP22_GDBusMethodInvocationjjP16FacValueObject_s+0x174>
   58f12: b087         	sub	sp, #0x1c
   58f14: 4614         	mov	r4, r2
   58f16: 461d         	mov	r5, r3
   58f18: 4688         	mov	r8, r1
   58f1a: f64f 66b0    	movw	r6, #0xfeb0
   58f1e: f2c0 0608    	movt	r6, #0x8
   58f22: e9cd 2303    	strd	r2, r3, [sp, #12]
   58f26: 2103         	movs	r1, #0x3
   58f28: f44f 724f    	mov.w	r2, #0x33c
   58f2c: f64f 6388    	movw	r3, #0xfe88
   58f30: f2c0 0308    	movt	r3, #0x8
   58f34: 9202         	str	r2, [sp, #0x8]
   58f36: 2002         	movs	r0, #0x2
   58f38: f249 22ec    	movw	r2, #0x92ec
   58f3c: f2c0 0207    	movt	r2, #0x7
   58f40: e9cd 9600    	strd	r9, r6, [sp]
   58f44: f7d4 eeaa    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x2b2ac
   58f48: 2f00         	cmp	r7, #0x0
   58f4a: d05c         	beq	0x59006 <_Z16on_set_parameterP15_FactoryServiceP22_GDBusMethodInvocationjjP16FacValueObject_s+0xfe> @ imm = #0xb8
   58f4c: f7fd f9be    	bl	0x562cc <_ZN13FCStorageBase11GetInstanceEv> @ imm = #-0x2c84
   58f50: 4607         	mov	r7, r0
   58f52: 2800         	cmp	r0, #0x0
   58f54: d067         	beq	0x59026 <_Z16on_set_parameterP15_FactoryServiceP22_GDBusMethodInvocationjjP16FacValueObject_s+0x11e> @ imm = #0xce
   58f56: f7fd f93d    	bl	0x561d4 <_ZN13FCStorageBase15LoadFactoryFileEv> @ imm = #-0x2d86
   58f5a: f7fb f81d    	bl	0x53f98 <_ZN8FCObject10GetControlEv> @ imm = #-0x4fc6
   58f5e: 4607         	mov	r7, r0
   58f60: 2800         	cmp	r0, #0x0
   58f62: f000 8081    	beq.w	0x59068 <_Z16on_set_parameterP15_FactoryServiceP22_GDBusMethodInvocationjjP16FacValueObject_s+0x160> @ imm = #0x102
   58f66: 6803         	ldr	r3, [r0]
   58f68: 462a         	mov	r2, r5
   58f6a: 4621         	mov	r1, r4
   58f6c: 6adb         	ldr	r3, [r3, #0x2c]
   58f6e: 4798         	blx	r3
   58f70: b3a0         	cbz	r0, 0x58fdc <_Z16on_set_parameterP15_FactoryServiceP22_GDBusMethodInvocationjjP16FacValueObject_s+0xd4> @ imm = #0x68
   58f72: 2100         	movs	r1, #0x0
   58f74: f64b 2034    	movw	r0, #0xba34
   58f78: f2c0 0008    	movt	r0, #0x8
   58f7c: f7d4 eb1c    	blx	0x2d5b8 <g_variant_new@plt> @ imm = #-0x2b9c8
   58f80: f44f 7257    	mov.w	r2, #0x35c
   58f84: 4607         	mov	r7, r0
   58f86: 2106         	movs	r1, #0x6
   58f88: 9202         	str	r2, [sp, #0x8]
   58f8a: 2002         	movs	r0, #0x2
   58f8c: e9cd 9600    	strd	r9, r6, [sp]
   58f90: f64f 7390    	movw	r3, #0xff90
   58f94: f2c0 0308    	movt	r3, #0x8
   58f98: f249 22ec    	movw	r2, #0x92ec
   58f9c: f2c0 0207    	movt	r2, #0x7
   58fa0: f7d4 ee7c    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x2b308
   58fa4: 4639         	mov	r1, r7
   58fa6: 4640         	mov	r0, r8
   58fa8: f7d8 fe5c    	bl	0x31c64 <_ZN24FCStringForFactoryKeyHTV36m_ConvertValueToStrDoorEyeSrcRetTimeEjiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x184> @ imm = #-0x27348
   58fac: f64f 73b4    	movw	r3, #0xffb4
   58fb0: f2c0 0308    	movt	r3, #0x8
   58fb4: e9cd 4503    	strd	r4, r5, [sp, #12]
   58fb8: f240 325e    	movw	r2, #0x35e
   58fbc: 9601         	str	r6, [sp, #0x4]
   58fbe: 9202         	str	r2, [sp, #0x8]
   58fc0: 2103         	movs	r1, #0x3
   58fc2: f8cd 9000    	str.w	r9, [sp]
   58fc6: 2002         	movs	r0, #0x2
   58fc8: f249 22ec    	movw	r2, #0x92ec
   58fcc: f2c0 0207    	movt	r2, #0x7
   58fd0: f7d4 ee64    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x2b338
   58fd4: 2001         	movs	r0, #0x1
   58fd6: b007         	add	sp, #0x1c
   58fd8: e8bd 83f0    	pop.w	{r4, r5, r6, r7, r8, r9, pc}
   58fdc: 2101         	movs	r1, #0x1
   58fde: f64b 2034    	movw	r0, #0xba34
   58fe2: f2c0 0008    	movt	r0, #0x8
   58fe6: f7d4 eae8    	blx	0x2d5b8 <g_variant_new@plt> @ imm = #-0x2ba30
   58fea: 4601         	mov	r1, r0
   58fec: 4640         	mov	r0, r8
   58fee: f7d8 fe39    	bl	0x31c64 <_ZN24FCStringForFactoryKeyHTV36m_ConvertValueToStrDoorEyeSrcRetTimeEjiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x184> @ imm = #-0x2738e
   58ff2: f64f 735c    	movw	r3, #0xff5c
   58ff6: f2c0 0308    	movt	r3, #0x8
   58ffa: e9cd 4503    	strd	r4, r5, [sp, #12]
   58ffe: f240 3256    	movw	r2, #0x356
   59002: 9601         	str	r6, [sp, #0x4]
   59004: e7db         	b	0x58fbe <_Z16on_set_parameterP15_FactoryServiceP22_GDBusMethodInvocationjjP16FacValueObject_s+0xb6> @ imm = #-0x4a
   59006: f24e 0264    	movw	r2, #0xe064
   5900a: f2c0 0208    	movt	r2, #0x8
   5900e: f64f 63c4    	movw	r3, #0xfec4
   59012: f2c0 0308    	movt	r3, #0x8
   59016: 9200         	str	r2, [sp]
   59018: f1a9 0147    	sub.w	r1, r9, #0x47
   5901c: 4638         	mov	r0, r7
   5901e: f240 323e    	movw	r2, #0x33e
   59022: f7d4 e8fe    	blx	0x2d220 <g_assertion_message_expr@plt> @ imm = #-0x2be04
   59026: f64f 7328    	movw	r3, #0xff28
   5902a: f2c0 0308    	movt	r3, #0x8
   5902e: 9601         	str	r6, [sp, #0x4]
   59030: f240 3243    	movw	r2, #0x343
   59034: f8cd 9000    	str.w	r9, [sp]
   59038: 9202         	str	r2, [sp, #0x8]
   5903a: 2106         	movs	r1, #0x6
   5903c: 2002         	movs	r0, #0x2
   5903e: f249 22ec    	movw	r2, #0x92ec
   59042: f2c0 0207    	movt	r2, #0x7
   59046: f7d4 ee2a    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x2b3ac
   5904a: 4639         	mov	r1, r7
   5904c: f64b 2034    	movw	r0, #0xba34
   59050: f2c0 0008    	movt	r0, #0x8
   59054: f7d4 eab0    	blx	0x2d5b8 <g_variant_new@plt> @ imm = #-0x2baa0
   59058: 4601         	mov	r1, r0
   5905a: 4640         	mov	r0, r8
   5905c: f7d8 fe02    	bl	0x31c64 <_ZN24FCStringForFactoryKeyHTV36m_ConvertValueToStrDoorEyeSrcRetTimeEjiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x184> @ imm = #-0x273fc
   59060: 2001         	movs	r0, #0x1
   59062: b007         	add	sp, #0x1c
   59064: e8bd 83f0    	pop.w	{r4, r5, r6, r7, r8, r9, pc}
   59068: f64f 13dc    	movw	r3, #0xf9dc
   5906c: f2c0 0308    	movt	r3, #0x8
   59070: 9601         	str	r6, [sp, #0x4]
   59072: f240 324d    	movw	r2, #0x34d
   59076: f8cd 9000    	str.w	r9, [sp]
   5907a: e7dd         	b	0x59038 <_Z16on_set_parameterP15_FactoryServiceP22_GDBusMethodInvocationjjP16FacValueObject_s+0x130> @ imm = #-0x46
   5907c: db63         	blt	0x59146 <_Z11on_save_logP15_FactoryServiceP22_GDBusMethodInvocationjP16FacValueObject_s+0xc6> @ imm = #0xc6
   5907e: 0008         	movs	r0, r1
