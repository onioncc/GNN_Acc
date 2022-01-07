HLS_optimized_v3: Node embedding and message passing are overlapped. 
HLS_optimized_v4: Using a streaming queue to store finished nodes; message passing module is reading from the queue.

V4 is seeing some slowdown comparing with v3.
