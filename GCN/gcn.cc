// Authors: Abhishek and Alvin
// implementation of GCN with node feature vectors. Current version does not use edge vectors

#include "dcl.h"

float message[MAX_NODE][EMB_DIM];
float mlp_in[MAX_NODE][MLP_IN_MAX];
float mlp_out[MAX_NODE][MLP_OUT_MAX];

float h_0[MAX_NODE][EMB_DIM];
float e_0[MAX_EDGE][EMB_DIM];

float h_1[MAX_NODE][EMB_DIM];
float e_1[MAX_EDGE][EMB_DIM];

float h_2[MAX_NODE][EMB_DIM];
float e_2[MAX_EDGE][EMB_DIM];

float h_3[MAX_NODE][EMB_DIM];
float e_3[MAX_EDGE][EMB_DIM];

float h_4[MAX_NODE][EMB_DIM];
float e_4[MAX_EDGE][EMB_DIM];

float h_5[MAX_NODE][EMB_DIM];

float h_graph[EMB_DIM];
float task[NUM_TASK];


void MLP(float mlp_in[MAX_NODE][MLP_IN_MAX], float mlp_out[MAX_NODE][MLP_OUT_MAX], float h[MAX_NODE][EMB_DIM], int num_of_nodes,
         float mlp_0_weight[MLP_0_OUT][MLP_0_IN], float (*mlp_0_bias), 
         float mlp_3_weight[MLP_3_OUT][MLP_3_IN], float (*mlp_3_bias)
         //float (*bn_weight), float (*bn_bias), float (*bn_running_mean), float (*bn_running_var), 
         )
{
    /// MLP input by aggregating messages and self features
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int dim = 0; dim < EMB_DIM; dim++) {
            // put GCN aggregation here.
        }
    }

#ifdef _PRINT_
    printf("\nInput of MLP\n");
    for(int nd = 0; nd < 5; nd++) {
        printf("Node %d: ", nd);
        for(int dim = 0; dim < 10; dim++) {
            printf("%.5f ", mlp_in[nd][dim]);
        }
        printf("...\n");
    }
#endif


    /// MLP 0 (linear)
    memset(mlp_out, 0, MAX_NODE * EMB_DIM * sizeof(float));
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int dim_out = 0; dim_out < MLP_0_OUT; dim_out++) {
            mlp_out[nd][dim_out] = mlp_0_bias[dim_out];
            for(int dim_in = 0; dim_in < MLP_0_IN; dim_in++) {
                mlp_out[nd][dim_out] += mlp_in[nd][dim_in] * mlp_0_weight[dim_out][dim_in];
            }
        }
    }

    /* MLP 1 (batch-norm) + Relu
    MLP_BatchNorm_Relu(mlp_out, mlp_in, 
                    //bn_weight, bn_bias,
                    //bn_running_mean, bn_running_var, 
                    num_of_nodes);
    */

    /// MLP 3 (linear)
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int dim_out = 0; dim_out < MLP_3_OUT; dim_out++) {
            mlp_out[nd][dim_out] = mlp_3_bias[dim_out];
            for(int dim_in = 0; dim_in < MLP_3_IN; dim_in++) {
                mlp_out[nd][dim_out] += mlp_in[nd][dim_in] * mlp_3_weight[dim_out][dim_in];
            }
        }
    }

#ifdef _PRINT_
    printf("\nOutput of MLP\n");
    for(int nd = 0; nd < 5; nd++) {
        printf("Node %d: ", nd);
        for(int dim = 0; dim < 10; dim++) {
            printf("%.5f ", mlp_out[nd][dim]);
        }
        printf("...\n");
    }
#endif
}
