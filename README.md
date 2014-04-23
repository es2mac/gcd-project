gcd-project
===========
This is the peer assessment project part of the _Getting and Cleaning Data_ course on Coursera.

General Information
===================
The data used in this project consists of accelerometer and gyroscope sensor readings in cell phones, corresponding to different activities that the subjects engage in.  A full description is available at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data used for this project is downloaded from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The data file unzips into a folder named _UCI HAR Dataset_.

"run\_analysis.R" Script Description
=================================

The script assumes the working directory to be the root of the decompressed _UCI HAR Dataset_ folder.  It does the following:
* Selectively read and combine the training and test data sets (_test/X\_test.txt_, _train/y\_train.txt_) into a data frame, where the columns are mean and standard deviation of other measurements.
* Name the columns according to _activity\_labels.txt_























assume the script is placed in that folder
