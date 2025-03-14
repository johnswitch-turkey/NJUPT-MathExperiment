syms x;
m = 616;
f1 = (log(1 + x - m*x*x) - x) / (1-cos(x));
limit = limit(f1,x,0);
disp(vpa(limit,5));