syms x;
y=sin(x);
xlim([-3/2*pi 3/2*pi])
y1=taylor(sin(x),x,'Order',8);
y2=taylor(sin(x),x,'Order',10);
y3=taylor(sin(x),x,'Order',12);
fplot([y y1 y2 y3])
grid on
legend('sin(x)','n=7','n=9','n=11')