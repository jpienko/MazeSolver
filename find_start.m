function new = find_start(maze)
start = find(maze == 2);
for i = 1:length(maze)
    start = start - length(maze);
    if start<=0
         x = start + length(maze);
         y =i;
        break
    end
end
new = [x,y];
end