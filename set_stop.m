function maze = set_stop(maze)
t_f = 1;
while(t_f)
    figure(1)
    resize = 40;
    maze_disp = resizeMaze(maze,resize);
    imshow(maze_disp)
    title('Wybierz punkt koñcowy')
    [s1(2), s1(1)] = ginput(1);
    s1 = round(s1);
    [x1,y1] = getRowColumn(s1,resize);
    if maze(x1,y1)~=0
        t_f = false;
    else
        f = msgbox('Musisz wybraæ pole nale¿¹ce do œcie¿ki(bia³e pola)')
        waitfor(f);
    end
end
maze(x1,y1) = 3;
end