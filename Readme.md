
## Explanation of run_analysis.R

* Download the following dataset: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

* Either place the downloaded file in your R working directory, or change your R working directory to the location of the downloaded file.

* The following assumes that your working directory is "UCI HAR Dataset". Now open the datasets:

* First read in the test dataset
* The X datasets have the raw data on the exercises, the y datasets are for the 6 activities (walking, sitting, standing, etc.), and the subject file has subject ID's. 
        * data.x1 <- read.table("test/X_test.txt", header=FALSE)
        * data.y1 <- read.table("test/Y_test.txt", header=FALSE)
        *subject1 <- read.table("test/subject_test.txt", header=FALSE)


* The y file, and subject file are both vectors of class integer, and need to be converted to factors, to reflect exercises and individuals
* The activity column is a factor variable from 1-6 with the activity names, changes the numbers to text labels

```
data.y1$V1 <- factor(data.y1$V1, levels = c(1,2,3,4,5,6), labels = c("walking", "walking_upstairs", "walking_downstairs", "sitting", "standing", "laying"))
subject1$V1 <- factor(subject1$V1)
```

*Check the data frame dimension sizes
dim(data.x1)
dim(data.y1)
dim(subject1)

* Note they both have the same number of rows, but different columns

* Add the subject id and the activity factor to the test dataset
data.x1 <- cbind(subject1, data.y1, data.x1)

* Now read in the training dataset
data.x2 <- read.table("train/X_train.txt", header=FALSE)
data.y2 <- read.table("train/Y_train.txt", header=FALSE)
subject2 <- read.table("train/subject_train.txt", header=FALSE)

* The y file, and subject file are both vectors of class integer, and need to be converted to factors, to reflect exercises and individuals
* The activity column is a factor variable from 1-6 with the activity names, changes the numbers to text labels
data.y2$V1 <- factor(data.y2$V1, levels = c(1,2,3,4,5,6), labels = c("walking", "walking_upstairs", "walking_downstairs", "sitting", "standing", "laying"))
subject2$V1 <- factor(subject2$V1)

dim(data.x2)
dim(data.y2)
dim(subject2)

* It has the same number of rows, but different columns here as well

* Add subject id and the activity factor to the test dataset, using cbind
data.x2 <- cbind(subject2, data.y2, data.x2)

* Both the training and test sets have the same number of columns, rbind them together into one dataset

data <- rbind(data.x1, data.x2)

* Find only the mean and standard deviation measurements for each measurement, using the features text file

features <- read.table("features.txt", header=FALSE)

* Concatenate a vector of where the 'mean' and 'standard devation' variables are, using the grep function
colnums <- c(grep("mean\\(", features$V2), grep("std", features$V2))

* recall that the first two columns in the dataset are the subject id and excercise id, and then we have the columns that are provided in the features text file; to properly identify the right places, we need to add two to each of the values in the features file, because of the individual and activity id's
colnums2<- colnums+2

* But we still want to include the first two columns, so concatenate them on
colnums2 <- c(1,2,colnums2)

* Subset the dataset to only including the individual ID, the activity, and the mean and standard deviation variables
data <- data[,colnums2]

* Now add appropriate data labels to each column
* create a vector of column names from the features labels
names <- as.character(features$V2[colnums])

* Add subject id and activity
names<- c("SubjectID", "Activity", names)

* Remove the brackets and dashes from the file
names <- gsub("\\(\\)",replacement="", names)
names <- gsub("\\-",replacement="", names)

* Now rename the column names in our data file
colnames(data) <- names

* Reshape the data into a tidy narrow dataset, this will have four columns: the subject id, the activity, the measurement (ex. tBodyAccmeanX) and the value of the measurement

* This yields a data table with 679,734 rows, and four columns

* From this, find the mean for each variable, so that we end up with one mean for each subject ID, and each activity. This should produce a data table with 180 rows (30 subjects x 6 activities)

tidyData <- dcast(dataMelt, SubjectID + Activity~ variable, mean)

* Lastly, write out the data
write.table(tidyData, file = "TidyData.txt", sep=",")