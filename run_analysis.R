##  Run_analysis.R
##  Written by Castannhell
##

#Loads libraries
#plyr
library(plyr)
library(reshape2)

#Part 1 - Loading the files

#Loading training/test data colnames (Or feature names)
train_data_colnames <- read.table("UCI HAR Dataset/features.txt")$V2

#Loading activity names
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
colnames(activity_labels) <- c("Id", "ActivityName")

#-----------------
#Loading traning data
train_data <- read.table("UCI HAR Dataset/train/X_train.txt")
train_data <- cbind(read.table("UCI HAR Dataset/train/subject_train.txt"),train_data)
#Replace activity numbers for names, as required in this exercise
activity_numbers <- read.table("UCI HAR Dataset/train/y_train.txt")
#Adds a sequence to prevent merge from mixing everything
activity_numbers$Seq <- 1:dim(activity_numbers)[1]
colnames(activity_numbers) <- c("Id","Seq")
activity_names <- arrange(merge(activity_labels,activity_numbers),Seq)
#Remove unneccessary columns
activity_names <- activity_names$ActivityName
#Finally! Binds to the table
train_data <- cbind(activity_names,train_data)

#-----------------
#Loading test data
test_data <- read.table("UCI HAR Dataset/test/X_test.txt")
test_data <- cbind(read.table("UCI HAR Dataset/test/subject_test.txt"),test_data)
#Does the same thing for test data
activity_numbers <- read.table("UCI HAR Dataset/test/y_test.txt")
activity_numbers$Seq <- 1:dim(activity_numbers)[1]
colnames(activity_numbers) <- c("Id","Seq")
activity_names <- arrange(merge(activity_labels,activity_numbers),Seq)
#Remove unneccessary columns
activity_names <- activity_names$ActivityName
#Finally : Cbinds to test_data
test_data <- cbind(activity_names,test_data)

#-----------------
#Quick stop to clear the uneccessary variables
remove(activity_labels,activity_names,activity_numbers)

# You should not rbind with wrong dimensions
stopifnot(dim(train_data)[2] == dim(test_data)[2])

#Merges both datasets
full_ds <- rbind(train_data,test_data)

#Clears train and test data for memory cost reduction
remove(train_data, test_data)

#sets the colnames
colnames(full_ds) <- c("ActivityName", "IndividualNumber", as.vector(train_data_colnames))

#reduces full_ds to only std and mean (Do not forget to remove Freq)
#which I consider for sake unneccessary for this exercise
#Remember: Index 1 = Activity Name, Index 2 = Individual Number
desiredcols <- c(1, 2, grep("std()",colnames(full_ds)),grep("mean()",colnames(full_ds)))
undesiredcols <- c(grep("Freq",colnames(full_ds)))
desiredcols <- desiredcols[!desiredcols %in% undesiredcols]
full_ds <- full_ds[,desiredcols]

#Finally, this is step 5, We should summarize data by taking the 
#mean of each collumn for distinct ActivityName, IndividualNumber pairs
tidy_data <- aggregate(full_ds[,3:dim(full_ds)[2]], by=list(ActivityName=full_ds$ActivityName,
                                       IndividualNumber=full_ds$IndividualNumber),FUN=mean, na.rm=TRUE)

write.table(tidy_data,file="tidy_data.txt",row.name=FALSE)