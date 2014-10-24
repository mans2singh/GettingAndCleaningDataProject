Code Book
=================

#### Background
The HAR data set was collected from 30 volunteers while performing 6 activities wearing a Samsung Galaxy II smartphone as mentioned on ![UCI HAR Data Set site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

#### UCI HAR Data Set
The data used for this project is available from ![
Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

##### Data Source:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - UniversitÃ  degli Studi di Genova, Genoa I-16145, Italy. 

For the project the data was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

#### Analysis Project
The analysis project involves the following steps: 
* Merging the test and train data measurements and associating variable names with the observations, and combining the measurements with the subject and activity id.
* Extracting only variables with standard deviation and mean in the name,  
* Provide descriptive names for the variable, and 
* Finally to find the average of each variable by each subject and each activity.  

#### Data files
The following data files, located in the unzipped data directory, were used for the analysis:
* features.txt for variable names
* activity.txt for activity id to activity name mapping
* Test data 
	* test/X_test.txt containing measurements
	* test/y_test.txt containing the activity id for each measurement
	* test/subject_test.txt containing the subject id for each measurement
* Train data
	* train/X_train.txt containing measurements
	* train/y_train.txt containing the activity id for each measurement
	* train/subject_train.txt containing the subject id for each measurement

#### Selected Features
The features selected for the analysis are those that include Mean or mean and std in it's name.  A comprehensive list of the features is available in the **features.txt** file in the unzipped data directory.

#### Descriptive feature names
To create descriptive names the variable or features transformed as follows:
* variable name starting with **t** were replaced by **time** to indicate time domain measurment
* variable name starting with **f** was relaced by **freq** to indicating frequency domain transformation)
* variable names with **mean** or **std** were replaced by **Mean** and **Std**
* All commas, parenthesis and hyphens are remove removed.

##### Variable name format decision
I choose to make the variables camel-case since they are easy to ready.  I left the short names of the variable name so that the context of the variables generated is not lost in translation. (Eg: in the first row below - for tBodyAcc-mean()-X, transformed to timeBodyAccMeanX) 

#### Examples of two variable name and their transformation:
    
    |--------------------------------------|-------------------------------------------|
	| Original Name                        | Transformed Name                          |
	|--------------------------------------|-------------------------------------------|
	| tBodyAcc-mean()-X                    | timeBodyAccMeanX                          |
	| angle(tBodyGyroMean,gravityMean)     | angleTimeBodyAccJerkMeanGravityMean       |
	|--------------------------------------|-------------------------------------------|
	

#### Selected features list

Detailed description of the features and the naming convention is available in the **features_info.txt** file in the top level directory of the unzipped UCI data.
From the feature_info.txt file, the following features were selected based on occurrence of the **mean**, **Mean**, or **std** in the name.  The rationale for selecting all the matching fields is that each represents a different measurement for each subject and activity and these need to be averaged per subject per activity.

Following is the list of selected features:

>
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

#### Final feature names
The final variable names in the computed statistics data set includes the 
* subject id, 
* activity id, 
* activity name, and 
* 86 average of measurements corresponding to the origin variables mentioned above after transforming the variable names.  These values for these variables is the mean of the values for that metric grouped by each subject and activity.

Following is the list of variables in the final tidy set table:

>
subject_id                          
activity_id                         
activity_name                       
timeBodyAccMeanX                    
timeBodyAccMeanY                    
timeBodyAccMeanZ                    
timeBodyAccStdX                     
timeBodyAccStdY                     
timeBodyAccStdZ                     
timeGravityAccMeanX                 
timeGravityAccMeanY                 
timeGravityAccMeanZ                 
timeGravityAccStdX                  
timeGravityAccStdY                  
timeGravityAccStdZ                  
timeBodyAccJerkMeanX                
timeBodyAccJerkMeanY                
timeBodyAccJerkMeanZ                
timeBodyAccJerkStdX                 
timeBodyAccJerkStdY                 
timeBodyAccJerkStdZ                 
timeBodyGyroMeanX                   
timeBodyGyroMeanY                   
timeBodyGyroMeanZ                   
timeBodyGyroStdX                    
timeBodyGyroStdY                    
timeBodyGyroStdZ                    
timeBodyGyroJerkMeanX               
timeBodyGyroJerkMeanY               
timeBodyGyroJerkMeanZ               
timeBodyGyroJerkStdX                
timeBodyGyroJerkStdY                
timeBodyGyroJerkStdZ                
timeBodyAccMagMean                  
timeBodyAccMagStd                   
timeGravityAccMagMean               
timeGravityAccMagStd                
timeBodyAccJerkMagMean              
timeBodyAccJerkMagStd               
timeBodyGyroMagMean                 
timeBodyGyroMagStd                  
timeBodyGyroJerkMagMean             
timeBodyGyroJerkMagStd              
freqBodyAccMeanX                    
freqBodyAccMeanY                    
freqBodyAccMeanZ                    
freqBodyAccStdX                     
freqBodyAccStdY                     
freqBodyAccStdZ                     
freqBodyAccMeanFreqX                
freqBodyAccMeanFreqY                
freqBodyAccMeanFreqZ                
freqBodyAccJerkMeanX                
freqBodyAccJerkMeanY                
freqBodyAccJerkMeanZ                
freqBodyAccJerkStdX                 
freqBodyAccJerkStdY                 
freqBodyAccJerkStdZ                 
freqBodyAccJerkMeanFreqX            
freqBodyAccJerkMeanFreqY            
freqBodyAccJerkMeanFreqZ            
freqBodyGyroMeanX                   
freqBodyGyroMeanY                   
freqBodyGyroMeanZ                   
freqBodyGyroStdX                    
freqBodyGyroStdY                    
freqBodyGyroStdZ                    
freqBodyGyroMeanFreqX               
freqBodyGyroMeanFreqY               
freqBodyGyroMeanFreqZ               
freqBodyAccMagMean                  
freqBodyAccMagStd                   
freqBodyAccMagMeanFreq              
freqBodyBodyAccJerkMagMean          
freqBodyBodyAccJerkMagStd           
freqBodyBodyAccJerkMagMeanFreq      
freqBodyBodyGyroMagMean             
freqBodyBodyGyroMagStd              
freqBodyBodyGyroMagMeanFreq         
freqBodyBodyGyroJerkMagMean         
freqBodyBodyGyroJerkMagStd          
freqBodyBodyGyroJerkMagMeanFreq     
angleTimeBodyAccMeanGravity         
angleTimeBodyAccJerkMeanGravityMean  
angleTimeBodyGyroMeanGravityMean    
angleTimeBodyGyroJerkMeanGravityMean  
angleXGravityMean                   
angleYGravityMean                   
angleZGravityMean                   
 

 

