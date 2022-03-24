#include "dcl.h"
#include "host.h"

aligned_vector<WT_TYPE> embedding_h_atom_embedding_list_weights(9 * 119 * 100);
aligned_vector<WT_TYPE> layers_posttrans_fully_connected_0_linear_weight_in(4 * 100 * 200);
aligned_vector<WT_TYPE> layers_posttrans_fully_connected_0_linear_bias_in(4 * 100);
aligned_vector<WT_TYPE> MLP_layer_FC_layers_0_weight_in(50 * 100);
aligned_vector<WT_TYPE> MLP_layer_FC_layers_0_bias_in(50);
aligned_vector<WT_TYPE> MLP_layer_FC_layers_1_weight_in(25 * 50);
aligned_vector<WT_TYPE> MLP_layer_FC_layers_1_bias_in(25);
aligned_vector<WT_TYPE> MLP_layer_FC_layers_2_weight_in(1 * 25);
aligned_vector<WT_TYPE> MLP_layer_FC_layers_2_bias_in(1);

static const char* GRAPH_INFO_FORMAT = "../../../graphs/graph_info/g%d_info.txt";
static const char* GRAPH_NAME_FORMAT = "../../../graphs/graph_bin/g%d";

int main(int argc, char **argv) {
    if (argc != 2) {
        std::cout << "Usage: " << argv[0] << " <XCLBIN File>" << std::endl;
        return EXIT_FAILURE;
    }

    std::string binaryFile = argv[1];
    cl_int err;
    cl::Context context;
    cl::Kernel krnl_DGN_compute_graphs;
    cl::CommandQueue q;
    
    auto devices = xcl::get_xil_devices();
    auto fileBuf = xcl::read_binary_file(binaryFile);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};
    bool valid_device = false;
    for (unsigned int i = 0; i < devices.size(); i++) {
        auto device = devices[i];
        // Creating Context and Command Queue for selected Device
        OCL_CHECK(err, context = cl::Context(device, nullptr, nullptr, nullptr, &err));
        OCL_CHECK(err,
                  q = cl::CommandQueue(
                      context, device, CL_QUEUE_PROFILING_ENABLE, &err));
        std::cout << "Trying to program device[" << i
                  << "]: " << device.getInfo<CL_DEVICE_NAME>() << std::endl;
        cl::Program program(context, {device}, bins, NULL, &err);
        if (err != CL_SUCCESS) {
            std::cout << "Failed to program device[" << i
                      << "] with xclbin file!\n";
        } else {
            std::cout << "Device[" << i << "]: program successful!\n";
            OCL_CHECK(err, krnl_DGN_compute_graphs = cl::Kernel(program, "DGN_compute_graphs", &err));
            valid_device = true;
            break; // we break because we found a valid device
        }
    }
    if (!valid_device) {
	    std::cout << "Failed to program any device found, exit!\n";
	    exit(EXIT_FAILURE);
    }


    printf("\n******* This is the HLS for DGN model *******\n");

    load_weights();
    printf("\n******* Weights loading done *******\n");

    OCL_CHECK(err, cl::Buffer embedding_h_atom_embedding_list_weights_buf(
        context,
        CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
        9 * 119 * 100 * sizeof(WT_TYPE),
        embedding_h_atom_embedding_list_weights.data(),
        &err));
    OCL_CHECK(err, cl::Buffer layers_posttrans_fully_connected_0_linear_weight_in_buf(
        context,
        CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
        4 * 100 * 200 * sizeof(WT_TYPE),
        layers_posttrans_fully_connected_0_linear_weight_in.data(),
        &err));
    OCL_CHECK(err, cl::Buffer layers_posttrans_fully_connected_0_linear_bias_in_buf(
        context,
        CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
        4 * 100 * sizeof(WT_TYPE),
        layers_posttrans_fully_connected_0_linear_bias_in.data(),
        &err));
    OCL_CHECK(err, cl::Buffer MLP_layer_FC_layers_0_weight_in_buf(
        context,
        CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
        50 * 100 * sizeof(WT_TYPE),
        MLP_layer_FC_layers_0_weight_in.data(),
        &err));
    OCL_CHECK(err, cl::Buffer MLP_layer_FC_layers_0_bias_in_buf(
        context,
        CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
        50 * sizeof(WT_TYPE),
        MLP_layer_FC_layers_0_bias_in.data(),
        &err));
    OCL_CHECK(err, cl::Buffer MLP_layer_FC_layers_1_weight_in_buf(
        context,
        CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
        25 * 50 * sizeof(WT_TYPE),
        MLP_layer_FC_layers_1_weight_in.data(),
        &err));
    OCL_CHECK(err, cl::Buffer MLP_layer_FC_layers_1_bias_in_buf(
        context,
        CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
        25 * sizeof(WT_TYPE),
        MLP_layer_FC_layers_1_bias_in.data(),
        &err));
    OCL_CHECK(err, cl::Buffer MLP_layer_FC_layers_2_weight_in_buf(
        context,
        CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
        1 * 25 * sizeof(WT_TYPE),
        MLP_layer_FC_layers_2_weight_in.data(),
        &err));
    OCL_CHECK(err, cl::Buffer MLP_layer_FC_layers_2_bias_in_buf(
        context,
        CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
        1 * sizeof(WT_TYPE),
        MLP_layer_FC_layers_2_bias_in.data(),
        &err));

    int num_of_graphs = NUM_GRAPHS;
    aligned_vector<int> nums_of_nodes(NUM_GRAPHS);
    aligned_vector<int> nums_of_edges(NUM_GRAPHS);
    aligned_vector<int> reload_weights(NUM_GRAPHS);
    aligned_vector<FM_TYPE> result(NUM_GRAPHS);
    aligned_vector<node_feature_t> node_feature;
    aligned_vector<node_eigen_t> node_eigen;
    aligned_vector<edge_t> edge_list;
    aligned_vector<int> edge_attr;

    for (int g = 1; g <= NUM_GRAPHS; g++)
    {
        char graph_name[128];
        char info_file[128];
        int num_of_nodes;
        int num_of_edges;

        sprintf(info_file, GRAPH_INFO_FORMAT, g);
        sprintf(graph_name, GRAPH_NAME_FORMAT, g);

        FILE* f_info = fopen(info_file, "r");
        fscanf(f_info, "%d\n%d", &num_of_nodes, &num_of_edges);
        fclose(f_info);

        nums_of_nodes[g - 1] = num_of_nodes;
        nums_of_edges[g - 1] = num_of_edges;
        reload_weights[g - 1] = g == 1;

        fetch_one_graph(g, graph_name, node_feature, node_eigen, edge_list, edge_attr, num_of_nodes, num_of_edges);
    }

    OCL_CHECK(err, cl::Buffer nums_of_nodes_buf(
        context,
        CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
        NUM_GRAPHS * sizeof(int),
        nums_of_nodes.data(),
        &err));
    OCL_CHECK(err, cl::Buffer nums_of_edges_buf(
        context,
        CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
        NUM_GRAPHS * sizeof(int),
        nums_of_edges.data(),
        &err));
    OCL_CHECK(err, cl::Buffer reload_weights_buf(
        context,
        CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
        NUM_GRAPHS * sizeof(int),
        reload_weights.data(),
        &err));
    OCL_CHECK(err, cl::Buffer result_buf(
        context,
        CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY,
        NUM_GRAPHS * sizeof(FM_TYPE),
        result.data(),
        &err));
    OCL_CHECK(err, cl::Buffer node_feature_buf(
        context,
        CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
        node_feature.size() * sizeof(node_feature_t),
        node_feature.data(),
        &err));
    OCL_CHECK(err, cl::Buffer node_eigen_buf(
        context,
        CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
        node_eigen.size() * sizeof(node_eigen_t),
        node_eigen.data(),
        &err));
    OCL_CHECK(err, cl::Buffer edge_list_buf(
        context,
        CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
        edge_list.size() * sizeof(edge_t),
        edge_list.data(),
        &err));

    int idx = 0;
    krnl_DGN_compute_graphs.setArg(idx++, num_of_graphs);
    krnl_DGN_compute_graphs.setArg(idx++, nums_of_nodes_buf);
    krnl_DGN_compute_graphs.setArg(idx++, nums_of_edges_buf);
    krnl_DGN_compute_graphs.setArg(idx++, reload_weights_buf);
    krnl_DGN_compute_graphs.setArg(idx++, result_buf);
    krnl_DGN_compute_graphs.setArg(idx++, node_feature_buf);
    krnl_DGN_compute_graphs.setArg(idx++, node_eigen_buf);
    krnl_DGN_compute_graphs.setArg(idx++, edge_list_buf);
    krnl_DGN_compute_graphs.setArg(idx++, embedding_h_atom_embedding_list_weights_buf);
    krnl_DGN_compute_graphs.setArg(idx++, layers_posttrans_fully_connected_0_linear_weight_in_buf);
    krnl_DGN_compute_graphs.setArg(idx++, layers_posttrans_fully_connected_0_linear_bias_in_buf);
    krnl_DGN_compute_graphs.setArg(idx++, MLP_layer_FC_layers_0_weight_in_buf);
    krnl_DGN_compute_graphs.setArg(idx++, MLP_layer_FC_layers_0_bias_in_buf);
    krnl_DGN_compute_graphs.setArg(idx++, MLP_layer_FC_layers_1_weight_in_buf);
    krnl_DGN_compute_graphs.setArg(idx++, MLP_layer_FC_layers_1_bias_in_buf);
    krnl_DGN_compute_graphs.setArg(idx++, MLP_layer_FC_layers_2_weight_in_buf);
    krnl_DGN_compute_graphs.setArg(idx++, MLP_layer_FC_layers_2_bias_in_buf);

    for (int i = 0; i < NUM_TRIALS; i++)
    {
        printf("(%d/%d) Computing DGN ...\n", i + 1, NUM_TRIALS);
        OCL_CHECK(err, err = q.enqueueTask(krnl_DGN_compute_graphs));
        OCL_CHECK(err, err = q.enqueueMigrateMemObjects({result_buf}, CL_MIGRATE_MEM_OBJECT_HOST));
        OCL_CHECK(err, err = q.finish());
    }

    FILE* c_output = fopen("HLS_output.txt", "w+");
    for (int g = 1; g <= NUM_GRAPHS; g++) {
        int num_of_nodes = nums_of_nodes[g - 1];
        int num_of_edges = nums_of_edges[g - 1];
        char graph_name[128];
        sprintf(graph_name, GRAPH_NAME_FORMAT, g);

        printf("********** Graph %s *************\n", graph_name);
        printf("# of nodes: %d, # of edges: %d\n", num_of_nodes, num_of_edges);
        printf("%.8f\n", float(result[g - 1]));
        fprintf(c_output, "g%d: %.8f\n", g, float(result[g - 1]));
        printf("DGN computation done.\n");
    }

    return 0;
}
