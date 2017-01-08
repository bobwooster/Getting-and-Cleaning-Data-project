# Coursera: Getting and Cleaning Data Course Project
# Author: Bob Wooster

###################################################
# read raw data 
#-------------------------------------------------
# test data
test_data <- read.table("UCI HAR Dataset/Test/X_test.txt")
test_subject <- read.table("UCI HAR Dataset/Test/subject_test.txt", col.names = "subject")
test_activity <- read.table("UCI HAR Dataset/Test/y_test.txt", col.names = "activity")
#training dats
train_data <- read.table("UCI HAR Dataset/Train/X_train.txt")
train_subject <- read.table("UCI HAR Dataset/Train/subject_train.txt", col.names = "subject")
train_activity <- read.table("UCI HAR Dataset/Train/y_train.txt", col.names = "activity")
###################################################


###################################################
# tidy up the data
#-------------------------------------------------
# name the columns in the data sets, use lower case letters
feature_names <- read.table("UCI HAR Dataset/features.txt")
names(test_data) <- tolower(feature_names[,2])
names(train_data) <- tolower(feature_names[,2])

# find the variables that contain mean and std
vars_mean <- grep('mean', names(test_data))
vars_std <- grep('std', names(test_data))
keep_vars <- union(vars_mean, vars_std)

# keep only the column that contain mean and std
test_data <- test_data[,keep_vars]
train_data <- train_data[,keep_vars]

# add the subject and activity data
test_data <- cbind(test_data,test_subject,test_activity)
train_data <- cbind(train_data,train_subject,train_activity)

# merge the data sets
all_data <- rbind(train_data, test_data)

# read in the activity codes and names
activity_names <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "description"))

# replace activity number lables with descriptive names in the data
all_data$activity <- tolower(activity_names$description[match(all_data$activity, activity_names$code)])
all_data$activity <- as.factor(gsub("_", " ", all_data$activity))
###################################################

###################################################
# create new data set with mean measurements for each subject and activity
summary_data <- as.data.frame(matrix(rep(NA, (length(keep_vars)+2)*(180)), nrow = 180))
names(summary_data) <- c("subject", "activity", names(all_data[1:length(keep_vars)]))
# label subject/activity columns
summary_data$subject <- rep(1:30, each = 6)
summary_data$activity <- rep(levels(all_data$activity), 30)
# compute the average for each variable for each subject/activity combo
for(j in 3:dim(summary_data)[2]) {
      summary_data[,j] <- as.vector(tapply(all_data[,(j-2)], list(all_data$activity, all_data$subject), mean))
}
# write the data frame to a txt file
write.table(summary_data, file = "summary_data.txt", row.names =  FALSE)
###################################################

