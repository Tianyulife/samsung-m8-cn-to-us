
firmware-analysis/CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

44f020fc <_ZN10FCNvramMap7t_WriteEjjPKhPi>:
44f020fc: e92d 47f0    	push.w	{r4, r5, r6, r7, r8, r9, r10, lr}
44f02100: 469a         	mov	r10, r3
44f02102: 4d56         	ldr	r5, [pc, #0x158]        @ 0x44f0225c <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x160>
44f02104: 4c56         	ldr	r4, [pc, #0x158]        @ 0x44f02260 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x164>
44f02106: b08c         	sub	sp, #0x30
44f02108: 447d         	add	r5, pc
44f0210a: 4856         	ldr	r0, [pc, #0x158]        @ 0x44f02264 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x168>
44f0210c: 4688         	mov	r8, r1
44f0210e: 4691         	mov	r9, r2
44f02110: 4478         	add	r0, pc
44f02112: 9f14         	ldr	r7, [sp, #0x50]
44f02114: 592c         	ldr	r4, [r5, r4]
44f02116: 4603         	mov	r3, r0
44f02118: 6824         	ldr	r4, [r4]
44f0211a: 940b         	str	r4, [sp, #0x2c]
44f0211c: f04f 0400    	mov.w	r4, #0x0
44f02120: 4c51         	ldr	r4, [pc, #0x144]        @ 0x44f02268 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x16c>
44f02122: 5905         	ldr	r5, [r0, r4]
44f02124: 682b         	ldr	r3, [r5]
44f02126: 2b00         	cmp	r3, #0x0
44f02128: db25         	blt	0x44f02176 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x7a> @ imm = #0x4a
44f0212a: 2f00         	cmp	r7, #0x0
44f0212c: d050         	beq	0x44f021d0 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0xd4> @ imm = #0xa0
44f0212e: f04f 33ff    	mov.w	r3, #0xffffffff
44f02132: 603b         	str	r3, [r7]
44f02134: 6828         	ldr	r0, [r5]
44f02136: 2800         	cmp	r0, #0x0
44f02138: db77         	blt	0x44f0222a <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x12e> @ imm = #0xee
44f0213a: aa07         	add	r2, sp, #0x1c
44f0213c: f644 1105    	movw	r1, #0x4905
44f02140: f2c4 0104    	movt	r1, #0x4004
44f02144: 2400         	movs	r4, #0x0
44f02146: f8cd 801c    	str.w	r8, [sp, #0x1c]
44f0214a: e9cd 9a08    	strd	r9, r10, [sp, #32]
44f0214e: 940a         	str	r4, [sp, #0x28]
44f02150: f7e2 ed38    	blx	0x44ee4bc4 <ioctl@plt>  @ imm = #-0x1d590
44f02154: 2800         	cmp	r0, #0x0
44f02156: db4f         	blt	0x44f021f8 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0xfc> @ imm = #0x9e
44f02158: 2f00         	cmp	r7, #0x0
44f0215a: d049         	beq	0x44f021f0 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0xf4> @ imm = #0x92
44f0215c: 6038         	str	r0, [r7]
44f0215e: 4620         	mov	r0, r4
44f02160: 4a42         	ldr	r2, [pc, #0x108]        @ 0x44f0226c <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x170>
44f02162: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x44f02260 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x164>
44f02164: 447a         	add	r2, pc
44f02166: 58d3         	ldr	r3, [r2, r3]
44f02168: 681a         	ldr	r2, [r3]
44f0216a: 9b0b         	ldr	r3, [sp, #0x2c]
44f0216c: 405a         	eors	r2, r3
44f0216e: d173         	bne	0x44f02258 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x15c> @ imm = #0xe6
44f02170: b00c         	add	sp, #0x30
44f02172: e8bd 87f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, pc}
44f02176: 4e3e         	ldr	r6, [pc, #0xf8]         @ 0x44f02270 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x174>
44f02178: 2400         	movs	r4, #0x0
44f0217a: 447e         	add	r6, pc
44f0217c: e007         	b	0x44f0218e <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x92> @ imm = #0xe
44f0217e: 3401         	adds	r4, #0x1
44f02180: f242 7010    	movw	r0, #0x2710
44f02184: f7e3 e8f0    	blx	0x44ee5368 <usleep@plt> @ imm = #-0x1ce20
44f02188: f5b4 7ffa    	cmp.w	r4, #0x1f4
44f0218c: d032         	beq	0x44f021f4 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0xf8> @ imm = #0x64
44f0218e: 2101         	movs	r1, #0x1
44f02190: 4630         	mov	r0, r6
44f02192: f7e2 ed6e    	blx	0x44ee4c70 <open64@plt> @ imm = #-0x1d524
44f02196: 2800         	cmp	r0, #0x0
44f02198: 6028         	str	r0, [r5]
44f0219a: dbf0         	blt	0x44f0217e <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x82> @ imm = #-0x20
44f0219c: 2c00         	cmp	r4, #0x0
44f0219e: d0c4         	beq	0x44f0212a <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x2e> @ imm = #-0x78
44f021a0: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x44f02274 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x178>
44f021a2: 22e4         	movs	r2, #0xe4
44f021a4: 4e34         	ldr	r6, [pc, #0xd0]         @ 0x44f02278 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x17c>
44f021a6: 2104         	movs	r1, #0x4
44f021a8: 447b         	add	r3, pc
44f021aa: 9202         	str	r2, [sp, #0x8]
44f021ac: 3345         	adds	r3, #0x45
44f021ae: 4a33         	ldr	r2, [pc, #0xcc]         @ 0x44f0227c <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x180>
44f021b0: 447e         	add	r6, pc
44f021b2: e9cd 3600    	strd	r3, r6, [sp]
44f021b6: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x44f02280 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x184>
44f021b8: 447a         	add	r2, pc
44f021ba: 9005         	str	r0, [sp, #0x14]
44f021bc: 2000         	movs	r0, #0x0
44f021be: 447b         	add	r3, pc
44f021c0: f8cd 8010    	str.w	r8, [sp, #0x10]
44f021c4: 9403         	str	r4, [sp, #0xc]
44f021c6: f7e2 ee04    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x1d3f8
44f021ca: 2f00         	cmp	r7, #0x0
44f021cc: d1af         	bne	0x44f0212e <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x32> @ imm = #-0xa2
44f021ce: e7b1         	b	0x44f02134 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x38> @ imm = #-0x9e
44f021d0: 6828         	ldr	r0, [r5]
44f021d2: aa07         	add	r2, sp, #0x1c
44f021d4: f644 1105    	movw	r1, #0x4905
44f021d8: f2c4 0104    	movt	r1, #0x4004
44f021dc: f8cd 801c    	str.w	r8, [sp, #0x1c]
44f021e0: f8cd 9020    	str.w	r9, [sp, #0x20]
44f021e4: e9cd a709    	strd	r10, r7, [sp, #36]
44f021e8: f7e2 ecec    	blx	0x44ee4bc4 <ioctl@plt>  @ imm = #-0x1d628
44f021ec: 2800         	cmp	r0, #0x0
44f021ee: db03         	blt	0x44f021f8 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0xfc> @ imm = #0x6
44f021f0: 4638         	mov	r0, r7
44f021f2: e7b5         	b	0x44f02160 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x64> @ imm = #-0x96
44f021f4: 6828         	ldr	r0, [r5]
44f021f6: e7d3         	b	0x44f021a0 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0xa4> @ imm = #-0x5a
44f021f8: 4b22         	ldr	r3, [pc, #0x88]         @ 0x44f02284 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x188>
44f021fa: 2106         	movs	r1, #0x6
44f021fc: 4a22         	ldr	r2, [pc, #0x88]         @ 0x44f02288 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x18c>
44f021fe: 24fe         	movs	r4, #0xfe
44f02200: 447b         	add	r3, pc
44f02202: 2002         	movs	r0, #0x2
44f02204: 447a         	add	r2, pc
44f02206: 3345         	adds	r3, #0x45
44f02208: e9cd 3200    	strd	r3, r2, [sp]
44f0220c: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x44f0228c <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x190>
44f0220e: 4a20         	ldr	r2, [pc, #0x80]         @ 0x44f02290 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x194>
44f02210: 447b         	add	r3, pc
44f02212: 9402         	str	r4, [sp, #0x8]
44f02214: 447a         	add	r2, pc
44f02216: f7e2 eddc    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x1d448
44f0221a: 6828         	ldr	r0, [r5]
44f0221c: f7e2 ec14    	blx	0x44ee4a48 <close@plt>  @ imm = #-0x1d7d8
44f02220: f04f 33ff    	mov.w	r3, #0xffffffff
44f02224: 4618         	mov	r0, r3
44f02226: 602b         	str	r3, [r5]
44f02228: e79a         	b	0x44f02160 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x64> @ imm = #-0xcc
44f0222a: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x44f02294 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x198>
44f0222c: 24ef         	movs	r4, #0xef
44f0222e: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x44f02298 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x19c>
44f02230: 2106         	movs	r1, #0x6
44f02232: 447b         	add	r3, pc
44f02234: 4819         	ldr	r0, [pc, #0x64]         @ 0x44f0229c <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x1a0>
44f02236: 447a         	add	r2, pc
44f02238: 3345         	adds	r3, #0x45
44f0223a: e9cd 3200    	strd	r3, r2, [sp]
44f0223e: 4478         	add	r0, pc
44f02240: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x44f022a0 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x1a4>
44f02242: 4a18         	ldr	r2, [pc, #0x60]         @ 0x44f022a4 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x1a8>
44f02244: 9003         	str	r0, [sp, #0xc]
44f02246: 447b         	add	r3, pc
44f02248: 2002         	movs	r0, #0x2
44f0224a: 447a         	add	r2, pc
44f0224c: 9402         	str	r4, [sp, #0x8]
44f0224e: f7e2 edc0    	blx	0x44ee4dd0 <__dlog_print@plt> @ imm = #-0x1d480
44f02252: f04f 30ff    	mov.w	r0, #0xffffffff
44f02256: e783         	b	0x44f02160 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x64> @ imm = #-0xfa
44f02258: f7e2 ee1c    	blx	0x44ee4e94 <__stack_chk_fail@plt> @ imm = #-0x1d3c8
44f0225c: d0ac         	beq	0x44f021b8 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0xbc> @ imm = #-0xa8
44f0225e: 0001         	movs	r1, r0
44f02260: 0704         	lsls	r4, r0, #0x1c
44f02262: 0000         	movs	r0, r0
44f02264: d0a4         	beq	0x44f021b0 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0xb4> @ imm = #-0xb8
44f02266: 0001         	movs	r1, r0
44f02268: 06d0         	lsls	r0, r2, #0x1b
44f0226a: 0000         	movs	r0, r0
44f0226c: d050         	beq	0x44f02310 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x214> @ imm = #0xa0
44f0226e: 0001         	movs	r1, r0
44f02270: 98de         	ldr	r0, [sp, #0x378]
44f02272: 0000         	movs	r0, r0
44f02274: 98f0         	ldr	r0, [sp, #0x3c0]
44f02276: 0000         	movs	r0, r0
44f02278: 99a8         	ldr	r1, [sp, #0x2a0]
44f0227a: 0000         	movs	r0, r0
44f0227c: 215c         	movs	r1, #0x5c
44f0227e: 0000         	movs	r0, r0
44f02280: 98a6         	ldr	r0, [sp, #0x298]
44f02282: 0000         	movs	r0, r0
44f02284: 9898         	ldr	r0, [sp, #0x260]
44f02286: 0000         	movs	r0, r0
44f02288: 9954         	ldr	r1, [sp, #0x150]
44f0228a: 0000         	movs	r0, r0
44f0228c: 9950         	ldr	r1, [sp, #0x140]
44f0228e: 0000         	movs	r0, r0
44f02290: 2100         	movs	r1, #0x0
44f02292: 0000         	movs	r0, r0
44f02294: 9866         	ldr	r0, [sp, #0x198]
44f02296: 0000         	movs	r0, r0
44f02298: 9922         	ldr	r1, [sp, #0x88]
44f0229a: 0000         	movs	r0, r0
44f0229c: 981a         	ldr	r0, [sp, #0x68]
44f0229e: 0000         	movs	r0, r0
44f022a0: 98a6         	ldr	r0, [sp, #0x298]
44f022a2: 0000         	movs	r0, r0
44f022a4: 20ca         	movs	r0, #0xca
44f022a6: 0000         	movs	r0, r0
44f022a8: b510         	push	{r4, lr}
44f022aa: 4604         	mov	r4, r0
44f022ac: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f022c0 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x1c4>
44f022ae: 3008         	adds	r0, #0x8
44f022b0: 447b         	add	r3, pc
44f022b2: 6921         	ldr	r1, [r4, #0x10]
44f022b4: 3308         	adds	r3, #0x8
44f022b6: 6023         	str	r3, [r4]
44f022b8: f7f5 fa1c    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xabc8
44f022bc: 4620         	mov	r0, r4
44f022be: bd10         	pop	{r4, pc}
44f022c0: cd60         	ldm	r5, {r5, r6}
44f022c2: 0001         	movs	r1, r0
44f022c4: b510         	push	{r4, lr}
44f022c6: 4604         	mov	r4, r0
44f022c8: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f022dc <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x1e0>
44f022ca: 3008         	adds	r0, #0x8
44f022cc: 447b         	add	r3, pc
44f022ce: 6921         	ldr	r1, [r4, #0x10]
44f022d0: 3308         	adds	r3, #0x8
44f022d2: 6023         	str	r3, [r4]
44f022d4: f7f5 fa0e    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xabe4
44f022d8: 4620         	mov	r0, r4
44f022da: bd10         	pop	{r4, pc}
44f022dc: cd44         	ldm	r5!, {r2, r6}
44f022de: 0001         	movs	r1, r0
44f022e0: b510         	push	{r4, lr}
44f022e2: 4604         	mov	r4, r0
44f022e4: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f022f8 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x1fc>
44f022e6: 3008         	adds	r0, #0x8
44f022e8: 447b         	add	r3, pc
44f022ea: 6921         	ldr	r1, [r4, #0x10]
44f022ec: 3308         	adds	r3, #0x8
44f022ee: 6023         	str	r3, [r4]
44f022f0: f7f5 fa00    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xac00
44f022f4: 4620         	mov	r0, r4
44f022f6: bd10         	pop	{r4, pc}
44f022f8: cd28         	ldm	r5, {r3, r5}
44f022fa: 0001         	movs	r1, r0
44f022fc: b510         	push	{r4, lr}
44f022fe: 4604         	mov	r4, r0
44f02300: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f02314 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x218>
44f02302: 3008         	adds	r0, #0x8
44f02304: 447b         	add	r3, pc
44f02306: 6921         	ldr	r1, [r4, #0x10]
44f02308: 3308         	adds	r3, #0x8
44f0230a: 6023         	str	r3, [r4]
44f0230c: f7f5 f9f2    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xac1c
44f02310: 4620         	mov	r0, r4
44f02312: bd10         	pop	{r4, pc}
44f02314: cd0c         	ldm	r5!, {r2, r3}
44f02316: 0001         	movs	r1, r0
44f02318: b510         	push	{r4, lr}
44f0231a: 4604         	mov	r4, r0
44f0231c: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f02330 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x234>
44f0231e: 3008         	adds	r0, #0x8
44f02320: 447b         	add	r3, pc
44f02322: 6921         	ldr	r1, [r4, #0x10]
44f02324: 3308         	adds	r3, #0x8
44f02326: 6023         	str	r3, [r4]
44f02328: f7f5 f9e4    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xac38
44f0232c: 4620         	mov	r0, r4
44f0232e: bd10         	pop	{r4, pc}
44f02330: ccf0         	ldm	r4, {r4, r5, r6, r7}
44f02332: 0001         	movs	r1, r0
44f02334: b510         	push	{r4, lr}
44f02336: 4604         	mov	r4, r0
44f02338: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f0234c <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x250>
44f0233a: 3008         	adds	r0, #0x8
44f0233c: 447b         	add	r3, pc
44f0233e: 6921         	ldr	r1, [r4, #0x10]
44f02340: 3308         	adds	r3, #0x8
44f02342: 6023         	str	r3, [r4]
44f02344: f7f5 f9d6    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xac54
44f02348: 4620         	mov	r0, r4
44f0234a: bd10         	pop	{r4, pc}
44f0234c: ccd4         	ldm	r4, {r2, r4, r6, r7}
44f0234e: 0001         	movs	r1, r0
44f02350: b510         	push	{r4, lr}
44f02352: 4604         	mov	r4, r0
44f02354: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f02368 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x26c>
44f02356: 3008         	adds	r0, #0x8
44f02358: 447b         	add	r3, pc
44f0235a: 6921         	ldr	r1, [r4, #0x10]
44f0235c: 3308         	adds	r3, #0x8
44f0235e: 6023         	str	r3, [r4]
44f02360: f7f5 f9c8    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xac70
44f02364: 4620         	mov	r0, r4
44f02366: bd10         	pop	{r4, pc}
44f02368: ccb8         	ldm	r4, {r3, r4, r5, r7}
44f0236a: 0001         	movs	r1, r0
44f0236c: b510         	push	{r4, lr}
44f0236e: 4604         	mov	r4, r0
44f02370: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f02384 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x288>
44f02372: 3008         	adds	r0, #0x8
44f02374: 447b         	add	r3, pc
44f02376: 6921         	ldr	r1, [r4, #0x10]
44f02378: 3308         	adds	r3, #0x8
44f0237a: 6023         	str	r3, [r4]
44f0237c: f7f5 f9ba    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xac8c
44f02380: 4620         	mov	r0, r4
44f02382: bd10         	pop	{r4, pc}
44f02384: cc9c         	ldm	r4, {r2, r3, r4, r7}
44f02386: 0001         	movs	r1, r0
44f02388: b510         	push	{r4, lr}
44f0238a: 4604         	mov	r4, r0
44f0238c: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f023a0 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x2a4>
44f0238e: 3008         	adds	r0, #0x8
44f02390: 447b         	add	r3, pc
44f02392: 6921         	ldr	r1, [r4, #0x10]
44f02394: 3308         	adds	r3, #0x8
44f02396: 6023         	str	r3, [r4]
44f02398: f7f5 f9ac    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xaca8
44f0239c: 4620         	mov	r0, r4
44f0239e: bd10         	pop	{r4, pc}
44f023a0: cc80         	ldm	r4!, {r7}
44f023a2: 0001         	movs	r1, r0
44f023a4: b510         	push	{r4, lr}
44f023a6: 4604         	mov	r4, r0
44f023a8: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f023bc <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x2c0>
44f023aa: 3008         	adds	r0, #0x8
44f023ac: 447b         	add	r3, pc
44f023ae: 6921         	ldr	r1, [r4, #0x10]
44f023b0: 3308         	adds	r3, #0x8
44f023b2: 6023         	str	r3, [r4]
44f023b4: f7f5 f99e    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xacc4
44f023b8: 4620         	mov	r0, r4
44f023ba: bd10         	pop	{r4, pc}
44f023bc: cc64         	ldm	r4!, {r2, r5, r6}
44f023be: 0001         	movs	r1, r0
44f023c0: b510         	push	{r4, lr}
44f023c2: 4604         	mov	r4, r0
44f023c4: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f023d8 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x2dc>
44f023c6: 3008         	adds	r0, #0x8
44f023c8: 447b         	add	r3, pc
44f023ca: 6921         	ldr	r1, [r4, #0x10]
44f023cc: 3308         	adds	r3, #0x8
44f023ce: 6023         	str	r3, [r4]
44f023d0: f7f5 f990    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xace0
44f023d4: 4620         	mov	r0, r4
44f023d6: bd10         	pop	{r4, pc}
44f023d8: cc48         	ldm	r4!, {r3, r6}
44f023da: 0001         	movs	r1, r0
44f023dc: b510         	push	{r4, lr}
44f023de: 4604         	mov	r4, r0
44f023e0: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f023f4 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x2f8>
44f023e2: 3008         	adds	r0, #0x8
44f023e4: 447b         	add	r3, pc
44f023e6: 6921         	ldr	r1, [r4, #0x10]
44f023e8: 3308         	adds	r3, #0x8
44f023ea: 6023         	str	r3, [r4]
44f023ec: f7f5 f982    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xacfc
44f023f0: 4620         	mov	r0, r4
44f023f2: bd10         	pop	{r4, pc}
44f023f4: cc2c         	ldm	r4!, {r2, r3, r5}
44f023f6: 0001         	movs	r1, r0
44f023f8: b510         	push	{r4, lr}
44f023fa: 4604         	mov	r4, r0
44f023fc: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f02410 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x314>
44f023fe: 3008         	adds	r0, #0x8
44f02400: 447b         	add	r3, pc
44f02402: 6921         	ldr	r1, [r4, #0x10]
44f02404: 3308         	adds	r3, #0x8
44f02406: 6023         	str	r3, [r4]
44f02408: f7f5 f974    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xad18
44f0240c: 4620         	mov	r0, r4
44f0240e: bd10         	pop	{r4, pc}
44f02410: cc10         	ldm	r4, {r4}
44f02412: 0001         	movs	r1, r0
44f02414: b510         	push	{r4, lr}
44f02416: 4604         	mov	r4, r0
44f02418: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f0242c <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x330>
44f0241a: 3008         	adds	r0, #0x8
44f0241c: 447b         	add	r3, pc
44f0241e: 6921         	ldr	r1, [r4, #0x10]
44f02420: 3308         	adds	r3, #0x8
44f02422: 6023         	str	r3, [r4]
44f02424: f7f5 f966    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xad34
44f02428: 4620         	mov	r0, r4
44f0242a: bd10         	pop	{r4, pc}
44f0242c: cbf4         	ldm	r3!, {r2, r4, r5, r6, r7}
44f0242e: 0001         	movs	r1, r0
44f02430: b510         	push	{r4, lr}
44f02432: 4604         	mov	r4, r0
44f02434: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f02448 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x34c>
44f02436: 3008         	adds	r0, #0x8
44f02438: 447b         	add	r3, pc
44f0243a: 6921         	ldr	r1, [r4, #0x10]
44f0243c: 3308         	adds	r3, #0x8
44f0243e: 6023         	str	r3, [r4]
44f02440: f7f5 f958    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xad50
44f02444: 4620         	mov	r0, r4
44f02446: bd10         	pop	{r4, pc}
44f02448: cbd8         	ldm	r3, {r3, r4, r6, r7}
44f0244a: 0001         	movs	r1, r0
44f0244c: b510         	push	{r4, lr}
44f0244e: 4604         	mov	r4, r0
44f02450: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f02464 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x368>
44f02452: 3008         	adds	r0, #0x8
44f02454: 447b         	add	r3, pc
44f02456: 6921         	ldr	r1, [r4, #0x10]
44f02458: 3308         	adds	r3, #0x8
44f0245a: 6023         	str	r3, [r4]
44f0245c: f7f5 f94a    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xad6c
44f02460: 4620         	mov	r0, r4
44f02462: bd10         	pop	{r4, pc}
44f02464: cbbc         	ldm	r3, {r2, r3, r4, r5, r7}
44f02466: 0001         	movs	r1, r0
44f02468: b510         	push	{r4, lr}
44f0246a: 4604         	mov	r4, r0
44f0246c: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f02480 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x384>
44f0246e: 3008         	adds	r0, #0x8
44f02470: 447b         	add	r3, pc
44f02472: 6921         	ldr	r1, [r4, #0x10]
44f02474: 3308         	adds	r3, #0x8
44f02476: 6023         	str	r3, [r4]
44f02478: f7f5 f93c    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xad88
44f0247c: 4620         	mov	r0, r4
44f0247e: bd10         	pop	{r4, pc}
44f02480: cba0         	ldm	r3!, {r5, r7}
44f02482: 0001         	movs	r1, r0
44f02484: b510         	push	{r4, lr}
44f02486: 4604         	mov	r4, r0
44f02488: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f0249c <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x3a0>
44f0248a: 3008         	adds	r0, #0x8
44f0248c: 447b         	add	r3, pc
44f0248e: 6921         	ldr	r1, [r4, #0x10]
44f02490: 3308         	adds	r3, #0x8
44f02492: 6023         	str	r3, [r4]
44f02494: f7f5 f92e    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xada4
44f02498: 4620         	mov	r0, r4
44f0249a: bd10         	pop	{r4, pc}
44f0249c: cb84         	ldm	r3!, {r2, r7}
44f0249e: 0001         	movs	r1, r0
44f024a0: b510         	push	{r4, lr}
44f024a2: 4604         	mov	r4, r0
44f024a4: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f024b8 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x3bc>
44f024a6: 3008         	adds	r0, #0x8
44f024a8: 447b         	add	r3, pc
44f024aa: 6921         	ldr	r1, [r4, #0x10]
44f024ac: 3308         	adds	r3, #0x8
44f024ae: 6023         	str	r3, [r4]
44f024b0: f7f5 f920    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xadc0
44f024b4: 4620         	mov	r0, r4
44f024b6: bd10         	pop	{r4, pc}
44f024b8: cb68         	ldm	r3, {r3, r5, r6}
44f024ba: 0001         	movs	r1, r0
44f024bc: b510         	push	{r4, lr}
44f024be: 4604         	mov	r4, r0
44f024c0: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f024d4 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x3d8>
44f024c2: 3008         	adds	r0, #0x8
44f024c4: 447b         	add	r3, pc
44f024c6: 6921         	ldr	r1, [r4, #0x10]
44f024c8: 3308         	adds	r3, #0x8
44f024ca: 6023         	str	r3, [r4]
44f024cc: f7f5 f912    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xaddc
44f024d0: 4620         	mov	r0, r4
44f024d2: bd10         	pop	{r4, pc}
44f024d4: cb4c         	ldm	r3, {r2, r3, r6}
44f024d6: 0001         	movs	r1, r0
44f024d8: b510         	push	{r4, lr}
44f024da: 4604         	mov	r4, r0
44f024dc: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f024f0 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x3f4>
44f024de: 3008         	adds	r0, #0x8
44f024e0: 447b         	add	r3, pc
44f024e2: 6921         	ldr	r1, [r4, #0x10]
44f024e4: 3308         	adds	r3, #0x8
44f024e6: 6023         	str	r3, [r4]
44f024e8: f7f5 f904    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xadf8
44f024ec: 4620         	mov	r0, r4
44f024ee: bd10         	pop	{r4, pc}
44f024f0: cb30         	ldm	r3!, {r4, r5}
44f024f2: 0001         	movs	r1, r0
44f024f4: b510         	push	{r4, lr}
44f024f6: 4604         	mov	r4, r0
44f024f8: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f0250c <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x410>
44f024fa: 3008         	adds	r0, #0x8
44f024fc: 447b         	add	r3, pc
44f024fe: 6921         	ldr	r1, [r4, #0x10]
44f02500: 3308         	adds	r3, #0x8
44f02502: 6023         	str	r3, [r4]
44f02504: f7f5 f8f6    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xae14
44f02508: 4620         	mov	r0, r4
44f0250a: bd10         	pop	{r4, pc}
44f0250c: cb14         	ldm	r3!, {r2, r4}
44f0250e: 0001         	movs	r1, r0
44f02510: b510         	push	{r4, lr}
44f02512: 4604         	mov	r4, r0
44f02514: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f02528 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x42c>
44f02516: 3008         	adds	r0, #0x8
44f02518: 447b         	add	r3, pc
44f0251a: 6921         	ldr	r1, [r4, #0x10]
44f0251c: 3308         	adds	r3, #0x8
44f0251e: 6023         	str	r3, [r4]
44f02520: f7f5 f8e8    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xae30
44f02524: 4620         	mov	r0, r4
44f02526: bd10         	pop	{r4, pc}
44f02528: caf8         	ldm	r2!, {r3, r4, r5, r6, r7}
44f0252a: 0001         	movs	r1, r0
44f0252c: b510         	push	{r4, lr}
44f0252e: 4604         	mov	r4, r0
44f02530: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f02544 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x448>
44f02532: 3008         	adds	r0, #0x8
44f02534: 447b         	add	r3, pc
44f02536: 6921         	ldr	r1, [r4, #0x10]
44f02538: 3308         	adds	r3, #0x8
44f0253a: 6023         	str	r3, [r4]
44f0253c: f7f5 f8da    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xae4c
44f02540: 4620         	mov	r0, r4
44f02542: bd10         	pop	{r4, pc}
44f02544: cadc         	ldm	r2, {r2, r3, r4, r6, r7}
44f02546: 0001         	movs	r1, r0
44f02548: b510         	push	{r4, lr}
44f0254a: 4604         	mov	r4, r0
44f0254c: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f02560 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x464>
44f0254e: 3008         	adds	r0, #0x8
44f02550: 447b         	add	r3, pc
44f02552: 6921         	ldr	r1, [r4, #0x10]
44f02554: 3308         	adds	r3, #0x8
44f02556: 6023         	str	r3, [r4]
44f02558: f7f5 f8cc    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xae68
44f0255c: 4620         	mov	r0, r4
44f0255e: bd10         	pop	{r4, pc}
44f02560: cac0         	ldm	r2!, {r6, r7}
44f02562: 0001         	movs	r1, r0
44f02564: b510         	push	{r4, lr}
44f02566: 4604         	mov	r4, r0
44f02568: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f0257c <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x480>
44f0256a: 3008         	adds	r0, #0x8
44f0256c: 447b         	add	r3, pc
44f0256e: 6921         	ldr	r1, [r4, #0x10]
44f02570: 3308         	adds	r3, #0x8
44f02572: 6023         	str	r3, [r4]
44f02574: f7f5 f8be    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xae84
44f02578: 4620         	mov	r0, r4
44f0257a: bd10         	pop	{r4, pc}
44f0257c: caa4         	ldm	r2, {r2, r5, r7}
44f0257e: 0001         	movs	r1, r0
44f02580: b510         	push	{r4, lr}
44f02582: 4604         	mov	r4, r0
44f02584: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f02598 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x49c>
44f02586: 3008         	adds	r0, #0x8
44f02588: 447b         	add	r3, pc
44f0258a: 6921         	ldr	r1, [r4, #0x10]
44f0258c: 3308         	adds	r3, #0x8
44f0258e: 6023         	str	r3, [r4]
44f02590: f7f5 f8b0    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xaea0
44f02594: 4620         	mov	r0, r4
44f02596: bd10         	pop	{r4, pc}
44f02598: ca88         	ldm	r2!, {r3, r7}
44f0259a: 0001         	movs	r1, r0
44f0259c: b510         	push	{r4, lr}
44f0259e: 4604         	mov	r4, r0
44f025a0: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f025b4 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x4b8>
44f025a2: 3008         	adds	r0, #0x8
44f025a4: 447b         	add	r3, pc
44f025a6: 6921         	ldr	r1, [r4, #0x10]
44f025a8: 3308         	adds	r3, #0x8
44f025aa: 6023         	str	r3, [r4]
44f025ac: f7f5 f8a2    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xaebc
44f025b0: 4620         	mov	r0, r4
44f025b2: bd10         	pop	{r4, pc}
44f025b4: ca6c         	ldm	r2, {r2, r3, r5, r6}
44f025b6: 0001         	movs	r1, r0
44f025b8: b510         	push	{r4, lr}
44f025ba: 4604         	mov	r4, r0
44f025bc: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f025d0 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x4d4>
44f025be: 3008         	adds	r0, #0x8
44f025c0: 447b         	add	r3, pc
44f025c2: 6921         	ldr	r1, [r4, #0x10]
44f025c4: 3308         	adds	r3, #0x8
44f025c6: 6023         	str	r3, [r4]
44f025c8: f7f5 f894    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xaed8
44f025cc: 4620         	mov	r0, r4
44f025ce: bd10         	pop	{r4, pc}
44f025d0: ca50         	ldm	r2!, {r4, r6}
44f025d2: 0001         	movs	r1, r0
44f025d4: b510         	push	{r4, lr}
44f025d6: 4604         	mov	r4, r0
44f025d8: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f025ec <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x4f0>
44f025da: 3008         	adds	r0, #0x8
44f025dc: 447b         	add	r3, pc
44f025de: 6921         	ldr	r1, [r4, #0x10]
44f025e0: 3308         	adds	r3, #0x8
44f025e2: 6023         	str	r3, [r4]
44f025e4: f7f5 f886    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xaef4
44f025e8: 4620         	mov	r0, r4
44f025ea: bd10         	pop	{r4, pc}
44f025ec: ca34         	ldm	r2, {r2, r4, r5}
44f025ee: 0001         	movs	r1, r0
44f025f0: b510         	push	{r4, lr}
44f025f2: 4604         	mov	r4, r0
44f025f4: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f02608 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x50c>
44f025f6: 3008         	adds	r0, #0x8
44f025f8: 447b         	add	r3, pc
44f025fa: 6921         	ldr	r1, [r4, #0x10]
44f025fc: 3308         	adds	r3, #0x8
44f025fe: 6023         	str	r3, [r4]
44f02600: f7f5 f878    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xaf10
44f02604: 4620         	mov	r0, r4
44f02606: bd10         	pop	{r4, pc}
44f02608: ca18         	ldm	r2!, {r3, r4}
44f0260a: 0001         	movs	r1, r0
44f0260c: b510         	push	{r4, lr}
44f0260e: 4604         	mov	r4, r0
44f02610: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f02624 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x528>
44f02612: 3008         	adds	r0, #0x8
44f02614: 447b         	add	r3, pc
44f02616: 6921         	ldr	r1, [r4, #0x10]
44f02618: 3308         	adds	r3, #0x8
44f0261a: 6023         	str	r3, [r4]
44f0261c: f7f5 f86a    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xaf2c
44f02620: 4620         	mov	r0, r4
44f02622: bd10         	pop	{r4, pc}
44f02624: c9fc         	ldm	r1!, {r2, r3, r4, r5, r6, r7}
44f02626: 0001         	movs	r1, r0
44f02628: b510         	push	{r4, lr}
44f0262a: 4604         	mov	r4, r0
44f0262c: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f02640 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x544>
44f0262e: 3008         	adds	r0, #0x8
44f02630: 447b         	add	r3, pc
44f02632: 6921         	ldr	r1, [r4, #0x10]
44f02634: 3308         	adds	r3, #0x8
44f02636: 6023         	str	r3, [r4]
44f02638: f7f5 f85c    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xaf48
44f0263c: 4620         	mov	r0, r4
44f0263e: bd10         	pop	{r4, pc}
44f02640: c9e0         	ldm	r1!, {r5, r6, r7}
44f02642: 0001         	movs	r1, r0
44f02644: b510         	push	{r4, lr}
44f02646: 4604         	mov	r4, r0
44f02648: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f0265c <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x560>
44f0264a: 3008         	adds	r0, #0x8
44f0264c: 447b         	add	r3, pc
44f0264e: 6921         	ldr	r1, [r4, #0x10]
44f02650: 3308         	adds	r3, #0x8
44f02652: 6023         	str	r3, [r4]
44f02654: f7f5 f84e    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xaf64
44f02658: 4620         	mov	r0, r4
44f0265a: bd10         	pop	{r4, pc}
44f0265c: c9c4         	ldm	r1!, {r2, r6, r7}
44f0265e: 0001         	movs	r1, r0
44f02660: b510         	push	{r4, lr}
44f02662: 4604         	mov	r4, r0
44f02664: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f02678 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x57c>
44f02666: 3008         	adds	r0, #0x8
44f02668: 447b         	add	r3, pc
44f0266a: 6921         	ldr	r1, [r4, #0x10]
44f0266c: 3308         	adds	r3, #0x8
44f0266e: 6023         	str	r3, [r4]
44f02670: f7f5 f840    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xaf80
44f02674: 4620         	mov	r0, r4
44f02676: bd10         	pop	{r4, pc}
44f02678: c9a8         	ldm	r1!, {r3, r5, r7}
44f0267a: 0001         	movs	r1, r0
44f0267c: b510         	push	{r4, lr}
44f0267e: 4604         	mov	r4, r0
44f02680: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f02694 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x598>
44f02682: 3008         	adds	r0, #0x8
44f02684: 447b         	add	r3, pc
44f02686: 6921         	ldr	r1, [r4, #0x10]
44f02688: 3308         	adds	r3, #0x8
44f0268a: 6023         	str	r3, [r4]
44f0268c: f7f5 f832    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xaf9c
44f02690: 4620         	mov	r0, r4
44f02692: bd10         	pop	{r4, pc}
44f02694: c98c         	ldm	r1!, {r2, r3, r7}
44f02696: 0001         	movs	r1, r0
44f02698: b510         	push	{r4, lr}
44f0269a: 4604         	mov	r4, r0
44f0269c: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f026b0 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x5b4>
44f0269e: 3008         	adds	r0, #0x8
44f026a0: 447b         	add	r3, pc
44f026a2: 6921         	ldr	r1, [r4, #0x10]
44f026a4: 3308         	adds	r3, #0x8
44f026a6: 6023         	str	r3, [r4]
44f026a8: f7f5 f824    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xafb8
44f026ac: 4620         	mov	r0, r4
44f026ae: bd10         	pop	{r4, pc}
44f026b0: c970         	ldm	r1!, {r4, r5, r6}
44f026b2: 0001         	movs	r1, r0
44f026b4: b510         	push	{r4, lr}
44f026b6: 4604         	mov	r4, r0
44f026b8: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f026cc <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x5d0>
44f026ba: 3008         	adds	r0, #0x8
44f026bc: 447b         	add	r3, pc
44f026be: 6921         	ldr	r1, [r4, #0x10]
44f026c0: 3308         	adds	r3, #0x8
44f026c2: 6023         	str	r3, [r4]
44f026c4: f7f5 f816    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xafd4
44f026c8: 4620         	mov	r0, r4
44f026ca: bd10         	pop	{r4, pc}
44f026cc: c954         	ldm	r1!, {r2, r4, r6}
44f026ce: 0001         	movs	r1, r0
44f026d0: b510         	push	{r4, lr}
44f026d2: 4604         	mov	r4, r0
44f026d4: 4b04         	ldr	r3, [pc, #0x10]         @ 0x44f026e8 <_ZN10FCNvramMap7t_WriteEjjPKhPi+0x5ec>
44f026d6: 3008         	adds	r0, #0x8
44f026d8: 447b         	add	r3, pc
44f026da: 6921         	ldr	r1, [r4, #0x10]
44f026dc: 3308         	adds	r3, #0x8
44f026de: 6023         	str	r3, [r4]
44f026e0: f7f5 f808    	bl	0x44ef76f4 <_ZN15FCStoreTypeBaseC2Ei+0x24> @ imm = #-0xaff0
44f026e4: 4620         	mov	r0, r4
44f026e6: bd10         	pop	{r4, pc}
44f026e8: c938         	ldm	r1!, {r3, r4, r5}
44f026ea: 0001         	movs	r1, r0
