#setwd(pathofTheCurrentWorkingDirectory)

# Clear everything in your environment
rm(list = ls());

# read the data file
f1 = read.csv('../data/abalone.data', header = FALSE, sep = ",",na.strings = "-");
# i th row can be referred as         f1[i,]
# i th column can be referred as      f1[,i]

f1 = read.table('../data/abalone.data', header = FALSE, sep = ",");
# i th row can be referred as         f1[i,]
# i th column can be referred as      f1[,i]
