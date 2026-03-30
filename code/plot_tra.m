%% 轨迹图
pic = figure(13);
pic.Position = [100, 150, 1200, 400];

plot(Poss{1}(:,1), Poss{1}(:,2), '-', 'Color', [0.4660 0.6740 0.1880], 'LineWidth', 0.5);
hold on
plot(Poss{2}(:,1), Poss{2}(:,2), '-', 'Color', [0.4660 0.6740 0.1880], 'LineWidth', 0.5); 
hold on
plot(Poss{3}(:,1), Poss{3}(:,2), '-', 'Color', [0.4660 0.6740 0.1880], 'LineWidth', 0.5);
hold on;
plot(Poss{4}(:,1), Poss{4}(:,2), '--', 'Color', [0 0.4470 0.7410], 'LineWidth', 0.5);
hold on;
plot(Poss{5}(:,1), Poss{5}(:,2), '--', 'Color', [0.8500 0.3250 0.0980], 'LineWidth', 0.5);
hold on;
plot(Poss{6}(:,1), Poss{6}(:,2), '--', 'Color', [0.9290 0.6940 0.1250], 'LineWidth', 0.5);
hold on;
plot(Poss{7}(:,1), Poss{7}(:,2), '--', 'Color', [0.4940 0.1840 0.5560], 'LineWidth', 0.5);
hold on;
plot(Poss{8}(:,1), Poss{8}(:,2), '--', 'Color', [0.6350 0.0780 0.1840], 'LineWidth', 0.5);
hold on;
plot(Poss{9}(:,1), Poss{9}(:,2), '--', 'Color', [0.3010 0.7450 0.9330], 'LineWidth', 0.5);
hold on;

% [n,m] = size(H);
% edge = mod(reshape(find(H~=0),2,m),n);
% edge(edge==0) = n;
MarkerSize = 15;

%% 1
time_step = 1;
m = size(W_new{time_step});
for i=1:1:m
    for j = 1:1:m
        if W_new{time_step}(i,j) ~= 0
            node_1 = edge(1,i); node_2 = edge(2,i);
            % 绘制连线
            plot([Poss{i}(time_step, 1), Poss{j}(time_step,1)], [Poss{i}(time_step, 2), Poss{j}(time_step, 2)], 'k', 'LineWidth', 1);
        end
    end
end

plot(Poss{1}(time_step,1), Poss{1}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{2}(time_step,1), Poss{2}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{3}(time_step,1), Poss{3}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{4}(time_step,1), Poss{4}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0 0.4470 0.7410]);
plot(Poss{5}(time_step,1), Poss{5}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.8500 0.3250 0.0980]);
plot(Poss{6}(time_step,1), Poss{6}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.9290 0.6940 0.1250]);
plot(Poss{7}(time_step,1), Poss{7}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4940 0.1840 0.5560]);
plot(Poss{8}(time_step,1), Poss{8}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.6350 0.0780 0.1840]);
plot(Poss{9}(time_step,1), Poss{9}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.3010 0.7450 0.9330]);

%% 6000
time_step = 6000;
m = size(W_new{time_step});
for i=1:1:m
    for j = 1:1:m
        if W_new{time_step}(i,j) ~= 0
            node_1 = edge(1,i); node_2 = edge(2,i);
            % 绘制连线
            plot([Poss{i}(time_step, 1), Poss{j}(time_step,1)], [Poss{i}(time_step, 2), Poss{j}(time_step, 2)], 'k', 'LineWidth', 1);
        end
    end
end

plot(Poss{1}(time_step,1), Poss{1}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{2}(time_step,1), Poss{2}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{3}(time_step,1), Poss{3}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{4}(time_step,1), Poss{4}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0 0.4470 0.7410]);
plot(Poss{5}(time_step,1), Poss{5}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.8500 0.3250 0.0980]);
plot(Poss{6}(time_step,1), Poss{6}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.9290 0.6940 0.1250]);
plot(Poss{7}(time_step,1), Poss{7}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4940 0.1840 0.5560]);
plot(Poss{8}(time_step,1), Poss{8}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.6350 0.0780 0.1840]);
plot(Poss{9}(time_step,1), Poss{9}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.3010 0.7450 0.9330]);

%% 12000
time_step = 12000;
m = size(W_new{time_step});
for i=1:1:m
    for j = 1:1:m
        if W_new{time_step}(i,j) ~= 0
            node_1 = edge(1,i); node_2 = edge(2,i);
            % 绘制连线
            plot([Poss{i}(time_step, 1), Poss{j}(time_step,1)], [Poss{i}(time_step, 2), Poss{j}(time_step, 2)], 'k', 'LineWidth', 1);
        end
    end
