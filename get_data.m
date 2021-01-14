function fin_mat = get_data(cell_growth_rate,cell_number_limit,comp_num,radius,sigma)
    n = 1;
    iter = 8;
    sep = 0;
    fun = @(sep,n) LJ_derivative(sep,n);
    fin_mat = [];
    while(iter > 0)
        if(n > 1)
            f = @(sep) fun(sep,n);
            sep = fzero(f,1.1e-02);
            sep = 100000*(sep+radius);
        end
        fin_mat = [fin_mat;[40000*radius,sep,n]];
        radius = radius + cell_growth_rate;
        if(radius > sigma/2)
            n = n*2;
            radius = radius/2;
        end
        iter = iter - 1;
    end
    fprintf("cell number limit = %d", cell_number_limit);
    fle = 'C:\Users\LeoCE\ProjectFiles\modelling-leaf-growth\cell_data\values_' + string(comp_num) + '.csv';
    writematrix(fin_mat,fle);
end