import torch

# 加载 .pth 文件
pth_path = "./weight_LSTM.pth"
state_dict = torch.load(pth_path, map_location='cpu')
if not isinstance(state_dict, dict):
    state_dict = state_dict.state_dict()

# 提取关键张量内容并简要展示数值
summary = {
    "lstm.weight_ih_l0": state_dict["lstm.weight_ih_l0"],  # 前5行5列
    "lstm.weight_hh_l0": state_dict["lstm.weight_hh_l0"],
    "lstm.bias_ih_l0": state_dict["lstm.bias_ih_l0"],         # 前10个元素
    "lstm.bias_hh_l0": state_dict["lstm.bias_hh_l0"],
    "classifier.weight": state_dict["classifier.weight"],
    "classifier.bias": state_dict["classifier.bias"],
}
print(summary)
