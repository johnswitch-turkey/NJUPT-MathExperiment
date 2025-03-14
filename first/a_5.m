m = 616;
x = zeros(1,10);
x(1) = rand(1);
for n = 2:10
    x(n) = sqrt(m / 100 + x(n-1));
end
disp(x);