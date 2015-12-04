




tbag = TreeBagger(200,X_Train(:,1:size(X_Train,2)-1), X_Train(:,size(X_Train,2)), 'categorical', 1:15,'Method','classification','oobvarimp', 'on')
oobError(tbag, 'mode', 'ensemble')
[~,order] = sort(tbag.OOBPermutedVarDeltaError)

figure
barh(tbag.OOBPermutedVarDeltaError(order))        % horizontal bar chart
title('Feature Importance Metric')
ax = gca; ax.YTickLabel = order;

figure
barh(tbag.OOBPermutedVarDeltaError(order(size(order,2)-14:size(order,2))))        % horizontal bar chart
title('Feature Importance Metric')
ax = gca; ax.YTickLabel = order(size(order,2)-14:size(order,2));
charorder = fliplr({'Contract Value'; 'Sponsor Code'; 'App Month'; 'App Year'; 'Grant Category'; 'Roles Max'; 'Mean Unsuccessful Grants';'Mean Successful Grant'; 'Max Unsuccessful Grant'; 'Sum Unsuccessful Grants'; 'Department Max'; 'Department Min'; 'Median Unsuccessful Grants';'Max Successful Grants'; 'Sum Successful Grants'});
charorder = flipud(charorder);

figure
barh(tbag.OOBPermutedVarDeltaError(order(size(order,2)-14:size(order,2))))        % horizontal bar chart
title('Feature Importance Metric')
ax = gca; ax.YTickLabel = charorder;