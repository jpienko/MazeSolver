function maze = eliminate(maze,last,choice)

if isempty(find(choice==1))
    maze(last(1,1),last(1,2))=-1;
end
end