function p = dd(f,x0,n)
p = x0;
for i = 2:n
    p(i)=f(p(i-1));
end
end