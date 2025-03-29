# -*- coding: utf-8 -*-
import time
import torch
import numpy as np
from torch import nn
from torch.utils.data import TensorDataset, DataLoader
from ptflops import get_model_complexity_info

# ==== 设置设备 ====
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
print(f"使用设备: {device}")

# ==== 定义模型结构 ====
class Rnn(nn.Module):
    def __init__(self, in_dim, hidden_dim, n_layer, n_class):
        super(Rnn, self).__init__()
        self.lstm = nn.LSTM(in_dim, hidden_dim, n_layer, batch_first=True)
        self.classifier = nn.Linear(hidden_dim, n_class)

    def forward(self, x):
        out, _ = self.lstm(x)
        out = out[:, -1, :]
        out = self.classifier(out)
        return out

# ==== 加载模型 ====
model = Rnn(in_dim=8, hidden_dim=32, n_layer=1, n_class=2).to(device)
model.load_state_dict(torch.load('weight_32_mcc5_200.pth', map_location=device))
model.eval()
print(model)

# ==== 加载验证集 ====
val_inputs = np.loadtxt("val_inputs.csv", delimiter=",").reshape(-1, 200, 8)
val_labels = np.loadtxt("val_labels.csv", delimiter=",").astype(int)

X_tensor = torch.tensor(val_inputs, dtype=torch.float32)
y_tensor = torch.tensor(val_labels, dtype=torch.long)

print(f"\n 验证集加载完成，共 {len(y_tensor)} 条样本")

# ==== 构建 DataLoader ====
val_dataset = TensorDataset(X_tensor, y_tensor)
val_loader = DataLoader(val_dataset, batch_size=512, pin_memory=True)

# ==== 推理 ====
criterion = nn.CrossEntropyLoss()
eval_loss = 0.0
correct = 0
total = 0

t0 = time.time()
with torch.no_grad():
    for inputs, labels in val_loader:
        inputs = inputs.to(device)
        labels = labels.to(device)

        outputs = model(inputs)
        loss = criterion(outputs, labels)

        eval_loss += loss.item() * labels.size(0)
        _, pred = torch.max(outputs, 1)
        correct += (pred == labels).sum().item()
        total += labels.size(0)
t1 = time.time()

print(f"\n 推理完成，用时 {t1 - t0:.3f} 秒")
print(f"Test Loss: {eval_loss / total:.6f}, Accuracy: {correct / total:.4f}")

# ==== 模型复杂度分析 ====
macs, params = get_model_complexity_info(
    model,
    input_res=(200, 8),
    as_strings=True,
    print_per_layer_stat=True,
    verbose=True
)

print('\n 模型复杂度分析:')
print(f'FLOPs（MACs）: {macs}')
print(f'参数数量     : {params}')

import random

# ==== 抽取 10 条样本保存为 CSV ====
assert len(val_inputs) == len(val_labels)
indices = random.sample(range(len(val_labels)), 10)

test_10_inputs = val_inputs[indices]        # shape: (10, 200, 8)
test_10_labels = val_labels[indices]        # shape: (10,)

# 展平后保存为 CSV
test_10_inputs_flat = test_10_inputs.reshape(10, -1)  # shape: (10, 1600)

np.savetxt("test_10_inputs.csv", test_10_inputs_flat, delimiter=",", fmt="%.6f")
np.savetxt("test_10_labels.csv", test_10_labels, delimiter=",", fmt="%d")

print("\n 已保存 10 条测试样本为 test_10_inputs.csv 和 test_10_labels.csv")
