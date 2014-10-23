Code Book
=================

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

For analysis the data was available from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The project was to merge the test and train data measurements and associate variable names with the observations, extract only variables with standard deviation and mean in the name , combine the measurements with the subject and activity id, provide descriptive names for the variable and finally to find the average of each variable by each subject and each activity.  All the measurement variables are numeric

The features selected include Mean or mean and std in it's name.

To create descriptive names the following variable names were transformed as follows:
#### variable name starting with t were replaced by time
#### variable name starting with f was relaced by freq (indicating frequency domain transformation)
#### those with mean and std were replaced by Mean and Std
#### All commas, parenthesis and hyphens are remove removed.

From the feature_info.txt file in the data set 


The original 86 variable names are as follows

tBodyAcc-mean()-X                   
tBodyAcc-mean()-Y                   
tBodyAcc-mean()-Z                   
tBodyAcc-std()-X                    
tBodyAcc-std()-Y                    
tBodyAcc-std()-Z                    
tGravityAcc-mean()-X                
tGravityAcc-mean()-Y                
tGravityAcc-mean()-Z                
tGravityAcc-std()-X                 
tGravityAcc-std()-Y                 
tGravityAcc-std()-Z                 
tBodyAccJerk-mean()-X               
tBodyAccJerk-mean()-Y               
tBodyAccJerk-mean()-Z               
tBodyAccJerk-std()-X                
tBodyAccJerk-std()-Y                
tBodyAccJerk-std()-Z                
tBodyGyro-mean()-X                  
tBodyGyro-mean()-Y                  
tBodyGyro-mean()-Z                  
tBodyGyro-std()-X                   
tBodyGyro-std()-Y                   
tBodyGyro-std()-Z                   
tBodyGyroJerk-mean()-X              
tBodyGyroJerk-mean()-Y              
tBodyGyroJerk-mean()-Z              
tBodyGyroJerk-std()-X               
tBodyGyroJerk-std()-Y               
tBodyGyroJerk-std()-Z               
tBodyAccMag-mean()                  
tBodyAccMag-std()                   
tGravityAccMag-mean()               
tGravityAccMag-std()                
tBodyAccJerkMag-mean()              
tBodyAccJerkMag-std()               
tBodyGyroMag-mean()                 
tBodyGyroMag-std()                  
tBodyGyroJerkMag-mean()             
tBodyGyroJerkMag-std()              
fBodyAcc-mean()-X                   
fBodyAcc-mean()-Y                   
fBodyAcc-mean()-Z                   
fBodyAcc-std()-X                    
fBodyAcc-std()-Y                    
fBodyAcc-std()-Z                    
fBodyAcc-meanFreq()-X               
fBodyAcc-meanFreq()-Y               
fBodyAcc-meanFreq()-Z               
fBodyAccJerk-mean()-X               
fBodyAccJerk-mean()-Y               
fBodyAccJerk-mean()-Z               
fBodyAccJerk-std()-X                
fBodyAccJerk-std()-Y                
fBodyAccJerk-std()-Z                
fBodyAccJerk-meanFreq()-X           
fBodyAccJerk-meanFreq()-Y           
fBodyAccJerk-meanFreq()-Z           
fBodyGyro-mean()-X                  
fBodyGyro-mean()-Y                  
fBodyGyro-mean()-Z                  
fBodyGyro-std()-X                   
fBodyGyro-std()-Y                   
fBodyGyro-std()-Z                   
fBodyGyro-meanFreq()-X              
fBodyGyro-meanFreq()-Y              
fBodyGyro-meanFreq()-Z              
fBodyAccMag-mean()                  
fBodyAccMag-std()                   
fBodyAccMag-meanFreq()              
fBodyBodyAccJerkMag-mean()          
fBodyBodyAccJerkMag-std()           
fBodyBodyAccJerkMag-meanFreq()      
fBodyBodyGyroMag-mean()             
fBodyBodyGyroMag-std()              
fBodyBodyGyroMag-meanFreq()         
fBodyBodyGyroJerkMag-mean()         
fBodyBodyGyroJerkMag-std()          
fBodyBodyGyroJerkMag-meanFreq()     
angle(tBodyAccMean,gravity)         
angle(tBodyAccJerkMean),gravityMean)
angle(tBodyGyroMean,gravityMean)    
angle(tBodyGyroJerkMean,gravityMean)
angle(X,gravityMean)                
angle(Y,gravityMean)                
angle(Z,gravityMean)                


