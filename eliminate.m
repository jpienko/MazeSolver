function maze = eliminate(maze,last,possibilities)

if isempty(find(possibilities==1))
    maze(last(1,1),last(1,2))=-1;
end

end