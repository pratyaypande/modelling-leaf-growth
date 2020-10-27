x_range = 13;
y_range = 14;

x = x_range*rand(1,2);
y = y_range*rand(1,2);
mass = 4;
% following for loop changes the positions of the points 
tm = 0.4;

tolerance = 0.01;
avg = 1;

function d = direction_vector(x,y)
    r = dist(x,y);
    d = zeros(1,2);
    d(2) = (y(2) - y(1));
    d(1) = (x(2) - x(1));
end

function d = dist(a,b)
    d = sqrt((a(1) - a(2))^2 + (b(1) - b(2))^2);
end
scatter(x,y);
pause(40);
while(avg > tolerance)
    r = dist(x,y);
    vct = direction_vector(x,y);
    ljp = leonard_jones([x(1) y(1)], [x(2) y(2)]);
    
end

