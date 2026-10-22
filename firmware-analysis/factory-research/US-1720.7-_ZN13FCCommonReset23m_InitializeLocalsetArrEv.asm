
firmware-analysis/US-1720.7/rootfs/root/usr/bin/TIFSDaemon:	file format elf32-littlearm

Disassembly of section .text:

00073824 <_ZN13FCCommonReset23m_InitializeLocalsetArrEv>:
   73824: b430         	push	{r4, r5}
   73826: 2301         	movs	r3, #0x1
   73828: 2400         	movs	r4, #0x0
   7382a: 2102         	movs	r1, #0x2
   7382c: 2203         	movs	r2, #0x3
   7382e: 2504         	movs	r5, #0x4
   73830: 6044         	str	r4, [r0, #0x4]
   73832: 6083         	str	r3, [r0, #0x8]
   73834: 2406         	movs	r4, #0x6
   73836: 2308         	movs	r3, #0x8
   73838: 60c1         	str	r1, [r0, #0xc]
   7383a: 6102         	str	r2, [r0, #0x10]
   7383c: 2109         	movs	r1, #0x9
   7383e: 220b         	movs	r2, #0xb
   73840: 6145         	str	r5, [r0, #0x14]
   73842: 6184         	str	r4, [r0, #0x18]
   73844: 250c         	movs	r5, #0xc
   73846: 240d         	movs	r4, #0xd
   73848: 6203         	str	r3, [r0, #0x20]
   7384a: 6241         	str	r1, [r0, #0x24]
   7384c: 230e         	movs	r3, #0xe
   7384e: 2110         	movs	r1, #0x10
   73850: 6282         	str	r2, [r0, #0x28]
   73852: 62c5         	str	r5, [r0, #0x2c]
   73854: 2211         	movs	r2, #0x11
   73856: 2512         	movs	r5, #0x12
   73858: 6304         	str	r4, [r0, #0x30]
   7385a: 6343         	str	r3, [r0, #0x34]
   7385c: 2413         	movs	r4, #0x13
   7385e: 2314         	movs	r3, #0x14
   73860: 6381         	str	r1, [r0, #0x38]
   73862: 63c2         	str	r2, [r0, #0x3c]
   73864: 2115         	movs	r1, #0x15
   73866: 2217         	movs	r2, #0x17
   73868: 6405         	str	r5, [r0, #0x40]
   7386a: 6444         	str	r4, [r0, #0x44]
   7386c: 2518         	movs	r5, #0x18
   7386e: 2419         	movs	r4, #0x19
   73870: 6483         	str	r3, [r0, #0x48]
   73872: 64c1         	str	r1, [r0, #0x4c]
   73874: 231a         	movs	r3, #0x1a
   73876: 211e         	movs	r1, #0x1e
   73878: 6502         	str	r2, [r0, #0x50]
   7387a: f8c0 5108    	str.w	r5, [r0, #0x108]
   7387e: 221f         	movs	r2, #0x1f
   73880: 2520         	movs	r5, #0x20
   73882: f8c0 410c    	str.w	r4, [r0, #0x10c]
   73886: 65c3         	str	r3, [r0, #0x5c]
   73888: 2421         	movs	r4, #0x21
   7388a: 2322         	movs	r3, #0x22
   7388c: 6601         	str	r1, [r0, #0x60]
   7388e: 6642         	str	r2, [r0, #0x64]
   73890: 2123         	movs	r1, #0x23
   73892: 2224         	movs	r2, #0x24
   73894: 6685         	str	r5, [r0, #0x68]
   73896: 66c4         	str	r4, [r0, #0x6c]
   73898: 2525         	movs	r5, #0x25
   7389a: 2426         	movs	r4, #0x26
   7389c: 6703         	str	r3, [r0, #0x70]
   7389e: 6741         	str	r1, [r0, #0x74]
   738a0: 2307         	movs	r3, #0x7
   738a2: 2127         	movs	r1, #0x27
   738a4: 6782         	str	r2, [r0, #0x78]
   738a6: 67c5         	str	r5, [r0, #0x7c]
   738a8: 2228         	movs	r2, #0x28
   738aa: 2529         	movs	r5, #0x29
   738ac: f8c0 4080    	str.w	r4, [r0, #0x80]
   738b0: 61c3         	str	r3, [r0, #0x1c]
   738b2: 242b         	movs	r4, #0x2b
   738b4: f8c0 1084    	str.w	r1, [r0, #0x84]
   738b8: 212c         	movs	r1, #0x2c
   738ba: f8c0 2088    	str.w	r2, [r0, #0x88]
   738be: 222e         	movs	r2, #0x2e
   738c0: f8c0 508c    	str.w	r5, [r0, #0x8c]
   738c4: 252f         	movs	r5, #0x2f
   738c6: f8c0 4090    	str.w	r4, [r0, #0x90]
   738ca: 2430         	movs	r4, #0x30
   738cc: f8c0 1094    	str.w	r1, [r0, #0x94]
   738d0: 2131         	movs	r1, #0x31
   738d2: f8c0 2098    	str.w	r2, [r0, #0x98]
   738d6: 2232         	movs	r2, #0x32
   738d8: f8c0 509c    	str.w	r5, [r0, #0x9c]
   738dc: 2533         	movs	r5, #0x33
   738de: f8c0 40a0    	str.w	r4, [r0, #0xa0]
   738e2: 2434         	movs	r4, #0x34
   738e4: f8c0 10a4    	str.w	r1, [r0, #0xa4]
   738e8: 2135         	movs	r1, #0x35
   738ea: f8c0 20a8    	str.w	r2, [r0, #0xa8]
   738ee: 2236         	movs	r2, #0x36
   738f0: f8c0 50ac    	str.w	r5, [r0, #0xac]
   738f4: 2538         	movs	r5, #0x38
   738f6: f8c0 40b0    	str.w	r4, [r0, #0xb0]
   738fa: 2439         	movs	r4, #0x39
   738fc: f8c0 10b4    	str.w	r1, [r0, #0xb4]
   73900: 213a         	movs	r1, #0x3a
   73902: f8c0 20b8    	str.w	r2, [r0, #0xb8]
   73906: 223c         	movs	r2, #0x3c
   73908: f8c0 50bc    	str.w	r5, [r0, #0xbc]
   7390c: 253d         	movs	r5, #0x3d
   7390e: f8c0 40c0    	str.w	r4, [r0, #0xc0]
   73912: 243e         	movs	r4, #0x3e
   73914: f8c0 10c4    	str.w	r1, [r0, #0xc4]
   73918: 213f         	movs	r1, #0x3f
   7391a: f8c0 20c8    	str.w	r2, [r0, #0xc8]
   7391e: 2240         	movs	r2, #0x40
   73920: f8c0 50cc    	str.w	r5, [r0, #0xcc]
   73924: 2541         	movs	r5, #0x41
   73926: f8c0 40d0    	str.w	r4, [r0, #0xd0]
   7392a: 2442         	movs	r4, #0x42
   7392c: f8c0 10d4    	str.w	r1, [r0, #0xd4]
   73930: 2143         	movs	r1, #0x43
   73932: f8c0 20d8    	str.w	r2, [r0, #0xd8]
   73936: 2244         	movs	r2, #0x44
   73938: f8c0 50dc    	str.w	r5, [r0, #0xdc]
   7393c: 2545         	movs	r5, #0x45
   7393e: f8c0 40e0    	str.w	r4, [r0, #0xe0]
   73942: 2446         	movs	r4, #0x46
   73944: f8c0 10e4    	str.w	r1, [r0, #0xe4]
   73948: 2147         	movs	r1, #0x47
   7394a: f8c0 20f8    	str.w	r2, [r0, #0xf8]
   7394e: 2248         	movs	r2, #0x48
   73950: f8c0 5100    	str.w	r5, [r0, #0x100]
   73954: 2549         	movs	r5, #0x49
   73956: f8c0 4104    	str.w	r4, [r0, #0x104]
   7395a: 244a         	movs	r4, #0x4a
   7395c: f8c0 1114    	str.w	r1, [r0, #0x114]
   73960: 214b         	movs	r1, #0x4b
   73962: f8c0 2118    	str.w	r2, [r0, #0x118]
   73966: 224c         	movs	r2, #0x4c
   73968: f8c0 511c    	str.w	r5, [r0, #0x11c]
   7396c: 254d         	movs	r5, #0x4d
   7396e: f8c0 4120    	str.w	r4, [r0, #0x120]
   73972: 244e         	movs	r4, #0x4e
   73974: f8c0 1124    	str.w	r1, [r0, #0x124]
   73978: 214f         	movs	r1, #0x4f
   7397a: f8c0 2128    	str.w	r2, [r0, #0x128]
   7397e: 2250         	movs	r2, #0x50
   73980: e9c0 544b    	strd	r5, r4, [r0, #300]
   73984: e9c0 3361    	strd	r3, r3, [r0, #388]
   73988: bc30         	pop	{r4, r5}
   7398a: f8c0 1134    	str.w	r1, [r0, #0x134]
   7398e: f8c0 2180    	str.w	r2, [r0, #0x180]
   73992: 4770         	bx	lr
