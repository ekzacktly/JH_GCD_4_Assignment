my_function <- function()
{
  #Specify File Locations
  TestSubjectFile <- "./Data/test/subject_test.txt"
  TrainSubjectFile <- "./Data/train/subject_train.txt"
  TestXFile <- "./Data/test/X_test.txt"
  TrainXFile <- "./Data/train/X_train.txt"
  TestYFile <- "./Data/test/y_test.txt"
  TrainYFile <- "./Data/train/y_train.txt"
  
  #Import Data
  testsubject <- as.vector(read.delim(TestSubjectFile))
  trainsubject <- as.vector(read.delim(TrainSubjectFile))
  testx <- as.vector(read.delim(TestXFile))
  trainx <- as.vector(read.delim(TrainXFile))
  testy <- as.vector(read.delim(TestYFile))
  trainy <- as.vector(read.delim(TrainYFile))
  
  #Create Test Data Frame
  testframe <- data.frame(testsubject,testx,testy)
  names(testframe) <- c("Subject", "XValues", "YValues")
  testframe[,"Type"] <- "Test"
  
  #Create Train Data Frame
  trainframe <- data.frame(trainsubject,trainx,trainy)
  names(trainframe) <- c("Subject", "XValues", "YValues")
  trainframe[,"Type"] <- "Train"
  
  #Merge Data
  mergeframe <- rbind(trainframe,testframe)
}