function via_ = sttraj(Edge_Matrix, r)
    via = [  0,  0;
            10,  0;
            35,  0;
            50,  0
           %  15*cos(-8/16*pi)+70, 15*sin(-8/16*pi)+15;
           %  15*cos(-7/16*pi)+70, 15*sin(-7/16*pi)+15;
           %  15*cos(-6/16*pi)+70, 15*sin(-6/16*pi)+15;
           %  15*cos(-5/16*pi)+70, 15*sin(-5/16*pi)+15;
           %  15*cos(-4/16*pi)+70, 15*sin(-4/16*pi)+15;
           %  15*cos(-3/16*pi)+70, 15*sin(-3/16*pi)+15;
           %  15*cos(-2/16*pi)+70, 15*sin(-2/16*pi)+15;
           %  15*cos(-1/16*pi)+70, 15*sin(-1/16*pi)+15;
           %  15*cos(-0/16*pi)+70, 15*sin(-0/16*pi)+15;
           %  15*cos(1/16*pi)+70, 15*sin(1/16*pi)+15;
           %  15*cos(2/16*pi)+70, 15*sin(2/16*pi)+15;
           %  15*cos(3/16*pi)+70, 15*sin(3/16*pi)+15;
           %  15*cos(4/16*pi)+70, 15*sin(4/16*pi)+15;
           %  15*cos(5/16*pi)+70, 15*sin(5/16*pi)+15;
           %  15*cos(6/16*pi)+70, 15*sin(6/16*pi)+15;
           %  15*cos(7/16*pi)+70, 15*sin(7/16*pi)+15;
           %  15*cos(8/16*pi)+70, 15*sin(8/16*pi)+15;
           %  50, 30;
           %  40, 30;
           %  30, 30;
           %  20, 30;
           %   0, 30;
           % -10, 30;
           % -20, 30
           ];
    for i=1:size(via,1)
        if i==1
            T1{i} = eye(1);
            T2{i} = rot2(0*pi);
        elseif i==2
            T1{i} = eye(1);
            T2{i} = rot2(0*pi);
        elseif i==3
            T1{i} = eye(1);
            T2{i} = rot2(0*pi);
        elseif i==4
            T1{i} = eye(1);
            T2{i} = rot2(0*pi);
        elseif i==5
            T1{i} = eye(1);
            T2{i} = rot2( (-8/16+1/2)*pi);
        elseif i==6
            T1{i} = eye(1);
            T2{i} = rot2( (-7/16+1/2)*pi );
        elseif i==7
            T1{i} = eye(1);
            T2{i} = rot2( (-6/16+1/2)*pi );
        elseif i==8
            T1{i} = eye(1);
            T2{i} = rot2( (-5/16+1/2)*pi );
        elseif i==9
            T1{i} = eye(1);
            T2{i} = rot2( (-4/16+1/2)*pi );
        elseif i==10
            T1{i} = eye(1);
            T2{i} = rot2( (-3/16+1/2)*pi );
        elseif i==11
            T1{i} = eye(1);
            T2{i} = rot2( (-2/16+1/2)*pi );
        elseif i==12
            T1{i} = eye(1);
            T2{i} = rot2( (-1/16+1/2)*pi );
        elseif i==13
            T1{i} = eye(1);
            T2{i} = rot2( (-0/16+1/2)*pi );
        elseif i==14
            T1{i} = eye(1);
            T2{i} = rot2( (1/16+1/2)*pi );
        elseif i==15
            T1{i} = eye(1);
            T2{i} = rot2( (2/16+1/2)*pi );
        elseif i==16
            T1{i} = eye(1);
            T2{i} = rot2( (3/16+1/2)*pi );
        elseif i==17
            T1{i} = eye(1);
            T2{i} = rot2( (4/16+1/2)*pi );
        elseif i==18
            T1{i} = eye(1);
            T2{i} = rot2( (5/16+1/2)*pi );
        elseif i==19
            T1{i} = eye(1);
            T2{i} = rot2( (6/16+1/2)*pi );
        elseif i==20
            T1{i} = eye(1);
            T2{i} = rot2( (7/16+1/2)*pi );
        elseif i==21
            T1{i} = eye(1);
            T2{i} = rot2( (8/16+1/2)*pi );
        elseif i==22
            T1{i} = 1/2*eye(1);
            T2{i} = rot2( (8/16+1/2)*pi );
        elseif i==23
            T1{i} = 1/2*eye(1);
            T2{i} = rot2( (8/16+1/2)*pi );
        elseif i==24
            T1{i} = 1/2*eye(1);
            T2{i} = rot2( (8/16+1/2)*pi );
        elseif i==25
            T1{i} = 1/2*eye(1);
            T2{i} = rot2( (8/16+1/2)*pi );
        elseif i==26
            T1{i} = [1 0.7; 0 0]*2*eye(1);
            T2{i} = rot2( (8/16+1/2)*pi );
        elseif i==27
            T1{i} = [1 0.7; 0 0]*2*eye(1);
            T2{i} = rot2( (8/16+1/2)*pi );
        elseif i==28
            T1{i} = [1 0.7; 0 0]*2*eye(1);
            T2{i} = rot2( (8/16+1/2)*pi );
        end
        via_(i,:) = [vec(T1{i}*T2{i})', via(i,:)];
    end

%     % 查看轨迹具体情况
    figure(2)
    [n,m] = size(Edge_Matrix);
    edge = mod(reshape(find(Edge_Matrix~=0),2,m),n);
    edge(edge==0) = n;
    MarkerSize = 16;
    
    for i=1:size(via,1)
        trashape = r*T2{i}'*T1{i}' + via(i,:);
        for j=1:m
            plot(trashape(edge(:,j),1), trashape(edge(:,j),2), 'k', 'LineWidth', 2); hold on;
        end
        plot(trashape(1,1), trashape(1,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
        plot(trashape(2,1), trashape(2,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
        plot(trashape(3,1), trashape(3,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4660 0.6740 0.1880]);
        plot(trashape(4,1), trashape(4,2), '.', 'MarkerSize', MarkerSize, 'Color', [0 0.4470 0.7410]);
        plot(trashape(5,1), trashape(5,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.8500 0.3250 0.0980]);
        plot(trashape(6,1), trashape(6,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.9290 0.6940 0.1250]);
        plot(trashape(7,1), trashape(7,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.4940 0.1840 0.5560]);
        plot(trashape(8,1), trashape(8,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.6350 0.0780 0.1840]);
        plot(trashape(9,1), trashape(9,2), '.', 'MarkerSize', MarkerSize, 'Color', [0.3010 0.7450 0.9330]);
    end
%     axis equal;
end