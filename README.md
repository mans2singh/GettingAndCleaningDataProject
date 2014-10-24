GettingAndCleaningDataProject
=============================

Coursera Getting and Cleaning Data Project Assignment

### Introduction  
This R script executes the steps for creating a tidy data from that includes the mean for all columns with mean and std for each subject and activity from the UCI data set. 

#### Processing Steps
The mains steps involved in the processing are  
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

#### Data files used from the unzipped UCI data directory
The following data files are used for the project
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
    
### Pre-requisites for executing the script  
* Data input
	* The script assumes that the UCI data has been unzipped
the script is in the directory with the following files/diretories:
		* features.txt, 
		* activity.txt
		* test directory containing test data
		* train directory containing train data
* Script location
	* The script should be executed from the directory containing the unzipped data 
* R library requirements
	* The script uses dplyr and stringr packages.

#### Helper function 
* A helper function defined in the run_analysis.R script is also used for making the variables more readable.
    
### Executing the analysis script    
#### Executing the script from R Environment
* Start the R application
* Set the working directory to be the unzipped UCI data directory
* Launch the script using the command  
> source("run_analysis.R")   
    
#### Executing the script from command line
* Set current working directory to be the unzipped UCI data directory
* Launch the script with the following command
> Rscript run_analysis.R

### Details of the processing steps:

#### Setting up common data
Before the steps for creating the tidy data can executed the following data files must be loaded:
* Activity labels from the activity_labels.text file. This file contains the mapping for activity id and activity name.
* Features from the features.text file.  This file contains the variable names for the training and test observations.  The features in the file are listed in a tall table format and they need to be transposed into a wide table so that they can be applied as the column names for the observations.

#### Processing steps
#####1. Merge test and train data  
* Process test files
	* Load the the test subject, observation and activity tables
	* Apply the variable names 
	* Combine the test variables for test data  
* Process train data
	* Load the train subject, observation, and activity tables
	* Set up the variable names for train data
	* Combine the subject, activity and observations data for train  
* Combine the test and train data  

#####2. Select the std and mean related columns names  
* Select the values of the mean and std variables  

#####3. Add activity name to the combined table  

#####4. Provide descriptive variable names using the **stringr** package  
* Extract the column names
* Translate names into descriptive names  

#####5. Create tidy data set with average for each variable for each activity and subject
* Compute the mean using **dplyr** package 
* Output the tidy data set is saved as **tidy_combined_statistics.txt** file
