rates = sinc_dist(20,1,pi);
n = size(rates,2);
figure
c = 1:1:n; scatter(c,rates);
title("Rate of growth across the leaf"); xlabel("Compartment Number");
ylabel("Rate of cell division in compartment");
cell_number_limit = 20;
radius = 0.001;
sigma = 0.001;
i = 1;
while(i <= n)
    gt = get_data(rates(i),cell_number_limit,i,radius,sigma);
    fprintf("Recorded data of compartment %d in cell_data/values_%d.csv\n",i,i);
    i = i + 1;
end
i = 1;
A = zeros(n,3);
while(i <= n)
    nme = 'values_' + string(i) + '.csv';
    dpf = readmatrix('cell_data\' + nme);
    de = size(dpf,1);
    A(i,1) = dpf(de,1);
    A(i,2) = dpf(de,2);
    A(i,3) = dpf(de,3);
    i = i + 1;
end
b = zeros(n,1);
crr = ones(n,1);
figure;
dx = 1;
gg = n - 1;
for i = 1:n
    radius = A(i,1); sep = A(i,2); num = A(i,3);
    x = 0:sep:((num-1)*sep);
    axis manual;
    scatter(x,ones(1,num) + gg,2*radius,'k');
    xlim([0 600]); gg = gg - 1; hold on;
end
