
firmware-analysis/US-1720.7/rootfs/root/usr/lib/libfactory-data-config.so.00.00.0057:	file format elf32-littlearm

Disassembly of section .text:

45edcaf8 <fd_config_check_is_smartmonitor>:
45edcaf8: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x45edcb64 <fd_config_check_is_smartmonitor+0x6c>
45edcafa: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x45edcb68 <fd_config_check_is_smartmonitor+0x70>
45edcafc: b530         	push	{r4, r5, lr}
45edcafe: 447a         	add	r2, pc
45edcb00: 481a         	ldr	r0, [pc, #0x68]         @ 0x45edcb6c <fd_config_check_is_smartmonitor+0x74>
45edcb02: b087         	sub	sp, #0x1c
45edcb04: 2400         	movs	r4, #0x0
45edcb06: 58d3         	ldr	r3, [r2, r3]
45edcb08: f10d 0113    	add.w	r1, sp, #0x13
45edcb0c: 4478         	add	r0, pc
45edcb0e: 681b         	ldr	r3, [r3]
45edcb10: 9305         	str	r3, [sp, #0x14]
45edcb12: f04f 0300    	mov.w	r3, #0x0
45edcb16: f88d 4013    	strb.w	r4, [sp, #0x13]
45edcb1a: f7f6 ea6a    	blx	0x45ed2ff0 <system_info_get_custom_bool@plt> @ imm = #-0x9b2c
45edcb1e: b958         	cbnz	r0, 0x45edcb38 <fd_config_check_is_smartmonitor+0x40> @ imm = #0x16
45edcb20: f89d 0013    	ldrb.w	r0, [sp, #0x13]
45edcb24: 4a12         	ldr	r2, [pc, #0x48]         @ 0x45edcb70 <fd_config_check_is_smartmonitor+0x78>
45edcb26: 4b10         	ldr	r3, [pc, #0x40]         @ 0x45edcb68 <fd_config_check_is_smartmonitor+0x70>
45edcb28: 447a         	add	r2, pc
45edcb2a: 58d3         	ldr	r3, [r2, r3]
45edcb2c: 681a         	ldr	r2, [r3]
45edcb2e: 9b05         	ldr	r3, [sp, #0x14]
45edcb30: 405a         	eors	r2, r3
45edcb32: d114         	bne	0x45edcb5e <fd_config_check_is_smartmonitor+0x66> @ imm = #0x28
45edcb34: b007         	add	sp, #0x1c
45edcb36: bd30         	pop	{r4, r5, pc}
45edcb38: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x45edcb74 <fd_config_check_is_smartmonitor+0x7c>
45edcb3a: 25f6         	movs	r5, #0xf6
45edcb3c: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x45edcb78 <fd_config_check_is_smartmonitor+0x80>
45edcb3e: 2106         	movs	r1, #0x6
45edcb40: 447b         	add	r3, pc
45edcb42: 2002         	movs	r0, #0x2
45edcb44: 447a         	add	r2, pc
45edcb46: 3344         	adds	r3, #0x44
45edcb48: e9cd 3200    	strd	r3, r2, [sp]
45edcb4c: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x45edcb7c <fd_config_check_is_smartmonitor+0x84>
45edcb4e: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x45edcb80 <fd_config_check_is_smartmonitor+0x88>
45edcb50: 447b         	add	r3, pc
45edcb52: 9502         	str	r5, [sp, #0x8]
45edcb54: 447a         	add	r2, pc
45edcb56: f7f6 eae8    	blx	0x45ed3128 <__dlog_print@plt> @ imm = #-0x9a30
45edcb5a: 4620         	mov	r0, r4
45edcb5c: e7e2         	b	0x45edcb24 <fd_config_check_is_smartmonitor+0x2c> @ imm = #-0x3c
45edcb5e: f7f6 eaf0    	blx	0x45ed3140 <__stack_chk_fail@plt> @ imm = #-0x9a20
45edcb62: bf00         	nop
45edcb64: 64fe         	str	r6, [r7, #0x4c]
45edcb66: 0001         	movs	r1, r0
45edcb68: 0164         	lsls	r4, r4, #0x5
45edcb6a: 0000         	movs	r0, r0
45edcb6c: 31a4         	adds	r1, #0xa4
45edcb6e: 0000         	movs	r0, r0
45edcb70: 64d4         	str	r4, [r2, #0x4c]
45edcb72: 0001         	movs	r1, r0
45edcb74: 2e5c         	cmp	r6, #0x5c
45edcb76: 0000         	movs	r0, r0
45edcb78: 31f0         	adds	r1, #0xf0
45edcb7a: 0000         	movs	r0, r0
45edcb7c: 31a0         	adds	r1, #0xa0
45edcb7e: 0000         	movs	r0, r0
45edcb80: 0830         	lsrs	r0, r6, #0x20
45edcb82: 0000         	movs	r0, r0
