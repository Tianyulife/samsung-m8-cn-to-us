
firmware-analysis/CN-1651.1/rootfs/root/usr/bin/TIFSDaemon:	file format elf32-littlearm

Disassembly of section .text:

00070304 <_ZN9FCControl17CheckSkipLocalsetEiPi>:
   70304: b570         	push	{r4, r5, r6, lr}
   70306: f06f 0327    	mvn	r3, #0x27
   7030a: 4614         	mov	r4, r2
   7030c: b084         	sub	sp, #0x10
   7030e: 6880         	ldr	r0, [r0, #0x8]
   70310: 460d         	mov	r5, r1
   70312: aa02         	add	r2, sp, #0x8
   70314: f240 21f9    	movw	r1, #0x2f9
   70318: f648 6634    	movw	r6, #0x8e34
   7031c: f2c0 0609    	movt	r6, #0x9
   70320: 9300         	str	r3, [sp]
   70322: 6836         	ldr	r6, [r6]
   70324: 9603         	str	r6, [sp, #0xc]
   70326: f04f 0600    	mov.w	r6, #0x0
   7032a: 2600         	movs	r6, #0x0
   7032c: 9602         	str	r6, [sp, #0x8]
   7032e: f7bd ea42    	blx	0x2d7b4 <_ZN19FCStorageBaseCommon13GetFactoryUIDEjPiii@plt> @ imm = #-0x42b7c
   70332: 1e6b         	subs	r3, r5, #0x1
   70334: 6026         	str	r6, [r4]
   70336: 2b3d         	cmp	r3, #0x3d
   70338: d84c         	bhi	0x703d4 <_ZN9FCControl17CheckSkipLocalsetEiPi+0xd0> @ imm = #0x98
   7033a: e8df f003    	tbb	[pc, r3]
   7033e: 6955         	ldr	r5, [r2, #0x14]
   70340: 5555         	strb	r5, [r2, r5]
   70342: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x70470 <_ZN9FCControl20m_GetRegionOfCountryE21system_info_country_eP15fac_region_kind+0x14>
   70344: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x70474 <_ZN9FCControl20m_GetRegionOfCountryE21system_info_country_eP15fac_region_kind+0x18>
   70346: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x70474 <_ZN9FCControl20m_GetRegionOfCountryE21system_info_country_eP15fac_region_kind+0x18>
   70348: 4d4b         	ldr	r5, [pc, #0x12c]        @ 0x70478 <_ZN9FCControl20m_GetRegionOfCountryE21system_info_country_eP15fac_region_kind+0x1c>
   7034a: 4d4d         	ldr	r5, [pc, #0x134]        @ 0x70480 <_ZN9FCControl20m_GetRegionOfCountryE21system_info_country_eP15fac_region_kind+0x24>
   7034c: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x7047c <_ZN9FCControl20m_GetRegionOfCountryE21system_info_country_eP15fac_region_kind+0x20>
   7034e: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x7047c <_ZN9FCControl20m_GetRegionOfCountryE21system_info_country_eP15fac_region_kind+0x20>
   70350: 4b4d         	ldr	r3, [pc, #0x134]        @ 0x70488 <_ZN9FCControl20m_GetRegionOfCountryE21system_info_country_eP15fac_region_kind+0x2c>
   70352: 4b5d         	ldr	r3, [pc, #0x174]        @ 0x704c8 <_ZN9FCControl20m_GetRegionOfCountryE21system_info_country_eP15fac_region_kind+0x6c>
   70354: 3232         	adds	r2, #0x32
   70356: 1f32         	subs	r2, r6, #0x4
   70358: 1f1f         	subs	r7, r3, #0x4
   7035a: 1f1f         	subs	r7, r3, #0x4
   7035c: 1f1f         	subs	r7, r3, #0x4
   7035e: 1f1f         	subs	r7, r3, #0x4
   70360: 1f1f         	subs	r7, r3, #0x4
   70362: 1f1f         	subs	r7, r3, #0x4
   70364: 1f1f         	subs	r7, r3, #0x4
   70366: 1f1f         	subs	r7, r3, #0x4
   70368: 1f1f         	subs	r7, r3, #0x4
   7036a: 321f         	adds	r2, #0x1f
   7036c: 3232         	adds	r2, #0x32
   7036e: 3232         	adds	r2, #0x32
   70370: 3232         	adds	r2, #0x32
   70372: 3232         	adds	r2, #0x32
   70374: 3232         	adds	r2, #0x32
   70376: 3232         	adds	r2, #0x32
   70378: 3232         	adds	r2, #0x32
   7037a: 3232         	adds	r2, #0x32
   7037c: 9b02         	ldr	r3, [sp, #0x8]
   7037e: f1a3 0203    	sub.w	r2, r3, #0x3
   70382: fab2 f282    	clz	r2, r2
   70386: 0952         	lsrs	r2, r2, #0x5
   70388: 6022         	str	r2, [r4]
   7038a: 2b0d         	cmp	r3, #0xd
   7038c: d013         	beq	0x703b6 <_ZN9FCControl17CheckSkipLocalsetEiPi+0xb2> @ imm = #0x26
   7038e: f648 6334    	movw	r3, #0x8e34
   70392: f2c0 0309    	movt	r3, #0x9
   70396: 681a         	ldr	r2, [r3]
   70398: 9b03         	ldr	r3, [sp, #0xc]
   7039a: 405a         	eors	r2, r3
   7039c: d142         	bne	0x70424 <_ZN9FCControl17CheckSkipLocalsetEiPi+0x120> @ imm = #0x84
   7039e: b004         	add	sp, #0x10
   703a0: bd70         	pop	{r4, r5, r6, pc}
   703a2: 9b02         	ldr	r3, [sp, #0x8]
   703a4: f1a3 0204    	sub.w	r2, r3, #0x4
   703a8: 2b0d         	cmp	r3, #0xd
   703aa: fab2 f282    	clz	r2, r2
   703ae: ea4f 1252    	lsr.w	r2, r2, #0x5
   703b2: 6022         	str	r2, [r4]
   703b4: d1eb         	bne	0x7038e <_ZN9FCControl17CheckSkipLocalsetEiPi+0x8a> @ imm = #-0x2a
   703b6: 2d41         	cmp	r5, #0x41
   703b8: bf18         	it	ne
   703ba: 2d00         	cmpne	r5, #0x0
   703bc: bf18         	it	ne
   703be: 2301         	movne	r3, #0x1
   703c0: bf08         	it	eq
   703c2: 2300         	moveq	r3, #0x0
   703c4: 2d16         	cmp	r5, #0x16
   703c6: f003 0301    	and	r3, r3, #0x1
   703ca: bf08         	it	eq
   703cc: 2300         	moveq	r3, #0x0
   703ce: 2b00         	cmp	r3, #0x0
   703d0: d0dd         	beq	0x7038e <_ZN9FCControl17CheckSkipLocalsetEiPi+0x8a> @ imm = #-0x46
   703d2: e01a         	b	0x7040a <_ZN9FCControl17CheckSkipLocalsetEiPi+0x106> @ imm = #0x34
   703d4: 9b02         	ldr	r3, [sp, #0x8]
   703d6: e7d8         	b	0x7038a <_ZN9FCControl17CheckSkipLocalsetEiPi+0x86> @ imm = #-0x50
   703d8: 9b02         	ldr	r3, [sp, #0x8]
   703da: f1a3 0201    	sub.w	r2, r3, #0x1
   703de: fab2 f282    	clz	r2, r2
   703e2: 0952         	lsrs	r2, r2, #0x5
   703e4: 6022         	str	r2, [r4]
   703e6: e7d0         	b	0x7038a <_ZN9FCControl17CheckSkipLocalsetEiPi+0x86> @ imm = #-0x60
   703e8: 9b02         	ldr	r3, [sp, #0x8]
   703ea: f1a3 0205    	sub.w	r2, r3, #0x5
   703ee: fab2 f282    	clz	r2, r2
   703f2: 0952         	lsrs	r2, r2, #0x5
   703f4: 6022         	str	r2, [r4]
   703f6: e7c8         	b	0x7038a <_ZN9FCControl17CheckSkipLocalsetEiPi+0x86> @ imm = #-0x70
   703f8: 9b02         	ldr	r3, [sp, #0x8]
   703fa: 2b0c         	cmp	r3, #0xc
   703fc: d80f         	bhi	0x7041e <_ZN9FCControl17CheckSkipLocalsetEiPi+0x11a> @ imm = #0x1e
   703fe: f241 1286    	movw	r2, #0x1186
   70402: fa22 f303    	lsr.w	r3, r2, r3
   70406: 07db         	lsls	r3, r3, #0x1f
   70408: d5c1         	bpl	0x7038e <_ZN9FCControl17CheckSkipLocalsetEiPi+0x8a> @ imm = #-0x7e
   7040a: 2301         	movs	r3, #0x1
   7040c: 6023         	str	r3, [r4]
   7040e: e7be         	b	0x7038e <_ZN9FCControl17CheckSkipLocalsetEiPi+0x8a> @ imm = #-0x84
   70410: 9b02         	ldr	r3, [sp, #0x8]
   70412: f1a3 0206    	sub.w	r2, r3, #0x6
   70416: fab2 f282    	clz	r2, r2
   7041a: 0952         	lsrs	r2, r2, #0x5
   7041c: 6022         	str	r2, [r4]
   7041e: 2b0d         	cmp	r3, #0xd
   70420: d0f3         	beq	0x7040a <_ZN9FCControl17CheckSkipLocalsetEiPi+0x106> @ imm = #-0x1a
   70422: e7b4         	b	0x7038e <_ZN9FCControl17CheckSkipLocalsetEiPi+0x8a> @ imm = #-0x98
   70424: f7bc ef86    	blx	0x2d334 <__stack_chk_fail@plt> @ imm = #-0x430f4
