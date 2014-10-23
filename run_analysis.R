library(dplyr)
library(stringr)

# Helper method to replace string
replacementHelper <- function(pattern,replacement,names) {
	str_replace(string=names,pattern=pattern,replacement=replacement)
}

#    Processing requirements
#    Merges the training and the test sets to create one data set.
#    Extracts only the measurements on the mean and standard deviation for each measurement. 
#    Uses descriptive activity names to name the activities in the data set
#    Appropriately labels the data set with descriptive variable names. 
#    From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

# Extract the variables from the features file and transpose to to a wide table format
features <- read.table("features.txt",stringsAsFactors=F)
features_labels <- features[,2]
features_labels_transposed <- t(features_labels)

# Load the activity labels
activity_labels <- read.table("activity_labels.txt",stringsAsFactors=F)

# Load the the test subject, observation and activity tables
subject_test <- read.table("test/subject_test.txt")
X_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")

# Apply the variable names  
colnames(X_test) <- features_labels_transposed
colnames(subject_test) <- c("subject_id")
colnames(y_test) <- c("activity_id")

# Combine the test variables for test data
combined_test_subject_y_X <- cbind(subject_test,y_test,X_test)

# Load the train subject, observation, and activity tables
subject_train <- read.table("train/subject_train.txt")
y_train <- read.table("train/y_train.txt")
X_train <- read.table("train/X_train.txt")

# Set up the variable names for train data
colnames(X_train) <- features_labels_transposed
colnames(subject_train) <- c("subject_id")
colnames(y_train) <- c("activity_id")

#Combine the subject, activity and observations data for train
combined_train_subject_y_X <- cbind(subject_train,y_train,X_train)

# Combine the test and train data
combined_test_train_subject_y_X <-rbind(combined_test_subject_y_X,combined_train_subject_y_X)

# Select the std and mean related columns names
mean_or_std_activty_subject_id_columns <- grepl(pattern="(.*[Mm]ean.*)|(.*std.*)|activity_id|subject_id",x=names(combined_test_train_subject_y_X))

# Select the values of the mean and std variables
combined_test_train_subject_y_X_mean_std <- combined_test_train_subject_y_X[,mean_or_std_activty_subject_id_columns]

# Add activity name to the combined table
combined_test_train_subject_y_X_mean_std$activity_name <- activity_labels[match(combined_test_train_subject_y_X_mean_std[["activity_id"]],activity_labels[["V1"]]),"V2"]

# Extract the column names
combined_test_train_subject_y_X_mean_std_names <- names(combined_test_train_subject_y_X_mean_std)

# Make readable variable names
patterns <- c("^t","^f","-mean","-std",",g","\\(t","\\(X","\\(Y","\\(Z","\\(","\\)","\\-","\\)")

# The replacement values for the
replacements <- c("time","freq","Mean","Std","G","Time","X","Y","Z","","","","")

# Replace the patterns with replacements strings
for (i in 1:length(patterns)) {
combined_test_train_subject_y_X_mean_std_names <- replacementHelper(patterns[i],replacements[i],combined_test_train_subject_y_X_mean_std_names)
} 

# Set the readable variable names
names(combined_test_train_subject_y_X_mean_std) <- combined_test_train_subject_y_X_mean_std_names

# Compute the statistics
combined_statistics <- combined_test_train_subject_y_X_mean_std %>% group_by(subject_id,activity_id,activity_name) %>% summarise_each(funs(mean))

# Save the file

write.table(combined_statistics,"tidy_combined_statistics.txt",row.names=FALSE)