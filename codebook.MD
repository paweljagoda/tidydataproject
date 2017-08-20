# Code Book

## Background Information

As described in the features_info.txt file in the UCI HAR Dataset:

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
 These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using
 a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the
 acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another
 low pass Butterworth filter with a corner frequency of 0.3 Hz. 

 Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and 
 tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, 
 tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

 Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ,
 fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

 These signals were used to estimate variables of the feature vector for each pattern:  '-XYZ' is used to denote 3-axial signals in 
 the X, Y and Z directions. "

## Variable Definitions

The variables included in my final clean dataset are denoted as follows:

* subject: numerical identifier of the subject conducting measurements represented as a positive integer. 
* activity: type of activity being measured represented as follows:
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING 
  - LAYING
* tBodyAcc.mean.X: mean estimated body acceleration along the x axis
* tBodyAcc.mean.Y: mean estimated body acceleration along the y axis
* tBodyAcc.mean.Z: mean estimated body acceleration along the z axis
* tBodyAcc.std.X: standard deviation of estimated body acceleration along the x axis
* tBodyAcc.std.Y: standard deviation of estimated body acceleration along the y axis
* tBodyAcc.std.Z: standard deviation of estimated body acceleration along the z axis
* tGravityAcc.mean.X: mean gravitational acceleration along the x axis
* tGravityAcc.mean.Y: mean gravitational acceleration along the y axis
* tGravityAcc.mean.Z: mean gravitational acceleration along the z axis
* tGravityAcc.std.X: standard deviation of gravitational acceleration along the x axis
* tGravityAcc.std.Y: standard deviation of gravitational acceleration along the y axis
* tGravityAcc.std.Z: standard deviation of gravitational acceleration along the z axis
* tBodyGyro.mean.X: mean angular velocity from the gyroscope along the x axis
* tBodyGyro.mean.Y: mean angular velocity from the gyroscope along the y axis
* tBodyGyro.mean.Z: mean angular velocity from the gyroscope along the z axis
* tBodyGyro.std.X: standard deviation of angular velocity from the gyroscope along the x axis
* tBodyGyro.std.Y: standard deviation of angular velocity from the gyroscope along the y axis
* tBodyGyro.std.Z: standard deviation of angular velocity from the gyroscope along the z axis
