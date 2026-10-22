
firmware-analysis/US-1720.7/rootfs/root/usr/lib/libsystem-info-external-plugin.so:	file format elf32-littlearm

Disassembly of section .text:

000080c4 <system_info_get_sw_version_model>:
    80c4: 38c7         	subs	r0, #0xc7
    80c6: 460a         	mov	r2, r1
    80c8: bf18         	it	ne
    80ca: 2001         	movne	r0, #0x1
    80cc: 2900         	cmp	r1, #0x0
    80ce: bf08         	it	eq
    80d0: 2001         	moveq	r0, #0x1
    80d2: b928         	cbnz	r0, 0x80e0 <system_info_get_sw_version_model+0x1c> @ imm = #0xa
    80d4: 4904         	ldr	r1, [pc, #0x10]         @ 0x80e8 <system_info_get_sw_version_model+0x24>
    80d6: 4805         	ldr	r0, [pc, #0x14]         @ 0x80ec <system_info_get_sw_version_model+0x28>
    80d8: 4479         	add	r1, pc ; STR 'version:model'
    80da: 4478         	add	r0, pc ; STR '/etc/prd_info.ini'
    80dc: f7fc b8e6    	b.w	0x42ac <ioctl@plt+0xc>  @ imm = #-0x3e34
    80e0: f06f 0015    	mvn	r0, #0x15
    80e4: 4770         	bx	lr
    80e6: bf00         	nop
    80e8: 41a4         	sbcs	r4, r4
    80ea: 0000         	movs	r0, r0
    80ec: 41b2         	sbcs	r2, r6
    80ee: 0000         	movs	r0, r0
