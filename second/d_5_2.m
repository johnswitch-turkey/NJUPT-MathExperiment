x=[3.9,5.3,7.2,9.6,12.9,17.1,23.2,31.4,38.6,50.2,62.9,76,92,106.5,123.2,131.7,150.7,179.3,204,226.5];
y=log(x);
m=length(t);
A=[m,sum(t);sum(t),sum(t.^2)];
b=[sum(y);y*t'];
u=A\b;
x0=exp(u(1));
k=u(2);
error=sum((x0*exp(k*t)-x).^2);
disp('x0 =');
disp(x0);
disp('k =');
disp(k);
disp('误差 =');
disp(error);