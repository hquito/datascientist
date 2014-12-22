X_test=read.table("./data/UCI HAR Dataset/test/X_test.txt",stringsAsFactors=FALSE, header=FALSE)
X_train=read.table("./data/UCI HAR Dataset/train/X_train.txt",stringsAsFactors=FALSE, header=FALSE)
#load names of each column
features=read.table("./data/UCI HAR Dataset/features.txt",stringsAsFactors=FALSE, header=FALSE)
#give the names to each column from the V2 data. V1 is the number (1 to 561 )
names(X)=features$V2
#find columns with mean and std to extract
toMatch <- c("mean", "std")
matches <- unique (grep(paste(toMatch,collapse="|"), features$V2, value=TRUE))
tidyX=X[,matches]

