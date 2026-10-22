
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44efe468 <factory_write_bom_model>:
44efe468: b5f0         	push	{r4, r5, r6, r7, lr}
44efe46a: b085         	sub	sp, #0x14
44efe46c: 2800         	cmp	r0, #0x0
44efe46e: d040         	beq	0x44efe4f2 <factory_write_bom_model+0x8a> @ imm = #0x80
44efe470: 460e         	mov	r6, r1
44efe472: 2900         	cmp	r1, #0x0
44efe474: d03d         	beq	0x44efe4f2 <factory_write_bom_model+0x8a> @ imm = #0x7a
44efe476: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x44efe538 <factory_write_bom_model+0xd0>
44efe478: 2913         	cmp	r1, #0x13
44efe47a: 4a30         	ldr	r2, [pc, #0xc0]         @ 0x44efe53c <factory_write_bom_model+0xd4>
44efe47c: 460d         	mov	r5, r1
44efe47e: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/factory-api-0.0.01/factory_interface/src/factory_interface_app.cpp'
44efe480: bfa8         	it	ge
44efe482: 2513         	movge	r5, #0x13
44efe484: 447a         	add	r2, pc ; STR 'factory_write_bom_model'
44efe486: 3345         	adds	r3, #0x45
44efe488: e9cd 3200    	strd	r3, r2, [sp]
44efe48c: 4604         	mov	r4, r0
44efe48e: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x44efe540 <factory_write_bom_model+0xd8>
44efe490: 2103         	movs	r1, #0x3
44efe492: 4a2c         	ldr	r2, [pc, #0xb0]         @ 0x44efe544 <factory_write_bom_model+0xdc>
44efe494: 2002         	movs	r0, #0x2
44efe496: 447b         	add	r3, pc
44efe498: f240 274e    	movw	r7, #0x24e
44efe49c: 447a         	add	r2, pc ; STR 'FACTORYAPI'
44efe49e: 9503         	str	r5, [sp, #0xc]
44efe4a0: 9702         	str	r7, [sp, #0x8]
44efe4a2: f7e6 ec96    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x196d4
44efe4a6: 2e00         	cmp	r6, #0x0
44efe4a8: dd38         	ble	0x44efe51c <factory_write_bom_model+0xb4> @ imm = #0x70
44efe4aa: 1e61         	subs	r1, r4, #0x1
44efe4ac: e001         	b	0x44efe4b2 <factory_write_bom_model+0x4a> @ imm = #0x2
44efe4ae: 42ab         	cmp	r3, r5
44efe4b0: da34         	bge	0x44efe51c <factory_write_bom_model+0xb4> @ imm = #0x68
44efe4b2: 460b         	mov	r3, r1
44efe4b4: f911 0f01    	ldrsb	r0, [r1, #1]!
44efe4b8: 3302         	adds	r3, #0x2
44efe4ba: f1a0 0221    	sub.w	r2, r0, #0x21
44efe4be: 1b1b         	subs	r3, r3, r4
44efe4c0: b2d2         	uxtb	r2, r2
44efe4c2: 2a5d         	cmp	r2, #0x5d
44efe4c4: d9f3         	bls	0x44efe4ae <factory_write_bom_model+0x46> @ imm = #-0x1a
44efe4c6: 4b20         	ldr	r3, [pc, #0x80]         @ 0x44efe548 <factory_write_bom_model+0xe0>
44efe4c8: 2106         	movs	r1, #0x6
44efe4ca: 4a20         	ldr	r2, [pc, #0x80]         @ 0x44efe54c <factory_write_bom_model+0xe4>
44efe4cc: f240 2459    	movw	r4, #0x259
44efe4d0: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/factory-api-0.0.01/factory_interface/src/factory_interface_app.cpp'
44efe4d2: 9003         	str	r0, [sp, #0xc]
44efe4d4: 447a         	add	r2, pc ; STR 'factory_write_bom_model'
44efe4d6: 3345         	adds	r3, #0x45
44efe4d8: 9201         	str	r2, [sp, #0x4]
44efe4da: 2002         	movs	r0, #0x2
44efe4dc: 9300         	str	r3, [sp]
44efe4de: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x44efe550 <factory_write_bom_model+0xe8>
44efe4e0: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x44efe554 <factory_write_bom_model+0xec>
44efe4e2: 447a         	add	r2, pc ; STR 'FACTORYAPI'
44efe4e4: 9402         	str	r4, [sp, #0x8]
44efe4e6: 447b         	add	r3, pc
44efe4e8: f7e6 ec72    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x1971c
44efe4ec: 2000         	movs	r0, #0x0
44efe4ee: b005         	add	sp, #0x14
44efe4f0: bdf0         	pop	{r4, r5, r6, r7, pc}
44efe4f2: 4b19         	ldr	r3, [pc, #0x64]         @ 0x44efe558 <factory_write_bom_model+0xf0>
44efe4f4: f44f 7412    	mov.w	r4, #0x248
44efe4f8: 4a18         	ldr	r2, [pc, #0x60]         @ 0x44efe55c <factory_write_bom_model+0xf4>
44efe4fa: 2106         	movs	r1, #0x6
44efe4fc: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/factory-api-0.0.01/factory_interface/src/factory_interface_app.cpp'
44efe4fe: 9402         	str	r4, [sp, #0x8]
44efe500: 447a         	add	r2, pc ; STR 'factory_write_bom_model'
44efe502: 3345         	adds	r3, #0x45
44efe504: e9cd 3200    	strd	r3, r2, [sp]
44efe508: 2002         	movs	r0, #0x2
44efe50a: 4b15         	ldr	r3, [pc, #0x54]         @ 0x44efe560 <factory_write_bom_model+0xf8>
44efe50c: 4a15         	ldr	r2, [pc, #0x54]         @ 0x44efe564 <factory_write_bom_model+0xfc>
44efe50e: 447b         	add	r3, pc
44efe510: 447a         	add	r2, pc ; STR 'FACTORYAPI'
44efe512: f7e6 ec5e    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x19744
44efe516: 2000         	movs	r0, #0x0
44efe518: b005         	add	sp, #0x14
44efe51a: bdf0         	pop	{r4, r5, r6, r7, pc}
44efe51c: f7e7 e940    	blx	0x44ee57a0 <_ZN10FCNvramMap11GetInstanceEv@plt> @ imm = #-0x18d80
44efe520: 2800         	cmp	r0, #0x0
44efe522: d0e4         	beq	0x44efe4ee <factory_write_bom_model+0x86> @ imm = #-0x38
44efe524: 462a         	mov	r2, r5
44efe526: 4621         	mov	r1, r4
44efe528: f7e5 efb8    	blx	0x44ee449c <_ZN10FCNvramMap13WriteBomModelEPKcj@plt> @ imm = #-0x1a090
44efe52c: fab0 f080    	clz	r0, r0
44efe530: 0940         	lsrs	r0, r0, #0x5
44efe532: b005         	add	sp, #0x14
44efe534: bdf0         	pop	{r4, r5, r6, r7, pc}
44efe536: bf00         	nop
44efe538: 668a         	str	r2, [r1, #0x68]
44efe53a: 0000         	movs	r0, r0
44efe53c: c580         	stm	r5!, {r7}
44efe53e: 0000         	movs	r0, r0
44efe540: c45a         	stm	r4!, {r1, r3, r4, r6}
44efe542: 0000         	movs	r0, r0
44efe544: 5e78         	ldrsh	r0, [r7, r1]
44efe546: 0000         	movs	r0, r0
44efe548: 6638         	str	r0, [r7, #0x60]
44efe54a: 0000         	movs	r0, r0
44efe54c: c530         	stm	r5!, {r4, r5}
44efe54e: 0000         	movs	r0, r0
44efe550: 5e32         	ldrsh	r2, [r6, r0]
44efe552: 0000         	movs	r0, r0
44efe554: c46a         	stm	r4!, {r1, r3, r5, r6}
44efe556: 0000         	movs	r0, r0
44efe558: 660c         	str	r4, [r1, #0x60]
44efe55a: 0000         	movs	r0, r0
44efe55c: c504         	stm	r5!, {r2}
44efe55e: 0000         	movs	r0, r0
44efe560: c4d2         	stm	r4!, {r1, r4, r6, r7}
44efe562: 0000         	movs	r0, r0
44efe564: 5e04         	ldrsh	r4, [r0, r0]
44efe566: 0000         	movs	r0, r0
