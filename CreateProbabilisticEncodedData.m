XProbData = catProb(ProcessedData(:,3),UniqueSponsorCode,ProcessedData(:,2)); %SponsorCode(1) - Categorical
XProbData = horzcat(XProbData, catProb(ProcessedData(:,4),UniqueGrantCategoryCode,ProcessedData(:,2))); %Grant Category(2) - Categorical
XProbData = horzcat(XProbData, catProb(ProcessedData(:,5),UniqueContractValueBandCode,ProcessedData(:,2))); %Contract Value(3) - Categorical
XProbData = horzcat(XProbData, catProb(DeptStatArray(:,1:2),UniqueDeptNums,ProcessedData(:,2))); %Department No. Max(4) and Min(5)- Categorical
XProbData = horzcat(XProbData, catProb(RolesStatArray(:,1:2),UniqueRoles,ProcessedData(:,2))); %Roles Max(6) and Min(7)- Categorical
XProbData = horzcat(XProbData, catProb(CountriesStatArray(:,1:2),UniqueCountries,ProcessedData(:,2))); %Countries Max(8) and Min(9)- Categorical
XProbData = horzcat(XProbData, catProb(HomeLanguageStatArray(:,1:2),UniqueHomeLangs,ProcessedData(:,2))); %Home Language Max(10) and Min(11)- Categorical
XProbData = horzcat(XProbData, catProb(FacultyStatArray(:,1:2),UniqueFacultyNums,ProcessedData(:,2))); %Faculty Max(12) and Min(13)- Categorical
XProbData = horzcat(XProbData, catProbOrd(App_month, unique(App_month),ProcessedData(:,2))); %Application Month (14) - Ordinal
XProbData = horzcat(XProbData, catProbOrd(App_year, unique(App_year),ProcessedData(:,2))); %Application Year (15) - Ordinal



XProbData = horzcat(XProbData, GradeLevelStatArray(:,1:5)); %Home Language Max(16),Min(17), Mean(18), Median(19), Sum(20)- Ratio
XProbData = horzcat(XProbData, SuccessfulGrantsStatArray(:,1:5)); %Successful Grants Max(21),Min(22), Mean(23), Median(24), Sum(25)- Ratio
XProbData = horzcat(XProbData, UnsuccessfulGrantsStatArray(:,1:5)); %Unsuccessful Max(26),Min(27), Mean(28), Median(29), Sum(30)- Ratio
XProbData = horzcat(XProbData, AStarJournalStatArray(:,1:5)); %A Start Journals Max(31),Min(32), Mean(33), Median(34), Sum(35)- Ratio
XProbData = horzcat(XProbData, AJournalStatArray(:,1:5)); %A Journals Max(36),Min(37), Mean(38), Median(39), Sum(40)- Ratio
XProbData = horzcat(XProbData, BJournalStatArray(:,1:5)); %B Journals Max(41),Min(42), Mean(43), Median(44), Sum(45)- Ratio
XProbData = horzcat(XProbData, CJournalStatArray(:,1:5)); %C Journals Max(46),Min(47), Mean(48), Median(49), Sum(50)- Ratio


XProbData = horzcat(XProbData, ProcessedData(:,2));

ordering = randperm(size(XProbData,1));
X_All = XProbData(ordering, :);

Train_Size = (8 * size(X_All,1) / 10);

X_Train = X_All(1:Train_Size,:);
%X_Test = setdiff(XProbData, X_Train, 'rows');
X_Test = X_All(Train_Size+1:size(XProbData,1),:);

