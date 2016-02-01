Getting and cleaning data

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


Files in this repo

README.md -- you are reading it 
CodeBook.md -- codebook describing variables, the data and transformations
run_analysis.R -- executable R code

The  run_analysis.R  does the following: 

Step 1:
Read all the test and train files: y_test.txt, subject_test.txt and X_test.txt.
Combine files to a data frame containing subject index, activity labels and data recorded for feature variables.

Step 2:
Read all features from features.txt and grep only it features which are either means value or standard deviations. 
Step 3:
Read the activity labels from activity_labels.txt and add the activity descrptive text into the dataset.

Step 4:
group the data with the same  feature varible  for every activity and every subject
and generate a second data table
Step 5:
Create a new data frame by finding the mean of every feature varible for each combination of subject and label. 
Finally, Write the new tidy set into a text file called tidydata.txt


Note:
1. Before running the script, load data.table package into R.
2.The script should be run in a working directory which contains the  "UCI HAR Dataset" directory,
The "UCI HAR Dataset" has  the following files and folders:
README.txt
activity_labels.txt
features.txt
features_info.txt
test/
train/


After running the script, you should see a file "tidydata.txt" in the working directory



# CouseraCourse-getting-and-cleaning-data
