gcd-project
===========
This is the peer assessment project part of the *Getting and Cleaning Data* course on Coursera.

This repository includes the following files:
- *README.md*: This file.
- *run_analysis.R*: The R script to be placed in the *UCI HAR Dataset* folder to read and clean up the data.  The result is written to *uci_har_tidy.txt*
- *uci_har_tidy.txt*: The tidy data set.

General Information
===================
The data used in this project consists of accelerometer and gyroscope sensor readings in cell phones, corresponding to different activities that the subjects engage in.  A full description is available at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data used for this project is downloaded from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The data file unzips into a folder named *UCI HAR Dataset*.

R Script Description
====================

The *run_analysis.R* script assumes the working directory to be the root of the decompressed *UCI HAR Dataset* folder.  It does the following:
- Selectively read and combine the training and test data sets (*test/X\_test.txt*, *train/y\_train.txt*) into a data frame, where the columns are mean and standard deviation of other measurements.
- Name the columns according to *features.txt*
- Read the subject and activity data and combine with the measurements
- Convert the activity code column into descriptive text, according to *activity\_labels.txt*
- Categorize the data by subject and activity, and take the column averages
- Write the resulting tidy data set into a file named *uci_har_tidy.txt*

Data Description
================

The following data description is taken from *features_info.txt* that came along with the original data set.

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
>
>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
>
>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

Only the mean and standard deviation measurements are used in the final tidy data set, for a total of 66 variables, averaged over each combination of the 30 subjects and 6 activities (*WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING*).

The mean and standard deviation variables are as follows.

1. tBodyAcc-mean()-X
2. tBodyAcc-mean()-Y
3. tBodyAcc-mean()-Z
4. tBodyAcc-std()-X
5. tBodyAcc-std()-Y
6. tBodyAcc-std()-Z
7. tGravityAcc-mean()-X
8. tGravityAcc-mean()-Y
9. tGravityAcc-mean()-Z
10. tGravityAcc-std()-X
11. tGravityAcc-std()-Y
12. tGravityAcc-std()-Z
13. tBodyAccJerk-mean()-X
14. tBodyAccJerk-mean()-Y
15. tBodyAccJerk-mean()-Z
16. tBodyAccJerk-std()-X
17. tBodyAccJerk-std()-Y
18. tBodyAccJerk-std()-Z
19. tBodyGyro-mean()-X
20. tBodyGyro-mean()-Y
21. tBodyGyro-mean()-Z
22. tBodyGyro-std()-X
23. tBodyGyro-std()-Y
24. tBodyGyro-std()-Z
25. tBodyGyroJerk-mean()-X
26. tBodyGyroJerk-mean()-Y
27. tBodyGyroJerk-mean()-Z
28. tBodyGyroJerk-std()-X
29. tBodyGyroJerk-std()-Y
30. tBodyGyroJerk-std()-Z
31. tBodyAccMag-mean()
32. tBodyAccMag-std()
33. tGravityAccMag-mean()
34. tGravityAccMag-std()
35. tBodyAccJerkMag-mean()
36. tBodyAccJerkMag-std()
37. tBodyGyroMag-mean()
38. tBodyGyroMag-std()
39. tBodyGyroJerkMag-mean()
40. tBodyGyroJerkMag-std()
41. fBodyAcc-mean()-X
42. fBodyAcc-mean()-Y
43. fBodyAcc-mean()-Z
44. fBodyAcc-std()-X
45. fBodyAcc-std()-Y
46. fBodyAcc-std()-Z
47. fBodyAccJerk-mean()-X
48. fBodyAccJerk-mean()-Y
49. fBodyAccJerk-mean()-Z
50. fBodyAccJerk-std()-X
51. fBodyAccJerk-std()-Y
52. fBodyAccJerk-std()-Z
53. fBodyGyro-mean()-X
54. fBodyGyro-mean()-Y
55. fBodyGyro-mean()-Z
56. fBodyGyro-std()-X
57. fBodyGyro-std()-Y
58. fBodyGyro-std()-Z
59. fBodyAccMag-mean()
60. fBodyAccMag-std()
61. fBodyBodyAccJerkMag-mean()
62. fBodyBodyAccJerkMag-std()
63. fBodyBodyGyroMag-mean()
64. fBodyBodyGyroMag-std()
65. fBodyBodyGyroJerkMag-mean()
66. fBodyBodyGyroJerkMag-std()
