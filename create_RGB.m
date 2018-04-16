function RGB = create_RGB(maze,maze_solution)
sizeM = size(maze);
CMap = [0.1, 0.1, 0.1;  0.1, 0.8, 0.3];
RGB  = ind2rgb( maze+1, CMap);

for i =1: sizeM(1)
    for j =1 :sizeM(2)
        if maze(i,j)~=0
            RGB(i,j,3) = 200;
        end
    end
end
RGB = rgb2gray(RGB);
RGB = RGB- maze_solution;
end