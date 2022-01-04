# PyTorch to Golden C Tutorial

### File Structure
1. prepare_weights.py
	* Load in existing model and collect all weights and outputs.
2. gen_c.py
	* Generate C code in declaring global weight variables and loading weights.
3. dcl.h
	* Header file for Golden C.
4. main.cc
	* Starting point of Golden C files. Complete all loading and computing for 10 graphs and output them to file.
	* fscanf() loads graph information from graph_info folder (need to decompress).
	* fprintf(c_output) outputs all results to file ("Golden_C_output.txt").
	* load_weights() -> fscanf() -> fetch_one_graph() -> GIN_compute_one_graph() -> fprintf()
5. load_weights_graph.cc
	* load_weights() loads all corresponding values into global weights in main.cc.
	* fetch_one_graph() fetches one graph from graph_bin folder (need to decompress).
6. GIN_compute.cc
	* GIN_compute_one_graph() completes the 5 layer convolution network for one graph.

### What Needs to be Changed
1. prepare_weights.py
	* Use your own GNN model (in torch.load()) and collect corresponding weights. Only weights with the same size can be concatenated.
2. gen_c.py
	* Use your own GNN model (in f = open()).
3. dcl.h
	* Add/change necessary constants, libraries, functions here. Put extern float global weights generated from gen_c.py in here.
4. main.cc
	* Put float global weights generated from gen_c.py in here.
5. load_weights_graph.cc
	* Put fseek/fread  global weights generated from gen_c.py in load_weights().
6. GIN_compute.cc
	* Translate your GNN model code into here.
	* GIN/GAT/PNA are translated and can be used for reference.
### GIN_compute.cc

GIN_compute.cc contains the main GNN model computation. It is important to understand your model including each PyTorch function before translating it. I recommend to translate line by line from PyTorch to C so that it is easier to debug and verify results.

Many functions like nn.Linear, sum, transpose, matmul, bmm are used frequently in GNN models. Translate them using simple for loops and syntax, and avoid using pointers, reference, or any other advanced data structure and syntax. HLS does not support complicated data structure and syntax well, and it also makes optimization easier.

e.g. nn.linear, NUM_TASK = 1, num_features_per_layer = 16
```python
self.graph_pred_linear = torch.nn.Linear(num_features_per_layer, NUM_TASK)
task = self.graph_pred_linear(graph)
```
```c
////////////// Graph prediction linear ///////////////////
// Set NUM_TASK * sizeof(float) chunck of memory to 0
memset(task, 0, NUM_TASK * sizeof(float));
for(int tsk = 0; tsk < NUM_TASK; tsk++) {
	// Initialize value to corresponding bias
	task[tsk] = graph_pred_linear_bias[tsk];
		for(int dim = 0; dim < num_features_per_layer; dim++) {
			// graph * weight
			task[tsk] += graph[dim] * graph_pred_linear_weight[tsk][dim];
		}
}
```

### Advice & Tricks
* Use a good debugger. It's hard to validate 100x100 matrix multiplication results through print statement and go through convolution without setting break points. Most IDEs (Visual Studio, vscode, CLion...) have decent debuggers.
* Many functions like nn.Linear, sum, transpose, matmul, bmm are used frequently and are already translated in GIN/GAT/PNA model. Use them as a reference.

