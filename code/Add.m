function [add, Nodes] = Add(Nodes,loop_N)
%%
add_step = 100000;
if loop_N == add_step
    add = 4;
    Nodes = [4,Nodes];
elseif loop_N > add_step
    add = -1;
    Nodes = Nodes;
else
    add = 0;
    Nodes = Nodes;
end

end