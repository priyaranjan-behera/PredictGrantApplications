function [p] = processNumeric( s , p , a, u)
asize = size(a,2);
for k=1:asize
    for i=1:height(s)
        for j=1:size(u,1)
            if(s{i,a(k)} == u(j,1))
                p(i,a(k)) = (j);
                break;
            end
        end
    end
end
end