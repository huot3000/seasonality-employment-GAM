
#######################
#
# MY459
# Assignment 4
#
# Philippe Huot - 201320195
#
#######################


###########
#Cleaning
###########

#Clears environment
rm(list=ls())
      
#Clears plots
dev.off()
      
#Clears console
cat("\014")

###########
#Set-up
###########

library(mgcv)

## Loading required package: nlme
## This is mgcv 1.8-4. For overwview type 'help("mgcv-pakage")'

rmse <- function(fitted, observed) sqrt(mean((observed-fitted)^2))

#Setting the wd

setwd("C:/Users/Phil/Documents/École/LSE - LT14/MY459")

#Getting the data

data <- read.csv ("USPayrollData.csv")

#Having a look at the data

summary(data)
str(data)
head(data)

##############
#Question 1
##############

#We would interpret month of the year effect as changes in percentages
#of total number of non-farm employees ( in thousands), not seasonally adjusted.
#The additivity assumption implies that the effect of different are additive 
#but not necessarily linear - an assumption that makes sense in this case. 
#It indeed makes more sense to think of month effects have on impact on a % of
#PAYNSA rather than an absolute number.

################
#Question 2
################

logPAYNSA <- log(data$PAYNSA)



