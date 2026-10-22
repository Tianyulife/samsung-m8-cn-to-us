
firmware-analysis/US-1720.7/rootfs/root/usr/lib/libfactory-data-config.so.00.00.0057:	file format elf32-littlearm

Disassembly of section .text:

45edbde0 <_Z44fd_config_check_unused_localset_smartmonitoriPi>:
45edbde0: b410         	push	{r4}
45edbde2: 2300         	movs	r3, #0x0
45edbde4: 4c11         	ldr	r4, [pc, #0x44]         @ 0x45edbe2c <_Z44fd_config_check_unused_localset_smartmonitoriPi+0x4c>
45edbde6: 600b         	str	r3, [r1]
45edbde8: 447c         	add	r4, pc
45edbdea: 6a23         	ldr	r3, [r4, #0x20]
45edbdec: b17b         	cbz	r3, 0x45edbe0e <_Z44fd_config_check_unused_localset_smartmonitoriPi+0x2e> @ imm = #0x1e
45edbdee: 341c         	adds	r4, #0x1c
45edbdf0: 691a         	ldr	r2, [r3, #0x10]
45edbdf2: 4282         	cmp	r2, r0
45edbdf4: db15         	blt	0x45edbe22 <_Z44fd_config_check_unused_localset_smartmonitoriPi+0x42> @ imm = #0x2a
45edbdf6: 461c         	mov	r4, r3
45edbdf8: 689b         	ldr	r3, [r3, #0x8]
45edbdfa: 2b00         	cmp	r3, #0x0
45edbdfc: d1f8         	bne	0x45edbdf0 <_Z44fd_config_check_unused_localset_smartmonitoriPi+0x10> @ imm = #-0x10
45edbdfe: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x45edbe30 <_Z44fd_config_check_unused_localset_smartmonitoriPi+0x50>
45edbe00: 447b         	add	r3, pc
45edbe02: 331c         	adds	r3, #0x1c
45edbe04: 429c         	cmp	r4, r3
45edbe06: d002         	beq	0x45edbe0e <_Z44fd_config_check_unused_localset_smartmonitoriPi+0x2e> @ imm = #0x4
45edbe08: 6923         	ldr	r3, [r4, #0x10]
45edbe0a: 4283         	cmp	r3, r0
45edbe0c: dd03         	ble	0x45edbe16 <_Z44fd_config_check_unused_localset_smartmonitoriPi+0x36> @ imm = #0x6
45edbe0e: 2000         	movs	r0, #0x0
45edbe10: f85d 4b04    	ldr	r4, [sp], #4
45edbe14: 4770         	bx	lr
45edbe16: 2301         	movs	r3, #0x1
45edbe18: 2000         	movs	r0, #0x0
45edbe1a: f85d 4b04    	ldr	r4, [sp], #4
45edbe1e: 600b         	str	r3, [r1]
45edbe20: 4770         	bx	lr
45edbe22: 68db         	ldr	r3, [r3, #0xc]
45edbe24: 2b00         	cmp	r3, #0x0
45edbe26: d1e3         	bne	0x45edbdf0 <_Z44fd_config_check_unused_localset_smartmonitoriPi+0x10> @ imm = #-0x3a
45edbe28: e7e9         	b	0x45edbdfe <_Z44fd_config_check_unused_localset_smartmonitoriPi+0x1e> @ imm = #-0x2e
45edbe2a: bf00         	nop
45edbe2c: 791c         	ldrb	r4, [r3, #0x4]
45edbe2e: 0001         	movs	r1, r0
45edbe30: 7904         	ldrb	r4, [r0, #0x4]
45edbe32: 0001         	movs	r1, r0
