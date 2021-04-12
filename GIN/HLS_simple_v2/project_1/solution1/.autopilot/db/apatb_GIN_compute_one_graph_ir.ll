; ModuleID = '/nethome/chao33/GNN_Acc/GIN/HLS_simple_v2/project_1/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.ap_fixed = type { %struct.ap_fixed_base }
%struct.ap_fixed_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i32 }

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #0

; Function Attrs: noinline
define void @apatb_GIN_compute_one_graph_ir(i32* %node_feature_in, i32* %edge_list_in, i32* %edge_attr_in, i32* %graph_attr, %struct.ap_fixed* %task, %struct.ap_fixed* %gnn_node_mlp_1_weights_fixed, %struct.ap_fixed* %gnn_node_mlp_1_bias_fixed, %struct.ap_fixed* %gnn_node_mlp_2_weights_fixed, %struct.ap_fixed* %gnn_node_mlp_2_bias_fixed, %struct.ap_fixed* %gnn_node_embedding_fixed, %struct.ap_fixed* %gnn_edge_embedding_fixed, %struct.ap_fixed* %graph_pred_linear_weight_fixed, %struct.ap_fixed* %graph_pred_linear_bias_fixed, %struct.ap_fixed* %eps_fixed) local_unnamed_addr #1 {
entry:
  %malloccall = tail call i8* @malloc(i64 400000)
  %node_feature_in_copy = bitcast i8* %malloccall to [100000 x i32]*
  %malloccall1 = tail call i8* @malloc(i64 400000)
  %edge_list_in_copy = bitcast i8* %malloccall1 to [100000 x i32]*
  %malloccall2 = tail call i8* @malloc(i64 400000)
  %edge_attr_in_copy = bitcast i8* %malloccall2 to [100000 x i32]*
  %malloccall3 = tail call i8* @malloc(i64 400000)
  %graph_attr_copy = bitcast i8* %malloccall3 to [100000 x i32]*
  %malloccall4 = tail call i8* @malloc(i64 400000)
  %task_copy = bitcast i8* %malloccall4 to [100000 x %struct.ap_fixed]*
  %malloccall5 = tail call i8* @malloc(i64 3600000)
  %gnn_node_mlp_1_weights_fixed_copy = bitcast i8* %malloccall5 to [900000 x %struct.ap_fixed]*
  %malloccall6 = tail call i8* @malloc(i64 12000)
  %gnn_node_mlp_1_bias_fixed_copy = bitcast i8* %malloccall6 to [3000 x %struct.ap_fixed]*
  %malloccall7 = tail call i8* @malloc(i64 3600000)
  %gnn_node_mlp_2_weights_fixed_copy = bitcast i8* %malloccall7 to [900000 x %struct.ap_fixed]*
  %malloccall8 = tail call i8* @malloc(i64 6000)
  %gnn_node_mlp_2_bias_fixed_copy = bitcast i8* %malloccall8 to [1500 x %struct.ap_fixed]*
  %malloccall9 = tail call i8* @malloc(i64 207600)
  %gnn_node_embedding_fixed_copy = bitcast i8* %malloccall9 to [51900 x %struct.ap_fixed]*
  %malloccall10 = tail call i8* @malloc(i64 78000)
  %gnn_edge_embedding_fixed_copy = bitcast i8* %malloccall10 to [19500 x %struct.ap_fixed]*
  %graph_pred_linear_weight_fixed_copy = alloca [300 x %struct.ap_fixed], align 512
  %graph_pred_linear_bias_fixed_copy = alloca [1 x %struct.ap_fixed], align 512
  %eps_fixed_copy = alloca [5 x %struct.ap_fixed], align 512
  %0 = bitcast i32* %node_feature_in to [100000 x i32]*
  %1 = bitcast i32* %edge_list_in to [100000 x i32]*
  %2 = bitcast i32* %edge_attr_in to [100000 x i32]*
  %3 = bitcast i32* %graph_attr to [100000 x i32]*
  %4 = bitcast %struct.ap_fixed* %task to [100000 x %struct.ap_fixed]*
  %5 = bitcast %struct.ap_fixed* %gnn_node_mlp_1_weights_fixed to [900000 x %struct.ap_fixed]*
  %6 = bitcast %struct.ap_fixed* %gnn_node_mlp_1_bias_fixed to [3000 x %struct.ap_fixed]*
  %7 = bitcast %struct.ap_fixed* %gnn_node_mlp_2_weights_fixed to [900000 x %struct.ap_fixed]*
  %8 = bitcast %struct.ap_fixed* %gnn_node_mlp_2_bias_fixed to [1500 x %struct.ap_fixed]*
  %9 = bitcast %struct.ap_fixed* %gnn_node_embedding_fixed to [51900 x %struct.ap_fixed]*
  %10 = bitcast %struct.ap_fixed* %gnn_edge_embedding_fixed to [19500 x %struct.ap_fixed]*
  %11 = bitcast %struct.ap_fixed* %graph_pred_linear_weight_fixed to [300 x %struct.ap_fixed]*
  %12 = bitcast %struct.ap_fixed* %graph_pred_linear_bias_fixed to [1 x %struct.ap_fixed]*
  %13 = bitcast %struct.ap_fixed* %eps_fixed to [5 x %struct.ap_fixed]*
  call fastcc void @copy_in([100000 x i32]* %0, [100000 x i32]* %node_feature_in_copy, [100000 x i32]* %1, [100000 x i32]* %edge_list_in_copy, [100000 x i32]* %2, [100000 x i32]* %edge_attr_in_copy, [100000 x i32]* %3, [100000 x i32]* %graph_attr_copy, [100000 x %struct.ap_fixed]* %4, [100000 x %struct.ap_fixed]* %task_copy, [900000 x %struct.ap_fixed]* %5, [900000 x %struct.ap_fixed]* %gnn_node_mlp_1_weights_fixed_copy, [3000 x %struct.ap_fixed]* %6, [3000 x %struct.ap_fixed]* %gnn_node_mlp_1_bias_fixed_copy, [900000 x %struct.ap_fixed]* %7, [900000 x %struct.ap_fixed]* %gnn_node_mlp_2_weights_fixed_copy, [1500 x %struct.ap_fixed]* %8, [1500 x %struct.ap_fixed]* %gnn_node_mlp_2_bias_fixed_copy, [51900 x %struct.ap_fixed]* %9, [51900 x %struct.ap_fixed]* %gnn_node_embedding_fixed_copy, [19500 x %struct.ap_fixed]* %10, [19500 x %struct.ap_fixed]* %gnn_edge_embedding_fixed_copy, [300 x %struct.ap_fixed]* %11, [300 x %struct.ap_fixed]* nonnull align 512 %graph_pred_linear_weight_fixed_copy, [1 x %struct.ap_fixed]* %12, [1 x %struct.ap_fixed]* nonnull align 512 %graph_pred_linear_bias_fixed_copy, [5 x %struct.ap_fixed]* %13, [5 x %struct.ap_fixed]* nonnull align 512 %eps_fixed_copy)
  %14 = getelementptr inbounds [100000 x i32], [100000 x i32]* %node_feature_in_copy, i32 0, i32 0
  %15 = getelementptr inbounds [100000 x i32], [100000 x i32]* %edge_list_in_copy, i32 0, i32 0
  %16 = getelementptr inbounds [100000 x i32], [100000 x i32]* %edge_attr_in_copy, i32 0, i32 0
  %17 = getelementptr inbounds [100000 x i32], [100000 x i32]* %graph_attr_copy, i32 0, i32 0
  %18 = getelementptr inbounds [100000 x %struct.ap_fixed], [100000 x %struct.ap_fixed]* %task_copy, i32 0, i32 0
  %19 = getelementptr inbounds [900000 x %struct.ap_fixed], [900000 x %struct.ap_fixed]* %gnn_node_mlp_1_weights_fixed_copy, i32 0, i32 0
  %20 = getelementptr inbounds [3000 x %struct.ap_fixed], [3000 x %struct.ap_fixed]* %gnn_node_mlp_1_bias_fixed_copy, i32 0, i32 0
  %21 = getelementptr inbounds [900000 x %struct.ap_fixed], [900000 x %struct.ap_fixed]* %gnn_node_mlp_2_weights_fixed_copy, i32 0, i32 0
  %22 = getelementptr inbounds [1500 x %struct.ap_fixed], [1500 x %struct.ap_fixed]* %gnn_node_mlp_2_bias_fixed_copy, i32 0, i32 0
  %23 = getelementptr inbounds [51900 x %struct.ap_fixed], [51900 x %struct.ap_fixed]* %gnn_node_embedding_fixed_copy, i32 0, i32 0
  %24 = getelementptr inbounds [19500 x %struct.ap_fixed], [19500 x %struct.ap_fixed]* %gnn_edge_embedding_fixed_copy, i32 0, i32 0
  %25 = getelementptr inbounds [300 x %struct.ap_fixed], [300 x %struct.ap_fixed]* %graph_pred_linear_weight_fixed_copy, i32 0, i32 0
  %26 = getelementptr inbounds [1 x %struct.ap_fixed], [1 x %struct.ap_fixed]* %graph_pred_linear_bias_fixed_copy, i32 0, i32 0
  %27 = getelementptr inbounds [5 x %struct.ap_fixed], [5 x %struct.ap_fixed]* %eps_fixed_copy, i32 0, i32 0
  call void @apatb_GIN_compute_one_graph_hw(i32* %14, i32* %15, i32* %16, i32* %17, %struct.ap_fixed* %18, %struct.ap_fixed* %19, %struct.ap_fixed* %20, %struct.ap_fixed* %21, %struct.ap_fixed* %22, %struct.ap_fixed* %23, %struct.ap_fixed* %24, %struct.ap_fixed* %25, %struct.ap_fixed* %26, %struct.ap_fixed* %27)
  call fastcc void @copy_out([100000 x i32]* %0, [100000 x i32]* %node_feature_in_copy, [100000 x i32]* %1, [100000 x i32]* %edge_list_in_copy, [100000 x i32]* %2, [100000 x i32]* %edge_attr_in_copy, [100000 x i32]* %3, [100000 x i32]* %graph_attr_copy, [100000 x %struct.ap_fixed]* %4, [100000 x %struct.ap_fixed]* %task_copy, [900000 x %struct.ap_fixed]* %5, [900000 x %struct.ap_fixed]* %gnn_node_mlp_1_weights_fixed_copy, [3000 x %struct.ap_fixed]* %6, [3000 x %struct.ap_fixed]* %gnn_node_mlp_1_bias_fixed_copy, [900000 x %struct.ap_fixed]* %7, [900000 x %struct.ap_fixed]* %gnn_node_mlp_2_weights_fixed_copy, [1500 x %struct.ap_fixed]* %8, [1500 x %struct.ap_fixed]* %gnn_node_mlp_2_bias_fixed_copy, [51900 x %struct.ap_fixed]* %9, [51900 x %struct.ap_fixed]* %gnn_node_embedding_fixed_copy, [19500 x %struct.ap_fixed]* %10, [19500 x %struct.ap_fixed]* %gnn_edge_embedding_fixed_copy, [300 x %struct.ap_fixed]* %11, [300 x %struct.ap_fixed]* nonnull align 512 %graph_pred_linear_weight_fixed_copy, [1 x %struct.ap_fixed]* %12, [1 x %struct.ap_fixed]* nonnull align 512 %graph_pred_linear_bias_fixed_copy, [5 x %struct.ap_fixed]* %13, [5 x %struct.ap_fixed]* nonnull align 512 %eps_fixed_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  tail call void @free(i8* %malloccall3)
  tail call void @free(i8* %malloccall4)
  tail call void @free(i8* %malloccall5)
  tail call void @free(i8* %malloccall6)
  tail call void @free(i8* %malloccall7)
  tail call void @free(i8* %malloccall8)
  tail call void @free(i8* %malloccall9)
  tail call void @free(i8* %malloccall10)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: noinline
define internal fastcc void @copy_in([100000 x i32]* readonly, [100000 x i32]* noalias, [100000 x i32]* readonly, [100000 x i32]* noalias, [100000 x i32]* readonly, [100000 x i32]* noalias, [100000 x i32]* readonly, [100000 x i32]* noalias, [100000 x %struct.ap_fixed]*, [100000 x %struct.ap_fixed]* noalias, [900000 x %struct.ap_fixed]*, [900000 x %struct.ap_fixed]* noalias, [3000 x %struct.ap_fixed]*, [3000 x %struct.ap_fixed]* noalias, [900000 x %struct.ap_fixed]*, [900000 x %struct.ap_fixed]* noalias, [1500 x %struct.ap_fixed]*, [1500 x %struct.ap_fixed]* noalias, [51900 x %struct.ap_fixed]*, [51900 x %struct.ap_fixed]* noalias, [19500 x %struct.ap_fixed]*, [19500 x %struct.ap_fixed]* noalias, [300 x %struct.ap_fixed]*, [300 x %struct.ap_fixed]* noalias align 512, [1 x %struct.ap_fixed]*, [1 x %struct.ap_fixed]* noalias align 512, [5 x %struct.ap_fixed]*, [5 x %struct.ap_fixed]* noalias align 512) unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %1, [100000 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %3, [100000 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %5, [100000 x i32]* %4)
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %7, [100000 x i32]* %6)
  call fastcc void @onebyonecpy_hls.p0a100000struct.ap_fixed([100000 x %struct.ap_fixed]* %9, [100000 x %struct.ap_fixed]* %8)
  call fastcc void @onebyonecpy_hls.p0a900000struct.ap_fixed([900000 x %struct.ap_fixed]* %11, [900000 x %struct.ap_fixed]* %10)
  call fastcc void @onebyonecpy_hls.p0a3000struct.ap_fixed([3000 x %struct.ap_fixed]* %13, [3000 x %struct.ap_fixed]* %12)
  call fastcc void @onebyonecpy_hls.p0a900000struct.ap_fixed([900000 x %struct.ap_fixed]* %15, [900000 x %struct.ap_fixed]* %14)
  call fastcc void @onebyonecpy_hls.p0a1500struct.ap_fixed([1500 x %struct.ap_fixed]* %17, [1500 x %struct.ap_fixed]* %16)
  call fastcc void @onebyonecpy_hls.p0a51900struct.ap_fixed([51900 x %struct.ap_fixed]* %19, [51900 x %struct.ap_fixed]* %18)
  call fastcc void @onebyonecpy_hls.p0a19500struct.ap_fixed([19500 x %struct.ap_fixed]* %21, [19500 x %struct.ap_fixed]* %20)
  call fastcc void @onebyonecpy_hls.p0a300struct.ap_fixed([300 x %struct.ap_fixed]* align 512 %23, [300 x %struct.ap_fixed]* %22)
  call fastcc void @onebyonecpy_hls.p0a1struct.ap_fixed([1 x %struct.ap_fixed]* align 512 %25, [1 x %struct.ap_fixed]* %24)
  call fastcc void @onebyonecpy_hls.p0a5struct.ap_fixed([5 x %struct.ap_fixed]* align 512 %27, [5 x %struct.ap_fixed]* %26)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* noalias, [100000 x i32]* noalias readonly) unnamed_addr #3 {
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

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0a100000struct.ap_fixed([100000 x %struct.ap_fixed]* noalias, [100000 x %struct.ap_fixed]* noalias) unnamed_addr #4 {
entry:
  %2 = icmp eq [100000 x %struct.ap_fixed]* %0, null
  %3 = icmp eq [100000 x %struct.ap_fixed]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.head, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.head ]
  %dst.addr = getelementptr [100000 x %struct.ap_fixed], [100000 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9
  %src.addr = getelementptr [100000 x %struct.ap_fixed], [100000 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9
  %5 = bitcast %struct.ap_fixed* %src.addr to i8*
  %6 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %for.loop
  call fastcc void @streamcpy_hls.p0struct.ap_fixed(%struct.ap_fixed* %dst.addr, %struct.ap_fixed* %src.addr)
  br label %for.loop.head

; <label>:8:                                      ; preds = %for.loop
  %src.addr.01 = getelementptr [100000 x %struct.ap_fixed], [100000 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0
  %dst.addr.02 = getelementptr [100000 x %struct.ap_fixed], [100000 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0
  %9 = bitcast %struct.ap_fixed_base* %src.addr.01 to i8*
  %10 = call i1 @fpga_fifo_exist_4(i8* %9)
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_fixed_base(%struct.ap_fixed_base* %dst.addr.02, %struct.ap_fixed_base* %src.addr.01)
  br label %for.loop.head

; <label>:12:                                     ; preds = %8
  %src.addr.0.03 = getelementptr [100000 x %struct.ap_fixed], [100000 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %dst.addr.0.04 = getelementptr [100000 x %struct.ap_fixed], [100000 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %13 = bitcast %struct.ssdm_int* %src.addr.0.03 to i8*
  %14 = call i1 @fpga_fifo_exist_4(i8* %13)
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %dst.addr.0.04, %struct.ssdm_int* %src.addr.0.03)
  br label %for.loop.head

; <label>:16:                                     ; preds = %12
  %dst.addr.0.0.06.gep7 = getelementptr [100000 x %struct.ap_fixed], [100000 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %17 = bitcast i32* %dst.addr.0.0.06.gep7 to i8*
  %src.addr.0.0.05.gep8 = getelementptr [100000 x %struct.ap_fixed], [100000 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %18 = bitcast i32* %src.addr.0.0.05.gep8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %18, i64 4, i1 false)
  br label %for.loop.head

for.loop.head:                                    ; preds = %16, %15, %11, %7
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 100000
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.head, %entry
  ret void
}

declare i1 @fpga_fifo_exist_4(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_fixed(%struct.ap_fixed* noalias nocapture, %struct.ap_fixed* noalias nocapture) unnamed_addr #5 {
entry:
  %2 = alloca %struct.ap_fixed
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_fixed* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_fixed* %2 to i8*
  %6 = bitcast %struct.ap_fixed* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_fixed, %struct.ap_fixed* %2
  %8 = bitcast %struct.ap_fixed* %2 to i8*
  %9 = bitcast %struct.ap_fixed* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_fixed* %1 to i8*
  %11 = bitcast %struct.ap_fixed* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_fixed_base(%struct.ap_fixed_base* noalias nocapture, %struct.ap_fixed_base* noalias nocapture) unnamed_addr #5 {
entry:
  %2 = alloca %struct.ap_fixed_base
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_fixed_base* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_fixed_base* %2 to i8*
  %6 = bitcast %struct.ap_fixed_base* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_fixed_base, %struct.ap_fixed_base* %2
  %8 = bitcast %struct.ap_fixed_base* %2 to i8*
  %9 = bitcast %struct.ap_fixed_base* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_fixed_base* %1 to i8*
  %11 = bitcast %struct.ap_fixed_base* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* noalias nocapture, %struct.ssdm_int* noalias nocapture) unnamed_addr #5 {
entry:
  %2 = alloca %struct.ssdm_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int* %2 to i8*
  %6 = bitcast %struct.ssdm_int* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int, %struct.ssdm_int* %2
  %8 = bitcast %struct.ssdm_int* %2 to i8*
  %9 = bitcast %struct.ssdm_int* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int* %1 to i8*
  %11 = bitcast %struct.ssdm_int* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0a900000struct.ap_fixed([900000 x %struct.ap_fixed]* noalias, [900000 x %struct.ap_fixed]* noalias) unnamed_addr #4 {
entry:
  %2 = icmp eq [900000 x %struct.ap_fixed]* %0, null
  %3 = icmp eq [900000 x %struct.ap_fixed]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.head, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.head ]
  %dst.addr = getelementptr [900000 x %struct.ap_fixed], [900000 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9
  %src.addr = getelementptr [900000 x %struct.ap_fixed], [900000 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9
  %5 = bitcast %struct.ap_fixed* %src.addr to i8*
  %6 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %for.loop
  call fastcc void @streamcpy_hls.p0struct.ap_fixed(%struct.ap_fixed* %dst.addr, %struct.ap_fixed* %src.addr)
  br label %for.loop.head

; <label>:8:                                      ; preds = %for.loop
  %src.addr.01 = getelementptr [900000 x %struct.ap_fixed], [900000 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0
  %dst.addr.02 = getelementptr [900000 x %struct.ap_fixed], [900000 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0
  %9 = bitcast %struct.ap_fixed_base* %src.addr.01 to i8*
  %10 = call i1 @fpga_fifo_exist_4(i8* %9)
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_fixed_base(%struct.ap_fixed_base* %dst.addr.02, %struct.ap_fixed_base* %src.addr.01)
  br label %for.loop.head

; <label>:12:                                     ; preds = %8
  %src.addr.0.03 = getelementptr [900000 x %struct.ap_fixed], [900000 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %dst.addr.0.04 = getelementptr [900000 x %struct.ap_fixed], [900000 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %13 = bitcast %struct.ssdm_int* %src.addr.0.03 to i8*
  %14 = call i1 @fpga_fifo_exist_4(i8* %13)
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %dst.addr.0.04, %struct.ssdm_int* %src.addr.0.03)
  br label %for.loop.head

; <label>:16:                                     ; preds = %12
  %dst.addr.0.0.06.gep7 = getelementptr [900000 x %struct.ap_fixed], [900000 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %17 = bitcast i32* %dst.addr.0.0.06.gep7 to i8*
  %src.addr.0.0.05.gep8 = getelementptr [900000 x %struct.ap_fixed], [900000 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %18 = bitcast i32* %src.addr.0.0.05.gep8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %18, i64 4, i1 false)
  br label %for.loop.head

for.loop.head:                                    ; preds = %16, %15, %11, %7
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 900000
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.head, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0a3000struct.ap_fixed([3000 x %struct.ap_fixed]* noalias, [3000 x %struct.ap_fixed]* noalias) unnamed_addr #4 {
entry:
  %2 = icmp eq [3000 x %struct.ap_fixed]* %0, null
  %3 = icmp eq [3000 x %struct.ap_fixed]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.head, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.head ]
  %dst.addr = getelementptr [3000 x %struct.ap_fixed], [3000 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9
  %src.addr = getelementptr [3000 x %struct.ap_fixed], [3000 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9
  %5 = bitcast %struct.ap_fixed* %src.addr to i8*
  %6 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %for.loop
  call fastcc void @streamcpy_hls.p0struct.ap_fixed(%struct.ap_fixed* %dst.addr, %struct.ap_fixed* %src.addr)
  br label %for.loop.head

; <label>:8:                                      ; preds = %for.loop
  %src.addr.01 = getelementptr [3000 x %struct.ap_fixed], [3000 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0
  %dst.addr.02 = getelementptr [3000 x %struct.ap_fixed], [3000 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0
  %9 = bitcast %struct.ap_fixed_base* %src.addr.01 to i8*
  %10 = call i1 @fpga_fifo_exist_4(i8* %9)
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_fixed_base(%struct.ap_fixed_base* %dst.addr.02, %struct.ap_fixed_base* %src.addr.01)
  br label %for.loop.head

; <label>:12:                                     ; preds = %8
  %src.addr.0.03 = getelementptr [3000 x %struct.ap_fixed], [3000 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %dst.addr.0.04 = getelementptr [3000 x %struct.ap_fixed], [3000 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %13 = bitcast %struct.ssdm_int* %src.addr.0.03 to i8*
  %14 = call i1 @fpga_fifo_exist_4(i8* %13)
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %dst.addr.0.04, %struct.ssdm_int* %src.addr.0.03)
  br label %for.loop.head

; <label>:16:                                     ; preds = %12
  %dst.addr.0.0.06.gep7 = getelementptr [3000 x %struct.ap_fixed], [3000 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %17 = bitcast i32* %dst.addr.0.0.06.gep7 to i8*
  %src.addr.0.0.05.gep8 = getelementptr [3000 x %struct.ap_fixed], [3000 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %18 = bitcast i32* %src.addr.0.0.05.gep8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %18, i64 4, i1 false)
  br label %for.loop.head

for.loop.head:                                    ; preds = %16, %15, %11, %7
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 3000
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.head, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0a1500struct.ap_fixed([1500 x %struct.ap_fixed]* noalias, [1500 x %struct.ap_fixed]* noalias) unnamed_addr #4 {
entry:
  %2 = icmp eq [1500 x %struct.ap_fixed]* %0, null
  %3 = icmp eq [1500 x %struct.ap_fixed]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.head, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.head ]
  %dst.addr = getelementptr [1500 x %struct.ap_fixed], [1500 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9
  %src.addr = getelementptr [1500 x %struct.ap_fixed], [1500 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9
  %5 = bitcast %struct.ap_fixed* %src.addr to i8*
  %6 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %for.loop
  call fastcc void @streamcpy_hls.p0struct.ap_fixed(%struct.ap_fixed* %dst.addr, %struct.ap_fixed* %src.addr)
  br label %for.loop.head

; <label>:8:                                      ; preds = %for.loop
  %src.addr.01 = getelementptr [1500 x %struct.ap_fixed], [1500 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0
  %dst.addr.02 = getelementptr [1500 x %struct.ap_fixed], [1500 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0
  %9 = bitcast %struct.ap_fixed_base* %src.addr.01 to i8*
  %10 = call i1 @fpga_fifo_exist_4(i8* %9)
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_fixed_base(%struct.ap_fixed_base* %dst.addr.02, %struct.ap_fixed_base* %src.addr.01)
  br label %for.loop.head

; <label>:12:                                     ; preds = %8
  %src.addr.0.03 = getelementptr [1500 x %struct.ap_fixed], [1500 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %dst.addr.0.04 = getelementptr [1500 x %struct.ap_fixed], [1500 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %13 = bitcast %struct.ssdm_int* %src.addr.0.03 to i8*
  %14 = call i1 @fpga_fifo_exist_4(i8* %13)
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %dst.addr.0.04, %struct.ssdm_int* %src.addr.0.03)
  br label %for.loop.head

; <label>:16:                                     ; preds = %12
  %dst.addr.0.0.06.gep7 = getelementptr [1500 x %struct.ap_fixed], [1500 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %17 = bitcast i32* %dst.addr.0.0.06.gep7 to i8*
  %src.addr.0.0.05.gep8 = getelementptr [1500 x %struct.ap_fixed], [1500 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %18 = bitcast i32* %src.addr.0.0.05.gep8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %18, i64 4, i1 false)
  br label %for.loop.head

for.loop.head:                                    ; preds = %16, %15, %11, %7
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1500
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.head, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0a51900struct.ap_fixed([51900 x %struct.ap_fixed]* noalias, [51900 x %struct.ap_fixed]* noalias) unnamed_addr #4 {
entry:
  %2 = icmp eq [51900 x %struct.ap_fixed]* %0, null
  %3 = icmp eq [51900 x %struct.ap_fixed]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.head, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.head ]
  %dst.addr = getelementptr [51900 x %struct.ap_fixed], [51900 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9
  %src.addr = getelementptr [51900 x %struct.ap_fixed], [51900 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9
  %5 = bitcast %struct.ap_fixed* %src.addr to i8*
  %6 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %for.loop
  call fastcc void @streamcpy_hls.p0struct.ap_fixed(%struct.ap_fixed* %dst.addr, %struct.ap_fixed* %src.addr)
  br label %for.loop.head

; <label>:8:                                      ; preds = %for.loop
  %src.addr.01 = getelementptr [51900 x %struct.ap_fixed], [51900 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0
  %dst.addr.02 = getelementptr [51900 x %struct.ap_fixed], [51900 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0
  %9 = bitcast %struct.ap_fixed_base* %src.addr.01 to i8*
  %10 = call i1 @fpga_fifo_exist_4(i8* %9)
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_fixed_base(%struct.ap_fixed_base* %dst.addr.02, %struct.ap_fixed_base* %src.addr.01)
  br label %for.loop.head

; <label>:12:                                     ; preds = %8
  %src.addr.0.03 = getelementptr [51900 x %struct.ap_fixed], [51900 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %dst.addr.0.04 = getelementptr [51900 x %struct.ap_fixed], [51900 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %13 = bitcast %struct.ssdm_int* %src.addr.0.03 to i8*
  %14 = call i1 @fpga_fifo_exist_4(i8* %13)
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %dst.addr.0.04, %struct.ssdm_int* %src.addr.0.03)
  br label %for.loop.head

; <label>:16:                                     ; preds = %12
  %dst.addr.0.0.06.gep7 = getelementptr [51900 x %struct.ap_fixed], [51900 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %17 = bitcast i32* %dst.addr.0.0.06.gep7 to i8*
  %src.addr.0.0.05.gep8 = getelementptr [51900 x %struct.ap_fixed], [51900 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %18 = bitcast i32* %src.addr.0.0.05.gep8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %18, i64 4, i1 false)
  br label %for.loop.head

for.loop.head:                                    ; preds = %16, %15, %11, %7
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 51900
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.head, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0a19500struct.ap_fixed([19500 x %struct.ap_fixed]* noalias, [19500 x %struct.ap_fixed]* noalias) unnamed_addr #4 {
entry:
  %2 = icmp eq [19500 x %struct.ap_fixed]* %0, null
  %3 = icmp eq [19500 x %struct.ap_fixed]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.head, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.head ]
  %dst.addr = getelementptr [19500 x %struct.ap_fixed], [19500 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9
  %src.addr = getelementptr [19500 x %struct.ap_fixed], [19500 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9
  %5 = bitcast %struct.ap_fixed* %src.addr to i8*
  %6 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %for.loop
  call fastcc void @streamcpy_hls.p0struct.ap_fixed(%struct.ap_fixed* %dst.addr, %struct.ap_fixed* %src.addr)
  br label %for.loop.head

; <label>:8:                                      ; preds = %for.loop
  %src.addr.01 = getelementptr [19500 x %struct.ap_fixed], [19500 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0
  %dst.addr.02 = getelementptr [19500 x %struct.ap_fixed], [19500 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0
  %9 = bitcast %struct.ap_fixed_base* %src.addr.01 to i8*
  %10 = call i1 @fpga_fifo_exist_4(i8* %9)
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_fixed_base(%struct.ap_fixed_base* %dst.addr.02, %struct.ap_fixed_base* %src.addr.01)
  br label %for.loop.head

; <label>:12:                                     ; preds = %8
  %src.addr.0.03 = getelementptr [19500 x %struct.ap_fixed], [19500 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %dst.addr.0.04 = getelementptr [19500 x %struct.ap_fixed], [19500 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %13 = bitcast %struct.ssdm_int* %src.addr.0.03 to i8*
  %14 = call i1 @fpga_fifo_exist_4(i8* %13)
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %dst.addr.0.04, %struct.ssdm_int* %src.addr.0.03)
  br label %for.loop.head

; <label>:16:                                     ; preds = %12
  %dst.addr.0.0.06.gep7 = getelementptr [19500 x %struct.ap_fixed], [19500 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %17 = bitcast i32* %dst.addr.0.0.06.gep7 to i8*
  %src.addr.0.0.05.gep8 = getelementptr [19500 x %struct.ap_fixed], [19500 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %18 = bitcast i32* %src.addr.0.0.05.gep8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %18, i64 4, i1 false)
  br label %for.loop.head

for.loop.head:                                    ; preds = %16, %15, %11, %7
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 19500
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.head, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0a300struct.ap_fixed([300 x %struct.ap_fixed]* noalias align 512, [300 x %struct.ap_fixed]* noalias) unnamed_addr #4 {
entry:
  %2 = icmp eq [300 x %struct.ap_fixed]* %0, null
  %3 = icmp eq [300 x %struct.ap_fixed]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.head, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.head ]
  %dst.addr = getelementptr [300 x %struct.ap_fixed], [300 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9
  %src.addr = getelementptr [300 x %struct.ap_fixed], [300 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9
  %5 = bitcast %struct.ap_fixed* %src.addr to i8*
  %6 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %for.loop
  call fastcc void @streamcpy_hls.p0struct.ap_fixed(%struct.ap_fixed* %dst.addr, %struct.ap_fixed* %src.addr)
  br label %for.loop.head

; <label>:8:                                      ; preds = %for.loop
  %src.addr.01 = getelementptr [300 x %struct.ap_fixed], [300 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0
  %dst.addr.02 = getelementptr [300 x %struct.ap_fixed], [300 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0
  %9 = bitcast %struct.ap_fixed_base* %src.addr.01 to i8*
  %10 = call i1 @fpga_fifo_exist_4(i8* %9)
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_fixed_base(%struct.ap_fixed_base* %dst.addr.02, %struct.ap_fixed_base* %src.addr.01)
  br label %for.loop.head

; <label>:12:                                     ; preds = %8
  %src.addr.0.03 = getelementptr [300 x %struct.ap_fixed], [300 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %dst.addr.0.04 = getelementptr [300 x %struct.ap_fixed], [300 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %13 = bitcast %struct.ssdm_int* %src.addr.0.03 to i8*
  %14 = call i1 @fpga_fifo_exist_4(i8* %13)
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %dst.addr.0.04, %struct.ssdm_int* %src.addr.0.03)
  br label %for.loop.head

; <label>:16:                                     ; preds = %12
  %dst.addr.0.0.06.gep7 = getelementptr [300 x %struct.ap_fixed], [300 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %17 = bitcast i32* %dst.addr.0.0.06.gep7 to i8*
  %src.addr.0.0.05.gep8 = getelementptr [300 x %struct.ap_fixed], [300 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %18 = bitcast i32* %src.addr.0.0.05.gep8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %18, i64 4, i1 false)
  br label %for.loop.head

for.loop.head:                                    ; preds = %16, %15, %11, %7
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 300
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.head, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0a1struct.ap_fixed([1 x %struct.ap_fixed]* noalias align 512, [1 x %struct.ap_fixed]* noalias) unnamed_addr #4 {
entry:
  %2 = icmp eq [1 x %struct.ap_fixed]* %0, null
  %3 = icmp eq [1 x %struct.ap_fixed]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %for.loop

for.loop:                                         ; preds = %entry
  %dst.addr = getelementptr [1 x %struct.ap_fixed], [1 x %struct.ap_fixed]* %0, i64 0, i64 0
  %src.addr = getelementptr [1 x %struct.ap_fixed], [1 x %struct.ap_fixed]* %1, i64 0, i64 0
  %5 = bitcast [1 x %struct.ap_fixed]* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %for.loop
  call fastcc void @streamcpy_hls.p0struct.ap_fixed(%struct.ap_fixed* align 512 %dst.addr, %struct.ap_fixed* %src.addr)
  br label %ret

; <label>:8:                                      ; preds = %for.loop
  %src.addr.01 = getelementptr [1 x %struct.ap_fixed], [1 x %struct.ap_fixed]* %1, i64 0, i64 0, i32 0
  %dst.addr.02 = getelementptr [1 x %struct.ap_fixed], [1 x %struct.ap_fixed]* %0, i64 0, i64 0, i32 0
  %9 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_fixed_base(%struct.ap_fixed_base* align 512 %dst.addr.02, %struct.ap_fixed_base* %src.addr.01)
  br label %ret

; <label>:11:                                     ; preds = %8
  %src.addr.0.03 = getelementptr [1 x %struct.ap_fixed], [1 x %struct.ap_fixed]* %1, i64 0, i64 0, i32 0, i32 0
  %dst.addr.0.04 = getelementptr [1 x %struct.ap_fixed], [1 x %struct.ap_fixed]* %0, i64 0, i64 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* align 512 %dst.addr.0.04, %struct.ssdm_int* %src.addr.0.03)
  br label %ret

; <label>:14:                                     ; preds = %11
  %15 = bitcast [1 x %struct.ap_fixed]* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 %5, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %14, %13, %10, %7, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0a5struct.ap_fixed([5 x %struct.ap_fixed]* noalias align 512, [5 x %struct.ap_fixed]* noalias) unnamed_addr #4 {
entry:
  %2 = icmp eq [5 x %struct.ap_fixed]* %0, null
  %3 = icmp eq [5 x %struct.ap_fixed]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.head, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.head ]
  %dst.addr = getelementptr [5 x %struct.ap_fixed], [5 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9
  %src.addr = getelementptr [5 x %struct.ap_fixed], [5 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9
  %5 = bitcast %struct.ap_fixed* %src.addr to i8*
  %6 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %for.loop
  call fastcc void @streamcpy_hls.p0struct.ap_fixed(%struct.ap_fixed* %dst.addr, %struct.ap_fixed* %src.addr)
  br label %for.loop.head

; <label>:8:                                      ; preds = %for.loop
  %src.addr.01 = getelementptr [5 x %struct.ap_fixed], [5 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0
  %dst.addr.02 = getelementptr [5 x %struct.ap_fixed], [5 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0
  %9 = bitcast %struct.ap_fixed_base* %src.addr.01 to i8*
  %10 = call i1 @fpga_fifo_exist_4(i8* %9)
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_fixed_base(%struct.ap_fixed_base* %dst.addr.02, %struct.ap_fixed_base* %src.addr.01)
  br label %for.loop.head

; <label>:12:                                     ; preds = %8
  %src.addr.0.03 = getelementptr [5 x %struct.ap_fixed], [5 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %dst.addr.0.04 = getelementptr [5 x %struct.ap_fixed], [5 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %13 = bitcast %struct.ssdm_int* %src.addr.0.03 to i8*
  %14 = call i1 @fpga_fifo_exist_4(i8* %13)
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %dst.addr.0.04, %struct.ssdm_int* %src.addr.0.03)
  br label %for.loop.head

; <label>:16:                                     ; preds = %12
  %dst.addr.0.0.06.gep7 = getelementptr [5 x %struct.ap_fixed], [5 x %struct.ap_fixed]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %17 = bitcast i32* %dst.addr.0.0.06.gep7 to i8*
  %src.addr.0.0.05.gep8 = getelementptr [5 x %struct.ap_fixed], [5 x %struct.ap_fixed]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %18 = bitcast i32* %src.addr.0.0.05.gep8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %18, i64 4, i1 false)
  br label %for.loop.head

for.loop.head:                                    ; preds = %16, %15, %11, %7
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 5
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.head, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_out([100000 x i32]*, [100000 x i32]* noalias readonly, [100000 x i32]*, [100000 x i32]* noalias readonly, [100000 x i32]*, [100000 x i32]* noalias readonly, [100000 x i32]*, [100000 x i32]* noalias readonly, [100000 x %struct.ap_fixed]*, [100000 x %struct.ap_fixed]* noalias, [900000 x %struct.ap_fixed]*, [900000 x %struct.ap_fixed]* noalias, [3000 x %struct.ap_fixed]*, [3000 x %struct.ap_fixed]* noalias, [900000 x %struct.ap_fixed]*, [900000 x %struct.ap_fixed]* noalias, [1500 x %struct.ap_fixed]*, [1500 x %struct.ap_fixed]* noalias, [51900 x %struct.ap_fixed]*, [51900 x %struct.ap_fixed]* noalias, [19500 x %struct.ap_fixed]*, [19500 x %struct.ap_fixed]* noalias, [300 x %struct.ap_fixed]*, [300 x %struct.ap_fixed]* noalias align 512, [1 x %struct.ap_fixed]*, [1 x %struct.ap_fixed]* noalias align 512, [5 x %struct.ap_fixed]*, [5 x %struct.ap_fixed]* noalias align 512) unnamed_addr #6 {
entry:
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %0, [100000 x i32]* %1)
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %2, [100000 x i32]* %3)
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %4, [100000 x i32]* %5)
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %6, [100000 x i32]* %7)
  call fastcc void @onebyonecpy_hls.p0a100000struct.ap_fixed([100000 x %struct.ap_fixed]* %8, [100000 x %struct.ap_fixed]* %9)
  call fastcc void @onebyonecpy_hls.p0a900000struct.ap_fixed([900000 x %struct.ap_fixed]* %10, [900000 x %struct.ap_fixed]* %11)
  call fastcc void @onebyonecpy_hls.p0a3000struct.ap_fixed([3000 x %struct.ap_fixed]* %12, [3000 x %struct.ap_fixed]* %13)
  call fastcc void @onebyonecpy_hls.p0a900000struct.ap_fixed([900000 x %struct.ap_fixed]* %14, [900000 x %struct.ap_fixed]* %15)
  call fastcc void @onebyonecpy_hls.p0a1500struct.ap_fixed([1500 x %struct.ap_fixed]* %16, [1500 x %struct.ap_fixed]* %17)
  call fastcc void @onebyonecpy_hls.p0a51900struct.ap_fixed([51900 x %struct.ap_fixed]* %18, [51900 x %struct.ap_fixed]* %19)
  call fastcc void @onebyonecpy_hls.p0a19500struct.ap_fixed([19500 x %struct.ap_fixed]* %20, [19500 x %struct.ap_fixed]* %21)
  call fastcc void @onebyonecpy_hls.p0a300struct.ap_fixed([300 x %struct.ap_fixed]* %22, [300 x %struct.ap_fixed]* align 512 %23)
  call fastcc void @onebyonecpy_hls.p0a1struct.ap_fixed([1 x %struct.ap_fixed]* %24, [1 x %struct.ap_fixed]* align 512 %25)
  call fastcc void @onebyonecpy_hls.p0a5struct.ap_fixed([5 x %struct.ap_fixed]* %26, [5 x %struct.ap_fixed]* align 512 %27)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_GIN_compute_one_graph_hw(i32*, i32*, i32*, i32*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*)

define void @GIN_compute_one_graph_hw_stub_wrapper(i32*, i32*, i32*, i32*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*) #7 {
entry:
  %14 = bitcast i32* %0 to [100000 x i32]*
  %15 = bitcast i32* %1 to [100000 x i32]*
  %16 = bitcast i32* %2 to [100000 x i32]*
  %17 = bitcast i32* %3 to [100000 x i32]*
  %18 = bitcast %struct.ap_fixed* %4 to [100000 x %struct.ap_fixed]*
  %19 = bitcast %struct.ap_fixed* %5 to [900000 x %struct.ap_fixed]*
  %20 = bitcast %struct.ap_fixed* %6 to [3000 x %struct.ap_fixed]*
  %21 = bitcast %struct.ap_fixed* %7 to [900000 x %struct.ap_fixed]*
  %22 = bitcast %struct.ap_fixed* %8 to [1500 x %struct.ap_fixed]*
  %23 = bitcast %struct.ap_fixed* %9 to [51900 x %struct.ap_fixed]*
  %24 = bitcast %struct.ap_fixed* %10 to [19500 x %struct.ap_fixed]*
  %25 = bitcast %struct.ap_fixed* %11 to [300 x %struct.ap_fixed]*
  %26 = bitcast %struct.ap_fixed* %12 to [1 x %struct.ap_fixed]*
  %27 = bitcast %struct.ap_fixed* %13 to [5 x %struct.ap_fixed]*
  call void @copy_out([100000 x i32]* null, [100000 x i32]* %14, [100000 x i32]* null, [100000 x i32]* %15, [100000 x i32]* null, [100000 x i32]* %16, [100000 x i32]* null, [100000 x i32]* %17, [100000 x %struct.ap_fixed]* null, [100000 x %struct.ap_fixed]* %18, [900000 x %struct.ap_fixed]* null, [900000 x %struct.ap_fixed]* %19, [3000 x %struct.ap_fixed]* null, [3000 x %struct.ap_fixed]* %20, [900000 x %struct.ap_fixed]* null, [900000 x %struct.ap_fixed]* %21, [1500 x %struct.ap_fixed]* null, [1500 x %struct.ap_fixed]* %22, [51900 x %struct.ap_fixed]* null, [51900 x %struct.ap_fixed]* %23, [19500 x %struct.ap_fixed]* null, [19500 x %struct.ap_fixed]* %24, [300 x %struct.ap_fixed]* null, [300 x %struct.ap_fixed]* %25, [1 x %struct.ap_fixed]* null, [1 x %struct.ap_fixed]* %26, [5 x %struct.ap_fixed]* null, [5 x %struct.ap_fixed]* %27)
  %28 = bitcast [100000 x i32]* %14 to i32*
  %29 = bitcast [100000 x i32]* %15 to i32*
  %30 = bitcast [100000 x i32]* %16 to i32*
  %31 = bitcast [100000 x i32]* %17 to i32*
  %32 = bitcast [100000 x %struct.ap_fixed]* %18 to %struct.ap_fixed*
  %33 = bitcast [900000 x %struct.ap_fixed]* %19 to %struct.ap_fixed*
  %34 = bitcast [3000 x %struct.ap_fixed]* %20 to %struct.ap_fixed*
  %35 = bitcast [900000 x %struct.ap_fixed]* %21 to %struct.ap_fixed*
  %36 = bitcast [1500 x %struct.ap_fixed]* %22 to %struct.ap_fixed*
  %37 = bitcast [51900 x %struct.ap_fixed]* %23 to %struct.ap_fixed*
  %38 = bitcast [19500 x %struct.ap_fixed]* %24 to %struct.ap_fixed*
  %39 = bitcast [300 x %struct.ap_fixed]* %25 to %struct.ap_fixed*
  %40 = bitcast [1 x %struct.ap_fixed]* %26 to %struct.ap_fixed*
  %41 = bitcast [5 x %struct.ap_fixed]* %27 to %struct.ap_fixed*
  call void @GIN_compute_one_graph_hw_stub(i32* %28, i32* %29, i32* %30, i32* %31, %struct.ap_fixed* %32, %struct.ap_fixed* %33, %struct.ap_fixed* %34, %struct.ap_fixed* %35, %struct.ap_fixed* %36, %struct.ap_fixed* %37, %struct.ap_fixed* %38, %struct.ap_fixed* %39, %struct.ap_fixed* %40, %struct.ap_fixed* %41)
  call void @copy_in([100000 x i32]* null, [100000 x i32]* %14, [100000 x i32]* null, [100000 x i32]* %15, [100000 x i32]* null, [100000 x i32]* %16, [100000 x i32]* null, [100000 x i32]* %17, [100000 x %struct.ap_fixed]* null, [100000 x %struct.ap_fixed]* %18, [900000 x %struct.ap_fixed]* null, [900000 x %struct.ap_fixed]* %19, [3000 x %struct.ap_fixed]* null, [3000 x %struct.ap_fixed]* %20, [900000 x %struct.ap_fixed]* null, [900000 x %struct.ap_fixed]* %21, [1500 x %struct.ap_fixed]* null, [1500 x %struct.ap_fixed]* %22, [51900 x %struct.ap_fixed]* null, [51900 x %struct.ap_fixed]* %23, [19500 x %struct.ap_fixed]* null, [19500 x %struct.ap_fixed]* %24, [300 x %struct.ap_fixed]* null, [300 x %struct.ap_fixed]* %25, [1 x %struct.ap_fixed]* null, [1 x %struct.ap_fixed]* %26, [5 x %struct.ap_fixed]* null, [5 x %struct.ap_fixed]* %27)
  ret void
}

declare void @GIN_compute_one_graph_hw_stub(i32*, i32*, i32*, i32*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*, %struct.ap_fixed*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

attributes #0 = { argmemonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { noinline "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
