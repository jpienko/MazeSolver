function pheromone = generate_pheromone(maze)

sizeM = size(maze);
pheromone = zeros(sizeM);
for i =1:sizeM(1,2)
    for j = 1:sizeM(1,1)
        if maze(i,j)~= 0
            pheromone(i,j)=1;
        end
    end
end
end