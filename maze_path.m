function maze_solution = maze_path(maze,pheromone)
maze_solution = zeros(size(maze));
now  = find_start(maze);
last=now;
is_t=true;
maze_solution(now(1),now(2))=0.4;
while(is_t)

neighbours = determine_neighbourhood(maze,now);
[now,last]=find_max(pheromone,now,last,neighbours);
maze_solution(now(1),now(2))=0.4;
if maze(now(1),now(2))==3
    is_t = false;
    
end
end

end
