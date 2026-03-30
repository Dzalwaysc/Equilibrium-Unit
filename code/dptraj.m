function [desPos, desPosd, desPosdd] = dptraj(r, rTra, rTrad, rTradd, t)
    for i=1:length(t)
        % 位置
        A = reshape(rTra(i,1:4), [2,2]);
        b = rTra(i, 5:6);
        pos = r*A'+b;
        % 位置的一阶导
        Ad = reshape(rTrad(i,1:4), [2,2]);
        bd = rTrad(i, 5:6);
        posd = r*Ad'+bd;
        % 位置的二阶导
        Add = reshape(rTradd(i,1:4), [2,2]);
        bdd = rTradd(i, 5:6);
        posdd = r*Add'+bdd;
        
        % 给每个智能体赋值
        for j=1:size(r,1)
            desPos{j}(i,:) = pos(j,:);
            desPosd{j}(i,:) = posd(j,:);
            desPosdd{j}(i,:) = posdd(j,:);
        end
    end
end