
firmware-analysis/CN-1651.1/rootfs/root/usr/bin/TIFSDaemon:	file format elf32-littlearm

Disassembly of section .text:

000587c4 <_Z27on_set_parameter_and_opcodeP15_FactoryServiceP22_GDBusMethodInvocationjjjP16FacValueObject_s>:
   587c4: e92d 47f0    	push.w	{r4, r5, r6, r7, r8, r9, r10, lr}
   587c8: 4604         	mov	r4, r0
   587ca: f8df 814c    	ldr.w	r8, [pc, #0x14c]        @ 0x58918 <_Z27on_set_parameter_and_opcodeP15_FactoryServiceP22_GDBusMethodInvocationjjjP16FacValueObject_s+0x154>
   587ce: b086         	sub	sp, #0x18
   587d0: 4615         	mov	r5, r2
   587d2: 461e         	mov	r6, r3
   587d4: 468a         	mov	r10, r1
   587d6: f64f 2758    	movw	r7, #0xfa58
   587da: f2c0 0708    	movt	r7, #0x8
   587de: f8dd 9038    	ldr.w	r9, [sp, #0x38]
   587e2: 2103         	movs	r1, #0x3
   587e4: 9203         	str	r2, [sp, #0xc]
   587e6: 2002         	movs	r0, #0x2
   587e8: f240 62f3    	movw	r2, #0x6f3
   587ec: 9304         	str	r3, [sp, #0x10]
   587ee: 9202         	str	r2, [sp, #0x8]
   587f0: f64f 2310    	movw	r3, #0xfa10
   587f4: f2c0 0308    	movt	r3, #0x8
   587f8: f249 22ec    	movw	r2, #0x92ec
   587fc: f2c0 0207    	movt	r2, #0x7
   58800: f8cd 9014    	str.w	r9, [sp, #0x14]
   58804: 9701         	str	r7, [sp, #0x4]
   58806: f8cd 8000    	str.w	r8, [sp]
   5880a: f7d5 ea48    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x2ab70
   5880e: 2c00         	cmp	r4, #0x0
   58810: d051         	beq	0x588b6 <_Z27on_set_parameter_and_opcodeP15_FactoryServiceP22_GDBusMethodInvocationjjjP16FacValueObject_s+0xf2> @ imm = #0xa2
   58812: f7fb fbc1    	bl	0x53f98 <_ZN8FCObject10GetControlEv> @ imm = #-0x487e
   58816: 4604         	mov	r4, r0
   58818: 2800         	cmp	r0, #0x0
   5881a: d05c         	beq	0x588d6 <_Z27on_set_parameter_and_opcodeP15_FactoryServiceP22_GDBusMethodInvocationjjjP16FacValueObject_s+0x112> @ imm = #0xb8
   5881c: 6803         	ldr	r3, [r0]
   5881e: 4632         	mov	r2, r6
   58820: f880 908c    	strb.w	r9, [r0, #0x8c]
   58824: 4629         	mov	r1, r5
   58826: 6adb         	ldr	r3, [r3, #0x2c]
   58828: 4798         	blx	r3
   5882a: 2375         	movs	r3, #0x75
   5882c: f884 308c    	strb.w	r3, [r4, #0x8c]
   58830: b1f8         	cbz	r0, 0x58872 <_Z27on_set_parameter_and_opcodeP15_FactoryServiceP22_GDBusMethodInvocationjjjP16FacValueObject_s+0xae> @ imm = #0x3e
   58832: 2106         	movs	r1, #0x6
   58834: f240 720a    	movw	r2, #0x70a
   58838: e9cd 8700    	strd	r8, r7, [sp]
   5883c: 2002         	movs	r0, #0x2
   5883e: 9202         	str	r2, [sp, #0x8]
   58840: f64f 3324    	movw	r3, #0xfb24
   58844: f2c0 0308    	movt	r3, #0x8
   58848: f249 22ec    	movw	r2, #0x92ec
   5884c: f2c0 0207    	movt	r2, #0x7
   58850: f7d5 ea24    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x2abb8
   58854: 2100         	movs	r1, #0x0
   58856: f64b 2034    	movw	r0, #0xba34
   5885a: f2c0 0008    	movt	r0, #0x8
   5885e: f7d4 eeac    	blx	0x2d5b8 <g_variant_new@plt> @ imm = #-0x2b2a8
   58862: 4601         	mov	r1, r0
   58864: 4650         	mov	r0, r10
   58866: f7d9 f9fd    	bl	0x31c64 <_ZN24FCStringForFactoryKeyHTV36m_ConvertValueToStrDoorEyeSrcRetTimeEjiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x184> @ imm = #-0x26c06
   5886a: 2001         	movs	r0, #0x1
   5886c: b006         	add	sp, #0x18
   5886e: e8bd 87f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, pc}
   58872: f240 7102    	movw	r1, #0x702
   58876: e9cd 5603    	strd	r5, r6, [sp, #12]
   5887a: 9102         	str	r1, [sp, #0x8]
   5887c: 2002         	movs	r0, #0x2
   5887e: 2103         	movs	r1, #0x3
   58880: e9cd 8700    	strd	r8, r7, [sp]
   58884: f64f 23ec    	movw	r3, #0xfaec
   58888: f2c0 0308    	movt	r3, #0x8
   5888c: f249 22ec    	movw	r2, #0x92ec
   58890: f2c0 0207    	movt	r2, #0x7
   58894: f7d5 ea02    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x2abfc
   58898: 2101         	movs	r1, #0x1
   5889a: f64b 2034    	movw	r0, #0xba34
   5889e: f2c0 0008    	movt	r0, #0x8
   588a2: f7d4 ee8a    	blx	0x2d5b8 <g_variant_new@plt> @ imm = #-0x2b2ec
   588a6: 4601         	mov	r1, r0
   588a8: 4650         	mov	r0, r10
   588aa: f7d9 f9db    	bl	0x31c64 <_ZN24FCStringForFactoryKeyHTV36m_ConvertValueToStrDoorEyeSrcRetTimeEjiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x184> @ imm = #-0x26c4a
   588ae: 2001         	movs	r0, #0x1
   588b0: b006         	add	sp, #0x18
   588b2: e8bd 87f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, pc}
   588b6: f24e 0264    	movw	r2, #0xe064
   588ba: f2c0 0208    	movt	r2, #0x8
   588be: f64f 2374    	movw	r3, #0xfa74
   588c2: f2c0 0308    	movt	r3, #0x8
   588c6: 9200         	str	r2, [sp]
   588c8: f1a8 0147    	sub.w	r1, r8, #0x47
   588cc: 4620         	mov	r0, r4
   588ce: f240 62f5    	movw	r2, #0x6f5
   588d2: f7d4 eca6    	blx	0x2d220 <g_assertion_message_expr@plt> @ imm = #-0x2b6b4
   588d6: 2106         	movs	r1, #0x6
   588d8: 9701         	str	r7, [sp, #0x4]
   588da: f240 62f9    	movw	r2, #0x6f9
   588de: f8cd 8000    	str.w	r8, [sp]
   588e2: 9202         	str	r2, [sp, #0x8]
   588e4: 2002         	movs	r0, #0x2
   588e6: f64f 13dc    	movw	r3, #0xf9dc
   588ea: f2c0 0308    	movt	r3, #0x8
   588ee: f249 22ec    	movw	r2, #0x92ec
   588f2: f2c0 0207    	movt	r2, #0x7
   588f6: f7d5 e9d2    	blx	0x2dc9c <__dlog_print@plt> @ imm = #-0x2ac5c
   588fa: 4621         	mov	r1, r4
   588fc: f64b 2034    	movw	r0, #0xba34
   58900: f2c0 0008    	movt	r0, #0x8
   58904: f7d4 ee58    	blx	0x2d5b8 <g_variant_new@plt> @ imm = #-0x2b350
   58908: 4601         	mov	r1, r0
   5890a: 4650         	mov	r0, r10
   5890c: f7d9 f9aa    	bl	0x31c64 <_ZN24FCStringForFactoryKeyHTV36m_ConvertValueToStrDoorEyeSrcRetTimeEjiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x184> @ imm = #-0x26cac
   58910: 2001         	movs	r0, #0x1
   58912: b006         	add	sp, #0x18
   58914: e8bd 87f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, pc}
   58918: db63         	blt	0x589e2 <_Z20on_set_decimal_valueP15_FactoryServiceP22_GDBusMethodInvocationjjP16FacValueObject_s+0xc6> @ imm = #0xc6
   5891a: 0008         	movs	r0, r1
