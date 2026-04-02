; ModuleID = 'hmm.h'
source_filename = "hmm.h"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.HMM_Vec2 = type { %struct.anon }
%struct.anon = type { float, float }
%union.HMM_Vec3 = type { %struct.anon.3 }
%struct.anon.3 = type { float, float, float }
%union.HMM_Vec4 = type { %struct.anon.10 }
%struct.anon.10 = type { %union.anon, float }
%union.anon = type { %union.HMM_Vec3 }
%struct.anon.11 = type { float, float, float }
%union.HMM_Mat4 = type { [4 x [4 x float]] }
%union.HMM_Mat2 = type { [2 x [2 x float]] }
%union.HMM_Mat3 = type { [3 x [3 x float]] }
%union.HMM_Quat = type { %struct.anon.18 }
%struct.anon.18 = type { %union.anon.19, float }
%union.anon.19 = type { %union.HMM_Vec3 }
%struct.anon.20 = type { float, float, float }

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_ToRad(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, ptr %2, align 4
  %4 = load float, ptr %2, align 4
  store float %4, ptr %3, align 4
  %5 = load float, ptr %3, align 4
  ret float %5
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_ToDeg(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, ptr %2, align 4
  %4 = load float, ptr %2, align 4
  %5 = fmul float %4, 0x404CA5DC20000000
  store float %5, ptr %3, align 4
  %6 = load float, ptr %3, align 4
  ret float %6
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_ToTurn(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, ptr %2, align 4
  %4 = load float, ptr %2, align 4
  %5 = fmul float %4, 0x3FC45F3060000000
  store float %5, ptr %3, align 4
  %6 = load float, ptr %3, align 4
  ret float %6
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_SinF(float noundef %0) #0 {
  %2 = alloca float, align 4
  store float %0, ptr %2, align 4
  %3 = load float, ptr %2, align 4
  %4 = call float @HMM_ToRad(float noundef %3)
  %5 = call float @sinf(float noundef %4) #6
  ret float %5
}

; Function Attrs: nounwind
declare float @sinf(float noundef) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_CosF(float noundef %0) #0 {
  %2 = alloca float, align 4
  store float %0, ptr %2, align 4
  %3 = load float, ptr %2, align 4
  %4 = call float @HMM_ToRad(float noundef %3)
  %5 = call float @cosf(float noundef %4) #6
  ret float %5
}

; Function Attrs: nounwind
declare float @cosf(float noundef) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_TanF(float noundef %0) #0 {
  %2 = alloca float, align 4
  store float %0, ptr %2, align 4
  %3 = load float, ptr %2, align 4
  %4 = call float @HMM_ToRad(float noundef %3)
  %5 = call float @tanf(float noundef %4) #6
  ret float %5
}

; Function Attrs: nounwind
declare float @tanf(float noundef) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_ACosF(float noundef %0) #0 {
  %2 = alloca float, align 4
  store float %0, ptr %2, align 4
  %3 = load float, ptr %2, align 4
  %4 = call float @acosf(float noundef %3) #6
  ret float %4
}

; Function Attrs: nounwind
declare float @acosf(float noundef) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_SqrtF(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, ptr %2, align 4
  %4 = load float, ptr %2, align 4
  %5 = call float @sqrtf(float noundef %4) #6
  store float %5, ptr %3, align 4
  %6 = load float, ptr %3, align 4
  ret float %6
}

; Function Attrs: nounwind
declare float @sqrtf(float noundef) #1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_InvSqrtF(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, ptr %2, align 4
  %4 = load float, ptr %2, align 4
  %5 = call float @HMM_SqrtF(float noundef %4)
  %6 = fdiv float 1.000000e+00, %5
  store float %6, ptr %3, align 4
  %7 = load float, ptr %3, align 4
  ret float %7
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_Lerp(float noundef %0, float noundef %1, float noundef %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, ptr %4, align 4
  store float %1, ptr %5, align 4
  store float %2, ptr %6, align 4
  %7 = load float, ptr %5, align 4
  %8 = fsub float 1.000000e+00, %7
  %9 = load float, ptr %4, align 4
  %10 = load float, ptr %5, align 4
  %11 = load float, ptr %6, align 4
  %12 = fmul float %10, %11
  %13 = call float @llvm.fmuladd.f32(float %8, float %9, float %12)
  ret float %13
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_Clamp(float noundef %0, float noundef %1, float noundef %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store float %0, ptr %4, align 4
  store float %1, ptr %5, align 4
  store float %2, ptr %6, align 4
  %8 = load float, ptr %5, align 4
  store float %8, ptr %7, align 4
  %9 = load float, ptr %7, align 4
  %10 = load float, ptr %4, align 4
  %11 = fcmp olt float %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load float, ptr %4, align 4
  store float %13, ptr %7, align 4
  br label %14

14:                                               ; preds = %12, %3
  %15 = load float, ptr %7, align 4
  %16 = load float, ptr %6, align 4
  %17 = fcmp ogt float %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load float, ptr %6, align 4
  store float %19, ptr %7, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = load float, ptr %7, align 4
  ret float %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local <2 x float> @HMM_V2(float noundef %0, float noundef %1) #3 {
  %3 = alloca %union.HMM_Vec2, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, ptr %4, align 4
  store float %1, ptr %5, align 4
  %6 = load float, ptr %4, align 4
  %7 = getelementptr inbounds nuw %struct.anon, ptr %3, i32 0, i32 0
  store float %6, ptr %7, align 4
  %8 = load float, ptr %5, align 4
  %9 = getelementptr inbounds nuw %struct.anon, ptr %3, i32 0, i32 1
  store float %8, ptr %9, align 4
  %10 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %3, i32 0, i32 0
  %11 = load <2 x float>, ptr %10, align 4
  ret <2 x float> %11
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, float } @HMM_V3(float noundef %0, float noundef %1, float noundef %2) #0 {
  %4 = alloca %union.HMM_Vec3, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca { <2 x float>, float }, align 8
  store float %0, ptr %5, align 4
  store float %1, ptr %6, align 4
  store float %2, ptr %7, align 4
  %9 = load float, ptr %5, align 4
  %10 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 0
  store float %9, ptr %10, align 4
  %11 = load float, ptr %6, align 4
  %12 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 1
  store float %11, ptr %12, align 4
  %13 = load float, ptr %7, align 4
  %14 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 2
  store float %13, ptr %14, align 4
  %15 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %4, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 4 %15, i64 12, i1 false)
  %16 = load { <2 x float>, float }, ptr %8, align 8
  ret { <2 x float>, float } %16
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_V4(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #0 {
  %5 = alloca %union.HMM_Vec4, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store float %0, ptr %6, align 4
  store float %1, ptr %7, align 4
  store float %2, ptr %8, align 4
  store float %3, ptr %9, align 4
  %10 = load float, ptr %6, align 4
  %11 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %12 = getelementptr inbounds nuw %struct.anon.11, ptr %11, i32 0, i32 0
  store float %10, ptr %12, align 4
  %13 = load float, ptr %7, align 4
  %14 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %15 = getelementptr inbounds nuw %struct.anon.11, ptr %14, i32 0, i32 1
  store float %13, ptr %15, align 4
  %16 = load float, ptr %8, align 4
  %17 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %18 = getelementptr inbounds nuw %struct.anon.11, ptr %17, i32 0, i32 2
  store float %16, ptr %18, align 4
  %19 = load float, ptr %9, align 4
  %20 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 1
  store float %19, ptr %20, align 4
  %21 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %5, i32 0, i32 0
  %22 = load { <2 x float>, <2 x float> }, ptr %21, align 4
  ret { <2 x float>, <2 x float> } %22
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_V4V(<2 x float> %0, float %1, float noundef %2) #3 {
  %4 = alloca %union.HMM_Vec4, align 4
  %5 = alloca %union.HMM_Vec3, align 4
  %6 = alloca { <2 x float>, float }, align 4
  %7 = alloca float, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, float }, ptr %6, i32 0, i32 0
  store <2 x float> %0, ptr %8, align 4
  %9 = getelementptr inbounds nuw { <2 x float>, float }, ptr %6, i32 0, i32 1
  store float %1, ptr %9, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %6, i64 12, i1 false)
  store float %2, ptr %7, align 4
  %10 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 4 %5, i64 12, i1 false)
  %11 = load float, ptr %7, align 4
  %12 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 1
  store float %11, ptr %12, align 4
  %13 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %4, i32 0, i32 0
  %14 = load { <2 x float>, <2 x float> }, ptr %13, align 4
  ret { <2 x float>, <2 x float> } %14
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local <2 x float> @HMM_AddV2(<2 x float> %0, <2 x float> %1) #3 {
  %3 = alloca %union.HMM_Vec2, align 4
  %4 = alloca %union.HMM_Vec2, align 4
  %5 = alloca %union.HMM_Vec2, align 4
  %6 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %4, i32 0, i32 0
  store <2 x float> %0, ptr %6, align 4
  %7 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %5, i32 0, i32 0
  store <2 x float> %1, ptr %7, align 4
  %8 = getelementptr inbounds nuw %struct.anon, ptr %4, i32 0, i32 0
  %9 = load float, ptr %8, align 4
  %10 = getelementptr inbounds nuw %struct.anon, ptr %5, i32 0, i32 0
  %11 = load float, ptr %10, align 4
  %12 = fadd float %9, %11
  %13 = getelementptr inbounds nuw %struct.anon, ptr %3, i32 0, i32 0
  store float %12, ptr %13, align 4
  %14 = getelementptr inbounds nuw %struct.anon, ptr %4, i32 0, i32 1
  %15 = load float, ptr %14, align 4
  %16 = getelementptr inbounds nuw %struct.anon, ptr %5, i32 0, i32 1
  %17 = load float, ptr %16, align 4
  %18 = fadd float %15, %17
  %19 = getelementptr inbounds nuw %struct.anon, ptr %3, i32 0, i32 1
  store float %18, ptr %19, align 4
  %20 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %3, i32 0, i32 0
  %21 = load <2 x float>, ptr %20, align 4
  ret <2 x float> %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, float } @HMM_AddV3(<2 x float> %0, float %1, <2 x float> %2, float %3) #3 {
  %5 = alloca %union.HMM_Vec3, align 4
  %6 = alloca %union.HMM_Vec3, align 4
  %7 = alloca { <2 x float>, float }, align 4
  %8 = alloca %union.HMM_Vec3, align 4
  %9 = alloca { <2 x float>, float }, align 4
  %10 = alloca { <2 x float>, float }, align 8
  %11 = getelementptr inbounds nuw { <2 x float>, float }, ptr %7, i32 0, i32 0
  store <2 x float> %0, ptr %11, align 4
  %12 = getelementptr inbounds nuw { <2 x float>, float }, ptr %7, i32 0, i32 1
  store float %1, ptr %12, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %7, i64 12, i1 false)
  %13 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 0
  store <2 x float> %2, ptr %13, align 4
  %14 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 1
  store float %3, ptr %14, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %9, i64 12, i1 false)
  %15 = getelementptr inbounds nuw %struct.anon.3, ptr %6, i32 0, i32 0
  %16 = load float, ptr %15, align 4
  %17 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 0
  %18 = load float, ptr %17, align 4
  %19 = fadd float %16, %18
  %20 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 0
  store float %19, ptr %20, align 4
  %21 = getelementptr inbounds nuw %struct.anon.3, ptr %6, i32 0, i32 1
  %22 = load float, ptr %21, align 4
  %23 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 1
  %24 = load float, ptr %23, align 4
  %25 = fadd float %22, %24
  %26 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 1
  store float %25, ptr %26, align 4
  %27 = getelementptr inbounds nuw %struct.anon.3, ptr %6, i32 0, i32 2
  %28 = load float, ptr %27, align 4
  %29 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  %30 = load float, ptr %29, align 4
  %31 = fadd float %28, %30
  %32 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 2
  store float %31, ptr %32, align 4
  %33 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %5, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 4 %33, i64 12, i1 false)
  %34 = load { <2 x float>, float }, ptr %10, align 8
  ret { <2 x float>, float } %34
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_AddV4(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) #3 {
  %5 = alloca %union.HMM_Vec4, align 4
  %6 = alloca %union.HMM_Vec4, align 4
  %7 = alloca %union.HMM_Vec4, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 0
  store <2 x float> %0, ptr %8, align 4
  %9 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 1
  store <2 x float> %1, ptr %9, align 4
  %10 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 0
  store <2 x float> %2, ptr %10, align 4
  %11 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 1
  store <2 x float> %3, ptr %11, align 4
  %12 = getelementptr inbounds nuw %struct.anon.10, ptr %6, i32 0, i32 0
  %13 = getelementptr inbounds nuw %struct.anon.11, ptr %12, i32 0, i32 0
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds nuw %struct.anon.10, ptr %7, i32 0, i32 0
  %16 = getelementptr inbounds nuw %struct.anon.11, ptr %15, i32 0, i32 0
  %17 = load float, ptr %16, align 4
  %18 = fadd float %14, %17
  %19 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %20 = getelementptr inbounds nuw %struct.anon.11, ptr %19, i32 0, i32 0
  store float %18, ptr %20, align 4
  %21 = getelementptr inbounds nuw %struct.anon.10, ptr %6, i32 0, i32 0
  %22 = getelementptr inbounds nuw %struct.anon.11, ptr %21, i32 0, i32 1
  %23 = load float, ptr %22, align 4
  %24 = getelementptr inbounds nuw %struct.anon.10, ptr %7, i32 0, i32 0
  %25 = getelementptr inbounds nuw %struct.anon.11, ptr %24, i32 0, i32 1
  %26 = load float, ptr %25, align 4
  %27 = fadd float %23, %26
  %28 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %29 = getelementptr inbounds nuw %struct.anon.11, ptr %28, i32 0, i32 1
  store float %27, ptr %29, align 4
  %30 = getelementptr inbounds nuw %struct.anon.10, ptr %6, i32 0, i32 0
  %31 = getelementptr inbounds nuw %struct.anon.11, ptr %30, i32 0, i32 2
  %32 = load float, ptr %31, align 4
  %33 = getelementptr inbounds nuw %struct.anon.10, ptr %7, i32 0, i32 0
  %34 = getelementptr inbounds nuw %struct.anon.11, ptr %33, i32 0, i32 2
  %35 = load float, ptr %34, align 4
  %36 = fadd float %32, %35
  %37 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %38 = getelementptr inbounds nuw %struct.anon.11, ptr %37, i32 0, i32 2
  store float %36, ptr %38, align 4
  %39 = getelementptr inbounds nuw %struct.anon.10, ptr %6, i32 0, i32 1
  %40 = load float, ptr %39, align 4
  %41 = getelementptr inbounds nuw %struct.anon.10, ptr %7, i32 0, i32 1
  %42 = load float, ptr %41, align 4
  %43 = fadd float %40, %42
  %44 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 1
  store float %43, ptr %44, align 4
  %45 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %5, i32 0, i32 0
  %46 = load { <2 x float>, <2 x float> }, ptr %45, align 4
  ret { <2 x float>, <2 x float> } %46
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local <2 x float> @HMM_SubV2(<2 x float> %0, <2 x float> %1) #3 {
  %3 = alloca %union.HMM_Vec2, align 4
  %4 = alloca %union.HMM_Vec2, align 4
  %5 = alloca %union.HMM_Vec2, align 4
  %6 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %4, i32 0, i32 0
  store <2 x float> %0, ptr %6, align 4
  %7 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %5, i32 0, i32 0
  store <2 x float> %1, ptr %7, align 4
  %8 = getelementptr inbounds nuw %struct.anon, ptr %4, i32 0, i32 0
  %9 = load float, ptr %8, align 4
  %10 = getelementptr inbounds nuw %struct.anon, ptr %5, i32 0, i32 0
  %11 = load float, ptr %10, align 4
  %12 = fsub float %9, %11
  %13 = getelementptr inbounds nuw %struct.anon, ptr %3, i32 0, i32 0
  store float %12, ptr %13, align 4
  %14 = getelementptr inbounds nuw %struct.anon, ptr %4, i32 0, i32 1
  %15 = load float, ptr %14, align 4
  %16 = getelementptr inbounds nuw %struct.anon, ptr %5, i32 0, i32 1
  %17 = load float, ptr %16, align 4
  %18 = fsub float %15, %17
  %19 = getelementptr inbounds nuw %struct.anon, ptr %3, i32 0, i32 1
  store float %18, ptr %19, align 4
  %20 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %3, i32 0, i32 0
  %21 = load <2 x float>, ptr %20, align 4
  ret <2 x float> %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, float } @HMM_SubV3(<2 x float> %0, float %1, <2 x float> %2, float %3) #3 {
  %5 = alloca %union.HMM_Vec3, align 4
  %6 = alloca %union.HMM_Vec3, align 4
  %7 = alloca { <2 x float>, float }, align 4
  %8 = alloca %union.HMM_Vec3, align 4
  %9 = alloca { <2 x float>, float }, align 4
  %10 = alloca { <2 x float>, float }, align 8
  %11 = getelementptr inbounds nuw { <2 x float>, float }, ptr %7, i32 0, i32 0
  store <2 x float> %0, ptr %11, align 4
  %12 = getelementptr inbounds nuw { <2 x float>, float }, ptr %7, i32 0, i32 1
  store float %1, ptr %12, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %7, i64 12, i1 false)
  %13 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 0
  store <2 x float> %2, ptr %13, align 4
  %14 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 1
  store float %3, ptr %14, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %9, i64 12, i1 false)
  %15 = getelementptr inbounds nuw %struct.anon.3, ptr %6, i32 0, i32 0
  %16 = load float, ptr %15, align 4
  %17 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 0
  %18 = load float, ptr %17, align 4
  %19 = fsub float %16, %18
  %20 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 0
  store float %19, ptr %20, align 4
  %21 = getelementptr inbounds nuw %struct.anon.3, ptr %6, i32 0, i32 1
  %22 = load float, ptr %21, align 4
  %23 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 1
  %24 = load float, ptr %23, align 4
  %25 = fsub float %22, %24
  %26 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 1
  store float %25, ptr %26, align 4
  %27 = getelementptr inbounds nuw %struct.anon.3, ptr %6, i32 0, i32 2
  %28 = load float, ptr %27, align 4
  %29 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  %30 = load float, ptr %29, align 4
  %31 = fsub float %28, %30
  %32 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 2
  store float %31, ptr %32, align 4
  %33 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %5, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 4 %33, i64 12, i1 false)
  %34 = load { <2 x float>, float }, ptr %10, align 8
  ret { <2 x float>, float } %34
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_SubV4(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) #3 {
  %5 = alloca %union.HMM_Vec4, align 4
  %6 = alloca %union.HMM_Vec4, align 4
  %7 = alloca %union.HMM_Vec4, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 0
  store <2 x float> %0, ptr %8, align 4
  %9 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 1
  store <2 x float> %1, ptr %9, align 4
  %10 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 0
  store <2 x float> %2, ptr %10, align 4
  %11 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 1
  store <2 x float> %3, ptr %11, align 4
  %12 = getelementptr inbounds nuw %struct.anon.10, ptr %6, i32 0, i32 0
  %13 = getelementptr inbounds nuw %struct.anon.11, ptr %12, i32 0, i32 0
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds nuw %struct.anon.10, ptr %7, i32 0, i32 0
  %16 = getelementptr inbounds nuw %struct.anon.11, ptr %15, i32 0, i32 0
  %17 = load float, ptr %16, align 4
  %18 = fsub float %14, %17
  %19 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %20 = getelementptr inbounds nuw %struct.anon.11, ptr %19, i32 0, i32 0
  store float %18, ptr %20, align 4
  %21 = getelementptr inbounds nuw %struct.anon.10, ptr %6, i32 0, i32 0
  %22 = getelementptr inbounds nuw %struct.anon.11, ptr %21, i32 0, i32 1
  %23 = load float, ptr %22, align 4
  %24 = getelementptr inbounds nuw %struct.anon.10, ptr %7, i32 0, i32 0
  %25 = getelementptr inbounds nuw %struct.anon.11, ptr %24, i32 0, i32 1
  %26 = load float, ptr %25, align 4
  %27 = fsub float %23, %26
  %28 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %29 = getelementptr inbounds nuw %struct.anon.11, ptr %28, i32 0, i32 1
  store float %27, ptr %29, align 4
  %30 = getelementptr inbounds nuw %struct.anon.10, ptr %6, i32 0, i32 0
  %31 = getelementptr inbounds nuw %struct.anon.11, ptr %30, i32 0, i32 2
  %32 = load float, ptr %31, align 4
  %33 = getelementptr inbounds nuw %struct.anon.10, ptr %7, i32 0, i32 0
  %34 = getelementptr inbounds nuw %struct.anon.11, ptr %33, i32 0, i32 2
  %35 = load float, ptr %34, align 4
  %36 = fsub float %32, %35
  %37 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %38 = getelementptr inbounds nuw %struct.anon.11, ptr %37, i32 0, i32 2
  store float %36, ptr %38, align 4
  %39 = getelementptr inbounds nuw %struct.anon.10, ptr %6, i32 0, i32 1
  %40 = load float, ptr %39, align 4
  %41 = getelementptr inbounds nuw %struct.anon.10, ptr %7, i32 0, i32 1
  %42 = load float, ptr %41, align 4
  %43 = fsub float %40, %42
  %44 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 1
  store float %43, ptr %44, align 4
  %45 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %5, i32 0, i32 0
  %46 = load { <2 x float>, <2 x float> }, ptr %45, align 4
  ret { <2 x float>, <2 x float> } %46
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local <2 x float> @HMM_MulV2(<2 x float> %0, <2 x float> %1) #3 {
  %3 = alloca %union.HMM_Vec2, align 4
  %4 = alloca %union.HMM_Vec2, align 4
  %5 = alloca %union.HMM_Vec2, align 4
  %6 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %4, i32 0, i32 0
  store <2 x float> %0, ptr %6, align 4
  %7 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %5, i32 0, i32 0
  store <2 x float> %1, ptr %7, align 4
  %8 = getelementptr inbounds nuw %struct.anon, ptr %4, i32 0, i32 0
  %9 = load float, ptr %8, align 4
  %10 = getelementptr inbounds nuw %struct.anon, ptr %5, i32 0, i32 0
  %11 = load float, ptr %10, align 4
  %12 = fmul float %9, %11
  %13 = getelementptr inbounds nuw %struct.anon, ptr %3, i32 0, i32 0
  store float %12, ptr %13, align 4
  %14 = getelementptr inbounds nuw %struct.anon, ptr %4, i32 0, i32 1
  %15 = load float, ptr %14, align 4
  %16 = getelementptr inbounds nuw %struct.anon, ptr %5, i32 0, i32 1
  %17 = load float, ptr %16, align 4
  %18 = fmul float %15, %17
  %19 = getelementptr inbounds nuw %struct.anon, ptr %3, i32 0, i32 1
  store float %18, ptr %19, align 4
  %20 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %3, i32 0, i32 0
  %21 = load <2 x float>, ptr %20, align 4
  ret <2 x float> %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local <2 x float> @HMM_MulV2F(<2 x float> %0, float noundef %1) #3 {
  %3 = alloca %union.HMM_Vec2, align 4
  %4 = alloca %union.HMM_Vec2, align 4
  %5 = alloca float, align 4
  %6 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %4, i32 0, i32 0
  store <2 x float> %0, ptr %6, align 4
  store float %1, ptr %5, align 4
  %7 = getelementptr inbounds nuw %struct.anon, ptr %4, i32 0, i32 0
  %8 = load float, ptr %7, align 4
  %9 = load float, ptr %5, align 4
  %10 = fmul float %8, %9
  %11 = getelementptr inbounds nuw %struct.anon, ptr %3, i32 0, i32 0
  store float %10, ptr %11, align 4
  %12 = getelementptr inbounds nuw %struct.anon, ptr %4, i32 0, i32 1
  %13 = load float, ptr %12, align 4
  %14 = load float, ptr %5, align 4
  %15 = fmul float %13, %14
  %16 = getelementptr inbounds nuw %struct.anon, ptr %3, i32 0, i32 1
  store float %15, ptr %16, align 4
  %17 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %3, i32 0, i32 0
  %18 = load <2 x float>, ptr %17, align 4
  ret <2 x float> %18
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, float } @HMM_MulV3(<2 x float> %0, float %1, <2 x float> %2, float %3) #3 {
  %5 = alloca %union.HMM_Vec3, align 4
  %6 = alloca %union.HMM_Vec3, align 4
  %7 = alloca { <2 x float>, float }, align 4
  %8 = alloca %union.HMM_Vec3, align 4
  %9 = alloca { <2 x float>, float }, align 4
  %10 = alloca { <2 x float>, float }, align 8
  %11 = getelementptr inbounds nuw { <2 x float>, float }, ptr %7, i32 0, i32 0
  store <2 x float> %0, ptr %11, align 4
  %12 = getelementptr inbounds nuw { <2 x float>, float }, ptr %7, i32 0, i32 1
  store float %1, ptr %12, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %7, i64 12, i1 false)
  %13 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 0
  store <2 x float> %2, ptr %13, align 4
  %14 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 1
  store float %3, ptr %14, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %9, i64 12, i1 false)
  %15 = getelementptr inbounds nuw %struct.anon.3, ptr %6, i32 0, i32 0
  %16 = load float, ptr %15, align 4
  %17 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 0
  %18 = load float, ptr %17, align 4
  %19 = fmul float %16, %18
  %20 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 0
  store float %19, ptr %20, align 4
  %21 = getelementptr inbounds nuw %struct.anon.3, ptr %6, i32 0, i32 1
  %22 = load float, ptr %21, align 4
  %23 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 1
  %24 = load float, ptr %23, align 4
  %25 = fmul float %22, %24
  %26 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 1
  store float %25, ptr %26, align 4
  %27 = getelementptr inbounds nuw %struct.anon.3, ptr %6, i32 0, i32 2
  %28 = load float, ptr %27, align 4
  %29 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  %30 = load float, ptr %29, align 4
  %31 = fmul float %28, %30
  %32 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 2
  store float %31, ptr %32, align 4
  %33 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %5, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 4 %33, i64 12, i1 false)
  %34 = load { <2 x float>, float }, ptr %10, align 8
  ret { <2 x float>, float } %34
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, float } @HMM_MulV3F(<2 x float> %0, float %1, float noundef %2) #3 {
  %4 = alloca %union.HMM_Vec3, align 4
  %5 = alloca %union.HMM_Vec3, align 4
  %6 = alloca { <2 x float>, float }, align 4
  %7 = alloca float, align 4
  %8 = alloca { <2 x float>, float }, align 8
  %9 = getelementptr inbounds nuw { <2 x float>, float }, ptr %6, i32 0, i32 0
  store <2 x float> %0, ptr %9, align 4
  %10 = getelementptr inbounds nuw { <2 x float>, float }, ptr %6, i32 0, i32 1
  store float %1, ptr %10, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %6, i64 12, i1 false)
  store float %2, ptr %7, align 4
  %11 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 0
  %12 = load float, ptr %11, align 4
  %13 = load float, ptr %7, align 4
  %14 = fmul float %12, %13
  %15 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 0
  store float %14, ptr %15, align 4
  %16 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 1
  %17 = load float, ptr %16, align 4
  %18 = load float, ptr %7, align 4
  %19 = fmul float %17, %18
  %20 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 1
  store float %19, ptr %20, align 4
  %21 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 2
  %22 = load float, ptr %21, align 4
  %23 = load float, ptr %7, align 4
  %24 = fmul float %22, %23
  %25 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 2
  store float %24, ptr %25, align 4
  %26 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %4, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 4 %26, i64 12, i1 false)
  %27 = load { <2 x float>, float }, ptr %8, align 8
  ret { <2 x float>, float } %27
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_MulV4(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) #3 {
  %5 = alloca %union.HMM_Vec4, align 4
  %6 = alloca %union.HMM_Vec4, align 4
  %7 = alloca %union.HMM_Vec4, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 0
  store <2 x float> %0, ptr %8, align 4
  %9 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 1
  store <2 x float> %1, ptr %9, align 4
  %10 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 0
  store <2 x float> %2, ptr %10, align 4
  %11 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 1
  store <2 x float> %3, ptr %11, align 4
  %12 = getelementptr inbounds nuw %struct.anon.10, ptr %6, i32 0, i32 0
  %13 = getelementptr inbounds nuw %struct.anon.11, ptr %12, i32 0, i32 0
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds nuw %struct.anon.10, ptr %7, i32 0, i32 0
  %16 = getelementptr inbounds nuw %struct.anon.11, ptr %15, i32 0, i32 0
  %17 = load float, ptr %16, align 4
  %18 = fmul float %14, %17
  %19 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %20 = getelementptr inbounds nuw %struct.anon.11, ptr %19, i32 0, i32 0
  store float %18, ptr %20, align 4
  %21 = getelementptr inbounds nuw %struct.anon.10, ptr %6, i32 0, i32 0
  %22 = getelementptr inbounds nuw %struct.anon.11, ptr %21, i32 0, i32 1
  %23 = load float, ptr %22, align 4
  %24 = getelementptr inbounds nuw %struct.anon.10, ptr %7, i32 0, i32 0
  %25 = getelementptr inbounds nuw %struct.anon.11, ptr %24, i32 0, i32 1
  %26 = load float, ptr %25, align 4
  %27 = fmul float %23, %26
  %28 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %29 = getelementptr inbounds nuw %struct.anon.11, ptr %28, i32 0, i32 1
  store float %27, ptr %29, align 4
  %30 = getelementptr inbounds nuw %struct.anon.10, ptr %6, i32 0, i32 0
  %31 = getelementptr inbounds nuw %struct.anon.11, ptr %30, i32 0, i32 2
  %32 = load float, ptr %31, align 4
  %33 = getelementptr inbounds nuw %struct.anon.10, ptr %7, i32 0, i32 0
  %34 = getelementptr inbounds nuw %struct.anon.11, ptr %33, i32 0, i32 2
  %35 = load float, ptr %34, align 4
  %36 = fmul float %32, %35
  %37 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %38 = getelementptr inbounds nuw %struct.anon.11, ptr %37, i32 0, i32 2
  store float %36, ptr %38, align 4
  %39 = getelementptr inbounds nuw %struct.anon.10, ptr %6, i32 0, i32 1
  %40 = load float, ptr %39, align 4
  %41 = getelementptr inbounds nuw %struct.anon.10, ptr %7, i32 0, i32 1
  %42 = load float, ptr %41, align 4
  %43 = fmul float %40, %42
  %44 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 1
  store float %43, ptr %44, align 4
  %45 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %5, i32 0, i32 0
  %46 = load { <2 x float>, <2 x float> }, ptr %45, align 4
  ret { <2 x float>, <2 x float> } %46
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_MulV4F(<2 x float> %0, <2 x float> %1, float noundef %2) #3 {
  %4 = alloca %union.HMM_Vec4, align 4
  %5 = alloca %union.HMM_Vec4, align 4
  %6 = alloca float, align 4
  %7 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 0
  store <2 x float> %0, ptr %7, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 1
  store <2 x float> %1, ptr %8, align 4
  store float %2, ptr %6, align 4
  %9 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %10 = getelementptr inbounds nuw %struct.anon.11, ptr %9, i32 0, i32 0
  %11 = load float, ptr %10, align 4
  %12 = load float, ptr %6, align 4
  %13 = fmul float %11, %12
  %14 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 0
  %15 = getelementptr inbounds nuw %struct.anon.11, ptr %14, i32 0, i32 0
  store float %13, ptr %15, align 4
  %16 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %17 = getelementptr inbounds nuw %struct.anon.11, ptr %16, i32 0, i32 1
  %18 = load float, ptr %17, align 4
  %19 = load float, ptr %6, align 4
  %20 = fmul float %18, %19
  %21 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 0
  %22 = getelementptr inbounds nuw %struct.anon.11, ptr %21, i32 0, i32 1
  store float %20, ptr %22, align 4
  %23 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %24 = getelementptr inbounds nuw %struct.anon.11, ptr %23, i32 0, i32 2
  %25 = load float, ptr %24, align 4
  %26 = load float, ptr %6, align 4
  %27 = fmul float %25, %26
  %28 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 0
  %29 = getelementptr inbounds nuw %struct.anon.11, ptr %28, i32 0, i32 2
  store float %27, ptr %29, align 4
  %30 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 1
  %31 = load float, ptr %30, align 4
  %32 = load float, ptr %6, align 4
  %33 = fmul float %31, %32
  %34 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 1
  store float %33, ptr %34, align 4
  %35 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %4, i32 0, i32 0
  %36 = load { <2 x float>, <2 x float> }, ptr %35, align 4
  ret { <2 x float>, <2 x float> } %36
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local <2 x float> @HMM_DivV2(<2 x float> %0, <2 x float> %1) #3 {
  %3 = alloca %union.HMM_Vec2, align 4
  %4 = alloca %union.HMM_Vec2, align 4
  %5 = alloca %union.HMM_Vec2, align 4
  %6 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %4, i32 0, i32 0
  store <2 x float> %0, ptr %6, align 4
  %7 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %5, i32 0, i32 0
  store <2 x float> %1, ptr %7, align 4
  %8 = getelementptr inbounds nuw %struct.anon, ptr %4, i32 0, i32 0
  %9 = load float, ptr %8, align 4
  %10 = getelementptr inbounds nuw %struct.anon, ptr %5, i32 0, i32 0
  %11 = load float, ptr %10, align 4
  %12 = fdiv float %9, %11
  %13 = getelementptr inbounds nuw %struct.anon, ptr %3, i32 0, i32 0
  store float %12, ptr %13, align 4
  %14 = getelementptr inbounds nuw %struct.anon, ptr %4, i32 0, i32 1
  %15 = load float, ptr %14, align 4
  %16 = getelementptr inbounds nuw %struct.anon, ptr %5, i32 0, i32 1
  %17 = load float, ptr %16, align 4
  %18 = fdiv float %15, %17
  %19 = getelementptr inbounds nuw %struct.anon, ptr %3, i32 0, i32 1
  store float %18, ptr %19, align 4
  %20 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %3, i32 0, i32 0
  %21 = load <2 x float>, ptr %20, align 4
  ret <2 x float> %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local <2 x float> @HMM_DivV2F(<2 x float> %0, float noundef %1) #3 {
  %3 = alloca %union.HMM_Vec2, align 4
  %4 = alloca %union.HMM_Vec2, align 4
  %5 = alloca float, align 4
  %6 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %4, i32 0, i32 0
  store <2 x float> %0, ptr %6, align 4
  store float %1, ptr %5, align 4
  %7 = getelementptr inbounds nuw %struct.anon, ptr %4, i32 0, i32 0
  %8 = load float, ptr %7, align 4
  %9 = load float, ptr %5, align 4
  %10 = fdiv float %8, %9
  %11 = getelementptr inbounds nuw %struct.anon, ptr %3, i32 0, i32 0
  store float %10, ptr %11, align 4
  %12 = getelementptr inbounds nuw %struct.anon, ptr %4, i32 0, i32 1
  %13 = load float, ptr %12, align 4
  %14 = load float, ptr %5, align 4
  %15 = fdiv float %13, %14
  %16 = getelementptr inbounds nuw %struct.anon, ptr %3, i32 0, i32 1
  store float %15, ptr %16, align 4
  %17 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %3, i32 0, i32 0
  %18 = load <2 x float>, ptr %17, align 4
  ret <2 x float> %18
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, float } @HMM_DivV3(<2 x float> %0, float %1, <2 x float> %2, float %3) #3 {
  %5 = alloca %union.HMM_Vec3, align 4
  %6 = alloca %union.HMM_Vec3, align 4
  %7 = alloca { <2 x float>, float }, align 4
  %8 = alloca %union.HMM_Vec3, align 4
  %9 = alloca { <2 x float>, float }, align 4
  %10 = alloca { <2 x float>, float }, align 8
  %11 = getelementptr inbounds nuw { <2 x float>, float }, ptr %7, i32 0, i32 0
  store <2 x float> %0, ptr %11, align 4
  %12 = getelementptr inbounds nuw { <2 x float>, float }, ptr %7, i32 0, i32 1
  store float %1, ptr %12, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %7, i64 12, i1 false)
  %13 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 0
  store <2 x float> %2, ptr %13, align 4
  %14 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 1
  store float %3, ptr %14, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %9, i64 12, i1 false)
  %15 = getelementptr inbounds nuw %struct.anon.3, ptr %6, i32 0, i32 0
  %16 = load float, ptr %15, align 4
  %17 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 0
  %18 = load float, ptr %17, align 4
  %19 = fdiv float %16, %18
  %20 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 0
  store float %19, ptr %20, align 4
  %21 = getelementptr inbounds nuw %struct.anon.3, ptr %6, i32 0, i32 1
  %22 = load float, ptr %21, align 4
  %23 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 1
  %24 = load float, ptr %23, align 4
  %25 = fdiv float %22, %24
  %26 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 1
  store float %25, ptr %26, align 4
  %27 = getelementptr inbounds nuw %struct.anon.3, ptr %6, i32 0, i32 2
  %28 = load float, ptr %27, align 4
  %29 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  %30 = load float, ptr %29, align 4
  %31 = fdiv float %28, %30
  %32 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 2
  store float %31, ptr %32, align 4
  %33 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %5, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 4 %33, i64 12, i1 false)
  %34 = load { <2 x float>, float }, ptr %10, align 8
  ret { <2 x float>, float } %34
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, float } @HMM_DivV3F(<2 x float> %0, float %1, float noundef %2) #3 {
  %4 = alloca %union.HMM_Vec3, align 4
  %5 = alloca %union.HMM_Vec3, align 4
  %6 = alloca { <2 x float>, float }, align 4
  %7 = alloca float, align 4
  %8 = alloca { <2 x float>, float }, align 8
  %9 = getelementptr inbounds nuw { <2 x float>, float }, ptr %6, i32 0, i32 0
  store <2 x float> %0, ptr %9, align 4
  %10 = getelementptr inbounds nuw { <2 x float>, float }, ptr %6, i32 0, i32 1
  store float %1, ptr %10, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %6, i64 12, i1 false)
  store float %2, ptr %7, align 4
  %11 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 0
  %12 = load float, ptr %11, align 4
  %13 = load float, ptr %7, align 4
  %14 = fdiv float %12, %13
  %15 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 0
  store float %14, ptr %15, align 4
  %16 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 1
  %17 = load float, ptr %16, align 4
  %18 = load float, ptr %7, align 4
  %19 = fdiv float %17, %18
  %20 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 1
  store float %19, ptr %20, align 4
  %21 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 2
  %22 = load float, ptr %21, align 4
  %23 = load float, ptr %7, align 4
  %24 = fdiv float %22, %23
  %25 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 2
  store float %24, ptr %25, align 4
  %26 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %4, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 4 %26, i64 12, i1 false)
  %27 = load { <2 x float>, float }, ptr %8, align 8
  ret { <2 x float>, float } %27
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_DivV4(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) #3 {
  %5 = alloca %union.HMM_Vec4, align 4
  %6 = alloca %union.HMM_Vec4, align 4
  %7 = alloca %union.HMM_Vec4, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 0
  store <2 x float> %0, ptr %8, align 4
  %9 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 1
  store <2 x float> %1, ptr %9, align 4
  %10 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 0
  store <2 x float> %2, ptr %10, align 4
  %11 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 1
  store <2 x float> %3, ptr %11, align 4
  %12 = getelementptr inbounds nuw %struct.anon.10, ptr %6, i32 0, i32 0
  %13 = getelementptr inbounds nuw %struct.anon.11, ptr %12, i32 0, i32 0
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds nuw %struct.anon.10, ptr %7, i32 0, i32 0
  %16 = getelementptr inbounds nuw %struct.anon.11, ptr %15, i32 0, i32 0
  %17 = load float, ptr %16, align 4
  %18 = fdiv float %14, %17
  %19 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %20 = getelementptr inbounds nuw %struct.anon.11, ptr %19, i32 0, i32 0
  store float %18, ptr %20, align 4
  %21 = getelementptr inbounds nuw %struct.anon.10, ptr %6, i32 0, i32 0
  %22 = getelementptr inbounds nuw %struct.anon.11, ptr %21, i32 0, i32 1
  %23 = load float, ptr %22, align 4
  %24 = getelementptr inbounds nuw %struct.anon.10, ptr %7, i32 0, i32 0
  %25 = getelementptr inbounds nuw %struct.anon.11, ptr %24, i32 0, i32 1
  %26 = load float, ptr %25, align 4
  %27 = fdiv float %23, %26
  %28 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %29 = getelementptr inbounds nuw %struct.anon.11, ptr %28, i32 0, i32 1
  store float %27, ptr %29, align 4
  %30 = getelementptr inbounds nuw %struct.anon.10, ptr %6, i32 0, i32 0
  %31 = getelementptr inbounds nuw %struct.anon.11, ptr %30, i32 0, i32 2
  %32 = load float, ptr %31, align 4
  %33 = getelementptr inbounds nuw %struct.anon.10, ptr %7, i32 0, i32 0
  %34 = getelementptr inbounds nuw %struct.anon.11, ptr %33, i32 0, i32 2
  %35 = load float, ptr %34, align 4
  %36 = fdiv float %32, %35
  %37 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %38 = getelementptr inbounds nuw %struct.anon.11, ptr %37, i32 0, i32 2
  store float %36, ptr %38, align 4
  %39 = getelementptr inbounds nuw %struct.anon.10, ptr %6, i32 0, i32 1
  %40 = load float, ptr %39, align 4
  %41 = getelementptr inbounds nuw %struct.anon.10, ptr %7, i32 0, i32 1
  %42 = load float, ptr %41, align 4
  %43 = fdiv float %40, %42
  %44 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 1
  store float %43, ptr %44, align 4
  %45 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %5, i32 0, i32 0
  %46 = load { <2 x float>, <2 x float> }, ptr %45, align 4
  ret { <2 x float>, <2 x float> } %46
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_DivV4F(<2 x float> %0, <2 x float> %1, float noundef %2) #3 {
  %4 = alloca %union.HMM_Vec4, align 4
  %5 = alloca %union.HMM_Vec4, align 4
  %6 = alloca float, align 4
  %7 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 0
  store <2 x float> %0, ptr %7, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 1
  store <2 x float> %1, ptr %8, align 4
  store float %2, ptr %6, align 4
  %9 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %10 = getelementptr inbounds nuw %struct.anon.11, ptr %9, i32 0, i32 0
  %11 = load float, ptr %10, align 4
  %12 = load float, ptr %6, align 4
  %13 = fdiv float %11, %12
  %14 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 0
  %15 = getelementptr inbounds nuw %struct.anon.11, ptr %14, i32 0, i32 0
  store float %13, ptr %15, align 4
  %16 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %17 = getelementptr inbounds nuw %struct.anon.11, ptr %16, i32 0, i32 1
  %18 = load float, ptr %17, align 4
  %19 = load float, ptr %6, align 4
  %20 = fdiv float %18, %19
  %21 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 0
  %22 = getelementptr inbounds nuw %struct.anon.11, ptr %21, i32 0, i32 1
  store float %20, ptr %22, align 4
  %23 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %24 = getelementptr inbounds nuw %struct.anon.11, ptr %23, i32 0, i32 2
  %25 = load float, ptr %24, align 4
  %26 = load float, ptr %6, align 4
  %27 = fdiv float %25, %26
  %28 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 0
  %29 = getelementptr inbounds nuw %struct.anon.11, ptr %28, i32 0, i32 2
  store float %27, ptr %29, align 4
  %30 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 1
  %31 = load float, ptr %30, align 4
  %32 = load float, ptr %6, align 4
  %33 = fdiv float %31, %32
  %34 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 1
  store float %33, ptr %34, align 4
  %35 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %4, i32 0, i32 0
  %36 = load { <2 x float>, <2 x float> }, ptr %35, align 4
  ret { <2 x float>, <2 x float> } %36
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_DotV2(<2 x float> %0, <2 x float> %1) #3 {
  %3 = alloca %union.HMM_Vec2, align 4
  %4 = alloca %union.HMM_Vec2, align 4
  %5 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %3, i32 0, i32 0
  store <2 x float> %0, ptr %5, align 4
  %6 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %4, i32 0, i32 0
  store <2 x float> %1, ptr %6, align 4
  %7 = getelementptr inbounds nuw %struct.anon, ptr %3, i32 0, i32 0
  %8 = load float, ptr %7, align 4
  %9 = getelementptr inbounds nuw %struct.anon, ptr %4, i32 0, i32 0
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds nuw %struct.anon, ptr %3, i32 0, i32 1
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds nuw %struct.anon, ptr %4, i32 0, i32 1
  %14 = load float, ptr %13, align 4
  %15 = fmul float %12, %14
  %16 = call float @llvm.fmuladd.f32(float %8, float %10, float %15)
  ret float %16
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_DotV3(<2 x float> %0, float %1, <2 x float> %2, float %3) #3 {
  %5 = alloca %union.HMM_Vec3, align 4
  %6 = alloca { <2 x float>, float }, align 4
  %7 = alloca %union.HMM_Vec3, align 4
  %8 = alloca { <2 x float>, float }, align 4
  %9 = getelementptr inbounds nuw { <2 x float>, float }, ptr %6, i32 0, i32 0
  store <2 x float> %0, ptr %9, align 4
  %10 = getelementptr inbounds nuw { <2 x float>, float }, ptr %6, i32 0, i32 1
  store float %1, ptr %10, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %6, i64 12, i1 false)
  %11 = getelementptr inbounds nuw { <2 x float>, float }, ptr %8, i32 0, i32 0
  store <2 x float> %2, ptr %11, align 4
  %12 = getelementptr inbounds nuw { <2 x float>, float }, ptr %8, i32 0, i32 1
  store float %3, ptr %12, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %7, ptr align 4 %8, i64 12, i1 false)
  %13 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 0
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds nuw %struct.anon.3, ptr %7, i32 0, i32 0
  %16 = load float, ptr %15, align 4
  %17 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 1
  %18 = load float, ptr %17, align 4
  %19 = getelementptr inbounds nuw %struct.anon.3, ptr %7, i32 0, i32 1
  %20 = load float, ptr %19, align 4
  %21 = fmul float %18, %20
  %22 = call float @llvm.fmuladd.f32(float %14, float %16, float %21)
  %23 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 2
  %24 = load float, ptr %23, align 4
  %25 = getelementptr inbounds nuw %struct.anon.3, ptr %7, i32 0, i32 2
  %26 = load float, ptr %25, align 4
  %27 = call float @llvm.fmuladd.f32(float %24, float %26, float %22)
  ret float %27
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_DotV4(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) #3 {
  %5 = alloca %union.HMM_Vec4, align 4
  %6 = alloca %union.HMM_Vec4, align 4
  %7 = alloca float, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 0
  store <2 x float> %0, ptr %8, align 4
  %9 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 1
  store <2 x float> %1, ptr %9, align 4
  %10 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 0
  store <2 x float> %2, ptr %10, align 4
  %11 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 1
  store <2 x float> %3, ptr %11, align 4
  %12 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %13 = getelementptr inbounds nuw %struct.anon.11, ptr %12, i32 0, i32 0
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds nuw %struct.anon.10, ptr %6, i32 0, i32 0
  %16 = getelementptr inbounds nuw %struct.anon.11, ptr %15, i32 0, i32 0
  %17 = load float, ptr %16, align 4
  %18 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %19 = getelementptr inbounds nuw %struct.anon.11, ptr %18, i32 0, i32 2
  %20 = load float, ptr %19, align 4
  %21 = getelementptr inbounds nuw %struct.anon.10, ptr %6, i32 0, i32 0
  %22 = getelementptr inbounds nuw %struct.anon.11, ptr %21, i32 0, i32 2
  %23 = load float, ptr %22, align 4
  %24 = fmul float %20, %23
  %25 = call float @llvm.fmuladd.f32(float %14, float %17, float %24)
  %26 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %27 = getelementptr inbounds nuw %struct.anon.11, ptr %26, i32 0, i32 1
  %28 = load float, ptr %27, align 4
  %29 = getelementptr inbounds nuw %struct.anon.10, ptr %6, i32 0, i32 0
  %30 = getelementptr inbounds nuw %struct.anon.11, ptr %29, i32 0, i32 1
  %31 = load float, ptr %30, align 4
  %32 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 1
  %33 = load float, ptr %32, align 4
  %34 = getelementptr inbounds nuw %struct.anon.10, ptr %6, i32 0, i32 1
  %35 = load float, ptr %34, align 4
  %36 = fmul float %33, %35
  %37 = call float @llvm.fmuladd.f32(float %28, float %31, float %36)
  %38 = fadd float %25, %37
  store float %38, ptr %7, align 4
  %39 = load float, ptr %7, align 4
  ret float %39
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, float } @HMM_Cross(<2 x float> %0, float %1, <2 x float> %2, float %3) #3 {
  %5 = alloca %union.HMM_Vec3, align 4
  %6 = alloca %union.HMM_Vec3, align 4
  %7 = alloca { <2 x float>, float }, align 4
  %8 = alloca %union.HMM_Vec3, align 4
  %9 = alloca { <2 x float>, float }, align 4
  %10 = alloca { <2 x float>, float }, align 8
  %11 = getelementptr inbounds nuw { <2 x float>, float }, ptr %7, i32 0, i32 0
  store <2 x float> %0, ptr %11, align 4
  %12 = getelementptr inbounds nuw { <2 x float>, float }, ptr %7, i32 0, i32 1
  store float %1, ptr %12, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %7, i64 12, i1 false)
  %13 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 0
  store <2 x float> %2, ptr %13, align 4
  %14 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 1
  store float %3, ptr %14, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %9, i64 12, i1 false)
  %15 = getelementptr inbounds nuw %struct.anon.3, ptr %6, i32 0, i32 1
  %16 = load float, ptr %15, align 4
  %17 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  %18 = load float, ptr %17, align 4
  %19 = getelementptr inbounds nuw %struct.anon.3, ptr %6, i32 0, i32 2
  %20 = load float, ptr %19, align 4
  %21 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 1
  %22 = load float, ptr %21, align 4
  %23 = fmul float %20, %22
  %24 = fneg float %23
  %25 = call float @llvm.fmuladd.f32(float %16, float %18, float %24)
  %26 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 0
  store float %25, ptr %26, align 4
  %27 = getelementptr inbounds nuw %struct.anon.3, ptr %6, i32 0, i32 2
  %28 = load float, ptr %27, align 4
  %29 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 0
  %30 = load float, ptr %29, align 4
  %31 = getelementptr inbounds nuw %struct.anon.3, ptr %6, i32 0, i32 0
  %32 = load float, ptr %31, align 4
  %33 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  %34 = load float, ptr %33, align 4
  %35 = fmul float %32, %34
  %36 = fneg float %35
  %37 = call float @llvm.fmuladd.f32(float %28, float %30, float %36)
  %38 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 1
  store float %37, ptr %38, align 4
  %39 = getelementptr inbounds nuw %struct.anon.3, ptr %6, i32 0, i32 0
  %40 = load float, ptr %39, align 4
  %41 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 1
  %42 = load float, ptr %41, align 4
  %43 = getelementptr inbounds nuw %struct.anon.3, ptr %6, i32 0, i32 1
  %44 = load float, ptr %43, align 4
  %45 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 0
  %46 = load float, ptr %45, align 4
  %47 = fmul float %44, %46
  %48 = fneg float %47
  %49 = call float @llvm.fmuladd.f32(float %40, float %42, float %48)
  %50 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 2
  store float %49, ptr %50, align 4
  %51 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %5, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 4 %51, i64 12, i1 false)
  %52 = load { <2 x float>, float }, ptr %10, align 8
  ret { <2 x float>, float } %52
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_LenSqrV2(<2 x float> %0) #3 {
  %2 = alloca %union.HMM_Vec2, align 4
  %3 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %2, i32 0, i32 0
  store <2 x float> %0, ptr %3, align 4
  %4 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %2, i32 0, i32 0
  %5 = load <2 x float>, ptr %4, align 4
  %6 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %2, i32 0, i32 0
  %7 = load <2 x float>, ptr %6, align 4
  %8 = call float @HMM_DotV2(<2 x float> %5, <2 x float> %7)
  ret float %8
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_LenSqrV3(<2 x float> %0, float %1) #3 {
  %3 = alloca %union.HMM_Vec3, align 4
  %4 = alloca { <2 x float>, float }, align 4
  %5 = alloca { <2 x float>, float }, align 4
  %6 = alloca { <2 x float>, float }, align 4
  %7 = getelementptr inbounds nuw { <2 x float>, float }, ptr %4, i32 0, i32 0
  store <2 x float> %0, ptr %7, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, float }, ptr %4, i32 0, i32 1
  store float %1, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %4, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %3, i64 12, i1 false)
  %9 = getelementptr inbounds nuw { <2 x float>, float }, ptr %5, i32 0, i32 0
  %10 = load <2 x float>, ptr %9, align 4
  %11 = getelementptr inbounds nuw { <2 x float>, float }, ptr %5, i32 0, i32 1
  %12 = load float, ptr %11, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %3, i64 12, i1 false)
  %13 = getelementptr inbounds nuw { <2 x float>, float }, ptr %6, i32 0, i32 0
  %14 = load <2 x float>, ptr %13, align 4
  %15 = getelementptr inbounds nuw { <2 x float>, float }, ptr %6, i32 0, i32 1
  %16 = load float, ptr %15, align 4
  %17 = call float @HMM_DotV3(<2 x float> %10, float %12, <2 x float> %14, float %16)
  ret float %17
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_LenSqrV4(<2 x float> %0, <2 x float> %1) #3 {
  %3 = alloca %union.HMM_Vec4, align 4
  %4 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %3, i32 0, i32 0
  store <2 x float> %0, ptr %4, align 4
  %5 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %3, i32 0, i32 1
  store <2 x float> %1, ptr %5, align 4
  %6 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %3, i32 0, i32 0
  %7 = load <2 x float>, ptr %6, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %3, i32 0, i32 1
  %9 = load <2 x float>, ptr %8, align 4
  %10 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %3, i32 0, i32 0
  %11 = load <2 x float>, ptr %10, align 4
  %12 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %3, i32 0, i32 1
  %13 = load <2 x float>, ptr %12, align 4
  %14 = call float @HMM_DotV4(<2 x float> %7, <2 x float> %9, <2 x float> %11, <2 x float> %13)
  ret float %14
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_LenV2(<2 x float> %0) #3 {
  %2 = alloca %union.HMM_Vec2, align 4
  %3 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %2, i32 0, i32 0
  store <2 x float> %0, ptr %3, align 4
  %4 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %2, i32 0, i32 0
  %5 = load <2 x float>, ptr %4, align 4
  %6 = call float @HMM_LenSqrV2(<2 x float> %5)
  %7 = call float @HMM_SqrtF(float noundef %6)
  ret float %7
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_LenV3(<2 x float> %0, float %1) #3 {
  %3 = alloca %union.HMM_Vec3, align 4
  %4 = alloca { <2 x float>, float }, align 4
  %5 = alloca { <2 x float>, float }, align 4
  %6 = getelementptr inbounds nuw { <2 x float>, float }, ptr %4, i32 0, i32 0
  store <2 x float> %0, ptr %6, align 4
  %7 = getelementptr inbounds nuw { <2 x float>, float }, ptr %4, i32 0, i32 1
  store float %1, ptr %7, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %4, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %3, i64 12, i1 false)
  %8 = getelementptr inbounds nuw { <2 x float>, float }, ptr %5, i32 0, i32 0
  %9 = load <2 x float>, ptr %8, align 4
  %10 = getelementptr inbounds nuw { <2 x float>, float }, ptr %5, i32 0, i32 1
  %11 = load float, ptr %10, align 4
  %12 = call float @HMM_LenSqrV3(<2 x float> %9, float %11)
  %13 = call float @HMM_SqrtF(float noundef %12)
  ret float %13
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_LenV4(<2 x float> %0, <2 x float> %1) #3 {
  %3 = alloca %union.HMM_Vec4, align 4
  %4 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %3, i32 0, i32 0
  store <2 x float> %0, ptr %4, align 4
  %5 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %3, i32 0, i32 1
  store <2 x float> %1, ptr %5, align 4
  %6 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %3, i32 0, i32 0
  %7 = load <2 x float>, ptr %6, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %3, i32 0, i32 1
  %9 = load <2 x float>, ptr %8, align 4
  %10 = call float @HMM_LenSqrV4(<2 x float> %7, <2 x float> %9)
  %11 = call float @HMM_SqrtF(float noundef %10)
  ret float %11
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local <2 x float> @HMM_NormV2(<2 x float> %0) #3 {
  %2 = alloca %union.HMM_Vec2, align 4
  %3 = alloca %union.HMM_Vec2, align 4
  %4 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %3, i32 0, i32 0
  store <2 x float> %0, ptr %4, align 4
  %5 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %3, i32 0, i32 0
  %6 = load <2 x float>, ptr %5, align 4
  %7 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %3, i32 0, i32 0
  %8 = load <2 x float>, ptr %7, align 4
  %9 = call float @HMM_DotV2(<2 x float> %6, <2 x float> %8)
  %10 = call float @HMM_InvSqrtF(float noundef %9)
  %11 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %3, i32 0, i32 0
  %12 = load <2 x float>, ptr %11, align 4
  %13 = call <2 x float> @HMM_MulV2F(<2 x float> %12, float noundef %10)
  %14 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %2, i32 0, i32 0
  store <2 x float> %13, ptr %14, align 4
  %15 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %2, i32 0, i32 0
  %16 = load <2 x float>, ptr %15, align 4
  ret <2 x float> %16
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, float } @HMM_NormV3(<2 x float> %0, float %1) #3 {
  %3 = alloca %union.HMM_Vec3, align 4
  %4 = alloca %union.HMM_Vec3, align 4
  %5 = alloca { <2 x float>, float }, align 4
  %6 = alloca { <2 x float>, float }, align 4
  %7 = alloca { <2 x float>, float }, align 4
  %8 = alloca { <2 x float>, float }, align 4
  %9 = alloca { <2 x float>, float }, align 8
  %10 = alloca { <2 x float>, float }, align 8
  %11 = getelementptr inbounds nuw { <2 x float>, float }, ptr %5, i32 0, i32 0
  store <2 x float> %0, ptr %11, align 4
  %12 = getelementptr inbounds nuw { <2 x float>, float }, ptr %5, i32 0, i32 1
  store float %1, ptr %12, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 4 %5, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %4, i64 12, i1 false)
  %13 = getelementptr inbounds nuw { <2 x float>, float }, ptr %6, i32 0, i32 0
  %14 = load <2 x float>, ptr %13, align 4
  %15 = getelementptr inbounds nuw { <2 x float>, float }, ptr %6, i32 0, i32 1
  %16 = load float, ptr %15, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %7, ptr align 4 %4, i64 12, i1 false)
  %17 = getelementptr inbounds nuw { <2 x float>, float }, ptr %7, i32 0, i32 0
  %18 = load <2 x float>, ptr %17, align 4
  %19 = getelementptr inbounds nuw { <2 x float>, float }, ptr %7, i32 0, i32 1
  %20 = load float, ptr %19, align 4
  %21 = call float @HMM_DotV3(<2 x float> %14, float %16, <2 x float> %18, float %20)
  %22 = call float @HMM_InvSqrtF(float noundef %21)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %4, i64 12, i1 false)
  %23 = getelementptr inbounds nuw { <2 x float>, float }, ptr %8, i32 0, i32 0
  %24 = load <2 x float>, ptr %23, align 4
  %25 = getelementptr inbounds nuw { <2 x float>, float }, ptr %8, i32 0, i32 1
  %26 = load float, ptr %25, align 4
  %27 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %24, float %26, float noundef %22)
  %28 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %3, i32 0, i32 0
  store { <2 x float>, float } %27, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %28, ptr align 8 %9, i64 12, i1 false)
  %29 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %3, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 4 %29, i64 12, i1 false)
  %30 = load { <2 x float>, float }, ptr %10, align 8
  ret { <2 x float>, float } %30
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_NormV4(<2 x float> %0, <2 x float> %1) #3 {
  %3 = alloca %union.HMM_Vec4, align 4
  %4 = alloca %union.HMM_Vec4, align 4
  %5 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 0
  store <2 x float> %0, ptr %5, align 4
  %6 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 1
  store <2 x float> %1, ptr %6, align 4
  %7 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 0
  %8 = load <2 x float>, ptr %7, align 4
  %9 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 1
  %10 = load <2 x float>, ptr %9, align 4
  %11 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 0
  %12 = load <2 x float>, ptr %11, align 4
  %13 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 1
  %14 = load <2 x float>, ptr %13, align 4
  %15 = call float @HMM_DotV4(<2 x float> %8, <2 x float> %10, <2 x float> %12, <2 x float> %14)
  %16 = call float @HMM_InvSqrtF(float noundef %15)
  %17 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 0
  %18 = load <2 x float>, ptr %17, align 4
  %19 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 1
  %20 = load <2 x float>, ptr %19, align 4
  %21 = call { <2 x float>, <2 x float> } @HMM_MulV4F(<2 x float> %18, <2 x float> %20, float noundef %16)
  %22 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %3, i32 0, i32 0
  %23 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %22, i32 0, i32 0
  %24 = extractvalue { <2 x float>, <2 x float> } %21, 0
  store <2 x float> %24, ptr %23, align 4
  %25 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %22, i32 0, i32 1
  %26 = extractvalue { <2 x float>, <2 x float> } %21, 1
  store <2 x float> %26, ptr %25, align 4
  %27 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %3, i32 0, i32 0
  %28 = load { <2 x float>, <2 x float> }, ptr %27, align 4
  ret { <2 x float>, <2 x float> } %28
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local <2 x float> @HMM_LerpV2(<2 x float> %0, float noundef %1, <2 x float> %2) #3 {
  %4 = alloca %union.HMM_Vec2, align 4
  %5 = alloca %union.HMM_Vec2, align 4
  %6 = alloca %union.HMM_Vec2, align 4
  %7 = alloca float, align 4
  %8 = alloca %union.HMM_Vec2, align 4
  %9 = alloca %union.HMM_Vec2, align 4
  %10 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %5, i32 0, i32 0
  store <2 x float> %0, ptr %10, align 4
  %11 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %6, i32 0, i32 0
  store <2 x float> %2, ptr %11, align 4
  store float %1, ptr %7, align 4
  %12 = load float, ptr %7, align 4
  %13 = fsub float 1.000000e+00, %12
  %14 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %5, i32 0, i32 0
  %15 = load <2 x float>, ptr %14, align 4
  %16 = call <2 x float> @HMM_MulV2F(<2 x float> %15, float noundef %13)
  %17 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %8, i32 0, i32 0
  store <2 x float> %16, ptr %17, align 4
  %18 = load float, ptr %7, align 4
  %19 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %6, i32 0, i32 0
  %20 = load <2 x float>, ptr %19, align 4
  %21 = call <2 x float> @HMM_MulV2F(<2 x float> %20, float noundef %18)
  %22 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %9, i32 0, i32 0
  store <2 x float> %21, ptr %22, align 4
  %23 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %8, i32 0, i32 0
  %24 = load <2 x float>, ptr %23, align 4
  %25 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %9, i32 0, i32 0
  %26 = load <2 x float>, ptr %25, align 4
  %27 = call <2 x float> @HMM_AddV2(<2 x float> %24, <2 x float> %26)
  %28 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %4, i32 0, i32 0
  store <2 x float> %27, ptr %28, align 4
  %29 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %4, i32 0, i32 0
  %30 = load <2 x float>, ptr %29, align 4
  ret <2 x float> %30
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, float } @HMM_LerpV3(<2 x float> %0, float %1, float noundef %2, <2 x float> %3, float %4) #3 {
  %6 = alloca %union.HMM_Vec3, align 4
  %7 = alloca %union.HMM_Vec3, align 4
  %8 = alloca { <2 x float>, float }, align 4
  %9 = alloca %union.HMM_Vec3, align 4
  %10 = alloca { <2 x float>, float }, align 4
  %11 = alloca float, align 4
  %12 = alloca %union.HMM_Vec3, align 4
  %13 = alloca { <2 x float>, float }, align 4
  %14 = alloca { <2 x float>, float }, align 8
  %15 = alloca %union.HMM_Vec3, align 4
  %16 = alloca { <2 x float>, float }, align 4
  %17 = alloca { <2 x float>, float }, align 8
  %18 = alloca { <2 x float>, float }, align 4
  %19 = alloca { <2 x float>, float }, align 4
  %20 = alloca { <2 x float>, float }, align 8
  %21 = alloca { <2 x float>, float }, align 8
  %22 = getelementptr inbounds nuw { <2 x float>, float }, ptr %8, i32 0, i32 0
  store <2 x float> %0, ptr %22, align 4
  %23 = getelementptr inbounds nuw { <2 x float>, float }, ptr %8, i32 0, i32 1
  store float %1, ptr %23, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %7, ptr align 4 %8, i64 12, i1 false)
  %24 = getelementptr inbounds nuw { <2 x float>, float }, ptr %10, i32 0, i32 0
  store <2 x float> %3, ptr %24, align 4
  %25 = getelementptr inbounds nuw { <2 x float>, float }, ptr %10, i32 0, i32 1
  store float %4, ptr %25, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 4 %10, i64 12, i1 false)
  store float %2, ptr %11, align 4
  %26 = load float, ptr %11, align 4
  %27 = fsub float 1.000000e+00, %26
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %13, ptr align 4 %7, i64 12, i1 false)
  %28 = getelementptr inbounds nuw { <2 x float>, float }, ptr %13, i32 0, i32 0
  %29 = load <2 x float>, ptr %28, align 4
  %30 = getelementptr inbounds nuw { <2 x float>, float }, ptr %13, i32 0, i32 1
  %31 = load float, ptr %30, align 4
  %32 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %29, float %31, float noundef %27)
  %33 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %12, i32 0, i32 0
  store { <2 x float>, float } %32, ptr %14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %33, ptr align 8 %14, i64 12, i1 false)
  %34 = load float, ptr %11, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %16, ptr align 4 %9, i64 12, i1 false)
  %35 = getelementptr inbounds nuw { <2 x float>, float }, ptr %16, i32 0, i32 0
  %36 = load <2 x float>, ptr %35, align 4
  %37 = getelementptr inbounds nuw { <2 x float>, float }, ptr %16, i32 0, i32 1
  %38 = load float, ptr %37, align 4
  %39 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %36, float %38, float noundef %34)
  %40 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %15, i32 0, i32 0
  store { <2 x float>, float } %39, ptr %17, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %40, ptr align 8 %17, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %18, ptr align 4 %12, i64 12, i1 false)
  %41 = getelementptr inbounds nuw { <2 x float>, float }, ptr %18, i32 0, i32 0
  %42 = load <2 x float>, ptr %41, align 4
  %43 = getelementptr inbounds nuw { <2 x float>, float }, ptr %18, i32 0, i32 1
  %44 = load float, ptr %43, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %19, ptr align 4 %15, i64 12, i1 false)
  %45 = getelementptr inbounds nuw { <2 x float>, float }, ptr %19, i32 0, i32 0
  %46 = load <2 x float>, ptr %45, align 4
  %47 = getelementptr inbounds nuw { <2 x float>, float }, ptr %19, i32 0, i32 1
  %48 = load float, ptr %47, align 4
  %49 = call { <2 x float>, float } @HMM_AddV3(<2 x float> %42, float %44, <2 x float> %46, float %48)
  %50 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %6, i32 0, i32 0
  store { <2 x float>, float } %49, ptr %20, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %50, ptr align 8 %20, i64 12, i1 false)
  %51 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %6, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %21, ptr align 4 %51, i64 12, i1 false)
  %52 = load { <2 x float>, float }, ptr %21, align 8
  ret { <2 x float>, float } %52
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_LerpV4(<2 x float> %0, <2 x float> %1, float noundef %2, <2 x float> %3, <2 x float> %4) #3 {
  %6 = alloca %union.HMM_Vec4, align 4
  %7 = alloca %union.HMM_Vec4, align 4
  %8 = alloca %union.HMM_Vec4, align 4
  %9 = alloca float, align 4
  %10 = alloca %union.HMM_Vec4, align 4
  %11 = alloca %union.HMM_Vec4, align 4
  %12 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 0
  store <2 x float> %0, ptr %12, align 4
  %13 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 1
  store <2 x float> %1, ptr %13, align 4
  %14 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 0
  store <2 x float> %3, ptr %14, align 4
  %15 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 1
  store <2 x float> %4, ptr %15, align 4
  store float %2, ptr %9, align 4
  %16 = load float, ptr %9, align 4
  %17 = fsub float 1.000000e+00, %16
  %18 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 0
  %19 = load <2 x float>, ptr %18, align 4
  %20 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 1
  %21 = load <2 x float>, ptr %20, align 4
  %22 = call { <2 x float>, <2 x float> } @HMM_MulV4F(<2 x float> %19, <2 x float> %21, float noundef %17)
  %23 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %10, i32 0, i32 0
  %24 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %23, i32 0, i32 0
  %25 = extractvalue { <2 x float>, <2 x float> } %22, 0
  store <2 x float> %25, ptr %24, align 4
  %26 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %23, i32 0, i32 1
  %27 = extractvalue { <2 x float>, <2 x float> } %22, 1
  store <2 x float> %27, ptr %26, align 4
  %28 = load float, ptr %9, align 4
  %29 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 0
  %30 = load <2 x float>, ptr %29, align 4
  %31 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 1
  %32 = load <2 x float>, ptr %31, align 4
  %33 = call { <2 x float>, <2 x float> } @HMM_MulV4F(<2 x float> %30, <2 x float> %32, float noundef %28)
  %34 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %11, i32 0, i32 0
  %35 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %34, i32 0, i32 0
  %36 = extractvalue { <2 x float>, <2 x float> } %33, 0
  store <2 x float> %36, ptr %35, align 4
  %37 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %34, i32 0, i32 1
  %38 = extractvalue { <2 x float>, <2 x float> } %33, 1
  store <2 x float> %38, ptr %37, align 4
  %39 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %10, i32 0, i32 0
  %40 = load <2 x float>, ptr %39, align 4
  %41 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %10, i32 0, i32 1
  %42 = load <2 x float>, ptr %41, align 4
  %43 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %11, i32 0, i32 0
  %44 = load <2 x float>, ptr %43, align 4
  %45 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %11, i32 0, i32 1
  %46 = load <2 x float>, ptr %45, align 4
  %47 = call { <2 x float>, <2 x float> } @HMM_AddV4(<2 x float> %40, <2 x float> %42, <2 x float> %44, <2 x float> %46)
  %48 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %6, i32 0, i32 0
  %49 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %48, i32 0, i32 0
  %50 = extractvalue { <2 x float>, <2 x float> } %47, 0
  store <2 x float> %50, ptr %49, align 4
  %51 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %48, i32 0, i32 1
  %52 = extractvalue { <2 x float>, <2 x float> } %47, 1
  store <2 x float> %52, ptr %51, align 4
  %53 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %6, i32 0, i32 0
  %54 = load { <2 x float>, <2 x float> }, ptr %53, align 4
  ret { <2 x float>, <2 x float> } %54
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_LinearCombineV4M4(<2 x float> %0, <2 x float> %1, ptr noundef byval(%union.HMM_Mat4) align 8 %2) #3 {
  %4 = alloca %union.HMM_Vec4, align 4
  %5 = alloca %union.HMM_Vec4, align 4
  %6 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 0
  store <2 x float> %0, ptr %6, align 4
  %7 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 1
  store <2 x float> %1, ptr %7, align 4
  %8 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 0
  %9 = load float, ptr %8, align 4
  %10 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 0
  %11 = getelementptr inbounds nuw %struct.anon.10, ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds nuw %struct.anon.11, ptr %11, i32 0, i32 0
  %13 = load float, ptr %12, align 8
  %14 = fmul float %9, %13
  %15 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 0
  %16 = getelementptr inbounds nuw %struct.anon.11, ptr %15, i32 0, i32 0
  store float %14, ptr %16, align 4
  %17 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 0
  %18 = load float, ptr %17, align 4
  %19 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 0
  %20 = getelementptr inbounds nuw %struct.anon.10, ptr %19, i32 0, i32 0
  %21 = getelementptr inbounds nuw %struct.anon.11, ptr %20, i32 0, i32 1
  %22 = load float, ptr %21, align 4
  %23 = fmul float %18, %22
  %24 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 0
  %25 = getelementptr inbounds nuw %struct.anon.11, ptr %24, i32 0, i32 1
  store float %23, ptr %25, align 4
  %26 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 0
  %27 = load float, ptr %26, align 4
  %28 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 0
  %29 = getelementptr inbounds nuw %struct.anon.10, ptr %28, i32 0, i32 0
  %30 = getelementptr inbounds nuw %struct.anon.11, ptr %29, i32 0, i32 2
  %31 = load float, ptr %30, align 8
  %32 = fmul float %27, %31
  %33 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 0
  %34 = getelementptr inbounds nuw %struct.anon.11, ptr %33, i32 0, i32 2
  store float %32, ptr %34, align 4
  %35 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 0
  %36 = load float, ptr %35, align 4
  %37 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 0
  %38 = getelementptr inbounds nuw %struct.anon.10, ptr %37, i32 0, i32 1
  %39 = load float, ptr %38, align 4
  %40 = fmul float %36, %39
  %41 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 1
  store float %40, ptr %41, align 4
  %42 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %43 = load float, ptr %42, align 4
  %44 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 1
  %45 = getelementptr inbounds nuw %struct.anon.10, ptr %44, i32 0, i32 0
  %46 = getelementptr inbounds nuw %struct.anon.11, ptr %45, i32 0, i32 0
  %47 = load float, ptr %46, align 8
  %48 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 0
  %49 = getelementptr inbounds nuw %struct.anon.11, ptr %48, i32 0, i32 0
  %50 = load float, ptr %49, align 4
  %51 = call float @llvm.fmuladd.f32(float %43, float %47, float %50)
  store float %51, ptr %49, align 4
  %52 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %53 = load float, ptr %52, align 4
  %54 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 1
  %55 = getelementptr inbounds nuw %struct.anon.10, ptr %54, i32 0, i32 0
  %56 = getelementptr inbounds nuw %struct.anon.11, ptr %55, i32 0, i32 1
  %57 = load float, ptr %56, align 4
  %58 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 0
  %59 = getelementptr inbounds nuw %struct.anon.11, ptr %58, i32 0, i32 1
  %60 = load float, ptr %59, align 4
  %61 = call float @llvm.fmuladd.f32(float %53, float %57, float %60)
  store float %61, ptr %59, align 4
  %62 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %63 = load float, ptr %62, align 4
  %64 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 1
  %65 = getelementptr inbounds nuw %struct.anon.10, ptr %64, i32 0, i32 0
  %66 = getelementptr inbounds nuw %struct.anon.11, ptr %65, i32 0, i32 2
  %67 = load float, ptr %66, align 8
  %68 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 0
  %69 = getelementptr inbounds nuw %struct.anon.11, ptr %68, i32 0, i32 2
  %70 = load float, ptr %69, align 4
  %71 = call float @llvm.fmuladd.f32(float %63, float %67, float %70)
  store float %71, ptr %69, align 4
  %72 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %73 = load float, ptr %72, align 4
  %74 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 1
  %75 = getelementptr inbounds nuw %struct.anon.10, ptr %74, i32 0, i32 1
  %76 = load float, ptr %75, align 4
  %77 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 1
  %78 = load float, ptr %77, align 4
  %79 = call float @llvm.fmuladd.f32(float %73, float %76, float %78)
  store float %79, ptr %77, align 4
  %80 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %81 = load float, ptr %80, align 4
  %82 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 2
  %83 = getelementptr inbounds nuw %struct.anon.10, ptr %82, i32 0, i32 0
  %84 = getelementptr inbounds nuw %struct.anon.11, ptr %83, i32 0, i32 0
  %85 = load float, ptr %84, align 8
  %86 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 0
  %87 = getelementptr inbounds nuw %struct.anon.11, ptr %86, i32 0, i32 0
  %88 = load float, ptr %87, align 4
  %89 = call float @llvm.fmuladd.f32(float %81, float %85, float %88)
  store float %89, ptr %87, align 4
  %90 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %91 = load float, ptr %90, align 4
  %92 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 2
  %93 = getelementptr inbounds nuw %struct.anon.10, ptr %92, i32 0, i32 0
  %94 = getelementptr inbounds nuw %struct.anon.11, ptr %93, i32 0, i32 1
  %95 = load float, ptr %94, align 4
  %96 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 0
  %97 = getelementptr inbounds nuw %struct.anon.11, ptr %96, i32 0, i32 1
  %98 = load float, ptr %97, align 4
  %99 = call float @llvm.fmuladd.f32(float %91, float %95, float %98)
  store float %99, ptr %97, align 4
  %100 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %101 = load float, ptr %100, align 4
  %102 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 2
  %103 = getelementptr inbounds nuw %struct.anon.10, ptr %102, i32 0, i32 0
  %104 = getelementptr inbounds nuw %struct.anon.11, ptr %103, i32 0, i32 2
  %105 = load float, ptr %104, align 8
  %106 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 0
  %107 = getelementptr inbounds nuw %struct.anon.11, ptr %106, i32 0, i32 2
  %108 = load float, ptr %107, align 4
  %109 = call float @llvm.fmuladd.f32(float %101, float %105, float %108)
  store float %109, ptr %107, align 4
  %110 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %111 = load float, ptr %110, align 4
  %112 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 2
  %113 = getelementptr inbounds nuw %struct.anon.10, ptr %112, i32 0, i32 1
  %114 = load float, ptr %113, align 4
  %115 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 1
  %116 = load float, ptr %115, align 4
  %117 = call float @llvm.fmuladd.f32(float %111, float %114, float %116)
  store float %117, ptr %115, align 4
  %118 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %119 = load float, ptr %118, align 4
  %120 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 3
  %121 = getelementptr inbounds nuw %struct.anon.10, ptr %120, i32 0, i32 0
  %122 = getelementptr inbounds nuw %struct.anon.11, ptr %121, i32 0, i32 0
  %123 = load float, ptr %122, align 8
  %124 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 0
  %125 = getelementptr inbounds nuw %struct.anon.11, ptr %124, i32 0, i32 0
  %126 = load float, ptr %125, align 4
  %127 = call float @llvm.fmuladd.f32(float %119, float %123, float %126)
  store float %127, ptr %125, align 4
  %128 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %129 = load float, ptr %128, align 4
  %130 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 3
  %131 = getelementptr inbounds nuw %struct.anon.10, ptr %130, i32 0, i32 0
  %132 = getelementptr inbounds nuw %struct.anon.11, ptr %131, i32 0, i32 1
  %133 = load float, ptr %132, align 4
  %134 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 0
  %135 = getelementptr inbounds nuw %struct.anon.11, ptr %134, i32 0, i32 1
  %136 = load float, ptr %135, align 4
  %137 = call float @llvm.fmuladd.f32(float %129, float %133, float %136)
  store float %137, ptr %135, align 4
  %138 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %139 = load float, ptr %138, align 4
  %140 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 3
  %141 = getelementptr inbounds nuw %struct.anon.10, ptr %140, i32 0, i32 0
  %142 = getelementptr inbounds nuw %struct.anon.11, ptr %141, i32 0, i32 2
  %143 = load float, ptr %142, align 8
  %144 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 0
  %145 = getelementptr inbounds nuw %struct.anon.11, ptr %144, i32 0, i32 2
  %146 = load float, ptr %145, align 4
  %147 = call float @llvm.fmuladd.f32(float %139, float %143, float %146)
  store float %147, ptr %145, align 4
  %148 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %149 = load float, ptr %148, align 4
  %150 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 3
  %151 = getelementptr inbounds nuw %struct.anon.10, ptr %150, i32 0, i32 1
  %152 = load float, ptr %151, align 4
  %153 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 1
  %154 = load float, ptr %153, align 4
  %155 = call float @llvm.fmuladd.f32(float %149, float %152, float %154)
  store float %155, ptr %153, align 4
  %156 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %4, i32 0, i32 0
  %157 = load { <2 x float>, <2 x float> }, ptr %156, align 4
  ret { <2 x float>, <2 x float> } %157
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_M2() #0 {
  %1 = alloca %union.HMM_Mat2, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds nuw %union.HMM_Mat2, ptr %1, i32 0, i32 0
  %3 = load { <2 x float>, <2 x float> }, ptr %2, align 4
  ret { <2 x float>, <2 x float> } %3
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_M2D(float noundef %0) #0 {
  %2 = alloca %union.HMM_Mat2, align 4
  %3 = alloca float, align 4
  store float %0, ptr %3, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 16, i1 false)
  %4 = load float, ptr %3, align 4
  %5 = getelementptr inbounds [2 x [2 x float]], ptr %2, i64 0, i64 0
  %6 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 0
  store float %4, ptr %6, align 4
  %7 = load float, ptr %3, align 4
  %8 = getelementptr inbounds [2 x [2 x float]], ptr %2, i64 0, i64 1
  %9 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  store float %7, ptr %9, align 4
  %10 = getelementptr inbounds nuw %union.HMM_Mat2, ptr %2, i32 0, i32 0
  %11 = load { <2 x float>, <2 x float> }, ptr %10, align 4
  ret { <2 x float>, <2 x float> } %11
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_TransposeM2(<2 x float> %0, <2 x float> %1) #3 {
  %3 = alloca %union.HMM_Mat2, align 4
  %4 = alloca %union.HMM_Mat2, align 4
  %5 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 0
  store <2 x float> %0, ptr %5, align 4
  %6 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 1
  store <2 x float> %1, ptr %6, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %4, i64 16, i1 false)
  %7 = getelementptr inbounds [2 x [2 x float]], ptr %4, i64 0, i64 1
  %8 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 0
  %9 = load float, ptr %8, align 4
  %10 = getelementptr inbounds [2 x [2 x float]], ptr %3, i64 0, i64 0
  %11 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  store float %9, ptr %11, align 4
  %12 = getelementptr inbounds [2 x [2 x float]], ptr %4, i64 0, i64 0
  %13 = getelementptr inbounds [2 x float], ptr %12, i64 0, i64 1
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds [2 x [2 x float]], ptr %3, i64 0, i64 1
  %16 = getelementptr inbounds [2 x float], ptr %15, i64 0, i64 0
  store float %14, ptr %16, align 4
  %17 = getelementptr inbounds nuw %union.HMM_Mat2, ptr %3, i32 0, i32 0
  %18 = load { <2 x float>, <2 x float> }, ptr %17, align 4
  ret { <2 x float>, <2 x float> } %18
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_AddM2(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) #3 {
  %5 = alloca %union.HMM_Mat2, align 4
  %6 = alloca %union.HMM_Mat2, align 4
  %7 = alloca %union.HMM_Mat2, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 0
  store <2 x float> %0, ptr %8, align 4
  %9 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 1
  store <2 x float> %1, ptr %9, align 4
  %10 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 0
  store <2 x float> %2, ptr %10, align 4
  %11 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 1
  store <2 x float> %3, ptr %11, align 4
  %12 = getelementptr inbounds [2 x [2 x float]], ptr %6, i64 0, i64 0
  %13 = getelementptr inbounds [2 x float], ptr %12, i64 0, i64 0
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds [2 x [2 x float]], ptr %7, i64 0, i64 0
  %16 = getelementptr inbounds [2 x float], ptr %15, i64 0, i64 0
  %17 = load float, ptr %16, align 4
  %18 = fadd float %14, %17
  %19 = getelementptr inbounds [2 x [2 x float]], ptr %5, i64 0, i64 0
  %20 = getelementptr inbounds [2 x float], ptr %19, i64 0, i64 0
  store float %18, ptr %20, align 4
  %21 = getelementptr inbounds [2 x [2 x float]], ptr %6, i64 0, i64 0
  %22 = getelementptr inbounds [2 x float], ptr %21, i64 0, i64 1
  %23 = load float, ptr %22, align 4
  %24 = getelementptr inbounds [2 x [2 x float]], ptr %7, i64 0, i64 0
  %25 = getelementptr inbounds [2 x float], ptr %24, i64 0, i64 1
  %26 = load float, ptr %25, align 4
  %27 = fadd float %23, %26
  %28 = getelementptr inbounds [2 x [2 x float]], ptr %5, i64 0, i64 0
  %29 = getelementptr inbounds [2 x float], ptr %28, i64 0, i64 1
  store float %27, ptr %29, align 4
  %30 = getelementptr inbounds [2 x [2 x float]], ptr %6, i64 0, i64 1
  %31 = getelementptr inbounds [2 x float], ptr %30, i64 0, i64 0
  %32 = load float, ptr %31, align 4
  %33 = getelementptr inbounds [2 x [2 x float]], ptr %7, i64 0, i64 1
  %34 = getelementptr inbounds [2 x float], ptr %33, i64 0, i64 0
  %35 = load float, ptr %34, align 4
  %36 = fadd float %32, %35
  %37 = getelementptr inbounds [2 x [2 x float]], ptr %5, i64 0, i64 1
  %38 = getelementptr inbounds [2 x float], ptr %37, i64 0, i64 0
  store float %36, ptr %38, align 4
  %39 = getelementptr inbounds [2 x [2 x float]], ptr %6, i64 0, i64 1
  %40 = getelementptr inbounds [2 x float], ptr %39, i64 0, i64 1
  %41 = load float, ptr %40, align 4
  %42 = getelementptr inbounds [2 x [2 x float]], ptr %7, i64 0, i64 1
  %43 = getelementptr inbounds [2 x float], ptr %42, i64 0, i64 1
  %44 = load float, ptr %43, align 4
  %45 = fadd float %41, %44
  %46 = getelementptr inbounds [2 x [2 x float]], ptr %5, i64 0, i64 1
  %47 = getelementptr inbounds [2 x float], ptr %46, i64 0, i64 1
  store float %45, ptr %47, align 4
  %48 = getelementptr inbounds nuw %union.HMM_Mat2, ptr %5, i32 0, i32 0
  %49 = load { <2 x float>, <2 x float> }, ptr %48, align 4
  ret { <2 x float>, <2 x float> } %49
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_SubM2(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) #3 {
  %5 = alloca %union.HMM_Mat2, align 4
  %6 = alloca %union.HMM_Mat2, align 4
  %7 = alloca %union.HMM_Mat2, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 0
  store <2 x float> %0, ptr %8, align 4
  %9 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 1
  store <2 x float> %1, ptr %9, align 4
  %10 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 0
  store <2 x float> %2, ptr %10, align 4
  %11 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 1
  store <2 x float> %3, ptr %11, align 4
  %12 = getelementptr inbounds [2 x [2 x float]], ptr %6, i64 0, i64 0
  %13 = getelementptr inbounds [2 x float], ptr %12, i64 0, i64 0
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds [2 x [2 x float]], ptr %7, i64 0, i64 0
  %16 = getelementptr inbounds [2 x float], ptr %15, i64 0, i64 0
  %17 = load float, ptr %16, align 4
  %18 = fsub float %14, %17
  %19 = getelementptr inbounds [2 x [2 x float]], ptr %5, i64 0, i64 0
  %20 = getelementptr inbounds [2 x float], ptr %19, i64 0, i64 0
  store float %18, ptr %20, align 4
  %21 = getelementptr inbounds [2 x [2 x float]], ptr %6, i64 0, i64 0
  %22 = getelementptr inbounds [2 x float], ptr %21, i64 0, i64 1
  %23 = load float, ptr %22, align 4
  %24 = getelementptr inbounds [2 x [2 x float]], ptr %7, i64 0, i64 0
  %25 = getelementptr inbounds [2 x float], ptr %24, i64 0, i64 1
  %26 = load float, ptr %25, align 4
  %27 = fsub float %23, %26
  %28 = getelementptr inbounds [2 x [2 x float]], ptr %5, i64 0, i64 0
  %29 = getelementptr inbounds [2 x float], ptr %28, i64 0, i64 1
  store float %27, ptr %29, align 4
  %30 = getelementptr inbounds [2 x [2 x float]], ptr %6, i64 0, i64 1
  %31 = getelementptr inbounds [2 x float], ptr %30, i64 0, i64 0
  %32 = load float, ptr %31, align 4
  %33 = getelementptr inbounds [2 x [2 x float]], ptr %7, i64 0, i64 1
  %34 = getelementptr inbounds [2 x float], ptr %33, i64 0, i64 0
  %35 = load float, ptr %34, align 4
  %36 = fsub float %32, %35
  %37 = getelementptr inbounds [2 x [2 x float]], ptr %5, i64 0, i64 1
  %38 = getelementptr inbounds [2 x float], ptr %37, i64 0, i64 0
  store float %36, ptr %38, align 4
  %39 = getelementptr inbounds [2 x [2 x float]], ptr %6, i64 0, i64 1
  %40 = getelementptr inbounds [2 x float], ptr %39, i64 0, i64 1
  %41 = load float, ptr %40, align 4
  %42 = getelementptr inbounds [2 x [2 x float]], ptr %7, i64 0, i64 1
  %43 = getelementptr inbounds [2 x float], ptr %42, i64 0, i64 1
  %44 = load float, ptr %43, align 4
  %45 = fsub float %41, %44
  %46 = getelementptr inbounds [2 x [2 x float]], ptr %5, i64 0, i64 1
  %47 = getelementptr inbounds [2 x float], ptr %46, i64 0, i64 1
  store float %45, ptr %47, align 4
  %48 = getelementptr inbounds nuw %union.HMM_Mat2, ptr %5, i32 0, i32 0
  %49 = load { <2 x float>, <2 x float> }, ptr %48, align 4
  ret { <2 x float>, <2 x float> } %49
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local <2 x float> @HMM_MulM2V2(<2 x float> %0, <2 x float> %1, <2 x float> %2) #3 {
  %4 = alloca %union.HMM_Vec2, align 4
  %5 = alloca %union.HMM_Mat2, align 4
  %6 = alloca %union.HMM_Vec2, align 4
  %7 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 0
  store <2 x float> %0, ptr %7, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 1
  store <2 x float> %1, ptr %8, align 4
  %9 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %6, i32 0, i32 0
  store <2 x float> %2, ptr %9, align 4
  %10 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 0
  %11 = load float, ptr %10, align 4
  %12 = getelementptr inbounds [2 x %union.HMM_Vec2], ptr %5, i64 0, i64 0
  %13 = getelementptr inbounds nuw %struct.anon, ptr %12, i32 0, i32 0
  %14 = load float, ptr %13, align 4
  %15 = fmul float %11, %14
  %16 = getelementptr inbounds nuw %struct.anon, ptr %4, i32 0, i32 0
  store float %15, ptr %16, align 4
  %17 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 0
  %18 = load float, ptr %17, align 4
  %19 = getelementptr inbounds [2 x %union.HMM_Vec2], ptr %5, i64 0, i64 0
  %20 = getelementptr inbounds nuw %struct.anon, ptr %19, i32 0, i32 1
  %21 = load float, ptr %20, align 4
  %22 = fmul float %18, %21
  %23 = getelementptr inbounds nuw %struct.anon, ptr %4, i32 0, i32 1
  store float %22, ptr %23, align 4
  %24 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %25 = load float, ptr %24, align 4
  %26 = getelementptr inbounds [2 x %union.HMM_Vec2], ptr %5, i64 0, i64 1
  %27 = getelementptr inbounds nuw %struct.anon, ptr %26, i32 0, i32 0
  %28 = load float, ptr %27, align 4
  %29 = getelementptr inbounds nuw %struct.anon, ptr %4, i32 0, i32 0
  %30 = load float, ptr %29, align 4
  %31 = call float @llvm.fmuladd.f32(float %25, float %28, float %30)
  store float %31, ptr %29, align 4
  %32 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %33 = load float, ptr %32, align 4
  %34 = getelementptr inbounds [2 x %union.HMM_Vec2], ptr %5, i64 0, i64 1
  %35 = getelementptr inbounds nuw %struct.anon, ptr %34, i32 0, i32 1
  %36 = load float, ptr %35, align 4
  %37 = getelementptr inbounds nuw %struct.anon, ptr %4, i32 0, i32 1
  %38 = load float, ptr %37, align 4
  %39 = call float @llvm.fmuladd.f32(float %33, float %36, float %38)
  store float %39, ptr %37, align 4
  %40 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %4, i32 0, i32 0
  %41 = load <2 x float>, ptr %40, align 4
  ret <2 x float> %41
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_MulM2(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) #3 {
  %5 = alloca %union.HMM_Mat2, align 4
  %6 = alloca %union.HMM_Mat2, align 4
  %7 = alloca %union.HMM_Mat2, align 4
  %8 = alloca %union.HMM_Vec2, align 4
  %9 = alloca %union.HMM_Vec2, align 4
  %10 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 0
  store <2 x float> %0, ptr %10, align 4
  %11 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 1
  store <2 x float> %1, ptr %11, align 4
  %12 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 0
  store <2 x float> %2, ptr %12, align 4
  %13 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 1
  store <2 x float> %3, ptr %13, align 4
  %14 = getelementptr inbounds [2 x %union.HMM_Vec2], ptr %5, i64 0, i64 0
  %15 = getelementptr inbounds [2 x %union.HMM_Vec2], ptr %7, i64 0, i64 0
  %16 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 0
  %17 = load <2 x float>, ptr %16, align 4
  %18 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 1
  %19 = load <2 x float>, ptr %18, align 4
  %20 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %15, i32 0, i32 0
  %21 = load <2 x float>, ptr %20, align 4
  %22 = call <2 x float> @HMM_MulM2V2(<2 x float> %17, <2 x float> %19, <2 x float> %21)
  %23 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %8, i32 0, i32 0
  store <2 x float> %22, ptr %23, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr align 4 %8, i64 8, i1 false)
  %24 = getelementptr inbounds [2 x %union.HMM_Vec2], ptr %5, i64 0, i64 1
  %25 = getelementptr inbounds [2 x %union.HMM_Vec2], ptr %7, i64 0, i64 1
  %26 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 0
  %27 = load <2 x float>, ptr %26, align 4
  %28 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 1
  %29 = load <2 x float>, ptr %28, align 4
  %30 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %25, i32 0, i32 0
  %31 = load <2 x float>, ptr %30, align 4
  %32 = call <2 x float> @HMM_MulM2V2(<2 x float> %27, <2 x float> %29, <2 x float> %31)
  %33 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %9, i32 0, i32 0
  store <2 x float> %32, ptr %33, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %24, ptr align 4 %9, i64 8, i1 false)
  %34 = getelementptr inbounds nuw %union.HMM_Mat2, ptr %5, i32 0, i32 0
  %35 = load { <2 x float>, <2 x float> }, ptr %34, align 4
  ret { <2 x float>, <2 x float> } %35
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_MulM2F(<2 x float> %0, <2 x float> %1, float noundef %2) #3 {
  %4 = alloca %union.HMM_Mat2, align 4
  %5 = alloca %union.HMM_Mat2, align 4
  %6 = alloca float, align 4
  %7 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 0
  store <2 x float> %0, ptr %7, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 1
  store <2 x float> %1, ptr %8, align 4
  store float %2, ptr %6, align 4
  %9 = getelementptr inbounds [2 x [2 x float]], ptr %5, i64 0, i64 0
  %10 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 0
  %11 = load float, ptr %10, align 4
  %12 = load float, ptr %6, align 4
  %13 = fmul float %11, %12
  %14 = getelementptr inbounds [2 x [2 x float]], ptr %4, i64 0, i64 0
  %15 = getelementptr inbounds [2 x float], ptr %14, i64 0, i64 0
  store float %13, ptr %15, align 4
  %16 = getelementptr inbounds [2 x [2 x float]], ptr %5, i64 0, i64 0
  %17 = getelementptr inbounds [2 x float], ptr %16, i64 0, i64 1
  %18 = load float, ptr %17, align 4
  %19 = load float, ptr %6, align 4
  %20 = fmul float %18, %19
  %21 = getelementptr inbounds [2 x [2 x float]], ptr %4, i64 0, i64 0
  %22 = getelementptr inbounds [2 x float], ptr %21, i64 0, i64 1
  store float %20, ptr %22, align 4
  %23 = getelementptr inbounds [2 x [2 x float]], ptr %5, i64 0, i64 1
  %24 = getelementptr inbounds [2 x float], ptr %23, i64 0, i64 0
  %25 = load float, ptr %24, align 4
  %26 = load float, ptr %6, align 4
  %27 = fmul float %25, %26
  %28 = getelementptr inbounds [2 x [2 x float]], ptr %4, i64 0, i64 1
  %29 = getelementptr inbounds [2 x float], ptr %28, i64 0, i64 0
  store float %27, ptr %29, align 4
  %30 = getelementptr inbounds [2 x [2 x float]], ptr %5, i64 0, i64 1
  %31 = getelementptr inbounds [2 x float], ptr %30, i64 0, i64 1
  %32 = load float, ptr %31, align 4
  %33 = load float, ptr %6, align 4
  %34 = fmul float %32, %33
  %35 = getelementptr inbounds [2 x [2 x float]], ptr %4, i64 0, i64 1
  %36 = getelementptr inbounds [2 x float], ptr %35, i64 0, i64 1
  store float %34, ptr %36, align 4
  %37 = getelementptr inbounds nuw %union.HMM_Mat2, ptr %4, i32 0, i32 0
  %38 = load { <2 x float>, <2 x float> }, ptr %37, align 4
  ret { <2 x float>, <2 x float> } %38
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_DivM2F(<2 x float> %0, <2 x float> %1, float noundef %2) #3 {
  %4 = alloca %union.HMM_Mat2, align 4
  %5 = alloca %union.HMM_Mat2, align 4
  %6 = alloca float, align 4
  %7 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 0
  store <2 x float> %0, ptr %7, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 1
  store <2 x float> %1, ptr %8, align 4
  store float %2, ptr %6, align 4
  %9 = getelementptr inbounds [2 x [2 x float]], ptr %5, i64 0, i64 0
  %10 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 0
  %11 = load float, ptr %10, align 4
  %12 = load float, ptr %6, align 4
  %13 = fdiv float %11, %12
  %14 = getelementptr inbounds [2 x [2 x float]], ptr %4, i64 0, i64 0
  %15 = getelementptr inbounds [2 x float], ptr %14, i64 0, i64 0
  store float %13, ptr %15, align 4
  %16 = getelementptr inbounds [2 x [2 x float]], ptr %5, i64 0, i64 0
  %17 = getelementptr inbounds [2 x float], ptr %16, i64 0, i64 1
  %18 = load float, ptr %17, align 4
  %19 = load float, ptr %6, align 4
  %20 = fdiv float %18, %19
  %21 = getelementptr inbounds [2 x [2 x float]], ptr %4, i64 0, i64 0
  %22 = getelementptr inbounds [2 x float], ptr %21, i64 0, i64 1
  store float %20, ptr %22, align 4
  %23 = getelementptr inbounds [2 x [2 x float]], ptr %5, i64 0, i64 1
  %24 = getelementptr inbounds [2 x float], ptr %23, i64 0, i64 0
  %25 = load float, ptr %24, align 4
  %26 = load float, ptr %6, align 4
  %27 = fdiv float %25, %26
  %28 = getelementptr inbounds [2 x [2 x float]], ptr %4, i64 0, i64 1
  %29 = getelementptr inbounds [2 x float], ptr %28, i64 0, i64 0
  store float %27, ptr %29, align 4
  %30 = getelementptr inbounds [2 x [2 x float]], ptr %5, i64 0, i64 1
  %31 = getelementptr inbounds [2 x float], ptr %30, i64 0, i64 1
  %32 = load float, ptr %31, align 4
  %33 = load float, ptr %6, align 4
  %34 = fdiv float %32, %33
  %35 = getelementptr inbounds [2 x [2 x float]], ptr %4, i64 0, i64 1
  %36 = getelementptr inbounds [2 x float], ptr %35, i64 0, i64 1
  store float %34, ptr %36, align 4
  %37 = getelementptr inbounds nuw %union.HMM_Mat2, ptr %4, i32 0, i32 0
  %38 = load { <2 x float>, <2 x float> }, ptr %37, align 4
  ret { <2 x float>, <2 x float> } %38
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_DeterminantM2(<2 x float> %0, <2 x float> %1) #3 {
  %3 = alloca %union.HMM_Mat2, align 4
  %4 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %3, i32 0, i32 0
  store <2 x float> %0, ptr %4, align 4
  %5 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %3, i32 0, i32 1
  store <2 x float> %1, ptr %5, align 4
  %6 = getelementptr inbounds [2 x [2 x float]], ptr %3, i64 0, i64 0
  %7 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 0
  %8 = load float, ptr %7, align 4
  %9 = getelementptr inbounds [2 x [2 x float]], ptr %3, i64 0, i64 1
  %10 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %11 = load float, ptr %10, align 4
  %12 = getelementptr inbounds [2 x [2 x float]], ptr %3, i64 0, i64 0
  %13 = getelementptr inbounds [2 x float], ptr %12, i64 0, i64 1
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds [2 x [2 x float]], ptr %3, i64 0, i64 1
  %16 = getelementptr inbounds [2 x float], ptr %15, i64 0, i64 0
  %17 = load float, ptr %16, align 4
  %18 = fmul float %14, %17
  %19 = fneg float %18
  %20 = call float @llvm.fmuladd.f32(float %8, float %11, float %19)
  ret float %20
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_InvGeneralM2(<2 x float> %0, <2 x float> %1) #3 {
  %3 = alloca %union.HMM_Mat2, align 4
  %4 = alloca %union.HMM_Mat2, align 4
  %5 = alloca float, align 4
  %6 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 0
  store <2 x float> %0, ptr %6, align 4
  %7 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 1
  store <2 x float> %1, ptr %7, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 0
  %9 = load <2 x float>, ptr %8, align 4
  %10 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 1
  %11 = load <2 x float>, ptr %10, align 4
  %12 = call float @HMM_DeterminantM2(<2 x float> %9, <2 x float> %11)
  %13 = fdiv float 1.000000e+00, %12
  store float %13, ptr %5, align 4
  %14 = load float, ptr %5, align 4
  %15 = getelementptr inbounds [2 x [2 x float]], ptr %4, i64 0, i64 1
  %16 = getelementptr inbounds [2 x float], ptr %15, i64 0, i64 1
  %17 = load float, ptr %16, align 4
  %18 = fmul float %14, %17
  %19 = getelementptr inbounds [2 x [2 x float]], ptr %3, i64 0, i64 0
  %20 = getelementptr inbounds [2 x float], ptr %19, i64 0, i64 0
  store float %18, ptr %20, align 4
  %21 = load float, ptr %5, align 4
  %22 = getelementptr inbounds [2 x [2 x float]], ptr %4, i64 0, i64 0
  %23 = getelementptr inbounds [2 x float], ptr %22, i64 0, i64 0
  %24 = load float, ptr %23, align 4
  %25 = fmul float %21, %24
  %26 = getelementptr inbounds [2 x [2 x float]], ptr %3, i64 0, i64 1
  %27 = getelementptr inbounds [2 x float], ptr %26, i64 0, i64 1
  store float %25, ptr %27, align 4
  %28 = load float, ptr %5, align 4
  %29 = getelementptr inbounds [2 x [2 x float]], ptr %4, i64 0, i64 0
  %30 = getelementptr inbounds [2 x float], ptr %29, i64 0, i64 1
  %31 = load float, ptr %30, align 4
  %32 = fneg float %31
  %33 = fmul float %28, %32
  %34 = getelementptr inbounds [2 x [2 x float]], ptr %3, i64 0, i64 0
  %35 = getelementptr inbounds [2 x float], ptr %34, i64 0, i64 1
  store float %33, ptr %35, align 4
  %36 = load float, ptr %5, align 4
  %37 = getelementptr inbounds [2 x [2 x float]], ptr %4, i64 0, i64 1
  %38 = getelementptr inbounds [2 x float], ptr %37, i64 0, i64 0
  %39 = load float, ptr %38, align 4
  %40 = fneg float %39
  %41 = fmul float %36, %40
  %42 = getelementptr inbounds [2 x [2 x float]], ptr %3, i64 0, i64 1
  %43 = getelementptr inbounds [2 x float], ptr %42, i64 0, i64 0
  store float %41, ptr %43, align 4
  %44 = getelementptr inbounds nuw %union.HMM_Mat2, ptr %3, i32 0, i32 0
  %45 = load { <2 x float>, <2 x float> }, ptr %44, align 4
  ret { <2 x float>, <2 x float> } %45
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_M3(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat3) align 4 %0) #0 {
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 36, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_M3D(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat3) align 4 %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  store float %1, ptr %3, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 36, i1 false)
  %4 = load float, ptr %3, align 4
  %5 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 0
  %6 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 0
  store float %4, ptr %6, align 4
  %7 = load float, ptr %3, align 4
  %8 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %9 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  store float %7, ptr %9, align 4
  %10 = load float, ptr %3, align 4
  %11 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %12 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  store float %10, ptr %12, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_TransposeM3(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat3) align 4 %0, ptr noundef byval(%union.HMM_Mat3) align 8 %1) #0 {
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 8 %1, i64 36, i1 false)
  %3 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %4 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 0
  %5 = load float, ptr %4, align 4
  %6 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 0
  %7 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float %5, ptr %7, align 4
  %8 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %9 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 0
  %10 = load float, ptr %9, align 8
  %11 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 0
  %12 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  store float %10, ptr %12, align 4
  %13 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 0
  %14 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %15 = load float, ptr %14, align 4
  %16 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %17 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 0
  store float %15, ptr %17, align 4
  %18 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %19 = getelementptr inbounds [3 x float], ptr %18, i64 0, i64 1
  %20 = load float, ptr %19, align 4
  %21 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %22 = getelementptr inbounds [3 x float], ptr %21, i64 0, i64 2
  store float %20, ptr %22, align 4
  %23 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %24 = getelementptr inbounds [3 x float], ptr %23, i64 0, i64 2
  %25 = load float, ptr %24, align 4
  %26 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %27 = getelementptr inbounds [3 x float], ptr %26, i64 0, i64 1
  store float %25, ptr %27, align 4
  %28 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 0
  %29 = getelementptr inbounds [3 x float], ptr %28, i64 0, i64 2
  %30 = load float, ptr %29, align 8
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %32 = getelementptr inbounds [3 x float], ptr %31, i64 0, i64 0
  store float %30, ptr %32, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_AddM3(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat3) align 4 %0, ptr noundef byval(%union.HMM_Mat3) align 8 %1, ptr noundef byval(%union.HMM_Mat3) align 8 %2) #0 {
  %4 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 0
  %5 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 0
  %6 = load float, ptr %5, align 8
  %7 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 0
  %8 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 0
  %9 = load float, ptr %8, align 8
  %10 = fadd float %6, %9
  %11 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 0
  %12 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 0
  store float %10, ptr %12, align 4
  %13 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 0
  %14 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %15 = load float, ptr %14, align 4
  %16 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 0
  %17 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 1
  %18 = load float, ptr %17, align 4
  %19 = fadd float %15, %18
  %20 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 0
  %21 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 1
  store float %19, ptr %21, align 4
  %22 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 0
  %23 = getelementptr inbounds [3 x float], ptr %22, i64 0, i64 2
  %24 = load float, ptr %23, align 8
  %25 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 0
  %26 = getelementptr inbounds [3 x float], ptr %25, i64 0, i64 2
  %27 = load float, ptr %26, align 8
  %28 = fadd float %24, %27
  %29 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 0
  %30 = getelementptr inbounds [3 x float], ptr %29, i64 0, i64 2
  store float %28, ptr %30, align 4
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %32 = getelementptr inbounds [3 x float], ptr %31, i64 0, i64 0
  %33 = load float, ptr %32, align 4
  %34 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1
  %35 = getelementptr inbounds [3 x float], ptr %34, i64 0, i64 0
  %36 = load float, ptr %35, align 4
  %37 = fadd float %33, %36
  %38 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %39 = getelementptr inbounds [3 x float], ptr %38, i64 0, i64 0
  store float %37, ptr %39, align 4
  %40 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %41 = getelementptr inbounds [3 x float], ptr %40, i64 0, i64 1
  %42 = load float, ptr %41, align 4
  %43 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1
  %44 = getelementptr inbounds [3 x float], ptr %43, i64 0, i64 1
  %45 = load float, ptr %44, align 4
  %46 = fadd float %42, %45
  %47 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %48 = getelementptr inbounds [3 x float], ptr %47, i64 0, i64 1
  store float %46, ptr %48, align 4
  %49 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %50 = getelementptr inbounds [3 x float], ptr %49, i64 0, i64 2
  %51 = load float, ptr %50, align 4
  %52 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1
  %53 = getelementptr inbounds [3 x float], ptr %52, i64 0, i64 2
  %54 = load float, ptr %53, align 4
  %55 = fadd float %51, %54
  %56 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %57 = getelementptr inbounds [3 x float], ptr %56, i64 0, i64 2
  store float %55, ptr %57, align 4
  %58 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %59 = getelementptr inbounds [3 x float], ptr %58, i64 0, i64 0
  %60 = load float, ptr %59, align 8
  %61 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 2
  %62 = getelementptr inbounds [3 x float], ptr %61, i64 0, i64 0
  %63 = load float, ptr %62, align 8
  %64 = fadd float %60, %63
  %65 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %66 = getelementptr inbounds [3 x float], ptr %65, i64 0, i64 0
  store float %64, ptr %66, align 4
  %67 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %68 = getelementptr inbounds [3 x float], ptr %67, i64 0, i64 1
  %69 = load float, ptr %68, align 4
  %70 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 2
  %71 = getelementptr inbounds [3 x float], ptr %70, i64 0, i64 1
  %72 = load float, ptr %71, align 4
  %73 = fadd float %69, %72
  %74 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %75 = getelementptr inbounds [3 x float], ptr %74, i64 0, i64 1
  store float %73, ptr %75, align 4
  %76 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %77 = getelementptr inbounds [3 x float], ptr %76, i64 0, i64 2
  %78 = load float, ptr %77, align 8
  %79 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 2
  %80 = getelementptr inbounds [3 x float], ptr %79, i64 0, i64 2
  %81 = load float, ptr %80, align 8
  %82 = fadd float %78, %81
  %83 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %84 = getelementptr inbounds [3 x float], ptr %83, i64 0, i64 2
  store float %82, ptr %84, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_SubM3(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat3) align 4 %0, ptr noundef byval(%union.HMM_Mat3) align 8 %1, ptr noundef byval(%union.HMM_Mat3) align 8 %2) #0 {
  %4 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 0
  %5 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 0
  %6 = load float, ptr %5, align 8
  %7 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 0
  %8 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 0
  %9 = load float, ptr %8, align 8
  %10 = fsub float %6, %9
  %11 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 0
  %12 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 0
  store float %10, ptr %12, align 4
  %13 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 0
  %14 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %15 = load float, ptr %14, align 4
  %16 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 0
  %17 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 1
  %18 = load float, ptr %17, align 4
  %19 = fsub float %15, %18
  %20 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 0
  %21 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 1
  store float %19, ptr %21, align 4
  %22 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 0
  %23 = getelementptr inbounds [3 x float], ptr %22, i64 0, i64 2
  %24 = load float, ptr %23, align 8
  %25 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 0
  %26 = getelementptr inbounds [3 x float], ptr %25, i64 0, i64 2
  %27 = load float, ptr %26, align 8
  %28 = fsub float %24, %27
  %29 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 0
  %30 = getelementptr inbounds [3 x float], ptr %29, i64 0, i64 2
  store float %28, ptr %30, align 4
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %32 = getelementptr inbounds [3 x float], ptr %31, i64 0, i64 0
  %33 = load float, ptr %32, align 4
  %34 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1
  %35 = getelementptr inbounds [3 x float], ptr %34, i64 0, i64 0
  %36 = load float, ptr %35, align 4
  %37 = fsub float %33, %36
  %38 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %39 = getelementptr inbounds [3 x float], ptr %38, i64 0, i64 0
  store float %37, ptr %39, align 4
  %40 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %41 = getelementptr inbounds [3 x float], ptr %40, i64 0, i64 1
  %42 = load float, ptr %41, align 4
  %43 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1
  %44 = getelementptr inbounds [3 x float], ptr %43, i64 0, i64 1
  %45 = load float, ptr %44, align 4
  %46 = fsub float %42, %45
  %47 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %48 = getelementptr inbounds [3 x float], ptr %47, i64 0, i64 1
  store float %46, ptr %48, align 4
  %49 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %50 = getelementptr inbounds [3 x float], ptr %49, i64 0, i64 2
  %51 = load float, ptr %50, align 4
  %52 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1
  %53 = getelementptr inbounds [3 x float], ptr %52, i64 0, i64 2
  %54 = load float, ptr %53, align 4
  %55 = fsub float %51, %54
  %56 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %57 = getelementptr inbounds [3 x float], ptr %56, i64 0, i64 2
  store float %55, ptr %57, align 4
  %58 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %59 = getelementptr inbounds [3 x float], ptr %58, i64 0, i64 0
  %60 = load float, ptr %59, align 8
  %61 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 2
  %62 = getelementptr inbounds [3 x float], ptr %61, i64 0, i64 0
  %63 = load float, ptr %62, align 8
  %64 = fsub float %60, %63
  %65 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %66 = getelementptr inbounds [3 x float], ptr %65, i64 0, i64 0
  store float %64, ptr %66, align 4
  %67 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %68 = getelementptr inbounds [3 x float], ptr %67, i64 0, i64 1
  %69 = load float, ptr %68, align 4
  %70 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 2
  %71 = getelementptr inbounds [3 x float], ptr %70, i64 0, i64 1
  %72 = load float, ptr %71, align 4
  %73 = fsub float %69, %72
  %74 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %75 = getelementptr inbounds [3 x float], ptr %74, i64 0, i64 1
  store float %73, ptr %75, align 4
  %76 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %77 = getelementptr inbounds [3 x float], ptr %76, i64 0, i64 2
  %78 = load float, ptr %77, align 8
  %79 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 2
  %80 = getelementptr inbounds [3 x float], ptr %79, i64 0, i64 2
  %81 = load float, ptr %80, align 8
  %82 = fsub float %78, %81
  %83 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %84 = getelementptr inbounds [3 x float], ptr %83, i64 0, i64 2
  store float %82, ptr %84, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, float } @HMM_MulM3V3(ptr noundef byval(%union.HMM_Mat3) align 8 %0, <2 x float> %1, float %2) #3 {
  %4 = alloca %union.HMM_Vec3, align 4
  %5 = alloca %union.HMM_Vec3, align 4
  %6 = alloca { <2 x float>, float }, align 4
  %7 = alloca { <2 x float>, float }, align 8
  %8 = getelementptr inbounds nuw { <2 x float>, float }, ptr %6, i32 0, i32 0
  store <2 x float> %1, ptr %8, align 4
  %9 = getelementptr inbounds nuw { <2 x float>, float }, ptr %6, i32 0, i32 1
  store float %2, ptr %9, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %6, i64 12, i1 false)
  %10 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 0
  %11 = load float, ptr %10, align 4
  %12 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %0, i64 0, i64 0
  %13 = getelementptr inbounds nuw %struct.anon.3, ptr %12, i32 0, i32 0
  %14 = load float, ptr %13, align 8
  %15 = fmul float %11, %14
  %16 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 0
  store float %15, ptr %16, align 4
  %17 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 0
  %18 = load float, ptr %17, align 4
  %19 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %0, i64 0, i64 0
  %20 = getelementptr inbounds nuw %struct.anon.3, ptr %19, i32 0, i32 1
  %21 = load float, ptr %20, align 4
  %22 = fmul float %18, %21
  %23 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 1
  store float %22, ptr %23, align 4
  %24 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 0
  %25 = load float, ptr %24, align 4
  %26 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %0, i64 0, i64 0
  %27 = getelementptr inbounds nuw %struct.anon.3, ptr %26, i32 0, i32 2
  %28 = load float, ptr %27, align 8
  %29 = fmul float %25, %28
  %30 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 2
  store float %29, ptr %30, align 4
  %31 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %32 = load float, ptr %31, align 4
  %33 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %0, i64 0, i64 1
  %34 = getelementptr inbounds nuw %struct.anon.3, ptr %33, i32 0, i32 0
  %35 = load float, ptr %34, align 4
  %36 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 0
  %37 = load float, ptr %36, align 4
  %38 = call float @llvm.fmuladd.f32(float %32, float %35, float %37)
  store float %38, ptr %36, align 4
  %39 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %40 = load float, ptr %39, align 4
  %41 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %0, i64 0, i64 1
  %42 = getelementptr inbounds nuw %struct.anon.3, ptr %41, i32 0, i32 1
  %43 = load float, ptr %42, align 4
  %44 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 1
  %45 = load float, ptr %44, align 4
  %46 = call float @llvm.fmuladd.f32(float %40, float %43, float %45)
  store float %46, ptr %44, align 4
  %47 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %48 = load float, ptr %47, align 4
  %49 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %0, i64 0, i64 1
  %50 = getelementptr inbounds nuw %struct.anon.3, ptr %49, i32 0, i32 2
  %51 = load float, ptr %50, align 4
  %52 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 2
  %53 = load float, ptr %52, align 4
  %54 = call float @llvm.fmuladd.f32(float %48, float %51, float %53)
  store float %54, ptr %52, align 4
  %55 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %56 = load float, ptr %55, align 4
  %57 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %0, i64 0, i64 2
  %58 = getelementptr inbounds nuw %struct.anon.3, ptr %57, i32 0, i32 0
  %59 = load float, ptr %58, align 8
  %60 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 0
  %61 = load float, ptr %60, align 4
  %62 = call float @llvm.fmuladd.f32(float %56, float %59, float %61)
  store float %62, ptr %60, align 4
  %63 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %64 = load float, ptr %63, align 4
  %65 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %0, i64 0, i64 2
  %66 = getelementptr inbounds nuw %struct.anon.3, ptr %65, i32 0, i32 1
  %67 = load float, ptr %66, align 4
  %68 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 1
  %69 = load float, ptr %68, align 4
  %70 = call float @llvm.fmuladd.f32(float %64, float %67, float %69)
  store float %70, ptr %68, align 4
  %71 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %72 = load float, ptr %71, align 4
  %73 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %0, i64 0, i64 2
  %74 = getelementptr inbounds nuw %struct.anon.3, ptr %73, i32 0, i32 2
  %75 = load float, ptr %74, align 8
  %76 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 2
  %77 = load float, ptr %76, align 4
  %78 = call float @llvm.fmuladd.f32(float %72, float %75, float %77)
  store float %78, ptr %76, align 4
  %79 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %4, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 4 %79, i64 12, i1 false)
  %80 = load { <2 x float>, float }, ptr %7, align 8
  ret { <2 x float>, float } %80
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_MulM3(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat3) align 4 %0, ptr noundef byval(%union.HMM_Mat3) align 8 %1, ptr noundef byval(%union.HMM_Mat3) align 8 %2) #3 {
  %4 = alloca %union.HMM_Vec3, align 4
  %5 = alloca { <2 x float>, float }, align 8
  %6 = alloca { <2 x float>, float }, align 8
  %7 = alloca %union.HMM_Vec3, align 4
  %8 = alloca { <2 x float>, float }, align 4
  %9 = alloca { <2 x float>, float }, align 8
  %10 = alloca %union.HMM_Vec3, align 4
  %11 = alloca { <2 x float>, float }, align 8
  %12 = alloca { <2 x float>, float }, align 8
  %13 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %0, i64 0, i64 0
  %14 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %2, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %14, i64 12, i1 false)
  %15 = getelementptr inbounds nuw { <2 x float>, float }, ptr %5, i32 0, i32 0
  %16 = load <2 x float>, ptr %15, align 8
  %17 = getelementptr inbounds nuw { <2 x float>, float }, ptr %5, i32 0, i32 1
  %18 = load float, ptr %17, align 8
  %19 = call { <2 x float>, float } @HMM_MulM3V3(ptr noundef byval(%union.HMM_Mat3) align 8 %1, <2 x float> %16, float %18)
  %20 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %4, i32 0, i32 0
  store { <2 x float>, float } %19, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %20, ptr align 8 %6, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %13, ptr align 4 %4, i64 12, i1 false)
  %21 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %0, i64 0, i64 1
  %22 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %2, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %22, i64 12, i1 false)
  %23 = getelementptr inbounds nuw { <2 x float>, float }, ptr %8, i32 0, i32 0
  %24 = load <2 x float>, ptr %23, align 4
  %25 = getelementptr inbounds nuw { <2 x float>, float }, ptr %8, i32 0, i32 1
  %26 = load float, ptr %25, align 4
  %27 = call { <2 x float>, float } @HMM_MulM3V3(ptr noundef byval(%union.HMM_Mat3) align 8 %1, <2 x float> %24, float %26)
  %28 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %7, i32 0, i32 0
  store { <2 x float>, float } %27, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %28, ptr align 8 %9, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %21, ptr align 4 %7, i64 12, i1 false)
  %29 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %0, i64 0, i64 2
  %30 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %2, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %30, i64 12, i1 false)
  %31 = getelementptr inbounds nuw { <2 x float>, float }, ptr %11, i32 0, i32 0
  %32 = load <2 x float>, ptr %31, align 8
  %33 = getelementptr inbounds nuw { <2 x float>, float }, ptr %11, i32 0, i32 1
  %34 = load float, ptr %33, align 8
  %35 = call { <2 x float>, float } @HMM_MulM3V3(ptr noundef byval(%union.HMM_Mat3) align 8 %1, <2 x float> %32, float %34)
  %36 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %10, i32 0, i32 0
  store { <2 x float>, float } %35, ptr %12, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %36, ptr align 8 %12, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %29, ptr align 4 %10, i64 12, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_MulM3F(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat3) align 4 %0, ptr noundef byval(%union.HMM_Mat3) align 8 %1, float noundef %2) #0 {
  %4 = alloca float, align 4
  store float %2, ptr %4, align 4
  %5 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 0
  %6 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 0
  %7 = load float, ptr %6, align 8
  %8 = load float, ptr %4, align 4
  %9 = fmul float %7, %8
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 0
  %11 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 0
  store float %9, ptr %11, align 4
  %12 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 0
  %13 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %14 = load float, ptr %13, align 4
  %15 = load float, ptr %4, align 4
  %16 = fmul float %14, %15
  %17 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 0
  %18 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 1
  store float %16, ptr %18, align 4
  %19 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 0
  %20 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 2
  %21 = load float, ptr %20, align 8
  %22 = load float, ptr %4, align 4
  %23 = fmul float %21, %22
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 0
  %25 = getelementptr inbounds [3 x float], ptr %24, i64 0, i64 2
  store float %23, ptr %25, align 4
  %26 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %27 = getelementptr inbounds [3 x float], ptr %26, i64 0, i64 0
  %28 = load float, ptr %27, align 4
  %29 = load float, ptr %4, align 4
  %30 = fmul float %28, %29
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %32 = getelementptr inbounds [3 x float], ptr %31, i64 0, i64 0
  store float %30, ptr %32, align 4
  %33 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %34 = getelementptr inbounds [3 x float], ptr %33, i64 0, i64 1
  %35 = load float, ptr %34, align 4
  %36 = load float, ptr %4, align 4
  %37 = fmul float %35, %36
  %38 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %39 = getelementptr inbounds [3 x float], ptr %38, i64 0, i64 1
  store float %37, ptr %39, align 4
  %40 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %41 = getelementptr inbounds [3 x float], ptr %40, i64 0, i64 2
  %42 = load float, ptr %41, align 4
  %43 = load float, ptr %4, align 4
  %44 = fmul float %42, %43
  %45 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %46 = getelementptr inbounds [3 x float], ptr %45, i64 0, i64 2
  store float %44, ptr %46, align 4
  %47 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %48 = getelementptr inbounds [3 x float], ptr %47, i64 0, i64 0
  %49 = load float, ptr %48, align 8
  %50 = load float, ptr %4, align 4
  %51 = fmul float %49, %50
  %52 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %53 = getelementptr inbounds [3 x float], ptr %52, i64 0, i64 0
  store float %51, ptr %53, align 4
  %54 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %55 = getelementptr inbounds [3 x float], ptr %54, i64 0, i64 1
  %56 = load float, ptr %55, align 4
  %57 = load float, ptr %4, align 4
  %58 = fmul float %56, %57
  %59 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %60 = getelementptr inbounds [3 x float], ptr %59, i64 0, i64 1
  store float %58, ptr %60, align 4
  %61 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %62 = getelementptr inbounds [3 x float], ptr %61, i64 0, i64 2
  %63 = load float, ptr %62, align 8
  %64 = load float, ptr %4, align 4
  %65 = fmul float %63, %64
  %66 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %67 = getelementptr inbounds [3 x float], ptr %66, i64 0, i64 2
  store float %65, ptr %67, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_DivM3F(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat3) align 4 %0, ptr noundef byval(%union.HMM_Mat3) align 8 %1, float noundef %2) #0 {
  %4 = alloca float, align 4
  store float %2, ptr %4, align 4
  %5 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 0
  %6 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 0
  %7 = load float, ptr %6, align 8
  %8 = load float, ptr %4, align 4
  %9 = fdiv float %7, %8
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 0
  %11 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 0
  store float %9, ptr %11, align 4
  %12 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 0
  %13 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %14 = load float, ptr %13, align 4
  %15 = load float, ptr %4, align 4
  %16 = fdiv float %14, %15
  %17 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 0
  %18 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 1
  store float %16, ptr %18, align 4
  %19 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 0
  %20 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 2
  %21 = load float, ptr %20, align 8
  %22 = load float, ptr %4, align 4
  %23 = fdiv float %21, %22
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 0
  %25 = getelementptr inbounds [3 x float], ptr %24, i64 0, i64 2
  store float %23, ptr %25, align 4
  %26 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %27 = getelementptr inbounds [3 x float], ptr %26, i64 0, i64 0
  %28 = load float, ptr %27, align 4
  %29 = load float, ptr %4, align 4
  %30 = fdiv float %28, %29
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %32 = getelementptr inbounds [3 x float], ptr %31, i64 0, i64 0
  store float %30, ptr %32, align 4
  %33 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %34 = getelementptr inbounds [3 x float], ptr %33, i64 0, i64 1
  %35 = load float, ptr %34, align 4
  %36 = load float, ptr %4, align 4
  %37 = fdiv float %35, %36
  %38 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %39 = getelementptr inbounds [3 x float], ptr %38, i64 0, i64 1
  store float %37, ptr %39, align 4
  %40 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %41 = getelementptr inbounds [3 x float], ptr %40, i64 0, i64 2
  %42 = load float, ptr %41, align 4
  %43 = load float, ptr %4, align 4
  %44 = fdiv float %42, %43
  %45 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %46 = getelementptr inbounds [3 x float], ptr %45, i64 0, i64 2
  store float %44, ptr %46, align 4
  %47 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %48 = getelementptr inbounds [3 x float], ptr %47, i64 0, i64 0
  %49 = load float, ptr %48, align 8
  %50 = load float, ptr %4, align 4
  %51 = fdiv float %49, %50
  %52 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %53 = getelementptr inbounds [3 x float], ptr %52, i64 0, i64 0
  store float %51, ptr %53, align 4
  %54 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %55 = getelementptr inbounds [3 x float], ptr %54, i64 0, i64 1
  %56 = load float, ptr %55, align 4
  %57 = load float, ptr %4, align 4
  %58 = fdiv float %56, %57
  %59 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %60 = getelementptr inbounds [3 x float], ptr %59, i64 0, i64 1
  store float %58, ptr %60, align 4
  %61 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %62 = getelementptr inbounds [3 x float], ptr %61, i64 0, i64 2
  %63 = load float, ptr %62, align 8
  %64 = load float, ptr %4, align 4
  %65 = fdiv float %63, %64
  %66 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %67 = getelementptr inbounds [3 x float], ptr %66, i64 0, i64 2
  store float %65, ptr %67, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_DeterminantM3(ptr noundef byval(%union.HMM_Mat3) align 8 %0) #3 {
  %2 = alloca %union.HMM_Mat3, align 4
  %3 = alloca %union.HMM_Vec3, align 4
  %4 = alloca { <2 x float>, float }, align 4
  %5 = alloca { <2 x float>, float }, align 8
  %6 = alloca { <2 x float>, float }, align 8
  %7 = alloca %union.HMM_Vec3, align 4
  %8 = alloca { <2 x float>, float }, align 8
  %9 = alloca { <2 x float>, float }, align 8
  %10 = alloca { <2 x float>, float }, align 8
  %11 = alloca %union.HMM_Vec3, align 4
  %12 = alloca { <2 x float>, float }, align 8
  %13 = alloca { <2 x float>, float }, align 4
  %14 = alloca { <2 x float>, float }, align 8
  %15 = alloca { <2 x float>, float }, align 4
  %16 = alloca { <2 x float>, float }, align 8
  %17 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %2, i64 0, i64 0
  %18 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %0, i64 0, i64 1
  %19 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %0, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 4 %18, i64 12, i1 false)
  %20 = getelementptr inbounds nuw { <2 x float>, float }, ptr %4, i32 0, i32 0
  %21 = load <2 x float>, ptr %20, align 4
  %22 = getelementptr inbounds nuw { <2 x float>, float }, ptr %4, i32 0, i32 1
  %23 = load float, ptr %22, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %19, i64 12, i1 false)
  %24 = getelementptr inbounds nuw { <2 x float>, float }, ptr %5, i32 0, i32 0
  %25 = load <2 x float>, ptr %24, align 8
  %26 = getelementptr inbounds nuw { <2 x float>, float }, ptr %5, i32 0, i32 1
  %27 = load float, ptr %26, align 8
  %28 = call { <2 x float>, float } @HMM_Cross(<2 x float> %21, float %23, <2 x float> %25, float %27)
  %29 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %3, i32 0, i32 0
  store { <2 x float>, float } %28, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %29, ptr align 8 %6, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %17, ptr align 4 %3, i64 12, i1 false)
  %30 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %2, i64 0, i64 1
  %31 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %0, i64 0, i64 2
  %32 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %0, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %31, i64 12, i1 false)
  %33 = getelementptr inbounds nuw { <2 x float>, float }, ptr %8, i32 0, i32 0
  %34 = load <2 x float>, ptr %33, align 8
  %35 = getelementptr inbounds nuw { <2 x float>, float }, ptr %8, i32 0, i32 1
  %36 = load float, ptr %35, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %32, i64 12, i1 false)
  %37 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 0
  %38 = load <2 x float>, ptr %37, align 8
  %39 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 1
  %40 = load float, ptr %39, align 8
  %41 = call { <2 x float>, float } @HMM_Cross(<2 x float> %34, float %36, <2 x float> %38, float %40)
  %42 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %7, i32 0, i32 0
  store { <2 x float>, float } %41, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %42, ptr align 8 %10, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %30, ptr align 4 %7, i64 12, i1 false)
  %43 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %2, i64 0, i64 2
  %44 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %0, i64 0, i64 0
  %45 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %0, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %44, i64 12, i1 false)
  %46 = getelementptr inbounds nuw { <2 x float>, float }, ptr %12, i32 0, i32 0
  %47 = load <2 x float>, ptr %46, align 8
  %48 = getelementptr inbounds nuw { <2 x float>, float }, ptr %12, i32 0, i32 1
  %49 = load float, ptr %48, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %13, ptr align 4 %45, i64 12, i1 false)
  %50 = getelementptr inbounds nuw { <2 x float>, float }, ptr %13, i32 0, i32 0
  %51 = load <2 x float>, ptr %50, align 4
  %52 = getelementptr inbounds nuw { <2 x float>, float }, ptr %13, i32 0, i32 1
  %53 = load float, ptr %52, align 4
  %54 = call { <2 x float>, float } @HMM_Cross(<2 x float> %47, float %49, <2 x float> %51, float %53)
  %55 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %11, i32 0, i32 0
  store { <2 x float>, float } %54, ptr %14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %55, ptr align 8 %14, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %43, ptr align 4 %11, i64 12, i1 false)
  %56 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %2, i64 0, i64 2
  %57 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %0, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %15, ptr align 4 %56, i64 12, i1 false)
  %58 = getelementptr inbounds nuw { <2 x float>, float }, ptr %15, i32 0, i32 0
  %59 = load <2 x float>, ptr %58, align 4
  %60 = getelementptr inbounds nuw { <2 x float>, float }, ptr %15, i32 0, i32 1
  %61 = load float, ptr %60, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 %57, i64 12, i1 false)
  %62 = getelementptr inbounds nuw { <2 x float>, float }, ptr %16, i32 0, i32 0
  %63 = load <2 x float>, ptr %62, align 8
  %64 = getelementptr inbounds nuw { <2 x float>, float }, ptr %16, i32 0, i32 1
  %65 = load float, ptr %64, align 8
  %66 = call float @HMM_DotV3(<2 x float> %59, float %61, <2 x float> %63, float %65)
  ret float %66
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_InvGeneralM3(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat3) align 4 %0, ptr noundef byval(%union.HMM_Mat3) align 8 %1) #3 {
  %3 = alloca %union.HMM_Mat3, align 4
  %4 = alloca %union.HMM_Vec3, align 4
  %5 = alloca { <2 x float>, float }, align 4
  %6 = alloca { <2 x float>, float }, align 8
  %7 = alloca { <2 x float>, float }, align 8
  %8 = alloca %union.HMM_Vec3, align 4
  %9 = alloca { <2 x float>, float }, align 8
  %10 = alloca { <2 x float>, float }, align 8
  %11 = alloca { <2 x float>, float }, align 8
  %12 = alloca %union.HMM_Vec3, align 4
  %13 = alloca { <2 x float>, float }, align 8
  %14 = alloca { <2 x float>, float }, align 4
  %15 = alloca { <2 x float>, float }, align 8
  %16 = alloca float, align 4
  %17 = alloca { <2 x float>, float }, align 4
  %18 = alloca { <2 x float>, float }, align 8
  %19 = alloca %union.HMM_Mat3, align 8
  %20 = alloca %union.HMM_Vec3, align 4
  %21 = alloca { <2 x float>, float }, align 4
  %22 = alloca { <2 x float>, float }, align 8
  %23 = alloca %union.HMM_Vec3, align 4
  %24 = alloca { <2 x float>, float }, align 4
  %25 = alloca { <2 x float>, float }, align 8
  %26 = alloca %union.HMM_Vec3, align 4
  %27 = alloca { <2 x float>, float }, align 4
  %28 = alloca { <2 x float>, float }, align 8
  %29 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %3, i64 0, i64 0
  %30 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %1, i64 0, i64 1
  %31 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %1, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %30, i64 12, i1 false)
  %32 = getelementptr inbounds nuw { <2 x float>, float }, ptr %5, i32 0, i32 0
  %33 = load <2 x float>, ptr %32, align 4
  %34 = getelementptr inbounds nuw { <2 x float>, float }, ptr %5, i32 0, i32 1
  %35 = load float, ptr %34, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %31, i64 12, i1 false)
  %36 = getelementptr inbounds nuw { <2 x float>, float }, ptr %6, i32 0, i32 0
  %37 = load <2 x float>, ptr %36, align 8
  %38 = getelementptr inbounds nuw { <2 x float>, float }, ptr %6, i32 0, i32 1
  %39 = load float, ptr %38, align 8
  %40 = call { <2 x float>, float } @HMM_Cross(<2 x float> %33, float %35, <2 x float> %37, float %39)
  %41 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %4, i32 0, i32 0
  store { <2 x float>, float } %40, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %41, ptr align 8 %7, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %29, ptr align 4 %4, i64 12, i1 false)
  %42 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %3, i64 0, i64 1
  %43 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %1, i64 0, i64 2
  %44 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %1, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %43, i64 12, i1 false)
  %45 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 0
  %46 = load <2 x float>, ptr %45, align 8
  %47 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 1
  %48 = load float, ptr %47, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %44, i64 12, i1 false)
  %49 = getelementptr inbounds nuw { <2 x float>, float }, ptr %10, i32 0, i32 0
  %50 = load <2 x float>, ptr %49, align 8
  %51 = getelementptr inbounds nuw { <2 x float>, float }, ptr %10, i32 0, i32 1
  %52 = load float, ptr %51, align 8
  %53 = call { <2 x float>, float } @HMM_Cross(<2 x float> %46, float %48, <2 x float> %50, float %52)
  %54 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %8, i32 0, i32 0
  store { <2 x float>, float } %53, ptr %11, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %54, ptr align 8 %11, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %42, ptr align 4 %8, i64 12, i1 false)
  %55 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %3, i64 0, i64 2
  %56 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %1, i64 0, i64 0
  %57 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %1, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 8 %56, i64 12, i1 false)
  %58 = getelementptr inbounds nuw { <2 x float>, float }, ptr %13, i32 0, i32 0
  %59 = load <2 x float>, ptr %58, align 8
  %60 = getelementptr inbounds nuw { <2 x float>, float }, ptr %13, i32 0, i32 1
  %61 = load float, ptr %60, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr align 4 %57, i64 12, i1 false)
  %62 = getelementptr inbounds nuw { <2 x float>, float }, ptr %14, i32 0, i32 0
  %63 = load <2 x float>, ptr %62, align 4
  %64 = getelementptr inbounds nuw { <2 x float>, float }, ptr %14, i32 0, i32 1
  %65 = load float, ptr %64, align 4
  %66 = call { <2 x float>, float } @HMM_Cross(<2 x float> %59, float %61, <2 x float> %63, float %65)
  %67 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %12, i32 0, i32 0
  store { <2 x float>, float } %66, ptr %15, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %67, ptr align 8 %15, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %55, ptr align 4 %12, i64 12, i1 false)
  %68 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %3, i64 0, i64 2
  %69 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %1, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %17, ptr align 4 %68, i64 12, i1 false)
  %70 = getelementptr inbounds nuw { <2 x float>, float }, ptr %17, i32 0, i32 0
  %71 = load <2 x float>, ptr %70, align 4
  %72 = getelementptr inbounds nuw { <2 x float>, float }, ptr %17, i32 0, i32 1
  %73 = load float, ptr %72, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %18, ptr align 8 %69, i64 12, i1 false)
  %74 = getelementptr inbounds nuw { <2 x float>, float }, ptr %18, i32 0, i32 0
  %75 = load <2 x float>, ptr %74, align 8
  %76 = getelementptr inbounds nuw { <2 x float>, float }, ptr %18, i32 0, i32 1
  %77 = load float, ptr %76, align 8
  %78 = call float @HMM_DotV3(<2 x float> %71, float %73, <2 x float> %75, float %77)
  %79 = fdiv float 1.000000e+00, %78
  store float %79, ptr %16, align 4
  %80 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %19, i64 0, i64 0
  %81 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %3, i64 0, i64 0
  %82 = load float, ptr %16, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %21, ptr align 4 %81, i64 12, i1 false)
  %83 = getelementptr inbounds nuw { <2 x float>, float }, ptr %21, i32 0, i32 0
  %84 = load <2 x float>, ptr %83, align 4
  %85 = getelementptr inbounds nuw { <2 x float>, float }, ptr %21, i32 0, i32 1
  %86 = load float, ptr %85, align 4
  %87 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %84, float %86, float noundef %82)
  %88 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %20, i32 0, i32 0
  store { <2 x float>, float } %87, ptr %22, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %88, ptr align 8 %22, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %80, ptr align 4 %20, i64 12, i1 false)
  %89 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %19, i64 0, i64 1
  %90 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %3, i64 0, i64 1
  %91 = load float, ptr %16, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %24, ptr align 4 %90, i64 12, i1 false)
  %92 = getelementptr inbounds nuw { <2 x float>, float }, ptr %24, i32 0, i32 0
  %93 = load <2 x float>, ptr %92, align 4
  %94 = getelementptr inbounds nuw { <2 x float>, float }, ptr %24, i32 0, i32 1
  %95 = load float, ptr %94, align 4
  %96 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %93, float %95, float noundef %91)
  %97 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %23, i32 0, i32 0
  store { <2 x float>, float } %96, ptr %25, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %97, ptr align 8 %25, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %89, ptr align 4 %23, i64 12, i1 false)
  %98 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %19, i64 0, i64 2
  %99 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %3, i64 0, i64 2
  %100 = load float, ptr %16, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %27, ptr align 4 %99, i64 12, i1 false)
  %101 = getelementptr inbounds nuw { <2 x float>, float }, ptr %27, i32 0, i32 0
  %102 = load <2 x float>, ptr %101, align 4
  %103 = getelementptr inbounds nuw { <2 x float>, float }, ptr %27, i32 0, i32 1
  %104 = load float, ptr %103, align 4
  %105 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %102, float %104, float noundef %100)
  %106 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %26, i32 0, i32 0
  store { <2 x float>, float } %105, ptr %28, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %106, ptr align 8 %28, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %98, ptr align 4 %26, i64 12, i1 false)
  call void @HMM_TransposeM3(ptr dead_on_unwind writable sret(%union.HMM_Mat3) align 4 %0, ptr noundef byval(%union.HMM_Mat3) align 8 %19)
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_M4(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0) #0 {
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_M4D(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  store float %1, ptr %3, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 64, i1 false)
  %4 = load float, ptr %3, align 4
  %5 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %6 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 0
  store float %4, ptr %6, align 4
  %7 = load float, ptr %3, align 4
  %8 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %9 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  store float %7, ptr %9, align 4
  %10 = load float, ptr %3, align 4
  %11 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %12 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 2
  store float %10, ptr %12, align 4
  %13 = load float, ptr %3, align 4
  %14 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %15 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 3
  store float %13, ptr %15, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_TransposeM4(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0, ptr noundef byval(%union.HMM_Mat4) align 8 %1) #0 {
  %3 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 0
  %4 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 0
  %5 = load float, ptr %4, align 8
  %6 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %7 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 0
  store float %5, ptr %7, align 4
  %8 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 1
  %9 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 0
  %10 = load float, ptr %9, align 8
  %11 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %12 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 1
  store float %10, ptr %12, align 4
  %13 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 2
  %14 = getelementptr inbounds [4 x float], ptr %13, i64 0, i64 0
  %15 = load float, ptr %14, align 8
  %16 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %17 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 2
  store float %15, ptr %17, align 4
  %18 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 3
  %19 = getelementptr inbounds [4 x float], ptr %18, i64 0, i64 0
  %20 = load float, ptr %19, align 8
  %21 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %22 = getelementptr inbounds [4 x float], ptr %21, i64 0, i64 3
  store float %20, ptr %22, align 4
  %23 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 0
  %24 = getelementptr inbounds [4 x float], ptr %23, i64 0, i64 1
  %25 = load float, ptr %24, align 4
  %26 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %27 = getelementptr inbounds [4 x float], ptr %26, i64 0, i64 0
  store float %25, ptr %27, align 4
  %28 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 1
  %29 = getelementptr inbounds [4 x float], ptr %28, i64 0, i64 1
  %30 = load float, ptr %29, align 4
  %31 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %32 = getelementptr inbounds [4 x float], ptr %31, i64 0, i64 1
  store float %30, ptr %32, align 4
  %33 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 2
  %34 = getelementptr inbounds [4 x float], ptr %33, i64 0, i64 1
  %35 = load float, ptr %34, align 4
  %36 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %37 = getelementptr inbounds [4 x float], ptr %36, i64 0, i64 2
  store float %35, ptr %37, align 4
  %38 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 3
  %39 = getelementptr inbounds [4 x float], ptr %38, i64 0, i64 1
  %40 = load float, ptr %39, align 4
  %41 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %42 = getelementptr inbounds [4 x float], ptr %41, i64 0, i64 3
  store float %40, ptr %42, align 4
  %43 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 0
  %44 = getelementptr inbounds [4 x float], ptr %43, i64 0, i64 2
  %45 = load float, ptr %44, align 8
  %46 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %47 = getelementptr inbounds [4 x float], ptr %46, i64 0, i64 0
  store float %45, ptr %47, align 4
  %48 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 1
  %49 = getelementptr inbounds [4 x float], ptr %48, i64 0, i64 2
  %50 = load float, ptr %49, align 8
  %51 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %52 = getelementptr inbounds [4 x float], ptr %51, i64 0, i64 1
  store float %50, ptr %52, align 4
  %53 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 2
  %54 = getelementptr inbounds [4 x float], ptr %53, i64 0, i64 2
  %55 = load float, ptr %54, align 8
  %56 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %57 = getelementptr inbounds [4 x float], ptr %56, i64 0, i64 2
  store float %55, ptr %57, align 4
  %58 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 3
  %59 = getelementptr inbounds [4 x float], ptr %58, i64 0, i64 2
  %60 = load float, ptr %59, align 8
  %61 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %62 = getelementptr inbounds [4 x float], ptr %61, i64 0, i64 3
  store float %60, ptr %62, align 4
  %63 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 0
  %64 = getelementptr inbounds [4 x float], ptr %63, i64 0, i64 3
  %65 = load float, ptr %64, align 4
  %66 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %67 = getelementptr inbounds [4 x float], ptr %66, i64 0, i64 0
  store float %65, ptr %67, align 4
  %68 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 1
  %69 = getelementptr inbounds [4 x float], ptr %68, i64 0, i64 3
  %70 = load float, ptr %69, align 4
  %71 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %72 = getelementptr inbounds [4 x float], ptr %71, i64 0, i64 1
  store float %70, ptr %72, align 4
  %73 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 2
  %74 = getelementptr inbounds [4 x float], ptr %73, i64 0, i64 3
  %75 = load float, ptr %74, align 4
  %76 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %77 = getelementptr inbounds [4 x float], ptr %76, i64 0, i64 2
  store float %75, ptr %77, align 4
  %78 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 3
  %79 = getelementptr inbounds [4 x float], ptr %78, i64 0, i64 3
  %80 = load float, ptr %79, align 4
  %81 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %82 = getelementptr inbounds [4 x float], ptr %81, i64 0, i64 3
  store float %80, ptr %82, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_AddM4(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0, ptr noundef byval(%union.HMM_Mat4) align 8 %1, ptr noundef byval(%union.HMM_Mat4) align 8 %2) #3 {
  %4 = alloca %union.HMM_Vec4, align 4
  %5 = alloca %union.HMM_Vec4, align 4
  %6 = alloca %union.HMM_Vec4, align 4
  %7 = alloca %union.HMM_Vec4, align 4
  %8 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 0
  %9 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 0
  %10 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 0
  %11 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %9, i32 0, i32 0
  %12 = load <2 x float>, ptr %11, align 8
  %13 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %9, i32 0, i32 1
  %14 = load <2 x float>, ptr %13, align 8
  %15 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %10, i32 0, i32 0
  %16 = load <2 x float>, ptr %15, align 8
  %17 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %10, i32 0, i32 1
  %18 = load <2 x float>, ptr %17, align 8
  %19 = call { <2 x float>, <2 x float> } @HMM_AddV4(<2 x float> %12, <2 x float> %14, <2 x float> %16, <2 x float> %18)
  %20 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %4, i32 0, i32 0
  %21 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %20, i32 0, i32 0
  %22 = extractvalue { <2 x float>, <2 x float> } %19, 0
  store <2 x float> %22, ptr %21, align 4
  %23 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %20, i32 0, i32 1
  %24 = extractvalue { <2 x float>, <2 x float> } %19, 1
  store <2 x float> %24, ptr %23, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %4, i64 16, i1 false)
  %25 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 1
  %26 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 1
  %27 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 1
  %28 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %26, i32 0, i32 0
  %29 = load <2 x float>, ptr %28, align 8
  %30 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %26, i32 0, i32 1
  %31 = load <2 x float>, ptr %30, align 8
  %32 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %27, i32 0, i32 0
  %33 = load <2 x float>, ptr %32, align 8
  %34 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %27, i32 0, i32 1
  %35 = load <2 x float>, ptr %34, align 8
  %36 = call { <2 x float>, <2 x float> } @HMM_AddV4(<2 x float> %29, <2 x float> %31, <2 x float> %33, <2 x float> %35)
  %37 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %5, i32 0, i32 0
  %38 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %37, i32 0, i32 0
  %39 = extractvalue { <2 x float>, <2 x float> } %36, 0
  store <2 x float> %39, ptr %38, align 4
  %40 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %37, i32 0, i32 1
  %41 = extractvalue { <2 x float>, <2 x float> } %36, 1
  store <2 x float> %41, ptr %40, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %25, ptr align 4 %5, i64 16, i1 false)
  %42 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 2
  %43 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 2
  %44 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 2
  %45 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %43, i32 0, i32 0
  %46 = load <2 x float>, ptr %45, align 8
  %47 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %43, i32 0, i32 1
  %48 = load <2 x float>, ptr %47, align 8
  %49 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %44, i32 0, i32 0
  %50 = load <2 x float>, ptr %49, align 8
  %51 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %44, i32 0, i32 1
  %52 = load <2 x float>, ptr %51, align 8
  %53 = call { <2 x float>, <2 x float> } @HMM_AddV4(<2 x float> %46, <2 x float> %48, <2 x float> %50, <2 x float> %52)
  %54 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %6, i32 0, i32 0
  %55 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %54, i32 0, i32 0
  %56 = extractvalue { <2 x float>, <2 x float> } %53, 0
  store <2 x float> %56, ptr %55, align 4
  %57 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %54, i32 0, i32 1
  %58 = extractvalue { <2 x float>, <2 x float> } %53, 1
  store <2 x float> %58, ptr %57, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %42, ptr align 4 %6, i64 16, i1 false)
  %59 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 3
  %60 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 3
  %61 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 3
  %62 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %60, i32 0, i32 0
  %63 = load <2 x float>, ptr %62, align 8
  %64 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %60, i32 0, i32 1
  %65 = load <2 x float>, ptr %64, align 8
  %66 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %61, i32 0, i32 0
  %67 = load <2 x float>, ptr %66, align 8
  %68 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %61, i32 0, i32 1
  %69 = load <2 x float>, ptr %68, align 8
  %70 = call { <2 x float>, <2 x float> } @HMM_AddV4(<2 x float> %63, <2 x float> %65, <2 x float> %67, <2 x float> %69)
  %71 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %7, i32 0, i32 0
  %72 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %71, i32 0, i32 0
  %73 = extractvalue { <2 x float>, <2 x float> } %70, 0
  store <2 x float> %73, ptr %72, align 4
  %74 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %71, i32 0, i32 1
  %75 = extractvalue { <2 x float>, <2 x float> } %70, 1
  store <2 x float> %75, ptr %74, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %59, ptr align 4 %7, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_SubM4(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0, ptr noundef byval(%union.HMM_Mat4) align 8 %1, ptr noundef byval(%union.HMM_Mat4) align 8 %2) #3 {
  %4 = alloca %union.HMM_Vec4, align 4
  %5 = alloca %union.HMM_Vec4, align 4
  %6 = alloca %union.HMM_Vec4, align 4
  %7 = alloca %union.HMM_Vec4, align 4
  %8 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 0
  %9 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 0
  %10 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 0
  %11 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %9, i32 0, i32 0
  %12 = load <2 x float>, ptr %11, align 8
  %13 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %9, i32 0, i32 1
  %14 = load <2 x float>, ptr %13, align 8
  %15 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %10, i32 0, i32 0
  %16 = load <2 x float>, ptr %15, align 8
  %17 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %10, i32 0, i32 1
  %18 = load <2 x float>, ptr %17, align 8
  %19 = call { <2 x float>, <2 x float> } @HMM_SubV4(<2 x float> %12, <2 x float> %14, <2 x float> %16, <2 x float> %18)
  %20 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %4, i32 0, i32 0
  %21 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %20, i32 0, i32 0
  %22 = extractvalue { <2 x float>, <2 x float> } %19, 0
  store <2 x float> %22, ptr %21, align 4
  %23 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %20, i32 0, i32 1
  %24 = extractvalue { <2 x float>, <2 x float> } %19, 1
  store <2 x float> %24, ptr %23, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %4, i64 16, i1 false)
  %25 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 1
  %26 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 1
  %27 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 1
  %28 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %26, i32 0, i32 0
  %29 = load <2 x float>, ptr %28, align 8
  %30 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %26, i32 0, i32 1
  %31 = load <2 x float>, ptr %30, align 8
  %32 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %27, i32 0, i32 0
  %33 = load <2 x float>, ptr %32, align 8
  %34 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %27, i32 0, i32 1
  %35 = load <2 x float>, ptr %34, align 8
  %36 = call { <2 x float>, <2 x float> } @HMM_SubV4(<2 x float> %29, <2 x float> %31, <2 x float> %33, <2 x float> %35)
  %37 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %5, i32 0, i32 0
  %38 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %37, i32 0, i32 0
  %39 = extractvalue { <2 x float>, <2 x float> } %36, 0
  store <2 x float> %39, ptr %38, align 4
  %40 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %37, i32 0, i32 1
  %41 = extractvalue { <2 x float>, <2 x float> } %36, 1
  store <2 x float> %41, ptr %40, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %25, ptr align 4 %5, i64 16, i1 false)
  %42 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 2
  %43 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 2
  %44 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 2
  %45 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %43, i32 0, i32 0
  %46 = load <2 x float>, ptr %45, align 8
  %47 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %43, i32 0, i32 1
  %48 = load <2 x float>, ptr %47, align 8
  %49 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %44, i32 0, i32 0
  %50 = load <2 x float>, ptr %49, align 8
  %51 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %44, i32 0, i32 1
  %52 = load <2 x float>, ptr %51, align 8
  %53 = call { <2 x float>, <2 x float> } @HMM_SubV4(<2 x float> %46, <2 x float> %48, <2 x float> %50, <2 x float> %52)
  %54 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %6, i32 0, i32 0
  %55 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %54, i32 0, i32 0
  %56 = extractvalue { <2 x float>, <2 x float> } %53, 0
  store <2 x float> %56, ptr %55, align 4
  %57 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %54, i32 0, i32 1
  %58 = extractvalue { <2 x float>, <2 x float> } %53, 1
  store <2 x float> %58, ptr %57, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %42, ptr align 4 %6, i64 16, i1 false)
  %59 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 3
  %60 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 3
  %61 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 3
  %62 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %60, i32 0, i32 0
  %63 = load <2 x float>, ptr %62, align 8
  %64 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %60, i32 0, i32 1
  %65 = load <2 x float>, ptr %64, align 8
  %66 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %61, i32 0, i32 0
  %67 = load <2 x float>, ptr %66, align 8
  %68 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %61, i32 0, i32 1
  %69 = load <2 x float>, ptr %68, align 8
  %70 = call { <2 x float>, <2 x float> } @HMM_SubV4(<2 x float> %63, <2 x float> %65, <2 x float> %67, <2 x float> %69)
  %71 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %7, i32 0, i32 0
  %72 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %71, i32 0, i32 0
  %73 = extractvalue { <2 x float>, <2 x float> } %70, 0
  store <2 x float> %73, ptr %72, align 4
  %74 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %71, i32 0, i32 1
  %75 = extractvalue { <2 x float>, <2 x float> } %70, 1
  store <2 x float> %75, ptr %74, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %59, ptr align 4 %7, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_MulM4(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0, ptr noundef byval(%union.HMM_Mat4) align 8 %1, ptr noundef byval(%union.HMM_Mat4) align 8 %2) #3 {
  %4 = alloca %union.HMM_Vec4, align 4
  %5 = alloca %union.HMM_Vec4, align 4
  %6 = alloca %union.HMM_Vec4, align 4
  %7 = alloca %union.HMM_Vec4, align 4
  %8 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 0
  %9 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 0
  %10 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %9, i32 0, i32 0
  %11 = load <2 x float>, ptr %10, align 8
  %12 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %9, i32 0, i32 1
  %13 = load <2 x float>, ptr %12, align 8
  %14 = call { <2 x float>, <2 x float> } @HMM_LinearCombineV4M4(<2 x float> %11, <2 x float> %13, ptr noundef byval(%union.HMM_Mat4) align 8 %1)
  %15 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %4, i32 0, i32 0
  %16 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %15, i32 0, i32 0
  %17 = extractvalue { <2 x float>, <2 x float> } %14, 0
  store <2 x float> %17, ptr %16, align 4
  %18 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %15, i32 0, i32 1
  %19 = extractvalue { <2 x float>, <2 x float> } %14, 1
  store <2 x float> %19, ptr %18, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %4, i64 16, i1 false)
  %20 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 1
  %21 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 1
  %22 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %21, i32 0, i32 0
  %23 = load <2 x float>, ptr %22, align 8
  %24 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %21, i32 0, i32 1
  %25 = load <2 x float>, ptr %24, align 8
  %26 = call { <2 x float>, <2 x float> } @HMM_LinearCombineV4M4(<2 x float> %23, <2 x float> %25, ptr noundef byval(%union.HMM_Mat4) align 8 %1)
  %27 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %5, i32 0, i32 0
  %28 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %27, i32 0, i32 0
  %29 = extractvalue { <2 x float>, <2 x float> } %26, 0
  store <2 x float> %29, ptr %28, align 4
  %30 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %27, i32 0, i32 1
  %31 = extractvalue { <2 x float>, <2 x float> } %26, 1
  store <2 x float> %31, ptr %30, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %20, ptr align 4 %5, i64 16, i1 false)
  %32 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 2
  %33 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 2
  %34 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %33, i32 0, i32 0
  %35 = load <2 x float>, ptr %34, align 8
  %36 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %33, i32 0, i32 1
  %37 = load <2 x float>, ptr %36, align 8
  %38 = call { <2 x float>, <2 x float> } @HMM_LinearCombineV4M4(<2 x float> %35, <2 x float> %37, ptr noundef byval(%union.HMM_Mat4) align 8 %1)
  %39 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %6, i32 0, i32 0
  %40 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %39, i32 0, i32 0
  %41 = extractvalue { <2 x float>, <2 x float> } %38, 0
  store <2 x float> %41, ptr %40, align 4
  %42 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %39, i32 0, i32 1
  %43 = extractvalue { <2 x float>, <2 x float> } %38, 1
  store <2 x float> %43, ptr %42, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %32, ptr align 4 %6, i64 16, i1 false)
  %44 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 3
  %45 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %2, i64 0, i64 3
  %46 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %45, i32 0, i32 0
  %47 = load <2 x float>, ptr %46, align 8
  %48 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %45, i32 0, i32 1
  %49 = load <2 x float>, ptr %48, align 8
  %50 = call { <2 x float>, <2 x float> } @HMM_LinearCombineV4M4(<2 x float> %47, <2 x float> %49, ptr noundef byval(%union.HMM_Mat4) align 8 %1)
  %51 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %7, i32 0, i32 0
  %52 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %51, i32 0, i32 0
  %53 = extractvalue { <2 x float>, <2 x float> } %50, 0
  store <2 x float> %53, ptr %52, align 4
  %54 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %51, i32 0, i32 1
  %55 = extractvalue { <2 x float>, <2 x float> } %50, 1
  store <2 x float> %55, ptr %54, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %44, ptr align 4 %7, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_MulM4F(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0, ptr noundef byval(%union.HMM_Mat4) align 8 %1, float noundef %2) #0 {
  %4 = alloca float, align 4
  store float %2, ptr %4, align 4
  %5 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 0
  %6 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 0
  %7 = load float, ptr %6, align 8
  %8 = load float, ptr %4, align 4
  %9 = fmul float %7, %8
  %10 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %11 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 0
  store float %9, ptr %11, align 4
  %12 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 0
  %13 = getelementptr inbounds [4 x float], ptr %12, i64 0, i64 1
  %14 = load float, ptr %13, align 4
  %15 = load float, ptr %4, align 4
  %16 = fmul float %14, %15
  %17 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %18 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 1
  store float %16, ptr %18, align 4
  %19 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 0
  %20 = getelementptr inbounds [4 x float], ptr %19, i64 0, i64 2
  %21 = load float, ptr %20, align 8
  %22 = load float, ptr %4, align 4
  %23 = fmul float %21, %22
  %24 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %25 = getelementptr inbounds [4 x float], ptr %24, i64 0, i64 2
  store float %23, ptr %25, align 4
  %26 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 0
  %27 = getelementptr inbounds [4 x float], ptr %26, i64 0, i64 3
  %28 = load float, ptr %27, align 4
  %29 = load float, ptr %4, align 4
  %30 = fmul float %28, %29
  %31 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %32 = getelementptr inbounds [4 x float], ptr %31, i64 0, i64 3
  store float %30, ptr %32, align 4
  %33 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 1
  %34 = getelementptr inbounds [4 x float], ptr %33, i64 0, i64 0
  %35 = load float, ptr %34, align 8
  %36 = load float, ptr %4, align 4
  %37 = fmul float %35, %36
  %38 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %39 = getelementptr inbounds [4 x float], ptr %38, i64 0, i64 0
  store float %37, ptr %39, align 4
  %40 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 1
  %41 = getelementptr inbounds [4 x float], ptr %40, i64 0, i64 1
  %42 = load float, ptr %41, align 4
  %43 = load float, ptr %4, align 4
  %44 = fmul float %42, %43
  %45 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %46 = getelementptr inbounds [4 x float], ptr %45, i64 0, i64 1
  store float %44, ptr %46, align 4
  %47 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 1
  %48 = getelementptr inbounds [4 x float], ptr %47, i64 0, i64 2
  %49 = load float, ptr %48, align 8
  %50 = load float, ptr %4, align 4
  %51 = fmul float %49, %50
  %52 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %53 = getelementptr inbounds [4 x float], ptr %52, i64 0, i64 2
  store float %51, ptr %53, align 4
  %54 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 1
  %55 = getelementptr inbounds [4 x float], ptr %54, i64 0, i64 3
  %56 = load float, ptr %55, align 4
  %57 = load float, ptr %4, align 4
  %58 = fmul float %56, %57
  %59 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %60 = getelementptr inbounds [4 x float], ptr %59, i64 0, i64 3
  store float %58, ptr %60, align 4
  %61 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 2
  %62 = getelementptr inbounds [4 x float], ptr %61, i64 0, i64 0
  %63 = load float, ptr %62, align 8
  %64 = load float, ptr %4, align 4
  %65 = fmul float %63, %64
  %66 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %67 = getelementptr inbounds [4 x float], ptr %66, i64 0, i64 0
  store float %65, ptr %67, align 4
  %68 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 2
  %69 = getelementptr inbounds [4 x float], ptr %68, i64 0, i64 1
  %70 = load float, ptr %69, align 4
  %71 = load float, ptr %4, align 4
  %72 = fmul float %70, %71
  %73 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %74 = getelementptr inbounds [4 x float], ptr %73, i64 0, i64 1
  store float %72, ptr %74, align 4
  %75 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 2
  %76 = getelementptr inbounds [4 x float], ptr %75, i64 0, i64 2
  %77 = load float, ptr %76, align 8
  %78 = load float, ptr %4, align 4
  %79 = fmul float %77, %78
  %80 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %81 = getelementptr inbounds [4 x float], ptr %80, i64 0, i64 2
  store float %79, ptr %81, align 4
  %82 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 2
  %83 = getelementptr inbounds [4 x float], ptr %82, i64 0, i64 3
  %84 = load float, ptr %83, align 4
  %85 = load float, ptr %4, align 4
  %86 = fmul float %84, %85
  %87 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %88 = getelementptr inbounds [4 x float], ptr %87, i64 0, i64 3
  store float %86, ptr %88, align 4
  %89 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 3
  %90 = getelementptr inbounds [4 x float], ptr %89, i64 0, i64 0
  %91 = load float, ptr %90, align 8
  %92 = load float, ptr %4, align 4
  %93 = fmul float %91, %92
  %94 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %95 = getelementptr inbounds [4 x float], ptr %94, i64 0, i64 0
  store float %93, ptr %95, align 4
  %96 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 3
  %97 = getelementptr inbounds [4 x float], ptr %96, i64 0, i64 1
  %98 = load float, ptr %97, align 4
  %99 = load float, ptr %4, align 4
  %100 = fmul float %98, %99
  %101 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %102 = getelementptr inbounds [4 x float], ptr %101, i64 0, i64 1
  store float %100, ptr %102, align 4
  %103 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 3
  %104 = getelementptr inbounds [4 x float], ptr %103, i64 0, i64 2
  %105 = load float, ptr %104, align 8
  %106 = load float, ptr %4, align 4
  %107 = fmul float %105, %106
  %108 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %109 = getelementptr inbounds [4 x float], ptr %108, i64 0, i64 2
  store float %107, ptr %109, align 4
  %110 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 3
  %111 = getelementptr inbounds [4 x float], ptr %110, i64 0, i64 3
  %112 = load float, ptr %111, align 4
  %113 = load float, ptr %4, align 4
  %114 = fmul float %112, %113
  %115 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %116 = getelementptr inbounds [4 x float], ptr %115, i64 0, i64 3
  store float %114, ptr %116, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_MulM4V4(ptr noundef byval(%union.HMM_Mat4) align 8 %0, <2 x float> %1, <2 x float> %2) #3 {
  %4 = alloca %union.HMM_Vec4, align 4
  %5 = alloca %union.HMM_Vec4, align 4
  %6 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 0
  store <2 x float> %1, ptr %6, align 4
  %7 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 1
  store <2 x float> %2, ptr %7, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 0
  %9 = load <2 x float>, ptr %8, align 4
  %10 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 1
  %11 = load <2 x float>, ptr %10, align 4
  %12 = call { <2 x float>, <2 x float> } @HMM_LinearCombineV4M4(<2 x float> %9, <2 x float> %11, ptr noundef byval(%union.HMM_Mat4) align 8 %0)
  %13 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %4, i32 0, i32 0
  %14 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %13, i32 0, i32 0
  %15 = extractvalue { <2 x float>, <2 x float> } %12, 0
  store <2 x float> %15, ptr %14, align 4
  %16 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %13, i32 0, i32 1
  %17 = extractvalue { <2 x float>, <2 x float> } %12, 1
  store <2 x float> %17, ptr %16, align 4
  %18 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %4, i32 0, i32 0
  %19 = load { <2 x float>, <2 x float> }, ptr %18, align 4
  ret { <2 x float>, <2 x float> } %19
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_DivM4F(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0, ptr noundef byval(%union.HMM_Mat4) align 8 %1, float noundef %2) #0 {
  %4 = alloca float, align 4
  store float %2, ptr %4, align 4
  %5 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 0
  %6 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 0
  %7 = load float, ptr %6, align 8
  %8 = load float, ptr %4, align 4
  %9 = fdiv float %7, %8
  %10 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %11 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 0
  store float %9, ptr %11, align 4
  %12 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 0
  %13 = getelementptr inbounds [4 x float], ptr %12, i64 0, i64 1
  %14 = load float, ptr %13, align 4
  %15 = load float, ptr %4, align 4
  %16 = fdiv float %14, %15
  %17 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %18 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 1
  store float %16, ptr %18, align 4
  %19 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 0
  %20 = getelementptr inbounds [4 x float], ptr %19, i64 0, i64 2
  %21 = load float, ptr %20, align 8
  %22 = load float, ptr %4, align 4
  %23 = fdiv float %21, %22
  %24 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %25 = getelementptr inbounds [4 x float], ptr %24, i64 0, i64 2
  store float %23, ptr %25, align 4
  %26 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 0
  %27 = getelementptr inbounds [4 x float], ptr %26, i64 0, i64 3
  %28 = load float, ptr %27, align 4
  %29 = load float, ptr %4, align 4
  %30 = fdiv float %28, %29
  %31 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %32 = getelementptr inbounds [4 x float], ptr %31, i64 0, i64 3
  store float %30, ptr %32, align 4
  %33 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 1
  %34 = getelementptr inbounds [4 x float], ptr %33, i64 0, i64 0
  %35 = load float, ptr %34, align 8
  %36 = load float, ptr %4, align 4
  %37 = fdiv float %35, %36
  %38 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %39 = getelementptr inbounds [4 x float], ptr %38, i64 0, i64 0
  store float %37, ptr %39, align 4
  %40 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 1
  %41 = getelementptr inbounds [4 x float], ptr %40, i64 0, i64 1
  %42 = load float, ptr %41, align 4
  %43 = load float, ptr %4, align 4
  %44 = fdiv float %42, %43
  %45 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %46 = getelementptr inbounds [4 x float], ptr %45, i64 0, i64 1
  store float %44, ptr %46, align 4
  %47 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 1
  %48 = getelementptr inbounds [4 x float], ptr %47, i64 0, i64 2
  %49 = load float, ptr %48, align 8
  %50 = load float, ptr %4, align 4
  %51 = fdiv float %49, %50
  %52 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %53 = getelementptr inbounds [4 x float], ptr %52, i64 0, i64 2
  store float %51, ptr %53, align 4
  %54 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 1
  %55 = getelementptr inbounds [4 x float], ptr %54, i64 0, i64 3
  %56 = load float, ptr %55, align 4
  %57 = load float, ptr %4, align 4
  %58 = fdiv float %56, %57
  %59 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %60 = getelementptr inbounds [4 x float], ptr %59, i64 0, i64 3
  store float %58, ptr %60, align 4
  %61 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 2
  %62 = getelementptr inbounds [4 x float], ptr %61, i64 0, i64 0
  %63 = load float, ptr %62, align 8
  %64 = load float, ptr %4, align 4
  %65 = fdiv float %63, %64
  %66 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %67 = getelementptr inbounds [4 x float], ptr %66, i64 0, i64 0
  store float %65, ptr %67, align 4
  %68 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 2
  %69 = getelementptr inbounds [4 x float], ptr %68, i64 0, i64 1
  %70 = load float, ptr %69, align 4
  %71 = load float, ptr %4, align 4
  %72 = fdiv float %70, %71
  %73 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %74 = getelementptr inbounds [4 x float], ptr %73, i64 0, i64 1
  store float %72, ptr %74, align 4
  %75 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 2
  %76 = getelementptr inbounds [4 x float], ptr %75, i64 0, i64 2
  %77 = load float, ptr %76, align 8
  %78 = load float, ptr %4, align 4
  %79 = fdiv float %77, %78
  %80 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %81 = getelementptr inbounds [4 x float], ptr %80, i64 0, i64 2
  store float %79, ptr %81, align 4
  %82 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 2
  %83 = getelementptr inbounds [4 x float], ptr %82, i64 0, i64 3
  %84 = load float, ptr %83, align 4
  %85 = load float, ptr %4, align 4
  %86 = fdiv float %84, %85
  %87 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %88 = getelementptr inbounds [4 x float], ptr %87, i64 0, i64 3
  store float %86, ptr %88, align 4
  %89 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 3
  %90 = getelementptr inbounds [4 x float], ptr %89, i64 0, i64 0
  %91 = load float, ptr %90, align 8
  %92 = load float, ptr %4, align 4
  %93 = fdiv float %91, %92
  %94 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %95 = getelementptr inbounds [4 x float], ptr %94, i64 0, i64 0
  store float %93, ptr %95, align 4
  %96 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 3
  %97 = getelementptr inbounds [4 x float], ptr %96, i64 0, i64 1
  %98 = load float, ptr %97, align 4
  %99 = load float, ptr %4, align 4
  %100 = fdiv float %98, %99
  %101 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %102 = getelementptr inbounds [4 x float], ptr %101, i64 0, i64 1
  store float %100, ptr %102, align 4
  %103 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 3
  %104 = getelementptr inbounds [4 x float], ptr %103, i64 0, i64 2
  %105 = load float, ptr %104, align 8
  %106 = load float, ptr %4, align 4
  %107 = fdiv float %105, %106
  %108 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %109 = getelementptr inbounds [4 x float], ptr %108, i64 0, i64 2
  store float %107, ptr %109, align 4
  %110 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 3
  %111 = getelementptr inbounds [4 x float], ptr %110, i64 0, i64 3
  %112 = load float, ptr %111, align 4
  %113 = load float, ptr %4, align 4
  %114 = fdiv float %112, %113
  %115 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %116 = getelementptr inbounds [4 x float], ptr %115, i64 0, i64 3
  store float %114, ptr %116, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_DeterminantM4(ptr noundef byval(%union.HMM_Mat4) align 8 %0) #3 {
  %2 = alloca %union.HMM_Vec3, align 4
  %3 = alloca { <2 x float>, float }, align 8
  %4 = alloca { <2 x float>, float }, align 8
  %5 = alloca { <2 x float>, float }, align 8
  %6 = alloca %union.HMM_Vec3, align 4
  %7 = alloca { <2 x float>, float }, align 8
  %8 = alloca { <2 x float>, float }, align 8
  %9 = alloca { <2 x float>, float }, align 8
  %10 = alloca %union.HMM_Vec3, align 4
  %11 = alloca %union.HMM_Vec3, align 4
  %12 = alloca { <2 x float>, float }, align 8
  %13 = alloca { <2 x float>, float }, align 8
  %14 = alloca %union.HMM_Vec3, align 4
  %15 = alloca { <2 x float>, float }, align 8
  %16 = alloca { <2 x float>, float }, align 8
  %17 = alloca { <2 x float>, float }, align 4
  %18 = alloca { <2 x float>, float }, align 4
  %19 = alloca { <2 x float>, float }, align 8
  %20 = alloca %union.HMM_Vec3, align 4
  %21 = alloca %union.HMM_Vec3, align 4
  %22 = alloca { <2 x float>, float }, align 8
  %23 = alloca { <2 x float>, float }, align 8
  %24 = alloca %union.HMM_Vec3, align 4
  %25 = alloca { <2 x float>, float }, align 8
  %26 = alloca { <2 x float>, float }, align 8
  %27 = alloca { <2 x float>, float }, align 4
  %28 = alloca { <2 x float>, float }, align 4
  %29 = alloca { <2 x float>, float }, align 8
  %30 = alloca { <2 x float>, float }, align 4
  %31 = alloca { <2 x float>, float }, align 4
  %32 = alloca { <2 x float>, float }, align 4
  %33 = alloca { <2 x float>, float }, align 4
  %34 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 0
  %35 = getelementptr inbounds nuw %struct.anon.10, ptr %34, i32 0, i32 0
  %36 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 1
  %37 = getelementptr inbounds nuw %struct.anon.10, ptr %36, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %35, i64 12, i1 false)
  %38 = getelementptr inbounds nuw { <2 x float>, float }, ptr %3, i32 0, i32 0
  %39 = load <2 x float>, ptr %38, align 8
  %40 = getelementptr inbounds nuw { <2 x float>, float }, ptr %3, i32 0, i32 1
  %41 = load float, ptr %40, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %37, i64 12, i1 false)
  %42 = getelementptr inbounds nuw { <2 x float>, float }, ptr %4, i32 0, i32 0
  %43 = load <2 x float>, ptr %42, align 8
  %44 = getelementptr inbounds nuw { <2 x float>, float }, ptr %4, i32 0, i32 1
  %45 = load float, ptr %44, align 8
  %46 = call { <2 x float>, float } @HMM_Cross(<2 x float> %39, float %41, <2 x float> %43, float %45)
  %47 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %2, i32 0, i32 0
  store { <2 x float>, float } %46, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %47, ptr align 8 %5, i64 12, i1 false)
  %48 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 2
  %49 = getelementptr inbounds nuw %struct.anon.10, ptr %48, i32 0, i32 0
  %50 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 3
  %51 = getelementptr inbounds nuw %struct.anon.10, ptr %50, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %49, i64 12, i1 false)
  %52 = getelementptr inbounds nuw { <2 x float>, float }, ptr %7, i32 0, i32 0
  %53 = load <2 x float>, ptr %52, align 8
  %54 = getelementptr inbounds nuw { <2 x float>, float }, ptr %7, i32 0, i32 1
  %55 = load float, ptr %54, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %51, i64 12, i1 false)
  %56 = getelementptr inbounds nuw { <2 x float>, float }, ptr %8, i32 0, i32 0
  %57 = load <2 x float>, ptr %56, align 8
  %58 = getelementptr inbounds nuw { <2 x float>, float }, ptr %8, i32 0, i32 1
  %59 = load float, ptr %58, align 8
  %60 = call { <2 x float>, float } @HMM_Cross(<2 x float> %53, float %55, <2 x float> %57, float %59)
  %61 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %6, i32 0, i32 0
  store { <2 x float>, float } %60, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %61, ptr align 8 %9, i64 12, i1 false)
  %62 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 0
  %63 = getelementptr inbounds nuw %struct.anon.10, ptr %62, i32 0, i32 0
  %64 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 1
  %65 = getelementptr inbounds nuw %struct.anon.10, ptr %64, i32 0, i32 1
  %66 = load float, ptr %65, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %63, i64 12, i1 false)
  %67 = getelementptr inbounds nuw { <2 x float>, float }, ptr %12, i32 0, i32 0
  %68 = load <2 x float>, ptr %67, align 8
  %69 = getelementptr inbounds nuw { <2 x float>, float }, ptr %12, i32 0, i32 1
  %70 = load float, ptr %69, align 8
  %71 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %68, float %70, float noundef %66)
  %72 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %11, i32 0, i32 0
  store { <2 x float>, float } %71, ptr %13, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %72, ptr align 8 %13, i64 12, i1 false)
  %73 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 1
  %74 = getelementptr inbounds nuw %struct.anon.10, ptr %73, i32 0, i32 0
  %75 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 0
  %76 = getelementptr inbounds nuw %struct.anon.10, ptr %75, i32 0, i32 1
  %77 = load float, ptr %76, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %15, ptr align 8 %74, i64 12, i1 false)
  %78 = getelementptr inbounds nuw { <2 x float>, float }, ptr %15, i32 0, i32 0
  %79 = load <2 x float>, ptr %78, align 8
  %80 = getelementptr inbounds nuw { <2 x float>, float }, ptr %15, i32 0, i32 1
  %81 = load float, ptr %80, align 8
  %82 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %79, float %81, float noundef %77)
  %83 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %14, i32 0, i32 0
  store { <2 x float>, float } %82, ptr %16, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %83, ptr align 8 %16, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %17, ptr align 4 %11, i64 12, i1 false)
  %84 = getelementptr inbounds nuw { <2 x float>, float }, ptr %17, i32 0, i32 0
  %85 = load <2 x float>, ptr %84, align 4
  %86 = getelementptr inbounds nuw { <2 x float>, float }, ptr %17, i32 0, i32 1
  %87 = load float, ptr %86, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %18, ptr align 4 %14, i64 12, i1 false)
  %88 = getelementptr inbounds nuw { <2 x float>, float }, ptr %18, i32 0, i32 0
  %89 = load <2 x float>, ptr %88, align 4
  %90 = getelementptr inbounds nuw { <2 x float>, float }, ptr %18, i32 0, i32 1
  %91 = load float, ptr %90, align 4
  %92 = call { <2 x float>, float } @HMM_SubV3(<2 x float> %85, float %87, <2 x float> %89, float %91)
  %93 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %10, i32 0, i32 0
  store { <2 x float>, float } %92, ptr %19, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %93, ptr align 8 %19, i64 12, i1 false)
  %94 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 2
  %95 = getelementptr inbounds nuw %struct.anon.10, ptr %94, i32 0, i32 0
  %96 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 3
  %97 = getelementptr inbounds nuw %struct.anon.10, ptr %96, i32 0, i32 1
  %98 = load float, ptr %97, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %22, ptr align 8 %95, i64 12, i1 false)
  %99 = getelementptr inbounds nuw { <2 x float>, float }, ptr %22, i32 0, i32 0
  %100 = load <2 x float>, ptr %99, align 8
  %101 = getelementptr inbounds nuw { <2 x float>, float }, ptr %22, i32 0, i32 1
  %102 = load float, ptr %101, align 8
  %103 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %100, float %102, float noundef %98)
  %104 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %21, i32 0, i32 0
  store { <2 x float>, float } %103, ptr %23, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %104, ptr align 8 %23, i64 12, i1 false)
  %105 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 3
  %106 = getelementptr inbounds nuw %struct.anon.10, ptr %105, i32 0, i32 0
  %107 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 2
  %108 = getelementptr inbounds nuw %struct.anon.10, ptr %107, i32 0, i32 1
  %109 = load float, ptr %108, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %25, ptr align 8 %106, i64 12, i1 false)
  %110 = getelementptr inbounds nuw { <2 x float>, float }, ptr %25, i32 0, i32 0
  %111 = load <2 x float>, ptr %110, align 8
  %112 = getelementptr inbounds nuw { <2 x float>, float }, ptr %25, i32 0, i32 1
  %113 = load float, ptr %112, align 8
  %114 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %111, float %113, float noundef %109)
  %115 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %24, i32 0, i32 0
  store { <2 x float>, float } %114, ptr %26, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %115, ptr align 8 %26, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %27, ptr align 4 %21, i64 12, i1 false)
  %116 = getelementptr inbounds nuw { <2 x float>, float }, ptr %27, i32 0, i32 0
  %117 = load <2 x float>, ptr %116, align 4
  %118 = getelementptr inbounds nuw { <2 x float>, float }, ptr %27, i32 0, i32 1
  %119 = load float, ptr %118, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %28, ptr align 4 %24, i64 12, i1 false)
  %120 = getelementptr inbounds nuw { <2 x float>, float }, ptr %28, i32 0, i32 0
  %121 = load <2 x float>, ptr %120, align 4
  %122 = getelementptr inbounds nuw { <2 x float>, float }, ptr %28, i32 0, i32 1
  %123 = load float, ptr %122, align 4
  %124 = call { <2 x float>, float } @HMM_SubV3(<2 x float> %117, float %119, <2 x float> %121, float %123)
  %125 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %20, i32 0, i32 0
  store { <2 x float>, float } %124, ptr %29, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %125, ptr align 8 %29, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %30, ptr align 4 %2, i64 12, i1 false)
  %126 = getelementptr inbounds nuw { <2 x float>, float }, ptr %30, i32 0, i32 0
  %127 = load <2 x float>, ptr %126, align 4
  %128 = getelementptr inbounds nuw { <2 x float>, float }, ptr %30, i32 0, i32 1
  %129 = load float, ptr %128, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %31, ptr align 4 %20, i64 12, i1 false)
  %130 = getelementptr inbounds nuw { <2 x float>, float }, ptr %31, i32 0, i32 0
  %131 = load <2 x float>, ptr %130, align 4
  %132 = getelementptr inbounds nuw { <2 x float>, float }, ptr %31, i32 0, i32 1
  %133 = load float, ptr %132, align 4
  %134 = call float @HMM_DotV3(<2 x float> %127, float %129, <2 x float> %131, float %133)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %32, ptr align 4 %6, i64 12, i1 false)
  %135 = getelementptr inbounds nuw { <2 x float>, float }, ptr %32, i32 0, i32 0
  %136 = load <2 x float>, ptr %135, align 4
  %137 = getelementptr inbounds nuw { <2 x float>, float }, ptr %32, i32 0, i32 1
  %138 = load float, ptr %137, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %33, ptr align 4 %10, i64 12, i1 false)
  %139 = getelementptr inbounds nuw { <2 x float>, float }, ptr %33, i32 0, i32 0
  %140 = load <2 x float>, ptr %139, align 4
  %141 = getelementptr inbounds nuw { <2 x float>, float }, ptr %33, i32 0, i32 1
  %142 = load float, ptr %141, align 4
  %143 = call float @HMM_DotV3(<2 x float> %136, float %138, <2 x float> %140, float %142)
  %144 = fadd float %134, %143
  ret float %144
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_InvGeneralM4(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0, ptr noundef byval(%union.HMM_Mat4) align 8 %1) #3 {
  %3 = alloca %union.HMM_Vec3, align 4
  %4 = alloca { <2 x float>, float }, align 8
  %5 = alloca { <2 x float>, float }, align 8
  %6 = alloca { <2 x float>, float }, align 8
  %7 = alloca %union.HMM_Vec3, align 4
  %8 = alloca { <2 x float>, float }, align 8
  %9 = alloca { <2 x float>, float }, align 8
  %10 = alloca { <2 x float>, float }, align 8
  %11 = alloca %union.HMM_Vec3, align 4
  %12 = alloca %union.HMM_Vec3, align 4
  %13 = alloca { <2 x float>, float }, align 8
  %14 = alloca { <2 x float>, float }, align 8
  %15 = alloca %union.HMM_Vec3, align 4
  %16 = alloca { <2 x float>, float }, align 8
  %17 = alloca { <2 x float>, float }, align 8
  %18 = alloca { <2 x float>, float }, align 4
  %19 = alloca { <2 x float>, float }, align 4
  %20 = alloca { <2 x float>, float }, align 8
  %21 = alloca %union.HMM_Vec3, align 4
  %22 = alloca %union.HMM_Vec3, align 4
  %23 = alloca { <2 x float>, float }, align 8
  %24 = alloca { <2 x float>, float }, align 8
  %25 = alloca %union.HMM_Vec3, align 4
  %26 = alloca { <2 x float>, float }, align 8
  %27 = alloca { <2 x float>, float }, align 8
  %28 = alloca { <2 x float>, float }, align 4
  %29 = alloca { <2 x float>, float }, align 4
  %30 = alloca { <2 x float>, float }, align 8
  %31 = alloca float, align 4
  %32 = alloca { <2 x float>, float }, align 4
  %33 = alloca { <2 x float>, float }, align 4
  %34 = alloca { <2 x float>, float }, align 4
  %35 = alloca { <2 x float>, float }, align 4
  %36 = alloca %union.HMM_Vec3, align 4
  %37 = alloca { <2 x float>, float }, align 4
  %38 = alloca { <2 x float>, float }, align 8
  %39 = alloca %union.HMM_Vec3, align 4
  %40 = alloca { <2 x float>, float }, align 4
  %41 = alloca { <2 x float>, float }, align 8
  %42 = alloca %union.HMM_Vec3, align 4
  %43 = alloca { <2 x float>, float }, align 4
  %44 = alloca { <2 x float>, float }, align 8
  %45 = alloca %union.HMM_Vec3, align 4
  %46 = alloca { <2 x float>, float }, align 4
  %47 = alloca { <2 x float>, float }, align 8
  %48 = alloca %union.HMM_Mat4, align 8
  %49 = alloca %union.HMM_Vec4, align 4
  %50 = alloca %union.HMM_Vec3, align 4
  %51 = alloca %union.HMM_Vec3, align 4
  %52 = alloca { <2 x float>, float }, align 8
  %53 = alloca { <2 x float>, float }, align 4
  %54 = alloca { <2 x float>, float }, align 8
  %55 = alloca %union.HMM_Vec3, align 4
  %56 = alloca { <2 x float>, float }, align 4
  %57 = alloca { <2 x float>, float }, align 8
  %58 = alloca { <2 x float>, float }, align 4
  %59 = alloca { <2 x float>, float }, align 4
  %60 = alloca { <2 x float>, float }, align 8
  %61 = alloca { <2 x float>, float }, align 8
  %62 = alloca { <2 x float>, float }, align 4
  %63 = alloca { <2 x float>, float }, align 4
  %64 = alloca %union.HMM_Vec4, align 4
  %65 = alloca %union.HMM_Vec3, align 4
  %66 = alloca %union.HMM_Vec3, align 4
  %67 = alloca { <2 x float>, float }, align 4
  %68 = alloca { <2 x float>, float }, align 8
  %69 = alloca { <2 x float>, float }, align 8
  %70 = alloca %union.HMM_Vec3, align 4
  %71 = alloca { <2 x float>, float }, align 4
  %72 = alloca { <2 x float>, float }, align 8
  %73 = alloca { <2 x float>, float }, align 4
  %74 = alloca { <2 x float>, float }, align 4
  %75 = alloca { <2 x float>, float }, align 8
  %76 = alloca { <2 x float>, float }, align 8
  %77 = alloca { <2 x float>, float }, align 4
  %78 = alloca { <2 x float>, float }, align 4
  %79 = alloca %union.HMM_Vec4, align 4
  %80 = alloca %union.HMM_Vec3, align 4
  %81 = alloca %union.HMM_Vec3, align 4
  %82 = alloca { <2 x float>, float }, align 8
  %83 = alloca { <2 x float>, float }, align 4
  %84 = alloca { <2 x float>, float }, align 8
  %85 = alloca %union.HMM_Vec3, align 4
  %86 = alloca { <2 x float>, float }, align 4
  %87 = alloca { <2 x float>, float }, align 8
  %88 = alloca { <2 x float>, float }, align 4
  %89 = alloca { <2 x float>, float }, align 4
  %90 = alloca { <2 x float>, float }, align 8
  %91 = alloca { <2 x float>, float }, align 8
  %92 = alloca { <2 x float>, float }, align 4
  %93 = alloca { <2 x float>, float }, align 4
  %94 = alloca %union.HMM_Vec4, align 4
  %95 = alloca %union.HMM_Vec3, align 4
  %96 = alloca %union.HMM_Vec3, align 4
  %97 = alloca { <2 x float>, float }, align 4
  %98 = alloca { <2 x float>, float }, align 8
  %99 = alloca { <2 x float>, float }, align 8
  %100 = alloca %union.HMM_Vec3, align 4
  %101 = alloca { <2 x float>, float }, align 4
  %102 = alloca { <2 x float>, float }, align 8
  %103 = alloca { <2 x float>, float }, align 4
  %104 = alloca { <2 x float>, float }, align 4
  %105 = alloca { <2 x float>, float }, align 8
  %106 = alloca { <2 x float>, float }, align 8
  %107 = alloca { <2 x float>, float }, align 4
  %108 = alloca { <2 x float>, float }, align 4
  %109 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 0
  %110 = getelementptr inbounds nuw %struct.anon.10, ptr %109, i32 0, i32 0
  %111 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 1
  %112 = getelementptr inbounds nuw %struct.anon.10, ptr %111, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %110, i64 12, i1 false)
  %113 = getelementptr inbounds nuw { <2 x float>, float }, ptr %4, i32 0, i32 0
  %114 = load <2 x float>, ptr %113, align 8
  %115 = getelementptr inbounds nuw { <2 x float>, float }, ptr %4, i32 0, i32 1
  %116 = load float, ptr %115, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %112, i64 12, i1 false)
  %117 = getelementptr inbounds nuw { <2 x float>, float }, ptr %5, i32 0, i32 0
  %118 = load <2 x float>, ptr %117, align 8
  %119 = getelementptr inbounds nuw { <2 x float>, float }, ptr %5, i32 0, i32 1
  %120 = load float, ptr %119, align 8
  %121 = call { <2 x float>, float } @HMM_Cross(<2 x float> %114, float %116, <2 x float> %118, float %120)
  %122 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %3, i32 0, i32 0
  store { <2 x float>, float } %121, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %122, ptr align 8 %6, i64 12, i1 false)
  %123 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 2
  %124 = getelementptr inbounds nuw %struct.anon.10, ptr %123, i32 0, i32 0
  %125 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 3
  %126 = getelementptr inbounds nuw %struct.anon.10, ptr %125, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %124, i64 12, i1 false)
  %127 = getelementptr inbounds nuw { <2 x float>, float }, ptr %8, i32 0, i32 0
  %128 = load <2 x float>, ptr %127, align 8
  %129 = getelementptr inbounds nuw { <2 x float>, float }, ptr %8, i32 0, i32 1
  %130 = load float, ptr %129, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %126, i64 12, i1 false)
  %131 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 0
  %132 = load <2 x float>, ptr %131, align 8
  %133 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 1
  %134 = load float, ptr %133, align 8
  %135 = call { <2 x float>, float } @HMM_Cross(<2 x float> %128, float %130, <2 x float> %132, float %134)
  %136 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %7, i32 0, i32 0
  store { <2 x float>, float } %135, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %136, ptr align 8 %10, i64 12, i1 false)
  %137 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 0
  %138 = getelementptr inbounds nuw %struct.anon.10, ptr %137, i32 0, i32 0
  %139 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 1
  %140 = getelementptr inbounds nuw %struct.anon.10, ptr %139, i32 0, i32 1
  %141 = load float, ptr %140, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 8 %138, i64 12, i1 false)
  %142 = getelementptr inbounds nuw { <2 x float>, float }, ptr %13, i32 0, i32 0
  %143 = load <2 x float>, ptr %142, align 8
  %144 = getelementptr inbounds nuw { <2 x float>, float }, ptr %13, i32 0, i32 1
  %145 = load float, ptr %144, align 8
  %146 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %143, float %145, float noundef %141)
  %147 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %12, i32 0, i32 0
  store { <2 x float>, float } %146, ptr %14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %147, ptr align 8 %14, i64 12, i1 false)
  %148 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 1
  %149 = getelementptr inbounds nuw %struct.anon.10, ptr %148, i32 0, i32 0
  %150 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 0
  %151 = getelementptr inbounds nuw %struct.anon.10, ptr %150, i32 0, i32 1
  %152 = load float, ptr %151, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 %149, i64 12, i1 false)
  %153 = getelementptr inbounds nuw { <2 x float>, float }, ptr %16, i32 0, i32 0
  %154 = load <2 x float>, ptr %153, align 8
  %155 = getelementptr inbounds nuw { <2 x float>, float }, ptr %16, i32 0, i32 1
  %156 = load float, ptr %155, align 8
  %157 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %154, float %156, float noundef %152)
  %158 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %15, i32 0, i32 0
  store { <2 x float>, float } %157, ptr %17, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %158, ptr align 8 %17, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %18, ptr align 4 %12, i64 12, i1 false)
  %159 = getelementptr inbounds nuw { <2 x float>, float }, ptr %18, i32 0, i32 0
  %160 = load <2 x float>, ptr %159, align 4
  %161 = getelementptr inbounds nuw { <2 x float>, float }, ptr %18, i32 0, i32 1
  %162 = load float, ptr %161, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %19, ptr align 4 %15, i64 12, i1 false)
  %163 = getelementptr inbounds nuw { <2 x float>, float }, ptr %19, i32 0, i32 0
  %164 = load <2 x float>, ptr %163, align 4
  %165 = getelementptr inbounds nuw { <2 x float>, float }, ptr %19, i32 0, i32 1
  %166 = load float, ptr %165, align 4
  %167 = call { <2 x float>, float } @HMM_SubV3(<2 x float> %160, float %162, <2 x float> %164, float %166)
  %168 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %11, i32 0, i32 0
  store { <2 x float>, float } %167, ptr %20, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %168, ptr align 8 %20, i64 12, i1 false)
  %169 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 2
  %170 = getelementptr inbounds nuw %struct.anon.10, ptr %169, i32 0, i32 0
  %171 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 3
  %172 = getelementptr inbounds nuw %struct.anon.10, ptr %171, i32 0, i32 1
  %173 = load float, ptr %172, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %23, ptr align 8 %170, i64 12, i1 false)
  %174 = getelementptr inbounds nuw { <2 x float>, float }, ptr %23, i32 0, i32 0
  %175 = load <2 x float>, ptr %174, align 8
  %176 = getelementptr inbounds nuw { <2 x float>, float }, ptr %23, i32 0, i32 1
  %177 = load float, ptr %176, align 8
  %178 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %175, float %177, float noundef %173)
  %179 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %22, i32 0, i32 0
  store { <2 x float>, float } %178, ptr %24, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %179, ptr align 8 %24, i64 12, i1 false)
  %180 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 3
  %181 = getelementptr inbounds nuw %struct.anon.10, ptr %180, i32 0, i32 0
  %182 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 2
  %183 = getelementptr inbounds nuw %struct.anon.10, ptr %182, i32 0, i32 1
  %184 = load float, ptr %183, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %26, ptr align 8 %181, i64 12, i1 false)
  %185 = getelementptr inbounds nuw { <2 x float>, float }, ptr %26, i32 0, i32 0
  %186 = load <2 x float>, ptr %185, align 8
  %187 = getelementptr inbounds nuw { <2 x float>, float }, ptr %26, i32 0, i32 1
  %188 = load float, ptr %187, align 8
  %189 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %186, float %188, float noundef %184)
  %190 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %25, i32 0, i32 0
  store { <2 x float>, float } %189, ptr %27, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %190, ptr align 8 %27, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %28, ptr align 4 %22, i64 12, i1 false)
  %191 = getelementptr inbounds nuw { <2 x float>, float }, ptr %28, i32 0, i32 0
  %192 = load <2 x float>, ptr %191, align 4
  %193 = getelementptr inbounds nuw { <2 x float>, float }, ptr %28, i32 0, i32 1
  %194 = load float, ptr %193, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %29, ptr align 4 %25, i64 12, i1 false)
  %195 = getelementptr inbounds nuw { <2 x float>, float }, ptr %29, i32 0, i32 0
  %196 = load <2 x float>, ptr %195, align 4
  %197 = getelementptr inbounds nuw { <2 x float>, float }, ptr %29, i32 0, i32 1
  %198 = load float, ptr %197, align 4
  %199 = call { <2 x float>, float } @HMM_SubV3(<2 x float> %192, float %194, <2 x float> %196, float %198)
  %200 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %21, i32 0, i32 0
  store { <2 x float>, float } %199, ptr %30, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %200, ptr align 8 %30, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %32, ptr align 4 %3, i64 12, i1 false)
  %201 = getelementptr inbounds nuw { <2 x float>, float }, ptr %32, i32 0, i32 0
  %202 = load <2 x float>, ptr %201, align 4
  %203 = getelementptr inbounds nuw { <2 x float>, float }, ptr %32, i32 0, i32 1
  %204 = load float, ptr %203, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %33, ptr align 4 %21, i64 12, i1 false)
  %205 = getelementptr inbounds nuw { <2 x float>, float }, ptr %33, i32 0, i32 0
  %206 = load <2 x float>, ptr %205, align 4
  %207 = getelementptr inbounds nuw { <2 x float>, float }, ptr %33, i32 0, i32 1
  %208 = load float, ptr %207, align 4
  %209 = call float @HMM_DotV3(<2 x float> %202, float %204, <2 x float> %206, float %208)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %34, ptr align 4 %7, i64 12, i1 false)
  %210 = getelementptr inbounds nuw { <2 x float>, float }, ptr %34, i32 0, i32 0
  %211 = load <2 x float>, ptr %210, align 4
  %212 = getelementptr inbounds nuw { <2 x float>, float }, ptr %34, i32 0, i32 1
  %213 = load float, ptr %212, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %35, ptr align 4 %11, i64 12, i1 false)
  %214 = getelementptr inbounds nuw { <2 x float>, float }, ptr %35, i32 0, i32 0
  %215 = load <2 x float>, ptr %214, align 4
  %216 = getelementptr inbounds nuw { <2 x float>, float }, ptr %35, i32 0, i32 1
  %217 = load float, ptr %216, align 4
  %218 = call float @HMM_DotV3(<2 x float> %211, float %213, <2 x float> %215, float %217)
  %219 = fadd float %209, %218
  %220 = fdiv float 1.000000e+00, %219
  store float %220, ptr %31, align 4
  %221 = load float, ptr %31, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %37, ptr align 4 %3, i64 12, i1 false)
  %222 = getelementptr inbounds nuw { <2 x float>, float }, ptr %37, i32 0, i32 0
  %223 = load <2 x float>, ptr %222, align 4
  %224 = getelementptr inbounds nuw { <2 x float>, float }, ptr %37, i32 0, i32 1
  %225 = load float, ptr %224, align 4
  %226 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %223, float %225, float noundef %221)
  %227 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %36, i32 0, i32 0
  store { <2 x float>, float } %226, ptr %38, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %227, ptr align 8 %38, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %36, i64 12, i1 false)
  %228 = load float, ptr %31, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %40, ptr align 4 %7, i64 12, i1 false)
  %229 = getelementptr inbounds nuw { <2 x float>, float }, ptr %40, i32 0, i32 0
  %230 = load <2 x float>, ptr %229, align 4
  %231 = getelementptr inbounds nuw { <2 x float>, float }, ptr %40, i32 0, i32 1
  %232 = load float, ptr %231, align 4
  %233 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %230, float %232, float noundef %228)
  %234 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %39, i32 0, i32 0
  store { <2 x float>, float } %233, ptr %41, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %234, ptr align 8 %41, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %7, ptr align 4 %39, i64 12, i1 false)
  %235 = load float, ptr %31, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %43, ptr align 4 %11, i64 12, i1 false)
  %236 = getelementptr inbounds nuw { <2 x float>, float }, ptr %43, i32 0, i32 0
  %237 = load <2 x float>, ptr %236, align 4
  %238 = getelementptr inbounds nuw { <2 x float>, float }, ptr %43, i32 0, i32 1
  %239 = load float, ptr %238, align 4
  %240 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %237, float %239, float noundef %235)
  %241 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %42, i32 0, i32 0
  store { <2 x float>, float } %240, ptr %44, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %241, ptr align 8 %44, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %11, ptr align 4 %42, i64 12, i1 false)
  %242 = load float, ptr %31, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %46, ptr align 4 %21, i64 12, i1 false)
  %243 = getelementptr inbounds nuw { <2 x float>, float }, ptr %46, i32 0, i32 0
  %244 = load <2 x float>, ptr %243, align 4
  %245 = getelementptr inbounds nuw { <2 x float>, float }, ptr %46, i32 0, i32 1
  %246 = load float, ptr %245, align 4
  %247 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %244, float %246, float noundef %242)
  %248 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %45, i32 0, i32 0
  store { <2 x float>, float } %247, ptr %47, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %248, ptr align 8 %47, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %21, ptr align 4 %45, i64 12, i1 false)
  %249 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %48, i64 0, i64 0
  %250 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 1
  %251 = getelementptr inbounds nuw %struct.anon.10, ptr %250, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %52, ptr align 8 %251, i64 12, i1 false)
  %252 = getelementptr inbounds nuw { <2 x float>, float }, ptr %52, i32 0, i32 0
  %253 = load <2 x float>, ptr %252, align 8
  %254 = getelementptr inbounds nuw { <2 x float>, float }, ptr %52, i32 0, i32 1
  %255 = load float, ptr %254, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %53, ptr align 4 %21, i64 12, i1 false)
  %256 = getelementptr inbounds nuw { <2 x float>, float }, ptr %53, i32 0, i32 0
  %257 = load <2 x float>, ptr %256, align 4
  %258 = getelementptr inbounds nuw { <2 x float>, float }, ptr %53, i32 0, i32 1
  %259 = load float, ptr %258, align 4
  %260 = call { <2 x float>, float } @HMM_Cross(<2 x float> %253, float %255, <2 x float> %257, float %259)
  %261 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %51, i32 0, i32 0
  store { <2 x float>, float } %260, ptr %54, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %261, ptr align 8 %54, i64 12, i1 false)
  %262 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 1
  %263 = getelementptr inbounds nuw %struct.anon.10, ptr %262, i32 0, i32 1
  %264 = load float, ptr %263, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %56, ptr align 4 %7, i64 12, i1 false)
  %265 = getelementptr inbounds nuw { <2 x float>, float }, ptr %56, i32 0, i32 0
  %266 = load <2 x float>, ptr %265, align 4
  %267 = getelementptr inbounds nuw { <2 x float>, float }, ptr %56, i32 0, i32 1
  %268 = load float, ptr %267, align 4
  %269 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %266, float %268, float noundef %264)
  %270 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %55, i32 0, i32 0
  store { <2 x float>, float } %269, ptr %57, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %270, ptr align 8 %57, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %58, ptr align 4 %51, i64 12, i1 false)
  %271 = getelementptr inbounds nuw { <2 x float>, float }, ptr %58, i32 0, i32 0
  %272 = load <2 x float>, ptr %271, align 4
  %273 = getelementptr inbounds nuw { <2 x float>, float }, ptr %58, i32 0, i32 1
  %274 = load float, ptr %273, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %59, ptr align 4 %55, i64 12, i1 false)
  %275 = getelementptr inbounds nuw { <2 x float>, float }, ptr %59, i32 0, i32 0
  %276 = load <2 x float>, ptr %275, align 4
  %277 = getelementptr inbounds nuw { <2 x float>, float }, ptr %59, i32 0, i32 1
  %278 = load float, ptr %277, align 4
  %279 = call { <2 x float>, float } @HMM_AddV3(<2 x float> %272, float %274, <2 x float> %276, float %278)
  %280 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %50, i32 0, i32 0
  store { <2 x float>, float } %279, ptr %60, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %280, ptr align 8 %60, i64 12, i1 false)
  %281 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 1
  %282 = getelementptr inbounds nuw %struct.anon.10, ptr %281, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %61, ptr align 8 %282, i64 12, i1 false)
  %283 = getelementptr inbounds nuw { <2 x float>, float }, ptr %61, i32 0, i32 0
  %284 = load <2 x float>, ptr %283, align 8
  %285 = getelementptr inbounds nuw { <2 x float>, float }, ptr %61, i32 0, i32 1
  %286 = load float, ptr %285, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %62, ptr align 4 %7, i64 12, i1 false)
  %287 = getelementptr inbounds nuw { <2 x float>, float }, ptr %62, i32 0, i32 0
  %288 = load <2 x float>, ptr %287, align 4
  %289 = getelementptr inbounds nuw { <2 x float>, float }, ptr %62, i32 0, i32 1
  %290 = load float, ptr %289, align 4
  %291 = call float @HMM_DotV3(<2 x float> %284, float %286, <2 x float> %288, float %290)
  %292 = fneg float %291
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %63, ptr align 4 %50, i64 12, i1 false)
  %293 = getelementptr inbounds nuw { <2 x float>, float }, ptr %63, i32 0, i32 0
  %294 = load <2 x float>, ptr %293, align 4
  %295 = getelementptr inbounds nuw { <2 x float>, float }, ptr %63, i32 0, i32 1
  %296 = load float, ptr %295, align 4
  %297 = call { <2 x float>, <2 x float> } @HMM_V4V(<2 x float> %294, float %296, float noundef %292)
  %298 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %49, i32 0, i32 0
  %299 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %298, i32 0, i32 0
  %300 = extractvalue { <2 x float>, <2 x float> } %297, 0
  store <2 x float> %300, ptr %299, align 4
  %301 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %298, i32 0, i32 1
  %302 = extractvalue { <2 x float>, <2 x float> } %297, 1
  store <2 x float> %302, ptr %301, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %249, ptr align 4 %49, i64 16, i1 false)
  %303 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %48, i64 0, i64 1
  %304 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 0
  %305 = getelementptr inbounds nuw %struct.anon.10, ptr %304, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %67, ptr align 4 %21, i64 12, i1 false)
  %306 = getelementptr inbounds nuw { <2 x float>, float }, ptr %67, i32 0, i32 0
  %307 = load <2 x float>, ptr %306, align 4
  %308 = getelementptr inbounds nuw { <2 x float>, float }, ptr %67, i32 0, i32 1
  %309 = load float, ptr %308, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %68, ptr align 8 %305, i64 12, i1 false)
  %310 = getelementptr inbounds nuw { <2 x float>, float }, ptr %68, i32 0, i32 0
  %311 = load <2 x float>, ptr %310, align 8
  %312 = getelementptr inbounds nuw { <2 x float>, float }, ptr %68, i32 0, i32 1
  %313 = load float, ptr %312, align 8
  %314 = call { <2 x float>, float } @HMM_Cross(<2 x float> %307, float %309, <2 x float> %311, float %313)
  %315 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %66, i32 0, i32 0
  store { <2 x float>, float } %314, ptr %69, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %315, ptr align 8 %69, i64 12, i1 false)
  %316 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 0
  %317 = getelementptr inbounds nuw %struct.anon.10, ptr %316, i32 0, i32 1
  %318 = load float, ptr %317, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %71, ptr align 4 %7, i64 12, i1 false)
  %319 = getelementptr inbounds nuw { <2 x float>, float }, ptr %71, i32 0, i32 0
  %320 = load <2 x float>, ptr %319, align 4
  %321 = getelementptr inbounds nuw { <2 x float>, float }, ptr %71, i32 0, i32 1
  %322 = load float, ptr %321, align 4
  %323 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %320, float %322, float noundef %318)
  %324 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %70, i32 0, i32 0
  store { <2 x float>, float } %323, ptr %72, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %324, ptr align 8 %72, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %73, ptr align 4 %66, i64 12, i1 false)
  %325 = getelementptr inbounds nuw { <2 x float>, float }, ptr %73, i32 0, i32 0
  %326 = load <2 x float>, ptr %325, align 4
  %327 = getelementptr inbounds nuw { <2 x float>, float }, ptr %73, i32 0, i32 1
  %328 = load float, ptr %327, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %74, ptr align 4 %70, i64 12, i1 false)
  %329 = getelementptr inbounds nuw { <2 x float>, float }, ptr %74, i32 0, i32 0
  %330 = load <2 x float>, ptr %329, align 4
  %331 = getelementptr inbounds nuw { <2 x float>, float }, ptr %74, i32 0, i32 1
  %332 = load float, ptr %331, align 4
  %333 = call { <2 x float>, float } @HMM_SubV3(<2 x float> %326, float %328, <2 x float> %330, float %332)
  %334 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %65, i32 0, i32 0
  store { <2 x float>, float } %333, ptr %75, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %334, ptr align 8 %75, i64 12, i1 false)
  %335 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 0
  %336 = getelementptr inbounds nuw %struct.anon.10, ptr %335, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %76, ptr align 8 %336, i64 12, i1 false)
  %337 = getelementptr inbounds nuw { <2 x float>, float }, ptr %76, i32 0, i32 0
  %338 = load <2 x float>, ptr %337, align 8
  %339 = getelementptr inbounds nuw { <2 x float>, float }, ptr %76, i32 0, i32 1
  %340 = load float, ptr %339, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %77, ptr align 4 %7, i64 12, i1 false)
  %341 = getelementptr inbounds nuw { <2 x float>, float }, ptr %77, i32 0, i32 0
  %342 = load <2 x float>, ptr %341, align 4
  %343 = getelementptr inbounds nuw { <2 x float>, float }, ptr %77, i32 0, i32 1
  %344 = load float, ptr %343, align 4
  %345 = call float @HMM_DotV3(<2 x float> %338, float %340, <2 x float> %342, float %344)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %78, ptr align 4 %65, i64 12, i1 false)
  %346 = getelementptr inbounds nuw { <2 x float>, float }, ptr %78, i32 0, i32 0
  %347 = load <2 x float>, ptr %346, align 4
  %348 = getelementptr inbounds nuw { <2 x float>, float }, ptr %78, i32 0, i32 1
  %349 = load float, ptr %348, align 4
  %350 = call { <2 x float>, <2 x float> } @HMM_V4V(<2 x float> %347, float %349, float noundef %345)
  %351 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %64, i32 0, i32 0
  %352 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %351, i32 0, i32 0
  %353 = extractvalue { <2 x float>, <2 x float> } %350, 0
  store <2 x float> %353, ptr %352, align 4
  %354 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %351, i32 0, i32 1
  %355 = extractvalue { <2 x float>, <2 x float> } %350, 1
  store <2 x float> %355, ptr %354, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %303, ptr align 4 %64, i64 16, i1 false)
  %356 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %48, i64 0, i64 2
  %357 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 3
  %358 = getelementptr inbounds nuw %struct.anon.10, ptr %357, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %82, ptr align 8 %358, i64 12, i1 false)
  %359 = getelementptr inbounds nuw { <2 x float>, float }, ptr %82, i32 0, i32 0
  %360 = load <2 x float>, ptr %359, align 8
  %361 = getelementptr inbounds nuw { <2 x float>, float }, ptr %82, i32 0, i32 1
  %362 = load float, ptr %361, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %83, ptr align 4 %11, i64 12, i1 false)
  %363 = getelementptr inbounds nuw { <2 x float>, float }, ptr %83, i32 0, i32 0
  %364 = load <2 x float>, ptr %363, align 4
  %365 = getelementptr inbounds nuw { <2 x float>, float }, ptr %83, i32 0, i32 1
  %366 = load float, ptr %365, align 4
  %367 = call { <2 x float>, float } @HMM_Cross(<2 x float> %360, float %362, <2 x float> %364, float %366)
  %368 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %81, i32 0, i32 0
  store { <2 x float>, float } %367, ptr %84, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %368, ptr align 8 %84, i64 12, i1 false)
  %369 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 3
  %370 = getelementptr inbounds nuw %struct.anon.10, ptr %369, i32 0, i32 1
  %371 = load float, ptr %370, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %86, ptr align 4 %3, i64 12, i1 false)
  %372 = getelementptr inbounds nuw { <2 x float>, float }, ptr %86, i32 0, i32 0
  %373 = load <2 x float>, ptr %372, align 4
  %374 = getelementptr inbounds nuw { <2 x float>, float }, ptr %86, i32 0, i32 1
  %375 = load float, ptr %374, align 4
  %376 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %373, float %375, float noundef %371)
  %377 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %85, i32 0, i32 0
  store { <2 x float>, float } %376, ptr %87, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %377, ptr align 8 %87, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %88, ptr align 4 %81, i64 12, i1 false)
  %378 = getelementptr inbounds nuw { <2 x float>, float }, ptr %88, i32 0, i32 0
  %379 = load <2 x float>, ptr %378, align 4
  %380 = getelementptr inbounds nuw { <2 x float>, float }, ptr %88, i32 0, i32 1
  %381 = load float, ptr %380, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %89, ptr align 4 %85, i64 12, i1 false)
  %382 = getelementptr inbounds nuw { <2 x float>, float }, ptr %89, i32 0, i32 0
  %383 = load <2 x float>, ptr %382, align 4
  %384 = getelementptr inbounds nuw { <2 x float>, float }, ptr %89, i32 0, i32 1
  %385 = load float, ptr %384, align 4
  %386 = call { <2 x float>, float } @HMM_AddV3(<2 x float> %379, float %381, <2 x float> %383, float %385)
  %387 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %80, i32 0, i32 0
  store { <2 x float>, float } %386, ptr %90, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %387, ptr align 8 %90, i64 12, i1 false)
  %388 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 3
  %389 = getelementptr inbounds nuw %struct.anon.10, ptr %388, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %91, ptr align 8 %389, i64 12, i1 false)
  %390 = getelementptr inbounds nuw { <2 x float>, float }, ptr %91, i32 0, i32 0
  %391 = load <2 x float>, ptr %390, align 8
  %392 = getelementptr inbounds nuw { <2 x float>, float }, ptr %91, i32 0, i32 1
  %393 = load float, ptr %392, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %92, ptr align 4 %3, i64 12, i1 false)
  %394 = getelementptr inbounds nuw { <2 x float>, float }, ptr %92, i32 0, i32 0
  %395 = load <2 x float>, ptr %394, align 4
  %396 = getelementptr inbounds nuw { <2 x float>, float }, ptr %92, i32 0, i32 1
  %397 = load float, ptr %396, align 4
  %398 = call float @HMM_DotV3(<2 x float> %391, float %393, <2 x float> %395, float %397)
  %399 = fneg float %398
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %93, ptr align 4 %80, i64 12, i1 false)
  %400 = getelementptr inbounds nuw { <2 x float>, float }, ptr %93, i32 0, i32 0
  %401 = load <2 x float>, ptr %400, align 4
  %402 = getelementptr inbounds nuw { <2 x float>, float }, ptr %93, i32 0, i32 1
  %403 = load float, ptr %402, align 4
  %404 = call { <2 x float>, <2 x float> } @HMM_V4V(<2 x float> %401, float %403, float noundef %399)
  %405 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %79, i32 0, i32 0
  %406 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %405, i32 0, i32 0
  %407 = extractvalue { <2 x float>, <2 x float> } %404, 0
  store <2 x float> %407, ptr %406, align 4
  %408 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %405, i32 0, i32 1
  %409 = extractvalue { <2 x float>, <2 x float> } %404, 1
  store <2 x float> %409, ptr %408, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %356, ptr align 4 %79, i64 16, i1 false)
  %410 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %48, i64 0, i64 3
  %411 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 2
  %412 = getelementptr inbounds nuw %struct.anon.10, ptr %411, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %97, ptr align 4 %11, i64 12, i1 false)
  %413 = getelementptr inbounds nuw { <2 x float>, float }, ptr %97, i32 0, i32 0
  %414 = load <2 x float>, ptr %413, align 4
  %415 = getelementptr inbounds nuw { <2 x float>, float }, ptr %97, i32 0, i32 1
  %416 = load float, ptr %415, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %98, ptr align 8 %412, i64 12, i1 false)
  %417 = getelementptr inbounds nuw { <2 x float>, float }, ptr %98, i32 0, i32 0
  %418 = load <2 x float>, ptr %417, align 8
  %419 = getelementptr inbounds nuw { <2 x float>, float }, ptr %98, i32 0, i32 1
  %420 = load float, ptr %419, align 8
  %421 = call { <2 x float>, float } @HMM_Cross(<2 x float> %414, float %416, <2 x float> %418, float %420)
  %422 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %96, i32 0, i32 0
  store { <2 x float>, float } %421, ptr %99, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %422, ptr align 8 %99, i64 12, i1 false)
  %423 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 2
  %424 = getelementptr inbounds nuw %struct.anon.10, ptr %423, i32 0, i32 1
  %425 = load float, ptr %424, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %101, ptr align 4 %3, i64 12, i1 false)
  %426 = getelementptr inbounds nuw { <2 x float>, float }, ptr %101, i32 0, i32 0
  %427 = load <2 x float>, ptr %426, align 4
  %428 = getelementptr inbounds nuw { <2 x float>, float }, ptr %101, i32 0, i32 1
  %429 = load float, ptr %428, align 4
  %430 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %427, float %429, float noundef %425)
  %431 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %100, i32 0, i32 0
  store { <2 x float>, float } %430, ptr %102, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %431, ptr align 8 %102, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %103, ptr align 4 %96, i64 12, i1 false)
  %432 = getelementptr inbounds nuw { <2 x float>, float }, ptr %103, i32 0, i32 0
  %433 = load <2 x float>, ptr %432, align 4
  %434 = getelementptr inbounds nuw { <2 x float>, float }, ptr %103, i32 0, i32 1
  %435 = load float, ptr %434, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %104, ptr align 4 %100, i64 12, i1 false)
  %436 = getelementptr inbounds nuw { <2 x float>, float }, ptr %104, i32 0, i32 0
  %437 = load <2 x float>, ptr %436, align 4
  %438 = getelementptr inbounds nuw { <2 x float>, float }, ptr %104, i32 0, i32 1
  %439 = load float, ptr %438, align 4
  %440 = call { <2 x float>, float } @HMM_SubV3(<2 x float> %433, float %435, <2 x float> %437, float %439)
  %441 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %95, i32 0, i32 0
  store { <2 x float>, float } %440, ptr %105, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %441, ptr align 8 %105, i64 12, i1 false)
  %442 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 2
  %443 = getelementptr inbounds nuw %struct.anon.10, ptr %442, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %106, ptr align 8 %443, i64 12, i1 false)
  %444 = getelementptr inbounds nuw { <2 x float>, float }, ptr %106, i32 0, i32 0
  %445 = load <2 x float>, ptr %444, align 8
  %446 = getelementptr inbounds nuw { <2 x float>, float }, ptr %106, i32 0, i32 1
  %447 = load float, ptr %446, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %107, ptr align 4 %3, i64 12, i1 false)
  %448 = getelementptr inbounds nuw { <2 x float>, float }, ptr %107, i32 0, i32 0
  %449 = load <2 x float>, ptr %448, align 4
  %450 = getelementptr inbounds nuw { <2 x float>, float }, ptr %107, i32 0, i32 1
  %451 = load float, ptr %450, align 4
  %452 = call float @HMM_DotV3(<2 x float> %445, float %447, <2 x float> %449, float %451)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %108, ptr align 4 %95, i64 12, i1 false)
  %453 = getelementptr inbounds nuw { <2 x float>, float }, ptr %108, i32 0, i32 0
  %454 = load <2 x float>, ptr %453, align 4
  %455 = getelementptr inbounds nuw { <2 x float>, float }, ptr %108, i32 0, i32 1
  %456 = load float, ptr %455, align 4
  %457 = call { <2 x float>, <2 x float> } @HMM_V4V(<2 x float> %454, float %456, float noundef %452)
  %458 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %94, i32 0, i32 0
  %459 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %458, i32 0, i32 0
  %460 = extractvalue { <2 x float>, <2 x float> } %457, 0
  store <2 x float> %460, ptr %459, align 4
  %461 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %458, i32 0, i32 1
  %462 = extractvalue { <2 x float>, <2 x float> } %457, 1
  store <2 x float> %462, ptr %461, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %410, ptr align 4 %94, i64 16, i1 false)
  call void @HMM_TransposeM4(ptr dead_on_unwind writable sret(%union.HMM_Mat4) align 4 %0, ptr noundef byval(%union.HMM_Mat4) align 8 %48)
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_Orthographic_RH(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) #0 {
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store float %1, ptr %8, align 4
  store float %2, ptr %9, align 4
  store float %3, ptr %10, align 4
  store float %4, ptr %11, align 4
  store float %5, ptr %12, align 4
  store float %6, ptr %13, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 64, i1 false)
  %14 = load float, ptr %9, align 4
  %15 = load float, ptr %8, align 4
  %16 = fsub float %14, %15
  %17 = fdiv float 2.000000e+00, %16
  %18 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %19 = getelementptr inbounds [4 x float], ptr %18, i64 0, i64 0
  store float %17, ptr %19, align 4
  %20 = load float, ptr %11, align 4
  %21 = load float, ptr %10, align 4
  %22 = fsub float %20, %21
  %23 = fdiv float 2.000000e+00, %22
  %24 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %25 = getelementptr inbounds [4 x float], ptr %24, i64 0, i64 1
  store float %23, ptr %25, align 4
  %26 = load float, ptr %12, align 4
  %27 = load float, ptr %13, align 4
  %28 = fsub float %26, %27
  %29 = fdiv float 2.000000e+00, %28
  %30 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %31 = getelementptr inbounds [4 x float], ptr %30, i64 0, i64 2
  store float %29, ptr %31, align 4
  %32 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %33 = getelementptr inbounds [4 x float], ptr %32, i64 0, i64 3
  store float 1.000000e+00, ptr %33, align 4
  %34 = load float, ptr %8, align 4
  %35 = load float, ptr %9, align 4
  %36 = fadd float %34, %35
  %37 = load float, ptr %8, align 4
  %38 = load float, ptr %9, align 4
  %39 = fsub float %37, %38
  %40 = fdiv float %36, %39
  %41 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %42 = getelementptr inbounds [4 x float], ptr %41, i64 0, i64 0
  store float %40, ptr %42, align 4
  %43 = load float, ptr %10, align 4
  %44 = load float, ptr %11, align 4
  %45 = fadd float %43, %44
  %46 = load float, ptr %10, align 4
  %47 = load float, ptr %11, align 4
  %48 = fsub float %46, %47
  %49 = fdiv float %45, %48
  %50 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %51 = getelementptr inbounds [4 x float], ptr %50, i64 0, i64 1
  store float %49, ptr %51, align 4
  %52 = load float, ptr %12, align 4
  %53 = load float, ptr %13, align 4
  %54 = fadd float %52, %53
  %55 = load float, ptr %12, align 4
  %56 = load float, ptr %13, align 4
  %57 = fsub float %55, %56
  %58 = fdiv float %54, %57
  %59 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %60 = getelementptr inbounds [4 x float], ptr %59, i64 0, i64 2
  store float %58, ptr %60, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_InvOrthographic(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0, ptr noundef byval(%union.HMM_Mat4) align 8 %1) #0 {
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 64, i1 false)
  %3 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 0
  %4 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 0
  %5 = load float, ptr %4, align 8
  %6 = fdiv float 1.000000e+00, %5
  %7 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %8 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 0
  store float %6, ptr %8, align 4
  %9 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 1
  %10 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 1
  %11 = load float, ptr %10, align 4
  %12 = fdiv float 1.000000e+00, %11
  %13 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %14 = getelementptr inbounds [4 x float], ptr %13, i64 0, i64 1
  store float %12, ptr %14, align 4
  %15 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 2
  %16 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 2
  %17 = load float, ptr %16, align 8
  %18 = fdiv float 1.000000e+00, %17
  %19 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %20 = getelementptr inbounds [4 x float], ptr %19, i64 0, i64 2
  store float %18, ptr %20, align 4
  %21 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %22 = getelementptr inbounds [4 x float], ptr %21, i64 0, i64 3
  store float 1.000000e+00, ptr %22, align 4
  %23 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 3
  %24 = getelementptr inbounds [4 x float], ptr %23, i64 0, i64 0
  %25 = load float, ptr %24, align 8
  %26 = fneg float %25
  %27 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %28 = getelementptr inbounds [4 x float], ptr %27, i64 0, i64 0
  %29 = load float, ptr %28, align 4
  %30 = fmul float %26, %29
  %31 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %32 = getelementptr inbounds [4 x float], ptr %31, i64 0, i64 0
  store float %30, ptr %32, align 4
  %33 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 3
  %34 = getelementptr inbounds [4 x float], ptr %33, i64 0, i64 1
  %35 = load float, ptr %34, align 4
  %36 = fneg float %35
  %37 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %38 = getelementptr inbounds [4 x float], ptr %37, i64 0, i64 1
  %39 = load float, ptr %38, align 4
  %40 = fmul float %36, %39
  %41 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %42 = getelementptr inbounds [4 x float], ptr %41, i64 0, i64 1
  store float %40, ptr %42, align 4
  %43 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 3
  %44 = getelementptr inbounds [4 x float], ptr %43, i64 0, i64 2
  %45 = load float, ptr %44, align 8
  %46 = fneg float %45
  %47 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %48 = getelementptr inbounds [4 x float], ptr %47, i64 0, i64 2
  %49 = load float, ptr %48, align 4
  %50 = fmul float %46, %49
  %51 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %52 = getelementptr inbounds [4 x float], ptr %51, i64 0, i64 2
  store float %50, ptr %52, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_Perspective(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store float %1, ptr %6, align 4
  store float %2, ptr %7, align 4
  store float %3, ptr %8, align 4
  store float %4, ptr %9, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 64, i1 false)
  %11 = load float, ptr %6, align 4
  %12 = fdiv float %11, 2.000000e+00
  %13 = call float @HMM_TanF(float noundef %12)
  %14 = fdiv float 1.000000e+00, %13
  store float %14, ptr %10, align 4
  %15 = load float, ptr %10, align 4
  %16 = load float, ptr %7, align 4
  %17 = fdiv float %15, %16
  %18 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %19 = getelementptr inbounds [4 x float], ptr %18, i64 0, i64 0
  store float %17, ptr %19, align 4
  %20 = load float, ptr %10, align 4
  %21 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %22 = getelementptr inbounds [4 x float], ptr %21, i64 0, i64 1
  store float %20, ptr %22, align 4
  %23 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %24 = getelementptr inbounds [4 x float], ptr %23, i64 0, i64 3
  store float -1.000000e+00, ptr %24, align 4
  %25 = load float, ptr %8, align 4
  %26 = load float, ptr %9, align 4
  %27 = fadd float %25, %26
  %28 = load float, ptr %8, align 4
  %29 = load float, ptr %9, align 4
  %30 = fsub float %28, %29
  %31 = fdiv float %27, %30
  %32 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %33 = getelementptr inbounds [4 x float], ptr %32, i64 0, i64 2
  store float %31, ptr %33, align 4
  %34 = load float, ptr %8, align 4
  %35 = fmul float 2.000000e+00, %34
  %36 = load float, ptr %9, align 4
  %37 = fmul float %35, %36
  %38 = load float, ptr %8, align 4
  %39 = load float, ptr %9, align 4
  %40 = fsub float %38, %39
  %41 = fdiv float %37, %40
  %42 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %43 = getelementptr inbounds [4 x float], ptr %42, i64 0, i64 2
  store float %41, ptr %43, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_InvPerspective(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0, ptr noundef byval(%union.HMM_Mat4) align 8 %1) #0 {
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 64, i1 false)
  %3 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 0
  %4 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 0
  %5 = load float, ptr %4, align 8
  %6 = fdiv float 1.000000e+00, %5
  %7 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %8 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 0
  store float %6, ptr %8, align 4
  %9 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 1
  %10 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 1
  %11 = load float, ptr %10, align 4
  %12 = fdiv float 1.000000e+00, %11
  %13 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %14 = getelementptr inbounds [4 x float], ptr %13, i64 0, i64 1
  store float %12, ptr %14, align 4
  %15 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %16 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 2
  store float 0.000000e+00, ptr %16, align 4
  %17 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 3
  %18 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 2
  %19 = load float, ptr %18, align 8
  %20 = fdiv float 1.000000e+00, %19
  %21 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %22 = getelementptr inbounds [4 x float], ptr %21, i64 0, i64 3
  store float %20, ptr %22, align 4
  %23 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 2
  %24 = getelementptr inbounds [4 x float], ptr %23, i64 0, i64 2
  %25 = load float, ptr %24, align 8
  %26 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %27 = getelementptr inbounds [4 x float], ptr %26, i64 0, i64 3
  %28 = load float, ptr %27, align 4
  %29 = fmul float %25, %28
  %30 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %31 = getelementptr inbounds [4 x float], ptr %30, i64 0, i64 3
  store float %29, ptr %31, align 4
  %32 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 2
  %33 = getelementptr inbounds [4 x float], ptr %32, i64 0, i64 3
  %34 = load float, ptr %33, align 4
  %35 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %36 = getelementptr inbounds [4 x float], ptr %35, i64 0, i64 2
  store float %34, ptr %36, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_Translate(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0, <2 x float> %1, float %2) #3 {
  %4 = alloca %union.HMM_Vec3, align 4
  %5 = alloca { <2 x float>, float }, align 4
  %6 = getelementptr inbounds nuw { <2 x float>, float }, ptr %5, i32 0, i32 0
  store <2 x float> %1, ptr %6, align 4
  %7 = getelementptr inbounds nuw { <2 x float>, float }, ptr %5, i32 0, i32 1
  store float %2, ptr %7, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 4 %5, i64 12, i1 false)
  call void @HMM_M4D(ptr dead_on_unwind writable sret(%union.HMM_Mat4) align 4 %0, float noundef 1.000000e+00)
  %8 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 0
  %9 = load float, ptr %8, align 4
  %10 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %11 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 0
  store float %9, ptr %11, align 4
  %12 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 1
  %13 = load float, ptr %12, align 4
  %14 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %15 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 1
  store float %13, ptr %15, align 4
  %16 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 2
  %17 = load float, ptr %16, align 4
  %18 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %19 = getelementptr inbounds [4 x float], ptr %18, i64 0, i64 2
  store float %17, ptr %19, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_InvTranslate(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0, ptr noundef byval(%union.HMM_Mat4) align 8 %1) #0 {
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 8 %1, i64 64, i1 false)
  %3 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %4 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 0
  %5 = load float, ptr %4, align 4
  %6 = fneg float %5
  %7 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %8 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 0
  store float %6, ptr %8, align 4
  %9 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %10 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 1
  %11 = load float, ptr %10, align 4
  %12 = fneg float %11
  %13 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %14 = getelementptr inbounds [4 x float], ptr %13, i64 0, i64 1
  store float %12, ptr %14, align 4
  %15 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %16 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 2
  %17 = load float, ptr %16, align 4
  %18 = fneg float %17
  %19 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %20 = getelementptr inbounds [4 x float], ptr %19, i64 0, i64 2
  store float %18, ptr %20, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_Rotate(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0, float noundef %1, <2 x float> %2, float %3) #3 {
  %5 = alloca %union.HMM_Vec3, align 4
  %6 = alloca { <2 x float>, float }, align 4
  %7 = alloca float, align 4
  %8 = alloca %union.HMM_Vec3, align 4
  %9 = alloca { <2 x float>, float }, align 4
  %10 = alloca { <2 x float>, float }, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = getelementptr inbounds nuw { <2 x float>, float }, ptr %6, i32 0, i32 0
  store <2 x float> %2, ptr %14, align 4
  %15 = getelementptr inbounds nuw { <2 x float>, float }, ptr %6, i32 0, i32 1
  store float %3, ptr %15, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %6, i64 12, i1 false)
  store float %1, ptr %7, align 4
  call void @HMM_M4D(ptr dead_on_unwind writable sret(%union.HMM_Mat4) align 4 %0, float noundef 1.000000e+00)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 4 %5, i64 12, i1 false)
  %16 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 0
  %17 = load <2 x float>, ptr %16, align 4
  %18 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 1
  %19 = load float, ptr %18, align 4
  %20 = call { <2 x float>, float } @HMM_NormV3(<2 x float> %17, float %19)
  %21 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %8, i32 0, i32 0
  store { <2 x float>, float } %20, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %21, ptr align 8 %10, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %8, i64 12, i1 false)
  %22 = load float, ptr %7, align 4
  %23 = call float @HMM_SinF(float noundef %22)
  store float %23, ptr %11, align 4
  %24 = load float, ptr %7, align 4
  %25 = call float @HMM_CosF(float noundef %24)
  store float %25, ptr %12, align 4
  %26 = load float, ptr %12, align 4
  %27 = fsub float 1.000000e+00, %26
  store float %27, ptr %13, align 4
  %28 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 0
  %29 = load float, ptr %28, align 4
  %30 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 0
  %31 = load float, ptr %30, align 4
  %32 = fmul float %29, %31
  %33 = load float, ptr %13, align 4
  %34 = load float, ptr %12, align 4
  %35 = call float @llvm.fmuladd.f32(float %32, float %33, float %34)
  %36 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %37 = getelementptr inbounds [4 x float], ptr %36, i64 0, i64 0
  store float %35, ptr %37, align 4
  %38 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 0
  %39 = load float, ptr %38, align 4
  %40 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 1
  %41 = load float, ptr %40, align 4
  %42 = fmul float %39, %41
  %43 = load float, ptr %13, align 4
  %44 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 2
  %45 = load float, ptr %44, align 4
  %46 = load float, ptr %11, align 4
  %47 = fmul float %45, %46
  %48 = call float @llvm.fmuladd.f32(float %42, float %43, float %47)
  %49 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %50 = getelementptr inbounds [4 x float], ptr %49, i64 0, i64 1
  store float %48, ptr %50, align 4
  %51 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 0
  %52 = load float, ptr %51, align 4
  %53 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 2
  %54 = load float, ptr %53, align 4
  %55 = fmul float %52, %54
  %56 = load float, ptr %13, align 4
  %57 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 1
  %58 = load float, ptr %57, align 4
  %59 = load float, ptr %11, align 4
  %60 = fmul float %58, %59
  %61 = fneg float %60
  %62 = call float @llvm.fmuladd.f32(float %55, float %56, float %61)
  %63 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %64 = getelementptr inbounds [4 x float], ptr %63, i64 0, i64 2
  store float %62, ptr %64, align 4
  %65 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 1
  %66 = load float, ptr %65, align 4
  %67 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 0
  %68 = load float, ptr %67, align 4
  %69 = fmul float %66, %68
  %70 = load float, ptr %13, align 4
  %71 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 2
  %72 = load float, ptr %71, align 4
  %73 = load float, ptr %11, align 4
  %74 = fmul float %72, %73
  %75 = fneg float %74
  %76 = call float @llvm.fmuladd.f32(float %69, float %70, float %75)
  %77 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %78 = getelementptr inbounds [4 x float], ptr %77, i64 0, i64 0
  store float %76, ptr %78, align 4
  %79 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 1
  %80 = load float, ptr %79, align 4
  %81 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 1
  %82 = load float, ptr %81, align 4
  %83 = fmul float %80, %82
  %84 = load float, ptr %13, align 4
  %85 = load float, ptr %12, align 4
  %86 = call float @llvm.fmuladd.f32(float %83, float %84, float %85)
  %87 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %88 = getelementptr inbounds [4 x float], ptr %87, i64 0, i64 1
  store float %86, ptr %88, align 4
  %89 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 1
  %90 = load float, ptr %89, align 4
  %91 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 2
  %92 = load float, ptr %91, align 4
  %93 = fmul float %90, %92
  %94 = load float, ptr %13, align 4
  %95 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 0
  %96 = load float, ptr %95, align 4
  %97 = load float, ptr %11, align 4
  %98 = fmul float %96, %97
  %99 = call float @llvm.fmuladd.f32(float %93, float %94, float %98)
  %100 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %101 = getelementptr inbounds [4 x float], ptr %100, i64 0, i64 2
  store float %99, ptr %101, align 4
  %102 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 2
  %103 = load float, ptr %102, align 4
  %104 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 0
  %105 = load float, ptr %104, align 4
  %106 = fmul float %103, %105
  %107 = load float, ptr %13, align 4
  %108 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 1
  %109 = load float, ptr %108, align 4
  %110 = load float, ptr %11, align 4
  %111 = fmul float %109, %110
  %112 = call float @llvm.fmuladd.f32(float %106, float %107, float %111)
  %113 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %114 = getelementptr inbounds [4 x float], ptr %113, i64 0, i64 0
  store float %112, ptr %114, align 4
  %115 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 2
  %116 = load float, ptr %115, align 4
  %117 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 1
  %118 = load float, ptr %117, align 4
  %119 = fmul float %116, %118
  %120 = load float, ptr %13, align 4
  %121 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 0
  %122 = load float, ptr %121, align 4
  %123 = load float, ptr %11, align 4
  %124 = fmul float %122, %123
  %125 = fneg float %124
  %126 = call float @llvm.fmuladd.f32(float %119, float %120, float %125)
  %127 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %128 = getelementptr inbounds [4 x float], ptr %127, i64 0, i64 1
  store float %126, ptr %128, align 4
  %129 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 2
  %130 = load float, ptr %129, align 4
  %131 = getelementptr inbounds nuw %struct.anon.3, ptr %5, i32 0, i32 2
  %132 = load float, ptr %131, align 4
  %133 = fmul float %130, %132
  %134 = load float, ptr %13, align 4
  %135 = load float, ptr %12, align 4
  %136 = call float @llvm.fmuladd.f32(float %133, float %134, float %135)
  %137 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %138 = getelementptr inbounds [4 x float], ptr %137, i64 0, i64 2
  store float %136, ptr %138, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_InvRotate(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0, ptr noundef byval(%union.HMM_Mat4) align 8 %1) #0 {
  call void @HMM_TransposeM4(ptr dead_on_unwind writable sret(%union.HMM_Mat4) align 4 %0, ptr noundef byval(%union.HMM_Mat4) align 8 %1)
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_Scale(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0, <2 x float> %1, float %2) #3 {
  %4 = alloca %union.HMM_Vec3, align 4
  %5 = alloca { <2 x float>, float }, align 4
  %6 = getelementptr inbounds nuw { <2 x float>, float }, ptr %5, i32 0, i32 0
  store <2 x float> %1, ptr %6, align 4
  %7 = getelementptr inbounds nuw { <2 x float>, float }, ptr %5, i32 0, i32 1
  store float %2, ptr %7, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 4 %5, i64 12, i1 false)
  call void @HMM_M4D(ptr dead_on_unwind writable sret(%union.HMM_Mat4) align 4 %0, float noundef 1.000000e+00)
  %8 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 0
  %9 = load float, ptr %8, align 4
  %10 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %11 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 0
  store float %9, ptr %11, align 4
  %12 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 1
  %13 = load float, ptr %12, align 4
  %14 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %15 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 1
  store float %13, ptr %15, align 4
  %16 = getelementptr inbounds nuw %struct.anon.3, ptr %4, i32 0, i32 2
  %17 = load float, ptr %16, align 4
  %18 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %19 = getelementptr inbounds [4 x float], ptr %18, i64 0, i64 2
  store float %17, ptr %19, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_InvScale(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0, ptr noundef byval(%union.HMM_Mat4) align 8 %1) #0 {
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 8 %1, i64 64, i1 false)
  %3 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %4 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 0
  %5 = load float, ptr %4, align 4
  %6 = fdiv float 1.000000e+00, %5
  %7 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %8 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 0
  store float %6, ptr %8, align 4
  %9 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %10 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 1
  %11 = load float, ptr %10, align 4
  %12 = fdiv float 1.000000e+00, %11
  %13 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %14 = getelementptr inbounds [4 x float], ptr %13, i64 0, i64 1
  store float %12, ptr %14, align 4
  %15 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %16 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 2
  %17 = load float, ptr %16, align 4
  %18 = fdiv float 1.000000e+00, %17
  %19 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %20 = getelementptr inbounds [4 x float], ptr %19, i64 0, i64 2
  store float %18, ptr %20, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @_HMM_LookAt(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0, <2 x float> %1, float %2, <2 x float> %3, float %4, <2 x float> %5, float %6, <2 x float> %7, float %8) #3 {
  %10 = alloca %union.HMM_Vec3, align 4
  %11 = alloca { <2 x float>, float }, align 4
  %12 = alloca %union.HMM_Vec3, align 4
  %13 = alloca { <2 x float>, float }, align 4
  %14 = alloca %union.HMM_Vec3, align 4
  %15 = alloca { <2 x float>, float }, align 4
  %16 = alloca %union.HMM_Vec3, align 4
  %17 = alloca { <2 x float>, float }, align 4
  %18 = alloca { <2 x float>, float }, align 4
  %19 = alloca { <2 x float>, float }, align 4
  %20 = alloca { <2 x float>, float }, align 4
  %21 = alloca { <2 x float>, float }, align 4
  %22 = alloca { <2 x float>, float }, align 4
  %23 = alloca { <2 x float>, float }, align 4
  %24 = getelementptr inbounds nuw { <2 x float>, float }, ptr %11, i32 0, i32 0
  store <2 x float> %1, ptr %24, align 4
  %25 = getelementptr inbounds nuw { <2 x float>, float }, ptr %11, i32 0, i32 1
  store float %2, ptr %25, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 4 %11, i64 12, i1 false)
  %26 = getelementptr inbounds nuw { <2 x float>, float }, ptr %13, i32 0, i32 0
  store <2 x float> %3, ptr %26, align 4
  %27 = getelementptr inbounds nuw { <2 x float>, float }, ptr %13, i32 0, i32 1
  store float %4, ptr %27, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %12, ptr align 4 %13, i64 12, i1 false)
  %28 = getelementptr inbounds nuw { <2 x float>, float }, ptr %15, i32 0, i32 0
  store <2 x float> %5, ptr %28, align 4
  %29 = getelementptr inbounds nuw { <2 x float>, float }, ptr %15, i32 0, i32 1
  store float %6, ptr %29, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr align 4 %15, i64 12, i1 false)
  %30 = getelementptr inbounds nuw { <2 x float>, float }, ptr %17, i32 0, i32 0
  store <2 x float> %7, ptr %30, align 4
  %31 = getelementptr inbounds nuw { <2 x float>, float }, ptr %17, i32 0, i32 1
  store float %8, ptr %31, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %16, ptr align 4 %17, i64 12, i1 false)
  %32 = getelementptr inbounds nuw %struct.anon.3, ptr %12, i32 0, i32 0
  %33 = load float, ptr %32, align 4
  %34 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %35 = getelementptr inbounds [4 x float], ptr %34, i64 0, i64 0
  store float %33, ptr %35, align 4
  %36 = getelementptr inbounds nuw %struct.anon.3, ptr %14, i32 0, i32 0
  %37 = load float, ptr %36, align 4
  %38 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %39 = getelementptr inbounds [4 x float], ptr %38, i64 0, i64 1
  store float %37, ptr %39, align 4
  %40 = getelementptr inbounds nuw %struct.anon.3, ptr %10, i32 0, i32 0
  %41 = load float, ptr %40, align 4
  %42 = fneg float %41
  %43 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %44 = getelementptr inbounds [4 x float], ptr %43, i64 0, i64 2
  store float %42, ptr %44, align 4
  %45 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %46 = getelementptr inbounds [4 x float], ptr %45, i64 0, i64 3
  store float 0.000000e+00, ptr %46, align 4
  %47 = getelementptr inbounds nuw %struct.anon.3, ptr %12, i32 0, i32 1
  %48 = load float, ptr %47, align 4
  %49 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %50 = getelementptr inbounds [4 x float], ptr %49, i64 0, i64 0
  store float %48, ptr %50, align 4
  %51 = getelementptr inbounds nuw %struct.anon.3, ptr %14, i32 0, i32 1
  %52 = load float, ptr %51, align 4
  %53 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %54 = getelementptr inbounds [4 x float], ptr %53, i64 0, i64 1
  store float %52, ptr %54, align 4
  %55 = getelementptr inbounds nuw %struct.anon.3, ptr %10, i32 0, i32 1
  %56 = load float, ptr %55, align 4
  %57 = fneg float %56
  %58 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %59 = getelementptr inbounds [4 x float], ptr %58, i64 0, i64 2
  store float %57, ptr %59, align 4
  %60 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %61 = getelementptr inbounds [4 x float], ptr %60, i64 0, i64 3
  store float 0.000000e+00, ptr %61, align 4
  %62 = getelementptr inbounds nuw %struct.anon.3, ptr %12, i32 0, i32 2
  %63 = load float, ptr %62, align 4
  %64 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %65 = getelementptr inbounds [4 x float], ptr %64, i64 0, i64 0
  store float %63, ptr %65, align 4
  %66 = getelementptr inbounds nuw %struct.anon.3, ptr %14, i32 0, i32 2
  %67 = load float, ptr %66, align 4
  %68 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %69 = getelementptr inbounds [4 x float], ptr %68, i64 0, i64 1
  store float %67, ptr %69, align 4
  %70 = getelementptr inbounds nuw %struct.anon.3, ptr %10, i32 0, i32 2
  %71 = load float, ptr %70, align 4
  %72 = fneg float %71
  %73 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %74 = getelementptr inbounds [4 x float], ptr %73, i64 0, i64 2
  store float %72, ptr %74, align 4
  %75 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %76 = getelementptr inbounds [4 x float], ptr %75, i64 0, i64 3
  store float 0.000000e+00, ptr %76, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %18, ptr align 4 %12, i64 12, i1 false)
  %77 = getelementptr inbounds nuw { <2 x float>, float }, ptr %18, i32 0, i32 0
  %78 = load <2 x float>, ptr %77, align 4
  %79 = getelementptr inbounds nuw { <2 x float>, float }, ptr %18, i32 0, i32 1
  %80 = load float, ptr %79, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %19, ptr align 4 %16, i64 12, i1 false)
  %81 = getelementptr inbounds nuw { <2 x float>, float }, ptr %19, i32 0, i32 0
  %82 = load <2 x float>, ptr %81, align 4
  %83 = getelementptr inbounds nuw { <2 x float>, float }, ptr %19, i32 0, i32 1
  %84 = load float, ptr %83, align 4
  %85 = call float @HMM_DotV3(<2 x float> %78, float %80, <2 x float> %82, float %84)
  %86 = fneg float %85
  %87 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %88 = getelementptr inbounds [4 x float], ptr %87, i64 0, i64 0
  store float %86, ptr %88, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %20, ptr align 4 %14, i64 12, i1 false)
  %89 = getelementptr inbounds nuw { <2 x float>, float }, ptr %20, i32 0, i32 0
  %90 = load <2 x float>, ptr %89, align 4
  %91 = getelementptr inbounds nuw { <2 x float>, float }, ptr %20, i32 0, i32 1
  %92 = load float, ptr %91, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %21, ptr align 4 %16, i64 12, i1 false)
  %93 = getelementptr inbounds nuw { <2 x float>, float }, ptr %21, i32 0, i32 0
  %94 = load <2 x float>, ptr %93, align 4
  %95 = getelementptr inbounds nuw { <2 x float>, float }, ptr %21, i32 0, i32 1
  %96 = load float, ptr %95, align 4
  %97 = call float @HMM_DotV3(<2 x float> %90, float %92, <2 x float> %94, float %96)
  %98 = fneg float %97
  %99 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %100 = getelementptr inbounds [4 x float], ptr %99, i64 0, i64 1
  store float %98, ptr %100, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %22, ptr align 4 %10, i64 12, i1 false)
  %101 = getelementptr inbounds nuw { <2 x float>, float }, ptr %22, i32 0, i32 0
  %102 = load <2 x float>, ptr %101, align 4
  %103 = getelementptr inbounds nuw { <2 x float>, float }, ptr %22, i32 0, i32 1
  %104 = load float, ptr %103, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %23, ptr align 4 %16, i64 12, i1 false)
  %105 = getelementptr inbounds nuw { <2 x float>, float }, ptr %23, i32 0, i32 0
  %106 = load <2 x float>, ptr %105, align 4
  %107 = getelementptr inbounds nuw { <2 x float>, float }, ptr %23, i32 0, i32 1
  %108 = load float, ptr %107, align 4
  %109 = call float @HMM_DotV3(<2 x float> %102, float %104, <2 x float> %106, float %108)
  %110 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %111 = getelementptr inbounds [4 x float], ptr %110, i64 0, i64 2
  store float %109, ptr %111, align 4
  %112 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %113 = getelementptr inbounds [4 x float], ptr %112, i64 0, i64 3
  store float 1.000000e+00, ptr %113, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_LookAt(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0, <2 x float> %1, float %2, <2 x float> %3, float %4, <2 x float> %5, float %6) #3 {
  %8 = alloca %union.HMM_Vec3, align 4
  %9 = alloca { <2 x float>, float }, align 4
  %10 = alloca %union.HMM_Vec3, align 4
  %11 = alloca { <2 x float>, float }, align 4
  %12 = alloca %union.HMM_Vec3, align 4
  %13 = alloca { <2 x float>, float }, align 4
  %14 = alloca %union.HMM_Vec3, align 4
  %15 = alloca %union.HMM_Vec3, align 4
  %16 = alloca { <2 x float>, float }, align 4
  %17 = alloca { <2 x float>, float }, align 4
  %18 = alloca { <2 x float>, float }, align 8
  %19 = alloca { <2 x float>, float }, align 4
  %20 = alloca { <2 x float>, float }, align 8
  %21 = alloca %union.HMM_Vec3, align 4
  %22 = alloca %union.HMM_Vec3, align 4
  %23 = alloca { <2 x float>, float }, align 4
  %24 = alloca { <2 x float>, float }, align 4
  %25 = alloca { <2 x float>, float }, align 8
  %26 = alloca { <2 x float>, float }, align 4
  %27 = alloca { <2 x float>, float }, align 8
  %28 = alloca %union.HMM_Vec3, align 4
  %29 = alloca { <2 x float>, float }, align 4
  %30 = alloca { <2 x float>, float }, align 4
  %31 = alloca { <2 x float>, float }, align 8
  %32 = alloca { <2 x float>, float }, align 4
  %33 = alloca { <2 x float>, float }, align 4
  %34 = alloca { <2 x float>, float }, align 4
  %35 = alloca { <2 x float>, float }, align 4
  %36 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 0
  store <2 x float> %1, ptr %36, align 4
  %37 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 1
  store float %2, ptr %37, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %9, i64 12, i1 false)
  %38 = getelementptr inbounds nuw { <2 x float>, float }, ptr %11, i32 0, i32 0
  store <2 x float> %3, ptr %38, align 4
  %39 = getelementptr inbounds nuw { <2 x float>, float }, ptr %11, i32 0, i32 1
  store float %4, ptr %39, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 4 %11, i64 12, i1 false)
  %40 = getelementptr inbounds nuw { <2 x float>, float }, ptr %13, i32 0, i32 0
  store <2 x float> %5, ptr %40, align 4
  %41 = getelementptr inbounds nuw { <2 x float>, float }, ptr %13, i32 0, i32 1
  store float %6, ptr %41, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %12, ptr align 4 %13, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %16, ptr align 4 %10, i64 12, i1 false)
  %42 = getelementptr inbounds nuw { <2 x float>, float }, ptr %16, i32 0, i32 0
  %43 = load <2 x float>, ptr %42, align 4
  %44 = getelementptr inbounds nuw { <2 x float>, float }, ptr %16, i32 0, i32 1
  %45 = load float, ptr %44, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %17, ptr align 4 %8, i64 12, i1 false)
  %46 = getelementptr inbounds nuw { <2 x float>, float }, ptr %17, i32 0, i32 0
  %47 = load <2 x float>, ptr %46, align 4
  %48 = getelementptr inbounds nuw { <2 x float>, float }, ptr %17, i32 0, i32 1
  %49 = load float, ptr %48, align 4
  %50 = call { <2 x float>, float } @HMM_SubV3(<2 x float> %43, float %45, <2 x float> %47, float %49)
  %51 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %15, i32 0, i32 0
  store { <2 x float>, float } %50, ptr %18, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %51, ptr align 8 %18, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %19, ptr align 4 %15, i64 12, i1 false)
  %52 = getelementptr inbounds nuw { <2 x float>, float }, ptr %19, i32 0, i32 0
  %53 = load <2 x float>, ptr %52, align 4
  %54 = getelementptr inbounds nuw { <2 x float>, float }, ptr %19, i32 0, i32 1
  %55 = load float, ptr %54, align 4
  %56 = call { <2 x float>, float } @HMM_NormV3(<2 x float> %53, float %55)
  %57 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %14, i32 0, i32 0
  store { <2 x float>, float } %56, ptr %20, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %57, ptr align 8 %20, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %23, ptr align 4 %14, i64 12, i1 false)
  %58 = getelementptr inbounds nuw { <2 x float>, float }, ptr %23, i32 0, i32 0
  %59 = load <2 x float>, ptr %58, align 4
  %60 = getelementptr inbounds nuw { <2 x float>, float }, ptr %23, i32 0, i32 1
  %61 = load float, ptr %60, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %24, ptr align 4 %12, i64 12, i1 false)
  %62 = getelementptr inbounds nuw { <2 x float>, float }, ptr %24, i32 0, i32 0
  %63 = load <2 x float>, ptr %62, align 4
  %64 = getelementptr inbounds nuw { <2 x float>, float }, ptr %24, i32 0, i32 1
  %65 = load float, ptr %64, align 4
  %66 = call { <2 x float>, float } @HMM_Cross(<2 x float> %59, float %61, <2 x float> %63, float %65)
  %67 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %22, i32 0, i32 0
  store { <2 x float>, float } %66, ptr %25, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %67, ptr align 8 %25, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %26, ptr align 4 %22, i64 12, i1 false)
  %68 = getelementptr inbounds nuw { <2 x float>, float }, ptr %26, i32 0, i32 0
  %69 = load <2 x float>, ptr %68, align 4
  %70 = getelementptr inbounds nuw { <2 x float>, float }, ptr %26, i32 0, i32 1
  %71 = load float, ptr %70, align 4
  %72 = call { <2 x float>, float } @HMM_NormV3(<2 x float> %69, float %71)
  %73 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %21, i32 0, i32 0
  store { <2 x float>, float } %72, ptr %27, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %73, ptr align 8 %27, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %29, ptr align 4 %21, i64 12, i1 false)
  %74 = getelementptr inbounds nuw { <2 x float>, float }, ptr %29, i32 0, i32 0
  %75 = load <2 x float>, ptr %74, align 4
  %76 = getelementptr inbounds nuw { <2 x float>, float }, ptr %29, i32 0, i32 1
  %77 = load float, ptr %76, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %30, ptr align 4 %14, i64 12, i1 false)
  %78 = getelementptr inbounds nuw { <2 x float>, float }, ptr %30, i32 0, i32 0
  %79 = load <2 x float>, ptr %78, align 4
  %80 = getelementptr inbounds nuw { <2 x float>, float }, ptr %30, i32 0, i32 1
  %81 = load float, ptr %80, align 4
  %82 = call { <2 x float>, float } @HMM_Cross(<2 x float> %75, float %77, <2 x float> %79, float %81)
  %83 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %28, i32 0, i32 0
  store { <2 x float>, float } %82, ptr %31, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %83, ptr align 8 %31, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %32, ptr align 4 %14, i64 12, i1 false)
  %84 = getelementptr inbounds nuw { <2 x float>, float }, ptr %32, i32 0, i32 0
  %85 = load <2 x float>, ptr %84, align 4
  %86 = getelementptr inbounds nuw { <2 x float>, float }, ptr %32, i32 0, i32 1
  %87 = load float, ptr %86, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %33, ptr align 4 %21, i64 12, i1 false)
  %88 = getelementptr inbounds nuw { <2 x float>, float }, ptr %33, i32 0, i32 0
  %89 = load <2 x float>, ptr %88, align 4
  %90 = getelementptr inbounds nuw { <2 x float>, float }, ptr %33, i32 0, i32 1
  %91 = load float, ptr %90, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %34, ptr align 4 %28, i64 12, i1 false)
  %92 = getelementptr inbounds nuw { <2 x float>, float }, ptr %34, i32 0, i32 0
  %93 = load <2 x float>, ptr %92, align 4
  %94 = getelementptr inbounds nuw { <2 x float>, float }, ptr %34, i32 0, i32 1
  %95 = load float, ptr %94, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %35, ptr align 4 %8, i64 12, i1 false)
  %96 = getelementptr inbounds nuw { <2 x float>, float }, ptr %35, i32 0, i32 0
  %97 = load <2 x float>, ptr %96, align 4
  %98 = getelementptr inbounds nuw { <2 x float>, float }, ptr %35, i32 0, i32 1
  %99 = load float, ptr %98, align 4
  call void @_HMM_LookAt(ptr dead_on_unwind writable sret(%union.HMM_Mat4) align 4 %0, <2 x float> %85, float %87, <2 x float> %89, float %91, <2 x float> %93, float %95, <2 x float> %97, float %99)
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_InvLookAt(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0, ptr noundef byval(%union.HMM_Mat4) align 8 %1) #3 {
  %3 = alloca %union.HMM_Mat3, align 8
  %4 = alloca %union.HMM_Mat3, align 4
  %5 = alloca %union.HMM_Vec4, align 4
  %6 = alloca { <2 x float>, float }, align 4
  %7 = alloca %union.HMM_Vec4, align 4
  %8 = alloca { <2 x float>, float }, align 4
  %9 = alloca %union.HMM_Vec4, align 4
  %10 = alloca { <2 x float>, float }, align 4
  %11 = alloca %union.HMM_Vec4, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 36, i1 false)
  %12 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %3, i64 0, i64 0
  %13 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 0
  %14 = getelementptr inbounds nuw %struct.anon.10, ptr %13, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %12, ptr align 8 %14, i64 12, i1 false)
  %15 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %3, i64 0, i64 1
  %16 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 1
  %17 = getelementptr inbounds nuw %struct.anon.10, ptr %16, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %15, ptr align 8 %17, i64 12, i1 false)
  %18 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %3, i64 0, i64 2
  %19 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 2
  %20 = getelementptr inbounds nuw %struct.anon.10, ptr %19, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %18, ptr align 8 %20, i64 12, i1 false)
  call void @HMM_TransposeM3(ptr dead_on_unwind writable sret(%union.HMM_Mat3) align 4 %4, ptr noundef byval(%union.HMM_Mat3) align 8 %3)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %4, i64 36, i1 false)
  %21 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 0
  %22 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %3, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %22, i64 12, i1 false)
  %23 = getelementptr inbounds nuw { <2 x float>, float }, ptr %6, i32 0, i32 0
  %24 = load <2 x float>, ptr %23, align 4
  %25 = getelementptr inbounds nuw { <2 x float>, float }, ptr %6, i32 0, i32 1
  %26 = load float, ptr %25, align 4
  %27 = call { <2 x float>, <2 x float> } @HMM_V4V(<2 x float> %24, float %26, float noundef 0.000000e+00)
  %28 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %5, i32 0, i32 0
  %29 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %28, i32 0, i32 0
  %30 = extractvalue { <2 x float>, <2 x float> } %27, 0
  store <2 x float> %30, ptr %29, align 4
  %31 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %28, i32 0, i32 1
  %32 = extractvalue { <2 x float>, <2 x float> } %27, 1
  store <2 x float> %32, ptr %31, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %21, ptr align 4 %5, i64 16, i1 false)
  %33 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 1
  %34 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %3, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %34, i64 12, i1 false)
  %35 = getelementptr inbounds nuw { <2 x float>, float }, ptr %8, i32 0, i32 0
  %36 = load <2 x float>, ptr %35, align 4
  %37 = getelementptr inbounds nuw { <2 x float>, float }, ptr %8, i32 0, i32 1
  %38 = load float, ptr %37, align 4
  %39 = call { <2 x float>, <2 x float> } @HMM_V4V(<2 x float> %36, float %38, float noundef 0.000000e+00)
  %40 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %7, i32 0, i32 0
  %41 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %40, i32 0, i32 0
  %42 = extractvalue { <2 x float>, <2 x float> } %39, 0
  store <2 x float> %42, ptr %41, align 4
  %43 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %40, i32 0, i32 1
  %44 = extractvalue { <2 x float>, <2 x float> } %39, 1
  store <2 x float> %44, ptr %43, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %33, ptr align 4 %7, i64 16, i1 false)
  %45 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 2
  %46 = getelementptr inbounds [3 x %union.HMM_Vec3], ptr %3, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 4 %46, i64 12, i1 false)
  %47 = getelementptr inbounds nuw { <2 x float>, float }, ptr %10, i32 0, i32 0
  %48 = load <2 x float>, ptr %47, align 4
  %49 = getelementptr inbounds nuw { <2 x float>, float }, ptr %10, i32 0, i32 1
  %50 = load float, ptr %49, align 4
  %51 = call { <2 x float>, <2 x float> } @HMM_V4V(<2 x float> %48, float %50, float noundef 0.000000e+00)
  %52 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %9, i32 0, i32 0
  %53 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %52, i32 0, i32 0
  %54 = extractvalue { <2 x float>, <2 x float> } %51, 0
  store <2 x float> %54, ptr %53, align 4
  %55 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %52, i32 0, i32 1
  %56 = extractvalue { <2 x float>, <2 x float> } %51, 1
  store <2 x float> %56, ptr %55, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %45, ptr align 4 %9, i64 16, i1 false)
  %57 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %0, i64 0, i64 3
  %58 = getelementptr inbounds [4 x %union.HMM_Vec4], ptr %1, i64 0, i64 3
  %59 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %58, i32 0, i32 0
  %60 = load <2 x float>, ptr %59, align 8
  %61 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %58, i32 0, i32 1
  %62 = load <2 x float>, ptr %61, align 8
  %63 = call { <2 x float>, <2 x float> } @HMM_MulV4F(<2 x float> %60, <2 x float> %62, float noundef -1.000000e+00)
  %64 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %11, i32 0, i32 0
  %65 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %64, i32 0, i32 0
  %66 = extractvalue { <2 x float>, <2 x float> } %63, 0
  store <2 x float> %66, ptr %65, align 4
  %67 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %64, i32 0, i32 1
  %68 = extractvalue { <2 x float>, <2 x float> } %63, 1
  store <2 x float> %68, ptr %67, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %57, ptr align 4 %11, i64 16, i1 false)
  %69 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 3
  %70 = getelementptr inbounds [4 x float], ptr %69, i64 0, i64 0
  %71 = load float, ptr %70, align 8
  %72 = fmul float -1.000000e+00, %71
  %73 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 0
  %74 = getelementptr inbounds [3 x float], ptr %73, i64 0, i64 0
  %75 = load float, ptr %74, align 4
  %76 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 0
  %77 = getelementptr inbounds [3 x float], ptr %76, i64 0, i64 1
  %78 = load float, ptr %77, align 4
  %79 = fadd float %75, %78
  %80 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 0
  %81 = getelementptr inbounds [3 x float], ptr %80, i64 0, i64 2
  %82 = load float, ptr %81, align 4
  %83 = fadd float %79, %82
  %84 = fdiv float %72, %83
  %85 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %86 = getelementptr inbounds [4 x float], ptr %85, i64 0, i64 0
  store float %84, ptr %86, align 4
  %87 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 3
  %88 = getelementptr inbounds [4 x float], ptr %87, i64 0, i64 1
  %89 = load float, ptr %88, align 4
  %90 = fmul float -1.000000e+00, %89
  %91 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 1
  %92 = getelementptr inbounds [3 x float], ptr %91, i64 0, i64 0
  %93 = load float, ptr %92, align 4
  %94 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 1
  %95 = getelementptr inbounds [3 x float], ptr %94, i64 0, i64 1
  %96 = load float, ptr %95, align 4
  %97 = fadd float %93, %96
  %98 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 1
  %99 = getelementptr inbounds [3 x float], ptr %98, i64 0, i64 2
  %100 = load float, ptr %99, align 4
  %101 = fadd float %97, %100
  %102 = fdiv float %90, %101
  %103 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %104 = getelementptr inbounds [4 x float], ptr %103, i64 0, i64 1
  store float %102, ptr %104, align 4
  %105 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 3
  %106 = getelementptr inbounds [4 x float], ptr %105, i64 0, i64 2
  %107 = load float, ptr %106, align 8
  %108 = fmul float -1.000000e+00, %107
  %109 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2
  %110 = getelementptr inbounds [3 x float], ptr %109, i64 0, i64 0
  %111 = load float, ptr %110, align 4
  %112 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2
  %113 = getelementptr inbounds [3 x float], ptr %112, i64 0, i64 1
  %114 = load float, ptr %113, align 4
  %115 = fadd float %111, %114
  %116 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2
  %117 = getelementptr inbounds [3 x float], ptr %116, i64 0, i64 2
  %118 = load float, ptr %117, align 4
  %119 = fadd float %115, %118
  %120 = fdiv float %108, %119
  %121 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %122 = getelementptr inbounds [4 x float], ptr %121, i64 0, i64 2
  store float %120, ptr %122, align 4
  %123 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %124 = getelementptr inbounds [4 x float], ptr %123, i64 0, i64 3
  store float 1.000000e+00, ptr %124, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_Q(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #0 {
  %5 = alloca %union.HMM_Quat, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store float %0, ptr %6, align 4
  store float %1, ptr %7, align 4
  store float %2, ptr %8, align 4
  store float %3, ptr %9, align 4
  %10 = load float, ptr %6, align 4
  %11 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %12 = getelementptr inbounds nuw %struct.anon.20, ptr %11, i32 0, i32 0
  store float %10, ptr %12, align 4
  %13 = load float, ptr %7, align 4
  %14 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %15 = getelementptr inbounds nuw %struct.anon.20, ptr %14, i32 0, i32 1
  store float %13, ptr %15, align 4
  %16 = load float, ptr %8, align 4
  %17 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %18 = getelementptr inbounds nuw %struct.anon.20, ptr %17, i32 0, i32 2
  store float %16, ptr %18, align 4
  %19 = load float, ptr %9, align 4
  %20 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 1
  store float %19, ptr %20, align 4
  %21 = getelementptr inbounds nuw %union.HMM_Quat, ptr %5, i32 0, i32 0
  %22 = load { <2 x float>, <2 x float> }, ptr %21, align 4
  ret { <2 x float>, <2 x float> } %22
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_QV4(<2 x float> %0, <2 x float> %1) #3 {
  %3 = alloca %union.HMM_Quat, align 4
  %4 = alloca %union.HMM_Vec4, align 4
  %5 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 0
  store <2 x float> %0, ptr %5, align 4
  %6 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 1
  store <2 x float> %1, ptr %6, align 4
  %7 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 0
  %8 = getelementptr inbounds nuw %struct.anon.11, ptr %7, i32 0, i32 0
  %9 = load float, ptr %8, align 4
  %10 = getelementptr inbounds nuw %struct.anon.18, ptr %3, i32 0, i32 0
  %11 = getelementptr inbounds nuw %struct.anon.20, ptr %10, i32 0, i32 0
  store float %9, ptr %11, align 4
  %12 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 0
  %13 = getelementptr inbounds nuw %struct.anon.11, ptr %12, i32 0, i32 1
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds nuw %struct.anon.18, ptr %3, i32 0, i32 0
  %16 = getelementptr inbounds nuw %struct.anon.20, ptr %15, i32 0, i32 1
  store float %14, ptr %16, align 4
  %17 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 0
  %18 = getelementptr inbounds nuw %struct.anon.11, ptr %17, i32 0, i32 2
  %19 = load float, ptr %18, align 4
  %20 = getelementptr inbounds nuw %struct.anon.18, ptr %3, i32 0, i32 0
  %21 = getelementptr inbounds nuw %struct.anon.20, ptr %20, i32 0, i32 2
  store float %19, ptr %21, align 4
  %22 = getelementptr inbounds nuw %struct.anon.10, ptr %4, i32 0, i32 1
  %23 = load float, ptr %22, align 4
  %24 = getelementptr inbounds nuw %struct.anon.18, ptr %3, i32 0, i32 1
  store float %23, ptr %24, align 4
  %25 = getelementptr inbounds nuw %union.HMM_Quat, ptr %3, i32 0, i32 0
  %26 = load { <2 x float>, <2 x float> }, ptr %25, align 4
  ret { <2 x float>, <2 x float> } %26
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_AddQ(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) #3 {
  %5 = alloca %union.HMM_Quat, align 4
  %6 = alloca %union.HMM_Quat, align 4
  %7 = alloca %union.HMM_Quat, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 0
  store <2 x float> %0, ptr %8, align 4
  %9 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 1
  store <2 x float> %1, ptr %9, align 4
  %10 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 0
  store <2 x float> %2, ptr %10, align 4
  %11 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 1
  store <2 x float> %3, ptr %11, align 4
  %12 = getelementptr inbounds nuw %struct.anon.18, ptr %6, i32 0, i32 0
  %13 = getelementptr inbounds nuw %struct.anon.20, ptr %12, i32 0, i32 0
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds nuw %struct.anon.18, ptr %7, i32 0, i32 0
  %16 = getelementptr inbounds nuw %struct.anon.20, ptr %15, i32 0, i32 0
  %17 = load float, ptr %16, align 4
  %18 = fadd float %14, %17
  %19 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %20 = getelementptr inbounds nuw %struct.anon.20, ptr %19, i32 0, i32 0
  store float %18, ptr %20, align 4
  %21 = getelementptr inbounds nuw %struct.anon.18, ptr %6, i32 0, i32 0
  %22 = getelementptr inbounds nuw %struct.anon.20, ptr %21, i32 0, i32 1
  %23 = load float, ptr %22, align 4
  %24 = getelementptr inbounds nuw %struct.anon.18, ptr %7, i32 0, i32 0
  %25 = getelementptr inbounds nuw %struct.anon.20, ptr %24, i32 0, i32 1
  %26 = load float, ptr %25, align 4
  %27 = fadd float %23, %26
  %28 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %29 = getelementptr inbounds nuw %struct.anon.20, ptr %28, i32 0, i32 1
  store float %27, ptr %29, align 4
  %30 = getelementptr inbounds nuw %struct.anon.18, ptr %6, i32 0, i32 0
  %31 = getelementptr inbounds nuw %struct.anon.20, ptr %30, i32 0, i32 2
  %32 = load float, ptr %31, align 4
  %33 = getelementptr inbounds nuw %struct.anon.18, ptr %7, i32 0, i32 0
  %34 = getelementptr inbounds nuw %struct.anon.20, ptr %33, i32 0, i32 2
  %35 = load float, ptr %34, align 4
  %36 = fadd float %32, %35
  %37 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %38 = getelementptr inbounds nuw %struct.anon.20, ptr %37, i32 0, i32 2
  store float %36, ptr %38, align 4
  %39 = getelementptr inbounds nuw %struct.anon.18, ptr %6, i32 0, i32 1
  %40 = load float, ptr %39, align 4
  %41 = getelementptr inbounds nuw %struct.anon.18, ptr %7, i32 0, i32 1
  %42 = load float, ptr %41, align 4
  %43 = fadd float %40, %42
  %44 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 1
  store float %43, ptr %44, align 4
  %45 = getelementptr inbounds nuw %union.HMM_Quat, ptr %5, i32 0, i32 0
  %46 = load { <2 x float>, <2 x float> }, ptr %45, align 4
  ret { <2 x float>, <2 x float> } %46
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_SubQ(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) #3 {
  %5 = alloca %union.HMM_Quat, align 4
  %6 = alloca %union.HMM_Quat, align 4
  %7 = alloca %union.HMM_Quat, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 0
  store <2 x float> %0, ptr %8, align 4
  %9 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 1
  store <2 x float> %1, ptr %9, align 4
  %10 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 0
  store <2 x float> %2, ptr %10, align 4
  %11 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 1
  store <2 x float> %3, ptr %11, align 4
  %12 = getelementptr inbounds nuw %struct.anon.18, ptr %6, i32 0, i32 0
  %13 = getelementptr inbounds nuw %struct.anon.20, ptr %12, i32 0, i32 0
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds nuw %struct.anon.18, ptr %7, i32 0, i32 0
  %16 = getelementptr inbounds nuw %struct.anon.20, ptr %15, i32 0, i32 0
  %17 = load float, ptr %16, align 4
  %18 = fsub float %14, %17
  %19 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %20 = getelementptr inbounds nuw %struct.anon.20, ptr %19, i32 0, i32 0
  store float %18, ptr %20, align 4
  %21 = getelementptr inbounds nuw %struct.anon.18, ptr %6, i32 0, i32 0
  %22 = getelementptr inbounds nuw %struct.anon.20, ptr %21, i32 0, i32 1
  %23 = load float, ptr %22, align 4
  %24 = getelementptr inbounds nuw %struct.anon.18, ptr %7, i32 0, i32 0
  %25 = getelementptr inbounds nuw %struct.anon.20, ptr %24, i32 0, i32 1
  %26 = load float, ptr %25, align 4
  %27 = fsub float %23, %26
  %28 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %29 = getelementptr inbounds nuw %struct.anon.20, ptr %28, i32 0, i32 1
  store float %27, ptr %29, align 4
  %30 = getelementptr inbounds nuw %struct.anon.18, ptr %6, i32 0, i32 0
  %31 = getelementptr inbounds nuw %struct.anon.20, ptr %30, i32 0, i32 2
  %32 = load float, ptr %31, align 4
  %33 = getelementptr inbounds nuw %struct.anon.18, ptr %7, i32 0, i32 0
  %34 = getelementptr inbounds nuw %struct.anon.20, ptr %33, i32 0, i32 2
  %35 = load float, ptr %34, align 4
  %36 = fsub float %32, %35
  %37 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %38 = getelementptr inbounds nuw %struct.anon.20, ptr %37, i32 0, i32 2
  store float %36, ptr %38, align 4
  %39 = getelementptr inbounds nuw %struct.anon.18, ptr %6, i32 0, i32 1
  %40 = load float, ptr %39, align 4
  %41 = getelementptr inbounds nuw %struct.anon.18, ptr %7, i32 0, i32 1
  %42 = load float, ptr %41, align 4
  %43 = fsub float %40, %42
  %44 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 1
  store float %43, ptr %44, align 4
  %45 = getelementptr inbounds nuw %union.HMM_Quat, ptr %5, i32 0, i32 0
  %46 = load { <2 x float>, <2 x float> }, ptr %45, align 4
  ret { <2 x float>, <2 x float> } %46
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_MulQ(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) #3 {
  %5 = alloca %union.HMM_Quat, align 4
  %6 = alloca %union.HMM_Quat, align 4
  %7 = alloca %union.HMM_Quat, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 0
  store <2 x float> %0, ptr %8, align 4
  %9 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 1
  store <2 x float> %1, ptr %9, align 4
  %10 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 0
  store <2 x float> %2, ptr %10, align 4
  %11 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 1
  store <2 x float> %3, ptr %11, align 4
  %12 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %13 = load float, ptr %12, align 4
  %14 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 0
  %15 = load float, ptr %14, align 4
  %16 = fmul float %13, %15
  %17 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %18 = getelementptr inbounds nuw %struct.anon.20, ptr %17, i32 0, i32 0
  store float %16, ptr %18, align 4
  %19 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %20 = load float, ptr %19, align 4
  %21 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 0
  %22 = load float, ptr %21, align 4
  %23 = fneg float %22
  %24 = fmul float %20, %23
  %25 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %26 = getelementptr inbounds nuw %struct.anon.20, ptr %25, i32 0, i32 1
  store float %24, ptr %26, align 4
  %27 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %28 = load float, ptr %27, align 4
  %29 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 0
  %30 = load float, ptr %29, align 4
  %31 = fmul float %28, %30
  %32 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %33 = getelementptr inbounds nuw %struct.anon.20, ptr %32, i32 0, i32 2
  store float %31, ptr %33, align 4
  %34 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 0
  %35 = load float, ptr %34, align 4
  %36 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 0
  %37 = load float, ptr %36, align 4
  %38 = fneg float %37
  %39 = fmul float %35, %38
  %40 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 1
  store float %39, ptr %40, align 4
  %41 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %42 = load float, ptr %41, align 4
  %43 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %44 = load float, ptr %43, align 4
  %45 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %46 = getelementptr inbounds nuw %struct.anon.20, ptr %45, i32 0, i32 0
  %47 = load float, ptr %46, align 4
  %48 = call float @llvm.fmuladd.f32(float %42, float %44, float %47)
  store float %48, ptr %46, align 4
  %49 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %50 = load float, ptr %49, align 4
  %51 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %52 = load float, ptr %51, align 4
  %53 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %54 = getelementptr inbounds nuw %struct.anon.20, ptr %53, i32 0, i32 1
  %55 = load float, ptr %54, align 4
  %56 = call float @llvm.fmuladd.f32(float %50, float %52, float %55)
  store float %56, ptr %54, align 4
  %57 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 0
  %58 = load float, ptr %57, align 4
  %59 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %60 = load float, ptr %59, align 4
  %61 = fneg float %60
  %62 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %63 = getelementptr inbounds nuw %struct.anon.20, ptr %62, i32 0, i32 2
  %64 = load float, ptr %63, align 4
  %65 = call float @llvm.fmuladd.f32(float %58, float %61, float %64)
  store float %65, ptr %63, align 4
  %66 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %67 = load float, ptr %66, align 4
  %68 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %69 = load float, ptr %68, align 4
  %70 = fneg float %69
  %71 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 1
  %72 = load float, ptr %71, align 4
  %73 = call float @llvm.fmuladd.f32(float %67, float %70, float %72)
  store float %73, ptr %71, align 4
  %74 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %75 = load float, ptr %74, align 4
  %76 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  %77 = load float, ptr %76, align 4
  %78 = fneg float %77
  %79 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %80 = getelementptr inbounds nuw %struct.anon.20, ptr %79, i32 0, i32 0
  %81 = load float, ptr %80, align 4
  %82 = call float @llvm.fmuladd.f32(float %75, float %78, float %81)
  store float %82, ptr %80, align 4
  %83 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 0
  %84 = load float, ptr %83, align 4
  %85 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  %86 = load float, ptr %85, align 4
  %87 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %88 = getelementptr inbounds nuw %struct.anon.20, ptr %87, i32 0, i32 1
  %89 = load float, ptr %88, align 4
  %90 = call float @llvm.fmuladd.f32(float %84, float %86, float %89)
  store float %90, ptr %88, align 4
  %91 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %92 = load float, ptr %91, align 4
  %93 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  %94 = load float, ptr %93, align 4
  %95 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %96 = getelementptr inbounds nuw %struct.anon.20, ptr %95, i32 0, i32 2
  %97 = load float, ptr %96, align 4
  %98 = call float @llvm.fmuladd.f32(float %92, float %94, float %97)
  store float %98, ptr %96, align 4
  %99 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %100 = load float, ptr %99, align 4
  %101 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  %102 = load float, ptr %101, align 4
  %103 = fneg float %102
  %104 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 1
  %105 = load float, ptr %104, align 4
  %106 = call float @llvm.fmuladd.f32(float %100, float %103, float %105)
  store float %106, ptr %104, align 4
  %107 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 0
  %108 = load float, ptr %107, align 4
  %109 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  %110 = load float, ptr %109, align 4
  %111 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %112 = getelementptr inbounds nuw %struct.anon.20, ptr %111, i32 0, i32 0
  %113 = load float, ptr %112, align 4
  %114 = call float @llvm.fmuladd.f32(float %108, float %110, float %113)
  store float %114, ptr %112, align 4
  %115 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %116 = load float, ptr %115, align 4
  %117 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  %118 = load float, ptr %117, align 4
  %119 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %120 = getelementptr inbounds nuw %struct.anon.20, ptr %119, i32 0, i32 1
  %121 = load float, ptr %120, align 4
  %122 = call float @llvm.fmuladd.f32(float %116, float %118, float %121)
  store float %122, ptr %120, align 4
  %123 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %124 = load float, ptr %123, align 4
  %125 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  %126 = load float, ptr %125, align 4
  %127 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %128 = getelementptr inbounds nuw %struct.anon.20, ptr %127, i32 0, i32 2
  %129 = load float, ptr %128, align 4
  %130 = call float @llvm.fmuladd.f32(float %124, float %126, float %129)
  store float %130, ptr %128, align 4
  %131 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %132 = load float, ptr %131, align 4
  %133 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  %134 = load float, ptr %133, align 4
  %135 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 1
  %136 = load float, ptr %135, align 4
  %137 = call float @llvm.fmuladd.f32(float %132, float %134, float %136)
  store float %137, ptr %135, align 4
  %138 = getelementptr inbounds nuw %union.HMM_Quat, ptr %5, i32 0, i32 0
  %139 = load { <2 x float>, <2 x float> }, ptr %138, align 4
  ret { <2 x float>, <2 x float> } %139
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_MulQF(<2 x float> %0, <2 x float> %1, float noundef %2) #3 {
  %4 = alloca %union.HMM_Quat, align 4
  %5 = alloca %union.HMM_Quat, align 4
  %6 = alloca float, align 4
  %7 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 0
  store <2 x float> %0, ptr %7, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 1
  store <2 x float> %1, ptr %8, align 4
  store float %2, ptr %6, align 4
  %9 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %10 = getelementptr inbounds nuw %struct.anon.20, ptr %9, i32 0, i32 0
  %11 = load float, ptr %10, align 4
  %12 = load float, ptr %6, align 4
  %13 = fmul float %11, %12
  %14 = getelementptr inbounds nuw %struct.anon.18, ptr %4, i32 0, i32 0
  %15 = getelementptr inbounds nuw %struct.anon.20, ptr %14, i32 0, i32 0
  store float %13, ptr %15, align 4
  %16 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %17 = getelementptr inbounds nuw %struct.anon.20, ptr %16, i32 0, i32 1
  %18 = load float, ptr %17, align 4
  %19 = load float, ptr %6, align 4
  %20 = fmul float %18, %19
  %21 = getelementptr inbounds nuw %struct.anon.18, ptr %4, i32 0, i32 0
  %22 = getelementptr inbounds nuw %struct.anon.20, ptr %21, i32 0, i32 1
  store float %20, ptr %22, align 4
  %23 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %24 = getelementptr inbounds nuw %struct.anon.20, ptr %23, i32 0, i32 2
  %25 = load float, ptr %24, align 4
  %26 = load float, ptr %6, align 4
  %27 = fmul float %25, %26
  %28 = getelementptr inbounds nuw %struct.anon.18, ptr %4, i32 0, i32 0
  %29 = getelementptr inbounds nuw %struct.anon.20, ptr %28, i32 0, i32 2
  store float %27, ptr %29, align 4
  %30 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 1
  %31 = load float, ptr %30, align 4
  %32 = load float, ptr %6, align 4
  %33 = fmul float %31, %32
  %34 = getelementptr inbounds nuw %struct.anon.18, ptr %4, i32 0, i32 1
  store float %33, ptr %34, align 4
  %35 = getelementptr inbounds nuw %union.HMM_Quat, ptr %4, i32 0, i32 0
  %36 = load { <2 x float>, <2 x float> }, ptr %35, align 4
  ret { <2 x float>, <2 x float> } %36
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_DivQF(<2 x float> %0, <2 x float> %1, float noundef %2) #3 {
  %4 = alloca %union.HMM_Quat, align 4
  %5 = alloca %union.HMM_Quat, align 4
  %6 = alloca float, align 4
  %7 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 0
  store <2 x float> %0, ptr %7, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 1
  store <2 x float> %1, ptr %8, align 4
  store float %2, ptr %6, align 4
  %9 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %10 = getelementptr inbounds nuw %struct.anon.20, ptr %9, i32 0, i32 0
  %11 = load float, ptr %10, align 4
  %12 = load float, ptr %6, align 4
  %13 = fdiv float %11, %12
  %14 = getelementptr inbounds nuw %struct.anon.18, ptr %4, i32 0, i32 0
  %15 = getelementptr inbounds nuw %struct.anon.20, ptr %14, i32 0, i32 0
  store float %13, ptr %15, align 4
  %16 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %17 = getelementptr inbounds nuw %struct.anon.20, ptr %16, i32 0, i32 1
  %18 = load float, ptr %17, align 4
  %19 = load float, ptr %6, align 4
  %20 = fdiv float %18, %19
  %21 = getelementptr inbounds nuw %struct.anon.18, ptr %4, i32 0, i32 0
  %22 = getelementptr inbounds nuw %struct.anon.20, ptr %21, i32 0, i32 1
  store float %20, ptr %22, align 4
  %23 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %24 = getelementptr inbounds nuw %struct.anon.20, ptr %23, i32 0, i32 2
  %25 = load float, ptr %24, align 4
  %26 = load float, ptr %6, align 4
  %27 = fdiv float %25, %26
  %28 = getelementptr inbounds nuw %struct.anon.18, ptr %4, i32 0, i32 0
  %29 = getelementptr inbounds nuw %struct.anon.20, ptr %28, i32 0, i32 2
  store float %27, ptr %29, align 4
  %30 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 1
  %31 = load float, ptr %30, align 4
  %32 = load float, ptr %6, align 4
  %33 = fdiv float %31, %32
  %34 = getelementptr inbounds nuw %struct.anon.18, ptr %4, i32 0, i32 1
  store float %33, ptr %34, align 4
  %35 = getelementptr inbounds nuw %union.HMM_Quat, ptr %4, i32 0, i32 0
  %36 = load { <2 x float>, <2 x float> }, ptr %35, align 4
  ret { <2 x float>, <2 x float> } %36
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @HMM_DotQ(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) #3 {
  %5 = alloca %union.HMM_Quat, align 4
  %6 = alloca %union.HMM_Quat, align 4
  %7 = alloca float, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 0
  store <2 x float> %0, ptr %8, align 4
  %9 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 1
  store <2 x float> %1, ptr %9, align 4
  %10 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 0
  store <2 x float> %2, ptr %10, align 4
  %11 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 1
  store <2 x float> %3, ptr %11, align 4
  %12 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %13 = getelementptr inbounds nuw %struct.anon.20, ptr %12, i32 0, i32 0
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds nuw %struct.anon.18, ptr %6, i32 0, i32 0
  %16 = getelementptr inbounds nuw %struct.anon.20, ptr %15, i32 0, i32 0
  %17 = load float, ptr %16, align 4
  %18 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %19 = getelementptr inbounds nuw %struct.anon.20, ptr %18, i32 0, i32 2
  %20 = load float, ptr %19, align 4
  %21 = getelementptr inbounds nuw %struct.anon.18, ptr %6, i32 0, i32 0
  %22 = getelementptr inbounds nuw %struct.anon.20, ptr %21, i32 0, i32 2
  %23 = load float, ptr %22, align 4
  %24 = fmul float %20, %23
  %25 = call float @llvm.fmuladd.f32(float %14, float %17, float %24)
  %26 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %27 = getelementptr inbounds nuw %struct.anon.20, ptr %26, i32 0, i32 1
  %28 = load float, ptr %27, align 4
  %29 = getelementptr inbounds nuw %struct.anon.18, ptr %6, i32 0, i32 0
  %30 = getelementptr inbounds nuw %struct.anon.20, ptr %29, i32 0, i32 1
  %31 = load float, ptr %30, align 4
  %32 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 1
  %33 = load float, ptr %32, align 4
  %34 = getelementptr inbounds nuw %struct.anon.18, ptr %6, i32 0, i32 1
  %35 = load float, ptr %34, align 4
  %36 = fmul float %33, %35
  %37 = call float @llvm.fmuladd.f32(float %28, float %31, float %36)
  %38 = fadd float %25, %37
  store float %38, ptr %7, align 4
  %39 = load float, ptr %7, align 4
  ret float %39
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_InvQ(<2 x float> %0, <2 x float> %1) #3 {
  %3 = alloca %union.HMM_Quat, align 4
  %4 = alloca %union.HMM_Quat, align 4
  %5 = alloca %union.HMM_Quat, align 4
  %6 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 0
  store <2 x float> %0, ptr %6, align 4
  %7 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 1
  store <2 x float> %1, ptr %7, align 4
  %8 = getelementptr inbounds nuw %struct.anon.18, ptr %4, i32 0, i32 0
  %9 = getelementptr inbounds nuw %struct.anon.20, ptr %8, i32 0, i32 0
  %10 = load float, ptr %9, align 4
  %11 = fneg float %10
  %12 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %13 = getelementptr inbounds nuw %struct.anon.20, ptr %12, i32 0, i32 0
  store float %11, ptr %13, align 4
  %14 = getelementptr inbounds nuw %struct.anon.18, ptr %4, i32 0, i32 0
  %15 = getelementptr inbounds nuw %struct.anon.20, ptr %14, i32 0, i32 1
  %16 = load float, ptr %15, align 4
  %17 = fneg float %16
  %18 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %19 = getelementptr inbounds nuw %struct.anon.20, ptr %18, i32 0, i32 1
  store float %17, ptr %19, align 4
  %20 = getelementptr inbounds nuw %struct.anon.18, ptr %4, i32 0, i32 0
  %21 = getelementptr inbounds nuw %struct.anon.20, ptr %20, i32 0, i32 2
  %22 = load float, ptr %21, align 4
  %23 = fneg float %22
  %24 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %25 = getelementptr inbounds nuw %struct.anon.20, ptr %24, i32 0, i32 2
  store float %23, ptr %25, align 4
  %26 = getelementptr inbounds nuw %struct.anon.18, ptr %4, i32 0, i32 1
  %27 = load float, ptr %26, align 4
  %28 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 1
  store float %27, ptr %28, align 4
  %29 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 0
  %30 = load <2 x float>, ptr %29, align 4
  %31 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 1
  %32 = load <2 x float>, ptr %31, align 4
  %33 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 0
  %34 = load <2 x float>, ptr %33, align 4
  %35 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 1
  %36 = load <2 x float>, ptr %35, align 4
  %37 = call float @HMM_DotQ(<2 x float> %30, <2 x float> %32, <2 x float> %34, <2 x float> %36)
  %38 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 0
  %39 = load <2 x float>, ptr %38, align 4
  %40 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 1
  %41 = load <2 x float>, ptr %40, align 4
  %42 = call { <2 x float>, <2 x float> } @HMM_DivQF(<2 x float> %39, <2 x float> %41, float noundef %37)
  %43 = getelementptr inbounds nuw %union.HMM_Quat, ptr %3, i32 0, i32 0
  %44 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %43, i32 0, i32 0
  %45 = extractvalue { <2 x float>, <2 x float> } %42, 0
  store <2 x float> %45, ptr %44, align 4
  %46 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %43, i32 0, i32 1
  %47 = extractvalue { <2 x float>, <2 x float> } %42, 1
  store <2 x float> %47, ptr %46, align 4
  %48 = getelementptr inbounds nuw %union.HMM_Quat, ptr %3, i32 0, i32 0
  %49 = load { <2 x float>, <2 x float> }, ptr %48, align 4
  ret { <2 x float>, <2 x float> } %49
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_NormQ(<2 x float> %0, <2 x float> %1) #3 {
  %3 = alloca %union.HMM_Quat, align 4
  %4 = alloca %union.HMM_Quat, align 4
  %5 = alloca %union.HMM_Vec4, align 4
  %6 = alloca %union.HMM_Vec4, align 4
  %7 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 0
  store <2 x float> %0, ptr %7, align 4
  %8 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 1
  store <2 x float> %1, ptr %8, align 4
  %9 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %10 = getelementptr inbounds nuw %struct.anon.3, ptr %9, i32 0, i32 0
  %11 = getelementptr inbounds nuw %struct.anon.18, ptr %4, i32 0, i32 0
  %12 = getelementptr inbounds nuw %struct.anon.20, ptr %11, i32 0, i32 0
  %13 = load float, ptr %12, align 4
  store float %13, ptr %10, align 4
  %14 = getelementptr inbounds nuw %struct.anon.3, ptr %9, i32 0, i32 1
  %15 = getelementptr inbounds nuw %struct.anon.18, ptr %4, i32 0, i32 0
  %16 = getelementptr inbounds nuw %struct.anon.20, ptr %15, i32 0, i32 1
  %17 = load float, ptr %16, align 4
  store float %17, ptr %14, align 4
  %18 = getelementptr inbounds nuw %struct.anon.3, ptr %9, i32 0, i32 2
  %19 = getelementptr inbounds nuw %struct.anon.18, ptr %4, i32 0, i32 0
  %20 = getelementptr inbounds nuw %struct.anon.20, ptr %19, i32 0, i32 2
  %21 = load float, ptr %20, align 4
  store float %21, ptr %18, align 4
  %22 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 1
  %23 = getelementptr inbounds nuw %struct.anon.18, ptr %4, i32 0, i32 1
  %24 = load float, ptr %23, align 4
  store float %24, ptr %22, align 4
  %25 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 0
  %26 = load <2 x float>, ptr %25, align 4
  %27 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 1
  %28 = load <2 x float>, ptr %27, align 4
  %29 = call { <2 x float>, <2 x float> } @HMM_NormV4(<2 x float> %26, <2 x float> %28)
  %30 = getelementptr inbounds nuw %union.HMM_Vec4, ptr %6, i32 0, i32 0
  %31 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %30, i32 0, i32 0
  %32 = extractvalue { <2 x float>, <2 x float> } %29, 0
  store <2 x float> %32, ptr %31, align 4
  %33 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %30, i32 0, i32 1
  %34 = extractvalue { <2 x float>, <2 x float> } %29, 1
  store <2 x float> %34, ptr %33, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %6, i64 16, i1 false)
  %35 = getelementptr inbounds nuw %struct.anon.18, ptr %3, i32 0, i32 0
  %36 = getelementptr inbounds nuw %struct.anon.3, ptr %35, i32 0, i32 0
  %37 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %38 = getelementptr inbounds nuw %struct.anon.11, ptr %37, i32 0, i32 0
  %39 = load float, ptr %38, align 4
  store float %39, ptr %36, align 4
  %40 = getelementptr inbounds nuw %struct.anon.3, ptr %35, i32 0, i32 1
  %41 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %42 = getelementptr inbounds nuw %struct.anon.11, ptr %41, i32 0, i32 1
  %43 = load float, ptr %42, align 4
  store float %43, ptr %40, align 4
  %44 = getelementptr inbounds nuw %struct.anon.3, ptr %35, i32 0, i32 2
  %45 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 0
  %46 = getelementptr inbounds nuw %struct.anon.11, ptr %45, i32 0, i32 2
  %47 = load float, ptr %46, align 4
  store float %47, ptr %44, align 4
  %48 = getelementptr inbounds nuw %struct.anon.18, ptr %3, i32 0, i32 1
  %49 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 1
  %50 = load float, ptr %49, align 4
  store float %50, ptr %48, align 4
  %51 = getelementptr inbounds nuw %union.HMM_Quat, ptr %3, i32 0, i32 0
  %52 = load { <2 x float>, <2 x float> }, ptr %51, align 4
  ret { <2 x float>, <2 x float> } %52
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @_HMM_MixQ(<2 x float> %0, <2 x float> %1, float noundef %2, <2 x float> %3, <2 x float> %4, float noundef %5) #3 {
  %7 = alloca %union.HMM_Quat, align 4
  %8 = alloca %union.HMM_Quat, align 4
  %9 = alloca %union.HMM_Quat, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 0
  store <2 x float> %0, ptr %12, align 4
  %13 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 1
  store <2 x float> %1, ptr %13, align 4
  %14 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %9, i32 0, i32 0
  store <2 x float> %3, ptr %14, align 4
  %15 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %9, i32 0, i32 1
  store <2 x float> %4, ptr %15, align 4
  store float %2, ptr %10, align 4
  store float %5, ptr %11, align 4
  %16 = getelementptr inbounds nuw %struct.anon.18, ptr %8, i32 0, i32 0
  %17 = getelementptr inbounds nuw %struct.anon.20, ptr %16, i32 0, i32 0
  %18 = load float, ptr %17, align 4
  %19 = load float, ptr %10, align 4
  %20 = getelementptr inbounds nuw %struct.anon.18, ptr %9, i32 0, i32 0
  %21 = getelementptr inbounds nuw %struct.anon.20, ptr %20, i32 0, i32 0
  %22 = load float, ptr %21, align 4
  %23 = load float, ptr %11, align 4
  %24 = fmul float %22, %23
  %25 = call float @llvm.fmuladd.f32(float %18, float %19, float %24)
  %26 = getelementptr inbounds nuw %struct.anon.18, ptr %7, i32 0, i32 0
  %27 = getelementptr inbounds nuw %struct.anon.20, ptr %26, i32 0, i32 0
  store float %25, ptr %27, align 4
  %28 = getelementptr inbounds nuw %struct.anon.18, ptr %8, i32 0, i32 0
  %29 = getelementptr inbounds nuw %struct.anon.20, ptr %28, i32 0, i32 1
  %30 = load float, ptr %29, align 4
  %31 = load float, ptr %10, align 4
  %32 = getelementptr inbounds nuw %struct.anon.18, ptr %9, i32 0, i32 0
  %33 = getelementptr inbounds nuw %struct.anon.20, ptr %32, i32 0, i32 1
  %34 = load float, ptr %33, align 4
  %35 = load float, ptr %11, align 4
  %36 = fmul float %34, %35
  %37 = call float @llvm.fmuladd.f32(float %30, float %31, float %36)
  %38 = getelementptr inbounds nuw %struct.anon.18, ptr %7, i32 0, i32 0
  %39 = getelementptr inbounds nuw %struct.anon.20, ptr %38, i32 0, i32 1
  store float %37, ptr %39, align 4
  %40 = getelementptr inbounds nuw %struct.anon.18, ptr %8, i32 0, i32 0
  %41 = getelementptr inbounds nuw %struct.anon.20, ptr %40, i32 0, i32 2
  %42 = load float, ptr %41, align 4
  %43 = load float, ptr %10, align 4
  %44 = getelementptr inbounds nuw %struct.anon.18, ptr %9, i32 0, i32 0
  %45 = getelementptr inbounds nuw %struct.anon.20, ptr %44, i32 0, i32 2
  %46 = load float, ptr %45, align 4
  %47 = load float, ptr %11, align 4
  %48 = fmul float %46, %47
  %49 = call float @llvm.fmuladd.f32(float %42, float %43, float %48)
  %50 = getelementptr inbounds nuw %struct.anon.18, ptr %7, i32 0, i32 0
  %51 = getelementptr inbounds nuw %struct.anon.20, ptr %50, i32 0, i32 2
  store float %49, ptr %51, align 4
  %52 = getelementptr inbounds nuw %struct.anon.18, ptr %8, i32 0, i32 1
  %53 = load float, ptr %52, align 4
  %54 = load float, ptr %10, align 4
  %55 = getelementptr inbounds nuw %struct.anon.18, ptr %9, i32 0, i32 1
  %56 = load float, ptr %55, align 4
  %57 = load float, ptr %11, align 4
  %58 = fmul float %56, %57
  %59 = call float @llvm.fmuladd.f32(float %53, float %54, float %58)
  %60 = getelementptr inbounds nuw %struct.anon.18, ptr %7, i32 0, i32 1
  store float %59, ptr %60, align 4
  %61 = getelementptr inbounds nuw %union.HMM_Quat, ptr %7, i32 0, i32 0
  %62 = load { <2 x float>, <2 x float> }, ptr %61, align 4
  ret { <2 x float>, <2 x float> } %62
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_NLerp(<2 x float> %0, <2 x float> %1, float noundef %2, <2 x float> %3, <2 x float> %4) #3 {
  %6 = alloca %union.HMM_Quat, align 4
  %7 = alloca %union.HMM_Quat, align 4
  %8 = alloca %union.HMM_Quat, align 4
  %9 = alloca float, align 4
  %10 = alloca %union.HMM_Quat, align 4
  %11 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 0
  store <2 x float> %0, ptr %11, align 4
  %12 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 1
  store <2 x float> %1, ptr %12, align 4
  %13 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 0
  store <2 x float> %3, ptr %13, align 4
  %14 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 1
  store <2 x float> %4, ptr %14, align 4
  store float %2, ptr %9, align 4
  %15 = load float, ptr %9, align 4
  %16 = fsub float 1.000000e+00, %15
  %17 = load float, ptr %9, align 4
  %18 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 0
  %19 = load <2 x float>, ptr %18, align 4
  %20 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 1
  %21 = load <2 x float>, ptr %20, align 4
  %22 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 0
  %23 = load <2 x float>, ptr %22, align 4
  %24 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 1
  %25 = load <2 x float>, ptr %24, align 4
  %26 = call { <2 x float>, <2 x float> } @_HMM_MixQ(<2 x float> %19, <2 x float> %21, float noundef %16, <2 x float> %23, <2 x float> %25, float noundef %17)
  %27 = getelementptr inbounds nuw %union.HMM_Quat, ptr %6, i32 0, i32 0
  %28 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %27, i32 0, i32 0
  %29 = extractvalue { <2 x float>, <2 x float> } %26, 0
  store <2 x float> %29, ptr %28, align 4
  %30 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %27, i32 0, i32 1
  %31 = extractvalue { <2 x float>, <2 x float> } %26, 1
  store <2 x float> %31, ptr %30, align 4
  %32 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 0
  %33 = load <2 x float>, ptr %32, align 4
  %34 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 1
  %35 = load <2 x float>, ptr %34, align 4
  %36 = call { <2 x float>, <2 x float> } @HMM_NormQ(<2 x float> %33, <2 x float> %35)
  %37 = getelementptr inbounds nuw %union.HMM_Quat, ptr %10, i32 0, i32 0
  %38 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %37, i32 0, i32 0
  %39 = extractvalue { <2 x float>, <2 x float> } %36, 0
  store <2 x float> %39, ptr %38, align 4
  %40 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %37, i32 0, i32 1
  %41 = extractvalue { <2 x float>, <2 x float> } %36, 1
  store <2 x float> %41, ptr %40, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %10, i64 16, i1 false)
  %42 = getelementptr inbounds nuw %union.HMM_Quat, ptr %6, i32 0, i32 0
  %43 = load { <2 x float>, <2 x float> }, ptr %42, align 4
  ret { <2 x float>, <2 x float> } %43
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_SLerp(<2 x float> %0, <2 x float> %1, float noundef %2, <2 x float> %3, <2 x float> %4) #3 {
  %6 = alloca %union.HMM_Quat, align 4
  %7 = alloca %union.HMM_Quat, align 4
  %8 = alloca %union.HMM_Quat, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca %union.HMM_Quat, align 4
  %12 = alloca %union.HMM_Quat, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca %union.HMM_Quat, align 4
  %17 = alloca %union.HMM_Quat, align 4
  %18 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 0
  store <2 x float> %0, ptr %18, align 4
  %19 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 1
  store <2 x float> %1, ptr %19, align 4
  %20 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 0
  store <2 x float> %3, ptr %20, align 4
  %21 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 1
  store <2 x float> %4, ptr %21, align 4
  store float %2, ptr %9, align 4
  %22 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 0
  %23 = load <2 x float>, ptr %22, align 4
  %24 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 1
  %25 = load <2 x float>, ptr %24, align 4
  %26 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 0
  %27 = load <2 x float>, ptr %26, align 4
  %28 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 1
  %29 = load <2 x float>, ptr %28, align 4
  %30 = call float @HMM_DotQ(<2 x float> %23, <2 x float> %25, <2 x float> %27, <2 x float> %29)
  store float %30, ptr %10, align 4
  %31 = load float, ptr %10, align 4
  %32 = fcmp olt float %31, 0.000000e+00
  br i1 %32, label %33, label %57

33:                                               ; preds = %5
  %34 = load float, ptr %10, align 4
  %35 = fneg float %34
  store float %35, ptr %10, align 4
  %36 = getelementptr inbounds nuw %struct.anon.18, ptr %8, i32 0, i32 0
  %37 = getelementptr inbounds nuw %struct.anon.20, ptr %36, i32 0, i32 0
  %38 = load float, ptr %37, align 4
  %39 = fneg float %38
  %40 = getelementptr inbounds nuw %struct.anon.18, ptr %8, i32 0, i32 0
  %41 = getelementptr inbounds nuw %struct.anon.20, ptr %40, i32 0, i32 1
  %42 = load float, ptr %41, align 4
  %43 = fneg float %42
  %44 = getelementptr inbounds nuw %struct.anon.18, ptr %8, i32 0, i32 0
  %45 = getelementptr inbounds nuw %struct.anon.20, ptr %44, i32 0, i32 2
  %46 = load float, ptr %45, align 4
  %47 = fneg float %46
  %48 = getelementptr inbounds nuw %struct.anon.18, ptr %8, i32 0, i32 1
  %49 = load float, ptr %48, align 4
  %50 = fneg float %49
  %51 = call { <2 x float>, <2 x float> } @HMM_Q(float noundef %39, float noundef %43, float noundef %47, float noundef %50)
  %52 = getelementptr inbounds nuw %union.HMM_Quat, ptr %11, i32 0, i32 0
  %53 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %52, i32 0, i32 0
  %54 = extractvalue { <2 x float>, <2 x float> } %51, 0
  store <2 x float> %54, ptr %53, align 4
  %55 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %52, i32 0, i32 1
  %56 = extractvalue { <2 x float>, <2 x float> } %51, 1
  store <2 x float> %56, ptr %55, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %11, i64 16, i1 false)
  br label %57

57:                                               ; preds = %33, %5
  %58 = load float, ptr %10, align 4
  %59 = fcmp ogt float %58, 0x3FEFFBE760000000
  br i1 %59, label %60, label %76

60:                                               ; preds = %57
  %61 = load float, ptr %9, align 4
  %62 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 0
  %63 = load <2 x float>, ptr %62, align 4
  %64 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 1
  %65 = load <2 x float>, ptr %64, align 4
  %66 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 0
  %67 = load <2 x float>, ptr %66, align 4
  %68 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 1
  %69 = load <2 x float>, ptr %68, align 4
  %70 = call { <2 x float>, <2 x float> } @HMM_NLerp(<2 x float> %63, <2 x float> %65, float noundef %61, <2 x float> %67, <2 x float> %69)
  %71 = getelementptr inbounds nuw %union.HMM_Quat, ptr %12, i32 0, i32 0
  %72 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %71, i32 0, i32 0
  %73 = extractvalue { <2 x float>, <2 x float> } %70, 0
  store <2 x float> %73, ptr %72, align 4
  %74 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %71, i32 0, i32 1
  %75 = extractvalue { <2 x float>, <2 x float> } %70, 1
  store <2 x float> %75, ptr %74, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %12, i64 16, i1 false)
  br label %114

76:                                               ; preds = %57
  %77 = load float, ptr %10, align 4
  %78 = call float @HMM_ACosF(float noundef %77)
  store float %78, ptr %13, align 4
  %79 = load float, ptr %9, align 4
  %80 = fsub float 1.000000e+00, %79
  %81 = load float, ptr %13, align 4
  %82 = fmul float %80, %81
  %83 = call float @HMM_SinF(float noundef %82)
  store float %83, ptr %14, align 4
  %84 = load float, ptr %9, align 4
  %85 = load float, ptr %13, align 4
  %86 = fmul float %84, %85
  %87 = call float @HMM_SinF(float noundef %86)
  store float %87, ptr %15, align 4
  %88 = load float, ptr %14, align 4
  %89 = load float, ptr %15, align 4
  %90 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 0
  %91 = load <2 x float>, ptr %90, align 4
  %92 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 1
  %93 = load <2 x float>, ptr %92, align 4
  %94 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 0
  %95 = load <2 x float>, ptr %94, align 4
  %96 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 1
  %97 = load <2 x float>, ptr %96, align 4
  %98 = call { <2 x float>, <2 x float> } @_HMM_MixQ(<2 x float> %91, <2 x float> %93, float noundef %88, <2 x float> %95, <2 x float> %97, float noundef %89)
  %99 = getelementptr inbounds nuw %union.HMM_Quat, ptr %16, i32 0, i32 0
  %100 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %99, i32 0, i32 0
  %101 = extractvalue { <2 x float>, <2 x float> } %98, 0
  store <2 x float> %101, ptr %100, align 4
  %102 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %99, i32 0, i32 1
  %103 = extractvalue { <2 x float>, <2 x float> } %98, 1
  store <2 x float> %103, ptr %102, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %16, i64 16, i1 false)
  %104 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 0
  %105 = load <2 x float>, ptr %104, align 4
  %106 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 1
  %107 = load <2 x float>, ptr %106, align 4
  %108 = call { <2 x float>, <2 x float> } @HMM_NormQ(<2 x float> %105, <2 x float> %107)
  %109 = getelementptr inbounds nuw %union.HMM_Quat, ptr %17, i32 0, i32 0
  %110 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %109, i32 0, i32 0
  %111 = extractvalue { <2 x float>, <2 x float> } %108, 0
  store <2 x float> %111, ptr %110, align 4
  %112 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %109, i32 0, i32 1
  %113 = extractvalue { <2 x float>, <2 x float> } %108, 1
  store <2 x float> %113, ptr %112, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %17, i64 16, i1 false)
  br label %114

114:                                              ; preds = %76, %60
  %115 = getelementptr inbounds nuw %union.HMM_Quat, ptr %6, i32 0, i32 0
  %116 = load { <2 x float>, <2 x float> }, ptr %115, align 4
  ret { <2 x float>, <2 x float> } %116
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @HMM_QToM4(ptr dead_on_unwind noalias writable sret(%union.HMM_Mat4) align 4 %0, <2 x float> %1, <2 x float> %2) #3 {
  %4 = alloca %union.HMM_Quat, align 4
  %5 = alloca %union.HMM_Quat, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 0
  store <2 x float> %1, ptr %15, align 4
  %16 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 1
  store <2 x float> %2, ptr %16, align 4
  %17 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 0
  %18 = load <2 x float>, ptr %17, align 4
  %19 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 1
  %20 = load <2 x float>, ptr %19, align 4
  %21 = call { <2 x float>, <2 x float> } @HMM_NormQ(<2 x float> %18, <2 x float> %20)
  %22 = getelementptr inbounds nuw %union.HMM_Quat, ptr %5, i32 0, i32 0
  %23 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %22, i32 0, i32 0
  %24 = extractvalue { <2 x float>, <2 x float> } %21, 0
  store <2 x float> %24, ptr %23, align 4
  %25 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %22, i32 0, i32 1
  %26 = extractvalue { <2 x float>, <2 x float> } %21, 1
  store <2 x float> %26, ptr %25, align 4
  %27 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %28 = getelementptr inbounds nuw %struct.anon.20, ptr %27, i32 0, i32 0
  %29 = load float, ptr %28, align 4
  %30 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %31 = getelementptr inbounds nuw %struct.anon.20, ptr %30, i32 0, i32 0
  %32 = load float, ptr %31, align 4
  %33 = fmul float %29, %32
  store float %33, ptr %6, align 4
  %34 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %35 = getelementptr inbounds nuw %struct.anon.20, ptr %34, i32 0, i32 1
  %36 = load float, ptr %35, align 4
  %37 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %38 = getelementptr inbounds nuw %struct.anon.20, ptr %37, i32 0, i32 1
  %39 = load float, ptr %38, align 4
  %40 = fmul float %36, %39
  store float %40, ptr %7, align 4
  %41 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %42 = getelementptr inbounds nuw %struct.anon.20, ptr %41, i32 0, i32 2
  %43 = load float, ptr %42, align 4
  %44 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %45 = getelementptr inbounds nuw %struct.anon.20, ptr %44, i32 0, i32 2
  %46 = load float, ptr %45, align 4
  %47 = fmul float %43, %46
  store float %47, ptr %8, align 4
  %48 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %49 = getelementptr inbounds nuw %struct.anon.20, ptr %48, i32 0, i32 0
  %50 = load float, ptr %49, align 4
  %51 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %52 = getelementptr inbounds nuw %struct.anon.20, ptr %51, i32 0, i32 1
  %53 = load float, ptr %52, align 4
  %54 = fmul float %50, %53
  store float %54, ptr %9, align 4
  %55 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %56 = getelementptr inbounds nuw %struct.anon.20, ptr %55, i32 0, i32 0
  %57 = load float, ptr %56, align 4
  %58 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %59 = getelementptr inbounds nuw %struct.anon.20, ptr %58, i32 0, i32 2
  %60 = load float, ptr %59, align 4
  %61 = fmul float %57, %60
  store float %61, ptr %10, align 4
  %62 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %63 = getelementptr inbounds nuw %struct.anon.20, ptr %62, i32 0, i32 1
  %64 = load float, ptr %63, align 4
  %65 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %66 = getelementptr inbounds nuw %struct.anon.20, ptr %65, i32 0, i32 2
  %67 = load float, ptr %66, align 4
  %68 = fmul float %64, %67
  store float %68, ptr %11, align 4
  %69 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 1
  %70 = load float, ptr %69, align 4
  %71 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %72 = getelementptr inbounds nuw %struct.anon.20, ptr %71, i32 0, i32 0
  %73 = load float, ptr %72, align 4
  %74 = fmul float %70, %73
  store float %74, ptr %12, align 4
  %75 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 1
  %76 = load float, ptr %75, align 4
  %77 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %78 = getelementptr inbounds nuw %struct.anon.20, ptr %77, i32 0, i32 1
  %79 = load float, ptr %78, align 4
  %80 = fmul float %76, %79
  store float %80, ptr %13, align 4
  %81 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 1
  %82 = load float, ptr %81, align 4
  %83 = getelementptr inbounds nuw %struct.anon.18, ptr %5, i32 0, i32 0
  %84 = getelementptr inbounds nuw %struct.anon.20, ptr %83, i32 0, i32 2
  %85 = load float, ptr %84, align 4
  %86 = fmul float %82, %85
  store float %86, ptr %14, align 4
  %87 = load float, ptr %7, align 4
  %88 = load float, ptr %8, align 4
  %89 = fadd float %87, %88
  %90 = call float @llvm.fmuladd.f32(float -2.000000e+00, float %89, float 1.000000e+00)
  %91 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %92 = getelementptr inbounds [4 x float], ptr %91, i64 0, i64 0
  store float %90, ptr %92, align 4
  %93 = load float, ptr %9, align 4
  %94 = load float, ptr %14, align 4
  %95 = fadd float %93, %94
  %96 = fmul float 2.000000e+00, %95
  %97 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %98 = getelementptr inbounds [4 x float], ptr %97, i64 0, i64 1
  store float %96, ptr %98, align 4
  %99 = load float, ptr %10, align 4
  %100 = load float, ptr %13, align 4
  %101 = fsub float %99, %100
  %102 = fmul float 2.000000e+00, %101
  %103 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %104 = getelementptr inbounds [4 x float], ptr %103, i64 0, i64 2
  store float %102, ptr %104, align 4
  %105 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %106 = getelementptr inbounds [4 x float], ptr %105, i64 0, i64 3
  store float 0.000000e+00, ptr %106, align 4
  %107 = load float, ptr %9, align 4
  %108 = load float, ptr %14, align 4
  %109 = fsub float %107, %108
  %110 = fmul float 2.000000e+00, %109
  %111 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %112 = getelementptr inbounds [4 x float], ptr %111, i64 0, i64 0
  store float %110, ptr %112, align 4
  %113 = load float, ptr %6, align 4
  %114 = load float, ptr %8, align 4
  %115 = fadd float %113, %114
  %116 = call float @llvm.fmuladd.f32(float -2.000000e+00, float %115, float 1.000000e+00)
  %117 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %118 = getelementptr inbounds [4 x float], ptr %117, i64 0, i64 1
  store float %116, ptr %118, align 4
  %119 = load float, ptr %11, align 4
  %120 = load float, ptr %12, align 4
  %121 = fadd float %119, %120
  %122 = fmul float 2.000000e+00, %121
  %123 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %124 = getelementptr inbounds [4 x float], ptr %123, i64 0, i64 2
  store float %122, ptr %124, align 4
  %125 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %126 = getelementptr inbounds [4 x float], ptr %125, i64 0, i64 3
  store float 0.000000e+00, ptr %126, align 4
  %127 = load float, ptr %10, align 4
  %128 = load float, ptr %13, align 4
  %129 = fadd float %127, %128
  %130 = fmul float 2.000000e+00, %129
  %131 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %132 = getelementptr inbounds [4 x float], ptr %131, i64 0, i64 0
  store float %130, ptr %132, align 4
  %133 = load float, ptr %11, align 4
  %134 = load float, ptr %12, align 4
  %135 = fsub float %133, %134
  %136 = fmul float 2.000000e+00, %135
  %137 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %138 = getelementptr inbounds [4 x float], ptr %137, i64 0, i64 1
  store float %136, ptr %138, align 4
  %139 = load float, ptr %6, align 4
  %140 = load float, ptr %7, align 4
  %141 = fadd float %139, %140
  %142 = call float @llvm.fmuladd.f32(float -2.000000e+00, float %141, float 1.000000e+00)
  %143 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %144 = getelementptr inbounds [4 x float], ptr %143, i64 0, i64 2
  store float %142, ptr %144, align 4
  %145 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %146 = getelementptr inbounds [4 x float], ptr %145, i64 0, i64 3
  store float 0.000000e+00, ptr %146, align 4
  %147 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %148 = getelementptr inbounds [4 x float], ptr %147, i64 0, i64 0
  store float 0.000000e+00, ptr %148, align 4
  %149 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %150 = getelementptr inbounds [4 x float], ptr %149, i64 0, i64 1
  store float 0.000000e+00, ptr %150, align 4
  %151 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %152 = getelementptr inbounds [4 x float], ptr %151, i64 0, i64 2
  store float 0.000000e+00, ptr %152, align 4
  %153 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 3
  %154 = getelementptr inbounds [4 x float], ptr %153, i64 0, i64 3
  store float 1.000000e+00, ptr %154, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_M4ToQ(ptr noundef byval(%union.HMM_Mat4) align 8 %0) #3 {
  %2 = alloca %union.HMM_Quat, align 4
  %3 = alloca float, align 4
  %4 = alloca %union.HMM_Quat, align 4
  %5 = alloca %union.HMM_Quat, align 4
  %6 = alloca %union.HMM_Quat, align 4
  %7 = alloca %union.HMM_Quat, align 4
  %8 = alloca %union.HMM_Quat, align 4
  %9 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %10 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 2
  %11 = load float, ptr %10, align 8
  %12 = fcmp olt float %11, 0.000000e+00
  br i1 %12, label %13, label %104

13:                                               ; preds = %1
  %14 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %15 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 0
  %16 = load float, ptr %15, align 8
  %17 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %18 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 1
  %19 = load float, ptr %18, align 4
  %20 = fcmp ogt float %16, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %13
  %22 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %23 = getelementptr inbounds [4 x float], ptr %22, i64 0, i64 0
  %24 = load float, ptr %23, align 8
  %25 = fadd float 1.000000e+00, %24
  %26 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %27 = getelementptr inbounds [4 x float], ptr %26, i64 0, i64 1
  %28 = load float, ptr %27, align 4
  %29 = fsub float %25, %28
  %30 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %31 = getelementptr inbounds [4 x float], ptr %30, i64 0, i64 2
  %32 = load float, ptr %31, align 8
  %33 = fsub float %29, %32
  store float %33, ptr %3, align 4
  %34 = load float, ptr %3, align 4
  %35 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %36 = getelementptr inbounds [4 x float], ptr %35, i64 0, i64 1
  %37 = load float, ptr %36, align 4
  %38 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %39 = getelementptr inbounds [4 x float], ptr %38, i64 0, i64 0
  %40 = load float, ptr %39, align 8
  %41 = fadd float %37, %40
  %42 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %43 = getelementptr inbounds [4 x float], ptr %42, i64 0, i64 0
  %44 = load float, ptr %43, align 8
  %45 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %46 = getelementptr inbounds [4 x float], ptr %45, i64 0, i64 2
  %47 = load float, ptr %46, align 8
  %48 = fadd float %44, %47
  %49 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %50 = getelementptr inbounds [4 x float], ptr %49, i64 0, i64 2
  %51 = load float, ptr %50, align 8
  %52 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %53 = getelementptr inbounds [4 x float], ptr %52, i64 0, i64 1
  %54 = load float, ptr %53, align 4
  %55 = fsub float %51, %54
  %56 = call { <2 x float>, <2 x float> } @HMM_Q(float noundef %34, float noundef %41, float noundef %48, float noundef %55)
  %57 = getelementptr inbounds nuw %union.HMM_Quat, ptr %4, i32 0, i32 0
  %58 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %57, i32 0, i32 0
  %59 = extractvalue { <2 x float>, <2 x float> } %56, 0
  store <2 x float> %59, ptr %58, align 4
  %60 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %57, i32 0, i32 1
  %61 = extractvalue { <2 x float>, <2 x float> } %56, 1
  store <2 x float> %61, ptr %60, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %4, i64 16, i1 false)
  br label %103

62:                                               ; preds = %13
  %63 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %64 = getelementptr inbounds [4 x float], ptr %63, i64 0, i64 0
  %65 = load float, ptr %64, align 8
  %66 = fsub float 1.000000e+00, %65
  %67 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %68 = getelementptr inbounds [4 x float], ptr %67, i64 0, i64 1
  %69 = load float, ptr %68, align 4
  %70 = fadd float %66, %69
  %71 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %72 = getelementptr inbounds [4 x float], ptr %71, i64 0, i64 2
  %73 = load float, ptr %72, align 8
  %74 = fsub float %70, %73
  store float %74, ptr %3, align 4
  %75 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %76 = getelementptr inbounds [4 x float], ptr %75, i64 0, i64 1
  %77 = load float, ptr %76, align 4
  %78 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %79 = getelementptr inbounds [4 x float], ptr %78, i64 0, i64 0
  %80 = load float, ptr %79, align 8
  %81 = fadd float %77, %80
  %82 = load float, ptr %3, align 4
  %83 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %84 = getelementptr inbounds [4 x float], ptr %83, i64 0, i64 2
  %85 = load float, ptr %84, align 8
  %86 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %87 = getelementptr inbounds [4 x float], ptr %86, i64 0, i64 1
  %88 = load float, ptr %87, align 4
  %89 = fadd float %85, %88
  %90 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %91 = getelementptr inbounds [4 x float], ptr %90, i64 0, i64 0
  %92 = load float, ptr %91, align 8
  %93 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %94 = getelementptr inbounds [4 x float], ptr %93, i64 0, i64 2
  %95 = load float, ptr %94, align 8
  %96 = fsub float %92, %95
  %97 = call { <2 x float>, <2 x float> } @HMM_Q(float noundef %81, float noundef %82, float noundef %89, float noundef %96)
  %98 = getelementptr inbounds nuw %union.HMM_Quat, ptr %5, i32 0, i32 0
  %99 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %98, i32 0, i32 0
  %100 = extractvalue { <2 x float>, <2 x float> } %97, 0
  store <2 x float> %100, ptr %99, align 4
  %101 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %98, i32 0, i32 1
  %102 = extractvalue { <2 x float>, <2 x float> } %97, 1
  store <2 x float> %102, ptr %101, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %5, i64 16, i1 false)
  br label %103

103:                                              ; preds = %62, %21
  br label %196

104:                                              ; preds = %1
  %105 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %106 = getelementptr inbounds [4 x float], ptr %105, i64 0, i64 0
  %107 = load float, ptr %106, align 8
  %108 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %109 = getelementptr inbounds [4 x float], ptr %108, i64 0, i64 1
  %110 = load float, ptr %109, align 4
  %111 = fneg float %110
  %112 = fcmp olt float %107, %111
  br i1 %112, label %113, label %154

113:                                              ; preds = %104
  %114 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %115 = getelementptr inbounds [4 x float], ptr %114, i64 0, i64 0
  %116 = load float, ptr %115, align 8
  %117 = fsub float 1.000000e+00, %116
  %118 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %119 = getelementptr inbounds [4 x float], ptr %118, i64 0, i64 1
  %120 = load float, ptr %119, align 4
  %121 = fsub float %117, %120
  %122 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %123 = getelementptr inbounds [4 x float], ptr %122, i64 0, i64 2
  %124 = load float, ptr %123, align 8
  %125 = fadd float %121, %124
  store float %125, ptr %3, align 4
  %126 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %127 = getelementptr inbounds [4 x float], ptr %126, i64 0, i64 0
  %128 = load float, ptr %127, align 8
  %129 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %130 = getelementptr inbounds [4 x float], ptr %129, i64 0, i64 2
  %131 = load float, ptr %130, align 8
  %132 = fadd float %128, %131
  %133 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %134 = getelementptr inbounds [4 x float], ptr %133, i64 0, i64 2
  %135 = load float, ptr %134, align 8
  %136 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %137 = getelementptr inbounds [4 x float], ptr %136, i64 0, i64 1
  %138 = load float, ptr %137, align 4
  %139 = fadd float %135, %138
  %140 = load float, ptr %3, align 4
  %141 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %142 = getelementptr inbounds [4 x float], ptr %141, i64 0, i64 1
  %143 = load float, ptr %142, align 4
  %144 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %145 = getelementptr inbounds [4 x float], ptr %144, i64 0, i64 0
  %146 = load float, ptr %145, align 8
  %147 = fsub float %143, %146
  %148 = call { <2 x float>, <2 x float> } @HMM_Q(float noundef %132, float noundef %139, float noundef %140, float noundef %147)
  %149 = getelementptr inbounds nuw %union.HMM_Quat, ptr %6, i32 0, i32 0
  %150 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %149, i32 0, i32 0
  %151 = extractvalue { <2 x float>, <2 x float> } %148, 0
  store <2 x float> %151, ptr %150, align 4
  %152 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %149, i32 0, i32 1
  %153 = extractvalue { <2 x float>, <2 x float> } %148, 1
  store <2 x float> %153, ptr %152, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %6, i64 16, i1 false)
  br label %195

154:                                              ; preds = %104
  %155 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %156 = getelementptr inbounds [4 x float], ptr %155, i64 0, i64 0
  %157 = load float, ptr %156, align 8
  %158 = fadd float 1.000000e+00, %157
  %159 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %160 = getelementptr inbounds [4 x float], ptr %159, i64 0, i64 1
  %161 = load float, ptr %160, align 4
  %162 = fadd float %158, %161
  %163 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %164 = getelementptr inbounds [4 x float], ptr %163, i64 0, i64 2
  %165 = load float, ptr %164, align 8
  %166 = fadd float %162, %165
  store float %166, ptr %3, align 4
  %167 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %168 = getelementptr inbounds [4 x float], ptr %167, i64 0, i64 2
  %169 = load float, ptr %168, align 8
  %170 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %171 = getelementptr inbounds [4 x float], ptr %170, i64 0, i64 1
  %172 = load float, ptr %171, align 4
  %173 = fsub float %169, %172
  %174 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 2
  %175 = getelementptr inbounds [4 x float], ptr %174, i64 0, i64 0
  %176 = load float, ptr %175, align 8
  %177 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %178 = getelementptr inbounds [4 x float], ptr %177, i64 0, i64 2
  %179 = load float, ptr %178, align 8
  %180 = fsub float %176, %179
  %181 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 0
  %182 = getelementptr inbounds [4 x float], ptr %181, i64 0, i64 1
  %183 = load float, ptr %182, align 4
  %184 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1
  %185 = getelementptr inbounds [4 x float], ptr %184, i64 0, i64 0
  %186 = load float, ptr %185, align 8
  %187 = fsub float %183, %186
  %188 = load float, ptr %3, align 4
  %189 = call { <2 x float>, <2 x float> } @HMM_Q(float noundef %173, float noundef %180, float noundef %187, float noundef %188)
  %190 = getelementptr inbounds nuw %union.HMM_Quat, ptr %7, i32 0, i32 0
  %191 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %190, i32 0, i32 0
  %192 = extractvalue { <2 x float>, <2 x float> } %189, 0
  store <2 x float> %192, ptr %191, align 4
  %193 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %190, i32 0, i32 1
  %194 = extractvalue { <2 x float>, <2 x float> } %189, 1
  store <2 x float> %194, ptr %193, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %7, i64 16, i1 false)
  br label %195

195:                                              ; preds = %154, %113
  br label %196

196:                                              ; preds = %195, %103
  %197 = load float, ptr %3, align 4
  %198 = call float @HMM_SqrtF(float noundef %197)
  %199 = fdiv float 5.000000e-01, %198
  %200 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %2, i32 0, i32 0
  %201 = load <2 x float>, ptr %200, align 4
  %202 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %2, i32 0, i32 1
  %203 = load <2 x float>, ptr %202, align 4
  %204 = call { <2 x float>, <2 x float> } @HMM_MulQF(<2 x float> %201, <2 x float> %203, float noundef %199)
  %205 = getelementptr inbounds nuw %union.HMM_Quat, ptr %8, i32 0, i32 0
  %206 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %205, i32 0, i32 0
  %207 = extractvalue { <2 x float>, <2 x float> } %204, 0
  store <2 x float> %207, ptr %206, align 4
  %208 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %205, i32 0, i32 1
  %209 = extractvalue { <2 x float>, <2 x float> } %204, 1
  store <2 x float> %209, ptr %208, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %8, i64 16, i1 false)
  %210 = getelementptr inbounds nuw %union.HMM_Quat, ptr %2, i32 0, i32 0
  %211 = load { <2 x float>, <2 x float> }, ptr %210, align 4
  ret { <2 x float>, <2 x float> } %211
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_QFromAxisAngle(<2 x float> %0, float %1, float noundef %2) #3 {
  %4 = alloca %union.HMM_Quat, align 4
  %5 = alloca %union.HMM_Vec3, align 4
  %6 = alloca { <2 x float>, float }, align 4
  %7 = alloca float, align 4
  %8 = alloca %union.HMM_Vec3, align 4
  %9 = alloca { <2 x float>, float }, align 4
  %10 = alloca { <2 x float>, float }, align 8
  %11 = alloca float, align 4
  %12 = alloca %union.HMM_Vec3, align 4
  %13 = alloca { <2 x float>, float }, align 4
  %14 = alloca { <2 x float>, float }, align 8
  %15 = getelementptr inbounds nuw { <2 x float>, float }, ptr %6, i32 0, i32 0
  store <2 x float> %0, ptr %15, align 4
  %16 = getelementptr inbounds nuw { <2 x float>, float }, ptr %6, i32 0, i32 1
  store float %1, ptr %16, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %6, i64 12, i1 false)
  store float %2, ptr %7, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 4 %5, i64 12, i1 false)
  %17 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 0
  %18 = load <2 x float>, ptr %17, align 4
  %19 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 1
  %20 = load float, ptr %19, align 4
  %21 = call { <2 x float>, float } @HMM_NormV3(<2 x float> %18, float %20)
  %22 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %8, i32 0, i32 0
  store { <2 x float>, float } %21, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %22, ptr align 8 %10, i64 12, i1 false)
  %23 = load float, ptr %7, align 4
  %24 = fdiv float %23, 2.000000e+00
  %25 = call float @HMM_SinF(float noundef %24)
  store float %25, ptr %11, align 4
  %26 = getelementptr inbounds nuw %struct.anon.18, ptr %4, i32 0, i32 0
  %27 = load float, ptr %11, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %13, ptr align 4 %8, i64 12, i1 false)
  %28 = getelementptr inbounds nuw { <2 x float>, float }, ptr %13, i32 0, i32 0
  %29 = load <2 x float>, ptr %28, align 4
  %30 = getelementptr inbounds nuw { <2 x float>, float }, ptr %13, i32 0, i32 1
  %31 = load float, ptr %30, align 4
  %32 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %29, float %31, float noundef %27)
  %33 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %12, i32 0, i32 0
  store { <2 x float>, float } %32, ptr %14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %33, ptr align 8 %14, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %26, ptr align 4 %12, i64 12, i1 false)
  %34 = load float, ptr %7, align 4
  %35 = fdiv float %34, 2.000000e+00
  %36 = call float @HMM_CosF(float noundef %35)
  %37 = getelementptr inbounds nuw %struct.anon.18, ptr %4, i32 0, i32 1
  store float %36, ptr %37, align 4
  %38 = getelementptr inbounds nuw %union.HMM_Quat, ptr %4, i32 0, i32 0
  %39 = load { <2 x float>, <2 x float> }, ptr %38, align 4
  ret { <2 x float>, <2 x float> } %39
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_QFromNormPair(<2 x float> %0, float %1, <2 x float> %2, float %3) #3 {
  %5 = alloca %union.HMM_Quat, align 4
  %6 = alloca %union.HMM_Vec3, align 4
  %7 = alloca { <2 x float>, float }, align 4
  %8 = alloca %union.HMM_Vec3, align 4
  %9 = alloca { <2 x float>, float }, align 4
  %10 = alloca %union.HMM_Quat, align 4
  %11 = alloca %union.HMM_Vec3, align 4
  %12 = alloca { <2 x float>, float }, align 4
  %13 = alloca { <2 x float>, float }, align 4
  %14 = alloca { <2 x float>, float }, align 8
  %15 = alloca { <2 x float>, float }, align 4
  %16 = alloca { <2 x float>, float }, align 4
  %17 = getelementptr inbounds nuw { <2 x float>, float }, ptr %7, i32 0, i32 0
  store <2 x float> %0, ptr %17, align 4
  %18 = getelementptr inbounds nuw { <2 x float>, float }, ptr %7, i32 0, i32 1
  store float %1, ptr %18, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %7, i64 12, i1 false)
  %19 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 0
  store <2 x float> %2, ptr %19, align 4
  %20 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 1
  store float %3, ptr %20, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %9, i64 12, i1 false)
  %21 = getelementptr inbounds nuw %struct.anon.18, ptr %10, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %12, ptr align 4 %6, i64 12, i1 false)
  %22 = getelementptr inbounds nuw { <2 x float>, float }, ptr %12, i32 0, i32 0
  %23 = load <2 x float>, ptr %22, align 4
  %24 = getelementptr inbounds nuw { <2 x float>, float }, ptr %12, i32 0, i32 1
  %25 = load float, ptr %24, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %13, ptr align 4 %8, i64 12, i1 false)
  %26 = getelementptr inbounds nuw { <2 x float>, float }, ptr %13, i32 0, i32 0
  %27 = load <2 x float>, ptr %26, align 4
  %28 = getelementptr inbounds nuw { <2 x float>, float }, ptr %13, i32 0, i32 1
  %29 = load float, ptr %28, align 4
  %30 = call { <2 x float>, float } @HMM_Cross(<2 x float> %23, float %25, <2 x float> %27, float %29)
  %31 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %11, i32 0, i32 0
  store { <2 x float>, float } %30, ptr %14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %31, ptr align 8 %14, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %21, ptr align 4 %11, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %15, ptr align 4 %6, i64 12, i1 false)
  %32 = getelementptr inbounds nuw { <2 x float>, float }, ptr %15, i32 0, i32 0
  %33 = load <2 x float>, ptr %32, align 4
  %34 = getelementptr inbounds nuw { <2 x float>, float }, ptr %15, i32 0, i32 1
  %35 = load float, ptr %34, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %16, ptr align 4 %8, i64 12, i1 false)
  %36 = getelementptr inbounds nuw { <2 x float>, float }, ptr %16, i32 0, i32 0
  %37 = load <2 x float>, ptr %36, align 4
  %38 = getelementptr inbounds nuw { <2 x float>, float }, ptr %16, i32 0, i32 1
  %39 = load float, ptr %38, align 4
  %40 = call float @HMM_DotV3(<2 x float> %33, float %35, <2 x float> %37, float %39)
  %41 = fadd float 1.000000e+00, %40
  %42 = getelementptr inbounds nuw %struct.anon.18, ptr %10, i32 0, i32 1
  store float %41, ptr %42, align 4
  %43 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %10, i32 0, i32 0
  %44 = load <2 x float>, ptr %43, align 4
  %45 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %10, i32 0, i32 1
  %46 = load <2 x float>, ptr %45, align 4
  %47 = call { <2 x float>, <2 x float> } @HMM_NormQ(<2 x float> %44, <2 x float> %46)
  %48 = getelementptr inbounds nuw %union.HMM_Quat, ptr %5, i32 0, i32 0
  %49 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %48, i32 0, i32 0
  %50 = extractvalue { <2 x float>, <2 x float> } %47, 0
  store <2 x float> %50, ptr %49, align 4
  %51 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %48, i32 0, i32 1
  %52 = extractvalue { <2 x float>, <2 x float> } %47, 1
  store <2 x float> %52, ptr %51, align 4
  %53 = getelementptr inbounds nuw %union.HMM_Quat, ptr %5, i32 0, i32 0
  %54 = load { <2 x float>, <2 x float> }, ptr %53, align 4
  ret { <2 x float>, <2 x float> } %54
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, <2 x float> } @HMM_QFromVecPair(<2 x float> %0, float %1, <2 x float> %2, float %3) #3 {
  %5 = alloca %union.HMM_Quat, align 4
  %6 = alloca %union.HMM_Vec3, align 4
  %7 = alloca { <2 x float>, float }, align 4
  %8 = alloca %union.HMM_Vec3, align 4
  %9 = alloca { <2 x float>, float }, align 4
  %10 = alloca %union.HMM_Vec3, align 4
  %11 = alloca { <2 x float>, float }, align 4
  %12 = alloca { <2 x float>, float }, align 8
  %13 = alloca %union.HMM_Vec3, align 4
  %14 = alloca { <2 x float>, float }, align 4
  %15 = alloca { <2 x float>, float }, align 8
  %16 = alloca { <2 x float>, float }, align 4
  %17 = alloca { <2 x float>, float }, align 4
  %18 = getelementptr inbounds nuw { <2 x float>, float }, ptr %7, i32 0, i32 0
  store <2 x float> %0, ptr %18, align 4
  %19 = getelementptr inbounds nuw { <2 x float>, float }, ptr %7, i32 0, i32 1
  store float %1, ptr %19, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %7, i64 12, i1 false)
  %20 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 0
  store <2 x float> %2, ptr %20, align 4
  %21 = getelementptr inbounds nuw { <2 x float>, float }, ptr %9, i32 0, i32 1
  store float %3, ptr %21, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %9, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %11, ptr align 4 %6, i64 12, i1 false)
  %22 = getelementptr inbounds nuw { <2 x float>, float }, ptr %11, i32 0, i32 0
  %23 = load <2 x float>, ptr %22, align 4
  %24 = getelementptr inbounds nuw { <2 x float>, float }, ptr %11, i32 0, i32 1
  %25 = load float, ptr %24, align 4
  %26 = call { <2 x float>, float } @HMM_NormV3(<2 x float> %23, float %25)
  %27 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %10, i32 0, i32 0
  store { <2 x float>, float } %26, ptr %12, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %27, ptr align 8 %12, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr align 4 %8, i64 12, i1 false)
  %28 = getelementptr inbounds nuw { <2 x float>, float }, ptr %14, i32 0, i32 0
  %29 = load <2 x float>, ptr %28, align 4
  %30 = getelementptr inbounds nuw { <2 x float>, float }, ptr %14, i32 0, i32 1
  %31 = load float, ptr %30, align 4
  %32 = call { <2 x float>, float } @HMM_NormV3(<2 x float> %29, float %31)
  %33 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %13, i32 0, i32 0
  store { <2 x float>, float } %32, ptr %15, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %33, ptr align 8 %15, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %16, ptr align 4 %10, i64 12, i1 false)
  %34 = getelementptr inbounds nuw { <2 x float>, float }, ptr %16, i32 0, i32 0
  %35 = load <2 x float>, ptr %34, align 4
  %36 = getelementptr inbounds nuw { <2 x float>, float }, ptr %16, i32 0, i32 1
  %37 = load float, ptr %36, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %17, ptr align 4 %13, i64 12, i1 false)
  %38 = getelementptr inbounds nuw { <2 x float>, float }, ptr %17, i32 0, i32 0
  %39 = load <2 x float>, ptr %38, align 4
  %40 = getelementptr inbounds nuw { <2 x float>, float }, ptr %17, i32 0, i32 1
  %41 = load float, ptr %40, align 4
  %42 = call { <2 x float>, <2 x float> } @HMM_QFromNormPair(<2 x float> %35, float %37, <2 x float> %39, float %41)
  %43 = getelementptr inbounds nuw %union.HMM_Quat, ptr %5, i32 0, i32 0
  %44 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %43, i32 0, i32 0
  %45 = extractvalue { <2 x float>, <2 x float> } %42, 0
  store <2 x float> %45, ptr %44, align 4
  %46 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %43, i32 0, i32 1
  %47 = extractvalue { <2 x float>, <2 x float> } %42, 1
  store <2 x float> %47, ptr %46, align 4
  %48 = getelementptr inbounds nuw %union.HMM_Quat, ptr %5, i32 0, i32 0
  %49 = load { <2 x float>, <2 x float> }, ptr %48, align 4
  ret { <2 x float>, <2 x float> } %49
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local <2 x float> @HMM_RotateV2(<2 x float> %0, float noundef %1) #3 {
  %3 = alloca %union.HMM_Vec2, align 4
  %4 = alloca %union.HMM_Vec2, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %4, i32 0, i32 0
  store <2 x float> %0, ptr %8, align 4
  store float %1, ptr %5, align 4
  %9 = load float, ptr %5, align 4
  %10 = call float @HMM_SinF(float noundef %9)
  store float %10, ptr %6, align 4
  %11 = load float, ptr %5, align 4
  %12 = call float @HMM_CosF(float noundef %11)
  store float %12, ptr %7, align 4
  %13 = getelementptr inbounds nuw %struct.anon, ptr %4, i32 0, i32 0
  %14 = load float, ptr %13, align 4
  %15 = load float, ptr %7, align 4
  %16 = getelementptr inbounds nuw %struct.anon, ptr %4, i32 0, i32 1
  %17 = load float, ptr %16, align 4
  %18 = load float, ptr %6, align 4
  %19 = fmul float %17, %18
  %20 = fneg float %19
  %21 = call float @llvm.fmuladd.f32(float %14, float %15, float %20)
  %22 = getelementptr inbounds nuw %struct.anon, ptr %4, i32 0, i32 0
  %23 = load float, ptr %22, align 4
  %24 = load float, ptr %6, align 4
  %25 = getelementptr inbounds nuw %struct.anon, ptr %4, i32 0, i32 1
  %26 = load float, ptr %25, align 4
  %27 = load float, ptr %7, align 4
  %28 = fmul float %26, %27
  %29 = call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = call <2 x float> @HMM_V2(float noundef %21, float noundef %29)
  %31 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %3, i32 0, i32 0
  store <2 x float> %30, ptr %31, align 4
  %32 = getelementptr inbounds nuw %union.HMM_Vec2, ptr %3, i32 0, i32 0
  %33 = load <2 x float>, ptr %32, align 4
  ret <2 x float> %33
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, float } @HMM_RotateV3Q(<2 x float> %0, float %1, <2 x float> %2, <2 x float> %3) #3 {
  %5 = alloca %union.HMM_Vec3, align 4
  %6 = alloca %union.HMM_Vec3, align 4
  %7 = alloca { <2 x float>, float }, align 4
  %8 = alloca %union.HMM_Quat, align 4
  %9 = alloca %union.HMM_Vec3, align 4
  %10 = alloca %union.HMM_Vec3, align 4
  %11 = alloca { <2 x float>, float }, align 4
  %12 = alloca { <2 x float>, float }, align 4
  %13 = alloca { <2 x float>, float }, align 8
  %14 = alloca { <2 x float>, float }, align 4
  %15 = alloca { <2 x float>, float }, align 8
  %16 = alloca %union.HMM_Vec3, align 4
  %17 = alloca %union.HMM_Vec3, align 4
  %18 = alloca { <2 x float>, float }, align 4
  %19 = alloca { <2 x float>, float }, align 8
  %20 = alloca %union.HMM_Vec3, align 4
  %21 = alloca { <2 x float>, float }, align 4
  %22 = alloca { <2 x float>, float }, align 4
  %23 = alloca { <2 x float>, float }, align 8
  %24 = alloca { <2 x float>, float }, align 4
  %25 = alloca { <2 x float>, float }, align 4
  %26 = alloca { <2 x float>, float }, align 8
  %27 = alloca { <2 x float>, float }, align 4
  %28 = alloca { <2 x float>, float }, align 4
  %29 = alloca { <2 x float>, float }, align 8
  %30 = alloca { <2 x float>, float }, align 8
  %31 = getelementptr inbounds nuw { <2 x float>, float }, ptr %7, i32 0, i32 0
  store <2 x float> %0, ptr %31, align 4
  %32 = getelementptr inbounds nuw { <2 x float>, float }, ptr %7, i32 0, i32 1
  store float %1, ptr %32, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %7, i64 12, i1 false)
  %33 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 0
  store <2 x float> %2, ptr %33, align 4
  %34 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 1
  store <2 x float> %3, ptr %34, align 4
  %35 = getelementptr inbounds nuw %struct.anon.18, ptr %8, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %11, ptr align 4 %35, i64 12, i1 false)
  %36 = getelementptr inbounds nuw { <2 x float>, float }, ptr %11, i32 0, i32 0
  %37 = load <2 x float>, ptr %36, align 4
  %38 = getelementptr inbounds nuw { <2 x float>, float }, ptr %11, i32 0, i32 1
  %39 = load float, ptr %38, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %12, ptr align 4 %6, i64 12, i1 false)
  %40 = getelementptr inbounds nuw { <2 x float>, float }, ptr %12, i32 0, i32 0
  %41 = load <2 x float>, ptr %40, align 4
  %42 = getelementptr inbounds nuw { <2 x float>, float }, ptr %12, i32 0, i32 1
  %43 = load float, ptr %42, align 4
  %44 = call { <2 x float>, float } @HMM_Cross(<2 x float> %37, float %39, <2 x float> %41, float %43)
  %45 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %10, i32 0, i32 0
  store { <2 x float>, float } %44, ptr %13, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %45, ptr align 8 %13, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr align 4 %10, i64 12, i1 false)
  %46 = getelementptr inbounds nuw { <2 x float>, float }, ptr %14, i32 0, i32 0
  %47 = load <2 x float>, ptr %46, align 4
  %48 = getelementptr inbounds nuw { <2 x float>, float }, ptr %14, i32 0, i32 1
  %49 = load float, ptr %48, align 4
  %50 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %47, float %49, float noundef 2.000000e+00)
  %51 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %9, i32 0, i32 0
  store { <2 x float>, float } %50, ptr %15, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %51, ptr align 8 %15, i64 12, i1 false)
  %52 = getelementptr inbounds nuw %struct.anon.18, ptr %8, i32 0, i32 1
  %53 = load float, ptr %52, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %18, ptr align 4 %9, i64 12, i1 false)
  %54 = getelementptr inbounds nuw { <2 x float>, float }, ptr %18, i32 0, i32 0
  %55 = load <2 x float>, ptr %54, align 4
  %56 = getelementptr inbounds nuw { <2 x float>, float }, ptr %18, i32 0, i32 1
  %57 = load float, ptr %56, align 4
  %58 = call { <2 x float>, float } @HMM_MulV3F(<2 x float> %55, float %57, float noundef %53)
  %59 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %17, i32 0, i32 0
  store { <2 x float>, float } %58, ptr %19, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %59, ptr align 8 %19, i64 12, i1 false)
  %60 = getelementptr inbounds nuw %struct.anon.18, ptr %8, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %21, ptr align 4 %60, i64 12, i1 false)
  %61 = getelementptr inbounds nuw { <2 x float>, float }, ptr %21, i32 0, i32 0
  %62 = load <2 x float>, ptr %61, align 4
  %63 = getelementptr inbounds nuw { <2 x float>, float }, ptr %21, i32 0, i32 1
  %64 = load float, ptr %63, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %22, ptr align 4 %9, i64 12, i1 false)
  %65 = getelementptr inbounds nuw { <2 x float>, float }, ptr %22, i32 0, i32 0
  %66 = load <2 x float>, ptr %65, align 4
  %67 = getelementptr inbounds nuw { <2 x float>, float }, ptr %22, i32 0, i32 1
  %68 = load float, ptr %67, align 4
  %69 = call { <2 x float>, float } @HMM_Cross(<2 x float> %62, float %64, <2 x float> %66, float %68)
  %70 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %20, i32 0, i32 0
  store { <2 x float>, float } %69, ptr %23, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %70, ptr align 8 %23, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %24, ptr align 4 %17, i64 12, i1 false)
  %71 = getelementptr inbounds nuw { <2 x float>, float }, ptr %24, i32 0, i32 0
  %72 = load <2 x float>, ptr %71, align 4
  %73 = getelementptr inbounds nuw { <2 x float>, float }, ptr %24, i32 0, i32 1
  %74 = load float, ptr %73, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %25, ptr align 4 %20, i64 12, i1 false)
  %75 = getelementptr inbounds nuw { <2 x float>, float }, ptr %25, i32 0, i32 0
  %76 = load <2 x float>, ptr %75, align 4
  %77 = getelementptr inbounds nuw { <2 x float>, float }, ptr %25, i32 0, i32 1
  %78 = load float, ptr %77, align 4
  %79 = call { <2 x float>, float } @HMM_AddV3(<2 x float> %72, float %74, <2 x float> %76, float %78)
  %80 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %16, i32 0, i32 0
  store { <2 x float>, float } %79, ptr %26, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %80, ptr align 8 %26, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %27, ptr align 4 %6, i64 12, i1 false)
  %81 = getelementptr inbounds nuw { <2 x float>, float }, ptr %27, i32 0, i32 0
  %82 = load <2 x float>, ptr %81, align 4
  %83 = getelementptr inbounds nuw { <2 x float>, float }, ptr %27, i32 0, i32 1
  %84 = load float, ptr %83, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %28, ptr align 4 %16, i64 12, i1 false)
  %85 = getelementptr inbounds nuw { <2 x float>, float }, ptr %28, i32 0, i32 0
  %86 = load <2 x float>, ptr %85, align 4
  %87 = getelementptr inbounds nuw { <2 x float>, float }, ptr %28, i32 0, i32 1
  %88 = load float, ptr %87, align 4
  %89 = call { <2 x float>, float } @HMM_AddV3(<2 x float> %82, float %84, <2 x float> %86, float %88)
  %90 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %5, i32 0, i32 0
  store { <2 x float>, float } %89, ptr %29, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %90, ptr align 8 %29, i64 12, i1 false)
  %91 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %5, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %30, ptr align 4 %91, i64 12, i1 false)
  %92 = load { <2 x float>, float }, ptr %30, align 8
  ret { <2 x float>, float } %92
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local { <2 x float>, float } @HMM_RotateV3AxisAngle(<2 x float> %0, float %1, <2 x float> %2, float %3, float noundef %4) #3 {
  %6 = alloca %union.HMM_Vec3, align 4
  %7 = alloca %union.HMM_Vec3, align 4
  %8 = alloca { <2 x float>, float }, align 4
  %9 = alloca %union.HMM_Vec3, align 4
  %10 = alloca { <2 x float>, float }, align 4
  %11 = alloca float, align 4
  %12 = alloca %union.HMM_Quat, align 4
  %13 = alloca { <2 x float>, float }, align 4
  %14 = alloca { <2 x float>, float }, align 4
  %15 = alloca { <2 x float>, float }, align 8
  %16 = alloca { <2 x float>, float }, align 8
  %17 = getelementptr inbounds nuw { <2 x float>, float }, ptr %8, i32 0, i32 0
  store <2 x float> %0, ptr %17, align 4
  %18 = getelementptr inbounds nuw { <2 x float>, float }, ptr %8, i32 0, i32 1
  store float %1, ptr %18, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %7, ptr align 4 %8, i64 12, i1 false)
  %19 = getelementptr inbounds nuw { <2 x float>, float }, ptr %10, i32 0, i32 0
  store <2 x float> %2, ptr %19, align 4
  %20 = getelementptr inbounds nuw { <2 x float>, float }, ptr %10, i32 0, i32 1
  store float %3, ptr %20, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 4 %10, i64 12, i1 false)
  store float %4, ptr %11, align 4
  %21 = load float, ptr %11, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %13, ptr align 4 %9, i64 12, i1 false)
  %22 = getelementptr inbounds nuw { <2 x float>, float }, ptr %13, i32 0, i32 0
  %23 = load <2 x float>, ptr %22, align 4
  %24 = getelementptr inbounds nuw { <2 x float>, float }, ptr %13, i32 0, i32 1
  %25 = load float, ptr %24, align 4
  %26 = call { <2 x float>, <2 x float> } @HMM_QFromAxisAngle(<2 x float> %23, float %25, float noundef %21)
  %27 = getelementptr inbounds nuw %union.HMM_Quat, ptr %12, i32 0, i32 0
  %28 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %27, i32 0, i32 0
  %29 = extractvalue { <2 x float>, <2 x float> } %26, 0
  store <2 x float> %29, ptr %28, align 4
  %30 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %27, i32 0, i32 1
  %31 = extractvalue { <2 x float>, <2 x float> } %26, 1
  store <2 x float> %31, ptr %30, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr align 4 %7, i64 12, i1 false)
  %32 = getelementptr inbounds nuw { <2 x float>, float }, ptr %14, i32 0, i32 0
  %33 = load <2 x float>, ptr %32, align 4
  %34 = getelementptr inbounds nuw { <2 x float>, float }, ptr %14, i32 0, i32 1
  %35 = load float, ptr %34, align 4
  %36 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %12, i32 0, i32 0
  %37 = load <2 x float>, ptr %36, align 4
  %38 = getelementptr inbounds nuw { <2 x float>, <2 x float> }, ptr %12, i32 0, i32 1
  %39 = load <2 x float>, ptr %38, align 4
  %40 = call { <2 x float>, float } @HMM_RotateV3Q(<2 x float> %33, float %35, <2 x float> %37, <2 x float> %39)
  %41 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %6, i32 0, i32 0
  store { <2 x float>, float } %40, ptr %15, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %41, ptr align 8 %15, i64 12, i1 false)
  %42 = getelementptr inbounds nuw %union.HMM_Vec3, ptr %6, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 4 %42, i64 12, i1 false)
  %43 = load { <2 x float>, float }, ptr %16, align 8
  ret { <2 x float>, float } %43
}

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 22.1.1"}
