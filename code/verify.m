%%%%%%%%%%% 
%% tracking errors ASV
figure(2);
plot(t, Poss{4}(:,1)-desPos{4}(:,1), '-', 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
hold on
plot(t, Poss{5} (:,1)-desPos{5}(:,1), '-.', 'LineWidth', 2, 'Color', [0.9290 0.6940 0.1250]);
hold on
plot(t, Poss{6}(:,1)-desPos{6}(:,1), '--', 'LineWidth', 2, 'Color', [0.4940 0.1840 0.5560]);
hold on
plot(t, Poss{7}(:,1)-desPos{7}(:,1), '-.', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
hold on
plot(t, Poss{8}(:,1)-desPos{8}(:,1), '-.', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
hold on
plot(t, Poss{9}(:,1)-desPos{9}(:,1), '-.', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
hold on
xlabel('$t$(s)','Interpreter', 'latex');
ylabel('$e_{i,x}$(m)','Interpreter','latex');
xlim([0,150]);
ylim([-15,15]);
set(gca,'FontSize', 16);
legend('i=4', 'i=5', 'i=6', 'i=7', 'i=8', 'i=9');

figure(3);
plot(t, Poss{4}(:,2)-desPos{4}(:,2), '-', 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
hold on
plot(t, Poss{5}(:,2)-desPos{5}(:,2), '-.', 'LineWidth', 2, 'Color', [0.9290 0.6940 0.1250]);
hold on
plot(t, Poss{6}(:,2)-desPos{6}(:,2), '--', 'LineWidth', 2, 'Color', [0.4940 0.1840 0.5560]);
hold on
plot(t, Poss{7}(:,2)-desPos{7}(:,2), '-.', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
hold on
plot(t, Poss{8}(:,2)-desPos{8}(:,2), '-.', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
hold on
plot(t, Poss{9}(:,2)-desPos{9}(:,2), '-.', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
hold on
xlabel('$t$(s)','Interpreter', 'latex');
ylabel('$e_{i,y}$(m)','Interpreter', 'latex');
xlim([0,150]);
ylim([-15,15]);
set(gca,'FontSize', 16);
legend('i=4', 'i=5', 'i=6', 'i=7', 'i=8', 'i=9');

%% tracking errors ASV
figure(2);
subplot(3,1,1);
plot(t, Etas{4}(:,1)-tarEtas{4}(:,1), '-', 'LineWidth', 3, 'Color', [0 0.4470 0.7410]);
hold on
plot(t, Etas{5}(:,1)-tarEtas{5}(:,1), '-.', 'LineWidth', 3, 'Color', [0.9290 0.6940 0.1250]);
hold on
plot(t, Etas{6}(:,1)-tarEtas{6}(:,1), '--', 'LineWidth', 3, 'Color', [0.4940 0.1840 0.5560]);
hold on
plot(t, Etas{7}(:,1)-tarEtas{7}(:,1), '-.', 'LineWidth', 3, 'Color', [0.3010 0.7450 0.9330]);
hold on
ylabel('$x_{i}-x_{i}^*(m)$','Interpreter','latex');
xlim([0,855]);
ylim([-15,15]);
set(gca,'FontSize', 16);
legend('i=4', 'i=5', 'i=6', 'i=7');

subplot(3,1,2)
plot(t, Etas{4}(:,2)-tarEtas{4}(:,2), '-', 'LineWidth', 3, 'Color', [0 0.4470 0.7410]);
hold on
plot(t, Etas{5}(:,2)-tarEtas{5}(:,2), '-.', 'LineWidth', 3, 'Color', [0.9290 0.6940 0.1250]);
hold on
plot(t, Etas{6}(:,2)-tarEtas{6}(:,2), '--', 'LineWidth', 3, 'Color', [0.4940 0.1840 0.5560]);
hold on
plot(t, Etas{7}(:,2)-tarEtas{7}(:,2), '-.', 'LineWidth', 3, 'Color', [0.3010 0.7450 0.9330]);
hold on
ylabel('$y_{i}-y_{i}^*(m)$','Interpreter', 'latex');
xlim([0,855]);
ylim([-15,15]);
set(gca,'FontSize', 16);

subplot(3,1,3)
plot(t, Etas{4}(:,3)-tarEtas{4}(:,3), '-', 'LineWidth', 3, 'Color', [0 0.4470 0.7410]);
hold on
plot(t, Etas{5}(:,3)-tarEtas{5}(:,3), '-.', 'LineWidth', 3, 'Color', [0.9290 0.6940 0.1250]);
hold on
plot(t, Etas{6}(:,3)-tarEtas{6}(:,3), '--', 'LineWidth', 3, 'Color', [0.4940 0.1840 0.5560]);
hold on
plot(t, Etas{7}(:,3)-tarEtas{7}(:,3), '-.', 'LineWidth', 3, 'Color', [0.3010 0.7450 0.9330]);
hold on
xlabel('$t(s)$','Interpreter', 'latex');
ylabel('$\psi_{i}-\psi_{i}^*(rad)$', 'Interpreter', 'latex');
xlim([0,855]);
ylim([-5,5]);
set(gca,'FontSize', 16);

%% velocity ASV
figure(5);
subplot(3,1,1)
plot(t, Venas{4}(:,1), '-', 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
hold on
plot(t, Venas{5}(:,1), '-.', 'LineWidth', 2, 'Color', [0.9290 0.6940 0.1250]);
hold on
plot(t, Venas{6}(:,1), '--', 'LineWidth', 2, 'Color', [0.4940 0.1840 0.5560]);
hold on
plot(t, Venas{7}(:,1), '-.', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
hold on
ylabel('$u_{i}$(m/s)','Interpreter','latex');
xlim([0,430]);
set(gca,'FontSize', 16);
legend('i=4', 'i=5', 'i=6', 'i=7');

subplot(3,1,2)
plot(t, Venas{4}(:,2), '-', 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
hold on
plot(t, Venas{5}(:,2), '-.', 'LineWidth', 2, 'Color', [0.9290 0.6940 0.1250]);
hold on
plot(t, Venas{6}(:,2), '--', 'LineWidth', 2, 'Color', [0.4940 0.1840 0.5560]);
hold on
plot(t, Venas{7}(:,2), '-.', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
hold on
ylabel('$v_{i}$(m/s)','Interpreter', 'latex');
xlim([0,430]);
set(gca,'FontSize', 16);

subplot(3,1,3)
plot(t, Venas{4}(:,3), '-', 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
hold on
plot(t, Venas{5}(:,3), '-.', 'LineWidth', 2, 'Color', [0.9290 0.6940 0.1250]);
hold on
plot(t, Venas{6}(:,3), '--', 'LineWidth', 2, 'Color', [0.4940 0.1840 0.5560]);
hold on
plot(t, Venas{7}(:,3), '-.', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
hold on
xlabel('$t$(s)','Interpreter', 'latex');
ylabel('$r_{i}$(rad/s)', 'Interpreter', 'latex');
xlim([0,430]);
set(gca,'FontSize', 16);

%%%%%%%%%%% COMPARE
%%
Trig_NL = Trig1;
Etas_NL = Etas;
save('C:\Users\Wangh\Desktop\zxt lunwen\hybrid\Compare with no packet loss\Etas_NL.mat', 'Etas_NL');
save('C:\Users\Wangh\Desktop\zxt lunwen\hybrid\Compare with no packet loss\Trig_NL.mat', 'Trig_NL');
%%
save('C:\Users\Wangh\Desktop\zxt lunwen\hybrid\My2\tarEtas.mat', 'tarEtas');
save('C:\Users\Wangh\Desktop\zxt lunwen\hybrid\My2\Etas.mat', 'Etas');
save('C:\Users\Wangh\Desktop\zxt lunwen\hybrid\My2\Trig1.mat', 'Trig1');
save('C:\Users\Wangh\Desktop\zxt lunwen\hybrid\My2\Trig2.mat', 'Trig2');
save('C:\Users\Wangh\Desktop\zxt lunwen\hybrid\My2\edge.mat', 'edge');
save('C:\Users\Wangh\Desktop\zxt lunwen\hybrid\My2\t.mat', 't');
save('C:\Users\Wangh\Desktop\zxt lunwen\hybrid\My2\Num_loss.mat', 'Num_loss');
%%
% save('C:\Users\Wangh\Desktop\zxt lunwen\hybrid\Compare with TCST\edge.mat', 'edge');
% save('C:\Users\Wangh\Desktop\zxt lunwen\hybrid\Compare with TCST\t.mat', 't');
% save('C:\Users\Wangh\Desktop\zxt lunwen\hybrid\Compare with TCST\tarEtas.mat', 'tarEtas');
% save('C:\Users\Wangh\Desktop\zxt lunwen\hybrid\Compare with TCST\Etas.mat', 'Etas');
save('C:\Users\Wangh\Desktop\zxt lunwen\hybrid\Compare with TCST\Trig1.mat', 'Trig1');
save('C:\Users\Wangh\Desktop\zxt lunwen\hybrid\Compare with TCST\Trig2.mat', 'Trig2');




%% tracking errors ASV
figure(2);
plot(t, Etas{4}(:,1)-tarEtas{4}(:,1), '-', 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
hold on
plot(t, Etas{5}(:,1)-tarEtas{5}(:,1), '-.', 'LineWidth', 2, 'Color', [0.9290 0.6940 0.1250]);
hold on
plot(t, Etas{6}(:,1)-tarEtas{6}(:,1), '--', 'LineWidth', 2, 'Color', [0.4940 0.1840 0.5560]);
hold on
plot(t, Etas{7}(:,1)-tarEtas{7}(:,1), '-.', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
hold on
xlabel('$t$(s)','Interpreter', 'latex');
ylabel('$e_{i,x}$(m)','Interpreter','latex');
xlim([0,380]);
ylim([-15,15]);
set(gca,'FontSize', 16);
legend('i=4', 'i=5', 'i=6', 'i=7');

figure(3);
plot(t, Etas{4}(:,2)-tarEtas{4}(:,2), '-', 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
hold on
plot(t, Etas{5}(:,2)-tarEtas{5}(:,2), '-.', 'LineWidth', 2, 'Color', [0.9290 0.6940 0.1250]);
hold on
plot(t, Etas{6}(:,2)-tarEtas{6}(:,2), '--', 'LineWidth', 2, 'Color', [0.4940 0.1840 0.5560]);
hold on
plot(t, Etas{7}(:,2)-tarEtas{7}(:,2), '-.', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
hold on
xlabel('$t$(s)','Interpreter', 'latex');
ylabel('$e_{i,y}$(m)','Interpreter', 'latex');
xlim([0,380]);
ylim([-15,15]);
set(gca,'FontSize', 16);
legend('i=4', 'i=5', 'i=6', 'i=7');

figure(4);
plot(t, Etas{4}(:,3)-tarEtas{4}(:,3), '-', 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
hold on
plot(t, Etas{5}(:,3)-tarEtas{5}(:,3), '-.', 'LineWidth', 2, 'Color', [0.9290 0.6940 0.1250]);
hold on
plot(t, Etas{6}(:,3)-tarEtas{6}(:,3), '--', 'LineWidth', 2, 'Color', [0.4940 0.1840 0.5560]);
hold on
plot(t, Etas{7}(:,3)-tarEtas{7}(:,3), '-.', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
hold on
xlabel('$t$(s)','Interpreter', 'latex');
ylabel('$e_{i,\psi}$(rad)', 'Interpreter', 'latex');
xlim([0,380]);
ylim([-5,5]);
set(gca,'FontSize', 16);
legend('i=4', 'i=5', 'i=6', 'i=7');

%% tracking errors ASV
figure(2);
subplot(3,1,1);
plot(t, Etas{4}(:,1)-tarEtas{4}(:,1), '-', 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
hold on
plot(t, Etas{5}(:,1)-tarEtas{5}(:,1), '-.', 'LineWidth', 2, 'Color', [0.9290 0.6940 0.1250]);
hold on
plot(t, Etas{6}(:,1)-tarEtas{6}(:,1), '--', 'LineWidth', 2, 'Color', [0.4940 0.1840 0.5560]);
hold on
plot(t, Etas{7}(:,1)-tarEtas{7}(:,1), '-.', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
hold on
ylabel('$e_{i,x}$(m)','Interpreter','latex');
xlim([0,380]);
ylim([-15,15]);
set(gca,'FontSize', 16);
legend('i=4', 'i=5', 'i=6', 'i=7');

subplot(3,1,2)
plot(t, Etas{4}(:,2)-tarEtas{4}(:,2), '-', 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
hold on
plot(t, Etas{5}(:,2)-tarEtas{5}(:,2), '-.', 'LineWidth', 2, 'Color', [0.9290 0.6940 0.1250]);
hold on
plot(t, Etas{6}(:,2)-tarEtas{6}(:,2), '--', 'LineWidth', 2, 'Color', [0.4940 0.1840 0.5560]);
hold on
plot(t, Etas{7}(:,2)-tarEtas{7}(:,2), '-.', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
hold on
ylabel('$e_{i,y}$(m)','Interpreter', 'latex');
xlim([0,380]);
ylim([-15,15]);
set(gca,'FontSize', 16);

subplot(3,1,3)
plot(t, Etas{4}(:,3)-tarEtas{4}(:,3), '-', 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
hold on
plot(t, Etas{5}(:,3)-tarEtas{5}(:,3), '-.', 'LineWidth', 2, 'Color', [0.9290 0.6940 0.1250]);
hold on
plot(t, Etas{6}(:,3)-tarEtas{6}(:,3), '--', 'LineWidth', 2, 'Color', [0.4940 0.1840 0.5560]);
hold on
plot(t, Etas{7}(:,3)-tarEtas{7}(:,3), '-.', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
hold on
xlabel('$t$(s)','Interpreter', 'latex');
ylabel('$e_{i,\psi}$(rad)', 'Interpreter', 'latex');
xlim([0,380]);
ylim([-5,5]);
set(gca,'FontSize', 16);

%% velocity ASV
figure(5);
subplot(3,1,1)
plot(t, Venas{4}(:,1), '-', 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
hold on
plot(t, Venas{5}(:,1), '-.', 'LineWidth', 2, 'Color', [0.9290 0.6940 0.1250]);
hold on
plot(t, Venas{6}(:,1), '--', 'LineWidth', 2, 'Color', [0.4940 0.1840 0.5560]);
hold on
plot(t, Venas{7}(:,1), '-.', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
hold on
ylabel('$u_{i}$(m/s)','Interpreter','latex');
xlim([0,430]);
set(gca,'FontSize', 16);
legend('i=4', 'i=5', 'i=6', 'i=7');

subplot(3,1,2)
plot(t, Venas{4}(:,2), '-', 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
hold on
plot(t, Venas{5}(:,2), '-.', 'LineWidth', 2, 'Color', [0.9290 0.6940 0.1250]);
hold on
plot(t, Venas{6}(:,2), '--', 'LineWidth', 2, 'Color', [0.4940 0.1840 0.5560]);
hold on
plot(t, Venas{7}(:,2), '-.', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
hold on
ylabel('$v_{i}$(m/s)','Interpreter', 'latex');
xlim([0,430]);
set(gca,'FontSize', 16);

subplot(3,1,3)
plot(t, Venas{4}(:,3), '-', 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
hold on
plot(t, Venas{5}(:,3), '-.', 'LineWidth', 2, 'Color', [0.9290 0.6940 0.1250]);
hold on
plot(t, Venas{6}(:,3), '--', 'LineWidth', 2, 'Color', [0.4940 0.1840 0.5560]);
hold on
plot(t, Venas{7}(:,3), '-.', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
hold on
xlabel('$t$(s)','Interpreter', 'latex');
ylabel('$r_{i}$(rad/s)', 'Interpreter', 'latex');
xlim([0,430]);
set(gca,'FontSize', 16);

%%
figure(9);

% 绘制轨迹线
P1 = plot(Etas{1}(:,1), Etas{1}(:,2),'-', 'LineWidth',2, 'color', [0.4660 0.6740 0.1880]); hold on;
P2 = plot(Etas{2}(:,1), Etas{2}(:,2),'-', 'LineWidth',2, 'color', [0.4660 0.6740 0.1880]); hold on;
P3 = plot(Etas{3}(:,1), Etas{3}(:,2),'-', 'LineWidth',2, 'color', [0.4660 0.6740 0.1880]); hold on;
P4 = plot(Etas{4}(:,1), Etas{4}(:,2),'-.', 'LineWidth',2, 'color', [0 0.4470 0.7410]); hold on;
P5 = plot(Etas{5}(:,1), Etas{5}(:,2),'-.', 'LineWidth',2, 'color', [0.9290 0.6940 0.1250]); hold on;
P6 = plot(Etas{6}(:,1), Etas{6}(:,2),'-.', 'LineWidth',2, 'color', [0.4940 0.1840 0.5560]); hold on;
P7 = plot(Etas{7}(:,1), Etas{7}(:,2),'-.', 'LineWidth',2, 'color',  [0.3010 0.7450 0.9330]); hold on;

xlabel('$x$(m)', 'Interpreter', 'latex');
ylabel('$y$(m)', 'Interpreter', 'latex');
set(gca,'FontSize', 16);

axis equal

L=7.255;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
B=5;
L01=5.0;    

%%1
m = 1 * 2;
% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Etas{index1}(m,1), Etas{index2}(m,1)], ...
         [Etas{index1}(m,2), Etas{index2}(m,2)], 'k', 'LineWidth', 1.5);
    hold on;
end
% [0.3010 0.7450 0.9330] [0.9290 0.6940 0.1250] [0.4940 0.1840 0.5560] [0.6350 0.0780 0.1840]
% 绘制内置无人艇
[xx yy] = ship_contour(Etas{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Etas{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Etas{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Etas{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;

%%2
m = 9000 * 2;% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Etas{index1}(m,1), Etas{index2}(m,1)], ...
         [Etas{index1}(m,2), Etas{index2}(m,2)], 'k', 'LineWidth', 1.5);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Etas{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Etas{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Etas{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Etas{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;


%%3
m = 18000 * 2;% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Etas{index1}(m,1), Etas{index2}(m,1)], ...
         [Etas{index1}(m,2), Etas{index2}(m,2)], 'k', 'LineWidth', 1.5);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Etas{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Etas{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Etas{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Etas{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;


%%4
m = 26000 * 2;
% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Etas{index1}(m,1), Etas{index2}(m,1)], ...
         [Etas{index1}(m,2), Etas{index2}(m,2)], 'k', 'LineWidth', 1.5);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Etas{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Etas{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Etas{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Etas{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;


%%5
m = 45000 * 2;% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Etas{index1}(m,1), Etas{index2}(m,1)], ...
         [Etas{index1}(m,2), Etas{index2}(m,2)], 'k', 'LineWidth', 1.5);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Etas{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Etas{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Etas{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Etas{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;


%%6
m = 56000 * 2;% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Etas{index1}(m,1), Etas{index2}(m,1)], ...
         [Etas{index1}(m,2), Etas{index2}(m,2)], 'k', 'LineWidth', 1.5);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Etas{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Etas{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Etas{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Etas{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;


%%7
m = 64000 * 2;% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Etas{index1}(m,1), Etas{index2}(m,1)], ...
         [Etas{index1}(m,2), Etas{index2}(m,2)], 'k', 'LineWidth', 1.5);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Etas{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Etas{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Etas{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Etas{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;


%%8
m = 72000 * 2;% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Etas{index1}(m,1), Etas{index2}(m,1)], ...
         [Etas{index1}(m,2), Etas{index2}(m,2)], 'k', 'LineWidth', 1.5);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Etas{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Etas{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Etas{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Etas{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;


%%9
m = 86000 * 2;% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Etas{index1}(m,1), Etas{index2}(m,1)], ...
         [Etas{index1}(m,2), Etas{index2}(m,2)], 'k', 'LineWidth', 1.5);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Etas{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Etas{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Etas{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Etas{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;
legend([P1 P4 P5 P6 P7],{'Leader(i=1,2,3)', 'i=4', 'i=5', 'i=6', 'i=7'});

%%
figure(9);

% 绘制轨迹线
P1 = plot(Etas{1}(:,1), Etas{1}(:,2),'-', 'LineWidth',2, 'color', [0.4660 0.6740 0.1880]); hold on;
P2 = plot(Etas{2}(:,1), Etas{2}(:,2),'-', 'LineWidth',2, 'color', [0.4660 0.6740 0.1880]); hold on;
P3 = plot(Etas{3}(:,1), Etas{3}(:,2),'-', 'LineWidth',2, 'color', [0.4660 0.6740 0.1880]); hold on;
P4 = plot(Etas{4}(:,1), Etas{4}(:,2),'-.', 'LineWidth',2, 'color', [0 0.4470 0.7410]); hold on;
P5 = plot(Etas{5}(:,1), Etas{5}(:,2),'-.', 'LineWidth',2, 'color', [0.9290 0.6940 0.1250]); hold on;
P6 = plot(Etas{6}(:,1), Etas{6}(:,2),'-.', 'LineWidth',2, 'color', [0.4940 0.1840 0.5560]); hold on;
P7 = plot(Etas{7}(:,1), Etas{7}(:,2),'-.', 'LineWidth',2, 'color',  [0.3010 0.7450 0.9330]); hold on;

xlabel('$x$(m)', 'Interpreter', 'latex');
ylabel('$y$(m)', 'Interpreter', 'latex');
set(gca,'FontSize', 16);

axis equal

L=7.255;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
B=5;
L01=5.0;    

%%1
m = 1 * 2;
% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Etas{index1}(m,1), Etas{index2}(m,1)], ...
         [Etas{index1}(m,2), Etas{index2}(m,2)], 'k', 'LineWidth', 1.5);
    hold on;
end
% [0.3010 0.7450 0.9330] [0.9290 0.6940 0.1250] [0.4940 0.1840 0.5560] [0.6350 0.0780 0.1840]
% 绘制内置无人艇
[xx yy] = ship_contour(Etas{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Etas{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Etas{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Etas{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;

%%2
m = 10000 * 2;% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Etas{index1}(m,1), Etas{index2}(m,1)], ...
         [Etas{index1}(m,2), Etas{index2}(m,2)], 'k', 'LineWidth', 1.5);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Etas{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Etas{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Etas{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Etas{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;


%%3
m = 20000 * 2;% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Etas{index1}(m,1), Etas{index2}(m,1)], ...
         [Etas{index1}(m,2), Etas{index2}(m,2)], 'k', 'LineWidth', 1.5);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Etas{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Etas{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Etas{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Etas{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;


%%4
m = 30000 * 2;
% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Etas{index1}(m,1), Etas{index2}(m,1)], ...
         [Etas{index1}(m,2), Etas{index2}(m,2)], 'k', 'LineWidth', 1.5);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Etas{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Etas{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Etas{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx, yy] = ship_contour(Etas{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;


%%5
m = 40000 * 2;% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Etas{index1}(m,1), Etas{index2}(m,1)], ...
         [Etas{index1}(m,2), Etas{index2}(m,2)], 'k', 'LineWidth', 1.5);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Etas{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Etas{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Etas{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Etas{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;


%%6
m = 52000 * 2;% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Etas{index1}(m,1), Etas{index2}(m,1)], ...
         [Etas{index1}(m,2), Etas{index2}(m,2)], 'k', 'LineWidth', 1.5);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Etas{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Etas{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Etas{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Etas{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;


%%7
m = 75000 * 2;% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Etas{index1}(m,1), Etas{index2}(m,1)], ...
         [Etas{index1}(m,2), Etas{index2}(m,2)], 'k', 'LineWidth', 1.5);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Etas{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Etas{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Etas{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Etas{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;


% %%8
% m = 72000 * 2;% 绘制连接线
% for j=1:size(edge,2)
%     index1 = edge(1,j); index2 = edge(2,j);
%     plot([Etas{index1}(m,1), Etas{index2}(m,1)], ...
%          [Etas{index1}(m,2), Etas{index2}(m,2)], 'k', 'LineWidth', 2);
%     hold on;
% end
% 
% % 绘制内置无人艇
% [xx yy] = ship_contour(Etas{1}(m,:)', L, B, L01);
% fill(xx,yy,[0.4660 0.6740 0.1880])
% [xx yy] = ship_contour(Etas{2}(m,:)', L, B, L01);
% fill(xx,yy,[0.4660 0.6740 0.1880])
% [xx yy] = ship_contour(Etas{3}(m,:)', L, B, L01);
% fill(xx,yy,[0.4660 0.6740 0.1880])
% [xx yy] = ship_contour(Etas{4}(m,:)', L, B, L01);
% fill(xx,yy,[0 0.4470 0.7410])
% [xx yy] = ship_contour(Etas{5}(m,:)', L, B, L01);
% fill(xx,yy,[0.9290 0.6940 0.1250])
% [xx yy] = ship_contour(Etas{6}(m,:)', L, B, L01);
% fill(xx,yy,[0.4940 0.1840 0.5560])
% [xx yy] = ship_contour(Etas{7}(m,:)', L, B, L01);
% fill(xx,yy,[0.3010 0.7450 0.9330])
% hold on;
% 
% 
% %%9
% m = 86000 * 2;% 绘制连接线
% for j=1:size(edge,2)
%     index1 = edge(1,j); index2 = edge(2,j);
%     plot([Etas{index1}(m,1), Etas{index2}(m,1)], ...
%          [Etas{index1}(m,2), Etas{index2}(m,2)], 'k', 'LineWidth', 2);
%     hold on;
% end
% 
% % 绘制内置无人艇
% [xx yy] = ship_contour(Etas{1}(m,:)', L, B, L01);
% fill(xx,yy,[0.4660 0.6740 0.1880])
% [xx yy] = ship_contour(Etas{2}(m,:)', L, B, L01);
% fill(xx,yy,[0.4660 0.6740 0.1880])
% [xx yy] = ship_contour(Etas{3}(m,:)', L, B, L01);
% fill(xx,yy,[0.4660 0.6740 0.1880])
% [xx yy] = ship_contour(Etas{4}(m,:)', L, B, L01);
% fill(xx,yy,[0 0.4470 0.7410])
% [xx yy] = ship_contour(Etas{5}(m,:)', L, B, L01);
% fill(xx,yy,[0.9290 0.6940 0.1250])
% [xx yy] = ship_contour(Etas{6}(m,:)', L, B, L01);
% fill(xx,yy,[0.4940 0.1840 0.5560])
% [xx yy] = ship_contour(Etas{7}(m,:)', L, B, L01);
% fill(xx,yy,[0.3010 0.7450 0.9330])
%hold on;
legend([P1 P4 P5 P6 P7],{'Leader(i=1,2,3)', 'i=4', 'i=5', 'i=6', 'i=7'});




















%% compare
figure(9);

% 绘制轨迹线
P1 = plot(Etas{1}(:,1), Etas{1}(:,2),'-', 'LineWidth',1, 'color', [0.4660 0.6740 0.1880]); hold on;
P2 = plot(Etas{2}(:,1), Etas{2}(:,2),'-', 'LineWidth',1, 'color', [0.4660 0.6740 0.1880]); hold on;
P3 = plot(Etas{3}(:,1), Etas{3}(:,2),'-', 'LineWidth',1, 'color', [0.4660 0.6740 0.1880]); hold on;
P4 = plot(Etas{4}(:,1), Etas{4}(:,2),'-.', 'LineWidth',1, 'color', [0 0.4470 0.7410]); hold on;
P5 = plot(Etas{5}(:,1), Etas{5}(:,2),'-.', 'LineWidth',1, 'color', [0.9290 0.6940 0.1250]); hold on;
P6 = plot(Etas{6}(:,1), Etas{6}(:,2),'-.', 'LineWidth',1, 'color', [0.4940 0.1840 0.5560]); hold on;
P7 = plot(Etas{7}(:,1), Etas{7}(:,2),'-.', 'LineWidth',1, 'color',  [0.3010 0.7450 0.9330]); hold on;

xlabel('$x$(m)', 'Interpreter', 'latex');
ylabel('$y$(m)', 'Interpreter', 'latex');
set(gca,'FontSize', 16);

axis equal

L=7.255;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
B=5;
L01=5.0;    

%%1
m = 1 * 2;
% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Etas{index1}(m,1), Etas{index2}(m,1)], ...
         [Etas{index1}(m,2), Etas{index2}(m,2)], 'k', 'LineWidth', 2);
    hold on;
end
% [0.3010 0.7450 0.9330] [0.9290 0.6940 0.1250] [0.4940 0.1840 0.5560] [0.6350 0.0780 0.1840]
% 绘制内置无人艇
[xx yy] = ship_contour(Etas{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Etas{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Etas{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Etas{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;

%%2
m = 14000 * 2;% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Etas{index1}(m,1), Etas{index2}(m,1)], ...
         [Etas{index1}(m,2), Etas{index2}(m,2)], 'k', 'LineWidth', 2);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Etas{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Etas{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Etas{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Etas{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;


%%3
m = 25000 * 2;% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Etas{index1}(m,1), Etas{index2}(m,1)], ...
         [Etas{index1}(m,2), Etas{index2}(m,2)], 'k', 'LineWidth', 2);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Etas{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Etas{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Etas{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Etas{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;


%%4
m = 38000 * 2;
% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Etas{index1}(m,1), Etas{index2}(m,1)], ...
         [Etas{index1}(m,2), Etas{index2}(m,2)], 'k', 'LineWidth', 2);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Etas{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Etas{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Etas{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Etas{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Etas{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;
legend([P1 P4 P5 P6 P7],{'Leader(i=1,2,3)', 'i=4', 'i=5', 'i=6', 'i=7'});



%%
figure(8);
plot(t, Thetas{4}(:,1), '-', 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
hold on
plot(t, Thetas{5}(:,1), '-.', 'LineWidth', 2, 'Color', [0.9290 0.6940 0.1250]);
hold on
plot(t, Thetas{6}(:,1), '--', 'LineWidth', 2, 'Color', [0.4940 0.1840 0.5560]);
hold on
plot(t, Thetas{7}(:,1), '-.', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
hold on
ylabel('$\theta_{i}$','Interpreter','latex');
xlim([0,430]);
set(gca,'FontSize', 16);
legend('i=4', 'i=5', 'i=6', 'i=7');

%%
for i = 1:1:7
    Number1{i} = 0;
end

for i = 4:1:7
           figure;
           %触发元素的指标序列
           Index = unique(Trig1{i}); 
           %触发元素序列
           Sequence = t(Index);
           %触发元素间隔
           Diff = diff(Sequence);
           %
           Nd = ['node','(',num2str(i),')'];
           %触发元素对应的其与上一触发元素的间隔(除去第一个触发元素)
           bar(Sequence(2:end), Diff); 
           hold on;
           scatter(Sequence(2:end), Diff, 'o');
           xlabel('$t(s)$', 'Interpreter', 'latex');
           ylabel('Triggering interval$(s)$', 'Interpreter', 'latex');
           set(gca,'FontSize', 16);
           title(Nd);
           %触发元素集合的势
           Number1{i} = length(Sequence);
           
           Index = [];
           Sequence = [];
           Diff = [];
     
end
%Number_NL = Number1;
%save('C:\Users\Wangh\Desktop\zxt lunwen\hybrid\Compare with no packet loss\Number_NL.mat', 'Number_NL');
%save('C:\Users\Wangh\Desktop\zxt lunwen\hybrid\My2\Number1.mat', 'Number1');
%save('C:\Users\Wangh\Desktop\zxt lunwen\hybrid\Compare with TCST\Number1.mat', 'Number1');
%%
for i = 1:1:7
    Number2{i} = 0;
end

for i = 4:1:7
           figure;
           %触发元素的指标序列
           Index = unique(Trig2{i}); 
           %触发元素序列
           Sequence = t(Index);
           %触发元素间隔
           Diff = diff(Sequence);
           %
           Nd = ['node',num2str(i)];
           %触发元素对应的其与上一触发元素的间隔(除去第一个触发元素)
           bar(Sequence(2:end), Diff); 
           hold on;
           scatter(Sequence(2:end), Diff, 'o');
           xlabel('$t(s)$', 'Interpreter', 'latex');
           ylabel('Successful transmission interval$(s)$', 'Interpreter', 'latex');
           set(gca,'FontSize', 16);
           title(Nd);
           %触发元素集合的势
           Number2{i} = length(Sequence);
           
           Index = [];
           Sequence = [];
           Diff = [];
     
end

%save('C:\Users\Wangh\Desktop\zxt lunwen\hybrid\My2\Number2.mat', 'Number2');
%save('C:\Users\Wangh\Desktop\zxt lunwen\hybrid\Compare with TCST\Number2.mat', 'Number2');
%%
for i = 1:1:7
    Number2{i} = 0;
end
figure;
for i = 4:1:7
           subplot(4,1,i - 3);
           %触发元素的指标序列
           Index = unique(Trig2{i}); 
           %触发元素序列
           Sequence = t(Index);
           %触发元素间隔
           Diff = diff(Sequence);
           %
           Nd = ['node',num2str(i)];
           %触发元素对应的其与上一触发元素的间隔(除去第一个触发元素)
           bar(Sequence(2:end), Diff); 
           hold on;
           scatter(Sequence(2:end), Diff, 'o');
           legmark = 8;
           
           set(gca,'FontSize', 16);
           title(Nd);
           %触发元素集合的势
           Number2{i} = length(Sequence);
           
           Index = [];
           Sequence = [];
           Diff = [];
     
end

xlabel('$t(s)$', 'Interpreter', 'latex');
ylabel('Successful transmission interval $(s)$', 'Interpreter', 'latex');
set(gcf,'unit','normalized','position',[0.2,0.2,0.24,0.96]);
% save('D:\matlab 2020\bin\control\obsever\observer system\Number.mat', 'Number');
%%

Num_loss_PETM = Num_loss;
save('D:\matlab 2020\bin\control\hybrid\Num_loss_PETM.mat', 'Num_loss_PETM');

%%
for i = 4:1:7
    Index_PETM{i} = unique(Trig1{i});
    
end
Inter_PETM45 = intersect(Index_PETM{4},Index_PETM{5});
Inter_PETM46 = intersect(Index_PETM{4},Index_PETM{6});
Inter_PETM47 = intersect(Index_PETM{4},Index_PETM{7});
Inter_PETM56 = intersect(Index_PETM{5},Index_PETM{6});
Inter_PETM57 = intersect(Index_PETM{5},Index_PETM{7});
Inter_PETM67 = intersect(Index_PETM{6},Index_PETM{7});

N_Inter_PETM45 = length(Inter_PETM45);
N_Inter_PETM46 = length(Inter_PETM46);
N_Inter_PETM47 = length(Inter_PETM47);
N_Inter_PETM56 = length(Inter_PETM56);
N_Inter_PETM57 = length(Inter_PETM57);
N_Inter_PETM67 = length(Inter_PETM67);

save('D:\matlab 2020\bin\control\hybrid\N_Inter_PETM45.mat', 'N_Inter_PETM45');
save('D:\matlab 2020\bin\control\hybrid\N_Inter_PETM46.mat', 'N_Inter_PETM46');
save('D:\matlab 2020\bin\control\hybrid\N_Inter_PETM47.mat', 'N_Inter_PETM47');
save('D:\matlab 2020\bin\control\hybrid\N_Inter_PETM56.mat', 'N_Inter_PETM56');
save('D:\matlab 2020\bin\control\hybrid\N_Inter_PETM57.mat', 'N_Inter_PETM57');
save('D:\matlab 2020\bin\control\hybrid\N_Inter_PETM67.mat', 'N_Inter_PETM67');
%%
num = zeros(7,1);
for i = 1:1:7
    num(i) = length(unique(Rhos{i})) - 1; 
    
end

%%
% figure;
% vals = [];
% Y = '';
% for i = 1:1:7
%     for j = 1:1:7
%         if neighbor(j,i,A) == 1
%             Ed = ['edge','(',num2str(i),',',num2str(j),')'];
%             
%             Y = {Y,Ed};
%         end
%     end
% end
% 
figure;
all = length(t);
X = categorical({'node4','node5','node6','node7'});
X = reordercats(X,{'node4','node5','node6','node7'});
vals = [5135, 5226, 5286, 5325;1570, 1604, 1641, 1571];
b = bar(X,vals,0.4,'c');
xtips1 = b(1).XEndPoints;
ytips1 = b(1).YEndPoints;
labels1 = string(b(1).YData);
text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
xtips2 = b(2).XEndPoints;
ytips2 = b(2).YEndPoints;
labels2 = string(b(2).YData);
text(xtips2,ytips2,labels2,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
ylabel(' Size of the data/(bit)');
b(1).FaceColor = 'flat';
b(1).CData(1,:) = [1 0 0];
b(1).CData(2,:) = [1 0 0];
b(1).CData(3,:) = [1 0 0];
b(1).CData(4,:) = [1 0 0];
b(1).CData(5,:) = [1 0 0];
b(1).CData(6,:) = [1 0 0];
b(1).CData(7,:) = [1 0 0];
b(1).CData(8,:) = [1 0 0];
legend('number of triggering events','number of packet losses');

%%
for i = 4:1:7
    for j = 4:1:7
        if neighbor(j,i,A) == 1
           figure;
           plot(t(1:end - 1), Errors{i}{j}(:,1), '-', 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
           hold on
           plot(t(1:end - 1), Bounds{i}{j}(:,1), '-.', 'LineWidth', 2, 'Color', [0.9290 0.6940 0.1250]);
           hold on
           Ed = ['edge','(',num2str(i),',',num2str(j),')'];
           ylabel('error,bound','Interpreter','latex');
           xlim([0,430]);
           set(gca,'FontSize', 16);
           legend('error','bound');
           title(Ed);
        end
        
    end
    
end

%%
figure(5);
subplot(3,1,1)
plot(t(1:end - 1), Taos{4}(:,1), '-', 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
ylabel('$\tau_{4}^{1}$(m/s)','Interpreter','latex');
xlim([0,430]);
set(gca,'FontSize', 16);
legend('USV4');
subplot(3,1,2)
plot(t(1:end - 1), Taos{4}(:,2), '-', 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
ylabel('$\tau_{4}^{2}$(m/s)','Interpreter', 'latex');
xlim([0,430]);
set(gca,'FontSize', 16);
subplot(3,1,3)
plot(t(1:end - 1), Taos{4}(:,3), '-', 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
xlabel('$t$(s)','Interpreter', 'latex');
ylabel('$\tau_{4}^{3}$(rad/s)', 'Interpreter', 'latex');
xlim([0,430]);
set(gca,'FontSize', 16);

figure(6);
subplot(3,1,1)
plot(t(1:end - 1), Taos{5}(:,1), '-', 'LineWidth', 2, 'Color', [0.9290 0.6940 0.1250]);
ylabel('$\tau_{5}^{1}$(m/s)','Interpreter','latex');
xlim([0,430]);
set(gca,'FontSize', 16);
legend('USV5');
subplot(3,1,2)
plot(t(1:end - 1), Taos{5}(:,2), '-', 'LineWidth', 2, 'Color', [0.9290 0.6940 0.1250]);
ylabel('$\tau_{5}^{2}$(m/s)','Interpreter', 'latex');
xlim([0,430]);
set(gca,'FontSize', 16);
subplot(3,1,3)
plot(t(1:end - 1), Taos{5}(:,3), '-', 'LineWidth', 2, 'Color', [0.9290 0.6940 0.1250]);
xlabel('$t$(s)','Interpreter', 'latex');
ylabel('$\tau_{5}^{3}$(rad/s)', 'Interpreter', 'latex');
xlim([0,430]);
set(gca,'FontSize', 16);

figure(7);
subplot(3,1,1)
plot(t(1:end - 1), Taos{6}(:,1), '-', 'LineWidth', 2, 'Color', [0.4940 0.1840 0.5560]);
ylabel('$\tau_{6}^{1}$(m/s)','Interpreter','latex');
xlim([0,430]);
set(gca,'FontSize', 16);
legend('USV6');
subplot(3,1,2)
plot(t(1:end - 1), Taos{6}(:,2), '-', 'LineWidth', 2, 'Color', [0.4940 0.1840 0.5560]);
ylabel('$\tau_{6}^{2}$(m/s)','Interpreter', 'latex');
xlim([0,430]);
set(gca,'FontSize', 16);
subplot(3,1,3)
plot(t(1:end - 1), Taos{6}(:,3), '-', 'LineWidth', 2, 'Color', [0.4940 0.1840 0.5560]);
xlabel('$t$(s)','Interpreter', 'latex');
ylabel('$\tau_{6}^{3}$(rad/s)', 'Interpreter', 'latex');
xlim([0,430]);
set(gca,'FontSize', 16);

figure(8);
subplot(3,1,1)
plot(t(1:end - 1), Taos{7}(:,1), '-', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
ylabel('$\tau_{7}^{1}$(m/s)','Interpreter','latex');
xlim([0,430]);
set(gca,'FontSize', 16);
legend('USV7');
subplot(3,1,2)
plot(t(1:end - 1), Taos{7}(:,2), '-', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
ylabel('$\tau_{7}^{2}$(m/s)','Interpreter', 'latex');
xlim([0,430]);
set(gca,'FontSize', 16);
subplot(3,1,3)
plot(t(1:end - 1), Taos{7}(:,3), '-', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
xlabel('$t$(s)','Interpreter', 'latex');
ylabel('$\tau_{7}^{3}$(rad/s)', 'Interpreter', 'latex');
xlim([0,430]);
set(gca,'FontSize', 16);

%%

Number1 = [5135, 5226, 5286, 5325];
Num_loss = [1570, 1604, 1641, 1571];
save('D:\matlab 2020\bin\control\hybrid\Number1.mat', 'Number1');
save('D:\matlab 2020\bin\control\hybrid\Num_loss.mat', 'Num_loss');

%%
figure;
X = categorical({'node4','node5','node6','node7'});
X = reordercats(X,{'node4','node5','node6','node7'});
X = reordercats(X,{'node4','node5','node6','node7'});
vals = [7167, 7167, 7167, 7167;5146, 5083, 5381, 5270;5135, 5226, 5286, 5325];
b = bar(X,vals,0.4,'c');
xtips1 = b(1).XEndPoints;
ytips1 = b(1).YEndPoints;
labels1 = string(b(1).YData);
text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
xtips2 = b(2).XEndPoints;
ytips2 = b(2).YEndPoints;
labels2 = string(b(2).YData);
text(xtips2,ytips2,labels2,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
xtips3 = b(3).XEndPoints;
ytips3 = b(3).YEndPoints;
labels3 = string(b(3).YData);
text(xtips3,ytips3,labels3,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
ylabel(' Total broadcasting numbers');
b(1).FaceColor = 'flat';
b(1).CData(1,:) = [1 0 0];
b(1).CData(2,:) = [1 0 0];
b(1).CData(3,:) = [1 0 0];
b(1).CData(4,:) = [1 0 0];
b(1).CData(5,:) = [1 0 0];
b(1).CData(6,:) = [1 0 0];
b(1).CData(7,:) = [1 0 0];
b(1).CData(8,:) = [1 0 0];
legend('ISDM','PETM','DIPETM');

%%
figure;
X = categorical({'node4','node5','node6','node7'});
X = reordercats(X,{'node4','node5','node6','node7'});
X = reordercats(X,{'node4','node5','node6','node7'});
X = reordercats(X,{'node4','node5','node6','node7'});
vals = [0, (3521 / 5083) * 100, (3480 / 5381) * 100, (3933 / 5270) * 100;(3521 / 5146) * 100, 0, (3977 / 5381) * 100, (3274 / 5270) * 100;(3480 / 5146) * 100, (3977 / 5083) * 100, 0, (3694 / 5270) * 100;(3933 / 5146) * 100, (3274 / 5083) * 100, (3694 / 5381) * 100, 0];
b = bar(X,vals,0.4,'c');
xtips1 = b(1).XEndPoints;
ytips1 = b(1).YEndPoints;
labels1 = string(b(1).YData);
text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
xtips2 = b(2).XEndPoints;
ytips2 = b(2).YEndPoints;
labels2 = string(b(2).YData);
text(xtips2,ytips2,labels2,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
xtips3 = b(3).XEndPoints;
ytips3 = b(3).YEndPoints;
labels3 = string(b(3).YData);
text(xtips3,ytips3,labels3,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
xtips4 = b(4).XEndPoints;
ytips4 = b(4).YEndPoints;
labels4 = string(b(4).YData);
text(xtips4,ytips4,labels4,'HorizontalAlignment','center',...
'VerticalAlignment','bottom')
ylabel(' INBR under the PETM');
b(1).FaceColor = 'flat';
b(1).CData(1,:) = [1 0 0];
b(1).CData(2,:) = [1 0 0];
b(1).CData(3,:) = [1 0 0];
b(1).CData(4,:) = [1 0 0];
b(1).CData(5,:) = [1 0 0];
b(1).CData(6,:) = [1 0 0];
b(1).CData(7,:) = [1 0 0];
b(1).CData(8,:) = [1 0 0];
legend('interfered by node4','interfered by node5','interfered by node6','interfered by node7');

%%




