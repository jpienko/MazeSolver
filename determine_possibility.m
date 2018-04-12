function possibility = determine_possibility(pheromone, neighbours)

possibility=[0 0 0 0];

    %czy jest œcie¿ka w lewo
    if (neighbours(1,1))~=0 
       possibility(1) = pheromone(neighbours(1,1), neighbours(2,1));
    end
    
     %czy jest œcie¿ka w górê
    if (neighbours(1,2))~=0 
       possibility(2) = (pheromone(neighbours(1,2), neighbours(2,2)));
    end
    %czy jest œcie¿ka w prawo
    if (neighbours(1,3))~=0 
       possibility(3) = pheromone(neighbours(1,3), neighbours(2,3));
    end

    %czy jest œcie¿ka w dó³
    if (neighbours(1,4))~=0   
       possibility(4) =  pheromone(neighbours(1,4), neighbours(2,4));  
    end
end