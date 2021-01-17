function dist = sine_dist(n,A,k)
    fac = 7000;
    x = 0:(2*pi)/n:2*pi;
    dist = abs(A*sin(x.*k));
    dist = dist/fac;
end
