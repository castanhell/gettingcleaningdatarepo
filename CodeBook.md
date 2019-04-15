# CodeBook for the exercise.

Hello again, in this document I will provide the Code Book for the Exercise. This document was based on the class 01.03 and the short document provided at https://github.com/jtleek/datasharing. 

As I would like to be sure I used the codebook from quizz 3, question 1 as a template for this document. Such document is available at: https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf. 

Of course, there are two mandatory sessions: Study Design and Code Book.

## Study Design

The data was collected from the "Human Activity Recognition Using Smartphones Data Set" (Please refer to the references section), available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. The experiment details accelerometer measures obtained from 30 individuals wearing smartphones in usual activities such as Sitting, Walking, etc.

This dataset contains a compressed folder "UCI HAR Dataset". The experiment sepparates data in training and testing experiments, which one located in a subfolder inside the "UCI HAR Dataset".

Inside each dataset there is an X_dataset.txt file and a y_dataset.txt file, where dataset in {train,test}. The X_dataset file contains the experiment data, consisting on 561 columns, each one describing one variable obtained from the accelerometer data. The y_dataset file contains the number of that activity, such as walking, sitting, etc. The number of the activity can be referenced to the Activity Name using the file "activity_labels.txt" inside the main UCI HAR folder.

Each variable in the X_dataset file can be referenced to its original name using a second file, named "features.txt" inside the main UCI HAR folder. 

The study design procceded as follows: I've loaded the X_dataset files and added the individuals related to each activity, which can be straighforward with the files given. After this, I merged the y_dataset files with the activity labels file to use the activity names rather than their numbers, so the data seems 'tidier'.

Finally I've merged the modified training and test datasets and put the column names to the dataset using the features file, I call this a "Full Dataset" or *full_ds* variable. 

From *full_ds* I extract the mean for each activity-subject pair to create the tidy_dataset.

## Code Book

In this code book I will describe each variable. Just quoting the original author, the variables ActivityName and IndividualNumber come from this exercise, the rest are from the paper.

Referring to the *features_info* there as an explanation for each one of the included variables.

Remember the values contained here summarize the average of the variable for an ActivityName-IndivialNumber pair.  

### ActivityName

Description: Each activity performed by an individual.

Type: Categorial.

Possible values: {WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING}

### IndividualNumber

Description: The individual who performed an activity.

Type: Ordinal

Possible values: Integer from 1 to 30, which one a different individual.

### tBodyAcc-std()-X  

Description:   Average value of the  tBodyAcc-std()-X  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyAcc-std()-Y  

Description:   Average value of the  tBodyAcc-std()-Y  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyAcc-std()-Z  

Description:   Average value of the  tBodyAcc-std()-Z  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tGravityAcc-std()-X  

Description:   Average value of the  tGravityAcc-std()-X  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tGravityAcc-std()-Y  

Description:   Average value of the  tGravityAcc-std()-Y  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tGravityAcc-std()-Z  

Description:   Average value of the  tGravityAcc-std()-Z  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyAccJerk-std()-X  

Description:   Average value of the  tBodyAccJerk-std()-X  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyAccJerk-std()-Y  

Description:   Average value of the  tBodyAccJerk-std()-Y  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyAccJerk-std()-Z  

Description:   Average value of the  tBodyAccJerk-std()-Z  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyGyro-std()-X  

Description:   Average value of the  tBodyGyro-std()-X  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyGyro-std()-Y  

Description:   Average value of the  tBodyGyro-std()-Y  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyGyro-std()-Z  

Description:   Average value of the  tBodyGyro-std()-Z  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyGyroJerk-std()-X  

Description:   Average value of the  tBodyGyroJerk-std()-X  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyGyroJerk-std()-Y  

Description:   Average value of the  tBodyGyroJerk-std()-Y  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyGyroJerk-std()-Z  

Description:   Average value of the  tBodyGyroJerk-std()-Z  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyAccMag-std()  

Description:   Average value of the  tBodyAccMag-std()  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tGravityAccMag-std()  

Description:   Average value of the  tGravityAccMag-std()  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyAccJerkMag-std()  

Description:   Average value of the  tBodyAccJerkMag-std()  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyGyroMag-std()  

Description:   Average value of the  tBodyGyroMag-std()  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyGyroJerkMag-std()  

Description:   Average value of the  tBodyGyroJerkMag-std()  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyAcc-std()-X  

Description:   Average value of the  fBodyAcc-std()-X  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyAcc-std()-Y  

Description:   Average value of the  fBodyAcc-std()-Y  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyAcc-std()-Z  

Description:   Average value of the  fBodyAcc-std()-Z  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyAccJerk-std()-X  

Description:   Average value of the  fBodyAccJerk-std()-X  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyAccJerk-std()-Y  

