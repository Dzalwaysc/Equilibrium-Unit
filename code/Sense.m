function s_barT = Sense(index, W, loop_N, t, Poss, Vels, S_hats)
%%
s_1 = [0, 0]';
s_2 = [0, 0]';
for j = 1:1:9
    s_1 = s_1 + W(index,j) * (Poss{index}(loop_N,:)' - Poss{j}(loop_N,:)');
    s_2 = s_2 + W(index,j) * (Vels{index}(loop_N,:)' - Vels{j}(loop_N,:)');

end

s_barT = [s_1; s_2]';
    
end