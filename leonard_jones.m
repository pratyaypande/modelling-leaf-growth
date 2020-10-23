function f = leonard_jones(r1,r2)
    r = sqrt((r1(1)-r2(1))^2+(r2(2)-r1(2))^2);  % Inter-block distance
    k = 1;
    sigma = 1;  % denotes the radius of the blocks
    epsilon = -1;% denotes the depth of the potential well (minima in the V vs r plot)
    f = 4*epsilon*( (sigma/r)^12 - (sigma/r)^6 );
end
