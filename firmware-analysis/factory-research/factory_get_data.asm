
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44f00704 <factory_get_data>:
44f00704: 4a15         	ldr	r2, [pc, #0x54]         @ 0x44f0075c <factory_get_data+0x58>
44f00706: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
44f0070a: 4607         	mov	r7, r0
44f0070c: 4b14         	ldr	r3, [pc, #0x50]         @ 0x44f00760 <factory_get_data+0x5c>
44f0070e: 447a         	add	r2, pc
44f00710: b092         	sub	sp, #0x48
44f00712: ad0a         	add	r5, sp, #0x28
44f00714: ae08         	add	r6, sp, #0x20
44f00716: 4630         	mov	r0, r6
44f00718: 4688         	mov	r8, r1
44f0071a: 58d3         	ldr	r3, [r2, r3]
44f0071c: 466c         	mov	r4, sp
44f0071e: 681b         	ldr	r3, [r3]
44f00720: 9311         	str	r3, [sp, #0x44]
44f00722: f04f 0300    	mov.w	r3, #0x0
44f00726: f7e3 eeea    	blx	0x44ee44fc <factory_initialize_source_info@plt> @ imm = #-0x1c22c
44f0072a: cd0f         	ldm	r5!, {r0, r1, r2, r3}
44f0072c: c40f         	stm	r4!, {r0, r1, r2, r3}
44f0072e: e895 0007    	ldm.w	r5, {r0, r1, r2}
44f00732: e884 0007    	stm.w	r4, {r0, r1, r2}
44f00736: 4641         	mov	r1, r8
44f00738: e896 000c    	ldm.w	r6, {r2, r3}
44f0073c: 4638         	mov	r0, r7
44f0073e: f7e4 e820    	blx	0x44ee4780 <factory_get_data_with_source_info@plt> @ imm = #-0x1bfc0
44f00742: 4a08         	ldr	r2, [pc, #0x20]         @ 0x44f00764 <factory_get_data+0x60>
44f00744: 4b06         	ldr	r3, [pc, #0x18]         @ 0x44f00760 <factory_get_data+0x5c>
44f00746: 447a         	add	r2, pc
44f00748: 58d3         	ldr	r3, [r2, r3]
44f0074a: 681a         	ldr	r2, [r3]
44f0074c: 9b11         	ldr	r3, [sp, #0x44]
44f0074e: 405a         	eors	r2, r3
44f00750: d102         	bne	0x44f00758 <factory_get_data+0x54> @ imm = #0x4
44f00752: b012         	add	sp, #0x48
44f00754: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
44f00758: f7e4 eb9c    	blx	0x44ee4e94 <__stack_chk_fail@plt> @ imm = #-0x1b8c8
44f0075c: eaa6 0001    	<unknown>
44f00760: 0704         	lsls	r4, r0, #0x1c
44f00762: 0000         	movs	r0, r0
44f00764: ea6e 0001    	orn	r0, lr, r1
44f00768: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x44f007d4 <factory_get_data+0xd0>
44f0076a: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x44f007d8 <factory_get_data+0xd4>
44f0076c: 447a         	add	r2, pc
44f0076e: b570         	push	{r4, r5, r6, lr}
44f00770: 1e05         	subs	r5, r0, #0x0
44f00772: b082         	sub	sp, #0x8
44f00774: 58d3         	ldr	r3, [r2, r3]
44f00776: 681b         	ldr	r3, [r3]
44f00778: 9301         	str	r3, [sp, #0x4]
44f0077a: f04f 0300    	mov.w	r3, #0x0
44f0077e: dd05         	ble	0x44f0078c <factory_get_data+0x88> @ imm = #0xa
44f00780: 460e         	mov	r6, r1
44f00782: f7e4 e95c    	blx	0x44ee4a3c <factory_set_parameter@plt> @ imm = #-0x1bd48
44f00786: 4604         	mov	r4, r0
44f00788: 2801         	cmp	r0, #0x1
44f0078a: d00a         	beq	0x44f007a2 <factory_get_data+0x9e> @ imm = #0x14
44f0078c: 2000         	movs	r0, #0x0
44f0078e: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x44f007dc <factory_get_data+0xd8>
44f00790: 4b11         	ldr	r3, [pc, #0x44]         @ 0x44f007d8 <factory_get_data+0xd4>
44f00792: 447a         	add	r2, pc
44f00794: 58d3         	ldr	r3, [r2, r3]
44f00796: 681a         	ldr	r2, [r3]
44f00798: 9b01         	ldr	r3, [sp, #0x4]
44f0079a: 405a         	eors	r2, r3
44f0079c: d117         	bne	0x44f007ce <factory_get_data+0xca> @ imm = #0x2e
44f0079e: b002         	add	sp, #0x8
44f007a0: bd70         	pop	{r4, r5, r6, pc}
44f007a2: 4669         	mov	r1, sp
44f007a4: 4628         	mov	r0, r5
44f007a6: f06f 4370    	mvn	r3, #0xf0000000
44f007aa: 9300         	str	r3, [sp]
44f007ac: f7e4 ec8e    	blx	0x44ee50cc <factory_get_data@plt> @ imm = #-0x1b6e4
44f007b0: 9b00         	ldr	r3, [sp]
44f007b2: 42b3         	cmp	r3, r6
44f007b4: bf08         	it	eq
44f007b6: 4620         	moveq	r0, r4
44f007b8: d0e9         	beq	0x44f0078e <factory_get_data+0x8a> @ imm = #-0x2e
44f007ba: 4631         	mov	r1, r6
44f007bc: 4628         	mov	r0, r5
44f007be: f7e4 e988    	blx	0x44ee4ad0 <factory_set_data@plt> @ imm = #-0x1bcf0
44f007c2: f1a0 0001    	sub.w	r0, r0, #0x1
44f007c6: fab0 f080    	clz	r0, r0
44f007ca: 0940         	lsrs	r0, r0, #0x5
44f007cc: e7df         	b	0x44f0078e <factory_get_data+0x8a> @ imm = #-0x42
44f007ce: f7e4 eb62    	blx	0x44ee4e94 <__stack_chk_fail@plt> @ imm = #-0x1b93c
44f007d2: bf00         	nop
44f007d4: ea48 0001    	orr.w	r0, r8, r1
44f007d8: 0704         	lsls	r4, r0, #0x1c
44f007da: 0000         	movs	r0, r0
44f007dc: ea22 0001    	bic.w	r0, r2, r1
