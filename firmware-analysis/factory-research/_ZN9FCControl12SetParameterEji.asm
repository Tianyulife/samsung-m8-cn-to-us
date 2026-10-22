
firmware-analysis/CN-1651.1/rootfs/root/usr/bin/TIFSDaemon:	file format elf32-littlearm

Disassembly of section .text:

00075620 <_ZN9FCControl12SetParameterEji>:
   75620: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
   75624: f648 63ac    	movw	r3, #0x8eac
   75628: f2c0 0309    	movt	r3, #0x9
   7562c: f5ad 7d20    	sub.w	sp, sp, #0x280
   75630: 460d         	mov	r5, r1
   75632: 4604         	mov	r4, r0
   75634: 4616         	mov	r6, r2
   75636: 6880         	ldr	r0, [r0, #0x8]
   75638: aa44         	add	r2, sp, #0x110
   7563a: 681b         	ldr	r3, [r3]
   7563c: 939f         	str	r3, [sp, #0x27c]
   7563e: f04f 0300    	mov.w	r3, #0x0
   75642: f7b8 eeec    	blx	0x2e41c <_ZN19FCStorageBaseCommon20GetFactoryUniqueItemEjP13FacItemNode_s@plt> @ imm = #-0x47228
   75646: 2d12         	cmp	r5, #0x12
   75648: bf18         	it	ne
   7564a: 2dc2         	cmpne	r5, #0xc2
   7564c: bf08         	it	eq
   7564e: 2301         	moveq	r3, #0x1
   75650: bf18         	it	ne
   75652: 2300         	movne	r3, #0x0
   75654: 4698         	mov	r8, r3
   75656: 2800         	cmp	r0, #0x0
   75658: d14f         	bne	0x756fa <_ZN9FCControl12SetParameterEji+0xda> @ imm = #0x9e
   7565a: 4632         	mov	r2, r6
   7565c: a944         	add	r1, sp, #0x110
   7565e: 4620         	mov	r0, r4
   75660: f7ff ff5e    	bl	0x75520 <_ZN9FCControl12SetParameterEP13FacItemNode_si> @ imm = #-0x144
   75664: 4607         	mov	r7, r0
   75666: f1b8 0f00    	cmp.w	r8, #0x0
   7566a: d043         	beq	0x756f4 <_ZN9FCControl12SetParameterEji+0xd4> @ imm = #0x86
   7566c: ad04         	add	r5, sp, #0x10
   7566e: 2100         	movs	r1, #0x0
   75670: 22fc         	movs	r2, #0xfc
   75672: a805         	add	r0, sp, #0x14
   75674: 6029         	str	r1, [r5]
   75676: f7b8 e96e    	blx	0x2d954 <memset@plt>    @ imm = #-0x47d24
   7567a: f248 239c    	movw	r3, #0x829c
   7567e: f2c0 0309    	movt	r3, #0x9
   75682: 9954         	ldr	r1, [sp, #0x150]
   75684: 2f00         	cmp	r7, #0x0
   75686: d147         	bne	0x75718 <_ZN9FCControl12SetParameterEji+0xf8> @ imm = #0x8e
   75688: 4628         	mov	r0, r5
   7568a: 9302         	str	r3, [sp, #0x8]
   7568c: e9cd 1600    	strd	r1, r6, [sp]
   75690: ab57         	add	r3, sp, #0x15c
   75692: 2164         	movs	r1, #0x64
   75694: f248 42dc    	movw	r2, #0x84dc
   75698: f2c0 0209    	movt	r2, #0x9
   7569c: f7b8 ec80    	blx	0x2dfa0 <_ZN6FCUtil12StringNPrintEPciPKcz@plt> @ imm = #-0x47700
   756a0: 4a26         	ldr	r2, [pc, #0x98]         @ 0x7573c <_ZN9FCControl12SetParameterEji+0x11c>
   756a2: 2104         	movs	r1, #0x4
   756a4: 2000         	movs	r0, #0x0
   756a6: 9503         	str	r5, [sp, #0xc]
   756a8: f64b 4378    	movw	r3, #0xbc78
   756ac: f2c0 0308    	movt	r3, #0x8
   756b0: e9cd 2300    	strd	r2, r3, [sp]
   756b4: f44f 729c    	mov.w	r2, #0x138
   756b8: f64f 33d4    	movw	r3, #0xfbd4
   756bc: f2c0 0307    	movt	r3, #0x7
   756c0: 9202         	str	r2, [sp, #0x8]
   756c2: f249 22ec    	movw	r2, #0x92ec
   756c6: f2c0 0207    	movt	r2, #0x7
   756ca: f7b8 eae8    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x47a30
   756ce: 6823         	ldr	r3, [r4]
   756d0: 4629         	mov	r1, r5
   756d2: 4620         	mov	r0, r4
   756d4: 2203         	movs	r2, #0x3
   756d6: 689b         	ldr	r3, [r3, #0x8]
   756d8: 4798         	blx	r3
   756da: f648 63ac    	movw	r3, #0x8eac
   756de: f2c0 0309    	movt	r3, #0x9
   756e2: 681a         	ldr	r2, [r3]
   756e4: 9b9f         	ldr	r3, [sp, #0x27c]
   756e6: 405a         	eors	r2, r3
   756e8: d126         	bne	0x75738 <_ZN9FCControl12SetParameterEji+0x118> @ imm = #0x4c
   756ea: 4638         	mov	r0, r7
   756ec: f50d 7d20    	add.w	sp, sp, #0x280
   756f0: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
   756f4: 2d11         	cmp	r5, #0x11
   756f6: d1f0         	bne	0x756da <_ZN9FCControl12SetParameterEji+0xba> @ imm = #-0x20
   756f8: e7b8         	b	0x7566c <_ZN9FCControl12SetParameterEji+0x4c> @ imm = #-0x90
   756fa: b993         	cbnz	r3, 0x75722 <_ZN9FCControl12SetParameterEji+0x102> @ imm = #0x24
   756fc: f04f 37ff    	mov.w	r7, #0xffffffff
   75700: 2d11         	cmp	r5, #0x11
   75702: d1ea         	bne	0x756da <_ZN9FCControl12SetParameterEji+0xba> @ imm = #-0x2c
   75704: 4619         	mov	r1, r3
   75706: 22fc         	movs	r2, #0xfc
   75708: a805         	add	r0, sp, #0x14
   7570a: 9304         	str	r3, [sp, #0x10]
   7570c: f7b8 e922    	blx	0x2d954 <memset@plt>    @ imm = #-0x47dbc
   75710: 9954         	ldr	r1, [sp, #0x150]
   75712: ad04         	add	r5, sp, #0x10
   75714: f04f 37ff    	mov.w	r7, #0xffffffff
   75718: f242 63c8    	movw	r3, #0x26c8
   7571c: f2c0 0308    	movt	r3, #0x8
   75720: e7b2         	b	0x75688 <_ZN9FCControl12SetParameterEji+0x68> @ imm = #-0x9c
   75722: ad04         	add	r5, sp, #0x10
   75724: 2100         	movs	r1, #0x0
   75726: 22fc         	movs	r2, #0xfc
   75728: a805         	add	r0, sp, #0x14
   7572a: f04f 37ff    	mov.w	r7, #0xffffffff
   7572e: 6029         	str	r1, [r5]
   75730: f7b8 e910    	blx	0x2d954 <memset@plt>    @ imm = #-0x47de0
   75734: 9954         	ldr	r1, [sp, #0x150]
   75736: e7ef         	b	0x75718 <_ZN9FCControl12SetParameterEji+0xf8> @ imm = #-0x22
   75738: f7b7 edfc    	blx	0x2d334 <__stack_chk_fail@plt> @ imm = #-0x48408
   7573c: 5ce3         	ldrb	r3, [r4, r3]
   7573e: 0009         	movs	r1, r1
