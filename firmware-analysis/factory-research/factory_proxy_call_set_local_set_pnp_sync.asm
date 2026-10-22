
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44ee8d24 <factory_proxy_call_set_local_set_pnp_sync>:
44ee8d24: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
44ee8d28: 4604         	mov	r4, r0
44ee8d2a: 461d         	mov	r5, r3
44ee8d2c: b084         	sub	sp, #0x10
44ee8d2e: 4617         	mov	r7, r2
44ee8d30: 4688         	mov	r8, r1
44ee8d32: f7fc ed4e    	blx	0x44ee57d0 <_ZN13FCStorageBase11GetInstanceEv@plt+0xc> @ imm = #-0x3564
44ee8d36: 4601         	mov	r1, r0
44ee8d38: 4620         	mov	r0, r4
44ee8d3a: 9e0a         	ldr	r6, [sp, #0x28]
44ee8d3c: f7fb ec96    	blx	0x44ee466c <g_type_check_instance_cast@plt> @ imm = #-0x46d4
44ee8d40: 4604         	mov	r4, r0
44ee8d42: 4810         	ldr	r0, [pc, #0x40]         @ 0x44ee8d84 <factory_proxy_call_set_local_set_pnp_sync+0x60>
44ee8d44: 4641         	mov	r1, r8
44ee8d46: 4478         	add	r0, pc ; STR '(i)'
44ee8d48: f7fb ed9a    	blx	0x44ee4880 <g_variant_new@plt> @ imm = #-0x44cc
44ee8d4c: f04f 31ff    	mov.w	r1, #0xffffffff
44ee8d50: 9100         	str	r1, [sp]
44ee8d52: 4602         	mov	r2, r0
44ee8d54: 490c         	ldr	r1, [pc, #0x30]         @ 0x44ee8d88 <factory_proxy_call_set_local_set_pnp_sync+0x64>
44ee8d56: 4620         	mov	r0, r4
44ee8d58: 2300         	movs	r3, #0x0
44ee8d5a: 9501         	str	r5, [sp, #0x4]
44ee8d5c: 4479         	add	r1, pc ; STR 'SetLocalSetPnp'
44ee8d5e: 9602         	str	r6, [sp, #0x8]
44ee8d60: f7fb efc8    	blx	0x44ee4cf4 <g_dbus_proxy_call_sync@plt> @ imm = #-0x4070
44ee8d64: 4604         	mov	r4, r0
44ee8d66: b138         	cbz	r0, 0x44ee8d78 <factory_proxy_call_set_local_set_pnp_sync+0x54> @ imm = #0xe
44ee8d68: 4908         	ldr	r1, [pc, #0x20]         @ 0x44ee8d8c <factory_proxy_call_set_local_set_pnp_sync+0x68>
44ee8d6a: 463a         	mov	r2, r7
44ee8d6c: 4479         	add	r1, pc ; STR '(@(i))'
44ee8d6e: f7fc e886    	blx	0x44ee4e7c <g_variant_get@plt> @ imm = #-0x3ef4
44ee8d72: 4620         	mov	r0, r4
44ee8d74: f7fc e978    	blx	0x44ee5068 <g_variant_unref@plt> @ imm = #-0x3d10
44ee8d78: 1e20         	subs	r0, r4, #0x0
44ee8d7a: bf18         	it	ne
44ee8d7c: 2001         	movne	r0, #0x1
44ee8d7e: b004         	add	sp, #0x10
44ee8d80: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
44ee8d84: c09a         	stm	r0!, {r1, r3, r4, r7}
44ee8d86: 0001         	movs	r1, r0
44ee8d88: c1e4         	stm	r1!, {r2, r5, r6, r7}
44ee8d8a: 0001         	movs	r1, r0
44ee8d8c: c000         	<unknown>
44ee8d8e: 0001         	movs	r1, r0
