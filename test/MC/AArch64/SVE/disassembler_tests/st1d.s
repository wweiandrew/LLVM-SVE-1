# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xff,0xbf,0xdf,0xe5
# CHECK: st1d    {z31.d}, p7, [z31.d, #248] // encoding: [0xff,0xbf,0xdf,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0xb5,0xd5,0xe5
# CHECK: st1d    {z21.d}, p5, [z10.d, #168] // encoding: [0x55,0xb5,0xd5,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xad,0xa8,0xe5
# CHECK: st1d    {z23.d}, p3, [x13, z8.d, lsl #3] // encoding: [0xb7,0xad,0xa8,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xff,0xdf,0xbf,0xe5
# CHECK: st1d    {z31.d}, p7, [sp, z31.d, sxtw #3] // encoding: [0xff,0xdf,0xbf,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0xb5,0x95,0xe5
# CHECK: st1d    {z21.d}, p5, [x10, z21.d] // encoding: [0x55,0xb5,0x95,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0x55,0xf5,0xe5
# CHECK: st1d    {z21.d}, p5, [x10, x21, lsl #3] // encoding: [0x55,0x55,0xf5,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xad,0xc8,0xe5
# CHECK: st1d    {z23.d}, p3, [z13.d, #64] // encoding: [0xb7,0xad,0xc8,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0xd5,0xb5,0xe5
# CHECK: st1d    {z21.d}, p5, [x10, z21.d, sxtw #3] // encoding: [0x55,0xd5,0xb5,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xff,0x9f,0xbf,0xe5
# CHECK: st1d    {z31.d}, p7, [sp, z31.d, uxtw #3] // encoding: [0xff,0x9f,0xbf,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0xc0,0x80,0xe5
# CHECK: st1d    {z0.d}, p0, [x0, z0.d, sxtw] // encoding: [0x00,0xc0,0x80,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0x95,0x95,0xe5
# CHECK: st1d    {z21.d}, p5, [x10, z21.d, uxtw] // encoding: [0x55,0x95,0x95,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0xc0,0xa0,0xe5
# CHECK: st1d    {z0.d}, p0, [x0, z0.d, sxtw #3] // encoding: [0x00,0xc0,0xa0,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0xd5,0x95,0xe5
# CHECK: st1d    {z21.d}, p5, [x10, z21.d, sxtw] // encoding: [0x55,0xd5,0x95,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xff,0xbf,0x9f,0xe5
# CHECK: st1d    {z31.d}, p7, [sp, z31.d] // encoding: [0xff,0xbf,0x9f,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xff,0x9f,0x9f,0xe5
# CHECK: st1d    {z31.d}, p7, [sp, z31.d, uxtw] // encoding: [0xff,0x9f,0x9f,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0xa0,0xc0,0xe5
# CHECK: st1d    {z0.d}, p0, [z0.d] // encoding: [0x00,0xa0,0xc0,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0xf5,0xe5,0xe5
# CHECK: st1d    {z21.d}, p5, [x10, #5, mul vl] // encoding: [0x55,0xf5,0xe5,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x8d,0x88,0xe5
# CHECK: st1d    {z23.d}, p3, [x13, z8.d, uxtw] // encoding: [0xb7,0x8d,0x88,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0x80,0x80,0xe5
# CHECK: st1d    {z0.d}, p0, [x0, z0.d, uxtw] // encoding: [0x00,0x80,0x80,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0x40,0xe0,0xe5
# CHECK: st1d    {z0.d}, p0, [x0, x0, lsl #3] // encoding: [0x00,0x40,0xe0,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x8d,0xa8,0xe5
# CHECK: st1d    {z23.d}, p3, [x13, z8.d, uxtw #3] // encoding: [0xb7,0x8d,0xa8,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x4d,0xe8,0xe5
# CHECK: st1d    {z23.d}, p3, [x13, x8, lsl #3] // encoding: [0xb7,0x4d,0xe8,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xff,0xbf,0xbf,0xe5
# CHECK: st1d    {z31.d}, p7, [sp, z31.d, lsl #3] // encoding: [0xff,0xbf,0xbf,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xff,0xdf,0x9f,0xe5
# CHECK: st1d    {z31.d}, p7, [sp, z31.d, sxtw] // encoding: [0xff,0xdf,0x9f,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x25,0x4e,0xf0,0xe5
# CHECK: st1d    {z5.d}, p3, [x17, x16, lsl #3] // encoding: [0x25,0x4e,0xf0,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xcd,0x88,0xe5
# CHECK: st1d    {z23.d}, p3, [x13, z8.d, sxtw] // encoding: [0xb7,0xcd,0x88,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0xb5,0xb5,0xe5
# CHECK: st1d    {z21.d}, p5, [x10, z21.d, lsl #3] // encoding: [0x55,0xb5,0xb5,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xad,0x88,0xe5
# CHECK: st1d    {z23.d}, p3, [x13, z8.d] // encoding: [0xb7,0xad,0x88,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0x80,0xa0,0xe5
# CHECK: st1d    {z0.d}, p0, [x0, z0.d, uxtw #3] // encoding: [0x00,0x80,0xa0,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xed,0xe8,0xe5
# CHECK: st1d    {z23.d}, p3, [x13, #-8, mul vl] // encoding: [0xb7,0xed,0xe8,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0xa0,0xa0,0xe5
# CHECK: st1d    {z0.d}, p0, [x0, z0.d, lsl #3] // encoding: [0x00,0xa0,0xa0,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0xe0,0xe0,0xe5
# CHECK: st1d    {z0.d}, p0, [x0] // encoding: [0x00,0xe0,0xe0,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xcd,0xa8,0xe5
# CHECK: st1d    {z23.d}, p3, [x13, z8.d, sxtw #3] // encoding: [0xb7,0xcd,0xa8,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x00,0xa0,0x80,0xe5
# CHECK: st1d    {z0.d}, p0, [x0, z0.d] // encoding: [0x00,0xa0,0x80,0xe5]
# CHECK-ERROR: invalid instruction encoding
0x55,0x95,0xb5,0xe5
# CHECK: st1d    {z21.d}, p5, [x10, z21.d, uxtw #3] // encoding: [0x55,0x95,0xb5,0xe5]
# CHECK-ERROR: invalid instruction encoding
0xff,0xff,0xef,0xe5
# CHECK: st1d    {z31.d}, p7, [sp, #-1, mul vl] // encoding: [0xff,0xff,0xef,0xe5]
# CHECK-ERROR: invalid instruction encoding
