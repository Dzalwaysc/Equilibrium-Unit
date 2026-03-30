figure(3)
width2 = 1.5;
ftsize = 10;
head_ship = 5; w_ship = 2; l_ship = 2;
yaw_length = 15;
r = 0.2;

hold off
for i = 1:1:3
    state = Poss{i}(1:loop,:);
    plot(state(:, 1), state(:, 2), '--r', "LineWidth", width2);
    hold on

    % 绘制智能体
    xt = state(loop, 1);
    yt = state(loop, 2);
    % 生成角度数组
    theta = linspace(0, 2*pi);

    % 计算圆形的横纵坐标
    x = xt + r * cos(theta);
    y = yt + r * sin(theta);

    % 使用红色填充圆形区域
    fill(x, y, '-g');

end

for i = 4:1:9
    % removed  = 1;
    % B = W_old(i,:);
    % for j = 1:1:9
    %     if B(j) ~= 0
    %         removed = 0;
    %     end
    % end
        
    removed = 0;

    if removed  == 0
        % 绘制轨迹
        %des_state = desPos{i}(1:loop,:);
        state = Poss{i}(1:loop,:);
        %plot(des_state(:, 1), des_state(:, 2), '--r', "LineWidth", width2);
        %hold on
        plot(state(:, 1), state(:, 2), '-k', "LineWidth", width2);
        hold on
    
        % 绘制智能体

        xt = state(loop, 1);
        yt = state(loop, 2);
        % 生成角度数组
        theta = linspace(0, 2*pi);

        % 计算圆形的横纵坐标
        x = xt + r * cos(theta);
        y = yt + r * sin(theta);

        % 使用红色填充圆形区域
        fill(x, y, '-r');
    else

    end

end
% 显示时间
text(0.1, 0.9, ['当前时间: ',  num2str(t)], 'Units', 'normalized');
%% 绘制障碍物
% % 遍历障碍物
%     for i = 1:length(obstacle)
%         obstacleCenter = obstacle{i}(1:2); % 障碍物中心的坐标
%         obstacleRadius = obstacle{i}(5); % 障碍物的半径
% 
%         % 画出圆形障碍物
%         theta = linspace(0, 2*pi, 100); % 创建一系列角度
%         x = obstacleRadius * cos(theta) + obstacleCenter(1); % 计算 x 坐标
%         y = obstacleRadius * sin(theta) + obstacleCenter(2); % 计算 y 坐标
%         plot(x, y, 'r'); % 绘制圆形障碍物
%         hold on; % 保持图形打开，以便继续添加内容
%     end
% 
% drawnow;
axis equal
pause(0.00001);

