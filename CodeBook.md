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

The measurements have been normalized and bounded between -1 and 1.

#### Selected Features
The features selected for the analysis are those that include Mean or mean and std in it's name.  A comprehensive list of the features is available in the **features.txt** file in the unzipped data directory.

#### Descriptive feature names
To create descriptive names the variable or features transformed as follows:
* variable name starting with **t** were replaced by **time** to indicate time domain measurment
* variable name starting with **f** was relaced by **freq** to indicating frequency domain transformation)
* variable names with **mean** or **std** were replaced by **Mean** and **Std**
* All commas, parenthesis and hyphens are remove removed.

##### Variable name format decision
The variable names were chosen to be camel-case so that they are easy to ready.  The shortened parts of names of were left as such so that the context of the variables generated is not lost in translation and the names don't get too long. (Eg: in the first row below - tBodyAcc-mean()-X, is transformed to timeBodyAccMeanX) 

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
1 tBodyAcc-mean()-X                   
2 tBodyAcc-mean()-Y                   
3 tBodyAcc-mean()-Z                   
4 tBodyAcc-std()-X                    
5 tBodyAcc-std()-Y                    
6 tBodyAcc-std()-Z                    
7 tGravityAcc-mean()-X                
8 tGravityAcc-mean()-Y                
9 tGravityAcc-mean()-Z                
10 tGravityAcc-std()-X                 
11 tGravityAcc-std()-Y                 
12 tGravityAcc-std()-Z                 
13 tBodyAccJerk-mean()-X               
14 tBodyAccJerk-mean()-Y               
15 tBodyAccJerk-mean()-Z               
16 tBodyAccJerk-std()-X                
17 tBodyAccJerk-std()-Y                
18 tBodyAccJerk-std()-Z                
19 tBodyGyro-mean()-X                  
20 tBodyGyro-mean()-Y                  
21 tBodyGyro-mean()-Z                  
22 tBodyGyro-std()-X                   
23 tBodyGyro-std()-Y                   
24 tBodyGyro-std()-Z                   
25 tBodyGyroJerk-mean()-X              
26 tBodyGyroJerk-mean()-Y              
27 tBodyGyroJerk-mean()-Z              
28 tBodyGyroJerk-std()-X               
29 tBodyGyroJerk-std()-Y               
30 tBodyGyroJerk-std()-Z               
31 tBodyAccMag-mean()                  
32 tBodyAccMag-std()                   
33 tGravityAccMag-mean()               
34 tGravityAccMag-std()                
35 tBodyAccJerkMag-mean()              
36 tBodyAccJerkMag-std()               
37 tBodyGyroMag-mean()                 
38 tBodyGyroMag-std()                  
39 tBodyGyroJerkMag-mean()             
40 tBodyGyroJerkMag-std()              
41 fBodyAcc-mean()-X                   
42 fBodyAcc-mean()-Y                   
43 fBodyAcc-mean()-Z                   
44 fBodyAcc-std()-X                    
45 fBodyAcc-std()-Y                    
46 fBodyAcc-std()-Z                    
47 fBodyAcc-meanFreq()-X               
48 fBodyAcc-meanFreq()-Y               
49 fBodyAcc-meanFreq()-Z               
50 fBodyAccJerk-mean()-X               
51 fBodyAccJerk-mean()-Y               
52 fBodyAccJerk-mean()-Z               
53 fBodyAccJerk-std()-X                
54 fBodyAccJerk-std()-Y                
55 fBodyAccJerk-std()-Z                
56 fBodyAccJerk-meanFreq()-X           
57 fBodyAccJerk-meanFreq()-Y           
58 fBodyAccJerk-meanFreq()-Z           
59 fBodyGyro-mean()-X                  
60 fBodyGyro-mean()-Y                  
61 fBodyGyro-mean()-Z                  
62 fBodyGyro-std()-X                   
63 fBodyGyro-std()-Y                   
64 fBodyGyro-std()-Z                   
65 fBodyGyro-meanFreq()-X              
66 fBodyGyro-meanFreq()-Y              
67 fBodyGyro-meanFreq()-Z              
68 fBodyAccMag-mean()                  
69 fBodyAccMag-std()                   
70 fBodyAccMag-meanFreq()              
71 fBodyBodyAccJerkMag-mean()          
72 fBodyBodyAccJerkMag-std()           
73 fBodyBodyAccJerkMag-meanFreq()      
74 fBodyBodyGyroMag-mean()             
75 fBodyBodyGyroMag-std()              
76 fBodyBodyGyroMag-meanFreq()         
77 fBodyBodyGyroJerkMag-mean()         
78 fBodyBodyGyroJerkMag-std()          
79 fBodyBodyGyroJerkMag-meanFreq()     
80 angle(tBodyAccMean,gravity)         
81 angle(tBodyAccJerkMean),gravityMean)  
82 angle(tBodyGyroMean,gravityMean)    
83 angle(tBodyGyroJerkMean,gravityMean)  
84 angle(X,gravityMean)                
85 angle(Y,gravityMean)                
86 angle(Z,gravityMean)                

