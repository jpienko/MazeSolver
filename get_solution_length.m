function length_best = get_solution_length(solution)
length_best =0;
for i = 1:length(solution)
    for j = 1:length(solution)
        if solution(i,j)==0.4
            length_best = length_best+1;
        end
    end
end

end