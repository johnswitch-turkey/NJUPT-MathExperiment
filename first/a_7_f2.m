function y = a_7_f2(x)
    if all(x >= -pi) && all(x < 0)
        y = x - 1;
    elseif all(x >= 0 ) && all(x <= pi)
        y = x + 1;
    else
        y = NaN;
    end
end