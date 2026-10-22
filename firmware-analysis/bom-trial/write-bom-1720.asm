
firmware-analysis/US-1720.7/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

454ee468 <factory_write_bom_model>:
454ee468: b5f0         	push	{r4, r5, r6, r7, lr}
454ee46a: b085         	sub	sp, #0x14
454ee46c: 2800         	cmp	r0, #0x0
454ee46e: d040         	beq	0x454ee4f2 <factory_write_bom_model+0x8a> @ imm = #0x80
454ee470: 460e         	mov	r6, r1
454ee472: 2900         	cmp	r1, #0x0
454ee474: d03d         	beq	0x454ee4f2 <factory_write_bom_model+0x8a> @ imm = #0x7a
454ee476: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x454ee538 <factory_write_bom_model+0xd0>
454ee478: 2913         	cmp	r1, #0x13
454ee47a: 4a30         	ldr	r2, [pc, #0xc0]         @ 0x454ee53c <factory_write_bom_model+0xd4>
454ee47c: 460d         	mov	r5, r1
454ee47e: 447b         	add	r3, pc
454ee480: bfa8         	it	ge
454ee482: 2513         	movge	r5, #0x13
454ee484: 447a         	add	r2, pc
454ee486: 3345         	adds	r3, #0x45
454ee488: e9cd 3200    	strd	r3, r2, [sp]
454ee48c: 4604         	mov	r4, r0
454ee48e: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x454ee540 <factory_write_bom_model+0xd8>
454ee490: 2103         	movs	r1, #0x3
454ee492: 4a2c         	ldr	r2, [pc, #0xb0]         @ 0x454ee544 <factory_write_bom_model+0xdc>
454ee494: 2002         	movs	r0, #0x2
454ee496: 447b         	add	r3, pc
454ee498: f240 274e    	movw	r7, #0x24e
454ee49c: 447a         	add	r2, pc
454ee49e: 9503         	str	r5, [sp, #0xc]
454ee4a0: 9702         	str	r7, [sp, #0x8]
454ee4a2: f7e6 ec96    	blx	0x454d4dd0 <__dlog_print@plt> @ imm = #-0x196d4
454ee4a6: 2e00         	cmp	r6, #0x0
454ee4a8: dd38         	ble	0x454ee51c <factory_write_bom_model+0xb4> @ imm = #0x70
454ee4aa: 1e61         	subs	r1, r4, #0x1
454ee4ac: e001         	b	0x454ee4b2 <factory_write_bom_model+0x4a> @ imm = #0x2
454ee4ae: 42ab         	cmp	r3, r5
454ee4b0: da34         	bge	0x454ee51c <factory_write_bom_model+0xb4> @ imm = #0x68
454ee4b2: 460b         	mov	r3, r1
454ee4b4: f911 0f01    	ldrsb	r0, [r1, #1]!
454ee4b8: 3302         	adds	r3, #0x2
454ee4ba: f1a0 0221    	sub.w	r2, r0, #0x21
454ee4be: 1b1b         	subs	r3, r3, r4
454ee4c0: b2d2         	uxtb	r2, r2
454ee4c2: 2a5d         	cmp	r2, #0x5d
454ee4c4: d9f3         	bls	0x454ee4ae <factory_write_bom_model+0x46> @ imm = #-0x1a
454ee4c6: 4b20         	ldr	r3, [pc, #0x80]         @ 0x454ee548 <factory_write_bom_model+0xe0>
454ee4c8: 2106         	movs	r1, #0x6
454ee4ca: 4a20         	ldr	r2, [pc, #0x80]         @ 0x454ee54c <factory_write_bom_model+0xe4>
454ee4cc: f240 2459    	movw	r4, #0x259
454ee4d0: 447b         	add	r3, pc
454ee4d2: 9003         	str	r0, [sp, #0xc]
454ee4d4: 447a         	add	r2, pc
454ee4d6: 3345         	adds	r3, #0x45
454ee4d8: 9201         	str	r2, [sp, #0x4]
454ee4da: 2002         	movs	r0, #0x2
454ee4dc: 9300         	str	r3, [sp]
454ee4de: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x454ee550 <factory_write_bom_model+0xe8>
454ee4e0: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x454ee554 <factory_write_bom_model+0xec>
454ee4e2: 447a         	add	r2, pc
454ee4e4: 9402         	str	r4, [sp, #0x8]
454ee4e6: 447b         	add	r3, pc
454ee4e8: f7e6 ec72    	blx	0x454d4dd0 <__dlog_print@plt> @ imm = #-0x1971c
454ee4ec: 2000         	movs	r0, #0x0
454ee4ee: b005         	add	sp, #0x14
454ee4f0: bdf0         	pop	{r4, r5, r6, r7, pc}
454ee4f2: 4b19         	ldr	r3, [pc, #0x64]         @ 0x454ee558 <factory_write_bom_model+0xf0>
454ee4f4: f44f 7412    	mov.w	r4, #0x248
454ee4f8: 4a18         	ldr	r2, [pc, #0x60]         @ 0x454ee55c <factory_write_bom_model+0xf4>
454ee4fa: 2106         	movs	r1, #0x6
454ee4fc: 447b         	add	r3, pc
454ee4fe: 9402         	str	r4, [sp, #0x8]
454ee500: 447a         	add	r2, pc
454ee502: 3345         	adds	r3, #0x45
454ee504: e9cd 3200    	strd	r3, r2, [sp]
454ee508: 2002         	movs	r0, #0x2
454ee50a: 4b15         	ldr	r3, [pc, #0x54]         @ 0x454ee560 <factory_write_bom_model+0xf8>
454ee50c: 4a15         	ldr	r2, [pc, #0x54]         @ 0x454ee564 <factory_write_bom_model+0xfc>
454ee50e: 447b         	add	r3, pc
454ee510: 447a         	add	r2, pc
454ee512: f7e6 ec5e    	blx	0x454d4dd0 <__dlog_print@plt> @ imm = #-0x19744
454ee516: 2000         	movs	r0, #0x0
454ee518: b005         	add	sp, #0x14
454ee51a: bdf0         	pop	{r4, r5, r6, r7, pc}
454ee51c: f7e7 e940    	blx	0x454d57a0 <_ZN10FCNvramMap11GetInstanceEv@plt> @ imm = #-0x18d80
454ee520: 2800         	cmp	r0, #0x0
454ee522: d0e4         	beq	0x454ee4ee <factory_write_bom_model+0x86> @ imm = #-0x38
454ee524: 462a         	mov	r2, r5
454ee526: 4621         	mov	r1, r4
454ee528: f7e5 efb8    	blx	0x454d449c <_ZN10FCNvramMap13WriteBomModelEPKcj@plt> @ imm = #-0x1a090
454ee52c: fab0 f080    	clz	r0, r0
454ee530: 0940         	lsrs	r0, r0, #0x5
454ee532: b005         	add	sp, #0x14
454ee534: bdf0         	pop	{r4, r5, r6, r7, pc}
454ee536: bf00         	nop
454ee538: 668a         	str	r2, [r1, #0x68]
454ee53a: 0000         	movs	r0, r0
454ee53c: c580         	stm	r5!, {r7}
454ee53e: 0000         	movs	r0, r0
454ee540: c45a         	stm	r4!, {r1, r3, r4, r6}
454ee542: 0000         	movs	r0, r0
454ee544: 5e78         	ldrsh	r0, [r7, r1]
454ee546: 0000         	movs	r0, r0
454ee548: 6638         	str	r0, [r7, #0x60]
454ee54a: 0000         	movs	r0, r0
454ee54c: c530         	stm	r5!, {r4, r5}
454ee54e: 0000         	movs	r0, r0
454ee550: 5e32         	ldrsh	r2, [r6, r0]
454ee552: 0000         	movs	r0, r0
454ee554: c46a         	stm	r4!, {r1, r3, r5, r6}
454ee556: 0000         	movs	r0, r0
454ee558: 660c         	str	r4, [r1, #0x60]
454ee55a: 0000         	movs	r0, r0
454ee55c: c504         	stm	r5!, {r2}
454ee55e: 0000         	movs	r0, r0
454ee560: c4d2         	stm	r4!, {r1, r4, r6, r7}
454ee562: 0000         	movs	r0, r0
454ee564: 5e04         	ldrsh	r4, [r0, r0]
454ee566: 0000         	movs	r0, r0
