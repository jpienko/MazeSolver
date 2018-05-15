%% choose maze
global mazeNum;
mazeNum=1;
hGui = bioni;
waitfor(hGui);
%% set start & finish point
global maze;
maze = generate_maze(mazeNum);

%set start
maze = set_start(maze);
%set finish
maze = set_stop(maze);

%%
global iterationsNumber;
global antsNumber;
global pheromonePerAnt;
global pheromoneDissperance;
gui= chooseParameters;
waitfor(gui);
%% show results
final1;
