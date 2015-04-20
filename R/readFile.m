#setwd(pathofTheCurrentWorkingDirectory)

# Clear everything in your environment
rm(list = ls());

f1 = read.csv('../data/abalone.data', header = TRUE, sep = ",",na.strings = "-");
