function possibilities = search_for_path(maze1, neighbours)
possibilities = [0 0 0 0];

    %czy jest œcie¿ka w lewo
    if (neighbours(1,1))~=0 
        if (maze1(neighbours(1,1), neighbours(2,1)))== 1 
            possibilities(1) = 1;
        else
            if (maze1(neighbours(1,1), neighbours(2,1)))> 1 
                if (maze1(neighbours(1,1), neighbours(2,1)))==3
                    possibilities(1) = 3;
                else
                    possibilities(1) = 10;
                end
            end
        end
    end
    
     %czy jest œcie¿ka w górê
    if (neighbours(1,2))~=0 
        if (maze1(neighbours(1,2), neighbours(2,2)))== 1 
            possibilities(2) = 1;
        else
            if (maze1(neighbours(1,2), neighbours(2,2)))> 1 
                if (maze1(neighbours(1,2), neighbours(2,2)))==3
                        possibilities(2) = 3;
                else
                        possibilities(2) = 10;
                end
            end
        end
    end
    %czy jest œcie¿ka w prawo
    if (neighbours(1,3))~=0 
        if (maze1(neighbours(1,3), neighbours(2,3)))== 1 
            possibilities(3) = 1;
        else
            if (maze1(neighbours(1,3), neighbours(2,3)))> 1 
                if (maze1(neighbours(1,3), neighbours(2,3)))==3
                        possibilities(3) = 3;
                else
                        possibilities(3) = 10;
                end
            end
        end
    end

    %czy jest œcie¿ka w dó³
    if (neighbours(1,4))~=0 
        if (maze1(neighbours(1,4), neighbours(2,4)))== 1 
            possibilities(4) = 1;
        else
            if (maze1(neighbours(1,4), neighbours(2,4)))> 1 
                if (maze1(neighbours(1,4), neighbours(2,4)))==3
                        possibilities(4) = 3;
                else
                        possibilities(4) = 10;
                end
            end
        end
    end


end