#Package Dependency
Basic R core and dplyr (extensively)

#Functions Utilized
bind_row, colnames, bind_cols, as.character, select, contains (as select's parameter), inner_join, make.names, 
summarise_each, group_by, read.table, mean, write.table

#run_analysis.R

This script utilizes data obtained from UCI's Machine Learning (ML) repository. The datasets document human activities using smartphones. There were training and test data sets, along with activities, features and subject observations.

The unzipped file sets are uploaded in this repository. 

The following steps outline the progress in this script:

* First, 8 files of interest are loaded into memory. 
* Second, training and test data sets are merged
* Third, this merged data frame's column names are revised with those from features data frame. Because, we are only interested in feature's V2 column, we used that to rename this merged data frame's columns
* Fourth, dplyr's select function is called on this renamed and meaningful merged data frame; contains was used to act as a boolean predicate to opt in for means and standard deviatons (or matter of interest as outlined in project)
* Fifth, label sets -- those of training and test -- are quite curated with inner_join from dplyr. inner_join simply projected on those activities for which there was a matching common column
* Sixth, both joined label sets [from 5th point] (training and test) are further filtered (more of those in comment section in program file) and merged to form one set. The column names for this merged label set is renamed as "Physical_Activities"
* Seventh, a merged subject data frame is obtained and column name renamed as "Subject_Observation"
* Eighth, merged data frames from step 6 and 7 are now column bound with original merged dataframe
* Ninth, merged data frame from step 8 is now grouped first by Subject_Observation and than Phsyical_Activity. This grouped data frame is then summaized each with means; a tidy data set now evolves
* Tenth, the tiday set from step 9 conforms tiday data principle: each variable forms a column, each observation forms a row and each type of observational unit forms a table


# tidy_values.txt
The above mentioned file name is the writted tidy data set




