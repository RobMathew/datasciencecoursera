Explanations of variables for run_analysis.R
======================================
The first variable is SubjectID, this is a factor variable ranging from 1-30. Each ID represents an individual that participated in the study.

The second variable is Activity. It is a factor variable that represents the different types of activities that were studied. They are: 

1 WALKING

2 WALKING_UPSTAIRS

3 WALKING_DOWNSTAIRS

4 SITTING

5 STANDING

6 LAYING

The rest of the variables are the same that were provided with the dataset. Several key transformations were made to improve their functionality in R. Key transformations were:

- removal of all brackets, as R is confused by brackets because it doesn't expect them to be used as characters
- removal of dashes, for the same reason as the brackets

** For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The column variables were subsetted to only include those that refer to means, and standard deviations, there were 66 such columns. They are:

"tBodyAccmeanX"
"tBodyAccmeanY"
"tBodyAccmeanZ"
 "tGravityAccmeanX"
"tGravityAccmeanY"
"tGravityAccmeanZ"\
"tBodyAccJerkmeanX"\
"tBodyAccJerkmeanY"       \
"tBodyAccJerkmeanZ"\
"tBodyGyromeanX"\
"tBodyGyromeanY"\
"tBodyGyromeanZ"\
"tBodyGyroJerkmeanX"      \
"tBodyGyroJerkmeanY"\
"tBodyGyroJerkmeanZ"\
"tBodyAccMagmean"\
"tGravityAccMagmean"\
"tBodyAccJerkMagmean"     \
"tBodyGyroMagmean"\
"tBodyGyroJerkMagmean"\
"fBodyAccmeanX"\
"fBodyAccmeanY"\
"fBodyAccmeanZ"           \
"fBodyAccJerkmeanX"\
"fBodyAccJerkmeanY"\
"fBodyAccJerkmeanZ"\
"fBodyGyromeanX"\
"fBodyGyromeanY"          \
"fBodyGyromeanZ"\
"fBodyAccMagmean"\
"fBodyBodyAccJerkMagmean"\
"fBodyBodyGyroMagmean"\
"fBodyBodyGyroJerkMagmean"\
"tBodyAccstdX"\
"tBodyAccstdY"\
"tBodyAccstdZ"\
"tGravityAccstdX"\
"tGravityAccstdY"         \
"tGravityAccstdZ"\
"tBodyAccJerkstdX"\
"tBodyAccJerkstdY"\
"tBodyAccJerkstdZ"\
"tBodyGyrostdX"           \
"tBodyGyrostdY"\
"tBodyGyrostdZ"\
"tBodyGyroJerkstdX"\
"tBodyGyroJerkstdY"\
"tBodyGyroJerkstdZ"       \
"tBodyAccMagstd"\'94\
"tGravityAccMagstd"\
"tBodyAccJerkMagstd"\
"tBodyGyroMagstd"\
"tBodyGyroJerkMagstd"     \
"fBodyAccstdX"\
"fBodyAccstdY"\
"fBodyAccstdZ"\
"fBodyAccJerkstdX"\
"fBodyAccJerkstdY"        \
"fBodyAccJerkstdZ"\
"fBodyGyrostdX"\
"fBodyGyrostdY"\
"fBodyGyrostdZ"\
"fBodyAccMagstd"          \
"fBodyBodyAccJerkMagstd"\
"fBodyBodyGyroMagstd"\
"fBodyBodyGyroJerkMagstd" }