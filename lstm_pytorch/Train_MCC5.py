import os
import pandas as pd
import numpy as np
from collections import Counter
import torch
from torch import nn, optim
from torch.utils.data import Dataset, DataLoader, random_split
import os
import pandas as pd
import numpy as np
import torch
from torch.utils.data import Dataset
# ==== 参数设置 ====

SEQ_LEN = 200
# STEP_SIZE = 1000  # 可以设置为 500, 1000 等，控制样本重叠程度

BATCH_SIZE = 256
LR = 1e-3
EPOCHS = 20
DATA_DIR = './MCC5-THU'  # 数据文件夹路径

# ==== 设置设备 ====
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
print(f"使用设备: {device}")

# ==== 自定义 Dataset 类 ====

class MCC5BinaryDataset(Dataset):
    def __init__(self, root_dir, seq_len=200, step_size=100):
        self.root_dir = root_dir
        self.seq_len = seq_len
        self.step_size = step_size
        self.samples = []
        self.labels = []
        self.label_map = {'health': 0, 'fault': 1}

        file_list = [f for f in os.listdir(root_dir) if f.endswith('.csv')]

        for f in file_list:
            label = 0 if f.startswith('health') else 1
            file_path = os.path.join(root_dir, f)
            df = pd.read_csv(file_path, skiprows=1, header=None)
            data = df.values.astype(np.float32)

            # 滑动窗口采样
            for start in range(0, len(data) - seq_len + 1, step_size):
                segment = data[start:start + seq_len]  # shape: (seq_len, 8)
                self.samples.append(segment)
                self.labels.append(label)

            # 如果太短，pad 一个 segment
            if len(data) < seq_len:
                pad_len = seq_len - len(data)
                padded = np.vstack((data, np.zeros((pad_len, 8), dtype=np.float32)))
                self.samples.append(padded)
                self.labels.append(label)

    def __len__(self):
        return len(self.samples)

    def __getitem__(self, idx):
        x = torch.tensor(self.samples[idx], dtype=torch.float32)  # shape: (200, 8)
        y = torch.tensor(self.labels[idx], dtype=torch.long)
        return x, y


class Rnn(nn.Module):
    def __init__(self, in_dim, hidden_dim, n_layer, n_class):
        super(Rnn, self).__init__()
        self.n_layer = n_layer
        self.hidden_dim = hidden_dim
        self.lstm = nn.LSTM(in_dim, hidden_dim, n_layer, batch_first=True)
        self.classifier = nn.Linear(hidden_dim, n_class)

    def forward(self, x):
        out, _ = self.lstm(x)
        out = out[:, -1, :]
        out = self.classifier(out)
        return out


# ==== 加载数据 ====
dataset = MCC5BinaryDataset(DATA_DIR, seq_len=SEQ_LEN, step_size=100)

num_classes = 2

# 打印标签映射和数量
print("类别标签映射：\n  0: health\n  1: fault")
label_counts = Counter(dataset.labels)
print(f"\n每个类别的样本数量：")
print(f"  health: {label_counts[0]} samples")
print(f"  fault : {label_counts[1]} samples")
print(f"\n总样本数：{len(dataset)}")

# ==== 划分训练集和验证集 ====
train_len = int(0.8 * len(dataset))
val_len = len(dataset) - train_len
train_dataset, val_dataset = random_split(dataset, [train_len, val_len])

train_loader = DataLoader(train_dataset, batch_size=BATCH_SIZE, shuffle=True, pin_memory=True)
val_loader = DataLoader(val_dataset, batch_size=BATCH_SIZE, pin_memory=True)

# ==== 保存验证集为 CSV ====
val_inputs = []
val_labels = []
for data, label in val_dataset:
    val_inputs.append(data.flatten().numpy())  # (2000, 8) → (16000,)
    val_labels.append(label.item())

np.savetxt("val_inputs.csv", np.array(val_inputs), delimiter=",", fmt="%.6f")
np.savetxt("val_labels.csv", np.array(val_labels), delimiter=",", fmt="%d")
print("验证集已保存为 val_inputs.csv 和 val_labels.csv")

# ==== 初始化模型、损失函数、优化器 ====
model = Rnn(8, 32, 1, num_classes).to(device)
criterion = nn.CrossEntropyLoss()
optimizer = optim.Adam(model.parameters(), lr=LR)

# ==== 训练过程 ====
for epoch in range(EPOCHS):
    model.train()
    running_loss = 0.0
    correct = 0
    total = 0

    for inputs, labels in train_loader:
        inputs = inputs.to(device)
        labels = labels.to(device)

        outputs = model(inputs)
        loss = criterion(outputs, labels)
        optimizer.zero_grad()
        loss.backward()
        optimizer.step()

        running_loss += loss.item() * labels.size(0)
        _, predicted = torch.max(outputs, 1)
        correct += (predicted == labels).sum().item()
        total += labels.size(0)

    train_acc = correct / total
    print(f"[Train] Epoch {epoch+1}/{EPOCHS} | Loss: {running_loss / total:.4f} | Acc: {train_acc:.4f}")

    # ==== 验证 ====
    model.eval()
    val_correct = 0
    val_total = 0
    with torch.no_grad():
        for inputs, labels in val_loader:
            inputs = inputs.to(device)
            labels = labels.to(device)

            outputs = model(inputs)
            _, predicted = torch.max(outputs, 1)
            val_correct += (predicted == labels).sum().item()
            val_total += labels.size(0)

    val_acc = val_correct / val_total
    print(f"[Val  ] Epoch {epoch+1}/{EPOCHS} | Acc: {val_acc:.4f}")
    print("-" * 50)

# ==== 保存模型 ====
torch.save(model.cpu().state_dict(), "weight_32_mcc5_200.pth")
print("模型已保存为 weight_32_mcc5_200.pth")
