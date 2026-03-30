%% 误差轨迹

%% loop < 12000
for i = 4:9
    Poss_Err1{i}(:,1) = Poss{i}(1:11999,1) - desPos{i}(1:11999,1);
    Poss_Err1{i}(:,2) = Poss{i}(1:11999,2) - desPos{i}(1:11999,2);

end
figure(4);
%%% 位姿跟踪误差 - x
subplot(2,1,1);
plot(t(1:11999), Poss_Err1{4}(:,1), '-', 'Color', [0 0.4470 0.7410], 'LineWidth', 2); hold on
plot(t(1:11999), Poss_Err1{5}(:,1), '-', 'Color', [0.8500 0.3250 0.0980], 'LineWidth', 2); hold on
plot(t(1:11999), Poss_Err1{6}(:,1), '-', 'Color', [0.9290 0.6940 0.1250], 'LineWidth', 2); hold on
plot(t(1:11999), Poss_Err1{7}(:,1), '-', 'Color', [0.4940 0.1840 0.5560], 'LineWidth', 2); hold on
plot(t(1:11999), Poss_Err1{8}(:,1), '-', 'Color', [0.6350 0.0780 0.1840], 'LineWidth', 2); hold on
plot(t(1:11999), Poss_Err1{9}(:,1), '-', 'Color', [0.3010 0.7450 0.9330], 'LineWidth', 2); hold on
xlim([0, 60]);
ylabel('TE in X-axis $(m)$', 'interpreter', 'latex');
legend('4-th agent', '5-th agent', '6-th agent', '7-th agent', '8-th agent', '9-th agent', 'NumColumns', 6, 'Location', 'northoutside');
set(gca,'Fontsize',14);

%%% 位姿跟踪误差 - y
subplot(2,1,2);
plot(t(1:11999), Poss_Err1{4}(:,2), '-', 'Color', [0 0.4470 0.7410], 'LineWidth', 2); hold on
plot(t(1:11999), Poss_Err1{5}(:,2), '-', 'Color', [0.8500 0.3250 0.0980], 'LineWidth', 2); hold on
plot(t(1:11999), Poss_Err1{6}(:,2), '-', 'Color', [0.9290 0.6940 0.1250], 'LineWidth', 2); hold on
plot(t(1:11999), Poss_Err1{7}(:,2), '-', 'Color', [0.4940 0.1840 0.5560], 'LineWidth', 2); hold on
plot(t(1:11999), Poss_Err1{8}(:,2), '-', 'Color', [0.6350 0.0780 0.1840], 'LineWidth', 2); hold on
plot(t(1:11999), Poss_Err1{9}(:,2), '-', 'Color', [0.3010 0.7450 0.9330], 'LineWidth', 2); hold on
xlim([0, 60]);
xlabel('$t(s)$', 'interpreter', 'latex');
ylabel('TE in Y-axis $(m)$', 'interpreter', 'latex');
set(gca,'Fontsize',14);

%% 12000 =< loop < 100000

    Poss_Err2{5}(:,1) = Poss{5}(12000:99999,1) - desPos{5}(12000:99999,1);
    Poss_Err2{5}(:,2) = Poss{5}(12000:99999,2) - desPos{5}(12000:99999,2);

    Poss_Err2{6}(:,1) = Poss{6}(12000:99999,1) - desPos{4}(12000:99999,1);
    Poss_Err2{6}(:,2) = Poss{6}(12000:99999,2) - desPos{4}(12000:99999,2);

    Poss_Err2{7}(:,1) = Poss{7}(12000:99999,1) - desPos{6}(12000:99999,1);
    Poss_Err2{7}(:,2) = Poss{7}(12000:99999,2) - desPos{6}(12000:99999,2);

    Poss_Err2{8}(:,1) = Poss{8}(12000:99999,1) - desPos{7}(12000:99999,1);
    Poss_Err2{8}(:,2) = Poss{8}(12000:99999,2) - desPos{7}(12000:99999,2);

    Poss_Err2{9}(:,1) = Poss{9}(12000:99999,1) - desPos{9}(12000:99999,1);
    Poss_Err2{9}(:,2) = Poss{9}(12000:99999,2) - desPos{9}(12000:99999,2);

%%% 位姿跟踪误差 - x
figure(5);
subplot(2,1,1);
%plot(t(1:11999), Poss_Err2{4}(:,1), '-', 'Color', [0 0.4470 0.7410], 'LineWidth', 2); hold on
plot(t(12000:99999), Poss_Err2{5}(:,1), '-', 'Color', [0.8500 0.3250 0.0980], 'LineWidth', 2); hold on
plot(t(12000:99999), Poss_Err2{6}(:,1), '-', 'Color', [0.9290 0.6940 0.1250], 'LineWidth', 2); hold on
plot(t(12000:99999), Poss_Err2{7}(:,1), '-', 'Color', [0.4940 0.1840 0.5560], 'LineWidth', 2); hold on
plot(t(12000:99999), Poss_Err2{8}(:,1), '-', 'Color', [0.6350 0.0780 0.1840], 'LineWidth', 2); hold on
plot(t(12000:99999), Poss_Err2{9}(:,1), '-', 'Color', [0.3010 0.7450 0.9330], 'LineWidth', 2); hold on
xlim([60, 500]);
ylabel('TE in X-axis $(m)$', 'interpreter', 'latex');
legend('5-th agent', '6-th agent', '7-th agent', '8-th agent', '9-th agent', 'NumColumns', 6, 'Location', 'northoutside');
set(gca,'Fontsize',14);
%set(gca, 'xtick', [], 'xticklabel', []);

