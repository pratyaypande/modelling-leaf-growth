n = 20; % number of rows in big block
m = 30; % number of columns in each big block
points = 40;
r = 1.2;
fprintf("number of layers of cells = %d\ninitial number of cells on the main branch = %d",n,m);
x = 0;
v = 1.5;
x = m*rand(points,1);   % x coordinates of the points
y = n*rand(points,1);   % y coordinates of the points
figure;
scatter(x,y,20);
xlim([0,m]);
ylim([0 n]);
xlabel("Y-Axis");
ylabel("X-Axis");
pause(10);
hold off;
