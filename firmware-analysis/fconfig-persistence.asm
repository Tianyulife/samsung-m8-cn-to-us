
firmware-analysis/CN-1651.1/rootfs/root/usr/bin/fconfigd:	file format elf32-littlearm

Disassembly of section .text:

00007770 <set_value_cache_and_db>:
    7770: b5f0         	push	{r4, r5, r6, r7, lr}
    7772: 4605         	mov	r5, r0
    7774: 4c28         	ldr	r4, [pc, #0xa0]         @ 0x7818 <set_value_cache_and_db+0xa8>
    7776: b085         	sub	sp, #0x14
    7778: 460e         	mov	r6, r1
    777a: 447c         	add	r4, pc
    777c: 4617         	mov	r7, r2
    777e: 3410         	adds	r4, #0x10
    7780: 4620         	mov	r0, r4
    7782: f7fa edae    	blx	0x22e0 <g_mutex_lock@plt> @ imm = #-0x54a4
    7786: 4631         	mov	r1, r6
    7788: 4628         	mov	r0, r5
    778a: f7fe f9db    	bl	0x5b44 <fcdb_key_update> @ imm = #-0x1c4a
    778e: 2800         	cmp	r0, #0x0
    7790: db0c         	blt	0x77ac <set_value_cache_and_db+0x3c> @ imm = #0x18
    7792: 463a         	mov	r2, r7
    7794: 4631         	mov	r1, r6
    7796: 4628         	mov	r0, r5
    7798: f7fd ff1e    	bl	0x55d8 <cache_update_data> @ imm = #-0x21c4
    779c: 2800         	cmp	r0, #0x0
    779e: db22         	blt	0x77e6 <set_value_cache_and_db+0x76> @ imm = #0x44
    77a0: 4620         	mov	r0, r4
    77a2: f7fa edf8    	blx	0x2394 <g_mutex_unlock@plt> @ imm = #-0x5410
    77a6: 2000         	movs	r0, #0x0
    77a8: b005         	add	sp, #0x14
    77aa: bdf0         	pop	{r4, r5, r6, r7, pc}
    77ac: f7fa ee8e    	blx	0x24cc <__errno_location@plt> @ imm = #-0x52e4
    77b0: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x781c <set_value_cache_and_db+0xac>
    77b2: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x7820 <set_value_cache_and_db+0xb0>
    77b4: 2106         	movs	r1, #0x6
    77b6: 447a         	add	r2, pc
    77b8: 6800         	ldr	r0, [r0]
    77ba: 447b         	add	r3, pc
    77bc: f202 421c    	addw	r2, r2, #0x41c
    77c0: 333c         	adds	r3, #0x3c
    77c2: 9201         	str	r2, [sp, #0x4]
    77c4: 9300         	str	r3, [sp]
    77c6: 257f         	movs	r5, #0x7f
    77c8: 4b16         	ldr	r3, [pc, #0x58]         @ 0x7824 <set_value_cache_and_db+0xb4>
    77ca: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x7828 <set_value_cache_and_db+0xb8>
    77cc: 447b         	add	r3, pc
    77ce: 9003         	str	r0, [sp, #0xc]
    77d0: 447a         	add	r2, pc
    77d2: 2000         	movs	r0, #0x0
    77d4: 9502         	str	r5, [sp, #0x8]
    77d6: f7fa edc0    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x5480
    77da: 4620         	mov	r0, r4
    77dc: f7fa edda    	blx	0x2394 <g_mutex_unlock@plt> @ imm = #-0x544c
    77e0: f04f 30ff    	mov.w	r0, #0xffffffff
    77e4: e7e0         	b	0x77a8 <set_value_cache_and_db+0x38> @ imm = #-0x40
    77e6: 4b11         	ldr	r3, [pc, #0x44]         @ 0x782c <set_value_cache_and_db+0xbc>
    77e8: 2086         	movs	r0, #0x86
    77ea: 4a11         	ldr	r2, [pc, #0x44]         @ 0x7830 <set_value_cache_and_db+0xc0>
    77ec: 2106         	movs	r1, #0x6
    77ee: 447b         	add	r3, pc
    77f0: 447a         	add	r2, pc
    77f2: f203 431c    	addw	r3, r3, #0x41c
    77f6: 323c         	adds	r2, #0x3c
    77f8: e9cd 3001    	strd	r3, r0, [sp, #4]
    77fc: 9200         	str	r2, [sp]
    77fe: 2000         	movs	r0, #0x0
    7800: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x7834 <set_value_cache_and_db+0xc4>
    7802: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x7838 <set_value_cache_and_db+0xc8>
    7804: 447b         	add	r3, pc
    7806: 447a         	add	r2, pc
    7808: f7fa eda6    	blx	0x2358 <__dlog_print@plt> @ imm = #-0x54b4
    780c: 4620         	mov	r0, r4
    780e: f7fa edc2    	blx	0x2394 <g_mutex_unlock@plt> @ imm = #-0x547c
    7812: f04f 30ff    	mov.w	r0, #0xffffffff
    7816: e7c7         	b	0x77a8 <set_value_cache_and_db+0x38> @ imm = #-0x72
    7818: 3ad2         	subs	r2, #0xd2
    781a: 0001         	movs	r1, r0
    781c: 29b2         	cmp	r1, #0xb2
    781e: 0000         	movs	r0, r0
    7820: 0a06         	lsrs	r6, r0, #0x8
    7822: 0000         	movs	r0, r0
    7824: 2368         	movs	r3, #0x68
    7826: 0000         	movs	r0, r0
    7828: 099c         	lsrs	r4, r3, #0x6
    782a: 0000         	movs	r0, r0
    782c: 297a         	cmp	r1, #0x7a
    782e: 0000         	movs	r0, r0
    7830: 09d0         	lsrs	r0, r2, #0x7
    7832: 0000         	movs	r0, r0
    7834: 2354         	movs	r3, #0x54
    7836: 0000         	movs	r0, r0
    7838: 0966         	lsrs	r6, r4, #0x5
    783a: 0000         	movs	r0, r0
