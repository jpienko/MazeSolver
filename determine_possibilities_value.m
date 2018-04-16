function possibilities = determine_possibilities_value(neighbours,possibilities,maze1,y)
if (neighbours(1,y))~=0
    if (maze1(neighbours(1,y), neighbours(2,y)))== 1
        possibilities(y) = 1;
    else
        if (maze1(neighbours(1,y), neighbours(2,y)))> 1
            if (maze1(neighbours(1,y), neighbours(2,y)))==3
                possibilities(y) = 3;
            else
                possibilities(y) = 10;
            end
        else
            if (maze1(neighbours(1,y), neighbours(2,y)))==-1
                possibilities(y) = -1;
            end
        end
    end
end
end