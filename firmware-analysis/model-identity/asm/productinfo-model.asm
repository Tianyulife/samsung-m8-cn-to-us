
firmware-analysis/US-1720.7/rootfs/root/usr/bin/emps/empPepperPlugins/productinfo/libproductinfo.so:	file format elf32-littlearm

Disassembly of section .text:

00006bd8 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE>:
    6bd8: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
    6bdc: 2300         	movs	r3, #0x0
    6bde: 4ca1         	ldr	r4, [pc, #0x284]        @ 0x6e64 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x28c>
    6be0: 4aa1         	ldr	r2, [pc, #0x284]        @ 0x6e68 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x290>
    6be2: b0a5         	sub	sp, #0x94
    6be4: 447c         	add	r4, pc
    6be6: 4da1         	ldr	r5, [pc, #0x284]        @ 0x6e6c <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x294>
    6be8: 4606         	mov	r6, r0
    6bea: 468b         	mov	r11, r1
    6bec: 4618         	mov	r0, r3
    6bee: a906         	add	r1, sp, #0x18
    6bf0: 58a2         	ldr	r2, [r4, r2]
    6bf2: f10d 0a4c    	add.w	r10, sp, #0x4c
    6bf6: 447d         	add	r5, pc
    6bf8: 6812         	ldr	r2, [r2]
    6bfa: 9223         	str	r2, [sp, #0x8c]
    6bfc: f04f 0200    	mov.w	r2, #0x0
    6c00: 9306         	str	r3, [sp, #0x18]
    6c02: 9312         	str	r3, [sp, #0x48]
    6c04: f88d 304c    	strb.w	r3, [sp, #0x4c]
    6c08: f8cd a044    	str.w	r10, [sp, #0x44]
    6c0c: f7fe eba2    	blx	0x5354 <system_info_get_value_string@plt> @ imm = #-0x18bc
    6c10: 4604         	mov	r4, r0
    6c12: 2800         	cmp	r0, #0x0
    6c14: d172         	bne	0x6cfc <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x124> @ imm = #0xe4
    6c16: 9f06         	ldr	r7, [sp, #0x18]
    6c18: b127         	cbz	r7, 0x6c24 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x4c> @ imm = #0x8
    6c1a: f997 3000    	ldrsb.w	r3, [r7]
    6c1e: 2b00         	cmp	r3, #0x0
    6c20: f040 80b4    	bne.w	0x6d8c <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x1b4> @ imm = #0x168
    6c24: af08         	add	r7, sp, #0x20
    6c26: f04f 0100    	mov.w	r1, #0x0
    6c2a: 4638         	mov	r0, r7
    6c2c: f7fe ec88    	blx	0x5540 <_ZN2pp3VarC1ENS0_4NullE@plt> @ imm = #-0x16f0
    6c30: 4b8f         	ldr	r3, [pc, #0x23c]        @ 0x6e70 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x298>
    6c32: f10d 0864    	add.w	r8, sp, #0x64
    6c36: 4644         	mov	r4, r8
    6c38: f8cd 805c    	str.w	r8, [sp, #0x5c]
    6c3c: 447b         	add	r3, pc ; STR 'UnknownError '
    6c3e: 2500         	movs	r5, #0x0
    6c40: f10d 0974    	add.w	r9, sp, #0x74
    6c44: cb0f         	ldm	r3, {r0, r1, r2, r3}
    6c46: c407         	stm	r4!, {r0, r1, r2}
    6c48: 462a         	mov	r2, r5
    6c4a: 7023         	strb	r3, [r4]
    6c4c: 4648         	mov	r0, r9
    6c4e: a907         	add	r1, sp, #0x1c
    6c50: 230d         	movs	r3, #0xd
    6c52: ac1f         	add	r4, sp, #0x7c
    6c54: 9318         	str	r3, [sp, #0x60]
    6c56: f88d 5071    	strb.w	r5, [sp, #0x71]
    6c5a: 2322         	movs	r3, #0x22
    6c5c: 9405         	str	r4, [sp, #0x14]
    6c5e: 941d         	str	r4, [sp, #0x74]
    6c60: 9307         	str	r3, [sp, #0x1c]
    6c62: f7fe ecce    	blx	0x5600 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERjj@plt> @ imm = #-0x1664
    6c66: f8df c20c    	ldr.w	r12, [pc, #0x20c]       @ 0x6e74 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x29c>
    6c6a: 4605         	mov	r5, r0
    6c6c: 9b07         	ldr	r3, [sp, #0x1c]
    6c6e: 44fc         	add	r12, pc ; STR "can't get model value from system "
    6c70: 901d         	str	r0, [sp, #0x74]
    6c72: f10c 0e20    	add.w	lr, r12, #0x20
    6c76: 931f         	str	r3, [sp, #0x7c]
    6c78: 4664         	mov	r4, r12
    6c7a: 3510         	adds	r5, #0x10
    6c7c: f10c 0c10    	add.w	r12, r12, #0x10
    6c80: cc0f         	ldm	r4!, {r0, r1, r2, r3}
    6c82: f845 0c10    	str	r0, [r5, #-16]
    6c86: f845 1c0c    	str	r1, [r5, #-12]
    6c8a: f845 2c08    	str	r2, [r5, #-8]
    6c8e: f845 3c04    	str	r3, [r5, #-4]
    6c92: 4574         	cmp	r4, lr
    6c94: d1f0         	bne	0x6c78 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0xa0> @ imm = #-0x20
    6c96: f8bc 3000    	ldrh.w	r3, [r12]
    6c9a: 2400         	movs	r4, #0x0
    6c9c: 802b         	strh	r3, [r5]
    6c9e: 4659         	mov	r1, r11
    6ca0: 9a07         	ldr	r2, [sp, #0x1c]
    6ca2: 463b         	mov	r3, r7
    6ca4: 981d         	ldr	r0, [sp, #0x74]
    6ca6: 921e         	str	r2, [sp, #0x78]
    6ca8: 5484         	strb	r4, [r0, r2]
    6caa: ac17         	add	r4, sp, #0x5c
    6cac: 4630         	mov	r0, r6
    6cae: f242 720f    	movw	r2, #0x270f
    6cb2: f8cd 9004    	str.w	r9, [sp, #0x4]
    6cb6: 9400         	str	r4, [sp]
    6cb8: f7fe ecea    	blx	0x5690 <_ZN20PPBaseMessageHandler13createMessageEiN2pp3VarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_@plt> @ imm = #-0x162c
    6cbc: 981d         	ldr	r0, [sp, #0x74]
    6cbe: 9b05         	ldr	r3, [sp, #0x14]
    6cc0: 4298         	cmp	r0, r3
    6cc2: d001         	beq	0x6cc8 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0xf0> @ imm = #0x2
    6cc4: f7fe eb4c    	blx	0x5360 <_ZdlPv@plt>     @ imm = #-0x1968
    6cc8: 9817         	ldr	r0, [sp, #0x5c]
    6cca: 4540         	cmp	r0, r8
    6ccc: d001         	beq	0x6cd2 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0xfa> @ imm = #0x2
    6cce: f7fe eb48    	blx	0x5360 <_ZdlPv@plt>     @ imm = #-0x1970
    6cd2: 4638         	mov	r0, r7
    6cd4: f7fe eb92    	blx	0x53fc <_ZN2pp3VarD1Ev@plt> @ imm = #-0x18dc
    6cd8: 9811         	ldr	r0, [sp, #0x44]
    6cda: 4550         	cmp	r0, r10
    6cdc: d001         	beq	0x6ce2 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x10a> @ imm = #0x2
    6cde: f7fe eb40    	blx	0x5360 <_ZdlPv@plt>     @ imm = #-0x1980
    6ce2: 4a65         	ldr	r2, [pc, #0x194]        @ 0x6e78 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x2a0>
    6ce4: 4b60         	ldr	r3, [pc, #0x180]        @ 0x6e68 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x290>
    6ce6: 447a         	add	r2, pc
    6ce8: 58d3         	ldr	r3, [r2, r3]
    6cea: 681a         	ldr	r2, [r3]
    6cec: 9b23         	ldr	r3, [sp, #0x8c]
    6cee: 405a         	eors	r2, r3
    6cf0: f040 8099    	bne.w	0x6e26 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x24e> @ imm = #0x132
    6cf4: 4630         	mov	r0, r6
    6cf6: b025         	add	sp, #0x94
    6cf8: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
    6cfc: af08         	add	r7, sp, #0x20
    6cfe: f04f 0100    	mov.w	r1, #0x0
    6d02: 4638         	mov	r0, r7
    6d04: f7fe ec1c    	blx	0x5540 <_ZN2pp3VarC1ENS0_4NullE@plt> @ imm = #-0x17c8
    6d08: 4b5c         	ldr	r3, [pc, #0x170]        @ 0x6e7c <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x2a4>
    6d0a: f10d 0864    	add.w	r8, sp, #0x64
    6d0e: 4644         	mov	r4, r8
    6d10: f8cd 805c    	str.w	r8, [sp, #0x5c]
    6d14: 447b         	add	r3, pc ; STR 'UnknownError '
    6d16: 2500         	movs	r5, #0x0
    6d18: f10d 0974    	add.w	r9, sp, #0x74
    6d1c: cb0f         	ldm	r3, {r0, r1, r2, r3}
    6d1e: c407         	stm	r4!, {r0, r1, r2}
    6d20: 462a         	mov	r2, r5
    6d22: 7023         	strb	r3, [r4]
    6d24: 4648         	mov	r0, r9
    6d26: a907         	add	r1, sp, #0x1c
    6d28: 230d         	movs	r3, #0xd
    6d2a: ac1f         	add	r4, sp, #0x7c
    6d2c: 9318         	str	r3, [sp, #0x60]
    6d2e: f88d 5071    	strb.w	r5, [sp, #0x71]
    6d32: 2311         	movs	r3, #0x11
    6d34: 9405         	str	r4, [sp, #0x14]
    6d36: 941d         	str	r4, [sp, #0x74]
    6d38: 9307         	str	r3, [sp, #0x1c]
    6d3a: f7fe ec62    	blx	0x5600 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERjj@plt> @ imm = #-0x173c
    6d3e: f8df c140    	ldr.w	r12, [pc, #0x140]       @ 0x6e80 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x2a8>
    6d42: 4604         	mov	r4, r0
    6d44: 9b07         	ldr	r3, [sp, #0x1c]
    6d46: 46ae         	mov	lr, r5
    6d48: 44fc         	add	r12, pc ; STR 'get Model failed '
    6d4a: 901d         	str	r0, [sp, #0x74]
    6d4c: 931f         	str	r3, [sp, #0x7c]
    6d4e: e8bc 000f    	ldm.w	r12!, {r0, r1, r2, r3}
    6d52: 6020         	str	r0, [r4]
    6d54: 6061         	str	r1, [r4, #0x4]
    6d56: 4630         	mov	r0, r6
    6d58: 60a2         	str	r2, [r4, #0x8]
    6d5a: 4659         	mov	r1, r11
    6d5c: 60e3         	str	r3, [r4, #0xc]
    6d5e: f242 720f    	movw	r2, #0x270f
    6d62: 463b         	mov	r3, r7
    6d64: f89c c000    	ldrb.w	r12, [r12]
    6d68: f884 c010    	strb.w	r12, [r4, #0x10]
    6d6c: 9c07         	ldr	r4, [sp, #0x1c]
    6d6e: 9d1d         	ldr	r5, [sp, #0x74]
    6d70: 941e         	str	r4, [sp, #0x78]
    6d72: f805 e004    	strb.w	lr, [r5, r4]
    6d76: ac17         	add	r4, sp, #0x5c
    6d78: f8cd 9004    	str.w	r9, [sp, #0x4]
    6d7c: 9400         	str	r4, [sp]
    6d7e: f7fe ec88    	blx	0x5690 <_ZN20PPBaseMessageHandler13createMessageEiN2pp3VarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_@plt> @ imm = #-0x16f0
    6d82: 981d         	ldr	r0, [sp, #0x74]
    6d84: 9c05         	ldr	r4, [sp, #0x14]
    6d86: 42a0         	cmp	r0, r4
    6d88: d19c         	bne	0x6cc4 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0xec> @ imm = #-0xc8
    6d8a: e79d         	b	0x6cc8 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0xf0> @ imm = #-0xc6
    6d8c: 4638         	mov	r0, r7
    6d8e: f10d 0844    	add.w	r8, sp, #0x44
    6d92: f7fe ebee    	blx	0x5570 <strlen@plt>     @ imm = #-0x1824
    6d96: 9a12         	ldr	r2, [sp, #0x48]
    6d98: 9000         	str	r0, [sp]
    6d9a: 463b         	mov	r3, r7
    6d9c: 4621         	mov	r1, r4
    6d9e: 4640         	mov	r0, r8
    6da0: f7fe ea12    	blx	0x51c8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEjjPKcj@plt> @ imm = #-0x1bdc
    6da4: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x6e84 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x2ac>
    6da6: 2776         	movs	r7, #0x76
    6da8: 4c37         	ldr	r4, [pc, #0xdc]         @ 0x6e88 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x2b0>
    6daa: 2104         	movs	r1, #0x4
    6dac: 9a11         	ldr	r2, [sp, #0x44]
    6dae: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/webapi-productinfo-pepper-plugin-4.0/pepper/src/PluginProductInfo.cpp'
    6db0: 334c         	adds	r3, #0x4c
    6db2: 447c         	add	r4, pc ; STR 'getModel'
    6db4: 9203         	str	r2, [sp, #0xc]
    6db6: 2000         	movs	r0, #0x0
    6db8: 4a34         	ldr	r2, [pc, #0xd0]         @ 0x6e8c <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x2b4>
    6dba: e9cd 3400    	strd	r3, r4, [sp]
    6dbe: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x6e90 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x2b8>
    6dc0: 447a         	add	r2, pc ; STR 'TPP_BASE'
    6dc2: 9702         	str	r7, [sp, #0x8]
    6dc4: 447b         	add	r3, pc ; STR '%s: %s(%d) > strModel=============%s'
    6dc6: f7fe eb08    	blx	0x53d8 <__dlog_print@plt> @ imm = #-0x19f0
    6dca: 9806         	ldr	r0, [sp, #0x18]
    6dcc: af08         	add	r7, sp, #0x20
    6dce: f7fe e9ba    	blx	0x5144 <free@plt>       @ imm = #-0x1c8c
    6dd2: 4641         	mov	r1, r8
    6dd4: 4638         	mov	r0, r7
    6dd6: f7fe eb7e    	blx	0x54d4 <_ZN2pp3VarC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@plt> @ imm = #-0x1904
    6dda: 4b2e         	ldr	r3, [pc, #0xb8]         @ 0x6e94 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x2bc>
    6ddc: f10d 0864    	add.w	r8, sp, #0x64
    6de0: f8cd 805c    	str.w	r8, [sp, #0x5c]
    6de4: ac17         	add	r4, sp, #0x5c
    6de6: 4620         	mov	r0, r4
    6de8: 58ed         	ldr	r5, [r5, r3]
    6dea: e9d5 1200    	ldrd	r1, r2, [r5]
    6dee: 440a         	add	r2, r1
    6df0: f7fe ff64    	bl	0x5cbc <.text+0x5b4>    @ imm = #-0x1138
    6df4: 6829         	ldr	r1, [r5]
    6df6: f10d 0974    	add.w	r9, sp, #0x74
    6dfa: 686a         	ldr	r2, [r5, #0x4]
    6dfc: 4648         	mov	r0, r9
    6dfe: ad1f         	add	r5, sp, #0x7c
    6e00: 9505         	str	r5, [sp, #0x14]
    6e02: 440a         	add	r2, r1
    6e04: 951d         	str	r5, [sp, #0x74]
    6e06: f7fe ff59    	bl	0x5cbc <.text+0x5b4>    @ imm = #-0x114e
    6e0a: 4659         	mov	r1, r11
    6e0c: 463b         	mov	r3, r7
    6e0e: 2200         	movs	r2, #0x0
    6e10: 4630         	mov	r0, r6
    6e12: f8cd 9004    	str.w	r9, [sp, #0x4]
    6e16: 9400         	str	r4, [sp]
    6e18: f7fe ec3a    	blx	0x5690 <_ZN20PPBaseMessageHandler13createMessageEiN2pp3VarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_@plt> @ imm = #-0x178c
    6e1c: 981d         	ldr	r0, [sp, #0x74]
    6e1e: 42a8         	cmp	r0, r5
    6e20: f47f af50    	bne.w	0x6cc4 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0xec> @ imm = #-0x160
    6e24: e750         	b	0x6cc8 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0xf0> @ imm = #-0x160
    6e26: f7fe eb08    	blx	0x5438 <__stack_chk_fail@plt> @ imm = #-0x19f0
    6e2a: 981d         	ldr	r0, [sp, #0x74]
    6e2c: 9b05         	ldr	r3, [sp, #0x14]
    6e2e: 4298         	cmp	r0, r3
    6e30: d001         	beq	0x6e36 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x25e> @ imm = #0x2
    6e32: f7fe ea96    	blx	0x5360 <_ZdlPv@plt>     @ imm = #-0x1ad4
    6e36: 9817         	ldr	r0, [sp, #0x5c]
    6e38: 4540         	cmp	r0, r8
    6e3a: d10a         	bne	0x6e52 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x27a> @ imm = #0x14
    6e3c: 4638         	mov	r0, r7
    6e3e: f7fe eade    	blx	0x53fc <_ZN2pp3VarD1Ev@plt> @ imm = #-0x1a44
    6e42: 9811         	ldr	r0, [sp, #0x44]
    6e44: 4550         	cmp	r0, r10
    6e46: d001         	beq	0x6e4c <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x274> @ imm = #0x2
    6e48: f7fe ea8a    	blx	0x5360 <_ZdlPv@plt>     @ imm = #-0x1aec
    6e4c: f7fe eafa    	blx	0x5444 <__cxa_end_cleanup@plt> @ imm = #-0x1a0c
    6e50: e7f1         	b	0x6e36 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x25e> @ imm = #-0x1e
    6e52: f7fe ea86    	blx	0x5360 <_ZdlPv@plt>     @ imm = #-0x1af4
    6e56: e7f1         	b	0x6e3c <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x264> @ imm = #-0x1e
    6e58: e7f0         	b	0x6e3c <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x264> @ imm = #-0x20
    6e5a: e7ec         	b	0x6e36 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x25e> @ imm = #-0x28
    6e5c: e7e5         	b	0x6e2a <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x252> @ imm = #-0x36
    6e5e: e7f0         	b	0x6e42 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x26a> @ imm = #-0x20
    6e60: e7e9         	b	0x6e36 <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x25e> @ imm = #-0x2e
    6e62: e7e2         	b	0x6e2a <_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE+0x252> @ imm = #-0x3c
    6e64: b6b4         	<unknown>
    6e66: 0001         	movs	r1, r0
    6e68: 023c         	lsls	r4, r7, #0x8
    6e6a: 0000         	movs	r0, r0
    6e6c: b6a2         	<unknown>
    6e6e: 0001         	movs	r1, r0
    6e70: 85bc         	strh	r4, [r7, #0x2c]
    6e72: 0000         	movs	r0, r0
    6e74: 85da         	strh	r2, [r3, #0x2e]
    6e76: 0000         	movs	r0, r0
    6e78: b5b2         	push	{r1, r4, r5, r7, lr}
    6e7a: 0001         	movs	r1, r0
    6e7c: 84e4         	strh	r4, [r4, #0x26]
    6e7e: 0000         	movs	r0, r0
    6e80: 84c0         	strh	r0, [r0, #0x26]
    6e82: 0000         	movs	r0, r0
    6e84: 7d22         	ldrb	r2, [r4, #0x14]
    6e86: 0000         	movs	r0, r0
    6e88: 82b6         	strh	r6, [r6, #0x14]
    6e8a: 0000         	movs	r0, r0
    6e8c: 97f4         	str	r7, [sp, #0x3d0]
    6e8e: 0000         	movs	r0, r0
    6e90: 84a8         	strh	r0, [r5, #0x24]
    6e92: 0000         	movs	r0, r0
    6e94: 027c         	lsls	r4, r7, #0x9
    6e96: 0000         	movs	r0, r0
