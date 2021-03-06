// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
asrr    z0.h, p0/m, z0.h, z0.h  // 00000100-01010100-10000000-00000000
// CHECK: asrr    z0.h, p0/m, z0.h, z0.h // encoding: [0x00,0x80,0x54,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01010100-10000000-00000000
ASRR    Z0.H, P0/M, Z0.H, Z0.H  // 00000100-01010100-10000000-00000000
// CHECK: asrr    z0.h, p0/m, z0.h, z0.h // encoding: [0x00,0x80,0x54,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01010100-10000000-00000000
asrr    z0.d, p0/m, z0.d, z0.d  // 00000100-11010100-10000000-00000000
// CHECK: asrr    z0.d, p0/m, z0.d, z0.d // encoding: [0x00,0x80,0xd4,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11010100-10000000-00000000
ASRR    Z0.D, P0/M, Z0.D, Z0.D  // 00000100-11010100-10000000-00000000
// CHECK: asrr    z0.d, p0/m, z0.d, z0.d // encoding: [0x00,0x80,0xd4,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11010100-10000000-00000000
asrr    z21.b, p5/m, z21.b, z10.b  // 00000100-00010100-10010101-01010101
// CHECK: asrr    z21.b, p5/m, z21.b, z10.b // encoding: [0x55,0x95,0x14,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00010100-10010101-01010101
ASRR    Z21.B, P5/M, Z21.B, Z10.B  // 00000100-00010100-10010101-01010101
// CHECK: asrr    z21.b, p5/m, z21.b, z10.b // encoding: [0x55,0x95,0x14,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00010100-10010101-01010101
asrr    z21.h, p5/m, z21.h, z10.h  // 00000100-01010100-10010101-01010101
// CHECK: asrr    z21.h, p5/m, z21.h, z10.h // encoding: [0x55,0x95,0x54,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01010100-10010101-01010101
ASRR    Z21.H, P5/M, Z21.H, Z10.H  // 00000100-01010100-10010101-01010101
// CHECK: asrr    z21.h, p5/m, z21.h, z10.h // encoding: [0x55,0x95,0x54,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01010100-10010101-01010101
asrr    z31.s, p7/m, z31.s, z31.s  // 00000100-10010100-10011111-11111111
// CHECK: asrr    z31.s, p7/m, z31.s, z31.s // encoding: [0xff,0x9f,0x94,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10010100-10011111-11111111
ASRR    Z31.S, P7/M, Z31.S, Z31.S  // 00000100-10010100-10011111-11111111
// CHECK: asrr    z31.s, p7/m, z31.s, z31.s // encoding: [0xff,0x9f,0x94,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10010100-10011111-11111111
asrr    z31.d, p7/m, z31.d, z31.d  // 00000100-11010100-10011111-11111111
// CHECK: asrr    z31.d, p7/m, z31.d, z31.d // encoding: [0xff,0x9f,0xd4,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11010100-10011111-11111111
ASRR    Z31.D, P7/M, Z31.D, Z31.D  // 00000100-11010100-10011111-11111111
// CHECK: asrr    z31.d, p7/m, z31.d, z31.d // encoding: [0xff,0x9f,0xd4,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11010100-10011111-11111111
asrr    z21.d, p5/m, z21.d, z10.d  // 00000100-11010100-10010101-01010101
// CHECK: asrr    z21.d, p5/m, z21.d, z10.d // encoding: [0x55,0x95,0xd4,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11010100-10010101-01010101
ASRR    Z21.D, P5/M, Z21.D, Z10.D  // 00000100-11010100-10010101-01010101
// CHECK: asrr    z21.d, p5/m, z21.d, z10.d // encoding: [0x55,0x95,0xd4,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11010100-10010101-01010101
asrr    z31.b, p7/m, z31.b, z31.b  // 00000100-00010100-10011111-11111111
// CHECK: asrr    z31.b, p7/m, z31.b, z31.b // encoding: [0xff,0x9f,0x14,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00010100-10011111-11111111
ASRR    Z31.B, P7/M, Z31.B, Z31.B  // 00000100-00010100-10011111-11111111
// CHECK: asrr    z31.b, p7/m, z31.b, z31.b // encoding: [0xff,0x9f,0x14,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00010100-10011111-11111111
asrr    z0.s, p0/m, z0.s, z0.s  // 00000100-10010100-10000000-00000000
// CHECK: asrr    z0.s, p0/m, z0.s, z0.s // encoding: [0x00,0x80,0x94,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10010100-10000000-00000000
ASRR    Z0.S, P0/M, Z0.S, Z0.S  // 00000100-10010100-10000000-00000000
// CHECK: asrr    z0.s, p0/m, z0.s, z0.s // encoding: [0x00,0x80,0x94,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10010100-10000000-00000000
asrr    z23.s, p3/m, z23.s, z13.s  // 00000100-10010100-10001101-10110111
// CHECK: asrr    z23.s, p3/m, z23.s, z13.s // encoding: [0xb7,0x8d,0x94,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10010100-10001101-10110111
ASRR    Z23.S, P3/M, Z23.S, Z13.S  // 00000100-10010100-10001101-10110111
// CHECK: asrr    z23.s, p3/m, z23.s, z13.s // encoding: [0xb7,0x8d,0x94,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10010100-10001101-10110111
asrr    z31.h, p7/m, z31.h, z31.h  // 00000100-01010100-10011111-11111111
// CHECK: asrr    z31.h, p7/m, z31.h, z31.h // encoding: [0xff,0x9f,0x54,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01010100-10011111-11111111
ASRR    Z31.H, P7/M, Z31.H, Z31.H  // 00000100-01010100-10011111-11111111
// CHECK: asrr    z31.h, p7/m, z31.h, z31.h // encoding: [0xff,0x9f,0x54,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01010100-10011111-11111111
asrr    z23.d, p3/m, z23.d, z13.d  // 00000100-11010100-10001101-10110111
// CHECK: asrr    z23.d, p3/m, z23.d, z13.d // encoding: [0xb7,0x8d,0xd4,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11010100-10001101-10110111
ASRR    Z23.D, P3/M, Z23.D, Z13.D  // 00000100-11010100-10001101-10110111
// CHECK: asrr    z23.d, p3/m, z23.d, z13.d // encoding: [0xb7,0x8d,0xd4,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11010100-10001101-10110111
asrr    z23.h, p3/m, z23.h, z13.h  // 00000100-01010100-10001101-10110111
// CHECK: asrr    z23.h, p3/m, z23.h, z13.h // encoding: [0xb7,0x8d,0x54,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01010100-10001101-10110111
ASRR    Z23.H, P3/M, Z23.H, Z13.H  // 00000100-01010100-10001101-10110111
// CHECK: asrr    z23.h, p3/m, z23.h, z13.h // encoding: [0xb7,0x8d,0x54,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01010100-10001101-10110111
asrr    z21.s, p5/m, z21.s, z10.s  // 00000100-10010100-10010101-01010101
// CHECK: asrr    z21.s, p5/m, z21.s, z10.s // encoding: [0x55,0x95,0x94,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10010100-10010101-01010101
ASRR    Z21.S, P5/M, Z21.S, Z10.S  // 00000100-10010100-10010101-01010101
// CHECK: asrr    z21.s, p5/m, z21.s, z10.s // encoding: [0x55,0x95,0x94,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10010100-10010101-01010101
asrr    z0.b, p0/m, z0.b, z0.b  // 00000100-00010100-10000000-00000000
// CHECK: asrr    z0.b, p0/m, z0.b, z0.b // encoding: [0x00,0x80,0x14,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00010100-10000000-00000000
ASRR    Z0.B, P0/M, Z0.B, Z0.B  // 00000100-00010100-10000000-00000000
// CHECK: asrr    z0.b, p0/m, z0.b, z0.b // encoding: [0x00,0x80,0x14,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00010100-10000000-00000000
asrr    z23.b, p3/m, z23.b, z13.b  // 00000100-00010100-10001101-10110111
// CHECK: asrr    z23.b, p3/m, z23.b, z13.b // encoding: [0xb7,0x8d,0x14,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00010100-10001101-10110111
ASRR    Z23.B, P3/M, Z23.B, Z13.B  // 00000100-00010100-10001101-10110111
// CHECK: asrr    z23.b, p3/m, z23.b, z13.b // encoding: [0xb7,0x8d,0x14,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00010100-10001101-10110111
