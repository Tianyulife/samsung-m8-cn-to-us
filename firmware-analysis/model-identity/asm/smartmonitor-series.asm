
firmware-analysis/US-1720.7/rootfs/root/usr/lib/libsystem-info-external-plugin.so:	file format elf32-littlearm

Disassembly of section .text:

00007b54 <system_info_get_model_series_info_smartmonitor>:
    7b54: 4ad7         	ldr	r2, [pc, #0x35c]        @ 0x7eb4 <system_info_get_model_series_info_smartmonitor+0x360>
    7b56: 4bd8         	ldr	r3, [pc, #0x360]        @ 0x7eb8 <system_info_get_model_series_info_smartmonitor+0x364>
    7b58: 447a         	add	r2, pc
    7b5a: b5f0         	push	{r4, r5, r6, r7, lr}
    7b5c: f240 14f9    	movw	r4, #0x1f9
    7b60: 1b04         	subs	r4, r0, r4
    7b62: f6ad 0d04    	subw	sp, sp, #0x804
    7b66: 58d3         	ldr	r3, [r2, r3]
    7b68: bf18         	it	ne
    7b6a: 2401         	movne	r4, #0x1
    7b6c: 2900         	cmp	r1, #0x0
    7b6e: bf08         	it	eq
    7b70: 2401         	moveq	r4, #0x1
    7b72: 681b         	ldr	r3, [r3]
    7b74: f8cd 37fc    	str.w	r3, [sp, #0x7fc]
    7b78: f04f 0300    	mov.w	r3, #0x0
    7b7c: 2c00         	cmp	r4, #0x0
    7b7e: f040 811b    	bne.w	0x7db8 <system_info_get_model_series_info_smartmonitor+0x264> @ imm = #0x236
    7b82: efc0 0050    	vmov.i32	q8, #0x0
    7b86: ad04         	add	r5, sp, #0x10
    7b88: f50d 6682    	add.w	r6, sp, #0x410
    7b8c: 460f         	mov	r7, r1
    7b8e: f242 3092    	movw	r0, #0x2392
    7b92: 4631         	mov	r1, r6
    7b94: f945 0a1f    	vst1.8	{d16, d17}, [r5:64]
    7b98: edc5 0b03    	vstr	d16, [r5, #12]
    7b9c: f7fc eb8e    	blx	0x42bc <factory_get_str_data@plt> @ imm = #-0x38e4
    7ba0: 2801         	cmp	r0, #0x1
    7ba2: f040 810c    	bne.w	0x7dbe <system_info_get_model_series_info_smartmonitor+0x26a> @ imm = #0x218
    7ba6: f20d 4019    	addw	r0, sp, #0x419
    7baa: f7fc ebe0    	blx	0x436c <strlen@plt>     @ imm = #-0x3840
    7bae: 2801         	cmp	r0, #0x1
    7bb0: f240 80a0    	bls.w	0x7cf4 <system_info_get_model_series_info_smartmonitor+0x1a0> @ imm = #0x140
    7bb4: a909         	add	r1, sp, #0x24
    7bb6: f242 308f    	movw	r0, #0x238f
    7bba: f7fc eb80    	blx	0x42bc <factory_get_str_data@plt> @ imm = #-0x3900
    7bbe: 2801         	cmp	r0, #0x1
    7bc0: f040 8113    	bne.w	0x7dea <system_info_get_model_series_info_smartmonitor+0x296> @ imm = #0x226
    7bc4: 9a0a         	ldr	r2, [sp, #0x28]
    7bc6: f643 1347    	movw	r3, #0x3947
    7bca: f6c4 6337    	movt	r3, #0x4e37
    7bce: ac0a         	add	r4, sp, #0x28
    7bd0: 429a         	cmp	r2, r3
    7bd2: d079         	beq	0x7cc8 <system_info_get_model_series_info_smartmonitor+0x174> @ imm = #0xf2
    7bd4: 6822         	ldr	r2, [r4]
    7bd6: f643 034d    	movw	r3, #0x384d
    7bda: f2c4 2330    	movt	r3, #0x4230
    7bde: 429a         	cmp	r2, r3
    7be0: f000 80b1    	beq.w	0x7d46 <system_info_get_model_series_info_smartmonitor+0x1f2> @ imm = #0x162
    7be4: 6822         	ldr	r2, [r4]
    7be6: f243 734d    	movw	r3, #0x374d
    7bea: f2c4 2330    	movt	r3, #0x4230
    7bee: 429a         	cmp	r2, r3
    7bf0: f000 80cd    	beq.w	0x7d8e <system_info_get_model_series_info_smartmonitor+0x23a> @ imm = #0x19a
    7bf4: 6822         	ldr	r2, [r4]
    7bf6: f243 534d    	movw	r3, #0x354d
    7bfa: f2c4 2330    	movt	r3, #0x4230
    7bfe: 429a         	cmp	r2, r3
    7c00: f000 80c1    	beq.w	0x7d86 <system_info_get_model_series_info_smartmonitor+0x232> @ imm = #0x182
    7c04: 6822         	ldr	r2, [r4]
    7c06: f243 734d    	movw	r3, #0x374d
    7c0a: f2c4 2330    	movt	r3, #0x4230
    7c0e: 429a         	cmp	r2, r3
    7c10: f000 80cd    	beq.w	0x7dae <system_info_get_model_series_info_smartmonitor+0x25a> @ imm = #0x19a
    7c14: 6822         	ldr	r2, [r4]
    7c16: f643 034d    	movw	r3, #0x384d
    7c1a: f2c4 2330    	movt	r3, #0x4230
    7c1e: 429a         	cmp	r2, r3
    7c20: f000 80bc    	beq.w	0x7d9c <system_info_get_model_series_info_smartmonitor+0x248> @ imm = #0x178
    7c24: 6822         	ldr	r2, [r4]
    7c26: f243 734d    	movw	r3, #0x374d
    7c2a: f2c4 2330    	movt	r3, #0x4230
    7c2e: 429a         	cmp	r2, r3
    7c30: f000 80f1    	beq.w	0x7e16 <system_info_get_model_series_info_smartmonitor+0x2c2> @ imm = #0x1e2
    7c34: 6822         	ldr	r2, [r4]
    7c36: f643 1347    	movw	r3, #0x3947
    7c3a: f6c4 6335    	movt	r3, #0x4e35
    7c3e: 429a         	cmp	r2, r3
    7c40: f000 80f2    	beq.w	0x7e28 <system_info_get_model_series_info_smartmonitor+0x2d4> @ imm = #0x1e4
    7c44: 6822         	ldr	r2, [r4]
    7c46: f643 0347    	movw	r3, #0x3847
    7c4a: f6c4 6335    	movt	r3, #0x4e35
    7c4e: 429a         	cmp	r2, r3
    7c50: f000 80f5    	beq.w	0x7e3e <system_info_get_model_series_info_smartmonitor+0x2ea> @ imm = #0x1ea
    7c54: 6822         	ldr	r2, [r4]
    7c56: f243 7347    	movw	r3, #0x3747
    7c5a: f6c4 6335    	movt	r3, #0x4e35
    7c5e: 429a         	cmp	r2, r3
    7c60: f000 80f2    	beq.w	0x7e48 <system_info_get_model_series_info_smartmonitor+0x2f4> @ imm = #0x1e4
    7c64: 6822         	ldr	r2, [r4]
    7c66: f243 7347    	movw	r3, #0x3747
    7c6a: f6c4 6330    	movt	r3, #0x4e30
    7c6e: 429a         	cmp	r2, r3
    7c70: f000 8106    	beq.w	0x7e80 <system_info_get_model_series_info_smartmonitor+0x32c> @ imm = #0x20c
    7c74: 6822         	ldr	r2, [r4]
    7c76: f243 7347    	movw	r3, #0x3747
    7c7a: f2c4 2330    	movt	r3, #0x4230
    7c7e: 429a         	cmp	r2, r3
    7c80: f000 80e7    	beq.w	0x7e52 <system_info_get_model_series_info_smartmonitor+0x2fe> @ imm = #0x1ce
    7c84: 498d         	ldr	r1, [pc, #0x234]        @ 0x7ebc <system_info_get_model_series_info_smartmonitor+0x368>
    7c86: 4620         	mov	r0, r4
    7c88: 4479         	add	r1, pc ; STR 'G65B'
    7c8a: f7fc ea9c    	blx	0x41c4 <strcmp@plt>     @ imm = #-0x3ac8
    7c8e: 2800         	cmp	r0, #0x0
    7c90: f000 80e3    	beq.w	0x7e5a <system_info_get_model_series_info_smartmonitor+0x306> @ imm = #0x1c6
    7c94: 498a         	ldr	r1, [pc, #0x228]        @ 0x7ec0 <system_info_get_model_series_info_smartmonitor+0x36c>
    7c96: 4620         	mov	r0, r4
    7c98: 4479         	add	r1, pc ; STR 'G85SB'
    7c9a: f7fc ea94    	blx	0x41c4 <strcmp@plt>     @ imm = #-0x3ad8
    7c9e: 2800         	cmp	r0, #0x0
    7ca0: d167         	bne	0x7d72 <system_info_get_model_series_info_smartmonitor+0x21e> @ imm = #0xce
    7ca2: 4c88         	ldr	r4, [pc, #0x220]        @ 0x7ec4 <system_info_get_model_series_info_smartmonitor+0x370>
    7ca4: 2314         	movs	r3, #0x14
    7ca6: f996 200a    	ldrsb.w	r2, [r6, #0xa]
    7caa: 4619         	mov	r1, r3
    7cac: f996 0009    	ldrsb.w	r0, [r6, #0x9]
    7cb0: 447c         	add	r4, pc ; STR 'Odyssey OLED'
    7cb2: 9401         	str	r4, [sp, #0x4]
    7cb4: 4c84         	ldr	r4, [pc, #0x210]        @ 0x7ec8 <system_info_get_model_series_info_smartmonitor+0x374>
    7cb6: 9203         	str	r2, [sp, #0xc]
    7cb8: 2201         	movs	r2, #0x1
    7cba: 447c         	add	r4, pc ; STR '%s %c%c'
    7cbc: 9002         	str	r0, [sp, #0x8]
    7cbe: 9400         	str	r4, [sp]
    7cc0: 4628         	mov	r0, r5
    7cc2: f7fc ebf4    	blx	0x44ac <close@plt+0xc>  @ imm = #-0x3818
    7cc6: e054         	b	0x7d72 <system_info_get_model_series_info_smartmonitor+0x21e> @ imm = #0xa8
    7cc8: 88a3         	ldrh	r3, [r4, #0x4]
    7cca: 2b42         	cmp	r3, #0x42
    7ccc: d182         	bne	0x7bd4 <system_info_get_model_series_info_smartmonitor+0x80> @ imm = #-0xfc
    7cce: 4c7f         	ldr	r4, [pc, #0x1fc]        @ 0x7ecc <system_info_get_model_series_info_smartmonitor+0x378>
    7cd0: 2314         	movs	r3, #0x14
    7cd2: f996 100a    	ldrsb.w	r1, [r6, #0xa]
    7cd6: 4602         	mov	r2, r0
    7cd8: f996 6009    	ldrsb.w	r6, [r6, #0x9]
    7cdc: 447c         	add	r4, pc ; STR 'Odyssey Ark'
    7cde: 9401         	str	r4, [sp, #0x4]
    7ce0: 4628         	mov	r0, r5
    7ce2: 4c7b         	ldr	r4, [pc, #0x1ec]        @ 0x7ed0 <system_info_get_model_series_info_smartmonitor+0x37c>
    7ce4: 9103         	str	r1, [sp, #0xc]
    7ce6: 4619         	mov	r1, r3
    7ce8: 447c         	add	r4, pc ; STR '%s %c%c'
    7cea: 9602         	str	r6, [sp, #0x8]
    7cec: 9400         	str	r4, [sp]
    7cee: f7fc ebde    	blx	0x44ac <close@plt+0xc>  @ imm = #-0x3844
    7cf2: e03e         	b	0x7d72 <system_info_get_model_series_info_smartmonitor+0x21e> @ imm = #0x7c
    7cf4: 4877         	ldr	r0, [pc, #0x1dc]        @ 0x7ed4 <system_info_get_model_series_info_smartmonitor+0x380>
    7cf6: 4478         	add	r0, pc
    7cf8: f7fc eaa2    	blx	0x4240 <strdup@plt>     @ imm = #-0x3abc
    7cfc: 4a76         	ldr	r2, [pc, #0x1d8]        @ 0x7ed8 <system_info_get_model_series_info_smartmonitor+0x384>
    7cfe: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x7edc <system_info_get_model_series_info_smartmonitor+0x388>
    7d00: 2106         	movs	r1, #0x6
    7d02: 447a         	add	r2, pc ; STR 'system_info_get_tv_tuner_supported'
    7d04: 6038         	str	r0, [r7]
    7d06: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/system-info-plugin-tv-0.0.39/src/2022/common/system_product_smartmonitor.c'
    7d08: f202 4214    	addw	r2, r2, #0x414
    7d0c: 3349         	adds	r3, #0x49
    7d0e: e9cd 3200    	strd	r3, r2, [sp]
    7d12: 2232         	movs	r2, #0x32
    7d14: f20d 4314    	addw	r3, sp, #0x414
    7d18: 9202         	str	r2, [sp, #0x8]
    7d1a: 2002         	movs	r0, #0x2
    7d1c: 9303         	str	r3, [sp, #0xc]
    7d1e: 4a70         	ldr	r2, [pc, #0x1c0]        @ 0x7ee0 <system_info_get_model_series_info_smartmonitor+0x38c>
    7d20: 4b70         	ldr	r3, [pc, #0x1c0]        @ 0x7ee4 <system_info_get_model_series_info_smartmonitor+0x390>
    7d22: 447a         	add	r2, pc ; STR 'SYSTEM_INFO'
    7d24: 447b         	add	r3, pc ; STR '%s: %s(%d) > invalid model code : %s'
    7d26: f7fc eb86    	blx	0x4434 <__dlog_print@plt> @ imm = #-0x38f4
    7d2a: 4620         	mov	r0, r4
    7d2c: 4a6e         	ldr	r2, [pc, #0x1b8]        @ 0x7ee8 <system_info_get_model_series_info_smartmonitor+0x394>
    7d2e: 4b62         	ldr	r3, [pc, #0x188]        @ 0x7eb8 <system_info_get_model_series_info_smartmonitor+0x364>
    7d30: 447a         	add	r2, pc
    7d32: 58d3         	ldr	r3, [r2, r3]
    7d34: 681a         	ldr	r2, [r3]
    7d36: f8dd 37fc    	ldr.w	r3, [sp, #0x7fc]
    7d3a: 405a         	eors	r2, r3
    7d3c: f040 80b7    	bne.w	0x7eae <system_info_get_model_series_info_smartmonitor+0x35a> @ imm = #0x16e
    7d40: f60d 0d04    	addw	sp, sp, #0x804
    7d44: bdf0         	pop	{r4, r5, r6, r7, pc}
    7d46: 7923         	ldrb	r3, [r4, #0x4]
    7d48: 2b00         	cmp	r3, #0x0
    7d4a: f47f af4b    	bne.w	0x7be4 <system_info_get_model_series_info_smartmonitor+0x90> @ imm = #-0x16a
    7d4e: 4c67         	ldr	r4, [pc, #0x19c]        @ 0x7eec <system_info_get_model_series_info_smartmonitor+0x398>
    7d50: 2314         	movs	r3, #0x14
    7d52: f996 200a    	ldrsb.w	r2, [r6, #0xa]
    7d56: 4619         	mov	r1, r3
    7d58: f996 0009    	ldrsb.w	r0, [r6, #0x9]
    7d5c: 447c         	add	r4, pc ; STR 'Smart Monitor'
    7d5e: 9401         	str	r4, [sp, #0x4]
    7d60: 4c63         	ldr	r4, [pc, #0x18c]        @ 0x7ef0 <system_info_get_model_series_info_smartmonitor+0x39c>
    7d62: 9203         	str	r2, [sp, #0xc]
    7d64: 2201         	movs	r2, #0x1
    7d66: 447c         	add	r4, pc ; STR '%s %c%c'
    7d68: 9002         	str	r0, [sp, #0x8]
    7d6a: 9400         	str	r4, [sp]
    7d6c: 4628         	mov	r0, r5
    7d6e: f7fc eb9e    	blx	0x44ac <close@plt+0xc>  @ imm = #-0x38c4
    7d72: f995 3000    	ldrsb.w	r3, [r5]
    7d76: b173         	cbz	r3, 0x7d96 <system_info_get_model_series_info_smartmonitor+0x242> @ imm = #0x1c
    7d78: 4628         	mov	r0, r5
    7d7a: f7fc ea62    	blx	0x4240 <strdup@plt>     @ imm = #-0x3b3c
    7d7e: 4603         	mov	r3, r0
    7d80: 2000         	movs	r0, #0x0
    7d82: 603b         	str	r3, [r7]
    7d84: e7d2         	b	0x7d2c <system_info_get_model_series_info_smartmonitor+0x1d8> @ imm = #-0x5c
    7d86: 7923         	ldrb	r3, [r4, #0x4]
    7d88: 2b00         	cmp	r3, #0x0
    7d8a: d0e0         	beq	0x7d4e <system_info_get_model_series_info_smartmonitor+0x1fa> @ imm = #-0x40
    7d8c: e73a         	b	0x7c04 <system_info_get_model_series_info_smartmonitor+0xb0> @ imm = #-0x18c
    7d8e: 7923         	ldrb	r3, [r4, #0x4]
    7d90: 2b00         	cmp	r3, #0x0
    7d92: d0dc         	beq	0x7d4e <system_info_get_model_series_info_smartmonitor+0x1fa> @ imm = #-0x48
    7d94: e72e         	b	0x7bf4 <system_info_get_model_series_info_smartmonitor+0xa0> @ imm = #-0x1a4
    7d96: f06f 0004    	mvn	r0, #0x4
    7d9a: e7c7         	b	0x7d2c <system_info_get_model_series_info_smartmonitor+0x1d8> @ imm = #-0x72
    7d9c: 6862         	ldr	r2, [r4, #0x4]
    7d9e: f244 135f    	movw	r3, #0x415f
    7da2: f2c0 0354    	movt	r3, #0x54
    7da6: 429a         	cmp	r2, r3
    7da8: f47f af3c    	bne.w	0x7c24 <system_info_get_model_series_info_smartmonitor+0xd0> @ imm = #-0x188
    7dac: e7cf         	b	0x7d4e <system_info_get_model_series_info_smartmonitor+0x1fa> @ imm = #-0x62
    7dae: 88a3         	ldrh	r3, [r4, #0x4]
    7db0: 2b4f         	cmp	r3, #0x4f
    7db2: f47f af2f    	bne.w	0x7c14 <system_info_get_model_series_info_smartmonitor+0xc0> @ imm = #-0x1a2
    7db6: e7ca         	b	0x7d4e <system_info_get_model_series_info_smartmonitor+0x1fa> @ imm = #-0x6c
    7db8: f06f 0015    	mvn	r0, #0x15
    7dbc: e7b6         	b	0x7d2c <system_info_get_model_series_info_smartmonitor+0x1d8> @ imm = #-0x94
    7dbe: 4b4d         	ldr	r3, [pc, #0x134]        @ 0x7ef4 <system_info_get_model_series_info_smartmonitor+0x3a0>
    7dc0: 202a         	movs	r0, #0x2a
    7dc2: 4a4d         	ldr	r2, [pc, #0x134]        @ 0x7ef8 <system_info_get_model_series_info_smartmonitor+0x3a4>
    7dc4: 2106         	movs	r1, #0x6
    7dc6: 447b         	add	r3, pc ; STR 'system_info_get_tv_tuner_supported'
    7dc8: 447a         	add	r2, pc ; STR '/home/abuild/rpmbuild/BUILD/system-info-plugin-tv-0.0.39/src/2022/common/system_product_smartmonitor.c'
    7dca: f203 4314    	addw	r3, r3, #0x414
    7dce: 3249         	adds	r2, #0x49
    7dd0: e9cd 3001    	strd	r3, r0, [sp, #4]
    7dd4: 9200         	str	r2, [sp]
    7dd6: 2002         	movs	r0, #0x2
    7dd8: 4b48         	ldr	r3, [pc, #0x120]        @ 0x7efc <system_info_get_model_series_info_smartmonitor+0x3a8>
    7dda: 4a49         	ldr	r2, [pc, #0x124]        @ 0x7f00 <system_info_get_model_series_info_smartmonitor+0x3ac>
    7ddc: 447b         	add	r3, pc ; STR '%s: %s(%d) > cannot get factory aby display model  type'
    7dde: 447a         	add	r2, pc ; STR 'SYSTEM_INFO'
    7de0: f7fc eb28    	blx	0x4434 <__dlog_print@plt> @ imm = #-0x39b0
    7de4: f06f 0004    	mvn	r0, #0x4
    7de8: e7a0         	b	0x7d2c <system_info_get_model_series_info_smartmonitor+0x1d8> @ imm = #-0xc0
    7dea: 4b46         	ldr	r3, [pc, #0x118]        @ 0x7f04 <system_info_get_model_series_info_smartmonitor+0x3b0>
    7dec: 203a         	movs	r0, #0x3a
    7dee: 4a46         	ldr	r2, [pc, #0x118]        @ 0x7f08 <system_info_get_model_series_info_smartmonitor+0x3b4>
    7df0: 2106         	movs	r1, #0x6
    7df2: 447b         	add	r3, pc ; STR 'system_info_get_tv_tuner_supported'
    7df4: 447a         	add	r2, pc ; STR '/home/abuild/rpmbuild/BUILD/system-info-plugin-tv-0.0.39/src/2022/common/system_product_smartmonitor.c'
    7df6: f203 4314    	addw	r3, r3, #0x414
    7dfa: 3249         	adds	r2, #0x49
    7dfc: e9cd 3001    	strd	r3, r0, [sp, #4]
    7e00: 9200         	str	r2, [sp]
    7e02: 2002         	movs	r0, #0x2
    7e04: 4b41         	ldr	r3, [pc, #0x104]        @ 0x7f0c <system_info_get_model_series_info_smartmonitor+0x3b8>
    7e06: 4a42         	ldr	r2, [pc, #0x108]        @ 0x7f10 <system_info_get_model_series_info_smartmonitor+0x3bc>
    7e08: 447b         	add	r3, pc ; STR '%s: %s(%d) > cannot get factory aby sw model'
    7e0a: 447a         	add	r2, pc ; STR 'SYSTEM_INFO'
    7e0c: f7fc eb12    	blx	0x4434 <__dlog_print@plt> @ imm = #-0x39dc
    7e10: f06f 0004    	mvn	r0, #0x4
    7e14: e78a         	b	0x7d2c <system_info_get_model_series_info_smartmonitor+0x1d8> @ imm = #-0xec
    7e16: 6862         	ldr	r2, [r4, #0x4]
    7e18: f244 135f    	movw	r3, #0x415f
    7e1c: f2c0 0354    	movt	r3, #0x54
    7e20: 429a         	cmp	r2, r3
    7e22: f47f af07    	bne.w	0x7c34 <system_info_get_model_series_info_smartmonitor+0xe0> @ imm = #-0x1f2
    7e26: e792         	b	0x7d4e <system_info_get_model_series_info_smartmonitor+0x1fa> @ imm = #-0xdc
    7e28: 88a3         	ldrh	r3, [r4, #0x4]
    7e2a: 2b42         	cmp	r3, #0x42
    7e2c: f47f af0a    	bne.w	0x7c44 <system_info_get_model_series_info_smartmonitor+0xf0> @ imm = #-0x1ec
    7e30: 4b38         	ldr	r3, [pc, #0xe0]         @ 0x7f14 <system_info_get_model_series_info_smartmonitor+0x3c0>
    7e32: 447b         	add	r3, pc ; STR 'Odyssey Neo'
    7e34: e893 0007    	ldm.w	r3, {r0, r1, r2}
    7e38: e885 0007    	stm.w	r5, {r0, r1, r2}
    7e3c: e799         	b	0x7d72 <system_info_get_model_series_info_smartmonitor+0x21e> @ imm = #-0xce
    7e3e: 88a3         	ldrh	r3, [r4, #0x4]
    7e40: 2b42         	cmp	r3, #0x42
    7e42: f47f af07    	bne.w	0x7c54 <system_info_get_model_series_info_smartmonitor+0x100> @ imm = #-0x1f2
    7e46: e7f3         	b	0x7e30 <system_info_get_model_series_info_smartmonitor+0x2dc> @ imm = #-0x1a
    7e48: 88a3         	ldrh	r3, [r4, #0x4]
    7e4a: 2b42         	cmp	r3, #0x42
    7e4c: f47f af0a    	bne.w	0x7c64 <system_info_get_model_series_info_smartmonitor+0x110> @ imm = #-0x1ec
    7e50: e7ee         	b	0x7e30 <system_info_get_model_series_info_smartmonitor+0x2dc> @ imm = #-0x24
    7e52: 7923         	ldrb	r3, [r4, #0x4]
    7e54: 2b00         	cmp	r3, #0x0
    7e56: f47f af15    	bne.w	0x7c84 <system_info_get_model_series_info_smartmonitor+0x130> @ imm = #-0x1d6
    7e5a: 4c2f         	ldr	r4, [pc, #0xbc]         @ 0x7f18 <system_info_get_model_series_info_smartmonitor+0x3c4>
    7e5c: 2314         	movs	r3, #0x14
    7e5e: f996 200a    	ldrsb.w	r2, [r6, #0xa]
    7e62: 4619         	mov	r1, r3
    7e64: f996 0009    	ldrsb.w	r0, [r6, #0x9]
    7e68: 447c         	add	r4, pc ; STR 'Odyssey'
    7e6a: 9401         	str	r4, [sp, #0x4]
    7e6c: 4c2b         	ldr	r4, [pc, #0xac]         @ 0x7f1c <system_info_get_model_series_info_smartmonitor+0x3c8>
    7e6e: 9203         	str	r2, [sp, #0xc]
    7e70: 2201         	movs	r2, #0x1
    7e72: 447c         	add	r4, pc ; STR '%s %c%c'
    7e74: 9002         	str	r0, [sp, #0x8]
    7e76: 9400         	str	r4, [sp]
    7e78: 4628         	mov	r0, r5
    7e7a: f7fc eb18    	blx	0x44ac <close@plt+0xc>  @ imm = #-0x39d0
    7e7e: e778         	b	0x7d72 <system_info_get_model_series_info_smartmonitor+0x21e> @ imm = #-0x110
    7e80: 88a3         	ldrh	r3, [r4, #0x4]
    7e82: 2b43         	cmp	r3, #0x43
    7e84: f47f aef6    	bne.w	0x7c74 <system_info_get_model_series_info_smartmonitor+0x120> @ imm = #-0x214
    7e88: 4c25         	ldr	r4, [pc, #0x94]         @ 0x7f20 <system_info_get_model_series_info_smartmonitor+0x3cc>
    7e8a: 2314         	movs	r3, #0x14
    7e8c: f996 200a    	ldrsb.w	r2, [r6, #0xa]
    7e90: 4619         	mov	r1, r3
    7e92: f996 0009    	ldrsb.w	r0, [r6, #0x9]
    7e96: 447c         	add	r4, pc ; STR 'Odyssey Neo'
    7e98: 9401         	str	r4, [sp, #0x4]
    7e9a: 4c22         	ldr	r4, [pc, #0x88]         @ 0x7f24 <system_info_get_model_series_info_smartmonitor+0x3d0>
    7e9c: 9203         	str	r2, [sp, #0xc]
    7e9e: 2201         	movs	r2, #0x1
    7ea0: 447c         	add	r4, pc ; STR '%s %c%c'
    7ea2: 9002         	str	r0, [sp, #0x8]
    7ea4: 9400         	str	r4, [sp]
    7ea6: 4628         	mov	r0, r5
    7ea8: f7fc eb00    	blx	0x44ac <close@plt+0xc>  @ imm = #-0x3a00
    7eac: e761         	b	0x7d72 <system_info_get_model_series_info_smartmonitor+0x21e> @ imm = #-0x13e
    7eae: f7fc e9ce    	blx	0x424c <__stack_chk_fail@plt> @ imm = #-0x3c64
    7eb2: bf00         	nop
    7eb4: 84a4         	strh	r4, [r4, #0x24]
    7eb6: 0001         	movs	r1, r0
    7eb8: 0114         	lsls	r4, r2, #0x4
    7eba: 0000         	movs	r0, r0
    7ebc: 4474         	add	r4, lr
    7ebe: 0000         	movs	r0, r0
    7ec0: 4474         	add	r4, lr
    7ec2: 0000         	movs	r0, r0
    7ec4: 4464         	add	r4, r12
    7ec6: 0000         	movs	r0, r0
    7ec8: 43c6         	mvns	r6, r0
    7eca: 0000         	movs	r0, r0
    7ecc: 4398         	bics	r0, r3
    7ece: 0000         	movs	r0, r0
    7ed0: 4398         	bics	r0, r3
    7ed2: 0000         	movs	r0, r0
    7ed4: 38f2         	subs	r0, #0xf2
    7ed6: 0000         	movs	r0, r0
    7ed8: 6242         	str	r2, [r0, #0x24]
    7eda: 0000         	movs	r0, r0
    7edc: 42fe         	cmn	r6, r7
    7ede: 0000         	movs	r0, r0
    7ee0: 351e         	adds	r5, #0x1e
    7ee2: 0000         	movs	r0, r0
    7ee4: 38c8         	subs	r0, #0xc8
    7ee6: 0000         	movs	r0, r0
    7ee8: 82cc         	strh	r4, [r1, #0x16]
    7eea: 0001         	movs	r1, r0
    7eec: 435c         	muls	r4, r3, r4
    7eee: 0000         	movs	r0, r0
    7ef0: 431a         	orrs	r2, r3
    7ef2: 0000         	movs	r0, r0
    7ef4: 617e         	str	r6, [r7, #0x14]
    7ef6: 0000         	movs	r0, r0
    7ef8: 423c         	tst	r4, r7
    7efa: 0000         	movs	r0, r0
    7efc: 35f8         	adds	r5, #0xf8
    7efe: 0000         	movs	r0, r0
    7f00: 3462         	adds	r4, #0x62
    7f02: 0000         	movs	r0, r0
    7f04: 6152         	str	r2, [r2, #0x14]
    7f06: 0000         	movs	r0, r0
    7f08: 4210         	tst	r0, r2
    7f0a: 0000         	movs	r0, r0
    7f0c: 368c         	adds	r6, #0x8c
    7f0e: 0000         	movs	r0, r0
    7f10: 3436         	adds	r4, #0x36
    7f12: 0000         	movs	r0, r0
    7f14: 42ae         	cmp	r6, r5
    7f16: 0000         	movs	r0, r0
    7f18: 429c         	cmp	r4, r3
    7f1a: 0000         	movs	r0, r0
    7f1c: 420e         	tst	r6, r1
    7f1e: 0000         	movs	r0, r0
    7f20: 424a         	rsbs	r2, r1, #0
    7f22: 0000         	movs	r0, r0
    7f24: 41e0         	rors	r0, r4
    7f26: 0000         	movs	r0, r0
