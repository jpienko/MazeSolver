function possibility_value = determine_possibility_value(pheromone, neighbours,y)
if (neighbours(1,y))~=0
    possibility_value = pheromone(neighbours(1,y), neighbours(2,y));
else
    possibility_value = 0;
end
end