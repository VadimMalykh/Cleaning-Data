# Code Book

## Study Design
Raw data is provided by Coursera and contains some sensor signals captured using Samsung Galaxy S II smartphone when several people (subjects of this experiment) were doing some kind of activities. Full discription of experiment and collected data you can find on experiment [site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Code Book

Resulted tidy dataset (tidyX) contains measurements, grouped by activity and subject. For each measurement for each activity and subject average value calculated using mean function. Each row contains data for each unique pair of activity and subject.


Values are:
  * **activity** - activity for which measurments collected
  * **subject** - corresponding subject  
Other values are from initial dataset. Full information you can find in dataset archive [here](http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip).  
  * **tBodyAcc-XYZ** and **tGravityAcc-XYZ** - measurments (mean and standard deviation as std) for body acceleration and gravity for 3 axis
  * **tBodyAccJerk-XYZ** and **tBodyGyroJerk-XYZ** - corresponding Jerk signals
  * **tBodyAccMag**, **tGravityAccMag**, **tBodyAccJerkMag**, **tBodyGyroMag**, **tBodyGyroJerkMag** - magnitude of these three-dimensional signals
  * **fBodyAcc-XYZ**, **fBodyAccJerk-XYZ**, **fBodyGyro-XYZ**, **fBodyAccJerkMag**, **fBodyGyroMag**, **fBodyGyroJerkMag** - Fast Fourier Transform applied to each previously described measurement.
