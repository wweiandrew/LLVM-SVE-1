# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x55,0xf5,0x55,0x84
# CHECK: ld1rb   {z21.d}, p5/z, [x10, #21] // encoding: [0x55,0xf5,0x55,0x84]
# CHECK-ERROR: invalid instruction encoding
0xff,0xdf,0x7f,0x84
# CHECK: ld1rb   {z31.s}, p7/z, [sp, #63] // encoding: [0xff,0xdf,0x7f,0x84]
# CHECK-ERROR: invalid instruction encoding
0x00,0xe0,0x40,0x84
# CHECK: ld1rb   {z0.d}, p0/z, [x0] // encoding: [0x00,0xe0,0x40,0x84]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xcd,0x48,0x84
# CHECK: ld1rb   {z23.s}, p3/z, [x13, #8] // encoding: [0xb7,0xcd,0x48,0x84]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x8d,0x48,0x84
# CHECK: ld1rb   {z23.b}, p3/z, [x13, #8] // encoding: [0xb7,0x8d,0x48,0x84]
# CHECK-ERROR: invalid instruction encoding
0x00,0xa0,0x40,0x84
# CHECK: ld1rb   {z0.h}, p0/z, [x0] // encoding: [0x00,0xa0,0x40,0x84]
# CHECK-ERROR: invalid instruction encoding
0xff,0xff,0x7f,0x84
# CHECK: ld1rb   {z31.d}, p7/z, [sp, #63] // encoding: [0xff,0xff,0x7f,0x84]
# CHECK-ERROR: invalid instruction encoding
0xff,0xbf,0x7f,0x84
# CHECK: ld1rb   {z31.h}, p7/z, [sp, #63] // encoding: [0xff,0xbf,0x7f,0x84]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xed,0x48,0x84
# CHECK: ld1rb   {z23.d}, p3/z, [x13, #8] // encoding: [0xb7,0xed,0x48,0x84]
# CHECK-ERROR: invalid instruction encoding
0x55,0x95,0x55,0x84
# CHECK: ld1rb   {z21.b}, p5/z, [x10, #21] // encoding: [0x55,0x95,0x55,0x84]
# CHECK-ERROR: invalid instruction encoding
0x55,0xd5,0x55,0x84
# CHECK: ld1rb   {z21.s}, p5/z, [x10, #21] // encoding: [0x55,0xd5,0x55,0x84]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xad,0x48,0x84
# CHECK: ld1rb   {z23.h}, p3/z, [x13, #8] // encoding: [0xb7,0xad,0x48,0x84]
# CHECK-ERROR: invalid instruction encoding
0x55,0xb5,0x55,0x84
# CHECK: ld1rb   {z21.h}, p5/z, [x10, #21] // encoding: [0x55,0xb5,0x55,0x84]
# CHECK-ERROR: invalid instruction encoding
0x00,0xc0,0x40,0x84
# CHECK: ld1rb   {z0.s}, p0/z, [x0] // encoding: [0x00,0xc0,0x40,0x84]
# CHECK-ERROR: invalid instruction encoding
0x00,0x80,0x40,0x84
# CHECK: ld1rb   {z0.b}, p0/z, [x0] // encoding: [0x00,0x80,0x40,0x84]
# CHECK-ERROR: invalid instruction encoding
0xff,0x9f,0x7f,0x84
# CHECK: ld1rb   {z31.b}, p7/z, [sp, #63] // encoding: [0xff,0x9f,0x7f,0x84]
# CHECK-ERROR: invalid instruction encoding
