function [ StatArray ] = findStats( PropertyName, ProcessedData, ColumnArray )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
StatArray = zeros(size(ProcessedData,1),5);
%1.Max 2.Mean 3.Std
for k=1:size(ProcessedData,1)
temp = ProcessedData(k,ColumnArray);
StatArray(k,1) = max(ProcessedData(k,ColumnArray));
StatArray(k,2) = min(ProcessedData(k,ColumnArray));
StatArray(k,3) = mean(temp(~isnan(temp)));
StatArray(k,4) = median(temp(~isnan(temp)));
StatArray(k,5) = sum(temp(~isnan(temp)));
%StatArray(k,3) = mean(ProcessedData(k,ColumnArray));
%StatArray(k,4) = median(ProcessedData(k,ColumnArray));
end

fig = figure(randi([1 10000],1,1))
set(fig,'units','normalized','outerposition',[0 0 1 1])
subplot(2,3,1)
gscatter(1:size(ProcessedData,1), StatArray(:,1), ProcessedData(:,2));
title(strcat(PropertyName, ' Max Plot'));

subplot(2,3,2)
gscatter(1:size(ProcessedData,1), StatArray(:,2), ProcessedData(:,2));
title(strcat(PropertyName, ' Min Plot'));

subplot(2,3,3)
gscatter(1:size(ProcessedData,1), StatArray(:,3), ProcessedData(:,2));
title(strcat(PropertyName, ' Mean Plot'));

subplot(2,3,4)
gscatter(1:size(ProcessedData,1), StatArray(:,4), ProcessedData(:,2));
title(strcat(PropertyName, ' Median Plot'));

subplot(2,3,5)
gscatter(1:size(ProcessedData,1), StatArray(:,5), ProcessedData(:,2));
title(strcat(PropertyName, ' Sum Plot'));



fig = figure(randi([1 10000],1,1))
set(fig,'units','normalized','outerposition',[0 0 1 1])
subplot(2,3,1)
histogram(StatArray(ProcessedData(:,2)==1,1));
hold on
histogram(StatArray(ProcessedData(:,2)==0,1));
hold off
legend('Success', 'Failure')
title(strcat(PropertyName, ' Max Hist'));

subplot(2,3,2)
gscatter(1:size(ProcessedData,1), StatArray(:,2), ProcessedData(:,2));
histogram(StatArray(ProcessedData(:,2)==1,2));
hold on
histogram(StatArray(ProcessedData(:,2)==0,2));
hold off
legend('Success', 'Failure')
title(strcat(PropertyName, ' Min Hist'));

subplot(2,3,3)
histogram(StatArray(ProcessedData(:,2)==1,3));
hold on
histogram(StatArray(ProcessedData(:,2)==0,3));
hold off
legend('Success', 'Failure')
title(strcat(PropertyName, ' Mean Hist'));

subplot(2,3,4)
histogram(StatArray(ProcessedData(:,2)==1,4));
hold on
histogram(StatArray(ProcessedData(:,2)==0,4));
hold off
legend('Success', 'Failure')
title(strcat(PropertyName, ' Median Hist'));

subplot(2,3,5)
histogram(StatArray(ProcessedData(:,2)==1,5));
hold on
histogram(StatArray(ProcessedData(:,2)==0,5));
hold off
legend('Success', 'Failure')
title(strcat(PropertyName, ' Sum Hist'));
end

