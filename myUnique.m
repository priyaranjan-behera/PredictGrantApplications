function [ y ] = myUnique( x , a)
asize = size(a,2);
y = [];
for i=1:asize
    temp = x(:,a(i));
    if any(ismissing(x(:,a(i))))
        temp(ismissing(temp),:) = []; % remove all missing values
    end
    y = vertcat(y,table2array(temp));
end
y = unique(y);
end