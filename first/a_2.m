syms x;
m = 616;
f = exp(m*x)*sin(x);
disp(diff (f,x,2));
f1 = diff (f,x,6);
disp(subs(f1,x,0));