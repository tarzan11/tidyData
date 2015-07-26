The source of this data is explained below.  Scroll down to see how the data was subset and further summarized: 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

These variables were then further summarized to calculate the mean of each.  The variable names were expanded to be more readable:
t prefix was changed to time
f prefix was changed to frequency
Acc was changed to Accel
These were then separated by "_" to make them readable.

Here is a list of the resulting columns:

Subject        Contains Subject ID 	Combined test and training data.
Activity	Activity Description 	Used activity description.
Time_Body_Accel_mean_X	Mean of Time Body Accel mean X	Combined test and training data, took the mean, renamed the column.
Time_Body_Accel_mean_Y	 Time Body Accel mean Y	Combined test and training data, took the mean, renamed the column.
Time_Body_Accel_mean_Z	 Time Body Accel mean Z	Combined test and training data, took the mean, renamed the column.
Time_Body_Accel_std_X	 Time Body Accel std X	Combined test and training data, took the mean, renamed the column.
Time_Body_Accel_std_Y	 Time Body Accel std Y	Combined test and training data, took the mean, renamed the column.
Time_Body_Accel_std_Z	 Time Body Accel std Z	Combined test and training data, took the mean, renamed the column.
Time_Gravity_Accel_mean_X	 Time Gravity Accel mean X	Combined test and training data, took the mean, renamed the column.
Time_Gravity_Accel_mean_Y	 Time Gravity Accel mean Y	Combined test and training data, took the mean, renamed the column.
Time_Gravity_Accel_mean_Z	 Time Gravity Accel mean Z	Combined test and training data, took the mean, renamed the column.
Time_Gravity_Accel_std_X	 Time Gravity Accel std X	Combined test and training data, took the mean, renamed the column.
Time_Gravity_Accel_std_Y	 Time Gravity Accel std Y	Combined test and training data, took the mean, renamed the column.
Time_Gravity_Accel_std_Z	 Time Gravity Accel std Z	Combined test and training data, took the mean, renamed the column.
Time_Body_Accel_Jerk_mean_X	 Time Body Accel Jerk mean X	Combined test and training data, took the mean, renamed the column.
Time_Body_Accel_Jerk_mean_Y	 Time Body Accel Jerk mean Y	Combined test and training data, took the mean, renamed the column.
Time_Body_Accel_Jerk_mean_Z	 Time Body Accel Jerk mean Z	Combined test and training data, took the mean, renamed the column.
Time_Body_Accel_Jerk_std_X	 Time Body Accel Jerk std X	Combined test and training data, took the mean, renamed the column.
Time_Body_Accel_Jerk_std_Y	 Time Body Accel Jerk std Y	Combined test and training data, took the mean, renamed the column.
Time_Body_Accel_Jerk_std_Z	 Time Body Accel Jerk std Z	Combined test and training data, took the mean, renamed the column.
Time_Body_Gyro_mean_X	 Time Body Gyro mean X	Combined test and training data, took the mean, renamed the column.
Time_Body_Gyro_mean_Y	 Time Body Gyro mean Y	Combined test and training data, took the mean, renamed the column.
Time_Body_Gyro_mean_Z	 Time Body Gyro mean Z	Combined test and training data, took the mean, renamed the column.
Time_Body_Gyro_std_X	 Time Body Gyro std X	Combined test and training data, took the mean, renamed the column.
Time_Body_Gyro_std_Y	 Time Body Gyro std Y	Combined test and training data, took the mean, renamed the column.
Time_Body_Gyro_std_Z	 Time Body Gyro std Z	Combined test and training data, took the mean, renamed the column.
Time_Body_Gyro_Jerk_mean_X	 Time Body Gyro Jerk mean X	Combined test and training data, took the mean, renamed the column.
Time_Body_Gyro_Jerk_mean_Y	 Time Body Gyro Jerk mean Y	Combined test and training data, took the mean, renamed the column.
Time_Body_Gyro_Jerk_mean_Z	 Time Body Gyro Jerk mean Z	Combined test and training data, took the mean, renamed the column.
Time_Body_Gyro_Jerk_std_X	 Time Body Gyro Jerk std X	Combined test and training data, took the mean, renamed the column.
Time_Body_Gyro_Jerk_std_Y	 Time Body Gyro Jerk std Y	Combined test and training data, took the mean, renamed the column.
Time_Body_Gyro_Jerk_std_Z	 Time Body Gyro Jerk std Z	Combined test and training data, took the mean, renamed the column.
Time_Body_Accel_Mag_mean	 Time Body Accel Mag mean	Combined test and training data, took the mean, renamed the column.
Time_Body_Accel_Mag_std	 Time Body Accel Mag std	Combined test and training data, took the mean, renamed the column.
Time_Gravity_Accel_Mag_mean	 Time Gravity Accel Mag mean	Combined test and training data, took the mean, renamed the column.
Time_Gravity_Accel_Mag_std	 Time Gravity Accel Mag std	Combined test and training data, took the mean, renamed the column.
Time_Body_Accel_Jerk_Mag_mean	 Time Body Accel Jerk Mag mean	Combined test and training data, took the mean, renamed the column.
Time_Body_Accel_Jerk_Mag_std	 Time Body Accel Jerk Mag std	Combined test and training data, took the mean, renamed the column.
Time_Body_Gyro_Mag_mean	 Time Body Gyro Mag mean	Combined test and training data, took the mean, renamed the column.
Time_Body_Gyro_Mag_std	 Time Body Gyro Mag std	Combined test and training data, took the mean, renamed the column.
Time_Body_Gyro_Jerk_Mag_mean	 Time Body Gyro Jerk Mag mean	Combined test and training data, took the mean, renamed the column.
Time_Body_Gyro_Jerk_Mag_std	 Time Body Gyro Jerk Mag std	Combined test and training data, took the mean, renamed the column.
Freq_Body_Accel_mean_X	 Freq Body Accel mean X	Combined test and training data, took the mean, renamed the column.
Freq_Body_Accel_mean_Y	 Freq Body Accel mean Y	Combined test and training data, took the mean, renamed the column.
Freq_Body_Accel_mean_Z	 Freq Body Accel mean Z	Combined test and training data, took the mean, renamed the column.
Freq_Body_Accel_std_X	 Freq Body Accel std X	Combined test and training data, took the mean, renamed the column.
Freq_Body_Accel_std_Y	 Freq Body Accel std Y	Combined test and training data, took the mean, renamed the column.
Freq_Body_Accel_std_Z	 Freq Body Accel std Z	Combined test and training data, took the mean, renamed the column.
Freq_Body_Accel_mean_Freq_X	 Freq Body Accel mean Freq X	Combined test and training data, took the mean, renamed the column.
Freq_Body_Accel_mean_Freq_Y	 Freq Body Accel mean Freq Y	Combined test and training data, took the mean, renamed the column.
Freq_Body_Accel_mean_Freq_Z	 Freq Body Accel mean Freq Z	Combined test and training data, took the mean, renamed the column.
Freq_Body_Accel_Jerk_mean_X	 Freq Body Accel Jerk mean X	Combined test and training data, took the mean, renamed the column.
Freq_Body_Accel_Jerk_mean_Y	 Freq Body Accel Jerk mean Y	Combined test and training data, took the mean, renamed the column.
Freq_Body_Accel_Jerk_mean_Z	 Freq Body Accel Jerk mean Z	Combined test and training data, took the mean, renamed the column.
Freq_Body_Accel_Jerk_std_X	 Freq Body Accel Jerk std X	Combined test and training data, took the mean, renamed the column.
Freq_Body_Accel_Jerk_std_Y	 Freq Body Accel Jerk std Y	Combined test and training data, took the mean, renamed the column.
Freq_Body_Accel_Jerk_std_Z	 Freq Body Accel Jerk std Z	Combined test and training data, took the mean, renamed the column.
Freq_Body_Accel_Jerk_mean_Freq_X	 Freq Body Accel Jerk mean Freq X	Combined test and training data, took the mean, renamed the column.
Freq_Body_Accel_Jerk_mean_Freq_Y	 Freq Body Accel Jerk mean Freq Y	Combined test and training data, took the mean, renamed the column.
Freq_Body_Accel_Jerk_mean_Freq_Z	 Freq Body Accel Jerk mean Freq Z	Combined test and training data, took the mean, renamed the column.
Freq_Body_Gyro_mean_X	 Freq Body Gyro mean X	Combined test and training data, took the mean, renamed the column.
Freq_Body_Gyro_mean_Y	 Freq Body Gyro mean Y	Combined test and training data, took the mean, renamed the column.
Freq_Body_Gyro_mean_Z	 Freq Body Gyro mean Z	Combined test and training data, took the mean, renamed the column.
Freq_Body_Gyro_std_X	 Freq Body Gyro std X	Combined test and training data, took the mean, renamed the column.
Freq_Body_Gyro_std_Y	 Freq Body Gyro std Y	Combined test and training data, took the mean, renamed the column.
Freq_Body_Gyro_std_Z	 Freq Body Gyro std Z	Combined test and training data, took the mean, renamed the column.
Freq_Body_Gyro_mean_Freq_X	 Freq Body Gyro mean Freq X	Combined test and training data, took the mean, renamed the column.
Freq_Body_Gyro_mean_Freq_Y	 Freq Body Gyro mean Freq Y	Combined test and training data, took the mean, renamed the column.
Freq_Body_Gyro_mean_Freq_Z	 Freq Body Gyro mean Freq Z	Combined test and training data, took the mean, renamed the column.
Freq_Body_Accel_Mag_mean	 Freq Body Accel Mag mean	Combined test and training data, took the mean, renamed the column.
Freq_Body_Accel_Mag_std	 Freq Body Accel Mag std	Combined test and training data, took the mean, renamed the column.
Freq_Body_Accel_Mag_mean_Freq	 Freq Body Accel Mag mean Freq	Combined test and training data, took the mean, renamed the column.
Freq_Body_Body_Accel_Jerk_Mag_mean	 Freq Body Body Accel Jerk Mag mean	Combined test and training data, took the mean, renamed the column.
Freq_Body_Body_Accel_Jerk_Mag_std	 Freq Body Body Accel Jerk Mag std	Combined test and training data, took the mean, renamed the column.
Freq_Body_Body_Accel_Jerk_Mag_mean_Freq	 Freq Body Body Accel Jerk Mag mean Freq	Combined test and training data, took the mean, renamed the column.
Freq_Body_Body_Gyro_Mag_mean	 Freq Body Body Gyro Mag mean	Combined test and training data, took the mean, renamed the column.
Freq_Body_Body_Gyro_Mag_std	 Freq Body Body Gyro Mag std	Combined test and training data, took the mean, renamed the column.
Freq_Body_Body_Gyro_Mag_mean_Freq	 Freq Body Body Gyro Mag mean Freq	Combined test and training data, took the mean, renamed the column.
Freq_Body_Body_Gyro_Jerk_Mag_mean	 Freq Body Body Gyro Jerk Mag mean	Combined test and training data, took the mean, renamed the column.
Freq_Body_Body_Gyro_Jerk_Mag_std	 Freq Body Body Gyro Jerk Mag std	Combined test and training data, took the mean, renamed the column.
Freq_Body_Body_Gyro_Jerk_Mag_mean_Freq	 Freq Body Body Gyro Jerk Mag mean Freq	Combined test and training data, took the mean, renamed the column.
angle_Time_Body_Accel_mean_Gravity	 angle Time Body Accel mean Gravity	Combined test and training data, took the mean, renamed the column.
angle_Time_Body_Accel_Jerk_mean_Gravity_mean	 angle Time Body Accel Jerk mean Gravity mean	Combined test and training data, took the mean, renamed the column.
angle_Time_Body_Gyro_mean_Gravity_mean	 angle Time Body Gyro mean Gravity mean	Combined test and training data, took the mean, renamed the column.
angle_Time_Body_Gyro_Jerk_mean_Gravity_mean	 angle Time Body Gyro Jerk mean Gravity mean	Combined test and training data, took the mean, renamed the column.
angle_X_Gravity_mean	 angle X Gravity mean	Combined test and training data, took the mean, renamed the column.
angle_Y_Gravity_mean	 angle Y Gravity mean	Combined test and training data, took the mean, renamed the column.
angle_Z_Gravity_mean	 angle Z Gravity mean	Combined test and training data, took the mean, renamed the column.