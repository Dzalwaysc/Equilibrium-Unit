function [n_posT, n_velT] = Model(t, posT, velT, tauT)
%%
global sim_step;

%% 
pos = posT';
vel = velT';
tau = tauT';

X = [pos;vel];

%%
RK_d1 = agent_model(t, X,  tau); 
RK_d2 = agent_model(t + sim_step / 2, X + RK_d1 * sim_step / 2,   tau);
RK_d3 = agent_model(t + sim_step / 2, X + RK_d2 * sim_step / 2,  tau);
RK_d4 = agent_model(t + sim_step,X + RK_d3 * sim_step,  tau);
n_X = X + sim_step * (RK_d1 + 2 * RK_d2 + 2 * RK_d3 + RK_d4)/6;
n_posT = n_X(1:2)';
n_velT = n_X(3:4)';

end