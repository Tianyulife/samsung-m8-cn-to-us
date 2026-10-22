
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44efd76c <factory_get_model_str>:
44efd76c: 4a2b         	ldr	r2, [pc, #0xac]         @ 0x44efd81c <factory_get_model_str+0xb0>
44efd76e: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x44efd820 <factory_get_model_str+0xb4>
44efd770: b5f0         	push	{r4, r5, r6, r7, lr}
44efd772: 447a         	add	r2, pc
44efd774: 4604         	mov	r4, r0
44efd776: b08f         	sub	sp, #0x3c
44efd778: 460e         	mov	r6, r1
44efd77a: 58d3         	ldr	r3, [r2, r3]
44efd77c: ad09         	add	r5, sp, #0x24
44efd77e: 681b         	ldr	r3, [r3]
44efd780: 930d         	str	r3, [sp, #0x34]
44efd782: f04f 0300    	mov.w	r3, #0x0
44efd786: 2300         	movs	r3, #0x0
44efd788: e9cd 5307    	strd	r5, r3, [sp, #28]
44efd78c: f88d 3024    	strb.w	r3, [sp, #0x24]
44efd790: f7e8 e818    	blx	0x44ee57c4 <_ZN13FCStorageBase11GetInstanceEv@plt> @ imm = #-0x17fd0
44efd794: 2800         	cmp	r0, #0x0
44efd796: d031         	beq	0x44efd7fc <factory_get_model_str+0x90> @ imm = #0x62
44efd798: aa07         	add	r2, sp, #0x1c
44efd79a: 4621         	mov	r1, r4
44efd79c: f7e7 e9bc    	blx	0x44ee4b18 <_ZN19FCStorageBaseCommon11GetModelStrEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@plt> @ imm = #-0x18c88
44efd7a0: 9907         	ldr	r1, [sp, #0x1c]
44efd7a2: b180         	cbz	r0, 0x44efd7c6 <factory_get_model_str+0x5a> @ imm = #0x20
44efd7a4: 2400         	movs	r4, #0x0
44efd7a6: 42a9         	cmp	r1, r5
44efd7a8: d002         	beq	0x44efd7b0 <factory_get_model_str+0x44> @ imm = #0x4
44efd7aa: 4608         	mov	r0, r1
44efd7ac: f7e7 ea66    	blx	0x44ee4c7c <_ZdlPv@plt> @ imm = #-0x18b34
44efd7b0: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x44efd824 <factory_get_model_str+0xb8>
44efd7b2: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x44efd820 <factory_get_model_str+0xb4>
44efd7b4: 447a         	add	r2, pc
44efd7b6: 58d3         	ldr	r3, [r2, r3]
44efd7b8: 681a         	ldr	r2, [r3]
44efd7ba: 9b0d         	ldr	r3, [sp, #0x34]
44efd7bc: 405a         	eors	r2, r3
44efd7be: d120         	bne	0x44efd802 <factory_get_model_str+0x96> @ imm = #0x40
44efd7c0: 4620         	mov	r0, r4
44efd7c2: b00f         	add	sp, #0x3c
44efd7c4: bdf0         	pop	{r4, r5, r6, r7, pc}
44efd7c6: 2227         	movs	r2, #0x27
44efd7c8: 4630         	mov	r0, r6
44efd7ca: f7e7 eeec    	blx	0x44ee55a4 <strncpy@plt> @ imm = #-0x18228
44efd7ce: 4b16         	ldr	r3, [pc, #0x58]         @ 0x44efd828 <factory_get_model_str+0xbc>
44efd7d0: 4a16         	ldr	r2, [pc, #0x58]         @ 0x44efd82c <factory_get_model_str+0xc0>
44efd7d2: f44f 777b    	mov.w	r7, #0x3ec
44efd7d6: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/factory-api-0.0.01/factory_interface/src/factory_interface_app.cpp'
44efd7d8: 2103         	movs	r1, #0x3
44efd7da: 447a         	add	r2, pc ; STR 'factory_get_model_str'
44efd7dc: 3345         	adds	r3, #0x45
44efd7de: e9cd 2701    	strd	r2, r7, [sp, #4]
44efd7e2: 2002         	movs	r0, #0x2
44efd7e4: 4a12         	ldr	r2, [pc, #0x48]         @ 0x44efd830 <factory_get_model_str+0xc4>
44efd7e6: 9300         	str	r3, [sp]
44efd7e8: 4b12         	ldr	r3, [pc, #0x48]         @ 0x44efd834 <factory_get_model_str+0xc8>
44efd7ea: 447a         	add	r2, pc ; STR 'FACTORYAPI'
44efd7ec: 9604         	str	r6, [sp, #0x10]
44efd7ee: 447b         	add	r3, pc
44efd7f0: 9403         	str	r4, [sp, #0xc]
44efd7f2: f7e7 eaee    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x18a24
44efd7f6: 9907         	ldr	r1, [sp, #0x1c]
44efd7f8: 2401         	movs	r4, #0x1
44efd7fa: e7d4         	b	0x44efd7a6 <factory_get_model_str+0x3a> @ imm = #-0x58
44efd7fc: 9907         	ldr	r1, [sp, #0x1c]
44efd7fe: 4604         	mov	r4, r0
44efd800: e7d1         	b	0x44efd7a6 <factory_get_model_str+0x3a> @ imm = #-0x5e
44efd802: f7e7 eb48    	blx	0x44ee4e94 <__stack_chk_fail@plt> @ imm = #-0x18970
44efd806: 9b07         	ldr	r3, [sp, #0x1c]
44efd808: 4604         	mov	r4, r0
44efd80a: 42ab         	cmp	r3, r5
44efd80c: d002         	beq	0x44efd814 <factory_get_model_str+0xa8> @ imm = #0x4
44efd80e: 4618         	mov	r0, r3
44efd810: f7e7 ea34    	blx	0x44ee4c7c <_ZdlPv@plt> @ imm = #-0x18b98
44efd814: 4620         	mov	r0, r4
44efd816: f7e7 eed8    	blx	0x44ee55c8 <_Unwind_Resume@plt> @ imm = #-0x18250
44efd81a: bf00         	nop
44efd81c: 1a42         	subs	r2, r0, r1
44efd81e: 0002         	movs	r2, r0
44efd820: 0704         	lsls	r4, r0, #0x1c
44efd822: 0000         	movs	r0, r0
44efd824: 1a00         	subs	r0, r0, r0
44efd826: 0002         	movs	r2, r0
44efd828: 7332         	strb	r2, [r6, #0xc]
44efd82a: 0000         	movs	r0, r0
44efd82c: cf8e         	ldm	r7, {r1, r2, r3, r7}
44efd82e: 0000         	movs	r0, r0
44efd830: 6b2a         	ldr	r2, [r5, #0x30]
44efd832: 0000         	movs	r0, r0
44efd834: cf52         	ldm	r7!, {r1, r4, r6}
44efd836: 0000         	movs	r0, r0
