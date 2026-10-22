
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44eff180 <factory_get_item_with_unique_id>:
44eff180: 4a14         	ldr	r2, [pc, #0x50]         @ 0x44eff1d4 <factory_get_item_with_unique_id+0x54>
44eff182: 4b15         	ldr	r3, [pc, #0x54]         @ 0x44eff1d8 <factory_get_item_with_unique_id+0x58>
44eff184: 447a         	add	r2, pc
44eff186: b570         	push	{r4, r5, r6, lr}
44eff188: 4604         	mov	r4, r0
44eff18a: b0dc         	sub	sp, #0x170
44eff18c: 460d         	mov	r5, r1
44eff18e: 58d3         	ldr	r3, [r2, r3]
44eff190: 466e         	mov	r6, sp
44eff192: 681b         	ldr	r3, [r3]
44eff194: 935b         	str	r3, [sp, #0x16c]
44eff196: f04f 0300    	mov.w	r3, #0x0
44eff19a: f7e6 eb14    	blx	0x44ee57c4 <_ZN13FCStorageBase11GetInstanceEv@plt> @ imm = #-0x199d8
44eff19e: 4621         	mov	r1, r4
44eff1a0: 4632         	mov	r2, r6
44eff1a2: 4604         	mov	r4, r0
44eff1a4: f7e5 eb1c    	blx	0x44ee47e0 <_ZN19FCStorageBaseCommon20GetFactoryUniqueItemEjP13FacItemNode_s@plt> @ imm = #-0x1a9c8
44eff1a8: b150         	cbz	r0, 0x44eff1c0 <factory_get_item_with_unique_id+0x40> @ imm = #0x14
44eff1aa: 2000         	movs	r0, #0x0
44eff1ac: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x44eff1dc <factory_get_item_with_unique_id+0x5c>
44eff1ae: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x44eff1d8 <factory_get_item_with_unique_id+0x58>
44eff1b0: 447a         	add	r2, pc
44eff1b2: 58d3         	ldr	r3, [r2, r3]
44eff1b4: 681a         	ldr	r2, [r3]
44eff1b6: 9b5b         	ldr	r3, [sp, #0x16c]
44eff1b8: 405a         	eors	r2, r3
44eff1ba: d109         	bne	0x44eff1d0 <factory_get_item_with_unique_id+0x50> @ imm = #0x12
44eff1bc: b05c         	add	sp, #0x170
44eff1be: bd70         	pop	{r4, r5, r6, pc}
44eff1c0: 4631         	mov	r1, r6
44eff1c2: 4620         	mov	r0, r4
44eff1c4: f7e5 ec64    	blx	0x44ee4a90 <_ZN19FCStorageBaseCommon8MakeTPIdEP13FacItemNode_s@plt> @ imm = #-0x1a738
44eff1c8: 4629         	mov	r1, r5
44eff1ca: f7e5 ecea    	blx	0x44ee4ba0 <factory_get_item@plt> @ imm = #-0x1a62c
44eff1ce: e7ed         	b	0x44eff1ac <factory_get_item_with_unique_id+0x2c> @ imm = #-0x26
44eff1d0: f7e5 ee60    	blx	0x44ee4e94 <__stack_chk_fail@plt> @ imm = #-0x1a340
44eff1d4: 0030         	movs	r0, r6
44eff1d6: 0002         	movs	r2, r0
44eff1d8: 0704         	lsls	r4, r0, #0x1c
44eff1da: 0000         	movs	r0, r0
44eff1dc: 0004         	movs	r4, r0
44eff1de: 0002         	movs	r2, r0
