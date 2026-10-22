
firmware-analysis/CN-1651.1/rootfs/root/usr/bin/TIFSDaemon:	file format elf32-littlearm

Disassembly of section .text:

00075520 <_ZN9FCControl12SetParameterEP13FacItemNode_si>:
   75520: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
   75524: f648 63a8    	movw	r3, #0x8ea8
   75528: f2c0 0309    	movt	r3, #0x9
   7552c: b084         	sub	sp, #0x10
   7552e: 9201         	str	r2, [sp, #0x4]
   75530: 681b         	ldr	r3, [r3]
   75532: 9303         	str	r3, [sp, #0xc]
   75534: f04f 0300    	mov.w	r3, #0x0
   75538: 2900         	cmp	r1, #0x0
   7553a: d06c         	beq	0x75616 <_ZN9FCControl12SetParameterEP13FacItemNode_si+0xf6> @ imm = #0xd8
   7553c: 6c0b         	ldr	r3, [r1, #0x40]
   7553e: 4605         	mov	r5, r0
   75540: 460c         	mov	r4, r1
   75542: 2bc2         	cmp	r3, #0xc2
   75544: d01c         	beq	0x75580 <_ZN9FCControl12SetParameterEP13FacItemNode_si+0x60> @ imm = #0x38
   75546: 3b11         	subs	r3, #0x11
   75548: 2b01         	cmp	r3, #0x1
   7554a: d956         	bls	0x755fa <_ZN9FCControl12SetParameterEP13FacItemNode_si+0xda> @ imm = #0xac
   7554c: 2600         	movs	r6, #0x0
   7554e: 682b         	ldr	r3, [r5]
   75550: 4621         	mov	r1, r4
   75552: 4628         	mov	r0, r5
   75554: 695b         	ldr	r3, [r3, #0x14]
   75556: 4798         	blx	r3
   75558: 4306         	orrs	r6, r0
   7555a: f7de fdaf    	bl	0x540bc <_ZN8FCObject23GetControlItemExecutionEv> @ imm = #-0x214a2
   7555e: 6803         	ldr	r3, [r0]
   75560: 9a01         	ldr	r2, [sp, #0x4]
   75562: 4621         	mov	r1, r4
   75564: 689b         	ldr	r3, [r3, #0x8]
   75566: 4798         	blx	r3
   75568: 4330         	orrs	r0, r6
   7556a: f648 63a8    	movw	r3, #0x8ea8
   7556e: f2c0 0309    	movt	r3, #0x9
   75572: 681a         	ldr	r2, [r3]
   75574: 9b03         	ldr	r3, [sp, #0xc]
   75576: 405a         	eors	r2, r3
   75578: d150         	bne	0x7561c <_ZN9FCControl12SetParameterEP13FacItemNode_si+0xfc> @ imm = #0xa0
   7557a: b004         	add	sp, #0x10
   7557c: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
   75580: f8d0 1098    	ldr.w	r1, [r0, #0x98]
   75584: f100 0794    	add.w	r7, r0, #0x94
   75588: 463e         	mov	r6, r7
   7558a: 460b         	mov	r3, r1
   7558c: 2900         	cmp	r1, #0x0
   7558e: d0dd         	beq	0x7554c <_ZN9FCControl12SetParameterEP13FacItemNode_si+0x2c> @ imm = #-0x46
   75590: 6918         	ldr	r0, [r3, #0x10]
   75592: 4290         	cmp	r0, r2
   75594: db39         	blt	0x7560a <_ZN9FCControl12SetParameterEP13FacItemNode_si+0xea> @ imm = #0x72
   75596: 461e         	mov	r6, r3
   75598: 689b         	ldr	r3, [r3, #0x8]
   7559a: 2b00         	cmp	r3, #0x0
   7559c: d1f8         	bne	0x75590 <_ZN9FCControl12SetParameterEP13FacItemNode_si+0x70> @ imm = #-0x10
   7559e: 42b7         	cmp	r7, r6
   755a0: d0d4         	beq	0x7554c <_ZN9FCControl12SetParameterEP13FacItemNode_si+0x2c> @ imm = #-0x58
   755a2: 6933         	ldr	r3, [r6, #0x10]
   755a4: 429a         	cmp	r2, r3
   755a6: dbd1         	blt	0x7554c <_ZN9FCControl12SetParameterEP13FacItemNode_si+0x2c> @ imm = #-0x5e
   755a8: f105 0890    	add.w	r8, r5, #0x90
   755ac: 4638         	mov	r0, r7
   755ae: 460b         	mov	r3, r1
   755b0: 691e         	ldr	r6, [r3, #0x10]
   755b2: 42b2         	cmp	r2, r6
   755b4: dc2d         	bgt	0x75612 <_ZN9FCControl12SetParameterEP13FacItemNode_si+0xf2> @ imm = #0x5a
   755b6: 4618         	mov	r0, r3
   755b8: 689b         	ldr	r3, [r3, #0x8]
   755ba: 2b00         	cmp	r3, #0x0
   755bc: d1f8         	bne	0x755b0 <_ZN9FCControl12SetParameterEP13FacItemNode_si+0x90> @ imm = #-0x10
   755be: 4287         	cmp	r7, r0
   755c0: d002         	beq	0x755c8 <_ZN9FCControl12SetParameterEP13FacItemNode_si+0xa8> @ imm = #0x4
   755c2: 6903         	ldr	r3, [r0, #0x10]
   755c4: 429a         	cmp	r2, r3
   755c6: da08         	bge	0x755da <_ZN9FCControl12SetParameterEP13FacItemNode_si+0xba> @ imm = #0x10
   755c8: 4601         	mov	r1, r0
   755ca: aa02         	add	r2, sp, #0x8
   755cc: 4640         	mov	r0, r8
   755ce: ab01         	add	r3, sp, #0x4
   755d0: 9302         	str	r3, [sp, #0x8]
   755d2: f7bc f85f    	bl	0x31694 <_ZN25FCControlItemExecutionHTV22t_ExecuteEngineerResetEiRi+0x124> @ imm = #-0x43f42
   755d6: f8d5 1098    	ldr.w	r1, [r5, #0x98]
   755da: 6943         	ldr	r3, [r0, #0x14]
   755dc: 4640         	mov	r0, r8
   755de: 9301         	str	r3, [sp, #0x4]
   755e0: f7fa fdf6    	bl	0x701d0 <_ZN22FCControlExecutionBase16t_ItemRangeCheckEP13FacItemNode_siiPi+0x3b8> @ imm = #-0x5414
   755e4: 2300         	movs	r3, #0x0
   755e6: e9c5 7727    	strd	r7, r7, [r5, #156]
   755ea: f8c5 3098    	str.w	r3, [r5, #0x98]
   755ee: f8c5 30a4    	str.w	r3, [r5, #0xa4]
   755f2: 6c23         	ldr	r3, [r4, #0x40]
   755f4: 3b11         	subs	r3, #0x11
   755f6: 2b01         	cmp	r3, #0x1
   755f8: d8a8         	bhi	0x7554c <_ZN9FCControl12SetParameterEP13FacItemNode_si+0x2c> @ imm = #-0xb0
   755fa: 9a01         	ldr	r2, [sp, #0x4]
   755fc: ab01         	add	r3, sp, #0x4
   755fe: 68a8         	ldr	r0, [r5, #0x8]
   75600: 4621         	mov	r1, r4
   75602: f7b8 ebac    	blx	0x2dd5c <_ZN19FCStorageBaseCommon29ConvertControlDataToStoreDataEP13FacItemNode_siPi@plt> @ imm = #-0x478a8
   75606: 4606         	mov	r6, r0
   75608: e7a1         	b	0x7554e <_ZN9FCControl12SetParameterEP13FacItemNode_si+0x2e> @ imm = #-0xbe
   7560a: 68db         	ldr	r3, [r3, #0xc]
   7560c: 2b00         	cmp	r3, #0x0
   7560e: d1bf         	bne	0x75590 <_ZN9FCControl12SetParameterEP13FacItemNode_si+0x70> @ imm = #-0x82
   75610: e7c5         	b	0x7559e <_ZN9FCControl12SetParameterEP13FacItemNode_si+0x7e> @ imm = #-0x76
   75612: 68db         	ldr	r3, [r3, #0xc]
   75614: e7d1         	b	0x755ba <_ZN9FCControl12SetParameterEP13FacItemNode_si+0x9a> @ imm = #-0x5e
   75616: f04f 30ff    	mov.w	r0, #0xffffffff
   7561a: e7a6         	b	0x7556a <_ZN9FCControl12SetParameterEP13FacItemNode_si+0x4a> @ imm = #-0xb4
   7561c: f7b7 ee8a    	blx	0x2d334 <__stack_chk_fail@plt> @ imm = #-0x482ec
