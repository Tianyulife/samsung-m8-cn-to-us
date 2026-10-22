
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44ef9910 <factory_get_localset_enum>:
44ef9910: 4a14         	ldr	r2, [pc, #0x50]         @ 0x44ef9964 <factory_get_localset_enum+0x54>
44ef9912: 4b15         	ldr	r3, [pc, #0x54]         @ 0x44ef9968 <factory_get_localset_enum+0x58>
44ef9914: 447a         	add	r2, pc
44ef9916: b570         	push	{r4, r5, r6, lr}
44ef9918: 4606         	mov	r6, r0
44ef991a: b082         	sub	sp, #0x8
44ef991c: 2400         	movs	r4, #0x0
44ef991e: 58d3         	ldr	r3, [r2, r3]
44ef9920: 681b         	ldr	r3, [r3]
44ef9922: 9301         	str	r3, [sp, #0x4]
44ef9924: f04f 0300    	mov.w	r3, #0x0
44ef9928: f7eb ef4c    	blx	0x44ee57c4 <_ZN13FCStorageBase11GetInstanceEv@plt> @ imm = #-0x14168
44ef992c: 466a         	mov	r2, sp
44ef992e: 21c2         	movs	r1, #0xc2
44ef9930: 4605         	mov	r5, r0
44ef9932: 9400         	str	r4, [sp]
44ef9934: f7eb ed76    	blx	0x44ee5424 <_ZN19FCStorageBaseCommon12GetStoreDataEjPi@plt> @ imm = #-0x14514
44ef9938: b150         	cbz	r0, 0x44ef9950 <factory_get_localset_enum+0x40> @ imm = #0x14
44ef993a: 4620         	mov	r0, r4
44ef993c: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x44ef996c <factory_get_localset_enum+0x5c>
44ef993e: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x44ef9968 <factory_get_localset_enum+0x58>
44ef9940: 447a         	add	r2, pc
44ef9942: 58d3         	ldr	r3, [r2, r3]
44ef9944: 681a         	ldr	r2, [r3]
44ef9946: 9b01         	ldr	r3, [sp, #0x4]
44ef9948: 405a         	eors	r2, r3
44ef994a: d109         	bne	0x44ef9960 <factory_get_localset_enum+0x50> @ imm = #0x12
44ef994c: b002         	add	sp, #0x8
44ef994e: bd70         	pop	{r4, r5, r6, pc}
44ef9950: 9a00         	ldr	r2, [sp]
44ef9952: 4633         	mov	r3, r6
44ef9954: 4628         	mov	r0, r5
44ef9956: 21c2         	movs	r1, #0xc2
44ef9958: f7eb ebf4    	blx	0x44ee5144 <_ZN19FCStorageBaseCommon29ConvertStoreDataToControlDataEiiPi@plt> @ imm = #-0x14818
44ef995c: 2001         	movs	r0, #0x1
44ef995e: e7ed         	b	0x44ef993c <factory_get_localset_enum+0x2c> @ imm = #-0x26
44ef9960: f7eb ea98    	blx	0x44ee4e94 <__stack_chk_fail@plt> @ imm = #-0x14ad0
44ef9964: 58a0         	ldr	r0, [r4, r2]
44ef9966: 0002         	movs	r2, r0
44ef9968: 0704         	lsls	r4, r0, #0x1c
44ef996a: 0000         	movs	r0, r0
44ef996c: 5874         	ldr	r4, [r6, r1]
44ef996e: 0002         	movs	r2, r0
