# This program's efficacy is dependent upon dplyr library.
# dplyr vignette: https://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html
# Many functions and ideas were procured from aforementioned URL and swirl library 

library(dplyr)

# Variables for specific path to files to read from

path_to_test_data <- "UCI_HAR_Dataset/test/X_test.txt"
path_to_training_data <- "UCI_HAR_Dataset/train/X_train.txt"

path_to_test_label_data <- "UCI_HAR_Dataset/test/y_test.txt"
path_to_training_label_data <- "UCI_HAR_Dataset/train/y_train.txt"

path_to_features_data <- "UCI_HAR_Dataset/features.txt"
path_to_activity_data <- "UCI_HAR_Dataset/activity_labels.txt"

path_to_subject_test_data <- "UCI_HAR_Dataset/test/subject_test.txt"
path_to_subject_training_data <- "UCI_HAR_Dataset/train/subject_train.txt"

# Individual files to be read into memory; used tbl_df from dplyr
# for console printing efficacy

test_set <- tbl_df(read.table(path_to_test_data, stringsAsFactors= FALSE))
training_set <- tbl_df(read.table(path_to_training_data, stringsAsFactors = FALSE))

test_label_set <- tbl_df(read.table(path_to_test_label_data, stringsAsFactors= FALSE))
training_label_set <- tbl_df(read.table(path_to_training_label_data, stringsAsFactors= FALSE))

features_data <- tbl_df(read.table(path_to_features_data, stringsAsFactors= FALSE))
activity_data <- tbl_df(read.table(path_to_activity_data, stringsAsFactors= FALSE))

subject_test_data <- tbl_df(read.table(path_to_subject_test_data, stringsAsFactors= FALSE))
subject_training_data <- tbl_df(read.table(path_to_subject_training_data, stringsAsFactors= FALSE))



# Merge operation; choice of function is bind_rows from dplyr
# A few example of bind_rows can be found here: http://rpackages.ianhowson.com/cran/dplyr/man/bind.html
# Calling bind_rows will automatically return a tbl_df


merged_set <- bind_rows(test_set, training_set)


# Column names in merge_set prefixed by V, followed by individual column numbers
# Below step changes to descriptive variable names, from features variable

# Two functions from core R package is used: colnames and make.names

# colnames (for reference: https://stat.ethz.ch/R-manual/R-devel/library/base/html/colnames.html)
# make.names (for reference: https://stat.ethz.ch/R-manual/R-devel/library/base/html/make.names.html)

# Used the approach colnames(x) <- values; x: merged_set and values: make.names(names, unique = ..)

colnames(merged_set) <- make.names(features_data$V2, unique = TRUE)

# Mean and Standard Deviation extractions only to follow
# Despite veracity of grep, opted for dplyr's contains 
# Extracting std. deviations and means only as select's parameter by using contains as predicate weight

merged_set <- select(merged_set, contains('mean', ignore.case= TRUE), contains('std', ignore.case= TRUE))


# Descriptive activity naming; two step process

# Step 1: Joining activity lables with those of both training and test lable sets
# Used inner_join function from dplyr

# Informative vignette for inner_join : https://cran.r-project.org/web/packages/dplyr/vignettes/two-table.html
# inner_join only includes observations in final set where there exists commonality between two sets in concern

# Note: In this instance, both {activity_label, test_label_set} and {activity_label, training_label_set} pairs
# have column V1 as commonality; inner_join performs a join on this column i.e. by="V1"

# Step 2: Using dplyr's select function to opt for only V2 column from the returned data frame in step 1 with inner_join
# We're interested in column V2 because it contains the physical activities of interest (walking, sitting, laying etc.)

test_label_set <- select(inner_join(test_label_set,activity_data, by='V1'), V2)
training_label_set <- select(inner_join(training_label_set, activity_data, by='V1'), V2)


# Merging both label sets and renaming column names as Physical_Activities

merged_label_set <- bind_rows(test_label_set, training_label_set)
colnames(merged_label_set) <- as.character("Physical_Activity")

# Merging both subject sets and renaming column names as Subject_Observations

merged_subject_sets <- bind_rows(subject_test_data, subject_training_data)
colnames(merged_subject_sets) <- as.character("Subject_Observation")

# Adding both merged subject and label sets to the previously merged training and test data frame, referred by merge_set variable here

merged_set <- bind_cols(merged_set, merged_label_set)
merged_set <- bind_cols(merged_set, merged_subject_sets)

# Passing the data frame return by group_by to summarise_each function
# group_by groups first by Subject_Observations and than by Physical_Activity
# The returned data frame is than passed to summarise_each, passing mean to funs parameter 
# The returned data frame is final tidy data set to write

tidy_set <- summarise_each(group_by(merged_set, Subject_Observation, Physical_Activity), funs(mean))

# Finally, writing the tidy_set to file

write.table(tidy_set, "tidy_values.txt", row.name=FALSE)
























