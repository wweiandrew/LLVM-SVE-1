; RUN: llc -mtriple=aarch64--linux-gnu -mattr=+sve < %s | FileCheck %s

define <n x 2 x i64> @masked_gather_nxv2i16(i16* %base, <n x 2 x i64> %offsets, <n x 2 x i1> %mask) {
; CHECK-LABEL: masked_gather_nxv2i16:
; CHECK: ld1h {z0.d}, p0/z, [x0, z0.d, lsl #1]
; CHECK-NEXT: ret
  %ptrs = getelementptr i16, i16* %base, <n x 2 x i64> %offsets
  %vals = call <n x 2 x i16> @llvm.masked.gather.nxv2i16(<n x 2 x i16*> %ptrs, i32 2, <n x 2 x i1> %mask, <n x 2 x i16> undef)
  %vals.zext = zext <n x 2 x i16> %vals to <n x 2 x i64>
  ret <n x 2 x i64> %vals.zext
}

define <n x 2 x i64> @masked_gather_nxv2i32(i32* %base, <n x 2 x i64> %offsets, <n x 2 x i1> %mask) {
; CHECK-LABEL: masked_gather_nxv2i32:
; CHECK: ld1w {z0.d}, p0/z, [x0, z0.d, lsl #2]
; CHECK-NEXT: ret
  %ptrs = getelementptr i32, i32* %base, <n x 2 x i64> %offsets
  %vals = call <n x 2 x i32> @llvm.masked.gather.nxv2i32(<n x 2 x i32*> %ptrs, i32 4, <n x 2 x i1> %mask, <n x 2 x i32> undef)
  %vals.zext = zext <n x 2 x i32> %vals to <n x 2 x i64>
  ret <n x 2 x i64> %vals.zext
}

define <n x 2 x i64> @masked_gather_nxv2i64(i64* %base, <n x 2 x i64> %offsets, <n x 2 x i1> %mask) {
; CHECK-LABEL: masked_gather_nxv2i64:
; CHECK: ld1d {z0.d}, p0/z, [x0, z0.d, lsl #3]
; CHECK-NEXT: ret
  %ptrs = getelementptr i64, i64* %base, <n x 2 x i64> %offsets
  %vals = call <n x 2 x i64> @llvm.masked.gather.nxv2i64(<n x 2 x i64*> %ptrs, i32 8, <n x 2 x i1> %mask, <n x 2 x i64> undef)
  ret <n x 2 x i64> %vals
}

define <n x 2 x half> @masked_gather_nxv2f16(half* %base, <n x 2 x i64> %offsets, <n x 2 x i1> %mask) {
; CHECK-LABEL: masked_gather_nxv2f16:
; CHECK: ld1h {z0.d}, p0/z, [x0, z0.d, lsl #1]
; CHECK-NEXT: ret
  %ptrs = getelementptr half, half* %base, <n x 2 x i64> %offsets
  %vals = call <n x 2 x half> @llvm.masked.gather.nxv2f16(<n x 2 x half*> %ptrs, i32 2, <n x 2 x i1> %mask, <n x 2 x half> undef)
  ret <n x 2 x half> %vals
}

define <n x 2 x float> @masked_gather_nxv2f32(float* %base, <n x 2 x i64> %offsets, <n x 2 x i1> %mask) {
; CHECK-LABEL: masked_gather_nxv2f32:
; CHECK: ld1w {z0.d}, p0/z, [x0, z0.d, lsl #2]
; CHECK-NEXT: ret
  %ptrs = getelementptr float, float* %base, <n x 2 x i64> %offsets
  %vals = call <n x 2 x float> @llvm.masked.gather.nxv2f32(<n x 2 x float*> %ptrs, i32 4, <n x 2 x i1> %mask, <n x 2 x float> undef)
  ret <n x 2 x float> %vals
}

define <n x 2 x double> @masked_gather_nxv2f64(double* %base, <n x 2 x i64> %offsets, <n x 2 x i1> %mask) {
; CHECK-LABEL: masked_gather_nxv2f64:
; CHECK: ld1d {z0.d}, p0/z, [x0, z0.d, lsl #3]
; CHECK-NEXT: ret
  %ptrs = getelementptr double, double* %base, <n x 2 x i64> %offsets
  %vals.sext = call <n x 2 x double> @llvm.masked.gather.nxv2f64(<n x 2 x double*> %ptrs, i32 8, <n x 2 x i1> %mask, <n x 2 x double> undef)
  ret <n x 2 x double> %vals.sext
}

define <n x 2 x i64> @masked_sgather_nxv2i16(i16* %base, <n x 2 x i64> %offsets, <n x 2 x i1> %mask) {
; CHECK-LABEL: masked_sgather_nxv2i16:
; CHECK: ld1sh {z0.d}, p0/z, [x0, z0.d, lsl #1]
; CHECK-NEXT: ret
  %ptrs = getelementptr i16, i16* %base, <n x 2 x i64> %offsets
  %vals = call <n x 2 x i16> @llvm.masked.gather.nxv2i16(<n x 2 x i16*> %ptrs, i32 2, <n x 2 x i1> %mask, <n x 2 x i16> undef)
  %vals.sext = sext <n x 2 x i16> %vals to <n x 2 x i64>
  ret <n x 2 x i64> %vals.sext
}

define <n x 2 x i64> @masked_sgather_nxv2i32(i32* %base, <n x 2 x i64> %offsets, <n x 2 x i1> %mask) {
; CHECK-LABEL: masked_sgather_nxv2i32:
; CHECK: ld1sw {z0.d}, p0/z, [x0, z0.d, lsl #2]
; CHECK-NEXT: ret
  %ptrs = getelementptr i32, i32* %base, <n x 2 x i64> %offsets
  %vals = call <n x 2 x i32> @llvm.masked.gather.nxv2i32(<n x 2 x i32*> %ptrs, i32 4, <n x 2 x i1> %mask, <n x 2 x i32> undef)
  %vals.sext = sext <n x 2 x i32> %vals to <n x 2 x i64>
  ret <n x 2 x i64> %vals.sext
}

declare <n x 2 x i16> @llvm.masked.gather.nxv2i16(<n x 2 x i16*>, i32, <n x 2 x i1>, <n x 2 x i16>)
declare <n x 2 x i32> @llvm.masked.gather.nxv2i32(<n x 2 x i32*>, i32, <n x 2 x i1>, <n x 2 x i32>)
declare <n x 2 x i64> @llvm.masked.gather.nxv2i64(<n x 2 x i64*>, i32, <n x 2 x i1>, <n x 2 x i64>)
declare <n x 2 x half> @llvm.masked.gather.nxv2f16(<n x 2 x half*>, i32, <n x 2 x i1>, <n x 2 x half>)
declare <n x 2 x float> @llvm.masked.gather.nxv2f32(<n x 2 x float*>, i32, <n x 2 x i1>, <n x 2 x float>)
declare <n x 2 x double> @llvm.masked.gather.nxv2f64(<n x 2 x double*>, i32, <n x 2 x i1>, <n x 2 x double>)
