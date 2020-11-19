% find the optimum separation where the leonard jones potential is
% minimised

fun = @(sep,n) LJ_derivative(sep,n);
n = 1000;
f = @(sep) fun(sep,n);
z = fzero(f,1.1e-02);
fprintf("n = %d, root = %f\n",n,z);