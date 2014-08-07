# Codebook for "phoneMotionMeans.txt"

**Data Source**

This data comes from the accelerometer and gyroscope within Samsung Galaxy S II smartphones. The data contains readings from those devices (described in more detail below) as well as identifiers for each of the 30 volunteer subjects and the activity in which they were engaged when the readings were sampled.

The data, which had been separated into "train" and "test" sets for machine learning purposes, have been recombined, then aggregated to record the mean value for each reading for each subject and activity.

The original data, as well as further information about its authors, may be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

*The first two columns are Subject and Activity:*

****

**Subject**

  - ID Number for Individual Subjects
  
  - Factor with 30 levels

  - Levels run from 1 to 30


****


**Activity**
  
  - Identifier for type of activity in which subject was engaged
 
  - Factor with 6 levels
  
   1 "Walking"
 
   2 "Walking Upstairs"

   3 "Walking Downstairs"

   4 "Sitting"

   5 "Standing"

   6 "Laying"


****


*The next 66 variables are measurements based on readings from the  
phone* *accelerometer and gyroscope measuring motion and tilt on the 
X, Y, and Z axis.*


****


**Time.BodyAccel.Mean.X**

**Time.BodyAccel.Mean.Y**

**Time.BodyAccel.Mean.Z**

**Time.BodyAccel.StdDev.X**

**Time.BodyAccel.StdDev.Y**

**Time.BodyAccel.StdDev.Z**

*Mean of both mean and standard deviation of time-domain measurements of acceleration from the body (based on samples from phone accelerometer, subtracting out signal from gravity)*
 
*Numeric variables normalized to run from -1 to 1.*


****


**Time.GravityAccel.Mean.X**

**Time.GravityAccel.Mean.Y**

**Time.GravityAccel.Mean.Z**

**Time.GravityAccel.StdDev.X**

**Time.GravityAccel.StdDev.Y**

**Time.GravityAccel.StdDev.Z**

  *Mean of both mean and standard deviation of time-domain measurements of     acceleration from gravity (based on samples from phone accelerometer, subtracting out signal from body acceleration)*
  
*Numeric variables normalized to run from -1 to 1.*


****


**Time.BodyAccelJerk.Mean.X**

**Time.BodyAccelJerk.Mean.Y**

**Time.BodyAccelJerk.Mean.Z**

**Time.BodyAccelJerk.StdDev.X**

**Time.BodyAccelJerk.StdDev.Y**

**Time.BodyAccelJerk.StdDev.Z**

*Mean of both mean and standard deviation of time-domain measurements 
of rate of change of acceleration(based on derivative on samples 
from phone accelerometer, subtracting out signal from gravity 
acceleration)*

*Numeric variables normalized to run from -1 to 1.*


****


**Time.BodyGyro.Mean.X**

**Time.BodyGyro.Mean.Y**

**Time.BodyGyro.Mean.Z**

**Time.BodyGyro.StdDev.X**

**Time.BodyGyro.StdDev.Y**

**Time.BodyGyro.StdDev.Z**

*Mean of both mean and standard deviation of time-domain measurements of angular velocity (based on samples from phone gyroscope)*

*Numeric variables normalized to run from -1 to 1.*


****


**Time.BodyGyroJerk.Mean.X**

**Time.BodyGyroJerk.Mean.Y**

**Time.BodyGyroJerk.Mean.Z**

**Time.BodyGyroJerk.StdDev.X**

**Time.BodyGyroJerk.StdDev.Y**

**Time.BodyGyroJerk.StdDev.Z**

*Mean of both mean and standard deviation of time-domain measurements of rate of change of angular velocity (based on derivative of measurements from phone gyroscope).*

*Numeric variables normalized to run from -1 to 1.*


****


**Time.BodyAccelMagnitude.Mean**

**Time.BodyAccelMagnitude.StdDev**

**Time.GravityAccelMagnitude.Mean**

**Time.GravityAccelMagnitude.StdDev**

**Time.BodyAccelJerkMagnitude.Mean**

**Time.BodyAccelJerkMagnitude.StdDev**

**Time.BodyGyroMagnitude.Mean**

**Time.BodyGyroMagnitude.StdDev**

**Time.BodyGyroJerkMagnitude.Mean**

**Time.BodyGyroJerkMagnitude.StdDev**

*Mean of both mean and standard deviation for the above variables, combining X, Y, and Z measurements into Euclidean magnitudes.*

*Numeric variables normalized to run from -1 to 1.*


****


**Frequency.BodyAccel.Mean.X**

**Frequency.BodyAccel.Mean.Y**

**Frequency.BodyAccel.Mean.Z**

**Frequency.BodyAccel.StdDev.X**

**Frequency.BodyAccel.StdDev.Y**

**Frequency.BodyAccel.StdDev.Z**

*Mean of both mean and standard deviation of frequency-domain measurements of acceleration from the body (based on Fast Fourier Transform of samples from phone accelerometer, subtracting out signal from gravity)*

*Numeric variables normalized to run from -1 to 1.*


****


**Frequency.BodyAccelJerk.Mean.X**

**Frequency.BodyAccelJerk.Mean.Y**

**Frequency.BodyAccelJerk.Mean.Z**

**Frequency.BodyAccelJerk.StdDev.X**

**Frequency.BodyAccelJerk.StdDev.Y**

**Frequency.BodyAccelJerk.StdDev.Z**

*Mean of both mean and standard deviation of frequency-domain measurements of rate of change of  acceleration(based on derivative on samples from phone accelerometer, subtracting out signal from gravity acceleration)*

*Numeric variables normalized to run from -1 to 1.*


****


**Frequency.BodyGyro.Mean.X**

**Frequency.BodyGyro.Mean.Y**

**Frequency.BodyGyro.Mean.Z**

**Frequency.BodyGyro.StdDev.X**

**Frequency.BodyGyro.StdDev.Y**

**Frequency.BodyGyro.StdDev.Z**

*Mean of both mean and standard deviation of frequency-domain measurements of angular velocity (based on samples from phone gyroscope passed through fast Fourier transform)*

*Numeric variables normalized to run from -1 to 1.*


****


**Frequency.BodyBodyAccelMag.Mean**

**Frequency.BodyBodyAccelMag.StdDev**

**Frequency.BodyBodyAccelJerkMag.Mean**

**Frequency.BodyBodyAccelJerkMag.StdDev**

**Frequency.BodyBodyGyroMag.Mean**

**Frequency.BodyBodyGyroMag.StdDev**

**Frequency.BodyBodyGyroJerkMag.Mean**

**Frequency.BodyBodyGyroJerkMag.StdDev**

*Mean of both mean and standard deviation for the above frequency- domain variables, combining X, Y, and Z measurements into Euclidean magnitudes.*

*Numeric variables normalized to run from -1 to 1.*
