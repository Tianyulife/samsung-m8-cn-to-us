
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44ef4370 <_ZN19FCStorageBaseCommon13GetFactoryUIDEjPi17fac_source_info_s>:
44ef4370: b082         	sub	sp, #0x8
44ef4372: 469c         	mov	r12, r3
44ef4374: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
44ef4378: 4607         	mov	r7, r0
44ef437a: 4688         	mov	r8, r1
44ef437c: b088         	sub	sp, #0x20
44ef437e: 4616         	mov	r6, r2
44ef4380: ad10         	add	r5, sp, #0x40
44ef4382: 466c         	mov	r4, sp
44ef4384: 930f         	str	r3, [sp, #0x3c]
44ef4386: cd0f         	ldm	r5!, {r0, r1, r2, r3}
44ef4388: c40f         	stm	r4!, {r0, r1, r2, r3}
44ef438a: e895 000f    	ldm.w	r5, {r0, r1, r2, r3}
44ef438e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
44ef4392: 4663         	mov	r3, r12
44ef4394: 4632         	mov	r2, r6
44ef4396: 4641         	mov	r1, r8
44ef4398: 4638         	mov	r0, r7
44ef439a: f7f0 ea54    	blx	0x44ee4844 <_ZN19FCStorageBaseCommon12GetStoreDataEjPi17fac_source_info_s@plt> @ imm = #-0xfb58
44ef439e: b960         	cbnz	r0, 0x44ef43ba <_ZN19FCStorageBaseCommon13GetFactoryUIDEjPi17fac_source_info_s+0x4a> @ imm = #0x18
44ef43a0: 4604         	mov	r4, r0
44ef43a2: 6832         	ldr	r2, [r6]
44ef43a4: 4641         	mov	r1, r8
44ef43a6: 4638         	mov	r0, r7
44ef43a8: 4633         	mov	r3, r6
44ef43aa: f7f0 eecc    	blx	0x44ee5144 <_ZN19FCStorageBaseCommon29ConvertStoreDataToControlDataEiiPi@plt> @ imm = #-0xf268
44ef43ae: 4620         	mov	r0, r4
44ef43b0: b008         	add	sp, #0x20
44ef43b2: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
44ef43b6: b002         	add	sp, #0x8
44ef43b8: 4770         	bx	lr
44ef43ba: f04f 34ff    	mov.w	r4, #0xffffffff
44ef43be: e7f6         	b	0x44ef43ae <_ZN19FCStorageBaseCommon13GetFactoryUIDEjPi17fac_source_info_s+0x3e> @ imm = #-0x14
