
# Group 2 — CodeBook

## Group Members
- Tina Or
- Brian Punch-Eastman
- Jared Johnson

## 1. Dataset Overview

Dataset: Human Activity Recognition Using Smartphones

Source: UCI Machine Learning Repository

The dataset contains measurements collected from
30 subjects performing six physical activities
while carrying a Samsung Galaxy S smartphone.

## 2. Original Dataset

- Training observations: 7,352
- Testing observations: 2,947
- Combined observations: 10,299
- Original measurement features: 561

## 3. Data Processing

### Task 1 — Merge Training and Test Data
Status: Complete

Training and testing observations were combined
into one dataset.

### Task 2 — Extract Relevant Measurements
Status: Complete

Only features representing mean() and std()
measurements were retained.

Selected measurement features: 66

### Task 3 — Descriptive Activity Names
Status: Complete

Numeric activity codes were replaced with
descriptive activity names using the original
activity_labels.txt file.

The six activity names are:

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

The activity_id column was removed after 
the descriptive activity names were assigned.

### Task 4 — Descriptive Variable Names
Status: Complete

Original measurement variable names were cleaned
and converted into descriptive, lowercase names
using underscores. All abbreviations are written out.

For instance, tBodyAcc-mean()-X becomes time_body_acceleration_mean_x
and tBodyGyro-mean()-Z becomes time_body_gyroscope_mean_z.

### Task 5 — Tidy Dataset
Status: Complete

The processed dataset was grouped by subject and activity.

For each subject and activity combination, the average
was calculated using the dplyr package. 

The resulting dataset contains one row for each subject
and activity combination.

## 4. Variable Descriptions

### subject
Description: Identifier for each study participant.
Data type: Integer
Values: 1-30

### activity
Description: Describes the physical activity performed
by the participant.
Data type: Character
Values:
- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

### Measurement Variables
The dataset contains 66 mean and standard deviation measurement features.

TODO: Document the final variable names, descriptions,
units, and data types.

## 5. Missing Data

The intermediate dataset contains zero missing values.

TODO: Confirm the final tidy dataset also contains
zero missing values.

## 6. Running the Analysis

Run the following command from the project root:

    Rscript GroupWork.R

## 7. Final Dataset

Status: Pending

TODO: Document the final dataset dimensions,
variables, units, and transformations.

## 8. Analysis Description

TODO: Describe the completed analysis and how
the tidy dataset can be used for further research.
