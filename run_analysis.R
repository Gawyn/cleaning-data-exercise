# 1. Merging datasets
trainset <- read.table("train/X_train.txt")
testset <- read.table("test/X_test.txt")
totalset <- rbind(trainset, testset)

# 2. Extracting only means and standard deviations
selected_columns <- c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,121,122,123,124,125,126,
                      161,162,163,164,165,166,201,202,214,215,227,228,240,241,253,254,266,267,268,
                      269,270,271,294,295,296,345,346,347,348,349,350,373,374,375,
                      424,425,426,427,428,429,452,453,454,503,504,513,516,517,526,529,530,539,542,543,552)
subset <- totalset[,selected_columns]

# 3. Describing activities
trainactivities <- read.table("train/Y_train.txt")
testactivities <- read.table("test/Y_test.txt")
activities <- rbind(trainactivities, testactivities)

text_activities <- c()
for(i in 1:nrow(activities)){
  activity <- activities[i,]
  if(activity == 1){
    aux <- "walking"
  }
  if(activity == 2){
    aux <- "walking upstairs"
  }
  if(activity == 3){
    aux <- "walking downstairs"
  }
  if(activity == 4){
    aux <- "sitting" 
  }
  if(activity == 5){
    aux <- "standing"
  }
  if(activity == 6){
    aux <- "laying"
  }
  
  text_activities <- c(text_activities, aux)
}

subset[, "activity"] <- text_activities

