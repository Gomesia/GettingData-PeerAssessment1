###CODE BOOK
## Melissa Berkheimer

The code run_analysis.R takes inputs from the directory UCI HAR Dataset and outputs a text file named tidyData.txt.  
tidyData contains the average value of the mean and standard deviation data types in the test and train directories within UCI HAR Dataset.  
These averages are sorted by subject and activity.  Below is a list of the column names and definitions. 

##Key
-The components of the labels indicate the following
-t = time
-f = frequency
-mean = mean value
-std = standard deviation
-X,Y,Z = indicates axis
-Acc = information gathered from an accelerometer
-Gyro = information gathered from a gyroscope

## List of Activities

subject: The subject designation code.  Ranging form 1-30.
activity: The level of activity.  there are 6 levels: walking, walking upstairs, walking downstairs, sitting, standing, laying.

By time ,t:
Body Acc:
  tBodyAcc-mean-X, tBodyAcc-mean-Y, tBodyAcc-mean-Z         
  tBodyAcc-std-X, tBodyAcc-std-Y, tBodyAcc-std-Z
Gravity Acc:
  tGravityAcc-mean-X, tGravityAcc-mean-Y,tGravityAcc-mean-Z        
  tGravityAcc-std-X,tGravityAcc-std-Y,tGravityAcc-std-Z 
Body Acc Jerk:
  tBodyAccJerk-mean-X,tBodyAccJerk-mean-Y,tBodyAccJerk-mean-Z       
  tBodyAccJerk-std-X,tBodyAccJerk-std-Y,tBodyAccJerk-std-Z  
Body Gyro:
  tBodyGyro-mean-X,tBodyGyro-mean-Y,tBodyGyro-mean-Z     
  tBodyGyro-std-X,tBodyGyro-std-Y,tBodyGyro-std-Z
Body Gyro Jerk:
  tBodyGyroJerk-mean-X,tBodyGyroJerk-mean-Y,tBodyGyroJerk-mean-Z      
  tBodyGyroJerk-std-X,tBodyGyroJerk-std-Y,tBodyGyroJerk-std-Z       
Body Acc Mag:  
  tBodyAccMag-mean,tBodyAccMag-std
Gravity Acc Mag:  
  tGravityAccMag-mean, tGravityAccMag-std 
Body Acc Jerk:
  tBodyAccJerkMag-mean, tBodyAccJerkMag-std 
Body Gyro Mag:
  tBodyGyroMag-mean, tBodyGyroMag-std   
Body Gyro Jerk Mag:
  tBodyGyroJerkMag-mean, tBodyGyroJerkMag-std      

By Frequency:
Body Acc:
  fBodyAcc-mean-X,fBodyAcc-mean-Y,fBodyAcc-mean-Z       
  fBodyAcc-std-X,fBodyAcc-std-Y,fBodyAcc-std-Z   
  fBodyAcc-meanFreq-X,fBodyAcc-meanFreq-Y,fBodyAcc-meanFreq-Z
Body Acc Jerk:
  fBodyAccJerk-mean-X,fBodyAccJerk-mean-Y,fBodyAccJerk-mean-Z      
  fBodyAccJerk-std-X,fBodyAccJerk-std-Y,fBodyAccJerk-std-Z
  fBodyAccJerk-meanFreq-X,fBodyAccJerk-meanFreq-Y,fBodyAccJerk-meanFreq-Z
Body Gyro:
  fBodyGyro-mean-X,fBodyGyro-mean-Y,fBodyGyro-mean-Z
  fBodyGyro-std-X,fBodyGyro-std-Y,fBodyGyro-std-Z          
  fBodyGyro-meanFreq-X,fBodyGyro-meanFreq-Y,fBodyGyro-meanFreq-Z      
Body Acc Mag:
  fBodyAccMag-mean         
  fBodyAccMag-std           
  fBodyAccMag-meanFreq      
Body Acc Jerk:
  fBodyAccJerkMag-mean      
  fBodyAccJerkMag-std       
  fBodyAccJerkMag-meanFreq 
Body Gyro Mag:
  fBodyGyroMag-mean         
  fBodyGyroMag-std         
  fBodyGyroMag-meanFreq 
Body Gyro Jerk:
  fBodyGyroJerkMag-mean    
  fBodyGyroJerkMag-std     
  fBodyGyroJerkMag-meanFreq