Description:   Average value of the  fBodyAccJerk-std()-Y  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyAccJerk-std()-Z  

Description:   Average value of the  fBodyAccJerk-std()-Z  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyGyro-std()-X  

Description:   Average value of the  fBodyGyro-std()-X  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyGyro-std()-Y  

Description:   Average value of the  fBodyGyro-std()-Y  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyGyro-std()-Z  

Description:   Average value of the  fBodyGyro-std()-Z  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyAccMag-std()  

Description:   Average value of the  fBodyAccMag-std()  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyBodyAccJerkMag-std()  

Description:   Average value of the  fBodyBodyAccJerkMag-std()  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyBodyGyroMag-std()  

Description:   Average value of the  fBodyBodyGyroMag-std()  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyBodyGyroJerkMag-std()  

Description:   Average value of the  fBodyBodyGyroJerkMag-std()  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyAcc-mean()-X  

Description:   Average value of the  tBodyAcc-mean()-X  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyAcc-mean()-Y  

Description:   Average value of the  tBodyAcc-mean()-Y  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyAcc-mean()-Z  

Description:   Average value of the  tBodyAcc-mean()-Z  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tGravityAcc-mean()-X  

Description:   Average value of the  tGravityAcc-mean()-X  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tGravityAcc-mean()-Y  

Description:   Average value of the  tGravityAcc-mean()-Y  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tGravityAcc-mean()-Z  

Description:   Average value of the  tGravityAcc-mean()-Z  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyAccJerk-mean()-X  

Description:   Average value of the  tBodyAccJerk-mean()-X  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyAccJerk-mean()-Y  

Description:   Average value of the  tBodyAccJerk-mean()-Y  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyAccJerk-mean()-Z  

Description:   Average value of the  tBodyAccJerk-mean()-Z  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyGyro-mean()-X  

Description:   Average value of the  tBodyGyro-mean()-X  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyGyro-mean()-Y  

Description:   Average value of the  tBodyGyro-mean()-Y  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyGyro-mean()-Z  

Description:   Average value of the  tBodyGyro-mean()-Z  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyGyroJerk-mean()-X  

Description:   Average value of the  tBodyGyroJerk-mean()-X  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyGyroJerk-mean()-Y  

Description:   Average value of the  tBodyGyroJerk-mean()-Y  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyGyroJerk-mean()-Z  

Description:   Average value of the  tBodyGyroJerk-mean()-Z  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyAccMag-mean()  

Description:   Average value of the  tBodyAccMag-mean()  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tGravityAccMag-mean()  

Description:   Average value of the  tGravityAccMag-mean()  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyAccJerkMag-mean()  

Description:   Average value of the  tBodyAccJerkMag-mean()  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyGyroMag-mean()  

Description:   Average value of the  tBodyGyroMag-mean()  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### tBodyGyroJerkMag-mean()  

Description:   Average value of the  tBodyGyroJerkMag-mean()  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyAcc-mean()-X  

Description:   Average value of the  fBodyAcc-mean()-X  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyAcc-mean()-Y  

Description:   Average value of the  fBodyAcc-mean()-Y  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyAcc-mean()-Z  

Description:   Average value of the  fBodyAcc-mean()-Z  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyAccJerk-mean()-X  

Description:   Average value of the  fBodyAccJerk-mean()-X  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyAccJerk-mean()-Y  

Description:   Average value of the  fBodyAccJerk-mean()-Y  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyAccJerk-mean()-Z  

Description:   Average value of the  fBodyAccJerk-mean()-Z  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyGyro-mean()-X  

Description:   Average value of the  fBodyGyro-mean()-X  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyGyro-mean()-Y  

Description:   Average value of the  fBodyGyro-mean()-Y  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyGyro-mean()-Z  

Description:   Average value of the  fBodyGyro-mean()-Z  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyAccMag-mean()  

Description:   Average value of the  fBodyAccMag-mean()  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyBodyAccJerkMag-mean()  

Description:   Average value of the  fBodyBodyAccJerkMag-mean()  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyBodyGyroMag-mean()  

Description:   Average value of the  fBodyBodyGyroMag-mean()  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous

### fBodyBodyGyroJerkMag-mean()  

Description:   Average value of the  fBodyBodyGyroJerkMag-mean()  for a fixed ActivityName-Individual pair. *t*  Resumes **time**, *Acc* resumes **Accelerometer** and **Gyro** resumes **Gyroscopter**, **avg()** implies average and **std()** the standard deviation the the measure. *{X,Y,Z}* is the **Axis**. Remember these are average values from the masures for and IndividualNumber-ActivityName pair. Please read the **activities_label.txt** file for more detailed information on the measures. This file is included in the UCI HAR Database folder. (Description generated using an R script) 
 
Type:Continuous



## References

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 
