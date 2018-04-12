
clc
% clear all
close all
%%
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
sizeM = size(maze);
for i =1:sizeM(1,2)
    for j = 1:sizeM(1,1)
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
while(is_t)
   
    neighbours = determine_neighbourhood(maze1,now);
    possibilities = search_for_path(maze1, neighbours);
    possibility = determine_possibility(pheromone, neighbours);

    [check, last, now,maze1] = choose_path(maze1,now,last,neighbours,possibility,possibilities);
    if length(find(check==0))~=4
        [now,last,maze1]  = move_ant;
    end
    maze1 = eliminate(maze1,last,possibilities);
end
