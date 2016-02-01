#Background for Variables in the tidydata.txt

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain si0gnals).
These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tbodyacc-xyz
tgravityacc-xyz
tbodyaccjerk-xyz
tbodygyro-xyz
tbodygyrojerk-xyz
tbodyaccmag
tgravityaccmag
tbodyaccjerkmag
tbodygyromag
tbodygyrojerkmag
fbodyacc-xyz
fbodyaccjerk-xyz
fbodygyro-xyz
fbodyaccmag
fbodyaccjerkmag
fbodygyromag
fbodygyrojerkmag
The set of variables that were estimated from these signals are:

mean: Mean value in the form of mean()

std: Standard deviation in the form of std()


#Variables's details
subject                    
    Subject number
                           1..30 .Unique identifier assigned to each subject

activityy                       
    acitivityName
                           "WALKING"
                           "WALKING_UPSTAIRS"
                           "WALKING_DOWNSTAIRS"
                           "SITTING"
                           "STANDING"
                           "LAYING"

feature variable
     mean value for each combination of subject and activity 
             "V1"   "tBodyAcc-mean()-X"          
             "V2"   "tBodyAcc-mean()-Y"          
             "V3"   "tBodyAcc-mean()-Z"          
             "V4"   "tBodyAcc-std()-X"           
             "V5"   "tBodyAcc-std()-Y"           
             "V6"   "tBodyAcc-std()-Z"           
            "V41"  "tGravityAcc-mean()-X"       
            "V42"  "tGravityAcc-mean()-Y"       
            "V43"  "tGravityAcc-mean()-Z"       
            "V44"  "tGravityAcc-std()-X"        
            "V45"  "tGravityAcc-std()-Y"        
            "V46"  "tGravityAcc-std()-Z"        
            "V81"  "tBodyAccJerk-mean()-X"      
            "V82"  "tBodyAccJerk-mean()-Y"      
            "V83"  "tBodyAccJerk-mean()-Z"      
            "V84"  "tBodyAccJerk-std()-X"       
            "V85"  "tBodyAccJerk-std()-Y"       
            "V86"  "tBodyAccJerk-std()-Z"       
           "V121" "tBodyGyro-mean()-X"         
           "V122" "tBodyGyro-mean()-Y"         
           "V123" "tBodyGyro-mean()-Z"         
           "V124" "tBodyGyro-std()-X"          
           "V125" "tBodyGyro-std()-Y"          
           "V126" "tBodyGyro-std()-Z"          
           "V161" "tBodyGyroJerk-mean()-X"     
           "V162" "tBodyGyroJerk-mean()-Y"     
           "V163" "tBodyGyroJerk-mean()-Z"     
           "V164" "tBodyGyroJerk-std()-X"      
           "V165" "tBodyGyroJerk-std()-Y"      
           "V166" "tBodyGyroJerk-std()-Z"      
           "V201" "tBodyAccMag-mean()"         
           "V202" "tBodyAccMag-std()"          
           "V214" "tGravityAccMag-mean()"      
           "V215" "tGravityAccMag-std()"       
           "V227" "tBodyAccJerkMag-mean()"     
           "V228" "tBodyAccJerkMag-std()"      
           "V240" "tBodyGyroMag-mean()"        
           "V241" "tBodyGyroMag-std()"         
           "V253" "tBodyGyroJerkMag-mean()"    
           "V254" "tBodyGyroJerkMag-std()"     
           "V266" "fBodyAcc-mean()-X"          
           "V267" "fBodyAcc-mean()-Y"          
           "V268" "fBodyAcc-mean()-Z"          
           "V269" "fBodyAcc-std()-X"           
           "V270" "fBodyAcc-std()-Y"           
           "V271" "fBodyAcc-std()-Z"           
           "V345" "fBodyAccJerk-mean()-X"      
           "V346" "fBodyAccJerk-mean()-Y"      
           "V347" "fBodyAccJerk-mean()-Z"      
           "V348" "fBodyAccJerk-std()-X"       
           "V349" "fBodyAccJerk-std()-Y"       
           "V350" "fBodyAccJerk-std()-Z"       
           "V424" "fBodyGyro-mean()-X"         
           "V425" "fBodyGyro-mean()-Y"         
           "V426" "fBodyGyro-mean()-Z"         
           "V427" "fBodyGyro-std()-X"          
           "V428" "fBodyGyro-std()-Y"          
           "V429" "fBodyGyro-std()-Z"          
           "V503" "fBodyAccMag-mean()"         
           "V504" "fBodyAccMag-std()"          
           "V516" "fBodyBodyAccJerkMag-mean()" 
           "V517" "fBodyBodyAccJerkMag-std()"  
           "V529" "fBodyBodyGyroMag-mean()"    
           "V530" "fBodyBodyGyroMag-std()"     
           "V542" "fBodyBodyGyroJerkMag-mean()"
           "V543" "fBodyBodyGyroJerkMag-std()" 

#the final tidydata is a table with 180 rows by 68 columns
