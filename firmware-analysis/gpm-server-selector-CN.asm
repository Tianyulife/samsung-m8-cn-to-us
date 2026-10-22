00022da0 <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_>:
   22da0: b5f0         	push	{r4, r5, r6, r7, lr}
   22da2: 460d         	mov	r5, r1
   22da4: 4950         	ldr	r1, [pc, #0x140]        @ 0x22ee8 <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x148>
   22da6: 4614         	mov	r4, r2
   22da8: 4a50         	ldr	r2, [pc, #0x140]        @ 0x22eec <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x14c>
   22daa: 4479         	add	r1, pc
   22dac: b087         	sub	sp, #0x1c
   22dae: 4b50         	ldr	r3, [pc, #0x140]        @ 0x22ef0 <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x150>
   22db0: 4607         	mov	r7, r0
   22db2: a804         	add	r0, sp, #0x10
   22db4: 588a         	ldr	r2, [r1, r2]
   22db6: 447b         	add	r3, pc
   22db8: 3308         	adds	r3, #0x8
   22dba: 6812         	ldr	r2, [r2]
   22dbc: 9205         	str	r2, [sp, #0x14]
   22dbe: f04f 0200    	mov.w	r2, #0x0
   22dc2: 9304         	str	r3, [sp, #0x10]
   22dc4: f7f7 fc14    	bl	0x1a5f0 <_ZN12ICSystemInfo17GetUseChinaServerEv> @ imm = #-0x87d8
   22dc8: b348         	cbz	r0, 0x22e1e <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x7e> @ imm = #0x52
   22dca: 4b4a         	ldr	r3, [pc, #0x128]        @ 0x22ef4 <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x154>
   22dcc: f44f 7669    	mov.w	r6, #0x3a4
   22dd0: 4a49         	ldr	r2, [pc, #0x124]        @ 0x22ef8 <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x158>
   22dd2: 2105         	movs	r1, #0x5
   22dd4: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/HttpCommunication/src/CSHttpRequest.cpp'
   22dd6: 9602         	str	r6, [sp, #0x8]
   22dd8: 447a         	add	r2, pc ; STR 'm_GetGPMServerUrlAndHost'
   22dda: 3353         	adds	r3, #0x53
   22ddc: e9cd 3200    	strd	r3, r2, [sp]
   22de0: 2000         	movs	r0, #0x0
   22de2: 4b46         	ldr	r3, [pc, #0x118]        @ 0x22efc <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x15c>
   22de4: 4a46         	ldr	r2, [pc, #0x118]        @ 0x22f00 <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x160>
   22de6: 447b         	add	r3, pc
   22de8: 447a         	add	r2, pc ; STR 'COMSS'
   22dea: f7ea e83a    	blx	0xce60 <__dlog_print@plt> @ imm = #-0x15f8c
   22dee: 683b         	ldr	r3, [r7]
   22df0: 686a         	ldr	r2, [r5, #0x4]
   22df2: 4628         	mov	r0, r5
   22df4: f8d3 62cc    	ldr.w	r6, [r3, #0x2cc]
   22df8: 2e00         	cmp	r6, #0x0
   22dfa: d145         	bne	0x22e88 <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0xe8> @ imm = #0x8a
   22dfc: 4b41         	ldr	r3, [pc, #0x104]        @ 0x22f04 <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x164>
   22dfe: 2119         	movs	r1, #0x19
   22e00: 9100         	str	r1, [sp]
   22e02: 4631         	mov	r1, r6
   22e04: 447b         	add	r3, pc ; STR 'https://gpm.samsungqbe.cn'
   22e06: f7ea eb80    	blx	0xd508 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj@plt> @ imm = #-0x15900
   22e0a: 2218         	movs	r2, #0x18
   22e0c: 4b3e         	ldr	r3, [pc, #0xf8]         @ 0x22f08 <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x168>
   22e0e: 4631         	mov	r1, r6
   22e10: 9200         	str	r2, [sp]
   22e12: 4620         	mov	r0, r4
   22e14: 447b         	add	r3, pc ; STR 'Host: gpms.samsungqbe.cn'
   22e16: 6862         	ldr	r2, [r4, #0x4]
   22e18: f7ea eb76    	blx	0xd508 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj@plt> @ imm = #-0x15914
   22e1c: e015         	b	0x22e4a <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0xaa> @ imm = #0x2a
   22e1e: 683b         	ldr	r3, [r7]
   22e20: 686a         	ldr	r2, [r5, #0x4]
   22e22: f8d3 72cc    	ldr.w	r7, [r3, #0x2cc]
   22e26: b9d7         	cbnz	r7, 0x22e5e <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0xbe> @ imm = #0x34
   22e28: 4b38         	ldr	r3, [pc, #0xe0]         @ 0x22f0c <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x16c>
   22e2a: 211a         	movs	r1, #0x1a
   22e2c: 4628         	mov	r0, r5
   22e2e: 9100         	str	r1, [sp]
   22e30: 447b         	add	r3, pc ; STR 'https://gpm.samsungqbe.com'
   22e32: 4639         	mov	r1, r7
   22e34: f7ea eb68    	blx	0xd508 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj@plt> @ imm = #-0x15930
   22e38: 2219         	movs	r2, #0x19
   22e3a: 4b35         	ldr	r3, [pc, #0xd4]         @ 0x22f10 <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x170>
   22e3c: 4639         	mov	r1, r7
   22e3e: 9200         	str	r2, [sp]
   22e40: 4620         	mov	r0, r4
   22e42: 447b         	add	r3, pc ; STR 'Host: gpms.samsungqbe.com'
   22e44: 6862         	ldr	r2, [r4, #0x4]
   22e46: f7ea eb60    	blx	0xd508 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj@plt> @ imm = #-0x15940
   22e4a: 4a32         	ldr	r2, [pc, #0xc8]         @ 0x22f14 <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x174>
   22e4c: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x22eec <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x14c>
   22e4e: 447a         	add	r2, pc
   22e50: 58d3         	ldr	r3, [r2, r3]
   22e52: 681a         	ldr	r2, [r3]
   22e54: 9b05         	ldr	r3, [sp, #0x14]
   22e56: 405a         	eors	r2, r3
   22e58: d143         	bne	0x22ee2 <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x142> @ imm = #0x86
   22e5a: b007         	add	sp, #0x1c
   22e5c: bdf0         	pop	{r4, r5, r6, r7, pc}
   22e5e: 4606         	mov	r6, r0
   22e60: 211d         	movs	r1, #0x1d
   22e62: 4628         	mov	r0, r5
   22e64: 2f01         	cmp	r7, #0x1
   22e66: d022         	beq	0x22eae <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x10e> @ imm = #0x44
   22e68: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x22f18 <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x178>
   22e6a: 9100         	str	r1, [sp]
   22e6c: 4631         	mov	r1, r6
   22e6e: 447b         	add	r3, pc ; STR 'https://gpmdev.samsungqbe.com'
   22e70: f7ea eb4a    	blx	0xd508 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj@plt> @ imm = #-0x1596c
   22e74: 221b         	movs	r2, #0x1b
   22e76: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x22f1c <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x17c>
   22e78: 4631         	mov	r1, r6
   22e7a: 9200         	str	r2, [sp]
   22e7c: 4620         	mov	r0, r4
   22e7e: 447b         	add	r3, pc ; STR 'Host: gpmdev.samsungqbe.com'
   22e80: 6862         	ldr	r2, [r4, #0x4]
   22e82: f7ea eb42    	blx	0xd508 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj@plt> @ imm = #-0x1597c
   22e86: e7e0         	b	0x22e4a <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0xaa> @ imm = #-0x40
   22e88: 211c         	movs	r1, #0x1c
   22e8a: 2e01         	cmp	r6, #0x1
   22e8c: d01f         	beq	0x22ece <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x12e> @ imm = #0x3e
   22e8e: 4b24         	ldr	r3, [pc, #0x90]         @ 0x22f20 <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x180>
   22e90: 9100         	str	r1, [sp]
   22e92: 2100         	movs	r1, #0x0
   22e94: 447b         	add	r3, pc ; STR 'https://gpmdev.samsungqbe.cn'
   22e96: f7ea eb38    	blx	0xd508 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj@plt> @ imm = #-0x15990
   22e9a: 4b22         	ldr	r3, [pc, #0x88]         @ 0x22f24 <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x184>
   22e9c: 221a         	movs	r2, #0x1a
   22e9e: 447b         	add	r3, pc ; STR 'Host: gpmdev.samsungqbe.cn'
   22ea0: 9200         	str	r2, [sp]
   22ea2: 4620         	mov	r0, r4
   22ea4: 2100         	movs	r1, #0x0
   22ea6: 6862         	ldr	r2, [r4, #0x4]
   22ea8: f7ea eb2e    	blx	0xd508 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj@plt> @ imm = #-0x159a4
   22eac: e7cd         	b	0x22e4a <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0xaa> @ imm = #-0x66
   22eae: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x22f28 <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x188>
   22eb0: 9100         	str	r1, [sp]
   22eb2: 4631         	mov	r1, r6
   22eb4: 447b         	add	r3, pc ; STR 'https://gpmstg.samsungqbe.com'
   22eb6: f7ea eb28    	blx	0xd508 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj@plt> @ imm = #-0x159b0
   22eba: 221b         	movs	r2, #0x1b
   22ebc: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x22f2c <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x18c>
   22ebe: 4631         	mov	r1, r6
   22ec0: 9200         	str	r2, [sp]
   22ec2: 4620         	mov	r0, r4
   22ec4: 447b         	add	r3, pc ; STR 'Host: gpmstg.samsungqbe.com'
   22ec6: 6862         	ldr	r2, [r4, #0x4]
   22ec8: f7ea eb1e    	blx	0xd508 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj@plt> @ imm = #-0x159c4
   22ecc: e7bd         	b	0x22e4a <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0xaa> @ imm = #-0x86
   22ece: 4b18         	ldr	r3, [pc, #0x60]         @ 0x22f30 <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x190>
   22ed0: 9100         	str	r1, [sp]
   22ed2: 2100         	movs	r1, #0x0
   22ed4: 447b         	add	r3, pc ; STR 'https://gpmstg.samsungqbe.cn'
   22ed6: f7ea eb18    	blx	0xd508 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj@plt> @ imm = #-0x159d0
   22eda: 4b16         	ldr	r3, [pc, #0x58]         @ 0x22f34 <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x194>
   22edc: 221a         	movs	r2, #0x1a
   22ede: 447b         	add	r3, pc ; STR 'Host: gpmstg.samsungqbe.cn'
   22ee0: e7de         	b	0x22ea0 <_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_+0x100> @ imm = #-0x44
   22ee2: f7ea e85c    	blx	0xcf9c <__stack_chk_fail@plt> @ imm = #-0x15f48
   22ee6: bf00         	nop
   22ee8: 2252         	movs	r2, #0x52
   22eea: 0003         	movs	r3, r0
   22eec: 03f8         	lsls	r0, r7, #0xf
   22eee: 0000         	movs	r0, r0
   22ef0: 1efe         	subs	r6, r7, #0x3
   22ef2: 0003         	movs	r3, r0
   22ef4: 9498         	str	r4, [sp, #0x260]
   22ef6: 0001         	movs	r1, r0
   22ef8: 9478         	str	r4, [sp, #0x1e0]
   22efa: 0001         	movs	r1, r0
   22efc: 943a         	str	r4, [sp, #0xe8]
   22efe: 0001         	movs	r1, r0
   22f00: 0218         	lsls	r0, r3, #0x8
   22f02: 0001         	movs	r1, r0
   22f04: 94d0         	str	r4, [sp, #0x340]
   22f06: 0001         	movs	r1, r0
   22f08: 94dc         	str	r4, [sp, #0x370]
   22f0a: 0001         	movs	r1, r0
   22f0c: 9554         	str	r5, [sp, #0x150]
   22f0e: 0001         	movs	r1, r0
   22f10: 955e         	str	r5, [sp, #0x178]
   22f12: 0001         	movs	r1, r0
   22f14: 21ae         	movs	r1, #0xae
   22f16: 0003         	movs	r3, r0
   22f18: 958a         	str	r5, [sp, #0x228]
   22f1a: 0001         	movs	r1, r0
   22f1c: 959a         	str	r5, [sp, #0x268]
   22f1e: 0001         	movs	r1, r0
   22f20: 94b4         	str	r4, [sp, #0x2d0]
   22f22: 0001         	movs	r1, r0
   22f24: 94ca         	str	r4, [sp, #0x328]
   22f26: 0001         	movs	r1, r0
   22f28: 9508         	str	r5, [sp, #0x20]
   22f2a: 0001         	movs	r1, r0
   22f2c: 9518         	str	r5, [sp, #0x60]
   22f2e: 0001         	movs	r1, r0
   22f30: 9438         	str	r4, [sp, #0xe0]
   22f32: 0001         	movs	r1, r0
   22f34: 944e         	str	r4, [sp, #0x138]
   22f36: 0001         	movs	r1, r0