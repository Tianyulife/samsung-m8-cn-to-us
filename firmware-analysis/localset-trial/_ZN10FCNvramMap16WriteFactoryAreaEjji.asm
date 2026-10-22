
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44f02bb8 <_ZN10FCNvramMap16WriteFactoryAreaEjji>:
44f02bb8: b570         	push	{r4, r5, r6, lr}
44f02bba: 461e         	mov	r6, r3
44f02bbc: 4d26         	ldr	r5, [pc, #0x98]         @ 0x44f02c58 <_ZN10FCNvramMap16WriteFactoryAreaEjji+0xa0>
44f02bbe: b08a         	sub	sp, #0x28
44f02bc0: 4b26         	ldr	r3, [pc, #0x98]         @ 0x44f02c5c <_ZN10FCNvramMap16WriteFactoryAreaEjji+0xa4>
44f02bc2: 447d         	add	r5, pc
44f02bc4: 2a02         	cmp	r2, #0x2
44f02bc6: 9205         	str	r2, [sp, #0x14]
44f02bc8: 58eb         	ldr	r3, [r5, r3]
44f02bca: f04f 0500    	mov.w	r5, #0x0
44f02bce: 681b         	ldr	r3, [r3]
44f02bd0: 9309         	str	r3, [sp, #0x24]
44f02bd2: f04f 0300    	mov.w	r3, #0x0
44f02bd6: 9508         	str	r5, [sp, #0x20]
44f02bd8: f8ad 501e    	strh.w	r5, [sp, #0x1e]
44f02bdc: f88d 501d    	strb.w	r5, [sp, #0x1d]
44f02be0: d01b         	beq	0x44f02c1a <_ZN10FCNvramMap16WriteFactoryAreaEjji+0x62> @ imm = #0x36
44f02be2: 4614         	mov	r4, r2
44f02be4: d811         	bhi	0x44f02c0a <_ZN10FCNvramMap16WriteFactoryAreaEjji+0x52> @ imm = #0x22
44f02be6: 2a01         	cmp	r2, #0x1
44f02be8: d11e         	bne	0x44f02c28 <_ZN10FCNvramMap16WriteFactoryAreaEjji+0x70> @ imm = #0x3c
44f02bea: f10d 031d    	add.w	r3, sp, #0x1d
44f02bee: f88d 601d    	strb.w	r6, [sp, #0x1d]
44f02bf2: f7e1 edb4    	blx	0x44ee475c <_ZN10FCNvramMap16WriteFactoryAreaEjjPKh@plt> @ imm = #-0x1e498
44f02bf6: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x44f02c60 <_ZN10FCNvramMap16WriteFactoryAreaEjji+0xa8>
44f02bf8: 4b18         	ldr	r3, [pc, #0x60]         @ 0x44f02c5c <_ZN10FCNvramMap16WriteFactoryAreaEjji+0xa4>
44f02bfa: 447a         	add	r2, pc
44f02bfc: 58d3         	ldr	r3, [r2, r3]
44f02bfe: 681a         	ldr	r2, [r3]
44f02c00: 9b09         	ldr	r3, [sp, #0x24]
44f02c02: 405a         	eors	r2, r3
44f02c04: d125         	bne	0x44f02c52 <_ZN10FCNvramMap16WriteFactoryAreaEjji+0x9a> @ imm = #0x4a
44f02c06: b00a         	add	sp, #0x28
44f02c08: bd70         	pop	{r4, r5, r6, pc}
44f02c0a: 1ed3         	subs	r3, r2, #0x3
44f02c0c: 2b01         	cmp	r3, #0x1
44f02c0e: d80b         	bhi	0x44f02c28 <_ZN10FCNvramMap16WriteFactoryAreaEjji+0x70> @ imm = #0x16
44f02c10: ab08         	add	r3, sp, #0x20
44f02c12: 9608         	str	r6, [sp, #0x20]
44f02c14: f7e1 eda2    	blx	0x44ee475c <_ZN10FCNvramMap16WriteFactoryAreaEjjPKh@plt> @ imm = #-0x1e4bc
44f02c18: e7ed         	b	0x44f02bf6 <_ZN10FCNvramMap16WriteFactoryAreaEjji+0x3e> @ imm = #-0x26
44f02c1a: f10d 031e    	add.w	r3, sp, #0x1e
44f02c1e: f8ad 601e    	strh.w	r6, [sp, #0x1e]
44f02c22: f7e1 ed9c    	blx	0x44ee475c <_ZN10FCNvramMap16WriteFactoryAreaEjjPKh@plt> @ imm = #-0x1e4c8
44f02c26: e7e6         	b	0x44f02bf6 <_ZN10FCNvramMap16WriteFactoryAreaEjji+0x3e> @ imm = #-0x34
44f02c28: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x44f02c64 <_ZN10FCNvramMap16WriteFactoryAreaEjji+0xac>
44f02c2a: 25aa         	movs	r5, #0xaa
44f02c2c: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x44f02c68 <_ZN10FCNvramMap16WriteFactoryAreaEjji+0xb0>
44f02c2e: 2106         	movs	r1, #0x6
44f02c30: 447b         	add	r3, pc
44f02c32: 2002         	movs	r0, #0x2
44f02c34: 447a         	add	r2, pc
44f02c36: 3345         	adds	r3, #0x45
44f02c38: 9201         	str	r2, [sp, #0x4]
44f02c3a: 9300         	str	r3, [sp]
44f02c3c: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x44f02c6c <_ZN10FCNvramMap16WriteFactoryAreaEjji+0xb4>
44f02c3e: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x44f02c70 <_ZN10FCNvramMap16WriteFactoryAreaEjji+0xb8>
44f02c40: 447a         	add	r2, pc
44f02c42: 9403         	str	r4, [sp, #0xc]
44f02c44: 447b         	add	r3, pc
44f02c46: 9502         	str	r5, [sp, #0x8]
44f02c48: f7e2 e8c2    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x1de7c
44f02c4c: f04f 30ff    	mov.w	r0, #0xffffffff
44f02c50: e7d1         	b	0x44f02bf6 <_ZN10FCNvramMap16WriteFactoryAreaEjji+0x3e> @ imm = #-0x5e
44f02c52: f7e2 e920    	blx	0x44ee4e94 <__stack_chk_fail@plt> @ imm = #-0x1ddc0
44f02c56: bf00         	nop
44f02c58: c5f2         	stm	r5!, {r1, r4, r5, r6, r7}
44f02c5a: 0001         	movs	r1, r0
44f02c5c: 0704         	lsls	r4, r0, #0x1c
44f02c5e: 0000         	movs	r0, r0
44f02c60: c5ba         	stm	r5!, {r1, r3, r4, r5, r7}
44f02c62: 0001         	movs	r1, r0
44f02c64: 8e68         	ldrh	r0, [r5, #0x32]
44f02c66: 0000         	movs	r0, r0
44f02c68: 8ffc         	ldrh	r4, [r7, #0x3e]
44f02c6a: 0000         	movs	r0, r0
44f02c6c: 16d4         	asrs	r4, r2, #0x1b
44f02c6e: 0000         	movs	r0, r0
44f02c70: 9000         	str	r0, [sp]
44f02c72: 0000         	movs	r0, r0
