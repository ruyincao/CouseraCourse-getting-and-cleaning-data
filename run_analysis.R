#step 1: read in all the data from the train/test subdirectory

dataset_path<-file.path(path,"UCI HAR Dataset")
subject_train<-fread(file.path(dataset_path,"train","subject_train.txt"))
subject_test<-fread(file.path(dataset_path,"test","subject_test.txt"))
Activity_train <- fread(file.path(dataset_path, "train", "Y_train.txt"))
Activity_test  <- fread(file.path(dataset_path, "test" , "Y_test.txt" ))
data_train <- fread(file.path(dataset_path, "train", "X_train.txt"))
data_test <- fread(file.path(dataset_path, "test", "X_test.txt"))

####then, merge the data 
subject<-rbind(subject_train,subject_test)
setnames(subject,"V1","subject")
Activity<-rbind(Activity_train,Activity_test)
setnames(Activity,"V1","activityNum")
data<-rbind(data_train,data_test)
data<-cbind(data,subject)
data<-cbind(data,Activity)
setkey(data, subject, activityNum)

#step 2:read in the feature file;
features <- fread(file.path(dataset_path, "features.txt"))
setnames(features, names(features), c("featureNum", "featureName"))
#Subset only measurements for the mean and standard deviation.
features<-features[grepl("mean\\(\\)|std\\(\\)",features$featureName)]
#Convert the column numbers for featureNum to variable names matching columns in data.
features$featureCode <- features[, paste0("V", featureNum)]
#####   subset these variables "subject","activityNum","featureCode"
select<-c(key(data),features$featureCode)
data<-data[,select,with=FALSE]

#step 3: read in the activity lable file and merge it with the above generated data
######Appropriately labels the data set with descriptive variable names.
Activity_name <- fread(file.path(dataset_path, "activity_labels.txt"))
setnames(Activity_name, names(Activity_name), c("activityNum", "activityName"))
data<-merge(data,Activity_name,by="activityNum")
setkey(data, subject, activityName)


#step4: calculate the mean value of every featurecode for every activity and every subject
data2<-data.frame(data)
data2<-data2[,-c(1)]
data2 <- aggregate(data2[,2:67], by = list(data2$subject, data2$activityName), FUN = mean)
colnames(data2)[1:2] <- c("subject", "activityName")

##step5: write the tidy table into txt file
write.table(format(data2, scientific=T,row.names=F), "tidydata.txt")

