XData = ProcessedData(:,3); %SponsorCode(1) - Categorical
XData = horzcat(XData, ProcessedData(:,4)); %Grant Category(2) - Categorical
XData = horzcat(XData, ProcessedData(:,5)); %Contract Value(3) - Categorical
XData = horzcat(XData, DeptStatArray(:,1:2)); %Department No. Max(4) and Min(5)- Categorical
XData = horzcat(XData, RolesStatArray(:,1:2)); %Roles Max(6) and Min(7)- Categorical
XData = horzcat(XData, CountriesStatArray(:,1:2)); %Countries Max(8) and Min(9)- Categorical
XData = horzcat(XData, HomeLanguageStatArray(:,1:2)); %Home Language Max(10) and Min(11)- Categorical
XData = horzcat(XData, FacultyStatArray(:,1:2)); %Home Language Max(12) and Min(13)- Categorical
XData = horzcat(XData, App_month); %Application Month (14) - Ordinal
XData = horzcat(XData, App_year); %Application Year (15) - Ordinal



XData = horzcat(XData, GradeLevelStatArray(:,1:5)); %Home Language Max(16),Min(17), Mean(18), Median(19), Sum(20)- Ratio
XData = horzcat(XData, SuccessfulGrantsStatArray(:,1:5)); %Successful Grants Max(21),Min(22), Mean(23), Median(24), Sum(25)- Ratio
XData = horzcat(XData, UnsuccessfulGrantsStatArray(:,1:5)); %Unsuccessful Max(26),Min(27), Mean(28), Median(29), Sum(30)- Ratio
XData = horzcat(XData, AStarJournalStatArray(:,1:5)); %A Start Journals Max(31),Min(32), Mean(33), Median(34), Sum(35)- Ratio
XData = horzcat(XData, AJournalStatArray(:,1:5)); %A Journals Max(36),Min(37), Mean(38), Median(39), Sum(40)- Ratio
XData = horzcat(XData, BJournalStatArray(:,1:5)); %B Journals Max(41),Min(42), Mean(43), Median(44), Sum(45)- Ratio
XData = horzcat(XData, CJournalStatArray(:,1:5)); %C Journals Max(46),Min(47), Mean(48), Median(49), Sum(50)- Ratio


XData = horzcat(XData, ProcessedData(:,2));

ordering = randperm(size(XData,1));
X_All = XData(ordering, :);

Train_Size = (8 * size(X_All,1) / 10);

X_Train = X_All(1:Train_Size,:);
%X_Test = setdiff(XData, X_Train, 'rows');
X_Test = X_All(Train_Size+1:size(X_All,1),:);



