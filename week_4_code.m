%take the rate matrix
rates = gaussian_dist(20,1,1);
n = size(rates,2);
figure
c = 1:1:n;
scatter(c,rates);
title("Rate of growth across the leaf");
xlabel("Compartment Number");
ylabel("Rate of cell division in compartment");
cell_number_limit = 20;
radius = 0.001;
sigma = 0.001;
%given the rates, obtain the files from get_data
i = 1;
while(i <= n)
    fprintf("Recorded data of compartment %d in values_%d.csv\n",i,i);
    gt = get_data(rates(i),cell_number_limit,i,radius,sigma);
    i = i + 1;
end
%created data
%now, read the data of each file and display them in a graph
%PROCESS:
% 1 i = 1;
% 2 read line i of every file.
% 3 plot line i or every file.
% 4 i = i + 1;
% 5 go to step 2.
i = 1;
A = zeros(n,3);
while(i <= n)
    nme = 'values_' + string(i) + '.csv';
    dpf = readmatrix('C:\Users\LeoCE\ProjectFiles\modelling-leaf-growth\cell_data\' + nme);
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
%while(sum(b) <= n)
%    
%    for i = 1:n
%        radius = A(i).mat(crr(i),1);
%        sep = A(i).mat(crr(i),2);
%        num = A(i).mat(crr(i),3);
%        crr(i) = min(crr(i)+1,A(i).n);
%        x = 0:sep:((n-1)*sep);
%        x = x*1000;
%        %fprintf("radius = %f, separation = %f, number of cells = %d\n",radius,sep,n);
%        axis manual;
%        axis([-1 cell_number_limit*10000 -1 2]);
%        scatter(x,ones(1,num),40000*radius,'k');
%        hold on;
%    end
%end

% final plot of the data
gg = n-1;
for i = 1:n
    radius = A(i,1);
    sep = A(i,2);
    num = A(i,3);
    x = 0:sep:((num-1)*sep);
    %fprintf("radius = %f, separation = %f, number of cells = %d\n",radius,sep,n);
    axis manual;
    %axis([-1 cell_number_limit*10000 -1 2]);
    scatter(x,ones(1,num) + gg,2*radius,'k');
    gg = gg - 1;
    hold on;
end


