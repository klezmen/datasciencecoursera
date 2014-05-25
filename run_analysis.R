require(dplyr)
require(reshape2)
require(data.table)
require(plyr)

myWD <- getwd()
myWD

# 1.  Loading the data from directory and merge the training and the test sets to create one data set.

urlData <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dataSet <- "Dataset.zip"

download.file(urlData, file.path(myWD, dataSet))

myWD2<-getwd()
folderPath <- file.path(myWD2, "UCI HAR Dataset")

myWD2<-setwd('/Users/******datasetsfiles')
myWD2<-getwd()




myWD2<-setwd('/Users/********/datasetsfiles')
folderPath <- file.path(myWD2, "UCI HAR Dataset")


trainSet <- read.table("train/X_train.txt")
testSet <- read.table("test/X_test.txt")
rSet <- rbind(trainSet, testSet)



trainSet <- read.table("train/subject_train.txt")
testSet <- read.table("test/subject_test.txt")
S <- rbind(trainSet, testSet)

trainSet <- read.table("train/y_train.txt")
testSet <- read.table("test/y_test.txt")
Y <- rbind(trainSet, testSet)

allMerged<-cbind(rSet,S,Y)
allMerged<-allMerged[,1:65]
# 2.Extracts only the measurements on the mean and standard deviation for each measurement.

features <- read.table("features.txt")
setnames(features, names(features), c("featureInd", "featureName"))
new_features <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
names(rSet) <- gsub("\\(|\\)", "", names(rSet)) 
newframe<-names(rSet[,1:65])
features <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
features$featureCode <- features[, paste0("V", features$featureInd)]
features
relevantFeatures<-data.frame(features,names(rSet))
relevantFeatures

# 3. Uses descriptive activity names to name the activities in the data set

new_Activities <- read.table("activity_labels.txt")
new_Activities[, 2] = gsub("_", "", new_Activities[, 2])
Y[,1] = new_Activities[Y[,1], 2]
names(Y) <- "activity"

# 4. Appropriately labels the data set with descriptive activity names.



#5. 
end1<-c("That's all folks, i tried my best!!!")
end1
