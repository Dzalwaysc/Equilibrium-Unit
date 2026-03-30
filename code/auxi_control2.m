function auxi_tauT = auxi_control2(index, W, loop_N, t, Poss, Vels, S_hats, S_bars)
%%
C = [0, 1; 0, 0];
C_bar = kron(C,eye(2));

auxi_tauT = (C_bar * S_hats{index}(loop_N,:)')';
end