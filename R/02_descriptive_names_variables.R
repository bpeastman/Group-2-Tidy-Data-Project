# ============================================================
# GROUP 2 - DATA CLEANING AND TIDY DATA PREPARATION
# TASK 3: Descriptive activity names
# TASK 4: Descriptive variable names
# ============================================================

if (!requireNamespace("dplyr", quietly = TRUE)) {
  install.packages("dplyr")
}
library(dplyr)

# Read without automatic syntactic-name conversion. This preserves the
# original feature labels until our explicit clean_names() function runs.
activity_labels <- read.table(
  "data/UCI HAR Dataset/activity_labels.txt",
  col.names = c("activity_id", "activity"),
  stringsAsFactors = FALSE
)
merged_data <- read.csv(
  "output/merged_mean_std.csv",
  check.names = FALSE,
  stringsAsFactors = FALSE
)

# Match labels by activity code without reordering the merged observations.
merged_data$activity <- activity_labels$activity[
  match(merged_data$activity_id, activity_labels$activity_id)
]
if (anyNA(merged_data$activity)) {
  stop("One or more activity codes could not be matched to activity_labels.txt")
}
merged_data$activity_id <- NULL

clean_names <- function(x) {
  x <- gsub("^t", "time_", x)
  x <- gsub("^f", "frequency_", x)
  x <- gsub("BodyBody", "Body", x)
  x <- gsub("Body", "body_", x)
  x <- gsub("Gravity", "gravity_", x)
  x <- gsub("Acc", "acceleration_", x)
  x <- gsub("Gyro", "gyroscope_", x)
  x <- gsub("Mag", "magnitude_", x)
  x <- gsub("Jerk", "jerk_", x)

  # Replace measurement labels
  x <- gsub("mean\\(\\)", "mean", x)
  x <- gsub("std\\(\\)", "standard_deviation", x)
  x <- gsub("\\(\\)", "", x)

  # Standardize separators and capitalization
  x <- gsub("-", "_", x)
  x <- gsub("_+", "_", x)

  tolower(gsub("^_|_$", "", x))
}

names(merged_data) <- clean_names(names(merged_data))

# Confirm the expected structure and descriptive activity labels.
stopifnot(
  nrow(merged_data) == 10299,
  ncol(merged_data) == 68,
  length(unique(merged_data$subject)) == 30,
  length(unique(merged_data$activity)) == 6,
  !anyNA(merged_data)
)

write.csv(merged_data, "output/processed_data.csv", row.names = FALSE)
cat("TASKS 3 AND 4 COMPLETE - processed_data.csv created\n")
