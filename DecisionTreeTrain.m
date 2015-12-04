

%t = fitctree(X_Train(:,1:size(X_Train,2)-1), X_Train(:,size(X_Train,2)), 'categorical', 1:15);
t = fitctree(X_Train(:,1:size(X_Train,2)-1), X_Train(:,size(X_Train,2)));

count = 0;
Test_Output = zeros(size(X_Test,1),1);
for i=1:size(X_Test,1)
temp = predict(t, X_Test(i,1:size(X_Test,2)-1));
Test_Output(i,1) = temp;
if temp == X_Test(i,size(X_Test,2))
count = count + 1;
end
end

confusionmat(X_Test(:,size(X_Test,2)),Test_Output)


