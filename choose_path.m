function checks = choose_path(maze1,now,last)
checks = [0 0 0 0];

%czy jest œcie¿ka w lewo
if (now(1,2)-1)~=0 &&(now(1,2)-1)<=length(maze1)
     if (maze1(now(1,1),now(1,2)-1))==3
            checks(1,3) = 1;
         else
    if (maze1(now(1,1),now(1,2)-1))==1
        checks(1,1) = 1;
    else
        if (maze1(now(1,1),now(1,2)-1)) > 1
            checks(1,1) = 10;
        end
    end
     end
end

%czy jest œcie¿ka w górê    
if (now(1,1)-1)~=0&&(now(1,1)-1)<=length(maze1)
     if (maze1(now(1,1)-1,now(1,2)))==3
            checks(1,2) = 1;
     else
    if (maze1(now(1,1)-1,now(1,2)))==1
        checks(1,2) = 1;
    else
        if (maze1(now(1,1)-1,now(1,2))) >1
            checks(1,2) = 10;
        end
    end
     end
end

%czy jest œcie¿ka w prawo
if(now(1,2)+1)<(length(maze1)+1)
if (now(1,2)+1)~=0
    
    if (maze1(now(1,1),now(1,2)+1))==1
        checks(1,3) = 1;
    else
         if (maze1(now(1,1),now(1,2)+1))==3
            checks(1,3) = 1;
         else
            if (maze1(now(1,1),now(1,2)+1)) >1
                checks(1,3) = 10;
            end
         end
    end
end
end

%czy jest œcie¿ka w dó³
if ((now(1,1)+1)~=0 || (now(1,1)+1)<=length(maze1))
       if (now(1,1)+1)==length(maze1)+1
           return
       end
        if (maze1(now(1,1)+1,now(1,2)))==3
            checks(1,3) = 1;
         else
    if (maze1(now(1,1)+1,now(1,2)))==1
        checks(1,4) = 1;
    else
        if (maze1(now(1,1)+1,now(1,2))) >1
            checks(1,4) = 10;
        end
    end
        end
end

end
