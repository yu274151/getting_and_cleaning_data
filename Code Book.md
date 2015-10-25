# Snapshot of tidy data set as it exists (truncated example only)


Subject_Observation | Physical_Activity| tBodyAcc.mean...X| tBodyAcc.mean...Y| .....|tBodyAcc.std...X| tBodyAcc.std...Y
------------ | -------------------------|------------------|------------------|-------|---------------|----------------
1            | Laying                   |0.22159824394     | -0.0405139534294|        | mean value    | mean valuue


# Curation of original data set (attempts undertaken)

Used only means and standard deviatons of observed data 

# Summarized Data Description

The output tidy data set contains merged data set grouped by individual subject, followed by their activity in each category,
followed by the mean of each observation associated within those grouped observation.

# List of variables present in the tidy set

*Subject_Observation: Ranges from 1-30; identifies the subject performing the activity within each sample

*Physical_Activity (Either of 6 activities):
        1.WALKING
        2.WALKING_UPSTAIRS
        3.WALKING_DOWNSTAIRS
        4.SITTING
        5.STANDING
        6.LAYING

Note: All below observations, hereon, only have mean/average for each; units of measure would be m/s^2 for acceleration 
and other applicable ones for other observations

* tBodyAcc.mean.X
    * body acceleration signal in the X direction 
* tBodyAcc.mean.Y
    * body acceleration signal in the Y direction
* tBodyAcc.mean.Z
    * body acceleration signal in the Z direction
* tGravityAcc.mean.X
    * gravity acceleration signal in the X direction
* tGravityAcc.mean.Y
    * gravity acceleration signal in the Y direction
* tGravityAcc.mean.Z
    * gravity acceleration signal in the Z direction
* tBodyAccJerk.mean.X
    * Jerk signal of body linear acceleration in the X direction
* tBodyAccJerk.mean.Y
    * Jerk signal of body linear acceleration in the Y direction
* tBodyAccJerk.mean.Z
    * Jerk signal of body linear acceleration in the Z direction
* tBodyGyro.mean.X
    * body gyroscope signal in the X direction
* tBodyGyro.mean.Y
    * body gyroscope signal in the Y direction 
* tBodyGyro.mean.Z
    * body gyroscope signal in the Z direction 
* tBodyGyroJerk.mean.X
    * Jerk signal of body gyroscope in the X direction 
* tBodyGyroJerk.mean.Y
    * Jerk signal of body gyroscope in the Y direction
* tBodyGyroJerk.mean.Z
    * Jerk signal of body gyroscope in the Z direction
* tBodyAccMag.mean
    * magnitude of body acceleration signal
* tGravityAccMag.mean
    * magnitude of gravity acceleration signal
* tBodyAccJerkMag.mean
    * magnitude of body acceleration signal
* tBodyGyroMag.mean
    * magnitude of body gyroscope signal
* tBodyGyroJerkMag.mean
    * magnitude of body gyroscope signal
* fBodyAcc.mean.X
    * frequency of body acceleration signal in the X direction
* fBodyAcc.mean.Y
    * frequency of body acceleration signal in the Y direction
* fBodyAcc.mean.Z
    * frequency of body acceleration signal in the Z direction 
* fBodyAcc.meanFreq.X
    * weighted average of body acceleration signal in the X direction 
* fBodyAcc.meanFreq.Y
    * weighted average of body acceleration signal in the Y direction 
* fBodyAcc.meanFreq.Z
    * weighted average of body acceleration signal in the Z direction 
* fBodyAccJerk.mean.X
    * frequency of body linear acceleration in the X direction 
* fBodyAccJerk.mean.Y
    * frequency of body linear acceleration in the Y direction 
* fBodyAccJerk.mean.Z
    * frequency of body linear acceleration in the Z direction 
* fBodyAccJerk.meanFreq.X
    * weighted average of body acceleration signal in the X direction 
* fBodyAccJerk.meanFreq.Y
    * weighted average of body acceleration signal in the Y direction 
* fBodyAccJerk.meanFreq.Z
    * weighted average of body acceleration signal in the Z direction 
* fBodyGyro.mean.X
    * frequency of body gyroscope signal in the X direction 
* fBodyGyro.mean.Y
    * frequency of body gyroscope signal in the Y direction 
