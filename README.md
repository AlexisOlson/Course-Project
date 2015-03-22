### Coursera Data Science Specialization Getting and Cleaning Data Course Project

The run_analysis.R code assumes that you have downloaded and unziped the data from

> https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

and have set the unzipped folder named "UCI HAR Dataset" as your working directory.

Once this is done, the code can be run.
The code is well commented in the run_analysis.R script, but I'll give an overview here as well.

First all the data is read in as appropriate variables.
Next the test variables are combined and the train variables are combined.
Then we merge the two combined data sets in to one big data set.
The columns of this big data set are named.
We then search for columns containing "mean()" and "std()" and subset just these.
Next we use the aggregate function to average each variable for each subject and activity.
Finally, the averaged data is written to a text file.

For information on what the data means, see the CodeBook file in this repository.
