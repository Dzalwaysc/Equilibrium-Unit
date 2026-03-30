%% 高分辨率节点运动视频生成（适配PPT，1080P MP4格式）
%clear; clc; close all;

%% 1. 数据验证与基础参数设置
% 检查必要数据是否存在
if ~exist('Poss', 'var') || ~exist('W_new', 'var')
    error('请先加载 Poss（节点位置数据）和 W_new（邻接矩阵数据）！');
end

% 验证Poss数据格式
num_nodes = length(Poss);
if num_nodes == 0
    error('Poss不能为空！');
end
total_steps = size(Poss{1}, 1);
for k = 1:num_nodes
    if size(Poss{k}, 2) ~= 2
        error(['Poss{', num2str(k), '} 必须是N×2矩阵（第1列X坐标，第2列Y坐标）']);
    end
    if size(Poss{k}, 1) ~= total_steps
        error(['Poss{', num2str(k), '} 的时间步数与其他节点不一致！']);
    end
end

% 视频核心参数（1080P分辨率适配PPT）
video_resolution = [1920, 1080];  % 16:9宽屏，匹配PPT默认比例
frame_rate = 20;                  % 视频帧率（20帧/秒，兼顾流畅度与文件大小）
video_duration = 15;              % 目标视频时长（秒）
frame_interval = 300;%max(1, round(total_steps / (frame_rate * video_duration)));
frames_steps = 1:frame_interval:total_steps;
if frames_steps(end) ~= total_steps
    frames_steps = [frames_steps, total_steps];  % 确保包含最后一步
end
actual_duration = length(frames_steps) / frame_rate;
fprintf('视频参数：%dx%d分辨率，%d帧/秒，预计时长%.1f秒，总帧数%d\n', ...
    video_resolution(1), video_resolution(2), frame_rate, actual_duration, length(frames_steps));

%% 2. 障碍物定义（可根据需求修改）
obstacles = {
    {'circle', [40, 16, 9]};          % 圆形：[x,y,r]
    {'polygon', [60,10; 70,5; 80,15; 75,25]};  % 多边形顶点
    {'polygon', [-30,28; -30,10; 10,5; 20,5; 20,25; 0,25; 0,28]};  % 多边形顶点
    {'polygon', [-30,32; 0,32; 0,35; 80,35; 80,40; -30,40]};  % 多边形顶点
    {'polygon', [-30,-10; 80,-10; 80,-5; 0,-5; 0,-8; -30,-8]};  % 多边形顶点
};

% 障碍物样式
obs_color = [0.6, 0.6, 0.6];        % 障碍物填充色（中灰色）
obs_edge_color = [0, 0, 0];         % 障碍物边框色（黑色）
obs_line_width = 1.8;               % 障碍物边框宽度

%% 3. 初始化高分辨率图形窗口
% 创建1080P分辨率窗口，启用抗锯齿提升清晰度
% 兼容旧版本MATLAB的图形窗口设置（移除AntiAliasing属性）
% 兼容所有MATLAB版本的图形窗口设置
% 兼容极低版本MATLAB（如R2010及更早）的图形设置
fig = figure('Position', [100, 100, video_resolution(1), video_resolution(2)], ...
             'Renderer', 'OpenGL', ...  % 依赖渲染器自身的平滑处理
             'Color', [1, 1, 1]);       % 白色背景

% 移除所有Smoothing相关设置（旧版本不支持）
% 改用加粗线条来弥补无抗锯齿的视觉效果
line_width_base = 1.5;  % 基础线条宽度（比原设置加粗，减少锯齿感）
% 设置坐标轴（预留足够边距，避免元素被截断）
ax = axes(fig, 'Position', [0.08, 0.08, 0.84, 0.84], ...
          'FontName', 'Times New Roman', 'FontSize', 18);
% 隐藏X轴和Y轴的坐标值（刻度标签）
set(ax, 'XTickLabel', '', 'YTickLabel', '');
xlabel('X', 'FontName', 'Times New Roman', 'FontSize', 22);
ylabel('Y', 'FontName', 'Times New Roman', 'FontSize', 22);
title('multi-agent flowable affine formation maneuver', 'FontName', 'Times New Roman', ...
      'FontSize', 26, 'FontWeight', 'bold');
