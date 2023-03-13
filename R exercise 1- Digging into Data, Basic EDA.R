ourData= read.csv("~/Desktop/R_hw1_dataset_35.csv")
ourData
library(dplyr)



#1- Which are the top two counties that occur most frequently in your dataset?
County_Freq_Table <- table(ourData$County)
County_Freq_Table
sort(County_Freq_Table, decreasing = TRUE)[1:2]

  
  
#2- In the state of Maryland, which two counties occur most frequently in the dataset?
CountyMD_Table <- subset(ourData, State == "MD") 
CountyMD_Table
CountyMD1_Table <- table(CountyMD_Table$County)
CountyMD1_Table
sort(CountyMD1_Table, decreasing = TRUE)[1:2]
  
  
#3 - Which are the top two states that occur most frequently in your dataset?
State_Freq_Table <- table(ourData$State) 
State_Freq_Table
sort(State_Freq_Table, decreasing = TRUE)[1:2]
  
  
#4 - For each state, we can pool all its accidents and then calculate what fraction 
#of them have severity=4. If we do this for every state, 
#which are the top three states in terms of the proportion of severity=4 accidents? 
#(read the hint at the end of this assignment description) 

#use dpylr, group_by,summarize, mean, arrange

TopThreeStates <- ourData %>%
  group_by(State) %>%
  summarize(newCol=mean(Severity == 4)) %>%
  arrange(-newCol)
TopThreeStates[1:3,1]




#5 - Which are the bottom four states in terms of average temperature of accidents? 
#("bottom four states" means the four states with lowest average temperature) 

#use dpylr, group_by,summarize, mean, arrange
BottomFourStates <- ourData %>%
  group_by(State) %>%
  summarize(newCol=mean(Temperature.F.)) %>%
  arrange(newCol) 
BottomFourStates[1:4,1]


