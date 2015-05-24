#############################################
# Attention! 
# You need to set project data directory as your working directory before running this script
# For example: setwd("~/UCI HAR Dataset")

# 1. Merge the training and the test sets to create one data set. (X)
X_train <- read.table("train/X_train.txt")
X_test <- read.table("test/X_test.txt")
X <- rbind(X_train, X_test)
#clear memory
rm(X_train, X_test)


# 2. Extract only the measurements on the mean and standard deviation for each measurement. 
# figure out what features to extract
features <- read.table("features.txt")
featuresToExtract <- grep("mean|std", features$V2)
# subsetting data to leave only needed features
X <- X[, featuresToExtract]
# we also need subjects in our dataset
subj_train <- read.table("train/subject_train.txt")
subj_test <- read.table("test/subject_test.txt")
subj <- rbind(subj_train, subj_test)
# bind subject column to our dataset
X <- cbind(subj, X)
# clear memory
rm(subj_train, subj_test, subj)

# 3. Use descriptive activity names to name the activities in the data set
# read and merge activities
y_train <- read.table("train/y_train.txt")
y_test <- read.table("test/y_test.txt")
y <- rbind(y_train, y_test)
# read activity names
activity_labels <- read.table("activity_labels.txt")
# create column of activity labels
activity <- apply(y, 1, function(x) activity_labels[activity_labels$V1 == x, 2])
# add activity labels to our dataset
X <- cbind(activity, X)
# clear memory
rm(y_train, y_test, y, activity_labels, activity)

# 4. Appropriately label the data set with descriptive variable names. 
# create vector of variable names (first variable is activity we added before, and second - subject)
colNames <- c("activity", "subject", as.vector(features[featuresToExtract, 2]))
# set descriptive variable names for the dataset
colnames(X) <- colNames
# clear memory 
rm(features, featuresToExtract, colNames)

# 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject
tidyX <- aggregate(X[, 3:81], list(activity = X$activity, subject = X$subject), mean)
# save tidy dateset to the text file
write.table(tidyX, "tidy.txt")
