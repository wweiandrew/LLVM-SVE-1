// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
sdiv    z23.d, p3/m, z23.d, z13.d  // 00000100-11010100-00001101-10110111
// CHECK: sdiv    z23.d, p3/m, z23.d, z13.d // encoding: [0xb7,0x0d,0xd4,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11010100-00001101-10110111
SDIV    Z23.D, P3/M, Z23.D, Z13.D  // 00000100-11010100-00001101-10110111
// CHECK: sdiv    z23.d, p3/m, z23.d, z13.d // encoding: [0xb7,0x0d,0xd4,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11010100-00001101-10110111
sdiv    z23.s, p3/m, z23.s, z13.s  // 00000100-10010100-00001101-10110111
// CHECK: sdiv    z23.s, p3/m, z23.s, z13.s // encoding: [0xb7,0x0d,0x94,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10010100-00001101-10110111
SDIV    Z23.S, P3/M, Z23.S, Z13.S  // 00000100-10010100-00001101-10110111
// CHECK: sdiv    z23.s, p3/m, z23.s, z13.s // encoding: [0xb7,0x0d,0x94,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10010100-00001101-10110111
sdiv    z31.s, p7/m, z31.s, z31.s  // 00000100-10010100-00011111-11111111
// CHECK: sdiv    z31.s, p7/m, z31.s, z31.s // encoding: [0xff,0x1f,0x94,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10010100-00011111-11111111
SDIV    Z31.S, P7/M, Z31.S, Z31.S  // 00000100-10010100-00011111-11111111
// CHECK: sdiv    z31.s, p7/m, z31.s, z31.s // encoding: [0xff,0x1f,0x94,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10010100-00011111-11111111
sdiv    z21.s, p5/m, z21.s, z10.s  // 00000100-10010100-00010101-01010101
// CHECK: sdiv    z21.s, p5/m, z21.s, z10.s // encoding: [0x55,0x15,0x94,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10010100-00010101-01010101
SDIV    Z21.S, P5/M, Z21.S, Z10.S  // 00000100-10010100-00010101-01010101
// CHECK: sdiv    z21.s, p5/m, z21.s, z10.s // encoding: [0x55,0x15,0x94,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10010100-00010101-01010101
sdiv    z31.d, p7/m, z31.d, z31.d  // 00000100-11010100-00011111-11111111
// CHECK: sdiv    z31.d, p7/m, z31.d, z31.d // encoding: [0xff,0x1f,0xd4,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11010100-00011111-11111111
SDIV    Z31.D, P7/M, Z31.D, Z31.D  // 00000100-11010100-00011111-11111111
// CHECK: sdiv    z31.d, p7/m, z31.d, z31.d // encoding: [0xff,0x1f,0xd4,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11010100-00011111-11111111
sdiv    z21.d, p5/m, z21.d, z10.d  // 00000100-11010100-00010101-01010101
// CHECK: sdiv    z21.d, p5/m, z21.d, z10.d // encoding: [0x55,0x15,0xd4,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11010100-00010101-01010101
SDIV    Z21.D, P5/M, Z21.D, Z10.D  // 00000100-11010100-00010101-01010101
// CHECK: sdiv    z21.d, p5/m, z21.d, z10.d // encoding: [0x55,0x15,0xd4,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11010100-00010101-01010101
sdiv    z0.s, p0/m, z0.s, z0.s  // 00000100-10010100-00000000-00000000
// CHECK: sdiv    z0.s, p0/m, z0.s, z0.s // encoding: [0x00,0x00,0x94,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10010100-00000000-00000000
SDIV    Z0.S, P0/M, Z0.S, Z0.S  // 00000100-10010100-00000000-00000000
// CHECK: sdiv    z0.s, p0/m, z0.s, z0.s // encoding: [0x00,0x00,0x94,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10010100-00000000-00000000
sdiv    z0.d, p0/m, z0.d, z0.d  // 00000100-11010100-00000000-00000000
// CHECK: sdiv    z0.d, p0/m, z0.d, z0.d // encoding: [0x00,0x00,0xd4,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11010100-00000000-00000000
SDIV    Z0.D, P0/M, Z0.D, Z0.D  // 00000100-11010100-00000000-00000000
// CHECK: sdiv    z0.d, p0/m, z0.d, z0.d // encoding: [0x00,0x00,0xd4,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11010100-00000000-00000000
