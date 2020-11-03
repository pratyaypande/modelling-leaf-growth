
x2 = [1 2];
y2 = [4 4];
p = plot(x2,y2);
xlim([0 100])
ylim([2.5 4])
xlabel('Iteration')
ylabel('Approximation for \pi')

p.XDataSource = 'x2';
p.YDataSource = 'y2';

denom = 1;
k = -1;
for t = 3:100
    denom = denom + 2;
    x2(t) = t;
    y2(t) = 4*(y2(t-1)/4 + k/denom);
    refreshdata
    drawnow
    k = -k;
end
