GettingAndCleaningDataProject
=============================

Coursera Getting and Cleaning Data Project Assignment

## Introduction

This R script executes the steps for creating a tidy data from that includes the mean and standard deviation for all columns with mean and std for each subject and activity from the UCI data set.


## Processing Requirements
The mains steps involved in the processing are 

   * Merges the training and the test sets to create one data set.
   * Extracts only the measurements on the mean and standard deviation for each measurement. 
   * Uses descriptive activity names to name the activities in the data set
   * Appropriately labels the data set with descriptive variable names. 
   * From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
    
## Pre-requisites for executing the script
#### Data input - 
* The script assumes that the UCI data has been unzipped
the script is in the directory with the features.txt, activity.txt along with the test and training data directories. 
#### R library requirements - 
* The processing needs dplyr and stringr packages.
* A helper function is also used for making the variables more readable.
    
Processing Steps:

Before the steps can executed the following data which used by both the trainng and test data has to be loaded:
* Activity labels - which contains the mapping for activity id and activity name
* Features - which contains the variable names for the training and test observations.  The features are listed in a tall table format and they are ready and transposed into a wide table so that they can be used as the column names for the observations.

##    Processing Steps

#### Extract the variables from the features file and transpose to to a wide table format
#### Load the activity labels

#### Merge test and train data
##### Process test files
##### Load the the test subject, observation and activity tables
##### Apply the variable names 
##### Combine the test variables for test data

#### Process train data
##### Load the train subject, observation, and activity tables
##### Set up the variable names for train data
##### Combine the subject, activity and observations data for train

#### Combine the test and train data

#### Select the std and mean related columns names
##### Select the values of the mean and std variables

#### Add activity name to the combined table

#### Provide readable variable names
##### Extract the column names
##### Translate names into descriptive names

#### Create tidy data set with average for each variable for each activity and subject
##### Compute the mean 

#### Save output
##### The tidy data set is saved as tidy_combined_statistics.txt table