# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xff,0xf3,0x3f,0x04
# CHECK: sqincb  xzr, all, mul #16 // encoding: [0xff,0xf3,0x3f,0x04]
# CHECK-ERROR: invalid instruction encoding
0x55,0xf1,0x25,0x04
# CHECK: sqincb  x21, w21, vl32, mul #6 // encoding: [0x55,0xf1,0x25,0x04]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xf1,0x28,0x04
# CHECK: sqincb  x23, w23, vl256, mul #9 // encoding: [0xb7,0xf1,0x28,0x04]
# CHECK-ERROR: invalid instruction encoding
0xff,0xf3,0x2f,0x04
# CHECK: sqincb  xzr, wzr, all, mul #16 // encoding: [0xff,0xf3,0x2f,0x04]
# CHECK-ERROR: invalid instruction encoding
0x00,0xf0,0x20,0x04
# CHECK: sqincb  x0, w0, pow2 // encoding: [0x00,0xf0,0x20,0x04]
# CHECK-ERROR: invalid instruction encoding
0x55,0xf1,0x35,0x04
# CHECK: sqincb  x21, vl32, mul #6 // encoding: [0x55,0xf1,0x35,0x04]
# CHECK-ERROR: invalid instruction encoding
0xb7,0xf1,0x38,0x04
# CHECK: sqincb  x23, vl256, mul #9 // encoding: [0xb7,0xf1,0x38,0x04]
# CHECK-ERROR: invalid instruction encoding
0x00,0xf0,0x30,0x04
# CHECK: sqincb  x0, pow2 // encoding: [0x00,0xf0,0x30,0x04]
# CHECK-ERROR: invalid instruction encoding
0x55,0xf2,0x20,0x04
# CHECK: sqincb  x21, w21, #18 // encoding: [0x55,0xf2,0x20,0x04]
# CHECK-ERROR: invalid instruction encoding
0x56,0xf3,0x22,0x04
# CHECK: sqincb  x22, w22, #26, mul #3 // encoding: [0x56,0xf3,0x22,0x04]
# CHECK-ERROR: invalid instruction encoding
