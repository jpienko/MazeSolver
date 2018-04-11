maze = [0 2 0 0 0 1 0 0 0 0;
        0 1 1 1 1 1 1 1 1 0;
        0 1 0 0 0 0 0 0 1 1;
        0 1 0 0 0 0 0 0 0 0;
        1 1 0 0 1 1 0 0 0 3;
        0 1 0 0 1 0 0 0 0 1;
        0 1 1 1 1 1 1 0 1 1;
        0 0 0 1 0 0 0 0 0 1;
        0 0 1 1 1 1 1 0 0 1;
        0 0 0 0 0 0 1 1 1 1];
    
    pow =40; 
    maze_disp = resizeMaze(maze,pow);
    imshow(maze_disp)
%% inicialize ant
ant = [];
pheromone = [];
size = size(maze);
for i =1:size(1,2)
    for j = 1:size(1,1)
        if maze(i,j)~= 0 
            pheromone(i,j)=1;
        end
    end
end
pheromone1 = pheromone;
maze1 = maze;

%% choose path

is_t = true;
now = find_start(maze);
last = now;


check = choose_path(maze1,now,last)
