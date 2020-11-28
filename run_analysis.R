# Code for reading test files into single data frame.
folderTest <- "C:/Users/Nyakwaka/Desktop/Coursera/RtoG/datasciencecoursera/UCI HAR Dataset/test/Internal Signals"
List1 <- list.files(path = "folderTest", all.files = TRUE, pattern = ".txt")

for (file in List1){
  
  if (!exists("dataset1")){
    dataset1 <- read.table(file, header=TRUE, sep="-")
  }
  
  if (exists("dataset1")){
    temp_dataset1 <-read.table(file, header=TRUE, sep="-")
    dataset1<-rbind(dataset1, temp_dataset1)
    rm(temp_dataset1)
  }
  
}

#code for reading train files into one data frame.

folderTrain <- "C:/Users/Nyakwaka/Desktop/Coursera/RtoG/datasciencecoursera/UCI HAR Dataset/train/Internal Signals"
List2 <- list.files(path = "folderTrain", all.files = TRUE, pattern = ".txt")

for (file in List2){
  
  if (!exists("dataset2")){
    dataset2 <- read.table(file, header=TRUE, sep="-")
  }
  
  if (exists("dataset2")){
    temp_dataset2 <-read.table(file, header=TRUE, sep="-")
    dataset2<-rbind(dataset2, temp_dataset2)
    rm(temp_dataset2)
  }
  
}

# code for merging dataset1 and dataset2
merge(dataset1, dataset2, all = TRUE)
