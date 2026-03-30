%% 节点运动轨迹动态GIF生成
%clear; clc; close all;

%% 1. 数据与参数初始化
% 检查数据是否存在
% if ~exist('Poss', 'var') || ~exist('W_new', 'var')
%     error('请先加载 Poss（节点位置）和 W_new（邻接矩阵）数据！');
% end



% 基础参数
num_nodes = length(Poss);                  % 节点总数（默认9个）
total_steps = size(Poss{1}, 1);            % 总时间步数
frame_interval = 500;                       % 帧间隔（控制动画速度，越大越慢）
MarkerSize = 10;                           % 节点标记大小
line_width = 0.5;                          % 轨迹线宽度
conn_width = 1;                            % 连接线条宽度
gif_name = 'node_motion.gif';              % 输出GIF文件名

% 节点样式配置（保持原配色和线条样式）
node_colors = [
    0.4660 0.6740 0.1880;  % 1-3号节点（leader组）
    0.4660 0.6740 0.1880;
    0.4660 0.6740 0.1880;
    0.0000 0.4470 0.7410;  % 4号
    0.8500 0.3250 0.0980;  % 5号
    0.9290 0.6940 0.1250;  % 6号
    0.4940 0.1840 0.5560;  % 7号
    0.6350 0.0780 0.1840;  % 8号
    0.3010 0.7450 0.9330   % 9号
];
line_styles = repmat({'-'}, num_nodes, 1);
line_styles(4:num_nodes) = {'--'};

% 初始化图形
fig = figure('Position', [100, 150, 1000, 800]);
ax = axes(fig, 'Position', [0.1, 0.1, 0.8, 0.85], 'FontSize', 12);
xlabel('$X(m)$', 'Interpreter', 'latex', 'FontSize', 14);
ylabel('$Y(m)$', 'Interpreter', 'latex', 'FontSize', 14);
title('节点运动轨迹动态演示', 'FontSize', 16);
axis equal; grid on; hold on;

%% 2. 预绘制历史轨迹（固定不变）
for k = 1:num_nodes
    % 将RGB颜色转换为RGBA（第4个值0.3控制透明度）
    rgba_color = [node_colors(k,:), 0.3];
    plot(Poss{k}(:,1), Poss{k}(:,2), line_styles{k}, ...
         'Color', rgba_color, 'LineWidth', line_width);  % 使用RGBA颜色
end

%% 3. 初始化动态元素（后续逐帧更新）
% 节点当前位置标记
node_markers = arrayfun(@(k) plot(NaN, NaN, '.', 'MarkerSize', MarkerSize, ...
    'Color', node_colors(k,:), 'LineWidth', 2), 1:num_nodes, 'UniformOutput', false);

% 节点连接关系（动态更新）
conn_lines = [];  % 用于存储连接线对象，后续清除

% 时间标签
time_text = text(0.05, 0.95, '', 'Units', 'normalized', 'FontSize', 12, ...
    'BackgroundColor', 'w', 'EdgeColor', 'k');

%% 4. 生成动画帧并保存为GIF
% 选择时间步（每隔一定步长取一帧，避免文件过大）
frames_steps = 1:frame_interval:total_steps;
if frames_steps(end) ~= total_steps
    frames_steps = [frames_steps, total_steps];  % 确保包含最后一步
end

for t_idx = 1:length(frames_steps)
    t = frames_steps(t_idx);  % 当前时间步
    
    % 更新时间标签
    time_text.String = sprintf('时间步: %d', t);
    
    % 更新节点位置
    for k = 1:num_nodes
        node_markers{k}.XData = Poss{k}(t, 1);
        node_markers{k}.YData = Poss{k}(t, 2);
    end
    
    % 更新连接关系（先清除上一帧的连接线）
    delete(conn_lines);
    if t <= length(W_new)  % 确保不超出邻接矩阵范围
        W = W_new{t};
        [m, ~] = size(W);
        conn_lines = [];  % 重置连接线数组
        for i = 1:m
            for j = 1:m
                if W(i,j) ~= 0
                    % 绘制节点i和j的连接线
                    line_obj = plot([Poss{i}(t,1), Poss{j}(t,1)], ...
                                   [Poss{i}(t,2), Poss{j}(t,2)], ...
                                   'Color', 'k', 'LineWidth', conn_width);
                    conn_lines = [conn_lines, line_obj];  % 保存连接线对象
                end
            end
        end
    end
    
    % 刷新图像
    drawnow;
    
    % 保存当前帧到GIF
    frame = getframe(fig);
    img = frame2im(frame);
    [img, map] = rgb2ind(img, 256);
    
    % 写入GIF（第一帧用'w'模式，后续用'a'模式）
    if t_idx == 1
        imwrite(img, map, gif_name, 'GIF', 'LoopCount', Inf, 'DelayTime', 0.1);
    else
        imwrite(img, map, gif_name, 'GIF', 'WriteMode', 'append', 'DelayTime', 0.1);
    end
end

%% 5. 完成提示
disp(['动态GIF已保存为: ', fullfile(pwd, gif_name)]);
