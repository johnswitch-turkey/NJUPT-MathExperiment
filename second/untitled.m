

%这个没什么用，我也忘了为什么在这里。。

function c_4_f(a,b,c,d)
A = [a, b; c, d];

% 定义初始向量
x0 = [1; 0]; % 你可以根据需要更改初始向量

% 设置迭代次数
num_iterations = 100;

% 初始化存储迭代结果的矩阵
x = zeros(2, num_iterations);
x(:, 1) = x0;

% 进行迭代
for k = 2:num_iterations
    x(:, k) = A * x(:, k-1);
end

% 计算特征值和特征向量
[eigenVectors, eigenValues] = eig(A);

% 显示特征值和特征向量
disp('特征值:');
disp(diag(eigenValues));
disp('特征向量:');
disp(eigenVectors);

% 显示迭代后的稳定值
stable_value = x(:, end);
disp('迭代后的稳定值:');
disp(stable_value);

% 将稳定值表示为特征向量的线性组合
coefficients = eigenVectors \ stable_value;
disp('稳定值与特征向量的关系:');
disp('稳定值 =');
for i = 1:length(coefficients)
    fprintf('%.4f * 特征向量%d\n', coefficients(i), i);
end
% 
% % 判断迭代是否稳定
% % 如果矩阵 A 的最大特征值的绝对值小于 1，则迭代稳定
% max_eigenvalue = max(abs(diag(eigenValues)));
% if max_eigenvalue < 1
%     disp('迭代是稳定的');
% else
%     disp('迭代是不稳定的');
% end

% 绘制迭代结果
plot(1:num_iterations, x(1, :), 'r', 'LineWidth', 2);
hold on;
plot(1:num_iterations, x(2, :), 'b', 'LineWidth', 2);
xlabel('迭代次数');
ylabel('向量值');
legend('x_1', 'x_2');
title('迭代过程');
grid on;

end