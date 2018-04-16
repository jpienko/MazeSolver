function tf = if_matches_last(last,neighbours,i)
tf = 0;
if neighbours(1,i)==last(1)
    if neighbours(2,i)==last(2)
        tf=1;
    end
end
end