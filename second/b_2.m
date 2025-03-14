f = @(x) 1-2*abs(1/2-x);

x0 = 1/10;
tims = 50;

% 初始化数组来存储迭代结果
xs = zeros(1, tims);
xs(1) = x0;

% 进行迭代
for i = 2:tims
    xs(i) = f(xs(i-1));
end

plot(0:tims-1, xs, '+');
xlabel('迭代次数');
ylabel('x 值');
title('迭代序列的离散点图');
grid on;