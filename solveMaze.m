function [best,solution,length_best,length_chosen] = solveMaze(maze)
global mazeNum;
%% inicialize pheromone matrix

pheromone = generate_pheromone(maze);

%% set ants parameters
global iterationsNumber; 
global antsNumber;
global pheromonePerAnt;
global pheromoneDissperance;
ants_per_iteration = antsNumber;
iterations_number = iterationsNumber;
pheromone_per_ant = pheromonePerAnt;
pheromone_diss = pheromoneDissperance;

%% choose path
pheromone1 = zeros(size(pheromone));
best = inf;
best_path=[];

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

resize =40;
for i=1:length(best_path)
    for j=1:length(best_path)
        if best_path(i,j)>1 
            best_path(i,j) = 1;
        end
    end
end
best_path=generate_maze(mazeNum) - (best_path.*0.6); 
path_disp = resizeMaze(best_path,resize);
best = path_disp;

%% choose right path
maze_solution=generate_maze(mazeNum) - (maze_path(maze,pheromone).*0.6); 

maze_solution_disp = resizeMaze(maze_solution,resize);

solution = maze_solution_disp;

length_best = get_solution_length(best_path);
length_chosen = get_solution_length(maze_solution);

end