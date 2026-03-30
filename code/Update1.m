function W_N = Update1(rem,W)
%%
path = Min_out(rem,W);

%% 行继承 回溯
for i = 1:1:length(path) - 1
    W(path(end - (i - 1)),:) = W(path(end - i),:);

end

%% 列继承 回溯
for i = 1:1:length(path) - 1
    W(:,path(end - (i - 1))) = W(:,path(end - i));

end

%%
W(rem,:) = zeros(1,9);
W(:,rem) = zeros(9,1);

%%
W_N = W;

end