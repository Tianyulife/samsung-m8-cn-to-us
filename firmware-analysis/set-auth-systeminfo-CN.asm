
region-inspector/comss:	file format elf32-littlearm

Disassembly of section .text:

000124c4 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO>:
   124c4: 4acd         	ldr	r2, [pc, #0x334]        @ 0x127fc <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x338>
   124c6: 4bce         	ldr	r3, [pc, #0x338]        @ 0x12800 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x33c>
   124c8: 447a         	add	r2, pc
   124ca: e92d 43f0    	push.w	{r4, r5, r6, r7, r8, r9, lr}
   124ce: 460c         	mov	r4, r1
   124d0: b09b         	sub	sp, #0x6c
   124d2: 4607         	mov	r7, r0
   124d4: 58d3         	ldr	r3, [r2, r3]
   124d6: ae13         	add	r6, sp, #0x4c
   124d8: e9d1 1200    	ldrd	r1, r2, [r1]
   124dc: 4630         	mov	r0, r6
   124de: 681b         	ldr	r3, [r3]
   124e0: 9319         	str	r3, [sp, #0x64]
   124e2: f04f 0300    	mov.w	r3, #0x0
   124e6: ad15         	add	r5, sp, #0x54
   124e8: 440a         	add	r2, r1
   124ea: 9513         	str	r5, [sp, #0x4c]
   124ec: f7fb fd96    	bl	0xe01c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x44d4
   124f0: 4631         	mov	r1, r6
   124f2: 4638         	mov	r0, r7
   124f4: f7fe f8cc    	bl	0x10690 <_ZN7CAIAuth14SetProductCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x1e68
   124f8: 9813         	ldr	r0, [sp, #0x4c]
   124fa: 42a8         	cmp	r0, r5
   124fc: d001         	beq	0x12502 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x3e> @ imm = #0x2
   124fe: f7fa ee52    	blx	0xd1a4 <_ZdlPv@plt>     @ imm = #-0x535c
   12502: 69e1         	ldr	r1, [r4, #0x1c]
   12504: 4630         	mov	r0, r6
   12506: 6a22         	ldr	r2, [r4, #0x20]
   12508: 9513         	str	r5, [sp, #0x4c]
   1250a: 440a         	add	r2, r1
   1250c: f7fb fd86    	bl	0xe01c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x44f4
   12510: 4631         	mov	r1, r6
   12512: 4638         	mov	r0, r7
   12514: f7fe f898    	bl	0x10648 <_ZN7CAIAuth10SetDisplayENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x1ed0
   12518: 9813         	ldr	r0, [sp, #0x4c]
   1251a: 42a8         	cmp	r0, r5
   1251c: d001         	beq	0x12522 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x5e> @ imm = #0x2
   1251e: f7fa ee42    	blx	0xd1a4 <_ZdlPv@plt>     @ imm = #-0x537c
   12522: 6b61         	ldr	r1, [r4, #0x34]
   12524: 4630         	mov	r0, r6
   12526: 6ba2         	ldr	r2, [r4, #0x38]
   12528: 9513         	str	r5, [sp, #0x4c]
   1252a: 440a         	add	r2, r1
   1252c: f7fb fd76    	bl	0xe01c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x4514
   12530: 4631         	mov	r1, r6
   12532: 4638         	mov	r0, r7
   12534: f7fe f864    	bl	0x10600 <_ZN7CAIAuth10SetChipsetENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x1f38
   12538: 9813         	ldr	r0, [sp, #0x4c]
   1253a: 42a8         	cmp	r0, r5
   1253c: d001         	beq	0x12542 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x7e> @ imm = #0x2
   1253e: f7fa ee32    	blx	0xd1a4 <_ZdlPv@plt>     @ imm = #-0x539c
   12542: 6ce1         	ldr	r1, [r4, #0x4c]
   12544: 4630         	mov	r0, r6
   12546: 6d22         	ldr	r2, [r4, #0x50]
   12548: 9513         	str	r5, [sp, #0x4c]
   1254a: 440a         	add	r2, r1
   1254c: f7fb fd66    	bl	0xe01c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x4534
   12550: 4631         	mov	r1, r6
   12552: 4638         	mov	r0, r7
   12554: f7fe f830    	bl	0x105b8 <_ZN7CAIAuth9SetLineupENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x1fa0
   12558: 9813         	ldr	r0, [sp, #0x4c]
   1255a: 42a8         	cmp	r0, r5
   1255c: d001         	beq	0x12562 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x9e> @ imm = #0x2
   1255e: f7fa ee22    	blx	0xd1a4 <_ZdlPv@plt>     @ imm = #-0x53bc
   12562: 6e61         	ldr	r1, [r4, #0x64]
   12564: 4630         	mov	r0, r6
   12566: 6ea2         	ldr	r2, [r4, #0x68]
   12568: 9513         	str	r5, [sp, #0x4c]
   1256a: 440a         	add	r2, r1
   1256c: f7fb fd56    	bl	0xe01c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x4554
   12570: 4631         	mov	r1, r6
   12572: 4638         	mov	r0, r7
   12574: f7fd fffc    	bl	0x10570 <_ZN7CAIAuth11SetBomModelENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x2008
   12578: 9813         	ldr	r0, [sp, #0x4c]
   1257a: 42a8         	cmp	r0, r5
   1257c: d001         	beq	0x12582 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0xbe> @ imm = #0x2
   1257e: f7fa ee12    	blx	0xd1a4 <_ZdlPv@plt>     @ imm = #-0x53dc
   12582: 6fe1         	ldr	r1, [r4, #0x7c]
   12584: 4630         	mov	r0, r6
   12586: f8d4 2080    	ldr.w	r2, [r4, #0x80]
   1258a: 9513         	str	r5, [sp, #0x4c]
   1258c: 440a         	add	r2, r1
   1258e: f7fb fd45    	bl	0xe01c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x4576
   12592: 4631         	mov	r1, r6
   12594: 4638         	mov	r0, r7
   12596: f7fd ffc7    	bl	0x10528 <_ZN7CAIAuth11SetLocalsetENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x2072
   1259a: 9813         	ldr	r0, [sp, #0x4c]
   1259c: 42a8         	cmp	r0, r5
   1259e: d001         	beq	0x125a4 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0xe0> @ imm = #0x2
   125a0: f7fa ee00    	blx	0xd1a4 <_ZdlPv@plt>     @ imm = #-0x5400
   125a4: f8d4 1094    	ldr.w	r1, [r4, #0x94]
   125a8: 4630         	mov	r0, r6
   125aa: f8d4 2098    	ldr.w	r2, [r4, #0x98]
   125ae: 9513         	str	r5, [sp, #0x4c]
   125b0: 440a         	add	r2, r1
   125b2: f7fb fd33    	bl	0xe01c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x459a
   125b6: 4631         	mov	r1, r6
   125b8: 4638         	mov	r0, r7
   125ba: f7fd ff91    	bl	0x104e0 <_ZN7CAIAuth14SetCountryCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x20de
   125be: 9813         	ldr	r0, [sp, #0x4c]
   125c0: 42a8         	cmp	r0, r5
   125c2: d001         	beq	0x125c8 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x104> @ imm = #0x2
   125c4: f7fa edee    	blx	0xd1a4 <_ZdlPv@plt>     @ imm = #-0x5424
   125c8: f8d4 10ac    	ldr.w	r1, [r4, #0xac]
   125cc: 4630         	mov	r0, r6
   125ce: f8d4 20b0    	ldr.w	r2, [r4, #0xb0]
   125d2: 9513         	str	r5, [sp, #0x4c]
   125d4: 440a         	add	r2, r1
   125d6: f7fb fd21    	bl	0xe01c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x45be
   125da: 4631         	mov	r1, r6
   125dc: 4638         	mov	r0, r7
   125de: f7fd f9bf    	bl	0xf960 <_ZN7CAIAuth12SetTVVersionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x2c82
   125e2: 9813         	ldr	r0, [sp, #0x4c]
   125e4: 42a8         	cmp	r0, r5
   125e6: d001         	beq	0x125ec <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x128> @ imm = #0x2
   125e8: f7fa eddc    	blx	0xd1a4 <_ZdlPv@plt>     @ imm = #-0x5448
   125ec: f107 0804    	add.w	r8, r7, #0x4
   125f0: f8d4 90e0    	ldr.w	r9, [r4, #0xe0]
   125f4: 4640         	mov	r0, r8
   125f6: f7fa ed9e    	blx	0xd134 <pthread_mutex_lock@plt> @ imm = #-0x54c4
   125fa: f8c7 9124    	str.w	r9, [r7, #0x124]
   125fe: 4640         	mov	r0, r8
   12600: f7fb e912    	blx	0xd828 <pthread_mutex_unlock@plt> @ imm = #-0x4ddc
   12604: f8d4 90dc    	ldr.w	r9, [r4, #0xdc]
   12608: 4640         	mov	r0, r8
   1260a: f7fa ed94    	blx	0xd134 <pthread_mutex_lock@plt> @ imm = #-0x54d8
   1260e: 4640         	mov	r0, r8
   12610: f8c7 9128    	str.w	r9, [r7, #0x128]
   12614: f7fb e908    	blx	0xd828 <pthread_mutex_unlock@plt> @ imm = #-0x4df0
   12618: 4630         	mov	r0, r6
   1261a: e9d4 1231    	ldrd	r1, r2, [r4, #196]
   1261e: 9513         	str	r5, [sp, #0x4c]
   12620: 440a         	add	r2, r1
   12622: f7fb fcfb    	bl	0xe01c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x460a
   12626: 4631         	mov	r1, r6
   12628: 4638         	mov	r0, r7
   1262a: f7fc fb77    	bl	0xed1c <_ZN7CAIAuth14SetStrLanguageENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x3912
   1262e: 9813         	ldr	r0, [sp, #0x4c]
   12630: 42a8         	cmp	r0, r5
   12632: d001         	beq	0x12638 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x174> @ imm = #0x2
   12634: f7fa edb6    	blx	0xd1a4 <_ZdlPv@plt>     @ imm = #-0x5494
   12638: f8d4 90ec    	ldr.w	r9, [r4, #0xec]
   1263c: 4640         	mov	r0, r8
   1263e: f7fa ed7a    	blx	0xd134 <pthread_mutex_lock@plt> @ imm = #-0x550c
   12642: f8c7 92e8    	str.w	r9, [r7, #0x2e8]
   12646: 4640         	mov	r0, r8
   12648: f7fb e8ee    	blx	0xd828 <pthread_mutex_unlock@plt> @ imm = #-0x4e24
   1264c: f8d4 90f0    	ldr.w	r9, [r4, #0xf0]
   12650: 4640         	mov	r0, r8
   12652: f7fa ed70    	blx	0xd134 <pthread_mutex_lock@plt> @ imm = #-0x5520
   12656: f8c7 92ec    	str.w	r9, [r7, #0x2ec]
   1265a: 4640         	mov	r0, r8
   1265c: f7fb e8e4    	blx	0xd828 <pthread_mutex_unlock@plt> @ imm = #-0x4e38
   12660: f8d4 90e8    	ldr.w	r9, [r4, #0xe8]
   12664: 4640         	mov	r0, r8
   12666: f7fa ed66    	blx	0xd134 <pthread_mutex_lock@plt> @ imm = #-0x5534
   1266a: 4640         	mov	r0, r8
   1266c: f8c7 92cc    	str.w	r9, [r7, #0x2cc]
   12670: f7fb e8da    	blx	0xd828 <pthread_mutex_unlock@plt> @ imm = #-0x4e4c
   12674: 4630         	mov	r0, r6
   12676: e9d4 123f    	ldrd	r1, r2, [r4, #252]
   1267a: 9513         	str	r5, [sp, #0x4c]
   1267c: 440a         	add	r2, r1
   1267e: f7fb fccd    	bl	0xe01c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x4666
   12682: 4631         	mov	r1, r6
   12684: 4638         	mov	r0, r7
   12686: f7fd fcc1    	bl	0x1000c <_ZN7CAIAuth15SetSerialNumberENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x267e
   1268a: 9813         	ldr	r0, [sp, #0x4c]
   1268c: 42a8         	cmp	r0, r5
   1268e: d001         	beq	0x12694 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x1d0> @ imm = #0x2
   12690: f7fa ed88    	blx	0xd1a4 <_ZdlPv@plt>     @ imm = #-0x54f0
   12694: f8d4 30e8    	ldr.w	r3, [r4, #0xe8]
   12698: 2b00         	cmp	r3, #0x0
   1269a: d065         	beq	0x12768 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x2a4> @ imm = #0xca
   1269c: 2b01         	cmp	r3, #0x1
   1269e: d056         	beq	0x1274e <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x28a> @ imm = #0xac
   126a0: 4958         	ldr	r1, [pc, #0x160]        @ 0x12804 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x340>
   126a2: 4630         	mov	r0, r6
   126a4: 9513         	str	r5, [sp, #0x4c]
   126a6: 4479         	add	r1, pc
   126a8: f101 020a    	add.w	r2, r1, #0xa
   126ac: f7fb fcb6    	bl	0xe01c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x4694
   126b0: 4631         	mov	r1, r6
   126b2: 4638         	mov	r0, r7
   126b4: f7fc fae4    	bl	0xec80 <_ZN7CAIAuth22SetStrInforlinkSerTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x3a38
   126b8: 9813         	ldr	r0, [sp, #0x4c]
   126ba: 42a8         	cmp	r0, r5
   126bc: d001         	beq	0x126c2 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x1fe> @ imm = #0x2
   126be: f7fa ed72    	blx	0xd1a4 <_ZdlPv@plt>     @ imm = #-0x551c
   126c2: 4638         	mov	r0, r7
   126c4: f7ff fc80    	bl	0x11fc8 <_ZN7CAIAuth18SetFirmSecuSeedKeyEv> @ imm = #-0x700
   126c8: 2800         	cmp	r0, #0x0
   126ca: d05a         	beq	0x12782 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x2be> @ imm = #0xb4
   126cc: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x12808 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x344>
   126ce: 2105         	movs	r1, #0x5
   126d0: f8d4 60ec    	ldr.w	r6, [r4, #0xec]
   126d4: 2000         	movs	r0, #0x0
   126d6: 447b         	add	r3, pc
   126d8: f240 6534    	movw	r5, #0x634
   126dc: 3353         	adds	r3, #0x53
   126de: 9300         	str	r3, [sp]
   126e0: f8d4 20f0    	ldr.w	r2, [r4, #0xf0]
   126e4: 9610         	str	r6, [sp, #0x40]
   126e6: f8d4 30e8    	ldr.w	r3, [r4, #0xe8]
   126ea: 920f         	str	r2, [sp, #0x3c]
   126ec: f8d4 20c4    	ldr.w	r2, [r4, #0xc4]
   126f0: 930e         	str	r3, [sp, #0x38]
   126f2: f8d4 30dc    	ldr.w	r3, [r4, #0xdc]
   126f6: 920d         	str	r2, [sp, #0x34]
   126f8: f8d4 20e0    	ldr.w	r2, [r4, #0xe0]
   126fc: 930c         	str	r3, [sp, #0x30]
   126fe: f8d4 30ac    	ldr.w	r3, [r4, #0xac]
   12702: 920b         	str	r2, [sp, #0x2c]
   12704: f8d4 2094    	ldr.w	r2, [r4, #0x94]
   12708: 930a         	str	r3, [sp, #0x28]
   1270a: 6fe3         	ldr	r3, [r4, #0x7c]
   1270c: 9209         	str	r2, [sp, #0x24]
   1270e: 6e62         	ldr	r2, [r4, #0x64]
   12710: 9308         	str	r3, [sp, #0x20]
   12712: 6ce3         	ldr	r3, [r4, #0x4c]
   12714: 9207         	str	r2, [sp, #0x1c]
   12716: 6b66         	ldr	r6, [r4, #0x34]
   12718: 9306         	str	r3, [sp, #0x18]
   1271a: 69e3         	ldr	r3, [r4, #0x1c]
   1271c: 6822         	ldr	r2, [r4]
   1271e: 9203         	str	r2, [sp, #0xc]
   12720: 9304         	str	r3, [sp, #0x10]
   12722: 4a3a         	ldr	r2, [pc, #0xe8]         @ 0x1280c <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x348>
   12724: 4b3a         	ldr	r3, [pc, #0xe8]         @ 0x12810 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x34c>
   12726: 4c3b         	ldr	r4, [pc, #0xec]         @ 0x12814 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x350>
   12728: 447a         	add	r2, pc
   1272a: 447b         	add	r3, pc
   1272c: 9605         	str	r6, [sp, #0x14]
   1272e: 447c         	add	r4, pc
   12730: e9cd 4501    	strd	r4, r5, [sp, #4]
   12734: f7fa eb94    	blx	0xce60 <__dlog_print@plt> @ imm = #-0x58d8
   12738: 4a37         	ldr	r2, [pc, #0xdc]         @ 0x12818 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x354>
   1273a: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x12800 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x33c>
   1273c: 447a         	add	r2, pc
   1273e: 58d3         	ldr	r3, [r2, r3]
   12740: 681a         	ldr	r2, [r3]
   12742: 9b19         	ldr	r3, [sp, #0x64]
   12744: 405a         	eors	r2, r3
   12746: d141         	bne	0x127cc <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x308> @ imm = #0x82
   12748: b01b         	add	sp, #0x6c
   1274a: e8bd 83f0    	pop.w	{r4, r5, r6, r7, r8, r9, pc}
   1274e: 4933         	ldr	r1, [pc, #0xcc]         @ 0x1281c <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x358>
   12750: 4630         	mov	r0, r6
   12752: 9513         	str	r5, [sp, #0x4c]
   12754: 4479         	add	r1, pc
   12756: f101 020b    	add.w	r2, r1, #0xb
   1275a: f7fb fc5f    	bl	0xe01c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x4742
   1275e: 4631         	mov	r1, r6
   12760: 4638         	mov	r0, r7
   12762: f7fc fa8d    	bl	0xec80 <_ZN7CAIAuth22SetStrInforlinkSerTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x3ae6
   12766: e7a7         	b	0x126b8 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x1f4> @ imm = #-0xb2
   12768: 492d         	ldr	r1, [pc, #0xb4]         @ 0x12820 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x35c>
   1276a: 4630         	mov	r0, r6
   1276c: 9513         	str	r5, [sp, #0x4c]
   1276e: 4479         	add	r1, pc
   12770: f101 0209    	add.w	r2, r1, #0x9
   12774: f7fb fc52    	bl	0xe01c <_ZN7CAIAuthD0Ev+0x14> @ imm = #-0x475c
   12778: 4631         	mov	r1, r6
   1277a: 4638         	mov	r0, r7
   1277c: f7fc fa80    	bl	0xec80 <_ZN7CAIAuth22SetStrInforlinkSerTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE> @ imm = #-0x3b00
   12780: e79a         	b	0x126b8 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x1f4> @ imm = #-0xcc
   12782: 4d28         	ldr	r5, [pc, #0xa0]         @ 0x12824 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x360>
   12784: f240 632d    	movw	r3, #0x62d
   12788: 4e27         	ldr	r6, [pc, #0x9c]         @ 0x12828 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x364>
   1278a: 2106         	movs	r1, #0x6
   1278c: 9302         	str	r3, [sp, #0x8]
   1278e: 447d         	add	r5, pc
   12790: f8df 8098    	ldr.w	r8, [pc, #0x98]         @ 0x1282c <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x368>
   12794: 447e         	add	r6, pc
   12796: 4b26         	ldr	r3, [pc, #0x98]         @ 0x12830 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x36c>
   12798: 3553         	adds	r5, #0x53
   1279a: 44f8         	add	r8, pc
   1279c: 4632         	mov	r2, r6
   1279e: 447b         	add	r3, pc
   127a0: e9cd 5800    	strd	r5, r8, [sp]
   127a4: f7fa eb5c    	blx	0xce60 <__dlog_print@plt> @ imm = #-0x5948
   127a8: 4638         	mov	r0, r7
   127aa: f7ff fc0d    	bl	0x11fc8 <_ZN7CAIAuth18SetFirmSecuSeedKeyEv> @ imm = #-0x7e6
   127ae: 2800         	cmp	r0, #0x0
   127b0: d18c         	bne	0x126cc <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x208> @ imm = #-0xe8
   127b2: 4b20         	ldr	r3, [pc, #0x80]         @ 0x12834 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x370>
   127b4: 4632         	mov	r2, r6
   127b6: 9500         	str	r5, [sp]
   127b8: 2106         	movs	r1, #0x6
   127ba: f44f 65c6    	mov.w	r5, #0x630
   127be: 447b         	add	r3, pc
   127c0: f8cd 8004    	str.w	r8, [sp, #0x4]
   127c4: 9502         	str	r5, [sp, #0x8]
   127c6: f7fa eb4c    	blx	0xce60 <__dlog_print@plt> @ imm = #-0x5968
   127ca: e77f         	b	0x126cc <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x208> @ imm = #-0x102
   127cc: f7fa ebe6    	blx	0xcf9c <__stack_chk_fail@plt> @ imm = #-0x5834
   127d0: 9b13         	ldr	r3, [sp, #0x4c]
   127d2: 4604         	mov	r4, r0
   127d4: 42ab         	cmp	r3, r5
   127d6: d002         	beq	0x127de <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x31a> @ imm = #0x4
   127d8: 4618         	mov	r0, r3
   127da: f7fa ece4    	blx	0xd1a4 <_ZdlPv@plt>     @ imm = #-0x5638
   127de: 4620         	mov	r0, r4
   127e0: f7fa ed78    	blx	0xd2d4 <_Unwind_Resume@plt> @ imm = #-0x5510
   127e4: e7f4         	b	0x127d0 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x18
   127e6: e7f3         	b	0x127d0 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x1a
   127e8: e7f2         	b	0x127d0 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x1c
   127ea: e7f1         	b	0x127d0 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x1e
   127ec: e7f0         	b	0x127d0 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x20
   127ee: e7ef         	b	0x127d0 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x22
   127f0: e7ee         	b	0x127d0 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x24
   127f2: e7ed         	b	0x127d0 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x26
   127f4: e7ec         	b	0x127d0 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x28
   127f6: e7eb         	b	0x127d0 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x2a
   127f8: e7ea         	b	0x127d0 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x2c
   127fa: e7e9         	b	0x127d0 <_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO+0x30c> @ imm = #-0x2e
   127fc: 2b34         	cmp	r3, #0x34
   127fe: 0004         	movs	r4, r0
   12800: 03f8         	lsls	r0, r7, #0xf
   12802: 0000         	movs	r0, r0
   12804: 24a2         	movs	r4, #0xa2
   12806: 0002         	movs	r2, r0
   12808: 0b0e         	lsrs	r6, r1, #0xc
   1280a: 0002         	movs	r2, r0
   1280c: 08d8         	lsrs	r0, r3, #0x3
   1280e: 0002         	movs	r2, r0
   12810: 24d2         	movs	r4, #0xd2
   12812: 0002         	movs	r2, r0
   12814: 2476         	movs	r4, #0x76
   12816: 0002         	movs	r2, r0
   12818: 28c0         	cmp	r0, #0xc0
   1281a: 0004         	movs	r4, r0
   1281c: 23e8         	movs	r3, #0xe8
   1281e: 0002         	movs	r2, r0
   12820: 23c2         	movs	r3, #0xc2
   12822: 0002         	movs	r2, r0
   12824: 0a56         	lsrs	r6, r2, #0x9
   12826: 0002         	movs	r2, r0
   12828: 086c         	lsrs	r4, r5, #0x1
   1282a: 0002         	movs	r2, r0
   1282c: 240a         	movs	r4, #0xa
   1282e: 0002         	movs	r2, r0
   12830: 23b6         	movs	r3, #0xb6
   12832: 0002         	movs	r2, r0
   12834: 23fa         	movs	r3, #0xfa
   12836: 0002         	movs	r2, r0
