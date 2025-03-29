#ifndef RNN_H
#define RNN_H


#include <ap_fixed.h>

#define INPUT_DIM	8		// ����ά��
//#define IMG_SIZE	INPUT_DIM * INPUT_DIM
#define IMG_SIZE	8 * 28
#define LAYER_NUM   1       // ���ز�����/LSTM cell����
#define HIDDEN_DIM	32		// ���ز�ڵ���, �ֳ�num_units
#define CLASS_NUM	2		// ����ڵ���


//typedef ap_fixed<8,5,AP_RND,AP_SAT> FP_TYPE;
//typedef ap_fixed<32, 6> FP_TYPE;
typedef float FP_TYPE;

// C���濪��
#define CSIM_ON 0		// ����ʱ��Ϊ1, �ۺ�ʱ��Ϊ0


#if CSIM_ON == 1
// ����C����ʹ�õ�ǰ���Ƶ���������
int infer(FP_TYPE input[IMG_SIZE]);
#else
// RNNǰ���Ƶ�(�����->LSTM0->���Է�����)
void infer(FP_TYPE input[IMG_SIZE], FP_TYPE res[CLASS_NUM]);
#endif

#endif
