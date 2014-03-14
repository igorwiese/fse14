#--------------------------------------------------------------------------
#http://mentalmodels.princeton.edu/skhemlani/2012/09/05/orddom-package-for-r/
#http://www.inside-r.org/node/91360
#http://doofussoftware.blogspot.com.br/2012/07/measuring-effect-size-with-vargha.html

# Set Workspace
setwd("C:/Users/Igor/SkyDrive/FSE/summary/4_2-AllDatasets_Together_DimensionComparison")  # note / instead of \ in windows
getwd() #see actual workspace
# setwd("/usr/rob/mydir") # on linux
#--------------------------------------------------------------------------

#--------------------------------------------------------------------------
# Load Required Libraries
library(psych)
library(orddom)
#--------------------------------------------------------------------------
#Load Data
#dataCSV <- read.csv2('ATest_AllMetrics_MCC_F05Changed_AllDataset.csv',dec=".")
#dataCSV <- read.csv2('ATest_AllMetrics_MCC_F05Changed_G1.csv',dec=".")
#dataCSV <- read.csv2('ATest_AllMetrics_MCC_F05Changed_G2.csv',dec=".")
dataCSV <- read.csv2('ATest_AllMetrics_MCC_F05Changed_G3.csv',dec=".")

summary(dataCSV)

#Column names #1-Dataset, 2-ALLF05, 3-ALLMCC, 4-AF05, 5-AMCC, 6-PF05, 7-PMCC, 8-SF05, 9-SMCC, 10-S_AF05, 11-S_AMCC, 12-S_PF05, 13-S_PMCC, 14-A_PF05, 15-A_PMCC
#BoxPlot
boxplot(dataCSV[,2],dataCSV[,4],dataCSV[,6],dataCSV[,8],dataCSV[,10],dataCSV[,12],dataCSV[,14],ylab="F.05 Changed Class",names=c("ALL","A","P","S","S_A","S_P","A_P"), main="F.05 Measure to Changed class, using Bagging, considering all projects")
boxplot(dataCSV[,3],dataCSV[,5],dataCSV[,7],dataCSV[,9],dataCSV[,11],dataCSV[,13],dataCSV[,15],ylab="MCC",names=c("ALL","A","P","S","S_A","S_P","A_P"), main="MCC, using Bagging, considering all projects")

#Vargha and Delaney's Â12 Test - ALL X A
orddom(dataCSV[,2],dataCSV[,4]);
orddom(dataCSV[,3],dataCSV[,5]);
#deltaCliff analysis
#delta_gr(dataCSV[,2],dataCSV[,4]);

#Vargha and Delaney's Â12 Test - ALL X P
orddom(dataCSV[,2],dataCSV[,6]);
orddom(dataCSV[,3],dataCSV[,7]);

#Vargha and Delaney's Â12 Test - ALL X S
orddom(dataCSV[,2],dataCSV[,8]);
orddom(dataCSV[,3],dataCSV[,9]);

#Vargha and Delaney's Â12 Test - ALL X S_A
orddom(dataCSV[,2],dataCSV[,10]);
orddom(dataCSV[,3],dataCSV[,11]);

#Vargha and Delaney's Â12 Test - ALL X S_P
orddom(dataCSV[,2],dataCSV[,12]);
orddom(dataCSV[,3],dataCSV[,13]);

#Vargha and Delaney's Â12 Test - ALL X A_P
orddom(dataCSV[,2],dataCSV[,14]);
orddom(dataCSV[,3],dataCSV[,15]);

############ A ##########

#Vargha and Delaney's Â12 Test - A X P
orddom(dataCSV[,4],dataCSV[,6]);
orddom(dataCSV[,5],dataCSV[,7]);

#Vargha and Delaney's Â12 Test - A X S
orddom(dataCSV[,4],dataCSV[,8]);
orddom(dataCSV[,5],dataCSV[,9]);

#Vargha and Delaney's Â12 Test - A X S_A
orddom(dataCSV[,4],dataCSV[,10]);
orddom(dataCSV[,5],dataCSV[,11]);

#Vargha and Delaney's Â12 Test - A X S_P
orddom(dataCSV[,4],dataCSV[,12]);
orddom(dataCSV[,5],dataCSV[,13]);

#Vargha and Delaney's Â12 Test - A X A_P
orddom(dataCSV[,4],dataCSV[,14]);
orddom(dataCSV[,5],dataCSV[,15]);

############ P ##########

#Vargha and Delaney's Â12 Test - P X S
orddom(dataCSV[,6],dataCSV[,8]);
orddom(dataCSV[,7],dataCSV[,9]);

#Vargha and Delaney's Â12 Test - P X S_A
orddom(dataCSV[,6],dataCSV[,10]);
orddom(dataCSV[,7],dataCSV[,11]);

#Vargha and Delaney's Â12 Test - P X S_P
orddom(dataCSV[,6],dataCSV[,12]);
orddom(dataCSV[,7],dataCSV[,13]);

#Vargha and Delaney's Â12 Test - P X A_P
orddom(dataCSV[,6],dataCSV[,14]);
orddom(dataCSV[,7],dataCSV[,15]);

############ S ##########

#Vargha and Delaney's Â12 Test - S X S_A
orddom(dataCSV[,8],dataCSV[,10]);
orddom(dataCSV[,9],dataCSV[,11]);

#Vargha and Delaney's Â12 Test - S X S_P
orddom(dataCSV[,8],dataCSV[,12]);
orddom(dataCSV[,9],dataCSV[,13]);

#Vargha and Delaney's Â12 Test - S X A_P
orddom(dataCSV[,8],dataCSV[,14]);
orddom(dataCSV[,9],dataCSV[,15]);

############ S_A ##########

#Vargha and Delaney's Â12 Test - S_A X S_P
orddom(dataCSV[,10],dataCSV[,12]);
orddom(dataCSV[,11],dataCSV[,13]);

#Vargha and Delaney's Â12 Test - S_A X A_P
orddom(dataCSV[,10],dataCSV[,14]);
orddom(dataCSV[,11],dataCSV[,15]);

############ S_P ##########

#Vargha and Delaney's Â12 Test - S_P X S_A
orddom(dataCSV[,12],dataCSV[,14]);
orddom(dataCSV[,13],dataCSV[,15]);
