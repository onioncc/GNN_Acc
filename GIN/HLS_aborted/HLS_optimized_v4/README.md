*Optimizations:*

- Fully parallelized the MLP\_1\_INPUT dimension and MLP\_2\_OUTPUT dimensions.

- Saves all the five-layer weights on-board.

- Fully partitioned the message dimensions but it results in routing failures. Cannot do this.
