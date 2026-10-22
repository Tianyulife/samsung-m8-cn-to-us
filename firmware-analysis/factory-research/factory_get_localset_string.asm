
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44ef78b8 <factory_get_localset_string>:
44ef78b8: e92d 47f0    	push.w	{r4, r5, r6, r7, r8, r9, r10, lr}
44ef78bc: 4606         	mov	r6, r0
44ef78be: 4d55         	ldr	r5, [pc, #0x154]        @ 0x44ef7a14 <factory_get_localset_string+0x15c>
44ef78c0: b08c         	sub	sp, #0x30
44ef78c2: 4f55         	ldr	r7, [pc, #0x154]        @ 0x44ef7a18 <factory_get_localset_string+0x160>
44ef78c4: f8df 9154    	ldr.w	r9, [pc, #0x154]        @ 0x44ef7a1c <factory_get_localset_string+0x164>
44ef78c8: 447d         	add	r5, pc ; STR '/home/abuild/rpmbuild/BUILD/factory-api-0.0.01/factory_interface/src/factory_interface_ep.cpp'
44ef78ca: 4c55         	ldr	r4, [pc, #0x154]        @ 0x44ef7a20 <factory_get_localset_string+0x168>
44ef78cc: 447f         	add	r7, pc
44ef78ce: f8df a154    	ldr.w	r10, [pc, #0x154]       @ 0x44ef7a24 <factory_get_localset_string+0x16c>
44ef78d2: 44f9         	add	r9, pc ; STR 'factory_get_localset_string'
44ef78d4: 3545         	adds	r5, #0x45
44ef78d6: e9cd 5900    	strd	r5, r9, [sp]
44ef78da: 9003         	str	r0, [sp, #0xc]
44ef78dc: 20dd         	movs	r0, #0xdd
44ef78de: 4b52         	ldr	r3, [pc, #0x148]        @ 0x44ef7a28 <factory_get_localset_string+0x170>
44ef78e0: 44fa         	add	r10, pc ; STR 'FACTORYAPI'
44ef78e2: 9002         	str	r0, [sp, #0x8]
44ef78e4: 4688         	mov	r8, r1
44ef78e6: 593c         	ldr	r4, [r7, r4]
44ef78e8: 4652         	mov	r2, r10
44ef78ea: 447b         	add	r3, pc
44ef78ec: 2104         	movs	r1, #0x4
44ef78ee: 2000         	movs	r0, #0x0
44ef78f0: 6824         	ldr	r4, [r4]
44ef78f2: 940b         	str	r4, [sp, #0x2c]
44ef78f4: f04f 0400    	mov.w	r4, #0x0
44ef78f8: f7ed ea6a    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x12b2c
44ef78fc: 2700         	movs	r7, #0x0
44ef78fe: 970a         	str	r7, [sp, #0x28]
44ef7900: 9707         	str	r7, [sp, #0x1c]
44ef7902: f7ed ec34    	blx	0x44ee516c <_Z18get_ipc_connectionv@plt> @ imm = #-0x12798
44ef7906: 2800         	cmp	r0, #0x0
44ef7908: d073         	beq	0x44ef79f2 <factory_get_localset_string+0x13a> @ imm = #0xe6
44ef790a: aa0a         	add	r2, sp, #0x28
44ef790c: ab07         	add	r3, sp, #0x1c
44ef790e: 9201         	str	r2, [sp, #0x4]
44ef7910: 4631         	mov	r1, r6
44ef7912: aa09         	add	r2, sp, #0x24
44ef7914: 9700         	str	r7, [sp]
44ef7916: f7ed eb7e    	blx	0x44ee5014 <factory_proxy_call_get_local_set_str_pnp_sync@plt> @ imm = #-0x12904
44ef791a: 4604         	mov	r4, r0
44ef791c: 2800         	cmp	r0, #0x0
44ef791e: d035         	beq	0x44ef798c <factory_get_localset_string+0xd4> @ imm = #0x6a
44ef7920: 4942         	ldr	r1, [pc, #0x108]        @ 0x44ef7a2c <factory_get_localset_string+0x174>
44ef7922: aa06         	add	r2, sp, #0x18
44ef7924: 9807         	ldr	r0, [sp, #0x1c]
44ef7926: 4479         	add	r1, pc ; STR '(i)'
44ef7928: f7ed eaa8    	blx	0x44ee4e7c <g_variant_get@plt> @ imm = #-0x12ab0
44ef792c: 9807         	ldr	r0, [sp, #0x1c]
44ef792e: f7ed eb9c    	blx	0x44ee5068 <g_variant_unref@plt> @ imm = #-0x128c8
44ef7932: 9c06         	ldr	r4, [sp, #0x18]
44ef7934: 2c00         	cmp	r4, #0x0
44ef7936: d04a         	beq	0x44ef79ce <factory_get_localset_string+0x116> @ imm = #0x94
44ef7938: 493d         	ldr	r1, [pc, #0xf4]         @ 0x44ef7a30 <factory_get_localset_string+0x178>
44ef793a: aa08         	add	r2, sp, #0x20
44ef793c: 9809         	ldr	r0, [sp, #0x24]
44ef793e: 2401         	movs	r4, #0x1
44ef7940: 4479         	add	r1, pc ; STR '(s)'
44ef7942: f7ed ea9c    	blx	0x44ee4e7c <g_variant_get@plt> @ imm = #-0x12ac8
44ef7946: 9908         	ldr	r1, [sp, #0x20]
44ef7948: 2217         	movs	r2, #0x17
44ef794a: 4640         	mov	r0, r8
44ef794c: f7ed ee2a    	blx	0x44ee55a4 <strncpy@plt> @ imm = #-0x123ac
44ef7950: 9809         	ldr	r0, [sp, #0x24]
44ef7952: f7ed eb8a    	blx	0x44ee5068 <g_variant_unref@plt> @ imm = #-0x128ec
44ef7956: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x44ef7a34 <factory_get_localset_string+0x17c>
44ef7958: 9500         	str	r5, [sp]
44ef795a: 4652         	mov	r2, r10
44ef795c: f44f 7583    	mov.w	r5, #0x106
44ef7960: 4638         	mov	r0, r7
44ef7962: 447b         	add	r3, pc
44ef7964: 2104         	movs	r1, #0x4
44ef7966: e9cd 6803    	strd	r6, r8, [sp, #12]
44ef796a: f8cd 9004    	str.w	r9, [sp, #0x4]
44ef796e: 9502         	str	r5, [sp, #0x8]
44ef7970: f7ed ea2e    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x12ba4
44ef7974: 4a30         	ldr	r2, [pc, #0xc0]         @ 0x44ef7a38 <factory_get_localset_string+0x180>
44ef7976: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x44ef7a20 <factory_get_localset_string+0x168>
44ef7978: 447a         	add	r2, pc
44ef797a: 58d3         	ldr	r3, [r2, r3]
44ef797c: 681a         	ldr	r2, [r3]
44ef797e: 9b0b         	ldr	r3, [sp, #0x2c]
44ef7980: 405a         	eors	r2, r3
44ef7982: d144         	bne	0x44ef7a0e <factory_get_localset_string+0x156> @ imm = #0x88
44ef7984: 4620         	mov	r0, r4
44ef7986: b00c         	add	sp, #0x30
44ef7988: e8bd 87f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, pc}
44ef798c: 23ed         	movs	r3, #0xed
44ef798e: 9302         	str	r3, [sp, #0x8]
44ef7990: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x44ef7a3c <factory_get_localset_string+0x184>
44ef7992: 4652         	mov	r2, r10
44ef7994: 2106         	movs	r1, #0x6
44ef7996: 2002         	movs	r0, #0x2
44ef7998: 447b         	add	r3, pc
44ef799a: f8cd 9004    	str.w	r9, [sp, #0x4]
44ef799e: 9500         	str	r5, [sp]
44ef79a0: f7ed ea16    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x12bd4
44ef79a4: 9b0a         	ldr	r3, [sp, #0x28]
44ef79a6: 2b00         	cmp	r3, #0x0
44ef79a8: d0e4         	beq	0x44ef7974 <factory_get_localset_string+0xbc> @ imm = #-0x38
44ef79aa: 689b         	ldr	r3, [r3, #0x8]
44ef79ac: 4652         	mov	r2, r10
44ef79ae: 9303         	str	r3, [sp, #0xc]
44ef79b0: 23f0         	movs	r3, #0xf0
44ef79b2: 9302         	str	r3, [sp, #0x8]
44ef79b4: 2106         	movs	r1, #0x6
44ef79b6: 4b22         	ldr	r3, [pc, #0x88]         @ 0x44ef7a40 <factory_get_localset_string+0x188>
44ef79b8: 2002         	movs	r0, #0x2
44ef79ba: f8cd 9004    	str.w	r9, [sp, #0x4]
44ef79be: 447b         	add	r3, pc
44ef79c0: 9500         	str	r5, [sp]
44ef79c2: f7ed ea06    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x12bf4
44ef79c6: 980a         	ldr	r0, [sp, #0x28]
44ef79c8: f7ec edda    	blx	0x44ee4580 <g_error_free@plt> @ imm = #-0x1344c
44ef79cc: e7d2         	b	0x44ef7974 <factory_get_localset_string+0xbc> @ imm = #-0x5c
44ef79ce: 9809         	ldr	r0, [sp, #0x24]
44ef79d0: f7ed eb4a    	blx	0x44ee5068 <g_variant_unref@plt> @ imm = #-0x1296c
44ef79d4: 23fd         	movs	r3, #0xfd
44ef79d6: 9302         	str	r3, [sp, #0x8]
44ef79d8: 4652         	mov	r2, r10
44ef79da: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x44ef7a44 <factory_get_localset_string+0x18c>
44ef79dc: 4620         	mov	r0, r4
44ef79de: 9906         	ldr	r1, [sp, #0x18]
44ef79e0: 9103         	str	r1, [sp, #0xc]
44ef79e2: 447b         	add	r3, pc
44ef79e4: 2104         	movs	r1, #0x4
44ef79e6: f8cd 9004    	str.w	r9, [sp, #0x4]
44ef79ea: 9500         	str	r5, [sp]
44ef79ec: f7ed e9f0    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x12c20
44ef79f0: e7c0         	b	0x44ef7974 <factory_get_localset_string+0xbc> @ imm = #-0x80
44ef79f2: 4b15         	ldr	r3, [pc, #0x54]         @ 0x44ef7a48 <factory_get_localset_string+0x190>
44ef79f4: 4604         	mov	r4, r0
44ef79f6: 4652         	mov	r2, r10
44ef79f8: 20e7         	movs	r0, #0xe7
44ef79fa: 447b         	add	r3, pc
44ef79fc: 9002         	str	r0, [sp, #0x8]
44ef79fe: 2106         	movs	r1, #0x6
44ef7a00: f8cd 9004    	str.w	r9, [sp, #0x4]
44ef7a04: 9500         	str	r5, [sp]
44ef7a06: 2002         	movs	r0, #0x2
44ef7a08: f7ed e9e2    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x12c3c
44ef7a0c: e7b2         	b	0x44ef7974 <factory_get_localset_string+0xbc> @ imm = #-0x9c
44ef7a0e: f7ed ea42    	blx	0x44ee4e94 <__stack_chk_fail@plt> @ imm = #-0x12b7c
44ef7a12: bf00         	nop
44ef7a14: 19d4         	adds	r4, r2, r7
44ef7a16: 0001         	movs	r1, r0
44ef7a18: 78e8         	ldrb	r0, [r5, #0x3]
44ef7a1a: 0002         	movs	r2, r0
44ef7a1c: 1b52         	subs	r2, r2, r5
44ef7a1e: 0001         	movs	r1, r0
44ef7a20: 0704         	lsls	r4, r0, #0x1c
44ef7a22: 0000         	movs	r0, r0
44ef7a24: ca34         	ldm	r2, {r2, r4, r5}
44ef7a26: 0000         	movs	r0, r0
44ef7a28: 1b1e         	subs	r6, r3, r4
44ef7a2a: 0001         	movs	r1, r0
44ef7a2c: d4ba         	bmi	0x44ef79a4 <factory_get_localset_string+0xec> @ imm = #-0x8c
44ef7a2e: 0000         	movs	r0, r0
44ef7a30: d4c4         	bmi	0x44ef79bc <factory_get_localset_string+0x104> @ imm = #-0x78
44ef7a32: 0000         	movs	r0, r0
44ef7a34: 1b4e         	subs	r6, r1, r5
44ef7a36: 0001         	movs	r1, r0
44ef7a38: 783c         	ldrb	r4, [r7]
44ef7a3a: 0002         	movs	r2, r0
44ef7a3c: 1aa8         	subs	r0, r5, r2
44ef7a3e: 0001         	movs	r1, r0
44ef7a40: 19b2         	adds	r2, r6, r6
44ef7a42: 0001         	movs	r1, r0
44ef7a44: 1aaa         	subs	r2, r5, r2
44ef7a46: 0001         	movs	r1, r0
44ef7a48: 1902         	adds	r2, r0, r4
44ef7a4a: 0001         	movs	r1, r0
