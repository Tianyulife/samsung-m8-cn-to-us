
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44efefd0 <factory_get_item>:
44efefd0: e92d 47f0    	push.w	{r4, r5, r6, r7, r8, r9, r10, lr}
44efefd4: 4681         	mov	r9, r0
44efefd6: 4b5a         	ldr	r3, [pc, #0x168]        @ 0x44eff140 <factory_get_item+0x170>
44efefd8: b08a         	sub	sp, #0x28
44efefda: 4d5a         	ldr	r5, [pc, #0x168]        @ 0x44eff144 <factory_get_item+0x174>
44efefdc: f8df 8168    	ldr.w	r8, [pc, #0x168]        @ 0x44eff148 <factory_get_item+0x178>
44efefe0: 447b         	add	r3, pc
44efefe2: 4c5a         	ldr	r4, [pc, #0x168]        @ 0x44eff14c <factory_get_item+0x17c>
44efefe4: 447d         	add	r5, pc
44efefe6: 9003         	str	r0, [sp, #0xc]
44efefe8: f103 0a45    	add.w	r10, r3, #0x45
44efefec: f44f 708d    	mov.w	r0, #0x11a
44efeff0: 4f57         	ldr	r7, [pc, #0x15c]        @ 0x44eff150 <factory_get_item+0x180>
44efeff2: 9002         	str	r0, [sp, #0x8]
44efeff4: 44f8         	add	r8, pc
44efeff6: e9cd a800    	strd	r10, r8, [sp]
44efeffa: 447f         	add	r7, pc
44efeffc: 4b55         	ldr	r3, [pc, #0x154]        @ 0x44eff154 <factory_get_item+0x184>
44efeffe: 460e         	mov	r6, r1
44eff000: 592c         	ldr	r4, [r5, r4]
44eff002: 463a         	mov	r2, r7
44eff004: 447b         	add	r3, pc
44eff006: 2103         	movs	r1, #0x3
44eff008: 2002         	movs	r0, #0x2
44eff00a: 6824         	ldr	r4, [r4]
44eff00c: 9409         	str	r4, [sp, #0x24]
44eff00e: f04f 0400    	mov.w	r4, #0x0
44eff012: 2500         	movs	r5, #0x0
44eff014: 9508         	str	r5, [sp, #0x20]
44eff016: 9506         	str	r5, [sp, #0x18]
44eff018: f7e5 eeda    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x1a24c
44eff01c: 2e00         	cmp	r6, #0x0
44eff01e: d05a         	beq	0x44eff0d6 <factory_get_item+0x106> @ imm = #0xb4
44eff020: f7e6 e8a4    	blx	0x44ee516c <_Z18get_ipc_connectionv@plt> @ imm = #-0x19eb8
44eff024: 4604         	mov	r4, r0
44eff026: 2800         	cmp	r0, #0x0
44eff028: d079         	beq	0x44eff11e <factory_get_item+0x14e> @ imm = #0xf2
44eff02a: 6035         	str	r5, [r6]
44eff02c: ac08         	add	r4, sp, #0x20
44eff02e: e9c6 5501    	strd	r5, r5, [r6, #4]
44eff032: 4649         	mov	r1, r9
44eff034: 60f5         	str	r5, [r6, #0xc]
44eff036: ab06         	add	r3, sp, #0x18
44eff038: 82b5         	strh	r5, [r6, #0x14]
44eff03a: aa07         	add	r2, sp, #0x1c
44eff03c: f886 507a    	strb.w	r5, [r6, #0x7a]
44eff040: 9401         	str	r4, [sp, #0x4]
44eff042: 9500         	str	r5, [sp]
44eff044: f7e5 ef50    	blx	0x44ee4ee8 <factory_proxy_call_get_item_sync@plt> @ imm = #-0x1a160
44eff048: 4604         	mov	r4, r0
44eff04a: b1f8         	cbz	r0, 0x44eff08c <factory_get_item+0xbc> @ imm = #0x3e
44eff04c: 4942         	ldr	r1, [pc, #0x108]        @ 0x44eff158 <factory_get_item+0x188>
44eff04e: aa05         	add	r2, sp, #0x14
44eff050: 9806         	ldr	r0, [sp, #0x18]
44eff052: 4479         	add	r1, pc
44eff054: f7e5 ef12    	blx	0x44ee4e7c <g_variant_get@plt> @ imm = #-0x1a1dc
44eff058: 9806         	ldr	r0, [sp, #0x18]
44eff05a: f7e6 e806    	blx	0x44ee5068 <g_variant_unref@plt> @ imm = #-0x19ff4
44eff05e: 9c05         	ldr	r4, [sp, #0x14]
44eff060: 2c00         	cmp	r4, #0x0
44eff062: d048         	beq	0x44eff0f6 <factory_get_item+0x126> @ imm = #0x90
44eff064: 9807         	ldr	r0, [sp, #0x1c]
44eff066: 4631         	mov	r1, r6
44eff068: f7e8 f84e    	bl	0x44ee7108 <_ZN19FCStorageRegionATSCD0Ev+0x9dc> @ imm = #-0x17f64
44eff06c: 9807         	ldr	r0, [sp, #0x1c]
44eff06e: 2401         	movs	r4, #0x1
44eff070: f7e5 effa    	blx	0x44ee5068 <g_variant_unref@plt> @ imm = #-0x1a00c
44eff074: 4a39         	ldr	r2, [pc, #0xe4]         @ 0x44eff15c <factory_get_item+0x18c>
44eff076: 4b35         	ldr	r3, [pc, #0xd4]         @ 0x44eff14c <factory_get_item+0x17c>
44eff078: 447a         	add	r2, pc
44eff07a: 58d3         	ldr	r3, [r2, r3]
44eff07c: 681a         	ldr	r2, [r3]
44eff07e: 9b09         	ldr	r3, [sp, #0x24]
44eff080: 405a         	eors	r2, r3
44eff082: d15b         	bne	0x44eff13c <factory_get_item+0x16c> @ imm = #0xb6
44eff084: 4620         	mov	r0, r4
44eff086: b00a         	add	sp, #0x28
44eff088: e8bd 87f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, pc}
44eff08c: f240 1333    	movw	r3, #0x133
44eff090: 9302         	str	r3, [sp, #0x8]
44eff092: 4b33         	ldr	r3, [pc, #0xcc]         @ 0x44eff160 <factory_get_item+0x190>
44eff094: 463a         	mov	r2, r7
44eff096: 2106         	movs	r1, #0x6
44eff098: 2002         	movs	r0, #0x2
44eff09a: 447b         	add	r3, pc
44eff09c: f8cd 8004    	str.w	r8, [sp, #0x4]
44eff0a0: f8cd a000    	str.w	r10, [sp]
44eff0a4: f7e5 ee94    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x1a2d8
44eff0a8: 9b08         	ldr	r3, [sp, #0x20]
44eff0aa: 2b00         	cmp	r3, #0x0
44eff0ac: d0e2         	beq	0x44eff074 <factory_get_item+0xa4> @ imm = #-0x3c
44eff0ae: 689b         	ldr	r3, [r3, #0x8]
44eff0b0: 463a         	mov	r2, r7
44eff0b2: 9303         	str	r3, [sp, #0xc]
44eff0b4: f44f 739b    	mov.w	r3, #0x136
44eff0b8: 9302         	str	r3, [sp, #0x8]
44eff0ba: 2106         	movs	r1, #0x6
44eff0bc: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x44eff164 <factory_get_item+0x194>
44eff0be: 2002         	movs	r0, #0x2
44eff0c0: f8cd 8004    	str.w	r8, [sp, #0x4]
44eff0c4: 447b         	add	r3, pc
44eff0c6: f8cd a000    	str.w	r10, [sp]
44eff0ca: f7e5 ee82    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x1a2fc
44eff0ce: 9808         	ldr	r0, [sp, #0x20]
44eff0d0: f7e5 ea56    	blx	0x44ee4580 <g_error_free@plt> @ imm = #-0x1ab54
44eff0d4: e7ce         	b	0x44eff074 <factory_get_item+0xa4> @ imm = #-0x64
44eff0d6: 4b24         	ldr	r3, [pc, #0x90]         @ 0x44eff168 <factory_get_item+0x198>
44eff0d8: f44f 708f    	mov.w	r0, #0x11e
44eff0dc: 463a         	mov	r2, r7
44eff0de: 9002         	str	r0, [sp, #0x8]
44eff0e0: 447b         	add	r3, pc
44eff0e2: 2106         	movs	r1, #0x6
44eff0e4: f8cd 8004    	str.w	r8, [sp, #0x4]
44eff0e8: 2002         	movs	r0, #0x2
44eff0ea: f8cd a000    	str.w	r10, [sp]
44eff0ee: 4634         	mov	r4, r6
44eff0f0: f7e5 ee6e    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x1a324
44eff0f4: e7be         	b	0x44eff074 <factory_get_item+0xa4> @ imm = #-0x84
44eff0f6: 9807         	ldr	r0, [sp, #0x1c]
44eff0f8: f7e5 efb6    	blx	0x44ee5068 <g_variant_unref@plt> @ imm = #-0x1a094
44eff0fc: f44f 73a2    	mov.w	r3, #0x144
44eff100: 9302         	str	r3, [sp, #0x8]
44eff102: 463a         	mov	r2, r7
44eff104: 4b19         	ldr	r3, [pc, #0x64]         @ 0x44eff16c <factory_get_item+0x19c>
44eff106: 4620         	mov	r0, r4
44eff108: 9905         	ldr	r1, [sp, #0x14]
44eff10a: 9103         	str	r1, [sp, #0xc]
44eff10c: 447b         	add	r3, pc
44eff10e: 2104         	movs	r1, #0x4
44eff110: f8cd 8004    	str.w	r8, [sp, #0x4]
44eff114: f8cd a000    	str.w	r10, [sp]
44eff118: f7e5 ee5a    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x1a34c
44eff11c: e7aa         	b	0x44eff074 <factory_get_item+0xa4> @ imm = #-0xac
44eff11e: 4b14         	ldr	r3, [pc, #0x50]         @ 0x44eff170 <factory_get_item+0x1a0>
44eff120: f240 1025    	movw	r0, #0x125
44eff124: 463a         	mov	r2, r7
44eff126: 9002         	str	r0, [sp, #0x8]
44eff128: 447b         	add	r3, pc
44eff12a: 2106         	movs	r1, #0x6
44eff12c: f8cd 8004    	str.w	r8, [sp, #0x4]
44eff130: 2002         	movs	r0, #0x2
44eff132: f8cd a000    	str.w	r10, [sp]
44eff136: f7e5 ee4c    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x1a368
44eff13a: e79b         	b	0x44eff074 <factory_get_item+0xa4> @ imm = #-0xca
44eff13c: f7e5 eeaa    	blx	0x44ee4e94 <__stack_chk_fail@plt> @ imm = #-0x1a2ac
44eff140: 5b28         	ldrh	r0, [r5, r4]
44eff142: 0000         	movs	r0, r0
44eff144: 01d0         	lsls	r0, r2, #0x7
44eff146: 0002         	movs	r2, r0
44eff148: bda4         	pop	{r2, r5, r7, pc}
44eff14a: 0000         	movs	r0, r0
44eff14c: 0704         	lsls	r4, r0, #0x1c
44eff14e: 0000         	movs	r0, r0
44eff150: 531a         	strh	r2, [r3, r4]
44eff152: 0000         	movs	r0, r0
44eff154: bc40         	pop	{r6}
44eff156: 0000         	movs	r0, r0
44eff158: 5d8e         	ldrb	r6, [r1, r6]
44eff15a: 0000         	movs	r0, r0
44eff15c: 013c         	lsls	r4, r7, #0x4
44eff15e: 0002         	movs	r2, r0
44eff160: bd3a         	pop	{r1, r3, r4, r5, pc}
44eff162: 0000         	movs	r0, r0
44eff164: a2ac         	adr	r2, #688 <factory_get_child_item+0x34>
44eff166: 0000         	movs	r0, r0
44eff168: bccc         	pop	{r2, r3, r6, r7}
44eff16a: 0000         	movs	r0, r0
44eff16c: a938         	add	r1, sp, #0xe0
44eff16e: 0000         	movs	r0, r0
44eff170: a1d4         	adr	r1, #848 <factory_get_child_item+0x68>
44eff172: 0000         	movs	r0, r0
