for b=1:998
    a=sqrt((b+1)^2-b^2);
    if(a==floor(a))
        fprintf('a=%i,b=%i,c=%i\n',a,b,b+2)
    end
end