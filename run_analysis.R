# 1. Merges the training and the test sets to create one data set

## Read in tranining data
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

## Read in test data
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## Clipping the 561 features data, activity data and subject data together
## for each training and test sets in columns
train <- cbind(X_train,y_train,subject_train)
test <- cbind(X_test,y_test,subject_test)

## Clipping the training and test sets together in rows
mergedData <- rbind(train,test)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

## Define vectors for the extracted columns and column names
extractcol <- c()
extractcolname <- c()

## Read in the file "features.txt" to obtain the column names of the 561 features.
features <- read.table("./UCI HAR Dataset/features.txt", header=F, colClasses="character")
for (i in 1:nrow(features)) {
        ### Check if a column name contains "-mean()" or "-std()" and record
        ### the column number and column name
        if ((grepl("-mean()",features[i,2])) || (grepl("-std()",features[i,2]))) {
                extractcol <- c(extractcol,i)
                extractcolname <- c(extractcolname,features[i,2])
        } 
}
## Extract the columns of mean and standard deviation for each measurement from 
## the data set "mergedData" obtained in Step 1 and record the column names. 
## After running dim(mergedData), the data frame is known to contain 563 columns.
## The last two columns correspond to "activity" and "subject".
extractData <- mergedData[, c(extractcol,562,563)]
extractDatanames <- c(extractcolname, "activity", "subject")

# 3. Uses descriptive activity names to name the activities in the data set
## Read in the file "activity.txt" to get the numeric codes and corresponding
## activities.
activity <- read.table("./UCI HAR Dataset/activity_labels.txt", header=F, colClasses="character")
for (i in 1:nrow(extractData)) {
        for (j in 1:nrow(activity)) {
                ### After running dim(extractData), the data frame is known to contain
                ### 81 columns. The 80th column is the variable "activity". Convert
                ### the numeric code to the corresponding activity name.
                if(extractData[i,80] == j) {
                        extractData[i,80] <- activity[j,2]
                }
        }
}

# 4. Appropriately labels the data set with descriptive variable names.
## The dataset after step 3 is labeled with the recorded column names in step 2.
## For programmatical use, remove sepcial characters "-", "(" and ")". For easier
## reading, captilize "mean" and "std".
extractDatanames <- gsub("[-()]","",extractDatanames)
extractDatanames <- gsub("mean","MEAN",extractDatanames)
extractDatanames <- gsub("std","STD",extractDatanames)
names(extractData) <- extractDatanames

# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
## Here, the first tidy data set is considered as the output data set "extractData" in step 4.
## And the second, independent tidy data set decribed in this step is processed based
## on the first tidy data set "extractData".

## Use data.table library to get the average of each variable by activity and subject.
library(data.table)
DT <- data.table(extractData)
tidyData <- DT[, lapply(.SD, sum), by=list(activity,subject)]

## Get column names of the current tidy data set and rename it by putting "AVE"
## before each column name. Ignore the frist two column names "activity" and "subject".
tidyDatanames <- names(tidyData)
for (i in 3:length(tidyDatanames)) {
        tidyDatanames[i] <- paste("AVE",tidyDatanames[i], sep="")
}
## Set the new names of the tidy data set.
setnames(tidyData, names(tidyData), tidyDatanames)
## Set the data frame acording to subject id and activity name.
tidyData<- tidyData[order(tidyData$subject,tidyData$activity),]
## Write the tidy data set into a tab seprated text file.
write.table(tidyData, "./tidy_data_set.txt", row.names=FALSE, col.names=TRUE, sep="\t", quote=FALSE)







