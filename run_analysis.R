#Script created as submission to the Course Project for the Getting and Cleaning Data.
####PART 1:Merge the test and train data set
#Reading the test given data
test_data <- read.table("test/X_test.txt")
#Reading the test subjects
subject_test <- read.table("test/subject_test.txt")
#read test Activities
test_activities <- read.table("test/y_test.txt")
#merge patients + test_data + test_activity
test_data_combined <- cbind(subject_test,test_activities,test_data)
#Reading the train given data
train_data <- read.table("train/X_train.txt")
#Reading the Train subjects
subject_train <- read.table("train/subject_train.txt")
#read train Activities
train_activities <- read.table("train/y_train.txt")
#merge patients + train_data + train_activity
train_data_combined <- cbind(subject_train,train_activities,train_data)
#combine training and test data
merged_data <- rbind(train_data_combined,test_data_combined)


#reading features list
features <- read.table("features.txt")
#add column names
colnames(merged_data)= c("subjects","activity",as.character(features$V2))

####PART 3:Uses descriptive activity names to name the activities in the data set 
#reading acitivty label
activity_labels <- read.table("activity_labels.txt")
#replacing activity number by name
merged_data$activity <- factor(merged_data$activity,levels=activity_labels$V1,labels=activity_labels$V2)


##PART 2 : Extracts only the measurements on the mean and standard deviation for each measurement.
Subset_data_mean_std <- merged_data[,grep('mean\\(|std',names(merged_data))]
Subset_data_mean_std <- cbind(merged_data$subjects,merged_data$activity,Subset_data_mean_std)
colnames(Subset_data_mean_std)[1:2] <- c("subjects","activity")

#PART 4: Appropriately labels the data set with descriptive variable names.
names(Subset_data_mean_std) <- tolower(gsub("-|\\(\\)","",names(Subset_data_mean_std)))

##PART 5:From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
grouped_summarised_data <- Subset_data_mean_std %>% 
                            group_by(subjects,activity) %>%
                            summarise_all(funs(mean))
#save the final tidy data set with the average of each variable for each activity and each subject.
write.table(grouped_summarised_data,file = "Grouped_mean_std.txt",row.name=FALSE)

