RFCDMax = zeros(size(ProcessedData,1),1);
for k=1:size(ProcessedData,1)
[MaxPercent,MaxIndex] = max(ProcessedData(k,RFCDPercentArray));
RFCDMax(k) = ProcessedData(k,RFCDPercentArray(MaxIndex)-1);
end
SEOMax = zeros(size(ProcessedData,1),1);
for k=1:size(ProcessedData,1)
[MaxPercent,MaxIndex] = max(ProcessedData(k,SEOPercentArray));
SEOMax(k) = ProcessedData(k,SEOPercentArray(MaxIndex)-1);
end
DeptMax = zeros(size(ProcessedData,1),1);
for k=1:size(ProcessedData,1)
DeptMax(k) = mode(ProcessedData(k,DeptNumsArray));
end
FacultyMax = zeros(size(ProcessedData,1),1);
for k=1:size(ProcessedData,1)
FacultyMax(k) = mode(ProcessedData(k,FacultyNumsArray));
end

figure(1);
gscatter(1:size(ProcessedData,1),RFCDMax,ProcessedData(:,2))
figure(2);
gscatter(1:size(ProcessedData,1),SEOMax,ProcessedData(:,2))
figure(3);
gscatter(1:size(ProcessedData,1),DeptMax,ProcessedData(:,2))
figure(4);
gscatter(1:size(ProcessedData,1),FacultyMax,ProcessedData(:,2))
