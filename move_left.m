function [maze,now,last] = move_left(maze,now)

maze((now(1,1)),(now(1,2))) = maze((now(1,1)),(now(1,2))) + 10;
last = now;
now(1,2) = now(1,2)-1;


end

