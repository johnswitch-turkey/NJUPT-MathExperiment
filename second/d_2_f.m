function d_2_f(n)
fprintf('c-b=%d 的勾股数为\n',n)
for b=1:1000 - n
    a=sqrt((b+n)^2-b^2);
    if(a==floor(a))
        fprintf('a=%i,b=%i,c=%i\n',a,b,b+n)
    end
end
end