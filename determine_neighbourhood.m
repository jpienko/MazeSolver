function neighbours = determine_neighbourhood(maze1,now)

sizeM = size(maze1);
x = now(1);
y = now(2);

up = x-1;
down = x+1;

left = y-1;
right = y+1;

neighbours = [x up x down;
              left y right y];
if x==1
    neighbours(:,2)=0;
end

if x==sizeM(1)
    neighbours(:,4)=0;
end

if y==sizeM(2)
    neighbours(:,3)=0;
end

if y==1
    neighbours(:,1)=0;
 
end
end