# ============================================================
# GROUP 2 - DATA CLEANING AND TIDY DATA PREPARATION
# TASK 5: Create the independent tidy summary dataset
# ============================================================

if (!requireNamespace("dplyr", quietly = TRUE)) {
  install.packages("dplyr")
}
library(dplyr)

processed_data <- read.csv(
  "output/processed_data.csv",
  check.names = FALSE,
  stringsAsFactors = FALSE
)

measurement_names <- setdiff(names(processed_data), c("subject", "activity"))
if (length(measurement_names) != 66) {
  stop("Expected 66 measurement variables; found ", length(measurement_names))
}

tidy_data <- processed_data %>%
  group_by(subject, activity) %>%
  summarise(
    across(all_of(measurement_names), ~ mean(.x, na.rm = TRUE)),
    .groups = "drop"
  ) %>%
  arrange(subject, activity)

# Validate one row for each of 30 subjects x 6 activities.
stopifnot(
  nrow(tidy_data) == 180,
  ncol(tidy_data) == 68,
  n_distinct(tidy_data$subject) == 30,
  n_distinct(tidy_data$activity) == 6,
  !anyDuplicated(tidy_data[c("subject", "activity")]),
  !anyNA(tidy_data)
)

write.csv(tidy_data, "output/tidy_dataset.csv", row.names = FALSE)
cat("Final tidy dataset dimensions: ", nrow(tidy_data), " rows x ",
    ncol(tidy_data), " columns\n", sep = "")
cat("TASK 5 COMPLETE - output/tidy_dataset.csv created\n")
