# Getting-and-Cleaning-Data-project

This repository contains the submission for the Getting and Cleaning Data project on coursera for Bob Wooster.

## Files in this repo
1. README.md - this readme file
2. run_analysis.R - the R script which 
  1. reads the raw data files,
  2. make them tidy,
  3. keeps only the variables which include mean and standard deviation,
  4. merges the training and test data, and subject and activity
  5. creates a new data frame which contains the mean for each variable for each subject/activity combination
  6. writes this new data frame to summary_data.txt
3. CodeBook.md - describes the variables, the data, and and work performed to clean up the data
4. summary_data.txt - file containing the data created in step 5. of run_analysis.R
