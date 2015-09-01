# First entry for Kaggle's Titanic contest
# Code and ideas from DataCamp tutorial
# 2015/09/01
# Cindy Desmarais

# Assign the training set
train <- read.csv(url("http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/train.csv"))

# Assign the testing set
test <- read.csv(url("http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/test.csv"))

# Display train and test
str(train)
str(test)

# prediction based on gender 
test_one <- test
test_one$Survived[test_one$Sex == "male"] <- 0
test_one$Survived[test_one$Sex == "female"] <- 1

submission <- test_one[,c(1,12)]
setwd('/Users/cdadmin/Downloads/Kaggle/2015_09_01_Titanic')
write.table(submission, file="submission.txt", col.names=T, quote=FALSE, sep=",", row.names=FALSE)


