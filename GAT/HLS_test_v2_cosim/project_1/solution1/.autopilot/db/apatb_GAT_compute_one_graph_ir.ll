; ModuleID = 'C:/Users/david/Desktop/GNN_Acc/GAT/HLS_test_v2_cosim/project_1/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.ap_fixed = type { %struct.ap_fixed_base }
%struct.ap_fixed_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i28 }

; Function Attrs: noinline
define void @apatb_GAT_compute_one_graph_ir(i32* %node_feature_in, i32* %edge_list_in, i32* %graph_attr, %struct.ap_fixed* %task_tb, %struct.ap_fixed* %graph_pred_linear_weight_fixed, %struct.ap_fixed* %graph_pred_linear_bias_fixed, %struct.ap_fixed* %gat_net_scoring_fn_target_fixed, %struct.ap_fixed* %gat_net_scoring_fn_source_fixed, %struct.ap_fixed* %gat_net_linear_proj_weight_fixed, %struct.ap_fixed* %gat_net_skip_proj_weight_fixed) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 400000)
  %node_feature_in_copy = bitcast i8* %malloccall to [100000 x i32]*
  %malloccall1 = tail call i8* @malloc(i64 400000)
  %edge_list_in_copy = bitcast i8* %malloccall1 to [100000 x i32]*
  %graph_attr_copy = alloca [3 x i32], align 512
  %task_tb_copy = alloca [1 x i32], align 512
  %graph_pred_linear_weight_fixed_copy = alloca [16 x i32], align 512
  %graph_pred_linear_bias_fixed_copy = alloca [1 x i32], align 512
  %gat_net_scoring_fn_target_fixed_copy = alloca [320 x i32], align 512
  %gat_net_scoring_fn_source_fixed_copy = alloca [320 x i32], align 512
  %malloccall2 = call i8* @malloc(i64 81920)
  %gat_net_linear_proj_weight_fixed_copy = bitcast i8* %malloccall2 to [20480 x i32]*
  %malloccall3 = call i8* @malloc(i64 81920)
  %gat_net_skip_proj_weight_fixed_copy = bitcast i8* %malloccall3 to [20480 x i32]*
  %0 = bitcast i32* %node_feature_in to [100000 x i32]*
  %1 = bitcast i32* %edge_list_in to [100000 x i32]*
  %2 = bitcast i32* %graph_attr to [3 x i32]*
  %3 = bitcast %struct.ap_fixed* %task_tb to [1 x %struct.ap_fixed]*
  %4 = bitcast %struct.ap_fixed* %graph_pred_linear_weight_fixed to [16 x %struct.ap_fixed]*
  %5 = bitcast %struct.ap_fixed* %graph_pred_linear_bias_fixed to [1 x %struct.ap_fixed]*
  %6 = bitcast %struct.ap_fixed* %gat_net_scoring_fn_target_fixed to [320 x %struct.ap_fixed]*
  %7 = bitcast %struct.ap_fixed* %gat_net_scoring_fn_source_fixed to [320 x %struct.ap_fixed]*
  %8 = bitcast %struct.ap_fixed* %gat_net_linear_proj_weight_fixed to [20480 x %struct.ap_fixed]*
  %9 = bitcast %struct.ap_fixed* %gat_net_skip_proj_weight_fixed to [20480 x %struct.ap_fixed]*
  call fastcc void @copy_in([100000 x i32]* %0, [100000 x i32]* %node_feature_in_copy, [100000 x i32]* %1, [100000 x i32]* %edge_list_in_copy, [3 x i32]* %2, [3 x i32]* nonnull align 512 %graph_attr_copy, [1 x %struct.ap_fixed]* %3, [1 x i32]* nonnull align 512 %task_tb_copy, [16 x %struct.ap_fixed]* %4, [16 x i32]* nonnull align 512 %graph_pred_linear_weight_fixed_copy, [1 x %struct.ap_fixed]* %5, [1 x i32]* nonnull align 512 %graph_pred_linear_bias_fixed_copy, [320 x %struct.ap_fixed]* %6, [320 x i32]* nonnull align 512 %gat_net_scoring_fn_target_fixed_copy, [320 x %struct.ap_fixed]* %7, [320 x i32]* nonnull align 512 %gat_net_scoring_fn_source_fixed_copy, [20480 x %struct.ap_fixed]* %8, [20480 x i32]* %gat_net_linear_proj_weight_fixed_copy, [20480 x %struct.ap_fixed]* %9, [20480 x i32]* %gat_net_skip_proj_weight_fixed_copy)
  %10 = getelementptr inbounds [100000 x i32], [100000 x i32]* %node_feature_in_copy, i32 0, i32 0
  %11 = getelementptr inbounds [100000 x i32], [100000 x i32]* %edge_list_in_copy, i32 0, i32 0
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %graph_attr_copy, i32 0, i32 0
  %13 = getelementptr [1 x i32], [1 x i32]* %task_tb_copy, i32 0, i32 0
  %14 = getelementptr [16 x i32], [16 x i32]* %graph_pred_linear_weight_fixed_copy, i32 0, i32 0
  %15 = getelementptr [1 x i32], [1 x i32]* %graph_pred_linear_bias_fixed_copy, i32 0, i32 0
  %16 = getelementptr [320 x i32], [320 x i32]* %gat_net_scoring_fn_target_fixed_copy, i32 0, i32 0
  %17 = getelementptr [320 x i32], [320 x i32]* %gat_net_scoring_fn_source_fixed_copy, i32 0, i32 0
  %18 = getelementptr [20480 x i32], [20480 x i32]* %gat_net_linear_proj_weight_fixed_copy, i32 0, i32 0
  %19 = getelementptr [20480 x i32], [20480 x i32]* %gat_net_skip_proj_weight_fixed_copy, i32 0, i32 0
  call void @apatb_GAT_compute_one_graph_hw(i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19)
  call fastcc void @copy_out([100000 x i32]* %0, [100000 x i32]* %node_feature_in_copy, [100000 x i32]* %1, [100000 x i32]* %edge_list_in_copy, [3 x i32]* %2, [3 x i32]* nonnull align 512 %graph_attr_copy, [1 x %struct.ap_fixed]* %3, [1 x i32]* nonnull align 512 %task_tb_copy, [16 x %struct.ap_fixed]* %4, [16 x i32]* nonnull align 512 %graph_pred_linear_weight_fixed_copy, [1 x %struct.ap_fixed]* %5, [1 x i32]* nonnull align 512 %graph_pred_linear_bias_fixed_copy, [320 x %struct.ap_fixed]* %6, [320 x i32]* nonnull align 512 %gat_net_scoring_fn_target_fixed_copy, [320 x %struct.ap_fixed]* %7, [320 x i32]* nonnull align 512 %gat_net_scoring_fn_source_fixed_copy, [20480 x %struct.ap_fixed]* %8, [20480 x i32]* %gat_net_linear_proj_weight_fixed_copy, [20480 x %struct.ap_fixed]* %9, [20480 x i32]* %gat_net_skip_proj_weight_fixed_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  call void @free(i8* %malloccall2)
  call void @free(i8* %malloccall3)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([100000 x i32]* readonly, [100000 x i32]* noalias, [100000 x i32]* readonly, [100000 x i32]* noalias, [3 x i32]* readonly, [3 x i32]* noalias align 512, [1 x %struct.ap_fixed]* readonly, [1 x i32]* noalias align 512, [16 x %struct.ap_fixed]* readonly, [16 x i32]* noalias align 512, [1 x %struct.ap_fixed]* readonly, [1 x i32]* noalias align 512, [320 x %struct.ap_fixed]* readonly, [320 x i32]* noalias align 512, [320 x %struct.ap_fixed]* readonly, [320 x i32]* noalias align 512, [20480 x %struct.ap_fixed]* readonly, [20480 x i32]* noalias, [20480 x %struct.ap_fixed]* readonly, [20480 x i32]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %1, [100000 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %3, [100000 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a3i32([3 x i32]* align 512 %5, [3 x i32]* %4)
  call fastcc void @onebyonecpy_hls.p0a1struct.ap_fixed([1 x i32]* align 512 %7, [1 x %struct.ap_fixed]* %6)
  call fastcc void @onebyonecpy_hls.p0a16struct.ap_fixed.171([16 x i32]* align 512 %9, [16 x %struct.ap_fixed]* %8)
  call fastcc void @onebyonecpy_hls.p0a1struct.ap_fixed([1 x i32]* align 512 %11, [1 x %struct.ap_fixed]* %10)
  call fastcc void @onebyonecpy_hls.p0a320struct.ap_fixed.148([320 x i32]* align 512 %13, [320 x %struct.ap_fixed]* %12)
  call fastcc void @onebyonecpy_hls.p0a320struct.ap_fixed.148([320 x i32]* align 512 %15, [320 x %struct.ap_fixed]* %14)
  call fastcc void @onebyonecpy_hls.p0a20480struct.ap_fixed.134([20480 x i32]* %17, [20480 x %struct.ap_fixed]* %16)
  call fastcc void @onebyonecpy_hls.p0a20480struct.ap_fixed.134([20480 x i32]* %19, [20480 x %struct.ap_fixed]* %18)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* noalias, [100000 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [100000 x i32]* %0, null
  %3 = icmp eq [100000 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.gep1 = getelementptr [100000 x i32], [100000 x i32]* %0, i64 0, i64 %for.loop.idx3
  %5 = bitcast i32* %dst.addr.gep1 to i8*
  %src.addr.gep2 = getelementptr [100000 x i32], [100000 x i32]* %1, i64 0, i64 %for.loop.idx3
  %6 = bitcast i32* %src.addr.gep2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 100000
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a3i32([3 x i32]* noalias align 512, [3 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [3 x i32]* %0, null
  %3 = icmp eq [3 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.gep1 = getelementptr [3 x i32], [3 x i32]* %0, i64 0, i64 %for.loop.idx3
  %5 = bitcast i32* %dst.addr.gep1 to i8*
  %src.addr.gep2 = getelementptr [3 x i32], [3 x i32]* %1, i64 0, i64 %for.loop.idx3
  %6 = bitcast i32* %src.addr.gep2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a16struct.ap_fixed([16 x %struct.ap_fixed]* noalias, [16 x i32]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [16 x %struct.ap_fixed]* %0, null
  %3 = icmp eq [16 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.0.0.06.gep7 = getelementptr [16 x %struct.ap_fixed], [16 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %5 = getelementptr [16 x i32], [16 x i32]* %1, i64 0, i64 %for.loop.idx9
  %6 = load i32, i32* %5, align 4
  %7 = call i28 @_llvm.fpga.unpack.none.i28.i32(i32 %6)
  store i28 %7, i28* %dst.addr.0.0.06.gep7, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([100000 x i32]*, [100000 x i32]* noalias readonly, [100000 x i32]*, [100000 x i32]* noalias readonly, [3 x i32]*, [3 x i32]* noalias readonly align 512, [1 x %struct.ap_fixed]*, [1 x i32]* noalias readonly align 512, [16 x %struct.ap_fixed]*, [16 x i32]* noalias readonly align 512, [1 x %struct.ap_fixed]*, [1 x i32]* noalias readonly align 512, [320 x %struct.ap_fixed]*, [320 x i32]* noalias readonly align 512, [320 x %struct.ap_fixed]*, [320 x i32]* noalias readonly align 512, [20480 x %struct.ap_fixed]*, [20480 x i32]* noalias readonly, [20480 x %struct.ap_fixed]*, [20480 x i32]* noalias readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %0, [100000 x i32]* %1)
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %2, [100000 x i32]* %3)
  call fastcc void @onebyonecpy_hls.p0a3i32([3 x i32]* %4, [3 x i32]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a1struct.ap_fixed.161([1 x %struct.ap_fixed]* %6, [1 x i32]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a16struct.ap_fixed([16 x %struct.ap_fixed]* %8, [16 x i32]* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0a1struct.ap_fixed.161([1 x %struct.ap_fixed]* %10, [1 x i32]* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0a320struct.ap_fixed([320 x %struct.ap_fixed]* %12, [320 x i32]* align 512 %13)
  call fastcc void @onebyonecpy_hls.p0a320struct.ap_fixed([320 x %struct.ap_fixed]* %14, [320 x i32]* align 512 %15)
  call fastcc void @onebyonecpy_hls.p0a20480struct.ap_fixed([20480 x %struct.ap_fixed]* %16, [20480 x i32]* %17)
  call fastcc void @onebyonecpy_hls.p0a20480struct.ap_fixed([20480 x %struct.ap_fixed]* %18, [20480 x i32]* %19)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: alwaysinline nounwind readnone
define internal i28 @_llvm.fpga.unpack.none.i28.i32(i32 %A) #5 {
  %A.cast = trunc i32 %A to i28
  ret i28 %A.cast
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a20480struct.ap_fixed([20480 x %struct.ap_fixed]* noalias, [20480 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [20480 x %struct.ap_fixed]* %0, null
  %3 = icmp eq [20480 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.0.0.06.gep7 = getelementptr [20480 x %struct.ap_fixed], [20480 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %5 = getelementptr [20480 x i32], [20480 x i32]* %1, i64 0, i64 %for.loop.idx9
  %6 = load i32, i32* %5, align 4
  %7 = call i28 @_llvm.fpga.unpack.none.i28.i32(i32 %6)
  store i28 %7, i28* %dst.addr.0.0.06.gep7, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 20480
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a20480struct.ap_fixed.134([20480 x i32]* noalias, [20480 x %struct.ap_fixed]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [20480 x i32]* %0, null
  %3 = icmp eq [20480 x %struct.ap_fixed]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [20480 x i32], [20480 x i32]* %0, i64 0, i64 %for.loop.idx9
  %src.addr.0.0.05.gep8 = getelementptr [20480 x %struct.ap_fixed], [20480 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %6 = bitcast i28* %src.addr.0.0.05.gep8 to i32*
  %7 = load i32, i32* %6
  %8 = trunc i32 %7 to i28
  %9 = call i32 @_llvm.fpga.pack.none.i32.i28(i28 %8)
  store i32 %9, i32* %5, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 20480
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i32 @_llvm.fpga.pack.none.i32.i28(i28 %A) #5 {
  %A.cast = zext i28 %A to i32
  ret i32 %A.cast
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a320struct.ap_fixed([320 x %struct.ap_fixed]* noalias, [320 x i32]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [320 x %struct.ap_fixed]* %0, null
  %3 = icmp eq [320 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.0.0.06.gep7 = getelementptr [320 x %struct.ap_fixed], [320 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %5 = getelementptr [320 x i32], [320 x i32]* %1, i64 0, i64 %for.loop.idx9
  %6 = load i32, i32* %5, align 4
  %7 = call i28 @_llvm.fpga.unpack.none.i28.i32(i32 %6)
  store i28 %7, i28* %dst.addr.0.0.06.gep7, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 320
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a320struct.ap_fixed.148([320 x i32]* noalias align 512, [320 x %struct.ap_fixed]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [320 x i32]* %0, null
  %3 = icmp eq [320 x %struct.ap_fixed]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [320 x i32], [320 x i32]* %0, i64 0, i64 %for.loop.idx9
  %src.addr.0.0.05.gep8 = getelementptr [320 x %struct.ap_fixed], [320 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %6 = bitcast i28* %src.addr.0.0.05.gep8 to i32*
  %7 = load i32, i32* %6
  %8 = trunc i32 %7 to i28
  %9 = call i32 @_llvm.fpga.pack.none.i32.i28(i28 %8)
  store i32 %9, i32* %5, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 320
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a1struct.ap_fixed.161([1 x %struct.ap_fixed]* noalias, [1 x i32]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [1 x %struct.ap_fixed]* %0, null
  %3 = icmp eq [1 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %for.loop

for.loop:                                         ; preds = %entry
  %5 = getelementptr [1 x i32], [1 x i32]* %1, i64 0, i32 0
  %6 = getelementptr inbounds [1 x %struct.ap_fixed], [1 x %struct.ap_fixed]* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %7 = load i32, i32* %5, align 512
  %8 = call i28 @_llvm.fpga.unpack.none.i28.i32(i32 %7)
  store i28 %8, i28* %6, align 4
  br label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a1struct.ap_fixed([1 x i32]* noalias align 512, [1 x %struct.ap_fixed]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1 x i32]* %0, null
  %3 = icmp eq [1 x %struct.ap_fixed]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %for.loop

for.loop:                                         ; preds = %entry
  %5 = getelementptr [1 x i32], [1 x i32]* %0, i64 0, i32 0
  %6 = getelementptr inbounds [1 x %struct.ap_fixed], [1 x %struct.ap_fixed]* %1, i64 0, i32 0, i32 0, i32 0, i32 0
  %7 = bitcast i28* %6 to i32*
  %8 = load i32, i32* %7
  %9 = trunc i32 %8 to i28
  %10 = call i32 @_llvm.fpga.pack.none.i32.i28(i28 %9)
  store i32 %10, i32* %5, align 512
  br label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a16struct.ap_fixed.171([16 x i32]* noalias align 512, [16 x %struct.ap_fixed]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [16 x i32]* %0, null
  %3 = icmp eq [16 x %struct.ap_fixed]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [16 x i32], [16 x i32]* %0, i64 0, i64 %for.loop.idx9
  %src.addr.0.0.05.gep8 = getelementptr [16 x %struct.ap_fixed], [16 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %6 = bitcast i28* %src.addr.0.0.05.gep8 to i32*
  %7 = load i32, i32* %6
  %8 = trunc i32 %7 to i28
  %9 = call i32 @_llvm.fpga.pack.none.i32.i28(i28 %8)
  store i32 %9, i32* %5, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_GAT_compute_one_graph_hw(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)

define void @GAT_compute_one_graph_hw_stub_wrapper(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #6 {
entry:
  %10 = alloca [1 x %struct.ap_fixed]
  %11 = alloca [16 x %struct.ap_fixed]
  %12 = alloca [1 x %struct.ap_fixed]
  %13 = alloca [320 x %struct.ap_fixed]
  %14 = alloca [320 x %struct.ap_fixed]
  %malloccall = tail call i8* @malloc(i64 81920)
  %15 = bitcast i8* %malloccall to [20480 x %struct.ap_fixed]*
  %malloccall1 = tail call i8* @malloc(i64 81920)
  %16 = bitcast i8* %malloccall1 to [20480 x %struct.ap_fixed]*
  %17 = bitcast i32* %0 to [100000 x i32]*
  %18 = bitcast i32* %1 to [100000 x i32]*
  %19 = bitcast i32* %2 to [3 x i32]*
  %20 = bitcast i32* %3 to [1 x i32]*
  %21 = bitcast i32* %4 to [16 x i32]*
  %22 = bitcast i32* %5 to [1 x i32]*
  %23 = bitcast i32* %6 to [320 x i32]*
  %24 = bitcast i32* %7 to [320 x i32]*
  %25 = bitcast i32* %8 to [20480 x i32]*
  %26 = bitcast i32* %9 to [20480 x i32]*
  call void @copy_out([100000 x i32]* null, [100000 x i32]* %17, [100000 x i32]* null, [100000 x i32]* %18, [3 x i32]* null, [3 x i32]* %19, [1 x %struct.ap_fixed]* %10, [1 x i32]* %20, [16 x %struct.ap_fixed]* %11, [16 x i32]* %21, [1 x %struct.ap_fixed]* %12, [1 x i32]* %22, [320 x %struct.ap_fixed]* %13, [320 x i32]* %23, [320 x %struct.ap_fixed]* %14, [320 x i32]* %24, [20480 x %struct.ap_fixed]* %15, [20480 x i32]* %25, [20480 x %struct.ap_fixed]* %16, [20480 x i32]* %26)
  %27 = bitcast [100000 x i32]* %17 to i32*
  %28 = bitcast [100000 x i32]* %18 to i32*
  %29 = bitcast [3 x i32]* %19 to i32*
  %30 = bitcast [1 x %struct.ap_fixed]* %10 to %struct.ap_fixed*
  %31 = bitcast [16 x %struct.ap_fixed]* %11 to %struct.ap_fixed*
  %32 = bitcast [1 x %struct.ap_fixed]* %12 to %struct.ap_fixed*
  %33 = bitcast [320 x %struct.ap_fixed]* %13 to %struct.ap_fixed*
  %34 = bitcast [320 x %struct.ap_fixed]* %14 to %struct.ap_fixed*
  %35 = bitcast [20480 x %struct.ap_fixed]* %15 to %struct.ap_fixed*
  %36 = bitcast [20480 x %struct.ap_fixed]* %16 to %struct.ap_fixed*
  call void @GAT_compute_one_graph_hw_stub(i32* %27, i32* %28, i32* %29, %struct.ap_fixed* %30, %struct.ap_fixed* %31, %struct.ap_fixed* %32, %struct.ap_fixed* %33, %struct.ap_fixed* %34, %struct.ap_fixed* %35, %struct.ap_fixed* %36)
  call void @copy_in([100000 x i32]* null, [100000 x i32]* %17, [100000 x i32]* null, [100000 x i32]* %18, [3 x i32]* null, [3 x i32]* %19, [1 x %struct.ap_fixed]* %10, [1 x i32]* %20, [16 x %struct.ap_fixed]* %11, [16 x i32]* %21, [1 x %struct.ap_fixed]* %12, [1 x i32]* %22, [320 x %struct.ap_fixed]* %13, [320 x i32]* %23, [320 x %struct.ap_fixed]* %14, [320 x i32]* %24, [20480 x %struct.ap_fixed]* %15, [20480 x i32]* %25, [20480 x %struct.ap_fixed]* %16, [20480 x i32]* %26)
  ret void
}

declare void @GAT_compute_one_graph_hw_stub(i32*, i32*, i32*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { alwaysinline nounwind readnone }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
