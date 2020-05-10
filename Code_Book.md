# Description of Features and Selection Process

### Feature Selection

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

The set of **"values"** estimated from these signals which was later used to derive the current dataset are: 

mean(): Mean value  
std(): Standard deviation

# Description of variables represented in tidy data file

The first column of the "Grouped_mean_std.txt" represent the subject id of the person undergoing the experiment. In total there are 30 subjects numbered 1:30.

The second column of the "Grouped_mean_std.txt" represent the activity each subject is undergoing. There are six activities labeled as: 

1 WALKING  
2 WALKING_UPSTAIRS  
3 WALKING_DOWNSTAIRS  
4 SITTING  
5 STANDING  
6 LAYING  

All capital letters in the variable names were changed to small letters in the variable names and "-" and "()" were removed.

The entries under each variable for columns 2:68 (list given below) are the average of each **"value"** (mean or std for the corresponding feature) for each activity and each subject (each experiment was repeated multiple times and the average was calculated).

The complete list of variables in the dataset "Grouped_mean_std.txt" including the features, subject and activity are as below:

1 subjects  
2 activity  
3 tbodyaccmeanx  
4 tbodyaccmeany  
5 tbodyaccmeanz  
6 tbodyaccstdx  
7 tbodyaccstdy  
8 tbodyaccstdz  
9 tgravityaccmeanx  
10 tgravityaccmeany  
11 tgravityaccmeanz  
12 tgravityaccstdx  
13 tgravityaccstdy  
14 tgravityaccstdz  
15 tbodyaccjerkmeanx  
16 tbodyaccjerkmeany  
17 tbodyaccjerkmeanz  
18 tbodyaccjerkstdx  
19 tbodyaccjerkstdy  
20 tbodyaccjerkstdz  
21 tbodygyromeanx  
22 tbodygyromeany  
23 tbodygyromeanz  
24 tbodygyrostdx  
25 tbodygyrostdy  
26 tbodygyrostdz  
27 tbodygyrojerkmeanx  
28 tbodygyrojerkmeany  
29 tbodygyrojerkmeanz  
30 tbodygyrojerkstdx  
31 tbodygyrojerkstdy  
32 tbodygyrojerkstdz  
33 tbodyaccmagmean  
34 tbodyaccmagstd  
35 tgravityaccmagmean  
36 tgravityaccmagstd  
37 tbodyaccjerkmagmean  
38 tbodyaccjerkmagstd  
39 tbodygyromagmean  
40 tbodygyromagstd  
41 tbodygyrojerkmagmean  
42 tbodygyrojerkmagstd  
43 fbodyaccmeanx  
44 fbodyaccmeany  
45 fbodyaccmeanz  
46 fbodyaccstdx  
47 fbodyaccstdy  
48 fbodyaccstdz  
49 fbodyaccjerkmeanx  
50 fbodyaccjerkmeany  
51 fbodyaccjerkmeanz  
52 fbodyaccjerkstdx  
53 fbodyaccjerkstdy  
54 fbodyaccjerkstdz  
55 fbodygyromeanx  
56 fbodygyromeany  
57 fbodygyromeanz  
58 fbodygyrostdx  
59 fbodygyrostdy  
60 fbodygyrostdz  
61 fbodyaccmagmean  
62 fbodyaccmagstd  
63 fbodybodyaccjerkmagmean  
64 fbodybodyaccjerkmagstd  
65 fbodybodygyromagmean  
66 fbodybodygyromagstd  
67 fbodybodygyrojerkmagmean  
68 fbodybodygyrojerkmagstd  
