// RUN: not llvm-mc -triple=aarch64 -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s

// error: restricted predicate has range [0, 7].
facge p3.h, p8/z, z8.h, z1.h
// CHECK: [[@LINE-1]]:{{[0-9]+}}: error: restricted predicate has range [0, 7].
// CHECK-NEXT: facge p3.h, p8/z, z8.h, z1.h
// CHECK-NOT: [[@LINE-1]]:{{[0-9]+}}:

// error: restricted predicate has range [0, 7].
facge p14.s, p8/z, z14.s, z21.s
// CHECK: [[@LINE-1]]:{{[0-9]+}}: error: restricted predicate has range [0, 7].
// CHECK-NEXT: facge p14.s, p8/z, z14.s, z21.s
// CHECK-NOT: [[@LINE-1]]:{{[0-9]+}}:

