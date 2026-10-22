
firmware-analysis/US-1720.7/rootfs/root/usr/lib/libfactory-data-config.so.00.00.0057:	file format elf32-littlearm

Disassembly of section .text:

45edce84 <fd_config_check_unused_localset>:
45edce84: b538         	push	{r3, r4, r5, lr}
45edce86: 4604         	mov	r4, r0
45edce88: 460d         	mov	r5, r1
45edce8a: f7f6 e8d0    	blx	0x45ed302c <fd_config_check_is_smartmonitor@plt> @ imm = #-0x9e60
45edce8e: b940         	cbnz	r0, 0x45edcea2 <fd_config_check_unused_localset+0x1e> @ imm = #0x10
45edce90: 2c61         	cmp	r4, #0x61
45edce92: d002         	beq	0x45edce9a <fd_config_check_unused_localset+0x16> @ imm = #0x4
45edce94: 6028         	str	r0, [r5]
45edce96: 2000         	movs	r0, #0x0
45edce98: bd38         	pop	{r3, r4, r5, pc}
45edce9a: 2301         	movs	r3, #0x1
45edce9c: 602b         	str	r3, [r5]
45edce9e: 2000         	movs	r0, #0x0
45edcea0: bd38         	pop	{r3, r4, r5, pc}
45edcea2: 4629         	mov	r1, r5
45edcea4: 4620         	mov	r0, r4
45edcea6: e8bd 4038    	pop.w	{r3, r4, r5, lr}
45edceaa: f7f6 ba09    	b.w	0x45ed32c0 <memcmp@plt+0xc> @ imm = #-0x9bee
45edceae: bf00         	nop
