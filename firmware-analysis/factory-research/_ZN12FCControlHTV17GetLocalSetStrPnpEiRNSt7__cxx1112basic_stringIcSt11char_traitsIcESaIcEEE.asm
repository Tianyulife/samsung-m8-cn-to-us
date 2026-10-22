
/Users/hty/Documents/samsung_smart_monitor/firmware-analysis/CN-1651.1/rootfs/root/usr/bin/TIFSDaemon:	file format elf32-littlearm

Disassembly of section .text:

00036f5c <_ZN12FCControlHTV17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>:
   36f5c: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
   36f60: f24e 033c    	movw	r3, #0xe03c
   36f64: f2c0 0307    	movt	r3, #0x7
   36f68: b0e5         	sub	sp, #0x194
   36f6a: 4606         	mov	r6, r0
   36f6c: 460f         	mov	r7, r1
   36f6e: 6880         	ldr	r0, [r0, #0x8]
   36f70: 4690         	mov	r8, r2
   36f72: 21c2         	movs	r1, #0xc2
   36f74: aa08         	add	r2, sp, #0x20
   36f76: 681b         	ldr	r3, [r3]
   36f78: 9363         	str	r3, [sp, #0x18c]
   36f7a: f04f 0300    	mov.w	r3, #0x0
   36f7e: f7f7 ea4e    	blx	0x2e41c <_ZN19FCStorageBaseCommon20GetFactoryUniqueItemEjP13FacItemNode_s@plt> @ imm = #-0x8b64
   36f82: 1c43         	adds	r3, r0, #0x1
   36f84: f000 80c4    	beq.w	0x37110 <_ZN12FCControlHTV17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x1b4> @ imm = #0x188
   36f88: 6833         	ldr	r3, [r6]
   36f8a: a908         	add	r1, sp, #0x20
   36f8c: 4630         	mov	r0, r6
   36f8e: f8df a1b4    	ldr.w	r10, [pc, #0x1b4]       @ 0x37144 <_ZN12FCControlHTV17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x1e8>
   36f92: f64d 091c    	movw	r9, #0xd81c
   36f96: f2c0 0907    	movt	r9, #0x7
   36f9a: 695b         	ldr	r3, [r3, #0x14]
   36f9c: 4798         	blx	r3
   36f9e: 9a10         	ldr	r2, [sp, #0x40]
   36fa0: 9911         	ldr	r1, [sp, #0x44]
   36fa2: 4604         	mov	r4, r0
   36fa4: 9204         	str	r2, [sp, #0x10]
   36fa6: f240 607a    	movw	r0, #0x67a
   36faa: 9103         	str	r1, [sp, #0xc]
   36fac: f64d 0330    	movw	r3, #0xd830
   36fb0: f2c0 0307    	movt	r3, #0x7
   36fb4: 9002         	str	r0, [sp, #0x8]
   36fb6: 2104         	movs	r1, #0x4
   36fb8: 2000         	movs	r0, #0x0
   36fba: f8cd 9004    	str.w	r9, [sp, #0x4]
   36fbe: f249 22ec    	movw	r2, #0x92ec
   36fc2: f2c0 0207    	movt	r2, #0x7
   36fc6: f8cd a000    	str.w	r10, [sp]
   36fca: f7f6 ee68    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x9330
   36fce: 2f00         	cmp	r7, #0x0
   36fd0: db02         	blt	0x36fd8 <_ZN12FCControlHTV17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x7c> @ imm = #0x4
   36fd2: 9b11         	ldr	r3, [sp, #0x44]
   36fd4: 42bb         	cmp	r3, r7
   36fd6: da2f         	bge	0x37038 <_ZN12FCControlHTV17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0xdc> @ imm = #0x5e
   36fd8: 2205         	movs	r2, #0x5
   36fda: 9200         	str	r2, [sp]
   36fdc: f249 33d4    	movw	r3, #0x93d4
   36fe0: f2c0 0307    	movt	r3, #0x7
   36fe4: f8d8 2004    	ldr.w	r2, [r8, #0x4]
   36fe8: 2100         	movs	r1, #0x0
   36fea: 4640         	mov	r0, r8
   36fec: f7f7 ea6c    	blx	0x2e4c8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj@plt> @ imm = #-0x8b28
   36ff0: f8d8 3000    	ldr.w	r3, [r8]
   36ff4: f240 61a4    	movw	r1, #0x6a4
   36ff8: 9304         	str	r3, [sp, #0x10]
   36ffa: f249 22ec    	movw	r2, #0x92ec
   36ffe: f2c0 0207    	movt	r2, #0x7
   37002: f64d 1300    	movw	r3, #0xd900
   37006: f2c0 0307    	movt	r3, #0x7
   3700a: 9102         	str	r1, [sp, #0x8]
   3700c: 2000         	movs	r0, #0x0
   3700e: 2104         	movs	r1, #0x4
   37010: 9703         	str	r7, [sp, #0xc]
   37012: f8cd 9004    	str.w	r9, [sp, #0x4]
   37016: f8cd a000    	str.w	r10, [sp]
   3701a: f7f6 ee40    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x9380
   3701e: f24e 033c    	movw	r3, #0xe03c
   37022: f2c0 0307    	movt	r3, #0x7
   37026: 681a         	ldr	r2, [r3]
   37028: 9b63         	ldr	r3, [sp, #0x18c]
   3702a: 405a         	eors	r2, r3
   3702c: f040 8088    	bne.w	0x37140 <_ZN12FCControlHTV17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x1e4> @ imm = #0x110
   37030: 4620         	mov	r0, r4
   37032: b065         	add	sp, #0x194
   37034: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
   37038: ab06         	add	r3, sp, #0x18
   3703a: 463a         	mov	r2, r7
   3703c: 21c2         	movs	r1, #0xc2
   3703e: 68b0         	ldr	r0, [r6, #0x8]
   37040: f04f 0b00    	mov.w	r11, #0x0
   37044: f8cd b018    	str.w	r11, [sp, #0x18]
   37048: f7f6 ea0a    	blx	0x2d460 <_ZN19FCStorageBaseCommon29ConvertStoreDataToControlDataEiiPi@plt> @ imm = #-0x9bec
   3704c: 9806         	ldr	r0, [sp, #0x18]
   3704e: f8cd b01c    	str.w	r11, [sp, #0x1c]
   37052: f7f6 eb32    	blx	0x2d6b8 <fd_config_pnp_localset_list@plt> @ imm = #-0x999c
   37056: 9b06         	ldr	r3, [sp, #0x18]
   37058: 4605         	mov	r5, r0
   3705a: f240 6284    	movw	r2, #0x684
   3705e: 9003         	str	r0, [sp, #0xc]
   37060: 9304         	str	r3, [sp, #0x10]
   37062: 4658         	mov	r0, r11
   37064: f64d 036c    	movw	r3, #0xd86c
   37068: f2c0 0307    	movt	r3, #0x7
   3706c: 9202         	str	r2, [sp, #0x8]
   3706e: 2104         	movs	r1, #0x4
   37070: f249 22ec    	movw	r2, #0x92ec
   37074: f2c0 0207    	movt	r2, #0x7
   37078: f8cd 9004    	str.w	r9, [sp, #0x4]
   3707c: f8cd a000    	str.w	r10, [sp]
   37080: f7f6 ee0c    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x93e8
   37084: b9fd         	cbnz	r5, 0x370c6 <_ZN12FCControlHTV17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x16a> @ imm = #0x3e
   37086: 2301         	movs	r3, #0x1
   37088: 9307         	str	r3, [sp, #0x1c]
   3708a: 9906         	ldr	r1, [sp, #0x18]
   3708c: f240 6095    	movw	r0, #0x695
   37090: 9304         	str	r3, [sp, #0x10]
   37092: f249 22ec    	movw	r2, #0x92ec
   37096: f2c0 0207    	movt	r2, #0x7
   3709a: e9cd 0102    	strd	r0, r1, [sp, #8]
   3709e: f64d 03cc    	movw	r3, #0xd8cc
   370a2: f2c0 0307    	movt	r3, #0x7
   370a6: 2104         	movs	r1, #0x4
   370a8: 2000         	movs	r0, #0x0
   370aa: e9cd a900    	strd	r10, r9, [sp]
   370ae: f7f6 edf6    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x9414
   370b2: 9b07         	ldr	r3, [sp, #0x1c]
   370b4: bb4b         	cbnz	r3, 0x3710a <_ZN12FCControlHTV17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x1ae> @ imm = #0x52
   370b6: f01c ff35    	bl	0x53f24 <_ZN8FCObject29GetControlStringForFactoryKeyEv> @ imm = #0x1ce6a
   370ba: 9a06         	ldr	r2, [sp, #0x18]
   370bc: 4643         	mov	r3, r8
   370be: a908         	add	r1, sp, #0x20
   370c0: f037 fdb4    	bl	0x6ec2c <_ZN21FCStringForFactoryKey28ConvertValueToStrSpecialItemEP13FacItemNode_siRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #0x37b68
   370c4: e794         	b	0x36ff0 <_ZN12FCControlHTV17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x94> @ imm = #-0xd8
   370c6: 9906         	ldr	r1, [sp, #0x18]
   370c8: 4630         	mov	r0, r6
   370ca: aa07         	add	r2, sp, #0x1c
   370cc: f039 f91a    	bl	0x70304 <_ZN9FCControl17CheckSkipLocalsetEiPi> @ imm = #0x39234
   370d0: 9b07         	ldr	r3, [sp, #0x1c]
   370d2: b92b         	cbnz	r3, 0x370e0 <_ZN12FCControlHTV17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x184> @ imm = #0xa
   370d4: 9806         	ldr	r0, [sp, #0x18]
   370d6: a907         	add	r1, sp, #0x1c
   370d8: f7f6 e864    	blx	0x2d1a4 <fd_config_check_unused_localset@plt> @ imm = #-0x9f38
   370dc: 9b07         	ldr	r3, [sp, #0x1c]
   370de: e7d4         	b	0x3708a <_ZN12FCControlHTV17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x12e> @ imm = #-0x58
   370e0: 9b06         	ldr	r3, [sp, #0x18]
   370e2: f240 628a    	movw	r2, #0x68a
   370e6: 9303         	str	r3, [sp, #0xc]
   370e8: 4658         	mov	r0, r11
   370ea: f64d 039c    	movw	r3, #0xd89c
   370ee: f2c0 0307    	movt	r3, #0x7
   370f2: 9202         	str	r2, [sp, #0x8]
   370f4: 2104         	movs	r1, #0x4
   370f6: f249 22ec    	movw	r2, #0x92ec
   370fa: f2c0 0207    	movt	r2, #0x7
   370fe: f8cd 9004    	str.w	r9, [sp, #0x4]
   37102: f8cd a000    	str.w	r10, [sp]
   37106: f7f6 edca    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x946c
   3710a: f04f 34ff    	mov.w	r4, #0xffffffff
   3710e: e786         	b	0x3701e <_ZN12FCControlHTV17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0xc2> @ imm = #-0xf4
   37110: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x37144 <_ZN12FCControlHTV17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x1e8>
   37112: 4604         	mov	r4, r0
   37114: 2106         	movs	r1, #0x6
   37116: f64d 031c    	movw	r3, #0xd81c
   3711a: f2c0 0307    	movt	r3, #0x7
   3711e: 2002         	movs	r0, #0x2
   37120: e9cd 2300    	strd	r2, r3, [sp]
   37124: f240 6275    	movw	r2, #0x675
   37128: f64c 4364    	movw	r3, #0xcc64
   3712c: f2c0 0307    	movt	r3, #0x7
   37130: 9202         	str	r2, [sp, #0x8]
   37132: f249 22ec    	movw	r2, #0x92ec
   37136: f2c0 0207    	movt	r2, #0x7
   3713a: f7f6 edb0    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x94a0
   3713e: e76e         	b	0x3701e <_ZN12FCControlHTV17GetLocalSetStrPnpEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0xc2> @ imm = #-0x124
   37140: f7f6 e8f8    	blx	0x2d334 <__stack_chk_fail@plt> @ imm = #-0x9e10
   37144: 9a81         	ldr	r2, [sp, #0x204]
   37146: 0007         	movs	r7, r0
