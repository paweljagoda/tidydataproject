# Loading the data files into R and saving them as separate data frames

setwd("/Users/paweljagoda/Desktop/Coursera/datasets")

subject.test <- read.table("subject_test.txt")
subject.train <- read.table("subject_train.txt")
X.test <- read.table("X_test.txt")
X.train <- read.table("X_train.txt")
y.test <- read.table("y_test.txt")
y.train <- read.table("y_train.txt")

# Merging the data together

merged.test <- cbind(subject.test, y.test, X.test)
merged.train <- cbind(subject.train, y.train, X.train)
merged.datasets <- rbind(merged.test, merged.train)

# Selecting columns ending with mean() and std() as in features.txt file

selected.data <- cbind(merged.datasets[,1:8], 
                       merged.datasets[,43:48],
                       merged.datasets[,83:88])

# Changing variable names to more appropriate ones. Brackets and hyphens replaced by dots.

colnames(selected.data) <- c("subject",
                             "activity", 
                             "tBodyAcc.mean.X", 
                             "tBodyAcc.mean.Y",
                             "tBodyAcc.mean.Z",
                             "tBodyAcc.std.X",
                             "tBodyAcc.std.Y",
                             "tBodyAcc.std.Z",
                             "tGravityAcc.mean.X",
                             "tGravityAcc.mean.Y",
                             "tGravityAcc.mean.Z",
                             "tGravityAcc.std.X",
                             "tGravityAcc.std.Y",
                             "tGravityAcc.std.Z",
                             "tBodyGyro.mean.X",
                             "tBodyGyro.mean.Y",
                             "tBodyGyro.mean.Z",
                             "tBodyGyro.std.X",
                             "tBodyGyro.std.Y",
                             "tBodyGyro.std.Z")

# Renaming the activities names using provided "activity_labels.txt"

label.vector <- read.table("activity_labels.txt") 
labelled.column <- label.vector[selected.data[,2],]
selected.data[,2] <- labelled.column[,2]


# Grouping observations by subject and activity

library(dplyr)

grouped.data <- group_by(selected.data, subject, activity)

# Summarising the dataset with means of variables

summarised.data <- summarise(grouped.data, 
                             tBodyAcc.mean.X = mean(tBodyAcc.mean.X),
                             tBodyAcc.mean.Y = mean(tBodyAcc.mean.Y),
                             tBodyAcc.mean.Z = mean(tBodyAcc.mean.Z),
                             tBodyAcc.std.X = mean(tBodyAcc.std.X),
                             tBodyAcc.std.Y = mean(tBodyAcc.std.Y),
                             tBodyAcc.std.Z = mean(tBodyAcc.std.Z),
                             tGravityAcc.mean.X = mean(tGravityAcc.mean.X),
                             tGravityAcc.mean.Y = mean(tGravityAcc.mean.Y),
                             tGravityAcc.mean.Z = mean(tGravityAcc.mean.Z),
                             tGravityAcc.std.X = mean(tGravityAcc.std.X),
                             tGravityAcc.std.Y = mean(tGravityAcc.std.Y),
                             tGravityAcc.std.Z = mean(tGravityAcc.std.Z),
                             tBodyGyro.mean.X = mean(tBodyGyro.mean.X),
                             tBodyGyro.mean.Y = mean(tBodyGyro.mean.Y),
                             tBodyGyro.mean.Z = mean(tBodyGyro.mean.Z),
                             tBodyGyro.mean.X = mean(tBodyGyro.mean.X),
                             tBodyGyro.mean.Y = mean(tBodyGyro.mean.Y),
                             tBodyGyro.mean.Z = mean(tBodyGyro.mean.Z))

summarised.data