axis equal; grid on; hold on; box on;
set(ax, 'GridLineStyle', ':', 'GridAlpha', 0.4);  % 网格线设为虚线，降低干扰

%% 4. 绘制障碍物（一次性渲染）
for i = 1:length(obstacles)
    obs_info = obstacles{i};
    obs_type = obs_info{1};
    obs_params = obs_info{2};
    
    switch obs_type
        case 'rectangle'
            % 矩形参数：[x1, y1, x2, y2]
            x1 = obs_params(1); y1 = obs_params(2);
            x2 = obs_params(3); y2 = obs_params(4);
            rectangle('Position', [x1, y1, x2-x1, y2-y1], ...
                      'FaceColor', obs_color, 'EdgeColor', obs_edge_color, ...
                      'LineWidth', obs_line_width, 'LineJoin', 'round');
            
        case 'circle'
            % 圆形参数：[x, y, r]
            x = obs_params(1); y = obs_params(2); r = obs_params(3);
            rectangle('Position', [x-r, y-r, 2*r, 2*r], ...
                      'Curvature', [1, 1], 'FaceColor', obs_color, ...
                      'EdgeColor', obs_edge_color, 'LineWidth', obs_line_width);
            
        case 'polygon'
            % 多边形参数：N×2顶点矩阵
            patch('XData', obs_params(:,1), 'YData', obs_params(:,2), ...
                  'FaceColor', obs_color, 'EdgeColor', obs_edge_color, ...
                  'LineWidth', obs_line_width, 'LineJoin', 'round');
            
        otherwise
            warning('未识别的障碍物类型: %s', obs_type);
    end
end

%% 5. 节点样式与历史轨迹绘制

line_width = 0.5;
% 节点配色方案（保持分组特征）
node_colors = [
    0.4660 0.6740 0.1880;  % 1-3号节点（绿色系）
    0.4660 0.6740 0.1880;
    0.4660 0.6740 0.1880;
    0.0000 0.4470 0.7410;  % 4号节点（蓝色）
    0.8500 0.3250 0.0980;  % 5号节点（橙色）
    0.9290 0.6940 0.1250;  % 6号节点（黄色）
    0.4940 0.1840 0.5560;  % 7号节点（紫色）
    0.6350 0.0780 0.1840;  % 8号节点（红色）
    0.3010 0.7450 0.9330   % 9号节点（浅蓝色）
];
node_colors = node_colors(1:num_nodes, :);  % 适配实际节点数

% 轨迹线样式（1-3号实线，4-9号虚线）
line_styles = repmat({'-'}, num_nodes, 1);
if num_nodes >= 4
    line_styles(4:num_nodes) = {'--'};
end

% 绘制历史轨迹（半透明处理，突出当前位置）
for k = 1:num_nodes
    % 将RGB颜色转换为RGBA（第4个值0.3控制透明度）
    rgba_color = [node_colors(k,:), 0.3];
    plot(Poss{k}(:,1), Poss{k}(:,2), line_styles{k}, ...
         'Color', rgba_color, 'LineWidth', line_width);  % 使用RGBA颜色
end

%% 6. 自动调整坐标范围（确保所有元素可见）
% 收集所有节点和障碍物的坐标范围
all_x = []; all_y = [];

% 收集节点坐标
for k = 1:num_nodes
    all_x = [all_x; Poss{k}(:,1)];
    all_y = [all_y; Poss{k}(:,2)];
end

% 收集障碍物坐标
for i = 1:length(obstacles)
    obs_info = obstacles{i};
    obs_type = obs_info{1};
    obs_params = obs_info{2};
    
    switch obs_type
        case 'rectangle'
            all_x = [all_x; obs_params(1); obs_params(3)];
            all_y = [all_y; obs_params(2); obs_params(4)];
        case 'circle'
            x = obs_params(1); y = obs_params(2); r = obs_params(3);
            all_x = [all_x; x-r; x+r];
            all_y = [all_y; y-r; y+r];
        case 'polygon'
            all_x = [all_x; obs_params(:,1)];
            all_y = [all_y; obs_params(:,2)];
    end
end

