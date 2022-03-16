#ifndef __EDGE_EMBEDDING_H__
#define __EDGE_EMBEDDING_H__

#include "dcl.h"
#include "hls_stream.h"

void edge_embedding_multi_pe(
    hls::stream<mp_in_t> embeddings[EDGE_PARALLEL],
    int layer_num
);

#endif
