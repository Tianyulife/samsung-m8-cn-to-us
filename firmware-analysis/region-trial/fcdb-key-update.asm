
firmware-analysis/CN-1651.1/rootfs/root/usr/bin/fconfigd:	file format elf32-littlearm

Disassembly of section .text:

00005b44 <fcdb_key_update>:
    5b44: e92d 43f0    	push.w	{r4, r5, r6, r7, r8, r9, lr}
    5b48: 2900         	cmp	r1, #0x0
    5b4a: bf18         	it	ne
    5b4c: 2800         	cmpne	r0, #0x0
    5b4e: 4a74         	ldr	r2, [pc, #0x1d0]        @ 0x5d20 <fcdb_key_update+0x1dc>
    5b50: b099         	sub	sp, #0x64
    5b52: 4b74         	ldr	r3, [pc, #0x1d0]        @ 0x5d24 <fcdb_key_update+0x1e0>
    5b54: 447a         	add	r2, pc
    5b56: e9cd 0104    	strd	r0, r1, [sp, #16]
    5b5a: 58d3         	ldr	r3, [r2, r3]
    5b5c: 681b         	ldr	r3, [r3]
    5b5e: 9317         	str	r3, [sp, #0x5c]
    5b60: f04f 0300    	mov.w	r3, #0x0
    5b64: d05c         	beq	0x5c20 <fcdb_key_update+0xdc> @ imm = #0xb8
    5b66: 4b70         	ldr	r3, [pc, #0x1c0]        @ 0x5d28 <fcdb_key_update+0x1e4>
    5b68: 4606         	mov	r6, r0
    5b6a: 460d         	mov	r5, r1
    5b6c: 447b         	add	r3, pc
    5b6e: f8d3 8004    	ldr.w	r8, [r3, #0x4]
    5b72: f1b8 0f00    	cmp.w	r8, #0x0
    5b76: d04d         	beq	0x5c14 <fcdb_key_update+0xd0> @ imm = #0x9a
    5b78: 4f6c         	ldr	r7, [pc, #0x1b0]        @ 0x5d2c <fcdb_key_update+0x1e8>
    5b7a: 2340         	movs	r3, #0x40
    5b7c: 4a6c         	ldr	r2, [pc, #0x1b0]        @ 0x5d30 <fcdb_key_update+0x1ec>
    5b7e: ac07         	add	r4, sp, #0x1c
    5b80: 447f         	add	r7, pc
    5b82: 4619         	mov	r1, r3
    5b84: 447a         	add	r2, pc
    5b86: 9200         	str	r2, [sp]
    5b88: 4620         	mov	r0, r4
    5b8a: 2201         	movs	r2, #0x1
    5b8c: 68bf         	ldr	r7, [r7, #0x8]
    5b8e: f04f 0900    	mov.w	r9, #0x0
    5b92: 9701         	str	r7, [sp, #0x4]
    5b94: f7fc edb4    	blx	0x2700 <__snprintf_chk@plt> @ imm = #-0x3498
    5b98: 4620         	mov	r0, r4
    5b9a: f7fc ed50    	blx	0x263c <strlen@plt>     @ imm = #-0x3560
    5b9e: 4621         	mov	r1, r4
    5ba0: 4602         	mov	r2, r0
    5ba2: ab06         	add	r3, sp, #0x18
    5ba4: 4640         	mov	r0, r8
    5ba6: f8cd 9000    	str.w	r9, [sp]
    5baa: f7fc ed6c    	blx	0x2684 <sqlite3_prepare_v2@plt> @ imm = #-0x3528
    5bae: 4607         	mov	r7, r0
    5bb0: 9004         	str	r0, [sp, #0x10]
    5bb2: 2800         	cmp	r0, #0x0
    5bb4: d15a         	bne	0x5c6c <fcdb_key_update+0x128> @ imm = #0xb4
    5bb6: f04f 34ff    	mov.w	r4, #0xffffffff
    5bba: 462a         	mov	r2, r5
    5bbc: 9806         	ldr	r0, [sp, #0x18]
    5bbe: 4623         	mov	r3, r4
    5bc0: 2101         	movs	r1, #0x1
    5bc2: 9400         	str	r4, [sp]
    5bc4: f7fc ed6a    	blx	0x269c <sqlite3_bind_text@plt> @ imm = #-0x352c
    5bc8: 4605         	mov	r5, r0
    5bca: 2800         	cmp	r0, #0x0
    5bcc: d168         	bne	0x5ca0 <fcdb_key_update+0x15c> @ imm = #0xd0
    5bce: 4623         	mov	r3, r4
    5bd0: 9400         	str	r4, [sp]
    5bd2: 9806         	ldr	r0, [sp, #0x18]
    5bd4: 4632         	mov	r2, r6
    5bd6: 2102         	movs	r1, #0x2
    5bd8: f7fc ed60    	blx	0x269c <sqlite3_bind_text@plt> @ imm = #-0x3540
    5bdc: 4604         	mov	r4, r0
    5bde: 2800         	cmp	r0, #0x0
    5be0: d17d         	bne	0x5cde <fcdb_key_update+0x19a> @ imm = #0xfa
    5be2: 9806         	ldr	r0, [sp, #0x18]
    5be4: f7fc ebf4    	blx	0x23d0 <sqlite3_step@plt> @ imm = #-0x3818
    5be8: 2865         	cmp	r0, #0x65
    5bea: d11c         	bne	0x5c26 <fcdb_key_update+0xe2> @ imm = #0x38
    5bec: 9806         	ldr	r0, [sp, #0x18]
    5bee: f7fc ed50    	blx	0x2690 <sqlite3_finalize@plt> @ imm = #-0x3560
    5bf2: b958         	cbnz	r0, 0x5c0c <fcdb_key_update+0xc8> @ imm = #0x16
    5bf4: 4a4f         	ldr	r2, [pc, #0x13c]        @ 0x5d34 <fcdb_key_update+0x1f0>
    5bf6: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x5d24 <fcdb_key_update+0x1e0>
    5bf8: 447a         	add	r2, pc
    5bfa: 58d3         	ldr	r3, [r2, r3]
    5bfc: 681a         	ldr	r2, [r3]
    5bfe: 9b17         	ldr	r3, [sp, #0x5c]
    5c00: 405a         	eors	r2, r3
    5c02: f040 808b    	bne.w	0x5d1c <fcdb_key_update+0x1d8> @ imm = #0x116
    5c06: b019         	add	sp, #0x64
    5c08: e8bd 83f0    	pop.w	{r4, r5, r6, r7, r8, r9, pc}
    5c0c: f7fd f9f8    	bl	0x3000 <_start+0x120>   @ imm = #-0x2c10
    5c10: 4620         	mov	r0, r4
    5c12: e7ef         	b	0x5bf4 <fcdb_key_update+0xb0> @ imm = #-0x22
    5c14: f7fd fbc4    	bl	0x33a0 <_start+0x4c0>   @ imm = #-0x2878
    5c18: 4680         	mov	r8, r0
    5c1a: 9004         	str	r0, [sp, #0x10]
    5c1c: 2800         	cmp	r0, #0x0
    5c1e: d1ab         	bne	0x5b78 <fcdb_key_update+0x34> @ imm = #-0xaa
    5c20: f04f 30ff    	mov.w	r0, #0xffffffff
    5c24: e7e6         	b	0x5bf4 <fcdb_key_update+0xb0> @ imm = #-0x34
    5c26: 4640         	mov	r0, r8
    5c28: f7fc ee36    	blx	0x2898 <sqlite3_errmsg@plt> @ imm = #-0x3394
    5c2c: 4a42         	ldr	r2, [pc, #0x108]        @ 0x5d38 <fcdb_key_update+0x1f4>
    5c2e: 4b43         	ldr	r3, [pc, #0x10c]        @ 0x5d3c <fcdb_key_update+0x1f8>
    5c30: 4601         	mov	r1, r0
    5c32: 447a         	add	r2, pc
    5c34: 4620         	mov	r0, r4
    5c36: 447b         	add	r3, pc
    5c38: f502 723d    	add.w	r2, r2, #0x2f4
    5c3c: 333c         	adds	r3, #0x3c
    5c3e: e9cd 3200    	strd	r3, r2, [sp]
    5c42: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x5d40 <fcdb_key_update+0x1fc>
    5c44: f44f 744e    	mov.w	r4, #0x338
    5c48: 4a3e         	ldr	r2, [pc, #0xf8]         @ 0x5d44 <fcdb_key_update+0x200>
    5c4a: 9103         	str	r1, [sp, #0xc]
    5c4c: 447b         	add	r3, pc
    5c4e: 2106         	movs	r1, #0x6
    5c50: 447a         	add	r2, pc
    5c52: 9402         	str	r4, [sp, #0x8]
    5c54: f7fc eb80    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x3900
    5c58: 9806         	ldr	r0, [sp, #0x18]
    5c5a: f7fc ed1a    	blx	0x2690 <sqlite3_finalize@plt> @ imm = #-0x35cc
    5c5e: 2800         	cmp	r0, #0x0
    5c60: d0de         	beq	0x5c20 <fcdb_key_update+0xdc> @ imm = #-0x44
    5c62: f7fd f9cd    	bl	0x3000 <_start+0x120>   @ imm = #-0x2c66
    5c66: f04f 30ff    	mov.w	r0, #0xffffffff
    5c6a: e7c3         	b	0x5bf4 <fcdb_key_update+0xb0> @ imm = #-0x7a
    5c6c: 4640         	mov	r0, r8
    5c6e: f44f 7449    	mov.w	r4, #0x324
    5c72: f7fc ee12    	blx	0x2898 <sqlite3_errmsg@plt> @ imm = #-0x33dc
    5c76: 4a34         	ldr	r2, [pc, #0xd0]         @ 0x5d48 <fcdb_key_update+0x204>
    5c78: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x5d4c <fcdb_key_update+0x208>
    5c7a: 4601         	mov	r1, r0
    5c7c: 447a         	add	r2, pc
    5c7e: 9103         	str	r1, [sp, #0xc]
    5c80: 447b         	add	r3, pc
    5c82: f502 723d    	add.w	r2, r2, #0x2f4
    5c86: 333c         	adds	r3, #0x3c
    5c88: e9cd 3200    	strd	r3, r2, [sp]
    5c8c: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x5d50 <fcdb_key_update+0x20c>
    5c8e: 4648         	mov	r0, r9
    5c90: 4a30         	ldr	r2, [pc, #0xc0]         @ 0x5d54 <fcdb_key_update+0x210>
    5c92: 2106         	movs	r1, #0x6
    5c94: 447b         	add	r3, pc
    5c96: 9402         	str	r4, [sp, #0x8]
    5c98: 447a         	add	r2, pc
    5c9a: f7fc eb5e    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x3944
    5c9e: e7bf         	b	0x5c20 <fcdb_key_update+0xdc> @ imm = #-0x82
    5ca0: 4640         	mov	r0, r8
    5ca2: f240 342a    	movw	r4, #0x32a
    5ca6: f7fc edf8    	blx	0x2898 <sqlite3_errmsg@plt> @ imm = #-0x3410
    5caa: 4a2b         	ldr	r2, [pc, #0xac]         @ 0x5d58 <fcdb_key_update+0x214>
    5cac: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x5d5c <fcdb_key_update+0x218>
    5cae: 4601         	mov	r1, r0
    5cb0: 447a         	add	r2, pc
    5cb2: 9103         	str	r1, [sp, #0xc]
    5cb4: 447b         	add	r3, pc
    5cb6: f502 723d    	add.w	r2, r2, #0x2f4
    5cba: 333c         	adds	r3, #0x3c
    5cbc: e9cd 3200    	strd	r3, r2, [sp]
    5cc0: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x5d60 <fcdb_key_update+0x21c>
    5cc2: 4638         	mov	r0, r7
    5cc4: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x5d64 <fcdb_key_update+0x220>
    5cc6: 2106         	movs	r1, #0x6
    5cc8: 447b         	add	r3, pc
    5cca: 9402         	str	r4, [sp, #0x8]
    5ccc: 447a         	add	r2, pc
    5cce: f7fc eb44    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x3978
    5cd2: 9806         	ldr	r0, [sp, #0x18]
    5cd4: f7fc ecdc    	blx	0x2690 <sqlite3_finalize@plt> @ imm = #-0x3648
    5cd8: 2800         	cmp	r0, #0x0
    5cda: d0a1         	beq	0x5c20 <fcdb_key_update+0xdc> @ imm = #-0xbe
    5cdc: e7c1         	b	0x5c62 <fcdb_key_update+0x11e> @ imm = #-0x7e
    5cde: 4640         	mov	r0, r8
    5ce0: f240 3431    	movw	r4, #0x331
    5ce4: f7fc edd8    	blx	0x2898 <sqlite3_errmsg@plt> @ imm = #-0x3450
    5ce8: 4a1f         	ldr	r2, [pc, #0x7c]         @ 0x5d68 <fcdb_key_update+0x224>
    5cea: 4b20         	ldr	r3, [pc, #0x80]         @ 0x5d6c <fcdb_key_update+0x228>
    5cec: 4601         	mov	r1, r0
    5cee: 447a         	add	r2, pc
    5cf0: 9103         	str	r1, [sp, #0xc]
    5cf2: 447b         	add	r3, pc
    5cf4: f502 723d    	add.w	r2, r2, #0x2f4
    5cf8: 333c         	adds	r3, #0x3c
    5cfa: e9cd 3200    	strd	r3, r2, [sp]
    5cfe: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x5d70 <fcdb_key_update+0x22c>
    5d00: 4628         	mov	r0, r5
    5d02: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x5d74 <fcdb_key_update+0x230>
    5d04: 2106         	movs	r1, #0x6
    5d06: 447b         	add	r3, pc
    5d08: 9402         	str	r4, [sp, #0x8]
    5d0a: 447a         	add	r2, pc
    5d0c: f7fc eb24    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x39b8
    5d10: 9806         	ldr	r0, [sp, #0x18]
    5d12: f7fc ecbe    	blx	0x2690 <sqlite3_finalize@plt> @ imm = #-0x3684
    5d16: 2800         	cmp	r0, #0x0
    5d18: d082         	beq	0x5c20 <fcdb_key_update+0xdc> @ imm = #-0xfc
    5d1a: e7a2         	b	0x5c62 <fcdb_key_update+0x11e> @ imm = #-0xbc
    5d1c: f7fc eb7c    	blx	0x2418 <__stack_chk_fail@plt> @ imm = #-0x3908
    5d20: 54a8         	strb	r0, [r5, r2]
    5d22: 0001         	movs	r1, r0
    5d24: 0234         	lsls	r4, r6, #0x8
    5d26: 0000         	movs	r0, r0
    5d28: 56e0         	ldrsb	r0, [r4, r3]
    5d2a: 0001         	movs	r1, r0
    5d2c: 56cc         	ldrsb	r4, [r1, r3]
    5d2e: 0001         	movs	r1, r0
    5d30: 3664         	adds	r6, #0x64
    5d32: 0000         	movs	r0, r0
    5d34: 5404         	strb	r4, [r0, r0]
    5d36: 0001         	movs	r1, r0
    5d38: 4536         	cmp	r6, r6
    5d3a: 0000         	movs	r0, r0
    5d3c: 2546         	movs	r5, #0x46
    5d3e: 0000         	movs	r0, r0
    5d40: 35c8         	adds	r5, #0xc8
    5d42: 0000         	movs	r0, r0
    5d44: 251c         	movs	r5, #0x1c
    5d46: 0000         	movs	r0, r0
    5d48: 44ec         	add	r12, sp, r12
    5d4a: 0000         	movs	r0, r0
    5d4c: 24fc         	movs	r4, #0xfc
    5d4e: 0000         	movs	r0, r0
    5d50: 2724         	movs	r7, #0x24
    5d52: 0000         	movs	r0, r0
    5d54: 24d4         	movs	r4, #0xd4
    5d56: 0000         	movs	r0, r0
    5d58: 44b8         	add	r8, r7
    5d5a: 0000         	movs	r0, r0
    5d5c: 24c8         	movs	r4, #0xc8
    5d5e: 0000         	movs	r0, r0
    5d60: 33e4         	adds	r3, #0xe4
    5d62: 0000         	movs	r0, r0
    5d64: 24a0         	movs	r4, #0xa0
    5d66: 0000         	movs	r0, r0
    5d68: 447a         	add	r2, pc
    5d6a: 0000         	movs	r0, r0
    5d6c: 248a         	movs	r4, #0x8a
    5d6e: 0000         	movs	r0, r0
    5d70: 33a6         	adds	r3, #0xa6
    5d72: 0000         	movs	r0, r0
    5d74: 2462         	movs	r4, #0x62
    5d76: 0000         	movs	r0, r0
    5d78: f8df 2754    	ldr.w	r2, [pc, #0x754]        @ 0x64d0 <fcdb_key_update+0x98c>
    5d7c: 2100         	movs	r1, #0x0
    5d7e: f8df 3754    	ldr.w	r3, [pc, #0x754]        @ 0x64d4 <fcdb_key_update+0x990>
    5d82: 447a         	add	r2, pc
    5d84: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
    5d88: f8df 074c    	ldr.w	r0, [pc, #0x74c]        @ 0x64d8 <fcdb_key_update+0x994>
    5d8c: b0af         	sub	sp, #0xbc
    5d8e: 58d3         	ldr	r3, [r2, r3]
    5d90: 4478         	add	r0, pc
    5d92: 681b         	ldr	r3, [r3]
    5d94: 932d         	str	r3, [sp, #0xb4]
    5d96: f04f 0300    	mov.w	r3, #0x0
    5d9a: f7fc ebfc    	blx	0x2594 <access@plt>     @ imm = #-0x3808
    5d9e: b940         	cbnz	r0, 0x5db2 <fcdb_key_update+0x26e> @ imm = #0x10
    5da0: 4604         	mov	r4, r0
    5da2: f8df 0738    	ldr.w	r0, [pc, #0x738]        @ 0x64dc <fcdb_key_update+0x998>
    5da6: 4478         	add	r0, pc
    5da8: f7fc ec24    	blx	0x25f4 <system@plt>     @ imm = #-0x37b8
    5dac: 2800         	cmp	r0, #0x0
    5dae: f2c0 8269    	blt.w	0x6284 <fcdb_key_update+0x740> @ imm = #0x4d2
    5db2: f8df 072c    	ldr.w	r0, [pc, #0x72c]        @ 0x64e0 <fcdb_key_update+0x99c>
    5db6: 4478         	add	r0, pc
    5db8: f7fc ec1c    	blx	0x25f4 <system@plt>     @ imm = #-0x37c8
    5dbc: 2800         	cmp	r0, #0x0
    5dbe: f2c0 82a6    	blt.w	0x630e <fcdb_key_update+0x7ca> @ imm = #0x54c
    5dc2: a80b         	add	r0, sp, #0x2c
    5dc4: f7ff f94e    	bl	0x5064 <get_model>      @ imm = #-0xd64
    5dc8: 2800         	cmp	r0, #0x0
    5dca: f2c0 82b9    	blt.w	0x6340 <fcdb_key_update+0x7fc> @ imm = #0x572
    5dce: f8df 0714    	ldr.w	r0, [pc, #0x714]        @ 0x64e4 <fcdb_key_update+0x9a0>
    5dd2: 2100         	movs	r1, #0x0
    5dd4: 4478         	add	r0, pc
    5dd6: f7fc ebde    	blx	0x2594 <access@plt>     @ imm = #-0x3844
    5dda: b1e8         	cbz	r0, 0x5e18 <fcdb_key_update+0x2d4> @ imm = #0x3a
    5ddc: f8df 0708    	ldr.w	r0, [pc, #0x708]        @ 0x64e8 <fcdb_key_update+0x9a4>
    5de0: 2100         	movs	r1, #0x0
    5de2: 4478         	add	r0, pc
    5de4: f7fc ebd6    	blx	0x2594 <access@plt>     @ imm = #-0x3854
    5de8: 2800         	cmp	r0, #0x0
    5dea: f2c0 8320    	blt.w	0x642e <fcdb_key_update+0x8ea> @ imm = #0x640
    5dee: f8df 46fc    	ldr.w	r4, [pc, #0x6fc]        @ 0x64ec <fcdb_key_update+0x9a8>
    5df2: 2100         	movs	r1, #0x0
    5df4: 447c         	add	r4, pc
    5df6: 4620         	mov	r0, r4
    5df8: f7fc ebcc    	blx	0x2594 <access@plt>     @ imm = #-0x3868
    5dfc: 2800         	cmp	r0, #0x0
    5dfe: f2c0 8158    	blt.w	0x60b2 <fcdb_key_update+0x56e> @ imm = #0x2b0
    5e02: f8df 16ec    	ldr.w	r1, [pc, #0x6ec]        @ 0x64f0 <fcdb_key_update+0x9ac>
    5e06: f8df 06ec    	ldr.w	r0, [pc, #0x6ec]        @ 0x64f4 <fcdb_key_update+0x9b0>
    5e0a: 4479         	add	r1, pc
    5e0c: 4478         	add	r0, pc
    5e0e: f7fd ffa1    	bl	0x3d54 <copy_file>      @ imm = #-0x20be
    5e12: 2800         	cmp	r0, #0x0
    5e14: f2c0 833e    	blt.w	0x6494 <fcdb_key_update+0x950> @ imm = #0x67c
    5e18: f8df 26dc    	ldr.w	r2, [pc, #0x6dc]        @ 0x64f8 <fcdb_key_update+0x9b4>
    5e1c: 2380         	movs	r3, #0x80
    5e1e: f8df 56dc    	ldr.w	r5, [pc, #0x6dc]        @ 0x64fc <fcdb_key_update+0x9b8>
    5e22: ac0d         	add	r4, sp, #0x34
    5e24: 990b         	ldr	r1, [sp, #0x2c]
    5e26: 447a         	add	r2, pc
    5e28: 9102         	str	r1, [sp, #0x8]
    5e2a: 447d         	add	r5, pc
    5e2c: 4619         	mov	r1, r3
    5e2e: 9201         	str	r2, [sp, #0x4]
    5e30: 4620         	mov	r0, r4
    5e32: 2201         	movs	r2, #0x1
    5e34: 9500         	str	r5, [sp]
    5e36: f7fc ec64    	blx	0x2700 <__snprintf_chk@plt> @ imm = #-0x3738
    5e3a: 4620         	mov	r0, r4
    5e3c: 2100         	movs	r1, #0x0
    5e3e: f7fc ebaa    	blx	0x2594 <access@plt>     @ imm = #-0x38ac
    5e42: 2800         	cmp	r0, #0x0
    5e44: f2c0 82ae    	blt.w	0x63a4 <fcdb_key_update+0x860> @ imm = #0x55c
    5e48: f7fd fe54    	bl	0x3af4 <remove_file+0x68> @ imm = #-0x2358
    5e4c: f7fe f944    	bl	0x40d8 <fsync_path+0x120> @ imm = #-0x1d78
    5e50: f7ff f932    	bl	0x50b8 <get_model+0x54> @ imm = #-0xd9c
    5e54: f8df 16a8    	ldr.w	r1, [pc, #0x6a8]        @ 0x6500 <fcdb_key_update+0x9bc>
    5e58: 4620         	mov	r0, r4
    5e5a: 4479         	add	r1, pc
    5e5c: f7fe fb10    	bl	0x4480 <do_unxz>        @ imm = #-0x19e0
    5e60: 2800         	cmp	r0, #0x0
    5e62: f2c0 8286    	blt.w	0x6372 <fcdb_key_update+0x82e> @ imm = #0x50c
    5e66: f7fe ff85    	bl	0x4d74 <get_local_set+0x54> @ imm = #-0x10f6
    5e6a: 2800         	cmp	r0, #0x0
    5e6c: f2c0 822f    	blt.w	0x62ce <fcdb_key_update+0x78a> @ imm = #0x45e
    5e70: f8df 0690    	ldr.w	r0, [pc, #0x690]        @ 0x6504 <fcdb_key_update+0x9c0>
    5e74: 2100         	movs	r1, #0x0
    5e76: 4478         	add	r0, pc
    5e78: f7fc eb8c    	blx	0x2594 <access@plt>     @ imm = #-0x38e8
    5e7c: 4607         	mov	r7, r0
    5e7e: 2800         	cmp	r0, #0x0
    5e80: f000 813c    	beq.w	0x60fc <fcdb_key_update+0x5b8> @ imm = #0x278
    5e84: f8df 3680    	ldr.w	r3, [pc, #0x680]        @ 0x6508 <fcdb_key_update+0x9c4>
    5e88: f240 202f    	movw	r0, #0x22f
    5e8c: f8df 267c    	ldr.w	r2, [pc, #0x67c]        @ 0x650c <fcdb_key_update+0x9c8>
    5e90: 2104         	movs	r1, #0x4
    5e92: 447b         	add	r3, pc
    5e94: 447a         	add	r2, pc
    5e96: f503 7341    	add.w	r3, r3, #0x304
    5e9a: 323c         	adds	r2, #0x3c
    5e9c: e9cd 3001    	strd	r3, r0, [sp, #4]
    5ea0: 9200         	str	r2, [sp]
    5ea2: 2000         	movs	r0, #0x0
    5ea4: f8df 3668    	ldr.w	r3, [pc, #0x668]        @ 0x6510 <fcdb_key_update+0x9cc>
    5ea8: f8df 2668    	ldr.w	r2, [pc, #0x668]        @ 0x6514 <fcdb_key_update+0x9d0>
    5eac: 447b         	add	r3, pc
    5eae: 447a         	add	r2, pc
    5eb0: f7fc ea52    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x3b5c
    5eb4: f8df 3660    	ldr.w	r3, [pc, #0x660]        @ 0x6518 <fcdb_key_update+0x9d4>
    5eb8: 447b         	add	r3, pc
    5eba: 685e         	ldr	r6, [r3, #0x4]
    5ebc: 2e00         	cmp	r6, #0x0
    5ebe: f000 8145    	beq.w	0x614c <fcdb_key_update+0x608> @ imm = #0x28a
    5ec2: f8df 1658    	ldr.w	r1, [pc, #0x658]        @ 0x651c <fcdb_key_update+0x9d8>
    5ec6: f10d 0930    	add.w	r9, sp, #0x30
    5eca: 2500         	movs	r5, #0x0
    5ecc: 464b         	mov	r3, r9
    5ece: 221a         	movs	r2, #0x1a
    5ed0: 4479         	add	r1, pc
    5ed2: 4630         	mov	r0, r6
    5ed4: 9500         	str	r5, [sp]
    5ed6: f7fc ebd6    	blx	0x2684 <sqlite3_prepare_v2@plt> @ imm = #-0x3854
    5eda: 4604         	mov	r4, r0
    5edc: 2800         	cmp	r0, #0x0
    5ede: f040 8289    	bne.w	0x63f4 <fcdb_key_update+0x8b0> @ imm = #0x512
    5ee2: 980c         	ldr	r0, [sp, #0x30]
    5ee4: f7fc ea74    	blx	0x23d0 <sqlite3_step@plt> @ imm = #-0x3b18
    5ee8: 2864         	cmp	r0, #0x64
    5eea: f040 81f3    	bne.w	0x62d4 <fcdb_key_update+0x790> @ imm = #0x3e6
    5eee: 980c         	ldr	r0, [sp, #0x30]
    5ef0: 4621         	mov	r1, r4
    5ef2: f7fc eb92    	blx	0x2618 <sqlite3_column_int@plt> @ imm = #-0x38dc
    5ef6: 4605         	mov	r5, r0
    5ef8: 980c         	ldr	r0, [sp, #0x30]
    5efa: f7fc ebca    	blx	0x2690 <sqlite3_finalize@plt> @ imm = #-0x386c
    5efe: 2800         	cmp	r0, #0x0
    5f00: f040 811e    	bne.w	0x6140 <fcdb_key_update+0x5fc> @ imm = #0x23c
    5f04: bb8d         	cbnz	r5, 0x5f6a <fcdb_key_update+0x426> @ imm = #0x62
    5f06: f8df 6618    	ldr.w	r6, [pc, #0x618]        @ 0x6520 <fcdb_key_update+0x9dc>
    5f0a: f44f 730e    	mov.w	r3, #0x238
    5f0e: f8df 4614    	ldr.w	r4, [pc, #0x614]        @ 0x6524 <fcdb_key_update+0x9e0>
    5f12: 2104         	movs	r1, #0x4
    5f14: f8df 7610    	ldr.w	r7, [pc, #0x610]        @ 0x6528 <fcdb_key_update+0x9e4>
    5f18: 447e         	add	r6, pc
    5f1a: 9302         	str	r3, [sp, #0x8]
    5f1c: 447c         	add	r4, pc
    5f1e: f8df 360c    	ldr.w	r3, [pc, #0x60c]        @ 0x652c <fcdb_key_update+0x9e8>
    5f22: 447f         	add	r7, pc
    5f24: 463a         	mov	r2, r7
    5f26: f506 7641    	add.w	r6, r6, #0x304
    5f2a: 447b         	add	r3, pc
    5f2c: 343c         	adds	r4, #0x3c
    5f2e: 4628         	mov	r0, r5
    5f30: e9cd 4600    	strd	r4, r6, [sp]
    5f34: f7fc ea10    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x3be0
    5f38: f7fd febe    	bl	0x3cb8 <remove_file+0x22c> @ imm = #-0x2284
    5f3c: f7fd fe6e    	bl	0x3c1c <remove_file+0x190> @ imm = #-0x2324
    5f40: f7fe f86c    	bl	0x401c <fsync_path+0x64> @ imm = #-0x1f28
    5f44: 2800         	cmp	r0, #0x0
    5f46: f2c0 818f    	blt.w	0x6268 <fcdb_key_update+0x724> @ imm = #0x31e
    5f4a: 2700         	movs	r7, #0x0
    5f4c: f8df 25e0    	ldr.w	r2, [pc, #0x5e0]        @ 0x6530 <fcdb_key_update+0x9ec>
    5f50: f8df 3580    	ldr.w	r3, [pc, #0x580]        @ 0x64d4 <fcdb_key_update+0x990>
    5f54: 447a         	add	r2, pc
    5f56: 58d3         	ldr	r3, [r2, r3]
    5f58: 681a         	ldr	r2, [r3]
    5f5a: 9b2d         	ldr	r3, [sp, #0xb4]
    5f5c: 405a         	eors	r2, r3
    5f5e: f040 82b4    	bne.w	0x64ca <fcdb_key_update+0x986> @ imm = #0x568
    5f62: 4638         	mov	r0, r7
    5f64: b02f         	add	sp, #0xbc
    5f66: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
    5f6a: f8df 15c8    	ldr.w	r1, [pc, #0x5c8]        @ 0x6534 <fcdb_key_update+0x9f0>
    5f6e: 2400         	movs	r4, #0x0
    5f70: 464b         	mov	r3, r9
    5f72: 2213         	movs	r2, #0x13
    5f74: 4479         	add	r1, pc
    5f76: 4630         	mov	r0, r6
    5f78: 9400         	str	r4, [sp]
    5f7a: f7fc eb84    	blx	0x2684 <sqlite3_prepare_v2@plt> @ imm = #-0x38f8
    5f7e: 4607         	mov	r7, r0
    5f80: 2800         	cmp	r0, #0x0
    5f82: f040 826d    	bne.w	0x6460 <fcdb_key_update+0x91c> @ imm = #0x4da
    5f86: 00ab         	lsls	r3, r5, #0x2
    5f88: 9309         	str	r3, [sp, #0x24]
    5f8a: 4618         	mov	r0, r3
    5f8c: f7fc eb38    	blx	0x2600 <malloc@plt>     @ imm = #-0x3990
    5f90: 2d00         	cmp	r5, #0x0
    5f92: 9004         	str	r0, [sp, #0x10]
    5f94: dd15         	ble	0x5fc2 <fcdb_key_update+0x47e> @ imm = #0x2a
    5f96: 1f06         	subs	r6, r0, #0x4
    5f98: 463c         	mov	r4, r7
    5f9a: e00d         	b	0x5fb8 <fcdb_key_update+0x474> @ imm = #0x1a
    5f9c: 980c         	ldr	r0, [sp, #0x30]
    5f9e: 2100         	movs	r1, #0x0
    5fa0: f7fc e9d4    	blx	0x234c <sqlite3_column_text@plt> @ imm = #-0x3c58
    5fa4: 2800         	cmp	r0, #0x0
    5fa6: f000 8138    	beq.w	0x621a <fcdb_key_update+0x6d6> @ imm = #0x270
    5faa: 3401         	adds	r4, #0x1
    5fac: f7fc eb3a    	blx	0x2624 <strdup@plt>     @ imm = #-0x398c
    5fb0: 42a5         	cmp	r5, r4
    5fb2: f846 0f04    	str	r0, [r6, #4]!
    5fb6: d004         	beq	0x5fc2 <fcdb_key_update+0x47e> @ imm = #0x8
    5fb8: 980c         	ldr	r0, [sp, #0x30]
    5fba: f7fc ea0a    	blx	0x23d0 <sqlite3_step@plt> @ imm = #-0x3bec
    5fbe: 2864         	cmp	r0, #0x64
    5fc0: d0ec         	beq	0x5f9c <fcdb_key_update+0x458> @ imm = #-0x28
    5fc2: 980c         	ldr	r0, [sp, #0x30]
    5fc4: f7fc eb64    	blx	0x2690 <sqlite3_finalize@plt> @ imm = #-0x3938
    5fc8: 2800         	cmp	r0, #0x0
    5fca: f040 822d    	bne.w	0x6428 <fcdb_key_update+0x8e4> @ imm = #0x45a
    5fce: f8df 0568    	ldr.w	r0, [pc, #0x568]        @ 0x6538 <fcdb_key_update+0x9f4>
    5fd2: 4478         	add	r0, pc
    5fd4: f7fd f908    	bl	0x31e8 <_start+0x308>   @ imm = #-0x2df0
    5fd8: 4680         	mov	r8, r0
    5fda: 2800         	cmp	r0, #0x0
    5fdc: f000 825f    	beq.w	0x649e <fcdb_key_update+0x95a> @ imm = #0x4be
    5fe0: 2d00         	cmp	r5, #0x0
    5fe2: f340 8168    	ble.w	0x62b6 <fcdb_key_update+0x772> @ imm = #0x2d0
    5fe6: f8df 2554    	ldr.w	r2, [pc, #0x554]        @ 0x653c <fcdb_key_update+0x9f8>
    5fea: 2400         	movs	r4, #0x0
    5fec: 9b04         	ldr	r3, [sp, #0x10]
    5fee: f10d 0a28    	add.w	r10, sp, #0x28
    5ff2: 447a         	add	r2, pc
    5ff4: f8df 1548    	ldr.w	r1, [pc, #0x548]        @ 0x6540 <fcdb_key_update+0x9fc>
    5ff8: f502 7241    	add.w	r2, r2, #0x304
    5ffc: 1f1e         	subs	r6, r3, #0x4
    5ffe: 9206         	str	r2, [sp, #0x18]
    6000: 4479         	add	r1, pc
    6002: f8df 3540    	ldr.w	r3, [pc, #0x540]        @ 0x6544 <fcdb_key_update+0xa00>
    6006: f8df 2540    	ldr.w	r2, [pc, #0x540]        @ 0x6548 <fcdb_key_update+0xa04>
    600a: 447b         	add	r3, pc
    600c: 9105         	str	r1, [sp, #0x14]
    600e: 447a         	add	r2, pc
    6010: 333c         	adds	r3, #0x3c
    6012: 4693         	mov	r11, r2
    6014: 9307         	str	r3, [sp, #0x1c]
    6016: 9708         	str	r7, [sp, #0x20]
    6018: e00f         	b	0x603a <fcdb_key_update+0x4f6> @ imm = #0x1e
    601a: 990c         	ldr	r1, [sp, #0x30]
    601c: 4638         	mov	r0, r7
    601e: f7ff fd91    	bl	0x5b44 <fcdb_key_update> @ imm = #-0x4de
    6022: 2800         	cmp	r0, #0x0
    6024: f2c0 80b1    	blt.w	0x618a <fcdb_key_update+0x646> @ imm = #0x162
    6028: 980c         	ldr	r0, [sp, #0x30]
    602a: 3401         	adds	r4, #0x1
    602c: f7fc ea6e    	blx	0x250c <free@plt>       @ imm = #-0x3b24
    6030: 980a         	ldr	r0, [sp, #0x28]
    6032: f7fc ea6c    	blx	0x250c <free@plt>       @ imm = #-0x3b28
    6036: 42ac         	cmp	r4, r5
    6038: d019         	beq	0x606e <fcdb_key_update+0x52a> @ imm = #0x32
    603a: f856 7f04    	ldr	r7, [r6, #4]!
    603e: 4653         	mov	r3, r10
    6040: 464a         	mov	r2, r9
    6042: 4640         	mov	r0, r8
    6044: 4639         	mov	r1, r7
    6046: f7ff fb47    	bl	0x56d8 <fcdb_get_value_and_type_select_db> @ imm = #-0x972
    604a: 2800         	cmp	r0, #0x0
    604c: dae5         	bge	0x601a <fcdb_key_update+0x4d6> @ imm = #-0x36
    604e: 9b06         	ldr	r3, [sp, #0x18]
    6050: f240 224a    	movw	r2, #0x24a
    6054: 9301         	str	r3, [sp, #0x4]
    6056: 2106         	movs	r1, #0x6
    6058: 9b07         	ldr	r3, [sp, #0x1c]
    605a: 2000         	movs	r0, #0x0
    605c: 9300         	str	r3, [sp]
    605e: 3401         	adds	r4, #0x1
    6060: 9202         	str	r2, [sp, #0x8]
    6062: 465a         	mov	r2, r11
    6064: 9b05         	ldr	r3, [sp, #0x14]
    6066: f7fc e978    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x3d10
    606a: 42ac         	cmp	r4, r5
    606c: d1e5         	bne	0x603a <fcdb_key_update+0x4f6> @ imm = #-0x36
    606e: 9f08         	ldr	r7, [sp, #0x20]
    6070: 2600         	movs	r6, #0x0
    6072: 9b09         	ldr	r3, [sp, #0x24]
    6074: 9c04         	ldr	r4, [sp, #0x10]
    6076: 461d         	mov	r5, r3
    6078: 4425         	add	r5, r4
    607a: f854 0b04    	ldr	r0, [r4], #4
    607e: f7fc ea46    	blx	0x250c <free@plt>       @ imm = #-0x3b74
    6082: 42ac         	cmp	r4, r5
    6084: d1f9         	bne	0x607a <fcdb_key_update+0x536> @ imm = #-0xe
    6086: 9804         	ldr	r0, [sp, #0x10]
    6088: f7fc ea40    	blx	0x250c <free@plt>       @ imm = #-0x3b80
    608c: 4640         	mov	r0, r8
    608e: f7fd f881    	bl	0x3194 <_start+0x2b4>   @ imm = #-0x2efe
    6092: 2800         	cmp	r0, #0x0
    6094: f2c0 8097    	blt.w	0x61c6 <fcdb_key_update+0x682> @ imm = #0x12e
    6098: f7fd fdc0    	bl	0x3c1c <remove_file+0x190> @ imm = #-0x2480
    609c: 2e00         	cmp	r6, #0x0
    609e: f040 8116    	bne.w	0x62ce <fcdb_key_update+0x78a> @ imm = #0x22c
    60a2: f7fd ffbb    	bl	0x401c <fsync_path+0x64> @ imm = #-0x208a
    60a6: 2800         	cmp	r0, #0x0
    60a8: f2c0 80a2    	blt.w	0x61f0 <fcdb_key_update+0x6ac> @ imm = #0x144
    60ac: f7fd fe04    	bl	0x3cb8 <remove_file+0x22c> @ imm = #-0x23f8
    60b0: e74c         	b	0x5f4c <fcdb_key_update+0x408> @ imm = #-0x168
    60b2: 4620         	mov	r0, r4
    60b4: f240 11ed    	movw	r1, #0x1ed
    60b8: f7fc ea1a    	blx	0x24f0 <mkdir@plt>      @ imm = #-0x3bcc
    60bc: 2800         	cmp	r0, #0x0
    60be: f6bf aea0    	bge.w	0x5e02 <fcdb_key_update+0x2be> @ imm = #-0x2c0
    60c2: f8df 3488    	ldr.w	r3, [pc, #0x488]        @ 0x654c <fcdb_key_update+0xa08>
    60c6: f240 2001    	movw	r0, #0x201
    60ca: f8df 2484    	ldr.w	r2, [pc, #0x484]        @ 0x6550 <fcdb_key_update+0xa0c>
    60ce: 2106         	movs	r1, #0x6
    60d0: 447b         	add	r3, pc
    60d2: f04f 37ff    	mov.w	r7, #0xffffffff
    60d6: 447a         	add	r2, pc
    60d8: f503 7341    	add.w	r3, r3, #0x304
    60dc: 323c         	adds	r2, #0x3c
    60de: e9cd 3001    	strd	r3, r0, [sp, #4]
    60e2: 9200         	str	r2, [sp]
    60e4: 2000         	movs	r0, #0x0
    60e6: f8df 346c    	ldr.w	r3, [pc, #0x46c]        @ 0x6554 <fcdb_key_update+0xa10>
    60ea: f8df 246c    	ldr.w	r2, [pc, #0x46c]        @ 0x6558 <fcdb_key_update+0xa14>
    60ee: 447b         	add	r3, pc
    60f0: 447a         	add	r2, pc
    60f2: f7fc e932    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x3d9c
    60f6: f7ff f859    	bl	0x51ac <get_model+0x148> @ imm = #-0xf4e
    60fa: e727         	b	0x5f4c <fcdb_key_update+0x408> @ imm = #-0x1b2
    60fc: f7fd fddc    	bl	0x3cb8 <remove_file+0x22c> @ imm = #-0x2448
    6100: f7fd fd8c    	bl	0x3c1c <remove_file+0x190> @ imm = #-0x24e8
    6104: f7fd ff8a    	bl	0x401c <fsync_path+0x64> @ imm = #-0x20ec
    6108: 2800         	cmp	r0, #0x0
    610a: f6bf af1e    	bge.w	0x5f4a <fcdb_key_update+0x406> @ imm = #-0x1c4
    610e: f8df 344c    	ldr.w	r3, [pc, #0x44c]        @ 0x655c <fcdb_key_update+0xa18>
    6112: f240 202a    	movw	r0, #0x22a
    6116: f8df 2448    	ldr.w	r2, [pc, #0x448]        @ 0x6560 <fcdb_key_update+0xa1c>
    611a: 2106         	movs	r1, #0x6
    611c: 447b         	add	r3, pc
    611e: 447a         	add	r2, pc
    6120: f503 7341    	add.w	r3, r3, #0x304
    6124: 323c         	adds	r2, #0x3c
    6126: e9cd 3001    	strd	r3, r0, [sp, #4]
    612a: 9200         	str	r2, [sp]
    612c: 4638         	mov	r0, r7
    612e: f8df 3434    	ldr.w	r3, [pc, #0x434]        @ 0x6564 <fcdb_key_update+0xa20>
    6132: f8df 2434    	ldr.w	r2, [pc, #0x434]        @ 0x6568 <fcdb_key_update+0xa24>
    6136: 447b         	add	r3, pc
    6138: 447a         	add	r2, pc
    613a: f7fc e90e    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x3de4
    613e: e705         	b	0x5f4c <fcdb_key_update+0x408> @ imm = #-0x1f6
    6140: f7fc ff5e    	bl	0x3000 <_start+0x120>   @ imm = #-0x3144
    6144: 2d00         	cmp	r5, #0x0
    6146: f43f aede    	beq.w	0x5f06 <fcdb_key_update+0x3c2> @ imm = #-0x244
    614a: e70e         	b	0x5f6a <fcdb_key_update+0x426> @ imm = #-0x1e4
    614c: f7fd f928    	bl	0x33a0 <_start+0x4c0>   @ imm = #-0x2db0
    6150: 4606         	mov	r6, r0
    6152: 2800         	cmp	r0, #0x0
    6154: f47f aeb5    	bne.w	0x5ec2 <fcdb_key_update+0x37e> @ imm = #-0x296
    6158: f8df 3410    	ldr.w	r3, [pc, #0x410]        @ 0x656c <fcdb_key_update+0xa28>
    615c: f240 2032    	movw	r0, #0x232
    6160: f8df 240c    	ldr.w	r2, [pc, #0x40c]        @ 0x6570 <fcdb_key_update+0xa2c>
    6164: 2106         	movs	r1, #0x6
    6166: 447b         	add	r3, pc
    6168: f04f 37ff    	mov.w	r7, #0xffffffff
    616c: 447a         	add	r2, pc
    616e: f503 7341    	add.w	r3, r3, #0x304
    6172: 323c         	adds	r2, #0x3c
    6174: e9cd 3001    	strd	r3, r0, [sp, #4]
    6178: 9200         	str	r2, [sp]
    617a: 2000         	movs	r0, #0x0
    617c: 4bfd         	ldr	r3, [pc, #0x3f4]        @ 0x6574 <fcdb_key_update+0xa30>
    617e: 4afe         	ldr	r2, [pc, #0x3f8]        @ 0x6578 <fcdb_key_update+0xa34>
    6180: 447b         	add	r3, pc
    6182: 447a         	add	r2, pc
    6184: f7fc e8e8    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x3e30
    6188: e6e0         	b	0x5f4c <fcdb_key_update+0x408> @ imm = #-0x240
    618a: 4bfc         	ldr	r3, [pc, #0x3f0]        @ 0x657c <fcdb_key_update+0xa38>
    618c: f44f 7014    	mov.w	r0, #0x250
    6190: 4afb         	ldr	r2, [pc, #0x3ec]        @ 0x6580 <fcdb_key_update+0xa3c>
    6192: 2106         	movs	r1, #0x6
    6194: 447b         	add	r3, pc
    6196: 9f08         	ldr	r7, [sp, #0x20]
    6198: 447a         	add	r2, pc
    619a: f503 7341    	add.w	r3, r3, #0x304
    619e: 323c         	adds	r2, #0x3c
    61a0: e9cd 3001    	strd	r3, r0, [sp, #4]
    61a4: 9200         	str	r2, [sp]
    61a6: 2000         	movs	r0, #0x0
    61a8: 4bf6         	ldr	r3, [pc, #0x3d8]        @ 0x6584 <fcdb_key_update+0xa40>
    61aa: 2601         	movs	r6, #0x1
    61ac: 4af6         	ldr	r2, [pc, #0x3d8]        @ 0x6588 <fcdb_key_update+0xa44>
    61ae: 447b         	add	r3, pc
    61b0: 447a         	add	r2, pc
    61b2: f7fc e8d2    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x3e5c
    61b6: 980c         	ldr	r0, [sp, #0x30]
    61b8: f7fc e9a8    	blx	0x250c <free@plt>       @ imm = #-0x3cb0
    61bc: 980a         	ldr	r0, [sp, #0x28]
    61be: f7fc e9a6    	blx	0x250c <free@plt>       @ imm = #-0x3cb4
    61c2: e756         	b	0x6072 <fcdb_key_update+0x52e> @ imm = #-0x154
    61c4: 2600         	movs	r6, #0x0
    61c6: 4bf1         	ldr	r3, [pc, #0x3c4]        @ 0x658c <fcdb_key_update+0xa48>
    61c8: f240 2062    	movw	r0, #0x262
    61cc: 4af0         	ldr	r2, [pc, #0x3c0]        @ 0x6590 <fcdb_key_update+0xa4c>
    61ce: 2106         	movs	r1, #0x6
    61d0: 447b         	add	r3, pc
    61d2: 447a         	add	r2, pc
    61d4: f503 7341    	add.w	r3, r3, #0x304
    61d8: 323c         	adds	r2, #0x3c
    61da: e9cd 3001    	strd	r3, r0, [sp, #4]
    61de: 9200         	str	r2, [sp]
    61e0: 2000         	movs	r0, #0x0
    61e2: 4bec         	ldr	r3, [pc, #0x3b0]        @ 0x6594 <fcdb_key_update+0xa50>
    61e4: 4aec         	ldr	r2, [pc, #0x3b0]        @ 0x6598 <fcdb_key_update+0xa54>
    61e6: 447b         	add	r3, pc
    61e8: 447a         	add	r2, pc
    61ea: f7fc e8b6    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x3e94
    61ee: e753         	b	0x6098 <fcdb_key_update+0x554> @ imm = #-0x15a
    61f0: 4bea         	ldr	r3, [pc, #0x3a8]        @ 0x659c <fcdb_key_update+0xa58>
    61f2: f240 206a    	movw	r0, #0x26a
    61f6: 4aea         	ldr	r2, [pc, #0x3a8]        @ 0x65a0 <fcdb_key_update+0xa5c>
    61f8: 2106         	movs	r1, #0x6
    61fa: 447b         	add	r3, pc
    61fc: 447a         	add	r2, pc
    61fe: f503 7341    	add.w	r3, r3, #0x304
    6202: 323c         	adds	r2, #0x3c
    6204: e9cd 3001    	strd	r3, r0, [sp, #4]
    6208: 9200         	str	r2, [sp]
    620a: 2000         	movs	r0, #0x0
    620c: 4be5         	ldr	r3, [pc, #0x394]        @ 0x65a4 <fcdb_key_update+0xa60>
    620e: 4ae6         	ldr	r2, [pc, #0x398]        @ 0x65a8 <fcdb_key_update+0xa64>
    6210: 447b         	add	r3, pc
    6212: 447a         	add	r2, pc
    6214: f7fc e8a0    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x3ec0
    6218: e748         	b	0x60ac <fcdb_key_update+0x568> @ imm = #-0x170
    621a: 4be4         	ldr	r3, [pc, #0x390]        @ 0x65ac <fcdb_key_update+0xa68>
    621c: f44f 75b0    	mov.w	r5, #0x160
    6220: 4ae3         	ldr	r2, [pc, #0x38c]        @ 0x65b0 <fcdb_key_update+0xa6c>
    6222: 2106         	movs	r1, #0x6
    6224: 447b         	add	r3, pc
    6226: 447a         	add	r2, pc
    6228: f503 7344    	add.w	r3, r3, #0x310
    622c: 323c         	adds	r2, #0x3c
    622e: e9cd 3501    	strd	r3, r5, [sp, #4]
    6232: 9200         	str	r2, [sp]
    6234: 4bdf         	ldr	r3, [pc, #0x37c]        @ 0x65b4 <fcdb_key_update+0xa70>
    6236: 4ae0         	ldr	r2, [pc, #0x380]        @ 0x65b8 <fcdb_key_update+0xa74>
    6238: 447b         	add	r3, pc
    623a: 447a         	add	r2, pc
    623c: f7fc e88c    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x3ee8
    6240: 980c         	ldr	r0, [sp, #0x30]
    6242: f7fc ea26    	blx	0x2690 <sqlite3_finalize@plt> @ imm = #-0x3bb4
    6246: b108         	cbz	r0, 0x624c <fcdb_key_update+0x708> @ imm = #0x2
    6248: f7fc feda    	bl	0x3000 <_start+0x120>   @ imm = #-0x324c
    624c: b144         	cbz	r4, 0x6260 <fcdb_key_update+0x71c> @ imm = #0x10
    624e: 9d04         	ldr	r5, [sp, #0x10]
    6250: eb05 0484    	add.w	r4, r5, r4, lsl #2
    6254: f855 0b04    	ldr	r0, [r5], #4
    6258: f7fc e958    	blx	0x250c <free@plt>       @ imm = #-0x3d50
    625c: 42a5         	cmp	r5, r4
    625e: d1f9         	bne	0x6254 <fcdb_key_update+0x710> @ imm = #-0xe
    6260: 9804         	ldr	r0, [sp, #0x10]
    6262: f7fc e954    	blx	0x250c <free@plt>       @ imm = #-0x3d58
    6266: e777         	b	0x6158 <fcdb_key_update+0x614> @ imm = #-0x112
    6268: 4bd4         	ldr	r3, [pc, #0x350]        @ 0x65bc <fcdb_key_update+0xa78>
    626a: 463a         	mov	r2, r7
    626c: f44f 700f    	mov.w	r0, #0x23c
    6270: 2106         	movs	r1, #0x6
    6272: 9002         	str	r0, [sp, #0x8]
    6274: 447b         	add	r3, pc
    6276: 4628         	mov	r0, r5
    6278: 9601         	str	r6, [sp, #0x4]
    627a: 9400         	str	r4, [sp]
    627c: 462f         	mov	r7, r5
    627e: f7fc e86c    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x3f28
    6282: e663         	b	0x5f4c <fcdb_key_update+0x408> @ imm = #-0x33a
    6284: 4bce         	ldr	r3, [pc, #0x338]        @ 0x65c0 <fcdb_key_update+0xa7c>
    6286: f240 11e3    	movw	r1, #0x1e3
    628a: 4ace         	ldr	r2, [pc, #0x338]        @ 0x65c4 <fcdb_key_update+0xa80>
    628c: 4620         	mov	r0, r4
    628e: 447b         	add	r3, pc
    6290: f04f 37ff    	mov.w	r7, #0xffffffff
    6294: 447a         	add	r2, pc
    6296: f503 7341    	add.w	r3, r3, #0x304
    629a: 323c         	adds	r2, #0x3c
    629c: e9cd 3101    	strd	r3, r1, [sp, #4]
    62a0: 9200         	str	r2, [sp]
    62a2: 2106         	movs	r1, #0x6
    62a4: 4bc8         	ldr	r3, [pc, #0x320]        @ 0x65c8 <fcdb_key_update+0xa84>
    62a6: 4ac9         	ldr	r2, [pc, #0x324]        @ 0x65cc <fcdb_key_update+0xa88>
    62a8: 447b         	add	r3, pc
    62aa: 447a         	add	r2, pc
    62ac: f7fc e854    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x3f58
    62b0: f7fe ff7c    	bl	0x51ac <get_model+0x148> @ imm = #-0x1108
    62b4: e64a         	b	0x5f4c <fcdb_key_update+0x408> @ imm = #-0x36c
    62b6: 9804         	ldr	r0, [sp, #0x10]
    62b8: f7fc e928    	blx	0x250c <free@plt>       @ imm = #-0x3db0
    62bc: 4640         	mov	r0, r8
    62be: f7fc ff69    	bl	0x3194 <_start+0x2b4>   @ imm = #-0x312e
    62c2: 2800         	cmp	r0, #0x0
    62c4: f6ff af7e    	blt.w	0x61c4 <fcdb_key_update+0x680> @ imm = #-0x104
    62c8: f7fd fca8    	bl	0x3c1c <remove_file+0x190> @ imm = #-0x26b0
    62cc: e6e9         	b	0x60a2 <fcdb_key_update+0x55e> @ imm = #-0x22e
    62ce: f04f 37ff    	mov.w	r7, #0xffffffff
    62d2: e63b         	b	0x5f4c <fcdb_key_update+0x408> @ imm = #-0x38a
    62d4: 4bbe         	ldr	r3, [pc, #0x2f8]        @ 0x65d0 <fcdb_key_update+0xa8c>
    62d6: f240 1149    	movw	r1, #0x149
    62da: 4abe         	ldr	r2, [pc, #0x2f8]        @ 0x65d4 <fcdb_key_update+0xa90>
    62dc: 4620         	mov	r0, r4
    62de: 447b         	add	r3, pc
    62e0: 447a         	add	r2, pc
    62e2: f503 7344    	add.w	r3, r3, #0x310
    62e6: 323c         	adds	r2, #0x3c
    62e8: e9cd 3101    	strd	r3, r1, [sp, #4]
    62ec: 9200         	str	r2, [sp]
    62ee: 2106         	movs	r1, #0x6
    62f0: 4bb9         	ldr	r3, [pc, #0x2e4]        @ 0x65d8 <fcdb_key_update+0xa94>
    62f2: 4aba         	ldr	r2, [pc, #0x2e8]        @ 0x65dc <fcdb_key_update+0xa98>
    62f4: 447b         	add	r3, pc
    62f6: 447a         	add	r2, pc
    62f8: f7fc e82e    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x3fa4
    62fc: 980c         	ldr	r0, [sp, #0x30]
    62fe: f7fc e9c8    	blx	0x2690 <sqlite3_finalize@plt> @ imm = #-0x3c70
    6302: 2800         	cmp	r0, #0x0
    6304: f43f af28    	beq.w	0x6158 <fcdb_key_update+0x614> @ imm = #-0x1b0
    6308: f7fc fe7a    	bl	0x3000 <_start+0x120>   @ imm = #-0x330c
    630c: e724         	b	0x6158 <fcdb_key_update+0x614> @ imm = #-0x1b8
    630e: 4bb4         	ldr	r3, [pc, #0x2d0]        @ 0x65e0 <fcdb_key_update+0xa9c>
    6310: f44f 70f5    	mov.w	r0, #0x1ea
    6314: 4ab3         	ldr	r2, [pc, #0x2cc]        @ 0x65e4 <fcdb_key_update+0xaa0>
    6316: 2106         	movs	r1, #0x6
    6318: 447b         	add	r3, pc
    631a: f04f 37ff    	mov.w	r7, #0xffffffff
    631e: 447a         	add	r2, pc
    6320: f503 7341    	add.w	r3, r3, #0x304
    6324: 323c         	adds	r2, #0x3c
    6326: e9cd 3001    	strd	r3, r0, [sp, #4]
    632a: 9200         	str	r2, [sp]
    632c: 2000         	movs	r0, #0x0
    632e: 4bae         	ldr	r3, [pc, #0x2b8]        @ 0x65e8 <fcdb_key_update+0xaa4>
    6330: 4aae         	ldr	r2, [pc, #0x2b8]        @ 0x65ec <fcdb_key_update+0xaa8>
    6332: 447b         	add	r3, pc
    6334: 447a         	add	r2, pc
    6336: f7fc e810    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x3fe0
    633a: f7fe ff37    	bl	0x51ac <get_model+0x148> @ imm = #-0x1192
    633e: e605         	b	0x5f4c <fcdb_key_update+0x408> @ imm = #-0x3f6
    6340: 4bab         	ldr	r3, [pc, #0x2ac]        @ 0x65f0 <fcdb_key_update+0xaac>
    6342: f240 10f1    	movw	r0, #0x1f1
    6346: 4aab         	ldr	r2, [pc, #0x2ac]        @ 0x65f4 <fcdb_key_update+0xab0>
    6348: 2106         	movs	r1, #0x6
    634a: 447b         	add	r3, pc
    634c: f04f 37ff    	mov.w	r7, #0xffffffff
    6350: 447a         	add	r2, pc
    6352: f503 7341    	add.w	r3, r3, #0x304
    6356: 323c         	adds	r2, #0x3c
    6358: e9cd 3001    	strd	r3, r0, [sp, #4]
    635c: 9200         	str	r2, [sp]
    635e: 2000         	movs	r0, #0x0
    6360: 4ba5         	ldr	r3, [pc, #0x294]        @ 0x65f8 <fcdb_key_update+0xab4>
    6362: 4aa6         	ldr	r2, [pc, #0x298]        @ 0x65fc <fcdb_key_update+0xab8>
    6364: 447b         	add	r3, pc
    6366: 447a         	add	r2, pc
    6368: f7fb eff6    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x4014
    636c: f7fe ff1e    	bl	0x51ac <get_model+0x148> @ imm = #-0x11c4
    6370: e5ec         	b	0x5f4c <fcdb_key_update+0x408> @ imm = #-0x428
    6372: 4ba3         	ldr	r3, [pc, #0x28c]        @ 0x6600 <fcdb_key_update+0xabc>
    6374: f240 201d    	movw	r0, #0x21d
    6378: 4aa2         	ldr	r2, [pc, #0x288]        @ 0x6604 <fcdb_key_update+0xac0>
    637a: 2106         	movs	r1, #0x6
    637c: 447b         	add	r3, pc
    637e: f04f 37ff    	mov.w	r7, #0xffffffff
    6382: 447a         	add	r2, pc
    6384: f503 7341    	add.w	r3, r3, #0x304
    6388: 323c         	adds	r2, #0x3c
    638a: e9cd 3001    	strd	r3, r0, [sp, #4]
    638e: 9200         	str	r2, [sp]
    6390: 2000         	movs	r0, #0x0
    6392: 4b9d         	ldr	r3, [pc, #0x274]        @ 0x6608 <fcdb_key_update+0xac4>
    6394: 4a9d         	ldr	r2, [pc, #0x274]        @ 0x660c <fcdb_key_update+0xac8>
    6396: 447b         	add	r3, pc
    6398: 447a         	add	r2, pc
    639a: f7fb efde    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x4044
    639e: f7fe ff05    	bl	0x51ac <get_model+0x148> @ imm = #-0x11f6
    63a2: e5d3         	b	0x5f4c <fcdb_key_update+0x408> @ imm = #-0x45a
    63a4: 4e9a         	ldr	r6, [pc, #0x268]        @ 0x6610 <fcdb_key_update+0xacc>
    63a6: f240 2311    	movw	r3, #0x211
    63aa: 4d9a         	ldr	r5, [pc, #0x268]        @ 0x6614 <fcdb_key_update+0xad0>
    63ac: 2106         	movs	r1, #0x6
    63ae: f8df 8268    	ldr.w	r8, [pc, #0x268]        @ 0x6618 <fcdb_key_update+0xad4>
    63b2: 447e         	add	r6, pc
    63b4: 9302         	str	r3, [sp, #0x8]
    63b6: 447d         	add	r5, pc
    63b8: 4b98         	ldr	r3, [pc, #0x260]        @ 0x661c <fcdb_key_update+0xad8>
    63ba: 44f8         	add	r8, pc
    63bc: f506 7641    	add.w	r6, r6, #0x304
    63c0: 353c         	adds	r5, #0x3c
    63c2: 4642         	mov	r2, r8
    63c4: 447b         	add	r3, pc
    63c6: e9cd 5600    	strd	r5, r6, [sp]
    63ca: 2000         	movs	r0, #0x0
    63cc: f7fb efc4    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x4078
    63d0: 4b93         	ldr	r3, [pc, #0x24c]        @ 0x6620 <fcdb_key_update+0xadc>
    63d2: 4642         	mov	r2, r8
    63d4: 2106         	movs	r1, #0x6
    63d6: 447b         	add	r3, pc
    63d8: f240 2012    	movw	r0, #0x212
    63dc: e9cd 5600    	strd	r5, r6, [sp]
    63e0: f04f 37ff    	mov.w	r7, #0xffffffff
    63e4: 9002         	str	r0, [sp, #0x8]
    63e6: 2000         	movs	r0, #0x0
    63e8: 9403         	str	r4, [sp, #0xc]
    63ea: f7fb efb6    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x4094
    63ee: f7fe fedd    	bl	0x51ac <get_model+0x148> @ imm = #-0x1246
    63f2: e5ab         	b	0x5f4c <fcdb_key_update+0x408> @ imm = #-0x4aa
    63f4: 4630         	mov	r0, r6
    63f6: f240 1443    	movw	r4, #0x143
    63fa: f7fc ea4e    	blx	0x2898 <sqlite3_errmsg@plt> @ imm = #-0x3b64
    63fe: 4a89         	ldr	r2, [pc, #0x224]        @ 0x6624 <fcdb_key_update+0xae0>
    6400: 4b89         	ldr	r3, [pc, #0x224]        @ 0x6628 <fcdb_key_update+0xae4>
    6402: 4601         	mov	r1, r0
    6404: 447a         	add	r2, pc
    6406: 9103         	str	r1, [sp, #0xc]
    6408: 447b         	add	r3, pc
    640a: f502 7244    	add.w	r2, r2, #0x310
    640e: 333c         	adds	r3, #0x3c
    6410: e9cd 3200    	strd	r3, r2, [sp]
    6414: 4b85         	ldr	r3, [pc, #0x214]        @ 0x662c <fcdb_key_update+0xae8>
    6416: 4628         	mov	r0, r5
    6418: 4a85         	ldr	r2, [pc, #0x214]        @ 0x6630 <fcdb_key_update+0xaec>
    641a: 2106         	movs	r1, #0x6
    641c: 447b         	add	r3, pc
    641e: 9402         	str	r4, [sp, #0x8]
    6420: 447a         	add	r2, pc
    6422: f7fb ef9a    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x40cc
    6426: e697         	b	0x6158 <fcdb_key_update+0x614> @ imm = #-0x2d2
    6428: f7fc fdea    	bl	0x3000 <_start+0x120>   @ imm = #-0x342c
    642c: e5cf         	b	0x5fce <fcdb_key_update+0x48a> @ imm = #-0x462
    642e: 4b81         	ldr	r3, [pc, #0x204]        @ 0x6634 <fcdb_key_update+0xaf0>
    6430: f240 10f9    	movw	r0, #0x1f9
    6434: 4a80         	ldr	r2, [pc, #0x200]        @ 0x6638 <fcdb_key_update+0xaf4>
    6436: 2106         	movs	r1, #0x6
    6438: 447b         	add	r3, pc
    643a: f04f 37ff    	mov.w	r7, #0xffffffff
    643e: 447a         	add	r2, pc
    6440: f503 7341    	add.w	r3, r3, #0x304
    6444: 323c         	adds	r2, #0x3c
    6446: e9cd 3001    	strd	r3, r0, [sp, #4]
    644a: 9200         	str	r2, [sp]
    644c: 2000         	movs	r0, #0x0
    644e: 4b7b         	ldr	r3, [pc, #0x1ec]        @ 0x663c <fcdb_key_update+0xaf8>
    6450: 4a7b         	ldr	r2, [pc, #0x1ec]        @ 0x6640 <fcdb_key_update+0xafc>
    6452: 447b         	add	r3, pc
    6454: 447a         	add	r2, pc
    6456: f7fb ef80    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x4100
    645a: f7fe fea7    	bl	0x51ac <get_model+0x148> @ imm = #-0x12b2
    645e: e575         	b	0x5f4c <fcdb_key_update+0x408> @ imm = #-0x516
    6460: 4630         	mov	r0, r6
    6462: f7fc ea1a    	blx	0x2898 <sqlite3_errmsg@plt> @ imm = #-0x3bcc
    6466: 4a77         	ldr	r2, [pc, #0x1dc]        @ 0x6644 <fcdb_key_update+0xb00>
    6468: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x6648 <fcdb_key_update+0xb04>
    646a: 4601         	mov	r1, r0
    646c: 447a         	add	r2, pc
    646e: 9103         	str	r1, [sp, #0xc]
    6470: 447b         	add	r3, pc
    6472: f502 7244    	add.w	r2, r2, #0x310
    6476: 333c         	adds	r3, #0x3c
    6478: e9cd 3200    	strd	r3, r2, [sp]
    647c: 4b73         	ldr	r3, [pc, #0x1cc]        @ 0x664c <fcdb_key_update+0xb08>
    647e: 4620         	mov	r0, r4
    6480: 4a73         	ldr	r2, [pc, #0x1cc]        @ 0x6650 <fcdb_key_update+0xb0c>
    6482: f240 1457    	movw	r4, #0x157
    6486: 2106         	movs	r1, #0x6
    6488: 447b         	add	r3, pc
    648a: 447a         	add	r2, pc
    648c: 9402         	str	r4, [sp, #0x8]
    648e: f7fb ef64    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x4138
    6492: e661         	b	0x6158 <fcdb_key_update+0x614> @ imm = #-0x33e
    6494: f04f 37ff    	mov.w	r7, #0xffffffff
    6498: f7fe fe88    	bl	0x51ac <get_model+0x148> @ imm = #-0x12f0
    649c: e556         	b	0x5f4c <fcdb_key_update+0x408> @ imm = #-0x554
    649e: 4b6d         	ldr	r3, [pc, #0x1b4]        @ 0x6654 <fcdb_key_update+0xb10>
    64a0: f240 2443    	movw	r4, #0x243
    64a4: 4a6c         	ldr	r2, [pc, #0x1b0]        @ 0x6658 <fcdb_key_update+0xb14>
    64a6: 2106         	movs	r1, #0x6
    64a8: 447b         	add	r3, pc
    64aa: f04f 37ff    	mov.w	r7, #0xffffffff
    64ae: 447a         	add	r2, pc
    64b0: f503 7341    	add.w	r3, r3, #0x304
    64b4: 323c         	adds	r2, #0x3c
    64b6: e9cd 3401    	strd	r3, r4, [sp, #4]
    64ba: 9200         	str	r2, [sp]
    64bc: 4b67         	ldr	r3, [pc, #0x19c]        @ 0x665c <fcdb_key_update+0xb18>
    64be: 4a68         	ldr	r2, [pc, #0x1a0]        @ 0x6660 <fcdb_key_update+0xb1c>
    64c0: 447b         	add	r3, pc
    64c2: 447a         	add	r2, pc
    64c4: f7fb ef48    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x4170
    64c8: e540         	b	0x5f4c <fcdb_key_update+0x408> @ imm = #-0x580
    64ca: f7fb efa6    	blx	0x2418 <__stack_chk_fail@plt> @ imm = #-0x40b4
    64ce: bf00         	nop
    64d0: 527a         	strh	r2, [r7, r1]
    64d2: 0001         	movs	r1, r0
    64d4: 0234         	lsls	r4, r6, #0x8
    64d6: 0000         	movs	r0, r0
    64d8: 34b4         	adds	r4, #0xb4
    64da: 0000         	movs	r0, r0
    64dc: 34ca         	adds	r4, #0xca
    64de: 0000         	movs	r0, r0
    64e0: 351e         	adds	r5, #0x1e
    64e2: 0000         	movs	r0, r0
    64e4: 2a10         	cmp	r2, #0x10
    64e6: 0000         	movs	r0, r0
    64e8: 2556         	movs	r5, #0x56
    64ea: 0000         	movs	r0, r0
    64ec: 2974         	cmp	r1, #0x74
    64ee: 0000         	movs	r0, r0
    64f0: 2926         	cmp	r1, #0x26
    64f2: 0000         	movs	r0, r0
    64f4: 252c         	movs	r5, #0x2c
    64f6: 0000         	movs	r0, r0
    64f8: 3052         	adds	r0, #0x52
    64fa: 0000         	movs	r0, r0
    64fc: 332e         	adds	r3, #0x2e
    64fe: 0000         	movs	r0, r0
    6500: 24de         	movs	r4, #0xde
    6502: 0000         	movs	r0, r0
    6504: 296e         	cmp	r1, #0x6e
    6506: 0000         	movs	r0, r0
    6508: 42d6         	cmn	r6, r2
    650a: 0000         	movs	r0, r0
    650c: 22e8         	movs	r2, #0xe8
    650e: 0000         	movs	r0, r0
    6510: 351c         	adds	r5, #0x1c
    6512: 0000         	movs	r0, r0
    6514: 22be         	movs	r2, #0xbe
    6516: 0000         	movs	r0, r0
    6518: 5394         	strh	r4, [r2, r6]
    651a: 0001         	movs	r1, r0
    651c: 351c         	adds	r5, #0x1c
    651e: 0000         	movs	r0, r0
    6520: 4250         	rsbs	r0, r2, #0
    6522: 0000         	movs	r0, r0
    6524: 2260         	movs	r2, #0x60
    6526: 0000         	movs	r0, r0
    6528: 224a         	movs	r2, #0x4a
    652a: 0000         	movs	r0, r0
    652c: 34f2         	adds	r4, #0xf2
    652e: 0000         	movs	r0, r0
    6530: 50a8         	str	r0, [r5, r2]
    6532: 0001         	movs	r1, r0
    6534: 3494         	adds	r4, #0x94
    6536: 0000         	movs	r0, r0
    6538: 275e         	movs	r7, #0x5e
    653a: 0000         	movs	r0, r0
    653c: 4176         	adcs	r6, r6
    653e: 0000         	movs	r0, r0
    6540: 3488         	adds	r4, #0x88
    6542: 0000         	movs	r0, r0
    6544: 2172         	movs	r1, #0x72
    6546: 0000         	movs	r0, r0
    6548: 215e         	movs	r1, #0x5e
    654a: 0000         	movs	r0, r0
    654c: 4098         	lsls	r0, r3
    654e: 0000         	movs	r0, r0
    6550: 20a6         	movs	r0, #0xa6
    6552: 0000         	movs	r0, r0
    6554: 326e         	adds	r2, #0x6e
    6556: 0000         	movs	r0, r0
    6558: 207c         	movs	r0, #0x7c
    655a: 0000         	movs	r0, r0
    655c: 404c         	eors	r4, r1
    655e: 0000         	movs	r0, r0
    6560: 205e         	movs	r0, #0x5e
    6562: 0000         	movs	r0, r0
    6564: 308e         	adds	r0, #0x8e
    6566: 0000         	movs	r0, r0
    6568: 2034         	movs	r0, #0x34
    656a: 0000         	movs	r0, r0
    656c: 4002         	ands	r2, r0
    656e: 0000         	movs	r0, r0
    6570: 2010         	movs	r0, #0x10
    6572: 0000         	movs	r0, r0
    6574: 32c0         	adds	r2, #0xc0
    6576: 0000         	movs	r0, r0
    6578: 1fea         	subs	r2, r5, #0x7
    657a: 0000         	movs	r0, r0
    657c: 3fd4         	subs	r7, #0xd4
    657e: 0000         	movs	r0, r0
    6580: 1fe4         	subs	r4, r4, #0x7
    6582: 0000         	movs	r0, r0
    6584: 3312         	adds	r3, #0x12
    6586: 0000         	movs	r0, r0
    6588: 1fbc         	subs	r4, r7, #0x6
    658a: 0000         	movs	r0, r0
    658c: 3f98         	subs	r7, #0x98
    658e: 0000         	movs	r0, r0
    6590: 1faa         	subs	r2, r5, #0x6
    6592: 0000         	movs	r0, r0
    6594: 32fe         	adds	r2, #0xfe
    6596: 0000         	movs	r0, r0
    6598: 1f84         	subs	r4, r0, #0x6
    659a: 0000         	movs	r0, r0
    659c: 3f6e         	subs	r7, #0x6e
    659e: 0000         	movs	r0, r0
    65a0: 1f80         	subs	r0, r0, #0x6
    65a2: 0000         	movs	r0, r0
    65a4: 2fb4         	cmp	r7, #0xb4
    65a6: 0000         	movs	r0, r0
    65a8: 1f5a         	subs	r2, r3, #0x5
    65aa: 0000         	movs	r0, r0
    65ac: 3f44         	subs	r7, #0x44
    65ae: 0000         	movs	r0, r0
    65b0: 1f56         	subs	r6, r2, #0x5
    65b2: 0000         	movs	r0, r0
    65b4: 2b3c         	cmp	r3, #0x3c
    65b6: 0000         	movs	r0, r0
    65b8: 1f32         	subs	r2, r6, #0x4
    65ba: 0000         	movs	r0, r0
    65bc: 2f50         	cmp	r7, #0x50
    65be: 0000         	movs	r0, r0
    65c0: 3eda         	subs	r6, #0xda
    65c2: 0000         	movs	r0, r0
    65c4: 1ee8         	subs	r0, r5, #0x3
    65c6: 0000         	movs	r0, r0
    65c8: 3000         	adds	r0, #0x0
    65ca: 0000         	movs	r0, r0
    65cc: 1ec2         	subs	r2, r0, #0x3
    65ce: 0000         	movs	r0, r0
    65d0: 3e8a         	subs	r6, #0x8a
    65d2: 0000         	movs	r0, r0
    65d4: 1e9c         	subs	r4, r3, #0x2
    65d6: 0000         	movs	r0, r0
    65d8: 20f8         	movs	r0, #0xf8
    65da: 0000         	movs	r0, r0
    65dc: 1e76         	subs	r6, r6, #0x1
    65de: 0000         	movs	r0, r0
    65e0: 3e50         	subs	r6, #0x50
    65e2: 0000         	movs	r0, r0
    65e4: 1e5e         	subs	r6, r3, #0x1
    65e6: 0000         	movs	r0, r0
    65e8: 2f76         	cmp	r7, #0x76
    65ea: 0000         	movs	r0, r0
    65ec: 1e38         	subs	r0, r7, #0x0
    65ee: 0000         	movs	r0, r0
    65f0: 3e1e         	subs	r6, #0x1e
    65f2: 0000         	movs	r0, r0
    65f4: 1e2c         	subs	r4, r5, #0x0
    65f6: 0000         	movs	r0, r0
    65f8: 2fa8         	cmp	r7, #0xa8
    65fa: 0000         	movs	r0, r0
    65fc: 1e06         	subs	r6, r0, #0x0
    65fe: 0000         	movs	r0, r0
    6600: 3dec         	subs	r5, #0xec
    6602: 0000         	movs	r0, r0
    6604: 1dfa         	adds	r2, r7, #0x7
    6606: 0000         	movs	r0, r0
    6608: 2bce         	cmp	r3, #0xce
    660a: 0000         	movs	r0, r0
    660c: 1dd4         	adds	r4, r2, #0x7
    660e: 0000         	movs	r0, r0
    6610: 3db6         	subs	r5, #0xb6
    6612: 0000         	movs	r0, r0
    6614: 1dc6         	adds	r6, r0, #0x7
    6616: 0000         	movs	r0, r0
    6618: 1db2         	adds	r2, r6, #0x6
    661a: 0000         	movs	r0, r0
    661c: 2fb4         	cmp	r7, #0xb4
    661e: 0000         	movs	r0, r0
    6620: 2fd6         	cmp	r7, #0xd6
    6622: 0000         	movs	r0, r0
    6624: 3d64         	subs	r5, #0x64
    6626: 0000         	movs	r0, r0
    6628: 1d74         	adds	r4, r6, #0x5
    662a: 0000         	movs	r0, r0
    662c: 1f9c         	subs	r4, r3, #0x6
    662e: 0000         	movs	r0, r0
    6630: 1d4c         	adds	r4, r1, #0x5
    6632: 0000         	movs	r0, r0
    6634: 3d30         	subs	r5, #0x30
    6636: 0000         	movs	r0, r0
    6638: 1d3e         	adds	r6, r7, #0x4
    663a: 0000         	movs	r0, r0
    663c: 2eea         	cmp	r6, #0xea
    663e: 0000         	movs	r0, r0
    6640: 1d18         	adds	r0, r3, #0x4
    6642: 0000         	movs	r0, r0
    6644: 3cfc         	subs	r4, #0xfc
    6646: 0000         	movs	r0, r0
    6648: 1d0c         	adds	r4, r1, #0x4
    664a: 0000         	movs	r0, r0
    664c: 1f30         	subs	r0, r6, #0x4
    664e: 0000         	movs	r0, r0
    6650: 1ce2         	adds	r2, r4, #0x3
    6652: 0000         	movs	r0, r0
    6654: 3cc0         	subs	r4, #0xc0
    6656: 0000         	movs	r0, r0
    6658: 1cce         	adds	r6, r1, #0x3
    665a: 0000         	movs	r0, r0
    665c: 2fa4         	cmp	r7, #0xa4
    665e: 0000         	movs	r0, r0
    6660: 1caa         	adds	r2, r5, #0x2
    6662: 0000         	movs	r0, r0
