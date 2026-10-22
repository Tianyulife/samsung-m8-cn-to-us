
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfconfig.so:	file format elf32-littlearm

Disassembly of section .text:

43262138 <fconfig_set_bool>:
43262138: b538         	push	{r3, r4, r5, lr}
4326213a: 4605         	mov	r5, r0
4326213c: b181         	cbz	r1, 0x43262160 <fconfig_set_bool+0x28> @ imm = #0x20
4326213e: 480e         	ldr	r0, [pc, #0x38]         @ 0x43262178 <fconfig_set_bool+0x40>
43262140: 4478         	add	r0, pc
43262142: f7fe ee20    	blx	0x43260d84 <strdup@plt> @ imm = #-0x13c0
43262146: 4604         	mov	r4, r0
43262148: 4628         	mov	r0, r5
4326214a: 4622         	mov	r2, r4
4326214c: 2106         	movs	r1, #0x6
4326214e: f7ff fd0d    	bl	0x43261b6c <client_packet_send_sync+0x210> @ imm = #-0x5e6
43262152: 2800         	cmp	r0, #0x0
43262154: 4620         	mov	r0, r4
43262156: db09         	blt	0x4326216c <fconfig_set_bool+0x34> @ imm = #0x12
43262158: f7fe edee    	blx	0x43260d38 <free@plt>   @ imm = #-0x1424
4326215c: 2000         	movs	r0, #0x0
4326215e: bd38         	pop	{r3, r4, r5, pc}
43262160: 4806         	ldr	r0, [pc, #0x18]         @ 0x4326217c <fconfig_set_bool+0x44>
43262162: 4478         	add	r0, pc
43262164: f7fe ee0e    	blx	0x43260d84 <strdup@plt> @ imm = #-0x13e4
43262168: 4604         	mov	r4, r0
4326216a: e7ed         	b	0x43262148 <fconfig_set_bool+0x10> @ imm = #-0x26
4326216c: f7fe ede4    	blx	0x43260d38 <free@plt>   @ imm = #-0x1438
43262170: f04f 30ff    	mov.w	r0, #0xffffffff
43262174: bd38         	pop	{r3, r4, r5, pc}
43262176: bf00         	nop
43262178: 0b4c         	lsrs	r4, r1, #0xd
4326217a: 0000         	movs	r0, r0
4326217c: 0b32         	lsrs	r2, r6, #0xc
4326217e: 0000         	movs	r0, r0
