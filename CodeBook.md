# Code book in relation [tidyData.txt](tidyData.txt)
This code book describes all the data in the tidyData.txt file and through what steps it was obtained from the raw data.

## Processing steps
The following steps were undertaken to transform the raw data into the tidy data:
1. The training and test sets were merged into a single data set;
2. The columns representing a standard deviation or mean measurement were extracted from the single data set;
3. The integers representing an activity (i.e., 1-6) where replaced with a more decriptive character strings (i.e., walking walking upstairs, walking downstairs, sitting, standing and laying);
4. The dependant variables were named (see below); and
5. Each variable was averaged over each activity and each subject.

## Key identifying values
the first two columns represent the following:
1. ID - the unique identification number for each participant; and
2. Activity - the acticity that the participant was performing.

## Dependant measures/values
All the following collumns represent a dependant value:
- tBodyAcc-mean()-X 
- tBodyAcc-mean()-Y 
- tBodyAcc-mean()-Z 
- tBodyAcc-std()-X 
- tBodyAcc-std()-Y 
- tBodyAcc-std()-Z 
- tGravityAcc-mean()-X
- tGravityAcc-mean()-Y 
- tGravityAcc-mean()-Z 
- tGravityAcc-std()-X 
- tGravityAcc-std()-Y 
- tGravityAcc-std()-Z 
- tBodyAccJerk-mean()-X
- tBodyAccJerk-mean()-Y
- tBodyAccJerk-mean()-Z
- tBodyAccJerk-std()-X 
- tBodyAccJerk-std()-Y 
- tBodyAccJerk-std()-Z
- tBodyGyro-mean()-X 
- tBodyGyro-mean()-Y 
- tBodyGyro-mean()-Z 
- tBodyGyro-std()-X
- tBodyGyro-std()-Y 
- tBodyGyro-std()-Z
- tBodyGyroJerk-mean()-X 
- tBodyGyroJerk-mean()-Y 
- tBodyGyroJerk-mean()-Z 
- tBodyGyroJerk-std()-X
- tBodyGyroJerk-std()-Y 
- tBodyGyroJerk-std()-Z
- tBodyAccMag-mean() 
- tBodyAccMag-std()
- tGravityAccMag-mean()
- tGravityAccMag-std()
- tBodyAccJerkMag-mean()
- tBodyAccJerkMag-std()
- tBodyGyroMag-mean() 
- tBodyGyroMag-std()
- tBodyGyroJerkMag-mean() 
- tBodyGyroJerkMag-std() 
- fBodyAcc-mean()-X 
- fBodyAcc-mean()-Y 
- fBodyAcc-mean()-Z 
- fBodyAcc-std()-X
- fBodyAcc-std()-Y
- fBodyAcc-std()-Z
- fBodyAcc-meanFreq()-X 
- fBodyAcc-meanFreq()-Y 
- fBodyAcc-meanFreq()-Z
- fBodyAccJerk-mean()-X 
- fBodyAccJerk-mean()-Y 
- fBodyAccJerk-mean()-Z 
- fBodyAccJerk-std()-X
- fBodyAccJerk-std()-Y
- fBodyAccJerk-std()-Z
- fBodyAccJerk-meanFreq()-X
- fBodyAccJerk-meanFreq()-Y
- fBodyAccJerk-meanFreq()-Z
- fBodyGyro-mean()-X 
- fBodyGyro-mean()-Y 
- fBodyGyro-mean()-Z 
- fBodyGyro-std()-X
- fBodyGyro-std()-Y
- fBodyGyro-std()-Z
- fBodyGyro-meanFreq()-X 
- fBodyGyro-meanFreq()-Y
- fBodyGyro-meanFreq()-Z 
- fBodyAccMag-mean()
- fBodyAccMag-std()
- fBodyAccMag-meanFreq()
- fBodyBodyAccJerkMag-mean() 
- fBodyBodyAccJerkMag-std()
- fBodyBodyAccJerkMag-meanFreq()
- fBodyBodyGyroMag-mean() 
- fBodyBodyGyroMag-std()
- fBodyBodyGyroMag-meanFreq()
- fBodyBodyGyroJerkMag-mean()
- fBodyBodyGyroJerkMag-std()
- fBodyBodyGyroJerkMag-meanFreq()
