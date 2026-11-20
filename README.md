# Reproducible Research — Group 2

## Group Members
- Tina Or
- Brian Punch-Eastman
- Jared Johnson
## Project Overview

This project uses the **Human Activity Recognition Using Smartphones (UCI HAR)** dataset. The source data contain smartphone accelerometer and gyroscope measurements from 30 subjects performing six activities. The project combines the training and test partitions, selects the mean and standard-deviation features, replaces activity codes and feature labels with descriptive names, and creates a tidy dataset of average measurements for each subject/activity combination.

## Dataset

Source: UCI Machine Learning Repository

The dataset contains:
- 30 subjects
- 6 physical activities
- 561 original measurement features
- 10,299 observations

## Project Responsibilities

### Brian — Tasks 1 and 2
1. Merge training and testing datasets.
2. Extract mean and standard deviation measurements.
3. Validate the merged dataset.
4. Export the intermediate dataset.

### Tina — Tasks 3, 4, and 5
1. Replace activity codes with descriptive names.
2. Assign descriptive variable names.
3. Create the final tidy dataset containing averages
   for each subject and activity combination.

### Jared — Documentation and Validation
1. Complete CodeBook.md.
2. Review and finalize README.md.
3. Validate the complete R script and final dataset.
4. Verify all assignment requirements.


## Data Source

- UCI dataset page: https://archive.ics.uci.edu/dataset/240/human+activity+recognition+using+smartphones
- Dataset ZIP: https://d396qusza40orc.cloudfront.net/getdata/projectfiles/UCI%20HAR%20Dataset.zip

The R script downloads and extracts the source archive into `data/` if the required files are not already available.

## Repository Structure

```text
Group-2-Tidy-Data-Project-main/
├── GroupWork.R
├── R/
│   ├── 01_import_clean.R
│   ├── 02_descriptive_names_variables.R
│   └── 03_create_tidy_dataset.R
├── output/
│   ├── merged_mean_std.csv
│   ├── processed_data.csv
│   └── tidy_dataset.csv
├── CodeBook.md
└── README.md
```

## How the scripts work together

Run `GroupWork.R` from the repository root. It sources the three scripts in order:

1. **`R/01_import_clean.R` — Tasks 1 and 2:** downloads/extracts the UCI HAR data when needed; reads the training and test subject IDs, activity IDs, and measurements; selects the 66 features whose original names contain `mean()` or `std()`; combines the two partitions; validates the expected 10,299 rows and 68 columns; and writes `output/merged_mean_std.csv`.
2. **`R/02_descriptive_names_variables.R` — Tasks 3 and 4:** maps numeric activity IDs to descriptive activity labels, removes the numeric activity ID, applies descriptive lowercase underscore-separated measurement names, validates the processed data, and writes `output/processed_data.csv`.
3. **`R/03_create_tidy_dataset.R` — Task 5:** groups the processed observations by `subject` and `activity`, calculates the mean of each of the 66 measurements in each group, validates the resulting 180 unique combinations, and writes `output/tidy_dataset.csv`.

The three CSV files are intermediate/final outputs; **`output/tidy_dataset.csv` is the required final tidy dataset**. See `CodeBook.md` for the full variable inventory, units, processing details, and validation summary.

## Requirements and Execution

- R installed.
- Internet access for the first run if the UCI HAR dataset has not already been downloaded.
- The scripts use `dplyr`; the script installs it if it is not already installed.

From the repository root, execute:

```sh
Rscript GroupWork.R
```

The working directory must be the repository root because scripts use paths relative to it. The output CSVs are regenerated in `output/`.

## Validation of the Included Outputs

The CSV files included in this repository were independently inspected for dimensions, missing values, and subject/activity uniqueness:

| Output | Rows | Columns | Missing values |
|---|---:|---:|---:|
| `merged_mean_std.csv` | 10,299 | 68 | 0 |
| `processed_data.csv` | 10,299 | 68 | 0 |
| `tidy_dataset.csv` | 180 | 68 | 0 |

The final file contains 30 distinct subjects and six activity labels. Each subject/activity combination occurs exactly once (180 combinations total). The R scripts also include runtime assertions for expected dimensions and uniqueness.

## Deliverables

- Final tidy dataset: `output/tidy_dataset.csv`
- Reproducible R script: `GroupWork.R` and the scripts in `R/`
- Dataset documentation: `CodeBook.md`
- Project instructions and workflow: `README.md`

## GitHub Repository
https://github.com/bpeastman/Group-2-Tidy-Data-Project
