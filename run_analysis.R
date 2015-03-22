# Read data
Xtest <- read.table("test/X_test.txt")
ytest <- read.table("test/y_test.txt")
subjecttest <- read.table("test/subject_test.txt")

Xtrain <- read.table("train/X_train.txt")
ytrain <- read.table("train/y_train.txt")
subjecttrain <- read.table("train/subject_train.txt")

# Add the subject and activity columns on the left
Xtest <- cbind(subjecttest, ytest, Xtest)
Xtrain <- cbind(subjecttrain, ytrain, Xtrain)

# Combine the test and train data sets (Step 1)
X <- rbind(Xtest, Xtrain)
colnames(X)[1:2] <- c("Subject", "Activity")

# Convert activity numbers to descriptions (Step 3)
activities <- read.table("activity_labels.txt")
X$Activity <- factor(X$Activity, labels=activities[,2])

# Add in the column names (Step 4)
features <- read.table("features.txt")
features <- as.character(features[,2]) # Otherwise it's a factor
colnames(X)[3:563] <- features

# Look for the columns containing mean() and std()
means <- grep("mean\\(\\)", features)
stds <- grep("std\\(\\)", features)
cols <- sort(c(1, 2, means+2, stds+2)) # The +2 because we added columns earlier

# Subset to look at just the mean and std columns (Step 2)
Xsub <- X[,cols]

# Create data set with the average of each variable for each subject and activity (Step 5)
Xave <- aggregate(Xsub[,-(1:2)], X[,1:2], mean)

# Write the averaged data to a text file
write.table(Xave, file="TidyData.txt", row.names=FALSE)