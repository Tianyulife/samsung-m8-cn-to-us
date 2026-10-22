
firmware-analysis/US-1720.7/rootfs/root/usr/lib/libsystem-info-external-plugin.so:	file format elf32-littlearm

Disassembly of section .text:

00004d10 <system_info_get_model>:
    4d10: 4a2f         	ldr	r2, [pc, #0xbc]         @ 0x4dd0 <system_info_get_model+0xc0>
    4d12: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x4dd4 <system_info_get_model+0xc4>
    4d14: 447a         	add	r2, pc
    4d16: b5f0         	push	{r4, r5, r6, r7, lr}
    4d18: fab1 f481    	clz	r4, r1
    4d1c: f2ad 4d04    	subw	sp, sp, #0x404
    4d20: 58d3         	ldr	r3, [r2, r3]
    4d22: 0964         	lsrs	r4, r4, #0x5
    4d24: 2800         	cmp	r0, #0x0
    4d26: bf18         	it	ne
    4d28: 2401         	movne	r4, #0x1
    4d2a: 681b         	ldr	r3, [r3]
    4d2c: 93ff         	str	r3, [sp, #0x3fc]
    4d2e: f04f 0300    	mov.w	r3, #0x0
    4d32: bb64         	cbnz	r4, 0x4d8e <system_info_get_model+0x7e> @ imm = #0x58
    4d34: 460d         	mov	r5, r1
    4d36: f242 308f    	movw	r0, #0x238f
    4d3a: a904         	add	r1, sp, #0x10
    4d3c: f7ff eabe    	blx	0x42bc <factory_get_str_data@plt> @ imm = #-0xa84
    4d40: 2801         	cmp	r0, #0x1
    4d42: d127         	bne	0x4d94 <system_info_get_model+0x84> @ imm = #0x4e
    4d44: ae05         	add	r6, sp, #0x14
    4d46: f44f 77c3    	mov.w	r7, #0x186
    4d4a: 4630         	mov	r0, r6
    4d4c: f7ff ea78    	blx	0x4240 <strdup@plt>     @ imm = #-0xb10
    4d50: 4a21         	ldr	r2, [pc, #0x84]         @ 0x4dd8 <system_info_get_model+0xc8>
    4d52: 4b22         	ldr	r3, [pc, #0x88]         @ 0x4ddc <system_info_get_model+0xcc>
    4d54: 2103         	movs	r1, #0x3
    4d56: 447a         	add	r2, pc ; STR 'system_info_get_tv_tuner_supported'
    4d58: 9603         	str	r6, [sp, #0xc]
    4d5a: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/system-info-plugin-tv-0.0.39/src/2022/common/system_product_API_common.c'
    4d5c: 6028         	str	r0, [r5]
    4d5e: 32a8         	adds	r2, #0xa8
    4d60: 3349         	adds	r3, #0x49
    4d62: 9201         	str	r2, [sp, #0x4]
    4d64: 2002         	movs	r0, #0x2
    4d66: 9300         	str	r3, [sp]
    4d68: 4a1d         	ldr	r2, [pc, #0x74]         @ 0x4de0 <system_info_get_model+0xd0>
    4d6a: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x4de4 <system_info_get_model+0xd4>
    4d6c: 447a         	add	r2, pc ; STR 'SYSTEM_INFO'
    4d6e: 9702         	str	r7, [sp, #0x8]
    4d70: 447b         	add	r3, pc ; STR '%s: %s(%d) > model string from factory : %s'
    4d72: f7ff eb60    	blx	0x4434 <__dlog_print@plt> @ imm = #-0x940
    4d76: 4620         	mov	r0, r4
    4d78: 4a1b         	ldr	r2, [pc, #0x6c]         @ 0x4de8 <system_info_get_model+0xd8>
    4d7a: 4b16         	ldr	r3, [pc, #0x58]         @ 0x4dd4 <system_info_get_model+0xc4>
    4d7c: 447a         	add	r2, pc
    4d7e: 58d3         	ldr	r3, [r2, r3]
    4d80: 681a         	ldr	r2, [r3]
    4d82: 9bff         	ldr	r3, [sp, #0x3fc]
    4d84: 405a         	eors	r2, r3
    4d86: d121         	bne	0x4dcc <system_info_get_model+0xbc> @ imm = #0x42
    4d88: f20d 4d04    	addw	sp, sp, #0x404
    4d8c: bdf0         	pop	{r4, r5, r6, r7, pc}
    4d8e: f06f 0015    	mvn	r0, #0x15
    4d92: e7f1         	b	0x4d78 <system_info_get_model+0x68> @ imm = #-0x1e
    4d94: 4b15         	ldr	r3, [pc, #0x54]         @ 0x4dec <system_info_get_model+0xdc>
    4d96: f44f 70bf    	mov.w	r0, #0x17e
    4d9a: 4a15         	ldr	r2, [pc, #0x54]         @ 0x4df0 <system_info_get_model+0xe0>
    4d9c: 2106         	movs	r1, #0x6
    4d9e: 447b         	add	r3, pc ; STR 'system_info_get_tv_tuner_supported'
    4da0: 447a         	add	r2, pc ; STR '/home/abuild/rpmbuild/BUILD/system-info-plugin-tv-0.0.39/src/2022/common/system_product_API_common.c'
    4da2: 33a8         	adds	r3, #0xa8
    4da4: 3249         	adds	r2, #0x49
    4da6: e9cd 3001    	strd	r3, r0, [sp, #4]
    4daa: 9200         	str	r2, [sp]
    4dac: 2002         	movs	r0, #0x2
    4dae: 4b11         	ldr	r3, [pc, #0x44]         @ 0x4df4 <system_info_get_model+0xe4>
    4db0: 4a11         	ldr	r2, [pc, #0x44]         @ 0x4df8 <system_info_get_model+0xe8>
    4db2: 447b         	add	r3, pc ; STR '%s: %s(%d) > cannot get factory aby model'
    4db4: 447a         	add	r2, pc ; STR 'SYSTEM_INFO'
    4db6: f7ff eb3e    	blx	0x4434 <__dlog_print@plt> @ imm = #-0x984
    4dba: 4810         	ldr	r0, [pc, #0x40]         @ 0x4dfc <system_info_get_model+0xec>
    4dbc: 4478         	add	r0, pc
    4dbe: f7ff ea40    	blx	0x4240 <strdup@plt>     @ imm = #-0xb80
    4dc2: 4603         	mov	r3, r0
    4dc4: f06f 0004    	mvn	r0, #0x4
    4dc8: 602b         	str	r3, [r5]
    4dca: e7d5         	b	0x4d78 <system_info_get_model+0x68> @ imm = #-0x56
    4dcc: f7ff ea3e    	blx	0x424c <__stack_chk_fail@plt> @ imm = #-0xb84
    4dd0: b2e8         	uxtb	r0, r5
    4dd2: 0001         	movs	r1, r0
    4dd4: 0114         	lsls	r4, r2, #0x4
    4dd6: 0000         	movs	r0, r0
    4dd8: 91ee         	str	r1, [sp, #0x3b8]
    4dda: 0000         	movs	r0, r0
    4ddc: 64f2         	str	r2, [r6, #0x4c]
    4dde: 0000         	movs	r0, r0
    4de0: 64d4         	str	r4, [r2, #0x4c]
    4de2: 0000         	movs	r0, r0
    4de4: 66f8         	str	r0, [r7, #0x6c]
    4de6: 0000         	movs	r0, r0
    4de8: b280         	uxth	r0, r0
    4dea: 0001         	movs	r1, r0
    4dec: 91a6         	str	r1, [sp, #0x298]
    4dee: 0000         	movs	r0, r0
    4df0: 64ac         	str	r4, [r5, #0x48]
    4df2: 0000         	movs	r0, r0
    4df4: 668a         	str	r2, [r1, #0x68]
    4df6: 0000         	movs	r0, r0
    4df8: 648c         	str	r4, [r1, #0x48]
    4dfa: 0000         	movs	r0, r0
    4dfc: 6ff0         	ldr	r0, [r6, #0x7c]
    4dfe: 0000         	movs	r0, r0
