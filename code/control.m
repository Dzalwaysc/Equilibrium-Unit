function tauT = control(index, rem, add, Q, W, loop_N, t, Poss, Vels, S_hats, S_bars)
%%
global gamma beta;

k1 = 0.01;
k2 = 0.01;
pos_d = [70, 25]';

%%
if index ~= 4
    tauT = -(beta * Q(index - 3,index - 3) * kron(gamma',eye(2)) * S_hats{index}(loop_N,:)')';
else
    if rem == 0
        tauT = -(beta * Q(index - 3,index - 3) * kron(gamma',eye(2)) * S_hats{index}(loop_N,:)')';
    elseif add ~=0 && rem ~= 0
        tauT = -(beta * Q(index - 3,index - 3) * kron(gamma',eye(2)) * S_hats{index}(loop_N,:)')';
    else
        tauT = (-(k1 + k2) * Vels{index}(loop_N,:)' - k1 * k2 * (Poss{index}(loop_N,:)'- pos_d))';
    end
end
% s_1 = [0, 0]';
% s_2 = [0, 0]';
% for j = 1:1:9
%     s_1 = s_1 + W(index,j) * (Poss{index}(loop_N,:)' - Poss{j}(loop_N,:)');
%     s_2 = s_2 + W(index,j) * (Vels{index}(loop_N,:)' - Vels{j}(loop_N,:)');
% 
% end
% 
% tauT = -(beta * kron(gamma',eye(2)) * [s_1; s_2])';

end