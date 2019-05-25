# Codebook for UCI HAR Dataset
See [the HAR site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) for details of the source datasets.

## Summary
The script creates two datasets, acc_gyro and acc_gyro_means_by_activty_subject, using data fro the UCI HAR dataset of acceleration and gyroscope measurements. Both datasets contain the 66 variables listed below. acc_gyro shows the original measurements and acc_gyro_means_by_activity_subject calculates the mean of each variable, grouped by both activity and subject. See [the notebook](codebook.nb.html) for output of the script.

## run_analysis.R
This script uses the following datasets
* features.txt
    * the list of variable names, used to create column names
* activity_labels.txt
    * the list of activity names, used to add descriptive label to datasets
* test/X_test.txt 
    * test data of acceleration and gyroscope measurements
* test/Y_test.txt 
    * test subjects
* train/X_train.txt 
    * training data of acceleration and gyroscope measurements
* train/Y_train.txt 
    * training subjects

## run_analsys.R steps
* load the UCI datasets
* extracts the variables containsing mean() or std()
* applies the features names to the training/test datasets and select only mean()/std() variables
* inner_joins the activity label dataset to the training/test datasets
* merge the subject id to the all_gyro set, group by activity and subject and summarize the average for each varabiel
* write the summarized result to tidy_summary.txt


### Variables
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tGravityAccMag-mean()
* tGravityAccMag-std()
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()
* tBodyGyroMag-mean()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z
* fBodyAccMag-mean()
* fBodyAccMag-std()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()

