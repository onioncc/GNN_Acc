; ModuleID = '/nethome/chao33/GNN_Acc/sandbox/project_1/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_top_ir([10 x i32]* %weights, [10 x i32]* %data_in, [20 x i32]* %data_out) local_unnamed_addr #0 {
entry:
  %weights_copy = alloca [20 x [10 x i32]], align 512
  %data_in_copy = alloca [4 x [10 x i32]], align 512
  %data_out_copy = alloca [4 x [20 x i32]], align 512
  %0 = bitcast [10 x i32]* %weights to [20 x [10 x i32]]*
  %1 = bitcast [10 x i32]* %data_in to [4 x [10 x i32]]*
  %2 = bitcast [20 x i32]* %data_out to [4 x [20 x i32]]*
  call fastcc void @copy_in([20 x [10 x i32]]* %0, [20 x [10 x i32]]* nonnull align 512 %weights_copy, [4 x [10 x i32]]* %1, [4 x [10 x i32]]* nonnull align 512 %data_in_copy, [4 x [20 x i32]]* %2, [4 x [20 x i32]]* nonnull align 512 %data_out_copy)
  %3 = getelementptr inbounds [20 x [10 x i32]], [20 x [10 x i32]]* %weights_copy, i32 0, i32 0
  %4 = getelementptr inbounds [4 x [10 x i32]], [4 x [10 x i32]]* %data_in_copy, i32 0, i32 0
  %5 = getelementptr inbounds [4 x [20 x i32]], [4 x [20 x i32]]* %data_out_copy, i32 0, i32 0
  call void @apatb_top_hw([10 x i32]* %3, [10 x i32]* %4, [20 x i32]* %5)
  call fastcc void @copy_out([20 x [10 x i32]]* %0, [20 x [10 x i32]]* nonnull align 512 %weights_copy, [4 x [10 x i32]]* %1, [4 x [10 x i32]]* nonnull align 512 %data_in_copy, [4 x [20 x i32]]* %2, [4 x [20 x i32]]* nonnull align 512 %data_out_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([20 x [10 x i32]]* readonly, [20 x [10 x i32]]* noalias align 512, [4 x [10 x i32]]* readonly, [4 x [10 x i32]]* noalias align 512, [4 x [20 x i32]]* readonly, [4 x [20 x i32]]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a20a10i32([20 x [10 x i32]]* align 512 %1, [20 x [10 x i32]]* %0)
  call fastcc void @onebyonecpy_hls.p0a4a10i32([4 x [10 x i32]]* align 512 %3, [4 x [10 x i32]]* %2)
  call fastcc void @onebyonecpy_hls.p0a4a20i32([4 x [20 x i32]]* align 512 %5, [4 x [20 x i32]]* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a20a10i32([20 x [10 x i32]]* noalias align 512, [20 x [10 x i32]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [20 x [10 x i32]]* %0, null
  %3 = icmp eq [20 x [10 x i32]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx12 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx311 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57.gep9 = getelementptr [20 x [10 x i32]], [20 x [10 x i32]]* %0, i64 0, i64 %for.loop.idx12, i64 %for.loop.idx311
  %5 = bitcast i32* %dst.addr57.gep9 to i8*
  %src.addr68.gep10 = getelementptr [20 x [10 x i32]], [20 x [10 x i32]]* %1, i64 0, i64 %for.loop.idx12, i64 %for.loop.idx311
  %6 = bitcast i32* %src.addr68.gep10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx311, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 10
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx12, 1
  %exitcond13 = icmp ne i64 %for.loop.idx.next, 20
  br i1 %exitcond13, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a4a10i32([4 x [10 x i32]]* noalias align 512, [4 x [10 x i32]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [4 x [10 x i32]]* %0, null
  %3 = icmp eq [4 x [10 x i32]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx12 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx311 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57.gep9 = getelementptr [4 x [10 x i32]], [4 x [10 x i32]]* %0, i64 0, i64 %for.loop.idx12, i64 %for.loop.idx311
  %5 = bitcast i32* %dst.addr57.gep9 to i8*
  %src.addr68.gep10 = getelementptr [4 x [10 x i32]], [4 x [10 x i32]]* %1, i64 0, i64 %for.loop.idx12, i64 %for.loop.idx311
  %6 = bitcast i32* %src.addr68.gep10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx311, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 10
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx12, 1
  %exitcond13 = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond13, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a4a20i32([4 x [20 x i32]]* noalias align 512, [4 x [20 x i32]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [4 x [20 x i32]]* %0, null
  %3 = icmp eq [4 x [20 x i32]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx12 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx311 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57.gep9 = getelementptr [4 x [20 x i32]], [4 x [20 x i32]]* %0, i64 0, i64 %for.loop.idx12, i64 %for.loop.idx311
  %5 = bitcast i32* %dst.addr57.gep9 to i8*
  %src.addr68.gep10 = getelementptr [4 x [20 x i32]], [4 x [20 x i32]]* %1, i64 0, i64 %for.loop.idx12, i64 %for.loop.idx311
  %6 = bitcast i32* %src.addr68.gep10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx311, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 20
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx12, 1
  %exitcond13 = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond13, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([20 x [10 x i32]]*, [20 x [10 x i32]]* noalias readonly align 512, [4 x [10 x i32]]*, [4 x [10 x i32]]* noalias readonly align 512, [4 x [20 x i32]]*, [4 x [20 x i32]]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a20a10i32([20 x [10 x i32]]* %0, [20 x [10 x i32]]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a4a10i32([4 x [10 x i32]]* %2, [4 x [10 x i32]]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a4a20i32([4 x [20 x i32]]* %4, [4 x [20 x i32]]* align 512 %5)
  ret void
}

declare void @apatb_top_hw([10 x i32]*, [10 x i32]*, [20 x i32]*)

define void @top_hw_stub_wrapper([10 x i32]*, [10 x i32]*, [20 x i32]*) #5 {
entry:
  %3 = bitcast [10 x i32]* %0 to [20 x [10 x i32]]*
  %4 = bitcast [10 x i32]* %1 to [4 x [10 x i32]]*
  %5 = bitcast [20 x i32]* %2 to [4 x [20 x i32]]*
  call void @copy_out([20 x [10 x i32]]* null, [20 x [10 x i32]]* %3, [4 x [10 x i32]]* null, [4 x [10 x i32]]* %4, [4 x [20 x i32]]* null, [4 x [20 x i32]]* %5)
  %6 = bitcast [20 x [10 x i32]]* %3 to [10 x i32]*
  %7 = bitcast [4 x [10 x i32]]* %4 to [10 x i32]*
  %8 = bitcast [4 x [20 x i32]]* %5 to [20 x i32]*
  call void @top_hw_stub([10 x i32]* %6, [10 x i32]* %7, [20 x i32]* %8)
  call void @copy_in([20 x [10 x i32]]* null, [20 x [10 x i32]]* %3, [4 x [10 x i32]]* null, [4 x [10 x i32]]* %4, [4 x [20 x i32]]* null, [4 x [20 x i32]]* %5)
  ret void
}

declare void @top_hw_stub([10 x i32]*, [10 x i32]*, [20 x i32]*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
