
firmware-analysis/US-1720.7/rootfs/root/usr/apps/comss/bin/comss:	file format elf32-littlearm

Disassembly of section .text:

0001ac94 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO>:
   1ac94: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
   1ac98: 460c         	mov	r4, r1
   1ac9a: f8df 56e4    	ldr.w	r5, [pc, #0x6e4]        @ 0x1b380 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x6ec>
   1ac9e: f8df 36e4    	ldr.w	r3, [pc, #0x6e4]        @ 0x1b384 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x6f0>
   1aca2: b086         	sub	sp, #0x18
   1aca4: 447d         	add	r5, pc
   1aca6: 215a         	movs	r1, #0x5a
   1aca8: f104 027c    	add.w	r2, r4, #0x7c
   1acac: 58eb         	ldr	r3, [r5, r3]
   1acae: 4605         	mov	r5, r0
   1acb0: 681b         	ldr	r3, [r3]
   1acb2: 9305         	str	r3, [sp, #0x14]
   1acb4: f04f 0300    	mov.w	r3, #0x0
   1acb8: f7ff fd3a    	bl	0x1a730 <_ZN12ICSystemInfo19GetSystemInfoByTypeE17system_info_key_eRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x58c
   1acbc: 4606         	mov	r6, r0
   1acbe: 2800         	cmp	r0, #0x0
   1acc0: f040 81ee    	bne.w	0x1b0a0 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x40c> @ imm = #0x3dc
   1acc4: f8df 36c0    	ldr.w	r3, [pc, #0x6c0]        @ 0x1b388 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x6f4>
   1acc8: 2764         	movs	r7, #0x64
   1acca: f8df 26c0    	ldr.w	r2, [pc, #0x6c0]        @ 0x1b38c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x6f8>
   1acce: 2106         	movs	r1, #0x6
   1acd0: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1acd2: 9702         	str	r7, [sp, #0x8]
   1acd4: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1acd6: 3352         	adds	r3, #0x52
   1acd8: e9cd 3200    	strd	r3, r2, [sp]
   1acdc: f8df 36b0    	ldr.w	r3, [pc, #0x6b0]        @ 0x1b390 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x6fc>
   1ace0: f8df 26b0    	ldr.w	r2, [pc, #0x6b0]        @ 0x1b394 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x700>
   1ace4: 447b         	add	r3, pc
   1ace6: 447a         	add	r2, pc ; STR 'COMSS'
   1ace8: f7f2 eb3a    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xd98c
   1acec: f8df 16a8    	ldr.w	r1, [pc, #0x6a8]        @ 0x1b398 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x704>
   1acf0: f104 0234    	add.w	r2, r4, #0x34
   1acf4: 4628         	mov	r0, r5
   1acf6: 4479         	add	r1, pc ; STR 'com.samsung/featureconf/product.chipset'
   1acf8: f7ff ff4c    	bl	0x1ab94 <_ZN12ICSystemInfo25GetSystemInfoByCustomTypeEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x168
   1acfc: 4607         	mov	r7, r0
   1acfe: 2800         	cmp	r0, #0x0
   1ad00: f040 8309    	bne.w	0x1b316 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x682> @ imm = #0x612
   1ad04: f8df 3694    	ldr.w	r3, [pc, #0x694]        @ 0x1b39c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x708>
   1ad08: 266f         	movs	r6, #0x6f
   1ad0a: f8df 2694    	ldr.w	r2, [pc, #0x694]        @ 0x1b3a0 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x70c>
   1ad0e: 2106         	movs	r1, #0x6
   1ad10: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1ad12: 9602         	str	r6, [sp, #0x8]
   1ad14: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1ad16: 3352         	adds	r3, #0x52
   1ad18: e9cd 3200    	strd	r3, r2, [sp]
   1ad1c: f8df 3684    	ldr.w	r3, [pc, #0x684]        @ 0x1b3a4 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x710>
   1ad20: f8df 2684    	ldr.w	r2, [pc, #0x684]        @ 0x1b3a8 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x714>
   1ad24: 447b         	add	r3, pc
   1ad26: 447a         	add	r2, pc ; STR 'COMSS'
   1ad28: f7f2 eb1a    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xd9cc
   1ad2c: f104 024c    	add.w	r2, r4, #0x4c
   1ad30: 2100         	movs	r1, #0x0
   1ad32: 4628         	mov	r0, r5
   1ad34: f7ff fcfc    	bl	0x1a730 <_ZN12ICSystemInfo19GetSystemInfoByTypeE17system_info_key_eRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x608
   1ad38: 4606         	mov	r6, r0
   1ad3a: 2800         	cmp	r0, #0x0
   1ad3c: f040 82d6    	bne.w	0x1b2ec <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x658> @ imm = #0x5ac
   1ad40: f8df 3668    	ldr.w	r3, [pc, #0x668]        @ 0x1b3ac <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x718>
   1ad44: 277a         	movs	r7, #0x7a
   1ad46: f8df 2668    	ldr.w	r2, [pc, #0x668]        @ 0x1b3b0 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x71c>
   1ad4a: 2106         	movs	r1, #0x6
   1ad4c: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1ad4e: 9702         	str	r7, [sp, #0x8]
   1ad50: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1ad52: 3352         	adds	r3, #0x52
   1ad54: e9cd 3200    	strd	r3, r2, [sp]
   1ad58: f8df 3658    	ldr.w	r3, [pc, #0x658]        @ 0x1b3b4 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x720>
   1ad5c: f8df 2658    	ldr.w	r2, [pc, #0x658]        @ 0x1b3b8 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x724>
   1ad60: 447b         	add	r3, pc
   1ad62: 447a         	add	r2, pc ; STR 'COMSS'
   1ad64: f7f2 eafc    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xda08
   1ad68: f104 0264    	add.w	r2, r4, #0x64
   1ad6c: f44f 7192    	mov.w	r1, #0x124
   1ad70: 4628         	mov	r0, r5
   1ad72: f7ff fcdd    	bl	0x1a730 <_ZN12ICSystemInfo19GetSystemInfoByTypeE17system_info_key_eRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x646
   1ad76: 4607         	mov	r7, r0
   1ad78: 2800         	cmp	r0, #0x0
   1ad7a: f040 82a2    	bne.w	0x1b2c2 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x62e> @ imm = #0x544
   1ad7e: f8df 363c    	ldr.w	r3, [pc, #0x63c]        @ 0x1b3bc <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x728>
   1ad82: 2684         	movs	r6, #0x84
   1ad84: f8df 2638    	ldr.w	r2, [pc, #0x638]        @ 0x1b3c0 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x72c>
   1ad88: 2106         	movs	r1, #0x6
   1ad8a: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1ad8c: 9602         	str	r6, [sp, #0x8]
   1ad8e: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1ad90: 3352         	adds	r3, #0x52
   1ad92: e9cd 3200    	strd	r3, r2, [sp]
   1ad96: f8df 362c    	ldr.w	r3, [pc, #0x62c]        @ 0x1b3c4 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x730>
   1ad9a: f8df 262c    	ldr.w	r2, [pc, #0x62c]        @ 0x1b3c8 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x734>
   1ad9e: 447b         	add	r3, pc
   1ada0: 447a         	add	r2, pc ; STR 'COMSS'
   1ada2: f7f2 eade    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xda44
   1ada6: f104 021c    	add.w	r2, r4, #0x1c
   1adaa: f44f 710d    	mov.w	r1, #0x234
   1adae: 4628         	mov	r0, r5
   1adb0: f7ff fcbe    	bl	0x1a730 <_ZN12ICSystemInfo19GetSystemInfoByTypeE17system_info_key_eRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x684
   1adb4: 4606         	mov	r6, r0
   1adb6: 2800         	cmp	r0, #0x0
   1adb8: f040 826e    	bne.w	0x1b298 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x604> @ imm = #0x4dc
   1adbc: f8df 360c    	ldr.w	r3, [pc, #0x60c]        @ 0x1b3cc <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x738>
   1adc0: 278f         	movs	r7, #0x8f
   1adc2: f8df 260c    	ldr.w	r2, [pc, #0x60c]        @ 0x1b3d0 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x73c>
   1adc6: 2106         	movs	r1, #0x6
   1adc8: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1adca: 9702         	str	r7, [sp, #0x8]
   1adcc: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1adce: 3352         	adds	r3, #0x52
   1add0: e9cd 3200    	strd	r3, r2, [sp]
   1add4: f8df 35fc    	ldr.w	r3, [pc, #0x5fc]        @ 0x1b3d4 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x740>
   1add8: f8df 25fc    	ldr.w	r2, [pc, #0x5fc]        @ 0x1b3d8 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x744>
   1addc: 447b         	add	r3, pc
   1adde: 447a         	add	r2, pc ; STR 'COMSS'
   1ade0: f7f2 eabe    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xda84
   1ade4: f8df 15f4    	ldr.w	r1, [pc, #0x5f4]        @ 0x1b3dc <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x748>
   1ade8: 4622         	mov	r2, r4
   1adea: 4628         	mov	r0, r5
   1adec: 4479         	add	r1, pc ; STR 'com.samsung/featureconf/product_type_for_model_binding'
   1adee: f7ff fed1    	bl	0x1ab94 <_ZN12ICSystemInfo25GetSystemInfoByCustomTypeEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x25e
   1adf2: 4607         	mov	r7, r0
   1adf4: 2800         	cmp	r0, #0x0
   1adf6: f000 82a3    	beq.w	0x1b340 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x6ac> @ imm = #0x546
   1adfa: f8df 15e4    	ldr.w	r1, [pc, #0x5e4]        @ 0x1b3e0 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x74c>
   1adfe: f10d 0213    	add.w	r2, sp, #0x13
   1ae02: 4628         	mov	r0, r5
   1ae04: 2700         	movs	r7, #0x0
   1ae06: 4479         	add	r1, pc ; STR 'com.samsung/featureconf/iwb_support'
   1ae08: f88d 7013    	strb.w	r7, [sp, #0x13]
   1ae0c: f7ff fd56    	bl	0x1a8bc <_ZN12ICSystemInfo25GetSystemInfoByCustomTypeEPKcPb> @ imm = #-0x554
   1ae10: 2800         	cmp	r0, #0x0
   1ae12: f040 821b    	bne.w	0x1b24c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x5b8> @ imm = #0x436
   1ae16: f8df 35cc    	ldr.w	r3, [pc, #0x5cc]        @ 0x1b3e4 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x750>
   1ae1a: 27a3         	movs	r7, #0xa3
   1ae1c: f8df 25c8    	ldr.w	r2, [pc, #0x5c8]        @ 0x1b3e8 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x754>
   1ae20: 2106         	movs	r1, #0x6
   1ae22: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1ae24: 9702         	str	r7, [sp, #0x8]
   1ae26: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1ae28: 3352         	adds	r3, #0x52
   1ae2a: e9cd 3200    	strd	r3, r2, [sp]
   1ae2e: f8df 35bc    	ldr.w	r3, [pc, #0x5bc]        @ 0x1b3ec <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x758>
   1ae32: f8df 25bc    	ldr.w	r2, [pc, #0x5bc]        @ 0x1b3f0 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x75c>
   1ae36: 447b         	add	r3, pc
   1ae38: 447a         	add	r2, pc ; STR 'COMSS'
   1ae3a: f7f2 ea92    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xdadc
   1ae3e: f104 02dc    	add.w	r2, r4, #0xdc
   1ae42: 217f         	movs	r1, #0x7f
   1ae44: 4628         	mov	r0, r5
   1ae46: f7ff fbb7    	bl	0x1a5b8 <_ZN12ICSystemInfo19GetSystemInfoByTypeE17system_info_key_ePi> @ imm = #-0x892
   1ae4a: 4607         	mov	r7, r0
   1ae4c: 2800         	cmp	r0, #0x0
   1ae4e: f040 81e7    	bne.w	0x1b220 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x58c> @ imm = #0x3ce
   1ae52: f8df 35a0    	ldr.w	r3, [pc, #0x5a0]        @ 0x1b3f4 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x760>
   1ae56: 26b2         	movs	r6, #0xb2
   1ae58: f8df 259c    	ldr.w	r2, [pc, #0x59c]        @ 0x1b3f8 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x764>
   1ae5c: 2106         	movs	r1, #0x6
   1ae5e: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1ae60: 9602         	str	r6, [sp, #0x8]
   1ae62: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1ae64: 3352         	adds	r3, #0x52
   1ae66: e9cd 3200    	strd	r3, r2, [sp]
   1ae6a: f8df 3590    	ldr.w	r3, [pc, #0x590]        @ 0x1b3fc <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x768>
   1ae6e: f8df 2590    	ldr.w	r2, [pc, #0x590]        @ 0x1b400 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x76c>
   1ae72: 447b         	add	r3, pc
   1ae74: 447a         	add	r2, pc ; STR 'COMSS'
   1ae76: f7f2 ea74    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xdb18
   1ae7a: 2302         	movs	r3, #0x2
   1ae7c: f8c4 30dc    	str.w	r3, [r4, #0xdc]
   1ae80: f104 08ac    	add.w	r8, r4, #0xac
   1ae84: 2180         	movs	r1, #0x80
   1ae86: 4642         	mov	r2, r8
   1ae88: 4628         	mov	r0, r5
   1ae8a: f7ff fc51    	bl	0x1a730 <_ZN12ICSystemInfo19GetSystemInfoByTypeE17system_info_key_eRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x75e
   1ae8e: 4606         	mov	r6, r0
   1ae90: 2800         	cmp	r0, #0x0
   1ae92: f040 81b0    	bne.w	0x1b1f6 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x562> @ imm = #0x360
   1ae96: f8df 356c    	ldr.w	r3, [pc, #0x56c]        @ 0x1b404 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x770>
   1ae9a: f04f 0cbe    	mov.w	r12, #0xbe
   1ae9e: f8df 2568    	ldr.w	r2, [pc, #0x568]        @ 0x1b408 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x774>
   1aea2: 2106         	movs	r1, #0x6
   1aea4: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1aea6: f8cd c008    	str.w	r12, [sp, #0x8]
   1aeaa: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1aeac: 3352         	adds	r3, #0x52
   1aeae: e9cd 3200    	strd	r3, r2, [sp]
   1aeb2: f8df 3558    	ldr.w	r3, [pc, #0x558]        @ 0x1b40c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x778>
   1aeb6: f8df 2558    	ldr.w	r2, [pc, #0x558]        @ 0x1b410 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x77c>
   1aeba: 447b         	add	r3, pc
   1aebc: 447a         	add	r2, pc ; STR 'COMSS'
   1aebe: f7f2 ea50    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xdb60
   1aec2: 2210         	movs	r2, #0x10
   1aec4: f8df 354c    	ldr.w	r3, [pc, #0x54c]        @ 0x1b414 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x780>
   1aec8: 4631         	mov	r1, r6
   1aeca: 9200         	str	r2, [sp]
   1aecc: 4640         	mov	r0, r8
   1aece: 447b         	add	r3, pc ; STR 'T-FXPAKUC-0330.0'
   1aed0: f8d4 20b0    	ldr.w	r2, [r4, #0xb0]
   1aed4: f7f2 ed98    	blx	0xda08 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj@plt> @ imm = #-0xd4d0
   1aed8: f104 02e8    	add.w	r2, r4, #0xe8
   1aedc: 217e         	movs	r1, #0x7e
   1aede: 4628         	mov	r0, r5
   1aee0: f7ff fb6a    	bl	0x1a5b8 <_ZN12ICSystemInfo19GetSystemInfoByTypeE17system_info_key_ePi> @ imm = #-0x92c
   1aee4: 4606         	mov	r6, r0
   1aee6: 2800         	cmp	r0, #0x0
   1aee8: f040 816f    	bne.w	0x1b1ca <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x536> @ imm = #0x2de
   1aeec: f8df 3528    	ldr.w	r3, [pc, #0x528]        @ 0x1b418 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x784>
   1aef0: 27ca         	movs	r7, #0xca
   1aef2: f8df 2528    	ldr.w	r2, [pc, #0x528]        @ 0x1b41c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x788>
   1aef6: 2106         	movs	r1, #0x6
   1aef8: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1aefa: 9702         	str	r7, [sp, #0x8]
   1aefc: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1aefe: 3352         	adds	r3, #0x52
   1af00: e9cd 3200    	strd	r3, r2, [sp]
   1af04: f8df 3518    	ldr.w	r3, [pc, #0x518]        @ 0x1b420 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x78c>
   1af08: f8df 2518    	ldr.w	r2, [pc, #0x518]        @ 0x1b424 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x790>
   1af0c: 447b         	add	r3, pc
   1af0e: 447a         	add	r2, pc ; STR 'COMSS'
   1af10: f7f2 ea26    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xdbb4
   1af14: f8c4 60e8    	str.w	r6, [r4, #0xe8]
   1af18: f8df 150c    	ldr.w	r1, [pc, #0x50c]        @ 0x1b428 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x794>
   1af1c: f104 02ec    	add.w	r2, r4, #0xec
   1af20: 4628         	mov	r0, r5
   1af22: 4479         	add	r1, pc ; STR 'com.samsung/featureconf/screen_height'
   1af24: f7ff fd12    	bl	0x1a94c <_ZN12ICSystemInfo25GetSystemInfoByCustomTypeEPKcPi> @ imm = #-0x5dc
   1af28: 4607         	mov	r7, r0
   1af2a: 2800         	cmp	r0, #0x0
   1af2c: f040 8137    	bne.w	0x1b19e <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x50a> @ imm = #0x26e
   1af30: f8df 34f8    	ldr.w	r3, [pc, #0x4f8]        @ 0x1b42c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x798>
   1af34: 26d6         	movs	r6, #0xd6
   1af36: f8df 24f8    	ldr.w	r2, [pc, #0x4f8]        @ 0x1b430 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x79c>
   1af3a: 2106         	movs	r1, #0x6
   1af3c: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1af3e: 9602         	str	r6, [sp, #0x8]
   1af40: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1af42: 3352         	adds	r3, #0x52
   1af44: e9cd 3200    	strd	r3, r2, [sp]
   1af48: f8df 34e8    	ldr.w	r3, [pc, #0x4e8]        @ 0x1b434 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7a0>
   1af4c: f8df 24e8    	ldr.w	r2, [pc, #0x4e8]        @ 0x1b438 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7a4>
   1af50: 447b         	add	r3, pc
   1af52: 447a         	add	r2, pc ; STR 'COMSS'
   1af54: f7f2 ea04    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xdbf8
   1af58: f8df 14e0    	ldr.w	r1, [pc, #0x4e0]        @ 0x1b43c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7a8>
   1af5c: f104 02f0    	add.w	r2, r4, #0xf0
   1af60: 4628         	mov	r0, r5
   1af62: 4479         	add	r1, pc ; STR 'com.samsung/featureconf/screen_width'
   1af64: f7ff fcf2    	bl	0x1a94c <_ZN12ICSystemInfo25GetSystemInfoByCustomTypeEPKcPi> @ imm = #-0x61c
   1af68: 2800         	cmp	r0, #0x0
   1af6a: f040 8103    	bne.w	0x1b174 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x4e0> @ imm = #0x206
   1af6e: f8df 34d0    	ldr.w	r3, [pc, #0x4d0]        @ 0x1b440 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7ac>
   1af72: 26e1         	movs	r6, #0xe1
   1af74: f8df 24cc    	ldr.w	r2, [pc, #0x4cc]        @ 0x1b444 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7b0>
   1af78: 2106         	movs	r1, #0x6
   1af7a: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1af7c: 9602         	str	r6, [sp, #0x8]
   1af7e: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1af80: 3352         	adds	r3, #0x52
   1af82: e9cd 3200    	strd	r3, r2, [sp]
   1af86: f8df 34c0    	ldr.w	r3, [pc, #0x4c0]        @ 0x1b448 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7b4>
   1af8a: f8df 24c0    	ldr.w	r2, [pc, #0x4c0]        @ 0x1b44c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7b8>
   1af8e: 447b         	add	r3, pc
   1af90: 447a         	add	r2, pc ; STR 'COMSS'
   1af92: f7f2 e9e6    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xdc34
   1af96: f8df 14b8    	ldr.w	r1, [pc, #0x4b8]        @ 0x1b450 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7bc>
   1af9a: f104 02f4    	add.w	r2, r4, #0xf4
   1af9e: 4628         	mov	r0, r5
   1afa0: 4479         	add	r1, pc ; STR 'com.samsung/featureconf/network.network_support'
   1afa2: f7ff fcd3    	bl	0x1a94c <_ZN12ICSystemInfo25GetSystemInfoByCustomTypeEPKcPi> @ imm = #-0x65a
   1afa6: 2800         	cmp	r0, #0x0
   1afa8: f040 80cf    	bne.w	0x1b14a <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x4b6> @ imm = #0x19e
   1afac: f8df 34a4    	ldr.w	r3, [pc, #0x4a4]        @ 0x1b454 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7c0>
   1afb0: 26eb         	movs	r6, #0xeb
   1afb2: f8df 24a4    	ldr.w	r2, [pc, #0x4a4]        @ 0x1b458 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7c4>
   1afb6: 2106         	movs	r1, #0x6
   1afb8: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1afba: 9602         	str	r6, [sp, #0x8]
   1afbc: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1afbe: 3352         	adds	r3, #0x52
   1afc0: e9cd 3200    	strd	r3, r2, [sp]
   1afc4: f8df 3494    	ldr.w	r3, [pc, #0x494]        @ 0x1b45c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7c8>
   1afc8: f8df 2494    	ldr.w	r2, [pc, #0x494]        @ 0x1b460 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7cc>
   1afcc: 447b         	add	r3, pc
   1afce: 447a         	add	r2, pc ; STR 'COMSS'
   1afd0: f7f2 e9c6    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xdc74
   1afd4: f104 02f8    	add.w	r2, r4, #0xf8
   1afd8: 4628         	mov	r0, r5
   1afda: f649 4182    	movw	r1, #0x9c82
   1afde: f7ff faa3    	bl	0x1a528 <_ZN12ICSystemInfo19GetSystemInfoByTypeE17system_info_key_ePb> @ imm = #-0xaba
   1afe2: 2800         	cmp	r0, #0x0
   1afe4: f040 809c    	bne.w	0x1b120 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x48c> @ imm = #0x138
   1afe8: f8df 3478    	ldr.w	r3, [pc, #0x478]        @ 0x1b464 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7d0>
   1afec: 26f4         	movs	r6, #0xf4
   1afee: f8df 2478    	ldr.w	r2, [pc, #0x478]        @ 0x1b468 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7d4>
   1aff2: 2106         	movs	r1, #0x6
   1aff4: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1aff6: 9602         	str	r6, [sp, #0x8]
   1aff8: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1affa: 3352         	adds	r3, #0x52
   1affc: e9cd 3200    	strd	r3, r2, [sp]
   1b000: f8df 3468    	ldr.w	r3, [pc, #0x468]        @ 0x1b46c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7d8>
   1b004: f8df 2468    	ldr.w	r2, [pc, #0x468]        @ 0x1b470 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7dc>
   1b008: 447b         	add	r3, pc
   1b00a: 447a         	add	r2, pc ; STR 'COMSS'
   1b00c: f7f2 e9a8    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xdcb0
   1b010: f104 02f9    	add.w	r2, r4, #0xf9
   1b014: 4628         	mov	r0, r5
   1b016: f649 416f    	movw	r1, #0x9c6f
   1b01a: f7ff fa85    	bl	0x1a528 <_ZN12ICSystemInfo19GetSystemInfoByTypeE17system_info_key_ePb> @ imm = #-0xaf6
   1b01e: 2800         	cmp	r0, #0x0
   1b020: d168         	bne	0x1b0f4 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x460> @ imm = #0xd0
   1b022: f8df 3450    	ldr.w	r3, [pc, #0x450]        @ 0x1b474 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7e0>
   1b026: 26fd         	movs	r6, #0xfd
   1b028: f8df 244c    	ldr.w	r2, [pc, #0x44c]        @ 0x1b478 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7e4>
   1b02c: 2106         	movs	r1, #0x6
   1b02e: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1b030: 9602         	str	r6, [sp, #0x8]
   1b032: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1b034: 3352         	adds	r3, #0x52
   1b036: e9cd 3200    	strd	r3, r2, [sp]
   1b03a: f8df 3440    	ldr.w	r3, [pc, #0x440]        @ 0x1b47c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7e8>
   1b03e: f8df 2440    	ldr.w	r2, [pc, #0x440]        @ 0x1b480 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7ec>
   1b042: 447b         	add	r3, pc
   1b044: 447a         	add	r2, pc ; STR 'COMSS'
   1b046: f7f2 e98c    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xdce8
   1b04a: 4628         	mov	r0, r5
   1b04c: f104 02fc    	add.w	r2, r4, #0xfc
   1b050: 21bb         	movs	r1, #0xbb
   1b052: f7ff fb6d    	bl	0x1a730 <_ZN12ICSystemInfo19GetSystemInfoByTypeE17system_info_key_eRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x926
   1b056: 2800         	cmp	r0, #0x0
   1b058: d136         	bne	0x1b0c8 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x434> @ imm = #0x6c
   1b05a: f8df 3428    	ldr.w	r3, [pc, #0x428]        @ 0x1b484 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7f0>
   1b05e: f44f 7483    	mov.w	r4, #0x106
   1b062: f8df 2424    	ldr.w	r2, [pc, #0x424]        @ 0x1b488 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7f4>
   1b066: 2106         	movs	r1, #0x6
   1b068: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1b06a: 9402         	str	r4, [sp, #0x8]
   1b06c: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1b06e: 3352         	adds	r3, #0x52
   1b070: e9cd 3200    	strd	r3, r2, [sp]
   1b074: f8df 3414    	ldr.w	r3, [pc, #0x414]        @ 0x1b48c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7f8>
   1b078: f8df 2414    	ldr.w	r2, [pc, #0x414]        @ 0x1b490 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x7fc>
   1b07c: 447b         	add	r3, pc
   1b07e: 447a         	add	r2, pc ; STR 'COMSS'
   1b080: f7f2 e96e    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xdd24
   1b084: f8df 240c    	ldr.w	r2, [pc, #0x40c]        @ 0x1b494 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x800>
   1b088: 4bbe         	ldr	r3, [pc, #0x2f8]        @ 0x1b384 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x6f0>
   1b08a: 447a         	add	r2, pc
   1b08c: 58d3         	ldr	r3, [r2, r3]
   1b08e: 681a         	ldr	r2, [r3]
   1b090: 9b05         	ldr	r3, [sp, #0x14]
   1b092: 405a         	eors	r2, r3
   1b094: f040 8171    	bne.w	0x1b37a <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x6e6> @ imm = #0x2e2
   1b098: 4638         	mov	r0, r7
   1b09a: b006         	add	sp, #0x18
   1b09c: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
   1b0a0: 4bfd         	ldr	r3, [pc, #0x3f4]        @ 0x1b498 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x804>
   1b0a2: 2269         	movs	r2, #0x69
   1b0a4: 4ffd         	ldr	r7, [pc, #0x3f4]        @ 0x1b49c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x808>
   1b0a6: 2105         	movs	r1, #0x5
   1b0a8: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1b0aa: 6fe0         	ldr	r0, [r4, #0x7c]
   1b0ac: 447f         	add	r7, pc ; STR 'GetSystemInfo'
   1b0ae: 3352         	adds	r3, #0x52
   1b0b0: 9202         	str	r2, [sp, #0x8]
   1b0b2: e9cd 3700    	strd	r3, r7, [sp]
   1b0b6: 4afa         	ldr	r2, [pc, #0x3e8]        @ 0x1b4a0 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x80c>
   1b0b8: 4bfa         	ldr	r3, [pc, #0x3e8]        @ 0x1b4a4 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x810>
   1b0ba: 9003         	str	r0, [sp, #0xc]
   1b0bc: 447a         	add	r2, pc ; STR 'COMSS'
   1b0be: 447b         	add	r3, pc
   1b0c0: 2000         	movs	r0, #0x0
   1b0c2: f7f2 e94e    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xdd64
   1b0c6: e611         	b	0x1acec <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x58> @ imm = #-0x3de
   1b0c8: 4bf7         	ldr	r3, [pc, #0x3dc]        @ 0x1b4a8 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x814>
   1b0ca: f44f 7585    	mov.w	r5, #0x10a
   1b0ce: 4af7         	ldr	r2, [pc, #0x3dc]        @ 0x1b4ac <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x818>
   1b0d0: 2105         	movs	r1, #0x5
   1b0d2: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1b0d4: f8d4 00fc    	ldr.w	r0, [r4, #0xfc]
   1b0d8: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1b0da: 3352         	adds	r3, #0x52
   1b0dc: e9cd 3200    	strd	r3, r2, [sp]
   1b0e0: 4bf3         	ldr	r3, [pc, #0x3cc]        @ 0x1b4b0 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x81c>
   1b0e2: 4af4         	ldr	r2, [pc, #0x3d0]        @ 0x1b4b4 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x820>
   1b0e4: 9003         	str	r0, [sp, #0xc]
   1b0e6: 447b         	add	r3, pc
   1b0e8: 447a         	add	r2, pc ; STR 'COMSS'
   1b0ea: 9502         	str	r5, [sp, #0x8]
   1b0ec: 2000         	movs	r0, #0x0
   1b0ee: f7f2 e938    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xdd90
   1b0f2: e7c7         	b	0x1b084 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x3f0> @ imm = #-0x72
   1b0f4: 4bf0         	ldr	r3, [pc, #0x3c0]        @ 0x1b4b8 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x824>
   1b0f6: f240 1601    	movw	r6, #0x101
   1b0fa: 4af0         	ldr	r2, [pc, #0x3c0]        @ 0x1b4bc <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x828>
   1b0fc: 2105         	movs	r1, #0x5
   1b0fe: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1b100: f894 00f9    	ldrb.w	r0, [r4, #0xf9]
   1b104: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1b106: 3352         	adds	r3, #0x52
   1b108: e9cd 3200    	strd	r3, r2, [sp]
   1b10c: 4bec         	ldr	r3, [pc, #0x3b0]        @ 0x1b4c0 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x82c>
   1b10e: 4aed         	ldr	r2, [pc, #0x3b4]        @ 0x1b4c4 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x830>
   1b110: 9003         	str	r0, [sp, #0xc]
   1b112: 447b         	add	r3, pc
   1b114: 447a         	add	r2, pc ; STR 'COMSS'
   1b116: 9602         	str	r6, [sp, #0x8]
   1b118: 2000         	movs	r0, #0x0
   1b11a: f7f2 e922    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xddbc
   1b11e: e794         	b	0x1b04a <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x3b6> @ imm = #-0xd8
   1b120: 4be9         	ldr	r3, [pc, #0x3a4]        @ 0x1b4c8 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x834>
   1b122: 26f8         	movs	r6, #0xf8
   1b124: 4ae9         	ldr	r2, [pc, #0x3a4]        @ 0x1b4cc <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x838>
   1b126: 2105         	movs	r1, #0x5
   1b128: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1b12a: f894 00f8    	ldrb.w	r0, [r4, #0xf8]
   1b12e: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1b130: 3352         	adds	r3, #0x52
   1b132: e9cd 3200    	strd	r3, r2, [sp]
   1b136: 4be6         	ldr	r3, [pc, #0x398]        @ 0x1b4d0 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x83c>
   1b138: 4ae6         	ldr	r2, [pc, #0x398]        @ 0x1b4d4 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x840>
   1b13a: 9003         	str	r0, [sp, #0xc]
   1b13c: 447b         	add	r3, pc
   1b13e: 447a         	add	r2, pc ; STR 'COMSS'
   1b140: 9602         	str	r6, [sp, #0x8]
   1b142: 2000         	movs	r0, #0x0
   1b144: f7f2 e90c    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xdde8
   1b148: e762         	b	0x1b010 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x37c> @ imm = #-0x13c
   1b14a: 4be3         	ldr	r3, [pc, #0x38c]        @ 0x1b4d8 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x844>
   1b14c: 22ef         	movs	r2, #0xef
   1b14e: 4ee3         	ldr	r6, [pc, #0x38c]        @ 0x1b4dc <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x848>
   1b150: 2105         	movs	r1, #0x5
   1b152: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1b154: f8d4 00f4    	ldr.w	r0, [r4, #0xf4]
   1b158: 447e         	add	r6, pc ; STR 'GetSystemInfo'
   1b15a: 3352         	adds	r3, #0x52
   1b15c: 9202         	str	r2, [sp, #0x8]
   1b15e: e9cd 3600    	strd	r3, r6, [sp]
   1b162: 4adf         	ldr	r2, [pc, #0x37c]        @ 0x1b4e0 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x84c>
   1b164: 4bdf         	ldr	r3, [pc, #0x37c]        @ 0x1b4e4 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x850>
   1b166: 9003         	str	r0, [sp, #0xc]
   1b168: 447a         	add	r2, pc ; STR 'COMSS'
   1b16a: 447b         	add	r3, pc
   1b16c: 2000         	movs	r0, #0x0
   1b16e: f7f2 e8f8    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xde10
   1b172: e72f         	b	0x1afd4 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x340> @ imm = #-0x1a2
   1b174: 4bdc         	ldr	r3, [pc, #0x370]        @ 0x1b4e8 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x854>
   1b176: 22e5         	movs	r2, #0xe5
   1b178: 4edc         	ldr	r6, [pc, #0x370]        @ 0x1b4ec <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x858>
   1b17a: 2105         	movs	r1, #0x5
   1b17c: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1b17e: f8d4 00f0    	ldr.w	r0, [r4, #0xf0]
   1b182: 447e         	add	r6, pc ; STR 'GetSystemInfo'
   1b184: 3352         	adds	r3, #0x52
   1b186: 9202         	str	r2, [sp, #0x8]
   1b188: e9cd 3600    	strd	r3, r6, [sp]
   1b18c: 4ad8         	ldr	r2, [pc, #0x360]        @ 0x1b4f0 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x85c>
   1b18e: 4bd9         	ldr	r3, [pc, #0x364]        @ 0x1b4f4 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x860>
   1b190: 9003         	str	r0, [sp, #0xc]
   1b192: 447a         	add	r2, pc ; STR 'COMSS'
   1b194: 447b         	add	r3, pc
   1b196: 2000         	movs	r0, #0x0
   1b198: f7f2 e8e2    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xde3c
   1b19c: e6fb         	b	0x1af96 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x302> @ imm = #-0x20a
   1b19e: 4bd6         	ldr	r3, [pc, #0x358]        @ 0x1b4f8 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x864>
   1b1a0: 4637         	mov	r7, r6
   1b1a2: 4ad6         	ldr	r2, [pc, #0x358]        @ 0x1b4fc <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x868>
   1b1a4: 26db         	movs	r6, #0xdb
   1b1a6: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1b1a8: f8d4 10ec    	ldr.w	r1, [r4, #0xec]
   1b1ac: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1b1ae: 3352         	adds	r3, #0x52
   1b1b0: e9cd 2601    	strd	r2, r6, [sp, #4]
   1b1b4: 2000         	movs	r0, #0x0
   1b1b6: 9300         	str	r3, [sp]
   1b1b8: 4ad1         	ldr	r2, [pc, #0x344]        @ 0x1b500 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x86c>
   1b1ba: 4bd2         	ldr	r3, [pc, #0x348]        @ 0x1b504 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x870>
   1b1bc: 9103         	str	r1, [sp, #0xc]
   1b1be: 447a         	add	r2, pc ; STR 'COMSS'
   1b1c0: 2105         	movs	r1, #0x5
   1b1c2: 447b         	add	r3, pc
   1b1c4: f7f2 e8cc    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xde68
   1b1c8: e6c6         	b	0x1af58 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x2c4> @ imm = #-0x274
   1b1ca: 4bcf         	ldr	r3, [pc, #0x33c]        @ 0x1b508 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x874>
   1b1cc: 463e         	mov	r6, r7
   1b1ce: 4acf         	ldr	r2, [pc, #0x33c]        @ 0x1b50c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x878>
   1b1d0: 27d0         	movs	r7, #0xd0
   1b1d2: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1b1d4: f8d4 10e8    	ldr.w	r1, [r4, #0xe8]
   1b1d8: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1b1da: 3352         	adds	r3, #0x52
   1b1dc: e9cd 2701    	strd	r2, r7, [sp, #4]
   1b1e0: 2000         	movs	r0, #0x0
   1b1e2: 9300         	str	r3, [sp]
   1b1e4: 4aca         	ldr	r2, [pc, #0x328]        @ 0x1b510 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x87c>
   1b1e6: 4bcb         	ldr	r3, [pc, #0x32c]        @ 0x1b514 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x880>
   1b1e8: 9103         	str	r1, [sp, #0xc]
   1b1ea: 447a         	add	r2, pc ; STR 'COMSS'
   1b1ec: 2105         	movs	r1, #0x5
   1b1ee: 447b         	add	r3, pc
   1b1f0: f7f2 e8b6    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xde94
   1b1f4: e690         	b	0x1af18 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x284> @ imm = #-0x2e0
   1b1f6: 4bc8         	ldr	r3, [pc, #0x320]        @ 0x1b518 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x884>
   1b1f8: 22c3         	movs	r2, #0xc3
   1b1fa: 4ec8         	ldr	r6, [pc, #0x320]        @ 0x1b51c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x888>
   1b1fc: 2105         	movs	r1, #0x5
   1b1fe: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1b200: f8d4 00ac    	ldr.w	r0, [r4, #0xac]
   1b204: 447e         	add	r6, pc ; STR 'GetSystemInfo'
   1b206: 3352         	adds	r3, #0x52
   1b208: 9202         	str	r2, [sp, #0x8]
   1b20a: e9cd 3600    	strd	r3, r6, [sp]
   1b20e: 4ac4         	ldr	r2, [pc, #0x310]        @ 0x1b520 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x88c>
   1b210: 4bc4         	ldr	r3, [pc, #0x310]        @ 0x1b524 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x890>
   1b212: 9003         	str	r0, [sp, #0xc]
   1b214: 447a         	add	r2, pc ; STR 'COMSS'
   1b216: 447b         	add	r3, pc
   1b218: 2000         	movs	r0, #0x0
   1b21a: f7f2 e8a2    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xdebc
   1b21e: e65b         	b	0x1aed8 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x244> @ imm = #-0x34a
   1b220: 4bc1         	ldr	r3, [pc, #0x304]        @ 0x1b528 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x894>
   1b222: 4637         	mov	r7, r6
   1b224: 4ac1         	ldr	r2, [pc, #0x304]        @ 0x1b52c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x898>
   1b226: 26b8         	movs	r6, #0xb8
   1b228: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1b22a: f8d4 10dc    	ldr.w	r1, [r4, #0xdc]
   1b22e: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1b230: 3352         	adds	r3, #0x52
   1b232: e9cd 2601    	strd	r2, r6, [sp, #4]
   1b236: 2000         	movs	r0, #0x0
   1b238: 9300         	str	r3, [sp]
   1b23a: 4abd         	ldr	r2, [pc, #0x2f4]        @ 0x1b530 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x89c>
   1b23c: 4bbd         	ldr	r3, [pc, #0x2f4]        @ 0x1b534 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8a0>
   1b23e: 9103         	str	r1, [sp, #0xc]
   1b240: 447a         	add	r2, pc ; STR 'COMSS'
   1b242: 2105         	movs	r1, #0x5
   1b244: 447b         	add	r3, pc
   1b246: f7f2 e88c    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xdee8
   1b24a: e619         	b	0x1ae80 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x1ec> @ imm = #-0x3ce
   1b24c: 4bba         	ldr	r3, [pc, #0x2e8]        @ 0x1b538 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8a4>
   1b24e: f04f 0ca7    	mov.w	r12, #0xa7
   1b252: 4aba         	ldr	r2, [pc, #0x2e8]        @ 0x1b53c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8a8>
   1b254: 2105         	movs	r1, #0x5
   1b256: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1b258: f89d 0013    	ldrb.w	r0, [sp, #0x13]
   1b25c: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1b25e: 3352         	adds	r3, #0x52
   1b260: e9cd 3200    	strd	r3, r2, [sp]
   1b264: 4bb6         	ldr	r3, [pc, #0x2d8]        @ 0x1b540 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8ac>
   1b266: 4ab7         	ldr	r2, [pc, #0x2dc]        @ 0x1b544 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8b0>
   1b268: 447b         	add	r3, pc
   1b26a: 9003         	str	r0, [sp, #0xc]
   1b26c: 447a         	add	r2, pc ; STR 'COMSS'
   1b26e: 4638         	mov	r0, r7
   1b270: f8cd c008    	str.w	r12, [sp, #0x8]
   1b274: f7f2 e874    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xdf18
   1b278: f89d 3013    	ldrb.w	r3, [sp, #0x13]
   1b27c: 2b00         	cmp	r3, #0x0
   1b27e: f43f adde    	beq.w	0x1ae3e <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x1aa> @ imm = #-0x444
   1b282: 2203         	movs	r2, #0x3
   1b284: 61a7         	str	r7, [r4, #0x18]
   1b286: 4bb0         	ldr	r3, [pc, #0x2c0]        @ 0x1b548 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8b4>
   1b288: 4639         	mov	r1, r7
   1b28a: 9200         	str	r2, [sp]
   1b28c: 4620         	mov	r0, r4
   1b28e: 447b         	add	r3, pc ; STR 'IWB'
   1b290: 6862         	ldr	r2, [r4, #0x4]
   1b292: f7f2 ebba    	blx	0xda08 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj@plt> @ imm = #-0xd88c
   1b296: e5d2         	b	0x1ae3e <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x1aa> @ imm = #-0x45c
   1b298: 4bac         	ldr	r3, [pc, #0x2b0]        @ 0x1b54c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8b8>
   1b29a: 463e         	mov	r6, r7
   1b29c: 4aac         	ldr	r2, [pc, #0x2b0]        @ 0x1b550 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8bc>
   1b29e: 2794         	movs	r7, #0x94
   1b2a0: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1b2a2: 69e1         	ldr	r1, [r4, #0x1c]
   1b2a4: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1b2a6: 3352         	adds	r3, #0x52
   1b2a8: e9cd 2701    	strd	r2, r7, [sp, #4]
   1b2ac: 2000         	movs	r0, #0x0
   1b2ae: 9300         	str	r3, [sp]
   1b2b0: 4aa8         	ldr	r2, [pc, #0x2a0]        @ 0x1b554 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8c0>
   1b2b2: 4ba9         	ldr	r3, [pc, #0x2a4]        @ 0x1b558 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8c4>
   1b2b4: 9103         	str	r1, [sp, #0xc]
   1b2b6: 447a         	add	r2, pc ; STR 'COMSS'
   1b2b8: 2105         	movs	r1, #0x5
   1b2ba: 447b         	add	r3, pc
   1b2bc: f7f2 e850    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xdf60
   1b2c0: e590         	b	0x1ade4 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x150> @ imm = #-0x4e0
   1b2c2: 4ba6         	ldr	r3, [pc, #0x298]        @ 0x1b55c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8c8>
   1b2c4: 4637         	mov	r7, r6
   1b2c6: 4aa6         	ldr	r2, [pc, #0x298]        @ 0x1b560 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8cc>
   1b2c8: 2689         	movs	r6, #0x89
   1b2ca: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1b2cc: 6e61         	ldr	r1, [r4, #0x64]
   1b2ce: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1b2d0: 3352         	adds	r3, #0x52
   1b2d2: e9cd 2601    	strd	r2, r6, [sp, #4]
   1b2d6: 2000         	movs	r0, #0x0
   1b2d8: 9300         	str	r3, [sp]
   1b2da: 4aa2         	ldr	r2, [pc, #0x288]        @ 0x1b564 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8d0>
   1b2dc: 4ba2         	ldr	r3, [pc, #0x288]        @ 0x1b568 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8d4>
   1b2de: 9103         	str	r1, [sp, #0xc]
   1b2e0: 447a         	add	r2, pc ; STR 'COMSS'
   1b2e2: 2105         	movs	r1, #0x5
   1b2e4: 447b         	add	r3, pc
   1b2e6: f7f2 e83c    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xdf88
   1b2ea: e55c         	b	0x1ada6 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x112> @ imm = #-0x548
   1b2ec: 4b9f         	ldr	r3, [pc, #0x27c]        @ 0x1b56c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8d8>
   1b2ee: 463e         	mov	r6, r7
   1b2f0: 4a9f         	ldr	r2, [pc, #0x27c]        @ 0x1b570 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8dc>
   1b2f2: 277f         	movs	r7, #0x7f
   1b2f4: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1b2f6: 6ce1         	ldr	r1, [r4, #0x4c]
   1b2f8: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1b2fa: 3352         	adds	r3, #0x52
   1b2fc: e9cd 2701    	strd	r2, r7, [sp, #4]
   1b300: 2000         	movs	r0, #0x0
   1b302: 9300         	str	r3, [sp]
   1b304: 4a9b         	ldr	r2, [pc, #0x26c]        @ 0x1b574 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8e0>
   1b306: 4b9c         	ldr	r3, [pc, #0x270]        @ 0x1b578 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8e4>
   1b308: 9103         	str	r1, [sp, #0xc]
   1b30a: 447a         	add	r2, pc ; STR 'COMSS'
   1b30c: 2105         	movs	r1, #0x5
   1b30e: 447b         	add	r3, pc
   1b310: f7f2 e826    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xdfb4
   1b314: e528         	b	0x1ad68 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0xd4> @ imm = #-0x5b0
   1b316: 4b99         	ldr	r3, [pc, #0x264]        @ 0x1b57c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8e8>
   1b318: 4637         	mov	r7, r6
   1b31a: 4a99         	ldr	r2, [pc, #0x264]        @ 0x1b580 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8ec>
   1b31c: 2674         	movs	r6, #0x74
   1b31e: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1b320: 6b61         	ldr	r1, [r4, #0x34]
   1b322: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1b324: 3352         	adds	r3, #0x52
   1b326: e9cd 2601    	strd	r2, r6, [sp, #4]
   1b32a: 2000         	movs	r0, #0x0
   1b32c: 9300         	str	r3, [sp]
   1b32e: 4a95         	ldr	r2, [pc, #0x254]        @ 0x1b584 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8f0>
   1b330: 4b95         	ldr	r3, [pc, #0x254]        @ 0x1b588 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8f4>
   1b332: 9103         	str	r1, [sp, #0xc]
   1b334: 447a         	add	r2, pc ; STR 'COMSS'
   1b336: 2105         	movs	r1, #0x5
   1b338: 447b         	add	r3, pc
   1b33a: f7f2 e812    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xdfdc
   1b33e: e4f5         	b	0x1ad2c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x98> @ imm = #-0x616
   1b340: 4b92         	ldr	r3, [pc, #0x248]        @ 0x1b58c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8f8>
   1b342: f04f 0c9a    	mov.w	r12, #0x9a
   1b346: 4a92         	ldr	r2, [pc, #0x248]        @ 0x1b590 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x8fc>
   1b348: 2106         	movs	r1, #0x6
   1b34a: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/InterfaceAdapter/src/ICSystemInfo.cpp'
   1b34c: f8cd c008    	str.w	r12, [sp, #0x8]
   1b350: 447a         	add	r2, pc ; STR 'GetSystemInfo'
   1b352: 3352         	adds	r3, #0x52
   1b354: e9cd 3200    	strd	r3, r2, [sp]
   1b358: 4606         	mov	r6, r0
   1b35a: 4b8e         	ldr	r3, [pc, #0x238]        @ 0x1b594 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x900>
   1b35c: 4a8e         	ldr	r2, [pc, #0x238]        @ 0x1b598 <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x904>
   1b35e: 447b         	add	r3, pc
   1b360: 447a         	add	r2, pc ; STR 'COMSS'
   1b362: f7f1 effe    	blx	0xd360 <__dlog_print@plt> @ imm = #-0xe004
   1b366: 2202         	movs	r2, #0x2
   1b368: 4b8c         	ldr	r3, [pc, #0x230]        @ 0x1b59c <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x908>
   1b36a: 4639         	mov	r1, r7
   1b36c: 9200         	str	r2, [sp]
   1b36e: 4620         	mov	r0, r4
   1b370: 447b         	add	r3, pc ; STR 'TV'
   1b372: 6862         	ldr	r2, [r4, #0x4]
   1b374: f7f2 eb48    	blx	0xda08 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj@plt> @ imm = #-0xd970
   1b378: e53f         	b	0x1adfa <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x166> @ imm = #-0x582
   1b37a: f7f2 e890    	blx	0xd49c <__stack_chk_fail@plt> @ imm = #-0xdee0
   1b37e: bf00         	nop
   1b380: e358         	b	0x1ba34 <_ZN9ICNetWork11GetWiredMACEPvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x3b8> @ imm = #0x6b0
   1b382: 0003         	movs	r3, r0
   1b384: 03fc         	lsls	r4, r7, #0xf
   1b386: 0000         	movs	r0, r0
   1b388: f994 0001    	ldrsb.w	r0, [r4, #0x1]
   1b38c: 093c         	lsrs	r4, r7, #0x4
   1b38e: 0002         	movs	r2, r0
   1b390: 08d8         	lsrs	r0, r3, #0x3
   1b392: 0002         	movs	r2, r0
   1b394: b11a         	cbz	r2, 0x1b39e <_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO+0x70a> @ imm = #0x6
   1b396: 0001         	movs	r1, r0
   1b398: 097e         	lsrs	r6, r7, #0x5
   1b39a: 0002         	movs	r2, r0
   1b39c: f954 0001    	<unknown>
   1b3a0: 08fc         	lsrs	r4, r7, #0x3
   1b3a2: 0002         	movs	r2, r0
   1b3a4: 0978         	lsrs	r0, r7, #0x5
   1b3a6: 0002         	movs	r2, r0
   1b3a8: b0da         	sub	sp, #0x168
   1b3aa: 0001         	movs	r1, r0
   1b3ac: f918 0001    	ldrsb.w	r0, [r8, r1]
   1b3b0: 08c0         	lsrs	r0, r0, #0x3
   1b3b2: 0002         	movs	r2, r0
   1b3b4: 09d4         	lsrs	r4, r2, #0x7
   1b3b6: 0002         	movs	r2, r0
   1b3b8: b09e         	sub	sp, #0x78
   1b3ba: 0001         	movs	r1, r0
   1b3bc: f8da 0001    	ldr.w	r0, [r10, #0x1]
   1b3c0: 0882         	lsrs	r2, r0, #0x2
   1b3c2: 0002         	movs	r2, r0
   1b3c4: 0a36         	lsrs	r6, r6, #0x8
   1b3c6: 0002         	movs	r2, r0
   1b3c8: b060         	add	sp, #0x180
   1b3ca: 0001         	movs	r1, r0
   1b3cc: f89c 0001    	ldrb.w	r0, [r12, #0x1]
   1b3d0: 0844         	lsrs	r4, r0, #0x1
   1b3d2: 0002         	movs	r2, r0
   1b3d4: 0ab0         	lsrs	r0, r6, #0xa
   1b3d6: 0002         	movs	r2, r0
   1b3d8: b022         	add	sp, #0x88
   1b3da: 0001         	movs	r1, r0
   1b3dc: 0b50         	lsrs	r0, r2, #0xd
   1b3de: 0002         	movs	r2, r0
   1b3e0: 0bce         	lsrs	r6, r1, #0xf
   1b3e2: 0002         	movs	r2, r0
   1b3e4: f842 0001    	str.w	r0, [r2, r1]
   1b3e8: 07ea         	lsls	r2, r5, #0x1f
   1b3ea: 0002         	movs	r2, r0
   1b3ec: 0bc2         	lsrs	r2, r0, #0xf
   1b3ee: 0002         	movs	r2, r0
   1b3f0: afc8         	add	r7, sp, #0x320
   1b3f2: 0001         	movs	r1, r0
   1b3f4: f806 0001    	strb.w	r0, [r6, r1]
   1b3f8: 07ae         	lsls	r6, r5, #0x1e
   1b3fa: 0002         	movs	r2, r0
   1b3fc: 0c1a         	lsrs	r2, r3, #0x10
   1b3fe: 0002         	movs	r2, r0
   1b400: af8c         	add	r7, sp, #0x230
   1b402: 0001         	movs	r1, r0
   1b404: f7c0 0001    	ubfx	r0, r0, #0x0, #0x2
   1b408: 0766         	lsls	r6, r4, #0x1d
   1b40a: 0002         	movs	r2, r0
   1b40c: 0c7e         	lsrs	r6, r7, #0x11
   1b40e: 0002         	movs	r2, r0
   1b410: af44         	add	r7, sp, #0x110
   1b412: 0001         	movs	r1, r0
   1b414: 0cbe         	lsrs	r6, r7, #0x12
   1b416: 0002         	movs	r2, r0
   1b418: f76c 0001    	<unknown>
   1b41c: 0714         	lsls	r4, r2, #0x1c
   1b41e: 0002         	movs	r2, r0
   1b420: 0cd8         	lsrs	r0, r3, #0x13
   1b422: 0002         	movs	r2, r0
   1b424: aef2         	add	r6, sp, #0x3c8
   1b426: 0001         	movs	r1, r0
   1b428: 0d6e         	lsrs	r6, r5, #0x15
   1b42a: 0002         	movs	r2, r0
   1b42c: f728 0001    	<unknown>
   1b430: 06d0         	lsls	r0, r2, #0x1b
   1b432: 0002         	movs	r2, r0
   1b434: 0d68         	lsrs	r0, r5, #0x15
   1b436: 0002         	movs	r2, r0
   1b438: aeae         	add	r6, sp, #0x2b8
   1b43a: 0001         	movs	r1, r0
   1b43c: 0dea         	lsrs	r2, r5, #0x17
   1b43e: 0002         	movs	r2, r0
   1b440: f6ea 0001    	<unknown>
   1b444: 0692         	lsls	r2, r2, #0x1a
   1b446: 0002         	movs	r2, r0
   1b448: 0de6         	lsrs	r6, r4, #0x17
   1b44a: 0002         	movs	r2, r0
   1b44c: ae70         	add	r6, sp, #0x1c0
   1b44e: 0001         	movs	r1, r0
   1b450: 0e64         	lsrs	r4, r4, #0x19
   1b452: 0002         	movs	r2, r0
   1b454: f6ac 0001    	subw	r0, r12, #0x801
   1b458: 0654         	lsls	r4, r2, #0x19
   1b45a: 0002         	movs	r2, r0
   1b45c: 0e68         	lsrs	r0, r5, #0x19
   1b45e: 0002         	movs	r2, r0
   1b460: ae32         	add	r6, sp, #0xc8
   1b462: 0001         	movs	r1, r0
   1b464: f670 0001    	<unknown>
   1b468: 0618         	lsls	r0, r3, #0x18
   1b46a: 0002         	movs	r2, r0
   1b46c: 0ec8         	lsrs	r0, r1, #0x1b
   1b46e: 0002         	movs	r2, r0
   1b470: adf6         	add	r5, sp, #0x3d8
   1b472: 0001         	movs	r1, r0
   1b474: f636 0001    	<unknown>
   1b478: 05de         	lsls	r6, r3, #0x17
   1b47a: 0002         	movs	r2, r0
   1b47c: 0f4e         	lsrs	r6, r1, #0x1d
   1b47e: 0002         	movs	r2, r0
   1b480: adbc         	add	r5, sp, #0x2f0
   1b482: 0001         	movs	r1, r0
   1b484: f5fc 0001    	<unknown>
   1b488: 05a4         	lsls	r4, r4, #0x16
   1b48a: 0002         	movs	r2, r0
   1b48c: 0fc4         	lsrs	r4, r0, #0x1f
   1b48e: 0002         	movs	r2, r0
   1b490: ad82         	add	r5, sp, #0x208
   1b492: 0001         	movs	r1, r0
   1b494: df72         	svc	#0x72
   1b496: 0003         	movs	r3, r0
   1b498: f5bc 0001    	subs.w	r0, r12, #0x810000
   1b49c: 0564         	lsls	r4, r4, #0x15
   1b49e: 0002         	movs	r2, r0
   1b4a0: ad44         	add	r5, sp, #0x110
   1b4a2: 0001         	movs	r1, r0
   1b4a4: 0562         	lsls	r2, r4, #0x15
   1b4a6: 0002         	movs	r2, r0
   1b4a8: f592 0001    	<unknown>
   1b4ac: 0538         	lsls	r0, r7, #0x14
   1b4ae: 0002         	movs	r2, r0
   1b4b0: 0fb2         	lsrs	r2, r6, #0x1e
   1b4b2: 0002         	movs	r2, r0
   1b4b4: ad18         	add	r5, sp, #0x60
   1b4b6: 0001         	movs	r1, r0
   1b4b8: f566 0001    	sbc	r0, r6, #0x810000
   1b4bc: 050c         	lsls	r4, r1, #0x14
   1b4be: 0002         	movs	r2, r0
   1b4c0: 0ede         	lsrs	r6, r3, #0x1b
   1b4c2: 0002         	movs	r2, r0
   1b4c4: acec         	add	r4, sp, #0x3b0
   1b4c6: 0001         	movs	r1, r0
   1b4c8: f53c 0001    	<unknown>
   1b4cc: 04e2         	lsls	r2, r4, #0x13
   1b4ce: 0002         	movs	r2, r0
   1b4d0: 0e04         	lsrs	r4, r0, #0x18
   1b4d2: 0002         	movs	r2, r0
   1b4d4: acc2         	add	r4, sp, #0x308
   1b4d6: 0001         	movs	r1, r0
   1b4d8: f512 0001    	adds.w	r0, r2, #0x810000
   1b4dc: 04b8         	lsls	r0, r7, #0x12
   1b4de: 0002         	movs	r2, r0
   1b4e0: ac98         	add	r4, sp, #0x260
   1b4e2: 0001         	movs	r1, r0
   1b4e4: 0d1e         	lsrs	r6, r3, #0x14
   1b4e6: 0002         	movs	r2, r0
   1b4e8: f4e8 0001    	<unknown>
   1b4ec: 048e         	lsls	r6, r1, #0x12
   1b4ee: 0002         	movs	r2, r0
   1b4f0: ac6e         	add	r4, sp, #0x1b8
   1b4f2: 0001         	movs	r1, r0
   1b4f4: 0c28         	lsrs	r0, r5, #0x10
   1b4f6: 0002         	movs	r2, r0
   1b4f8: f4be 0001    	<unknown>
   1b4fc: 0464         	lsls	r4, r4, #0x11
   1b4fe: 0002         	movs	r2, r0
   1b500: ac42         	add	r4, sp, #0x108
   1b502: 0001         	movs	r1, r0
   1b504: 0b42         	lsrs	r2, r0, #0xd
   1b506: 0002         	movs	r2, r0
   1b508: f492 0001    	eors	r0, r2, #0x810000
   1b50c: 0438         	lsls	r0, r7, #0x10
   1b50e: 0002         	movs	r2, r0
   1b510: ac16         	add	r4, sp, #0x58
   1b512: 0001         	movs	r1, r0
   1b514: 0a42         	lsrs	r2, r0, #0x9
   1b516: 0002         	movs	r2, r0
   1b518: f466 0001    	orn	r0, r6, #0x810000
   1b51c: 040c         	lsls	r4, r1, #0x10
   1b51e: 0002         	movs	r2, r0
   1b520: abec         	add	r3, sp, #0x3b0
   1b522: 0001         	movs	r1, r0
   1b524: 098a         	lsrs	r2, r1, #0x6
   1b526: 0002         	movs	r2, r0
   1b528: f43c 0001    	bics	r0, r12, #0x810000
   1b52c: 03e2         	lsls	r2, r4, #0xf
   1b52e: 0002         	movs	r2, r0
   1b530: abc0         	add	r3, sp, #0x300
   1b532: 0001         	movs	r1, r0
   1b534: 089c         	lsrs	r4, r3, #0x2
   1b536: 0002         	movs	r2, r0
   1b538: f40e 0001    	and	r0, lr, #0x810000
   1b53c: 03b4         	lsls	r4, r6, #0xe
   1b53e: 0002         	movs	r2, r0
   1b540: 07d8         	lsls	r0, r3, #0x1f
   1b542: 0002         	movs	r2, r0
   1b544: ab94         	add	r3, sp, #0x250
   1b546: 0001         	movs	r1, r0
   1b548: 07fa         	lsls	r2, r7, #0x1f
   1b54a: 0002         	movs	r2, r0
   1b54c: f3c4 0001    	ubfx	r0, r4, #0x0, #0x2
   1b550: 036c         	lsls	r4, r5, #0xd
   1b552: 0002         	movs	r2, r0
   1b554: ab4a         	add	r3, sp, #0x128
   1b556: 0001         	movs	r1, r0
   1b558: 062a         	lsls	r2, r5, #0x18
   1b55a: 0002         	movs	r2, r0
   1b55c: f39a 0001    	<unknown>
   1b560: 0342         	lsls	r2, r0, #0xd
   1b562: 0002         	movs	r2, r0
   1b564: ab20         	add	r3, sp, #0x80
   1b566: 0001         	movs	r1, r0
   1b568: 054c         	lsls	r4, r1, #0x15
   1b56a: 0002         	movs	r2, r0
   1b56c: f370 0001    	<unknown>
   1b570: 0318         	lsls	r0, r3, #0xc
   1b572: 0002         	movs	r2, r0
   1b574: aaf6         	add	r2, sp, #0x3d8
   1b576: 0001         	movs	r1, r0
   1b578: 0476         	lsls	r6, r6, #0x11
   1b57a: 0002         	movs	r2, r0
   1b57c: f346 0001    	sbfx	r0, r6, #0x0, #0x2
   1b580: 02ee         	lsls	r6, r5, #0xb
   1b582: 0002         	movs	r2, r0
   1b584: aacc         	add	r2, sp, #0x330
   1b586: 0001         	movs	r1, r0
   1b588: 03b0         	lsls	r0, r6, #0xe
   1b58a: 0002         	movs	r2, r0
   1b58c: f31a 0001    	<unknown>
   1b590: 02c0         	lsls	r0, r0, #0xb
   1b592: 0002         	movs	r2, r0
   1b594: 0616         	lsls	r6, r2, #0x18
   1b596: 0002         	movs	r2, r0
   1b598: aaa0         	add	r2, sp, #0x280
   1b59a: 0001         	movs	r1, r0
   1b59c: 0660         	lsls	r0, r4, #0x19
   1b59e: 0002         	movs	r2, r0
