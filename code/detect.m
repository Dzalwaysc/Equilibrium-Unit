function index = detect(loop_N)
%%
global sim_step delta_T;

%%
if mod((loop_N - 1) , (delta_T / sim_step)) == 0
    index = 1;
else
    index = 0;
end
    
end