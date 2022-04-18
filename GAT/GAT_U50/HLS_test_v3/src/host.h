#ifndef __HOST_H__
#define __HOST_H__

#include "dcl.h"
#include "xcl2.hpp"

constexpr int NUM_GRAPHS = 4113;
constexpr int NUM_TRIALS = 100;

template <typename T>
using aligned_vector = std::vector<T, aligned_allocator<T>>;

extern aligned_vector<WT_TYPE> scoring_fn_target_fixed;
extern aligned_vector<WT_TYPE> scoring_fn_source_fixed;
extern aligned_vector<WT_TYPE> linear_proj_weights_fixed;
extern aligned_vector<WT_TYPE> skip_proj_weights_fixed;
extern aligned_vector<WT_TYPE> graph_pred_weights_fixed;
extern aligned_vector<WT_TYPE> graph_pred_bias_fixed;

void load_weights();
void fetch_one_graph(
    int g,
    char* graph_name,
    aligned_vector<node_feature_t>& node_feature,
    aligned_vector<edge_t>& edge_list,
    int num_of_nodes,
    int num_of_edges
);

#endif
