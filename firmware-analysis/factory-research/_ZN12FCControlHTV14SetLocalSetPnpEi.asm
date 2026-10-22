
/Users/hty/Documents/samsung_smart_monitor/firmware-analysis/CN-1651.1/rootfs/root/usr/bin/TIFSDaemon:	file format elf32-littlearm

Disassembly of section .text:

000363b4 <_ZN12FCControlHTV14SetLocalSetPnpEi>:
   363b4: b5f0         	push	{r4, r5, r6, r7, lr}
   363b6: f24e 0334    	movw	r3, #0xe034
   363ba: f2c0 0307    	movt	r3, #0x7
   363be: b0e3         	sub	sp, #0x18c
   363c0: 4605         	mov	r5, r0
   363c2: 460e         	mov	r6, r1
   363c4: 6880         	ldr	r0, [r0, #0x8]
   363c6: aa06         	add	r2, sp, #0x18
   363c8: 21c2         	movs	r1, #0xc2
   363ca: 681b         	ldr	r3, [r3]
   363cc: 9361         	str	r3, [sp, #0x184]
   363ce: f04f 0300    	mov.w	r3, #0x0
   363d2: f7f8 e824    	blx	0x2e41c <_ZN19FCStorageBaseCommon20GetFactoryUniqueItemEjP13FacItemNode_s@plt> @ imm = #-0x7fb8
   363d6: 1c43         	adds	r3, r0, #0x1
   363d8: d036         	beq	0x36448 <_ZN12FCControlHTV14SetLocalSetPnpEi+0x94> @ imm = #0x6c
   363da: 4630         	mov	r0, r6
   363dc: f7f7 e8a8    	blx	0x2d530 <fd_config_convert_pnp_localset_id@plt> @ imm = #-0x8eb0
   363e0: 682b         	ldr	r3, [r5]
   363e2: 4602         	mov	r2, r0
   363e4: a906         	add	r1, sp, #0x18
   363e6: 4628         	mov	r0, r5
   363e8: 4615         	mov	r5, r2
   363ea: 695b         	ldr	r3, [r3, #0x14]
   363ec: 4798         	blx	r3
   363ee: 4604         	mov	r4, r0
   363f0: f01d fe64    	bl	0x540bc <_ZN8FCObject23GetControlItemExecutionEv> @ imm = #0x1dcc8
   363f4: 6803         	ldr	r3, [r0]
   363f6: a906         	add	r1, sp, #0x18
   363f8: 462a         	mov	r2, r5
   363fa: 689b         	ldr	r3, [r3, #0x8]
   363fc: 4798         	blx	r3
   363fe: 491f         	ldr	r1, [pc, #0x7c]         @ 0x3647c <_ZN12FCControlHTV14SetLocalSetPnpEi+0xc8>
   36400: 4607         	mov	r7, r0
   36402: f44f 62d7    	mov.w	r2, #0x6b8
   36406: f64c 4388    	movw	r3, #0xcc88
   3640a: f2c0 0307    	movt	r3, #0x7
   3640e: 9100         	str	r1, [sp]
   36410: 2000         	movs	r0, #0x0
   36412: 9301         	str	r3, [sp, #0x4]
   36414: 2104         	movs	r1, #0x4
   36416: f64c 4398    	movw	r3, #0xcc98
   3641a: f2c0 0307    	movt	r3, #0x7
   3641e: 9202         	str	r2, [sp, #0x8]
   36420: f249 22ec    	movw	r2, #0x92ec
   36424: f2c0 0207    	movt	r2, #0x7
   36428: e9cd 6503    	strd	r6, r5, [sp, #12]
   3642c: 433c         	orrs	r4, r7
   3642e: f7f7 ec36    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x8794
   36432: f24e 0334    	movw	r3, #0xe034
   36436: f2c0 0307    	movt	r3, #0x7
   3643a: 681a         	ldr	r2, [r3]
   3643c: 9b61         	ldr	r3, [sp, #0x184]
   3643e: 405a         	eors	r2, r3
   36440: d11a         	bne	0x36478 <_ZN12FCControlHTV14SetLocalSetPnpEi+0xc4> @ imm = #0x34
   36442: 4620         	mov	r0, r4
   36444: b063         	add	sp, #0x18c
   36446: bdf0         	pop	{r4, r5, r6, r7, pc}
   36448: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x3647c <_ZN12FCControlHTV14SetLocalSetPnpEi+0xc8>
   3644a: 4604         	mov	r4, r0
   3644c: 2106         	movs	r1, #0x6
   3644e: f64c 4388    	movw	r3, #0xcc88
   36452: f2c0 0307    	movt	r3, #0x7
   36456: 2002         	movs	r0, #0x2
   36458: e9cd 2300    	strd	r2, r3, [sp]
   3645c: f44f 62d6    	mov.w	r2, #0x6b0
   36460: f64c 4364    	movw	r3, #0xcc64
   36464: f2c0 0307    	movt	r3, #0x7
   36468: 9202         	str	r2, [sp, #0x8]
   3646a: f249 22ec    	movw	r2, #0x92ec
   3646e: f2c0 0207    	movt	r2, #0x7
   36472: f7f7 ec14    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x87d8
   36476: e7dc         	b	0x36432 <_ZN12FCControlHTV14SetLocalSetPnpEi+0x7e> @ imm = #-0x48
   36478: f7f6 ef5c    	blx	0x2d334 <__stack_chk_fail@plt> @ imm = #-0x9148
   3647c: 9a81         	ldr	r2, [sp, #0x204]
   3647e: 0007         	movs	r7, r0
