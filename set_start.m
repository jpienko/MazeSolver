function maze = set_start(maze)
t_f = 1;
%set start
while(t_f)
    figure(1)
    resize = 40;
    maze_disp = resizeMaze(maze,resize);
    imshow(maze_disp)
    title('Wybierz punkt startowy')
    [s(2), s(1)] = ginput(1);
    s = round(s);
    [x,y] = getRowColumn(s,resize);
    if maze(x,y)~=0
        t_f = false;
    else
        f = msgbox('Musisz wybraæ pole nale¿¹ce do œcie¿ki(bia³e pola)')
        waitfor(f);
    end
end
maze(x,y) = 2;
end