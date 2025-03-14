function c_4_f(a,b,c,d)
    A=[a,b;c,d];%令m=519，选取第二个矩阵
    p=[0.5;0.5];%设置初始向量，可随意取值
    [P,d]=eig(A);
    for i=1:10%设置迭代次数
        p(:,i+1)=A*p(:,i);
    end
    disp(d);
    disp(P);
    disp(p);
end