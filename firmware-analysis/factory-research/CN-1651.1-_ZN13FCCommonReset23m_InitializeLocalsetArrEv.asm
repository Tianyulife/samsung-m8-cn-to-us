
firmware-analysis/CN-1651.1/rootfs/root/usr/bin/TIFSDaemon:	file format elf32-littlearm

Disassembly of section .text:

0007277c <_ZN13FCCommonReset23m_InitializeLocalsetArrEv>:
   7277c: b430         	push	{r4, r5}
   7277e: 2301         	movs	r3, #0x1
   72780: 2400         	movs	r4, #0x0
   72782: 2102         	movs	r1, #0x2
   72784: 2203         	movs	r2, #0x3
   72786: 2504         	movs	r5, #0x4
   72788: 6044         	str	r4, [r0, #0x4]
   7278a: 6083         	str	r3, [r0, #0x8]
   7278c: 2406         	movs	r4, #0x6
   7278e: 2308         	movs	r3, #0x8
   72790: 60c1         	str	r1, [r0, #0xc]
   72792: 6102         	str	r2, [r0, #0x10]
   72794: 2109         	movs	r1, #0x9
   72796: 220b         	movs	r2, #0xb
   72798: 6145         	str	r5, [r0, #0x14]
   7279a: 6184         	str	r4, [r0, #0x18]
   7279c: 250c         	movs	r5, #0xc
   7279e: 240d         	movs	r4, #0xd
   727a0: 6203         	str	r3, [r0, #0x20]
   727a2: 6241         	str	r1, [r0, #0x24]
   727a4: 230e         	movs	r3, #0xe
   727a6: 2110         	movs	r1, #0x10
   727a8: 6282         	str	r2, [r0, #0x28]
   727aa: 62c5         	str	r5, [r0, #0x2c]
   727ac: 2211         	movs	r2, #0x11
   727ae: 2512         	movs	r5, #0x12
   727b0: 6304         	str	r4, [r0, #0x30]
   727b2: 6343         	str	r3, [r0, #0x34]
   727b4: 2413         	movs	r4, #0x13
   727b6: 2314         	movs	r3, #0x14
   727b8: 6381         	str	r1, [r0, #0x38]
   727ba: 63c2         	str	r2, [r0, #0x3c]
   727bc: 2115         	movs	r1, #0x15
   727be: 2217         	movs	r2, #0x17
   727c0: 6405         	str	r5, [r0, #0x40]
   727c2: 6444         	str	r4, [r0, #0x44]
   727c4: 2518         	movs	r5, #0x18
   727c6: 2419         	movs	r4, #0x19
   727c8: 6483         	str	r3, [r0, #0x48]
   727ca: 64c1         	str	r1, [r0, #0x4c]
   727cc: 231a         	movs	r3, #0x1a
   727ce: 211e         	movs	r1, #0x1e
   727d0: 6502         	str	r2, [r0, #0x50]
   727d2: f8c0 5108    	str.w	r5, [r0, #0x108]
   727d6: 221f         	movs	r2, #0x1f
   727d8: 2520         	movs	r5, #0x20
   727da: f8c0 410c    	str.w	r4, [r0, #0x10c]
   727de: 65c3         	str	r3, [r0, #0x5c]
   727e0: 2421         	movs	r4, #0x21
   727e2: 2322         	movs	r3, #0x22
   727e4: 6601         	str	r1, [r0, #0x60]
   727e6: 6642         	str	r2, [r0, #0x64]
   727e8: 2123         	movs	r1, #0x23
   727ea: 2224         	movs	r2, #0x24
   727ec: 6685         	str	r5, [r0, #0x68]
   727ee: 66c4         	str	r4, [r0, #0x6c]
   727f0: 2525         	movs	r5, #0x25
   727f2: 2426         	movs	r4, #0x26
   727f4: 6703         	str	r3, [r0, #0x70]
   727f6: 6741         	str	r1, [r0, #0x74]
   727f8: 2307         	movs	r3, #0x7
   727fa: 2127         	movs	r1, #0x27
   727fc: 6782         	str	r2, [r0, #0x78]
   727fe: 67c5         	str	r5, [r0, #0x7c]
   72800: 2228         	movs	r2, #0x28
   72802: 2529         	movs	r5, #0x29
   72804: f8c0 4080    	str.w	r4, [r0, #0x80]
   72808: 61c3         	str	r3, [r0, #0x1c]
   7280a: 242b         	movs	r4, #0x2b
   7280c: f8c0 1084    	str.w	r1, [r0, #0x84]
   72810: 212c         	movs	r1, #0x2c
   72812: f8c0 2088    	str.w	r2, [r0, #0x88]
   72816: 222e         	movs	r2, #0x2e
   72818: f8c0 508c    	str.w	r5, [r0, #0x8c]
   7281c: 252f         	movs	r5, #0x2f
   7281e: f8c0 4090    	str.w	r4, [r0, #0x90]
   72822: 2430         	movs	r4, #0x30
   72824: f8c0 1094    	str.w	r1, [r0, #0x94]
   72828: 2131         	movs	r1, #0x31
   7282a: f8c0 2098    	str.w	r2, [r0, #0x98]
   7282e: 2232         	movs	r2, #0x32
   72830: f8c0 509c    	str.w	r5, [r0, #0x9c]
   72834: 2533         	movs	r5, #0x33
   72836: f8c0 40a0    	str.w	r4, [r0, #0xa0]
   7283a: 2434         	movs	r4, #0x34
   7283c: f8c0 10a4    	str.w	r1, [r0, #0xa4]
   72840: 2135         	movs	r1, #0x35
   72842: f8c0 20a8    	str.w	r2, [r0, #0xa8]
   72846: 2236         	movs	r2, #0x36
   72848: f8c0 50ac    	str.w	r5, [r0, #0xac]
   7284c: 2538         	movs	r5, #0x38
   7284e: f8c0 40b0    	str.w	r4, [r0, #0xb0]
   72852: 2439         	movs	r4, #0x39
   72854: f8c0 10b4    	str.w	r1, [r0, #0xb4]
   72858: 213a         	movs	r1, #0x3a
   7285a: f8c0 20b8    	str.w	r2, [r0, #0xb8]
   7285e: 223c         	movs	r2, #0x3c
   72860: f8c0 50bc    	str.w	r5, [r0, #0xbc]
   72864: 253d         	movs	r5, #0x3d
   72866: f8c0 40c0    	str.w	r4, [r0, #0xc0]
   7286a: 243e         	movs	r4, #0x3e
   7286c: f8c0 10c4    	str.w	r1, [r0, #0xc4]
   72870: 213f         	movs	r1, #0x3f
   72872: f8c0 20c8    	str.w	r2, [r0, #0xc8]
   72876: 2240         	movs	r2, #0x40
   72878: f8c0 50cc    	str.w	r5, [r0, #0xcc]
   7287c: 2541         	movs	r5, #0x41
   7287e: f8c0 40d0    	str.w	r4, [r0, #0xd0]
   72882: 2442         	movs	r4, #0x42
   72884: f8c0 10d4    	str.w	r1, [r0, #0xd4]
   72888: 2143         	movs	r1, #0x43
   7288a: f8c0 20d8    	str.w	r2, [r0, #0xd8]
   7288e: 2244         	movs	r2, #0x44
   72890: f8c0 50dc    	str.w	r5, [r0, #0xdc]
   72894: 2545         	movs	r5, #0x45
   72896: f8c0 40e0    	str.w	r4, [r0, #0xe0]
   7289a: 2446         	movs	r4, #0x46
   7289c: f8c0 10e4    	str.w	r1, [r0, #0xe4]
   728a0: 2147         	movs	r1, #0x47
   728a2: f8c0 20f8    	str.w	r2, [r0, #0xf8]
   728a6: 2248         	movs	r2, #0x48
   728a8: f8c0 5100    	str.w	r5, [r0, #0x100]
   728ac: 2549         	movs	r5, #0x49
   728ae: f8c0 4104    	str.w	r4, [r0, #0x104]
   728b2: 244a         	movs	r4, #0x4a
   728b4: f8c0 1114    	str.w	r1, [r0, #0x114]
   728b8: 214b         	movs	r1, #0x4b
   728ba: f8c0 2118    	str.w	r2, [r0, #0x118]
   728be: 224c         	movs	r2, #0x4c
   728c0: f8c0 511c    	str.w	r5, [r0, #0x11c]
   728c4: 254d         	movs	r5, #0x4d
   728c6: f8c0 4120    	str.w	r4, [r0, #0x120]
   728ca: 244e         	movs	r4, #0x4e
   728cc: f8c0 1124    	str.w	r1, [r0, #0x124]
   728d0: 214f         	movs	r1, #0x4f
   728d2: f8c0 2128    	str.w	r2, [r0, #0x128]
   728d6: 2250         	movs	r2, #0x50
   728d8: e9c0 544b    	strd	r5, r4, [r0, #300]
   728dc: e9c0 3361    	strd	r3, r3, [r0, #388]
   728e0: bc30         	pop	{r4, r5}
   728e2: f8c0 1134    	str.w	r1, [r0, #0x134]
   728e6: f8c0 2180    	str.w	r2, [r0, #0x180]
   728ea: 4770         	bx	lr
