*Optimizations:*

- Fully parallelized the MLP\_1\_INPUT dimension and MLP\_2\_OUTPUT dimensions.

- Saves all the five-layer weights on-board.

- Trying to parallelize the MLP with message passing.. improved the latency from 0.91ms to 0.82ms, not sure how much contribution it has.
