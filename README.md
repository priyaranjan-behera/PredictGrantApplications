# CSC522_PredictGrantApplications
Project done for the Automated Learning and Data Analysis course.

Summary of the files included in the code:

Indexing.m - In the file we extracted data from the given .csv file into Matlab and performed indexing of the categorical attributes present in the data set.

myUnique.m - This file contains a Matlab function to find unique values in an attribute field.

processString.m - This file contains a Matlab function to add indexed numbers to the categorical data in place of existing string values.

processNumeric.m - This files contains a Matlab function to add indexed numbers to the categorical data in place of existing numerical values.

FeatureCreation.m - This file contains Matlab code to aggregate the required attributes and plot the values of the attributes to check if there is a correlation of the values to the output.

CreateCategoricalData.m - This file contains matlab code to create the final versions of training and testing data for categorical variables. Indexing.m and FeatureCreation.m are pre-requisites.


CreateBinaryEncodedData.m - This file contains matlab code to create the final versions of training and testing data with binary encoding. Indexing.m and FeatureCreation.m are pre-requisites.


CreateProbabilisticEncodedData.m - This file contains matlab code to create the final versions of training and testing data probabilistic encoding. Indexing.m and FeatureCreation.m are pre-requisites.

findStats.m - It contains a Matlab function to create aggregated features and plot histogram and scatter plots for an attribute.


