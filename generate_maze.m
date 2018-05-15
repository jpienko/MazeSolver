function maze = generate_maze(case_number)
switch case_number
case 1
maze = [0 1 0 0 0 1 0 0 0 0 0;
        0 1 1 1 1 1 1 1 1 0 0;
        0 1 0 0 0 1 0 0 1 1 0;
        0 1 0 0 0 1 0 0 0 1 0;
        1 1 0 0 1 1 0 0 0 1 0;
        0 1 0 0 0 0 0 0 0 1 1;
        0 1 1 1 1 1 1 1 0 0 0;
        0 0 0 1 0 0 0 0 0 1 1;
        0 1 1 1 1 1 1 0 0 1 0;
        0 0 0 0 0 0 1 1 1 1 0;
        0 0 0 0 0 0 0 1 0 0 0];

case 2   
    maze = [0 1 0 0 0 1 0 0 0 0 0;
            0 1 1 1 1 1 1 1 1 0 0;
            0 1 0 0 0 1 0 0 1 1 0;
            0 1 0 0 0 1 0 0 0 1 0;
            1 1 0 0 1 1 0 0 0 1 0;
            0 1 0 0 1 0 0 0 0 1 1;
            0 1 1 1 1 1 1 1 1 0 1;
            0 0 0 1 0 0 1 0 0 1 1;
            0 1 1 1 1 1 1 0 0 1 0;
            0 0 0 0 0 0 1 1 1 1 0;
            0 0 0 0 0 0 0 1 0 0 0];
case 3 
    maze = [0 1 0 0 0 1 0 0 0 0;
            0 1 1 1 1 1 1 1 1 0;
            0 1 0 0 0 1 0 0 1 1;
            0 1 0 0 0 0 0 0 0 0;
            1 1 0 0 1 1 0 0 0 0;
            0 1 0 0 1 0 0 0 0 1;
            0 1 1 1 1 1 0 1 1 1;
            0 0 0 1 0 0 1 0 0 1;
            0 0 1 1 1 1 1 0 0 1;
            0 0 0 0 0 0 1 1 1 1];
end
end