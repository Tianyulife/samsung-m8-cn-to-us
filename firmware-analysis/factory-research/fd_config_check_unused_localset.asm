
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-data-config.so.00.00.0057:	file format elf32-littlearm

Disassembly of section .text:

45e4c988 <fd_config_check_unused_localset>:
45e4c988: b538         	push	{r3, r4, r5, lr}
45e4c98a: 4604         	mov	r4, r0
45e4c98c: 460d         	mov	r5, r1
45e4c98e: f7f6 ea6c    	blx	0x45e42e68 <fd_config_check_is_smartmonitor@plt> @ imm = #-0x9b28
45e4c992: b940         	cbnz	r0, 0x45e4c9a6 <fd_config_check_unused_localset+0x1e> @ imm = #0x10
45e4c994: 2c61         	cmp	r4, #0x61
45e4c996: d002         	beq	0x45e4c99e <fd_config_check_unused_localset+0x16> @ imm = #0x4
45e4c998: 6028         	str	r0, [r5]
45e4c99a: 2000         	movs	r0, #0x0
45e4c99c: bd38         	pop	{r3, r4, r5, pc}
45e4c99e: 2301         	movs	r3, #0x1
45e4c9a0: 602b         	str	r3, [r5]
45e4c9a2: 2000         	movs	r0, #0x0
45e4c9a4: bd38         	pop	{r3, r4, r5, pc}
45e4c9a6: 4629         	mov	r1, r5
45e4c9a8: 4620         	mov	r0, r4
45e4c9aa: e8bd 4038    	pop.w	{r3, r4, r5, lr}
45e4c9ae: f7f6 bb93    	b.w	0x45e430d8 <memcmp@plt+0xc> @ imm = #-0x98da
45e4c9b2: bf00         	nop
