library(dplyr)

## Read in all the files
X_test <- read.table("UCI HAR Dataset/test/X_test.txt", quote="\"")
Y_test <- read.table("UCI HAR Dataset/test/Y_test.txt", quote="\"")
S_test <- read.table("UCI HAR Dataset/test/subject_test.txt", quote="\"")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt", quote="\"")
Y_train <- read.table("UCI HAR Dataset/train/Y_train.txt", quote="\"")
S_train <- read.table("UCI HAR Dataset/train/subject_train.txt", quote="\"")
Features <- read.table("UCI HAR Dataset/features.txt", quote="\"")
Activity_Labels <- read.table("UCI HAR Dataset/activity_labels.txt", quote="\"")

## Combine test and training data
X <- bind_rows(X_test, X_train) ; rm(X_test, X_train)
Y <- bind_rows(Y_test, Y_train) ; rm(Y_test, Y_train)
S <- bind_rows(S_test, S_train) ; rm(S_test, S_train)

## Transpose the contents of Feature labels to be in one row
cols <- t(Features["V2"]) ; rm(Features)

## Make the names suitable for column names
cols <- make.names(names=cols, unique=TRUE, allow_ = FALSE)

## Assign the names to columns
names(X) <- cols

## Subset the columns to only those that contain mean and standard deviation
Data <- select(X, matches('mean|std')) ; rm(X)

## Clean up the names further and make them more readable
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

## Reassign the clean names to the columns
names(Data) <- cols ; rm(cols)

## Join in the Activity labels
Y_Labels <- inner_join(Y,Activity_Labels, by="V1")[2]
Data <- bind_cols(Y_Labels, Data)
names(Data)[1] <- "Activity"
rm(Y)
rm(Y_Labels)
rm(Activity_Labels)

## Join in the Subjects
Data <- bind_cols(S, Data)
names(Data)[1] <- "Subject"
rm(S)

## Build the summary data set
Data %>% group_by(Subject, Activity) %>% summarise_each(funs(mean)) -> Tidy_Means

## Write the summarized data to file
write.table(Tidy_Means, row.names=FALSE, "tidy_means.txt", sep= ",")