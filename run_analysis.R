# Run analysis:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set
# with the average of each variable for each activity and each subject.

library(dplyr) 
library(data.table)

# read file 'train/X_train.txt' training set and file 'test/X_test.txt' test set.
trainingData <- read.table("UCI HAR Dataset/train/X_train.txt")
testData <- read.table("UCI HAR Dataset/test/X_test.txt") 

# read titles (features)
features <- read.table("UCI HAR Dataset/features.txt", colClasses="character")[,2]

# read activity labels and create mapping table from the labels
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels <- tbl_dt(activityLabels)
activityLabels <- setNames(activityLabels, c("id", "label"))
activityLabels <- setkey(activityLabels, id)

# read subject ids
testSubjectIds <- read.table("UCI HAR Dataset/test/subject_test.txt", colClasses="numeric", col.names=c("subjectId"))
trainSubjectIds <- read.table("UCI HAR Dataset/train/subject_train.txt", colClasses="numeric", col.names=c("subjectId"))

# read activities 
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt", colClasses="numeric")
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt", colClasses="numeric")

# Transform data to use descriptive activity names  
trainingData <- setNames(trainingData, make.unique(features))
trainingData <- transform(trainingData, subjectId = trainSubjectIds, activity = activityLabels[trainActivities]$label, check.names = FALSE)
testData <- setNames(testData, make.unique(features))
testData <- transform(testData, subjectId = testSubjectIds, activity=activityLabels[testActivities]$label,  check.names = FALSE)

# Combine the data
allData <- rbind(trainingData, testData)

# Select all that contains mean() and std(), also select activity and subjectId
resultMean <- select(allData, contains("mean()"))
resultStd <- select(allData, contains("std()"))
resultOther <- select(allData, activity, subjectId)
allData <- cbind(resultMean, resultStd, resultOther)

# Group the data by activity and subjectId
grouped <- group_by(allData, activity, subjectId)
# Calculate mean for each activity and subjectId
result <- summarise_each(grouped, funs(mean))

# writes 180 rows and 68 columns
write.table(result, file="Tidydataset.txt", row.name=FALSE)

#Return data set with the average of each variable for each activity and each subject
result