classdef data
    properties
        mat,n
    end
    methods
        function kb = data(filename)
            kb.mat = readmatrix(filename);
            n = size(kb.mat,1);
        end
    end
end

