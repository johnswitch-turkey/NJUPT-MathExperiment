syms x;
m = 616;
f = cos(x)*(m/200 + sin(x));
disp(taylor(f,x,0,'Order',5));