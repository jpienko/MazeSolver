function [tf, now,last,maze1] = is_finish_on_reach(now, last, neighbours,maze1)
tf=1;
for i = 1:length(neighbours)
    if neighbours(1,i)~=0
        if  maze1(neighbours(1,i), neighbours(2,i))==3
            last = now;
            now = [neighbours(1,i), neighbours(2,i)];
            maze1(last(1),last(2)) = maze1(last(1),last(2))+10;
            tf=0;
        end
    end
end
end