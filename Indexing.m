Data = readtable('Grant_Application_Train.csv');
UniqueSponsorCode = unique(Data(:,3));
UniqueGrantCategoryCode = unique(Data(:,4));
UniqueContractValueBandCode = unique(Data(:,5));
RFCDArray = [7,9,11,13,15];
RFCDPercentArray = [8,10,12,14,16];
UniqueRFCDCode = myUnique(Data, RFCDArray);
SEOArray = [17,19,21,23,25];
SEOPercentArray = [18,20,22,24,26];
UniqueSEOCode = myUnique(Data, SEOArray);
RolesArray = [28,43,58,73,88,103,118,133,148,163,178,193,208,223,238];
UniqueRoles = myUnique(Data, RolesArray);
CountriesArray = [30,45,60,75,90,105,120,135,150,165,180,195,210,225,240];
UniqueCountries = myUnique(Data, CountriesArray);
HomeLangsArray = [31,46,61,76,91,106,121,136,151,166,181,196,211,226,241];
UniqueHomeLangs = myUnique(Data, HomeLangsArray);
DeptNumsArray = [32,47,62,77,92,107,122,137,152,167,182,197,212,227,242];
UniqueDeptNums = myUnique(Data, DeptNumsArray);
FacultyNumsArray = [33,48,63,78,93,108,123,138,153,168,183,198,213,228,243];
UniqueFacultyNums = myUnique(Data, FacultyNumsArray);
GradeLevelsArray = [34,49,64,79,94,109,124,139,154,169,184,199,214,229,244];
UniqueGradeLevels = myUnique(Data, GradeLevelsArray);
NumofYearsArray = [35,50,65,80,95,110,125,140,155,170,185,200,215,230,245];
UniqueNumofYears = myUnique(Data, NumofYearsArray);
UniqueYears = [15,10,5,0,20];
SuccessfulGrantsArray = [36,51,66,81,96,111,126,141,156,171,186,201,216,231,246];
UnsuccessfulGrantsArray = [37,52,67,82,97,112,127,142,157,172,187,202,217,232,247];
AStarJournalArray = [38,53,68,83,98,113,128,143,158,173,188,203,218,233,248];
AJournalArray = [39,54,69,84,99,114,129,144,159,174,189,204,219,234,249];
BJournalArray = [40,55,70,85,100,115,130,145,160,175,190,205,220,235,250];
CJournalArray = [41,56,71,86,101,116,131,146,161,176,191,206,221,236,251];



Sample = Data(1:8000,:);
ProcessedData = NaN(size(Sample));
for(i = 1:size(Sample,1))
    ProcessedData(i,2) = Sample{i,2};
    for(j = horzcat(SuccessfulGrantsArray, UnsuccessfulGrantsArray, AStarJournalArray, AJournalArray, BJournalArray, CJournalArray))
        ProcessedData(i,j) = Sample{i,j};
    end
end

App_month = zeros(size(ProcessedData,1),1);
App_year = zeros(size(ProcessedData,1),1);

for i=1:size(ProcessedData,1)
    %Code to process and insert data into the matrix
    t = datetime(Sample{i,6},'InputFormat','dd/MM/yyyy');
    App_month(i) = month(t); %insert into the tables
    App_year(i) = year(t);
end

App_year(App_year == 5) = 2005;
App_year(App_year == 6) = 2006;


ProcessedData = processString(Sample, ProcessedData, 3, UniqueSponsorCode);
ProcessedData = processString(Sample, ProcessedData, 4, UniqueGrantCategoryCode);
ProcessedData = processString(Sample, ProcessedData, 5, UniqueContractValueBandCode);
ProcessedData = processString(Sample, ProcessedData, RolesArray, UniqueRoles);
ProcessedData = processString(Sample, ProcessedData, CountriesArray, UniqueCountries);
ProcessedData = processString(Sample, ProcessedData, HomeLangsArray, UniqueHomeLangs);
ProcessedData = processString(Sample, ProcessedData, GradeLevelsArray, UniqueGradeLevels);
ProcessedData = processNumeric(Sample, ProcessedData, DeptNumsArray, UniqueDeptNums);
ProcessedData = processNumeric(Sample, ProcessedData, FacultyNumsArray, UniqueFacultyNums);
ProcessedData = processNumeric(Sample, ProcessedData, RFCDArray, UniqueRFCDCode);
ProcessedData = processNumeric(Sample, ProcessedData, SEOArray, UniqueSEOCode);

for i = 1 : size(ProcessedData,1)
    for j = GradeLevelsArray
        if ~isnan(ProcessedData(i,j-1)) && isnan(ProcessedData(i,j))
            ProcessedData(i,j) = 0 ;
        end
    end
end


for k=1:size(NumofYearsArray,2)
    for i=1:height(Sample)
        for j=1:size(UniqueNumofYears,1)
            if(strcmp(Sample{i,NumofYearsArray(k)},UniqueNumofYears{j,1}))
                ProcessedData(i,NumofYearsArray(k)) = (UniqueYears(j));
                break;
            end
        end
    end
end