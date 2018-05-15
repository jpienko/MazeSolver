function [tf,now,last,maze1] = move_ant(now, last,check, neighbours,maze1)
x = randn;
ranges = zeros(2,4);
sum=0;

[tf, now,last,maze1] = is_finish_on_reach(now, last, neighbours,maze1);
if tf==1
    for i= 1: length(check)
        if check(i)~=0 
            ranges(1,i) = sum;
            sum = sum+check(i);
            ranges(2,i) = sum;
        end
    end

    for j=1:length(check)
        if ranges(1,j)<x
            if ranges(2,j)>=x
                last = now;
                now = [neighbours(1,j),neighbours(2,j)];
                maze1(last(1),last(2)) = maze1(last(1),last(2))+10;
            end
        end
    end
end


end