* fBodyGyro.mean.Z
    * frequency of body gyroscope signal in the Z direction 
* fBodyGyro.meanFreq.X
    * weighted average of body gyroscope signal in the X direction 
* fBodyGyro.meanFreq.Y
    * weighted average of body gyroscope signal in the Y direction 
* fBodyGyro.meanFreq.Z
    * weighted average of body gyroscope signal in the Z direction 
* fBodyAccMag.mean
    * frequency of body acceleration magnitude signal 
* fBodyAccMag.meanFreq
    * weighted average of body acceleration magnitude signal 
* fBodyBodyAccJerkMag.mean
    * frequency of body acceleration magnitude signal 
* fBodyBodyAccJerkMag.meanFreq
    * weighted average of body acceleration signal 
* fBodyBodyGyroMag.mean
    * frequency of body gyroscope magnitude signal 
* fBodyBodyGyroMag.meanFreq
    * weighted average of body gyroscope magnitude 
* fBodyBodyGyroJerkMag.mean
    * frequency of body gyroscope magnitude 
* fBodyBodyGyroJerkMag.meanFreq
    * weighted average of body gyroscope magnitude
* tBodyAcc.std.X
    * standard deviation of body acceleration signal in the X direction
* tBodyAcc.std.Y
    * standard deviation of body acceleration signal in the Y direction
* tBodyAcc.std.Z
    * standard deviation of body acceleration signal in the Z direction
* tGravityAcc.std.X
    * standard deviation of gravity acceleration signal in the X direction
* tGravityAcc.std.Y
    * standard deviation of gravity acceleration signal in the Y direction
* tGravityAcc.std.Z
    * standard deviation of gravity acceleration signal in the Z direction
* tBodyAccJerk.std.X
    * standard deviation of body acceleration signal in the X direction 
* tBodyAccJerk.std.Y
    * standard deviation of body acceleration signal in the Y direction 
* tBodyAccJerk.std.Z
    * standard deviation of body acceleration signal in the Z direction
* tBodyGyro.std.X
    * standard deviation of body gyroscope signal in the X direction
* tBodyGyro.std.Y
    * standard deviation of body gyroscope signal in the Y direction
* tBodyGyro.std.Z
    * standard deviation of body gyroscope signal in the Z direction
* tBodyGyroJerk.std.X
    * standard deviation of body gyroscope signal in the X direction 
* tBodyGyroJerk.std.Y
    * standard deviation of body gyroscope signal in the Y direction 
* tBodyGyroJerk.std.Z
    * standard deviation of body gyroscope signal in the Z direction 
* tBodyAccMag.std
    * standard deviation of body acceleration magnitude signal
* tGravityAccMag.std
    * standard deviation of gravity acceleration magnitude signal
* tBodyAccJerkMag.std
    * standard deviation of body acceleration magnitude signal 
* tBodyGyroMag.std
    * standard deviation of body gyroscope magnitude signal
* tBodyGyroJerkMag.std
    * standard deviation of body gyroscope magnitude signal 
* fBodyAcc.std.X
    * standard deviation of body acceleration frequency in the X direction
* fBodyAcc.std.Y
    * standard deviation of body acceleration frequency in the Y direction
* fBodyAcc.std.Z
    * standard deviation of body acceleration frequency in the Z direction
* fBodyAccJerk.std.X
    * standard deviation of body acceleration frequency in the X direction 
* fBodyAccJerk.std.Y
    * standard deviation of body acceleration frequency in the Y direction 
* fBodyAccJerk.std.Z
    * standard deviation of body acceleration frequency in the Z direction 
* fBodyGyro.std.X
    * standard deviation of body gyroscope frequency in the X direction
* fBodyGyro.std.Y
    * standard deviation of body gyroscope frequency in the Y direction
* fBodyGyro.std.Z
    * standard deviation of body gyroscope frequency in the Z direction
* fBodyAccMag.std
    * standard deviation of body acceleration frequency magnitude
* fBodyBodyAccJerkMag.std
    * standard deviation of body acceleration frequency magnitude 
* fBodyBodyGyroMag.std
    * standard deviation of body gyroscope frequency magnitude
* fBodyBodyGyroJerkMag.std
    * standard deviation of body gyroscope frequency magnitude 

