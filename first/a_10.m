m = 616;
f = @(x, y) log(x.^2 + m.*y) - (x.^3.*y + sin(x));
ezplot(f, [-15,15,-15,15]);
title('隐函数图形');
xlabel('x');
ylabel('y');
grid on;