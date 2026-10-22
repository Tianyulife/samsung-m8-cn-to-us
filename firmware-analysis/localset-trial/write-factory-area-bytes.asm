
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44f02b58 <_ZN10FCNvramMap16WriteFactoryAreaEjjPKh>:
44f02b58: b570         	push	{r4, r5, r6, lr}
44f02b5a: 188e         	adds	r6, r1, r2
44f02b5c: 460c         	mov	r4, r1
44f02b5e: b086         	sub	sp, #0x18
44f02b60: f5b6 4f80    	cmp.w	r6, #0x4000
44f02b64: d808         	bhi	0x44f02b78 <_ZN10FCNvramMap16WriteFactoryAreaEjjPKh+0x20> @ imm = #0x10
44f02b66: 6805         	ldr	r5, [r0]
44f02b68: 2100         	movs	r1, #0x0
44f02b6a: 9100         	str	r1, [sp]
44f02b6c: f504 5178    	add.w	r1, r4, #0x3e00
44f02b70: 686c         	ldr	r4, [r5, #0x4]
44f02b72: 47a0         	blx	r4
44f02b74: b006         	add	sp, #0x18
44f02b76: bd70         	pop	{r4, r5, r6, pc}
44f02b78: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x44f02ba8 <_ZN10FCNvramMap16WriteFactoryAreaEjjPKh+0x50>
44f02b7a: 4615         	mov	r5, r2
44f02b7c: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x44f02bac <_ZN10FCNvramMap16WriteFactoryAreaEjjPKh+0x54>
44f02b7e: 26b8         	movs	r6, #0xb8
44f02b80: 447b         	add	r3, pc
44f02b82: 2106         	movs	r1, #0x6
44f02b84: 447a         	add	r2, pc
44f02b86: 3345         	adds	r3, #0x45
44f02b88: e9cd 3200    	strd	r3, r2, [sp]
44f02b8c: 2002         	movs	r0, #0x2
44f02b8e: 4b08         	ldr	r3, [pc, #0x20]         @ 0x44f02bb0 <_ZN10FCNvramMap16WriteFactoryAreaEjjPKh+0x58>
44f02b90: 4a08         	ldr	r2, [pc, #0x20]         @ 0x44f02bb4 <_ZN10FCNvramMap16WriteFactoryAreaEjjPKh+0x5c>
44f02b92: 447b         	add	r3, pc
44f02b94: 9504         	str	r5, [sp, #0x10]
44f02b96: 447a         	add	r2, pc
44f02b98: 9403         	str	r4, [sp, #0xc]
44f02b9a: 9602         	str	r6, [sp, #0x8]
44f02b9c: f7e2 e918    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x1ddd0
44f02ba0: f04f 30ff    	mov.w	r0, #0xffffffff
44f02ba4: e7e6         	b	0x44f02b74 <_ZN10FCNvramMap16WriteFactoryAreaEjjPKh+0x1c> @ imm = #-0x34
44f02ba6: bf00         	nop
44f02ba8: 8f18         	ldrh	r0, [r3, #0x38]
44f02baa: 0000         	movs	r0, r0
44f02bac: 90ac         	str	r0, [sp, #0x2b0]
44f02bae: 0000         	movs	r0, r0
44f02bb0: 9072         	str	r0, [sp, #0x1c8]
44f02bb2: 0000         	movs	r0, r0
44f02bb4: 177e         	asrs	r6, r7, #0x1d
44f02bb6: 0000         	movs	r0, r0
