
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
Status: Pending

TODO: Document the replacement of numeric activity
codes with descriptive activity names.

### Task 4 — Descriptive Variable Names
Status: Pending

TODO: Document the final variable naming conventions.

### Task 5 — Tidy Dataset
Status: Pending

TODO: Describe how averages are calculated for each
subject and activity combination.

## 4. Variable Descriptions

### subject
Identifier for each study participant.

### activity_id
Numeric identifier representing the activity performed.
This will be replaced with descriptive activity names.

### Measurement Variables
66 mean and standard deviation measurement features.

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
