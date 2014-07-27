library(data.table)

## Downloads data folder from UCI Machine Learning Respository, stores as an object called 'data.zip',
## unzips it, and reads the test and train datasets into R
fileURL <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, "data.zip")
unzip("data.zip", exdir="./UCIData")
testData <- read.table("./UCIData/UCI HAR Dataset/test/X_test.txt", header=F)
trainData <- read.table("./UCIData/UCI HAR Dataset/train/X_train.txt", header=F)


## Read labels from the "features.txt" file and add to both datasets, then combines them into
## the dataframe rawData
labels <- readLines("./UCIData/UCI HAR Dataset/features.txt")
names(testData) <- labels; names(trainData) <- labels
rawData <- rbind(trainData, testData)

## Subsets out only the columns from rawData showing the mean or the standard deviation of the 
## measured variables into dataframe "subData" and tidies up the variable names.
relevantCols <- c(1:6,41:46,81:86,121:126,161:166,201,201,214,215,227,228,240,241,
                   253,254,266:271,345:350,424:429,503,504,516,517,529,530,542,552)
subData <- rawData[relevantCols]
names(subData) <- sapply(1:ncol(subData), function(x) strsplit(names(subData)[x], " ")[[1]][2])
names(subData) <- sub("tBody", "Time.Body", names(subData))
names(subData) <- sub("fBody", "Frequency.Body", names(subData))
names(subData) <- sub("Acc","Accel",names(subData))
names(subData) <- sub("Mag","Magnitude", names(subData))
names(subData) <- sub("-mean\\(\\)-",".Mean.",names(subData))
names(subData) <- sub("-std\\(\\)-",".StdDev.",names(subData))
names(subData) <- sub("-mean\\(\\)", ".Mean" names(subData))


## Reads in the activity identifiers from "y_train.txt" and "y_test.txt" combines them, and 
## stores them as factor vector "Activity"
trainActivity <- readLines("./UCIData/UCI HAR Dataset/train/y_train.txt")
testActivity <- readLines("./UCIData/UCI HAR Dataset/test/y_test.txt")
Activity <- c(trainActivity,testActivity)
Activity <- factor(as.numeric(Activity), labels = c("Walking","Walking Upstairs", "Walking Downstairs",
                                      "Sitting", "Standing", "Laying"))

## Reads in the subject identifiers from "subject_train.txt" and "subject_test.txt", combines 
## them, and stores them as factor vector "Subject"
trainSubject <- readLines("./UCIData/UCI HAR Dataset/train/subject_train.txt")
testSubject <- readLines("./UCIData/UCI HAR Dataset/test/subject_test.txt")
Subject <- c(trainSubject,testSubject)
Subject <- as.factor(as.numeric(Subject))


## Combines the Subject, Activity, and subData into a single tidy dataframe "tidyData", and
## writes that data to a file called "phoneMotionData.txt"
tidyData <- cbind(Subject,Activity,subData)
write.table(tidyData, "phoneMotionData.txt", row.names=F)

## Calculates the means of each subject for each activity, stores the data in a dataframe
## called "tidyMeans" and writes tidyMeans to a file called "phoneMOtionMeans.txt"
tidyMeans <- aggregate(tidyData, by=list(Subject,Activity), FUN=mean)
names(tidyMeans)[1:2] <- c("Subject", "Activity")
write.table(tidyMean, "phoneMotionMeans.txt", row.names=F)
