function [maze1,now,last] = move(maze1,now,choice,last)

if choice(1,1) == 1
        [maze1,now,last] = move_left(maze1,now);
else
        if choice(1,2) == 1
                [maze1,now,last] = move_up(maze1,now);
        else
            if choice(1,3) == 1
                    [maze1,now,last] = move_right(maze1,now);
            else
                if choice(1,4) == 1
                        [maze1,now,last] = move_down(maze1,now);
                end
            end
        end
end
end