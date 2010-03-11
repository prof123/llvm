; RUN: llvm-as < %s | llc -march=arm -mattr=+neon > %t
; RUN: grep {vshll\\.s8} %t | count 1
; RUN: grep {vshll\\.s16} %t | count 1
; RUN: grep {vshll\\.s32} %t | count 1
; RUN: grep {vshll\\.u8} %t | count 1
; RUN: grep {vshll\\.u16} %t | count 1
; RUN: grep {vshll\\.u32} %t | count 1
; RUN: grep {vshll\\.i8} %t | count 1
; RUN: grep {vshll\\.i16} %t | count 1
; RUN: grep {vshll\\.i32} %t | count 1

define <8 x i16> @vshlls8(<8 x i8>* %A) nounwind {
	%tmp1 = load <8 x i8>* %A
	%tmp2 = call <8 x i16> @llvm.arm.neon.vshiftls.v8i16(<8 x i8> %tmp1, <8 x i8> < i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7 >)
	ret <8 x i16> %tmp2
}

define <4 x i32> @vshlls16(<4 x i16>* %A) nounwind {
	%tmp1 = load <4 x i16>* %A
	%tmp2 = call <4 x i32> @llvm.arm.neon.vshiftls.v4i32(<4 x i16> %tmp1, <4 x i16> < i16 15, i16 15, i16 15, i16 15 >)
	ret <4 x i32> %tmp2
}

define <2 x i64> @vshlls32(<2 x i32>* %A) nounwind {
	%tmp1 = load <2 x i32>* %A
	%tmp2 = call <2 x i64> @llvm.arm.neon.vshiftls.v2i64(<2 x i32> %tmp1, <2 x i32> < i32 31, i32 31 >)
	ret <2 x i64> %tmp2
}

define <8 x i16> @vshllu8(<8 x i8>* %A) nounwind {
	%tmp1 = load <8 x i8>* %A
	%tmp2 = call <8 x i16> @llvm.arm.neon.vshiftlu.v8i16(<8 x i8> %tmp1, <8 x i8> < i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7 >)
	ret <8 x i16> %tmp2
}

define <4 x i32> @vshllu16(<4 x i16>* %A) nounwind {
	%tmp1 = load <4 x i16>* %A
	%tmp2 = call <4 x i32> @llvm.arm.neon.vshiftlu.v4i32(<4 x i16> %tmp1, <4 x i16> < i16 15, i16 15, i16 15, i16 15 >)
	ret <4 x i32> %tmp2
}

define <2 x i64> @vshllu32(<2 x i32>* %A) nounwind {
	%tmp1 = load <2 x i32>* %A
	%tmp2 = call <2 x i64> @llvm.arm.neon.vshiftlu.v2i64(<2 x i32> %tmp1, <2 x i32> < i32 31, i32 31 >)
	ret <2 x i64> %tmp2
}

; The following tests use the maximum shift count, so the signedness is
; irrelevant.  Test both signed and unsigned versions.
define <8 x i16> @vshlli8(<8 x i8>* %A) nounwind {
	%tmp1 = load <8 x i8>* %A
	%tmp2 = call <8 x i16> @llvm.arm.neon.vshiftls.v8i16(<8 x i8> %tmp1, <8 x i8> < i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8 >)
	ret <8 x i16> %tmp2
}

define <4 x i32> @vshlli16(<4 x i16>* %A) nounwind {
	%tmp1 = load <4 x i16>* %A
	%tmp2 = call <4 x i32> @llvm.arm.neon.vshiftlu.v4i32(<4 x i16> %tmp1, <4 x i16> < i16 16, i16 16, i16 16, i16 16 >)
	ret <4 x i32> %tmp2
}

define <2 x i64> @vshlli32(<2 x i32>* %A) nounwind {
	%tmp1 = load <2 x i32>* %A
	%tmp2 = call <2 x i64> @llvm.arm.neon.vshiftls.v2i64(<2 x i32> %tmp1, <2 x i32> < i32 32, i32 32 >)
	ret <2 x i64> %tmp2
}

declare <8 x i16> @llvm.arm.neon.vshiftls.v8i16(<8 x i8>, <8 x i8>) nounwind readnone
declare <4 x i32> @llvm.arm.neon.vshiftls.v4i32(<4 x i16>, <4 x i16>) nounwind readnone
declare <2 x i64> @llvm.arm.neon.vshiftls.v2i64(<2 x i32>, <2 x i32>) nounwind readnone

declare <8 x i16> @llvm.arm.neon.vshiftlu.v8i16(<8 x i8>, <8 x i8>) nounwind readnone
declare <4 x i32> @llvm.arm.neon.vshiftlu.v4i32(<4 x i16>, <4 x i16>) nounwind readnone
declare <2 x i64> @llvm.arm.neon.vshiftlu.v2i64(<2 x i32>, <2 x i32>) nounwind readnone
