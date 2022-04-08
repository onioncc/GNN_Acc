#ifndef __MESSAGE_PASSING_H__
#define __MESSAGE_PASSING_H__

#include "dcl.h"
#include "hls_stream.h"

void message_passing_pe(
    int pe_id,
    hls::stream<mp_in_t> node_embeddings[NODE_PARALLEL],
    FM_TYPE message[ceildiv(MAX_NODE, EDGE_PARALLEL)][NUM_AGGRS][EMB_DIM],
    int layer_num,
    int num_of_nodes
);
void reset_message(FM_TYPE message[NUM_AGGRS][EMB_DIM], int dim);

#endif
