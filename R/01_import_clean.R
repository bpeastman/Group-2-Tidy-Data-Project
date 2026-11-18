

# ============================================================
# REPRODUCIBLE RESEARCH - GROUP 2
# Tina Or, Brian Punch-Eastman, Jared Johnson
# Data Cleaning and Tidy Data Preparation
#
# TASK 1: Merge Training and Testing Data
# TASK 2: Extract Mean and Standard Deviation Measurements
# ============================================================

# STEP 1 - LOCATE AND EXTRACT DATASET

data_dir <- file.path("data", "UCI HAR Dataset")
zip_path <- file.path("data", "har_dataset.zip")


# Extract the supplied dataset if required
required_training_file <- file.path(
  data_dir, "train", "X_train.txt"
)

if (!file.exists(required_training_file)) {

  if (!file.exists(zip_path)) {
    stop("Dataset ZIP missing: data/har_dataset.zip")
  }

  cat("Extracting Group 2 dataset...\n")

  unzip(zip_path, exdir = "data")
}


# Confirm required dataset files exist
required_files <- c(
  "features.txt",
  "activity_labels.txt",
  "train/X_train.txt",
  "train/y_train.txt",
  "train/subject_train.txt",
  "test/X_test.txt",
  "test/y_test.txt",
  "test/subject_test.txt"
)

stopifnot(
  all(file.exists(file.path(data_dir, required_files)))
)

cat("Dataset located successfully.\n\n")


# STEP 2 - LOAD FEATURE METADATA

features <- read.table(
  file.path(data_dir, "features.txt"),
  col.names = c("index", "feature_name"),
  stringsAsFactors = FALSE
)

cat("Original features:", nrow(features), "\n")


# STEP 3 - SELECT MEAN AND STANDARD DEVIATION FEATURES

mean_std_features <- grep(
  "-(mean|std)\\(\\)",
  features$feature_name
)

selected_features <- features$feature_name[
  mean_std_features
]

stopifnot(length(mean_std_features) == 66)

cat("Selected mean/std features:",
    length(mean_std_features), "\n\n")


# STEP 4 - LOAD TRAINING DATA

X_train <- read.table(
  file.path(data_dir, "train", "X_train.txt")
)[, mean_std_features, drop = FALSE]

colnames(X_train) <- selected_features

y_train <- read.table(
  file.path(data_dir, "train", "y_train.txt"),
  col.names = "activity_id"
)

subject_train <- read.table(
  file.path(data_dir, "train", "subject_train.txt"),
  col.names = "subject"
)

data_train <- cbind(
  subject_train,
  y_train,
  X_train
)

cat("Training observations:",
    nrow(data_train), "\n")


# STEP 5 - LOAD TEST DATA

X_test <- read.table(
  file.path(data_dir, "test", "X_test.txt")
)[, mean_std_features, drop = FALSE]

colnames(X_test) <- selected_features

y_test <- read.table(
  file.path(data_dir, "test", "y_test.txt"),
  col.names = "activity_id"
)

subject_test <- read.table(
  file.path(data_dir, "test", "subject_test.txt"),
  col.names = "subject"
)

data_test <- cbind(
  subject_test,
  y_test,
  X_test
)

cat("Testing observations:",
    nrow(data_test), "\n\n")


# STEP 6 - MERGE TRAINING AND TEST DATA

data_combined <- rbind(
  data_train,
  data_test
)

cat("TASK 1 COMPLETE - DATA MERGED\n")
cat("Combined observations:",
    nrow(data_combined), "\n\n")


# STEP 7 - VALIDATE TASKS 1 AND 2

stopifnot(
  nrow(data_train) == 7352,
  nrow(data_test) == 2947,
  nrow(data_combined) == 10299,
  ncol(data_combined) == 68,
  length(unique(data_combined$subject)) == 30,
  length(unique(data_combined$activity_id)) == 6,
  !anyNA(data_combined)
)

cat("TASK 2 COMPLETE - MEAN/STD EXTRACTED\n")
cat("Final rows:", nrow(data_combined), "\n")
cat("Final columns:", ncol(data_combined), "\n")
cat("Missing values:",
    sum(is.na(data_combined)), "\n\n")


# STEP 8 - SAVE INTERMEDIATE DATASET

dir.create("output", showWarnings = FALSE)

write.csv(
  data_combined,
  "output/merged_mean_std.csv",
  row.names = FALSE
)

cat("Intermediate dataset saved successfully.\n")
cat("GROUP 2 - TASKS 1 AND 2 COMPLETE\n")
