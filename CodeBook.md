# Group 2 — CodeBook

## Group Members
- Tina Or
- Brian Punch-Eastman
- Jared Johnson

## 1. Data Overview

This project uses the **Human Activity Recognition Using Smartphones (UCI HAR)** dataset. The original study collected smartphone accelerometer and gyroscope signals from 30 volunteers (subjects) performing six activities while wearing a Samsung Galaxy S smartphone at the waist. The original data were divided into training and test sets.

- Dataset: Human Activity Recognition Using Smartphones
- UCI dataset page: https://archive.ics.uci.edu/dataset/240/human+activity+recognition+using+smartphones
- Download archive: https://d396qusza40orc.cloudfront.net/getdata/projectfiles/UCI%20HAR%20Dataset.zip
- Original observations: 7,352 training + 2,947 test = 10,299 observations
- Original feature list: 561 features
- Features retained by this project: 66 mean and standard-deviation features

The purpose of this project is to combine the original partitions, retain the requested measurements, use descriptive activity and variable names, and create a second dataset containing the average of each retained measurement for every subject/activity pair.

## 2. Files and Final Dataset

The final file is `output/tidy_dataset.csv`. It contains **180 rows and 68 columns**: one subject identifier, one activity label, and 66 measurement variables. There are 30 subjects and six activities, giving one row for each of the 30 × 6 subject/activity combinations.

The final dataset is in wide tidy form: each row represents one subject performing one activity, each measurement is a separate variable, and each cell contains the average value for that measurement for that subject/activity combination.

### Identifier Variables

| Variable | Description | Data type | Values / units |
|---|---|---|---|
| `subject` | Identifier assigned to the study participant. | Integer | 1–30; no physical unit |
| `activity` | Descriptive name of the activity performed. | Character | WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING |

### Measurement Variables

All 66 measurement columns are numeric. The original feature names were expanded into lowercase, underscore-separated names. `time_` identifies a time-domain feature and `frequency_` identifies a frequency-domain feature. `acceleration`, `gyroscope`, `jerk`, and `magnitude` describe the signal type or transformation; `mean` and `standard_deviation` identify the statistic; and `_x`, `_y`, or `_z` identifies the sensor axis when applicable.

