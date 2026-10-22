
firmware-analysis/US-1720.7/rootfs/root/usr/apps/com.samsung.tizen.samsung-service-manager/bin/samsung-service-manager:	file format elf32-littlearm

Disassembly of section .text:

0000c098 <.text>:
   5abf0: 58d3         	ldr	r3, [r2, r3]
   5abf2: 681a         	ldr	r2, [r3]
   5abf4: 9b01         	ldr	r3, [sp, #0x4]
   5abf6: 405a         	eors	r2, r3
   5abf8: d111         	bne	0x5ac1e <.text+0x4eb86> @ imm = #0x22
   5abfa: 4620         	mov	r0, r4
   5abfc: b002         	add	sp, #0x8
   5abfe: e8bd 4010    	pop.w	{r4, lr}
   5ac02: f7b0 bda9    	b.w	0xb758 <g_mutex_init@plt+0xc> @ imm = #-0x4f4ae
   5ac06: 490c         	ldr	r1, [pc, #0x30]         @ 0x5ac38 <.text+0x4eba0>
   5ac08: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x5ac28 <.text+0x4eb90>
   5ac0a: 4479         	add	r1, pc
   5ac0c: 58cb         	ldr	r3, [r1, r3]
   5ac0e: 6819         	ldr	r1, [r3]
   5ac10: 9b01         	ldr	r3, [sp, #0x4]
   5ac12: 4059         	eors	r1, r3
   5ac14: d103         	bne	0x5ac1e <.text+0x4eb86> @ imm = #0x6
   5ac16: b002         	add	sp, #0x8
   5ac18: e8bd 4010    	pop.w	{r4, lr}
   5ac1c: 4710         	bx	r2
   5ac1e: f7b0 ec72    	blx	0xb504 <__stack_chk_fail@plt> @ imm = #-0x4f71c
   5ac22: bf00         	nop
   5ac24: 043c         	lsls	r4, r7, #0x10
   5ac26: 0005         	movs	r5, r0
   5ac28: 0558         	lsls	r0, r3, #0x15
   5ac2a: 0000         	movs	r0, r0
   5ac2c: ff4f ffff    	<unknown>
   5ac30: eb74 0004    	sbcs.w	r0, r4, r4
   5ac34: 040e         	lsls	r6, r1, #0x10
   5ac36: 0005         	movs	r5, r0
   5ac38: 03f2         	lsls	r2, r6, #0xf
   5ac3a: 0005         	movs	r5, r0
   5ac3c: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
   5ac40: 4604         	mov	r4, r0
   5ac42: ed2d 8b02    	vpush	{d8}
   5ac46: 4d7d         	ldr	r5, [pc, #0x1f4]        @ 0x5ae3c <.text+0x4eda4>
   5ac48: 4b7d         	ldr	r3, [pc, #0x1f4]        @ 0x5ae40 <.text+0x4eda8>
   5ac4a: 447d         	add	r5, pc
   5ac4c: 497d         	ldr	r1, [pc, #0x1f4]        @ 0x5ae44 <.text+0x4edac>
   5ac4e: b0a1         	sub	sp, #0x84
   5ac50: 58eb         	ldr	r3, [r5, r3]
   5ac52: 4479         	add	r1, pc ; STR 'NOT_SUPPORTED'
   5ac54: f101 020d    	add.w	r2, r1, #0xd
   5ac58: a807         	add	r0, sp, #0x1c
   5ac5a: 681b         	ldr	r3, [r3]
   5ac5c: 931f         	str	r3, [sp, #0x7c]
   5ac5e: f04f 0300    	mov.w	r3, #0x0
   5ac62: ad09         	add	r5, sp, #0x24
   5ac64: 9507         	str	r5, [sp, #0x1c]
   5ac66: f7b3 fb17    	bl	0xe298 <.text+0x2200>   @ imm = #-0x4c9d2
   5ac6a: 4977         	ldr	r1, [pc, #0x1dc]        @ 0x5ae48 <.text+0x4edb0>
   5ac6c: f10d 084c    	add.w	r8, sp, #0x4c
   5ac70: af15         	add	r7, sp, #0x54
   5ac72: 9713         	str	r7, [sp, #0x4c]
   5ac74: 4479         	add	r1, pc ; STR 'tizen.org/system/device_type'
   5ac76: 4640         	mov	r0, r8
   5ac78: f101 021c    	add.w	r2, r1, #0x1c
   5ac7c: f7b3 fb0c    	bl	0xe298 <.text+0x2200>   @ imm = #-0x4c9e8
   5ac80: 9813         	ldr	r0, [sp, #0x4c]
   5ac82: 4669         	mov	r1, sp
   5ac84: 2300         	movs	r3, #0x0
   5ac86: ae03         	add	r6, sp, #0xc
   5ac88: f88d 300c    	strb.w	r3, [sp, #0xc]
   5ac8c: e9cd 6301    	strd	r6, r3, [sp, #4]
   5ac90: 9300         	str	r3, [sp]
   5ac92: f7b1 e966    	blx	0xbf60 <system_info_get_platform_string@plt> @ imm = #-0x4ed34
   5ac96: b998         	cbnz	r0, 0x5acc0 <.text+0x4ec28> @ imm = #0x26
   5ac98: 9900         	ldr	r1, [sp]
   5ac9a: b189         	cbz	r1, 0x5acc0 <.text+0x4ec28> @ imm = #0x22
   5ac9c: f10d 0964    	add.w	r9, sp, #0x64
   5aca0: 4648         	mov	r0, r9
   5aca2: f7bc fca1    	bl	0x175e8 <.text+0xb550>  @ imm = #-0x436be
   5aca6: a801         	add	r0, sp, #0x4
   5aca8: 4649         	mov	r1, r9
   5acaa: f7b0 ed3e    	blx	0xb728 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_@plt> @ imm = #-0x4f584
   5acae: 9819         	ldr	r0, [sp, #0x64]
   5acb0: ab1b         	add	r3, sp, #0x6c
   5acb2: 4298         	cmp	r0, r3
   5acb4: d001         	beq	0x5acba <.text+0x4ec22> @ imm = #0x2
   5acb6: f7b0 ed52    	blx	0xb75c <_ZdlPv@plt>     @ imm = #-0x4f55c
   5acba: 9800         	ldr	r0, [sp]
   5acbc: f7b0 ed40    	blx	0xb740 <free@plt>       @ imm = #-0x4f580
   5acc0: 9813         	ldr	r0, [sp, #0x4c]
   5acc2: 42b8         	cmp	r0, r7
   5acc4: d001         	beq	0x5acca <.text+0x4ec32> @ imm = #0x2
   5acc6: f7b0 ed4a    	blx	0xb75c <_ZdlPv@plt>     @ imm = #-0x4f56c
   5acca: f8dd c008    	ldr.w	r12, [sp, #0x8]
   5acce: f1bc 0f00    	cmp.w	r12, #0x0
   5acd2: d023         	beq	0x5ad1c <.text+0x4ec84> @ imm = #0x46
   5acd4: f104 0708    	add.w	r7, r4, #0x8
   5acd8: 9b01         	ldr	r3, [sp, #0x4]
   5acda: 6027         	str	r7, [r4]
   5acdc: 42b3         	cmp	r3, r6
   5acde: bf15         	itete	ne
   5ace0: 6023         	strne	r3, [r4]
   5ace2: ce0f         	ldmeq	r6!, {r0, r1, r2, r3}
   5ace4: 9a03         	ldrne	r2, [sp, #0xc]
   5ace6: 60a0         	streq	r0, [r4, #0x8]
   5ace8: bf11         	iteee	ne
   5acea: 60a2         	strne	r2, [r4, #0x8]
   5acec: 6079         	streq	r1, [r7, #0x4]
   5acee: 60ba         	streq	r2, [r7, #0x8]
   5acf0: 60fb         	streq	r3, [r7, #0xc]
   5acf2: f8c4 c004    	str.w	r12, [r4, #0x4]
   5acf6: 9807         	ldr	r0, [sp, #0x1c]
   5acf8: 42a8         	cmp	r0, r5
   5acfa: d001         	beq	0x5ad00 <.text+0x4ec68> @ imm = #0x2
   5acfc: f7b0 ed2e    	blx	0xb75c <_ZdlPv@plt>     @ imm = #-0x4f5a4
