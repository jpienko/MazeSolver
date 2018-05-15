function [x,y] = getRowColumn(s,resize)

x =floor( s(1)/resize)+1;
y =floor( s(2)/resize)+1;
end