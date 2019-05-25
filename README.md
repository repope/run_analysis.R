# Getting and cleaning data: UCI HAR Dataset

The included R script, run_analysis.R will clean and tidy the data from the test and training datasets found in the UCI HAR dataset here

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Download and unzip the dataset into the same directory as the script and run it. It will create two datasets, one containing all the mean and standard deviation variables for each activity and one containing summarized means of each variable grouped by activity and subject. The summarized dataset will be written to a text file named 'tidy_long_format_summary.txt'.

```R
source("run_analysis.R", chdir = TRUE)
```

See [the codebook](Codebook.md) for details of the datasets and [the r notebook](codebook.nb.html) for viewing of the datasets. Note that the R notebook may not be viewable on github, due to size constraints.

## Required R Packages
* dplyr