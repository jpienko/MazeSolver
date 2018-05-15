function [possibilities,reject_ant] = search_for_path(maze1, neighbours)
possibilities = [0 0 0 0];
reject_ant =0;

for y = 1:4
 possibilities = determine_possibilities_value(neighbours,possibilities,maze1,y);
end

if (length(find(possibilities==-1))+length(find(possibilities==0)))==4
    reject_ant = 1;
else
    for i=1:length(possibilities)
        if possibilities(i)==-1
            possibilities(i)=0;
        end
    end
end

end