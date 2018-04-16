function [tf,chosen_path, last, now, maze1] = choose_path(maze1,now,last,neighbours,possibility,possibilities)

chosen_path = [0 0 0 0];
ones = find(possibilities==1);

[tf, now,last,maze1] = is_finish_on_reach(now, last, neighbours,maze1);
if tf==1
    if ~(isempty(ones))
        if length(ones)==1
            last = now;
            now = [neighbours(1,ones),neighbours(2,ones)];
            maze1(last(1),last(2)) = maze1(last(1),last(2))+10;
        else 
            pheromone_sum = 0;
            for j=1:length(possibility)
                if possibilities(j)==1
                    pheromone_sum= pheromone_sum+possibility(j);
                end
            end
            for i=1:length(chosen_path)
                if possibility(i)~=0 
                    if possibilities(i)==1
                        chosen_path(i) = possibility(i)/pheromone_sum;
                    end
                end
            end
        end
    else
        tens = find(possibilities==10);
        if length(tens)==1
            last = now;
            now = [neighbours(1,tens),neighbours(2,tens)];
            maze1(last(1),last(2)) = maze1(last(1),last(2))+10;
        else 
            pheromone_sum = 0;
            for j=1:length(possibility)
                if possibilities(j)==10
                    pheromone_sum= pheromone_sum+possibility(j);
                end
            end

            for i=1:length(chosen_path)
                if(possibility(i)~=0&&possibilities(i)==10)
                    chosen_path(i) = possibility(i)/pheromone_sum;
                end
            end
        end
    end
end
end
