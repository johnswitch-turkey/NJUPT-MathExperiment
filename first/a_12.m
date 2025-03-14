m = 616;

f = @(x) x.^3 + sqrt(m)*x.^2 + (m/3 - 3)*x - sqrt(m)*(1 - m/27);

a = -sqrt(m)/3 - 2;
b = -sqrt(m)/3 + 2;
x = linspace(a, b, 1000);
% x = -sqrt(m)/3 - 2:0.01:sqrt(m)/3 - 2;

% 绘制函数图形
plot(x, f(x));
title('函数图形');
xlabel('x');
ylabel('f(x)');
grid on;

% 使用 fzero 函数求根
x0 = fzero(f, -10); % 初始猜测值可以根据图形调整
x1 = fzero(f, -8);
x2 = fzero(f, -6);

disp('方程的实根为：');
disp(roots);

% 计算导数
df = @(x) 3*x.^2 + 2*sqrt(m)*x + (m/3 - 3);

% 确定单调区间
x_values = linspace(a, b, 1000);
df_values = df(x_values);
increasing = df_values > 0;
decreasing = df_values < 0;

% 输出单调区间
disp('函数的单调递增区间为：');
disp(x_values(increasing));
disp('函数的单调递减区间为：');
disp(x_values(decreasing));

% 分析单调性
% 通过导数的符号变化可以确定函数的单调性