
firmware-analysis/US-1720.7/rootfs/root/usr/bin/fw-update-service:	file format elf32-littlearm

Disassembly of section .text:

0000edb8 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv>:
    edb8: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
    edbc: 4a86         	ldr	r2, [pc, #0x218]        @ 0xefd8 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x220>
    edbe: b098         	sub	sp, #0x60
    edc0: 4b86         	ldr	r3, [pc, #0x218]        @ 0xefdc <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x224>
    edc2: 447a         	add	r2, pc
    edc4: a907         	add	r1, sp, #0x1c
    edc6: 9005         	str	r0, [sp, #0x14]
    edc8: 2080         	movs	r0, #0x80
    edca: 9c05         	ldr	r4, [sp, #0x14]
    edcc: 58d3         	ldr	r3, [r2, r3]
    edce: 681b         	ldr	r3, [r3]
    edd0: 9317         	str	r3, [sp, #0x5c]
    edd2: f04f 0300    	mov.w	r3, #0x0
    edd6: f7fc e896    	blx	0xaf04 <system_info_get_value_string@plt> @ imm = #-0x3ed4
    edda: 2800         	cmp	r0, #0x0
    eddc: f040 80b5    	bne.w	0xef4a <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x192> @ imm = #0x16a
    ede0: 9d07         	ldr	r5, [sp, #0x1c]
    ede2: af0d         	add	r7, sp, #0x34
    ede4: 4606         	mov	r6, r0
    ede6: f04f 32ff    	mov.w	r2, #0xffffffff
    edea: 970b         	str	r7, [sp, #0x2c]
    edec: b11d         	cbz	r5, 0xedf6 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x3e> @ imm = #0x6
    edee: 4628         	mov	r0, r5
    edf0: f7fc e948    	blx	0xb084 <strlen@plt>     @ imm = #-0x3d70
    edf4: 182a         	adds	r2, r5, r0
    edf6: f10d 082c    	add.w	r8, sp, #0x2c
    edfa: 4629         	mov	r1, r5
    edfc: 4640         	mov	r0, r8
    edfe: f7fe fe2b    	bl	0xda58 <_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIiEES3_ENSt6thread8_InvokerISt5tupleIJPFiPKcjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_ESE_iSK_SK_EEEEiEEE9_M_invokeERKSt9_Any_data+0xb0> @ imm = #-0x13aa
    ee02: 4977         	ldr	r1, [pc, #0x1dc]        @ 0xefe0 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x228>
    ee04: 2301         	movs	r3, #0x1
    ee06: f04f 32ff    	mov.w	r2, #0xffffffff
    ee0a: 4640         	mov	r0, r8
    ee0c: 4479         	add	r1, pc
    ee0e: f7fc e880    	blx	0xaf10 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcjj@plt> @ imm = #-0x3f00
    ee12: 4602         	mov	r2, r0
    ee14: 1c43         	adds	r3, r0, #0x1
    ee16: d05e         	beq	0xeed6 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x11e> @ imm = #0xbc
    ee18: 9b0c         	ldr	r3, [sp, #0x30]
    ee1a: a811         	add	r0, sp, #0x44
    ee1c: 990b         	ldr	r1, [sp, #0x2c]
    ee1e: f10d 084c    	add.w	r8, sp, #0x4c
    ee22: 429a         	cmp	r2, r3
    ee24: f8cd 8044    	str.w	r8, [sp, #0x44]
    ee28: bf28         	it	hs
    ee2a: 461a         	movhs	r2, r3
    ee2c: 440a         	add	r2, r1
    ee2e: f7fe fe13    	bl	0xda58 <_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIiEES3_ENSt6thread8_InvokerISt5tupleIJPFiPKcjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_ESE_iSK_SK_EEEEiEEE9_M_invokeERKSt9_Any_data+0xb0> @ imm = #-0x13da
    ee32: 9911         	ldr	r1, [sp, #0x44]
    ee34: 6920         	ldr	r0, [r4, #0x10]
    ee36: 9a12         	ldr	r2, [sp, #0x48]
    ee38: 4541         	cmp	r1, r8
    ee3a: d03f         	beq	0xeebc <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x104> @ imm = #0x7e
    ee3c: f104 0318    	add.w	r3, r4, #0x18
    ee40: f8dd c04c    	ldr.w	r12, [sp, #0x4c]
    ee44: 4298         	cmp	r0, r3
    ee46: e9c4 1204    	strd	r1, r2, [r4, #16]
    ee4a: d070         	beq	0xef2e <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x176> @ imm = #0xe0
    ee4c: 69a3         	ldr	r3, [r4, #0x18]
    ee4e: f8c4 c018    	str.w	r12, [r4, #0x18]
    ee52: 2800         	cmp	r0, #0x0
    ee54: d06d         	beq	0xef32 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x17a> @ imm = #0xda
    ee56: 9011         	str	r0, [sp, #0x44]
    ee58: 9313         	str	r3, [sp, #0x4c]
    ee5a: 2300         	movs	r3, #0x0
    ee5c: 9312         	str	r3, [sp, #0x48]
    ee5e: 7003         	strb	r3, [r0]
    ee60: 9811         	ldr	r0, [sp, #0x44]
    ee62: 4540         	cmp	r0, r8
    ee64: d001         	beq	0xee6a <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0xb2> @ imm = #0x2
    ee66: f7fc e81e    	blx	0xaea4 <_ZdlPv@plt>     @ imm = #-0x3fc4
    ee6a: 4b5e         	ldr	r3, [pc, #0x178]        @ 0xefe4 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x22c>
    ee6c: f240 1235    	movw	r2, #0x135
    ee70: 6920         	ldr	r0, [r4, #0x10]
    ee72: 2104         	movs	r1, #0x4
    ee74: 4c5c         	ldr	r4, [pc, #0x170]        @ 0xefe8 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x230>
    ee76: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/fw-update-service-0.2/src/src/fw-update-symbol-manager.cpp'
    ee78: 333a         	adds	r3, #0x3a
    ee7a: 9202         	str	r2, [sp, #0x8]
    ee7c: 447c         	add	r4, pc ; STR 'getSWVersionString'
    ee7e: 4a5b         	ldr	r2, [pc, #0x16c]        @ 0xefec <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x234>
    ee80: e9cd 3400    	strd	r3, r4, [sp]
    ee84: 4b5a         	ldr	r3, [pc, #0x168]        @ 0xeff0 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x238>
    ee86: 447a         	add	r2, pc ; STR 'FWUPDATE'
    ee88: 9003         	str	r0, [sp, #0xc]
    ee8a: 2002         	movs	r0, #0x2
    ee8c: 447b         	add	r3, pc ; STR '%s: %s(%d) > SWModel : %s'
    ee8e: f7fb eed2    	blx	0xac34 <__dlog_print@plt> @ imm = #-0x425c
    ee92: 980b         	ldr	r0, [sp, #0x2c]
    ee94: 42b8         	cmp	r0, r7
    ee96: d001         	beq	0xee9c <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0xe4> @ imm = #0x2
    ee98: f7fc e804    	blx	0xaea4 <_ZdlPv@plt>     @ imm = #-0x3ff8
    ee9c: b115         	cbz	r5, 0xeea4 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0xec> @ imm = #0x4
    ee9e: 4628         	mov	r0, r5
    eea0: f7fb eff2    	blx	0xae88 <free@plt>       @ imm = #-0x401c
    eea4: 4a53         	ldr	r2, [pc, #0x14c]        @ 0xeff4 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x23c>
    eea6: 4b4d         	ldr	r3, [pc, #0x134]        @ 0xefdc <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x224>
    eea8: 447a         	add	r2, pc
    eeaa: 58d3         	ldr	r3, [r2, r3]
    eeac: 681a         	ldr	r2, [r3]
    eeae: 9b17         	ldr	r3, [sp, #0x5c]
    eeb0: 405a         	eors	r2, r3
    eeb2: d16f         	bne	0xef94 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x1dc> @ imm = #0xde
    eeb4: 4630         	mov	r0, r6
    eeb6: b018         	add	sp, #0x60
    eeb8: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
    eebc: b132         	cbz	r2, 0xeecc <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x114> @ imm = #0xc
    eebe: 2a01         	cmp	r2, #0x1
    eec0: d03d         	beq	0xef3e <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x186> @ imm = #0x7a
    eec2: 4641         	mov	r1, r8
    eec4: f7fc e800    	blx	0xaec8 <memcpy@plt>     @ imm = #-0x4000
    eec8: 9a12         	ldr	r2, [sp, #0x48]
    eeca: 6920         	ldr	r0, [r4, #0x10]
    eecc: 2300         	movs	r3, #0x0
    eece: 6162         	str	r2, [r4, #0x14]
    eed0: 5483         	strb	r3, [r0, r2]
    eed2: 9811         	ldr	r0, [sp, #0x44]
    eed4: e7c1         	b	0xee5a <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0xa2> @ imm = #-0x7e
    eed6: 4b48         	ldr	r3, [pc, #0x120]        @ 0xeff8 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x240>
    eed8: f44f 7498    	mov.w	r4, #0x130
    eedc: 4a47         	ldr	r2, [pc, #0x11c]        @ 0xeffc <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x244>
    eede: 2106         	movs	r1, #0x6
    eee0: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/fw-update-service-0.2/src/src/fw-update-symbol-manager.cpp'
    eee2: 980b         	ldr	r0, [sp, #0x2c]
    eee4: 447a         	add	r2, pc ; STR 'getSWVersionString'
    eee6: 333a         	adds	r3, #0x3a
    eee8: e9cd 3200    	strd	r3, r2, [sp]
    eeec: 4b44         	ldr	r3, [pc, #0x110]        @ 0xf000 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x248>
    eeee: 4a45         	ldr	r2, [pc, #0x114]        @ 0xf004 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x24c>
    eef0: 9003         	str	r0, [sp, #0xc]
    eef2: 447b         	add	r3, pc ; STR '%s: %s(%d) > getSWVersionString: Wrong string format - lack of dash: %s'
    eef4: 2002         	movs	r0, #0x2
    eef6: 447a         	add	r2, pc ; STR 'FWUPDATE'
    eef8: 9402         	str	r4, [sp, #0x8]
    eefa: f7fb ee9c    	blx	0xac34 <__dlog_print@plt> @ imm = #-0x42c8
    eefe: 4942         	ldr	r1, [pc, #0x108]        @ 0xf008 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x250>
    ef00: ac08         	add	r4, sp, #0x20
    ef02: 4620         	mov	r0, r4
    ef04: 4479         	add	r1, pc
    ef06: f501 71a8    	add.w	r1, r1, #0x150
    ef0a: f7fb eeb4    	blx	0xac74 <_ZN2ht8TCLoggerC1ERK14TSCodeLocation@plt> @ imm = #-0x4298
    ef0e: 4a3f         	ldr	r2, [pc, #0xfc]         @ 0xf00c <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x254>
    ef10: a90a         	add	r1, sp, #0x28
    ef12: 9b0b         	ldr	r3, [sp, #0x2c]
    ef14: 9808         	ldr	r0, [sp, #0x20]
    ef16: 447a         	add	r2, pc ; STR 'getSWVersionString: Wrong string format - lack of dash: %s'
    ef18: 9309         	str	r3, [sp, #0x24]
    ef1a: ab09         	add	r3, sp, #0x24
    ef1c: 930a         	str	r3, [sp, #0x28]
    ef1e: f7ff fe7f    	bl	0xec20 <_ZN17FWUpdateMQManager9setMQNameEPKc+0x768> @ imm = #-0x302
    ef22: 4620         	mov	r0, r4
    ef24: f04f 36ff    	mov.w	r6, #0xffffffff
    ef28: f7fc ea04    	blx	0xb334 <_ZN2ht8TCLoggerD1Ev@plt> @ imm = #-0x3bf8
    ef2c: e7b1         	b	0xee92 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0xda> @ imm = #-0x9e
    ef2e: f8c4 c018    	str.w	r12, [r4, #0x18]
    ef32: f8cd 8044    	str.w	r8, [sp, #0x44]
    ef36: f10d 084c    	add.w	r8, sp, #0x4c
    ef3a: 4640         	mov	r0, r8
    ef3c: e78d         	b	0xee5a <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0xa2> @ imm = #-0xe6
    ef3e: f99d 304c    	ldrsb.w	r3, [sp, #0x4c]
    ef42: 7003         	strb	r3, [r0]
    ef44: 9a12         	ldr	r2, [sp, #0x48]
    ef46: 6920         	ldr	r0, [r4, #0x10]
    ef48: e7c0         	b	0xeecc <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x114> @ imm = #-0x80
    ef4a: 4b31         	ldr	r3, [pc, #0xc4]         @ 0xf010 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x258>
    ef4c: f44f 7493    	mov.w	r4, #0x126
    ef50: 4a30         	ldr	r2, [pc, #0xc0]         @ 0xf014 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x25c>
    ef52: 2106         	movs	r1, #0x6
    ef54: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/fw-update-service-0.2/src/src/fw-update-symbol-manager.cpp'
    ef56: 9402         	str	r4, [sp, #0x8]
    ef58: 447a         	add	r2, pc ; STR 'getSWVersionString'
    ef5a: 333a         	adds	r3, #0x3a
    ef5c: e9cd 3200    	strd	r3, r2, [sp]
    ef60: 2002         	movs	r0, #0x2
    ef62: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0xf018 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x260>
    ef64: ac0a         	add	r4, sp, #0x28
    ef66: 4a2d         	ldr	r2, [pc, #0xb4]         @ 0xf01c <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x264>
    ef68: 447b         	add	r3, pc ; STR '%s: %s(%d) > Unable to read SW version from system-info'
    ef6a: 447a         	add	r2, pc ; STR 'FWUPDATE'
    ef6c: f7fb ee62    	blx	0xac34 <__dlog_print@plt> @ imm = #-0x433c
    ef70: 492b         	ldr	r1, [pc, #0xac]         @ 0xf020 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x268>
    ef72: 4620         	mov	r0, r4
    ef74: 4479         	add	r1, pc
    ef76: f501 71a0    	add.w	r1, r1, #0x140
    ef7a: f7fb ee7c    	blx	0xac74 <_ZN2ht8TCLoggerC1ERK14TSCodeLocation@plt> @ imm = #-0x4308
    ef7e: 4929         	ldr	r1, [pc, #0xa4]         @ 0xf024 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x26c>
    ef80: 980a         	ldr	r0, [sp, #0x28]
    ef82: 4479         	add	r1, pc ; STR 'Unable to read SW version from system-info'
    ef84: f7ff fa08    	bl	0xe398 <_ZN17FWUpdateMQManager11getInstanceEv+0x78> @ imm = #-0xbf0
    ef88: 4620         	mov	r0, r4
    ef8a: f04f 36ff    	mov.w	r6, #0xffffffff
    ef8e: f7fc e9d2    	blx	0xb334 <_ZN2ht8TCLoggerD1Ev@plt> @ imm = #-0x3c5c
    ef92: e787         	b	0xeea4 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0xec> @ imm = #-0xf2
    ef94: f7fb eece    	blx	0xad34 <__stack_chk_fail@plt> @ imm = #-0x4264
    ef98: 4603         	mov	r3, r0
    ef9a: 4620         	mov	r0, r4
    ef9c: 461c         	mov	r4, r3
    ef9e: f7fc e9ca    	blx	0xb334 <_ZN2ht8TCLoggerD1Ev@plt> @ imm = #-0x3c6c
    efa2: 980b         	ldr	r0, [sp, #0x2c]
    efa4: 42b8         	cmp	r0, r7
    efa6: d001         	beq	0xefac <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x1f4> @ imm = #0x2
    efa8: f7fb ef7c    	blx	0xaea4 <_ZdlPv@plt>     @ imm = #-0x4108
    efac: b115         	cbz	r5, 0xefb4 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x1fc> @ imm = #0x4
    efae: 4628         	mov	r0, r5
    efb0: f7fb ef6a    	blx	0xae88 <free@plt>       @ imm = #-0x412c
    efb4: 4620         	mov	r0, r4
    efb6: f7fb efee    	blx	0xaf94 <_Unwind_Resume@plt> @ imm = #-0x4024
    efba: 4604         	mov	r4, r0
    efbc: e7f1         	b	0xefa2 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x1ea> @ imm = #-0x1e
    efbe: 4604         	mov	r4, r0
    efc0: 2d00         	cmp	r5, #0x0
    efc2: d1f4         	bne	0xefae <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x1f6> @ imm = #-0x18
    efc4: e7f6         	b	0xefb4 <_ZN21FWUpdateSymbolManager18getSWVersionStringEv+0x1fc> @ imm = #-0x14
    efc6: 4603         	mov	r3, r0
    efc8: 4620         	mov	r0, r4
    efca: 461c         	mov	r4, r3
    efcc: f7fc e9b2    	blx	0xb334 <_ZN2ht8TCLoggerD1Ev@plt> @ imm = #-0x3c9c
    efd0: 4620         	mov	r0, r4
    efd2: f7fb efe0    	blx	0xaf94 <_Unwind_Resume@plt> @ imm = #-0x4040
    efd6: bf00         	nop
    efd8: 723a         	strb	r2, [r7, #0x8]
    efda: 0002         	movs	r2, r0
    efdc: 0370         	lsls	r0, r6, #0xd
    efde: 0000         	movs	r0, r0
    efe0: ed3c 0000    	ldc	p0, c0, [r12, #-0]!
    efe4: ec4e 0000    	mcrr	p0, #0x0, r0, lr, c0
    efe8: ec34 0000    	ldc	p0, c0, [r4], #-0
    efec: eb16 0000    	adds.w	r0, r6, r0
    eff0: ed44 0000    	stcl	p0, c0, [r4, #-0]
    eff4: 7154         	strb	r4, [r2, #0x5]
    eff6: 0002         	movs	r2, r0
    eff8: ebe4 0000    	<unknown>
    effc: ebcc 0000    	rsb	r0, r12, r0
    f000: ec5a 0000    	mrrc	p0, #0x0, r0, r10, c0
    f004: eaa6 0000    	<unknown>
    f008: 6138         	str	r0, [r7, #0x10]
    f00a: 0002         	movs	r2, r0
    f00c: ec7e 0000    	ldcl	p0, c0, [lr], #-0
    f010: eb70 0000    	sbcs.w	r0, r0, r0
    f014: eb58 0000    	adcs.w	r0, r8, r0
    f018: eb10 0000    	adds.w	r0, r0, r0
    f01c: ea32 0000    	bics.w	r0, r2, r0
    f020: 60c8         	str	r0, [r1, #0xc]
    f022: 0002         	movs	r2, r0
    f024: eb9a 0000    	<unknown>
