clc;
clear all;
close all;

%% algebraic graph
[r, H, A, W, Omega] = affineGraph();

%% control parameters
global beta gamma;
C = [0 1;
     0 0];
D = [0; 
     1];
beta = 0.0036;
xi = 5;
P = [xi^3, xi^2; xi^2, 2 * xi];
gamma = P' * D;

beta = 1;
gamma = [1, 1]';

%% desire mappings
global t sim_step;
via_ = sttraj(H,r);
sim_step = 0.005; acc = 40;
[rTra, rTrad, rTradd, t] = mstraj_(via_, 1*ones(1,6), sim_step, acc);
[desPos, desPosd, desPosdd] = dptraj(r, rTra, rTrad, rTradd, t);

%% preimage set
%t = {0,sim_step,2*sim_step,...,(num_step - 1)*sim_step}
num_step = length(t);
global delta_T;
delta_T = 0.03; 

%% node define
global all_num leader_num follower_num;
all_num = 9;
leader_num = 3;
follower_num = 6;

%% nominal description
%%%%%state mappings
for i = 1:1:9
% the family of first order mappings
Poss{i} = zeros(num_step, 2);
% the family of second order mappings
Vels{i} = zeros(num_step, 2);

end

%%%%%control mappings 
for i = 1:1:9
% the family of control mappings
Taus{i} = zeros(num_step - 1, 2);

end

%% auxiliary description
%%%%%state mappings
for i = 1:1:9
S_hats{i} = zeros(num_step - 1, 4);

end

%%%%%control mappings 
for i = 1:1:9
% the family of control mappings
auxi_Taus{i} = zeros(num_step - 2, 4);

end

%% 初始状态映射值
loop = 1;

%%%%%%%%%%%%%leaders%%%%%%%%%%%%%
for i = 1:1:3
    %nominal description
    Poss{i}(loop,:) = desPos{i}(loop,:);
    Vels{i}(loop,:) = desPosd{i}(loop,:);

    %auxiliary description
    S_hats{i}(loop,:) = [0, 0, 0, 0];
end

%%%%%%%%%%%%%followers%%%%%%%%%%%%%
%nominal description
% Poss{4}(loop,:) = [0, 5];   Vels{4}(loop,:) = [0, 0];
% Poss{5}(loop,:) = [0, -4];  Vels{5}(loop,:) = [0, 0];
% Poss{6}(loop,:) = [-3, 3];  Vels{6}(loop,:) = [0, 0];
% Poss{7}(loop,:) = [-3, -3]; Vels{7}(loop,:) = [0, 0];
% Poss{8}(loop,:) = [-7,  5]; Vels{8}(loop,:) = [0, 0];
% Poss{9}(loop,:) = [-5, -5]; Vels{9}(loop,:) = [0, 0];

Poss{4}(loop,:) = [0, 2];   Vels{4}(loop,:) = [0, 0];
Poss{5}(loop,:) = [0, -2];  Vels{5}(loop,:) = [0, 0];
Poss{6}(loop,:) = [-1, 1];  Vels{6}(loop,:) = [0, 0];
Poss{7}(loop,:) = [-1, -1]; Vels{7}(loop,:) = [0, 0];
Poss{8}(loop,:) = [-3,  3]; Vels{8}(loop,:) = [0, 0];
Poss{9}(loop,:) = [-3, -3]; Vels{9}(loop,:) = [0, 0];

% Poss{4}(1,:) = [10 15];   Vels{4}(1,:) = [0 0];
% Poss{5}(1,:) = [10 -14];  Vels{5}(1,:) = [0, 0];
% Poss{6}(1,:) = [-23 13];  Vels{6}(1,:) = [0, 0];
% Poss{7}(1,:) = [-13 -13]; Vels{7}(1,:) = [0, 0];
% Poss{8}(1,:) = [-7  15]; Vels{8}(1,:) = [0, 0];
% Poss{9}(1,:) = [-15 -5]; Vels{9}(1,:) = [0, 0];

%auxiliary description
for i = 4:1:9
    for j = 1:1:9
        S_hats{i}(loop,:) = S_hats{i}(loop,:) + (W(i,j) * ([Poss{i}(loop,:), Vels{i}(loop,:)]' - [Poss{j}(loop,:), Vels{j}(loop,:)]'))';

    end
end

%%
Nodes = [4, 5, 6, 7, 8, 9];
rem = 0;
W_new = W;
W_old = W;

%% 解映射
for loop = 1:1:(num_step - 1)
    %%%%%%%%%%%%%%%%%交互%%%%%%%%%%%%%%%%%%%
    % [rem, Nodes] = Remove(Nodes,loop);
    % if rem ~= 0
    %     W_new = Update1(rem,W_new);
    % end

    %[add, Nodes] = Add(Nodes,loop);
    %if add ~= 0
    %    W_new = Update2(add,W_new);
    %end

    %%%%%%%%%%%%%%%%%%leaders%%%%%%%%%%%%%%%%% 
    for i = 1:1:3
        %采样状态映射作用在序列中第loop个元素上的像
        %不感知
        %控制映射在序列中第loop - 1个元素对应的像
        auxi_Taus{i}(loop,:) = [0, 0, 0, 0];
        %状态映射在序列中第loop个元素对应的像
        S_hats{i}(loop,:) = [0, 0, 0, 0];
    end
    
    %%%%%%%%%%%%%%%%%%followers%%%%%%%%%%%%%%%%%
    for i = 4:1:9
        %采样状态映射作用在序列中第loop个元素上的像
        %判断是否感知
        if loop == 1 %感知
            %初始值
        else
            %判断是否为感知instant
            index = detect(loop);
            if index == 1 %感知
                W_old = W_new;
                %控制映射在序列中第loop - 1个元素对应的像
                auxi_Taus{i}(loop - 1,:) = auxi_control1(i, W_old, loop - 1, t, Poss, Vels, S_hats);
                %状态映射在序列中第loop个元素对应的像
                S_hats{i}(loop,:) = auxi_Model1(t(loop - 1), S_hats{i}(loop - 1,:), auxi_Taus{i}(loop - 1,:));
            else %不感知
                %控制映射在序列中第loop - 1个元素对应的像
                auxi_Taus{i}(loop - 1,:) = auxi_control2(i, W_old, loop - 1, t, Poss, Vels, S_hats);
                %状态映射在序列中第loop个元素对应的像
                 S_hats{i}(loop,:) = auxi_Model2(t(loop - 1), S_hats{i}(loop - 1,:), auxi_Taus{i}(loop - 1,:));
            end
        end
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%leaders%%%%%%%%%%%%%%%%%
    for i = 1:1:3
            %控制映射在序列中第loop个元素对应的像
            Taus{i}(loop,:) = [0, 0];
            %状态映射在序列中第loop + 1个元素对应的像
            Poss{i}(loop + 1,:) = desPos{i}(loop + 1,:);
            Vels{i}(loop + 1,:) = desPosd{i}(loop + 1,:);
            
    end
    
    %%%%%%%%%%%%%%%%%%followers%%%%%%%%%%%%%%%%%%
    for i = 4:1:9
            %控制映射在序列中第loop个元素对应的像
            Taus{i}(loop,:) = control(i, W_old, loop, t, Poss, Vels, S_hats);
            %状态映射在序列中第loop + 1个元素对应的像
            [Poss{i}(loop + 1,:), Vels{i}(loop + 1,:)] = Model(t(loop), Poss{i}(loop,:), Vels{i}(loop,:), Taus{i}(loop,:));

    end
  
    fprintf("time is %f\n", t(loop));
    
end




%%





