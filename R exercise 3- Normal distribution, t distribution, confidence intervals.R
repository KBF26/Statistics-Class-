ourData= read.csv("~/Desktop/R_hw1_dataset_35.csv")
ourData

#CONSIDER THE STANDARD NORMAL DISTRIBUTION:
#1) what is the threshold for the bottom 9%?
#That is, what is the z-value, to the left of which, the area under the curve is 9%?
qnorm(0.09)
#2) what is the threshold for the top 7%? 
#That is, what is the z-value, to the right of which, the area under the curve is 7%?
qnorm(0.93)
#3) what is the threshold for the middle 94% around the mean?
#That is, what is the z-value such that the area under the curve between -z and +z equals 94%?
qnorm(0.97)
#4) what is the threshold for 8% on the two tails? 
#That is, what is the z-value such that the area outside the region between -z and +z equals 8%?
qnorm(0.96)
#5) what is the area under the curve to the left of z=1.7?
pnorm(1.7)
#6) what is the area under the curve to the right of z=2.1?
right <- pnorm(2.1)
answer <- 1 - right
answer
#7) what is the area to the left of z= -1.7?
pnorm(-1.7)  
#8) what is the area outside the region between z= -1.3 and z= +1.3?
left <- pnorm(-1.3)
right <- pnorm(1.3)
inside <- right - left
outside <- 1 - inside
outside

#NOW CONSIDER THE T-DISTRIBUTION WITH df=15:
#9) what is the threshold for the bottom 9%? 
#That is, what is the t-value, to the left of which, the area under the curve is 9%?
df= 15
qt(0.09,df,lower.tail = TRUE)  
#10) what is the threshold for the top 7%? 
#That is, what is the t-value, to the right of which, the area under the curve is 7%?
df = 15
qt(0.93,df,lower.tail = FALSE)
#11) what is the threshold for the middle 94% around the mean? 
#That is, what is the t-value such that the area under the curve between -t and +t equals 94%?
df = 15
qt(0.97,df, lower.tail = FALSE)
#12) what is the threshold for 8% on the two tails? 
#That is, what is the t-value such that the area outside the region between -t and +t equals 8%?
df = 15
qt(0.96,df, lower.tail = FALSE)
#13) what is the area under the curve to the left of t=1.7?
df = 15
pt(1.7,df,lower.tail = TRUE)  
#14) what is the area under the curve to the right of t=2.1?
df = 15
right <- pt(2.1,df, lower.tail = FALSE)
answer <- 1 - right
answer   
#15) what is the area to the left of t= -1.7?
df = 15
pt(-1.7,df,lower.tail = TRUE)         
#16) what is the area outside the region between t=-1.3 and t=+1.3?
df = 15
left <- pt(-1.3,df, lower.tail = TRUE)
right <- pt(1.3,df, lower.tail = FALSE)
outside <- left + right
outside

#NOW CONSIDER THE T-DISTRIBUTION WITH df=1500:
#17) repeat question 9: what is the threshold for the bottom 9%? 
#That is, what is the t-value, to the left of which, the area under the curve is 9%?
df= 1500
qt(0.09,df,lower.tail = TRUE)  
#18) repeat question 14: what is the area under the curve to the right of t=2.1?
df = 1500
right <- pt(2.1,df, lower.tail = FALSE)
answer <- 1 - right
answer

#CONSIDER THE DATASET OF CAR ACCIDENTS THAT YOU WORKED WITH IN THE PREVIOUS HOMEWORKS
#19) what is the mean of the Temperature column?
meanTemp <- mean(ourData$Temperature.F.)
meanTemp

#NOW LET'S TAKE THE FIRST 20 ROWS TO BE OUR SAMPLE
#20) what is the sample mean? sample is always random
sample <- ourData$Temperature.F.[1:20]
mean(sample)
#21) what is the 95% confidence interval for the mean?
t.test(sample,conf.level=0.95)$conf.int
#22) what is the 99% confidence interval?
t.test(sample,conf.level=0.99)$conf.int
#23) what is the 90% confidence interval?
t.test(sample,conf.level=0.90)$conf.int

#NOW LET'S TAKE THE FIRST 200 ROWS TO BE OUR SAMPLE
#24) what is the sample mean?
sample <- ourData$Temperature.F.[1:200]
mean(sample)
#25) what is the 95% confidence interval?
t.test(sample,conf.level=0.95)$conf.int 
  