
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44ef454c <_ZN19FCStorageBaseCommon13GetFactoryUIDEjPiii>:
44ef454c: e92d 43f0    	push.w	{r4, r5, r6, r7, r8, r9, lr}
44ef4550: 4691         	mov	r9, r2
44ef4552: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x44ef45b0 <_ZN19FCStorageBaseCommon13GetFactoryUIDEjPiii+0x64>
44ef4554: 461e         	mov	r6, r3
44ef4556: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x44ef45b4 <_ZN19FCStorageBaseCommon13GetFactoryUIDEjPiii+0x68>
44ef4558: 447a         	add	r2, pc
44ef455a: b093         	sub	sp, #0x4c
44ef455c: 4688         	mov	r8, r1
44ef455e: 4607         	mov	r7, r0
44ef4560: ad09         	add	r5, sp, #0x24
44ef4562: 58d3         	ldr	r3, [r2, r3]
44ef4564: 9c1a         	ldr	r4, [sp, #0x68]
44ef4566: 681b         	ldr	r3, [r3]
44ef4568: 9311         	str	r3, [sp, #0x44]
44ef456a: f04f 0300    	mov.w	r3, #0x0
44ef456e: f7ef efea    	blx	0x44ee4544 <_ZN18FCStoreTypeControl11GetInstanceEv@plt> @ imm = #-0x1002c
44ef4572: a908         	add	r1, sp, #0x20
44ef4574: f7f0 ef6e    	blx	0x44ee5454 <_ZN18FCStoreTypeControl20InitializeSourceInfoEP17fac_source_info_s@plt> @ imm = #-0xf124
44ef4578: 9409         	str	r4, [sp, #0x24]
44ef457a: 466c         	mov	r4, sp
44ef457c: 9608         	str	r6, [sp, #0x20]
44ef457e: cd0f         	ldm	r5!, {r0, r1, r2, r3}
44ef4580: c40f         	stm	r4!, {r0, r1, r2, r3}
44ef4582: e895 000f    	ldm.w	r5, {r0, r1, r2, r3}
44ef4586: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
44ef458a: 4633         	mov	r3, r6
44ef458c: 464a         	mov	r2, r9
44ef458e: 4641         	mov	r1, r8
44ef4590: 4638         	mov	r0, r7
44ef4592: f7f0 ed8a    	blx	0x44ee50a8 <_ZN19FCStorageBaseCommon13GetFactoryUIDEjPi17fac_source_info_s@plt> @ imm = #-0xf4ec
44ef4596: 4a08         	ldr	r2, [pc, #0x20]         @ 0x44ef45b8 <_ZN19FCStorageBaseCommon13GetFactoryUIDEjPiii+0x6c>
44ef4598: 4b06         	ldr	r3, [pc, #0x18]         @ 0x44ef45b4 <_ZN19FCStorageBaseCommon13GetFactoryUIDEjPiii+0x68>
44ef459a: 447a         	add	r2, pc
44ef459c: 58d3         	ldr	r3, [r2, r3]
44ef459e: 681a         	ldr	r2, [r3]
44ef45a0: 9b11         	ldr	r3, [sp, #0x44]
44ef45a2: 405a         	eors	r2, r3
44ef45a4: d102         	bne	0x44ef45ac <_ZN19FCStorageBaseCommon13GetFactoryUIDEjPiii+0x60> @ imm = #0x4
44ef45a6: b013         	add	sp, #0x4c
44ef45a8: e8bd 83f0    	pop.w	{r4, r5, r6, r7, r8, r9, pc}
44ef45ac: f7f0 ec72    	blx	0x44ee4e94 <__stack_chk_fail@plt> @ imm = #-0xf71c
44ef45b0: ac5c         	add	r4, sp, #0x170
44ef45b2: 0002         	movs	r2, r0
44ef45b4: 0704         	lsls	r4, r0, #0x1c
44ef45b6: 0000         	movs	r0, r0
44ef45b8: ac1a         	add	r4, sp, #0x68
44ef45ba: 0002         	movs	r2, r0
