// RUN: not llvm-mc -triple=aarch64 -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s

// Immediate not compatible with encode/decode function.
uqdecw w0, pow2, MUL #17
// CHECK: [[@LINE-1]]:{{[0-9]+}}: error: immediate must be an integer in range [1, 16]
// CHECK-NEXT: uqdecw w0, pow2, MUL #17
// CHECK-NOT: [[@LINE-1]]:{{[0-9]+}}:

// Immediate not compatible with encode/decode function.
uqdecw x15, pow2, MUL #-1
// CHECK: [[@LINE-1]]:{{[0-9]+}}: error: immediate must be an integer in range [1, 16]
// CHECK-NEXT: uqdecw x15, pow2, MUL #-1
// CHECK-NOT: [[@LINE-1]]:{{[0-9]+}}:

// Immediate not compatible with encode/decode function.
uqdecw x8, pow2, MUL #17
// CHECK: [[@LINE-1]]:{{[0-9]+}}: error: immediate must be an integer in range [1, 16]
// CHECK-NEXT: uqdecw x8, pow2, MUL #17
// CHECK-NOT: [[@LINE-1]]:{{[0-9]+}}:

// Immediate not compatible with encode/decode function.
uqdecw z11.s, pow2, MUL #-1
// CHECK: [[@LINE-1]]:{{[0-9]+}}: error: immediate must be an integer in range [1, 16]
// CHECK-NEXT: uqdecw z11.s, pow2, MUL #-1
// CHECK-NOT: [[@LINE-1]]:{{[0-9]+}}:

// Immediate not compatible with encode/decode function.
uqdecw z26.s, pow2, MUL #17
// CHECK: [[@LINE-1]]:{{[0-9]+}}: error: immediate must be an integer in range [1, 16]
// CHECK-NEXT: uqdecw z26.s, pow2, MUL #17
// CHECK-NOT: [[@LINE-1]]:{{[0-9]+}}:

