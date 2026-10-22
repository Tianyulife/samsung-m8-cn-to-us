
firmware-analysis/US-1720.7/rootfs/root/usr/lib/libiotcon.so.0.4.0:	file format elf32-littlearm

Disassembly of section .text:

00019dbc <iotcon_provisioning_device_clone>:
   1fc80: eea2 0000    	cdp	p0, #0xa, c0, c2, c0, #0x0
   1fc84: 25f6         	movs	r5, #0xf6
   1fc86: 0002         	movs	r2, r0
   1fc88: dc34         	bgt	0x1fcf4 <iotcon_provisioning_device_clone+0x5f38> @ imm = #0x68
   1fc8a: 0000         	movs	r0, r0
   1fc8c: eebc 0000    	cdp	p0, #0xb, c0, c12, c0, #0x0
   1fc90: fb76 0000    	usada8	r0, r6, r0, r0
   1fc94: deb4         	udf	#0xb4
   1fc96: 0000         	movs	r0, r0
   1fc98: dc94         	bgt	0x1fbc4 <iotcon_provisioning_device_clone+0x5e08> @ imm = #-0xd8
   1fc9a: 0000         	movs	r0, r0
   1fc9c: 6f68         	ldr	r0, [r5, #0x74]
   1fc9e: 0000         	movs	r0, r0
   1fca0: fb2e 0000    	smlad	r0, lr, r0, r0
   1fca4: de6e         	udf	#0x6e
   1fca6: 0000         	movs	r0, r0
   1fca8: ed64 0000    	stcl	p0, c0, [r4, #-0]!
   1fcac: 6f20         	ldr	r0, [r4, #0x70]
   1fcae: 0000         	movs	r0, r0
   1fcb0: ee52 0000    	cdp	p0, #0x5, c0, c2, c0, #0x0
   1fcb4: ee4c 0000    	cdp	p0, #0x4, c0, c12, c0, #0x0
   1fcb8: 743e         	strb	r6, [r7, #0x10]
   1fcba: 0000         	movs	r0, r0
   1fcbc: 6e96         	ldr	r6, [r2, #0x68]
   1fcbe: 0000         	movs	r0, r0
   1fcc0: 73bc         	strb	r4, [r7, #0xe]
   1fcc2: 0000         	movs	r0, r0
   1fcc4: 6e64         	ldr	r4, [r4, #0x64]
   1fcc6: 0000         	movs	r0, r0
   1fcc8: fa54 0000    	<unknown>
   1fccc: dd94         	ble	0x1fbf8 <iotcon_provisioning_device_clone+0x5e3c> @ imm = #-0xd8
   1fcce: 0000         	movs	r0, r0
   1fcd0: 70c4         	strb	r4, [r0, #0x3]
   1fcd2: 0000         	movs	r0, r0
   1fcd4: 6e44         	ldr	r4, [r0, #0x64]
   1fcd6: 0000         	movs	r0, r0
   1fcd8: f9d8 0000    	<unknown>
   1fcdc: dd18         	ble	0x1fd10 <iotcon_provisioning_device_clone+0x5f54> @ imm = #0x30
   1fcde: 0000         	movs	r0, r0
   1fce0: 7048         	strb	r0, [r1, #0x1]
   1fce2: 0000         	movs	r0, r0
   1fce4: 6dc8         	ldr	r0, [r1, #0x5c]
   1fce6: 0000         	movs	r0, r0
   1fce8: 4a8e         	ldr	r2, [pc, #0x238]        @ 0x1ff24 <iotcon_provisioning_device_clone+0x6168>
   1fcea: e92d 43f0    	push.w	{r4, r5, r6, r7, r8, r9, lr}
   1fcee: 4604         	mov	r4, r0
   1fcf0: 4b8d         	ldr	r3, [pc, #0x234]        @ 0x1ff28 <iotcon_provisioning_device_clone+0x616c>
   1fcf2: 447a         	add	r2, pc
   1fcf4: f2ad 4d1c    	subw	sp, sp, #0x41c
   1fcf8: 488c         	ldr	r0, [pc, #0x230]        @ 0x1ff2c <iotcon_provisioning_device_clone+0x6170>
   1fcfa: ae04         	add	r6, sp, #0x10
   1fcfc: 58d3         	ldr	r3, [r2, r3]
   1fcfe: 4478         	add	r0, pc ; STR 'db/setting/device_name'
   1fd00: 681b         	ldr	r3, [r3]
   1fd02: f8cd 3414    	str.w	r3, [sp, #0x414]
   1fd06: f04f 0300    	mov.w	r3, #0x0
   1fd0a: 2300         	movs	r3, #0x0
   1fd0c: 6033         	str	r3, [r6]
   1fd0e: f7e5 ed6c    	blx	0x57e8 <vconf_get_str@plt> @ imm = #-0x1a528
   1fd12: 4605         	mov	r5, r0
   1fd14: 2800         	cmp	r0, #0x0
   1fd16: f000 80bd    	beq.w	0x1fe94 <iotcon_provisioning_device_clone+0x60d8> @ imm = #0x17a
   1fd1a: 4885         	ldr	r0, [pc, #0x214]        @ 0x1ff30 <iotcon_provisioning_device_clone+0x6174>
   1fd1c: 4631         	mov	r1, r6
   1fd1e: 4478         	add	r0, pc ; STR 'http://tizen.org/system/tizenid'
   1fd20: f7e5 ee70    	blx	0x5a04 <system_info_get_platform_string@plt> @ imm = #-0x1a320
   1fd24: 2800         	cmp	r0, #0x0
   1fd26: f040 809f    	bne.w	0x1fe68 <iotcon_provisioning_device_clone+0x60ac> @ imm = #0x13e
   1fd2a: 4628         	mov	r0, r5
   1fd2c: 6831         	ldr	r1, [r6]
   1fd2e: 2900         	cmp	r1, #0x0
   1fd30: f000 8097    	beq.w	0x1fe62 <iotcon_provisioning_device_clone+0x60a6> @ imm = #0x12e
   1fd34: 4a7f         	ldr	r2, [pc, #0x1fc]        @ 0x1ff34 <iotcon_provisioning_device_clone+0x6178>
   1fd36: f44f 6380    	mov.w	r3, #0x400
   1fd3a: af05         	add	r7, sp, #0x14
   1fd3c: e9cd 0101    	strd	r0, r1, [sp, #4]
   1fd40: 447a         	add	r2, pc ; STR '%s(%s)'
   1fd42: 4619         	mov	r1, r3
   1fd44: 9200         	str	r2, [sp]
   1fd46: 4638         	mov	r0, r7
   1fd48: 2201         	movs	r2, #0x1
   1fd4a: f8df 81ec    	ldr.w	r8, [pc, #0x1ec]        @ 0x1ff38 <iotcon_provisioning_device_clone+0x617c>
   1fd4e: f7e5 ed40    	blx	0x57d0 <__snprintf_chk@plt> @ imm = #-0x1a580
   1fd52: 4628         	mov	r0, r5
   1fd54: f7e5 ec4a    	blx	0x55ec <free@plt>       @ imm = #-0x1a76c
   1fd58: 4d78         	ldr	r5, [pc, #0x1e0]        @ 0x1ff3c <iotcon_provisioning_device_clone+0x6180>
   1fd5a: 6830         	ldr	r0, [r6]
   1fd5c: 44f8         	add	r8, pc ; STR 'IOTCON'
   1fd5e: 4e78         	ldr	r6, [pc, #0x1e0]        @ 0x1ff40 <iotcon_provisioning_device_clone+0x6184>
   1fd60: f7e5 ec44    	blx	0x55ec <free@plt>       @ imm = #-0x1a778
   1fd64: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x1ff44 <iotcon_provisioning_device_clone+0x6188>
   1fd66: 447d         	add	r5, pc ; STR '/home/abuild/rpmbuild/BUILD/iotcon-0.4.0/src/ic-ioty.c'
   1fd68: 447e         	add	r6, pc ; STR '_provisioning_find_cb_unref'
   1fd6a: 2104         	movs	r1, #0x4
   1fd6c: 447b         	add	r3, pc ; STR '%s: %s(%d) > [SECURE_LOG] platform_id: %s'
   1fd6e: 4642         	mov	r2, r8
   1fd70: f44f 7035    	mov.w	r0, #0x2d4
   1fd74: f506 6601    	add.w	r6, r6, #0x810
   1fd78: 9002         	str	r0, [sp, #0x8]
   1fd7a: 352d         	adds	r5, #0x2d
   1fd7c: 2002         	movs	r0, #0x2
   1fd7e: 9703         	str	r7, [sp, #0xc]
   1fd80: e9cd 5600    	strd	r5, r6, [sp]
   1fd84: f7e5 ebf4    	blx	0x5570 <__dlog_print@plt> @ imm = #-0x1a818
   1fd88: 4638         	mov	r0, r7
   1fd8a: f7e5 ed7a    	blx	0x5880 <strdup@plt>     @ imm = #-0x1a50c
   1fd8e: 4621         	mov	r1, r4
   1fd90: 4603         	mov	r3, r0
   1fd92: 486d         	ldr	r0, [pc, #0x1b4]        @ 0x1ff48 <iotcon_provisioning_device_clone+0x618c>
   1fd94: f841 3b04    	str	r3, [r1], #4
   1fd98: 4478         	add	r0, pc ; STR 'http://tizen.org/system/manufacturer'
   1fd9a: f7e5 ee34    	blx	0x5a04 <system_info_get_platform_string@plt> @ imm = #-0x1a398
   1fd9e: 2800         	cmp	r0, #0x0
   1fda0: f040 80a9    	bne.w	0x1fef6 <iotcon_provisioning_device_clone+0x613a> @ imm = #0x152
   1fda4: 4869         	ldr	r0, [pc, #0x1a4]        @ 0x1ff4c <iotcon_provisioning_device_clone+0x6190>
   1fda6: f104 010c    	add.w	r1, r4, #0xc
   1fdaa: 4478         	add	r0, pc ; STR 'http://tizen.org/system/model_name'
   1fdac: f7e5 ee2a    	blx	0x5a04 <system_info_get_platform_string@plt> @ imm = #-0x1a3ac
   1fdb0: 2800         	cmp	r0, #0x0
   1fdb2: d148         	bne	0x1fe46 <iotcon_provisioning_device_clone+0x608a> @ imm = #0x90
   1fdb4: 4866         	ldr	r0, [pc, #0x198]        @ 0x1ff50 <iotcon_provisioning_device_clone+0x6194>
   1fdb6: f104 0114    	add.w	r1, r4, #0x14
   1fdba: 4478         	add	r0, pc ; STR 'http://tizen.org/feature/platform.version'
   1fdbc: f7e5 ee22    	blx	0x5a04 <system_info_get_platform_string@plt> @ imm = #-0x1a3bc
   1fdc0: bb58         	cbnz	r0, 0x1fe1a <iotcon_provisioning_device_clone+0x605e> @ imm = #0x56
   1fdc2: 4864         	ldr	r0, [pc, #0x190]        @ 0x1ff54 <iotcon_provisioning_device_clone+0x6198>
   1fdc4: f104 0120    	add.w	r1, r4, #0x20
   1fdc8: 4478         	add	r0, pc ; STR 'http://tizen.org/system/build.string'
   1fdca: f7e5 ee1c    	blx	0x5a04 <system_info_get_platform_string@plt> @ imm = #-0x1a3c8
   1fdce: b968         	cbnz	r0, 0x1fdec <iotcon_provisioning_device_clone+0x6030> @ imm = #0x1a
   1fdd0: 4a61         	ldr	r2, [pc, #0x184]        @ 0x1ff58 <iotcon_provisioning_device_clone+0x619c>
   1fdd2: 4b55         	ldr	r3, [pc, #0x154]        @ 0x1ff28 <iotcon_provisioning_device_clone+0x616c>
   1fdd4: 447a         	add	r2, pc
   1fdd6: 58d3         	ldr	r3, [r2, r3]
   1fdd8: 681a         	ldr	r2, [r3]
   1fdda: f8dd 3414    	ldr.w	r3, [sp, #0x414]
   1fdde: 405a         	eors	r2, r3
   1fde0: f040 809d    	bne.w	0x1ff1e <iotcon_provisioning_device_clone+0x6162> @ imm = #0x13a
   1fde4: f20d 4d1c    	addw	sp, sp, #0x41c
   1fde8: e8bd 83f0    	pop.w	{r4, r5, r6, r7, r8, r9, pc}
   1fdec: 4a5b         	ldr	r2, [pc, #0x16c]        @ 0x1ff5c <iotcon_provisioning_device_clone+0x61a0>
   1fdee: 2105         	movs	r1, #0x5
   1fdf0: 4b5b         	ldr	r3, [pc, #0x16c]        @ 0x1ff60 <iotcon_provisioning_device_clone+0x61a4>
   1fdf2: f240 24ef    	movw	r4, #0x2ef
   1fdf6: 447a         	add	r2, pc ; STR '_provisioning_find_cb_unref'
   1fdf8: 9003         	str	r0, [sp, #0xc]
   1fdfa: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/iotcon-0.4.0/src/ic-ioty.c'
   1fdfc: f502 6201    	add.w	r2, r2, #0x810
   1fe00: 332d         	adds	r3, #0x2d
   1fe02: e9cd 3200    	strd	r3, r2, [sp]
   1fe06: 4b57         	ldr	r3, [pc, #0x15c]        @ 0x1ff64 <iotcon_provisioning_device_clone+0x61a8>
   1fe08: 2002         	movs	r0, #0x2
   1fe0a: 4a57         	ldr	r2, [pc, #0x15c]        @ 0x1ff68 <iotcon_provisioning_device_clone+0x61ac>
   1fe0c: 447b         	add	r3, pc ; STR '%s: %s(%d) > system_info_get_platform_string(build_string) Fail(%d)'
   1fe0e: 9402         	str	r4, [sp, #0x8]
   1fe10: 447a         	add	r2, pc ; STR 'IOTCON'
   1fe12: f7e5 ebae    	blx	0x5570 <__dlog_print@plt> @ imm = #-0x1a8a4
   1fe16: 2000         	movs	r0, #0x0
   1fe18: e7da         	b	0x1fdd0 <iotcon_provisioning_device_clone+0x6014> @ imm = #-0x4c
   1fe1a: 4a54         	ldr	r2, [pc, #0x150]        @ 0x1ff6c <iotcon_provisioning_device_clone+0x61b0>
   1fe1c: f240 25ea    	movw	r5, #0x2ea
   1fe20: 4b53         	ldr	r3, [pc, #0x14c]        @ 0x1ff70 <iotcon_provisioning_device_clone+0x61b4>
   1fe22: 2105         	movs	r1, #0x5
   1fe24: 447a         	add	r2, pc ; STR '_provisioning_find_cb_unref'
   1fe26: 9003         	str	r0, [sp, #0xc]
   1fe28: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/iotcon-0.4.0/src/ic-ioty.c'
   1fe2a: f502 6201    	add.w	r2, r2, #0x810
   1fe2e: 332d         	adds	r3, #0x2d
   1fe30: e9cd 3200    	strd	r3, r2, [sp]
   1fe34: 4b4f         	ldr	r3, [pc, #0x13c]        @ 0x1ff74 <iotcon_provisioning_device_clone+0x61b8>
   1fe36: 2002         	movs	r0, #0x2
   1fe38: 4a4f         	ldr	r2, [pc, #0x13c]        @ 0x1ff78 <iotcon_provisioning_device_clone+0x61bc>
   1fe3a: 447b         	add	r3, pc ; STR '%s: %s(%d) > system_info_get_platform_string(platform_version) Fail(%d)'
   1fe3c: 9502         	str	r5, [sp, #0x8]
   1fe3e: 447a         	add	r2, pc ; STR 'IOTCON'
   1fe40: f7e5 eb96    	blx	0x5570 <__dlog_print@plt> @ imm = #-0x1a8d4
   1fe44: e7bd         	b	0x1fdc2 <iotcon_provisioning_device_clone+0x6006> @ imm = #-0x86
   1fe46: f240 23e5    	movw	r3, #0x2e5
   1fe4a: 9302         	str	r3, [sp, #0x8]
   1fe4c: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x1ff7c <iotcon_provisioning_device_clone+0x61c0>
   1fe4e: 4642         	mov	r2, r8
   1fe50: 9003         	str	r0, [sp, #0xc]
   1fe52: 2105         	movs	r1, #0x5
   1fe54: 447b         	add	r3, pc ; STR '%s: %s(%d) > system_info_get_platform_string(model_name) Fail(%d)'
   1fe56: 9601         	str	r6, [sp, #0x4]
   1fe58: 9500         	str	r5, [sp]
   1fe5a: 2002         	movs	r0, #0x2
   1fe5c: f7e5 eb88    	blx	0x5570 <__dlog_print@plt> @ imm = #-0x1a8f0
   1fe60: e7a8         	b	0x1fdb4 <iotcon_provisioning_device_clone+0x5ff8> @ imm = #-0xb0
   1fe62: 4947         	ldr	r1, [pc, #0x11c]        @ 0x1ff80 <iotcon_provisioning_device_clone+0x61c4>
   1fe64: 4479         	add	r1, pc
   1fe66: e765         	b	0x1fd34 <iotcon_provisioning_device_clone+0x5f78> @ imm = #-0x136
   1fe68: 4a46         	ldr	r2, [pc, #0x118]        @ 0x1ff84 <iotcon_provisioning_device_clone+0x61c8>
   1fe6a: f240 27ce    	movw	r7, #0x2ce
   1fe6e: 4b46         	ldr	r3, [pc, #0x118]        @ 0x1ff88 <iotcon_provisioning_device_clone+0x61cc>
   1fe70: 2105         	movs	r1, #0x5
   1fe72: 447a         	add	r2, pc ; STR '_provisioning_find_cb_unref'
   1fe74: 9003         	str	r0, [sp, #0xc]
   1fe76: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/iotcon-0.4.0/src/ic-ioty.c'
   1fe78: f502 6201    	add.w	r2, r2, #0x810
   1fe7c: 332d         	adds	r3, #0x2d
   1fe7e: e9cd 3200    	strd	r3, r2, [sp]
   1fe82: 4b42         	ldr	r3, [pc, #0x108]        @ 0x1ff8c <iotcon_provisioning_device_clone+0x61d0>
   1fe84: 2002         	movs	r0, #0x2
   1fe86: 4a42         	ldr	r2, [pc, #0x108]        @ 0x1ff90 <iotcon_provisioning_device_clone+0x61d4>
   1fe88: 447b         	add	r3, pc ; STR '%s: %s(%d) > system_info_get_platform_string() Fail(%d)'
   1fe8a: 9702         	str	r7, [sp, #0x8]
   1fe8c: 447a         	add	r2, pc ; STR 'IOTCON'
   1fe8e: f7e5 eb70    	blx	0x5570 <__dlog_print@plt> @ imm = #-0x1a920
   1fe92: e74a         	b	0x1fd2a <iotcon_provisioning_device_clone+0x5f6e> @ imm = #-0x16c
   1fe94: f8df 80fc    	ldr.w	r8, [pc, #0xfc]         @ 0x1ff94 <iotcon_provisioning_device_clone+0x61d8>
   1fe98: f240 23cb    	movw	r3, #0x2cb
   1fe9c: 4f3e         	ldr	r7, [pc, #0xf8]         @ 0x1ff98 <iotcon_provisioning_device_clone+0x61dc>
   1fe9e: 2105         	movs	r1, #0x5
   1fea0: f8df 90f8    	ldr.w	r9, [pc, #0xf8]         @ 0x1ff9c <iotcon_provisioning_device_clone+0x61e0>
   1fea4: 44f8         	add	r8, pc ; STR '_provisioning_find_cb_unref'
   1fea6: 9302         	str	r3, [sp, #0x8]
   1fea8: 447f         	add	r7, pc ; STR '/home/abuild/rpmbuild/BUILD/iotcon-0.4.0/src/ic-ioty.c'
   1feaa: 4b3d         	ldr	r3, [pc, #0xf4]         @ 0x1ffa0 <iotcon_provisioning_device_clone+0x61e4>
   1feac: 44f9         	add	r9, pc ; STR 'IOTCON'
   1feae: f508 6801    	add.w	r8, r8, #0x810
   1feb2: 372d         	adds	r7, #0x2d
   1feb4: 464a         	mov	r2, r9
   1feb6: 2002         	movs	r0, #0x2
   1feb8: 447b         	add	r3, pc ; STR '%s: %s(%d) > vconf_get_str() Fail'
   1feba: e9cd 7800    	strd	r7, r8, [sp]
   1febe: f7e5 eb58    	blx	0x5570 <__dlog_print@plt> @ imm = #-0x1a950
   1fec2: 4838         	ldr	r0, [pc, #0xe0]         @ 0x1ffa4 <iotcon_provisioning_device_clone+0x61e8>
   1fec4: 4631         	mov	r1, r6
   1fec6: 4478         	add	r0, pc ; STR 'http://tizen.org/system/tizenid'
   1fec8: f7e5 ed9c    	blx	0x5a04 <system_info_get_platform_string@plt> @ imm = #-0x1a4c8
   1fecc: b910         	cbnz	r0, 0x1fed4 <iotcon_provisioning_device_clone+0x6118> @ imm = #0x4
   1fece: 4836         	ldr	r0, [pc, #0xd8]         @ 0x1ffa8 <iotcon_provisioning_device_clone+0x61ec>
   1fed0: 4478         	add	r0, pc
   1fed2: e72b         	b	0x1fd2c <iotcon_provisioning_device_clone+0x5f70> @ imm = #-0x1aa
   1fed4: f240 23ce    	movw	r3, #0x2ce
   1fed8: 9302         	str	r3, [sp, #0x8]
   1feda: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x1ffac <iotcon_provisioning_device_clone+0x61f0>
   1fedc: 464a         	mov	r2, r9
   1fede: 9003         	str	r0, [sp, #0xc]
   1fee0: 2105         	movs	r1, #0x5
   1fee2: 2002         	movs	r0, #0x2
   1fee4: 447b         	add	r3, pc ; STR '%s: %s(%d) > system_info_get_platform_string() Fail(%d)'
   1fee6: f8cd 8004    	str.w	r8, [sp, #0x4]
   1feea: 9700         	str	r7, [sp]
   1feec: f7e5 eb40    	blx	0x5570 <__dlog_print@plt> @ imm = #-0x1a980
   1fef0: 482f         	ldr	r0, [pc, #0xbc]         @ 0x1ffb0 <iotcon_provisioning_device_clone+0x61f4>
   1fef2: 4478         	add	r0, pc
   1fef4: e71a         	b	0x1fd2c <iotcon_provisioning_device_clone+0x5f70> @ imm = #-0x1cc
   1fef6: f240 23dd    	movw	r3, #0x2dd
   1fefa: 9302         	str	r3, [sp, #0x8]
   1fefc: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x1ffb4 <iotcon_provisioning_device_clone+0x61f8>
   1fefe: 4642         	mov	r2, r8
   1ff00: 2106         	movs	r1, #0x6
   1ff02: 9003         	str	r0, [sp, #0xc]
   1ff04: 447b         	add	r3, pc ; STR '%s: %s(%d) > system_info_get_platform_string(manufacturer) Fail(%d)'
   1ff06: 2002         	movs	r0, #0x2
   1ff08: 9601         	str	r6, [sp, #0x4]
   1ff0a: 9500         	str	r5, [sp]
   1ff0c: f7e5 eb30    	blx	0x5570 <__dlog_print@plt> @ imm = #-0x1a9a0
   1ff10: 6820         	ldr	r0, [r4]
   1ff12: f7e5 eb6c    	blx	0x55ec <free@plt>       @ imm = #-0x1a928
   1ff16: 2006         	movs	r0, #0x6
   1ff18: f6cf 6038    	movt	r0, #0xfe38
   1ff1c: e758         	b	0x1fdd0 <iotcon_provisioning_device_clone+0x6014> @ imm = #-0x150
   1ff1e: f7e5 ecd4    	blx	0x58c8 <__stack_chk_fail@plt> @ imm = #-0x1a658
   1ff22: bf00         	nop
   1ff24: 230a         	movs	r3, #0xa
   1ff26: 0002         	movs	r2, r0
   1ff28: 02cc         	lsls	r4, r1, #0xb
   1ff2a: 0000         	movs	r0, r0
   1ff2c: ec6a 0000    	stcl	p0, c0, [r10], #-0
   1ff30: ec86 0000    	stc	p0, c0, [r6], {0}
   1ff34: ec84 0000    	stc	p0, c0, [r4], {0}
   1ff38: 6c8c         	ldr	r4, [r1, #0x48]
   1ff3a: 0000         	movs	r0, r0
   1ff3c: 6e62         	ldr	r2, [r4, #0x64]
   1ff3e: 0000         	movs	r0, r0
   1ff40: f874 0000    	<unknown>
   1ff44: ec60 0000    	stcl	p0, c0, [r0], #-0
   1ff48: ec60 0000    	stcl	p0, c0, [r0], #-0
   1ff4c: ecba 0000    	ldc	p0, c0, [r10], #0
   1ff50: ed12 0000    	ldc	p0, c0, [r2, #-0]
   1ff54: ed78 0000    	ldcl	p0, c0, [r8, #-0]!
   1ff58: 2228         	movs	r2, #0x28
   1ff5a: 0002         	movs	r2, r0
   1ff5c: f7e6 0000    	<unknown>
   1ff60: 6dce         	ldr	r6, [r1, #0x5c]
   1ff62: 0000         	movs	r0, r0
   1ff64: ed5c 0000    	ldcl	p0, c0, [r12, #-0]
   1ff68: 6bd8         	ldr	r0, [r3, #0x3c]
   1ff6a: 0000         	movs	r0, r0
   1ff6c: f7b8 0000    	<unknown>
   1ff70: 6da0         	ldr	r0, [r4, #0x58]
   1ff72: 0000         	movs	r0, r0
   1ff74: ecbe 0000    	ldc	p0, c0, [lr], #0
   1ff78: 6baa         	ldr	r2, [r5, #0x38]
   1ff7a: 0000         	movs	r0, r0
   1ff7c: ec34 0000    	ldc	p0, c0, [r4], #-0
   1ff80: f5e8 0000    	<unknown>
   1ff84: f76a 0000    	<unknown>
   1ff88: 6d52         	ldr	r2, [r2, #0x54]
   1ff8a: 0000         	movs	r0, r0
   1ff8c: ed24 0000    	stc	p0, c0, [r4, #-0]!
   1ff90: 6b5c         	ldr	r4, [r3, #0x34]
   1ff92: 0000         	movs	r0, r0
   1ff94: f738 0000    	<unknown>
   1ff98: 6d20         	ldr	r0, [r4, #0x50]
   1ff9a: 0000         	movs	r0, r0
   1ff9c: 6b3c         	ldr	r4, [r7, #0x30]
   1ff9e: 0000         	movs	r0, r0
   1ffa0: eac8 0000    	pkhbt	r0, r8, r0
   1ffa4: eade 0000    	<unknown>
   1ffa8: f57c 0000    	sbcs	r0, r12, #0x800000
   1ffac: ecc8 0000    	stcl	p0, c0, [r8], {0}
