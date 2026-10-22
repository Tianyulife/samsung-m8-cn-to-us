
firmware-analysis/CN-1651.1/rootfs/root/usr/bin/TIFSDaemon:	file format elf32-littlearm

Disassembly of section .text:

0007520c <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE>:
   7520c: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
   75210: 2300         	movs	r3, #0x0
   75212: 460d         	mov	r5, r1
   75214: f2ad 4d84    	subw	sp, sp, #0x484
   75218: 4619         	mov	r1, r3
   7521a: 4692         	mov	r10, r2
   7521c: 4606         	mov	r6, r0
   7521e: f44f 72b6    	mov.w	r2, #0x16c
   75222: a80e         	add	r0, sp, #0x38
   75224: f648 64a0    	movw	r4, #0x8ea0
   75228: f2c0 0409    	movt	r4, #0x9
   7522c: 6824         	ldr	r4, [r4]
   7522e: f8cd 447c    	str.w	r4, [sp, #0x47c]
   75232: f04f 0400    	mov.w	r4, #0x0
   75236: e9cd 3309    	strd	r3, r3, [sp, #36]
   7523a: f7b8 eb8c    	blx	0x2d954 <memset@plt>    @ imm = #-0x478e8
   7523e: 498d         	ldr	r1, [pc, #0x234]        @ 0x75474 <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0x268>
   75240: f248 43b8    	movw	r3, #0x84b8
   75244: f2c0 0309    	movt	r3, #0x9
   75248: f248 42bc    	movw	r2, #0x84bc
   7524c: f2c0 0209    	movt	r2, #0x9
   75250: f1ba 0f00    	cmp.w	r10, #0x0
   75254: bf08         	it	eq
   75256: 4613         	moveq	r3, r2
   75258: 2002         	movs	r0, #0x2
   7525a: f105 024c    	add.w	r2, r5, #0x4c
   7525e: e9cd 2303    	strd	r2, r3, [sp, #12]
   75262: f240 42ac    	movw	r2, #0x4ac
   75266: f64b 4378    	movw	r3, #0xbc78
   7526a: f2c0 0308    	movt	r3, #0x8
   7526e: 9202         	str	r2, [sp, #0x8]
   75270: e9cd 1300    	strd	r1, r3, [sp]
   75274: f249 22ec    	movw	r2, #0x92ec
   75278: f2c0 0207    	movt	r2, #0x7
   7527c: 2103         	movs	r1, #0x3
   7527e: f248 43c8    	movw	r3, #0x84c8
   75282: f2c0 0309    	movt	r3, #0x9
   75286: f7b8 ed0a    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x475ec
   7528a: f8d5 3168    	ldr.w	r3, [r5, #0x168]
   7528e: b10b         	cbz	r3, 0x75294 <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0x88> @ imm = #0x2
   75290: 686c         	ldr	r4, [r5, #0x4]
   75292: b364         	cbz	r4, 0x752ee <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0xe2> @ imm = #0x58
   75294: f8d5 3164    	ldr.w	r3, [r5, #0x164]
   75298: b1cb         	cbz	r3, 0x752ce <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0xc2> @ imm = #0x32
   7529a: 4629         	mov	r1, r5
   7529c: 68b0         	ldr	r0, [r6, #0x8]
   7529e: f7b7 eff6    	blx	0x2d28c <_ZN19FCStorageBaseCommon8MakeTPIdEP13FacItemNode_s@plt> @ imm = #-0x48014
   752a2: aa0e         	add	r2, sp, #0x38
   752a4: 4601         	mov	r1, r0
   752a6: 4607         	mov	r7, r0
   752a8: 68b0         	ldr	r0, [r6, #0x8]
   752aa: f7b7 efb4    	blx	0x2d214 <_ZN19FCStorageBaseCommon14GetFactoryItemEiP13FacItemNode_s@plt> @ imm = #-0x48098
   752ae: 4605         	mov	r5, r0
   752b0: b968         	cbnz	r0, 0x752ce <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0xc2> @ imm = #0x1a
   752b2: 9b1a         	ldr	r3, [sp, #0x68]
   752b4: 3b02         	subs	r3, #0x2
   752b6: 2b37         	cmp	r3, #0x37
   752b8: f240 80ae    	bls.w	0x75418 <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0x20c> @ imm = #0x15c
   752bc: f7de fefe    	bl	0x540bc <_ZN8FCObject23GetControlItemExecutionEv> @ imm = #-0x21204
   752c0: 6803         	ldr	r3, [r0]
   752c2: 9a09         	ldr	r2, [sp, #0x24]
   752c4: a90e         	add	r1, sp, #0x38
   752c6: 689b         	ldr	r3, [r3, #0x8]
   752c8: 4798         	blx	r3
   752ca: 4305         	orrs	r5, r0
   752cc: e000         	b	0x752d0 <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0xc4> @ imm = #0x0
   752ce: 2500         	movs	r5, #0x0
   752d0: f648 63a0    	movw	r3, #0x8ea0
   752d4: f2c0 0309    	movt	r3, #0x9
   752d8: 681a         	ldr	r2, [r3]
   752da: f8dd 347c    	ldr.w	r3, [sp, #0x47c]
   752de: 405a         	eors	r2, r3
   752e0: f040 80b8    	bne.w	0x75454 <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0x248> @ imm = #0x170
   752e4: 4628         	mov	r0, r5
   752e6: f20d 4d84    	addw	sp, sp, #0x484
   752ea: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
   752ee: f10d 082c    	add.w	r8, sp, #0x2c
   752f2: f8d5 9024    	ldr.w	r9, [r5, #0x24]
   752f6: a8c4         	add	r0, sp, #0x310
   752f8: 4629         	mov	r1, r5
   752fa: f44f 72b6    	mov.w	r2, #0x16c
   752fe: f8c8 4008    	str.w	r4, [r8, #0x8]
   75302: e9c8 8800    	strd	r8, r8, [r8]
   75306: f7b8 eeac    	blx	0x2e060 <memcpy@plt>    @ imm = #-0x472a8
   7530a: f1b9 0f00    	cmp.w	r9, #0x0
   7530e: ddde         	ble	0x752ce <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0xc2> @ imm = #-0x44
   75310: af69         	add	r7, sp, #0x1a4
   75312: 4625         	mov	r5, r4
   75314: e001         	b	0x7531a <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0x10e> @ imm = #0x2
   75316: 45a1         	cmp	r9, r4
   75318: dd1f         	ble	0x7535a <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0x14e> @ imm = #0x3e
   7531a: 68b0         	ldr	r0, [r6, #0x8]
   7531c: 4622         	mov	r2, r4
   7531e: a9c4         	add	r1, sp, #0x310
   75320: f7b7 efa8    	blx	0x2d274 <_ZN19FCStorageBaseCommon22MakeTPIdWithChildIndexEP13FacItemNode_si@plt> @ imm = #-0x480b0
   75324: 4683         	mov	r11, r0
   75326: aa0e         	add	r2, sp, #0x38
   75328: 68b0         	ldr	r0, [r6, #0x8]
   7532a: 4659         	mov	r1, r11
   7532c: f7b7 ef72    	blx	0x2d214 <_ZN19FCStorageBaseCommon14GetFactoryItemEiP13FacItemNode_s@plt> @ imm = #-0x4811c
   75330: 9b0f         	ldr	r3, [sp, #0x3c]
   75332: 4305         	orrs	r5, r0
   75334: 2b00         	cmp	r3, #0x0
   75336: d038         	beq	0x753aa <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0x19e> @ imm = #0x70
   75338: 9b1a         	ldr	r3, [sp, #0x68]
   7533a: 3b02         	subs	r3, #0x2
   7533c: 2b37         	cmp	r3, #0x37
   7533e: d917         	bls	0x75370 <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0x164> @ imm = #0x2e
   75340: f109 33ff    	add.w	r3, r9, #0xffffffff
   75344: 42a3         	cmp	r3, r4
   75346: bf18         	it	ne
   75348: 3401         	addne	r4, #0x1
   7534a: d1e4         	bne	0x75316 <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0x10a> @ imm = #-0x38
   7534c: f8d8 3008    	ldr.w	r3, [r8, #0x8]
   75350: 2b00         	cmp	r3, #0x0
   75352: d13d         	bne	0x753d0 <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0x1c4> @ imm = #0x7a
   75354: 464c         	mov	r4, r9
   75356: 45a1         	cmp	r9, r4
   75358: dcdf         	bgt	0x7531a <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0x10e> @ imm = #-0x42
   7535a: f8d8 4000    	ldr.w	r4, [r8]
   7535e: 4544         	cmp	r4, r8
   75360: d0b6         	beq	0x752d0 <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0xc4> @ imm = #-0x94
   75362: 4620         	mov	r0, r4
   75364: 6824         	ldr	r4, [r4]
   75366: f7b8 e8d6    	blx	0x2d514 <_ZdlPv@plt>    @ imm = #-0x47e54
   7536a: 4544         	cmp	r4, r8
   7536c: d1f9         	bne	0x75362 <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0x156> @ imm = #-0xe
   7536e: e7af         	b	0x752d0 <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0xc4> @ imm = #-0xa2
   75370: f06f 0227    	mvn	r2, #0x27
   75374: 9200         	str	r2, [sp]
   75376: 4659         	mov	r1, r11
   75378: 4653         	mov	r3, r10
   7537a: 68b0         	ldr	r0, [r6, #0x8]
   7537c: aa0a         	add	r2, sp, #0x28
   7537e: f7b8 ebf8    	blx	0x2db70 <_ZN19FCStorageBaseCommon18GetFactoryItemDataEiPiNS_19FacRepositoryMode_eEi@plt> @ imm = #-0x47810
   75382: 9b1e         	ldr	r3, [sp, #0x78]
   75384: 4305         	orrs	r5, r0
   75386: 990a         	ldr	r1, [sp, #0x28]
   75388: 2ba5         	cmp	r3, #0xa5
   7538a: 9109         	str	r1, [sp, #0x24]
   7538c: d13c         	bne	0x75408 <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0x1fc> @ imm = #0x78
   7538e: 68f0         	ldr	r0, [r6, #0xc]
   75390: 6803         	ldr	r3, [r0]
   75392: 68db         	ldr	r3, [r3, #0xc]
   75394: 4798         	blx	r3
   75396: 9009         	str	r0, [sp, #0x24]
   75398: f7de fe90    	bl	0x540bc <_ZN8FCObject23GetControlItemExecutionEv> @ imm = #-0x212e0
   7539c: 6803         	ldr	r3, [r0]
   7539e: a90e         	add	r1, sp, #0x38
   753a0: 9a09         	ldr	r2, [sp, #0x24]
   753a2: 689b         	ldr	r3, [r3, #0x8]
   753a4: 4798         	blx	r3
   753a6: 4305         	orrs	r5, r0
   753a8: e7ca         	b	0x75340 <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0x134> @ imm = #-0x6c
   753aa: f44f 72b6    	mov.w	r2, #0x16c
   753ae: a90e         	add	r1, sp, #0x38
   753b0: 4638         	mov	r0, r7
   753b2: f7b8 ee56    	blx	0x2e060 <memcpy@plt>    @ imm = #-0x47354
   753b6: 200c         	movs	r0, #0xc
   753b8: f7b8 e8e4    	blx	0x2d584 <_Znwj@plt>     @ imm = #-0x47e38
   753bc: 4641         	mov	r1, r8
   753be: 6087         	str	r7, [r0, #0x8]
   753c0: f7b7 ef52    	blx	0x2d268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_@plt> @ imm = #-0x4815c
   753c4: f8d8 3008    	ldr.w	r3, [r8, #0x8]
   753c8: 3301         	adds	r3, #0x1
   753ca: f8c8 3008    	str.w	r3, [r8, #0x8]
   753ce: e7b3         	b	0x75338 <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0x12c> @ imm = #-0x9a
   753d0: f8d8 b000    	ldr.w	r11, [r8]
   753d4: 9307         	str	r3, [sp, #0x1c]
   753d6: 45c3         	cmp	r11, r8
   753d8: bf08         	it	eq
   753da: 2400         	moveq	r4, #0x0
   753dc: d09b         	beq	0x75316 <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0x10a> @ imm = #-0xca
   753de: f8db c008    	ldr.w	r12, [r11, #0x8]
   753e2: f44f 72b6    	mov.w	r2, #0x16c
   753e6: a8c4         	add	r0, sp, #0x310
   753e8: 2400         	movs	r4, #0x0
   753ea: e9dc 9109    	ldrd	r9, r1, [r12, #36]
   753ee: f7b8 ee38    	blx	0x2e060 <memcpy@plt>    @ imm = #-0x47390
   753f2: 9b07         	ldr	r3, [sp, #0x1c]
   753f4: 4658         	mov	r0, r11
   753f6: 3b01         	subs	r3, #0x1
   753f8: f8c8 3008    	str.w	r3, [r8, #0x8]
   753fc: f7b9 e8f0    	blx	0x2e5e0 <_ZNSt8__detail15_List_node_base9_M_unhookEv@plt> @ imm = #-0x46e20
   75400: 4658         	mov	r0, r11
   75402: f7b8 e888    	blx	0x2d514 <_ZdlPv@plt>    @ imm = #-0x47ef0
   75406: e786         	b	0x75316 <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0x10a> @ imm = #-0xf4
   75408: 460a         	mov	r2, r1
   7540a: 68b0         	ldr	r0, [r6, #0x8]
   7540c: ab09         	add	r3, sp, #0x24
   7540e: a90e         	add	r1, sp, #0x38
   75410: f7b8 eca4    	blx	0x2dd5c <_ZN19FCStorageBaseCommon29ConvertControlDataToStoreDataEP13FacItemNode_siPi@plt> @ imm = #-0x476b8
   75414: 4305         	orrs	r5, r0
   75416: e7bf         	b	0x75398 <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0x18c> @ imm = #-0x82
   75418: f06f 0027    	mvn	r0, #0x27
   7541c: 9000         	str	r0, [sp]
   7541e: 4653         	mov	r3, r10
   75420: 4639         	mov	r1, r7
   75422: aa0a         	add	r2, sp, #0x28
   75424: 68b0         	ldr	r0, [r6, #0x8]
   75426: f7b8 eba4    	blx	0x2db70 <_ZN19FCStorageBaseCommon18GetFactoryItemDataEiPiNS_19FacRepositoryMode_eEi@plt> @ imm = #-0x478b8
   7542a: 9a0a         	ldr	r2, [sp, #0x28]
   7542c: 4604         	mov	r4, r0
   7542e: ab09         	add	r3, sp, #0x24
   75430: 68b0         	ldr	r0, [r6, #0x8]
   75432: a90e         	add	r1, sp, #0x38
   75434: 9209         	str	r2, [sp, #0x24]
   75436: f7b8 ec92    	blx	0x2dd5c <_ZN19FCStorageBaseCommon29ConvertControlDataToStoreDataEP13FacItemNode_siPi@plt> @ imm = #-0x476dc
   7543a: 9b1e         	ldr	r3, [sp, #0x78]
   7543c: ea44 0500    	orr.w	r5, r4, r0
   75440: 2ba5         	cmp	r3, #0xa5
   75442: f47f af3b    	bne.w	0x752bc <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0xb0> @ imm = #-0x18a
   75446: 68f0         	ldr	r0, [r6, #0xc]
   75448: 9909         	ldr	r1, [sp, #0x24]
   7544a: 6803         	ldr	r3, [r0]
   7544c: 68db         	ldr	r3, [r3, #0xc]
   7544e: 4798         	blx	r3
   75450: 9009         	str	r0, [sp, #0x24]
   75452: e733         	b	0x752bc <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0xb0> @ imm = #-0x19a
   75454: f7b7 ef6e    	blx	0x2d334 <__stack_chk_fail@plt> @ imm = #-0x48124
   75458: f8d8 3000    	ldr.w	r3, [r8]
   7545c: 4604         	mov	r4, r0
   7545e: 4543         	cmp	r3, r8
   75460: d102         	bne	0x75468 <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0x25c> @ imm = #0x4
   75462: 4620         	mov	r0, r4
   75464: f7b8 e91c    	blx	0x2d6a0 <_Unwind_Resume@plt> @ imm = #-0x47dc8
   75468: 681d         	ldr	r5, [r3]
   7546a: 4618         	mov	r0, r3
   7546c: f7b8 e852    	blx	0x2d514 <_ZdlPv@plt>    @ imm = #-0x47f5c
   75470: 462b         	mov	r3, r5
   75472: e7f4         	b	0x7545e <_ZN9FCControl12SetParameterEP13FacItemNode_sN19FCStorageBaseCommon19FacRepositoryMode_eE+0x252> @ imm = #-0x18
   75474: 5ce3         	ldrb	r3, [r4, r3]
   75476: 0009         	movs	r1, r1
