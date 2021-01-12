n = 1;
radius = 0.001;
sep = 0;
sigma = 0.01;
cell_growth_rate = 0.0004;
cell_number_limit = 20;
%xlim([-1 cell_number_limit*10000]);
%ylim([-1 2]);
fun = @(sep,n) LJ_derivative(sep,n);
fin_mat = [];
while(n < cell_number_limit)
    % plot cells of radius and calculate separation as given
    if(n > 1)
        %fprintf("n > 1\n");
        f = @(sep) fun(sep,n);
        y = ones(1,n);
        sep = fzero(f,1.1e-02);
        sep = 100000*(sep+radius);
        x = 0:sep:((n-1)*sep);
        x = x*1000;
        fprintf("radius = %f, separation = %f, number of cells = %d\n",radius,sep,n);
        %figure;
        %axis manual;
        %axis([-1 cell_number_limit*10000 -1 2]);
        %scatter(x,y,40000*radius,'k');
        %hold on;
    else
        fprintf("radius = %f, separation = %f, number of cells = %d\n",radius,sep,n);
        %scatter(0,1,40000*radius);
        %hold on;
    end
    fin_mat = [fin_mat;[40000*radius,sep,n]];
    radius = radius + cell_growth_rate;
    %fprintf("radius = %f, separation = %f, number of cells = %d\n",radius,sep,n);
    if(radius > sigma/2)
        n = n*2;
        radius = radius/2;
    end
    %pause(0.8);
end
writematrix(fin_mat,'testdata.csv');
type 'testdata.csv'