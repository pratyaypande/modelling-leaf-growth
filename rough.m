n = 20; % number of iterations
m = 30; % number of blocks in each
r = 1.2;
fprintf("number of layers of cells = %d\ninitial number of cells on the main branch = %d",n,m);
x = 0;
v = 1.5;
y = 1:v:(v*m + 1);
plot(x,y,"MarkerSize",20, "Color","b");
xlim([0 n]);
ylim([0 m+1]);
xlabel('Layer Number');
ylabel('Cells/Blocks');
hold on;
for i = 1:(n/r)
    pause(0.5);
    x = x + r;
    y = 1:v:(v*m);
    fprintf("x = %d\n",x);
    plot(x,y,"MarkerSize",20, "Color","b");
end
fprintf("\nCompleted Execution :)");
