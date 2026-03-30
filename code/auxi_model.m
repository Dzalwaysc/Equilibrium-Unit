function d_X = auxi_model(t, X,  auxi_Tau)
%%
s_hat = X;

%%
d_s_hat = auxi_Tau;

d_X = d_s_hat;

end