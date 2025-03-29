#include <iostream>
#include <cmath>
#include <string.h>
#include "rnn.h"
//#include "weight_32_mnist.h"
#include "weight_32_mcc5_200.h"
#include "hls_math.h"
//===================== 激活函数 =====================//

inline void sigmoid(FP_TYPE* res, FP_TYPE* a, int size) {
#pragma HLS INLINE
#pragma HLS ARRAY_PARTITION variable=a cyclic factor=2 dim=1
#pragma HLS ARRAY_PARTITION variable=res cyclic factor=2 dim=1
    for (int i = 0; i < size; i++) {
#pragma HLS UNROLL factor=2
#pragma HLS PIPELINE II=2
//    	res[i] = 1.0 / (1.0 + exp(-a[i]));
        res[i] = 1.0 / (1.0 + hls::expf(-a[i])); // 用hls版本
    }
}

inline void tanh(FP_TYPE* res, FP_TYPE* a, int size) {
#pragma HLS INLINE
#pragma HLS ARRAY_PARTITION variable=a cyclic factor=2 dim=1
#pragma HLS ARRAY_PARTITION variable=res cyclic factor=2 dim=1
    for (int i = 0; i < size; i++) {
#pragma HLS UNROLL factor=2
#pragma HLS PIPELINE II=2
//    	res[i] = std::tanh(a[i]);
        res[i] = hls::tanhf(a[i]);
    }
}

//================== 向量操作函数 ===================//

inline void geva(FP_TYPE* res, FP_TYPE* a, int size) {
#pragma HLS INLINE
#pragma HLS ARRAY_PARTITION variable=a cyclic factor=2 dim=1
#pragma HLS ARRAY_PARTITION variable=res cyclic factor=2 dim=1
    for (int i = 0; i < size; i++) {
#pragma HLS UNROLL factor=2
#pragma HLS PIPELINE II=1
        res[i] += a[i];
    }
}

inline void hprod(FP_TYPE* res, FP_TYPE* a, FP_TYPE* b, int size) {
#pragma HLS INLINE
#pragma HLS ARRAY_PARTITION variable=b cyclic factor=2 dim=1
#pragma HLS ARRAY_PARTITION variable=res cyclic factor=2 dim=1
#pragma HLS ARRAY_PARTITION variable=a cyclic factor=2 dim=1

    for (int i = 0; i < size; i++) {
#pragma HLS UNROLL factor=2
#pragma HLS PIPELINE II=1
        res[i] = a[i] * b[i];
    }
}


//================= 矩阵向量乘法 ===================//

void gemvm_lstm(FP_TYPE res[HIDDEN_DIM], FP_TYPE a[HIDDEN_DIM][INPUT_DIM + HIDDEN_DIM], FP_TYPE b[INPUT_DIM + HIDDEN_DIM]) {
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=res cyclic factor=2 dim=1
#pragma HLS ARRAY_PARTITION variable=b cyclic factor=2 dim=1
#pragma HLS ARRAY_PARTITION variable=a cyclic factor=2 dim=2


    for (int i = 0; i < HIDDEN_DIM; i++) {
#pragma HLS PIPELINE II=2
        FP_TYPE acc = 0;
        for (int j = 0; j < INPUT_DIM + HIDDEN_DIM; j++) {
#pragma HLS UNROLL factor=2
            acc += a[i][j] * b[j];
        }
        res[i] = acc;
    }
}

void gemvm_out(FP_TYPE res[CLASS_NUM], FP_TYPE a[CLASS_NUM][HIDDEN_DIM], FP_TYPE b[HIDDEN_DIM]) {
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=res cyclic factor=2 dim=1
#pragma HLS ARRAY_PARTITION variable=b cyclic factor=2 dim=1
#pragma HLS ARRAY_PARTITION variable=a cyclic factor=2 dim=2


    for (int i = 0; i < CLASS_NUM; i++) {
#pragma HLS PIPELINE II=2
        FP_TYPE acc = 0;
        for (int j = 0; j < HIDDEN_DIM; j++) {
#pragma HLS UNROLL factor=2

            acc += a[i][j] * b[j];
        }
        res[i] = acc;
    }
}

