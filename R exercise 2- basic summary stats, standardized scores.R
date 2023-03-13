ourData= read.csv("~/Desktop/R_hw1_dataset_35.csv")
ourData

#Let's work on the "Temperature(F)" column:

 

#1) What is the size of the dataset? (how many datapoints do we have?)
sizeofDataset <- nrow(ourData)
sizeofDataset

#2) What is the mean of this column?
meanTemp <- mean(ourData$Temperature.F.)
meanTemp
#3) What is the standard deviation?
sdTemp <- sd(ourData$Temperature.F.)
sdTemp
#4) What is the maximum value?
maxTemp <- max(ourData$Temperature.F.)
maxTemp
#5) What is the minimum value?
minTemp <- min(ourData$Temperature.F.)
minTemp

 

#Calculate the standard scores (also called z-scores) of this column and find:

#6) What is the z-score of the largest value?
zscoreLarge <- (maxTemp - meanTemp) / sdTemp
zscoreLarge
#7) What is the z-score of the smallest value?
zscoreSmall <- (minTemp - meanTemp) / sdTemp
zscoreSmall
 

#Now we investigate the distribution:

#8) How many data points are within one standard deviation away from the mean?
#(that is, how many datapoints are less than mean + sd and greater than mean - sd?
questionEight <- nrow(subset(ourData,(Temperature.F. < meanTemp + sdTemp) 
                             & (Temperature.F. > meanTemp - sdTemp)))
questionEight
#9) What proportion of the datapoints are within ONE standard deviation away from the mean?
questionNine <- questionEight/ sizeofDataset
questionNine
#10) What proportion of the datapoints are within TWO standard deviations away from the mean?
questionTen <- nrow(subset(ourData,(Temperature.F. < meanTemp + sdTemp*2) 
                           & (Temperature.F. > meanTemp - sdTemp*2))) / sizeofDataset
questionTen