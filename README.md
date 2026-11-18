
# Reproducible Research — Group 2

## Group Members
- Tina Or
- Brian Punch-Eastman
- Jared Johnson

## Project Overview

This project uses the Human Activity Recognition Using
Smartphones (UCI HAR) dataset.

The objective is to merge, clean, and transform the
training and testing datasets into a tidy dataset
suitable for further analysis.

## Dataset

Source: UCI Machine Learning Repository

The dataset contains:
- 30 subjects
- 6 physical activities
- 561 original measurement features
- 10,299 observations

## Project Responsibilities

### Brian — Tasks 1 and 2 (Completed)
1. Merge training and testing datasets.
2. Extract mean and standard deviation measurements.
3. Validate the merged dataset.
4. Export the intermediate dataset.

### Tina — Tasks 3, 4, and 5 (Pending)
1. Replace activity codes with descriptive names.
2. Assign descriptive variable names.
3. Create the final tidy dataset containing averages
   for each subject and activity combination.

### Jared — Documentation and Validation (Pending)
1. Complete CodeBook.md.
2. Review and finalize README.md.
3. Validate the complete R script and final dataset.
4. Verify all assignment requirements.

## Repository Structure

- GroupWork.R — Main R script
- R/01_import_clean.R — Tasks 1 and 2
- README.md — Project documentation
- CodeBook.md — Dataset codebook
- output/merged_mean_std.csv — Intermediate dataset

## How to Run

1. Install R.
2. Download or clone this repository.
3. Open a terminal in the project root folder.
4. Run:

   Rscript GroupWork.R

The script checks for the UCI HAR dataset and downloads
and extracts it if necessary.

## Current Validation Results

- Training observations: 7,352
- Testing observations: 2,947
- Combined observations: 10,299
- Selected measurement features: 66
- Intermediate dataset columns: 68
- Missing values: 0

## Project Status

Tasks 1 and 2 are complete.

Tasks 3–5, the final tidy dataset, and the completed
CodeBook.md are pending group collaboration.

## Data Source

Human Activity Recognition Using Smartphones

https://archive.ics.uci.edu/dataset/240/
human+activity+recognition+using+smartphones
