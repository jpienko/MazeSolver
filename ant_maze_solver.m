
clc
clear all
close all
%%
maze = [0 2 0 0 0 1 0 0 0 0;
    0 1 1 1 1 1 1 1 1 0;
    0 1 0 0 0 1 0 0 1 1;
    0 1 0 0 0 1 0 0 0 1;
    1 1 0 0 1 1 0 0 0 1;
    0 1 0 0 1 0 0 0 0 1;
    0 1 1 1 1 1 1 1 1 3;
    0 0 0 1 0 0 1 0 0 1;
    0 1 1 1 1 1 1 0 0 1;
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
best_path=[];
pheromone_per_ant = 20;
pheromone_diss = 0.6;
ants_per_iteration = 10;
iterations_number = 15;
pheromone1 = zeros(size(pheromone));
best = inf;
%% choose path
for k = 1:iterations_number
    for l = 1:ants_per_iteration
        [pheromone2,best,best_path, reject_ant] = go_ant(pheromone,maze,pheromone_per_ant,best,best_path);
        if reject_ant~= 0
            l=l-1;
        else
        pheromone1 = pheromone1 + pheromone2;
        end
    end
    pheromone = pheromone+pheromone1;
    pheromone1 = zeros(size(pheromone));
    pheromone = pheromone_escape(pheromone,pheromone_diss);
end
pow =40;
path_disp = resizeMaze(best_path,pow);
figure
imshow(path_disp)

%% choose right path

maze_solution = maze_path(maze,pheromone);

RGB = create_RGB(maze,maze_solution);

maze_solution_disp = resizeMaze(RGB,pow);
figure
imshow(maze_solution_disp)

