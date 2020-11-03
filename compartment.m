function compartment(r)
    n = 20; % number of iterations
    m = 30; % number of blocks in each
    fprintf("number of layers of cells = %d\ninitial number of cells on the main branch = %d",n,m);
    x = zeros(1,m+1);
    v = 1.5;
    y = 1:v:(v*m + 1);
    scatter(x,y,'b');
    xlim([0 n]);
    ylim([0 m+1]);
    t = 0;
    xlabel('Layer Number');
    ylabel('Cells/Blocks');
    fprintf("x = %d\n",t);
    hold on;
    for i = 1:(n/r)
        pause(0.5);
        x = x + r;
        t = t + r;
        y = 1:v:(v*m + 1);
        fprintf("x = %d\n",t);
        scatter(x,y,'b');
        hold on;
    end
    fprintf("\nCompleted Execution :)");
end
