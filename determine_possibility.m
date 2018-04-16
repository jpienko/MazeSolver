function possibility = determine_possibility(pheromone, neighbours)

possibility=[0 0 0 0];
for y = 1:4
    possibility = determine_possibility_value(possibility,pheromone, neighbours,y);
end
end