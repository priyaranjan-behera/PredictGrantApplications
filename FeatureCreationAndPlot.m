[ DeptStatArray ] = findStats( 'Department', ProcessedData, DeptNumsArray );
[ SponsorStatArray ] = findStats( 'SponsorCode ', ProcessedData, [3] );
[ GrantCategoryStatArray ] = findStats( 'GrantCategoryCode ', ProcessedData, [4] );
[ ContractValueStatArray ] = findStats( 'ContractValueBand ', ProcessedData, [5] );
[ RolesStatArray ] = findStats( 'Roles ', ProcessedData, RolesArray );
[ CountriesStatArray ] = findStats( 'Countries ', ProcessedData, CountriesArray );
[ HomeLanguageStatArray ] = findStats( 'Home Language ', ProcessedData, HomeLangsArray );
[ GradeLevelStatArray ] = findStats( 'GradeLevel ', ProcessedData, GradeLevelsArray );
[ FacultyStatArray ] = findStats( 'Faculty ', ProcessedData, FacultyNumsArray );
%[ RFCDStatArray ] = findStats( 'RFCD ', ProcessedData, RFCDArray );
%[ SEOStatArray ] = findStats( 'SEO ', ProcessedData, SEOArray );
[ SuccessfulGrantsStatArray ] = findStats( 'Successful Grants ', ProcessedData, SuccessfulGrantsArray );
[ UnsuccessfulGrantsStatArray ] = findStats( 'Unsuccessful Grants ', ProcessedData, UnsuccessfulGrantsArray );
[ AStarJournalStatArray ] = findStats( 'AStar Journals ', ProcessedData, AStarJournalArray );
[ AJournalStatArray ] = findStats( 'A Journals ', ProcessedData, AJournalArray );
[ BJournalStatArray ] = findStats( 'B Journals ', ProcessedData, BJournalArray );
[ CJournalStatArray ] = findStats( 'C Journals ', ProcessedData, CJournalArray );


RFCDMax = zeros(size(ProcessedData,1),1);
RFCDMin = zeros(size(ProcessedData,1),1);

for k=1:size(ProcessedData,1)
[MaxPercent,MaxIndex] = max(ProcessedData(k,RFCDPercentArray));
RFCDMax(k) = ProcessedData(k,RFCDPercentArray(MaxIndex)-1);

[MinPercent,MinIndex] = min(ProcessedData(k,RFCDPercentArray));
RFCDMin(k) = ProcessedData(k,RFCDPercentArray(MinIndex)-1);
end

SEOMax = zeros(size(ProcessedData,1),1);
SEOMin = zeros(size(ProcessedData,1),1);

for k=1:size(ProcessedData,1)
[MaxPercent,MaxIndex] = max(ProcessedData(k,SEOPercentArray));
SEOMax(k) = ProcessedData(k,SEOPercentArray(MaxIndex)-1);

[MinPercent,MinIndex] = min(ProcessedData(k,SEOPercentArray));
SEOMin(k) = ProcessedData(k,SEOPercentArray(MinIndex)-1);
end

figure(randi([1 10000],1,1))
subplot(1,2,1)
gscatter(1:size(ProcessedData,1), RFCDMax, ProcessedData(:,2));
title(strcat('RFCD Max Plot'));

subplot(1,2,2)
gscatter(1:size(ProcessedData,1), RFCDMin, ProcessedData(:,2));
title(strcat('RFCD Min Plot'));

figure(randi([1 10000],1,1))
subplot(1,2,1)
gscatter(1:size(ProcessedData,1), SEOMax, ProcessedData(:,2));
title(strcat('SEO Max Plot'));

subplot(1,2,2)
gscatter(1:size(ProcessedData,1), SEOMin, ProcessedData(:,2));
title(strcat('SEO Min Plot'));