function dist = sinc_dist(n,A,k)
    x = 1:3/n:4;
    dist = zeros(1,n);
    for i = n:-1:1
        dist(n-i+1) = sin(x(i)*k)/(x(i)*k);
    end
    fac = 2500;
    dist = abs(A*dist);
    dist = dist/fac;
end
