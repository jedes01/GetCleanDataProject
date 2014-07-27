##This is the README file accompanying "run_analysis.R"



* This file is designed to 
work with the Samsung Galaxy S5 phone accelerometer
and gyroscope data available 
from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

* "run_analysis.R" takes that somewhat messy data and writes into your working 
directory two tidy files: "phoneMotionData.txt" and "phoneMotionMeans.txt". 
 
* "phoneMotionData.txt" contains the mean and standard deviation of the 
various measures of velocity and acceleration collected by the phone 
at each time sample. "phoneMotionMeans.txt" contains the mean of the same
measurements calculated for each subject and for each activity.  

* The files can be read using 
the R commands read.table("phoneMotionData.txt", header=T) or read.table
("phoneMotionMeans.txt", header=T)

* The specific steps by which run_analysis.R moves from messy data available
online to tidy data in your working directory are as follows:

  1. run_analysis.R will unzip that data into a folder in your working
directory called "UCIData That folder contains a number of files,
with the most important being:

    * "UCI HAR Dataset/features.txt"
    * "UCI HAR Dataset/activity_labels.txt"
    * "UCI HAR Dataset/train/X_train.txt"
    * "UCI HAR Dataset/train/subject_train.txt"
    * "UCI HAR Dataset/train/y_train.txt"
    * "UCI HAR Dataset/test/X_test.txt"
    * "UCI HAR Dataset/test/subject_test.txt"
    * "UCI HAR Dataset/test/y_test.txt"

 2. The bulk of the data is read from "X_train.txt" and 
"X_test.txt" using read.table. Those two tables are merged, and variable names 
are read in from "features.txt".

 3. The data are then subsetted such that only the 
columns referring to mean() or std() are kept *(these are the columns that averaged time-domain variables; those columns labeled meanFreq(), which average frequency-domain measurements are not kept)*.

 4. Activity types are read in from "y_train.txt" and "y_test.txt" and converted to a factor variable according to the mapping in "activity_labels.txt".

 5. Subject IDs are read in from "subject_train.txt" and "subject_test.txt" and
converted to a factor.

 6.  Subject and Activity types are then attached as extra columns at the 
beginning of the dataset.  The resulting dataset, "tidyData" is written to a file in the working directory called "phoneMotionData.txt"

 7. The aggregate function is then used to calculate the means for each variable
in the dataset for each subject and each activity.  The resulting dataset,
"tidyMeans", is written to a file in the working directory called "phoneMotionMeans.txt"

**The codebook for the datasets is available here:**
https://github.com/jedes01/GetCleanDataProject/blob/master/Codebook.md