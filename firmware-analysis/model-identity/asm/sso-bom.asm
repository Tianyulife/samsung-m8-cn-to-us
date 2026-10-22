
firmware-analysis/US-1720.7/rootfs/root/usr/apps/org.tizen.ssoservice/bin/ssoservice:	file format elf32-littlearm

Disassembly of section .text:

0004d0b4 <_ZN9CSSOSUtil20ClearListValueInJsonERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_>:
   4d3c0: 4d46         	ldr	r5, [pc, #0x118]        @ 0x4d4dc <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x104>
   4d3c2: 000a         	movs	r2, r1
   4d3c4: be66         	bkpt	#0x66
   4d3c6: 0006         	movs	r6, r0
   4d3c8: d326         	blo	0x4d418 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x40> @ imm = #0x4c
   4d3ca: 0006         	movs	r6, r0
   4d3cc: 5264         	strh	r4, [r4, r1]
   4d3ce: 0006         	movs	r6, r0
   4d3d0: ab2e         	add	r3, sp, #0xb8
   4d3d2: 0006         	movs	r6, r0
   4d3d4: b74e         	<unknown>
   4d3d6: 0007         	movs	r7, r0

0004d3d8 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev>:
   4d3d8: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
   4d3dc: 4604         	mov	r4, r0
   4d3de: 4bb0         	ldr	r3, [pc, #0x2c0]        @ 0x4d6a0 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x2c8>
   4d3e0: b09f         	sub	sp, #0x7c
   4d3e2: 4fb0         	ldr	r7, [pc, #0x2c0]        @ 0x4d6a4 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x2cc>
   4d3e4: 4ab0         	ldr	r2, [pc, #0x2c0]        @ 0x4d6a8 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x2d0>
   4d3e6: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/org.tizen.ssoservice-0.1.17/src/SSOSDaemon/SSOSCommon/Common/src/SSOSUtil.cpp'
   4d3e8: 4db0         	ldr	r5, [pc, #0x2c0]        @ 0x4d6ac <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x2d4>
   4d3ea: 447f         	add	r7, pc
   4d3ec: 447a         	add	r2, pc ; STR 'GetDeviceName'
   4d3ee: 335d         	adds	r3, #0x5d
   4d3f0: e9cd 3200    	strd	r3, r2, [sp]
   4d3f4: f240 52a4    	movw	r2, #0x5a4
   4d3f8: 4bad         	ldr	r3, [pc, #0x2b4]        @ 0x4d6b0 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x2d8>
   4d3fa: 2104         	movs	r1, #0x4
   4d3fc: 9202         	str	r2, [sp, #0x8]
   4d3fe: 2000         	movs	r0, #0x0
   4d400: 4aac         	ldr	r2, [pc, #0x2b0]        @ 0x4d6b4 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x2dc>
   4d402: 447b         	add	r3, pc ; STR '%s: %s(%d) > [START] '
   4d404: 597d         	ldr	r5, [r7, r5]
   4d406: ae05         	add	r6, sp, #0x14
   4d408: 447a         	add	r2, pc ; STR 'SSOSERVICE'
   4d40a: f104 0908    	add.w	r9, r4, #0x8
   4d40e: 682d         	ldr	r5, [r5]
   4d410: 951d         	str	r5, [sp, #0x74]
   4d412: f04f 0500    	mov.w	r5, #0x0
   4d416: f7e2 ead6    	blx	0x2f9c4 <__dlog_print@plt> @ imm = #-0x1da54
   4d41a: 2300         	movs	r3, #0x0
   4d41c: 4630         	mov	r0, r6
   4d41e: f8c4 9000    	str.w	r9, [r4]
   4d422: af07         	add	r7, sp, #0x1c
   4d424: 6063         	str	r3, [r4, #0x4]
   4d426: 7223         	strb	r3, [r4, #0x8]
   4d428: 9306         	str	r3, [sp, #0x18]
   4d42a: f88d 301c    	strb.w	r3, [sp, #0x1c]
   4d42e: 9705         	str	r7, [sp, #0x14]
   4d430: f023 fcb8    	bl	0x70da4 <_ZN12ICSystemInfo14GetProductTypeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #0x23970
   4d434: 4605         	mov	r5, r0
   4d436: b1d8         	cbz	r0, 0x4d470 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x98> @ imm = #0x36
   4d438: 4b9f         	ldr	r3, [pc, #0x27c]        @ 0x4d6b8 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x2e0>
   4d43a: f240 52ae    	movw	r2, #0x5ae
   4d43e: 4d9f         	ldr	r5, [pc, #0x27c]        @ 0x4d6bc <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x2e4>
   4d440: 2104         	movs	r1, #0x4
   4d442: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/org.tizen.ssoservice-0.1.17/src/SSOSDaemon/SSOSCommon/Common/src/SSOSUtil.cpp'
   4d444: 9202         	str	r2, [sp, #0x8]
   4d446: 335d         	adds	r3, #0x5d
   4d448: 4a9d         	ldr	r2, [pc, #0x274]        @ 0x4d6c0 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x2e8>
   4d44a: 447d         	add	r5, pc ; STR 'GetDeviceName'
   4d44c: e9cd 3500    	strd	r3, r5, [sp]
   4d450: 4b9c         	ldr	r3, [pc, #0x270]        @ 0x4d6c4 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x2ec>
   4d452: 447a         	add	r2, pc ; STR 'SSOSERVICE'
   4d454: 9805         	ldr	r0, [sp, #0x14]
   4d456: 9003         	str	r0, [sp, #0xc]
   4d458: 447b         	add	r3, pc
   4d45a: 2000         	movs	r0, #0x0
   4d45c: f7e2 eab2    	blx	0x2f9c4 <__dlog_print@plt> @ imm = #-0x1da9c
   4d460: 4999         	ldr	r1, [pc, #0x264]        @ 0x4d6c8 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x2f0>
   4d462: 4630         	mov	r0, r6
   4d464: 4479         	add	r1, pc ; STR 'AV'
   4d466: f7e3 e99e    	blx	0x307a4 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt> @ imm = #-0x1ccc4
   4d46a: fab0 f580    	clz	r5, r0
   4d46e: 096d         	lsrs	r5, r5, #0x5
   4d470: ae04         	add	r6, sp, #0x10
   4d472: 4630         	mov	r0, r6
   4d474: f023 fb56    	bl	0x70b24 <_ZN12ICSystemInfoC2Ev> @ imm = #0x236ac
   4d478: f10d 0a2c    	add.w	r10, sp, #0x2c
   4d47c: f44f 7192    	mov.w	r1, #0x124
   4d480: 4652         	mov	r2, r10
   4d482: 4630         	mov	r0, r6
   4d484: 2300         	movs	r3, #0x0
   4d486: f10d 0834    	add.w	r8, sp, #0x34
   4d48a: f88d 3034    	strb.w	r3, [sp, #0x34]
   4d48e: e9cd 830b    	strd	r8, r3, [sp, #44]
   4d492: f023 fb4f    	bl	0x70b34 <_ZN12ICSystemInfo19GetSystemInfoByTypeE17system_info_key_eRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #0x2369e
   4d496: 2800         	cmp	r0, #0x0
   4d498: f000 80c1    	beq.w	0x4d61e <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x246> @ imm = #0x182
   4d49c: 2d00         	cmp	r5, #0x0
   4d49e: d079         	beq	0x4d594 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x1bc> @ imm = #0xf2
   4d4a0: 498a         	ldr	r1, [pc, #0x228]        @ 0x4d6cc <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x2f4>
   4d4a2: a811         	add	r0, sp, #0x44
   4d4a4: f04f 0300    	mov.w	r3, #0x0
   4d4a8: ad13         	add	r5, sp, #0x4c
   4d4aa: 4479         	add	r1, pc ; STR '_M'
   4d4ac: 9511         	str	r5, [sp, #0x44]
   4d4ae: 1c8a         	adds	r2, r1, #0x2
   4d4b0: f7ea fa4a    	bl	0x37948 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag> @ imm = #-0x15b6c
   4d4b4: 9b12         	ldr	r3, [sp, #0x48]
   4d4b6: f04f 32ff    	mov.w	r2, #0xffffffff
   4d4ba: 9911         	ldr	r1, [sp, #0x44]
   4d4bc: 4650         	mov	r0, r10
   4d4be: f7e3 eaf4    	blx	0x30aa8 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcjj@plt> @ imm = #-0x1ca18
   4d4c2: 4601         	mov	r1, r0
   4d4c4: 1c43         	adds	r3, r0, #0x1
   4d4c6: d011         	beq	0x4d4ec <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x114> @ imm = #0x22
   4d4c8: 9b0c         	ldr	r3, [sp, #0x30]
   4d4ca: 9a12         	ldr	r2, [sp, #0x48]
   4d4cc: 4298         	cmp	r0, r3
   4d4ce: f200 80bf    	bhi.w	0x4d650 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x278> @ imm = #0x17e
   4d4d2: 1a1b         	subs	r3, r3, r0
   4d4d4: f04f 0c00    	mov.w	r12, #0x0
   4d4d8: 429a         	cmp	r2, r3
   4d4da: 4650         	mov	r0, r10
   4d4dc: bf28         	it	hs
   4d4de: 461a         	movhs	r2, r3
   4d4e0: 4b7b         	ldr	r3, [pc, #0x1ec]        @ 0x4d6d0 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x2f8>
   4d4e2: f8cd c000    	str.w	r12, [sp]
   4d4e6: 447b         	add	r3, pc
   4d4e8: f7e3 e956    	blx	0x30798 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj@plt> @ imm = #-0x1cd54
   4d4ec: aa17         	add	r2, sp, #0x5c
   4d4ee: 4630         	mov	r0, r6
   4d4f0: f247 5132    	movw	r1, #0x7532
   4d4f4: 2300         	movs	r3, #0x0
   4d4f6: f10d 0b64    	add.w	r11, sp, #0x64
   4d4fa: f88d 3064    	strb.w	r3, [sp, #0x64]
   4d4fe: e9cd b317    	strd	r11, r3, [sp, #92]
   4d502: f023 fb17    	bl	0x70b34 <_ZN12ICSystemInfo19GetSystemInfoByTypeE17system_info_key_eRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #0x2362e
   4d506: b988         	cbnz	r0, 0x4d52c <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x154> @ imm = #0x22
   4d508: 4b72         	ldr	r3, [pc, #0x1c8]        @ 0x4d6d4 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x2fc>
   4d50a: f240 5cdb    	movw	r12, #0x5db
   4d50e: 4a72         	ldr	r2, [pc, #0x1c8]        @ 0x4d6d8 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x300>
   4d510: 2106         	movs	r1, #0x6
   4d512: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/org.tizen.ssoservice-0.1.17/src/SSOSDaemon/SSOSCommon/Common/src/SSOSUtil.cpp'
   4d514: f8cd c008    	str.w	r12, [sp, #0x8]
   4d518: 447a         	add	r2, pc ; STR 'GetDeviceName'
   4d51a: 335d         	adds	r3, #0x5d
   4d51c: e9cd 3200    	strd	r3, r2, [sp]
   4d520: 4b6e         	ldr	r3, [pc, #0x1b8]        @ 0x4d6dc <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x304>
   4d522: 4a6f         	ldr	r2, [pc, #0x1bc]        @ 0x4d6e0 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x308>
   4d524: 447b         	add	r3, pc
   4d526: 447a         	add	r2, pc ; STR 'SSOSERVICE'
   4d528: f7e2 ea4c    	blx	0x2f9c4 <__dlog_print@plt> @ imm = #-0x1db68
   4d52c: 9a0c         	ldr	r2, [sp, #0x30]
   4d52e: f06f 4340    	mvn	r3, #0xc0000000
   4d532: 429a         	cmp	r2, r3
   4d534: f000 8088    	beq.w	0x4d648 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x270> @ imm = #0x110
   4d538: 496a         	ldr	r1, [pc, #0x1a8]        @ 0x4d6e4 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x30c>
   4d53a: 4650         	mov	r0, r10
   4d53c: 2201         	movs	r2, #0x1
   4d53e: 4479         	add	r1, pc
   4d540: f7e3 e950    	blx	0x307e4 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj@plt> @ imm = #-0x1cd60
   4d544: e9dd 1217    	ldrd	r1, r2, [sp, #92]
   4d548: f7e3 e94c    	blx	0x307e4 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcj@plt> @ imm = #-0x1cd68
   4d54c: 4601         	mov	r1, r0
   4d54e: 4620         	mov	r0, r4
   4d550: f7e3 eb48    	blx	0x30be4 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_@plt> @ imm = #-0x1c970
   4d554: 4b64         	ldr	r3, [pc, #0x190]        @ 0x4d6e8 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x310>
   4d556: f240 52df    	movw	r2, #0x5df
   4d55a: f8df c190    	ldr.w	r12, [pc, #0x190]       @ 0x4d6ec <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x314>
   4d55e: 2104         	movs	r1, #0x4
   4d560: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/org.tizen.ssoservice-0.1.17/src/SSOSDaemon/SSOSCommon/Common/src/SSOSUtil.cpp'
   4d562: 6820         	ldr	r0, [r4]
   4d564: 335d         	adds	r3, #0x5d
   4d566: 44fc         	add	r12, pc ; STR 'GetDeviceName'
   4d568: 9300         	str	r3, [sp]
   4d56a: e9cd c201    	strd	r12, r2, [sp, #4]
   4d56e: 4b60         	ldr	r3, [pc, #0x180]        @ 0x4d6f0 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x318>
   4d570: 4a60         	ldr	r2, [pc, #0x180]        @ 0x4d6f4 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x31c>
   4d572: 9003         	str	r0, [sp, #0xc]
   4d574: 447b         	add	r3, pc
   4d576: 2000         	movs	r0, #0x0
   4d578: 447a         	add	r2, pc ; STR 'SSOSERVICE'
   4d57a: f7e2 ea24    	blx	0x2f9c4 <__dlog_print@plt> @ imm = #-0x1dbb8
   4d57e: 9817         	ldr	r0, [sp, #0x5c]
   4d580: 4558         	cmp	r0, r11
   4d582: d001         	beq	0x4d588 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x1b0> @ imm = #0x2
   4d584: f7e2 ed94    	blx	0x300b0 <_ZdlPv@plt>    @ imm = #-0x1d4d8
   4d588: 9811         	ldr	r0, [sp, #0x44]
   4d58a: 42a8         	cmp	r0, r5
   4d58c: d01a         	beq	0x4d5c4 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x1ec> @ imm = #0x34
   4d58e: f7e2 ed90    	blx	0x300b0 <_ZdlPv@plt>    @ imm = #-0x1d4e0
   4d592: e017         	b	0x4d5c4 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x1ec> @ imm = #0x2e
   4d594: 4651         	mov	r1, r10
   4d596: 4620         	mov	r0, r4
   4d598: f7e3 eb24    	blx	0x30be4 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_@plt> @ imm = #-0x1c9b8
   4d59c: 4b56         	ldr	r3, [pc, #0x158]        @ 0x4d6f8 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x320>
   4d59e: f240 52e5    	movw	r2, #0x5e5
   4d5a2: 4d56         	ldr	r5, [pc, #0x158]        @ 0x4d6fc <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x324>
   4d5a4: 2104         	movs	r1, #0x4
   4d5a6: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/org.tizen.ssoservice-0.1.17/src/SSOSDaemon/SSOSCommon/Common/src/SSOSUtil.cpp'
   4d5a8: 6820         	ldr	r0, [r4]
   4d5aa: 335d         	adds	r3, #0x5d
   4d5ac: 447d         	add	r5, pc ; STR 'GetDeviceName'
   4d5ae: 9202         	str	r2, [sp, #0x8]
   4d5b0: e9cd 3500    	strd	r3, r5, [sp]
   4d5b4: 4a52         	ldr	r2, [pc, #0x148]        @ 0x4d700 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x328>
   4d5b6: 4b53         	ldr	r3, [pc, #0x14c]        @ 0x4d704 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x32c>
   4d5b8: 9003         	str	r0, [sp, #0xc]
   4d5ba: 447a         	add	r2, pc ; STR 'SSOSERVICE'
   4d5bc: 2000         	movs	r0, #0x0
   4d5be: 447b         	add	r3, pc
   4d5c0: f7e2 ea00    	blx	0x2f9c4 <__dlog_print@plt> @ imm = #-0x1dc00
   4d5c4: 4b50         	ldr	r3, [pc, #0x140]        @ 0x4d708 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x330>
   4d5c6: f44f 62bd    	mov.w	r2, #0x5e8
   4d5ca: 4d50         	ldr	r5, [pc, #0x140]        @ 0x4d70c <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x334>
   4d5cc: 2104         	movs	r1, #0x4
   4d5ce: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/org.tizen.ssoservice-0.1.17/src/SSOSDaemon/SSOSCommon/Common/src/SSOSUtil.cpp'
   4d5d0: 6820         	ldr	r0, [r4]
   4d5d2: 335d         	adds	r3, #0x5d
   4d5d4: 447d         	add	r5, pc ; STR 'GetDeviceName'
   4d5d6: 9202         	str	r2, [sp, #0x8]
   4d5d8: e9cd 3500    	strd	r3, r5, [sp]
   4d5dc: 4a4c         	ldr	r2, [pc, #0x130]        @ 0x4d710 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x338>
   4d5de: 4b4d         	ldr	r3, [pc, #0x134]        @ 0x4d714 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x33c>
   4d5e0: 9003         	str	r0, [sp, #0xc]
   4d5e2: 447a         	add	r2, pc ; STR 'SSOSERVICE'
   4d5e4: 2000         	movs	r0, #0x0
   4d5e6: 447b         	add	r3, pc ; STR '%s: %s(%d) > [END] Case (strDeviceName:%s)'
   4d5e8: f7e2 e9ec    	blx	0x2f9c4 <__dlog_print@plt> @ imm = #-0x1dc28
   4d5ec: 980b         	ldr	r0, [sp, #0x2c]
   4d5ee: 4540         	cmp	r0, r8
   4d5f0: d001         	beq	0x4d5f6 <_ZN9CSSOSUtil13GetDeviceNameB5cxx11Ev+0x21e> @ imm = #0x2
   4d5f2: f7e2 ed5e    	blx	0x300b0 <_ZdlPv@plt>    @ imm = #-0x1d544
   4d5f6: 4630         	mov	r0, r6
   4d5f8: f023 fa8c    	bl	0x70b14 <_ZN12ICSystemInfoD2Ev> @ imm = #0x23518
   4d5fc: 9805         	ldr	r0, [sp, #0x14]
   4d5fe: 42b8         	cmp	r0, r7
