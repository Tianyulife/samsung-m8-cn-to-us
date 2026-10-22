
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44ef0c00 <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s>:
44ef0c00: e92d 47f0    	push.w	{r4, r5, r6, r7, r8, r9, r10, lr}
44ef0c04: 460e         	mov	r6, r1
44ef0c06: 2101         	movs	r1, #0x1
44ef0c08: b084         	sub	sp, #0x10
44ef0c0a: 4607         	mov	r7, r0
44ef0c0c: f7f4 e94e    	blx	0x44ee4eac <_ZN19FCStorageBaseCommon12m_InitializeEi@plt> @ imm = #-0xbd64
44ef0c10: 2800         	cmp	r0, #0x0
44ef0c12: d157         	bne	0x44ef0cc4 <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s+0xc4> @ imm = #0xae
44ef0c14: f8d7 9624    	ldr.w	r9, [r7, #0x624]
44ef0c18: 4605         	mov	r5, r0
44ef0c1a: f8d7 8628    	ldr.w	r8, [r7, #0x628]
44ef0c1e: f1b9 0f00    	cmp.w	r9, #0x0
44ef0c22: d104         	bne	0x44ef0c2e <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s+0x2e> @ imm = #0x8
44ef0c24: e011         	b	0x44ef0c4a <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s+0x4a> @ imm = #0x22
44ef0c26: d035         	beq	0x44ef0c94 <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s+0x94> @ imm = #0x6a
44ef0c28: 1c65         	adds	r5, r4, #0x1
44ef0c2a: 45a9         	cmp	r9, r5
44ef0c2c: d90d         	bls	0x44ef0c4a <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s+0x4a> @ imm = #0x1a
44ef0c2e: eb05 0409    	add.w	r4, r5, r9
44ef0c32: 4630         	mov	r0, r6
44ef0c34: 0864         	lsrs	r4, r4, #0x1
44ef0c36: eb08 1a44    	add.w	r10, r8, r4, lsl #5
44ef0c3a: 4651         	mov	r1, r10
44ef0c3c: f7f4 eb58    	blx	0x44ee52f0 <_ZN19FCStorageBaseCommon19m_CmprIndexFileItemEPKvS1_@plt> @ imm = #-0xb950
44ef0c40: 2800         	cmp	r0, #0x0
44ef0c42: daf0         	bge	0x44ef0c26 <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s+0x26> @ imm = #-0x20
44ef0c44: 46a1         	mov	r9, r4
44ef0c46: 45a9         	cmp	r9, r5
44ef0c48: d8f1         	bhi	0x44ef0c2e <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s+0x2e> @ imm = #-0x1e
44ef0c4a: 2102         	movs	r1, #0x2
44ef0c4c: 4638         	mov	r0, r7
44ef0c4e: f7f4 e92e    	blx	0x44ee4eac <_ZN19FCStorageBaseCommon12m_InitializeEi@plt> @ imm = #-0xbda4
44ef0c52: 2800         	cmp	r0, #0x0
44ef0c54: d136         	bne	0x44ef0cc4 <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s+0xc4> @ imm = #0x6c
44ef0c56: f8d7 862c    	ldr.w	r8, [r7, #0x62c]
44ef0c5a: 4605         	mov	r5, r0
44ef0c5c: f8d7 7630    	ldr.w	r7, [r7, #0x630]
44ef0c60: f1b8 0f00    	cmp.w	r8, #0x0
44ef0c64: d121         	bne	0x44ef0caa <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s+0xaa> @ imm = #0x42
44ef0c66: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x44ef0cd8 <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s+0xd8>
44ef0c68: f640 147d    	movw	r4, #0x97d
44ef0c6c: 4a1b         	ldr	r2, [pc, #0x6c]         @ 0x44ef0cdc <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s+0xdc>
44ef0c6e: 2103         	movs	r1, #0x3
44ef0c70: 447b         	add	r3, pc
44ef0c72: 6830         	ldr	r0, [r6]
44ef0c74: 447a         	add	r2, pc
44ef0c76: 334c         	adds	r3, #0x4c
44ef0c78: e9cd 2401    	strd	r2, r4, [sp, #4]
44ef0c7c: f04f 0a00    	mov.w	r10, #0x0
44ef0c80: 9300         	str	r3, [sp]
44ef0c82: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x44ef0ce0 <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s+0xe0>
44ef0c84: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x44ef0ce4 <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s+0xe4>
44ef0c86: 9003         	str	r0, [sp, #0xc]
44ef0c88: 447a         	add	r2, pc
44ef0c8a: 447b         	add	r3, pc
44ef0c8c: 2002         	movs	r0, #0x2
44ef0c8e: f7f4 e8a0    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0xbec0
44ef0c92: e002         	b	0x44ef0c9a <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s+0x9a> @ imm = #0x4
44ef0c94: f1ba 0f00    	cmp.w	r10, #0x0
44ef0c98: d0d7         	beq	0x44ef0c4a <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s+0x4a> @ imm = #-0x52
44ef0c9a: 4650         	mov	r0, r10
44ef0c9c: b004         	add	sp, #0x10
44ef0c9e: e8bd 87f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, pc}
44ef0ca2: d015         	beq	0x44ef0cd0 <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s+0xd0> @ imm = #0x2a
44ef0ca4: 1c65         	adds	r5, r4, #0x1
44ef0ca6: 45a8         	cmp	r8, r5
44ef0ca8: d9dd         	bls	0x44ef0c66 <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s+0x66> @ imm = #-0x46
44ef0caa: eb08 0405    	add.w	r4, r8, r5
44ef0cae: 4630         	mov	r0, r6
44ef0cb0: 0864         	lsrs	r4, r4, #0x1
44ef0cb2: eb07 1a44    	add.w	r10, r7, r4, lsl #5
44ef0cb6: 4651         	mov	r1, r10
44ef0cb8: f7f4 eb1a    	blx	0x44ee52f0 <_ZN19FCStorageBaseCommon19m_CmprIndexFileItemEPKvS1_@plt> @ imm = #-0xb9cc
44ef0cbc: 2800         	cmp	r0, #0x0
44ef0cbe: daf0         	bge	0x44ef0ca2 <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s+0xa2> @ imm = #-0x20
44ef0cc0: 46a0         	mov	r8, r4
44ef0cc2: e7f0         	b	0x44ef0ca6 <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s+0xa6> @ imm = #-0x20
44ef0cc4: f04f 0a00    	mov.w	r10, #0x0
44ef0cc8: 4650         	mov	r0, r10
44ef0cca: b004         	add	sp, #0x10
44ef0ccc: e8bd 87f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, pc}
44ef0cd0: f1ba 0f00    	cmp.w	r10, #0x0
44ef0cd4: d1e1         	bne	0x44ef0c9a <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s+0x9a> @ imm = #-0x3e
44ef0cd6: e7c6         	b	0x44ef0c66 <_ZN19FCStorageBaseCommon17t_GetFileItemNodeEP13FacFileItem_s+0x66> @ imm = #-0x74
44ef0cd8: 3f50         	subs	r7, #0x50
44ef0cda: 0001         	movs	r1, r0
44ef0cdc: 65f4         	str	r4, [r6, #0x5c]
44ef0cde: 0001         	movs	r1, r0
44ef0ce0: 368c         	adds	r6, #0x8c
44ef0ce2: 0001         	movs	r1, r0
44ef0ce4: 65ba         	str	r2, [r7, #0x58]
44ef0ce6: 0001         	movs	r1, r0
