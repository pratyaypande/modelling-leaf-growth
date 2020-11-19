function y = LJ_derivative(sep,n)
    sigma = 0.0001;
    epsilon = 0.000004; %depth of Potential
    y = 0;
    for i = 1:n
        for j = (i+1):n
            y = y + (6*(sigma^6)/((sep*(j-i))^7) - 12*(sigma^12)/((sep*(j-i))^13));
        end
    end
    y = y*4*epsilon;
end
