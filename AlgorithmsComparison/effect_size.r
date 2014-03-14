#--------------------------------------------------------------------------
#http://mentalmodels.princeton.edu/skhemlani/2012/09/05/orddom-package-for-r/
#http://www.inside-r.org/node/91360
#http://doofussoftware.blogspot.com.br/2012/07/measuring-effect-size-with-vargha.html

# Set Workspace
setwd("C:/Users/Igor/SkyDrive/FSE/summary/4_1-Analysis_Algorithms_Comparison")  # note / instead of \ in window
getwd() #see actual workspace

# Load Required Libraries
library(psych)
library(orddom)

#Load Data
dataCSV <- read.csv2('ATest_AllAlgorithms_MCC_F05Changed_AllDataset.csv',dec=".")

#Column names #1-Dataset, 2-BAG_F05, 3-BAG_MCC, 4-DT_F05, 5-DT_MCC, 6-J48_F05, 7-J48_MCC, 8-NB_F05, 9-NB_MCC, 10-SL_F05, 11-SL_MCC, 12-SMO_F05, 13-SMO_MCC
#BoxPlot
boxplot(dataCSV[,2],dataCSV[,4],dataCSV[,6],dataCSV[,8],dataCSV[,10],dataCSV[,12],ylab="F.05 Changed Class",names=c("Bag","DT","J48","NB","SL","SMO"), main="F.05 Measure to Changed class, all Metrics, considering all projects")
boxplot(dataCSV[,3],dataCSV[,5],dataCSV[,7],dataCSV[,9],dataCSV[,11],dataCSV[,13],ylab="MCC",names=c("Bag","DT","J48","NB","SL","SMO"), main="MCC, all Metrics, considering all projects")

#Vargha and Delaney's Â12 Test - Bag X DT
orddom(dataCSV[,2],dataCSV[,4]);
orddom(dataCSV[,3],dataCSV[,5]);
#If you want to run deltaCliff analysis 
#delta_gr(dataCSV[,2],dataCSV[,4]);

#Vargha and Delaney's Â12 Test - Bag X J48
orddom(dataCSV[,2],dataCSV[,6]);
orddom(dataCSV[,3],dataCSV[,7]);

#Vargha and Delaney's Â12 Test - Bag X NB
orddom(dataCSV[,2],dataCSV[,8]);
orddom(dataCSV[,3],dataCSV[,9]);

#Vargha and Delaney's Â12 Test - Bag X SL
orddom(dataCSV[,2],dataCSV[,10]);
orddom(dataCSV[,3],dataCSV[,11]);

#Vargha and Delaney's Â12 Test - Bag X SMO
orddom(dataCSV[,2],dataCSV[,12]);
orddom(dataCSV[,3],dataCSV[,13]);