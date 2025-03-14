x=1:27;
y=[21,65,127,281,558,923,1321,1801,2420,3125,3886,4638,5306,6028,6916,7646,8353,9049,9593,10098,10540,10910,11287,11598,11865,12086,12251];
a=[4,0.1,0.1];
f=@(a,x)a(1)*exp(exp(a(2)*x+a(3)));
[A,resnorm]=lsqcurvefit(f,a,x,y)
t=27;
while  abs(f(A,t)-f(A,t+1))>1
	t=t+1;
end
t
f(A,t+1)
t=1:50;
plot(x,y,'*')
hold on;
plot(t,f(A,t));
grid on
legend('原始数据','拟合曲线','Location','NorthWest')