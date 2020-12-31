function fin_mat = get_data(cell_growth_rate,cell_number_limit,comp_num,radius,sigma)
    n = 1;
    iter = 8;
    %radius = 0.001;
    sep = 0;
    %xlim([-1 cell_number_limit*10000]);
    %ylim([-1 2]);
    fun = @(sep,n) LJ_derivative(sep,n);
    fin_mat = [];
    while(iter > 0)
        % plot cells of radius and calculate separation as given
        if(n > 1)
            %fprintf("n > 1\n");
            f = @(sep) fun(sep,n);
            %y = ones(1,n);
            sep = fzero(f,1.1e-02);
            sep = 100000*(sep+radius);
            %x = 0:sep:((n-1)*sep);
            %x = x*1000;
            %fprintf("radius = %f, separation = %f, number of cells = %d\n",radius,sep,n);
            %figure;
            %axis manual;
            %axis([-1 cell_number_limit*10000 -1 2]);
            %scatter(x,y,40000*radius,'k');
            %hold on;
        %else
            %fprintf("radius = %f, separation = %f, number of cells = %d\n",radius,sep,n);
            %scatter(0,1,40000*radius);
            %hold on;
        end
        fin_mat = [fin_mat;[40000*radius,sep,n]];
        radius = radius + cell_growth_rate;
        if(radius > sigma/2)
            n = n*2;
            radius = radius/2;
        end
        iter = iter - 1;
        %pause(0.8);
    end
    fle = 'C:\Users\LeoCE\ProjectFiles\modelling-leaf-growth\cell_data\values_' + string(comp_num) + '.csv';
    writematrix(fin_mat,fle);
end