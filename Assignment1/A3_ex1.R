##  Exercise 1 [20 points] As output of this exercise
  ##  you are required to submit an R script (A3_ex1.R)
    ##  able to complete the operations listed below.

##  1. Read the file A3_Ex1.csv in a data frame or tibble X
##  2. Show the structure of X (str(X))
##  3. Compute and show the total sum of the expenditures
##  4. Compute and show the sum of the expenditures in March
##  5. Compute and show the sum of the expenditures in March
##     when the weather is cloudy
##  6. Find and show the month with the highest expenditure


## --------1. a) Read the file A3_Ex1.csv in a data frame or tibble X --------##

library(tidyverse)
x <- read.csv("A3_Ex1.csv", header = TRUE, sep = ",")
# data frame formed from the A3_Ex1.csv file
x
    ##---------------- OR ----------------## 
tibble_x <-read_csv("A3_Ex1.csv")
#tibble x formed by from the A3_Ex1.csv file
tibble_x



## --------2. Show the structure of X (str(X)) --------##

str(x)



##--------3. Compute and show the total sum of the expenditures --------##

x <- read.csv(
  "A3_Ex1.csv", header = TRUE, sep = ",")
## adds all the value of expenditures from expenditure column in the data set
sum(x$expenditure)
##Ans: 201932.5 



##-------- 4. Compute and show the total sum of the expenditures in March --------##

x <- read.csv(
  "A3_Ex1.csv", header = TRUE, sep = ",")
## creates a new data set excluding all the months except March
month_march <-  subset( x, x$month == "Mar")

##  adds all the values of expenditures from March only
sum(month_march$expenditure)
#Ans: 49481.11



##-------- 5. Compute and show the sum of the expenditures in March when the weather is cloudy --------##

x <- read.csv(
  "A3_Ex1.csv", header = TRUE, sep = ",")
# Creates a new data which only includes the month march when its cloudy
march_cloudy <- subset(x, x$month == "Mar"
                        & x$weather == "cloudy")
# adds up all the expenditure of when it was cloudy in march
sum(march_cloudy$expenditure)
#Ans: 16874.8



##-------- 6. Find and show the month with the highest expenditure --------##

library(dplyr)

x <- read.csv("A3_Ex1.csv")

x %>%
slice_max(expenditure)
## shows the row with maximum expenditure
## Month: March with expenditure of 399.9212