//====================== 输入状态  =====================//
inline void pack_input_state(
    FP_TYPE vec_i[INPUT_DIM + HIDDEN_DIM],
    FP_TYPE input[IMG_SIZE],
    FP_TYPE h_t[HIDDEN_DIM],
    int timestep
) {
#pragma HLS INLINE

    for (int j = 0; j < INPUT_DIM + HIDDEN_DIM; j++) {
#pragma HLS PIPELINE II=2
        if (j < INPUT_DIM)
            vec_i[j] = input[timestep * INPUT_DIM + j];
        else
            vec_i[j] = h_t[j - INPUT_DIM];
    }
}


//====================== LSTM Inference =====================//

#if CSIM_ON == 1
int infer(FP_TYPE input[IMG_SIZE])
#else
void infer(FP_TYPE input[IMG_SIZE], FP_TYPE res[CLASS_NUM])
#endif
{
    FP_TYPE gate_f[HIDDEN_DIM] = {0};
    FP_TYPE gate_i[HIDDEN_DIM] = {0};
    FP_TYPE gate_o[HIDDEN_DIM] = {0};
    FP_TYPE stat_C[HIDDEN_DIM] = {0};
    FP_TYPE C_t[HIDDEN_DIM] = {0};
    FP_TYPE h_t[HIDDEN_DIM] = {0};

    FP_TYPE vec_i[INPUT_DIM + HIDDEN_DIM];
    FP_TYPE vec_tmp[HIDDEN_DIM];


    for (int i = 0; i < INPUT_DIM; i++) {

    	pack_input_state(vec_i, input, h_t, i);

        // gate_f = sigmoid(Wf * x + bf)
        gemvm_lstm(gate_f, Weight0_f, vec_i);
        geva(gate_f, Bias0_f, HIDDEN_DIM);
        sigmoid(gate_f, gate_f, HIDDEN_DIM);

        // gate_i = sigmoid(Wi * x + bi)
        gemvm_lstm(gate_i, Weight0_i, vec_i);
        geva(gate_i, Bias0_i, HIDDEN_DIM);
        sigmoid(gate_i, gate_i, HIDDEN_DIM);

        // stat_C = tanh(Wc * x + bc)
        gemvm_lstm(stat_C, Weight0_c, vec_i);
        geva(stat_C, Bias0_c, HIDDEN_DIM);
        tanh(stat_C, stat_C, HIDDEN_DIM);

        // gate_o = sigmoid(Wo * x + bo)
        gemvm_lstm(gate_o, Weight0_o, vec_i);
        geva(gate_o, Bias0_o, HIDDEN_DIM);
        sigmoid(gate_o, gate_o, HIDDEN_DIM);

        // C_t = gate_f * C_t + gate_i * stat_C
        hprod(vec_tmp, gate_f, C_t, HIDDEN_DIM);
        hprod(C_t, gate_i, stat_C, HIDDEN_DIM);
        geva(C_t, vec_tmp, HIDDEN_DIM);

        // h_t = gate_o * tanh(C_t)
        tanh(vec_tmp, C_t, HIDDEN_DIM);
        hprod(h_t, gate_o, vec_tmp, HIDDEN_DIM);
    }

#if CSIM_ON == 1
    FP_TYPE res[CLASS_NUM];
#endif

    gemvm_out(res, Weight_lc, h_t);
    geva(res, Bias_lc, CLASS_NUM);

#if CSIM_ON == 1
    int label = 0;
    for (int i = 1; i < CLASS_NUM; i++)
        if (res[i] > res[label]) label = i;
    return label;
#endif
}
