m = 616;
[x, y] = meshgrid(-2:0.1:2, -2:0.1:2);
z = m * x .* exp(-(x.^2 + y.^2));
surf(x, y, z);
xlabel('x');
ylabel('y');
zlabel('z');
title('函数z = 616xe^{-(x^2 + y^2)}');