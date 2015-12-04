UniqueValues = [size(UniqueSponsorCode,1), size(UniqueGrantCategoryCode,1),size(UniqueContractValueBandCode,1),...
    size(UniqueDeptNums,1), size(UniqueDeptNums,1), size(UniqueRoles,1), size(UniqueRoles,1),...
    size(UniqueCountries,1), size(UniqueCountries,1), size(UniqueHomeLangs,1), size(UniqueHomeLangs,1)...
     size(UniqueFacultyNums,1), size(UniqueFacultyNums,1), size(unique(App_month),1), size(unique(App_year),1)];

clear BinarizedData
 
currentSize = 0;
for i=1:size(UniqueValues,2)
    sizeofB = ceil(log2(UniqueValues(i)));
    for j=1:size(XData,1)
        if (~isnan(XData(j,i)))
            tempstr = dec2bin(XData(j,i),sizeofB);
            for k=1:sizeofB
                BinarizedData(j,currentSize + k) = str2double(tempstr(k));
            end
        end
    end
    
    currentSize = size(BinarizedData,2);
end

BinarizedData = horzcat(BinarizedData, XData(:,16:51));

binaryOrdering = randperm(size(BinarizedData,1));
Binary_All = BinarizedData(binaryOrdering, :);

Binary_Train_Size = (8 * size(Binary_All,1) / 10);

Binary_Train = Binary_All(1:Binary_Train_Size,:);
Binary_Test = Binary_All(Binary_Train_Size+1:size(Binary_All,1),:);

