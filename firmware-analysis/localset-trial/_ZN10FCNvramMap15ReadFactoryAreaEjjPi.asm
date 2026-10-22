
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44f02cd4 <_ZN10FCNvramMap15ReadFactoryAreaEjjPi>:
44f02cd4: b5f0         	push	{r4, r5, r6, r7, lr}
44f02cd6: 461d         	mov	r5, r3
44f02cd8: 4e28         	ldr	r6, [pc, #0xa0]         @ 0x44f02d7c <_ZN10FCNvramMap15ReadFactoryAreaEjjPi+0xa8>
44f02cda: b08d         	sub	sp, #0x34
44f02cdc: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x44f02d80 <_ZN10FCNvramMap15ReadFactoryAreaEjjPi+0xac>
44f02cde: 447e         	add	r6, pc
44f02ce0: 2a02         	cmp	r2, #0x2
44f02ce2: e9cd 1206    	strd	r1, r2, [sp, #24]
44f02ce6: 58f3         	ldr	r3, [r6, r3]
44f02ce8: 681b         	ldr	r3, [r3]
44f02cea: 930b         	str	r3, [sp, #0x2c]
44f02cec: f04f 0300    	mov.w	r3, #0x0
44f02cf0: f04f 0300    	mov.w	r3, #0x0
44f02cf4: 930a         	str	r3, [sp, #0x28]
44f02cf6: f8ad 3026    	strh.w	r3, [sp, #0x26]
44f02cfa: f88d 3025    	strb.w	r3, [sp, #0x25]
44f02cfe: d01d         	beq	0x44f02d3c <_ZN10FCNvramMap15ReadFactoryAreaEjjPi+0x68> @ imm = #0x3a
44f02d00: 4614         	mov	r4, r2
44f02d02: 460e         	mov	r6, r1
44f02d04: d812         	bhi	0x44f02d2c <_ZN10FCNvramMap15ReadFactoryAreaEjjPi+0x58> @ imm = #0x24
44f02d06: 2a01         	cmp	r2, #0x1
44f02d08: d11f         	bne	0x44f02d4a <_ZN10FCNvramMap15ReadFactoryAreaEjjPi+0x76> @ imm = #0x3e
44f02d0a: f10d 0325    	add.w	r3, sp, #0x25
44f02d0e: f7e2 ecae    	blx	0x44ee566c <_ZN10FCNvramMap15ReadFactoryAreaEjjPh@plt> @ imm = #-0x1d6a4
44f02d12: f99d 3025    	ldrsb.w	r3, [sp, #0x25]
44f02d16: 4a1b         	ldr	r2, [pc, #0x6c]         @ 0x44f02d84 <_ZN10FCNvramMap15ReadFactoryAreaEjjPi+0xb0>
44f02d18: 602b         	str	r3, [r5]
44f02d1a: 4b19         	ldr	r3, [pc, #0x64]         @ 0x44f02d80 <_ZN10FCNvramMap15ReadFactoryAreaEjjPi+0xac>
44f02d1c: 447a         	add	r2, pc
44f02d1e: 58d3         	ldr	r3, [r2, r3]
44f02d20: 681a         	ldr	r2, [r3]
44f02d22: 9b0b         	ldr	r3, [sp, #0x2c]
44f02d24: 405a         	eors	r2, r3
44f02d26: d127         	bne	0x44f02d78 <_ZN10FCNvramMap15ReadFactoryAreaEjjPi+0xa4> @ imm = #0x4e
44f02d28: b00d         	add	sp, #0x34
44f02d2a: bdf0         	pop	{r4, r5, r6, r7, pc}
44f02d2c: 1ed3         	subs	r3, r2, #0x3
44f02d2e: 2b01         	cmp	r3, #0x1
44f02d30: d80b         	bhi	0x44f02d4a <_ZN10FCNvramMap15ReadFactoryAreaEjjPi+0x76> @ imm = #0x16
44f02d32: ab0a         	add	r3, sp, #0x28
44f02d34: f7e2 ec9a    	blx	0x44ee566c <_ZN10FCNvramMap15ReadFactoryAreaEjjPh@plt> @ imm = #-0x1d6cc
44f02d38: 9b0a         	ldr	r3, [sp, #0x28]
44f02d3a: e7ec         	b	0x44f02d16 <_ZN10FCNvramMap15ReadFactoryAreaEjjPi+0x42> @ imm = #-0x28
44f02d3c: f10d 0326    	add.w	r3, sp, #0x26
44f02d40: f7e2 ec94    	blx	0x44ee566c <_ZN10FCNvramMap15ReadFactoryAreaEjjPh@plt> @ imm = #-0x1d6d8
44f02d44: f9bd 3026    	ldrsh.w	r3, [sp, #0x26]
44f02d48: e7e5         	b	0x44f02d16 <_ZN10FCNvramMap15ReadFactoryAreaEjjPi+0x42> @ imm = #-0x36
44f02d4a: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x44f02d88 <_ZN10FCNvramMap15ReadFactoryAreaEjjPi+0xb4>
44f02d4c: 2776         	movs	r7, #0x76
44f02d4e: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x44f02d8c <_ZN10FCNvramMap15ReadFactoryAreaEjjPi+0xb8>
44f02d50: 2106         	movs	r1, #0x6
44f02d52: 447b         	add	r3, pc
44f02d54: 2002         	movs	r0, #0x2
44f02d56: 447a         	add	r2, pc
44f02d58: 3345         	adds	r3, #0x45
44f02d5a: e9cd 2701    	strd	r2, r7, [sp, #4]
44f02d5e: 9300         	str	r3, [sp]
44f02d60: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x44f02d90 <_ZN10FCNvramMap15ReadFactoryAreaEjjPi+0xbc>
44f02d62: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x44f02d94 <_ZN10FCNvramMap15ReadFactoryAreaEjjPi+0xc0>
44f02d64: 447a         	add	r2, pc
44f02d66: 9404         	str	r4, [sp, #0x10]
44f02d68: 447b         	add	r3, pc
44f02d6a: 9603         	str	r6, [sp, #0xc]
44f02d6c: f7e2 e830    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x1dfa0
44f02d70: 9b0a         	ldr	r3, [sp, #0x28]
44f02d72: f04f 30ff    	mov.w	r0, #0xffffffff
44f02d76: e7ce         	b	0x44f02d16 <_ZN10FCNvramMap15ReadFactoryAreaEjjPi+0x42> @ imm = #-0x64
44f02d78: f7e2 e88c    	blx	0x44ee4e94 <__stack_chk_fail@plt> @ imm = #-0x1dee8
44f02d7c: c4d6         	stm	r4!, {r1, r2, r4, r6, r7}
44f02d7e: 0001         	movs	r1, r0
44f02d80: 0704         	lsls	r4, r0, #0x1c
44f02d82: 0000         	movs	r0, r0
44f02d84: c498         	stm	r4!, {r3, r4, r7}
44f02d86: 0001         	movs	r1, r0
44f02d88: 8d46         	ldrh	r6, [r0, #0x2a]
44f02d8a: 0000         	movs	r0, r0
44f02d8c: 8f0e         	ldrh	r6, [r1, #0x38]
44f02d8e: 0000         	movs	r0, r0
44f02d90: 15b0         	asrs	r0, r6, #0x16
44f02d92: 0000         	movs	r0, r0
44f02d94: 8f0c         	ldrh	r4, [r1, #0x38]
44f02d96: 0000         	movs	r0, r0
