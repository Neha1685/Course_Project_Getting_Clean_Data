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
3 timebodyaccelerometermeanx                              
4 timebodyaccelerometermeany                              
5 timebodyaccelerometermeanz                              
6 timebodyaccelerometerstandarddeviationx                 
7 timebodyaccelerometerstandarddeviationy                 
8 timebodyaccelerometerstandarddeviationz                 
9 timegravityaccelerometermeanx                           
10 timegravityaccelerometermeany                           
11 timegravityaccelerometermeanz                           
12 timegravityaccelerometerstandarddeviationx              
13 timegravityaccelerometerstandarddeviationy              
14 timegravityaccelerometerstandarddeviationz              
15 timebodyaccelerometerjerkmeanx                          
16 timebodyaccelerometerjerkmeany                          
17 timebodyaccelerometerjerkmeanz                          
18 timebodyaccelerometerjerkstandarddeviationx             
19 timebodyaccelerometerjerkstandarddeviationy             
20 timebodyaccelerometerjerkstandarddeviationz             
21 timebodygyroscopemeanx                                  
22 timebodygyroscopemeany                                  
23 timebodygyroscopemeanz                                  
24 timebodygyroscopestandarddeviationx                     
25 timebodygyroscopestandarddeviationy                     
26 timebodygyroscopestandarddeviationz                     
27 timebodygyroscopejerkmeanx                              
28 timebodygyroscopejerkmeany                              
29 timebodygyroscopejerkmeanz                              
30 timebodygyroscopejerkstandarddeviationx                 
31 timebodygyroscopejerkstandarddeviationy                 
32 timebodygyroscopejerkstandarddeviationz                 
33 timebodyaccelerometermagnitudemean                      
34 timebodyaccelerometermagnitudestandarddeviation         
35 timegravityaccelerometermagnitudemean                    
36 timegravityaccelerometermagnitudestandarddeviation      
37 timebodyaccelerometerjerkmagnitudemean                  
38 timebodyaccelerometerjerkmagnitudestandarddeviation     
39 timebodygyroscopemagnitudemean                          
40 timebodygyroscopemagnitudestandarddeviation             
41 timebodygyroscopejerkmagnitudemean                      
42 timebodygyroscopejerkmagnitudestandarddeviation         
43 frequencybodyaccelerometermeanx                         
44 frequencybodyaccelerometermeany                         
45 frequencybodyaccelerometermeanz                         
46 frequencybodyaccelerometerstandarddeviationx            
47 frequencybodyaccelerometerstandarddeviationy            
48 frequencybodyaccelerometerstandarddeviationz            
49 frequencybodyaccelerometerjerkmeanx                     
50 frequencybodyaccelerometerjerkmeany                     
51 frequencybodyaccelerometerjerkmeanz                     
52 frequencybodyaccelerometerjerkstandarddeviationx        
53 frequencybodyaccelerometerjerkstandarddeviationy        
54 frequencybodyaccelerometerjerkstandarddeviationz        
55 frequencybodygyroscopemeanx                             
56 frequencybodygyroscopemeany                             
57 frequencybodygyroscopemeanz                             
58 frequencybodygyroscopestandarddeviationx                
59 frequencybodygyroscopestandarddeviationy                
60 frequencybodygyroscopestandarddeviationz                
61 frequencybodyaccelerometermagnitudemean                 
62 frequencybodyaccelerometermagnitudestandarddeviation    
63 frequencybodyaccelerometerjerkmagnitudemean             
64 frequencybodyaccelerometerjerkmagnitudestandarddeviation
65 frequencybodygyroscopemagnitudemean                     
66 frequencybodygyroscopemagnitudestandarddeviation        
67 frequencybodygyroscopejerkmagnitudemean                 
68 frequencybodygyroscopejerkmagnitudestandarddeviation  
