
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44ef8420 <factory_convert_ext_localset_to_store_data>:
44ef8420: b538         	push	{r3, r4, r5, lr}
44ef8422: 4604         	mov	r4, r0
44ef8424: 460d         	mov	r5, r1
44ef8426: f7ed e9ce    	blx	0x44ee57c4 <_ZN13FCStorageBase11GetInstanceEv@plt> @ imm = #-0x12c64
44ef842a: b150         	cbz	r0, 0x44ef8442 <factory_convert_ext_localset_to_store_data+0x22> @ imm = #0x14
44ef842c: f7ec eb86    	blx	0x44ee4b3c <_ZN19FCStorageBaseCommon20GetStorageBaseRegionEv@plt> @ imm = #-0x138f4
44ef8430: b138         	cbz	r0, 0x44ef8442 <factory_convert_ext_localset_to_store_data+0x22> @ imm = #0xe
44ef8432: 6803         	ldr	r3, [r0]
44ef8434: 4621         	mov	r1, r4
44ef8436: 695b         	ldr	r3, [r3, #0x14]
44ef8438: 4798         	blx	r3
44ef843a: 4603         	mov	r3, r0
44ef843c: 602b         	str	r3, [r5]
44ef843e: 2001         	movs	r0, #0x1
44ef8440: bd38         	pop	{r3, r4, r5, pc}
44ef8442: 2000         	movs	r0, #0x0
44ef8444: bd38         	pop	{r3, r4, r5, pc}
44ef8446: bf00         	nop
