function [pheromone1,best,best_path,reject_ant]  = go_ant(pheromone,maze,pheromone_per_ant,best,best_path)
maze1 = maze;
is_t = true;
now = find_start(maze);
last = now;
while(is_t)
    
    neighbours = determine_neighbourhood(maze1,now);
    [possibilities,reject_ant]= search_for_path(maze1, neighbours);
    
    possibility = determine_possibility(pheromone, neighbours);
    [tf,check, last, now,maze1] = choose_path(maze1,now,last,neighbours,possibility,possibilities);
    
    if length(find(check==0))~=4
        [tf,now,last,maze1]  = move_ant(now, last,check, neighbours,maze1);
    end
    
    if tf~=0
        maze1 = eliminate(maze1,last,possibilities);
    end
    
    if tf==0 || reject_ant==1
        is_t = false;
    end
    
end
if reject_ant ==0
    [pheromone1,path_length, path]= distribute_pheromone(maze1,pheromone_per_ant);
else
    pheromone1= zeros(size(maze1));
    path_length=inf;
end
if path_length<best
    best = path_length;
    best_path = path;
end


end