function Q_N = Gain(W,rem,add)
%% 求解Q
if rem == 4
    Omega = -W;
    N = size(W);
    for i=1:N
        for j = 1:N
            Omega(i,i) = Omega(i,i) + W(i,j);
        end
    end 
    Omega(rem,:) = [];
    Omega(:,rem) = [];
    N = size(Omega);
    Omega_ff = Omega(4:N,4:N);

    % 初始对角矩阵 H (初始化为单位矩阵)
    H0 = eye(size(Omega_ff));

    % 将对角元素提取出来作为优化变量
    h0 = diag(H0);

    % 定义目标函数，最小化对角元素的平方和
    objective = @(h) sum(h.^2);

    % 定义非线性约束，确保 eig(H * L_ff + L_ff' * H) > 0.5
    nonlcon = @(h) deal([], min(eig(diag(h) * Omega_ff + Omega_ff' * diag(h))) - 1);

    % 优化选项
    options = optimoptions('fmincon', 'Display', 'iter', 'Algorithm', 'sqp');

    % 使用 fmincon 进行优化
    [h_opt, fval] = fmincon(objective, h0, [], [], [], [], [], [], nonlcon, options);

    % 得到优化后的对角矩阵 H
    Q_N = blkdiag(0,diag(h_opt));

    % 显示结果
    %disp('The optimized diagonal matrix Q is:');
    %disp(Q_N);

    % 验证 H * L_ff + L_ff' * H 的特征值
    %eig_values = eig(Q_N * Omega_ff + Omega_ff' * Q_N);
    %disp('The eigenvalues of H * L_ff + L_ff'' * H are:');
    %disp(eig_values);
       
elseif add == 4
    Omega = -W;
    N = size(W);
    for i=1:N
        for j = 1:N
            Omega(i,i) = Omega(i,i) + W(i,j);
        end
    end 
    N = size(Omega);
    Omega_ff = Omega(4:N,4:N);

    % 初始对角矩阵 H (初始化为单位矩阵)
    H0 = eye(size(Omega_ff));

    % 将对角元素提取出来作为优化变量
    h0 = diag(H0);

    % 定义目标函数，最小化对角元素的平方和
    objective = @(h) sum(h.^2);

    % 定义非线性约束，确保 eig(H * L_ff + L_ff' * H) > 0.5
    nonlcon = @(h) deal([], min(eig(diag(h) * Omega_ff + Omega_ff' * diag(h))) - 0.5);

    % 优化选项
    options = optimoptions('fmincon', 'Display', 'iter', 'Algorithm', 'sqp');

    % 使用 fmincon 进行优化
    [h_opt, fval] = fmincon(objective, h0, [], [], [], [], [], [], nonlcon, options);

    % 得到优化后的对角矩阵 H
    Q_N = diag(h_opt);

    % 显示结果
    %disp('The optimized diagonal matrix Q is:');
    %disp(Q_N);

    % 验证 H * L_ff + L_ff' * H 的特征值
    %eig_values = eig(Q_N * Omega_ff + Omega_ff' * Q_N);
    %disp('The eigenvalues of H * L_ff + L_ff'' * H are:');
    %disp(eig_values);

end

end