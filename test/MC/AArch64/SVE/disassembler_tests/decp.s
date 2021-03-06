# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xb7,0x89,0xed,0x25
# CHECK: decp    x23, p13.d // encoding: [0xb7,0x89,0xed,0x25]
# CHECK-ERROR: invalid instruction encoding
0xff,0x89,0x6d,0x25
# CHECK: decp    xzr, p15.h // encoding: [0xff,0x89,0x6d,0x25]
# CHECK-ERROR: invalid instruction encoding
0x55,0x81,0x6d,0x25
# CHECK: decp    z21.h, p10 // encoding: [0x55,0x81,0x6d,0x25]
# CHECK-ERROR: invalid instruction encoding
0xff,0x81,0xad,0x25
# CHECK: decp    z31.s, p15 // encoding: [0xff,0x81,0xad,0x25]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x81,0xed,0x25
# CHECK: decp    z23.d, p13 // encoding: [0xb7,0x81,0xed,0x25]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x89,0x2d,0x25
# CHECK: decp    x23, p13.b // encoding: [0xb7,0x89,0x2d,0x25]
# CHECK-ERROR: invalid instruction encoding
0x55,0x89,0xed,0x25
# CHECK: decp    x21, p10.d // encoding: [0x55,0x89,0xed,0x25]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x89,0x6d,0x25
# CHECK: decp    x23, p13.h // encoding: [0xb7,0x89,0x6d,0x25]
# CHECK-ERROR: invalid instruction encoding
0xff,0x81,0xed,0x25
# CHECK: decp    z31.d, p15 // encoding: [0xff,0x81,0xed,0x25]
# CHECK-ERROR: invalid instruction encoding
0x55,0x89,0x6d,0x25
# CHECK: decp    x21, p10.h // encoding: [0x55,0x89,0x6d,0x25]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x81,0x6d,0x25
# CHECK: decp    z23.h, p13 // encoding: [0xb7,0x81,0x6d,0x25]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x89,0xad,0x25
# CHECK: decp    x23, p13.s // encoding: [0xb7,0x89,0xad,0x25]
# CHECK-ERROR: invalid instruction encoding
0x00,0x88,0xed,0x25
# CHECK: decp    x0, p0.d // encoding: [0x00,0x88,0xed,0x25]
# CHECK-ERROR: invalid instruction encoding
0x55,0x81,0xad,0x25
# CHECK: decp    z21.s, p10 // encoding: [0x55,0x81,0xad,0x25]
# CHECK-ERROR: invalid instruction encoding
0x55,0x81,0xed,0x25
# CHECK: decp    z21.d, p10 // encoding: [0x55,0x81,0xed,0x25]
# CHECK-ERROR: invalid instruction encoding
0x00,0x80,0x6d,0x25
# CHECK: decp    z0.h, p0 // encoding: [0x00,0x80,0x6d,0x25]
# CHECK-ERROR: invalid instruction encoding
0x00,0x88,0xad,0x25
# CHECK: decp    x0, p0.s // encoding: [0x00,0x88,0xad,0x25]
# CHECK-ERROR: invalid instruction encoding
0x00,0x88,0x2d,0x25
# CHECK: decp    x0, p0.b // encoding: [0x00,0x88,0x2d,0x25]
# CHECK-ERROR: invalid instruction encoding
0xff,0x89,0xed,0x25
# CHECK: decp    xzr, p15.d // encoding: [0xff,0x89,0xed,0x25]
# CHECK-ERROR: invalid instruction encoding
0x55,0x89,0x2d,0x25
# CHECK: decp    x21, p10.b // encoding: [0x55,0x89,0x2d,0x25]
# CHECK-ERROR: invalid instruction encoding
0xff,0x89,0xad,0x25
# CHECK: decp    xzr, p15.s // encoding: [0xff,0x89,0xad,0x25]
# CHECK-ERROR: invalid instruction encoding
0xff,0x81,0x6d,0x25
# CHECK: decp    z31.h, p15 // encoding: [0xff,0x81,0x6d,0x25]
# CHECK-ERROR: invalid instruction encoding
0x00,0x88,0x6d,0x25
# CHECK: decp    x0, p0.h // encoding: [0x00,0x88,0x6d,0x25]
# CHECK-ERROR: invalid instruction encoding
0xb7,0x81,0xad,0x25
# CHECK: decp    z23.s, p13 // encoding: [0xb7,0x81,0xad,0x25]
# CHECK-ERROR: invalid instruction encoding
0x55,0x89,0xad,0x25
# CHECK: decp    x21, p10.s // encoding: [0x55,0x89,0xad,0x25]
# CHECK-ERROR: invalid instruction encoding
0xff,0x89,0x2d,0x25
# CHECK: decp    xzr, p15.b // encoding: [0xff,0x89,0x2d,0x25]
# CHECK-ERROR: invalid instruction encoding
0x00,0x80,0xed,0x25
# CHECK: decp    z0.d, p0 // encoding: [0x00,0x80,0xed,0x25]
# CHECK-ERROR: invalid instruction encoding
0x00,0x80,0xad,0x25
# CHECK: decp    z0.s, p0 // encoding: [0x00,0x80,0xad,0x25]
# CHECK-ERROR: invalid instruction encoding
