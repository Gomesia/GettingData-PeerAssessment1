## Extract only the measurements on the mean and 
## standard deviation for each measurement.


## Read in files
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", fill = T)
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", fill = T)
features <- read.table("./UCI HAR Dataset/features.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
data_labels <- rbind(c(1,1),c(2,2))

y <- rbind(y_train,y_test)
x <- rbind(x_train, x_test)
subject <- rbind(subject_train,subject_test)

## Construct data frame
var_names <- rbind(data_labels,features)
var_names$V2[[1]] <- "Subject"
var_names$V2[[2]] <- "Activity"

data <- cbind(subject,y,x)
names(data) <- var_names$V2 

## Extracts only the measurements on the mean and standard deviation 
## for each measurement
means <- grep("mean", var_names$V2)
stds <- grep("std", var_names$V2)
toKeep <- sort(c(means,stds))
subject <- data[,1]
activity <- data[,2]

newdata <- data.frame(matrix)
newdata <- data[toKeep]
newdata <- cbind(subject,activity,newdata)

## Uses descriptive activity names to name the activities in the data set
newdata$activity <- sub(1, "walking", newdata$activity )
newdata$activity <- sub(2, "walking upstairs", newdata$activity )
newdata$activity <- sub(3, "walking downstairs", newdata$activity )
newdata$activity <- sub(4, "sitting", newdata$activity )
newdata$activity <- sub(5, "standing", newdata$activity )
newdata$activity <- sub(6, "laying", newdata$activity )

## Rename activities with descriptive names
newdata_names <- names(newdata)
# remove ()
newdata_names <- sub("()", "", newdata_names, fixed = T)
# remove second body in bodybody 
newdata_names[73:81] <- sub("Body", "", newdata_names[73:81], fixed = T)

## From the data set in step 4, create a second, independent tidy data set 
## with the average of each variable for each activity and each subject.

# average each variable by subject, activity
data3 <- data.frame(matrix(vector(),0,81))
temp <- data.frame(matrix(vector(),0, 81))
a <- c("walking", "walking upstairs", "walking downstairs", 
       "sitting", "standing", "laying")
row <- 0 
for (i in 1:30){
        temp <- newdata[which(newdata$subject == i),]
        for(j in a){
                row <- row +1
                b <- temp[which(temp$activity == j),]
                c<- lapply(b[,3:81],mean)
                c <- c(i,j,c)
                data3[row,] <- c 
        }
}
names(data3) <- newdata_names

# write tidy data table
write.table(data3, file = "tidyData.txt", row.names = F)