% 计算带边距的坐标范围
x_range = max(all_x) - min(all_x);
y_range = max(all_y) - min(all_y);
x_margin = 0.1 * x_range;
y_margin = 0.1 * y_range;
xlim([min(all_x) - x_margin, max(all_x) + x_margin]);
ylim([min(all_y) - y_margin, max(all_y) + y_margin]);

%% 7. 初始化动态元素（节点、连接线、时间标签）
% 节点标记（大尺寸确保清晰）
node_markers = arrayfun(@(k) plot(NaN, NaN, 'o', ...
    'MarkerSize', 6, 'MarkerFaceColor', node_colors(k,:), ...
    'MarkerEdgeColor', 'k', 'LineWidth', 1.5), ...
    1:num_nodes, 'UniformOutput', false);

% 连接线（加粗线条，动态更新）
max_edges = min(num_nodes^2, 5 * num_nodes);  % 预估最大边数
conn_lines = arrayfun(@(i) plot(NaN, NaN, '-', ...
    'Color', [0.5, 0.5, 0.5], ...  % 浅灰色（替代纯黑色，弱化视觉）
    'LineWidth', 1), ...          % 可选：适当减细线条，进一步淡化          % 透明度30%（核心淡化参数，可调整0.2~0.5）
    1:max_edges, 'UniformOutput', false);

% 时间步标签（清晰显示当前时间）
time_text = text(0.05, 0.95, '', 'Units', 'normalized', ...
    'FontName', 'Times New Roman', 'FontSize', 20, 'FontWeight', 'bold', ...
    'BackgroundColor', [1, 1, 1, 0.8], 'EdgeColor', 'k');  % 移除不支持的Padding

%% 8. 初始化视频写入器
%% 新增：定义视频保存路径（保存到桌面，兼容Windows/macOS）
if ispc  % Windows系统
    desktop_path = fullfile(getenv('USERPROFILE'), 'Desktop');
else     % macOS/Linux系统
    desktop_path = fullfile(getenv('HOME'), 'Desktop');
end
% 视频文件名+完整路径（格式改为AVI，兼容所有MATLAB版本）
video_name = fullfile(desktop_path, 'multi_agent_trajectory.avi');
%% 8. 初始化视频写入器（修正后）
writerObj = VideoWriter(video_name);  % 移除'MPEG-4'，默认生成AVI（兼容所有版本）
writerObj.FrameRate = frame_rate;
writerObj.Quality = 100;  % 最高画质
open(writerObj);

% % 兼容旧版本MATLAB：通过图形窗口尺寸控制视频分辨率
% writerObj = VideoWriter(video_name, 'MPEG-4');
% writerObj.FrameRate = frame_rate;
% writerObj.Quality = 100;  % 保留最高画质设置
% open(writerObj);  % 先打开写入器，不设置Width和Height

%% 9. 生成视频帧并写入
fprintf('开始生成视频...\n');
for t_idx = 1:length(frames_steps)
    t = frames_steps(t_idx);
    
    % 更新时间标签
    time_text.String = sprintf('time step: %d', t);
    
    % 更新节点位置
    for k = 1:num_nodes
        node_markers{k}.XData = Poss{k}(t, 1);
        node_markers{k}.YData = Poss{k}(t, 2);
    end
    
    % 更新连接关系
    if t <= length(W_new)
        W = W_new{t};
        [m, ~] = size(W);
        edge_idx = 1;
        
        % 显示有连接的边
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
        % 无邻接矩阵时隐藏所有边
        for e = 1:max_edges
            conn_lines{e}.Visible = 'off';
        end
    end
    
    % 刷新图形
    drawnow;
    
    % 捕获帧并写入视频
    frame = getframe(fig);
    writeVideo(writerObj, frame);
    
    % 显示进度
    if mod(t_idx, 20) == 0 || t_idx == length(frames_steps)
        fprintf('进度: %.1f%%\n', (t_idx / length(frames_steps)) * 100);
    end
end

%% 10. 完成视频生成
close(writerObj);
close(fig);
fprintf('视频已保存至: %s\n', fullfile(pwd, video_name));
fprintf('导入PPT方法：插入→视频→此设备，选择该MP4文件，并设置播放质量为"高质量"\n');
