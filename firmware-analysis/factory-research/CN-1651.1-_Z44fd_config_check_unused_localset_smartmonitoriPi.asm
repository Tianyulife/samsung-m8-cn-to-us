
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-data-config.so.00.00.0057:	file format elf32-littlearm

Disassembly of section .text:

45e4b8e4 <_Z44fd_config_check_unused_localset_smartmonitoriPi>:
45e4b8e4: b410         	push	{r4}
45e4b8e6: 2300         	movs	r3, #0x0
45e4b8e8: 4c11         	ldr	r4, [pc, #0x44]         @ 0x45e4b930 <_Z44fd_config_check_unused_localset_smartmonitoriPi+0x4c>
45e4b8ea: 600b         	str	r3, [r1]
45e4b8ec: 447c         	add	r4, pc
45e4b8ee: 6a23         	ldr	r3, [r4, #0x20]
45e4b8f0: b17b         	cbz	r3, 0x45e4b912 <_Z44fd_config_check_unused_localset_smartmonitoriPi+0x2e> @ imm = #0x1e
45e4b8f2: 341c         	adds	r4, #0x1c
45e4b8f4: 691a         	ldr	r2, [r3, #0x10]
45e4b8f6: 4282         	cmp	r2, r0
45e4b8f8: db15         	blt	0x45e4b926 <_Z44fd_config_check_unused_localset_smartmonitoriPi+0x42> @ imm = #0x2a
45e4b8fa: 461c         	mov	r4, r3
45e4b8fc: 689b         	ldr	r3, [r3, #0x8]
45e4b8fe: 2b00         	cmp	r3, #0x0
45e4b900: d1f8         	bne	0x45e4b8f4 <_Z44fd_config_check_unused_localset_smartmonitoriPi+0x10> @ imm = #-0x10
45e4b902: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x45e4b934 <_Z44fd_config_check_unused_localset_smartmonitoriPi+0x50>
45e4b904: 447b         	add	r3, pc
45e4b906: 331c         	adds	r3, #0x1c
45e4b908: 429c         	cmp	r4, r3
45e4b90a: d002         	beq	0x45e4b912 <_Z44fd_config_check_unused_localset_smartmonitoriPi+0x2e> @ imm = #0x4
45e4b90c: 6923         	ldr	r3, [r4, #0x10]
45e4b90e: 4283         	cmp	r3, r0
45e4b910: dd03         	ble	0x45e4b91a <_Z44fd_config_check_unused_localset_smartmonitoriPi+0x36> @ imm = #0x6
45e4b912: 2000         	movs	r0, #0x0
45e4b914: f85d 4b04    	ldr	r4, [sp], #4
45e4b918: 4770         	bx	lr
45e4b91a: 2301         	movs	r3, #0x1
45e4b91c: 2000         	movs	r0, #0x0
45e4b91e: f85d 4b04    	ldr	r4, [sp], #4
45e4b922: 600b         	str	r3, [r1]
45e4b924: 4770         	bx	lr
45e4b926: 68db         	ldr	r3, [r3, #0xc]
45e4b928: 2b00         	cmp	r3, #0x0
45e4b92a: d1e3         	bne	0x45e4b8f4 <_Z44fd_config_check_unused_localset_smartmonitoriPi+0x10> @ imm = #-0x3a
45e4b92c: e7e9         	b	0x45e4b902 <_Z44fd_config_check_unused_localset_smartmonitoriPi+0x1e> @ imm = #-0x2e
45e4b92e: bf00         	nop
45e4b930: 7e00         	ldrb	r0, [r0, #0x18]
45e4b932: 0001         	movs	r1, r0
45e4b934: 7de8         	ldrb	r0, [r5, #0x17]
45e4b936: 0001         	movs	r1, r0