The final variable names includes the subject id, activity id, activity name and 86 average of measurements

subject_id                          
activity_id                         
activity_name                       
timeBodyAccMeanX_Mean_mean
timeBodyAccMeanY_Mean_mean
timeBodyAccMeanZ_Mean_mean
timeBodyAccStdX_Mean_mean
timeBodyAccStdY_Mean_mean
timeBodyAccStdZ_Mean_mean
timeGravityAccMeanX_Mean_mean
timeGravityAccMeanY_Mean_mean
timeGravityAccMeanZ_Mean_mean
timeGravityAccStdX_Mean_mean
timeGravityAccStdY_Mean_mean
timeGravityAccStdZ_Mean_mean
timeBodyAccJerkMeanX_Mean_mean
timeBodyAccJerkMeanY_Mean_mean
timeBodyAccJerkMeanZ_Mean_mean
timeBodyAccJerkStdX_Mean_mean
timeBodyAccJerkStdY_Mean_mean
timeBodyAccJerkStdZ_Mean_mean
timeBodyGyroMeanX_Mean_mean
timeBodyGyroMeanY_Mean_mean
timeBodyGyroMeanZ_Mean_mean
timeBodyGyroStdX_Mean_mean
timeBodyGyroStdY_Mean_mean
timeBodyGyroStdZ_Mean_mean
timeBodyGyroJerkMeanX_Mean_mean
timeBodyGyroJerkMeanY_Mean_mean
timeBodyGyroJerkMeanZ_Mean_mean
timeBodyGyroJerkStdX_Mean_mean
timeBodyGyroJerkStdY_Mean_mean
timeBodyGyroJerkStdZ_Mean_mean
timeBodyAccMagMean_mean
timeBodyAccMagStd_mean
timeGravityAccMagMean_mean
timeGravityAccMagStd_mean
timeBodyAccJerkMagMean_mean
timeBodyAccJerkMagStd_mean
timeBodyGyroMagMean_mean
timeBodyGyroMagStd_mean
timeBodyGyroJerkMagMean_mean
timeBodyGyroJerkMagStd_mean
freqBodyAccMeanX_Mean_mean
freqBodyAccMeanY_Mean_mean
freqBodyAccMeanZ_Mean_mean
freqBodyAccStdX_Mean_mean
freqBodyAccStdY_Mean_mean
freqBodyAccStdZ_Mean_mean
freqBodyAccMeanFreqX_Mean_mean
freqBodyAccMeanFreqY_Mean_mean
freqBodyAccMeanFreqZ_Mean_mean
freqBodyAccJerkMeanX_Mean_mean
freqBodyAccJerkMeanY_Mean_mean
freqBodyAccJerkMeanZ_Mean_mean
freqBodyAccJerkStdX_Mean_mean
freqBodyAccJerkStdY_Mean_mean
freqBodyAccJerkStdZ_Mean_mean
freqBodyAccJerkMeanFreqX_Mean_mean
freqBodyAccJerkMeanFreqY_Mean_mean
freqBodyAccJerkMeanFreqZ_Mean_mean
freqBodyGyroMeanX_Mean_mean
freqBodyGyroMeanY_Mean_mean
freqBodyGyroMeanZ_Mean_mean
freqBodyGyroStdX_Mean_mean
freqBodyGyroStdY_Mean_mean
freqBodyGyroStdZ_Mean_mean
freqBodyGyroMeanFreqX_Mean_mean
freqBodyGyroMeanFreqY_Mean_mean
freqBodyGyroMeanFreqZ_Mean_mean
freqBodyAccMagMean_mean
freqBodyAccMagStd_mean
freqBodyAccMagMeanFreq              
freqBodyBodyAccJerkMagMean_mean
freqBodyBodyAccJerkMagStd_mean
freqBodyBodyAccJerkMagMeanFreq      
freqBodyBodyGyroMagMean_mean
freqBodyBodyGyroMagStd_mean
freqBodyBodyGyroMagMeanFreq         
freqBodyBodyGyroJerkMagMean_mean
freqBodyBodyGyroJerkMagStd_mean
freqBodyBodyGyroJerkMagMeanFreq     
angleTimeBodyAccMeanGravitY_Mean_mean
angleTimeBodyAccJerkMeanGravityMean_mean
angleTimeBodyGyroMeanGravityMean_mean
angleTimeBodyGyroJerkMeanGravityMean_mean
angleXGravityMean_mean
angleYGravityMean_mean
angleZGravityMean_mean
 

