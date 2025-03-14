syms x;
m = 616;
f = @(x) (2*x + 1) / (x - m);
point = solve((2*x + 1)/(x - m) == x, x);
disp(double(point));

dd(@(x)(2*x+1)/(x - m),0,4)




%ai搜出来的

% % 定义函数
% m = 616; % 假设 m 的值
% f = @(x) (2*x + 1) / (x - m);
% 
% % 求不动点
% syms x
% fixed_point = solve((2*x + 1)/(x - m) == x, x);
% disp('不动点为:');
% disp(double(fixed_point));
% 
% % 迭代过程
% x0 = 1; % 初始值
% max_iter = 100; % 最大迭代次数
% tol = 1e-6; % 收敛容差
% 
% x = x0;
% for i = 1:max_iter
%     x_new = f(x);
%     if abs(x_new - x) < tol
%         fprintf('迭代收敛于: %.6f\n', x_new);
%         break;
%     end
%     x = x_new;
% end
% 
% if i == max_iter
%     disp('迭代未收敛');
% end
% 
% % 比较收敛值与初值及不动点的关系
% fprintf('初值: %.6f\n', x0);
% fprintf('收敛值: %.6f\n', x_new);
% fprintf('不动点: %.6f\n', double(fixed_point));



