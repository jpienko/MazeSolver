function maze_disp = resizeMaze(maze,pow)
 maze_disp = zeros(size(maze).*pow);
    k=0;
    for i=1:length(maze)
        for j=1:pow
            k=k+1;
            maze_disp(1:length(maze),k) = maze(:,i);
        end
    end
    
    ile = length(maze);
    k=length(maze_disp);
    for i=length(maze_disp):-pow:1
        
        for j=1:pow
          
            maze_disp(k,:) = maze_disp(ile,:);
          k=k-1;  
        end
        ile = ile-1;
    end
end
