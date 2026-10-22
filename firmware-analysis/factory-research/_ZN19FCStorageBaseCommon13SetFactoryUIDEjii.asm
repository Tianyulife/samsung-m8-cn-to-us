
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44ef4204 <_ZN19FCStorageBaseCommon13SetFactoryUIDEjii>:
44ef4204: e92d 43f0    	push.w	{r4, r5, r6, r7, r8, r9, lr}
44ef4208: 4691         	mov	r9, r2
44ef420a: 4a16         	ldr	r2, [pc, #0x58]         @ 0x44ef4264 <_ZN19FCStorageBaseCommon13SetFactoryUIDEjii+0x60>
44ef420c: 461e         	mov	r6, r3
44ef420e: 4b16         	ldr	r3, [pc, #0x58]         @ 0x44ef4268 <_ZN19FCStorageBaseCommon13SetFactoryUIDEjii+0x64>
44ef4210: 447a         	add	r2, pc
44ef4212: b093         	sub	sp, #0x4c
44ef4214: ad09         	add	r5, sp, #0x24
44ef4216: 4688         	mov	r8, r1
44ef4218: 4607         	mov	r7, r0
44ef421a: 466c         	mov	r4, sp
44ef421c: 58d3         	ldr	r3, [r2, r3]
44ef421e: 681b         	ldr	r3, [r3]
44ef4220: 9311         	str	r3, [sp, #0x44]
44ef4222: f04f 0300    	mov.w	r3, #0x0
44ef4226: f7f0 e98e    	blx	0x44ee4544 <_ZN18FCStoreTypeControl11GetInstanceEv@plt> @ imm = #-0xfce4
44ef422a: a908         	add	r1, sp, #0x20
44ef422c: f7f1 e912    	blx	0x44ee5454 <_ZN18FCStoreTypeControl20InitializeSourceInfoEP17fac_source_info_s@plt> @ imm = #-0xeddc
44ef4230: 9608         	str	r6, [sp, #0x20]
44ef4232: cd0f         	ldm	r5!, {r0, r1, r2, r3}
44ef4234: c40f         	stm	r4!, {r0, r1, r2, r3}
44ef4236: e895 000f    	ldm.w	r5, {r0, r1, r2, r3}
44ef423a: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
44ef423e: 4633         	mov	r3, r6
44ef4240: 464a         	mov	r2, r9
44ef4242: 4641         	mov	r1, r8
44ef4244: 4638         	mov	r0, r7
44ef4246: f7f1 e912    	blx	0x44ee546c <_ZN19FCStorageBaseCommon13SetFactoryUIDEji17fac_source_info_s@plt> @ imm = #-0xeddc
44ef424a: 4a08         	ldr	r2, [pc, #0x20]         @ 0x44ef426c <_ZN19FCStorageBaseCommon13SetFactoryUIDEjii+0x68>
44ef424c: 4b06         	ldr	r3, [pc, #0x18]         @ 0x44ef4268 <_ZN19FCStorageBaseCommon13SetFactoryUIDEjii+0x64>
44ef424e: 447a         	add	r2, pc
44ef4250: 58d3         	ldr	r3, [r2, r3]
44ef4252: 681a         	ldr	r2, [r3]
44ef4254: 9b11         	ldr	r3, [sp, #0x44]
44ef4256: 405a         	eors	r2, r3
44ef4258: d102         	bne	0x44ef4260 <_ZN19FCStorageBaseCommon13SetFactoryUIDEjii+0x5c> @ imm = #0x4
44ef425a: b013         	add	sp, #0x4c
44ef425c: e8bd 83f0    	pop.w	{r4, r5, r6, r7, r8, r9, pc}
44ef4260: f7f0 ee18    	blx	0x44ee4e94 <__stack_chk_fail@plt> @ imm = #-0xf3d0
44ef4264: afa4         	add	r7, sp, #0x290
44ef4266: 0002         	movs	r2, r0
44ef4268: 0704         	lsls	r4, r0, #0x1c
44ef426a: 0000         	movs	r0, r0
44ef426c: af66         	add	r7, sp, #0x198
44ef426e: 0002         	movs	r2, r0
