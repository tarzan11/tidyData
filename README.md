Readme file for transforming wearable data into a tidy data set.

Here is the problem description for this code:

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

  I buit an R script called run_analysis.R that does the following:
1 - Merges the training and the test sets to create one data set.
2 - Extracts only the measurements on the mean and standard deviation for each measurement. 
3 - Uses descriptive activity names to name the activities in the data set
4 - Appropriately labels the data set with descriptive variable names. 
5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


The dplyr package was used to accomplish this.

First, we read in all the files
X_test <- read.table("UCI HAR Dataset/test/X_test.txt", quote="\"")
Y_test <- read.table("UCI HAR Dataset/test/Y_test.txt", quote="\"")
S_test <- read.table("UCI HAR Dataset/test/subject_test.txt", quote="\"")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt", quote="\"")
Y_train <- read.table("UCI HAR Dataset/train/Y_train.txt", quote="\"")
S_train <- read.table("UCI HAR Dataset/train/subject_train.txt", quote="\"")
Features <- read.table("UCI HAR Dataset/features.txt", quote="\"")
Activity_Labels <- read.table("UCI HAR Dataset/activity_labels.txt", quote="\"")

Then we combine test and training data

X <- bind_rows(X_test, X_train) ; rm(X_test, X_train)
Y <- bind_rows(Y_test, Y_train) ; rm(Y_test, Y_train)
S <- bind_rows(S_test, S_train) ; rm(S_test, S_train)

We need to transpose the contents of Feature labels to be in one row

cols <- t(Features["V2"]) ; rm(Features)

Then make the names suitable for column names
cols <- make.names(names=cols, unique=TRUE, allow_ = FALSE)

And assign the names to columns
names(X) <- cols

Then we subset the columns to only those whose names contain mean and standard deviation
Data <- select(X, matches('mean|std')) ; rm(X)

Then we take some steps to clean up the names further and make them more readable
cols <- names(Data)
cols <- gsub("\\.","_", cols)
cols <- sub("___","_", cols)
cols <- sub("__","", cols)

subs <- matrix(c("Freq", "_Freq",
                 "mean", "_mean",
                 "Jerk", "_Jerk",  
                 "Acc", "_Accel",
                 "fBody", "Freq_Body_",
                 "tGravity", "Time_Gravity_", 
                 "tBody","Time_Body_", 
                 "Gyro", "_Gyro", 
                 "gravity", "_Gravity", 
                 "Mean", "_mean", 
                 "Mag", "_Mag",  
                 "Mean", "_mean") ,
              c(12,2), byrow=TRUE)

for(i in 1:nrow(subs)) {
        cols <-  sub(subs[i,1],subs[i,2],cols)
} ; rm(subs)

cols <- gsub("__","_", cols)


## Remove "_" that remain at the end of column names

for (i in 1:length(cols)) {
        if(substr(cols[i],nchar(cols[i]),nchar(cols[i]))=="_") 
        {  cols[i] <- substr(cols[i],1,nchar(cols[i])-1) } 
} ; rm(i)

Then we reassign the clean names to the columns
names(Data) <- cols ; rm(cols)

We then Join in the Activity labels and subject IDs
Y_Labels <- inner_join(Y,Activity_Labels, by="V1")[2]
Data <- bind_cols(Y_Labels, Data)
names(Data)[1] <- "Activity"
rm(Y)
rm(Y_Labels)
rm(Activity_Labels)

Data <- bind_cols(S, Data)
names(Data)[1] <- "Subject"
rm(S)

Then we summarize the data by takin the mean of each column

Data %>% group_by(Subject, Activity) %>% summarise_each(funs(mean)) -> Tidy_Means

And finally write the summarized data to file
write.table(Tidy_Means, row.names=FALSE, "tidy_means.txt", sep= ",")