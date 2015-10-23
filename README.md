# Cleaning Data Project

This is the readme for the project of the Getting and Cleaning Data course. The repository includes a "run\_analysis.R" file, that, provided the Samsung data is in the same folder, generates a dataset (in a file named cleaning\_data\_exercise.txt) with the average values of all mean and standard deviation variables for each subject and exercise.

## Code book process

The code book (run\_analysis.R) works as follows:

- In the first step, it reads the train set and the test set, merging the data frames into one using `rbind`.
- In the second step, we select the columns that include an average or and standard deviation by their number and we subset our entire dataset.
- In the third step, we transform the activities from an integer to a descriptive string and we add a new column "activity" to our dataset.
- In the fourth step, we modify the column names, setting more descriptive names. For example, from "tBodyAcc-mean()-X" to "TimeBodyAccelerometerMeanX".
- In the fifth step, we add the subject number to each data row. After that, we calculate the mean of each column for each subject-activity pair and create a new dataframe with those averages. Finally, we write the data frame in a file called "cleaning\_data\_exercise.txt". This dataset has 180 rows: 6 activities for each one of the 30 subjects.

## Variables 
- subject : The subject in which the tests were executed. An integer from 1 to 30.
- activity : The type of activity the subject was executing. It can be: standing, sitting, laying, walking, walking downstairs or walking upstairs.
- TimeBodyAccelerometerMeanX
- TimeBodyAccelerometerMeanY
- TimeBodyAccelerometerMeanZ
- TimeBodyAccelerometerStandardDeviationX
- TimeBodyAccelerometerStandardDeviationY
- TimeBodyAccelerometerStandardDeviationZ
- TimeGravityAccelerometerMeanX
- TimeGravityAccelerometerMeanY
- TimeGravityAccelerometerMeanZ
- TimeGravityAccelerometerStandardDeviationX
- TimeGravityAccelerometerStandardDeviationY
- TimeGravityAccelerometerStandardDeviationZ
- TimeBodyAccelerometerJerkMeanX
- TimeBodyAccelerometerJerkMeanY
- TimeBodyAccelerometerJerkMeanZ
- TimeBodyAccelerometerJerkStandardDeviationX
- TimeBodyAccelerometerJerkStandardDeviationY
- TimeBodyAccelerometerJerkStandardDeviationZ
- TimeBodyGyroscopeMeanX
- TimeBodyGyroscopeMeanY
- TimeBodyGyroscopeMeanZ
- TimeBodyGyroscopeStandardDeviationX
- TimeBodyGyroscopeStandardDeviationY
- TimeBodyGyroscopeStandardDeviationZ
- TimeBodyGyroscopeJerkMeanX
- TimeBodyGyroscopeJerkMeanY
- TimeBodyGyroscopeJerkMeanZ
- TimeBodyGyroscopeJerkStandardDeviationX
- TimeBodyGyroscopeJerkStandardDeviationY
- TimeBodyGyroscopeJerkStandardDeviationZ
- TimeBodyAccelerometerEuclideanNormMagnitudeMean
- TimeBodyAccelerometerEuclideanNormMagnitudeStandardDeviation
- TimeGravityAccelerometerEuclideanNormMagnitudeMean
- TimeGravityAccelerometerEuclideanNormMagnitudeStandardDeviation
- TimeBodyAccelerometerJerkEuclideanNormMagnitudeMean
- TimeBodyAccelerometerJerkEuclideanNormMagnitudeStandardDeviation
- TimeBodyGyroscopeEuclideanNormMagnitudeMean
- TimeBodyGyroscopeEuclideanNormMagnitudeStandardDeviation
- TimeBodyGyroscopeJerkEuclideanNormMagnitudeMean
- TimeBodyGyroscopeJerkEuclideanNormMagnitudeStandardDeviation
- FastFourierTransformBodyAccelerometerMeanX
- FastFourierTransformBodyAccelerometerMeanY
- FastFourierTransformBodyAccelerometerMeanZ
- FastFourierTransformBodyAccelerometerStandardDeviationX
- FastFourierTransformBodyAccelerometerStandardDeviationY
- FastFourierTransformBodyAccelerometerStandardDeviationZ
- FastFourierTransformBodyAccelerometerMeanFrequencyX
- FastFourierTransformBodyAccelerometerMeanFrequencyY
- FastFourierTransformBodyAccelerometerMeanFrequencyZ
- FastFourierTransformBodyAccelerometerJerkMeanX
- FastFourierTransformBodyAccelerometerJerkMeanY
- FastFourierTransformBodyAccelerometerJerkMeanZ
- FastFourierTransformBodyAccelerometerJerkStandardDeviationX
- FastFourierTransformBodyAccelerometerJerkStandardDeviationY
- FastFourierTransformBodyAccelerometerJerkStandardDeviationZ
- FastFourierTransformBodyAccelerometerJerkMeanFrequencyX
- FastFourierTransformBodyAccelerometerJerkMeanFrequencyY
- FastFourierTransformBodyAccelerometerJerkMeanFrequencyZ
- FastFourierTransformBodyGyroscopeMeanX
- FastFourierTransformBodyGyroscopeMeanY
- FastFourierTransformBodyGyroscopeMeanZ
- FastFourierTransformBodyGyroscopeStandardDeviationX
- FastFourierTransformBodyGyroscopeStandardDeviationY
- FastFourierTransformBodyGyroscopeStandardDeviationZ
- FastFourierTransformBodyGyroscopeMeanFrequencyX
- FastFourierTransformBodyGyroscopeMeanFrequencyY
- FastFourierTransformBodyGyroscopeMeanFrequencyZ
- FastFourierTransformBodyAccelerometerEuclideanNormMagnitudeMean
- FastFourierTransformBodyAccelerometerEuclideanNormMagnitudeStandardDeviation
- FastFourierTransformBodyAccelerometerEuclideanNormMagnitudeMeanFrequency
- FastFourierTransformBodyAccelerometerJerkEuclideanNormMagnitudeMean
- FastFourierTransformBodyAccelerometerJerkEuclideanNormMagnitudeStandardDeviation
- FastFourierTransformBodyBodyAccelerometerJerkEuclideanNormMagnitudeMeanFrequency
- FastFourierTransformBodyBodyGyroscopeEuclideanNormMagnitudeMean
- FastFourierTransformBodyBodyGyroscopeEuclideanNormMagnitudeStandardDeviation
- FastFourierTransformBodyBodyGyroscopeEuclideanNormMagnitudeMeanFrequency
- FastFourierTransformBodyBodyGyroscopeJerkEuclideanNormMagnitudeMean
- FastFourierTransformBodyBodyGyroscopeJerkEuclideanNormMagnitudeStandardDeviation
- FastFourierTransformBodyBodyGyroscopeJerkEuclideanNormMagnitudeMeanFrequency
