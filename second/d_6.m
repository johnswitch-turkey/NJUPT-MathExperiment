x=1:26;
y=[1807,2001,2158,2305,2422,2601,2753,2914,3106,3303,3460,3638,3799,3971,4125,4280,4409,4560,4698,4805,4884,4948,5013,5086,5124,5163];
a=[6000,2,0.1];
f=@(a,x)a(1)./(1+a(2)*exp(-a(3)*x));
[A,resnorm]=lsqcurvefit(f,a,x,y);
t=26;
while    abs(A(1)/(1+A(2)*exp(-A(3)*t))-A(1)/(1+A(2)*exp(-A(3)*(t+1))))>1
    t=t+1;
end
disp(A);
disp(t);
% s=f(A,t);
% i=1:t;
% plot(x,y,'*')
% hold on;
% plot(i,A(1)./(1+A(2)*exp(-A(3)*i)));
% grid on
% legend('原始数据','拟合曲线','Location','SouthEast')