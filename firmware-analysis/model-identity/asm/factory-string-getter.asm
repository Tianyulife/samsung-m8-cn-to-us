
firmware-analysis/US-1720.7/rootfs/root/usr/lib/libfactory-interface-WW.so:	file format elf32-littlearm

Disassembly of section .text:

454f02c4 <factory_get_str_data>:
454f02c4: 4ab9         	ldr	r2, [pc, #0x2e4]        @ 0x454f05ac <factory_get_str_data+0x2e8>
454f02c6: 4bba         	ldr	r3, [pc, #0x2e8]        @ 0x454f05b0 <factory_get_str_data+0x2ec>
454f02c8: 447a         	add	r2, pc
454f02ca: e92d 43f0    	push.w	{r4, r5, r6, r7, r8, r9, lr}
454f02ce: f5a0 560e    	sub.w	r6, r0, #0x2380
454f02d2: b097         	sub	sp, #0x5c
454f02d4: 4604         	mov	r4, r0
454f02d6: 58d3         	ldr	r3, [r2, r3]
454f02d8: f1a6 020d    	sub.w	r2, r6, #0xd
454f02dc: 681b         	ldr	r3, [r3]
454f02de: 9315         	str	r3, [sp, #0x54]
454f02e0: f04f 0300    	mov.w	r3, #0x0
454f02e4: f240 3382    	movw	r3, #0x382
454f02e8: 429a         	cmp	r2, r3
454f02ea: d84a         	bhi	0x454f0382 <factory_get_str_data+0xbe> @ imm = #0x94
454f02ec: 1d0f         	adds	r7, r1, #0x4
454f02ee: 460d         	mov	r5, r1
454f02f0: f44f 727a    	mov.w	r2, #0x3e8
454f02f4: 4638         	mov	r0, r7
454f02f6: 2100         	movs	r1, #0x0
454f02f8: f7e4 eb0a    	blx	0x454d4910 <memset@plt> @ imm = #-0x1b9ec
454f02fc: f242 338e    	movw	r3, #0x238e
454f0300: 429c         	cmp	r4, r3
454f0302: f000 80d5    	beq.w	0x454f04b0 <factory_get_str_data+0x1ec> @ imm = #0x1aa
454f0306: f242 3392    	movw	r3, #0x2392
454f030a: 429c         	cmp	r4, r3
454f030c: d059         	beq	0x454f03c2 <factory_get_str_data+0xfe> @ imm = #0xb2
454f030e: 3e0f         	subs	r6, #0xf
454f0310: 2e01         	cmp	r6, #0x1
454f0312: f240 809a    	bls.w	0x454f044a <factory_get_str_data+0x186> @ imm = #0x134
454f0316: 2600         	movs	r6, #0x0
454f0318: 9606         	str	r6, [sp, #0x18]
454f031a: 9608         	str	r6, [sp, #0x20]
454f031c: f7e4 ef26    	blx	0x454d516c <_Z18get_ipc_connectionv@plt> @ imm = #-0x1b1b4
454f0320: 4603         	mov	r3, r0
454f0322: 2800         	cmp	r0, #0x0
454f0324: f000 810f    	beq.w	0x454f0546 <factory_get_str_data+0x282> @ imm = #0x21e
454f0328: 4621         	mov	r1, r4
454f032a: aa06         	add	r2, sp, #0x18
454f032c: ab08         	add	r3, sp, #0x20
454f032e: 9201         	str	r2, [sp, #0x4]
454f0330: 9600         	str	r6, [sp]
454f0332: aa07         	add	r2, sp, #0x1c
454f0334: f7e5 e968    	blx	0x454d5608 <factory_proxy_call_get_str_item_sync@plt> @ imm = #-0x1ad30
454f0338: 4604         	mov	r4, r0
454f033a: 2800         	cmp	r0, #0x0
454f033c: d05c         	beq	0x454f03f8 <factory_get_str_data+0x134> @ imm = #0xb8
454f033e: 499d         	ldr	r1, [pc, #0x274]        @ 0x454f05b4 <factory_get_str_data+0x2f0>
454f0340: aa09         	add	r2, sp, #0x24
454f0342: 9807         	ldr	r0, [sp, #0x1c]
454f0344: 4479         	add	r1, pc
454f0346: f7e4 ed9a    	blx	0x454d4e7c <g_variant_get@plt> @ imm = #-0x1b4cc
454f034a: 9909         	ldr	r1, [sp, #0x24]
454f034c: f44f 727a    	mov.w	r2, #0x3e8
454f0350: 4638         	mov	r0, r7
454f0352: f7e5 e928    	blx	0x454d55a4 <strncpy@plt> @ imm = #-0x1adb0
454f0356: 9807         	ldr	r0, [sp, #0x1c]
454f0358: f7e4 ee86    	blx	0x454d5068 <g_variant_unref@plt> @ imm = #-0x1b2f4
454f035c: 4996         	ldr	r1, [pc, #0x258]        @ 0x454f05b8 <factory_get_str_data+0x2f4>
454f035e: 9808         	ldr	r0, [sp, #0x20]
454f0360: aa0a         	add	r2, sp, #0x28
454f0362: 4479         	add	r1, pc
454f0364: f7e4 ed8a    	blx	0x454d4e7c <g_variant_get@plt> @ imm = #-0x1b4ec
454f0368: 9808         	ldr	r0, [sp, #0x20]
454f036a: f7e4 ee7e    	blx	0x454d5068 <g_variant_unref@plt> @ imm = #-0x1b304
454f036e: 9c0a         	ldr	r4, [sp, #0x28]
454f0370: 2c00         	cmp	r4, #0x0
454f0372: f000 80fb    	beq.w	0x454f056c <factory_get_str_data+0x2a8> @ imm = #0x1f6
454f0376: 2401         	movs	r4, #0x1
454f0378: 4638         	mov	r0, r7
454f037a: f7e4 efc6    	blx	0x454d5308 <strlen@plt> @ imm = #-0x1b074
454f037e: 6028         	str	r0, [r5]
454f0380: e012         	b	0x454f03a8 <factory_get_str_data+0xe4> @ imm = #0x24
454f0382: 4b8e         	ldr	r3, [pc, #0x238]        @ 0x454f05bc <factory_get_str_data+0x2f8>
454f0384: 255f         	movs	r5, #0x5f
454f0386: 4a8e         	ldr	r2, [pc, #0x238]        @ 0x454f05c0 <factory_get_str_data+0x2fc>
454f0388: 2106         	movs	r1, #0x6
454f038a: 447b         	add	r3, pc
454f038c: 9003         	str	r0, [sp, #0xc]
454f038e: 447a         	add	r2, pc
454f0390: 3345         	adds	r3, #0x45
454f0392: 9201         	str	r2, [sp, #0x4]
454f0394: 2002         	movs	r0, #0x2
454f0396: 4a8b         	ldr	r2, [pc, #0x22c]        @ 0x454f05c4 <factory_get_str_data+0x300>
454f0398: 2400         	movs	r4, #0x0
454f039a: 9300         	str	r3, [sp]
454f039c: 4b8a         	ldr	r3, [pc, #0x228]        @ 0x454f05c8 <factory_get_str_data+0x304>
454f039e: 447a         	add	r2, pc
454f03a0: 9502         	str	r5, [sp, #0x8]
454f03a2: 447b         	add	r3, pc
454f03a4: f7e4 ed14    	blx	0x454d4dd0 <__dlog_print@plt> @ imm = #-0x1b5d8
454f03a8: 4a88         	ldr	r2, [pc, #0x220]        @ 0x454f05cc <factory_get_str_data+0x308>
454f03aa: 4b81         	ldr	r3, [pc, #0x204]        @ 0x454f05b0 <factory_get_str_data+0x2ec>
454f03ac: 447a         	add	r2, pc
454f03ae: 58d3         	ldr	r3, [r2, r3]
454f03b0: 681a         	ldr	r2, [r3]
454f03b2: 9b15         	ldr	r3, [sp, #0x54]
454f03b4: 405a         	eors	r2, r3
454f03b6: f040 80ec    	bne.w	0x454f0592 <factory_get_str_data+0x2ce> @ imm = #0x1d8
454f03ba: 4620         	mov	r0, r4
454f03bc: b017         	add	sp, #0x5c
454f03be: e8bd 83f0    	pop.w	{r4, r5, r6, r7, r8, r9, pc}
454f03c2: efc0 0050    	vmov.i32	q8, #0x0
454f03c6: ae0b         	add	r6, sp, #0x2c
454f03c8: 2400         	movs	r4, #0x0
454f03ca: 940a         	str	r4, [sp, #0x28]
454f03cc: f946 0a0f    	vst1.8	{d16, d17}, [r6]
454f03d0: edcd 0b0e    	vstr	d16, [sp, #56]
454f03d4: f7e5 e9e4    	blx	0x454d57a0 <_ZN10FCNvramMap11GetInstanceEv@plt> @ imm = #-0x1ac38
454f03d8: 4631         	mov	r1, r6
454f03da: aa0a         	add	r2, sp, #0x28
454f03dc: f7e4 eb20    	blx	0x454d4a20 <_ZN10FCNvramMap11GetBomModelEPcPi@plt> @ imm = #-0x1b9c0
454f03e0: 2800         	cmp	r0, #0x0
454f03e2: d1e1         	bne	0x454f03a8 <factory_get_str_data+0xe4> @ imm = #-0x3e
454f03e4: 4631         	mov	r1, r6
454f03e6: 4638         	mov	r0, r7
454f03e8: f240 32e7    	movw	r2, #0x3e7
454f03ec: 2401         	movs	r4, #0x1
454f03ee: f7e5 e8da    	blx	0x454d55a4 <strncpy@plt> @ imm = #-0x1ae4c
454f03f2: 9b0a         	ldr	r3, [sp, #0x28]
454f03f4: 602b         	str	r3, [r5]
454f03f6: e7d7         	b	0x454f03a8 <factory_get_str_data+0xe4> @ imm = #-0x52
454f03f8: 4e75         	ldr	r6, [pc, #0x1d4]        @ 0x454f05d0 <factory_get_str_data+0x30c>
454f03fa: 232f         	movs	r3, #0x2f
454f03fc: f8df 91d4    	ldr.w	r9, [pc, #0x1d4]        @ 0x454f05d4 <factory_get_str_data+0x310>
454f0400: 2106         	movs	r1, #0x6
454f0402: 9302         	str	r3, [sp, #0x8]
454f0404: 447e         	add	r6, pc
454f0406: f8df 81d0    	ldr.w	r8, [pc, #0x1d0]        @ 0x454f05d8 <factory_get_str_data+0x314>
454f040a: 44f9         	add	r9, pc
454f040c: 4b73         	ldr	r3, [pc, #0x1cc]        @ 0x454f05dc <factory_get_str_data+0x318>
454f040e: 3645         	adds	r6, #0x45
454f0410: 44f8         	add	r8, pc
454f0412: 464a         	mov	r2, r9
454f0414: 447b         	add	r3, pc
454f0416: 2002         	movs	r0, #0x2
454f0418: e9cd 6800    	strd	r6, r8, [sp]
454f041c: f7e4 ecd8    	blx	0x454d4dd0 <__dlog_print@plt> @ imm = #-0x1b650
454f0420: 9b06         	ldr	r3, [sp, #0x18]
454f0422: 2b00         	cmp	r3, #0x0
454f0424: d0a8         	beq	0x454f0378 <factory_get_str_data+0xb4> @ imm = #-0xb0
454f0426: 689b         	ldr	r3, [r3, #0x8]
454f0428: 464a         	mov	r2, r9
454f042a: 9303         	str	r3, [sp, #0xc]
454f042c: 2333         	movs	r3, #0x33
454f042e: 9302         	str	r3, [sp, #0x8]
454f0430: 2106         	movs	r1, #0x6
454f0432: 4b6b         	ldr	r3, [pc, #0x1ac]        @ 0x454f05e0 <factory_get_str_data+0x31c>
454f0434: 2002         	movs	r0, #0x2
454f0436: f8cd 8004    	str.w	r8, [sp, #0x4]
454f043a: 447b         	add	r3, pc
454f043c: 9600         	str	r6, [sp]
454f043e: f7e4 ecc8    	blx	0x454d4dd0 <__dlog_print@plt> @ imm = #-0x1b670
454f0442: 9806         	ldr	r0, [sp, #0x18]
454f0444: f7e4 e89c    	blx	0x454d4580 <g_error_free@plt> @ imm = #-0x1bec8
454f0448: e796         	b	0x454f0378 <factory_get_str_data+0xb4> @ imm = #-0xd4
454f044a: 2300         	movs	r3, #0x0
454f044c: f10d 0834    	add.w	r8, sp, #0x34
454f0450: f88d 3034    	strb.w	r3, [sp, #0x34]
454f0454: e9cd 830b    	strd	r8, r3, [sp, #44]
454f0458: f7e5 e9b4    	blx	0x454d57c4 <_ZN13FCStorageBase11GetInstanceEv@plt> @ imm = #-0x1ac98
454f045c: aa0b         	add	r2, sp, #0x2c
454f045e: 4621         	mov	r1, r4
454f0460: f7e4 ef76    	blx	0x454d5350 <_ZN19FCStorageBaseCommon10GetStrDataEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@plt> @ imm = #-0x1b114
454f0464: b1c8         	cbz	r0, 0x454f049a <factory_get_str_data+0x1d6> @ imm = #0x32
454f0466: 4b5f         	ldr	r3, [pc, #0x17c]        @ 0x454f05e4 <factory_get_str_data+0x320>
454f0468: 25b3         	movs	r5, #0xb3
454f046a: 4a5f         	ldr	r2, [pc, #0x17c]        @ 0x454f05e8 <factory_get_str_data+0x324>
454f046c: 2104         	movs	r1, #0x4
454f046e: 447b         	add	r3, pc
454f0470: 2000         	movs	r0, #0x0
454f0472: 447a         	add	r2, pc
454f0474: 3345         	adds	r3, #0x45
454f0476: 9201         	str	r2, [sp, #0x4]
454f0478: 9300         	str	r3, [sp]
454f047a: 4a5c         	ldr	r2, [pc, #0x170]        @ 0x454f05ec <factory_get_str_data+0x328>
454f047c: 4b5c         	ldr	r3, [pc, #0x170]        @ 0x454f05f0 <factory_get_str_data+0x32c>
454f047e: 447a         	add	r2, pc
454f0480: 9403         	str	r4, [sp, #0xc]
454f0482: 447b         	add	r3, pc
454f0484: 9502         	str	r5, [sp, #0x8]
454f0486: f7e4 eca4    	blx	0x454d4dd0 <__dlog_print@plt> @ imm = #-0x1b6b8
454f048a: 9e0b         	ldr	r6, [sp, #0x2c]
454f048c: 2400         	movs	r4, #0x0
454f048e: 4546         	cmp	r6, r8
454f0490: d08a         	beq	0x454f03a8 <factory_get_str_data+0xe4> @ imm = #-0xec
454f0492: 4630         	mov	r0, r6
454f0494: f7e4 ebf2    	blx	0x454d4c7c <_ZdlPv@plt> @ imm = #-0x1b81c
454f0498: e786         	b	0x454f03a8 <factory_get_str_data+0xe4> @ imm = #-0xf4
454f049a: 9e0b         	ldr	r6, [sp, #0x2c]
454f049c: 4638         	mov	r0, r7
454f049e: f240 32e7    	movw	r2, #0x3e7
454f04a2: 2401         	movs	r4, #0x1
454f04a4: 4631         	mov	r1, r6
454f04a6: f7e5 e87e    	blx	0x454d55a4 <strncpy@plt> @ imm = #-0x1af04
454f04aa: 9b0c         	ldr	r3, [sp, #0x30]
454f04ac: 602b         	str	r3, [r5]
454f04ae: e7ee         	b	0x454f048e <factory_get_str_data+0x1ca> @ imm = #-0x24
454f04b0: efc0 0050    	vmov.i32	q8, #0x0
454f04b4: ac11         	add	r4, sp, #0x44
454f04b6: f04f 33ff    	mov.w	r3, #0xffffffff
454f04ba: 930a         	str	r3, [sp, #0x28]
454f04bc: 2672         	movs	r6, #0x72
454f04be: f944 0a0f    	vst1.8	{d16, d17}, [r4]
454f04c2: f7e5 e96e    	blx	0x454d57a0 <_ZN10FCNvramMap11GetInstanceEv@plt> @ imm = #-0x1ad24
454f04c6: 4623         	mov	r3, r4
454f04c8: 220f         	movs	r2, #0xf
454f04ca: a90a         	add	r1, sp, #0x28
454f04cc: 9100         	str	r1, [sp]
454f04ce: f242 0120    	movw	r1, #0x2020
454f04d2: f7e3 ef4a    	blx	0x454d4368 <_ZN10FCNvramMap4ReadEjjPhPi@plt> @ imm = #-0x1c16c
454f04d6: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x454f05f4 <factory_get_str_data+0x330>
454f04d8: 4a47         	ldr	r2, [pc, #0x11c]        @ 0x454f05f8 <factory_get_str_data+0x334>
454f04da: f04f 0c0f    	mov.w	r12, #0xf
454f04de: 447b         	add	r3, pc
454f04e0: 990a         	ldr	r1, [sp, #0x28]
454f04e2: 447a         	add	r2, pc
454f04e4: 3345         	adds	r3, #0x45
454f04e6: 9201         	str	r2, [sp, #0x4]
454f04e8: 2000         	movs	r0, #0x0
454f04ea: 9300         	str	r3, [sp]
454f04ec: 4a43         	ldr	r2, [pc, #0x10c]        @ 0x454f05fc <factory_get_str_data+0x338>
454f04ee: 4b44         	ldr	r3, [pc, #0x110]        @ 0x454f0600 <factory_get_str_data+0x33c>
454f04f0: 9104         	str	r1, [sp, #0x10]
454f04f2: 447a         	add	r2, pc
454f04f4: 447b         	add	r3, pc
454f04f6: 2104         	movs	r1, #0x4
454f04f8: e9cd 6c02    	strd	r6, r12, [sp, #8]
454f04fc: f7e4 ec68    	blx	0x454d4dd0 <__dlog_print@plt> @ imm = #-0x1b730
454f0500: 9b0a         	ldr	r3, [sp, #0x28]
454f0502: 2b0f         	cmp	r3, #0xf
454f0504: d116         	bne	0x454f0534 <factory_get_str_data+0x270> @ imm = #0x2c
454f0506: f10d 0243    	add.w	r2, sp, #0x43
454f050a: f10d 0052    	add.w	r0, sp, #0x52
454f050e: f812 3f01    	ldrb	r3, [r2, #1]!
454f0512: f1a3 0130    	sub.w	r1, r3, #0x30
454f0516: 2909         	cmp	r1, #0x9
454f0518: d902         	bls	0x454f0520 <factory_get_str_data+0x25c> @ imm = #0x4
454f051a: 3b41         	subs	r3, #0x41
454f051c: 2b19         	cmp	r3, #0x19
454f051e: d809         	bhi	0x454f0534 <factory_get_str_data+0x270> @ imm = #0x12
454f0520: 4290         	cmp	r0, r2
454f0522: d1f4         	bne	0x454f050e <factory_get_str_data+0x24a> @ imm = #-0x18
454f0524: 4621         	mov	r1, r4
454f0526: 4638         	mov	r0, r7
454f0528: f240 32e7    	movw	r2, #0x3e7
454f052c: 2401         	movs	r4, #0x1
454f052e: f7e5 e83a    	blx	0x454d55a4 <strncpy@plt> @ imm = #-0x1af8c
454f0532: e721         	b	0x454f0378 <factory_get_str_data+0xb4> @ imm = #-0x1be
454f0534: 4933         	ldr	r1, [pc, #0xcc]         @ 0x454f0604 <factory_get_str_data+0x340>
454f0536: 4638         	mov	r0, r7
454f0538: f240 32e7    	movw	r2, #0x3e7
454f053c: 2400         	movs	r4, #0x0
454f053e: 4479         	add	r1, pc
454f0540: f7e5 e830    	blx	0x454d55a4 <strncpy@plt> @ imm = #-0x1afa0
454f0544: e718         	b	0x454f0378 <factory_get_str_data+0xb4> @ imm = #-0x1d0
454f0546: 4a30         	ldr	r2, [pc, #0xc0]         @ 0x454f0608 <factory_get_str_data+0x344>
454f0548: 2429         	movs	r4, #0x29
454f054a: 4830         	ldr	r0, [pc, #0xc0]         @ 0x454f060c <factory_get_str_data+0x348>
454f054c: 2106         	movs	r1, #0x6
454f054e: 447a         	add	r2, pc
454f0550: 9402         	str	r4, [sp, #0x8]
454f0552: 4478         	add	r0, pc
454f0554: 3245         	adds	r2, #0x45
454f0556: 461c         	mov	r4, r3
454f0558: e9cd 2000    	strd	r2, r0, [sp]
454f055c: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x454f0610 <factory_get_str_data+0x34c>
454f055e: 2002         	movs	r0, #0x2
454f0560: 4a2c         	ldr	r2, [pc, #0xb0]         @ 0x454f0614 <factory_get_str_data+0x350>
454f0562: 447b         	add	r3, pc
454f0564: 447a         	add	r2, pc
454f0566: f7e4 ec34    	blx	0x454d4dd0 <__dlog_print@plt> @ imm = #-0x1b798
454f056a: e705         	b	0x454f0378 <factory_get_str_data+0xb4> @ imm = #-0x1f6
454f056c: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x454f0618 <factory_get_str_data+0x354>
454f056e: 2646         	movs	r6, #0x46
454f0570: 4a2a         	ldr	r2, [pc, #0xa8]         @ 0x454f061c <factory_get_str_data+0x358>
454f0572: 2104         	movs	r1, #0x4
454f0574: 447b         	add	r3, pc
454f0576: 4620         	mov	r0, r4
454f0578: 447a         	add	r2, pc
454f057a: 3345         	adds	r3, #0x45
454f057c: 9201         	str	r2, [sp, #0x4]
454f057e: 9300         	str	r3, [sp]
454f0580: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x454f0620 <factory_get_str_data+0x35c>
454f0582: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x454f0624 <factory_get_str_data+0x360>
454f0584: 447a         	add	r2, pc
454f0586: 9403         	str	r4, [sp, #0xc]
454f0588: 447b         	add	r3, pc
454f058a: 9602         	str	r6, [sp, #0x8]
454f058c: f7e4 ec20    	blx	0x454d4dd0 <__dlog_print@plt> @ imm = #-0x1b7c0
454f0590: e6f2         	b	0x454f0378 <factory_get_str_data+0xb4> @ imm = #-0x21c
454f0592: f7e4 ec80    	blx	0x454d4e94 <__stack_chk_fail@plt> @ imm = #-0x1b700
454f0596: 9b0b         	ldr	r3, [sp, #0x2c]
454f0598: 4604         	mov	r4, r0
454f059a: 4543         	cmp	r3, r8
454f059c: d002         	beq	0x454f05a4 <factory_get_str_data+0x2e0> @ imm = #0x4
454f059e: 4618         	mov	r0, r3
454f05a0: f7e4 eb6c    	blx	0x454d4c7c <_ZdlPv@plt> @ imm = #-0x1b928
454f05a4: 4620         	mov	r0, r4
454f05a6: f7e5 e810    	blx	0x454d55c8 <_Unwind_Resume@plt> @ imm = #-0x1afe0
454f05aa: bf00         	nop
454f05ac: eeec 0001    	cdp	p0, #0xe, c0, c12, c1, #0x0
454f05b0: 0704         	lsls	r4, r0, #0x1c
454f05b2: 0000         	movs	r0, r0
454f05b4: 4ac0         	ldr	r2, [pc, #0x300]        @ 0x454f08b8 <_Z25factory_debug_select_menui+0xd8>
454f05b6: 0000         	movs	r0, r0
454f05b8: 4a7e         	ldr	r2, [pc, #0x1f8]        @ 0x454f07b4 <factory_get_data+0xb0>
454f05ba: 0000         	movs	r0, r0
454f05bc: a956         	add	r1, sp, #0x158
454f05be: 0000         	movs	r0, r0
454f05c0: afd2         	add	r7, sp, #0x348
454f05c2: 0000         	movs	r0, r0
454f05c4: 3f76         	subs	r7, #0x76
454f05c6: 0000         	movs	r0, r0
454f05c8: af9e         	add	r7, sp, #0x278
454f05ca: 0000         	movs	r0, r0
454f05cc: ee08 0001    	cdp	p0, #0x0, c0, c8, c1, #0x0
454f05d0: a8dc         	add	r0, sp, #0x370
454f05d2: 0000         	movs	r0, r0
454f05d4: 3f0a         	subs	r7, #0xa
454f05d6: 0000         	movs	r0, r0
454f05d8: af8c         	add	r7, sp, #0x230
454f05da: 0000         	movs	r0, r0
454f05dc: afa0         	add	r7, sp, #0x280
454f05de: 0000         	movs	r0, r0
454f05e0: 9ad6         	ldr	r2, [sp, #0x358]
454f05e2: 0000         	movs	r0, r0
454f05e4: a872         	add	r0, sp, #0x1c8
454f05e6: 0000         	movs	r0, r0
454f05e8: aeee         	add	r6, sp, #0x3b8
454f05ea: 0000         	movs	r0, r0
454f05ec: 3e96         	subs	r6, #0x96
454f05ee: 0000         	movs	r0, r0
454f05f0: ae5e         	add	r6, sp, #0x178
454f05f2: 0000         	movs	r0, r0
454f05f4: a802         	add	r0, sp, #0x8
454f05f6: 0000         	movs	r0, r0
454f05f8: ae7e         	add	r6, sp, #0x1f8
454f05fa: 0000         	movs	r0, r0
454f05fc: 3e22         	subs	r6, #0x22
454f05fe: 0000         	movs	r0, r0
454f0600: ae84         	add	r6, sp, #0x210
454f0602: 0000         	movs	r0, r0
454f0604: b4fe         	push	{r1, r2, r3, r4, r5, r6, r7}
454f0606: 0000         	movs	r0, r0
454f0608: a792         	adr	r7, #584 <factory_get_serial_number+0x76>
454f060a: 0000         	movs	r0, r0
454f060c: ae4a         	add	r6, sp, #0x128
454f060e: 0000         	movs	r0, r0
454f0610: 8d9a         	ldrh	r2, [r3, #0x2c]
454f0612: 0000         	movs	r0, r0
454f0614: 3db0         	subs	r5, #0xb0
454f0616: 0000         	movs	r0, r0
454f0618: a76c         	adr	r7, #432 <factory_get_serial_number+0x60>
454f061a: 0000         	movs	r0, r0
454f061c: ae24         	add	r6, sp, #0x90
454f061e: 0000         	movs	r0, r0
454f0620: 3d90         	subs	r5, #0x90
454f0622: 0000         	movs	r0, r0
454f0624: ae70         	add	r6, sp, #0x1c0
454f0626: 0000         	movs	r0, r0
