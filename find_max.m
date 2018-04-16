function [now,last] = find_max(pheromone,now,last,neighbours)
neighbours_pheromone = [0 0 0 0];
for i = 1:4
    if neighbours(1,i)~= 0
        tf = if_matches_last(last,neighbours,i);
        if tf==0
            neighbours_pheromone(i)= pheromone(neighbours(1,i),neighbours(2,i));
        end
    end
end
maxP = max(neighbours_pheromone);
maxIndex = find(neighbours_pheromone==maxP);
last = now;
now = [neighbours(1,maxIndex),neighbours(2,maxIndex)];
end