function y = a_7_f1(x)
    if all(x >= 0) && all(x <= 0.5)
        y = 2 * x;
    elseif all(x > 0.5) && all(x <= 1)
        y = 2 * (1 - x);
    else
        y = NaN;
    end
end