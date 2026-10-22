
firmware-analysis/US-1720.7/rootfs/root/usr/apps/comss/bin/comss:	file format elf32-littlearm

Disassembly of section .text:

00014514 <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO>:
   14670: f7f9 e818    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x6fd0
   14674: f8da 0004    	ldr.w	r0, [r10, #0x4]
   14678: 2800         	cmp	r0, #0x0
   1467a: f000 843c    	beq.w	0x14ef6 <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0x9e2> @ imm = #0x878
   1467e: 985d         	ldr	r0, [sp, #0x174]
   14680: 4540         	cmp	r0, r8
   14682: d001         	beq	0x14688 <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0x174> @ imm = #0x2
   14684: f7f9 e80e    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x6fe4
   14688: f8df ea30    	ldr.w	lr, [pc, #0xa30]        @ 0x150bc <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0xba8>
   1468c: f240 6cdb    	movw	r12, #0x6db
   14690: f8da 0000    	ldr.w	r0, [r10]
   14694: 2104         	movs	r1, #0x4
   14696: 44fe         	add	lr, pc
   14698: 683a         	ldr	r2, [r7]
   1469a: f10e 0353    	add.w	r3, lr, #0x53
   1469e: 9005         	str	r0, [sp, #0x14]
   146a0: 9300         	str	r3, [sp]
   146a2: 2000         	movs	r0, #0x0
   146a4: 6833         	ldr	r3, [r6]
   146a6: 9204         	str	r2, [sp, #0x10]
   146a8: f8df 2a14    	ldr.w	r2, [pc, #0xa14]        @ 0x150c0 <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0xbac>
   146ac: 9303         	str	r3, [sp, #0xc]
   146ae: 447a         	add	r2, pc ; STR 'm_SetReqAtokenInfo'
   146b0: f8df 3a10    	ldr.w	r3, [pc, #0xa10]        @ 0x150c4 <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0xbb0>
   146b4: e9cd 2c01    	strd	r2, r12, [sp, #4]
   146b8: f8df 2a0c    	ldr.w	r2, [pc, #0xa0c]        @ 0x150c8 <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0xbb4>
   146bc: 447b         	add	r3, pc
   146be: 447a         	add	r2, pc ; STR 'COMSS'
   146c0: f7f8 ee4e    	blx	0xd360 <__dlog_print@plt> @ imm = #-0x7364
   146c4: 4631         	mov	r1, r6
   146c6: 4620         	mov	r0, r4
   146c8: f7f9 eb02    	blx	0xdcd0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_@plt> @ imm = #-0x69fc
   146cc: f8d5 1480    	ldr.w	r1, [r5, #0x480]
   146d0: a82d         	add	r0, sp, #0xb4
   146d2: f7fc f9d9    	bl	0x10a88 <_ZN7CAIAuth9GetHWDUIDB5cxx11Ev> @ imm = #-0x3c4e
   146d6: 992d         	ldr	r1, [sp, #0xb4]
   146d8: f10d 08bc    	add.w	r8, sp, #0xbc
   146dc: 69a0         	ldr	r0, [r4, #0x18]
   146de: 9a2e         	ldr	r2, [sp, #0xb8]
   146e0: 4541         	cmp	r1, r8
   146e2: f000 8355    	beq.w	0x14d90 <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0x87c> @ imm = #0x6aa
   146e6: f104 0320    	add.w	r3, r4, #0x20
   146ea: f8dd c0bc    	ldr.w	r12, [sp, #0xbc]
   146ee: 4298         	cmp	r0, r3
   146f0: e9c4 1206    	strd	r1, r2, [r4, #24]
   146f4: f000 835a    	beq.w	0x14dac <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0x898> @ imm = #0x6b4
   146f8: 6a23         	ldr	r3, [r4, #0x20]
   146fa: f8c4 c020    	str.w	r12, [r4, #0x20]
   146fe: 2800         	cmp	r0, #0x0
   14700: f000 8356    	beq.w	0x14db0 <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0x89c> @ imm = #0x6ac
   14704: 902d         	str	r0, [sp, #0xb4]
   14706: 932f         	str	r3, [sp, #0xbc]
   14708: 2300         	movs	r3, #0x0
   1470a: 932e         	str	r3, [sp, #0xb8]
   1470c: 7003         	strb	r3, [r0]
   1470e: 982d         	ldr	r0, [sp, #0xb4]
   14710: 4540         	cmp	r0, r8
   14712: d001         	beq	0x14718 <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0x204> @ imm = #0x2
   14714: f7f8 efc6    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x7074
   14718: 4639         	mov	r1, r7
   1471a: f104 0030    	add.w	r0, r4, #0x30
   1471e: f7f9 ead8    	blx	0xdcd0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_@plt> @ imm = #-0x6a50
   14722: 4651         	mov	r1, r10
   14724: f104 0048    	add.w	r0, r4, #0x48
   14728: f7f9 ead2    	blx	0xdcd0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_@plt> @ imm = #-0x6a5c
   1472c: f8d5 1480    	ldr.w	r1, [r5, #0x480]
   14730: a833         	add	r0, sp, #0xcc
   14732: f7fc fa15    	bl	0x10b60 <_ZN7CAIAuth11GetBomModelB5cxx11Ev> @ imm = #-0x3bd6
   14736: 9933         	ldr	r1, [sp, #0xcc]
   14738: f10d 08d4    	add.w	r8, sp, #0xd4
   1473c: 6e20         	ldr	r0, [r4, #0x60]
   1473e: 9a34         	ldr	r2, [sp, #0xd0]
   14740: 4541         	cmp	r1, r8
   14742: f000 8307    	beq.w	0x14d54 <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0x840> @ imm = #0x60e
   14746: f104 0368    	add.w	r3, r4, #0x68
   1474a: f8dd c0d4    	ldr.w	r12, [sp, #0xd4]
   1474e: 4298         	cmp	r0, r3
   14750: e9c4 1218    	strd	r1, r2, [r4, #96]
   14754: f000 8342    	beq.w	0x14ddc <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0x8c8> @ imm = #0x684
   14758: 6ea3         	ldr	r3, [r4, #0x68]
   1475a: f8c4 c068    	str.w	r12, [r4, #0x68]
   1475e: 2800         	cmp	r0, #0x0
   14760: f000 833e    	beq.w	0x14de0 <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0x8cc> @ imm = #0x67c
   14764: 9033         	str	r0, [sp, #0xcc]
   14766: 9335         	str	r3, [sp, #0xd4]
   14768: 2300         	movs	r3, #0x0
   1476a: 9334         	str	r3, [sp, #0xd0]
   1476c: 7003         	strb	r3, [r0]
   1476e: 9833         	ldr	r0, [sp, #0xcc]
   14770: 4540         	cmp	r0, r8
   14772: d001         	beq	0x14778 <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0x264> @ imm = #0x2
   14774: f7f8 ef96    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x70d4
   14778: f8d5 1480    	ldr.w	r1, [r5, #0x480]
   1477c: a839         	add	r0, sp, #0xe4
   1477e: f7fb fe71    	bl	0x10464 <_ZN7CAIAuth18GetFirmwareVersionB5cxx11Ev> @ imm = #-0x431e
   14782: 9939         	ldr	r1, [sp, #0xe4]
   14784: f10d 08ec    	add.w	r8, sp, #0xec
   14788: 6fa0         	ldr	r0, [r4, #0x78]
   1478a: 9a3a         	ldr	r2, [sp, #0xe8]
   1478c: 4541         	cmp	r1, r8
   1478e: f000 82c3    	beq.w	0x14d18 <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0x804> @ imm = #0x586
   14792: f104 0380    	add.w	r3, r4, #0x80
   14796: f8dd c0ec    	ldr.w	r12, [sp, #0xec]
   1479a: 4298         	cmp	r0, r3
   1479c: e9c4 121e    	strd	r1, r2, [r4, #120]
   147a0: f000 8314    	beq.w	0x14dcc <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0x8b8> @ imm = #0x628
   147a4: f8d4 3080    	ldr.w	r3, [r4, #0x80]
   147a8: f8c4 c080    	str.w	r12, [r4, #0x80]
   147ac: 2800         	cmp	r0, #0x0
   147ae: f000 830f    	beq.w	0x14dd0 <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0x8bc> @ imm = #0x61e
   147b2: 9039         	str	r0, [sp, #0xe4]
   147b4: 933b         	str	r3, [sp, #0xec]
   147b6: 2300         	movs	r3, #0x0
   147b8: 933a         	str	r3, [sp, #0xe8]
   147ba: 7003         	strb	r3, [r0]
   147bc: 9839         	ldr	r0, [sp, #0xe4]
   147be: 4540         	cmp	r0, r8
   147c0: d001         	beq	0x147c6 <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0x2b2> @ imm = #0x2
   147c2: f7f8 ef70    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x7120
   147c6: f8d5 1480    	ldr.w	r1, [r5, #0x480]
   147ca: a83f         	add	r0, sp, #0xfc
   147cc: f7fc fb74    	bl	0x10eb8 <_ZN7CAIAuth6GetMACB5cxx11Ev> @ imm = #-0x3918
   147d0: 993f         	ldr	r1, [sp, #0xfc]
   147d2: f50d 7882    	add.w	r8, sp, #0x104
   147d6: f8d4 0090    	ldr.w	r0, [r4, #0x90]
   147da: 9a40         	ldr	r2, [sp, #0x100]
   147dc: 4541         	cmp	r1, r8
   147de: f000 82a9    	beq.w	0x14d34 <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0x820> @ imm = #0x552
   147e2: f104 0398    	add.w	r3, r4, #0x98
   147e6: f8dd c104    	ldr.w	r12, [sp, #0x104]
   147ea: 4298         	cmp	r0, r3
   147ec: e9c4 1224    	strd	r1, r2, [r4, #144]
   147f0: f000 831c    	beq.w	0x14e2c <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0x918> @ imm = #0x638
   147f4: f8d4 3098    	ldr.w	r3, [r4, #0x98]
   147f8: f8c4 c098    	str.w	r12, [r4, #0x98]
   147fc: 2800         	cmp	r0, #0x0
   147fe: f000 8317    	beq.w	0x14e30 <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0x91c> @ imm = #0x62e
   14802: 903f         	str	r0, [sp, #0xfc]
   14804: 9341         	str	r3, [sp, #0x104]
   14806: 2300         	movs	r3, #0x0
   14808: 9340         	str	r3, [sp, #0x100]
   1480a: 7003         	strb	r3, [r0]
   1480c: 983f         	ldr	r0, [sp, #0xfc]
   1480e: 4540         	cmp	r0, r8
   14810: d001         	beq	0x14816 <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0x302> @ imm = #0x2
   14812: f7f8 ef48    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x7170
   14816: f8d5 1480    	ldr.w	r1, [r5, #0x480]
   1481a: a845         	add	r0, sp, #0x114
   1481c: f7fc fa9c    	bl	0x10d58 <_ZN7CAIAuth11GetIPv4AddrB5cxx11Ev> @ imm = #-0x3ac8
   14820: 9945         	ldr	r1, [sp, #0x114]
   14822: f50d 788e    	add.w	r8, sp, #0x11c
   14826: f8d4 00a8    	ldr.w	r0, [r4, #0xa8]
   1482a: 9a46         	ldr	r2, [sp, #0x118]
   1482c: 4541         	cmp	r1, r8
   1482e: f000 829f    	beq.w	0x14d70 <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0x85c> @ imm = #0x53e
   14832: f104 03b0    	add.w	r3, r4, #0xb0
   14836: f8dd c11c    	ldr.w	r12, [sp, #0x11c]
   1483a: 4298         	cmp	r0, r3
   1483c: e9c4 122a    	strd	r1, r2, [r4, #168]
   14840: f000 82bc    	beq.w	0x14dbc <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0x8a8> @ imm = #0x578
   14844: f8d4 30b0    	ldr.w	r3, [r4, #0xb0]
   14848: f8c4 c0b0    	str.w	r12, [r4, #0xb0]
   1484c: 2800         	cmp	r0, #0x0
   1484e: f000 82b7    	beq.w	0x14dc0 <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0x8ac> @ imm = #0x56e
   14852: 9045         	str	r0, [sp, #0x114]
   14854: 9347         	str	r3, [sp, #0x11c]
   14856: 2300         	movs	r3, #0x0
   14858: 9346         	str	r3, [sp, #0x118]
   1485a: 7003         	strb	r3, [r0]
   1485c: 9845         	ldr	r0, [sp, #0x114]
   1485e: 4540         	cmp	r0, r8
   14860: d001         	beq	0x14866 <_ZN14CAIAuthInfoMgr18m_SetReqAtokenInfoEP21_APPS_REQ_ATOKEN_INFO+0x352> @ imm = #0x2
   14862: f7f8 ef20    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x71c0
   14866: f8d5 1480    	ldr.w	r1, [r5, #0x480]
   1486a: a84b         	add	r0, sp, #0x12c
   1486c: f7fb fb28    	bl	0xfec0 <_ZN7CAIAuth12GetTVVersionB5cxx11Ev> @ imm = #-0x49b0
