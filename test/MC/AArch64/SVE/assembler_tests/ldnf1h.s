// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
ldnf1h  {z21.d}, p5/z, [x10, #5, mul vl]  // 10100100-11110101-10110101-01010101
// CHECK: ldnf1h  {z21.d}, p5/z, [x10, #5, mul vl] // encoding: [0x55,0xb5,0xf5,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-11110101-10110101-01010101
LDNF1H  {Z21.D}, P5/Z, [X10, #5, MUL VL]  // 10100100-11110101-10110101-01010101
// CHECK: ldnf1h  {z21.d}, p5/z, [x10, #5, mul vl] // encoding: [0x55,0xb5,0xf5,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-11110101-10110101-01010101
ldnf1h  {z23.s}, p3/z, [x13, #-8, mul vl]  // 10100100-11011000-10101101-10110111
// CHECK: ldnf1h  {z23.s}, p3/z, [x13, #-8, mul vl] // encoding: [0xb7,0xad,0xd8,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-11011000-10101101-10110111
LDNF1H  {Z23.S}, P3/Z, [X13, #-8, MUL VL]  // 10100100-11011000-10101101-10110111
// CHECK: ldnf1h  {z23.s}, p3/z, [x13, #-8, mul vl] // encoding: [0xb7,0xad,0xd8,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-11011000-10101101-10110111
ldnf1h  {z21.s}, p5/z, [x10, #5, mul vl]  // 10100100-11010101-10110101-01010101
// CHECK: ldnf1h  {z21.s}, p5/z, [x10, #5, mul vl] // encoding: [0x55,0xb5,0xd5,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-11010101-10110101-01010101
LDNF1H  {Z21.S}, P5/Z, [X10, #5, MUL VL]  // 10100100-11010101-10110101-01010101
// CHECK: ldnf1h  {z21.s}, p5/z, [x10, #5, mul vl] // encoding: [0x55,0xb5,0xd5,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-11010101-10110101-01010101
ldnf1h  {z31.s}, p7/z, [sp, #-1, mul vl]  // 10100100-11011111-10111111-11111111
// CHECK: ldnf1h  {z31.s}, p7/z, [sp, #-1, mul vl] // encoding: [0xff,0xbf,0xdf,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-11011111-10111111-11111111
LDNF1H  {Z31.S}, P7/Z, [SP, #-1, MUL VL]  // 10100100-11011111-10111111-11111111
// CHECK: ldnf1h  {z31.s}, p7/z, [sp, #-1, mul vl] // encoding: [0xff,0xbf,0xdf,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-11011111-10111111-11111111
ldnf1h  {z0.s}, p0/z, [x0]  // 10100100-11010000-10100000-00000000
// CHECK: ldnf1h  {z0.s}, p0/z, [x0] // encoding: [0x00,0xa0,0xd0,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-11010000-10100000-00000000
LDNF1H  {Z0.S}, P0/Z, [X0]  // 10100100-11010000-10100000-00000000
// CHECK: ldnf1h  {z0.s}, p0/z, [x0] // encoding: [0x00,0xa0,0xd0,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-11010000-10100000-00000000
ldnf1h  {z31.d}, p7/z, [sp, #-1, mul vl]  // 10100100-11111111-10111111-11111111
// CHECK: ldnf1h  {z31.d}, p7/z, [sp, #-1, mul vl] // encoding: [0xff,0xbf,0xff,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-11111111-10111111-11111111
LDNF1H  {Z31.D}, P7/Z, [SP, #-1, MUL VL]  // 10100100-11111111-10111111-11111111
// CHECK: ldnf1h  {z31.d}, p7/z, [sp, #-1, mul vl] // encoding: [0xff,0xbf,0xff,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-11111111-10111111-11111111
ldnf1h  {z23.h}, p3/z, [x13, #-8, mul vl]  // 10100100-10111000-10101101-10110111
// CHECK: ldnf1h  {z23.h}, p3/z, [x13, #-8, mul vl] // encoding: [0xb7,0xad,0xb8,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-10111000-10101101-10110111
LDNF1H  {Z23.H}, P3/Z, [X13, #-8, MUL VL]  // 10100100-10111000-10101101-10110111
// CHECK: ldnf1h  {z23.h}, p3/z, [x13, #-8, mul vl] // encoding: [0xb7,0xad,0xb8,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-10111000-10101101-10110111
ldnf1h  {z23.d}, p3/z, [x13, #-8, mul vl]  // 10100100-11111000-10101101-10110111
// CHECK: ldnf1h  {z23.d}, p3/z, [x13, #-8, mul vl] // encoding: [0xb7,0xad,0xf8,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-11111000-10101101-10110111
LDNF1H  {Z23.D}, P3/Z, [X13, #-8, MUL VL]  // 10100100-11111000-10101101-10110111
// CHECK: ldnf1h  {z23.d}, p3/z, [x13, #-8, mul vl] // encoding: [0xb7,0xad,0xf8,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-11111000-10101101-10110111
ldnf1h  {z31.h}, p7/z, [sp, #-1, mul vl]  // 10100100-10111111-10111111-11111111
// CHECK: ldnf1h  {z31.h}, p7/z, [sp, #-1, mul vl] // encoding: [0xff,0xbf,0xbf,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-10111111-10111111-11111111
LDNF1H  {Z31.H}, P7/Z, [SP, #-1, MUL VL]  // 10100100-10111111-10111111-11111111
// CHECK: ldnf1h  {z31.h}, p7/z, [sp, #-1, mul vl] // encoding: [0xff,0xbf,0xbf,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-10111111-10111111-11111111
ldnf1h  {z0.d}, p0/z, [x0]  // 10100100-11110000-10100000-00000000
// CHECK: ldnf1h  {z0.d}, p0/z, [x0] // encoding: [0x00,0xa0,0xf0,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-11110000-10100000-00000000
LDNF1H  {Z0.D}, P0/Z, [X0]  // 10100100-11110000-10100000-00000000
// CHECK: ldnf1h  {z0.d}, p0/z, [x0] // encoding: [0x00,0xa0,0xf0,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-11110000-10100000-00000000
ldnf1h  {z21.h}, p5/z, [x10, #5, mul vl]  // 10100100-10110101-10110101-01010101
// CHECK: ldnf1h  {z21.h}, p5/z, [x10, #5, mul vl] // encoding: [0x55,0xb5,0xb5,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-10110101-10110101-01010101
LDNF1H  {Z21.H}, P5/Z, [X10, #5, MUL VL]  // 10100100-10110101-10110101-01010101
// CHECK: ldnf1h  {z21.h}, p5/z, [x10, #5, mul vl] // encoding: [0x55,0xb5,0xb5,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-10110101-10110101-01010101
ldnf1h  {z0.h}, p0/z, [x0]  // 10100100-10110000-10100000-00000000
// CHECK: ldnf1h  {z0.h}, p0/z, [x0] // encoding: [0x00,0xa0,0xb0,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-10110000-10100000-00000000
LDNF1H  {Z0.H}, P0/Z, [X0]  // 10100100-10110000-10100000-00000000
// CHECK: ldnf1h  {z0.h}, p0/z, [x0] // encoding: [0x00,0xa0,0xb0,0xa4]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 10100100-10110000-10100000-00000000
