
/Users/hty/Documents/samsung_smart_monitor/firmware-analysis/CN-1651.1/rootfs/root/usr/bin/TIFSDaemon:	file format elf32-littlearm

Disassembly of section .text:

00075950 <_ZN9FCControl14GetLocalSetStrEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>:
   75950: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
   75954: f648 63c0    	movw	r3, #0x8ec0
   75958: f2c0 0309    	movt	r3, #0x9
   7595c: b0e7         	sub	sp, #0x19c
   7595e: 4604         	mov	r4, r0
   75960: 460f         	mov	r7, r1
   75962: 4690         	mov	r8, r2
   75964: 6880         	ldr	r0, [r0, #0x8]
   75966: 21c2         	movs	r1, #0xc2
   75968: aa0a         	add	r2, sp, #0x28
   7596a: 681b         	ldr	r3, [r3]
   7596c: 9365         	str	r3, [sp, #0x194]
   7596e: f04f 0300    	mov.w	r3, #0x0
   75972: 2500         	movs	r5, #0x0
   75974: 9506         	str	r5, [sp, #0x18]
   75976: f7b8 ed52    	blx	0x2e41c <_ZN19FCStorageBaseCommon20GetFactoryUniqueItemEjP13FacItemNode_s@plt> @ imm = #-0x4755c
   7597a: 2800         	cmp	r0, #0x0
   7597c: d15a         	bne	0x75a34 <_ZN9FCControl14GetLocalSetStrEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0xe4> @ imm = #0xb4
   7597e: 6823         	ldr	r3, [r4]
   75980: a90a         	add	r1, sp, #0x28
   75982: 4606         	mov	r6, r0
   75984: 4620         	mov	r0, r4
   75986: f8df a1c4    	ldr.w	r10, [pc, #0x1c4]       @ 0x75b4c <_ZN9FCControl14GetLocalSetStrEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x1fc>
   7598a: f64b 39a8    	movw	r9, #0xbba8
   7598e: f2c0 0908    	movt	r9, #0x8
   75992: 695b         	ldr	r3, [r3, #0x14]
   75994: 4798         	blx	r3
   75996: 9a12         	ldr	r2, [sp, #0x48]
   75998: 9913         	ldr	r1, [sp, #0x4c]
   7599a: 4605         	mov	r5, r0
   7599c: 9204         	str	r2, [sp, #0x10]
   7599e: f640 003a    	movw	r0, #0x83a
   759a2: 9103         	str	r1, [sp, #0xc]
   759a4: f64d 0330    	movw	r3, #0xd830
   759a8: f2c0 0307    	movt	r3, #0x7
   759ac: 9002         	str	r0, [sp, #0x8]
   759ae: 2103         	movs	r1, #0x3
   759b0: 2002         	movs	r0, #0x2
   759b2: f8cd 9004    	str.w	r9, [sp, #0x4]
   759b6: f249 22ec    	movw	r2, #0x92ec
   759ba: f2c0 0207    	movt	r2, #0x7
   759be: f8cd a000    	str.w	r10, [sp]
   759c2: f7b8 e96c    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x47d28
   759c6: 2f00         	cmp	r7, #0x0
   759c8: db02         	blt	0x759d0 <_ZN9FCControl14GetLocalSetStrEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x80> @ imm = #0x4
   759ca: 9b13         	ldr	r3, [sp, #0x4c]
   759cc: 42bb         	cmp	r3, r7
   759ce: da38         	bge	0x75a42 <_ZN9FCControl14GetLocalSetStrEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0xf2> @ imm = #0x70
   759d0: 2205         	movs	r2, #0x5
   759d2: 9200         	str	r2, [sp]
   759d4: f249 33d4    	movw	r3, #0x93d4
   759d8: f2c0 0307    	movt	r3, #0x7
   759dc: f8d8 2004    	ldr.w	r2, [r8, #0x4]
   759e0: 2100         	movs	r1, #0x0
   759e2: 4640         	mov	r0, r8
   759e4: f04f 35ff    	mov.w	r5, #0xffffffff
   759e8: f7b8 ed6e    	blx	0x2e4c8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj@plt> @ imm = #-0x47524
   759ec: f8d8 3000    	ldr.w	r3, [r8]
   759f0: f640 015a    	movw	r1, #0x85a
   759f4: 9304         	str	r3, [sp, #0x10]
   759f6: f249 22ec    	movw	r2, #0x92ec
   759fa: f2c0 0207    	movt	r2, #0x7
   759fe: f64d 1300    	movw	r3, #0xd900
   75a02: f2c0 0307    	movt	r3, #0x7
   75a06: 9102         	str	r1, [sp, #0x8]
   75a08: 2000         	movs	r0, #0x0
   75a0a: 2104         	movs	r1, #0x4
   75a0c: 9703         	str	r7, [sp, #0xc]
   75a0e: f8cd 9004    	str.w	r9, [sp, #0x4]
   75a12: f8cd a000    	str.w	r10, [sp]
   75a16: f7b8 e942    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x47d7c
   75a1a: f648 63c0    	movw	r3, #0x8ec0
   75a1e: f2c0 0309    	movt	r3, #0x9
   75a22: 681a         	ldr	r2, [r3]
   75a24: 9b65         	ldr	r3, [sp, #0x194]
   75a26: 405a         	eors	r2, r3
   75a28: f040 808e    	bne.w	0x75b48 <_ZN9FCControl14GetLocalSetStrEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x1f8> @ imm = #0x11c
   75a2c: 4628         	mov	r0, r5
   75a2e: b067         	add	sp, #0x19c
   75a30: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
   75a34: f64b 39a8    	movw	r9, #0xbba8
   75a38: f2c0 0908    	movt	r9, #0x8
   75a3c: f8df a10c    	ldr.w	r10, [pc, #0x10c]       @ 0x75b4c <_ZN9FCControl14GetLocalSetStrEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x1fc>
   75a40: e7d4         	b	0x759ec <_ZN9FCControl14GetLocalSetStrEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x9c> @ imm = #-0x58
   75a42: 463a         	mov	r2, r7
   75a44: ab07         	add	r3, sp, #0x1c
   75a46: 21c2         	movs	r1, #0xc2
   75a48: 68a0         	ldr	r0, [r4, #0x8]
   75a4a: 9607         	str	r6, [sp, #0x1c]
   75a4c: f7b7 ed08    	blx	0x2d460 <_ZN19FCStorageBaseCommon29ConvertStoreDataToControlDataEiiPi@plt> @ imm = #-0x485f0
   75a50: 9907         	ldr	r1, [sp, #0x1c]
   75a52: aa06         	add	r2, sp, #0x18
   75a54: 4620         	mov	r0, r4
   75a56: f7fa fc55    	bl	0x70304 <_ZN9FCControl17CheckSkipLocalsetEiPi> @ imm = #-0x5756
   75a5a: f8dd b018    	ldr.w	r11, [sp, #0x18]
   75a5e: f1bb 0f00    	cmp.w	r11, #0x0
   75a62: d165         	bne	0x75b30 <_ZN9FCControl14GetLocalSetStrEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x1e0> @ imm = #0xca
   75a64: 9807         	ldr	r0, [sp, #0x1c]
   75a66: a906         	add	r1, sp, #0x18
   75a68: f7b7 eb9c    	blx	0x2d1a4 <fd_config_check_unused_localset@plt> @ imm = #-0x488c8
   75a6c: 9b06         	ldr	r3, [sp, #0x18]
   75a6e: 2b00         	cmp	r3, #0x0
   75a70: d146         	bne	0x75b00 <_ZN9FCControl14GetLocalSetStrEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x1b0> @ imm = #0x8c
   75a72: f8d4 00a4    	ldr.w	r0, [r4, #0xa4]
   75a76: f640 014f    	movw	r1, #0x84f
   75a7a: 9704         	str	r7, [sp, #0x10]
   75a7c: f248 6300    	movw	r3, #0x8600
   75a80: f2c0 0309    	movt	r3, #0x9
   75a84: e9cd 1002    	strd	r1, r0, [sp, #8]
   75a88: e9cd a900    	strd	r10, r9, [sp]
   75a8c: 2103         	movs	r1, #0x3
   75a8e: 2002         	movs	r0, #0x2
   75a90: f249 22ec    	movw	r2, #0x92ec
   75a94: f2c0 0207    	movt	r2, #0x7
   75a98: f7b8 e900    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x47e00
   75a9c: 2018         	movs	r0, #0x18
   75a9e: f8d4 b0a4    	ldr.w	r11, [r4, #0xa4]
   75aa2: f7b7 ed70    	blx	0x2d584 <_Znwj@plt>     @ imm = #-0x48520
   75aa6: 4606         	mov	r6, r0
   75aa8: f104 0190    	add.w	r1, r4, #0x90
   75aac: f106 0210    	add.w	r2, r6, #0x10
   75ab0: a808         	add	r0, sp, #0x20
   75ab2: e9c6 b704    	strd	r11, r7, [r6, #16]
   75ab6: f7f9 fab3    	bl	0x6f020 <_ZN9FCControl36t_ItemRangeCheckForHotelOptionCommonEP13FacItemNode_siPi+0xa0> @ imm = #-0x6a9a
   75aba: 9a09         	ldr	r2, [sp, #0x24]
   75abc: b19a         	cbz	r2, 0x75ae6 <_ZN9FCControl14GetLocalSetStrEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x196> @ imm = #0x26
   75abe: 9908         	ldr	r1, [sp, #0x20]
   75ac0: f104 0394    	add.w	r3, r4, #0x94
   75ac4: b199         	cbz	r1, 0x75aee <_ZN9FCControl14GetLocalSetStrEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x19e> @ imm = #0x26
   75ac6: 2001         	movs	r0, #0x1
   75ac8: 4631         	mov	r1, r6
   75aca: f7b8 e870    	blx	0x2dbac <_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_@plt> @ imm = #-0x47f20
   75ace: f8d4 30a4    	ldr.w	r3, [r4, #0xa4]
   75ad2: 3301         	adds	r3, #0x1
   75ad4: f8c4 30a4    	str.w	r3, [r4, #0xa4]
   75ad8: 9a07         	ldr	r2, [sp, #0x1c]
   75ada: a90a         	add	r1, sp, #0x28
   75adc: 6fe0         	ldr	r0, [r4, #0x7c]
   75ade: 4643         	mov	r3, r8
   75ae0: f7f9 f8a4    	bl	0x6ec2c <_ZN21FCStringForFactoryKey28ConvertValueToStrSpecialItemEP13FacItemNode_siRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x6eb8
   75ae4: e782         	b	0x759ec <_ZN9FCControl14GetLocalSetStrEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x9c> @ imm = #-0xfc
   75ae6: 4630         	mov	r0, r6
   75ae8: f7b7 ed14    	blx	0x2d514 <_ZdlPv@plt>    @ imm = #-0x485d8
   75aec: e7f4         	b	0x75ad8 <_ZN9FCControl14GetLocalSetStrEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x188> @ imm = #-0x18
   75aee: 429a         	cmp	r2, r3
   75af0: d0e9         	beq	0x75ac6 <_ZN9FCControl14GetLocalSetStrEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x176> @ imm = #-0x2e
   75af2: 6910         	ldr	r0, [r2, #0x10]
   75af4: 4583         	cmp	r11, r0
   75af6: bfa8         	it	ge
   75af8: 2000         	movge	r0, #0x0
   75afa: bfb8         	it	lt
   75afc: 2001         	movlt	r0, #0x1
   75afe: e7e3         	b	0x75ac8 <_ZN9FCControl14GetLocalSetStrEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x178> @ imm = #-0x3a
   75b00: 9b07         	ldr	r3, [sp, #0x1c]
   75b02: 4658         	mov	r0, r11
   75b04: 9303         	str	r3, [sp, #0xc]
   75b06: f248 53cc    	movw	r3, #0x85cc
   75b0a: f2c0 0309    	movt	r3, #0x9
   75b0e: f640 024b    	movw	r2, #0x84b
   75b12: f8cd 9004    	str.w	r9, [sp, #0x4]
   75b16: 9202         	str	r2, [sp, #0x8]
   75b18: 2104         	movs	r1, #0x4
   75b1a: f8cd a000    	str.w	r10, [sp]
   75b1e: f249 22ec    	movw	r2, #0x92ec
   75b22: f2c0 0207    	movt	r2, #0x7
   75b26: f04f 35ff    	mov.w	r5, #0xffffffff
   75b2a: f7b8 e8b8    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x47e90
   75b2e: e774         	b	0x75a1a <_ZN9FCControl14GetLocalSetStrEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0xca> @ imm = #-0x118
   75b30: 9b07         	ldr	r3, [sp, #0x1c]
   75b32: 4630         	mov	r0, r6
   75b34: 9303         	str	r3, [sp, #0xc]
   75b36: f640 0244    	movw	r2, #0x844
   75b3a: f64d 039c    	movw	r3, #0xd89c
   75b3e: f2c0 0307    	movt	r3, #0x7
   75b42: f8cd 9004    	str.w	r9, [sp, #0x4]
   75b46: e7e6         	b	0x75b16 <_ZN9FCControl14GetLocalSetStrEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x1c6> @ imm = #-0x34
   75b48: f7b7 ebf4    	blx	0x2d334 <__stack_chk_fail@plt> @ imm = #-0x48818
   75b4c: 5ce3         	ldrb	r3, [r4, r3]
   75b4e: 0009         	movs	r1, r1
