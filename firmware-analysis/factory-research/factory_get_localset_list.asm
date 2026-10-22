
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44efdef8 <factory_get_localset_list>:
44efdef8: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
44efdefc: 4605         	mov	r5, r0
44efdefe: f8df 9294    	ldr.w	r9, [pc, #0x294]        @ 0x44efe194 <factory_get_localset_list+0x29c>
44efdf02: b09d         	sub	sp, #0x74
44efdf04: f8df c290    	ldr.w	r12, [pc, #0x290]       @ 0x44efe198 <factory_get_localset_list+0x2a0>
44efdf08: f8df b290    	ldr.w	r11, [pc, #0x290]       @ 0x44efe19c <factory_get_localset_list+0x2a4>
44efdf0c: 44f9         	add	r9, pc ; STR '/home/abuild/rpmbuild/BUILD/factory-api-0.0.01/factory_interface/src/factory_interface_app.cpp'
44efdf0e: 4ca4         	ldr	r4, [pc, #0x290]        @ 0x44efe1a0 <factory_get_localset_list+0x2a8>
44efdf10: 44fc         	add	r12, pc
44efdf12: f240 20da    	movw	r0, #0x2da
44efdf16: f8df a28c    	ldr.w	r10, [pc, #0x28c]       @ 0x44efe1a4 <factory_get_localset_list+0x2ac>
44efdf1a: 9002         	str	r0, [sp, #0x8]
44efdf1c: 44fb         	add	r11, pc ; STR 'factory_get_localset_list'
44efdf1e: f109 0945    	add.w	r9, r9, #0x45
44efdf22: e9cd 9b00    	strd	r9, r11, [sp]
44efdf26: 4ba0         	ldr	r3, [pc, #0x280]        @ 0x44efe1a8 <factory_get_localset_list+0x2b0>
44efdf28: 44fa         	add	r10, pc ; STR 'FACTORYAPI'
44efdf2a: f85c 4004    	ldr.w	r4, [r12, r4]
44efdf2e: 4617         	mov	r7, r2
44efdf30: 460e         	mov	r6, r1
44efdf32: 447b         	add	r3, pc
44efdf34: 4652         	mov	r2, r10
44efdf36: 2103         	movs	r1, #0x3
44efdf38: 2002         	movs	r0, #0x2
44efdf3a: 6824         	ldr	r4, [r4]
44efdf3c: 941b         	str	r4, [sp, #0x6c]
44efdf3e: f04f 0400    	mov.w	r4, #0x0
44efdf42: 2400         	movs	r4, #0x0
44efdf44: 940c         	str	r4, [sp, #0x30]
44efdf46: 940a         	str	r4, [sp, #0x28]
44efdf48: f7e6 ef42    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x1917c
44efdf4c: fab7 f387    	clz	r3, r7
44efdf50: 095b         	lsrs	r3, r3, #0x5
44efdf52: 42a6         	cmp	r6, r4
44efdf54: bf08         	it	eq
44efdf56: 2301         	moveq	r3, #0x1
44efdf58: 42a5         	cmp	r5, r4
44efdf5a: bf08         	it	eq
44efdf5c: 2301         	moveq	r3, #0x1
44efdf5e: 2b00         	cmp	r3, #0x0
44efdf60: d16e         	bne	0x44efe040 <factory_get_localset_list+0x148> @ imm = #0xdc
44efdf62: 4698         	mov	r8, r3
44efdf64: f7e7 e902    	blx	0x44ee516c <_Z18get_ipc_connectionv@plt> @ imm = #-0x18dfc
44efdf68: 4604         	mov	r4, r0
44efdf6a: 2800         	cmp	r0, #0x0
44efdf6c: f000 8097    	beq.w	0x44efe09e <factory_get_localset_list+0x1a6> @ imm = #0x12e
44efdf70: aa0c         	add	r2, sp, #0x30
44efdf72: 4643         	mov	r3, r8
44efdf74: 9200         	str	r2, [sp]
44efdf76: a90b         	add	r1, sp, #0x2c
44efdf78: aa0a         	add	r2, sp, #0x28
44efdf7a: f7e6 ee72    	blx	0x44ee4c60 <factory_proxy_call_get_local_set_list_no_sync@plt> @ imm = #-0x1931c
44efdf7e: 4604         	mov	r4, r0
44efdf80: 2800         	cmp	r0, #0x0
44efdf82: f000 80ca    	beq.w	0x44efe11a <factory_get_localset_list+0x222> @ imm = #0x194
44efdf86: 4989         	ldr	r1, [pc, #0x224]        @ 0x44efe1ac <factory_get_localset_list+0x2b4>
44efdf88: aa09         	add	r2, sp, #0x24
44efdf8a: 980a         	ldr	r0, [sp, #0x28]
44efdf8c: 4479         	add	r1, pc ; STR '(i)'
44efdf8e: f7e6 ef76    	blx	0x44ee4e7c <g_variant_get@plt> @ imm = #-0x19114
44efdf92: 980a         	ldr	r0, [sp, #0x28]
44efdf94: f7e7 e868    	blx	0x44ee5068 <g_variant_unref@plt> @ imm = #-0x18f30
44efdf98: 9c09         	ldr	r4, [sp, #0x24]
44efdf9a: 2c00         	cmp	r4, #0x0
44efdf9c: d06b         	beq	0x44efe076 <factory_get_localset_list+0x17e> @ imm = #0xd6
44efdf9e: 4984         	ldr	r1, [pc, #0x210]        @ 0x44efe1b0 <factory_get_localset_list+0x2b8>
44efdfa0: ab0d         	add	r3, sp, #0x34
44efdfa2: 980b         	ldr	r0, [sp, #0x2c]
44efdfa4: aa0e         	add	r2, sp, #0x38
44efdfa6: 4479         	add	r1, pc ; STR '(ii)'
44efdfa8: f10d 0a5c    	add.w	r10, sp, #0x5c
44efdfac: f8cd 801c    	str.w	r8, [sp, #0x1c]
44efdfb0: f7e6 ef64    	blx	0x44ee4e7c <g_variant_get@plt> @ imm = #-0x19138
44efdfb4: 980b         	ldr	r0, [sp, #0x2c]
44efdfb6: 4644         	mov	r4, r8
44efdfb8: f7e7 e856    	blx	0x44ee5068 <g_variant_unref@plt> @ imm = #-0x18f54
44efdfbc: 4653         	mov	r3, r10
44efdfbe: f8dd 9034    	ldr.w	r9, [sp, #0x34]
44efdfc2: 46aa         	mov	r10, r5
44efdfc4: f10d 083c    	add.w	r8, sp, #0x3c
44efdfc8: f10d 0b54    	add.w	r11, sp, #0x54
44efdfcc: 461d         	mov	r5, r3
44efdfce: e005         	b	0x44efdfdc <factory_get_localset_list+0xe4> @ imm = #0xa
44efdfd0: f109 39ff    	add.w	r9, r9, #0xffffffff
44efdfd4: 9b0e         	ldr	r3, [sp, #0x38]
44efdfd6: 3401         	adds	r4, #0x1
44efdfd8: 42a3         	cmp	r3, r4
44efdfda: d30f         	blo	0x44efdffc <factory_get_localset_list+0x104> @ imm = #0x1e
44efdfdc: 4641         	mov	r1, r8
44efdfde: 4620         	mov	r0, r4
44efdfe0: f7e6 eb12    	blx	0x44ee4608 <factory_get_localset_str@plt> @ imm = #-0x199dc
44efdfe4: 2801         	cmp	r0, #0x1
44efdfe6: d069         	beq	0x44efe0bc <factory_get_localset_list+0x1c4> @ imm = #0xd2
44efdfe8: 9b0d         	ldr	r3, [sp, #0x34]
44efdfea: 42a3         	cmp	r3, r4
44efdfec: d8f0         	bhi	0x44efdfd0 <factory_get_localset_list+0xd8> @ imm = #-0x20
44efdfee: d1f1         	bne	0x44efdfd4 <factory_get_localset_list+0xdc> @ imm = #-0x1e
44efdff0: 2301         	movs	r3, #0x1
44efdff2: 9307         	str	r3, [sp, #0x1c]
44efdff4: 9b0e         	ldr	r3, [sp, #0x38]
44efdff6: 3401         	adds	r4, #0x1
44efdff8: 42a3         	cmp	r3, r4
44efdffa: d2ef         	bhs	0x44efdfdc <factory_get_localset_list+0xe4> @ imm = #-0x22
44efdffc: 9a07         	ldr	r2, [sp, #0x1c]
44efdffe: f240 351f    	movw	r5, #0x31f
44efe002: 6033         	str	r3, [r6]
44efe004: 2103         	movs	r1, #0x3
44efe006: 2a01         	cmp	r2, #0x1
44efe008: 4b6a         	ldr	r3, [pc, #0x1a8]        @ 0x44efe1b4 <factory_get_localset_list+0x2bc>
44efe00a: f04f 0200    	mov.w	r2, #0x0
44efe00e: f04f 0401    	mov.w	r4, #0x1
44efe012: bf08         	it	eq
44efe014: 4691         	moveq	r9, r2
44efe016: 4a68         	ldr	r2, [pc, #0x1a0]        @ 0x44efe1b8 <factory_get_localset_list+0x2c0>
44efe018: f8c7 9000    	str.w	r9, [r7]
44efe01c: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/factory-api-0.0.01/factory_interface/src/factory_interface_app.cpp'
44efe01e: 447a         	add	r2, pc ; STR 'factory_get_localset_list'
44efe020: 3345         	adds	r3, #0x45
44efe022: 6830         	ldr	r0, [r6]
44efe024: e9cd 3200    	strd	r3, r2, [sp]
44efe028: 4b64         	ldr	r3, [pc, #0x190]        @ 0x44efe1bc <factory_get_localset_list+0x2c4>
44efe02a: 4a65         	ldr	r2, [pc, #0x194]        @ 0x44efe1c0 <factory_get_localset_list+0x2c8>
44efe02c: 9003         	str	r0, [sp, #0xc]
44efe02e: 447b         	add	r3, pc
44efe030: 447a         	add	r2, pc ; STR 'FACTORYAPI'
44efe032: f8cd 9010    	str.w	r9, [sp, #0x10]
44efe036: 9502         	str	r5, [sp, #0x8]
44efe038: 2002         	movs	r0, #0x2
44efe03a: f7e6 eeca    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x1926c
44efe03e: e00d         	b	0x44efe05c <factory_get_localset_list+0x164> @ imm = #0x1a
44efe040: 4b60         	ldr	r3, [pc, #0x180]        @ 0x44efe1c4 <factory_get_localset_list+0x2cc>
44efe042: f240 20de    	movw	r0, #0x2de
44efe046: 4652         	mov	r2, r10
44efe048: 9002         	str	r0, [sp, #0x8]
44efe04a: 447b         	add	r3, pc
44efe04c: 2106         	movs	r1, #0x6
44efe04e: 2002         	movs	r0, #0x2
44efe050: f8cd b004    	str.w	r11, [sp, #0x4]
44efe054: f8cd 9000    	str.w	r9, [sp]
44efe058: f7e6 eeba    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x1928c
44efe05c: 4a5a         	ldr	r2, [pc, #0x168]        @ 0x44efe1c8 <factory_get_localset_list+0x2d0>
44efe05e: 4b50         	ldr	r3, [pc, #0x140]        @ 0x44efe1a0 <factory_get_localset_list+0x2a8>
44efe060: 447a         	add	r2, pc
44efe062: 58d3         	ldr	r3, [r2, r3]
44efe064: 681a         	ldr	r2, [r3]
44efe066: 9b1b         	ldr	r3, [sp, #0x6c]
44efe068: 405a         	eors	r2, r3
44efe06a: f040 8087    	bne.w	0x44efe17c <factory_get_localset_list+0x284> @ imm = #0x10e
44efe06e: 4620         	mov	r0, r4
44efe070: b01d         	add	sp, #0x74
44efe072: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
44efe076: 980b         	ldr	r0, [sp, #0x2c]
44efe078: f7e6 eff6    	blx	0x44ee5068 <g_variant_unref@plt> @ imm = #-0x19014
44efe07c: f240 23fe    	movw	r3, #0x2fe
44efe080: 9302         	str	r3, [sp, #0x8]
44efe082: 4652         	mov	r2, r10
44efe084: 4b51         	ldr	r3, [pc, #0x144]        @ 0x44efe1cc <factory_get_localset_list+0x2d4>
44efe086: 4620         	mov	r0, r4
44efe088: 9909         	ldr	r1, [sp, #0x24]
44efe08a: 9103         	str	r1, [sp, #0xc]
44efe08c: 447b         	add	r3, pc
44efe08e: 2104         	movs	r1, #0x4
44efe090: f8cd b004    	str.w	r11, [sp, #0x4]
44efe094: f8cd 9000    	str.w	r9, [sp]
44efe098: f7e6 ee9a    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x192cc
44efe09c: e7de         	b	0x44efe05c <factory_get_localset_list+0x164> @ imm = #-0x44
44efe09e: 4b4c         	ldr	r3, [pc, #0x130]        @ 0x44efe1d0 <factory_get_localset_list+0x2d8>
44efe0a0: f44f 703a    	mov.w	r0, #0x2e8
44efe0a4: 4652         	mov	r2, r10
44efe0a6: 9002         	str	r0, [sp, #0x8]
44efe0a8: 447b         	add	r3, pc
44efe0aa: 2106         	movs	r1, #0x6
44efe0ac: f8cd b004    	str.w	r11, [sp, #0x4]
44efe0b0: 2002         	movs	r0, #0x2
44efe0b2: f8cd 9000    	str.w	r9, [sp]
44efe0b6: f7e6 ee8c    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x192e8
44efe0ba: e7cf         	b	0x44efe05c <factory_get_localset_list+0x164> @ imm = #-0x62
44efe0bc: 4640         	mov	r0, r8
44efe0be: 9515         	str	r5, [sp, #0x54]
44efe0c0: f7e7 e922    	blx	0x44ee5308 <strlen@plt> @ imm = #-0x18dbc
44efe0c4: 4641         	mov	r1, r8
44efe0c6: eb08 0200    	add.w	r2, r8, r0
44efe0ca: 4658         	mov	r0, r11
44efe0cc: f7e9 f88e    	bl	0x44ee71ec <_ZN19FCStorageRegionATSCD0Ev+0xac0> @ imm = #-0x16ee4
44efe0d0: 2020         	movs	r0, #0x20
44efe0d2: f7e6 e96e    	blx	0x44ee43b0 <_Znwj@plt>  @ imm = #-0x19d24
44efe0d6: 9b15         	ldr	r3, [sp, #0x54]
44efe0d8: f100 0210    	add.w	r2, r0, #0x10
44efe0dc: 4684         	mov	r12, r0
44efe0de: 6082         	str	r2, [r0, #0x8]
44efe0e0: 42ab         	cmp	r3, r5
44efe0e2: d03f         	beq	0x44efe164 <factory_get_localset_list+0x26c> @ imm = #0x7e
44efe0e4: 9a17         	ldr	r2, [sp, #0x5c]
44efe0e6: 6083         	str	r3, [r0, #0x8]
44efe0e8: 6102         	str	r2, [r0, #0x10]
44efe0ea: 9b16         	ldr	r3, [sp, #0x58]
44efe0ec: 4660         	mov	r0, r12
44efe0ee: f8cc 300c    	str.w	r3, [r12, #0xc]
44efe0f2: 4651         	mov	r1, r10
44efe0f4: 2300         	movs	r3, #0x0
44efe0f6: 9515         	str	r5, [sp, #0x54]
44efe0f8: 9316         	str	r3, [sp, #0x58]
44efe0fa: f88d 305c    	strb.w	r3, [sp, #0x5c]
44efe0fe: f7e6 e96a    	blx	0x44ee43d4 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_@plt> @ imm = #-0x19d2c
44efe102: f8da 3008    	ldr.w	r3, [r10, #0x8]
44efe106: 9815         	ldr	r0, [sp, #0x54]
44efe108: 3301         	adds	r3, #0x1
44efe10a: f8ca 3008    	str.w	r3, [r10, #0x8]
44efe10e: 42a8         	cmp	r0, r5
44efe110: f43f af60    	beq.w	0x44efdfd4 <factory_get_localset_list+0xdc> @ imm = #-0x140
44efe114: f7e6 edb2    	blx	0x44ee4c7c <_ZdlPv@plt> @ imm = #-0x1949c
44efe118: e75c         	b	0x44efdfd4 <factory_get_localset_list+0xdc> @ imm = #-0x148
44efe11a: f240 23ee    	movw	r3, #0x2ee
44efe11e: 9302         	str	r3, [sp, #0x8]
44efe120: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x44efe1d4 <factory_get_localset_list+0x2dc>
44efe122: 4652         	mov	r2, r10
44efe124: 2106         	movs	r1, #0x6
44efe126: 2002         	movs	r0, #0x2
44efe128: 447b         	add	r3, pc
44efe12a: f8cd b004    	str.w	r11, [sp, #0x4]
44efe12e: f8cd 9000    	str.w	r9, [sp]
44efe132: f7e6 ee4e    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x19364
44efe136: 9b0c         	ldr	r3, [sp, #0x30]
44efe138: 2b00         	cmp	r3, #0x0
44efe13a: d08f         	beq	0x44efe05c <factory_get_localset_list+0x164> @ imm = #-0xe2
44efe13c: 689b         	ldr	r3, [r3, #0x8]
44efe13e: 4652         	mov	r2, r10
44efe140: 9303         	str	r3, [sp, #0xc]
44efe142: f240 23f1    	movw	r3, #0x2f1
44efe146: 9302         	str	r3, [sp, #0x8]
44efe148: 2106         	movs	r1, #0x6
44efe14a: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x44efe1d8 <factory_get_localset_list+0x2e0>
44efe14c: 2002         	movs	r0, #0x2
44efe14e: f8cd b004    	str.w	r11, [sp, #0x4]
44efe152: 447b         	add	r3, pc
44efe154: f8cd 9000    	str.w	r9, [sp]
44efe158: f7e6 ee3a    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x1938c
44efe15c: 980c         	ldr	r0, [sp, #0x30]
44efe15e: f7e6 ea10    	blx	0x44ee4580 <g_error_free@plt> @ imm = #-0x19be0
44efe162: e77b         	b	0x44efe05c <factory_get_localset_list+0x164> @ imm = #-0x10a
44efe164: 46ae         	mov	lr, r5
44efe166: e8be 000f    	ldm.w	lr!, {r0, r1, r2, r3}
44efe16a: f8cc 0010    	str.w	r0, [r12, #0x10]
44efe16e: f8cc 1014    	str.w	r1, [r12, #0x14]
44efe172: f8cc 2018    	str.w	r2, [r12, #0x18]
44efe176: f8cc 301c    	str.w	r3, [r12, #0x1c]
44efe17a: e7b6         	b	0x44efe0ea <factory_get_localset_list+0x1f2> @ imm = #-0x94
44efe17c: f7e6 ee8a    	blx	0x44ee4e94 <__stack_chk_fail@plt> @ imm = #-0x192ec
44efe180: 9b15         	ldr	r3, [sp, #0x54]
44efe182: 4604         	mov	r4, r0
44efe184: 42ab         	cmp	r3, r5
44efe186: d002         	beq	0x44efe18e <factory_get_localset_list+0x296> @ imm = #0x4
44efe188: 4618         	mov	r0, r3
44efe18a: f7e6 ed78    	blx	0x44ee4c7c <_ZdlPv@plt> @ imm = #-0x19510
44efe18e: 4620         	mov	r0, r4
44efe190: f7e7 ea1a    	blx	0x44ee55c8 <_Unwind_Resume@plt> @ imm = #-0x18bcc
44efe194: 6bfc         	ldr	r4, [r7, #0x3c]
44efe196: 0000         	movs	r0, r0
44efe198: 12a4         	asrs	r4, r4, #0xa
44efe19a: 0002         	movs	r2, r0
44efe19c: c99c         	ldm	r1!, {r2, r3, r4, r7}
44efe19e: 0000         	movs	r0, r0
44efe1a0: 0704         	lsls	r4, r0, #0x1c
44efe1a2: 0000         	movs	r0, r0
44efe1a4: 63ec         	str	r4, [r5, #0x3c]
44efe1a6: 0000         	movs	r0, r0
44efe1a8: b5b2         	push	{r1, r4, r5, r7, lr}
44efe1aa: 0000         	movs	r0, r0
44efe1ac: 6e54         	ldr	r4, [r2, #0x64]
44efe1ae: 0000         	movs	r0, r0
44efe1b0: 6e7a         	ldr	r2, [r7, #0x64]
44efe1b2: 0000         	movs	r0, r0
44efe1b4: 6aec         	ldr	r4, [r5, #0x2c]
44efe1b6: 0000         	movs	r0, r0
44efe1b8: c89a         	ldm	r0!, {r1, r3, r4, r7}
44efe1ba: 0000         	movs	r0, r0
44efe1bc: c8a6         	ldm	r0!, {r1, r2, r5, r7}
44efe1be: 0000         	movs	r0, r0
44efe1c0: 62e4         	str	r4, [r4, #0x2c]
44efe1c2: 0000         	movs	r0, r0
44efe1c4: b4d2         	push	{r1, r4, r6, r7}
44efe1c6: 0000         	movs	r0, r0
44efe1c8: 1154         	asrs	r4, r2, #0x5
44efe1ca: 0002         	movs	r2, r0
44efe1cc: b9b8         	cbnz	r0, 0x44efe1fe <factory_write_serial_number+0x22> @ imm = #0x2e
44efe1ce: 0000         	movs	r0, r0
44efe1d0: b254         	sxtb	r4, r2
44efe1d2: 0000         	movs	r0, r0
44efe1d4: b410         	push	{r4}
44efe1d6: 0000         	movs	r0, r0
44efe1d8: b21e         	sxth	r6, r3
44efe1da: 0000         	movs	r0, r0
