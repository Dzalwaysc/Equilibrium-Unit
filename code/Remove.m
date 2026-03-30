function [rem, Nodes] = Remove(Nodes,loop_N)
%%
rem_step = 12000;
if loop_N == rem_step
    rem = 4;
    Nodes(Nodes == 4) = [];
elseif loop_N > rem_step
    rem = -1;
    Nodes = Nodes;
else
    rem = 0;
    Nodes = Nodes;
end

end
