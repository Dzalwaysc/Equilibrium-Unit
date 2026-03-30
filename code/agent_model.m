function d_X = agent_model(t, X, tau)
%%
pos = X(1:2);
vel = X(3:4);

%%
d_pos = vel;
d_vel = tau;

d_X = [d_pos;d_vel];

end