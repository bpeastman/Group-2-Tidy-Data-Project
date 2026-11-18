

# ============================================================
# REPRODUCIBLE RESEARCH - GROUP 2
# Tina Or, Brian Punch-Eastman, Jared Johnson
# Data Cleaning and Tidy Data Preparation
#
# TASK 5: Tidy Dataset
# ============================================================

# Install required libraries if not already installed
if (!requireNamespace("dplyr", quietly = TRUE)) {
  install.packages("dplyr")
}

# Load required libraries
library(dplyr)


# TASK 5 -  Create final tidy dataset 

## load the processed dataset from Tasks 3 and 4
processed_data <- read.csv("output/processed_data.csv")

## calculate averages for each subject and activity combination
tidy_data <- processed_data %>%
  group_by(subject, activity) %>%
  summarise(
    across(
      where(is.numeric),
      ~ mean(.x, na.rm = TRUE)
    ),
    .groups = "drop"
  ) %>%
  arrange(subject, activity)

## export final tidy dataset
write.csv(
  tidy_data,
  "output/tidy_dataset.csv",
  row.names = FALSE
)

## validate final dataset
cat("Final Tidy Dataset Dimensions:\n")
cat("Rows: ", nrow(tidy_data), "\n")
cat("Columns: ", ncol(tidy_data), "\n")

cat("Number of observations per activity:\n")
cat(as.character(capture.output(table(tidy_data$activity))), sep = "\n")


cat("GROUP 2 - TASK 5 COMPLETE\n")
cat("Final tidy dataset saved to output/tidy_dataset.csv\n")