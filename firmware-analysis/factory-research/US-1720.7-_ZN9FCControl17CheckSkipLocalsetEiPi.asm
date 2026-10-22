
firmware-analysis/US-1720.7/rootfs/root/usr/bin/TIFSDaemon:	file format elf32-littlearm

Disassembly of section .text:

000713ac <_ZN9FCControl17CheckSkipLocalsetEiPi>:
   713ac: b570         	push	{r4, r5, r6, lr}
   713ae: f06f 0327    	mvn	r3, #0x27
   713b2: 4614         	mov	r4, r2
   713b4: b084         	sub	sp, #0x10
   713b6: 6880         	ldr	r0, [r0, #0x8]
   713b8: 460d         	mov	r5, r1
   713ba: aa02         	add	r2, sp, #0x8
   713bc: f240 21f9    	movw	r1, #0x2f9
   713c0: f24a 3688    	movw	r6, #0xa388
   713c4: f2c0 0609    	movt	r6, #0x9
   713c8: 9300         	str	r3, [sp]
   713ca: 6836         	ldr	r6, [r6]
   713cc: 9603         	str	r6, [sp, #0xc]
   713ce: f04f 0600    	mov.w	r6, #0x0
   713d2: 2600         	movs	r6, #0x0
   713d4: 9602         	str	r6, [sp, #0x8]
   713d6: f7bc ed36    	blx	0x2de44 <_ZN19FCStorageBaseCommon13GetFactoryUIDEjPiii@plt> @ imm = #-0x43594
   713da: 1e6b         	subs	r3, r5, #0x1
   713dc: 6026         	str	r6, [r4]
   713de: 2b3d         	cmp	r3, #0x3d
   713e0: d84c         	bhi	0x7147c <_ZN9FCControl17CheckSkipLocalsetEiPi+0xd0> @ imm = #0x98
   713e2: e8df f003    	tbb	[pc, r3]
   713e6: 6955         	ldr	r5, [r2, #0x14]
   713e8: 5555         	strb	r5, [r2, r5]
   713ea: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x71518 <_ZN9FCControl20m_GetRegionOfCountryE21system_info_country_eP15fac_region_kind+0x14>
   713ec: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x7151c <_ZN9FCControl20m_GetRegionOfCountryE21system_info_country_eP15fac_region_kind+0x18>
   713ee: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x7151c <_ZN9FCControl20m_GetRegionOfCountryE21system_info_country_eP15fac_region_kind+0x18>
   713f0: 4d4b         	ldr	r5, [pc, #0x12c]        @ 0x71520 <_ZN9FCControl20m_GetRegionOfCountryE21system_info_country_eP15fac_region_kind+0x1c>
   713f2: 4d4d         	ldr	r5, [pc, #0x134]        @ 0x71528 <_ZN9FCControl20m_GetRegionOfCountryE21system_info_country_eP15fac_region_kind+0x24>
   713f4: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x71524 <_ZN9FCControl20m_GetRegionOfCountryE21system_info_country_eP15fac_region_kind+0x20>
   713f6: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x71524 <_ZN9FCControl20m_GetRegionOfCountryE21system_info_country_eP15fac_region_kind+0x20>
   713f8: 4b4d         	ldr	r3, [pc, #0x134]        @ 0x71530 <_ZN9FCControl20m_GetRegionOfCountryE21system_info_country_eP15fac_region_kind+0x2c>
   713fa: 4b5d         	ldr	r3, [pc, #0x174]        @ 0x71570 <_ZN9FCControl20m_GetRegionOfCountryE21system_info_country_eP15fac_region_kind+0x6c>
   713fc: 3232         	adds	r2, #0x32
   713fe: 1f32         	subs	r2, r6, #0x4
   71400: 1f1f         	subs	r7, r3, #0x4
   71402: 1f1f         	subs	r7, r3, #0x4
   71404: 1f1f         	subs	r7, r3, #0x4
   71406: 1f1f         	subs	r7, r3, #0x4
   71408: 1f1f         	subs	r7, r3, #0x4
   7140a: 1f1f         	subs	r7, r3, #0x4
   7140c: 1f1f         	subs	r7, r3, #0x4
   7140e: 1f1f         	subs	r7, r3, #0x4
   71410: 1f1f         	subs	r7, r3, #0x4
   71412: 321f         	adds	r2, #0x1f
   71414: 3232         	adds	r2, #0x32
   71416: 3232         	adds	r2, #0x32
   71418: 3232         	adds	r2, #0x32
   7141a: 3232         	adds	r2, #0x32
   7141c: 3232         	adds	r2, #0x32
   7141e: 3232         	adds	r2, #0x32
   71420: 3232         	adds	r2, #0x32
   71422: 3232         	adds	r2, #0x32
   71424: 9b02         	ldr	r3, [sp, #0x8]
   71426: f1a3 0203    	sub.w	r2, r3, #0x3
   7142a: fab2 f282    	clz	r2, r2
   7142e: 0952         	lsrs	r2, r2, #0x5
   71430: 6022         	str	r2, [r4]
   71432: 2b0d         	cmp	r3, #0xd
   71434: d013         	beq	0x7145e <_ZN9FCControl17CheckSkipLocalsetEiPi+0xb2> @ imm = #0x26
   71436: f24a 3388    	movw	r3, #0xa388
   7143a: f2c0 0309    	movt	r3, #0x9
   7143e: 681a         	ldr	r2, [r3]
   71440: 9b03         	ldr	r3, [sp, #0xc]
   71442: 405a         	eors	r2, r3
   71444: d142         	bne	0x714cc <_ZN9FCControl17CheckSkipLocalsetEiPi+0x120> @ imm = #0x84
   71446: b004         	add	sp, #0x10
   71448: bd70         	pop	{r4, r5, r6, pc}
   7144a: 9b02         	ldr	r3, [sp, #0x8]
   7144c: f1a3 0204    	sub.w	r2, r3, #0x4
   71450: 2b0d         	cmp	r3, #0xd
   71452: fab2 f282    	clz	r2, r2
   71456: ea4f 1252    	lsr.w	r2, r2, #0x5
   7145a: 6022         	str	r2, [r4]
   7145c: d1eb         	bne	0x71436 <_ZN9FCControl17CheckSkipLocalsetEiPi+0x8a> @ imm = #-0x2a
   7145e: 2d41         	cmp	r5, #0x41
   71460: bf18         	it	ne
   71462: 2d00         	cmpne	r5, #0x0
   71464: bf18         	it	ne
   71466: 2301         	movne	r3, #0x1
   71468: bf08         	it	eq
   7146a: 2300         	moveq	r3, #0x0
   7146c: 2d16         	cmp	r5, #0x16
   7146e: f003 0301    	and	r3, r3, #0x1
   71472: bf08         	it	eq
   71474: 2300         	moveq	r3, #0x0
   71476: 2b00         	cmp	r3, #0x0
   71478: d0dd         	beq	0x71436 <_ZN9FCControl17CheckSkipLocalsetEiPi+0x8a> @ imm = #-0x46
   7147a: e01a         	b	0x714b2 <_ZN9FCControl17CheckSkipLocalsetEiPi+0x106> @ imm = #0x34
   7147c: 9b02         	ldr	r3, [sp, #0x8]
   7147e: e7d8         	b	0x71432 <_ZN9FCControl17CheckSkipLocalsetEiPi+0x86> @ imm = #-0x50
   71480: 9b02         	ldr	r3, [sp, #0x8]
   71482: f1a3 0201    	sub.w	r2, r3, #0x1
   71486: fab2 f282    	clz	r2, r2
   7148a: 0952         	lsrs	r2, r2, #0x5
   7148c: 6022         	str	r2, [r4]
   7148e: e7d0         	b	0x71432 <_ZN9FCControl17CheckSkipLocalsetEiPi+0x86> @ imm = #-0x60
   71490: 9b02         	ldr	r3, [sp, #0x8]
   71492: f1a3 0205    	sub.w	r2, r3, #0x5
   71496: fab2 f282    	clz	r2, r2
   7149a: 0952         	lsrs	r2, r2, #0x5
   7149c: 6022         	str	r2, [r4]
   7149e: e7c8         	b	0x71432 <_ZN9FCControl17CheckSkipLocalsetEiPi+0x86> @ imm = #-0x70
   714a0: 9b02         	ldr	r3, [sp, #0x8]
   714a2: 2b0c         	cmp	r3, #0xc
   714a4: d80f         	bhi	0x714c6 <_ZN9FCControl17CheckSkipLocalsetEiPi+0x11a> @ imm = #0x1e
   714a6: f241 1286    	movw	r2, #0x1186
   714aa: fa22 f303    	lsr.w	r3, r2, r3
   714ae: 07db         	lsls	r3, r3, #0x1f
   714b0: d5c1         	bpl	0x71436 <_ZN9FCControl17CheckSkipLocalsetEiPi+0x8a> @ imm = #-0x7e
   714b2: 2301         	movs	r3, #0x1
   714b4: 6023         	str	r3, [r4]
   714b6: e7be         	b	0x71436 <_ZN9FCControl17CheckSkipLocalsetEiPi+0x8a> @ imm = #-0x84
   714b8: 9b02         	ldr	r3, [sp, #0x8]
   714ba: f1a3 0206    	sub.w	r2, r3, #0x6
   714be: fab2 f282    	clz	r2, r2
   714c2: 0952         	lsrs	r2, r2, #0x5
   714c4: 6022         	str	r2, [r4]
   714c6: 2b0d         	cmp	r3, #0xd
   714c8: d0f3         	beq	0x714b2 <_ZN9FCControl17CheckSkipLocalsetEiPi+0x106> @ imm = #-0x1a
   714ca: e7b4         	b	0x71436 <_ZN9FCControl17CheckSkipLocalsetEiPi+0x8a> @ imm = #-0x98
   714cc: f7bc ea68    	blx	0x2d9a0 <__stack_chk_fail@plt> @ imm = #-0x43b30
