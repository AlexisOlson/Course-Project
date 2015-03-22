The data set can be best understood by reading the README file included with the downloaded data set. I've included it in this repository as a file renamed as DataREADME. Basically, the data is a set of sensor readings for a group of 30 subjects performing six activities (walking, walking up stairs, walking downstairs, sitting, standing, and laying). Again, see the DataREADME file for more details.

The first column in the data set is the "Subject", that is, the number assigned to the person the data was measured on.
The second column "Activity" tells which activity (as listed above) the readings correspond to.
The remaining columnn are processed sensor readings explained as explained in the file features_info.txt (included in this repository). Note that in our TidyData set, we only look at the features involving "mean()" and "std()".

Finally, I should point out that the numbers in the TidyData set are actually averages over multiple measurements.
So for each subject and each activity, we have one number which is the average over all the corresponding measurements.
