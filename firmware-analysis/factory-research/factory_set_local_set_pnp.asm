
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44ef7748 <factory_set_local_set_pnp>:
44ef7748: e92d 43f0    	push.w	{r4, r5, r6, r7, r8, r9, lr}
44ef774c: f240 130d    	movw	r3, #0x10d
44ef7750: 4f4c         	ldr	r7, [pc, #0x130]        @ 0x44ef7884 <factory_set_local_set_pnp+0x13c>
44ef7752: b089         	sub	sp, #0x24
44ef7754: 4d4c         	ldr	r5, [pc, #0x130]        @ 0x44ef7888 <factory_set_local_set_pnp+0x140>
44ef7756: 4c4d         	ldr	r4, [pc, #0x134]        @ 0x44ef788c <factory_set_local_set_pnp+0x144>
44ef7758: 447f         	add	r7, pc
44ef775a: f8df 9134    	ldr.w	r9, [pc, #0x134]        @ 0x44ef7890 <factory_set_local_set_pnp+0x148>
44ef775e: 447d         	add	r5, pc ; STR '/home/abuild/rpmbuild/BUILD/factory-api-0.0.01/factory_interface/src/factory_interface_ep.cpp'
44ef7760: f8df 8130    	ldr.w	r8, [pc, #0x130]        @ 0x44ef7894 <factory_set_local_set_pnp+0x14c>
44ef7764: 3545         	adds	r5, #0x45
44ef7766: 9003         	str	r0, [sp, #0xc]
44ef7768: 44f9         	add	r9, pc ; STR 'factory_set_local_set_pnp'
44ef776a: 9302         	str	r3, [sp, #0x8]
44ef776c: 44f8         	add	r8, pc ; STR 'FACTORYAPI'
44ef776e: 9500         	str	r5, [sp]
44ef7770: 4606         	mov	r6, r0
44ef7772: f8cd 9004    	str.w	r9, [sp, #0x4]
44ef7776: 4642         	mov	r2, r8
44ef7778: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x44ef7898 <factory_set_local_set_pnp+0x150>
44ef777a: 2104         	movs	r1, #0x4
44ef777c: 593c         	ldr	r4, [r7, r4]
44ef777e: 2000         	movs	r0, #0x0
44ef7780: 447b         	add	r3, pc
44ef7782: 2700         	movs	r7, #0x0
44ef7784: 6824         	ldr	r4, [r4]
44ef7786: 9407         	str	r4, [sp, #0x1c]
44ef7788: f04f 0400    	mov.w	r4, #0x0
44ef778c: f7ed eb20    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x129c0
44ef7790: e9cd 7705    	strd	r7, r7, [sp, #20]
44ef7794: f7ed ecea    	blx	0x44ee516c <_Z18get_ipc_connectionv@plt> @ imm = #-0x1262c
44ef7798: 2800         	cmp	r0, #0x0
44ef779a: d062         	beq	0x44ef7862 <factory_set_local_set_pnp+0x11a> @ imm = #0xc4
44ef779c: aa06         	add	r2, sp, #0x18
44ef779e: 463b         	mov	r3, r7
44ef77a0: 9200         	str	r2, [sp]
44ef77a2: 4631         	mov	r1, r6
44ef77a4: aa05         	add	r2, sp, #0x14
44ef77a6: f7ed ed92    	blx	0x44ee52cc <factory_proxy_call_set_local_set_pnp_sync@plt> @ imm = #-0x124dc
44ef77aa: 4604         	mov	r4, r0
44ef77ac: b338         	cbz	r0, 0x44ef77fe <factory_set_local_set_pnp+0xb6> @ imm = #0x4e
44ef77ae: 493b         	ldr	r1, [pc, #0xec]         @ 0x44ef789c <factory_set_local_set_pnp+0x154>
44ef77b0: aa04         	add	r2, sp, #0x10
44ef77b2: 9805         	ldr	r0, [sp, #0x14]
44ef77b4: 4479         	add	r1, pc ; STR '(i)'
44ef77b6: 9704         	str	r7, [sp, #0x10]
44ef77b8: f7ed eb60    	blx	0x44ee4e7c <g_variant_get@plt> @ imm = #-0x12940
44ef77bc: 9805         	ldr	r0, [sp, #0x14]
44ef77be: f7ed ec54    	blx	0x44ee5068 <g_variant_unref@plt> @ imm = #-0x12758
44ef77c2: 9c04         	ldr	r4, [sp, #0x10]
44ef77c4: 2c00         	cmp	r4, #0x0
44ef77c6: d03d         	beq	0x44ef7844 <factory_set_local_set_pnp+0xfc> @ imm = #0x7a
44ef77c8: 4b35         	ldr	r3, [pc, #0xd4]         @ 0x44ef78a0 <factory_set_local_set_pnp+0x158>
44ef77ca: f44f 7197    	mov.w	r1, #0x12e
44ef77ce: 4642         	mov	r2, r8
44ef77d0: 9102         	str	r1, [sp, #0x8]
44ef77d2: 4638         	mov	r0, r7
44ef77d4: 447b         	add	r3, pc
44ef77d6: 2104         	movs	r1, #0x4
44ef77d8: 9603         	str	r6, [sp, #0xc]
44ef77da: f8cd 9004    	str.w	r9, [sp, #0x4]
44ef77de: 2401         	movs	r4, #0x1
44ef77e0: 9500         	str	r5, [sp]
44ef77e2: f7ed eaf6    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x12a14
44ef77e6: 4a2f         	ldr	r2, [pc, #0xbc]         @ 0x44ef78a4 <factory_set_local_set_pnp+0x15c>
44ef77e8: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x44ef788c <factory_set_local_set_pnp+0x144>
44ef77ea: 447a         	add	r2, pc
44ef77ec: 58d3         	ldr	r3, [r2, r3]
44ef77ee: 681a         	ldr	r2, [r3]
44ef77f0: 9b07         	ldr	r3, [sp, #0x1c]
44ef77f2: 405a         	eors	r2, r3
44ef77f4: d144         	bne	0x44ef7880 <factory_set_local_set_pnp+0x138> @ imm = #0x88
44ef77f6: 4620         	mov	r0, r4
44ef77f8: b009         	add	sp, #0x24
44ef77fa: e8bd 83f0    	pop.w	{r4, r5, r6, r7, r8, r9, pc}
44ef77fe: f240 131b    	movw	r3, #0x11b
44ef7802: 9302         	str	r3, [sp, #0x8]
44ef7804: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x44ef78a8 <factory_set_local_set_pnp+0x160>
44ef7806: 4642         	mov	r2, r8
44ef7808: 2106         	movs	r1, #0x6
44ef780a: 2002         	movs	r0, #0x2
44ef780c: 447b         	add	r3, pc
44ef780e: f8cd 9004    	str.w	r9, [sp, #0x4]
44ef7812: 9500         	str	r5, [sp]
44ef7814: f7ed eadc    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x12a48
44ef7818: 9b06         	ldr	r3, [sp, #0x18]
44ef781a: 2b00         	cmp	r3, #0x0
44ef781c: d0e3         	beq	0x44ef77e6 <factory_set_local_set_pnp+0x9e> @ imm = #-0x3a
44ef781e: 689b         	ldr	r3, [r3, #0x8]
44ef7820: 4642         	mov	r2, r8
44ef7822: 9303         	str	r3, [sp, #0xc]
44ef7824: f44f 738f    	mov.w	r3, #0x11e
44ef7828: 9302         	str	r3, [sp, #0x8]
44ef782a: 2106         	movs	r1, #0x6
44ef782c: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x44ef78ac <factory_set_local_set_pnp+0x164>
44ef782e: 2002         	movs	r0, #0x2
44ef7830: f8cd 9004    	str.w	r9, [sp, #0x4]
44ef7834: 447b         	add	r3, pc
44ef7836: 9500         	str	r5, [sp]
44ef7838: f7ed eaca    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x12a6c
44ef783c: 9806         	ldr	r0, [sp, #0x18]
44ef783e: f7ec eea0    	blx	0x44ee4580 <g_error_free@plt> @ imm = #-0x132c0
44ef7842: e7d0         	b	0x44ef77e6 <factory_set_local_set_pnp+0x9e> @ imm = #-0x60
44ef7844: f44f 7395    	mov.w	r3, #0x12a
44ef7848: 9302         	str	r3, [sp, #0x8]
44ef784a: 4b19         	ldr	r3, [pc, #0x64]         @ 0x44ef78b0 <factory_set_local_set_pnp+0x168>
44ef784c: 4642         	mov	r2, r8
44ef784e: 2104         	movs	r1, #0x4
44ef7850: 4620         	mov	r0, r4
44ef7852: 447b         	add	r3, pc
44ef7854: 9403         	str	r4, [sp, #0xc]
44ef7856: f8cd 9004    	str.w	r9, [sp, #0x4]
44ef785a: 9500         	str	r5, [sp]
44ef785c: f7ed eab8    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x12a90
44ef7860: e7c1         	b	0x44ef77e6 <factory_set_local_set_pnp+0x9e> @ imm = #-0x7e
44ef7862: 4b14         	ldr	r3, [pc, #0x50]         @ 0x44ef78b4 <factory_set_local_set_pnp+0x16c>
44ef7864: 4604         	mov	r4, r0
44ef7866: 4642         	mov	r2, r8
44ef7868: f240 1015    	movw	r0, #0x115
44ef786c: 447b         	add	r3, pc
44ef786e: 9002         	str	r0, [sp, #0x8]
44ef7870: 2106         	movs	r1, #0x6
44ef7872: f8cd 9004    	str.w	r9, [sp, #0x4]
44ef7876: 9500         	str	r5, [sp]
44ef7878: 2002         	movs	r0, #0x2
44ef787a: f7ed eaaa    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x12aac
44ef787e: e7b2         	b	0x44ef77e6 <factory_set_local_set_pnp+0x9e> @ imm = #-0x9c
44ef7880: f7ed eb08    	blx	0x44ee4e94 <__stack_chk_fail@plt> @ imm = #-0x129f0
44ef7884: 7a5c         	ldrb	r4, [r3, #0x9]
44ef7886: 0002         	movs	r2, r0
44ef7888: 1b3e         	subs	r6, r7, r4
44ef788a: 0001         	movs	r1, r0
44ef788c: 0704         	lsls	r4, r0, #0x1c
44ef788e: 0000         	movs	r0, r0
44ef7890: 1b18         	subs	r0, r3, r4
44ef7892: 0001         	movs	r1, r0
44ef7894: cba8         	ldm	r3, {r3, r5, r7}
44ef7896: 0000         	movs	r0, r0
44ef7898: 1ae4         	subs	r4, r4, r3
44ef789a: 0001         	movs	r1, r0
44ef789c: d62c         	bvs	0x44ef78f8 <factory_get_localset_string+0x40> @ imm = #0x58
44ef789e: 0000         	movs	r0, r0
44ef78a0: 1c00         	adds	r0, r0, #0x0
44ef78a2: 0001         	movs	r1, r0
44ef78a4: 79ca         	ldrb	r2, [r1, #0x7]
44ef78a6: 0002         	movs	r2, r0
44ef78a8: 1b1c         	subs	r4, r3, r4
44ef78aa: 0001         	movs	r1, r0
44ef78ac: 1b3c         	subs	r4, r7, r4
44ef78ae: 0001         	movs	r1, r0
44ef78b0: 1b3e         	subs	r6, r7, r4
44ef78b2: 0001         	movs	r1, r0
44ef78b4: 1a90         	subs	r0, r2, r2
44ef78b6: 0001         	movs	r1, r0
