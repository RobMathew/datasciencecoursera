{\rtf1\ansi\ansicpg1252\cocoartf1265\cocoasubrtf190
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural

\f0\fs24 \cf0 ** Explanations of variables for run_analysis.R\
\
The first variable is SubjectID, this is a factor variable ranging from 1-30. Each ID represents an individual that participated in the study.\
\
The second variable is Activity. It is a factor variable that represents the different types of activities that were studied. They are: \
1 WALKING\
2 WALKING_UPSTAIRS\
3 WALKING_DOWNSTAIRS\
4 SITTING\
5 STANDING\
6 LAYING\
\
The rest of the variables are the same that were provided with the dataset. Several key transformations were made to improve their functionality in R. Key transformations were:\
- removal of all brackets, as R is confused by brackets because it doesn\'92t expect them to be used as characters\
- removal of dashes, for the same reason as the brackets\
\
The column variables were subsetted to only include those that refer to means, and standard deviations, there were 66 such columns. They are:\
\
"tBodyAccmeanX"            \
"tBodyAccmeanY"\
"tBodyAccmeanZ"           \
 "tGravityAccmeanX"\
"tGravityAccmeanY"\
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