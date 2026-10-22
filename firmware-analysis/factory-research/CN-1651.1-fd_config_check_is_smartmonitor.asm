
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-data-config.so.00.00.0057:	file format elf32-littlearm

Disassembly of section .text:

45e4c5fc <fd_config_check_is_smartmonitor>:
45e4c5fc: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x45e4c668 <fd_config_check_is_smartmonitor+0x6c>
45e4c5fe: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x45e4c66c <fd_config_check_is_smartmonitor+0x70>
45e4c600: b530         	push	{r4, r5, lr}
45e4c602: 447a         	add	r2, pc
45e4c604: 481a         	ldr	r0, [pc, #0x68]         @ 0x45e4c670 <fd_config_check_is_smartmonitor+0x74>
45e4c606: b087         	sub	sp, #0x1c
45e4c608: 2400         	movs	r4, #0x0
45e4c60a: 58d3         	ldr	r3, [r2, r3]
45e4c60c: f10d 0113    	add.w	r1, sp, #0x13
45e4c610: 4478         	add	r0, pc
45e4c612: 681b         	ldr	r3, [r3]
45e4c614: 9305         	str	r3, [sp, #0x14]
45e4c616: f04f 0300    	mov.w	r3, #0x0
45e4c61a: f88d 4013    	strb.w	r4, [sp, #0x13]
45e4c61e: f7f6 ec06    	blx	0x45e42e2c <system_info_get_custom_bool@plt> @ imm = #-0x97f4
45e4c622: b958         	cbnz	r0, 0x45e4c63c <fd_config_check_is_smartmonitor+0x40> @ imm = #0x16
45e4c624: f89d 0013    	ldrb.w	r0, [sp, #0x13]
45e4c628: 4a12         	ldr	r2, [pc, #0x48]         @ 0x45e4c674 <fd_config_check_is_smartmonitor+0x78>
45e4c62a: 4b10         	ldr	r3, [pc, #0x40]         @ 0x45e4c66c <fd_config_check_is_smartmonitor+0x70>
45e4c62c: 447a         	add	r2, pc
45e4c62e: 58d3         	ldr	r3, [r2, r3]
45e4c630: 681a         	ldr	r2, [r3]
45e4c632: 9b05         	ldr	r3, [sp, #0x14]
45e4c634: 405a         	eors	r2, r3
45e4c636: d114         	bne	0x45e4c662 <fd_config_check_is_smartmonitor+0x66> @ imm = #0x28
45e4c638: b007         	add	sp, #0x1c
45e4c63a: bd30         	pop	{r4, r5, pc}
45e4c63c: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x45e4c678 <fd_config_check_is_smartmonitor+0x7c>
45e4c63e: 25f6         	movs	r5, #0xf6
45e4c640: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x45e4c67c <fd_config_check_is_smartmonitor+0x80>
45e4c642: 2106         	movs	r1, #0x6
45e4c644: 447b         	add	r3, pc
45e4c646: 2002         	movs	r0, #0x2
45e4c648: 447a         	add	r2, pc
45e4c64a: 3344         	adds	r3, #0x44
45e4c64c: e9cd 3200    	strd	r3, r2, [sp]
45e4c650: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x45e4c680 <fd_config_check_is_smartmonitor+0x84>
45e4c652: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x45e4c684 <fd_config_check_is_smartmonitor+0x88>
45e4c654: 447b         	add	r3, pc
45e4c656: 9502         	str	r5, [sp, #0x8]
45e4c658: 447a         	add	r2, pc
45e4c65a: f7f6 ec72    	blx	0x45e42f40 <__dlog_print@plt> @ imm = #-0x971c
45e4c65e: 4620         	mov	r0, r4
45e4c660: e7e2         	b	0x45e4c628 <fd_config_check_is_smartmonitor+0x2c> @ imm = #-0x3c
45e4c662: f7f6 ec7a    	blx	0x45e42f58 <__stack_chk_fail@plt> @ imm = #-0x970c
45e4c666: bf00         	nop
45e4c668: 69fa         	ldr	r2, [r7, #0x1c]
45e4c66a: 0001         	movs	r1, r0
45e4c66c: 014c         	lsls	r4, r1, #0x5
45e4c66e: 0000         	movs	r0, r0
45e4c670: 3034         	adds	r0, #0x34
45e4c672: 0000         	movs	r0, r0
45e4c674: 69d0         	ldr	r0, [r2, #0x1c]
45e4c676: 0001         	movs	r1, r0
45e4c678: 2cec         	cmp	r4, #0xec
45e4c67a: 0000         	movs	r0, r0
45e4c67c: 3080         	adds	r0, #0x80
45e4c67e: 0000         	movs	r0, r0
45e4c680: 3030         	adds	r0, #0x30
45e4c682: 0000         	movs	r0, r0
45e4c684: 0830         	lsrs	r0, r6, #0x20
45e4c686: 0000         	movs	r0, r0
