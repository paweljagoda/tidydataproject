# Tidy Data Project

This project was submitted as part of the Getting and Cleaning Data course on Coursera. Its purpose is to transform provided
accelerometer and gyroscope 3-axial raw data from Samsung Galaxy S smartphone into a clean data set for later analysis. 

## Introduction

The script to achieve this, run_analysis.R , works with the UCI HAR Dataset which can be downloaded from the link below:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

As this assignment focuses on specific datasets within the UCI HAR Dataset directory, the following files were grouped together
under a new "/datasets" directory for ease of access: subject_test.txt, subject_train.txt, X_test.txt, X_train.txt, y_test.txt and 
y_train.txt . The activity_labels.txt file was also included for later purposes.

## Procedure

* Having set the relevant working directory that includes the aforementioned data sets, the script loads each dataset as individual
  data frames.
  
* The data frames are merged together along columns and rows using cbind and rbind functions as follows: 
   - the columns of ".test" files are bound in the order of subject.test | y.test | X.test
   - the columns of ".train" files are bound in the order of subject.train | y.train | X.train
   - the rows of the above two data sets are then bound with the ".test" observations on top.
   
* As only the variables representing the mean and standard deviation (std) were required, the relevant variable columns are extracted 
  with reference to the features.txt file in the UCI HAR Dataset folder. 

* The variables are labelled through assignment of column names to a character vector in accordance with the features.txt file, 
  with brackets and hyphens being replaced by dots to enable smoother work with the dplyr package later. For more description about
  each variable please refer to the codebook.MD file in this repository.
  
* The numerical values of the "activity" variable are replaced with more descriptive labels using the "activity_labels.txt" file.
  This is achieved through loading the "activity_labels.txt" file into a data frame and subsetting the descriptive column using the
  numerical "activity" values in the merged data set. The descriptive values are then assigned to the activity column in the merged
  data set.
  
* Using the dplyr package, the observations are grouped by subject and activity and then summarised with averages of each variable
  which produces the final clean data set that was required.
  
NB: As checked using sum(is.na(selected.data)), the accelerometric data did not contain any NA values. 
