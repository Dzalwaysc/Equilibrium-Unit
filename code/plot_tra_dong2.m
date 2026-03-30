%% 带障碍物的节点运动轨迹动画（已检查优化版）
%clear; clc; close all;

%% 1. 数据校验
if ~exist('Poss', 'var') || ~exist('W_new', 'var')
    error('请先加载 Poss（节点位置）和 W_new（邻接矩阵）数据！');
end
num_nodes = length(Poss);
if num_nodes == 0
    error('Poss为空，请检查数据！');
end
total_steps = size(Poss{1}, 1);
for k = 1:num_nodes
    if size(Poss{k}, 2) ~= 2
        error(['Poss{', num2str(k), '} 必须是N×2矩阵（X,Y坐标）！']);
    end
end

%% 2. 核心参数与障碍物定义
frame_interval = 300;  % 可根据总步数调整（越大越快）
frames_steps = 1:frame_interval:total_steps;
if frames_steps(end) ~= total_steps
    frames_steps = [frames_steps, total_steps];
end

% 障碍物定义（可自定义）
obstacles = {
    %{'rectangle', [5, 5, 20, 15]};    % 矩形：[x1,y1,x2,y2]
    {'circle', [40, 16, 9]};          % 圆形：[x,y,r]
    {'polygon', [60,10; 70,5; 80,15; 75,25]};  % 多边形顶点
    {'polygon', [-30,28; -30,10; 10,5; 20,5; 20,25; 0,25; 0,28]};  % 多边形顶点
    {'polygon', [-30,32; 0,32; 0,35; 80,35; 80,40; -30,40]};  % 多边形顶点
    {'polygon', [-30,-10; 80,-10; 80,-5; 0,-5; 0,-8; -30,-8]};  % 多边形顶点
};

% 障碍物样式（兼容旧版本MATLAB）
obs_color = [0.7, 0.7, 0.7];  % 浅灰色（替代半透明）
obs_line_width = 1.5;

%% 3. 初始化图形与绘制障碍物
fig = figure('Position', [100, 150, 800, 600]);
ax = axes(fig, 'Position', [0.1, 0.1, 0.8, 0.85], 'FontSize', 12);
xlabel('$X(m)$', 'Interpreter', 'latex');
ylabel('$Y(m)$', 'Interpreter', 'latex');
title('带障碍物的节点运动轨迹');
axis equal; grid on; hold on; box on;

% 绘制障碍物（一次性完成）
for i = 1:length(obstacles)
    [obs_type, obs_params] = obstacles{i}{:};
    switch obs_type
        case 'rectangle'
            x1 = obs_params(1); y1 = obs_params(2);
            x2 = obs_params(3); y2 = obs_params(4);
            rectangle('Position', [x1, y1, x2-x1, y2-y1], ...
                      'FaceColor', obs_color, 'EdgeColor', 'k', ...
                      'LineWidth', obs_line_width);
        case 'circle'
            x = obs_params(1); y = obs_params(2); r = obs_params(3);
            rectangle('Position', [x-r, y-r, 2*r, 2*r], ...
                      'Curvature', [1,1], 'FaceColor', obs_color, ...
                      'EdgeColor', 'k', 'LineWidth', obs_line_width);
        case 'polygon'
            patch('XData', obs_params(:,1), 'YData', obs_params(:,2), ...
                  'FaceColor', obs_color, 'EdgeColor', 'k', ...
                  'LineWidth', obs_line_width);
        otherwise
            warning('未识别的障碍物类型: %s', obs_type);
    end
end

%% 4. 绘制轨迹与动态元素
% 节点样式
node_colors = [
    0.4660 0.6740 0.1880; 
    0.4660 0.6740 0.1880;
    0.4660 0.6740 0.1880;
    0.0000 0.4470 0.7410; 
    0.8500 0.3250 0.0980; 
    0.9290 0.6940 0.1250; 
    0.4940 0.1840 0.5560; 
    0.6350 0.0780 0.1840; 
    0.3010 0.7450 0.9330
];
node_colors = node_colors(1:num_nodes, :);
line_styles = repmat({'-'}, num_nodes, 1);
if num_nodes >= 4
    line_styles(4:num_nodes) = {'--'};
end

% 预绘制历史轨迹
for k = 1:num_nodes
    light_color = node_colors(k,:) * 0.8;  % 浅色轨迹
    plot(Poss{k}(:,1), Poss{k}(:,2), line_styles{k}, ...
         'Color', light_color, 'LineWidth', 0.3);
end

% 自动适配坐标范围（确保所有元素可见）
xlim('auto');
ylim('auto');

% 初始化动态元素
node_markers = arrayfun(@(k) plot(NaN, NaN, '.', ...
    'MarkerSize', 10, 'Color', node_colors(k,:), 'LineWidth', 2), ...
    1:num_nodes, 'UniformOutput', false);

max_edges = min(num_nodes^2, 4*num_nodes);  % 优化最大边数
conn_lines = arrayfun(@(i) plot(NaN, NaN, 'k-', 'LineWidth', 1), ...
    1:max_edges, 'UniformOutput', false);

time_text = text(0.05, 0.95, '', 'Units', 'normalized', 'FontSize', 10, ...
    'BackgroundColor', 'w', 'EdgeColor', 'none');

%% 5. 生成动画
gif_name = 'checked_node_motion_with_obstacles.gif';
ax.Visible = 'off';  % 加速渲染
drawnow('nocallbacks');

for t_idx = 1:length(frames_steps)
    t = frames_steps(t_idx);
    
    % 更新时间标签
    time_text.String = sprintf('时间步: %d', t);
    
    % 更新节点位置
    for k = 1:num_nodes
        node_markers{k}.XData = Poss{k}(t, 1);
        node_markers{k}.YData = Poss{k}(t, 2);
    end
    
    % 更新连接线
    if t <= length(W_new)
        W = W_new{t};
        [m, ~] = size(W);
        edge_idx = 1;
        for i = 1:m
            for j = 1:m
                if W(i,j) ~= 0 && edge_idx <= max_edges
                    conn_lines{edge_idx}.XData = [Poss{i}(t,1), Poss{j}(t,1)];
                    conn_lines{edge_idx}.YData = [Poss{i}(t,2), Poss{j}(t,2)];
                    conn_lines{edge_idx}.Visible = 'on';
                    edge_idx = edge_idx + 1;
                end
            end
        end
        % 隐藏未使用的边
        for e = edge_idx:max_edges
            conn_lines{e}.Visible = 'off';
        end
    else
        for e = 1:max_edges
            conn_lines{e}.Visible = 'off';
        end
    end
    
    % 批量刷新
    if mod(t_idx, 10) == 0 || t_idx == length(frames_steps)
        drawnow('nocallbacks');
    end
    
    % 保存GIF
    frame = getframe(fig);
    img = frame2im(frame);
    [img, map] = rgb2ind(img, 128);
    if t_idx == 1
        imwrite(img, map, gif_name, 'GIF', 'LoopCount', Inf, 'DelayTime', 0.05);
    else
        imwrite(img, map, gif_name, 'GIF', 'WriteMode', 'append', 'DelayTime', 0.05);
    end
end

ax.Visible = 'on';
drawnow;
disp(['优化版GIF已保存为: ', fullfile(pwd, gif_name)]);
    