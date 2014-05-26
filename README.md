The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following. 

 
 
	


	1.	Merges the training and the test sets to create one data set.

	2.	Extracts only the measurements on the mean and standard deviation for each measurement. 

	3.	Uses descriptive activity names to name the activities in the data set

	4.	Appropriately labels the data set with descriptive activity names. 

	5.	Creates a second, tidy data set with the average of each variable for each activity and each subject. 





GettingAndCleaningData - Project Codebook
This document describes the steps to run the run_analysis.R file.

For the first tidy data set:

Set the working directory for the file.

Read "x_train.txt" (and store it in "train.set" object), "y_train.txt" (and store it in "train.label" object) and "subject_train.txt" (and store it in "train.subject" object) from "train" file.

Read "x_test.txt" (and store it in "test.set" object), "y_test.txt" (and store it in "test.label" object) and "subject_test.txt" (and store it in "test.subject" object) from "test" file.

Merge "train.set" and "test.set" and store it in "merge.set"

Merge "train.label" and "test.label" and store it in "merge.label"

Merge "train.subject" and "test.subject" and store it in "merge.subject" object.

Read "features.txt" and store it in "features" object.

Use regular expressions to get only mean and standard desviation from "features" and store it in "only.mean.std" object.

Subset "merge.set" to get only means and standard desviations information as "only.mean.std" features have and store it in "merge.set2" object.

Add column names to "merge.set2" from "features" subseted by "only.mean.std".

Read "activity_labels.txt" and store it in "activity.label" object.

Get all the activity labels from "activity.label" linked with "merge.label" values and store them in "activity.label2".

Set all the activity labels from "activity.label2" in "merge.label" object.

Add column name "activity" to "merge.label" object.

Add column name "subject" to "merge.subject" object.

Merge "merge.subject", "merge.label" and "merge.set2" into "tidy" object.

Write the "tidy_data_set.txt" data set from "tidy".

For the second tidy data set:

Use ddply (requires "plyr" package) to get the mean of each column grouped by "subject" and "activity" from "tidy" object and store it in "tidy2" object.

Write the "means_tidy.txt" data set from "tidy2".
