// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
sqadd   z21.h, z10.h, z21.h  // 00000100-01110101-00010001-01010101
// CHECK: sqadd   z21.h, z10.h, z21.h // encoding: [0x55,0x11,0x75,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01110101-00010001-01010101
SQADD   Z21.H, Z10.H, Z21.H  // 00000100-01110101-00010001-01010101
// CHECK: sqadd   z21.h, z10.h, z21.h // encoding: [0x55,0x11,0x75,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01110101-00010001-01010101
sqadd   z1.b, z1.b, #33  // 00100101-00100100-11000100-00100001
// CHECK: sqadd   z1.b, z1.b, #33 // encoding: [0x21,0xc4,0x24,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00100100-11000100-00100001
SQADD   Z1.B, Z1.B, #33  // 00100101-00100100-11000100-00100001
// CHECK: sqadd   z1.b, z1.b, #33 // encoding: [0x21,0xc4,0x24,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00100100-11000100-00100001
sqadd   z21.d, z21.d, #170  // 00100101-11100100-11010101-01010101
// CHECK: sqadd   z21.d, z21.d, #170 // encoding: [0x55,0xd5,0xe4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11100100-11010101-01010101
SQADD   Z21.D, Z21.D, #170  // 00100101-11100100-11010101-01010101
// CHECK: sqadd   z21.d, z21.d, #170 // encoding: [0x55,0xd5,0xe4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11100100-11010101-01010101
sqadd   z0.d, z0.d, #0  // 00100101-11100100-11000000-00000000
// CHECK: sqadd   z0.d, z0.d, #0 // encoding: [0x00,0xc0,0xe4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11100100-11000000-00000000
SQADD   Z0.D, Z0.D, #0  // 00100101-11100100-11000000-00000000
// CHECK: sqadd   z0.d, z0.d, #0 // encoding: [0x00,0xc0,0xe4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11100100-11000000-00000000
sqadd   z31.d, z31.d, z31.d  // 00000100-11111111-00010011-11111111
// CHECK: sqadd   z31.d, z31.d, z31.d // encoding: [0xff,0x13,0xff,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11111111-00010011-11111111
SQADD   Z31.D, Z31.D, Z31.D  // 00000100-11111111-00010011-11111111
// CHECK: sqadd   z31.d, z31.d, z31.d // encoding: [0xff,0x13,0xff,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11111111-00010011-11111111
sqadd   z21.b, z10.b, z21.b  // 00000100-00110101-00010001-01010101
// CHECK: sqadd   z21.b, z10.b, z21.b // encoding: [0x55,0x11,0x35,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00110101-00010001-01010101
SQADD   Z21.B, Z10.B, Z21.B  // 00000100-00110101-00010001-01010101
// CHECK: sqadd   z21.b, z10.b, z21.b // encoding: [0x55,0x11,0x35,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00110101-00010001-01010101
sqadd   z21.h, z21.h, #170  // 00100101-01100100-11010101-01010101
// CHECK: sqadd   z21.h, z21.h, #170 // encoding: [0x55,0xd5,0x64,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01100100-11010101-01010101
SQADD   Z21.H, Z21.H, #170  // 00100101-01100100-11010101-01010101
// CHECK: sqadd   z21.h, z21.h, #170 // encoding: [0x55,0xd5,0x64,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01100100-11010101-01010101
sqadd   z21.s, z10.s, z21.s  // 00000100-10110101-00010001-01010101
// CHECK: sqadd   z21.s, z10.s, z21.s // encoding: [0x55,0x11,0xb5,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10110101-00010001-01010101
SQADD   Z21.S, Z10.S, Z21.S  // 00000100-10110101-00010001-01010101
// CHECK: sqadd   z21.s, z10.s, z21.s // encoding: [0x55,0x11,0xb5,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10110101-00010001-01010101
sqadd   z5.b, z5.b, #113  // 00100101-00100100-11001110-00100101
// CHECK: sqadd   z5.b, z5.b, #113 // encoding: [0x25,0xce,0x24,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00100100-11001110-00100101
SQADD   Z5.B, Z5.B, #113  // 00100101-00100100-11001110-00100101
// CHECK: sqadd   z5.b, z5.b, #113 // encoding: [0x25,0xce,0x24,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00100100-11001110-00100101
sqadd   z0.d, z0.d, z0.d  // 00000100-11100000-00010000-00000000
// CHECK: sqadd   z0.d, z0.d, z0.d // encoding: [0x00,0x10,0xe0,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11100000-00010000-00000000
SQADD   Z0.D, Z0.D, Z0.D  // 00000100-11100000-00010000-00000000
// CHECK: sqadd   z0.d, z0.d, z0.d // encoding: [0x00,0x10,0xe0,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11100000-00010000-00000000
sqadd   z31.s, z31.s, #255, lsl #8  // 00100101-10100100-11111111-11111111
// CHECK: sqadd   z31.s, z31.s, #65280 // encoding: [0xff,0xff,0xa4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10100100-11111111-11111111
SQADD   Z31.S, Z31.S, #255, LSL #8  // 00100101-10100100-11111111-11111111
// CHECK: sqadd   z31.s, z31.s, #65280 // encoding: [0xff,0xff,0xa4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10100100-11111111-11111111
sqadd   z31.s, z31.s, #65280  // 00100101-10100100-11111111-11111111
// CHECK: sqadd   z31.s, z31.s, #65280 // encoding: [0xff,0xff,0xa4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10100100-11111111-11111111
SQADD   Z31.S, Z31.S, #65280  // 00100101-10100100-11111111-11111111
// CHECK: sqadd   z31.s, z31.s, #65280 // encoding: [0xff,0xff,0xa4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10100100-11111111-11111111
sqadd   z23.d, z13.d, z8.d  // 00000100-11101000-00010001-10110111
// CHECK: sqadd   z23.d, z13.d, z8.d // encoding: [0xb7,0x11,0xe8,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11101000-00010001-10110111
SQADD   Z23.D, Z13.D, Z8.D  // 00000100-11101000-00010001-10110111
// CHECK: sqadd   z23.d, z13.d, z8.d // encoding: [0xb7,0x11,0xe8,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11101000-00010001-10110111
sqadd   z31.b, z31.b, z31.b  // 00000100-00111111-00010011-11111111
// CHECK: sqadd   z31.b, z31.b, z31.b // encoding: [0xff,0x13,0x3f,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00111111-00010011-11111111
SQADD   Z31.B, Z31.B, Z31.B  // 00000100-00111111-00010011-11111111
// CHECK: sqadd   z31.b, z31.b, z31.b // encoding: [0xff,0x13,0x3f,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00111111-00010011-11111111
sqadd   z0.s, z0.s, #0  // 00100101-10100100-11000000-00000000
// CHECK: sqadd   z0.s, z0.s, #0 // encoding: [0x00,0xc0,0xa4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10100100-11000000-00000000
SQADD   Z0.S, Z0.S, #0  // 00100101-10100100-11000000-00000000
// CHECK: sqadd   z0.s, z0.s, #0 // encoding: [0x00,0xc0,0xa4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10100100-11000000-00000000
sqadd   z31.d, z31.d, #255, lsl #8  // 00100101-11100100-11111111-11111111
// CHECK: sqadd   z31.d, z31.d, #65280 // encoding: [0xff,0xff,0xe4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11100100-11111111-11111111
SQADD   Z31.D, Z31.D, #255, LSL #8  // 00100101-11100100-11111111-11111111
// CHECK: sqadd   z31.d, z31.d, #65280 // encoding: [0xff,0xff,0xe4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11100100-11111111-11111111
sqadd   z31.d, z31.d, #65280  // 00100101-11100100-11111111-11111111
// CHECK: sqadd   z31.d, z31.d, #65280 // encoding: [0xff,0xff,0xe4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11100100-11111111-11111111
SQADD   Z31.D, Z31.D, #65280  // 00100101-11100100-11111111-11111111
// CHECK: sqadd   z31.d, z31.d, #65280 // encoding: [0xff,0xff,0xe4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11100100-11111111-11111111
sqadd   z0.h, z0.h, #0  // 00100101-01100100-11000000-00000000
// CHECK: sqadd   z0.h, z0.h, #0 // encoding: [0x00,0xc0,0x64,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01100100-11000000-00000000
SQADD   Z0.H, Z0.H, #0  // 00100101-01100100-11000000-00000000
// CHECK: sqadd   z0.h, z0.h, #0 // encoding: [0x00,0xc0,0x64,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01100100-11000000-00000000
sqadd   z0.b, z0.b, #0  // 00100101-00100100-11000000-00000000
// CHECK: sqadd   z0.b, z0.b, #0 // encoding: [0x00,0xc0,0x24,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00100100-11000000-00000000
SQADD   Z0.B, Z0.B, #0  // 00100101-00100100-11000000-00000000
// CHECK: sqadd   z0.b, z0.b, #0 // encoding: [0x00,0xc0,0x24,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00100100-11000000-00000000
sqadd   z0.b, z0.b, z0.b  // 00000100-00100000-00010000-00000000
// CHECK: sqadd   z0.b, z0.b, z0.b // encoding: [0x00,0x10,0x20,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00100000-00010000-00000000
SQADD   Z0.B, Z0.B, Z0.B  // 00000100-00100000-00010000-00000000
// CHECK: sqadd   z0.b, z0.b, z0.b // encoding: [0x00,0x10,0x20,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00100000-00010000-00000000
sqadd   z31.s, z31.s, z31.s  // 00000100-10111111-00010011-11111111
// CHECK: sqadd   z31.s, z31.s, z31.s // encoding: [0xff,0x13,0xbf,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10111111-00010011-11111111
SQADD   Z31.S, Z31.S, Z31.S  // 00000100-10111111-00010011-11111111
// CHECK: sqadd   z31.s, z31.s, z31.s // encoding: [0xff,0x13,0xbf,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10111111-00010011-11111111
sqadd   z21.d, z10.d, z21.d  // 00000100-11110101-00010001-01010101
// CHECK: sqadd   z21.d, z10.d, z21.d // encoding: [0x55,0x11,0xf5,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11110101-00010001-01010101
SQADD   Z21.D, Z10.D, Z21.D  // 00000100-11110101-00010001-01010101
// CHECK: sqadd   z21.d, z10.d, z21.d // encoding: [0x55,0x11,0xf5,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-11110101-00010001-01010101
sqadd   z23.s, z13.s, z8.s  // 00000100-10101000-00010001-10110111
// CHECK: sqadd   z23.s, z13.s, z8.s // encoding: [0xb7,0x11,0xa8,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10101000-00010001-10110111
SQADD   Z23.S, Z13.S, Z8.S  // 00000100-10101000-00010001-10110111
// CHECK: sqadd   z23.s, z13.s, z8.s // encoding: [0xb7,0x11,0xa8,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10101000-00010001-10110111
sqadd   z23.d, z23.d, #109, lsl #8  // 00100101-11100100-11101101-10110111
// CHECK: sqadd   z23.d, z23.d, #27904 // encoding: [0xb7,0xed,0xe4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11100100-11101101-10110111
SQADD   Z23.D, Z23.D, #109, LSL #8  // 00100101-11100100-11101101-10110111
// CHECK: sqadd   z23.d, z23.d, #27904 // encoding: [0xb7,0xed,0xe4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11100100-11101101-10110111
sqadd   z23.d, z23.d, #27904  // 00100101-11100100-11101101-10110111
// CHECK: sqadd   z23.d, z23.d, #27904 // encoding: [0xb7,0xed,0xe4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11100100-11101101-10110111
SQADD   Z23.D, Z23.D, #27904  // 00100101-11100100-11101101-10110111
// CHECK: sqadd   z23.d, z23.d, #27904 // encoding: [0xb7,0xed,0xe4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-11100100-11101101-10110111
sqadd   z31.h, z31.h, z31.h  // 00000100-01111111-00010011-11111111
// CHECK: sqadd   z31.h, z31.h, z31.h // encoding: [0xff,0x13,0x7f,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01111111-00010011-11111111
SQADD   Z31.H, Z31.H, Z31.H  // 00000100-01111111-00010011-11111111
// CHECK: sqadd   z31.h, z31.h, z31.h // encoding: [0xff,0x13,0x7f,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01111111-00010011-11111111
sqadd   z23.b, z13.b, z8.b  // 00000100-00101000-00010001-10110111
// CHECK: sqadd   z23.b, z13.b, z8.b // encoding: [0xb7,0x11,0x28,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00101000-00010001-10110111
SQADD   Z23.B, Z13.B, Z8.B  // 00000100-00101000-00010001-10110111
// CHECK: sqadd   z23.b, z13.b, z8.b // encoding: [0xb7,0x11,0x28,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-00101000-00010001-10110111
sqadd   z23.h, z23.h, #109, lsl #8  // 00100101-01100100-11101101-10110111
// CHECK: sqadd   z23.h, z23.h, #27904 // encoding: [0xb7,0xed,0x64,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01100100-11101101-10110111
SQADD   Z23.H, Z23.H, #109, LSL #8  // 00100101-01100100-11101101-10110111
// CHECK: sqadd   z23.h, z23.h, #27904 // encoding: [0xb7,0xed,0x64,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01100100-11101101-10110111
sqadd   z23.h, z23.h, #27904  // 00100101-01100100-11101101-10110111
// CHECK: sqadd   z23.h, z23.h, #27904 // encoding: [0xb7,0xed,0x64,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01100100-11101101-10110111
SQADD   Z23.H, Z23.H, #27904  // 00100101-01100100-11101101-10110111
// CHECK: sqadd   z23.h, z23.h, #27904 // encoding: [0xb7,0xed,0x64,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01100100-11101101-10110111
sqadd   z23.h, z13.h, z8.h  // 00000100-01101000-00010001-10110111
// CHECK: sqadd   z23.h, z13.h, z8.h // encoding: [0xb7,0x11,0x68,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01101000-00010001-10110111
SQADD   Z23.H, Z13.H, Z8.H  // 00000100-01101000-00010001-10110111
// CHECK: sqadd   z23.h, z13.h, z8.h // encoding: [0xb7,0x11,0x68,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01101000-00010001-10110111
sqadd   z0.h, z0.h, z0.h  // 00000100-01100000-00010000-00000000
// CHECK: sqadd   z0.h, z0.h, z0.h // encoding: [0x00,0x10,0x60,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01100000-00010000-00000000
SQADD   Z0.H, Z0.H, Z0.H  // 00000100-01100000-00010000-00000000
// CHECK: sqadd   z0.h, z0.h, z0.h // encoding: [0x00,0x10,0x60,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-01100000-00010000-00000000
sqadd   z23.s, z23.s, #109, lsl #8  // 00100101-10100100-11101101-10110111
// CHECK: sqadd   z23.s, z23.s, #27904 // encoding: [0xb7,0xed,0xa4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10100100-11101101-10110111
SQADD   Z23.S, Z23.S, #109, LSL #8  // 00100101-10100100-11101101-10110111
// CHECK: sqadd   z23.s, z23.s, #27904 // encoding: [0xb7,0xed,0xa4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10100100-11101101-10110111
sqadd   z23.s, z23.s, #27904  // 00100101-10100100-11101101-10110111
// CHECK: sqadd   z23.s, z23.s, #27904 // encoding: [0xb7,0xed,0xa4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10100100-11101101-10110111
SQADD   Z23.S, Z23.S, #27904  // 00100101-10100100-11101101-10110111
// CHECK: sqadd   z23.s, z23.s, #27904 // encoding: [0xb7,0xed,0xa4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10100100-11101101-10110111
sqadd   z21.b, z21.b, #170  // 00100101-00100100-11010101-01010101
// CHECK: sqadd   z21.b, z21.b, #170 // encoding: [0x55,0xd5,0x24,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00100100-11010101-01010101
SQADD   Z21.B, Z21.B, #170  // 00100101-00100100-11010101-01010101
// CHECK: sqadd   z21.b, z21.b, #170 // encoding: [0x55,0xd5,0x24,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-00100100-11010101-01010101
sqadd   z31.h, z31.h, #255, lsl #8  // 00100101-01100100-11111111-11111111
// CHECK: sqadd   z31.h, z31.h, #65280 // encoding: [0xff,0xff,0x64,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01100100-11111111-11111111
SQADD   Z31.H, Z31.H, #255, LSL #8  // 00100101-01100100-11111111-11111111
// CHECK: sqadd   z31.h, z31.h, #65280 // encoding: [0xff,0xff,0x64,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01100100-11111111-11111111
sqadd   z31.h, z31.h, #65280  // 00100101-01100100-11111111-11111111
// CHECK: sqadd   z31.h, z31.h, #65280 // encoding: [0xff,0xff,0x64,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01100100-11111111-11111111
SQADD   Z31.H, Z31.H, #65280  // 00100101-01100100-11111111-11111111
// CHECK: sqadd   z31.h, z31.h, #65280 // encoding: [0xff,0xff,0x64,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-01100100-11111111-11111111
sqadd   z0.s, z0.s, z0.s  // 00000100-10100000-00010000-00000000
// CHECK: sqadd   z0.s, z0.s, z0.s // encoding: [0x00,0x10,0xa0,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10100000-00010000-00000000
SQADD   Z0.S, Z0.S, Z0.S  // 00000100-10100000-00010000-00000000
// CHECK: sqadd   z0.s, z0.s, z0.s // encoding: [0x00,0x10,0xa0,0x04]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00000100-10100000-00010000-00000000
sqadd   z21.s, z21.s, #170  // 00100101-10100100-11010101-01010101
// CHECK: sqadd   z21.s, z21.s, #170 // encoding: [0x55,0xd5,0xa4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10100100-11010101-01010101
SQADD   Z21.S, Z21.S, #170  // 00100101-10100100-11010101-01010101
// CHECK: sqadd   z21.s, z21.s, #170 // encoding: [0x55,0xd5,0xa4,0x25]
// CHECK-ERROR: instruction requires: sve
// CHECK-ERROR-NEXT: 00100101-10100100-11010101-01010101
