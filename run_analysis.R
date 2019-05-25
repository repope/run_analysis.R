library(dplyr)

#load the features variable name map (1 tBodyAcc-mean()-X : 561 angle(Z,gravityMean))
features = tbl_df(read.table("features.txt"))

#load the activity label map (1 WALKING : 6 LAYING )
activities = tbl_df(read.table("activity_labels.txt"))
colnames(activities) = c("activity.id","activity")

#get mean and standard deviation columns. i.e. those that contain mean() or std()
colidxs = grep("([Mm]ean\\(\\)|[Ss]td\\(\\))",features$V2)
colnames = features$V2[colidxs]


#load test dataset of the acceleration and gyroscope variables
#seleting only the mean/standard devation columns (66 variables)
testFeatures = read.table("test/X_test.txt") %>% 
  as_tibble %>%
  select(colidxs)
colnames(testFeatures) = colnames

testActivities = read.table("test/Y_test.txt") %>%
  as_tibble %>%
  rename(activity.id = 1)

#bind the activity set to the feature set
test = bind_cols(testActivities,testFeatures)




#load training dataset of the acceleration and gyroscope variables
#seleting only the mean/standard devation columns (66 variables)
trainFeatures = read.table("train/X_train.txt") %>%
  as_tibble %>%
  select(colidxs)
colnames(trainFeatures) = colnames

trainActivities = read.table("train/y_train.txt") %>%
  as_tibble %>%
  rename(activity.id = 1)

#bind activity set to feature set
train = bind_cols(trainActivities,trainFeatures)



#union the test and training data
acc_gyro = bind_rows(test,train) %>%
  inner_join(activities, by = c("activity.id" = "activity.id")) %>%
  select(activity.id,activity,everything()) #move activity label to after activity.id

#remove intermediate datasets
rm(list = c("features","activities","testActivities","testFeatures","trainActivities","trainFeatures","test","train"))

#load the subjects
allsubjects = bind_rows(read.table("test/subject_test.txt"),read.table("train/subject_train.txt")) %>%
  as_tibble() %>%
  rename(subject.id = 1)

acc_gyro_means_by_activty_subject = bind_cols(allsubjects, acc_gyro) %>%
  group_by(activity,subject.id) %>%
  summarise_all(mean)

#remove intermediate datasets
rm(list = c("allsubjects"))