end

plot(Poss{1}(time_step,1), Poss{1}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{2}(time_step,1), Poss{2}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{3}(time_step,1), Poss{3}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{4}(time_step,1), Poss{4}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0 0.4470 0.7410]);
plot(Poss{5}(time_step,1), Poss{5}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.8500 0.3250 0.0980]);
plot(Poss{6}(time_step,1), Poss{6}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.9290 0.6940 0.1250]);
plot(Poss{7}(time_step,1), Poss{7}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4940 0.1840 0.5560]);
plot(Poss{8}(time_step,1), Poss{8}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.6350 0.0780 0.1840]);
plot(Poss{9}(time_step,1), Poss{9}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.3010 0.7450 0.9330]);

%% 21000
time_step = 21000;
m = size(W_new{time_step});
for i=1:1:m
    for j = 1:1:m
        if W_new{time_step}(i,j) ~= 0
            node_1 = edge(1,i); node_2 = edge(2,i);
            % 绘制连线
            plot([Poss{i}(time_step, 1), Poss{j}(time_step,1)], [Poss{i}(time_step, 2), Poss{j}(time_step, 2)], 'k', 'LineWidth', 1);
        end
    end
end

plot(Poss{1}(time_step,1), Poss{1}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{2}(time_step,1), Poss{2}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{3}(time_step,1), Poss{3}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{4}(time_step,1), Poss{4}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0 0.4470 0.7410]);
plot(Poss{5}(time_step,1), Poss{5}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.8500 0.3250 0.0980]);
plot(Poss{6}(time_step,1), Poss{6}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.9290 0.6940 0.1250]);
plot(Poss{7}(time_step,1), Poss{7}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4940 0.1840 0.5560]);
plot(Poss{8}(time_step,1), Poss{8}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.6350 0.0780 0.1840]);
plot(Poss{9}(time_step,1), Poss{9}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.3010 0.7450 0.9330]);


%% 30000
time_step = 30000;
m = size(W_new{time_step});
for i=1:1:m
    for j = 1:1:m
        if W_new{time_step}(i,j) ~= 0
            node_1 = edge(1,i); node_2 = edge(2,i);
            % 绘制连线
            plot([Poss{i}(time_step, 1), Poss{j}(time_step,1)], [Poss{i}(time_step, 2), Poss{j}(time_step, 2)], 'k', 'LineWidth', 1);
        end
    end
end

plot(Poss{1}(time_step,1), Poss{1}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{2}(time_step,1), Poss{2}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{3}(time_step,1), Poss{3}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{4}(time_step,1), Poss{4}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0 0.4470 0.7410]);
plot(Poss{5}(time_step,1), Poss{5}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.8500 0.3250 0.0980]);
plot(Poss{6}(time_step,1), Poss{6}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.9290 0.6940 0.1250]);
plot(Poss{7}(time_step,1), Poss{7}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4940 0.1840 0.5560]);
plot(Poss{8}(time_step,1), Poss{8}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.6350 0.0780 0.1840]);
plot(Poss{9}(time_step,1), Poss{9}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.3010 0.7450 0.9330]);

%% 45000
time_step = 45000;
m = size(W_new{time_step});
for i=1:1:m
    for j = 1:1:m
        if W_new{time_step}(i,j) ~= 0
            node_1 = edge(1,i); node_2 = edge(2,i);
            % 绘制连线
            plot([Poss{i}(time_step, 1), Poss{j}(time_step,1)], [Poss{i}(time_step, 2), Poss{j}(time_step, 2)], 'k', 'LineWidth', 1);
        end
    end
end

plot(Poss{1}(time_step,1), Poss{1}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{2}(time_step,1), Poss{2}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{3}(time_step,1), Poss{3}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{4}(time_step,1), Poss{4}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0 0.4470 0.7410]);
plot(Poss{5}(time_step,1), Poss{5}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.8500 0.3250 0.0980]);
plot(Poss{6}(time_step,1), Poss{6}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.9290 0.6940 0.1250]);
plot(Poss{7}(time_step,1), Poss{7}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4940 0.1840 0.5560]);
plot(Poss{8}(time_step,1), Poss{8}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.6350 0.0780 0.1840]);
plot(Poss{9}(time_step,1), Poss{9}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.3010 0.7450 0.9330]);