%%% 位姿跟踪误差 - y
subplot(2,1,2);
%plot(t(1:11999), Poss_Err2{4}(:,2), '-', 'Color', [0 0.4470 0.7410], 'LineWidth', 2); hold on
plot(t(12000:99999), Poss_Err2{5}(:,2), '-', 'Color', [0.8500 0.3250 0.0980], 'LineWidth', 2); hold on
plot(t(12000:99999), Poss_Err2{6}(:,2), '-', 'Color', [0.9290 0.6940 0.1250], 'LineWidth', 2); hold on
plot(t(12000:99999), Poss_Err2{7}(:,2), '-', 'Color', [0.4940 0.1840 0.5560], 'LineWidth', 2); hold on
plot(t(12000:99999), Poss_Err2{8}(:,2), '-', 'Color', [0.6350 0.0780 0.1840], 'LineWidth', 2); hold on
plot(t(12000:99999), Poss_Err2{9}(:,2), '-', 'Color', [0.3010 0.7450 0.9330], 'LineWidth', 2); hold on
xlim([60, 500]);
xlabel('$t(s)$', 'interpreter', 'latex');
ylabel('TE in Y-axis $(m)$', 'interpreter', 'latex');
set(gca,'Fontsize',14);

%% loop >= 100000

    Poss_Err3{4}(:,1) = Poss{4}(100000:149000,1) - desPos{8}(100000:149000,1);
    Poss_Err3{4}(:,2) = Poss{4}(100000:149000,2) - desPos{8}(100000:149000,2);


    Poss_Err3{5}(:,1) = Poss{5}(100000:149000,1) - desPos{5}(100000:149000,1);
    Poss_Err3{5}(:,2) = Poss{5}(100000:149000,2) - desPos{5}(100000:149000,2);

    Poss_Err3{6}(:,1) = Poss{6}(100000:149000,1) - desPos{4}(100000:149000,1);
    Poss_Err3{6}(:,2) = Poss{6}(100000:149000,2) - desPos{4}(100000:149000,2);

    Poss_Err3{7}(:,1) = Poss{7}(100000:149000,1) - desPos{6}(100000:149000,1);
    Poss_Err3{7}(:,2) = Poss{7}(100000:149000,2) - desPos{6}(100000:149000,2);

    Poss_Err3{8}(:,1) = Poss{8}(100000:149000,1) - desPos{7}(100000:149000,1);
    Poss_Err3{8}(:,2) = Poss{8}(100000:149000,2) - desPos{7}(100000:149000,2);

    Poss_Err3{9}(:,1) = Poss{9}(100000:149000,1) - desPos{9}(100000:149000,1);
    Poss_Err3{9}(:,2) = Poss{9}(100000:149000,2) - desPos{9}(100000:149000,2);

%%% 位姿跟踪误差 - x
figure(6);
subplot(2,1,1);
plot(t(100000:149000), Poss_Err3{4}(:,1), '-', 'Color', [0 0.4470 0.7410], 'LineWidth', 2); hold on
plot(t(100000:149000), Poss_Err3{5}(:,1), '-', 'Color', [0.8500 0.3250 0.0980], 'LineWidth', 2); hold on
plot(t(100000:149000), Poss_Err3{6}(:,1), '-', 'Color', [0.9290 0.6940 0.1250], 'LineWidth', 2); hold on
plot(t(100000:149000), Poss_Err3{7}(:,1), '-', 'Color', [0.4940 0.1840 0.5560], 'LineWidth', 2); hold on
plot(t(100000:149000), Poss_Err3{8}(:,1), '-', 'Color', [0.6350 0.0780 0.1840], 'LineWidth', 2); hold on
plot(t(100000:149000), Poss_Err3{9}(:,1), '-', 'Color', [0.3010 0.7450 0.9330], 'LineWidth', 2); hold on
xlim([500, 745]);
ylabel('TE in X-axis $(m)$', 'interpreter', 'latex');
legend('4-th agent', '5-th agent', '6-th agent', '7-th agent', '8-th agent', '9-th agent', 'NumColumns', 6, 'Location', 'northoutside');
set(gca,'Fontsize',14);

%%% 位姿跟踪误差 - y
subplot(2,1,2);
plot(t(100000:149000), Poss_Err3{4}(:,2), '-', 'Color', [0 0.4470 0.7410], 'LineWidth', 2); hold on
plot(t(100000:149000), Poss_Err3{5}(:,2), '-', 'Color', [0.8500 0.3250 0.0980], 'LineWidth', 2); hold on
plot(t(100000:149000), Poss_Err3{6}(:,2), '-', 'Color', [0.9290 0.6940 0.1250], 'LineWidth', 2); hold on
plot(t(100000:149000), Poss_Err3{7}(:,2), '-', 'Color', [0.4940 0.1840 0.5560], 'LineWidth', 2); hold on
plot(t(100000:149000), Poss_Err3{8}(:,2), '-', 'Color', [0.6350 0.0780 0.1840], 'LineWidth', 2); hold on
plot(t(100000:149000), Poss_Err3{9}(:,2), '-', 'Color', [0.3010 0.7450 0.9330], 'LineWidth', 2); hold on
xlim([500, 745]);
xlabel('$t(s)$', 'interpreter', 'latex');
ylabel('TE in Y-axis $(m)$', 'interpreter', 'latex');
set(gca,'Fontsize',14);


