
firmware-analysis/US-1720.7/rootfs/root/usr/apps/comss/bin/comss:	file format elf32-littlearm

Disassembly of section .text:

00012b0c <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO>:
   12b0c: 4acd         	ldr	r2, [pc, #0x334]        @ 0x12e44 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x338>
   12b0e: 4bce         	ldr	r3, [pc, #0x338]        @ 0x12e48 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x33c>
   12b10: 447a         	add	r2, pc
   12b12: e92d 43f0    	push.w	{r4, r5, r6, r7, r8, r9, lr}
   12b16: 460c         	mov	r4, r1
   12b18: b09b         	sub	sp, #0x6c
   12b1a: 4607         	mov	r7, r0
   12b1c: 58d3         	ldr	r3, [r2, r3]
   12b1e: ae13         	add	r6, sp, #0x4c
   12b20: e9d1 1200    	ldrd	r1, r2, [r1]
   12b24: 4630         	mov	r0, r6
   12b26: 681b         	ldr	r3, [r3]
   12b28: 9319         	str	r3, [sp, #0x64]
   12b2a: f04f 0300    	mov.w	r3, #0x0
   12b2e: ad15         	add	r5, sp, #0x54
   12b30: 440a         	add	r2, r1
   12b32: 9513         	str	r5, [sp, #0x4c]
   12b34: f7fb fd0a    	bl	0xe54c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x45ec
   12b38: 4631         	mov	r1, r6
   12b3a: 4638         	mov	r0, r7
   12b3c: f7fe f888    	bl	0x10c50 <_ZN7CAIAuth14SetProductCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x1ef0
   12b40: 9813         	ldr	r0, [sp, #0x4c]
   12b42: 42a8         	cmp	r0, r5
   12b44: d001         	beq	0x12b4a <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x3e> @ imm = #0x2
   12b46: f7fa edae    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x54a4
   12b4a: 69e1         	ldr	r1, [r4, #0x1c]
   12b4c: 4630         	mov	r0, r6
   12b4e: 6a22         	ldr	r2, [r4, #0x20]
   12b50: 9513         	str	r5, [sp, #0x4c]
   12b52: 440a         	add	r2, r1
   12b54: f7fb fcfa    	bl	0xe54c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x460c
   12b58: 4631         	mov	r1, r6
   12b5a: 4638         	mov	r0, r7
   12b5c: f7fe f854    	bl	0x10c08 <_ZN7CAIAuth10SetDisplayENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x1f58
   12b60: 9813         	ldr	r0, [sp, #0x4c]
   12b62: 42a8         	cmp	r0, r5
   12b64: d001         	beq	0x12b6a <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x5e> @ imm = #0x2
   12b66: f7fa ed9e    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x54c4
   12b6a: 6b61         	ldr	r1, [r4, #0x34]
   12b6c: 4630         	mov	r0, r6
   12b6e: 6ba2         	ldr	r2, [r4, #0x38]
   12b70: 9513         	str	r5, [sp, #0x4c]
   12b72: 440a         	add	r2, r1
   12b74: f7fb fcea    	bl	0xe54c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x462c
   12b78: 4631         	mov	r1, r6
   12b7a: 4638         	mov	r0, r7
   12b7c: f7fe f820    	bl	0x10bc0 <_ZN7CAIAuth10SetChipsetENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x1fc0
   12b80: 9813         	ldr	r0, [sp, #0x4c]
   12b82: 42a8         	cmp	r0, r5
   12b84: d001         	beq	0x12b8a <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x7e> @ imm = #0x2
   12b86: f7fa ed8e    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x54e4
   12b8a: 6ce1         	ldr	r1, [r4, #0x4c]
   12b8c: 4630         	mov	r0, r6
   12b8e: 6d22         	ldr	r2, [r4, #0x50]
   12b90: 9513         	str	r5, [sp, #0x4c]
   12b92: 440a         	add	r2, r1
   12b94: f7fb fcda    	bl	0xe54c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x464c
   12b98: 4631         	mov	r1, r6
   12b9a: 4638         	mov	r0, r7
   12b9c: f7fd ffec    	bl	0x10b78 <_ZN7CAIAuth9SetLineupENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x2028
   12ba0: 9813         	ldr	r0, [sp, #0x4c]
   12ba2: 42a8         	cmp	r0, r5
   12ba4: d001         	beq	0x12baa <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x9e> @ imm = #0x2
   12ba6: f7fa ed7e    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x5504
   12baa: 6e61         	ldr	r1, [r4, #0x64]
   12bac: 4630         	mov	r0, r6
   12bae: 6ea2         	ldr	r2, [r4, #0x68]
   12bb0: 9513         	str	r5, [sp, #0x4c]
   12bb2: 440a         	add	r2, r1
   12bb4: f7fb fcca    	bl	0xe54c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x466c
   12bb8: 4631         	mov	r1, r6
   12bba: 4638         	mov	r0, r7
   12bbc: f7fd ffb8    	bl	0x10b30 <_ZN7CAIAuth11SetBomModelENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x2090
   12bc0: 9813         	ldr	r0, [sp, #0x4c]
   12bc2: 42a8         	cmp	r0, r5
   12bc4: d001         	beq	0x12bca <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0xbe> @ imm = #0x2
   12bc6: f7fa ed6e    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x5524
   12bca: 6fe1         	ldr	r1, [r4, #0x7c]
   12bcc: 4630         	mov	r0, r6
   12bce: f8d4 2080    	ldr.w	r2, [r4, #0x80]
   12bd2: 9513         	str	r5, [sp, #0x4c]
   12bd4: 440a         	add	r2, r1
   12bd6: f7fb fcb9    	bl	0xe54c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x468e
   12bda: 4631         	mov	r1, r6
   12bdc: 4638         	mov	r0, r7
   12bde: f7fd ff83    	bl	0x10ae8 <_ZN7CAIAuth11SetLocalsetENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x20fa
   12be2: 9813         	ldr	r0, [sp, #0x4c]
   12be4: 42a8         	cmp	r0, r5
   12be6: d001         	beq	0x12bec <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0xe0> @ imm = #0x2
   12be8: f7fa ed5c    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x5548
   12bec: f8d4 1094    	ldr.w	r1, [r4, #0x94]
   12bf0: 4630         	mov	r0, r6
   12bf2: f8d4 2098    	ldr.w	r2, [r4, #0x98]
   12bf6: 9513         	str	r5, [sp, #0x4c]
   12bf8: 440a         	add	r2, r1
   12bfa: f7fb fca7    	bl	0xe54c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x46b2
   12bfe: 4631         	mov	r1, r6
   12c00: 4638         	mov	r0, r7
   12c02: f7fd ff4d    	bl	0x10aa0 <_ZN7CAIAuth14SetCountryCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x2166
   12c06: 9813         	ldr	r0, [sp, #0x4c]
   12c08: 42a8         	cmp	r0, r5
   12c0a: d001         	beq	0x12c10 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x104> @ imm = #0x2
   12c0c: f7fa ed4a    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x556c
   12c10: f8d4 10ac    	ldr.w	r1, [r4, #0xac]
   12c14: 4630         	mov	r0, r6
   12c16: f8d4 20b0    	ldr.w	r2, [r4, #0xb0]
   12c1a: 9513         	str	r5, [sp, #0x4c]
   12c1c: 440a         	add	r2, r1
   12c1e: f7fb fc95    	bl	0xe54c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x46d6
   12c22: 4631         	mov	r1, r6
   12c24: 4638         	mov	r0, r7
   12c26: f7fd f933    	bl	0xfe90 <_ZN7CAIAuth12SetTVVersionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x2d9a
   12c2a: 9813         	ldr	r0, [sp, #0x4c]
   12c2c: 42a8         	cmp	r0, r5
   12c2e: d001         	beq	0x12c34 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x128> @ imm = #0x2
   12c30: f7fa ed38    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x5590
   12c34: f107 0804    	add.w	r8, r7, #0x4
   12c38: f8d4 90e0    	ldr.w	r9, [r4, #0xe0]
   12c3c: 4640         	mov	r0, r8
   12c3e: f7fa ecfa    	blx	0xd634 <pthread_mutex_lock@plt> @ imm = #-0x560c
   12c42: f8c7 9124    	str.w	r9, [r7, #0x124]
   12c46: 4640         	mov	r0, r8
   12c48: f7fb e874    	blx	0xdd34 <pthread_mutex_unlock@plt> @ imm = #-0x4f18
   12c4c: f8d4 90dc    	ldr.w	r9, [r4, #0xdc]
   12c50: 4640         	mov	r0, r8
   12c52: f7fa ecf0    	blx	0xd634 <pthread_mutex_lock@plt> @ imm = #-0x5620
   12c56: 4640         	mov	r0, r8
   12c58: f8c7 9128    	str.w	r9, [r7, #0x128]
   12c5c: f7fb e86a    	blx	0xdd34 <pthread_mutex_unlock@plt> @ imm = #-0x4f2c
   12c60: 4630         	mov	r0, r6
   12c62: e9d4 1231    	ldrd	r1, r2, [r4, #196]
   12c66: 9513         	str	r5, [sp, #0x4c]
   12c68: 440a         	add	r2, r1
   12c6a: f7fb fc6f    	bl	0xe54c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x4722
   12c6e: 4631         	mov	r1, r6
   12c70: 4638         	mov	r0, r7
   12c72: f7fc faeb    	bl	0xf24c <_ZN7CAIAuth14SetStrLanguageENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x3a2a
   12c76: 9813         	ldr	r0, [sp, #0x4c]
   12c78: 42a8         	cmp	r0, r5
   12c7a: d001         	beq	0x12c80 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x174> @ imm = #0x2
   12c7c: f7fa ed12    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x55dc
   12c80: f8d4 90ec    	ldr.w	r9, [r4, #0xec]
   12c84: 4640         	mov	r0, r8
   12c86: f7fa ecd6    	blx	0xd634 <pthread_mutex_lock@plt> @ imm = #-0x5654
   12c8a: f8c7 92e8    	str.w	r9, [r7, #0x2e8]
   12c8e: 4640         	mov	r0, r8
   12c90: f7fb e850    	blx	0xdd34 <pthread_mutex_unlock@plt> @ imm = #-0x4f60
   12c94: f8d4 90f0    	ldr.w	r9, [r4, #0xf0]
   12c98: 4640         	mov	r0, r8
   12c9a: f7fa eccc    	blx	0xd634 <pthread_mutex_lock@plt> @ imm = #-0x5668
   12c9e: f8c7 92ec    	str.w	r9, [r7, #0x2ec]
   12ca2: 4640         	mov	r0, r8
   12ca4: f7fb e846    	blx	0xdd34 <pthread_mutex_unlock@plt> @ imm = #-0x4f74
   12ca8: f8d4 90e8    	ldr.w	r9, [r4, #0xe8]
   12cac: 4640         	mov	r0, r8
   12cae: f7fa ecc2    	blx	0xd634 <pthread_mutex_lock@plt> @ imm = #-0x567c
   12cb2: 4640         	mov	r0, r8
   12cb4: f8c7 92cc    	str.w	r9, [r7, #0x2cc]
   12cb8: f7fb e83c    	blx	0xdd34 <pthread_mutex_unlock@plt> @ imm = #-0x4f88
   12cbc: 4630         	mov	r0, r6
   12cbe: e9d4 123f    	ldrd	r1, r2, [r4, #252]
   12cc2: 9513         	str	r5, [sp, #0x4c]
   12cc4: 440a         	add	r2, r1
   12cc6: f7fb fc41    	bl	0xe54c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x477e
   12cca: 4631         	mov	r1, r6
   12ccc: 4638         	mov	r0, r7
   12cce: f7fd fc7d    	bl	0x105cc <_ZN7CAIAuth15SetSerialNumberENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x2706
   12cd2: 9813         	ldr	r0, [sp, #0x4c]
   12cd4: 42a8         	cmp	r0, r5
   12cd6: d001         	beq	0x12cdc <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x1d0> @ imm = #0x2
   12cd8: f7fa ece4    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x5638
   12cdc: f8d4 30e8    	ldr.w	r3, [r4, #0xe8]
   12ce0: 2b00         	cmp	r3, #0x0
   12ce2: d065         	beq	0x12db0 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x2a4> @ imm = #0xca
   12ce4: 2b01         	cmp	r3, #0x1
   12ce6: d056         	beq	0x12d96 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x28a> @ imm = #0xac
   12ce8: 4958         	ldr	r1, [pc, #0x160]        @ 0x12e4c <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x340>
   12cea: 4630         	mov	r0, r6
   12cec: 9513         	str	r5, [sp, #0x4c]
   12cee: 4479         	add	r1, pc ; STR 'developing'
   12cf0: f101 020a    	add.w	r2, r1, #0xa
   12cf4: f7fb fc2a    	bl	0xe54c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x47ac
   12cf8: 4631         	mov	r1, r6
   12cfa: 4638         	mov	r0, r7
   12cfc: f7fc fa58    	bl	0xf1b0 <_ZN7CAIAuth22SetStrInforlinkSerTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x3b50
   12d00: 9813         	ldr	r0, [sp, #0x4c]
   12d02: 42a8         	cmp	r0, r5
   12d04: d001         	beq	0x12d0a <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x1fe> @ imm = #0x2
   12d06: f7fa ecce    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x5664
   12d0a: 4638         	mov	r0, r7
   12d0c: f7ff fc80    	bl	0x12610 <_ZN7CAIAuth18SetFirmSecuSeedKeyEv> @ imm = #-0x700
   12d10: 2800         	cmp	r0, #0x0
   12d12: d05a         	beq	0x12dca <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x2be> @ imm = #0xb4
   12d14: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x12e50 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x344>
   12d16: 2105         	movs	r1, #0x5
   12d18: f8d4 60ec    	ldr.w	r6, [r4, #0xec]
   12d1c: 2000         	movs	r0, #0x0
   12d1e: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/CoMSSManager/AuthInfoMgr/src/AIAuth.cpp'
   12d20: f240 654d    	movw	r5, #0x64d
   12d24: 3353         	adds	r3, #0x53
   12d26: 9300         	str	r3, [sp]
   12d28: f8d4 20f0    	ldr.w	r2, [r4, #0xf0]
   12d2c: 9610         	str	r6, [sp, #0x40]
   12d2e: f8d4 30e8    	ldr.w	r3, [r4, #0xe8]
   12d32: 920f         	str	r2, [sp, #0x3c]
   12d34: f8d4 20c4    	ldr.w	r2, [r4, #0xc4]
   12d38: 930e         	str	r3, [sp, #0x38]
   12d3a: f8d4 30dc    	ldr.w	r3, [r4, #0xdc]
   12d3e: 920d         	str	r2, [sp, #0x34]
   12d40: f8d4 20e0    	ldr.w	r2, [r4, #0xe0]
   12d44: 930c         	str	r3, [sp, #0x30]
   12d46: f8d4 30ac    	ldr.w	r3, [r4, #0xac]
   12d4a: 920b         	str	r2, [sp, #0x2c]
   12d4c: f8d4 2094    	ldr.w	r2, [r4, #0x94]
   12d50: 930a         	str	r3, [sp, #0x28]
   12d52: 6fe3         	ldr	r3, [r4, #0x7c]
   12d54: 9209         	str	r2, [sp, #0x24]
   12d56: 6e62         	ldr	r2, [r4, #0x64]
   12d58: 9308         	str	r3, [sp, #0x20]
   12d5a: 6ce3         	ldr	r3, [r4, #0x4c]
   12d5c: 9207         	str	r2, [sp, #0x1c]
   12d5e: 6b66         	ldr	r6, [r4, #0x34]
   12d60: 9306         	str	r3, [sp, #0x18]
   12d62: 69e3         	ldr	r3, [r4, #0x1c]
   12d64: 6822         	ldr	r2, [r4]
   12d66: 9203         	str	r2, [sp, #0xc]
   12d68: 9304         	str	r3, [sp, #0x10]
   12d6a: 4a3a         	ldr	r2, [pc, #0xe8]         @ 0x12e54 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x348>
   12d6c: 4b3a         	ldr	r3, [pc, #0xe8]         @ 0x12e58 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x34c>
   12d6e: 4c3b         	ldr	r4, [pc, #0xec]         @ 0x12e5c <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x350>
   12d70: 447a         	add	r2, pc ; STR 'COMSS'
   12d72: 447b         	add	r3, pc
   12d74: 9605         	str	r6, [sp, #0x14]
   12d76: 447c         	add	r4, pc ; STR 'SetAuthSystemInfo'
   12d78: e9cd 4501    	strd	r4, r5, [sp, #4]
   12d7c: f7fa eaf0    	blx	0xd360 <__dlog_print@plt> @ imm = #-0x5a20
   12d80: 4a37         	ldr	r2, [pc, #0xdc]         @ 0x12e60 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x354>
   12d82: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x12e48 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x33c>
   12d84: 447a         	add	r2, pc
   12d86: 58d3         	ldr	r3, [r2, r3]
   12d88: 681a         	ldr	r2, [r3]
   12d8a: 9b19         	ldr	r3, [sp, #0x64]
   12d8c: 405a         	eors	r2, r3
   12d8e: d141         	bne	0x12e14 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x308> @ imm = #0x82
   12d90: b01b         	add	sp, #0x6c
   12d92: e8bd 83f0    	pop.w	{r4, r5, r6, r7, r8, r9, pc}
   12d96: 4933         	ldr	r1, [pc, #0xcc]         @ 0x12e64 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x358>
   12d98: 4630         	mov	r0, r6
   12d9a: 9513         	str	r5, [sp, #0x4c]
   12d9c: 4479         	add	r1, pc ; STR 'development'
   12d9e: f101 020b    	add.w	r2, r1, #0xb
   12da2: f7fb fbd3    	bl	0xe54c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x485a
   12da6: 4631         	mov	r1, r6
   12da8: 4638         	mov	r0, r7
   12daa: f7fc fa01    	bl	0xf1b0 <_ZN7CAIAuth22SetStrInforlinkSerTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x3bfe
   12dae: e7a7         	b	0x12d00 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x1f4> @ imm = #-0xb2
   12db0: 492d         	ldr	r1, [pc, #0xb4]         @ 0x12e68 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x35c>
   12db2: 4630         	mov	r0, r6
   12db4: 9513         	str	r5, [sp, #0x4c]
   12db6: 4479         	add	r1, pc ; STR 'operation'
   12db8: f101 0209    	add.w	r2, r1, #0x9
   12dbc: f7fb fbc6    	bl	0xe54c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x4874
   12dc0: 4631         	mov	r1, r6
   12dc2: 4638         	mov	r0, r7
   12dc4: f7fc f9f4    	bl	0xf1b0 <_ZN7CAIAuth22SetStrInforlinkSerTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x3c18
   12dc8: e79a         	b	0x12d00 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x1f4> @ imm = #-0xcc
   12dca: 4d28         	ldr	r5, [pc, #0xa0]         @ 0x12e6c <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x360>
   12dcc: f240 6346    	movw	r3, #0x646
   12dd0: 4e27         	ldr	r6, [pc, #0x9c]         @ 0x12e70 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x364>
   12dd2: 2106         	movs	r1, #0x6
   12dd4: 9302         	str	r3, [sp, #0x8]
   12dd6: 447d         	add	r5, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/CoMSSManager/AuthInfoMgr/src/AIAuth.cpp'
   12dd8: f8df 8098    	ldr.w	r8, [pc, #0x98]         @ 0x12e74 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x368>
   12ddc: 447e         	add	r6, pc ; STR 'COMSS'
   12dde: 4b26         	ldr	r3, [pc, #0x98]         @ 0x12e78 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x36c>
   12de0: 3553         	adds	r5, #0x53
   12de2: 44f8         	add	r8, pc ; STR 'SetAuthSystemInfo'
   12de4: 4632         	mov	r2, r6
   12de6: 447b         	add	r3, pc
   12de8: e9cd 5800    	strd	r5, r8, [sp]
   12dec: f7fa eab8    	blx	0xd360 <__dlog_print@plt> @ imm = #-0x5a90
   12df0: 4638         	mov	r0, r7
   12df2: f7ff fc0d    	bl	0x12610 <_ZN7CAIAuth18SetFirmSecuSeedKeyEv> @ imm = #-0x7e6
   12df6: 2800         	cmp	r0, #0x0
   12df8: d18c         	bne	0x12d14 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x208> @ imm = #-0xe8
   12dfa: 4b20         	ldr	r3, [pc, #0x80]         @ 0x12e7c <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x370>
   12dfc: 4632         	mov	r2, r6
   12dfe: 9500         	str	r5, [sp]
   12e00: 2106         	movs	r1, #0x6
   12e02: f240 6549    	movw	r5, #0x649
   12e06: 447b         	add	r3, pc
   12e08: f8cd 8004    	str.w	r8, [sp, #0x4]
   12e0c: 9502         	str	r5, [sp, #0x8]
   12e0e: f7fa eaa8    	blx	0xd360 <__dlog_print@plt> @ imm = #-0x5ab0
   12e12: e77f         	b	0x12d14 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x208> @ imm = #-0x102
   12e14: f7fa eb42    	blx	0xd49c <__stack_chk_fail@plt> @ imm = #-0x597c
   12e18: 9b13         	ldr	r3, [sp, #0x4c]
   12e1a: 4604         	mov	r4, r0
   12e1c: 42ab         	cmp	r3, r5
   12e1e: d002         	beq	0x12e26 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x31a> @ imm = #0x4
   12e20: 4618         	mov	r0, r3
   12e22: f7fa ec40    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x5780
   12e26: 4620         	mov	r0, r4
   12e28: f7fa ecd4    	blx	0xd7d4 <_Unwind_Resume@plt> @ imm = #-0x5658
   12e2c: e7f4         	b	0x12e18 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x18
   12e2e: e7f3         	b	0x12e18 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x1a
   12e30: e7f2         	b	0x12e18 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x1c
   12e32: e7f1         	b	0x12e18 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x1e
   12e34: e7f0         	b	0x12e18 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x20
   12e36: e7ef         	b	0x12e18 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x22
   12e38: e7ee         	b	0x12e18 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x24
   12e3a: e7ed         	b	0x12e18 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x26
   12e3c: e7ec         	b	0x12e18 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x28
   12e3e: e7eb         	b	0x12e18 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x2a
   12e40: e7ea         	b	0x12e18 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x2c
   12e42: e7e9         	b	0x12e18 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x2e
   12e44: 64ec         	str	r4, [r5, #0x4c]
   12e46: 0004         	movs	r4, r0
   12e48: 03fc         	lsls	r4, r7, #0xf
   12e4a: 0000         	movs	r0, r0
   12e4c: 4c5a         	ldr	r4, [pc, #0x168]        @ 0x12fb8 <_ZN14CAIAuthInfoMgr29m_CheckNeedBlockAtokenRequestEv+0x2c>
   12e4e: 0002         	movs	r2, r0
   12e50: 32c6         	adds	r2, #0xc6
   12e52: 0002         	movs	r2, r0
   12e54: 3090         	adds	r0, #0x90
   12e56: 0002         	movs	r2, r0
   12e58: 4c8a         	ldr	r4, [pc, #0x228]        @ 0x13084 <_ZN14CAIAuthInfoMgr29m_CheckNeedBlockAtokenRequestEv+0xf8>
   12e5a: 0002         	movs	r2, r0
   12e5c: 4c2e         	ldr	r4, [pc, #0xb8]         @ 0x12f18 <_ZN7CAIAuth19GetOperatingSecuKeyB5cxx11Ev+0x98>
   12e5e: 0002         	movs	r2, r0
   12e60: 6278         	str	r0, [r7, #0x24]
   12e62: 0004         	movs	r4, r0
   12e64: 4ba0         	ldr	r3, [pc, #0x280]        @ 0x130e8 <_ZN14CAIAuthInfoMgr29m_CheckNeedBlockAtokenRequestEv+0x15c>
   12e66: 0002         	movs	r2, r0
   12e68: 4b7a         	ldr	r3, [pc, #0x1e8]        @ 0x13054 <_ZN14CAIAuthInfoMgr29m_CheckNeedBlockAtokenRequestEv+0xc8>
   12e6a: 0002         	movs	r2, r0
   12e6c: 320e         	adds	r2, #0xe
   12e6e: 0002         	movs	r2, r0
   12e70: 3024         	adds	r0, #0x24
   12e72: 0002         	movs	r2, r0
   12e74: 4bc2         	ldr	r3, [pc, #0x308]        @ 0x13180 <_ZN14CAIAuthInfoMgr29m_CheckNeedBlockAtokenRequestEv+0x1f4>
   12e76: 0002         	movs	r2, r0
   12e78: 4b6e         	ldr	r3, [pc, #0x1b8]        @ 0x13034 <_ZN14CAIAuthInfoMgr29m_CheckNeedBlockAtokenRequestEv+0xa8>
   12e7a: 0002         	movs	r2, r0
   12e7c: 4bb2         	ldr	r3, [pc, #0x2c8]        @ 0x13148 <_ZN14CAIAuthInfoMgr29m_CheckNeedBlockAtokenRequestEv+0x1bc>
   12e7e: 0002         	movs	r2, r0