%% 60000
time_step = 60000;
m = size(W_new{time_step});
for i=1:1:m
    for j = 1:1:m
        if W_new{time_step}(i,j) ~= 0
            node_1 = edge(1,i); node_2 = edge(2,i);
            % 绘制连线
            plot([Poss{i}(time_step, 1), Poss{j}(time_step,1)], [Poss{i}(time_step, 2), Poss{j}(time_step, 2)], 'k', 'LineWidth', 1);
        end
    end
end


plot(Poss{1}(time_step,1), Poss{1}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{2}(time_step,1), Poss{2}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{3}(time_step,1), Poss{3}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{4}(time_step,1), Poss{4}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0 0.4470 0.7410]);
plot(Poss{5}(time_step,1), Poss{5}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.8500 0.3250 0.0980]);
plot(Poss{6}(time_step,1), Poss{6}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.9290 0.6940 0.1250]);
plot(Poss{7}(time_step,1), Poss{7}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4940 0.1840 0.5560]);
plot(Poss{8}(time_step,1), Poss{8}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.6350 0.0780 0.1840]);
plot(Poss{9}(time_step,1), Poss{9}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.3010 0.7450 0.9330]);


%% 80000
time_step = 80000;
m = size(W_new{time_step});
for i=1:1:m
    for j = 1:1:m
        if W_new{time_step}(i,j) ~= 0
            node_1 = edge(1,i); node_2 = edge(2,i);
            % 绘制连线
            plot([Poss{i}(time_step, 1), Poss{j}(time_step,1)], [Poss{i}(time_step, 2), Poss{j}(time_step, 2)], 'k', 'LineWidth', 1);
        end
    end
end

plot(Poss{1}(time_step,1), Poss{1}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{2}(time_step,1), Poss{2}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{3}(time_step,1), Poss{3}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{4}(time_step,1), Poss{4}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0 0.4470 0.7410]);
plot(Poss{5}(time_step,1), Poss{5}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.8500 0.3250 0.0980]);
plot(Poss{6}(time_step,1), Poss{6}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.9290 0.6940 0.1250]);
plot(Poss{7}(time_step,1), Poss{7}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4940 0.1840 0.5560]);
plot(Poss{8}(time_step,1), Poss{8}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.6350 0.0780 0.1840]);
plot(Poss{9}(time_step,1), Poss{9}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.3010 0.7450 0.9330]);


%% 100000
time_step = 100000;
m = size(W_new{time_step});
for i=1:1:m
    for j = 1:1:m
        if W_new{time_step}(i,j) ~= 0
            node_1 = edge(1,i); node_2 = edge(2,i);
            % 绘制连线
            plot([Poss{i}(time_step, 1), Poss{j}(time_step,1)], [Poss{i}(time_step, 2), Poss{j}(time_step, 2)], 'k', 'LineWidth', 1);
        end
    end
end

plot(Poss{1}(time_step,1), Poss{1}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{2}(time_step,1), Poss{2}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{3}(time_step,1), Poss{3}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{4}(time_step,1), Poss{4}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0 0.4470 0.7410]);
plot(Poss{5}(time_step,1), Poss{5}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.8500 0.3250 0.0980]);
plot(Poss{6}(time_step,1), Poss{6}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.9290 0.6940 0.1250]);
plot(Poss{7}(time_step,1), Poss{7}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4940 0.1840 0.5560]);
plot(Poss{8}(time_step,1), Poss{8}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.6350 0.0780 0.1840]);
plot(Poss{9}(time_step,1), Poss{9}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.3010 0.7450 0.9330]);


%% 110000
time_step = 110000;
m = size(W_new{time_step});
for i=1:1:m
    for j = 1:1:m
        if W_new{time_step}(i,j) ~= 0
            node_1 = edge(1,i); node_2 = edge(2,i);
            % 绘制连线
            plot([Poss{i}(time_step, 1), Poss{j}(time_step,1)], [Poss{i}(time_step, 2), Poss{j}(time_step, 2)], 'k', 'LineWidth', 1);
        end
    end
end

plot(Poss{1}(time_step,1), Poss{1}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{2}(time_step,1), Poss{2}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{3}(time_step,1), Poss{3}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{4}(time_step,1), Poss{4}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0 0.4470 0.7410]);
plot(Poss{5}(time_step,1), Poss{5}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.8500 0.3250 0.0980]);
plot(Poss{6}(time_step,1), Poss{6}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.9290 0.6940 0.1250]);
plot(Poss{7}(time_step,1), Poss{7}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4940 0.1840 0.5560]);
plot(Poss{8}(time_step,1), Poss{8}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.6350 0.0780 0.1840]);
plot(Poss{9}(time_step,1), Poss{9}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.3010 0.7450 0.9330]);


