syms x;
y=sin(x);
xlim([-3/2*pi 3/2*pi])
y1=taylor(sin(x),x,'Order',2);
y2=taylor(sin(x),x,'Order',4);
y3=taylor(sin(x),x,'Order',6);
fplot([y y1 y2 y3])
grid on
legend('sin(x)','n=1','n=3','n=5')