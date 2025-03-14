syms x;
m = 616;
f2 = (sqrt(2 + m*x^2) - atan(m*x)) / x;
limit2 = limit(f2, x, inf);
disp(vpa(limit2,5));