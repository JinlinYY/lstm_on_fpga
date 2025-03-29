import torch
import numpy as np

# ==== 用户设置部分 ====
pth_file = "weight_32_mcc5_200.pth"
output_file = "weight_32_mcc5_200.h"
input_dim = 8
hidden_dim = 32
num_classes = 2

# ==== 加载 state_dict ====
state_dict = torch.load(pth_file, map_location='cpu')
if not isinstance(state_dict, dict):
    state_dict = state_dict.state_dict()

# ==== 提取 LSTM 权重 ====
W_ih = state_dict['lstm.weight_ih_l0'].numpy()
W_hh = state_dict['lstm.weight_hh_l0'].numpy()
B_ih = state_dict['lstm.bias_ih_l0'].numpy()
B_hh = state_dict['lstm.bias_hh_l0'].numpy()

# 合并输入+隐藏状态的权重，合并偏置
W_combined = np.concatenate([W_ih, W_hh], axis=1)  # shape: (4H, input+hidden)
B_combined = B_ih + B_hh  # shape: (4H,)

# 正确拆分四个门（PyTorch顺序：i, f, c, o）
W_i, W_f, W_c, W_o = np.split(W_combined, 4, axis=0)
B_i, B_f, B_c, B_o = np.split(B_combined, 4)

# FC层权重
W_fc = state_dict['classifier.weight'].numpy()
B_fc = state_dict['classifier.bias'].numpy()

# ==== 辅助函数 ====
def to_c_array_2d(array, name):
    s = f"static FP_TYPE {name}[{array.shape[0]}][{array.shape[1]}] = {{\n"
    for row in array:
        s += "    {" + ", ".join(f"{x:.6f}" for x in row) + "},\n"
    s += "};\n\n"
    return s

def to_c_array_1d(array, name):
    s = f"static FP_TYPE {name}[{len(array)}] = {{\n    "
    s += ", ".join(f"{x:.6f}" for x in array)
    s += "\n};\n\n"
    return s

# ==== 写入头文件 ====
with open(output_file, "w") as f:
    f.write("#ifndef RNN_LSTM_WEIGHT_H\n#define RNN_LSTM_WEIGHT_H\n\n")
    f.write("#include \"rnn.h\"\n\n")

    f.write("// 输入门权重与偏置\n")
    f.write(to_c_array_2d(W_i, "Weight0_i"))
    f.write(to_c_array_1d(B_i, "Bias0_i"))

    f.write("// 遗忘门权重与偏置\n")
    f.write(to_c_array_2d(W_f, "Weight0_f"))
    f.write(to_c_array_1d(B_f, "Bias0_f"))

    f.write("// 候选门权重与偏置\n")
    f.write(to_c_array_2d(W_c, "Weight0_c"))
    f.write(to_c_array_1d(B_c, "Bias0_c"))

    f.write("// 输出门权重与偏置\n")
    f.write(to_c_array_2d(W_o, "Weight0_o"))
    f.write(to_c_array_1d(B_o, "Bias0_o"))

    f.write("// 全连接层权重与偏置\n")
    f.write(to_c_array_2d(W_fc, "Weight_lc"))
    f.write(to_c_array_1d(B_fc, "Bias_lc"))

    f.write("#endif // RNN_LSTM_WEIGHT_H\n")

print(f" 已成功导出为 {output_file}")
