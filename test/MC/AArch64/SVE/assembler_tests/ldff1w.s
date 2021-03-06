// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
ldff1w  {z31.d}, p7/z, [sp, z31.d, sxtw]  // 11000101-01011111-01111111-11111111
// CHECK: ldff1w  {z31.d}, p7/z, [sp, z31.d, sxtw] // encoding: [0xff,0x7f,0x5f,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01011111-01111111-11111111
LDFF1W  {Z31.D}, P7/Z, [SP, Z31.D, SXTW]  // 11000101-01011111-01111111-11111111
// CHECK: ldff1w  {z31.d}, p7/z, [sp, z31.d, sxtw] // encoding: [0xff,0x7f,0x5f,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01011111-01111111-11111111
ldff1w  {z21.s}, p5/z, [x10, z21.s, sxtw]  // 10000101-01010101-01110101-01010101
// CHECK: ldff1w  {z21.s}, p5/z, [x10, z21.s, sxtw] // encoding: [0x55,0x75,0x55,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-01010101-01110101-01010101
LDFF1W  {Z21.S}, P5/Z, [X10, Z21.S, SXTW]  // 10000101-01010101-01110101-01010101
// CHECK: ldff1w  {z21.s}, p5/z, [x10, z21.s, sxtw] // encoding: [0x55,0x75,0x55,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-01010101-01110101-01010101
ldff1w  {z31.s}, p7/z, [sp, z31.s, sxtw]  // 10000101-01011111-01111111-11111111
// CHECK: ldff1w  {z31.s}, p7/z, [sp, z31.s, sxtw] // encoding: [0xff,0x7f,0x5f,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-01011111-01111111-11111111
LDFF1W  {Z31.S}, P7/Z, [SP, Z31.S, SXTW]  // 10000101-01011111-01111111-11111111
// CHECK: ldff1w  {z31.s}, p7/z, [sp, z31.s, sxtw] // encoding: [0xff,0x7f,0x5f,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-01011111-01111111-11111111
ldff1w  {z31.d}, p7/z, [z31.d, #124]  // 11000101-00111111-11111111-11111111
// CHECK: ldff1w  {z31.d}, p7/z, [z31.d, #124] // encoding: [0xff,0xff,0x3f,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00111111-11111111-11111111
LDFF1W  {Z31.D}, P7/Z, [Z31.D, #124]  // 11000101-00111111-11111111-11111111
// CHECK: ldff1w  {z31.d}, p7/z, [z31.d, #124] // encoding: [0xff,0xff,0x3f,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00111111-11111111-11111111
ldff1w  {z21.d}, p5/z, [x10, z21.d]  // 11000101-01010101-11110101-01010101
// CHECK: ldff1w  {z21.d}, p5/z, [x10, z21.d] // encoding: [0x55,0xf5,0x55,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01010101-11110101-01010101
LDFF1W  {Z21.D}, P5/Z, [X10, Z21.D]  // 11000101-01010101-11110101-01010101
// CHECK: ldff1w  {z21.d}, p5/z, [x10, z21.d] // encoding: [0x55,0xf5,0x55,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01010101-11110101-01010101
ldff1w  {z23.d}, p3/z, [x13, x8, lsl #2]  // 10100101-01101000-01101101-10110111
// CHECK: ldff1w  {z23.d}, p3/z, [x13, x8, lsl #2] // encoding: [0xb7,0x6d,0x68,0xa5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100101-01101000-01101101-10110111
LDFF1W  {Z23.D}, P3/Z, [X13, X8, LSL #2]  // 10100101-01101000-01101101-10110111
// CHECK: ldff1w  {z23.d}, p3/z, [x13, x8, lsl #2] // encoding: [0xb7,0x6d,0x68,0xa5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100101-01101000-01101101-10110111
ldff1w  {z23.d}, p3/z, [x13, z8.d, uxtw]  // 11000101-00001000-01101101-10110111
// CHECK: ldff1w  {z23.d}, p3/z, [x13, z8.d, uxtw] // encoding: [0xb7,0x6d,0x08,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00001000-01101101-10110111
LDFF1W  {Z23.D}, P3/Z, [X13, Z8.D, UXTW]  // 11000101-00001000-01101101-10110111
// CHECK: ldff1w  {z23.d}, p3/z, [x13, z8.d, uxtw] // encoding: [0xb7,0x6d,0x08,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00001000-01101101-10110111
ldff1w  {z23.d}, p3/z, [x13, z8.d, uxtw #2]  // 11000101-00101000-01101101-10110111
// CHECK: ldff1w  {z23.d}, p3/z, [x13, z8.d, uxtw #2] // encoding: [0xb7,0x6d,0x28,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00101000-01101101-10110111
LDFF1W  {Z23.D}, P3/Z, [X13, Z8.D, UXTW #2]  // 11000101-00101000-01101101-10110111
// CHECK: ldff1w  {z23.d}, p3/z, [x13, z8.d, uxtw #2] // encoding: [0xb7,0x6d,0x28,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00101000-01101101-10110111
ldff1w  {z21.s}, p5/z, [z10.s, #84]  // 10000101-00110101-11110101-01010101
// CHECK: ldff1w  {z21.s}, p5/z, [z10.s, #84] // encoding: [0x55,0xf5,0x35,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00110101-11110101-01010101
LDFF1W  {Z21.S}, P5/Z, [Z10.S, #84]  // 10000101-00110101-11110101-01010101
// CHECK: ldff1w  {z21.s}, p5/z, [z10.s, #84] // encoding: [0x55,0xf5,0x35,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00110101-11110101-01010101
ldff1w  {z31.s}, p7/z, [z31.s, #124]  // 10000101-00111111-11111111-11111111
// CHECK: ldff1w  {z31.s}, p7/z, [z31.s, #124] // encoding: [0xff,0xff,0x3f,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00111111-11111111-11111111
LDFF1W  {Z31.S}, P7/Z, [Z31.S, #124]  // 10000101-00111111-11111111-11111111
// CHECK: ldff1w  {z31.s}, p7/z, [z31.s, #124] // encoding: [0xff,0xff,0x3f,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00111111-11111111-11111111
ldff1w  {z23.s}, p3/z, [x13, x8, lsl #2]  // 10100101-01001000-01101101-10110111
// CHECK: ldff1w  {z23.s}, p3/z, [x13, x8, lsl #2] // encoding: [0xb7,0x6d,0x48,0xa5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100101-01001000-01101101-10110111
LDFF1W  {Z23.S}, P3/Z, [X13, X8, LSL #2]  // 10100101-01001000-01101101-10110111
// CHECK: ldff1w  {z23.s}, p3/z, [x13, x8, lsl #2] // encoding: [0xb7,0x6d,0x48,0xa5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100101-01001000-01101101-10110111
ldff1w  {z31.d}, p7/z, [sp, z31.d, uxtw #2]  // 11000101-00111111-01111111-11111111
// CHECK: ldff1w  {z31.d}, p7/z, [sp, z31.d, uxtw #2] // encoding: [0xff,0x7f,0x3f,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00111111-01111111-11111111
LDFF1W  {Z31.D}, P7/Z, [SP, Z31.D, UXTW #2]  // 11000101-00111111-01111111-11111111
// CHECK: ldff1w  {z31.d}, p7/z, [sp, z31.d, uxtw #2] // encoding: [0xff,0x7f,0x3f,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00111111-01111111-11111111
ldff1w  {z0.d}, p0/z, [x0, x0, lsl #2]  // 10100101-01100000-01100000-00000000
// CHECK: ldff1w  {z0.d}, p0/z, [x0, x0, lsl #2] // encoding: [0x00,0x60,0x60,0xa5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100101-01100000-01100000-00000000
LDFF1W  {Z0.D}, P0/Z, [X0, X0, LSL #2]  // 10100101-01100000-01100000-00000000
// CHECK: ldff1w  {z0.d}, p0/z, [x0, x0, lsl #2] // encoding: [0x00,0x60,0x60,0xa5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100101-01100000-01100000-00000000
ldff1w  {z23.d}, p3/z, [x13, z8.d, sxtw]  // 11000101-01001000-01101101-10110111
// CHECK: ldff1w  {z23.d}, p3/z, [x13, z8.d, sxtw] // encoding: [0xb7,0x6d,0x48,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01001000-01101101-10110111
LDFF1W  {Z23.D}, P3/Z, [X13, Z8.D, SXTW]  // 11000101-01001000-01101101-10110111
// CHECK: ldff1w  {z23.d}, p3/z, [x13, z8.d, sxtw] // encoding: [0xb7,0x6d,0x48,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01001000-01101101-10110111
ldff1w  {z31.s}, p7/z, [sp, z31.s, uxtw]  // 10000101-00011111-01111111-11111111
// CHECK: ldff1w  {z31.s}, p7/z, [sp, z31.s, uxtw] // encoding: [0xff,0x7f,0x1f,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00011111-01111111-11111111
LDFF1W  {Z31.S}, P7/Z, [SP, Z31.S, UXTW]  // 10000101-00011111-01111111-11111111
// CHECK: ldff1w  {z31.s}, p7/z, [sp, z31.s, uxtw] // encoding: [0xff,0x7f,0x1f,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00011111-01111111-11111111
ldff1w  {z21.s}, p5/z, [x10, z21.s, sxtw #2]  // 10000101-01110101-01110101-01010101
// CHECK: ldff1w  {z21.s}, p5/z, [x10, z21.s, sxtw #2] // encoding: [0x55,0x75,0x75,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-01110101-01110101-01010101
LDFF1W  {Z21.S}, P5/Z, [X10, Z21.S, SXTW #2]  // 10000101-01110101-01110101-01010101
// CHECK: ldff1w  {z21.s}, p5/z, [x10, z21.s, sxtw #2] // encoding: [0x55,0x75,0x75,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-01110101-01110101-01010101
ldff1w  {z23.d}, p3/z, [x13, z8.d]  // 11000101-01001000-11101101-10110111
// CHECK: ldff1w  {z23.d}, p3/z, [x13, z8.d] // encoding: [0xb7,0xed,0x48,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01001000-11101101-10110111
LDFF1W  {Z23.D}, P3/Z, [X13, Z8.D]  // 11000101-01001000-11101101-10110111
// CHECK: ldff1w  {z23.d}, p3/z, [x13, z8.d] // encoding: [0xb7,0xed,0x48,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01001000-11101101-10110111
ldff1w  {z23.s}, p3/z, [x13, z8.s, sxtw]  // 10000101-01001000-01101101-10110111
// CHECK: ldff1w  {z23.s}, p3/z, [x13, z8.s, sxtw] // encoding: [0xb7,0x6d,0x48,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-01001000-01101101-10110111
LDFF1W  {Z23.S}, P3/Z, [X13, Z8.S, SXTW]  // 10000101-01001000-01101101-10110111
// CHECK: ldff1w  {z23.s}, p3/z, [x13, z8.s, sxtw] // encoding: [0xb7,0x6d,0x48,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-01001000-01101101-10110111
ldff1w  {z0.d}, p0/z, [x0, z0.d]  // 11000101-01000000-11100000-00000000
// CHECK: ldff1w  {z0.d}, p0/z, [x0, z0.d] // encoding: [0x00,0xe0,0x40,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01000000-11100000-00000000
LDFF1W  {Z0.D}, P0/Z, [X0, Z0.D]  // 11000101-01000000-11100000-00000000
// CHECK: ldff1w  {z0.d}, p0/z, [x0, z0.d] // encoding: [0x00,0xe0,0x40,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01000000-11100000-00000000
ldff1w  {z0.s}, p0/z, [x0, x0, lsl #2]  // 10100101-01000000-01100000-00000000
// CHECK: ldff1w  {z0.s}, p0/z, [x0, x0, lsl #2] // encoding: [0x00,0x60,0x40,0xa5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100101-01000000-01100000-00000000
LDFF1W  {Z0.S}, P0/Z, [X0, X0, LSL #2]  // 10100101-01000000-01100000-00000000
// CHECK: ldff1w  {z0.s}, p0/z, [x0, x0, lsl #2] // encoding: [0x00,0x60,0x40,0xa5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100101-01000000-01100000-00000000
ldff1w  {z31.s}, p7/z, [sp, z31.s, uxtw #2]  // 10000101-00111111-01111111-11111111
// CHECK: ldff1w  {z31.s}, p7/z, [sp, z31.s, uxtw #2] // encoding: [0xff,0x7f,0x3f,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00111111-01111111-11111111
LDFF1W  {Z31.S}, P7/Z, [SP, Z31.S, UXTW #2]  // 10000101-00111111-01111111-11111111
// CHECK: ldff1w  {z31.s}, p7/z, [sp, z31.s, uxtw #2] // encoding: [0xff,0x7f,0x3f,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00111111-01111111-11111111
ldff1w  {z31.d}, p7/z, [sp, z31.d, uxtw]  // 11000101-00011111-01111111-11111111
// CHECK: ldff1w  {z31.d}, p7/z, [sp, z31.d, uxtw] // encoding: [0xff,0x7f,0x1f,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00011111-01111111-11111111
LDFF1W  {Z31.D}, P7/Z, [SP, Z31.D, UXTW]  // 11000101-00011111-01111111-11111111
// CHECK: ldff1w  {z31.d}, p7/z, [sp, z31.d, uxtw] // encoding: [0xff,0x7f,0x1f,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00011111-01111111-11111111
ldff1w  {z31.d}, p7/z, [sp, z31.d, sxtw #2]  // 11000101-01111111-01111111-11111111
// CHECK: ldff1w  {z31.d}, p7/z, [sp, z31.d, sxtw #2] // encoding: [0xff,0x7f,0x7f,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01111111-01111111-11111111
LDFF1W  {Z31.D}, P7/Z, [SP, Z31.D, SXTW #2]  // 11000101-01111111-01111111-11111111
// CHECK: ldff1w  {z31.d}, p7/z, [sp, z31.d, sxtw #2] // encoding: [0xff,0x7f,0x7f,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01111111-01111111-11111111
ldff1w  {z0.s}, p0/z, [x0, z0.s, uxtw]  // 10000101-00000000-01100000-00000000
// CHECK: ldff1w  {z0.s}, p0/z, [x0, z0.s, uxtw] // encoding: [0x00,0x60,0x00,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00000000-01100000-00000000
LDFF1W  {Z0.S}, P0/Z, [X0, Z0.S, UXTW]  // 10000101-00000000-01100000-00000000
// CHECK: ldff1w  {z0.s}, p0/z, [x0, z0.s, uxtw] // encoding: [0x00,0x60,0x00,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00000000-01100000-00000000
ldff1w  {z21.d}, p5/z, [z10.d, #84]  // 11000101-00110101-11110101-01010101
// CHECK: ldff1w  {z21.d}, p5/z, [z10.d, #84] // encoding: [0x55,0xf5,0x35,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00110101-11110101-01010101
LDFF1W  {Z21.D}, P5/Z, [Z10.D, #84]  // 11000101-00110101-11110101-01010101
// CHECK: ldff1w  {z21.d}, p5/z, [z10.d, #84] // encoding: [0x55,0xf5,0x35,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00110101-11110101-01010101
ldff1w  {z23.d}, p3/z, [x13, z8.d, lsl #2]  // 11000101-01101000-11101101-10110111
// CHECK: ldff1w  {z23.d}, p3/z, [x13, z8.d, lsl #2] // encoding: [0xb7,0xed,0x68,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01101000-11101101-10110111
LDFF1W  {Z23.D}, P3/Z, [X13, Z8.D, LSL #2]  // 11000101-01101000-11101101-10110111
// CHECK: ldff1w  {z23.d}, p3/z, [x13, z8.d, lsl #2] // encoding: [0xb7,0xed,0x68,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01101000-11101101-10110111
ldff1w  {z0.d}, p0/z, [x0, z0.d, uxtw #2]  // 11000101-00100000-01100000-00000000
// CHECK: ldff1w  {z0.d}, p0/z, [x0, z0.d, uxtw #2] // encoding: [0x00,0x60,0x20,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00100000-01100000-00000000
LDFF1W  {Z0.D}, P0/Z, [X0, Z0.D, UXTW #2]  // 11000101-00100000-01100000-00000000
// CHECK: ldff1w  {z0.d}, p0/z, [x0, z0.d, uxtw #2] // encoding: [0x00,0x60,0x20,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00100000-01100000-00000000
ldff1w  {z31.s}, p7/z, [sp]  // 10100101-01011111-01111111-11111111
// CHECK: ldff1w  {z31.s}, p7/z, [sp] // encoding: [0xff,0x7f,0x5f,0xa5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100101-01011111-01111111-11111111
LDFF1W  {Z31.S}, P7/Z, [SP]  // 10100101-01011111-01111111-11111111
// CHECK: ldff1w  {z31.s}, p7/z, [sp] // encoding: [0xff,0x7f,0x5f,0xa5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100101-01011111-01111111-11111111
ldff1w  {z0.d}, p0/z, [x0, z0.d, sxtw #2]  // 11000101-01100000-01100000-00000000
// CHECK: ldff1w  {z0.d}, p0/z, [x0, z0.d, sxtw #2] // encoding: [0x00,0x60,0x60,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01100000-01100000-00000000
LDFF1W  {Z0.D}, P0/Z, [X0, Z0.D, SXTW #2]  // 11000101-01100000-01100000-00000000
// CHECK: ldff1w  {z0.d}, p0/z, [x0, z0.d, sxtw #2] // encoding: [0x00,0x60,0x60,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01100000-01100000-00000000
ldff1w  {z21.d}, p5/z, [x10, z21.d, uxtw]  // 11000101-00010101-01110101-01010101
// CHECK: ldff1w  {z21.d}, p5/z, [x10, z21.d, uxtw] // encoding: [0x55,0x75,0x15,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00010101-01110101-01010101
LDFF1W  {Z21.D}, P5/Z, [X10, Z21.D, UXTW]  // 11000101-00010101-01110101-01010101
// CHECK: ldff1w  {z21.d}, p5/z, [x10, z21.d, uxtw] // encoding: [0x55,0x75,0x15,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00010101-01110101-01010101
ldff1w  {z0.d}, p0/z, [x0, z0.d, uxtw]  // 11000101-00000000-01100000-00000000
// CHECK: ldff1w  {z0.d}, p0/z, [x0, z0.d, uxtw] // encoding: [0x00,0x60,0x00,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00000000-01100000-00000000
LDFF1W  {Z0.D}, P0/Z, [X0, Z0.D, UXTW]  // 11000101-00000000-01100000-00000000
// CHECK: ldff1w  {z0.d}, p0/z, [x0, z0.d, uxtw] // encoding: [0x00,0x60,0x00,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00000000-01100000-00000000
ldff1w  {z0.s}, p0/z, [x0, z0.s, sxtw #2]  // 10000101-01100000-01100000-00000000
// CHECK: ldff1w  {z0.s}, p0/z, [x0, z0.s, sxtw #2] // encoding: [0x00,0x60,0x60,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-01100000-01100000-00000000
LDFF1W  {Z0.S}, P0/Z, [X0, Z0.S, SXTW #2]  // 10000101-01100000-01100000-00000000
// CHECK: ldff1w  {z0.s}, p0/z, [x0, z0.s, sxtw #2] // encoding: [0x00,0x60,0x60,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-01100000-01100000-00000000
ldff1w  {z23.d}, p3/z, [z13.d, #32]  // 11000101-00101000-11101101-10110111
// CHECK: ldff1w  {z23.d}, p3/z, [z13.d, #32] // encoding: [0xb7,0xed,0x28,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00101000-11101101-10110111
LDFF1W  {Z23.D}, P3/Z, [Z13.D, #32]  // 11000101-00101000-11101101-10110111
// CHECK: ldff1w  {z23.d}, p3/z, [z13.d, #32] // encoding: [0xb7,0xed,0x28,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00101000-11101101-10110111
ldff1w  {z21.s}, p5/z, [x10, x21, lsl #2]  // 10100101-01010101-01110101-01010101
// CHECK: ldff1w  {z21.s}, p5/z, [x10, x21, lsl #2] // encoding: [0x55,0x75,0x55,0xa5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100101-01010101-01110101-01010101
LDFF1W  {Z21.S}, P5/Z, [X10, X21, LSL #2]  // 10100101-01010101-01110101-01010101
// CHECK: ldff1w  {z21.s}, p5/z, [x10, x21, lsl #2] // encoding: [0x55,0x75,0x55,0xa5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100101-01010101-01110101-01010101
ldff1w  {z21.s}, p5/z, [x10, z21.s, uxtw]  // 10000101-00010101-01110101-01010101
// CHECK: ldff1w  {z21.s}, p5/z, [x10, z21.s, uxtw] // encoding: [0x55,0x75,0x15,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00010101-01110101-01010101
LDFF1W  {Z21.S}, P5/Z, [X10, Z21.S, UXTW]  // 10000101-00010101-01110101-01010101
// CHECK: ldff1w  {z21.s}, p5/z, [x10, z21.s, uxtw] // encoding: [0x55,0x75,0x15,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00010101-01110101-01010101
ldff1w  {z0.s}, p0/z, [z0.s]  // 10000101-00100000-11100000-00000000
// CHECK: ldff1w  {z0.s}, p0/z, [z0.s] // encoding: [0x00,0xe0,0x20,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00100000-11100000-00000000
LDFF1W  {Z0.S}, P0/Z, [Z0.S]  // 10000101-00100000-11100000-00000000
// CHECK: ldff1w  {z0.s}, p0/z, [z0.s] // encoding: [0x00,0xe0,0x20,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00100000-11100000-00000000
ldff1w  {z23.s}, p3/z, [x13, z8.s, sxtw #2]  // 10000101-01101000-01101101-10110111
// CHECK: ldff1w  {z23.s}, p3/z, [x13, z8.s, sxtw #2] // encoding: [0xb7,0x6d,0x68,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-01101000-01101101-10110111
LDFF1W  {Z23.S}, P3/Z, [X13, Z8.S, SXTW #2]  // 10000101-01101000-01101101-10110111
// CHECK: ldff1w  {z23.s}, p3/z, [x13, z8.s, sxtw #2] // encoding: [0xb7,0x6d,0x68,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-01101000-01101101-10110111
ldff1w  {z31.d}, p7/z, [sp, z31.d, lsl #2]  // 11000101-01111111-11111111-11111111
// CHECK: ldff1w  {z31.d}, p7/z, [sp, z31.d, lsl #2] // encoding: [0xff,0xff,0x7f,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01111111-11111111-11111111
LDFF1W  {Z31.D}, P7/Z, [SP, Z31.D, LSL #2]  // 11000101-01111111-11111111-11111111
// CHECK: ldff1w  {z31.d}, p7/z, [sp, z31.d, lsl #2] // encoding: [0xff,0xff,0x7f,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01111111-11111111-11111111
ldff1w  {z21.d}, p5/z, [x10, z21.d, sxtw #2]  // 11000101-01110101-01110101-01010101
// CHECK: ldff1w  {z21.d}, p5/z, [x10, z21.d, sxtw #2] // encoding: [0x55,0x75,0x75,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01110101-01110101-01010101
LDFF1W  {Z21.D}, P5/Z, [X10, Z21.D, SXTW #2]  // 11000101-01110101-01110101-01010101
// CHECK: ldff1w  {z21.d}, p5/z, [x10, z21.d, sxtw #2] // encoding: [0x55,0x75,0x75,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01110101-01110101-01010101
ldff1w  {z0.d}, p0/z, [x0, z0.d, lsl #2]  // 11000101-01100000-11100000-00000000
// CHECK: ldff1w  {z0.d}, p0/z, [x0, z0.d, lsl #2] // encoding: [0x00,0xe0,0x60,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01100000-11100000-00000000
LDFF1W  {Z0.D}, P0/Z, [X0, Z0.D, LSL #2]  // 11000101-01100000-11100000-00000000
// CHECK: ldff1w  {z0.d}, p0/z, [x0, z0.d, lsl #2] // encoding: [0x00,0xe0,0x60,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01100000-11100000-00000000
ldff1w  {z21.d}, p5/z, [x10, x21, lsl #2]  // 10100101-01110101-01110101-01010101
// CHECK: ldff1w  {z21.d}, p5/z, [x10, x21, lsl #2] // encoding: [0x55,0x75,0x75,0xa5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100101-01110101-01110101-01010101
LDFF1W  {Z21.D}, P5/Z, [X10, X21, LSL #2]  // 10100101-01110101-01110101-01010101
// CHECK: ldff1w  {z21.d}, p5/z, [x10, x21, lsl #2] // encoding: [0x55,0x75,0x75,0xa5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100101-01110101-01110101-01010101
ldff1w  {z0.d}, p0/z, [z0.d]  // 11000101-00100000-11100000-00000000
// CHECK: ldff1w  {z0.d}, p0/z, [z0.d] // encoding: [0x00,0xe0,0x20,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00100000-11100000-00000000
LDFF1W  {Z0.D}, P0/Z, [Z0.D]  // 11000101-00100000-11100000-00000000
// CHECK: ldff1w  {z0.d}, p0/z, [z0.d] // encoding: [0x00,0xe0,0x20,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00100000-11100000-00000000
ldff1w  {z21.d}, p5/z, [x10, z21.d, lsl #2]  // 11000101-01110101-11110101-01010101
// CHECK: ldff1w  {z21.d}, p5/z, [x10, z21.d, lsl #2] // encoding: [0x55,0xf5,0x75,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01110101-11110101-01010101
LDFF1W  {Z21.D}, P5/Z, [X10, Z21.D, LSL #2]  // 11000101-01110101-11110101-01010101
// CHECK: ldff1w  {z21.d}, p5/z, [x10, z21.d, lsl #2] // encoding: [0x55,0xf5,0x75,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01110101-11110101-01010101
ldff1w  {z21.s}, p5/z, [x10, z21.s, uxtw #2]  // 10000101-00110101-01110101-01010101
// CHECK: ldff1w  {z21.s}, p5/z, [x10, z21.s, uxtw #2] // encoding: [0x55,0x75,0x35,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00110101-01110101-01010101
LDFF1W  {Z21.S}, P5/Z, [X10, Z21.S, UXTW #2]  // 10000101-00110101-01110101-01010101
// CHECK: ldff1w  {z21.s}, p5/z, [x10, z21.s, uxtw #2] // encoding: [0x55,0x75,0x35,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00110101-01110101-01010101
ldff1w  {z31.d}, p7/z, [sp, z31.d]  // 11000101-01011111-11111111-11111111
// CHECK: ldff1w  {z31.d}, p7/z, [sp, z31.d] // encoding: [0xff,0xff,0x5f,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01011111-11111111-11111111
LDFF1W  {Z31.D}, P7/Z, [SP, Z31.D]  // 11000101-01011111-11111111-11111111
// CHECK: ldff1w  {z31.d}, p7/z, [sp, z31.d] // encoding: [0xff,0xff,0x5f,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01011111-11111111-11111111
ldff1w  {z0.s}, p0/z, [x0, z0.s, sxtw]  // 10000101-01000000-01100000-00000000
// CHECK: ldff1w  {z0.s}, p0/z, [x0, z0.s, sxtw] // encoding: [0x00,0x60,0x40,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-01000000-01100000-00000000
LDFF1W  {Z0.S}, P0/Z, [X0, Z0.S, SXTW]  // 10000101-01000000-01100000-00000000
// CHECK: ldff1w  {z0.s}, p0/z, [x0, z0.s, sxtw] // encoding: [0x00,0x60,0x40,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-01000000-01100000-00000000
ldff1w  {z23.s}, p3/z, [x13, z8.s, uxtw]  // 10000101-00001000-01101101-10110111
// CHECK: ldff1w  {z23.s}, p3/z, [x13, z8.s, uxtw] // encoding: [0xb7,0x6d,0x08,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00001000-01101101-10110111
LDFF1W  {Z23.S}, P3/Z, [X13, Z8.S, UXTW]  // 10000101-00001000-01101101-10110111
// CHECK: ldff1w  {z23.s}, p3/z, [x13, z8.s, uxtw] // encoding: [0xb7,0x6d,0x08,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00001000-01101101-10110111
ldff1w  {z31.s}, p7/z, [sp, z31.s, sxtw #2]  // 10000101-01111111-01111111-11111111
// CHECK: ldff1w  {z31.s}, p7/z, [sp, z31.s, sxtw #2] // encoding: [0xff,0x7f,0x7f,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-01111111-01111111-11111111
LDFF1W  {Z31.S}, P7/Z, [SP, Z31.S, SXTW #2]  // 10000101-01111111-01111111-11111111
// CHECK: ldff1w  {z31.s}, p7/z, [sp, z31.s, sxtw #2] // encoding: [0xff,0x7f,0x7f,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-01111111-01111111-11111111
ldff1w  {z23.d}, p3/z, [x13, z8.d, sxtw #2]  // 11000101-01101000-01101101-10110111
// CHECK: ldff1w  {z23.d}, p3/z, [x13, z8.d, sxtw #2] // encoding: [0xb7,0x6d,0x68,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01101000-01101101-10110111
LDFF1W  {Z23.D}, P3/Z, [X13, Z8.D, SXTW #2]  // 11000101-01101000-01101101-10110111
// CHECK: ldff1w  {z23.d}, p3/z, [x13, z8.d, sxtw #2] // encoding: [0xb7,0x6d,0x68,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01101000-01101101-10110111
ldff1w  {z21.d}, p5/z, [x10, z21.d, sxtw]  // 11000101-01010101-01110101-01010101
// CHECK: ldff1w  {z21.d}, p5/z, [x10, z21.d, sxtw] // encoding: [0x55,0x75,0x55,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01010101-01110101-01010101
LDFF1W  {Z21.D}, P5/Z, [X10, Z21.D, SXTW]  // 11000101-01010101-01110101-01010101
// CHECK: ldff1w  {z21.d}, p5/z, [x10, z21.d, sxtw] // encoding: [0x55,0x75,0x55,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01010101-01110101-01010101
ldff1w  {z0.d}, p0/z, [x0, z0.d, sxtw]  // 11000101-01000000-01100000-00000000
// CHECK: ldff1w  {z0.d}, p0/z, [x0, z0.d, sxtw] // encoding: [0x00,0x60,0x40,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01000000-01100000-00000000
LDFF1W  {Z0.D}, P0/Z, [X0, Z0.D, SXTW]  // 11000101-01000000-01100000-00000000
// CHECK: ldff1w  {z0.d}, p0/z, [x0, z0.d, sxtw] // encoding: [0x00,0x60,0x40,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-01000000-01100000-00000000
ldff1w  {z23.s}, p3/z, [z13.s, #32]  // 10000101-00101000-11101101-10110111
// CHECK: ldff1w  {z23.s}, p3/z, [z13.s, #32] // encoding: [0xb7,0xed,0x28,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00101000-11101101-10110111
LDFF1W  {Z23.S}, P3/Z, [Z13.S, #32]  // 10000101-00101000-11101101-10110111
// CHECK: ldff1w  {z23.s}, p3/z, [z13.s, #32] // encoding: [0xb7,0xed,0x28,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00101000-11101101-10110111
ldff1w  {z21.d}, p5/z, [x10, z21.d, uxtw #2]  // 11000101-00110101-01110101-01010101
// CHECK: ldff1w  {z21.d}, p5/z, [x10, z21.d, uxtw #2] // encoding: [0x55,0x75,0x35,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00110101-01110101-01010101
LDFF1W  {Z21.D}, P5/Z, [X10, Z21.D, UXTW #2]  // 11000101-00110101-01110101-01010101
// CHECK: ldff1w  {z21.d}, p5/z, [x10, z21.d, uxtw #2] // encoding: [0x55,0x75,0x35,0xc5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 11000101-00110101-01110101-01010101
ldff1w  {z0.s}, p0/z, [x0, z0.s, uxtw #2]  // 10000101-00100000-01100000-00000000
// CHECK: ldff1w  {z0.s}, p0/z, [x0, z0.s, uxtw #2] // encoding: [0x00,0x60,0x20,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00100000-01100000-00000000
LDFF1W  {Z0.S}, P0/Z, [X0, Z0.S, UXTW #2]  // 10000101-00100000-01100000-00000000
// CHECK: ldff1w  {z0.s}, p0/z, [x0, z0.s, uxtw #2] // encoding: [0x00,0x60,0x20,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00100000-01100000-00000000
ldff1w  {z23.s}, p3/z, [x13, z8.s, uxtw #2]  // 10000101-00101000-01101101-10110111
// CHECK: ldff1w  {z23.s}, p3/z, [x13, z8.s, uxtw #2] // encoding: [0xb7,0x6d,0x28,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00101000-01101101-10110111
LDFF1W  {Z23.S}, P3/Z, [X13, Z8.S, UXTW #2]  // 10000101-00101000-01101101-10110111
// CHECK: ldff1w  {z23.s}, p3/z, [x13, z8.s, uxtw #2] // encoding: [0xb7,0x6d,0x28,0x85]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10000101-00101000-01101101-10110111
ldff1w  {z31.d}, p7/z, [sp]  // 10100101-01111111-01111111-11111111
// CHECK: ldff1w  {z31.d}, p7/z, [sp] // encoding: [0xff,0x7f,0x7f,0xa5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100101-01111111-01111111-11111111
LDFF1W  {Z31.D}, P7/Z, [SP]  // 10100101-01111111-01111111-11111111
// CHECK: ldff1w  {z31.d}, p7/z, [sp] // encoding: [0xff,0x7f,0x7f,0xa5]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100101-01111111-01111111-11111111
