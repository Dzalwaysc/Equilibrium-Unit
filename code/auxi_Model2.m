function n_s_hatT = auxi_Model2(t, s_hatT, auxi_TauT)
%%
global sim_step;

%% 
s_hat = s_hatT';
auxi_Tau = auxi_TauT';

X = s_hat;

%%
RK_d1 = auxi_model(t, X,  auxi_Tau); 
RK_d2 = auxi_model(t + sim_step / 2, X + RK_d1 * sim_step / 2,   auxi_Tau);
RK_d3 = auxi_model(t + sim_step / 2, X + RK_d2 * sim_step / 2,  auxi_Tau);
RK_d4 = auxi_model(t + sim_step,X + RK_d3 * sim_step,  auxi_Tau);
n_X = X + sim_step * (RK_d1 + 2 * RK_d2 + 2 * RK_d3 + RK_d4)/6;
n_s_hatT = n_X';

end