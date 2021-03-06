// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
smin    z0.h, p0/m, z0.h, z0.h  // 00000100-01001010-00000000-00000000
// CHECK: smin    z0.h, p0/m, z0.h, z0.h // encoding: [0x00,0x00,0x4a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01001010-00000000-00000000
SMIN    Z0.H, P0/M, Z0.H, Z0.H  // 00000100-01001010-00000000-00000000
// CHECK: smin    z0.h, p0/m, z0.h, z0.h // encoding: [0x00,0x00,0x4a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01001010-00000000-00000000
smin    z23.h, p3/m, z23.h, z13.h  // 00000100-01001010-00001101-10110111
// CHECK: smin    z23.h, p3/m, z23.h, z13.h // encoding: [0xb7,0x0d,0x4a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01001010-00001101-10110111
SMIN    Z23.H, P3/M, Z23.H, Z13.H  // 00000100-01001010-00001101-10110111
// CHECK: smin    z23.h, p3/m, z23.h, z13.h // encoding: [0xb7,0x0d,0x4a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01001010-00001101-10110111
smin    z31.d, z31.d, #-1  // 00100101-11101010-11011111-11111111
// CHECK: smin    z31.d, z31.d, #-1 // encoding: [0xff,0xdf,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-11011111-11111111
SMIN    Z31.D, Z31.D, #-1  // 00100101-11101010-11011111-11111111
// CHECK: smin    z31.d, z31.d, #-1 // encoding: [0xff,0xdf,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-11011111-11111111
smin    z21.d, z21.d, #-86  // 00100101-11101010-11010101-01010101
// CHECK: smin    z21.d, z21.d, #-86 // encoding: [0x55,0xd5,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-11010101-01010101
SMIN    Z21.D, Z21.D, #-86  // 00100101-11101010-11010101-01010101
// CHECK: smin    z21.d, z21.d, #-86 // encoding: [0x55,0xd5,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-11010101-01010101
smin    z31.s, p7/m, z31.s, z31.s  // 00000100-10001010-00011111-11111111
// CHECK: smin    z31.s, p7/m, z31.s, z31.s // encoding: [0xff,0x1f,0x8a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10001010-00011111-11111111
SMIN    Z31.S, P7/M, Z31.S, Z31.S  // 00000100-10001010-00011111-11111111
// CHECK: smin    z31.s, p7/m, z31.s, z31.s // encoding: [0xff,0x1f,0x8a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10001010-00011111-11111111
smin    z23.b, p3/m, z23.b, z13.b  // 00000100-00001010-00001101-10110111
// CHECK: smin    z23.b, p3/m, z23.b, z13.b // encoding: [0xb7,0x0d,0x0a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00001010-00001101-10110111
SMIN    Z23.B, P3/M, Z23.B, Z13.B  // 00000100-00001010-00001101-10110111
// CHECK: smin    z23.b, p3/m, z23.b, z13.b // encoding: [0xb7,0x0d,0x0a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00001010-00001101-10110111
smin    z21.b, z21.b, #-86  // 00100101-00101010-11010101-01010101
// CHECK: smin    z21.b, z21.b, #-86 // encoding: [0x55,0xd5,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-11010101-01010101
SMIN    Z21.B, Z21.B, #-86  // 00100101-00101010-11010101-01010101
// CHECK: smin    z21.b, z21.b, #-86 // encoding: [0x55,0xd5,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-11010101-01010101
smin    z0.s, z0.s, #0  // 00100101-10101010-11000000-00000000
// CHECK: smin    z0.s, z0.s, #0 // encoding: [0x00,0xc0,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-11000000-00000000
SMIN    Z0.S, Z0.S, #0  // 00100101-10101010-11000000-00000000
// CHECK: smin    z0.s, z0.s, #0 // encoding: [0x00,0xc0,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-11000000-00000000
smin    z0.d, z0.d, #0  // 00100101-11101010-11000000-00000000
// CHECK: smin    z0.d, z0.d, #0 // encoding: [0x00,0xc0,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-11000000-00000000
SMIN    Z0.D, Z0.D, #0  // 00100101-11101010-11000000-00000000
// CHECK: smin    z0.d, z0.d, #0 // encoding: [0x00,0xc0,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-11000000-00000000
smin    z0.b, p0/m, z0.b, z0.b  // 00000100-00001010-00000000-00000000
// CHECK: smin    z0.b, p0/m, z0.b, z0.b // encoding: [0x00,0x00,0x0a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00001010-00000000-00000000
SMIN    Z0.B, P0/M, Z0.B, Z0.B  // 00000100-00001010-00000000-00000000
// CHECK: smin    z0.b, p0/m, z0.b, z0.b // encoding: [0x00,0x00,0x0a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00001010-00000000-00000000
smin    z31.h, z31.h, #-1  // 00100101-01101010-11011111-11111111
// CHECK: smin    z31.h, z31.h, #-1 // encoding: [0xff,0xdf,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-11011111-11111111
SMIN    Z31.H, Z31.H, #-1  // 00100101-01101010-11011111-11111111
// CHECK: smin    z31.h, z31.h, #-1 // encoding: [0xff,0xdf,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-11011111-11111111
smin    z23.h, z23.h, #109  // 00100101-01101010-11001101-10110111
// CHECK: smin    z23.h, z23.h, #109 // encoding: [0xb7,0xcd,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-11001101-10110111
SMIN    Z23.H, Z23.H, #109  // 00100101-01101010-11001101-10110111
// CHECK: smin    z23.h, z23.h, #109 // encoding: [0xb7,0xcd,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-11001101-10110111
smin    z21.b, p5/m, z21.b, z10.b  // 00000100-00001010-00010101-01010101
// CHECK: smin    z21.b, p5/m, z21.b, z10.b // encoding: [0x55,0x15,0x0a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00001010-00010101-01010101
SMIN    Z21.B, P5/M, Z21.B, Z10.B  // 00000100-00001010-00010101-01010101
// CHECK: smin    z21.b, p5/m, z21.b, z10.b // encoding: [0x55,0x15,0x0a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00001010-00010101-01010101
smin    z21.h, z21.h, #-86  // 00100101-01101010-11010101-01010101
// CHECK: smin    z21.h, z21.h, #-86 // encoding: [0x55,0xd5,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-11010101-01010101
SMIN    Z21.H, Z21.H, #-86  // 00100101-01101010-11010101-01010101
// CHECK: smin    z21.h, z21.h, #-86 // encoding: [0x55,0xd5,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-11010101-01010101
smin    z21.h, p5/m, z21.h, z10.h  // 00000100-01001010-00010101-01010101
// CHECK: smin    z21.h, p5/m, z21.h, z10.h // encoding: [0x55,0x15,0x4a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01001010-00010101-01010101
SMIN    Z21.H, P5/M, Z21.H, Z10.H  // 00000100-01001010-00010101-01010101
// CHECK: smin    z21.h, p5/m, z21.h, z10.h // encoding: [0x55,0x15,0x4a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01001010-00010101-01010101
smin    z31.b, z31.b, #-1  // 00100101-00101010-11011111-11111111
// CHECK: smin    z31.b, z31.b, #-1 // encoding: [0xff,0xdf,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-11011111-11111111
SMIN    Z31.B, Z31.B, #-1  // 00100101-00101010-11011111-11111111
// CHECK: smin    z31.b, z31.b, #-1 // encoding: [0xff,0xdf,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-11011111-11111111
smin    z21.d, p5/m, z21.d, z10.d  // 00000100-11001010-00010101-01010101
// CHECK: smin    z21.d, p5/m, z21.d, z10.d // encoding: [0x55,0x15,0xca,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11001010-00010101-01010101
SMIN    Z21.D, P5/M, Z21.D, Z10.D  // 00000100-11001010-00010101-01010101
// CHECK: smin    z21.d, p5/m, z21.d, z10.d // encoding: [0x55,0x15,0xca,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11001010-00010101-01010101
smin    z31.b, p7/m, z31.b, z31.b  // 00000100-00001010-00011111-11111111
// CHECK: smin    z31.b, p7/m, z31.b, z31.b // encoding: [0xff,0x1f,0x0a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00001010-00011111-11111111
SMIN    Z31.B, P7/M, Z31.B, Z31.B  // 00000100-00001010-00011111-11111111
// CHECK: smin    z31.b, p7/m, z31.b, z31.b // encoding: [0xff,0x1f,0x0a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00001010-00011111-11111111
smin    z31.h, p7/m, z31.h, z31.h  // 00000100-01001010-00011111-11111111
// CHECK: smin    z31.h, p7/m, z31.h, z31.h // encoding: [0xff,0x1f,0x4a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01001010-00011111-11111111
SMIN    Z31.H, P7/M, Z31.H, Z31.H  // 00000100-01001010-00011111-11111111
// CHECK: smin    z31.h, p7/m, z31.h, z31.h // encoding: [0xff,0x1f,0x4a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01001010-00011111-11111111
smin    z0.d, p0/m, z0.d, z0.d  // 00000100-11001010-00000000-00000000
// CHECK: smin    z0.d, p0/m, z0.d, z0.d // encoding: [0x00,0x00,0xca,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11001010-00000000-00000000
SMIN    Z0.D, P0/M, Z0.D, Z0.D  // 00000100-11001010-00000000-00000000
// CHECK: smin    z0.d, p0/m, z0.d, z0.d // encoding: [0x00,0x00,0xca,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11001010-00000000-00000000
smin    z0.h, z0.h, #0  // 00100101-01101010-11000000-00000000
// CHECK: smin    z0.h, z0.h, #0 // encoding: [0x00,0xc0,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-11000000-00000000
SMIN    Z0.H, Z0.H, #0  // 00100101-01101010-11000000-00000000
// CHECK: smin    z0.h, z0.h, #0 // encoding: [0x00,0xc0,0x6a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01101010-11000000-00000000
smin    z31.d, p7/m, z31.d, z31.d  // 00000100-11001010-00011111-11111111
// CHECK: smin    z31.d, p7/m, z31.d, z31.d // encoding: [0xff,0x1f,0xca,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11001010-00011111-11111111
SMIN    Z31.D, P7/M, Z31.D, Z31.D  // 00000100-11001010-00011111-11111111
// CHECK: smin    z31.d, p7/m, z31.d, z31.d // encoding: [0xff,0x1f,0xca,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11001010-00011111-11111111
smin    z23.s, z23.s, #109  // 00100101-10101010-11001101-10110111
// CHECK: smin    z23.s, z23.s, #109 // encoding: [0xb7,0xcd,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-11001101-10110111
SMIN    Z23.S, Z23.S, #109  // 00100101-10101010-11001101-10110111
// CHECK: smin    z23.s, z23.s, #109 // encoding: [0xb7,0xcd,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-11001101-10110111
smin    z23.d, z23.d, #109  // 00100101-11101010-11001101-10110111
// CHECK: smin    z23.d, z23.d, #109 // encoding: [0xb7,0xcd,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-11001101-10110111
SMIN    Z23.D, Z23.D, #109  // 00100101-11101010-11001101-10110111
// CHECK: smin    z23.d, z23.d, #109 // encoding: [0xb7,0xcd,0xea,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11101010-11001101-10110111
smin    z31.s, z31.s, #-1  // 00100101-10101010-11011111-11111111
// CHECK: smin    z31.s, z31.s, #-1 // encoding: [0xff,0xdf,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-11011111-11111111
SMIN    Z31.S, Z31.S, #-1  // 00100101-10101010-11011111-11111111
// CHECK: smin    z31.s, z31.s, #-1 // encoding: [0xff,0xdf,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-11011111-11111111
smin    z0.b, z0.b, #0  // 00100101-00101010-11000000-00000000
// CHECK: smin    z0.b, z0.b, #0 // encoding: [0x00,0xc0,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-11000000-00000000
SMIN    Z0.B, Z0.B, #0  // 00100101-00101010-11000000-00000000
// CHECK: smin    z0.b, z0.b, #0 // encoding: [0x00,0xc0,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-11000000-00000000
smin    z0.s, p0/m, z0.s, z0.s  // 00000100-10001010-00000000-00000000
// CHECK: smin    z0.s, p0/m, z0.s, z0.s // encoding: [0x00,0x00,0x8a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10001010-00000000-00000000
SMIN    Z0.S, P0/M, Z0.S, Z0.S  // 00000100-10001010-00000000-00000000
// CHECK: smin    z0.s, p0/m, z0.s, z0.s // encoding: [0x00,0x00,0x8a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10001010-00000000-00000000
smin    z21.s, p5/m, z21.s, z10.s  // 00000100-10001010-00010101-01010101
// CHECK: smin    z21.s, p5/m, z21.s, z10.s // encoding: [0x55,0x15,0x8a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10001010-00010101-01010101
SMIN    Z21.S, P5/M, Z21.S, Z10.S  // 00000100-10001010-00010101-01010101
// CHECK: smin    z21.s, p5/m, z21.s, z10.s // encoding: [0x55,0x15,0x8a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10001010-00010101-01010101
smin    z23.s, p3/m, z23.s, z13.s  // 00000100-10001010-00001101-10110111
// CHECK: smin    z23.s, p3/m, z23.s, z13.s // encoding: [0xb7,0x0d,0x8a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10001010-00001101-10110111
SMIN    Z23.S, P3/M, Z23.S, Z13.S  // 00000100-10001010-00001101-10110111
// CHECK: smin    z23.s, p3/m, z23.s, z13.s // encoding: [0xb7,0x0d,0x8a,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10001010-00001101-10110111
smin    z23.d, p3/m, z23.d, z13.d  // 00000100-11001010-00001101-10110111
// CHECK: smin    z23.d, p3/m, z23.d, z13.d // encoding: [0xb7,0x0d,0xca,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11001010-00001101-10110111
SMIN    Z23.D, P3/M, Z23.D, Z13.D  // 00000100-11001010-00001101-10110111
// CHECK: smin    z23.d, p3/m, z23.d, z13.d // encoding: [0xb7,0x0d,0xca,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11001010-00001101-10110111
smin    z21.s, z21.s, #-86  // 00100101-10101010-11010101-01010101
// CHECK: smin    z21.s, z21.s, #-86 // encoding: [0x55,0xd5,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-11010101-01010101
SMIN    Z21.S, Z21.S, #-86  // 00100101-10101010-11010101-01010101
// CHECK: smin    z21.s, z21.s, #-86 // encoding: [0x55,0xd5,0xaa,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10101010-11010101-01010101
smin    z23.b, z23.b, #109  // 00100101-00101010-11001101-10110111
// CHECK: smin    z23.b, z23.b, #109 // encoding: [0xb7,0xcd,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-11001101-10110111
SMIN    Z23.B, Z23.B, #109  // 00100101-00101010-11001101-10110111
// CHECK: smin    z23.b, z23.b, #109 // encoding: [0xb7,0xcd,0x2a,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00101010-11001101-10110111
