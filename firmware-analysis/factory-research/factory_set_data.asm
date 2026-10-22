
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44eed620 <factory_set_data>:
44eed620: b570         	push	{r4, r5, r6, lr}
44eed622: 1e42         	subs	r2, r0, #0x1
44eed624: f24c 3351    	movw	r3, #0xc351
44eed628: b086         	sub	sp, #0x18
44eed62a: 4604         	mov	r4, r0
44eed62c: 460d         	mov	r5, r1
44eed62e: 429a         	cmp	r2, r3
44eed630: d835         	bhi	0x44eed69e <factory_set_data+0x7e> @ imm = #0x6a
44eed632: f7f8 e8c8    	blx	0x44ee57c4 <_ZN13FCStorageBase11GetInstanceEv@plt> @ imm = #-0x7e70
44eed636: b130         	cbz	r0, 0x44eed646 <factory_set_data+0x26> @ imm = #0xc
44eed638: f06f 0327    	mvn	r3, #0x27
44eed63c: 462a         	mov	r2, r5
44eed63e: 4621         	mov	r1, r4
44eed640: f7f7 ecca    	blx	0x44ee4fd8 <_ZN19FCStorageBaseCommon13SetFactoryUIDEjii@plt> @ imm = #-0x866c
44eed644: b1a8         	cbz	r0, 0x44eed672 <factory_set_data+0x52> @ imm = #0x2a
44eed646: 4b21         	ldr	r3, [pc, #0x84]         @ 0x44eed6cc <factory_set_data+0xac>
44eed648: 261f         	movs	r6, #0x1f
44eed64a: 4a21         	ldr	r2, [pc, #0x84]         @ 0x44eed6d0 <factory_set_data+0xb0>
44eed64c: 2106         	movs	r1, #0x6
44eed64e: 447b         	add	r3, pc
44eed650: 9504         	str	r5, [sp, #0x10]
44eed652: 447a         	add	r2, pc
44eed654: 334c         	adds	r3, #0x4c
44eed656: e9cd 3200    	strd	r3, r2, [sp]
44eed65a: 2002         	movs	r0, #0x2
44eed65c: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x44eed6d4 <factory_set_data+0xb4>
44eed65e: 4a1e         	ldr	r2, [pc, #0x78]         @ 0x44eed6d8 <factory_set_data+0xb8>
44eed660: 447b         	add	r3, pc
44eed662: 9403         	str	r4, [sp, #0xc]
44eed664: 447a         	add	r2, pc
44eed666: 9602         	str	r6, [sp, #0x8]
44eed668: f7f7 ebb2    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x889c
44eed66c: 2000         	movs	r0, #0x0
44eed66e: b006         	add	sp, #0x18
44eed670: bd70         	pop	{r4, r5, r6, pc}
44eed672: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x44eed6dc <factory_set_data+0xbc>
44eed674: 2629         	movs	r6, #0x29
44eed676: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x44eed6e0 <factory_set_data+0xc0>
44eed678: 2103         	movs	r1, #0x3
44eed67a: 447b         	add	r3, pc
44eed67c: 9504         	str	r5, [sp, #0x10]
44eed67e: 447a         	add	r2, pc
44eed680: 334c         	adds	r3, #0x4c
44eed682: e9cd 3200    	strd	r3, r2, [sp]
44eed686: 2002         	movs	r0, #0x2
44eed688: 4b16         	ldr	r3, [pc, #0x58]         @ 0x44eed6e4 <factory_set_data+0xc4>
44eed68a: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x44eed6e8 <factory_set_data+0xc8>
44eed68c: 447b         	add	r3, pc
44eed68e: 9403         	str	r4, [sp, #0xc]
44eed690: 447a         	add	r2, pc
44eed692: 9602         	str	r6, [sp, #0x8]
44eed694: f7f7 eb9c    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x88c8
44eed698: 2001         	movs	r0, #0x1
44eed69a: b006         	add	sp, #0x18
44eed69c: bd70         	pop	{r4, r5, r6, pc}
44eed69e: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x44eed6ec <factory_set_data+0xcc>
44eed6a0: 2625         	movs	r6, #0x25
44eed6a2: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x44eed6f0 <factory_set_data+0xd0>
44eed6a4: 2106         	movs	r1, #0x6
44eed6a6: 447b         	add	r3, pc
44eed6a8: 9003         	str	r0, [sp, #0xc]
44eed6aa: 447a         	add	r2, pc
44eed6ac: 334c         	adds	r3, #0x4c
44eed6ae: e9cd 3200    	strd	r3, r2, [sp]
44eed6b2: 2002         	movs	r0, #0x2
44eed6b4: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x44eed6f4 <factory_set_data+0xd4>
44eed6b6: 4a10         	ldr	r2, [pc, #0x40]         @ 0x44eed6f8 <factory_set_data+0xd8>
44eed6b8: 447b         	add	r3, pc
44eed6ba: 9504         	str	r5, [sp, #0x10]
44eed6bc: 447a         	add	r2, pc
44eed6be: 9602         	str	r6, [sp, #0x8]
44eed6c0: f7f7 eb86    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x88f4
44eed6c4: 2000         	movs	r0, #0x0
44eed6c6: b006         	add	sp, #0x18
44eed6c8: bd70         	pop	{r4, r5, r6, pc}
44eed6ca: bf00         	nop
44eed6cc: 850a         	strh	r2, [r1, #0x28]
44eed6ce: 0001         	movs	r1, r0
44eed6d0: 84f2         	strh	r2, [r6, #0x26]
44eed6d2: 0001         	movs	r1, r0
44eed6d4: 84a8         	strh	r0, [r5, #0x24]
44eed6d6: 0001         	movs	r1, r0
44eed6d8: 6cb0         	ldr	r0, [r6, #0x48]
44eed6da: 0001         	movs	r1, r0
44eed6dc: 84de         	strh	r6, [r3, #0x26]
44eed6de: 0001         	movs	r1, r0
44eed6e0: 84c6         	strh	r6, [r0, #0x26]
44eed6e2: 0001         	movs	r1, r0
44eed6e4: 8534         	strh	r4, [r6, #0x28]
44eed6e6: 0001         	movs	r1, r0
44eed6e8: 6c84         	ldr	r4, [r0, #0x48]
44eed6ea: 0001         	movs	r1, r0
44eed6ec: 84b2         	strh	r2, [r6, #0x24]
44eed6ee: 0001         	movs	r1, r0
44eed6f0: 849a         	strh	r2, [r3, #0x24]
44eed6f2: 0001         	movs	r1, r0
44eed6f4: 8540         	strh	r0, [r0, #0x2a]
44eed6f6: 0001         	movs	r1, r0
44eed6f8: 6c58         	ldr	r0, [r3, #0x44]
44eed6fa: 0001         	movs	r1, r0
