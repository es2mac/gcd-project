
# From the file "features.txt," read in the variable names
cat("\nReading features... ")
features <- read.table("features.txt", colClasses=c("NULL", "character"))[[1]]
cat("Done.\n")

# Find the variables with names including mean() and std() to read from
selection <- grepl("(mean|std)\\(\\)", features)

readCol <- array("NULL", length(features))
readCol[selection] <- "numeric"

# Read the X_train and X_test data
cat("Reading training data set... ")
rawData <- read.table("train/X_train.txt", colClasses = readCol, nrows=7352)
cat("Done.\n")

cat("Reading testing data set... ")
rawData <- rbind(rawData, read.table("test/X_test.txt", colClasses = readCol, nrows=2947))
cat("Done.\n")

# Name columns appropriately
names(rawData) <- features[selection]

# Read the activities data as an integer array
activityCode <- rbind(read.table("train/y_train.txt"), read.table("test/y_test.txt"))[[1]]

# rewrite activities data with descriptive values, and write to raw data
activityLabels <- read.table("activity_labels.txt", colClasses = c("NULL", "character"))[[1]]
rawData$activity <- sapply(activityCode, function(x) activityLabels[x])
cat("Activity column appended.\n")

# Read the subject array and write to raw data
rawData$ subject <- rbind(read.table("train/subject_train.txt"), read.table("test/subject_test.txt"))[[1]]
cat("Subject column appended.\n")

# Construct tidy data
# Split by activity and subject, and apply column mean
cat("Constructing tidy data... ")
tidyData <- sapply(split(rawData[,1:66], list(rawData$subject, rawData$activity)), colMeans)
tidyData <- data.frame(t(tidyData))
names(tidyData) <- features[selection]
row.names(tidyData) <- gsub("(.*)\\.(.*)", "\\2 \\1", row.names(tidyData))
cat("Done.\n")

# Write tidy data to file
write.table(tidyData, "uci_har_tidy.txt")
cat("Tidy data set written to uci_har_tidy.txt\n")



