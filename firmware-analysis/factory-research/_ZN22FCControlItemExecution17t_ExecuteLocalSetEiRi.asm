
/Users/hty/Documents/samsung_smart_monitor/firmware-analysis/CN-1651.1/rootfs/root/usr/bin/TIFSDaemon:	file format elf32-littlearm

Disassembly of section .text:

0004acfc <_ZN22FCControlItemExecution17t_ExecuteLocalSetEiRi>:
   4acfc: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
   4ad00: 4616         	mov	r6, r2
   4ad02: f64a 4210    	movw	r2, #0xac10
   4ad06: f2c0 0208    	movt	r2, #0x8
   4ad0a: b0ea         	sub	sp, #0x1a8
   4ad0c: 6812         	ldr	r2, [r2]
   4ad0e: 9269         	str	r2, [sp, #0x1a4]
   4ad10: f04f 0200    	mov.w	r2, #0x0
   4ad14: 4605         	mov	r5, r0
   4ad16: 6832         	ldr	r2, [r6]
   4ad18: 21c2         	movs	r1, #0xc2
   4ad1a: 6880         	ldr	r0, [r0, #0x8]
   4ad1c: ab09         	add	r3, sp, #0x24
   4ad1e: 2400         	movs	r4, #0x0
   4ad20: 9409         	str	r4, [sp, #0x24]
   4ad22: f7e2 eb9e    	blx	0x2d460 <_ZN19FCStorageBaseCommon29ConvertStoreDataToControlDataEiiPi@plt> @ imm = #-0x1d8c4
   4ad26: 2800         	cmp	r0, #0x0
   4ad28: f040 80a1    	bne.w	0x4ae6e <_ZN22FCControlItemExecution17t_ExecuteLocalSetEiRi+0x172> @ imm = #0x142
   4ad2c: 9909         	ldr	r1, [sp, #0x24]
   4ad2e: 2961         	cmp	r1, #0x61
   4ad30: f300 809d    	bgt.w	0x4ae6e <_ZN22FCControlItemExecution17t_ExecuteLocalSetEiRi+0x172> @ imm = #0x13a
   4ad34: f1a1 0305    	sub.w	r3, r1, #0x5
   4ad38: f1a1 0244    	sub.w	r2, r1, #0x44
   4ad3c: fab3 f383    	clz	r3, r3
   4ad40: fab2 f282    	clz	r2, r2
   4ad44: 4604         	mov	r4, r0
   4ad46: 095b         	lsrs	r3, r3, #0x5
   4ad48: 0952         	lsrs	r2, r2, #0x5
   4ad4a: 2900         	cmp	r1, #0x0
   4ad4c: bf08         	it	eq
   4ad4e: 2301         	moveq	r3, #0x1
   4ad50: 4313         	orrs	r3, r2
   4ad52: d174         	bne	0x4ae3e <_ZN22FCControlItemExecution17t_ExecuteLocalSetEiRi+0x142> @ imm = #0xe8
   4ad54: 68e8         	ldr	r0, [r5, #0xc]
   4ad56: aa08         	add	r2, sp, #0x20
   4ad58: 9408         	str	r4, [sp, #0x20]
   4ad5a: f025 fad3    	bl	0x70304 <_ZN9FCControl17CheckSkipLocalsetEiPi> @ imm = #0x255a6
   4ad5e: e9dd 1408    	ldrd	r1, r4, [sp, #32]
   4ad62: f640 2086    	movw	r0, #0xa86
   4ad66: 6833         	ldr	r3, [r6]
   4ad68: f648 7238    	movw	r2, #0x8f38
   4ad6c: f2c0 0208    	movt	r2, #0x8
   4ad70: 9105         	str	r1, [sp, #0x14]
   4ad72: 494e         	ldr	r1, [pc, #0x138]        @ 0x4aeac <_ZN22FCControlItemExecution17t_ExecuteLocalSetEiRi+0x1b0>
   4ad74: 9303         	str	r3, [sp, #0xc]
   4ad76: f648 7370    	movw	r3, #0x8f70
   4ad7a: f2c0 0308    	movt	r3, #0x8
   4ad7e: 9201         	str	r2, [sp, #0x4]
   4ad80: 9404         	str	r4, [sp, #0x10]
   4ad82: f249 22ec    	movw	r2, #0x92ec
   4ad86: f2c0 0207    	movt	r2, #0x7
   4ad8a: 9100         	str	r1, [sp]
   4ad8c: 9002         	str	r0, [sp, #0x8]
   4ad8e: 2103         	movs	r1, #0x3
   4ad90: 2002         	movs	r0, #0x2
   4ad92: f7e2 ef84    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x1d0f8
   4ad96: 9c08         	ldr	r4, [sp, #0x20]
   4ad98: 2c00         	cmp	r4, #0x0
   4ad9a: f040 8081    	bne.w	0x4aea0 <_ZN22FCControlItemExecution17t_ExecuteLocalSetEiRi+0x1a4> @ imm = #0x102
   4ad9e: 4b44         	ldr	r3, [pc, #0x110]        @ 0x4aeb0 <_ZN22FCControlItemExecution17t_ExecuteLocalSetEiRi+0x1b4>
   4ada0: f10d 0c28    	add.w	r12, sp, #0x28
   4ada4: 4667         	mov	r7, r12
   4ada6: 4626         	mov	r6, r4
   4ada8: f5a3 7884    	sub.w	r8, r3, #0x108
   4adac: 9407         	str	r4, [sp, #0x1c]
   4adae: cb0f         	ldm	r3, {r0, r1, r2, r3}
   4adb0: e88c 000f    	stm.w	r12, {r0, r1, r2, r3}
   4adb4: f44f 72b6    	mov.w	r2, #0x16c
   4adb8: 2100         	movs	r1, #0x0
   4adba: a80e         	add	r0, sp, #0x38
   4adbc: f7e2 edca    	blx	0x2d954 <memset@plt>    @ imm = #-0x1d46c
   4adc0: f857 1b04    	ldr	r1, [r7], #4
   4adc4: 68a8         	ldr	r0, [r5, #0x8]
   4adc6: aa0e         	add	r2, sp, #0x38
   4adc8: f7e3 eb28    	blx	0x2e41c <_ZN19FCStorageBaseCommon20GetFactoryUniqueItemEjP13FacItemNode_s@plt> @ imm = #-0x1c9b0
   4adcc: b9a8         	cbnz	r0, 0x4adfa <_ZN22FCControlItemExecution17t_ExecuteLocalSetEiRi+0xfe> @ imm = #0x2a
   4adce: 9b09         	ldr	r3, [sp, #0x24]
   4add0: 981e         	ldr	r0, [sp, #0x78]
   4add2: eb06 0383    	add.w	r3, r6, r3, lsl #2
   4add6: 28a5         	cmp	r0, #0xa5
   4add8: eb08 0383    	add.w	r3, r8, r3, lsl #2
   4addc: f8d3 1118    	ldr.w	r1, [r3, #0x118]
   4ade0: 9107         	str	r1, [sp, #0x1c]
   4ade2: d124         	bne	0x4ae2e <_ZN22FCControlItemExecution17t_ExecuteLocalSetEiRi+0x132> @ imm = #0x48
   4ade4: 6928         	ldr	r0, [r5, #0x10]
   4ade6: 6803         	ldr	r3, [r0]
   4ade8: 68db         	ldr	r3, [r3, #0xc]
   4adea: 4798         	blx	r3
   4adec: 4602         	mov	r2, r0
   4adee: 9007         	str	r0, [sp, #0x1c]
   4adf0: 68e8         	ldr	r0, [r5, #0xc]
   4adf2: a90e         	add	r1, sp, #0x38
   4adf4: f02a fb94    	bl	0x75520 <_ZN9FCControl12SetParameterEP13FacItemNode_si> @ imm = #0x2a728
   4adf8: 4304         	orrs	r4, r0
   4adfa: 3601         	adds	r6, #0x1
   4adfc: 2e04         	cmp	r6, #0x4
   4adfe: d1d9         	bne	0x4adb4 <_ZN22FCControlItemExecution17t_ExecuteLocalSetEiRi+0xb8> @ imm = #-0x4e
   4ae00: 4628         	mov	r0, r5
   4ae02: f7fc f95d    	bl	0x470c0 <_ZN22FCControlItemExecution29m_ThailandOTASupportSetttingsEv> @ imm = #-0x3d46
   4ae06: 68a8         	ldr	r0, [r5, #0x8]
   4ae08: f06f 0327    	mvn	r3, #0x27
   4ae0c: 2201         	movs	r2, #0x1
   4ae0e: f640 31bf    	movw	r1, #0xbbf
   4ae12: f7e3 ebe0    	blx	0x2e5d4 <_ZN19FCStorageBaseCommon13SetFactoryUIDEjii@plt> @ imm = #-0x1c840
   4ae16: f64a 4310    	movw	r3, #0xac10
   4ae1a: f2c0 0308    	movt	r3, #0x8
   4ae1e: 681a         	ldr	r2, [r3]
   4ae20: 9b69         	ldr	r3, [sp, #0x1a4]
   4ae22: 405a         	eors	r2, r3
   4ae24: d13f         	bne	0x4aea6 <_ZN22FCControlItemExecution17t_ExecuteLocalSetEiRi+0x1aa> @ imm = #0x7e
   4ae26: 4620         	mov	r0, r4
   4ae28: b06a         	add	sp, #0x1a8
   4ae2a: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
   4ae2e: 460a         	mov	r2, r1
   4ae30: 68a8         	ldr	r0, [r5, #0x8]
   4ae32: ab07         	add	r3, sp, #0x1c
   4ae34: a90e         	add	r1, sp, #0x38
   4ae36: f7e2 ef92    	blx	0x2dd5c <_ZN19FCStorageBaseCommon29ConvertControlDataToStoreDataEP13FacItemNode_siPi@plt> @ imm = #-0x1d0dc
   4ae3a: 9a07         	ldr	r2, [sp, #0x1c]
   4ae3c: e7d8         	b	0x4adf0 <_ZN22FCControlItemExecution17t_ExecuteLocalSetEiRi+0xf4> @ imm = #-0x50
   4ae3e: 481b         	ldr	r0, [pc, #0x6c]         @ 0x4aeac <_ZN22FCControlItemExecution17t_ExecuteLocalSetEiRi+0x1b0>
   4ae40: f44f 6228    	mov.w	r2, #0xa80
   4ae44: 9103         	str	r1, [sp, #0xc]
   4ae46: f648 7338    	movw	r3, #0x8f38
   4ae4a: f2c0 0308    	movt	r3, #0x8
   4ae4e: 9000         	str	r0, [sp]
   4ae50: 9301         	str	r3, [sp, #0x4]
   4ae52: 2103         	movs	r1, #0x3
   4ae54: 9202         	str	r2, [sp, #0x8]
   4ae56: f648 734c    	movw	r3, #0x8f4c
   4ae5a: f2c0 0308    	movt	r3, #0x8
   4ae5e: f249 22ec    	movw	r2, #0x92ec
   4ae62: f2c0 0207    	movt	r2, #0x7
   4ae66: 2002         	movs	r0, #0x2
   4ae68: f7e2 ef18    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x1d1d0
   4ae6c: e7d3         	b	0x4ae16 <_ZN22FCControlItemExecution17t_ExecuteLocalSetEiRi+0x11a> @ imm = #-0x5a
   4ae6e: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x4aeac <_ZN22FCControlItemExecution17t_ExecuteLocalSetEiRi+0x1b0>
   4ae70: 2106         	movs	r1, #0x6
   4ae72: f648 7338    	movw	r3, #0x8f38
   4ae76: f2c0 0308    	movt	r3, #0x8
   4ae7a: 2002         	movs	r0, #0x2
   4ae7c: e9cd 2300    	strd	r2, r3, [sp]
   4ae80: f640 2278    	movw	r2, #0xa78
   4ae84: f648 731c    	movw	r3, #0x8f1c
   4ae88: f2c0 0308    	movt	r3, #0x8
   4ae8c: 9202         	str	r2, [sp, #0x8]
   4ae8e: f249 22ec    	movw	r2, #0x92ec
   4ae92: f2c0 0207    	movt	r2, #0x7
   4ae96: f04f 34ff    	mov.w	r4, #0xffffffff
   4ae9a: f7e2 ef00    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x1d200
   4ae9e: e7ba         	b	0x4ae16 <_ZN22FCControlItemExecution17t_ExecuteLocalSetEiRi+0x11a> @ imm = #-0x8c
   4aea0: f04f 34ff    	mov.w	r4, #0xffffffff
   4aea4: e7b7         	b	0x4ae16 <_ZN22FCControlItemExecution17t_ExecuteLocalSetEiRi+0x11a> @ imm = #-0x92
   4aea6: f7e2 ea46    	blx	0x2d334 <__stack_chk_fail@plt> @ imm = #-0x1db74
   4aeaa: bf00         	nop
   4aeac: 19cf         	adds	r7, r1, r7
   4aeae: 0008         	movs	r0, r1
   4aeb0: ad38         	add	r5, sp, #0xe0
   4aeb2: 0008         	movs	r0, r1
