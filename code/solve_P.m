%% 求解P
C = [0 1;
     0 0];
D = [0; 
     1];

% 初始设定 R
R = [1,0;0,5]; % 设定初始R为单位矩阵

% 定义一个很小的阈值
threshold = Threshold();

% 设置一个初始值
P = care(C, D, R);

% 迭代调整 R 直到 P 的最大特征值 < threshold
epsilon = max(eig(P * D * D' * P)) / min(eig(P));

disp(epsilon);

while epsilon >= threshold
    R =  0.9 * R; % 逐步增加 R 的值
    P = care(C, D, R);
    epsilon = max(eig(P * D * D' * P)) / min(eig(P));
    disp(epsilon);
end

% 输出结果
% P = [2.7301e-01   3.1799e-01;
%      3.1799e-01   8.5854e-01];
% 
% R = [1.0112e-01     0;
%           0   1.0112e-01];

disp('The solution P is:');
disp(P);

disp('The value of R used is:');
disp(R);

% 尝试进行Cholesky分解, 验证P是否为正定
try
    TT = chol(P);
    disp('The matrix P is positive definite.');
catch ME
    disp('The matrix P is not positive definite.');
end