#### Final feature names
The final variable names in the computed statistics data set includes the  
* subject id, 
* activity id, 
* activity name, and 
* 86 average of measurements corresponding to the origin variables mentioned above after transforming the variable names.  The values for these variables are the **mean** of the values for that metric grouped by each subject and activity.  
* Design decision  
	* To avoid extra long variable names, did not add extra suffix to each measured variables' average
	* Keep the activity_id reference in tidy data so that it can be used to join to other tables in future


Following is the list of variables in the final tidy set table:

>
1 subject_id                          
2 activity_id                         
3 activity_name                       
4 timeBodyAccMeanX                    
5 timeBodyAccMeanY                    
6 timeBodyAccMeanZ                    
7 timeBodyAccStdX                     
8 timeBodyAccStdY                     
9 timeBodyAccStdZ                     
10 timeGravityAccMeanX                 
11 timeGravityAccMeanY                 
12 timeGravityAccMeanZ                 
13 timeGravityAccStdX                  
14 timeGravityAccStdY                  
15 timeGravityAccStdZ                  
16 timeBodyAccJerkMeanX                
17 timeBodyAccJerkMeanY                
18 timeBodyAccJerkMeanZ                
19 timeBodyAccJerkStdX                 
20 timeBodyAccJerkStdY                 
21 timeBodyAccJerkStdZ                 
22 timeBodyGyroMeanX                   
23 timeBodyGyroMeanY                   
24 timeBodyGyroMeanZ                   
25 timeBodyGyroStdX                    
26 timeBodyGyroStdY                    
27 timeBodyGyroStdZ                    
28 timeBodyGyroJerkMeanX               
29 timeBodyGyroJerkMeanY               
30 timeBodyGyroJerkMeanZ               
31 timeBodyGyroJerkStdX                
32 timeBodyGyroJerkStdY                
33 timeBodyGyroJerkStdZ                
34 timeBodyAccMagMean                  
35 timeBodyAccMagStd                   
36 timeGravityAccMagMean               
37 timeGravityAccMagStd                
38 timeBodyAccJerkMagMean              
39 timeBodyAccJerkMagStd               
40 timeBodyGyroMagMean                 
41 timeBodyGyroMagStd                  
42 timeBodyGyroJerkMagMean             
43 timeBodyGyroJerkMagStd              
44 freqBodyAccMeanX                    
45 freqBodyAccMeanY                    
46 freqBodyAccMeanZ                    
47 freqBodyAccStdX                     
48 freqBodyAccStdY                     
49 freqBodyAccStdZ                     
50 freqBodyAccMeanFreqX                
51 freqBodyAccMeanFreqY                
52 freqBodyAccMeanFreqZ                
53 freqBodyAccJerkMeanX                
54 freqBodyAccJerkMeanY                
55 freqBodyAccJerkMeanZ                
56 freqBodyAccJerkStdX                 
57 freqBodyAccJerkStdY                 
58 freqBodyAccJerkStdZ                 
59 freqBodyAccJerkMeanFreqX            
60 freqBodyAccJerkMeanFreqY            
61freqBodyAccJerkMeanFreqZ            
62 freqBodyGyroMeanX                   
63 freqBodyGyroMeanY                   
64 freqBodyGyroMeanZ                   
65 freqBodyGyroStdX                    
66 freqBodyGyroStdY                    
67 freqBodyGyroStdZ                    
68 freqBodyGyroMeanFreqX               
69 freqBodyGyroMeanFreqY               
70 freqBodyGyroMeanFreqZ               
71 freqBodyAccMagMean                  
72 freqBodyAccMagStd                   
73 freqBodyAccMagMeanFreq              
74 freqBodyBodyAccJerkMagMean          
75 freqBodyBodyAccJerkMagStd           
76 freqBodyBodyAccJerkMagMeanFreq      
77 freqBodyBodyGyroMagMean             
78 freqBodyBodyGyroMagStd              
79 freqBodyBodyGyroMagMeanFreq         
80 freqBodyBodyGyroJerkMagMean         
81 freqBodyBodyGyroJerkMagStd          
82 freqBodyBodyGyroJerkMagMeanFreq     
83 angleTimeBodyAccMeanGravity         
84 angleTimeBodyAccJerkMeanGravityMean  
85 angleTimeBodyGyroMeanGravityMean    
86 angleTimeBodyGyroJerkMeanGravityMean  
87 angleXGravityMean                   
88 angleYGravityMean                   
89 angleZGravityMean                   
 

 

