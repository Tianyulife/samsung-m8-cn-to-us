
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44efdd7c <factory_get_localset_str>:
44efdd7c: 4a4c         	ldr	r2, [pc, #0x130]        @ 0x44efdeb0 <factory_get_localset_str+0x134>
44efdd7e: 4b4d         	ldr	r3, [pc, #0x134]        @ 0x44efdeb4 <factory_get_localset_str+0x138>
44efdd80: b5f0         	push	{r4, r5, r6, r7, lr}
44efdd82: 447a         	add	r2, pc
44efdd84: 2600         	movs	r6, #0x0
44efdd86: b08b         	sub	sp, #0x2c
44efdd88: 4605         	mov	r5, r0
44efdd8a: 58d3         	ldr	r3, [r2, r3]
44efdd8c: 460f         	mov	r7, r1
44efdd8e: 681b         	ldr	r3, [r3]
44efdd90: 9309         	str	r3, [sp, #0x24]
44efdd92: f04f 0300    	mov.w	r3, #0x0
44efdd96: 9608         	str	r6, [sp, #0x20]
44efdd98: 9605         	str	r6, [sp, #0x14]
44efdd9a: f7e7 e9e8    	blx	0x44ee516c <_Z18get_ipc_connectionv@plt> @ imm = #-0x18c30
44efdd9e: 2800         	cmp	r0, #0x0
44efdda0: d06f         	beq	0x44efde82 <factory_get_localset_str+0x106> @ imm = #0xde
44efdda2: aa08         	add	r2, sp, #0x20
44efdda4: 4629         	mov	r1, r5
44efdda6: 9201         	str	r2, [sp, #0x4]
44efdda8: ab05         	add	r3, sp, #0x14
44efddaa: aa07         	add	r2, sp, #0x1c
44efddac: 9600         	str	r6, [sp]
44efddae: f7e6 efec    	blx	0x44ee4d88 <factory_proxy_call_get_local_set_str_sync@plt> @ imm = #-0x19028
44efddb2: 4604         	mov	r4, r0
44efddb4: b328         	cbz	r0, 0x44efde02 <factory_get_localset_str+0x86> @ imm = #0x4a
44efddb6: 4940         	ldr	r1, [pc, #0x100]        @ 0x44efdeb8 <factory_get_localset_str+0x13c>
44efddb8: aa04         	add	r2, sp, #0x10
44efddba: 9805         	ldr	r0, [sp, #0x14]
44efddbc: 4479         	add	r1, pc ; STR '(i)'
44efddbe: f7e7 e85e    	blx	0x44ee4e7c <g_variant_get@plt> @ imm = #-0x18f44
44efddc2: 9805         	ldr	r0, [sp, #0x14]
44efddc4: f7e7 e950    	blx	0x44ee5068 <g_variant_unref@plt> @ imm = #-0x18d60
44efddc8: 9c04         	ldr	r4, [sp, #0x10]
44efddca: 2c00         	cmp	r4, #0x0
44efddcc: d041         	beq	0x44efde52 <factory_get_localset_str+0xd6> @ imm = #0x82
44efddce: 493b         	ldr	r1, [pc, #0xec]         @ 0x44efdebc <factory_get_localset_str+0x140>
44efddd0: aa06         	add	r2, sp, #0x18
44efddd2: 9807         	ldr	r0, [sp, #0x1c]
44efddd4: 2401         	movs	r4, #0x1
44efddd6: 4479         	add	r1, pc ; STR '(s)'
44efddd8: f7e7 e850    	blx	0x44ee4e7c <g_variant_get@plt> @ imm = #-0x18f60
44efdddc: 9906         	ldr	r1, [sp, #0x18]
44efddde: 4638         	mov	r0, r7
44efdde0: 2217         	movs	r2, #0x17
44efdde2: f7e7 ebe0    	blx	0x44ee55a4 <strncpy@plt> @ imm = #-0x18840
44efdde6: 9807         	ldr	r0, [sp, #0x1c]
44efdde8: f7e7 e93e    	blx	0x44ee5068 <g_variant_unref@plt> @ imm = #-0x18d84
44efddec: 4a34         	ldr	r2, [pc, #0xd0]         @ 0x44efdec0 <factory_get_localset_str+0x144>
44efddee: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x44efdeb4 <factory_get_localset_str+0x138>
44efddf0: 447a         	add	r2, pc
44efddf2: 58d3         	ldr	r3, [r2, r3]
44efddf4: 681a         	ldr	r2, [r3]
44efddf6: 9b09         	ldr	r3, [sp, #0x24]
44efddf8: 405a         	eors	r2, r3
44efddfa: d156         	bne	0x44efdeaa <factory_get_localset_str+0x12e> @ imm = #0xac
44efddfc: 4620         	mov	r0, r4
44efddfe: b00b         	add	sp, #0x2c
44efde00: bdf0         	pop	{r4, r5, r6, r7, pc}
44efde02: 4d30         	ldr	r5, [pc, #0xc0]         @ 0x44efdec4 <factory_get_localset_str+0x148>
44efde04: f240 3337    	movw	r3, #0x337
44efde08: 4f2f         	ldr	r7, [pc, #0xbc]         @ 0x44efdec8 <factory_get_localset_str+0x14c>
44efde0a: 2106         	movs	r1, #0x6
44efde0c: 9302         	str	r3, [sp, #0x8]
44efde0e: 447d         	add	r5, pc ; STR '/home/abuild/rpmbuild/BUILD/factory-api-0.0.01/factory_interface/src/factory_interface_app.cpp'
44efde10: 4e2e         	ldr	r6, [pc, #0xb8]         @ 0x44efdecc <factory_get_localset_str+0x150>
44efde12: 447f         	add	r7, pc ; STR 'FACTORYAPI'
44efde14: 4b2e         	ldr	r3, [pc, #0xb8]         @ 0x44efded0 <factory_get_localset_str+0x154>
44efde16: 3545         	adds	r5, #0x45
44efde18: 447e         	add	r6, pc ; STR 'factory_get_localset_str'
44efde1a: 463a         	mov	r2, r7
44efde1c: 447b         	add	r3, pc
44efde1e: 2002         	movs	r0, #0x2
44efde20: e9cd 5600    	strd	r5, r6, [sp]
44efde24: f7e6 efd4    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x19058
44efde28: 9b08         	ldr	r3, [sp, #0x20]
44efde2a: 2b00         	cmp	r3, #0x0
44efde2c: d0de         	beq	0x44efddec <factory_get_localset_str+0x70> @ imm = #-0x44
44efde2e: 689b         	ldr	r3, [r3, #0x8]
44efde30: 463a         	mov	r2, r7
44efde32: 9303         	str	r3, [sp, #0xc]
44efde34: f240 333a    	movw	r3, #0x33a
44efde38: 9302         	str	r3, [sp, #0x8]
44efde3a: 2106         	movs	r1, #0x6
44efde3c: 4b25         	ldr	r3, [pc, #0x94]         @ 0x44efded4 <factory_get_localset_str+0x158>
44efde3e: 2002         	movs	r0, #0x2
44efde40: 9601         	str	r6, [sp, #0x4]
44efde42: 447b         	add	r3, pc
44efde44: 9500         	str	r5, [sp]
44efde46: f7e6 efc4    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x19078
44efde4a: 9808         	ldr	r0, [sp, #0x20]
44efde4c: f7e6 eb98    	blx	0x44ee4580 <g_error_free@plt> @ imm = #-0x198d0
44efde50: e7cc         	b	0x44efddec <factory_get_localset_str+0x70> @ imm = #-0x68
44efde52: 9807         	ldr	r0, [sp, #0x1c]
44efde54: f240 3547    	movw	r5, #0x347
44efde58: f7e7 e906    	blx	0x44ee5068 <g_variant_unref@plt> @ imm = #-0x18df4
44efde5c: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x44efded8 <factory_get_localset_str+0x15c>
44efde5e: 4a1f         	ldr	r2, [pc, #0x7c]         @ 0x44efdedc <factory_get_localset_str+0x160>
44efde60: 4620         	mov	r0, r4
44efde62: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/factory-api-0.0.01/factory_interface/src/factory_interface_app.cpp'
44efde64: 9904         	ldr	r1, [sp, #0x10]
44efde66: 447a         	add	r2, pc ; STR 'factory_get_localset_str'
44efde68: 3345         	adds	r3, #0x45
44efde6a: e9cd 2501    	strd	r2, r5, [sp, #4]
44efde6e: 9300         	str	r3, [sp]
44efde70: 4a1b         	ldr	r2, [pc, #0x6c]         @ 0x44efdee0 <factory_get_localset_str+0x164>
44efde72: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x44efdee4 <factory_get_localset_str+0x168>
44efde74: 9103         	str	r1, [sp, #0xc]
44efde76: 447a         	add	r2, pc ; STR 'FACTORYAPI'
44efde78: 2104         	movs	r1, #0x4
44efde7a: 447b         	add	r3, pc
44efde7c: f7e6 efa8    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x190b0
44efde80: e7b4         	b	0x44efddec <factory_get_localset_str+0x70> @ imm = #-0x98
44efde82: 4b19         	ldr	r3, [pc, #0x64]         @ 0x44efdee8 <factory_get_localset_str+0x16c>
44efde84: 4604         	mov	r4, r0
44efde86: 4a19         	ldr	r2, [pc, #0x64]         @ 0x44efdeec <factory_get_localset_str+0x170>
44efde88: f240 3531    	movw	r5, #0x331
44efde8c: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/factory-api-0.0.01/factory_interface/src/factory_interface_app.cpp'
44efde8e: 2106         	movs	r1, #0x6
44efde90: 447a         	add	r2, pc ; STR 'factory_get_localset_str'
44efde92: 3345         	adds	r3, #0x45
44efde94: e9cd 3200    	strd	r3, r2, [sp]
44efde98: 2002         	movs	r0, #0x2
44efde9a: 4b15         	ldr	r3, [pc, #0x54]         @ 0x44efdef0 <factory_get_localset_str+0x174>
44efde9c: 4a15         	ldr	r2, [pc, #0x54]         @ 0x44efdef4 <factory_get_localset_str+0x178>
44efde9e: 447b         	add	r3, pc
44efdea0: 9502         	str	r5, [sp, #0x8]
44efdea2: 447a         	add	r2, pc ; STR 'FACTORYAPI'
44efdea4: f7e6 ef94    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x190d8
44efdea8: e7a0         	b	0x44efddec <factory_get_localset_str+0x70> @ imm = #-0xc0
44efdeaa: f7e6 eff4    	blx	0x44ee4e94 <__stack_chk_fail@plt> @ imm = #-0x19018
44efdeae: bf00         	nop
44efdeb0: 1432         	asrs	r2, r6, #0x10
44efdeb2: 0002         	movs	r2, r0
44efdeb4: 0704         	lsls	r4, r0, #0x1c
44efdeb6: 0000         	movs	r0, r0
44efdeb8: 7024         	strb	r4, [r4]
44efdeba: 0000         	movs	r0, r0
44efdebc: 702e         	strb	r6, [r5]
44efdebe: 0000         	movs	r0, r0
44efdec0: 13c4         	asrs	r4, r0, #0xf
44efdec2: 0002         	movs	r2, r0
44efdec4: 6cfa         	ldr	r2, [r7, #0x4c]
44efdec6: 0000         	movs	r0, r0
44efdec8: 6502         	str	r2, [r0, #0x50]
44efdeca: 0000         	movs	r0, r0
44efdecc: ca84         	ldm	r2, {r2, r7}
44efdece: 0000         	movs	r0, r0
44efded0: c188         	stm	r1!, {r3, r7}
44efded2: 0000         	movs	r0, r0
44efded4: b52e         	push	{r1, r2, r3, r5, lr}
44efded6: 0000         	movs	r0, r0
44efded8: 6ca6         	ldr	r6, [r4, #0x48]
44efdeda: 0000         	movs	r0, r0
44efdedc: ca36         	ldm	r2, {r1, r2, r4, r5}
44efdede: 0000         	movs	r0, r0
44efdee0: 649e         	str	r6, [r3, #0x48]
44efdee2: 0000         	movs	r0, r0
44efdee4: bbca         	cbnz	r2, 0x44efdf5a <factory_get_localset_list+0x62> @ imm = #0x72
44efdee6: 0000         	movs	r0, r0
44efdee8: 6c7c         	ldr	r4, [r7, #0x44]
44efdeea: 0000         	movs	r0, r0
44efdeec: ca0c         	ldm	r2, {r2, r3}
44efdeee: 0000         	movs	r0, r0
44efdef0: b45e         	push	{r1, r2, r3, r4, r6}
44efdef2: 0000         	movs	r0, r0
44efdef4: 6472         	str	r2, [r6, #0x44]
44efdef6: 0000         	movs	r0, r0
