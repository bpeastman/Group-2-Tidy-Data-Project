

# ============================================================
# REPRODUCIBLE RESEARCH - GROUP 2
# Tina Or, Brian Punch-Eastman, Jared Johnson
# Data Cleaning and Tidy Data Preparation
#
# TASK 3: Descriptive Activity Names
# TASK 4: Descriptive Variable Names
# ============================================================

# Install required libraries if not already installed
if (!requireNamespace("dplyr", quietly = TRUE)) {
  install.packages("dplyr")
}

# Load required libraries
library(dplyr)


# TASK 3 - Replace numeric activity codes with descriptive activity names

## load the activity labels
activity_labels <- read.table("data/UCI HAR Dataset/activity_labels.txt",
                              col.names = c("activity_id", "activity"))

## load merged dataset
merged_data <- read.csv("output/merged_mean_std.csv")

## match activity codes with descriptive names
merged_data <- merge(
  merged_data,
  activity_labels,
  by = "activity_id"
)

## remove original numeric activity code
merged_data$activity_id <- NULL

## check activity names
table(merged_data$activity)

# TASK 4 - Assign descriptive variable names

## create a function to clean the variable names
clean_names <- function(x) {
  x <- gsub("^t", "time_", x)
  x <- gsub("^f", "frequency_", x)
  x <- gsub("BodyBody", "Body", x)
  x <- gsub("Body", "body_", x)
  x <- gsub("Gravity", "gravity_", x)
  x <- gsub("Acc", "acceleration_", x)
  x <- gsub("Gyro", "gyroscope_", x)
  x <- gsub("Mag", "magnitude_", x)
  x <- gsub("mean\\(\\)", "mean", x)
  x <- gsub("std\\(\\)", "standard deviation", x)
  x <- gsub("\\(\\)", "", x)
  x <- gsub("-", "_", x)
  x <- gsub("_+", "_", x)
  x <- gsub("_X$", "_x", x)
  x <- gsub("_Y$", "_y", x)
  x <- gsub("_Z$", "_z", x)
  
  x <- tolower(x)
  x
}

## apply function to all columns
names(merged_data) <- clean_names(names(merged_data))

## check the new column names
names(merged_data)

## save the processed dataset for Task 5
write.csv(
  merged_data,
  "output/processed_data.csv",
  row.names = FALSE
)

cat("GROUP 2 - TASKS 3 AND 4 COMPLETE\n\n")
