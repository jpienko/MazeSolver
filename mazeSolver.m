maze = [0 2 0 0 0 1 0 0 0 0;
        0 1 1 1 1 1 1 1 1 0;
        0 1 0 0 0 0 0 0 1 1;
        0 1 0 0 0 0 0 0 0 0;
        1 1 0 0 1 1 0 0 0 3;
        0 1 0 0 1 0 0 0 0 1;
        0 1 1 1 1 1 1 0 1 1;
        0 0 0 1 0 0 0 0 0 1;
        0 0 1 1 1 1 1 0 0 1;
        0 0 0 0 0 0 1 1 1 1];
    
    pow =40; 
    maze_disp = resizeMaze(maze,pow);
    imshow(maze_disp)
    
    
    %% rozwi¹¿ 
    is_t = true;
    
    now = find_start(maze);
    last = now;
    maze1 = maze;
    
    while(is_t)
        if now(1,2)==10
            if now(1,1)==6
               disp('now')
            end
        end
        choice = choose_path(maze1,now,last);
        if isempty(find(choice==1))
            [maze1,now,last] = moveback(maze1,now,choice,last);
        else
            [maze1,now,last] = move(maze1,now,choice,last);
        end       
        maze1 = eliminate(maze1,last,choice);
        
        if maze1(now(1,1),now(1,2))==3
            is_t = false
        end
    end
    
    disp('Mamy finisz!')
    for i=1:size(maze)
        for j=1:size(maze)
            if maze1(i,j)>1
                maze(i,j) = maze(i,j)+10;
            end
        end
    end
 maze2 = resizeMaze(maze,pow);
    CMap = [0.1, 0.1, 0.1;  0.1, 0.8, 0.3];
RGB  = ind2rgb( maze2+ 1, CMap);

for i=1:size(maze2)
        for j=1:size(maze2)
            if maze2(i,j)>10
                RGB(i,j,3) = RGB(i,j,3)+100;
            end
    end
end
GRAY = rgb2gray(RGB);
figure
imshow(GRAY)