function f = yukawa(a,b)
    r = sqrt((a(1)-b(1))^2 + (a(2)-b(2))^2);
    g = 1;      % amplitude scaling constant
    m = 1;      % mass of each block
    alpha = 1;  % scaling constant
    f = (-1)*(g^2)*(exp((-1)*alpha*m*r)/r);
end
