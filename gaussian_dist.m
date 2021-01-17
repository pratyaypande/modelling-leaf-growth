function dist = gaussian_dist(n,MEAN,SD)
    n = n-1;
    fac = 4500;
    x_edge = MEAN + SD*sqrt(2*log(20/(SD*sqrt(2*pi))));
    d = (2*x_edge - 1)/n;
    arr = (-1)*x_edge:d:x_edge;
    dist = (1/sqrt(2*pi))*exp((-1)*((arr-MEAN).^2/(2*SD)^2));
    dist = dist/fac;
end
