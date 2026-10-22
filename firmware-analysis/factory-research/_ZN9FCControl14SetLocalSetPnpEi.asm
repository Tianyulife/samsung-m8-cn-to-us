
/Users/hty/Documents/samsung_smart_monitor/firmware-analysis/CN-1651.1/rootfs/root/usr/bin/TIFSDaemon:	file format elf32-littlearm

Disassembly of section .text:

00074f4c <_ZN9FCControl14SetLocalSetPnpEi>:
   74f4c: e92d 47f0    	push.w	{r4, r5, r6, r7, r8, r9, r10, lr}
   74f50: 2400         	movs	r4, #0x0
   74f52: f8df 9180    	ldr.w	r9, [pc, #0x180]        @ 0x750d4 <_ZN9FCControl14SetLocalSetPnpEi+0x188>
   74f56: b0e4         	sub	sp, #0x190
   74f58: f64c 4588    	movw	r5, #0xcc88
   74f5c: f2c0 0507    	movt	r5, #0x7
   74f60: f640 2a3a    	movw	r10, #0xa3a
   74f64: 4606         	mov	r6, r0
   74f66: 4688         	mov	r8, r1
   74f68: 9501         	str	r5, [sp, #0x4]
   74f6a: 2104         	movs	r1, #0x4
   74f6c: f8cd 9000    	str.w	r9, [sp]
   74f70: 4620         	mov	r0, r4
   74f72: f8cd a008    	str.w	r10, [sp, #0x8]
   74f76: f24e 037c    	movw	r3, #0xe07c
   74f7a: f2c0 0308    	movt	r3, #0x8
   74f7e: f249 22ec    	movw	r2, #0x92ec
   74f82: f2c0 0207    	movt	r2, #0x7
   74f86: f648 6798    	movw	r7, #0x8e98
   74f8a: f2c0 0709    	movt	r7, #0x9
   74f8e: 683f         	ldr	r7, [r7]
   74f90: 9763         	str	r7, [sp, #0x18c]
   74f92: f04f 0700    	mov.w	r7, #0x0
   74f96: f88d 401f    	strb.w	r4, [sp, #0x1f]
   74f9a: f7b8 ee80    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x47300
   74f9e: f24e 1008    	movw	r0, #0xe108
   74fa2: f2c0 0008    	movt	r0, #0x8
   74fa6: f10d 011f    	add.w	r1, sp, #0x1f
   74faa: f7b8 e9e8    	blx	0x2d37c <system_info_get_custom_bool@plt> @ imm = #-0x47c30
   74fae: 2800         	cmp	r0, #0x0
   74fb0: d151         	bne	0x75056 <_ZN9FCControl14SetLocalSetPnpEi+0x10a> @ imm = #0xa2
   74fb2: 2104         	movs	r1, #0x4
   74fb4: f8cd a008    	str.w	r10, [sp, #0x8]
   74fb8: f24e 2324    	movw	r3, #0xe224
   74fbc: f2c0 0308    	movt	r3, #0x8
   74fc0: e9cd 9500    	strd	r9, r5, [sp]
   74fc4: f249 22ec    	movw	r2, #0x92ec
   74fc8: f2c0 0207    	movt	r2, #0x7
   74fcc: 4607         	mov	r7, r0
   74fce: f7b8 ee66    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x47334
   74fd2: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
   74fd6: 2b00         	cmp	r3, #0x0
   74fd8: d051         	beq	0x7507e <_ZN9FCControl14SetLocalSetPnpEi+0x132> @ imm = #0xa2
   74fda: 68b0         	ldr	r0, [r6, #0x8]
   74fdc: 21c2         	movs	r1, #0xc2
   74fde: aa08         	add	r2, sp, #0x20
   74fe0: f7b9 ea1c    	blx	0x2e41c <_ZN19FCStorageBaseCommon20GetFactoryUniqueItemEjP13FacItemNode_s@plt> @ imm = #-0x46bc8
   74fe4: 4604         	mov	r4, r0
   74fe6: 1c43         	adds	r3, r0, #0x1
   74fe8: d05e         	beq	0x750a8 <_ZN9FCControl14SetLocalSetPnpEi+0x15c> @ imm = #0xbc
   74fea: 4640         	mov	r0, r8
   74fec: f7b9 e8f0    	blx	0x2e1d0 <_Z39fd_config_convert_pnp_localset_id_biztvi@plt> @ imm = #-0x46e20
   74ff0: 6833         	ldr	r3, [r6]
   74ff2: 4602         	mov	r2, r0
   74ff4: a908         	add	r1, sp, #0x20
   74ff6: 4630         	mov	r0, r6
   74ff8: 4616         	mov	r6, r2
   74ffa: 695b         	ldr	r3, [r3, #0x14]
   74ffc: 4798         	blx	r3
   74ffe: 4604         	mov	r4, r0
   75000: f7df f85c    	bl	0x540bc <_ZN8FCObject23GetControlItemExecutionEv> @ imm = #-0x20f48
   75004: 6803         	ldr	r3, [r0]
   75006: a908         	add	r1, sp, #0x20
   75008: 4632         	mov	r2, r6
   7500a: 689b         	ldr	r3, [r3, #0x8]
   7500c: 4798         	blx	r3
   7500e: f640 224c    	movw	r2, #0xa4c
   75012: 4684         	mov	r12, r0
   75014: f64c 4398    	movw	r3, #0xcc98
   75018: f2c0 0307    	movt	r3, #0x7
   7501c: 9202         	str	r2, [sp, #0x8]
   7501e: 4638         	mov	r0, r7
   75020: f249 22ec    	movw	r2, #0x92ec
   75024: f2c0 0207    	movt	r2, #0x7
   75028: 2104         	movs	r1, #0x4
   7502a: 9604         	str	r6, [sp, #0x10]
   7502c: ea44 040c    	orr.w	r4, r4, r12
   75030: f8cd 800c    	str.w	r8, [sp, #0xc]
   75034: 9501         	str	r5, [sp, #0x4]
   75036: f8cd 9000    	str.w	r9, [sp]
   7503a: f7b8 ee30    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x473a0
   7503e: f648 6398    	movw	r3, #0x8e98
   75042: f2c0 0309    	movt	r3, #0x9
   75046: 681a         	ldr	r2, [r3]
   75048: 9b63         	ldr	r3, [sp, #0x18c]
   7504a: 405a         	eors	r2, r3
   7504c: d13f         	bne	0x750ce <_ZN9FCControl14SetLocalSetPnpEi+0x182> @ imm = #0x7e
   7504e: 4620         	mov	r0, r4
   75050: b064         	add	sp, #0x190
   75052: e8bd 87f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, pc}
   75056: f04f 32ff    	mov.w	r2, #0xffffffff
   7505a: f24e 1344    	movw	r3, #0xe144
   7505e: f2c0 0308    	movt	r3, #0x8
   75062: 9203         	str	r2, [sp, #0xc]
   75064: 2106         	movs	r1, #0x6
   75066: f249 22ec    	movw	r2, #0x92ec
   7506a: f2c0 0207    	movt	r2, #0x7
   7506e: 2002         	movs	r0, #0x2
   75070: f8cd a008    	str.w	r10, [sp, #0x8]
   75074: 9501         	str	r5, [sp, #0x4]
   75076: f8cd 9000    	str.w	r9, [sp]
   7507a: f7b8 ee10    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x473e0
   7507e: f640 223e    	movw	r2, #0xa3e
   75082: 2106         	movs	r1, #0x6
   75084: 9202         	str	r2, [sp, #0x8]
   75086: 2002         	movs	r0, #0x2
   75088: 9501         	str	r5, [sp, #0x4]
   7508a: f248 4304    	movw	r3, #0x8404
   7508e: f2c0 0309    	movt	r3, #0x9
   75092: f8cd 9000    	str.w	r9, [sp]
   75096: f249 22ec    	movw	r2, #0x92ec
   7509a: f2c0 0207    	movt	r2, #0x7
   7509e: f04f 34ff    	mov.w	r4, #0xffffffff
   750a2: f7b8 edfc    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x47408
   750a6: e7ca         	b	0x7503e <_ZN9FCControl14SetLocalSetPnpEi+0xf2> @ imm = #-0x6c
   750a8: f640 2244    	movw	r2, #0xa44
   750ac: 2106         	movs	r1, #0x6
   750ae: 9202         	str	r2, [sp, #0x8]
   750b0: f64c 4364    	movw	r3, #0xcc64
   750b4: f2c0 0307    	movt	r3, #0x7
   750b8: 9501         	str	r5, [sp, #0x4]
   750ba: f8cd 9000    	str.w	r9, [sp]
   750be: f249 22ec    	movw	r2, #0x92ec
   750c2: f2c0 0207    	movt	r2, #0x7
   750c6: 2002         	movs	r0, #0x2
   750c8: f7b8 ede8    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x47430
   750cc: e7b7         	b	0x7503e <_ZN9FCControl14SetLocalSetPnpEi+0xf2> @ imm = #-0x92
   750ce: f7b8 e932    	blx	0x2d334 <__stack_chk_fail@plt> @ imm = #-0x47d9c
   750d2: bf00         	nop
   750d4: 5ce3         	ldrb	r3, [r4, r3]
   750d6: 0009         	movs	r1, r1
