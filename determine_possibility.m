function possibility = determine_possibility(pheromone, neighbours)

possibility=[0 0 0 0];
for y = 1:4
    possibility(y) = determine_possibility_value(pheromone, neighbours,y);
end
end