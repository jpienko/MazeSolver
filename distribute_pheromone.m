function [pheromone,total_path,path]= distribute_pheromone(maze1,pheromone_per_ant)
sizeMaze = size(maze1);
pheromone = zeros(size(maze1));
path_length = 0;
path_length2 = 0;
path = zeros(size(maze1));

for i=1:sizeMaze(1)
    for j=1:sizeMaze(2)
        if maze1(i,j)>1
            path_length = path_length + 1;
            path(i,j) = 1;
        end
        if maze1(i,j)==-1
            path_length2 = path_length2 + 0.25;
            path(i,j) = 1;
        end
    end
end

total_path = path_length + path_length2;
phermone_per_pix = pheromone_per_ant/total_path;

for i=1:sizeMaze(1)
    for j=1:sizeMaze(2)
        if maze1(i,j)>1
            if path_length2~=0
                pheromone(i,j) = pheromone(i,j)+ phermone_per_pix+(0.75/path_length2);
            else
                pheromone(i,j) = pheromone(i,j)+ phermone_per_pix;
            end
        end
        if maze1(i,j)==-1
            pheromone(i,j) = pheromone(i,j)+ (phermone_per_pix*0.25);
        end
    end
end
end