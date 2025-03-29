#ifndef RNN_H
#define RNN_H


#include <ap_fixed.h>

#define INPUT_DIM	8		// 输入维度
//#define IMG_SIZE	INPUT_DIM * INPUT_DIM
#define IMG_SIZE	8 * 28
#define LAYER_NUM   1       // 隐藏层数量/LSTM cell数量
#define HIDDEN_DIM	32		// 隐藏层节点数, 又称num_units
#define CLASS_NUM	2		// 输出节点数


//typedef ap_fixed<8,5,AP_RND,AP_SAT> FP_TYPE;
//typedef ap_fixed<32, 6> FP_TYPE;
typedef float FP_TYPE;

// C仿真开关
#define CSIM_ON 0		// 仿真时设为1, 综合时设为0


#if CSIM_ON == 1
// 仅供C仿真使用的前向推导函数定义
int infer(FP_TYPE input[IMG_SIZE]);
#else
// RNN前向推导(输入层->LSTM0->线性分类器)
void infer(FP_TYPE input[IMG_SIZE], FP_TYPE res[CLASS_NUM]);
#endif

#endif
