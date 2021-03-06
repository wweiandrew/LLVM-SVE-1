// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
fsub    z0.s, p0/m, z0.s, z0.s  // 01100101-10000001-10000000-00000000
// CHECK: fsub    z0.s, p0/m, z0.s, z0.s // encoding: [0x00,0x80,0x81,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10000001-10000000-00000000
FSUB    Z0.S, P0/M, Z0.S, Z0.S  // 01100101-10000001-10000000-00000000
// CHECK: fsub    z0.s, p0/m, z0.s, z0.s // encoding: [0x00,0x80,0x81,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10000001-10000000-00000000
fsub    z23.h, p3/m, z23.h, z13.h  // 01100101-01000001-10001101-10110111
// CHECK: fsub    z23.h, p3/m, z23.h, z13.h // encoding: [0xb7,0x8d,0x41,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01000001-10001101-10110111
FSUB    Z23.H, P3/M, Z23.H, Z13.H  // 01100101-01000001-10001101-10110111
// CHECK: fsub    z23.h, p3/m, z23.h, z13.h // encoding: [0xb7,0x8d,0x41,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01000001-10001101-10110111
fsub    z0.h, p0/m, z0.h, z0.h  // 01100101-01000001-10000000-00000000
// CHECK: fsub    z0.h, p0/m, z0.h, z0.h // encoding: [0x00,0x80,0x41,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01000001-10000000-00000000
FSUB    Z0.H, P0/M, Z0.H, Z0.H  // 01100101-01000001-10000000-00000000
// CHECK: fsub    z0.h, p0/m, z0.h, z0.h // encoding: [0x00,0x80,0x41,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01000001-10000000-00000000
fsub    z21.s, p5/m, z21.s, z10.s  // 01100101-10000001-10010101-01010101
// CHECK: fsub    z21.s, p5/m, z21.s, z10.s // encoding: [0x55,0x95,0x81,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10000001-10010101-01010101
FSUB    Z21.S, P5/M, Z21.S, Z10.S  // 01100101-10000001-10010101-01010101
// CHECK: fsub    z21.s, p5/m, z21.s, z10.s // encoding: [0x55,0x95,0x81,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10000001-10010101-01010101
fsub    z0.h, p0/m, z0.h, #0.5  // 01100101-01011001-10000000-00000000
// CHECK: fsub    z0.h, p0/m, z0.h, #0.5{{0*}} // encoding: [0x00,0x80,0x59,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01011001-10000000-00000000
FSUB    Z0.H, P0/M, Z0.H, #0.5  // 01100101-01011001-10000000-00000000
// CHECK: fsub    z0.h, p0/m, z0.h, #0.5{{0*}} // encoding: [0x00,0x80,0x59,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01011001-10000000-00000000
fsub    z31.d, p7/m, z31.d, z31.d  // 01100101-11000001-10011111-11111111
// CHECK: fsub    z31.d, p7/m, z31.d, z31.d // encoding: [0xff,0x9f,0xc1,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11000001-10011111-11111111
FSUB    Z31.D, P7/M, Z31.D, Z31.D  // 01100101-11000001-10011111-11111111
// CHECK: fsub    z31.d, p7/m, z31.d, z31.d // encoding: [0xff,0x9f,0xc1,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11000001-10011111-11111111
fsub    z23.d, z13.d, z8.d  // 01100101-11001000-00000101-10110111
// CHECK: fsub    z23.d, z13.d, z8.d // encoding: [0xb7,0x05,0xc8,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11001000-00000101-10110111
FSUB    Z23.D, Z13.D, Z8.D  // 01100101-11001000-00000101-10110111
// CHECK: fsub    z23.d, z13.d, z8.d // encoding: [0xb7,0x05,0xc8,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11001000-00000101-10110111
fsub    z0.d, z0.d, z0.d  // 01100101-11000000-00000100-00000000
// CHECK: fsub    z0.d, z0.d, z0.d // encoding: [0x00,0x04,0xc0,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11000000-00000100-00000000
FSUB    Z0.D, Z0.D, Z0.D  // 01100101-11000000-00000100-00000000
// CHECK: fsub    z0.d, z0.d, z0.d // encoding: [0x00,0x04,0xc0,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11000000-00000100-00000000
fsub    z21.d, z10.d, z21.d  // 01100101-11010101-00000101-01010101
// CHECK: fsub    z21.d, z10.d, z21.d // encoding: [0x55,0x05,0xd5,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11010101-00000101-01010101
FSUB    Z21.D, Z10.D, Z21.D  // 01100101-11010101-00000101-01010101
// CHECK: fsub    z21.d, z10.d, z21.d // encoding: [0x55,0x05,0xd5,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11010101-00000101-01010101
fsub    z21.s, p5/m, z21.s, #0.5  // 01100101-10011001-10010100-00010101
// CHECK: fsub    z21.s, p5/m, z21.s, #0.5{{0*}} // encoding: [0x15,0x94,0x99,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10011001-10010100-00010101
FSUB    Z21.S, P5/M, Z21.S, #0.5  // 01100101-10011001-10010100-00010101
// CHECK: fsub    z21.s, p5/m, z21.s, #0.5{{0*}} // encoding: [0x15,0x94,0x99,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10011001-10010100-00010101
fsub    z23.s, z13.s, z8.s  // 01100101-10001000-00000101-10110111
// CHECK: fsub    z23.s, z13.s, z8.s // encoding: [0xb7,0x05,0x88,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10001000-00000101-10110111
FSUB    Z23.S, Z13.S, Z8.S  // 01100101-10001000-00000101-10110111
// CHECK: fsub    z23.s, z13.s, z8.s // encoding: [0xb7,0x05,0x88,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10001000-00000101-10110111
fsub    z31.s, z31.s, z31.s  // 01100101-10011111-00000111-11111111
// CHECK: fsub    z31.s, z31.s, z31.s // encoding: [0xff,0x07,0x9f,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10011111-00000111-11111111
FSUB    Z31.S, Z31.S, Z31.S  // 01100101-10011111-00000111-11111111
// CHECK: fsub    z31.s, z31.s, z31.s // encoding: [0xff,0x07,0x9f,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10011111-00000111-11111111
fsub    z0.h, z0.h, z0.h  // 01100101-01000000-00000100-00000000
// CHECK: fsub    z0.h, z0.h, z0.h // encoding: [0x00,0x04,0x40,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01000000-00000100-00000000
FSUB    Z0.H, Z0.H, Z0.H  // 01100101-01000000-00000100-00000000
// CHECK: fsub    z0.h, z0.h, z0.h // encoding: [0x00,0x04,0x40,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01000000-00000100-00000000
fsub    z31.h, p7/m, z31.h, #1.0  // 01100101-01011001-10011100-00111111
// CHECK: fsub    z31.h, p7/m, z31.h, #1.0{{0*}} // encoding: [0x3f,0x9c,0x59,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01011001-10011100-00111111
FSUB    Z31.H, P7/M, Z31.H, #1.0  // 01100101-01011001-10011100-00111111
// CHECK: fsub    z31.h, p7/m, z31.h, #1.0{{0*}} // encoding: [0x3f,0x9c,0x59,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01011001-10011100-00111111
fsub    z0.s, p0/m, z0.s, #0.5  // 01100101-10011001-10000000-00000000
// CHECK: fsub    z0.s, p0/m, z0.s, #0.5{{0*}} // encoding: [0x00,0x80,0x99,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10011001-10000000-00000000
FSUB    Z0.S, P0/M, Z0.S, #0.5  // 01100101-10011001-10000000-00000000
// CHECK: fsub    z0.s, p0/m, z0.s, #0.5{{0*}} // encoding: [0x00,0x80,0x99,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10011001-10000000-00000000
fsub    z21.h, p5/m, z21.h, z10.h  // 01100101-01000001-10010101-01010101
// CHECK: fsub    z21.h, p5/m, z21.h, z10.h // encoding: [0x55,0x95,0x41,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01000001-10010101-01010101
FSUB    Z21.H, P5/M, Z21.H, Z10.H  // 01100101-01000001-10010101-01010101
// CHECK: fsub    z21.h, p5/m, z21.h, z10.h // encoding: [0x55,0x95,0x41,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01000001-10010101-01010101
fsub    z21.h, z10.h, z21.h  // 01100101-01010101-00000101-01010101
// CHECK: fsub    z21.h, z10.h, z21.h // encoding: [0x55,0x05,0x55,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01010101-00000101-01010101
FSUB    Z21.H, Z10.H, Z21.H  // 01100101-01010101-00000101-01010101
// CHECK: fsub    z21.h, z10.h, z21.h // encoding: [0x55,0x05,0x55,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01010101-00000101-01010101
fsub    z0.d, p0/m, z0.d, z0.d  // 01100101-11000001-10000000-00000000
// CHECK: fsub    z0.d, p0/m, z0.d, z0.d // encoding: [0x00,0x80,0xc1,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11000001-10000000-00000000
FSUB    Z0.D, P0/M, Z0.D, Z0.D  // 01100101-11000001-10000000-00000000
// CHECK: fsub    z0.d, p0/m, z0.d, z0.d // encoding: [0x00,0x80,0xc1,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11000001-10000000-00000000
fsub    z21.d, p5/m, z21.d, z10.d  // 01100101-11000001-10010101-01010101
// CHECK: fsub    z21.d, p5/m, z21.d, z10.d // encoding: [0x55,0x95,0xc1,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11000001-10010101-01010101
FSUB    Z21.D, P5/M, Z21.D, Z10.D  // 01100101-11000001-10010101-01010101
// CHECK: fsub    z21.d, p5/m, z21.d, z10.d // encoding: [0x55,0x95,0xc1,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11000001-10010101-01010101
fsub    z23.d, p3/m, z23.d, #1.0  // 01100101-11011001-10001100-00110111
// CHECK: fsub    z23.d, p3/m, z23.d, #1.0{{0*}} // encoding: [0x37,0x8c,0xd9,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11011001-10001100-00110111
FSUB    Z23.D, P3/M, Z23.D, #1.0  // 01100101-11011001-10001100-00110111
// CHECK: fsub    z23.d, p3/m, z23.d, #1.0{{0*}} // encoding: [0x37,0x8c,0xd9,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11011001-10001100-00110111
fsub    z23.s, p3/m, z23.s, z13.s  // 01100101-10000001-10001101-10110111
// CHECK: fsub    z23.s, p3/m, z23.s, z13.s // encoding: [0xb7,0x8d,0x81,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10000001-10001101-10110111
FSUB    Z23.S, P3/M, Z23.S, Z13.S  // 01100101-10000001-10001101-10110111
// CHECK: fsub    z23.s, p3/m, z23.s, z13.s // encoding: [0xb7,0x8d,0x81,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10000001-10001101-10110111
fsub    z21.h, p5/m, z21.h, #0.5  // 01100101-01011001-10010100-00010101
// CHECK: fsub    z21.h, p5/m, z21.h, #0.5{{0*}} // encoding: [0x15,0x94,0x59,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01011001-10010100-00010101
FSUB    Z21.H, P5/M, Z21.H, #0.5  // 01100101-01011001-10010100-00010101
// CHECK: fsub    z21.h, p5/m, z21.h, #0.5{{0*}} // encoding: [0x15,0x94,0x59,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01011001-10010100-00010101
fsub    z31.h, z31.h, z31.h  // 01100101-01011111-00000111-11111111
// CHECK: fsub    z31.h, z31.h, z31.h // encoding: [0xff,0x07,0x5f,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01011111-00000111-11111111
FSUB    Z31.H, Z31.H, Z31.H  // 01100101-01011111-00000111-11111111
// CHECK: fsub    z31.h, z31.h, z31.h // encoding: [0xff,0x07,0x5f,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01011111-00000111-11111111
fsub    z0.d, p0/m, z0.d, #0.5  // 01100101-11011001-10000000-00000000
// CHECK: fsub    z0.d, p0/m, z0.d, #0.5{{0*}} // encoding: [0x00,0x80,0xd9,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11011001-10000000-00000000
FSUB    Z0.D, P0/M, Z0.D, #0.5  // 01100101-11011001-10000000-00000000
// CHECK: fsub    z0.d, p0/m, z0.d, #0.5{{0*}} // encoding: [0x00,0x80,0xd9,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11011001-10000000-00000000
fsub    z31.d, p7/m, z31.d, #1.0  // 01100101-11011001-10011100-00111111
// CHECK: fsub    z31.d, p7/m, z31.d, #1.0{{0*}} // encoding: [0x3f,0x9c,0xd9,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11011001-10011100-00111111
FSUB    Z31.D, P7/M, Z31.D, #1.0  // 01100101-11011001-10011100-00111111
// CHECK: fsub    z31.d, p7/m, z31.d, #1.0{{0*}} // encoding: [0x3f,0x9c,0xd9,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11011001-10011100-00111111
fsub    z31.s, p7/m, z31.s, #1.0  // 01100101-10011001-10011100-00111111
// CHECK: fsub    z31.s, p7/m, z31.s, #1.0{{0*}} // encoding: [0x3f,0x9c,0x99,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10011001-10011100-00111111
FSUB    Z31.S, P7/M, Z31.S, #1.0  // 01100101-10011001-10011100-00111111
// CHECK: fsub    z31.s, p7/m, z31.s, #1.0{{0*}} // encoding: [0x3f,0x9c,0x99,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10011001-10011100-00111111
fsub    z21.s, z10.s, z21.s  // 01100101-10010101-00000101-01010101
// CHECK: fsub    z21.s, z10.s, z21.s // encoding: [0x55,0x05,0x95,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10010101-00000101-01010101
FSUB    Z21.S, Z10.S, Z21.S  // 01100101-10010101-00000101-01010101
// CHECK: fsub    z21.s, z10.s, z21.s // encoding: [0x55,0x05,0x95,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10010101-00000101-01010101
fsub    z21.d, p5/m, z21.d, #0.5  // 01100101-11011001-10010100-00010101
// CHECK: fsub    z21.d, p5/m, z21.d, #0.5{{0*}} // encoding: [0x15,0x94,0xd9,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11011001-10010100-00010101
FSUB    Z21.D, P5/M, Z21.D, #0.5  // 01100101-11011001-10010100-00010101
// CHECK: fsub    z21.d, p5/m, z21.d, #0.5{{0*}} // encoding: [0x15,0x94,0xd9,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11011001-10010100-00010101
fsub    z31.d, z31.d, z31.d  // 01100101-11011111-00000111-11111111
// CHECK: fsub    z31.d, z31.d, z31.d // encoding: [0xff,0x07,0xdf,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11011111-00000111-11111111
FSUB    Z31.D, Z31.D, Z31.D  // 01100101-11011111-00000111-11111111
// CHECK: fsub    z31.d, z31.d, z31.d // encoding: [0xff,0x07,0xdf,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11011111-00000111-11111111
fsub    z23.s, p3/m, z23.s, #1.0  // 01100101-10011001-10001100-00110111
// CHECK: fsub    z23.s, p3/m, z23.s, #1.0{{0*}} // encoding: [0x37,0x8c,0x99,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10011001-10001100-00110111
FSUB    Z23.S, P3/M, Z23.S, #1.0  // 01100101-10011001-10001100-00110111
// CHECK: fsub    z23.s, p3/m, z23.s, #1.0{{0*}} // encoding: [0x37,0x8c,0x99,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10011001-10001100-00110111
fsub    z23.h, z13.h, z8.h  // 01100101-01001000-00000101-10110111
// CHECK: fsub    z23.h, z13.h, z8.h // encoding: [0xb7,0x05,0x48,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01001000-00000101-10110111
FSUB    Z23.H, Z13.H, Z8.H  // 01100101-01001000-00000101-10110111
// CHECK: fsub    z23.h, z13.h, z8.h // encoding: [0xb7,0x05,0x48,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01001000-00000101-10110111
fsub    z0.s, z0.s, z0.s  // 01100101-10000000-00000100-00000000
// CHECK: fsub    z0.s, z0.s, z0.s // encoding: [0x00,0x04,0x80,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10000000-00000100-00000000
FSUB    Z0.S, Z0.S, Z0.S  // 01100101-10000000-00000100-00000000
// CHECK: fsub    z0.s, z0.s, z0.s // encoding: [0x00,0x04,0x80,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10000000-00000100-00000000
fsub    z31.h, p7/m, z31.h, z31.h  // 01100101-01000001-10011111-11111111
// CHECK: fsub    z31.h, p7/m, z31.h, z31.h // encoding: [0xff,0x9f,0x41,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01000001-10011111-11111111
FSUB    Z31.H, P7/M, Z31.H, Z31.H  // 01100101-01000001-10011111-11111111
// CHECK: fsub    z31.h, p7/m, z31.h, z31.h // encoding: [0xff,0x9f,0x41,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01000001-10011111-11111111
fsub    z31.s, p7/m, z31.s, z31.s  // 01100101-10000001-10011111-11111111
// CHECK: fsub    z31.s, p7/m, z31.s, z31.s // encoding: [0xff,0x9f,0x81,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10000001-10011111-11111111
FSUB    Z31.S, P7/M, Z31.S, Z31.S  // 01100101-10000001-10011111-11111111
// CHECK: fsub    z31.s, p7/m, z31.s, z31.s // encoding: [0xff,0x9f,0x81,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-10000001-10011111-11111111
fsub    z23.h, p3/m, z23.h, #1.0  // 01100101-01011001-10001100-00110111
// CHECK: fsub    z23.h, p3/m, z23.h, #1.0{{0*}} // encoding: [0x37,0x8c,0x59,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01011001-10001100-00110111
FSUB    Z23.H, P3/M, Z23.H, #1.0  // 01100101-01011001-10001100-00110111
// CHECK: fsub    z23.h, p3/m, z23.h, #1.0{{0*}} // encoding: [0x37,0x8c,0x59,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-01011001-10001100-00110111
fsub    z23.d, p3/m, z23.d, z13.d  // 01100101-11000001-10001101-10110111
// CHECK: fsub    z23.d, p3/m, z23.d, z13.d // encoding: [0xb7,0x8d,0xc1,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11000001-10001101-10110111
FSUB    Z23.D, P3/M, Z23.D, Z13.D  // 01100101-11000001-10001101-10110111
// CHECK: fsub    z23.d, p3/m, z23.d, z13.d // encoding: [0xb7,0x8d,0xc1,0x65]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 01100101-11000001-10001101-10110111
