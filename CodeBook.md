# About the Data

This project uses data collected from 30 volunteer subjects, ages 19-48, performing six activities:

1. laying,
2. sitting,
3. standing,
4. walking,
5. walking downstairs,
6. walking upstairs

Measurements were collected using the accelerometer on Samsung Galaxy smart phones.

The data can be downloaded here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A more detailed description of the data can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

In order to use the run_analysis.R script, unzip the data and move the unzipped folder
into the working directory of an R session.

# About run_analysis.R
This R script performs the following steps
  1. reads the raw data files,
  2. make them tidy, i.e. variable names:
    1. which are all lower case,
    2. contain no '_' (underscores),
    3. and contain descriptive names,
  3. keeps only the variables which include mean and standard deviation,
  4. merges the training and test data, and subject and activity
  5. creates a new data frame which contains the mean for each variable for each subject/activity combination,
  6. writes this new data frame to summary_data.txt

# Variable
The variable names used in this project are:
  1. "tbodyacc-mean()-x"
  2. "tbodyacc-mean()-y"
  3. "tbodyacc-mean()-z"
  4. "tgravityacc-mean()-x"
  5. "tgravityacc-mean()-y"
  6. "tgravityacc-mean()-z"
  7. "tbodyaccjerk-mean()-x"
  8. "tbodyaccjerk-mean()-y"
  9. "tbodyaccjerk-mean()-z"
  10. "tbodygyro-mean()-x"
  11. "tbodygyro-mean()-y"
  12. "tbodygyro-mean()-z"
  13. "tbodygyrojerk-mean()-x"
  14. "tbodygyrojerk-mean()-y"
  15. "tbodygyrojerk-mean()-z"
  16. "tbodyaccmag-mean()"
  17. "tgravityaccmag-mean()"
  18. "tbodyaccjerkmag-mean()"
  19. "tbodygyromag-mean()"
  20. "tbodygyrojerkmag-mean()"
  21. "fbodyacc-mean()-x"
  22. "fbodyacc-mean()-y"
  23. "fbodyacc-mean()-z"
  24. "fbodyacc-meanfreq()-x"
  25. "fbodyacc-meanfreq()-y"
  26. "fbodyacc-meanfreq()-z"
  27. "fbodyaccjerk-mean()-x"
  28. "fbodyaccjerk-mean()-y"
  29. "fbodyaccjerk-mean()-z"
  30. "fbodyaccjerk-meanfreq()-x"
  31. "fbodyaccjerk-meanfreq()-y"
  32. "fbodyaccjerk-meanfreq()-z"
  33. "fbodygyro-mean()-x"
  34. "fbodygyro-mean()-y"
  35. "fbodygyro-mean()-z"
  36. "fbodygyro-meanfreq()-x"
  37. "fbodygyro-meanfreq()-y"
  38. "fbodygyro-meanfreq()-z"
  39. "fbodyaccmag-mean()"
  40. "fbodyaccmag-meanfreq()"
  41. "fbodybodyaccjerkmag-mean()"
  42. "fbodybodyaccjerkmag-meanfreq()"
  43. "fbodybodygyromag-mean()"
  44. "fbodybodygyromag-meanfreq()"
  45. "fbodybodygyrojerkmag-mean()"
  46. "fbodybodygyrojerkmag-meanfreq()"
  47. "angle(tbodyaccmean,gravity)"
  48. "angle(tbodyaccjerkmean),gravitymean)"
  49. "angle(tbodygyromean,gravitymean)"
  50. "angle(tbodygyrojerkmean,gravitymean)"
  51. "angle(x,gravitymean)"
  52. "angle(y,gravitymean)"
  53. "angle(z,gravitymean)"
  54. "tbodyacc-std()-x"
  55. "tbodyacc-std()-y"
  56. "tbodyacc-std()-z"
  57. "tgravityacc-std()-x"
  58. "tgravityacc-std()-y"
  59. "tgravityacc-std()-z"
  60. "tbodyaccjerk-std()-x"
  61. "tbodyaccjerk-std()-y"
  62. "tbodyaccjerk-std()-z"
  63. "tbodygyro-std()-x"
  64. "tbodygyro-std()-y"
  65. "tbodygyro-std()-z"
  66. "tbodygyrojerk-std()-x"
  67. "tbodygyrojerk-std()-y"
  68. "tbodygyrojerk-std()-z"
  69. "tbodyaccmag-std()"
  70. "tgravityaccmag-std()"
  71. "tbodyaccjerkmag-std()"
  72. "tbodygyromag-std()"
  73. "tbodygyrojerkmag-std()"
  74. "fbodyacc-std()-x"
  75. "fbodyacc-std()-y"
  76. "fbodyacc-std()-z"
  77. "fbodyaccjerk-std()-x"
  78. "fbodyaccjerk-std()-y"
  79. "fbodyaccjerk-std()-z"
  80. "fbodygyro-std()-x"
  81. "fbodygyro-std()-y"
  82. "fbodygyro-std()-z"
  83. "fbodyaccmag-std()"
  84. "fbodybodyaccjerkmag-std()"
  85. "fbodybodygyromag-std()"
  86. "fbodybodygyrojerkmag-std()"
  
  More information about the variables can be found in the features_info.txt and README.txt in the unzipped folder.
