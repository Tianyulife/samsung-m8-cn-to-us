
firmware-analysis/US-1720.7/rootfs/root/usr/bin/fconfigd:	file format elf32-littlearm

Disassembly of section .text:

00005064 <get_model>:
    5064: b500         	push	{lr}
    5066: b085         	sub	sp, #0x14
    5068: f7fd e964    	blx	0x2334 <factory_get_model_enum@plt> @ imm = #-0x2d38
    506c: 2801         	cmp	r0, #0x1
    506e: bf08         	it	eq
    5070: 2000         	moveq	r0, #0x0
    5072: d102         	bne	0x507a <get_model+0x16> @ imm = #0x4
    5074: b005         	add	sp, #0x14
    5076: f85d fb04    	ldr	pc, [sp], #4
    507a: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x50a8 <get_model+0x44>
    507c: 2008         	movs	r0, #0x8
    507e: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x50ac <get_model+0x48>
    5080: 2106         	movs	r1, #0x6
    5082: 447b         	add	r3, pc ; STR 'clear_statement'
    5084: 447a         	add	r2, pc ; STR '/home/abuild/rpmbuild/BUILD/feature-config-daemon-1.0.0/src/product_config.c'
    5086: f503 730f    	add.w	r3, r3, #0x23c
    508a: 323c         	adds	r2, #0x3c
    508c: e9cd 3001    	strd	r3, r0, [sp, #4]
    5090: 9200         	str	r2, [sp]
    5092: 2000         	movs	r0, #0x0
    5094: 4b06         	ldr	r3, [pc, #0x18]         @ 0x50b0 <get_model+0x4c>
    5096: 4a07         	ldr	r2, [pc, #0x1c]         @ 0x50b4 <get_model+0x50>
    5098: 447b         	add	r3, pc ; STR '%s: %s(%d) > get model fail'
    509a: 447a         	add	r2, pc ; STR 'FCONFIG_DAEMON'
    509c: f7fd e95c    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x2d48
    50a0: f04f 30ff    	mov.w	r0, #0xffffffff
    50a4: e7e6         	b	0x5074 <get_model+0x10> @ imm = #-0x34
    50a6: bf00         	nop
    50a8: 50e6         	str	r6, [r4, r3]
    50aa: 0000         	movs	r0, r0
    50ac: 3c24         	subs	r4, #0x24
    50ae: 0000         	movs	r0, r0
    50b0: 3dc4         	subs	r5, #0xc4
    50b2: 0000         	movs	r0, r0
    50b4: 30d2         	adds	r0, #0xd2
    50b6: 0000         	movs	r0, r0
