function possibility = determine_possibility_value(possibility,pheromone, neighbours,y)
if (neighbours(1,y))~=0
    possibility(y) = pheromone(neighbours(1,y), neighbours(2,y));
end
end