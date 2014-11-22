# Codebook

This is a codebook for course project in Coursera's Getting and Cleaning Data course. This codebook describes how the run_analysis.R file works, what is the source data and what is the output.

## Abstract 
The run_analysis.R file collects, works with and cleans a data set based on files described below. As an output the file produces a data frame which has been built grouping up the data by activity and subject id and calculating average (mean) values for the measurements on the mean and standard deviation for each measurement. 

The source data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:   [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## The Script
The run_analysis runs when you source the script. Prerequisite are the following:  
* UCI Har Dataset directory with all the relevant files can be found from your working directory
* librarys data.table and dplyr are installed and available for use in R.

The script:  
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. The extracting is done by selecting columns with title containing strigns 'mean()' or 'std()'. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Creates data set with the average of each variable for each activity and each subject.  

The source data and the output the file produces are described below.  

## The Source Data
The data is based on a Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The data can be obtained from here: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### The Source Data Attribute Information:
For each record in the dataset it is provided:  
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.  
- Triaxial Angular velocity from the gyroscope.  
- A 561-feature vector with time and frequency domain variables.  
- Its activity label.  
- An identifier of the subject who carried out the experiment.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

##Output  
The script produces a data frame with following details:  
**Row number**: 180 rows  
**Column number**: 68 column  
**File**: The script also writes the data to Tidydataset.txt file in your working directory.  
**Column separator**: The column separator in the file is space.  
**Columns**:  The columns are described below.   

The data frame has been built grouping up the data by activity and subject id and calculating average (mean) values for the measurements on the mean and standard deviation for each measurement.  

### Columns
** activity **
Describes the activity performed by volunteer (subjectid).  
Type: character  
Values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING   

** subjectId **
Described the id number of the volunteer performing the activities  
Type: Integer  
Values: 1-30  

** Measurement columns **  
All the measurement columns are numeric values.  
t prefix is used to denote time.  
f prefix indicates the frequency domain signals  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.  
Features are normalized and bounded within [-1,1].  
The measurement columns are listed below:  

 "tBodyAcc-mean()-X"  
 "tBodyAcc-mean()-Y"  
 "tBodyAcc-mean()-Z"  
 "tGravityAcc-mean()-X"  
 "tGravityAcc-mean()-Y"  
 "tGravityAcc-mean()-Z"  
 "tBodyAccJerk-mean()-X"  
 "tBodyAccJerk-mean()-Y"  
 "tBodyAccJerk-mean()-Z"  
 "tBodyGyro-mean()-X"  
 "tBodyGyro-mean()-Y"  
 "tBodyGyro-mean()-Z"  
 "tBodyGyroJerk-mean()-X"  
 "tBodyGyroJerk-mean()-Y"   
 "tBodyGyroJerk-mean()-Z"  
 "tBodyAccMag-mean()"  
 "tGravityAccMag-mean()"  
 "tBodyAccJerkMag-mean()"  
 "tBodyGyroMag-mean()"  
 "tBodyGyroJerkMag-mean()"  
 "fBodyAcc-mean()-X"  
 "fBodyAcc-mean()-Y"  
 "fBodyAcc-mean()-Z"  
 "fBodyAccJerk-mean()-X"  
 "fBodyAccJerk-mean()-Y"  
 "fBodyAccJerk-mean()-Z"  
 "fBodyGyro-mean()-X"  
 "fBodyGyro-mean()-Y"  
 "fBodyGyro-mean()-Z"  
 "fBodyAccMag-mean()"  
 "fBodyBodyAccJerkMag-mean()"  
 "fBodyBodyGyroMag-mean()"  
 "fBodyBodyGyroJerkMag-mean()"  
 "tBodyAcc-std()-X"  
 "tBodyAcc-std()-Y"  
 "tBodyAcc-std()-Z"  
 "tGravityAcc-std()-X"  
 "tGravityAcc-std()-Y"  
 "tGravityAcc-std()-Z"  
 "tBodyAccJerk-std()-X"  
 "tBodyAccJerk-std()-Y"  
 "tBodyAccJerk-std()-Z"  
 "tBodyGyro-std()-X"   
 "tBodyGyro-std()-Y"  
 "tBodyGyro-std()-Z"  
 "tBodyGyroJerk-std()-X"  
 "tBodyGyroJerk-std()-Y"  
 "tBodyGyroJerk-std()-Z"  
 "tBodyAccMag-std()"  
 "tGravityAccMag-std()"  
 "tBodyAccJerkMag-std()"  
 "tBodyGyroMag-std()"  
 "tBodyGyroJerkMag-std()"  
 "fBodyAcc-std()-X"  
 "fBodyAcc-std()-Y"  
 "fBodyAcc-std()-Z"  
 "fBodyAccJerk-std()-X"  
 "fBodyAccJerk-std()-Y"  
 "fBodyAccJerk-std()-Z"  
 "fBodyGyro-std()-X"  
 "fBodyGyro-std()-Y"  
 "fBodyGyro-std()-Z"  
 "fBodyAccMag-std()"  
 "fBodyBodyAccJerkMag-std()"  
 "fBodyBodyGyroMag-std()"  
 "fBodyBodyGyroJerkMag-std()"  
