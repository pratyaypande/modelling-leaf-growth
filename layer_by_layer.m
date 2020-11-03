nX = 100;
nY = 45;
num_blocks = 5;
sep = 1.1;
sz = nY/num_blocks;
SD = 5;
MEAN = 2;
rnd = MEAN.*randn(num_blocks,1) + SD;
disp(rnd);
block_y = zeros(num_blocks,1);
xcoor = 1:1:nX;
ycoor = zeros(1,nX);

fprintf("code is running...\n");
fprintf("x_coordinate size = %d, y_coordinate size = %d\n",nX,nY);
disp(size(xcoor));
disp(size(ycoor));
scatter(ycoor,xcoor,'r');
hold on;
for i = 1:nY
    pause(0.2);
    for j = 1:num_blocks
        if(floor(i/rnd(j)) > block_y(j))
            block_y(j) = block_y(j) + 1;
            xcoor = j:1:(j+sz-1);
            ycoor = block_y(j)*ones(sz,1);
            scatter(xcoor,ycoor,'r');
            fprintf("");
            hold on;
        end
    end
end