# 4. Set column names
column_names <- c("TimeBodyAccelerometerMeanX", 
                  "TimeBodyAccelerometerMeanY", 
                  "TimeBodyAccelerometerMeanZ", 
                  "TimeBodyAccelerometerStandardDeviationX", 
                  "TimeBodyAccelerometerStandardDeviationY", 
                  "TimeBodyAccelerometerStandardDeviationZ", 
                  "TimeGravityAccelerometerMeanX", 
                  "TimeGravityAccelerometerMeanY", 
                  "TimeGravityAccelerometerMeanZ", 
                  "TimeGravityAccelerometerStandardDeviationX", 
                  "TimeGravityAccelerometerStandardDeviationY", 
                  "TimeGravityAccelerometerStandardDeviationZ", 
                  "TimeBodyAccelerometerJerkMeanX", 
                  "TimeBodyAccelerometerJerkMeanY", 
                  "TimeBodyAccelerometerJerkMeanZ", 
                  "TimeBodyAccelerometerJerkStandardDeviationX", 
                  "TimeBodyAccelerometerJerkStandardDeviationY", 
                  "TimeBodyAccelerometerJerkStandardDeviationZ", 
                  "TimeBodyGyroscopeMeanX", 
                  "TimeBodyGyroscopeMeanY", 
                  "TimeBodyGyroscopeMeanZ", 
                  "TimeBodyGyroscopeStandardDeviationX", 
                  "TimeBodyGyroscopeStandardDeviationY", 
                  "TimeBodyGyroscopeStandardDeviationZ", 
                  "TimeBodyGyroscopeJerkMeanX", 
                  "TimeBodyGyroscopeJerkMeanY", 
                  "TimeBodyGyroscopeJerkMeanZ", 
                  "TimeBodyGyroscopeJerkStandardDeviationX", 
                  "TimeBodyGyroscopeJerkStandardDeviationY", 
                  "TimeBodyGyroscopeJerkStandardDeviationZ", 
                  "TimeBodyAccelerometerEuclideanNormMagnitudeMean", 
                  "TimeBodyAccelerometerEuclideanNormMagnitudeStandardDeviation", 
                  "TimeGravityAccelerometerEuclideanNormMagnitudeMean", 
                  "TimeGravityAccelerometerEuclideanNormMagnitudeStandardDeviation", 
                  "TimeBodyAccelerometerJerkEuclideanNormMagnitudeMean", 
                  "TimeBodyAccelerometerJerkEuclideanNormMagnitudeStandardDeviation",
                  "TimeBodyGyroscopeEuclideanNormMagnitudeMean",
                  "TimeBodyGyroscopeEuclideanNormMagnitudeStandardDeviation",
                  "TimeBodyGyroscopeJerkEuclideanNormMagnitudeMean",
                  "TimeBodyGyroscopeJerkEuclideanNormMagnitudeStandardDeviation",
                  "FastFourierTransformBodyAccelerometerMeanX",
                  "FastFourierTransformBodyAccelerometerMeanY",
                  "FastFourierTransformBodyAccelerometerMeanZ",
                  "FastFourierTransformBodyAccelerometerStandardDeviationX",
                  "FastFourierTransformBodyAccelerometerStandardDeviationY",
                  "FastFourierTransformBodyAccelerometerStandardDeviationZ",
                  "FastFourierTransformBodyAccelerometerMeanFrequencyX",
                  "FastFourierTransformBodyAccelerometerMeanFrequencyY",
                  "FastFourierTransformBodyAccelerometerMeanFrequencyZ",
                  "FastFourierTransformBodyAccelerometerJerkMeanX",
                  "FastFourierTransformBodyAccelerometerJerkMeanY",
                  "FastFourierTransformBodyAccelerometerJerkMeanZ",
                  "FastFourierTransformBodyAccelerometerJerkStandardDeviationX",
                  "FastFourierTransformBodyAccelerometerJerkStandardDeviationY",
                  "FastFourierTransformBodyAccelerometerJerkStandardDeviationZ",
                  "FastFourierTransformBodyAccelerometerJerkMeanFrequencyX",
                  "FastFourierTransformBodyAccelerometerJerkMeanFrequencyY",
                  "FastFourierTransformBodyAccelerometerJerkMeanFrequencyZ",
                  "FastFourierTransformBodyGyroscopeMeanX",
                  "FastFourierTransformBodyGyroscopeMeanY",
                  "FastFourierTransformBodyGyroscopeMeanZ",
                  "FastFourierTransformBodyGyroscopeStandardDeviationX",
                  "FastFourierTransformBodyGyroscopeStandardDeviationY",
                  "FastFourierTransformBodyGyroscopeStandardDeviationZ",
                  "FastFourierTransformBodyGyroscopeMeanFrequencyX",
                  "FastFourierTransformBodyGyroscopeMeanFrequencyY",
                  "FastFourierTransformBodyGyroscopeMeanFrequencyZ",
                  "FastFourierTransformBodyAccelerometerEuclideanNormMagnitudeMean",
                  "FastFourierTransformBodyAccelerometerEuclideanNormMagnitudeStandardDeviation",
                  "FastFourierTransformBodyAccelerometerEuclideanNormMagnitudeMeanFrequency",
                  "FastFourierTransformBodyAccelerometerJerkEuclideanNormMagnitudeMean",        
                  "FastFourierTransformBodyAccelerometerJerkEuclideanNormMagnitudeStandardDeviation",
                  "FastFourierTransformBodyBodyAccelerometerJerkEuclideanNormMagnitudeMeanFrequency",
                  "FastFourierTransformBodyBodyGyroscopeEuclideanNormMagnitudeMean",
                  "FastFourierTransformBodyBodyGyroscopeEuclideanNormMagnitudeStandardDeviation",
                  "FastFourierTransformBodyBodyGyroscopeEuclideanNormMagnitudeMeanFrequency",
                  "FastFourierTransformBodyBodyGyroscopeJerkEuclideanNormMagnitudeMean",
                  "FastFourierTransformBodyBodyGyroscopeJerkEuclideanNormMagnitudeStandardDeviation",
                  "FastFourierTransformBodyBodyGyroscopeJerkEuclideanNormMagnitudeMeanFrequency",
                  "activity"
                  )

colnames(subset) <- column_names

# 5. Data frame with averages
subjects <- c()
test_subjects <- read.table("test/subject_test.txt")
for (i in 1:nrow(test_subjects)){
  subjects[i] <- test_subjects[i,1]
}

total_test_subjects <- length(subjects)

train_subjects <- read.table("train/subject_train.txt")
for (i in 1:nrow(train_subjects)){
  subjects[total_test_subjects + i] <- train_subjects[i,]
}

subset[, "subject"] <- subjects

df = data.frame(matrix(nrow = 0, ncol = 81), stringsAsFactors=FALSE)
names(df) <- c("subject", "activity", names(subset[1:79]))
i <- 0

for(subject in sort(unique(subset$subject))){
  for(activity in unique(subset$activity)){
    nr_material <- subset[subset$activity == activity & subset$subject == subject,]
    avg_data <- sapply(nr_material[1:79], mean)
    t <- c(subject = subject, activity = activity, avg_data)
    i <- i + 1
    df[i,] <- t
  }
}

write.table(df, file = "cleaning_data_exercise.txt", row.names = FALSE, quote = FALSE)