%% 120000
time_step = 120000;
m = size(W_new{time_step});
for i=1:1:m
    for j = 1:1:m
        if W_new{time_step}(i,j) ~= 0
            node_1 = edge(1,i); node_2 = edge(2,i);
            % 绘制连线
            plot([Poss{i}(time_step, 1), Poss{j}(time_step,1)], [Poss{i}(time_step, 2), Poss{j}(time_step, 2)], 'k', 'LineWidth', 1);
        end
    end
end

plot(Poss{1}(time_step,1), Poss{1}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{2}(time_step,1), Poss{2}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{3}(time_step,1), Poss{3}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{4}(time_step,1), Poss{4}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0 0.4470 0.7410]);
plot(Poss{5}(time_step,1), Poss{5}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.8500 0.3250 0.0980]);
plot(Poss{6}(time_step,1), Poss{6}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.9290 0.6940 0.1250]);
plot(Poss{7}(time_step,1), Poss{7}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4940 0.1840 0.5560]);
plot(Poss{8}(time_step,1), Poss{8}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.6350 0.0780 0.1840]);
plot(Poss{9}(time_step,1), Poss{9}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.3010 0.7450 0.9330]);


%% 132000
time_step = 132000;
m = size(W_new{time_step});
for i=1:1:m
    for j = 1:1:m
        if W_new{time_step}(i,j) ~= 0
            node_1 = edge(1,i); node_2 = edge(2,i);
            % 绘制连线
            plot([Poss{i}(time_step, 1), Poss{j}(time_step,1)], [Poss{i}(time_step, 2), Poss{j}(time_step, 2)], 'k', 'LineWidth', 1);
        end
    end
end

plot(Poss{1}(time_step,1), Poss{1}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{2}(time_step,1), Poss{2}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{3}(time_step,1), Poss{3}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
plot(Poss{4}(time_step,1), Poss{4}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0 0.4470 0.7410]);
plot(Poss{5}(time_step,1), Poss{5}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.8500 0.3250 0.0980]);
plot(Poss{6}(time_step,1), Poss{6}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.9290 0.6940 0.1250]);
plot(Poss{7}(time_step,1), Poss{7}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4940 0.1840 0.5560]);
plot(Poss{8}(time_step,1), Poss{8}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.6350 0.0780 0.1840]);
plot(Poss{9}(time_step,1), Poss{9}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.3010 0.7450 0.9330]);



%% end
time_step = size(Poss{1}, 1);
m = size(W_new{time_step - 1});
for i=1:1:m
    for j = 1:1:m
        if W_new{time_step - 1}(i,j) ~= 0
            node_1 = edge(1,i); node_2 = edge(2,i);
            % 绘制连线
            plot([Poss{i}(time_step, 1), Poss{j}(time_step,1)], [Poss{i}(time_step, 2), Poss{j}(time_step, 2)], 'k', 'LineWidth', 1);
        end
    end
end
p1 = plot(Poss{1}(time_step,1), Poss{1}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
p2 = plot(Poss{2}(time_step,1), Poss{2}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
p3 = plot(Poss{3}(time_step,1), Poss{3}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
p4 = plot(Poss{4}(time_step,1), Poss{4}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0 0.4470 0.7410]);
p5 = plot(Poss{5}(time_step,1), Poss{5}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.8500 0.3250 0.0980]);
p6 = plot(Poss{6}(time_step,1), Poss{6}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.9290 0.6940 0.1250]);
p7 = plot(Poss{7}(time_step,1), Poss{7}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4940 0.1840 0.5560]);
p8 = plot(Poss{8}(time_step,1), Poss{8}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.6350 0.0780 0.1840]);
p9 = plot(Poss{9}(time_step,1), Poss{9}(time_step,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.3010 0.7450 0.9330]);

xlabel('$X(m)$', 'Interpreter', 'latex')
ylabel('$Y(m)$', 'Interpreter', 'latex')
lgd = legend([p1, p4, p5, p6, p7, p8, p9], 'leader', 'i=4', 'i=5', 'i=6', 'i=7', 'i=8', 'i=9', 'FontSize', 14);

set(gca, 'Position', [0.1, 0.1, 0.8, 0.85], 'FontSize', 14)