
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44efe568 <factory_get_bom_model>:
44efe568: b530         	push	{r4, r5, lr}
44efe56a: 2900         	cmp	r1, #0x0
44efe56c: bf18         	it	ne
44efe56e: 2800         	cmpne	r0, #0x0
44efe570: b085         	sub	sp, #0x14
44efe572: d00d         	beq	0x44efe590 <factory_get_bom_model+0x28> @ imm = #0x1a
44efe574: 4604         	mov	r4, r0
44efe576: 460d         	mov	r5, r1
44efe578: f7e7 e912    	blx	0x44ee57a0 <_ZN10FCNvramMap11GetInstanceEv@plt> @ imm = #-0x18ddc
44efe57c: b130         	cbz	r0, 0x44efe58c <factory_get_bom_model+0x24> @ imm = #0xc
44efe57e: 462a         	mov	r2, r5
44efe580: 4621         	mov	r1, r4
44efe582: f7e6 ea4e    	blx	0x44ee4a20 <_ZN10FCNvramMap11GetBomModelEPcPi@plt> @ imm = #-0x19b64
44efe586: fab0 f080    	clz	r0, r0
44efe58a: 0940         	lsrs	r0, r0, #0x5
44efe58c: b005         	add	sp, #0x14
44efe58e: bd30         	pop	{r4, r5, pc}
44efe590: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x44efe5bc <factory_get_bom_model+0x54>
44efe592: 2106         	movs	r1, #0x6
44efe594: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x44efe5c0 <factory_get_bom_model+0x58>
44efe596: f240 2433    	movw	r4, #0x233
44efe59a: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/factory-api-0.0.01/factory_interface/src/factory_interface_app.cpp'
44efe59c: 9402         	str	r4, [sp, #0x8]
44efe59e: 447a         	add	r2, pc ; STR 'factory_get_bom_model'
44efe5a0: 3345         	adds	r3, #0x45
44efe5a2: e9cd 3200    	strd	r3, r2, [sp]
44efe5a6: 2002         	movs	r0, #0x2
44efe5a8: 4b06         	ldr	r3, [pc, #0x18]         @ 0x44efe5c4 <factory_get_bom_model+0x5c>
44efe5aa: 4a07         	ldr	r2, [pc, #0x1c]         @ 0x44efe5c8 <factory_get_bom_model+0x60>
44efe5ac: 447b         	add	r3, pc
44efe5ae: 447a         	add	r2, pc ; STR 'FACTORYAPI'
44efe5b0: f7e6 ec0e    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x197e4
44efe5b4: 2000         	movs	r0, #0x0
44efe5b6: b005         	add	sp, #0x14
44efe5b8: bd30         	pop	{r4, r5, pc}
44efe5ba: bf00         	nop
44efe5bc: 656e         	str	r6, [r5, #0x54]
44efe5be: 0000         	movs	r0, r0
44efe5c0: c47e         	stm	r4!, {r1, r2, r3, r4, r5, r6}
44efe5c2: 0000         	movs	r0, r0
44efe5c4: c434         	stm	r4!, {r2, r4, r5}
44efe5c6: 0000         	movs	r0, r0
44efe5c8: 5d66         	ldrb	r6, [r4, r5]
44efe5ca: 0000         	movs	r0, r0
