gcd-courseproject
=================
This repo contains the files for the Course Project of Getting and Cleaning Data Coursera course.
* "README.md". This readme file decribles about what the script "run_analysis.R" did.
* "run_analysis.R". This script produces the data set file "tidy_data_set.txt" as long as the Samsung data used in this course project is in the working directory.
* "tidy_data_set.txt". This text file contains the tidy data set submitted for part 1 of this course project.
* "code book.md". This markdown file is the code book that indicates all the variables and summaries calculated, along with units, and any other relevant information in the tidy data set.

## How to run "run_analysis.R"
Before running the script "run_analysis.R", first make sure the unzipped Samsung data folder "UCI HAR Dataset" is in the same working directory of this script. This scirpt requires library "data.table", please run "install.packages("data.table")" in R if you haven't installed this package. 

To run the script "run_analysis.R", please type "source("run_analysis.R")". 

## How "run_analysis.R" works
"run_analysis.R" does the following 5 steps each of which corresponds to the step requested in the course project. Detailed explanations for each step can be read inside the script as well.

1. Merges the training and the test sets to create one data set.

The code in this step reads the files "X_train.txt", "y_train.txt" and "subject_train" in folder "train" as well as the files "X_test.txt", "y_test.txt" and "subject_test.txt" in folder "test". The data frames from training set and test set are each combined columnwisely and then combined in rows to generate a merged data set containning 563 columns among which, the last two columns decribe the "activity" and "subject" and the rest are the 561 features measured in the survey.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 

The code in this step first reads in the "features.txt" file to get the column names of the 561 features, and then check if the name contains "-mean()" or "-std()" to record the column numbers and column names for extraction. Based on the recorded column numbers (in total 79 columns), the required measurements on the mean and standard deviation can be subsetted from the merged data set from step 1. The extracted data from this step also contains the "activity" and "subject" columns at the end.

3. Uses descriptive activity names to name the activities in the data set.

The code in this step reads in the "activity.txt" file to get the numeric codes for the corresponding activities, and then replaces the numrice numbers in the "activity" column in the extracted data set from last step into the corresponding activities.

4. Appropriately labels the data set with descriptive variable names.

The code in this step set the column names of the extracted data set based on the recorded column names in step 2. The names are modified by removing special characters "-", "(", ")" and captalizing "mean" and "std" in its originals provided in the "features.txt".

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The code in this step uses data.table library to calculate the average of each variable in the extracted data set in step 4 for each activity and each subject, resulting in the tidy data set submitted for part 1. The column names are reset by putting "AVE" before each feature's name. The tidy data set is ordered by the columns "subject" and "activity" for readability.
