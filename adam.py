import torch
import torch.nn as nn
import torch.optim as optim

# 创建一个简单的模型
model = nn.Linear(2, 1, device="cuda").to(dtype=torch.float16)
optimizer = optim.Adam(model.parameters(), lr=0.01)

# 生成数据
x = torch.randn(4, 2, device="cuda").to(dtype=torch.float16)
y = torch.randn(4, 1, device="cuda").to(dtype=torch.float16)

# 计算损失
loss_fn = nn.MSELoss()
output = model(x)
loss = loss_fn(output, y)

# 计算梯度
loss.backward()
optimizer.step()
optimizer.zero_grad()

# 查看 Adam 里的 一阶矩（exp_avg） 和 二阶矩（exp_avg_sq）
for param in model.parameters():
    state = optimizer.state[param]
    print("一阶矩（exp_avg, 动量）:", state['exp_avg'])
    print("二阶矩（exp_avg_sq, 梯度平方的均值）:", state['exp_avg_sq'])

