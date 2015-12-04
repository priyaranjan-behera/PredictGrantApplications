XNN = transpose(Binary_All(:,1:100));
YNN = transpose(Binary_All(:,101));
[X,Y,T,AUC,OPTROCPT] = perfcurve(YNN,NeuralNet_outputs,1);
threshold = T((X==OPTROCPT(1))&(Y==OPTROCPT(2)));
A = zeros(size(YNN));
for i = 1:size(YNN,2)
    if (NeuralNet_outputs(i) < threshold)
        A(i) = 0;
    else
        A(i) = 1;
    end
end
confusionmat(YNN, A)
plotconfusion(YNN,A)
plotroc(YNN, NeuralNet_outputs);