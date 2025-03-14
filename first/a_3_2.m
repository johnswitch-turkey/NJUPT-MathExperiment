syms x;
m = 616;
f = log(1+m*x) - m*x;
disp(int(f,x,0,1));