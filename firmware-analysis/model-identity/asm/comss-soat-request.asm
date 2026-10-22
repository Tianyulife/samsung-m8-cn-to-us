
firmware-analysis/US-1720.7/rootfs/root/usr/apps/comss/bin/comss:	file format elf32-littlearm

Disassembly of section .text:

00025ef8 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev>:
   25ef8: 4a95         	ldr	r2, [pc, #0x254]        @ 0x26150 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x258>
   25efa: 2100         	movs	r1, #0x0
   25efc: 4b95         	ldr	r3, [pc, #0x254]        @ 0x26154 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x25c>
   25efe: e92d 43f0    	push.w	{r4, r5, r6, r7, r8, r9, lr}
   25f02: 447a         	add	r2, pc
   25f04: 4604         	mov	r4, r0
   25f06: b0b3         	sub	sp, #0xcc
   25f08: 58d3         	ldr	r3, [r2, r3]
   25f0a: ad04         	add	r5, sp, #0x10
   25f0c: 4628         	mov	r0, r5
   25f0e: f10d 0840    	add.w	r8, sp, #0x40
   25f12: 681b         	ldr	r3, [r3]
   25f14: 9331         	str	r3, [sp, #0xc4]
   25f16: f04f 0300    	mov.w	r3, #0x0
   25f1a: f7e7 ebbc    	blx	0xd694 <_ZN4Json5ValueC1ENS_9ValueTypeE@plt> @ imm = #-0x18888
   25f1e: 4640         	mov	r0, r8
   25f20: 2300         	movs	r3, #0x0
   25f22: ae27         	add	r6, sp, #0x9c
   25f24: f88d 309c    	strb.w	r3, [sp, #0x9c]
   25f28: e9cd 6325    	strd	r6, r3, [sp, #148]
   25f2c: f7e7 eb02    	blx	0xd534 <_ZN4Json19StreamWriterBuilderC1Ev@plt> @ imm = #-0x189fc
   25f30: 4b89         	ldr	r3, [pc, #0x224]        @ 0x26158 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x260>
   25f32: f240 37f3    	movw	r7, #0x3f3
   25f36: 4a89         	ldr	r2, [pc, #0x224]        @ 0x2615c <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x264>
   25f38: 2105         	movs	r1, #0x5
   25f3a: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/HttpCommunication/src/CSJsonParser.cpp'
   25f3c: 2000         	movs	r0, #0x0
   25f3e: 447a         	add	r2, pc ; STR 'GetSOATRequestBodyXml'
   25f40: 3353         	adds	r3, #0x53
   25f42: e9cd 3200    	strd	r3, r2, [sp]
   25f46: 4b86         	ldr	r3, [pc, #0x218]        @ 0x26160 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x268>
   25f48: 4a86         	ldr	r2, [pc, #0x218]        @ 0x26164 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x26c>
   25f4a: 447b         	add	r3, pc
   25f4c: 9702         	str	r7, [sp, #0x8]
   25f4e: 447a         	add	r2, pc ; STR 'COMSS'
   25f50: f7e7 ea06    	blx	0xd360 <__dlog_print@plt> @ imm = #-0x18bf4
   25f54: 4884         	ldr	r0, [pc, #0x210]        @ 0x26168 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x270>
   25f56: 4478         	add	r0, pc
   25f58: f7e7 eb6c    	blx	0xd634 <pthread_mutex_lock@plt> @ imm = #-0x18928
   25f5c: 4b83         	ldr	r3, [pc, #0x20c]        @ 0x2616c <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x274>
   25f5e: 447b         	add	r3, pc
   25f60: 681f         	ldr	r7, [r3]
   25f62: 2f00         	cmp	r7, #0x0
   25f64: f000 80a1    	beq.w	0x260aa <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x1b2> @ imm = #0x142
   25f68: 4881         	ldr	r0, [pc, #0x204]        @ 0x26170 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x278>
   25f6a: 4478         	add	r0, pc
   25f6c: f7e7 eee2    	blx	0xdd34 <pthread_mutex_unlock@plt> @ imm = #-0x1823c
   25f70: 4639         	mov	r1, r7
   25f72: a81f         	add	r0, sp, #0x7c
   25f74: f7ea fa82    	bl	0x1047c <_ZN7CAIAuth15GetSerialNumberB5cxx11Ev> @ imm = #-0x15afc
   25f78: 4639         	mov	r1, r7
   25f7a: a819         	add	r0, sp, #0x64
   25f7c: f7ea fdf0    	bl	0x10b60 <_ZN7CAIAuth11GetBomModelB5cxx11Ev> @ imm = #-0x15420
   25f80: 497c         	ldr	r1, [pc, #0x1f0]        @ 0x26174 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x27c>
   25f82: 4628         	mov	r0, r5
   25f84: 4479         	add	r1, pc ; STR 'serialnumber'
   25f86: f7e7 eee2    	blx	0xdd4c <_ZN4Json5ValueixEPKc@plt> @ imm = #-0x1823c
   25f8a: af0a         	add	r7, sp, #0x28
   25f8c: 4681         	mov	r9, r0
   25f8e: 991f         	ldr	r1, [sp, #0x7c]
   25f90: 4638         	mov	r0, r7
   25f92: f7e7 eef4    	blx	0xdd7c <_ZN4Json5ValueC1EPKc@plt> @ imm = #-0x18218
   25f96: 4639         	mov	r1, r7
   25f98: 4648         	mov	r0, r9
   25f9a: f7e7 ed12    	blx	0xd9c0 <_ZN4Json5ValueaSEOS0_@plt> @ imm = #-0x185dc
   25f9e: 4638         	mov	r0, r7
   25fa0: f7e7 ea3e    	blx	0xd420 <_ZN4Json5ValueD1Ev@plt> @ imm = #-0x18b84
   25fa4: 4974         	ldr	r1, [pc, #0x1d0]        @ 0x26178 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x280>
   25fa6: 4628         	mov	r0, r5
   25fa8: 4479         	add	r1, pc ; STR 'modelcode'
   25faa: f7e7 eed0    	blx	0xdd4c <_ZN4Json5ValueixEPKc@plt> @ imm = #-0x18260
   25fae: 4681         	mov	r9, r0
   25fb0: 9919         	ldr	r1, [sp, #0x64]
   25fb2: 4638         	mov	r0, r7
   25fb4: f7e7 eee2    	blx	0xdd7c <_ZN4Json5ValueC1EPKc@plt> @ imm = #-0x1823c
   25fb8: 4639         	mov	r1, r7
   25fba: 4648         	mov	r0, r9
   25fbc: f7e7 ed00    	blx	0xd9c0 <_ZN4Json5ValueaSEOS0_@plt> @ imm = #-0x18600
   25fc0: 4638         	mov	r0, r7
   25fc2: f7e7 ea2e    	blx	0xd420 <_ZN4Json5ValueD1Ev@plt> @ imm = #-0x18ba4
   25fc6: 462a         	mov	r2, r5
   25fc8: 4641         	mov	r1, r8
   25fca: a82b         	add	r0, sp, #0xac
   25fcc: f7e7 eb1a    	blx	0xd604 <_ZN4Json11writeStringB5cxx11ERKNS_12StreamWriter7FactoryERKNS_5ValueE@plt> @ imm = #-0x189cc
   25fd0: 9b2b         	ldr	r3, [sp, #0xac]
   25fd2: af2d         	add	r7, sp, #0xb4
   25fd4: 9825         	ldr	r0, [sp, #0x94]
   25fd6: 9a2c         	ldr	r2, [sp, #0xb0]
   25fd8: 42bb         	cmp	r3, r7
   25fda: d059         	beq	0x26090 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x198> @ imm = #0xb2
   25fdc: 992d         	ldr	r1, [sp, #0xb4]
   25fde: 42b0         	cmp	r0, r6
   25fe0: e9cd 3225    	strd	r3, r2, [sp, #148]
   25fe4: d06c         	beq	0x260c0 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x1c8> @ imm = #0xd8
   25fe6: 9b27         	ldr	r3, [sp, #0x9c]
   25fe8: 9127         	str	r1, [sp, #0x9c]
   25fea: 2800         	cmp	r0, #0x0
   25fec: d069         	beq	0x260c2 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x1ca> @ imm = #0xd2
   25fee: 902b         	str	r0, [sp, #0xac]
   25ff0: 932d         	str	r3, [sp, #0xb4]
   25ff2: 2300         	movs	r3, #0x0
   25ff4: 932c         	str	r3, [sp, #0xb0]
   25ff6: 7003         	strb	r3, [r0]
   25ff8: 982b         	ldr	r0, [sp, #0xac]
   25ffa: 42b8         	cmp	r0, r7
   25ffc: d001         	beq	0x26002 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x10a> @ imm = #0x2
   25ffe: f7e7 eb52    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x1895c
   26002: 4b5e         	ldr	r3, [pc, #0x178]        @ 0x2617c <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x284>
   26004: f240 4202    	movw	r2, #0x402
   26008: 4f5d         	ldr	r7, [pc, #0x174]        @ 0x26180 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x288>
   2600a: 2105         	movs	r1, #0x5
   2600c: 447b         	add	r3, pc ; STR '/home/abuild/rpmbuild/BUILD/comss-0.1/src/CoMSSDaemon/Common/HttpCommunication/src/CSJsonParser.cpp'
   2600e: 9202         	str	r2, [sp, #0x8]
   26010: 3353         	adds	r3, #0x53
   26012: 4a5c         	ldr	r2, [pc, #0x170]        @ 0x26184 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x28c>
   26014: 447f         	add	r7, pc ; STR 'GetSOATRequestBodyXml'
   26016: e9cd 3700    	strd	r3, r7, [sp]
   2601a: 4b5b         	ldr	r3, [pc, #0x16c]        @ 0x26188 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x290>
   2601c: 447a         	add	r2, pc ; STR 'COMSS'
   2601e: 9825         	ldr	r0, [sp, #0x94]
   26020: 9003         	str	r0, [sp, #0xc]
   26022: 447b         	add	r3, pc
   26024: 2000         	movs	r0, #0x0
   26026: f7e7 e99c    	blx	0xd360 <__dlog_print@plt> @ imm = #-0x18cc8
   2602a: 9b25         	ldr	r3, [sp, #0x94]
   2602c: f104 0708    	add.w	r7, r4, #0x8
   26030: 6027         	str	r7, [r4]
   26032: 42b3         	cmp	r3, r6
   26034: d049         	beq	0x260ca <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x1d2> @ imm = #0x92
   26036: 9a27         	ldr	r2, [sp, #0x9c]
   26038: 6023         	str	r3, [r4]
   2603a: 60a2         	str	r2, [r4, #0x8]
   2603c: 9b26         	ldr	r3, [sp, #0x98]
   2603e: 9819         	ldr	r0, [sp, #0x64]
   26040: 6063         	str	r3, [r4, #0x4]
   26042: 2300         	movs	r3, #0x0
   26044: 9326         	str	r3, [sp, #0x98]
   26046: f88d 309c    	strb.w	r3, [sp, #0x9c]
   2604a: ab1b         	add	r3, sp, #0x6c
   2604c: 4298         	cmp	r0, r3
   2604e: 9625         	str	r6, [sp, #0x94]
   26050: d001         	beq	0x26056 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x15e> @ imm = #0x2
   26052: f7e7 eb28    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x189b0
   26056: 981f         	ldr	r0, [sp, #0x7c]
   26058: ab21         	add	r3, sp, #0x84
   2605a: 4298         	cmp	r0, r3
   2605c: d001         	beq	0x26062 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x16a> @ imm = #0x2
   2605e: f7e7 eb22    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x189bc
   26062: 4640         	mov	r0, r8
   26064: f7e7 ed3a    	blx	0xdadc <_ZN4Json19StreamWriterBuilderD1Ev@plt> @ imm = #-0x1858c
   26068: 9825         	ldr	r0, [sp, #0x94]
   2606a: 42b0         	cmp	r0, r6
   2606c: d001         	beq	0x26072 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x17a> @ imm = #0x2
   2606e: f7e7 eb1a    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x189cc
   26072: 4628         	mov	r0, r5
   26074: f7e7 e9d4    	blx	0xd420 <_ZN4Json5ValueD1Ev@plt> @ imm = #-0x18c58
   26078: 4a44         	ldr	r2, [pc, #0x110]        @ 0x2618c <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x294>
   2607a: 4b36         	ldr	r3, [pc, #0xd8]         @ 0x26154 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x25c>
   2607c: 447a         	add	r2, pc
   2607e: 58d3         	ldr	r3, [r2, r3]
   26080: 681a         	ldr	r2, [r3]
   26082: 9b31         	ldr	r3, [sp, #0xc4]
   26084: 405a         	eors	r2, r3
   26086: d12e         	bne	0x260e6 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x1ee> @ imm = #0x5c
   26088: 4620         	mov	r0, r4
   2608a: b033         	add	sp, #0xcc
   2608c: e8bd 83f0    	pop.w	{r4, r5, r6, r7, r8, r9, pc}
   26090: b132         	cbz	r2, 0x260a0 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x1a8> @ imm = #0xc
   26092: 2a01         	cmp	r2, #0x1
   26094: d021         	beq	0x260da <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x1e2> @ imm = #0x42
   26096: 4639         	mov	r1, r7
   26098: f7e7 eb22    	blx	0xd6e0 <memcpy@plt>     @ imm = #-0x189bc
   2609c: 9a2c         	ldr	r2, [sp, #0xb0]
   2609e: 9825         	ldr	r0, [sp, #0x94]
   260a0: 2300         	movs	r3, #0x0
   260a2: 9226         	str	r2, [sp, #0x98]
   260a4: 5483         	strb	r3, [r0, r2]
   260a6: 982b         	ldr	r0, [sp, #0xac]
   260a8: e7a3         	b	0x25ff2 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0xfa> @ imm = #-0xba
   260aa: f44f 704e    	mov.w	r0, #0x338
   260ae: f7e7 eb50    	blx	0xd750 <_Znwj@plt>      @ imm = #-0x18960
   260b2: 4607         	mov	r7, r0
   260b4: f7ea ff0c    	bl	0x10ed0 <_ZN7CAIAuthC2Ev> @ imm = #-0x151e8
   260b8: 4b35         	ldr	r3, [pc, #0xd4]         @ 0x26190 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x298>
   260ba: 447b         	add	r3, pc
   260bc: 601f         	str	r7, [r3]
   260be: e753         	b	0x25f68 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x70> @ imm = #-0x15a
   260c0: 9127         	str	r1, [sp, #0x9c]
   260c2: 972b         	str	r7, [sp, #0xac]
   260c4: af2d         	add	r7, sp, #0xb4
   260c6: 4638         	mov	r0, r7
   260c8: e793         	b	0x25ff2 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0xfa> @ imm = #-0xda
   260ca: 46b4         	mov	r12, r6
   260cc: e8bc 000f    	ldm.w	r12!, {r0, r1, r2, r3}
   260d0: 60a0         	str	r0, [r4, #0x8]
   260d2: 60e1         	str	r1, [r4, #0xc]
   260d4: 6122         	str	r2, [r4, #0x10]
   260d6: 6163         	str	r3, [r4, #0x14]
   260d8: e7b0         	b	0x2603c <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x144> @ imm = #-0xa0
   260da: f99d 30b4    	ldrsb.w	r3, [sp, #0xb4]
   260de: 7003         	strb	r3, [r0]
   260e0: 9a2c         	ldr	r2, [sp, #0xb0]
   260e2: 9825         	ldr	r0, [sp, #0x94]
   260e4: e7dc         	b	0x260a0 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x1a8> @ imm = #-0x48
   260e6: f7e7 e9da    	blx	0xd49c <__stack_chk_fail@plt> @ imm = #-0x18c4c
   260ea: 4604         	mov	r4, r0
   260ec: 4829         	ldr	r0, [pc, #0xa4]         @ 0x26194 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x29c>
   260ee: 4478         	add	r0, pc
   260f0: f7e7 ee20    	blx	0xdd34 <pthread_mutex_unlock@plt> @ imm = #-0x183c0
   260f4: 4640         	mov	r0, r8
   260f6: f7e7 ecf2    	blx	0xdadc <_ZN4Json19StreamWriterBuilderD1Ev@plt> @ imm = #-0x1861c
   260fa: 9825         	ldr	r0, [sp, #0x94]
   260fc: 42b0         	cmp	r0, r6
   260fe: d001         	beq	0x26104 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x20c> @ imm = #0x2
   26100: f7e7 ead0    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x18a60
   26104: 4628         	mov	r0, r5
   26106: f7e7 e98c    	blx	0xd420 <_ZN4Json5ValueD1Ev@plt> @ imm = #-0x18ce8
   2610a: 4620         	mov	r0, r4
   2610c: f7e7 eb62    	blx	0xd7d4 <_Unwind_Resume@plt> @ imm = #-0x1893c
   26110: 4604         	mov	r4, r0
   26112: e7f2         	b	0x260fa <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x202> @ imm = #-0x1c
   26114: 4604         	mov	r4, r0
   26116: 981f         	ldr	r0, [sp, #0x7c]
   26118: ab21         	add	r3, sp, #0x84
   2611a: 4298         	cmp	r0, r3
   2611c: d0ea         	beq	0x260f4 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x1fc> @ imm = #-0x2c
   2611e: f7e7 eac2    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x18a7c
   26122: e7e7         	b	0x260f4 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x1fc> @ imm = #-0x32
   26124: 4604         	mov	r4, r0
   26126: e7e5         	b	0x260f4 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x1fc> @ imm = #-0x36
   26128: 4604         	mov	r4, r0
   2612a: 4638         	mov	r0, r7
   2612c: f7e7 eaba    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x18a8c
   26130: e7dc         	b	0x260ec <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x1f4> @ imm = #-0x48
   26132: 4604         	mov	r4, r0
   26134: 4638         	mov	r0, r7
   26136: f7e7 e974    	blx	0xd420 <_ZN4Json5ValueD1Ev@plt> @ imm = #-0x18d18
   2613a: 9819         	ldr	r0, [sp, #0x64]
   2613c: ab1b         	add	r3, sp, #0x6c
   2613e: 4298         	cmp	r0, r3
   26140: d0e9         	beq	0x26116 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x21e> @ imm = #-0x2e
   26142: f7e7 eab0    	blx	0xd6a4 <_ZdlPv@plt>     @ imm = #-0x18aa0
   26146: e7e6         	b	0x26116 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x21e> @ imm = #-0x34
   26148: 4604         	mov	r4, r0
   2614a: e7f6         	b	0x2613a <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x242> @ imm = #-0x14
   2614c: e7f1         	b	0x26132 <_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev+0x23a> @ imm = #-0x1e
   2614e: bf00         	nop
   26150: 30fa         	adds	r0, #0xfa
   26152: 0003         	movs	r3, r0
   26154: 03fc         	lsls	r4, r7, #0xf
   26156: 0000         	movs	r0, r0
   26158: 8362         	strh	r2, [r4, #0x1a]
   2615a: 0001         	movs	r1, r0
   2615c: 9e46         	ldr	r6, [sp, #0x118]
   2615e: 0001         	movs	r1, r0
   26160: 9e02         	ldr	r6, [sp, #0x8]
   26162: 0001         	movs	r1, r0
   26164: feb2 0000    	cdp2	p0, #0xb, c0, c2, c0, #0x0
   26168: 38fa         	subs	r0, #0xfa
   2616a: 0003         	movs	r3, r0
   2616c: 390a         	subs	r1, #0xa
   2616e: 0003         	movs	r3, r0
   26170: 38e6         	subs	r0, #0xe6
   26172: 0003         	movs	r3, r0
   26174: 115c         	asrs	r4, r3, #0x5
   26176: 0001         	movs	r1, r0
   26178: 9df4         	ldr	r5, [sp, #0x3d0]
   2617a: 0001         	movs	r1, r0
   2617c: 8290         	strh	r0, [r2, #0x14]
   2617e: 0001         	movs	r1, r0
   26180: 9d70         	ldr	r5, [sp, #0x1c0]
   26182: 0001         	movs	r1, r0
   26184: fde4 0000    	stc2l	p0, c0, [r4, #0]!
   26188: 9d86         	ldr	r5, [sp, #0x218]
   2618a: 0001         	movs	r1, r0
   2618c: 2f80         	cmp	r7, #0x80
   2618e: 0003         	movs	r3, r0
   26190: 37ae         	adds	r7, #0xae
   26192: 0003         	movs	r3, r0
   26194: 3762         	adds	r7, #0x62
   26196: 0003         	movs	r3, r0
