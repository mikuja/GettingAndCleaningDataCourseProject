GettingAndCleaningDataCourseProject
===================================

Course Project repository for Coursera's Getting and Cleaning Data Course.

The run_analysis.R file collects, works with and cleans a data set.  As an output the file returns a data frame and produces a file Tidydataset.txt to your working directory.  More information can be found from the Codebook.

## The Script
The run_analysis runs when you source the script. Prerequisite are the following:  
* UCI Har Dataset directory with all the relevant files can be found from your working directory.  
The data can be obtained from here: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
* librarys data.table and dplyr are installed and available for use in R.

The script:  
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. The extracting is done by selecting columns with title containing strigns 'mean()' or 'std()'. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Creates data set with the average of each variable for each activity and each subject.  

Outputs:
Data frame with 180 rows and 68 columns. 
Tidydataset.txt file