| Final variable name | Description | Data type | Units |
|---|---|---|---|
| `time_body_acceleration_mean_x` | Mean of the time-domain body acceleration signal along the X-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_acceleration_mean_y` | Mean of the time-domain body acceleration signal along the Y-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_acceleration_mean_z` | Mean of the time-domain body acceleration signal along the Z-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_acceleration_standard_deviation_x` | Standard deviation of the time-domain body acceleration signal along the X-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_acceleration_standard_deviation_y` | Standard deviation of the time-domain body acceleration signal along the Y-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_acceleration_standard_deviation_z` | Standard deviation of the time-domain body acceleration signal along the Z-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_gravity_acceleration_mean_x` | Mean of the time-domain gravity acceleration signal along the X-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_gravity_acceleration_mean_y` | Mean of the time-domain gravity acceleration signal along the Y-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_gravity_acceleration_mean_z` | Mean of the time-domain gravity acceleration signal along the Z-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_gravity_acceleration_standard_deviation_x` | Standard deviation of the time-domain gravity acceleration signal along the X-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_gravity_acceleration_standard_deviation_y` | Standard deviation of the time-domain gravity acceleration signal along the Y-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_gravity_acceleration_standard_deviation_z` | Standard deviation of the time-domain gravity acceleration signal along the Z-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_acceleration_jerk_mean_x` | Mean of the time-domain body acceleration jerk signal along the X-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_acceleration_jerk_mean_y` | Mean of the time-domain body acceleration jerk signal along the Y-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_acceleration_jerk_mean_z` | Mean of the time-domain body acceleration jerk signal along the Z-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_acceleration_jerk_standard_deviation_x` | Standard deviation of the time-domain body acceleration jerk signal along the X-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_acceleration_jerk_standard_deviation_y` | Standard deviation of the time-domain body acceleration jerk signal along the Y-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_acceleration_jerk_standard_deviation_z` | Standard deviation of the time-domain body acceleration jerk signal along the Z-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_gyroscope_mean_x` | Mean of the time-domain body gyroscope signal along the X-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_gyroscope_mean_y` | Mean of the time-domain body gyroscope signal along the Y-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_gyroscope_mean_z` | Mean of the time-domain body gyroscope signal along the Z-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_gyroscope_standard_deviation_x` | Standard deviation of the time-domain body gyroscope signal along the X-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_gyroscope_standard_deviation_y` | Standard deviation of the time-domain body gyroscope signal along the Y-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_gyroscope_standard_deviation_z` | Standard deviation of the time-domain body gyroscope signal along the Z-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_gyroscope_jerk_mean_x` | Mean of the time-domain body gyroscope jerk signal along the X-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_gyroscope_jerk_mean_y` | Mean of the time-domain body gyroscope jerk signal along the Y-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_gyroscope_jerk_mean_z` | Mean of the time-domain body gyroscope jerk signal along the Z-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_gyroscope_jerk_standard_deviation_x` | Standard deviation of the time-domain body gyroscope jerk signal along the X-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_gyroscope_jerk_standard_deviation_y` | Standard deviation of the time-domain body gyroscope jerk signal along the Y-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_gyroscope_jerk_standard_deviation_z` | Standard deviation of the time-domain body gyroscope jerk signal along the Z-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_acceleration_magnitude_mean` | Mean of the time-domain body acceleration magnitude signal. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_acceleration_magnitude_standard_deviation` | Standard deviation of the time-domain body acceleration magnitude signal. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_gravity_acceleration_magnitude_mean` | Mean of the time-domain gravity acceleration magnitude signal. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_gravity_acceleration_magnitude_standard_deviation` | Standard deviation of the time-domain gravity acceleration magnitude signal. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_acceleration_jerk_magnitude_mean` | Mean of the time-domain body acceleration jerk magnitude signal. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_acceleration_jerk_magnitude_standard_deviation` | Standard deviation of the time-domain body acceleration jerk magnitude signal. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_gyroscope_magnitude_mean` | Mean of the time-domain body gyroscope magnitude signal. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_gyroscope_magnitude_standard_deviation` | Standard deviation of the time-domain body gyroscope magnitude signal. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_gyroscope_jerk_magnitude_mean` | Mean of the time-domain body gyroscope jerk magnitude signal. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `time_body_gyroscope_jerk_magnitude_standard_deviation` | Standard deviation of the time-domain body gyroscope jerk magnitude signal. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_acceleration_mean_x` | Mean of the frequency-domain body acceleration signal along the X-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_acceleration_mean_y` | Mean of the frequency-domain body acceleration signal along the Y-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_acceleration_mean_z` | Mean of the frequency-domain body acceleration signal along the Z-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_acceleration_standard_deviation_x` | Standard deviation of the frequency-domain body acceleration signal along the X-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_acceleration_standard_deviation_y` | Standard deviation of the frequency-domain body acceleration signal along the Y-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_acceleration_standard_deviation_z` | Standard deviation of the frequency-domain body acceleration signal along the Z-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_acceleration_jerk_mean_x` | Mean of the frequency-domain body acceleration jerk signal along the X-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_acceleration_jerk_mean_y` | Mean of the frequency-domain body acceleration jerk signal along the Y-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_acceleration_jerk_mean_z` | Mean of the frequency-domain body acceleration jerk signal along the Z-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_acceleration_jerk_standard_deviation_x` | Standard deviation of the frequency-domain body acceleration jerk signal along the X-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_acceleration_jerk_standard_deviation_y` | Standard deviation of the frequency-domain body acceleration jerk signal along the Y-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_acceleration_jerk_standard_deviation_z` | Standard deviation of the frequency-domain body acceleration jerk signal along the Z-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_gyroscope_mean_x` | Mean of the frequency-domain body gyroscope signal along the X-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_gyroscope_mean_y` | Mean of the frequency-domain body gyroscope signal along the Y-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_gyroscope_mean_z` | Mean of the frequency-domain body gyroscope signal along the Z-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_gyroscope_standard_deviation_x` | Standard deviation of the frequency-domain body gyroscope signal along the X-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_gyroscope_standard_deviation_y` | Standard deviation of the frequency-domain body gyroscope signal along the Y-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_gyroscope_standard_deviation_z` | Standard deviation of the frequency-domain body gyroscope signal along the Z-axis. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_acceleration_magnitude_mean` | Mean of the frequency-domain body acceleration magnitude signal. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_acceleration_magnitude_standard_deviation` | Standard deviation of the frequency-domain body acceleration magnitude signal. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_acceleration_jerk_magnitude_mean` | Mean of the frequency-domain body acceleration jerk magnitude signal. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_acceleration_jerk_magnitude_standard_deviation` | Standard deviation of the frequency-domain body acceleration jerk magnitude signal. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_gyroscope_magnitude_mean` | Mean of the frequency-domain body gyroscope magnitude signal. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_gyroscope_magnitude_standard_deviation` | Standard deviation of the frequency-domain body gyroscope magnitude signal. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_gyroscope_jerk_magnitude_mean` | Mean of the frequency-domain body gyroscope jerk magnitude signal. | Numeric (double) | Normalized, dimensionless feature value; see note below. |
| `frequency_body_gyroscope_jerk_magnitude_standard_deviation` | Standard deviation of the frequency-domain body gyroscope jerk magnitude signal. | Numeric (double) | Normalized, dimensionless feature value; see note below. |

**Units note:** The source dataset's feature signals were normalized and bounded within [-1, 1]. These are derived signal features rather than raw physical sensor readings, so the retained mean and standard-deviation features are treated as normalized/dimensionless values; they should not be interpreted as raw acceleration in m/s² or angular velocity in rad/s. Frequency-domain features are likewise derived normalized features, not measurements with a directly reported physical unit in this project.

## 3. Missing Data Handling

The supplied intermediate and final CSV files were checked for missing values. The observed count is **0 missing values** in `merged_mean_std.csv`, `processed_data.csv`, and `tidy_dataset.csv`. No imputation or row deletion for missing values is performed. The summarization code uses `na.rm = TRUE` when calculating means as a defensive measure; the current source data contain no missing values in the selected columns.

## 4. Data Processing and Transformations

The analysis is implemented in `GroupWork.R`, which runs the three scripts in the `R/` directory in sequence.

1. **Merge Training and Test Data** (`R/01_import_clean.R`): locate or download and extract the UCI HAR archive; read subject identifiers, activity codes, and measurement matrices for both partitions; select the same 66 features from each partition; and combine the training and test rows. The intermediate output is `output/merged_mean_std.csv` (10,299 rows × 68 columns, including `subject`, `activity_id`, and 66 measurements).
2. **Extract Relevant Measurements** (`R/01_import_clean.R`): use the feature metadata to select feature names containing `mean()` or `std()`. This produces 66 measurement variables.
3. **Descriptive Activity Names** (`R/02_descriptive_names_variables.R`): replace each numeric activity code with its matching label from `activity_labels.txt`, then remove the numeric code.
4. **Descriptive Variable Names** (`R/02_descriptive_names_variables.R`): expand abbreviations and standardize names to lowercase with underscores. The processed output is `output/processed_data.csv`.
5. **Create the tidy summary** (`R/03_create_tidy_dataset.R`): group by `subject` and `activity`, calculate the arithmetic mean of each of the 66 numeric measurements within each group, and arrange rows by subject and activity. Save the result as `output/tidy_dataset.csv`.

The project retains the original measurement values through the first two steps; the final step averages those measurements across the observations belonging to each subject/activity combination.

## 5. Validation Summary

Validation of the CSV files supplied with this project found:

| Check | Result |
|---|---:|
| Training rows | 7,352 |
| Test rows | 2,947 |
| Combined/intermediate rows | 10,299 |
| Selected measurement variables | 66 |
| Intermediate columns | 68 |
| Final tidy rows | 180 |
| Final tidy columns | 68 |
| Unique subjects | 30 |
| Unique activities | 6 |
| Rows per subject/activity combination | Exactly 1 |
| Missing values in final dataset | 0 |
| Duplicate subject/activity combinations | 0 |

These checks describe the CSV artifacts included in the repository. Run the R script locally to reproduce the outputs from the original downloaded data.

## 6. Running the Code

Requirements: R (and internet access on the first run if the UCI HAR archive is not already present). The scripts use the `dplyr` package; the processing script installs it if it is not already installed.

From the repository root directory, run:

```sh
Rscript GroupWork.R
```

The script downloads and extracts the UCI HAR dataset into `data/` if the required source files are not already present, then recreates the CSV files in `output/`. Do not run an individual script from an unrelated working directory because the scripts use project-relative paths.

## 7. Analysis Description and Intended Use

The final dataset supports comparisons of the selected signal features across the six activities and 30 participants. For example, an analyst can compare average time-domain or frequency-domain acceleration and gyroscope features between activities, or examine differences between subjects. The project performs descriptive aggregation only; it does not fit a predictive model, test statistical hypotheses, or establish causal relationships.
