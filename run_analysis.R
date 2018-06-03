## Coursera - Getting and Cleaning Data - Course Project - Week 4

## STEP 1 - Merge the training and the test sets to create one data set ##
## read the test data and column bind
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt") # Subject ID
YTest <- read.table("UCI HAR Dataset/test/Y_test.txt") # Test labels
XTest <- read.table("UCI HAR Dataset/test/X_test.txt") # Test values
testTotal <- cbind(subjectTest, YTest, XTest)

## read the train data and column bind
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt") # Subject ID
YTrain <- read.table("UCI HAR Dataset/train/Y_train.txt") # Training labels
XTrain <- read.table("UCI HAR Dataset/train/X_train.txt") # Training values 
trainTotal <- cbind(subjectTrain, YTrain, XTrain)

## bind rows of test and train
totalData <- rbind(testTotal, trainTotal) 

## Step 2 - Extract only the measurements on the mean and standard deviation for each measurement ##
## read all feature names and grep all with std or mean in their name
features <- read.table("UCI HAR Dataset/features.txt")
requiredColumns <- grep("std|mean", features[,2])

## index totalData on the basis of the features
stdMeanData <- totalData[,c(1,2,requiredColumns + 2)] # +2 to account for first two columns of totalData

## Step 3 - Uses descriptive activity names to name the activities in the data set ##
## read the activity labels and replace numeric values in stdMeanData
labels <- read.table("UCI HAR Dataset/activity_labels.txt")
stdMeanData[, 2] <- labels[stdMeanData[,2], 2]

## Step 4 - Appropriately label the data set with descriptive variable names ##
## extract feature names and provide a name for all columns
fNames <- as.character(features[requiredColumns,2])
colnames(stdMeanData) <- c("ID", "Activity", fNames)

## Step 5 - Tidy data set with the average of each variable for each activity and each subject. ##
## load dplyr library and arrange data over id and activity
library(dplyr)
groupedData <- group_by(stdMeanData, ID, Activity)
tidyData <- summarize_all(groupedData,mean)

## END - write tidy data set to file ## 
write.table(tidyData, "tidyData.txt", row.name=FALSE)
