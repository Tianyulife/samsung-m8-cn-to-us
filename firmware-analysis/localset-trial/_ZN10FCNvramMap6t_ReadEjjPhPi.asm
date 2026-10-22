
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44f01f38 <_ZN10FCNvramMap6t_ReadEjjPhPi>:
44f01f38: e92d 47f0    	push.w	{r4, r5, r6, r7, r8, r9, r10, lr}
44f01f3c: 469a         	mov	r10, r3
44f01f3e: 4d5c         	ldr	r5, [pc, #0x170]        @ 0x44f020b0 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x178>
44f01f40: 4c5c         	ldr	r4, [pc, #0x170]        @ 0x44f020b4 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x17c>
44f01f42: b08e         	sub	sp, #0x38
44f01f44: 447d         	add	r5, pc
44f01f46: 485c         	ldr	r0, [pc, #0x170]        @ 0x44f020b8 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x180>
44f01f48: 4688         	mov	r8, r1
44f01f4a: 4691         	mov	r9, r2
44f01f4c: 4478         	add	r0, pc
44f01f4e: 9f16         	ldr	r7, [sp, #0x58]
44f01f50: 592c         	ldr	r4, [r5, r4]
44f01f52: 4603         	mov	r3, r0
44f01f54: 6824         	ldr	r4, [r4]
44f01f56: 940d         	str	r4, [sp, #0x34]
44f01f58: f04f 0400    	mov.w	r4, #0x0
44f01f5c: 4c57         	ldr	r4, [pc, #0x15c]        @ 0x44f020bc <_ZN10FCNvramMap6t_ReadEjjPhPi+0x184>
44f01f5e: 5905         	ldr	r5, [r0, r4]
44f01f60: 682b         	ldr	r3, [r5]
44f01f62: 2b00         	cmp	r3, #0x0
44f01f64: db27         	blt	0x44f01fb6 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x7e> @ imm = #0x4e
44f01f66: 2f00         	cmp	r7, #0x0
44f01f68: d053         	beq	0x44f02012 <_ZN10FCNvramMap6t_ReadEjjPhPi+0xda> @ imm = #0xa6
44f01f6a: f04f 33ff    	mov.w	r3, #0xffffffff
44f01f6e: 603b         	str	r3, [r7]
44f01f70: 6828         	ldr	r0, [r5]
44f01f72: 2800         	cmp	r0, #0x0
44f01f74: f2c0 8082    	blt.w	0x44f0207c <_ZN10FCNvramMap6t_ReadEjjPhPi+0x144> @ imm = #0x104
44f01f78: aa09         	add	r2, sp, #0x24
44f01f7a: f644 1106    	movw	r1, #0x4906
44f01f7e: f2c8 0104    	movt	r1, #0x8004
44f01f82: 2400         	movs	r4, #0x0
44f01f84: f8cd 8024    	str.w	r8, [sp, #0x24]
44f01f88: f8cd 9028    	str.w	r9, [sp, #0x28]
44f01f8c: e9cd 4a0b    	strd	r4, r10, [sp, #44]
44f01f90: f7e2 ee18    	blx	0x44ee4bc4 <ioctl@plt>  @ imm = #-0x1d3d0
44f01f94: 1e06         	subs	r6, r0, #0x0
44f01f96: db4e         	blt	0x44f02036 <_ZN10FCNvramMap6t_ReadEjjPhPi+0xfe> @ imm = #0x9c
44f01f98: 2f00         	cmp	r7, #0x0
44f01f9a: d048         	beq	0x44f0202e <_ZN10FCNvramMap6t_ReadEjjPhPi+0xf6> @ imm = #0x90
44f01f9c: 4620         	mov	r0, r4
44f01f9e: 603e         	str	r6, [r7]
44f01fa0: 4a47         	ldr	r2, [pc, #0x11c]        @ 0x44f020c0 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x188>
44f01fa2: 4b44         	ldr	r3, [pc, #0x110]        @ 0x44f020b4 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x17c>
44f01fa4: 447a         	add	r2, pc
44f01fa6: 58d3         	ldr	r3, [r2, r3]
44f01fa8: 681a         	ldr	r2, [r3]
44f01faa: 9b0d         	ldr	r3, [sp, #0x34]
44f01fac: 405a         	eors	r2, r3
44f01fae: d17d         	bne	0x44f020ac <_ZN10FCNvramMap6t_ReadEjjPhPi+0x174> @ imm = #0xfa
44f01fb0: b00e         	add	sp, #0x38
44f01fb2: e8bd 87f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, pc}
44f01fb6: 4e43         	ldr	r6, [pc, #0x10c]        @ 0x44f020c4 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x18c>
44f01fb8: 2400         	movs	r4, #0x0
44f01fba: 447e         	add	r6, pc
44f01fbc: e007         	b	0x44f01fce <_ZN10FCNvramMap6t_ReadEjjPhPi+0x96> @ imm = #0xe
44f01fbe: 3401         	adds	r4, #0x1
44f01fc0: f242 7010    	movw	r0, #0x2710
44f01fc4: f7e3 e9d0    	blx	0x44ee5368 <usleep@plt> @ imm = #-0x1cc60
44f01fc8: f5b4 7ffa    	cmp.w	r4, #0x1f4
44f01fcc: d031         	beq	0x44f02032 <_ZN10FCNvramMap6t_ReadEjjPhPi+0xfa> @ imm = #0x62
44f01fce: 2100         	movs	r1, #0x0
44f01fd0: 4630         	mov	r0, r6
44f01fd2: f7e2 ee4e    	blx	0x44ee4c70 <open64@plt> @ imm = #-0x1d364
44f01fd6: 2800         	cmp	r0, #0x0
44f01fd8: 6028         	str	r0, [r5]
44f01fda: dbf0         	blt	0x44f01fbe <_ZN10FCNvramMap6t_ReadEjjPhPi+0x86> @ imm = #-0x20
44f01fdc: 2c00         	cmp	r4, #0x0
44f01fde: d0c2         	beq	0x44f01f66 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x2e> @ imm = #-0x7c
44f01fe0: 4b39         	ldr	r3, [pc, #0xe4]         @ 0x44f020c8 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x190>
44f01fe2: f44f 7293    	mov.w	r2, #0x126
44f01fe6: 4e39         	ldr	r6, [pc, #0xe4]         @ 0x44f020cc <_ZN10FCNvramMap6t_ReadEjjPhPi+0x194>
44f01fe8: 2104         	movs	r1, #0x4
44f01fea: 447b         	add	r3, pc
44f01fec: 9202         	str	r2, [sp, #0x8]
44f01fee: 3345         	adds	r3, #0x45
44f01ff0: 4a37         	ldr	r2, [pc, #0xdc]         @ 0x44f020d0 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x198>
44f01ff2: 447e         	add	r6, pc
44f01ff4: e9cd 3600    	strd	r3, r6, [sp]
44f01ff8: 4b36         	ldr	r3, [pc, #0xd8]         @ 0x44f020d4 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x19c>
44f01ffa: 447a         	add	r2, pc
44f01ffc: 9005         	str	r0, [sp, #0x14]
44f01ffe: 2000         	movs	r0, #0x0
44f02000: 447b         	add	r3, pc
44f02002: f8cd 8010    	str.w	r8, [sp, #0x10]
44f02006: 9403         	str	r4, [sp, #0xc]
44f02008: f7e2 eee2    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x1d23c
44f0200c: 2f00         	cmp	r7, #0x0
44f0200e: d1ac         	bne	0x44f01f6a <_ZN10FCNvramMap6t_ReadEjjPhPi+0x32> @ imm = #-0xa8
44f02010: e7ae         	b	0x44f01f70 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x38> @ imm = #-0xa4
44f02012: 6828         	ldr	r0, [r5]
44f02014: aa09         	add	r2, sp, #0x24
44f02016: f644 1106    	movw	r1, #0x4906
44f0201a: f2c8 0104    	movt	r1, #0x8004
44f0201e: e9cd 8909    	strd	r8, r9, [sp, #36]
44f02022: e9cd 7a0b    	strd	r7, r10, [sp, #44]
44f02026: f7e2 edce    	blx	0x44ee4bc4 <ioctl@plt>  @ imm = #-0x1d464
44f0202a: 1e06         	subs	r6, r0, #0x0
44f0202c: db03         	blt	0x44f02036 <_ZN10FCNvramMap6t_ReadEjjPhPi+0xfe> @ imm = #0x6
44f0202e: 4638         	mov	r0, r7
44f02030: e7b6         	b	0x44f01fa0 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x68> @ imm = #-0x94
44f02032: 6828         	ldr	r0, [r5]
44f02034: e7d4         	b	0x44f01fe0 <_ZN10FCNvramMap6t_ReadEjjPhPi+0xa8> @ imm = #-0x58
44f02036: f7e3 ea92    	blx	0x44ee555c <__errno_location@plt> @ imm = #-0x1cadc
44f0203a: f8cd 9018    	str.w	r9, [sp, #0x18]
44f0203e: f8cd 8014    	str.w	r8, [sp, #0x14]
44f02042: 2106         	movs	r1, #0x6
44f02044: 4b24         	ldr	r3, [pc, #0x90]         @ 0x44f020d8 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x1a0>
44f02046: f44f 74a0    	mov.w	r4, #0x140
44f0204a: 6802         	ldr	r2, [r0]
44f0204c: 2002         	movs	r0, #0x2
44f0204e: 9204         	str	r2, [sp, #0x10]
44f02050: 447b         	add	r3, pc
44f02052: 4a22         	ldr	r2, [pc, #0x88]         @ 0x44f020dc <_ZN10FCNvramMap6t_ReadEjjPhPi+0x1a4>
44f02054: 3345         	adds	r3, #0x45
44f02056: 9603         	str	r6, [sp, #0xc]
44f02058: 447a         	add	r2, pc
44f0205a: e9cd 3200    	strd	r3, r2, [sp]
44f0205e: 4b20         	ldr	r3, [pc, #0x80]         @ 0x44f020e0 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x1a8>
44f02060: 4a20         	ldr	r2, [pc, #0x80]         @ 0x44f020e4 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x1ac>
44f02062: 447b         	add	r3, pc
44f02064: 9402         	str	r4, [sp, #0x8]
44f02066: 447a         	add	r2, pc
44f02068: f7e2 eeb2    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x1d29c
44f0206c: 6828         	ldr	r0, [r5]
44f0206e: f7e2 ecec    	blx	0x44ee4a48 <close@plt>  @ imm = #-0x1d628
44f02072: f04f 33ff    	mov.w	r3, #0xffffffff
44f02076: 4618         	mov	r0, r3
44f02078: 602b         	str	r3, [r5]
44f0207a: e791         	b	0x44f01fa0 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x68> @ imm = #-0xde
44f0207c: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x44f020e8 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x1b0>
44f0207e: 2106         	movs	r1, #0x6
44f02080: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x44f020ec <_ZN10FCNvramMap6t_ReadEjjPhPi+0x1b4>
44f02082: f240 1431    	movw	r4, #0x131
44f02086: 447b         	add	r3, pc
44f02088: 4819         	ldr	r0, [pc, #0x64]         @ 0x44f020f0 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x1b8>
44f0208a: 447a         	add	r2, pc
44f0208c: 3345         	adds	r3, #0x45
44f0208e: e9cd 3200    	strd	r3, r2, [sp]
44f02092: 4478         	add	r0, pc
44f02094: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x44f020f4 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x1bc>
44f02096: 4a18         	ldr	r2, [pc, #0x60]         @ 0x44f020f8 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x1c0>
44f02098: 9003         	str	r0, [sp, #0xc]
44f0209a: 447b         	add	r3, pc
44f0209c: 2002         	movs	r0, #0x2
44f0209e: 447a         	add	r2, pc
44f020a0: 9402         	str	r4, [sp, #0x8]
44f020a2: f7e2 ee96    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x1d2d4
44f020a6: f04f 30ff    	mov.w	r0, #0xffffffff
44f020aa: e779         	b	0x44f01fa0 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x68> @ imm = #-0x10e
44f020ac: f7e2 eef2    	blx	0x44ee4e94 <__stack_chk_fail@plt> @ imm = #-0x1d21c
44f020b0: d270         	bhs	0x44f02194 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x98> @ imm = #0xe0
44f020b2: 0001         	movs	r1, r0
44f020b4: 0704         	lsls	r4, r0, #0x1c
44f020b6: 0000         	movs	r0, r0
44f020b8: d268         	bhs	0x44f0218c <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x90> @ imm = #0xd0
44f020ba: 0001         	movs	r1, r0
44f020bc: 0730         	lsls	r0, r6, #0x1c
44f020be: 0000         	movs	r0, r0
44f020c0: d210         	bhs	0x44f020e4 <_ZN10FCNvramMap6t_ReadEjjPhPi+0x1ac> @ imm = #0x20
44f020c2: 0001         	movs	r1, r0
44f020c4: 9a9e         	ldr	r2, [sp, #0x278]
44f020c6: 0000         	movs	r0, r0
44f020c8: 9aae         	ldr	r2, [sp, #0x2b8]
44f020ca: 0000         	movs	r0, r0
44f020cc: 9a9e         	ldr	r2, [sp, #0x278]
44f020ce: 0000         	movs	r0, r0
44f020d0: 231a         	movs	r3, #0x1a
44f020d2: 0000         	movs	r0, r0
44f020d4: 9a64         	ldr	r2, [sp, #0x190]
44f020d6: 0000         	movs	r0, r0
44f020d8: 9a48         	ldr	r2, [sp, #0x120]
44f020da: 0000         	movs	r0, r0
44f020dc: 9a38         	ldr	r2, [sp, #0xe0]
44f020de: 0000         	movs	r0, r0
44f020e0: 9aaa         	ldr	r2, [sp, #0x2a8]
44f020e2: 0000         	movs	r0, r0
44f020e4: 22ae         	movs	r2, #0xae
44f020e6: 0000         	movs	r0, r0
44f020e8: 9a12         	ldr	r2, [sp, #0x48]
44f020ea: 0000         	movs	r0, r0
44f020ec: 9a06         	ldr	r2, [sp, #0x18]
44f020ee: 0000         	movs	r0, r0
44f020f0: 99c6         	ldr	r1, [sp, #0x318]
44f020f2: 0000         	movs	r0, r0
44f020f4: 9a52         	ldr	r2, [sp, #0x148]
44f020f6: 0000         	movs	r0, r0
44f020f8: 2276         	movs	r2, #0x76
44f020fa: 0000         	movs	r0, r0
