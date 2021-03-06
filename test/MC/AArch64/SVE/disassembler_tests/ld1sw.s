# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x00,0x80,0x60,0xc5
# CHECK: ld1sw   {z0.d}, p0/z, [x0, z0.d, lsl #2] // encoding: [0x00,0x80,0x60,0xc5]
# CHECK-ERROR: invalid instruction encoding
0x00,0x80,0x40,0xc5
# CHECK: ld1sw   {z0.d}, p0/z, [x0, z0.d] // encoding: [0x00,0x80,0x40,0xc5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x4d,0x88,0xa4
# CHECK: ld1sw   {z23.d}, p3/z, [x13, x8, lsl #2] // encoding: [0xb7,0x4d,0x88,0xa4]
# CHECK-ERROR: invalid instruction encoding
0x55,0x95,0x35,0xc5
# CHECK: ld1sw   {z21.d}, p5/z, [z10.d, #84] // encoding: [0x55,0x95,0x35,0xc5]
# CHECK-ERROR: invalid instruction encoding
0x00,0x80,0x20,0xc5
# CHECK: ld1sw   {z0.d}, p0/z, [z0.d] // encoding: [0x00,0x80,0x20,0xc5]
# CHECK-ERROR: invalid instruction encoding
0xff,0x9f,0x5f,0xc5
# CHECK: ld1sw   {z31.d}, p7/z, [sp, z31.d] // encoding: [0xff,0x9f,0x5f,0xc5]
# CHECK-ERROR: invalid instruction encoding
0x55,0x55,0x95,0xa4
# CHECK: ld1sw   {z21.d}, p5/z, [x10, x21, lsl #2] // encoding: [0x55,0x55,0x95,0xa4]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xad,0x88,0xa4
# CHECK: ld1sw   {z23.d}, p3/z, [x13, #-8, mul vl] // encoding: [0xb7,0xad,0x88,0xa4]
# CHECK-ERROR: invalid instruction encoding
0xff,0x1f,0x1f,0xc5
# CHECK: ld1sw   {z31.d}, p7/z, [sp, z31.d, uxtw] // encoding: [0xff,0x1f,0x1f,0xc5]
# CHECK-ERROR: invalid instruction encoding
0x00,0x00,0x00,0xc5
# CHECK: ld1sw   {z0.d}, p0/z, [x0, z0.d, uxtw] // encoding: [0x00,0x00,0x00,0xc5]
# CHECK-ERROR: invalid instruction encoding
0x00,0x00,0x40,0xc5
# CHECK: ld1sw   {z0.d}, p0/z, [x0, z0.d, sxtw] // encoding: [0x00,0x00,0x40,0xc5]
# CHECK-ERROR: invalid instruction encoding
0x00,0x00,0x60,0xc5
# CHECK: ld1sw   {z0.d}, p0/z, [x0, z0.d, sxtw #2] // encoding: [0x00,0x00,0x60,0xc5]
# CHECK-ERROR: invalid instruction encoding
0xff,0x1f,0x3f,0xc5
# CHECK: ld1sw   {z31.d}, p7/z, [sp, z31.d, uxtw #2] // encoding: [0xff,0x1f,0x3f,0xc5]
# CHECK-ERROR: invalid instruction encoding
0x55,0x95,0x55,0xc5
# CHECK: ld1sw   {z21.d}, p5/z, [x10, z21.d] // encoding: [0x55,0x95,0x55,0xc5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x8d,0x68,0xc5
# CHECK: ld1sw   {z23.d}, p3/z, [x13, z8.d, lsl #2] // encoding: [0xb7,0x8d,0x68,0xc5]
# CHECK-ERROR: invalid instruction encoding
0x55,0x95,0x75,0xc5
# CHECK: ld1sw   {z21.d}, p5/z, [x10, z21.d, lsl #2] // encoding: [0x55,0x95,0x75,0xc5]
# CHECK-ERROR: invalid instruction encoding
0xff,0x9f,0x3f,0xc5
# CHECK: ld1sw   {z31.d}, p7/z, [z31.d, #124] // encoding: [0xff,0x9f,0x3f,0xc5]
# CHECK-ERROR: invalid instruction encoding
0x55,0xb5,0x85,0xa4
# CHECK: ld1sw   {z21.d}, p5/z, [x10, #5, mul vl] // encoding: [0x55,0xb5,0x85,0xa4]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x0d,0x08,0xc5
# CHECK: ld1sw   {z23.d}, p3/z, [x13, z8.d, uxtw] // encoding: [0xb7,0x0d,0x08,0xc5]
# CHECK-ERROR: invalid instruction encoding
0xff,0x9f,0x7f,0xc5
# CHECK: ld1sw   {z31.d}, p7/z, [sp, z31.d, lsl #2] // encoding: [0xff,0x9f,0x7f,0xc5]
# CHECK-ERROR: invalid instruction encoding
0x00,0x00,0x20,0xc5
# CHECK: ld1sw   {z0.d}, p0/z, [x0, z0.d, uxtw #2] // encoding: [0x00,0x00,0x20,0xc5]
# CHECK-ERROR: invalid instruction encoding
0xff,0xbf,0x8f,0xa4
# CHECK: ld1sw   {z31.d}, p7/z, [sp, #-1, mul vl] // encoding: [0xff,0xbf,0x8f,0xa4]
# CHECK-ERROR: invalid instruction encoding
0x00,0xa0,0x80,0xa4
# CHECK: ld1sw   {z0.d}, p0/z, [x0] // encoding: [0x00,0xa0,0x80,0xa4]
# CHECK-ERROR: invalid instruction encoding
0xff,0x1f,0x5f,0xc5
# CHECK: ld1sw   {z31.d}, p7/z, [sp, z31.d, sxtw] // encoding: [0xff,0x1f,0x5f,0xc5]
# CHECK-ERROR: invalid instruction encoding
0x55,0x15,0x75,0xc5
# CHECK: ld1sw   {z21.d}, p5/z, [x10, z21.d, sxtw #2] // encoding: [0x55,0x15,0x75,0xc5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x0d,0x48,0xc5
# CHECK: ld1sw   {z23.d}, p3/z, [x13, z8.d, sxtw] // encoding: [0xb7,0x0d,0x48,0xc5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x0d,0x28,0xc5
# CHECK: ld1sw   {z23.d}, p3/z, [x13, z8.d, uxtw #2] // encoding: [0xb7,0x0d,0x28,0xc5]
# CHECK-ERROR: invalid instruction encoding
0xff,0x1f,0x7f,0xc5
# CHECK: ld1sw   {z31.d}, p7/z, [sp, z31.d, sxtw #2] // encoding: [0xff,0x1f,0x7f,0xc5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x8d,0x28,0xc5
# CHECK: ld1sw   {z23.d}, p3/z, [z13.d, #32] // encoding: [0xb7,0x8d,0x28,0xc5]
# CHECK-ERROR: invalid instruction encoding
0x25,0x4e,0x90,0xa4
# CHECK: ld1sw   {z5.d}, p3/z, [x17, x16, lsl #2] // encoding: [0x25,0x4e,0x90,0xa4]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x8d,0x48,0xc5
# CHECK: ld1sw   {z23.d}, p3/z, [x13, z8.d] // encoding: [0xb7,0x8d,0x48,0xc5]
# CHECK-ERROR: invalid instruction encoding
0x55,0x15,0x55,0xc5
# CHECK: ld1sw   {z21.d}, p5/z, [x10, z21.d, sxtw] // encoding: [0x55,0x15,0x55,0xc5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x0d,0x68,0xc5
# CHECK: ld1sw   {z23.d}, p3/z, [x13, z8.d, sxtw #2] // encoding: [0xb7,0x0d,0x68,0xc5]
# CHECK-ERROR: invalid instruction encoding
0x55,0x15,0x15,0xc5
# CHECK: ld1sw   {z21.d}, p5/z, [x10, z21.d, uxtw] // encoding: [0x55,0x15,0x15,0xc5]
# CHECK-ERROR: invalid instruction encoding
0x00,0x40,0x80,0xa4
# CHECK: ld1sw   {z0.d}, p0/z, [x0, x0, lsl #2] // encoding: [0x00,0x40,0x80,0xa4]
# CHECK-ERROR: invalid instruction encoding
0x55,0x15,0x35,0xc5
# CHECK: ld1sw   {z21.d}, p5/z, [x10, z21.d, uxtw #2] // encoding: [0x55,0x15,0x35,0xc5]
# CHECK-ERROR: invalid instruction encoding
