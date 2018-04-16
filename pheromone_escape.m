function pheromone = pheromone_escape(pheromone,pheromone_diss)
sizePher = size(pheromone);

for i=1:sizePher(1)
    for j=1:sizePher(2)
        if pheromone(i,j)>0
            if pheromone(i,j)<pheromone_diss
                pheromone(i,j)==0;
            else
                
                pheromone(i,j)== pheromone(i,j)-pheromone_diss;
            end
        end
    end
end
end
