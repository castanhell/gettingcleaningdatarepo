# Getting and cleaning data course project for castanhell

Hello, this repository contains my submission for the "Getting and Cleaning Data" subject, from coursera.

To reduce your time, this document is organized in sessions, which are:

1. How the folders are organized.
2. How the *run_analysis.R* script works and how it fits the course requirements.
3. How the code book was made (Just in case).

## How the folders are organized

In this folders you will find:

* The dataset obtained from the course page (At UCI HAR Dataset)
* The *run_analysis.R* file containing the script for this Course Project. **This is the only script used on this exercise!**
* The Codebook for the script, at the *CodeBook.md* file.

## The *run_analysis.R* script

The *run_analysis.R* script is where the exercise is solved. I will sepparate in two parts: How the script works and
how it does fits the project requirements.

### How the script works

The script *run_analysis.R* starts loading the neccessary libraries (plyr and reshape2), then it loads the name of the features (obtained
from the *features.txt* file on the repository) and the activity labels (from the *activity_labels.txt*), they will be used to name some columns
and also identify the activities with descriptive names as demanded on step 3.

After loading, the script loads training and test data containing the traning/test data and the individual data with respect to each one, once loaded, the script joins the individual test data to the test data and the individual training data to the tranining data. Then it creates a dataframe containing activity names. Remember the activity numbers for each dataset are represented by numbers from 1-6, so the idea is to merge the dataframe containing the activity numbers to the activity labels dataframe previously loaded. As merge does not preserve the original order we need to include along to the activity numbers a line number we will use to sort the dataset after merging, more respectively: *activity_numbers$Seq <- 1:dim(activity_numbers)[1]*, after inserting this column it should be fine to sort the dataset after merging and restore the original order.

Once the test and training sets are loaded and contaning the ActivityName and IndividualNumber, we join them using rbind, but not comparing the number of columns first, to prevent inconsistencies in the files (As the original ones contain the same number of columns).

Finally we check step 2, which is to keep only average and standard deviation columns. As I couldn't read the paper, what works for me is to look for mean() and std() columns and remove some undesirable "Freq" columns which I don't consider appropriate for step 2 in this exercise. I used the grep() function for this purposes.

The last step is to summarize by each activity and each individual. I use the aggregate function where the by argument is a list containing ActivityName and IndividualNumber), this results in a 180x68 dataframe containing the average value for all the avg() and std() for all the individuals. 
 
### How does the script fits the project requirements (The five steps from the Exercise)

**Merges the training and the test sets to create one data set.**

It uses rbind as explained previously

**Extracts only the measurements on the mean and standard deviation for each measurement.**

Greps the columns excluding the "meanFreq" attributes, which according to the *features_info.txt* file is the mean of the frequency components,
which I do not consider for simplicity purposes.

**Uses descriptive activity names to name the activities in the data set**

I understand to let the activity names on the answer, which is the tidy data, so the reader won't need to look up another table to know 
which activity is (If you have any doubt please check the tidy_data.txt uploaded to this exercise).

**Appropriately labels the data set with descriptive variable names.**

I decided to use the original column labels (Those used on the paper and available on the file *features.txt*)  to reduce the ammount of work, it should be okay according to the community. Just for sure I will let it clear in the code book the tidy_data represents mean_data for each Individual-ActivityName pair.

**From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.**

Everything is explained above. 

## The code book

The code book is provided at the *Codebook.md* file.

## Acknowledgements

I would like to acknowledge David Hood for his clearful FAQ and Antoine Chopin, both from the discussion forums, for the aggregate function idea. Also thank anyone who decided to read all this large README file.

Kind regards,
