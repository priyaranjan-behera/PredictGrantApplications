# CSC522_PredictGrantApplications
Project done for the Automated Learning and Data Analysis course.

Directions for Running the Files:

Files should be run in the order mentioned below.

Preprocessing: (Skip these steps to save time by using the *.mat files provided for each of the encoding methodologies.
1. Indexing.m
2. FeatureCreationAndPlot.m
3. CreateCategoricalData.m / CreateBinaryEncodedData.m / CreateProbabilisticEncodedData.m - Depending on the type of encoding preferred.

Classifications:
Most of the classifications was done using the classificationLearner and nntool toolbox in Matlab. For which the data obtained above are imported ans used.
1. DecisionTreeTrain.m
2. RandomForestTrain.m
3. EvaluateNeuralNet.m - To be used after creating a neural network in nntool.


Summary of the files included in the code:

Indexing.m - In the file we extracted data from the given .csv file into Matlab and performed indexing of the categorical attributes present in the data set.

myUnique.m - This file contains a Matlab function to find unique values in an attribute field.

processString.m - This file contains a Matlab function to add indexed numbers to the categorical data in place of existing string values.

processNumeric.m - This files contains a Matlab function to add indexed numbers to the categorical data in place of existing numerical values.

FeatureCreationAndPlot.m - This file contains Matlab code to aggregate the required attributes and plot the values of the attributes to check if there is a correlation of the values to the output.

CreateCategoricalData.m - This file contains matlab code to create the final versions of training and testing data for categorical variables. Indexing.m and FeatureCreationAndPlot.m are pre-requisites.


CreateBinaryEncodedData.m - This file contains matlab code to create the final versions of training and testing data with binary encoding. Indexing.m and FeatureCreationAndPlot.m are pre-requisites.


CreateProbabilisticEncodedData.m - This file contains matlab code to create the final versions of training and testing data probabilistic encoding. Indexing.m and FeatureCreationAndPlot.m are pre-requisites.

findStats.m - It contains a Matlab function to create aggregated features and plot histogram and scatter plots for an attribute.

DecisionTreeTrain.m - It contains Matlab code to train a simple decision tree.

RandomForestTrain.m - It contains Matlab code to train a RandomForest classifier and further determine important parameters which determine an application's success.

EvaluateNeuralNet.m - It contains Matlab code to evaluate the effectiveness of a Neural Network classifier after it is build and trained using nntool.

8000CategoricalData.mat - The final data which is obtained after the pre-processing steps to be used for classifications.

8000BinaryEncodedData.mat - The final data which is obtained after the pre-processing steps for obtaining Binary Encoded Data to be used for classifications.

8000ProbabilisticEncodedData.mat - The final data which is obtained after the pre-processing steps for obtaining Probabilistic Encoded Data to be used for classifications.