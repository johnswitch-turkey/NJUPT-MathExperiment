% 步骤1：设置参数（无需优化，直接赋值）
N = 330e6;          % 美国总人口
beta = 0.2;         % 感染率（可手动调整）
sigma = 1/5.2;      % 潜伏期转感染率（潜伏期5.2天）
gamma = 1/10;       % 康复率（感染期10天）
origin = 1000;   % 假设初始有1000人感染

% 步骤2：定义SEIR方程组（直接写在主代码中，无需函数）
tspan = 0:2000;    % 模拟200天
y0 = [N-origin, 0, origin, 0]; % [S, E, I, R]初始值

[t, y] = ode45(@(t,y) [
    -beta * y(1) * y(3) / N;             % dS/dt
    beta * y(1) * y(3)/N - sigma * y(2); % dE/dt
    sigma * y(2) - gamma * y(3);         % dI/dt
    gamma * y(3)                         % dR/dt
], tspan, y0);

% 步骤3：绘制感染曲线（只需核心代码）
figure;
plot(t, y(:,3), 'r', 'LineWidth', 2);   % 绘制感染者曲线
xlabel('天数'); ylabel('感染人数');
title('SEIR模型预测新冠疫情传播');
grid on;

beta_values = [0.15, 0.2, 0.25];
hold on;
for beta = beta_values
    [t, y] = ode45(@(t,y) [
    -beta * y(1) * y(3) / N;             % dS/dt
    beta * y(1) * y(3)/N - sigma * y(2); % dE/dt
    sigma * y(2) - gamma * y(3);         % dI/dt
    gamma * y(3)                         % dR/dt
], tspan, y0);  % 重复步骤2的代码
    plot(t, y(:,3), 'LineWidth', 1.5);
end
legend('beta=0.15', 'beta=0.2', 'beta=0.25');
