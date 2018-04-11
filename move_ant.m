function [maze1,now,last] = move_ant(maze1,now,check,last)
x = rand;
sum = 0;
found_ones = find(check==1)
if isempty(found_ones)
    found_ten = find(check==10)
else
    
    for i=1:4
      sum = sum+check(i);
    end
end

end