
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44ef98a4 <factory_get_model_enum>:
44ef98a4: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x44ef9904 <factory_get_model_enum+0x60>
44ef98a6: 4b18         	ldr	r3, [pc, #0x60]         @ 0x44ef9908 <factory_get_model_enum+0x64>
44ef98a8: 447a         	add	r2, pc
44ef98aa: b570         	push	{r4, r5, r6, lr}
44ef98ac: 4605         	mov	r5, r0
44ef98ae: b084         	sub	sp, #0x10
44ef98b0: 2400         	movs	r4, #0x0
44ef98b2: 58d3         	ldr	r3, [r2, r3]
44ef98b4: 681b         	ldr	r3, [r3]
44ef98b6: 9303         	str	r3, [sp, #0xc]
44ef98b8: f04f 0300    	mov.w	r3, #0x0
44ef98bc: f7eb ef82    	blx	0x44ee57c4 <_ZN13FCStorageBase11GetInstanceEv@plt> @ imm = #-0x140fc
44ef98c0: aa02         	add	r2, sp, #0x8
44ef98c2: 2112         	movs	r1, #0x12
44ef98c4: 4606         	mov	r6, r0
44ef98c6: e9cd 4401    	strd	r4, r4, [sp, #4]
44ef98ca: f7eb edac    	blx	0x44ee5424 <_ZN19FCStorageBaseCommon12GetStoreDataEjPi@plt> @ imm = #-0x144a8
44ef98ce: b150         	cbz	r0, 0x44ef98e6 <factory_get_model_enum+0x42> @ imm = #0x14
44ef98d0: 4620         	mov	r0, r4
44ef98d2: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x44ef990c <factory_get_model_enum+0x68>
44ef98d4: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x44ef9908 <factory_get_model_enum+0x64>
44ef98d6: 447a         	add	r2, pc
44ef98d8: 58d3         	ldr	r3, [r2, r3]
44ef98da: 681a         	ldr	r2, [r3]
44ef98dc: 9b03         	ldr	r3, [sp, #0xc]
44ef98de: 405a         	eors	r2, r3
44ef98e0: d10d         	bne	0x44ef98fe <factory_get_model_enum+0x5a> @ imm = #0x1a
44ef98e2: b004         	add	sp, #0x10
44ef98e4: bd70         	pop	{r4, r5, r6, pc}
44ef98e6: ab01         	add	r3, sp, #0x4
44ef98e8: 9a02         	ldr	r2, [sp, #0x8]
44ef98ea: 4630         	mov	r0, r6
44ef98ec: 2112         	movs	r1, #0x12
44ef98ee: f7eb ec2a    	blx	0x44ee5144 <_ZN19FCStorageBaseCommon29ConvertStoreDataToControlDataEiiPi@plt> @ imm = #-0x147ac
44ef98f2: 9b01         	ldr	r3, [sp, #0x4]
44ef98f4: b103         	cbz	r3, 0x44ef98f8 <factory_get_model_enum+0x54> @ imm = #0x0
44ef98f6: 9b02         	ldr	r3, [sp, #0x8]
44ef98f8: 2001         	movs	r0, #0x1
44ef98fa: 602b         	str	r3, [r5]
44ef98fc: e7e9         	b	0x44ef98d2 <factory_get_model_enum+0x2e> @ imm = #-0x2e
44ef98fe: f7eb eaca    	blx	0x44ee4e94 <__stack_chk_fail@plt> @ imm = #-0x14a6c
44ef9902: bf00         	nop
44ef9904: 590c         	ldr	r4, [r1, r4]
44ef9906: 0002         	movs	r2, r0
44ef9908: 0704         	lsls	r4, r0, #0x1c
44ef990a: 0000         	movs	r0, r0
44ef990c: 58de         	ldr	r6, [r3, r3]
44ef990e: 0002         	movs	r2, r0
