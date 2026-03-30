function path = Min_out(rem,W)
%%
A = W(:,rem);
for i = 1:1:9    
    if A(i) ~= 0
        path = [rem, i];
        break;
    end
end

%%
A = W(:,path(end));
out = 0;
while out == 0
    for i = 1:1:9    
        if A(i) ~= 0
            path = [path, i];
            A = W(:,path(end));
            break;
        end

        if i == 9 
            out = 1;

        end
    end
end

end
