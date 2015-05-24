# Getting and Cleaning Data Coursera course project

This project demonstrates how to create tidy data from raw data using R.
Raw data for this project provided by Coursera [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). This is data from [this site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).


All required data processing is contained in R script called run_analysis.R Note before running this script you need set your working directory to the raw data directory you get after unzipping data file (for example setwd("/home/user/UCI HAR Dataset")).


This script does the following:

  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names. 
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

As a result it creates two datasets (R data frames):

  **X** - containes read and cleaned data as described by steps 1-4
  **tidyX** - containes tidy data set as described by step 5

It also saves tidy dataset as text file tidy.txt to the raw data directory.

All variables of tidy dataset are described in codebook file.