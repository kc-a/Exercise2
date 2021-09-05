signif <- read.csv("A3_Ex3_signif.csv")
#reading the file
#reading the file
## 1. State the Null Hypothesis and the Alternative Hypothesis

      # Null hypothesis: β = 0 , ie there is no linear relationship
      # Alternative hypothesis: β != 0 ie there is a linear relatinoship 



##  2. Check the assumptions, plotting (a) y vs x, (b) the scatter plot of the regression residuals ei vs the
  ##  fitted values yˆ and (c) the histogram of the regression residuals ei
    ##  Only 3 graphs are required for this

########--------conclusion generating function--------########
conclusion <- function(P, B){
  if(P<0.05){
    if(B<0){
      print("Negative correlation between x & Y")
    }else{
      print("Positive correlation between x & Y.")
    }
  } else{
    print("no corroletation")
    
  }
}


      ##  2.a) y vs x
model_1 <- lm(Y~X,data= signif)
ggplot(model_1,aes(y=Y, x=X))+
  labs(title = 'Y VS X',y= 'Y', x='X')+
  geom_smooth()

        ##  2.b) the scatter plot of the regression residuals vs the fitted values

model_1 <- lm(Y~X,data= signif)
ggplot(model_1, aes(y =.resid, x=.fitted))+
  labs(title = 'Regression Residuals VS The Fitted Values',y = 'Regression Residuals', x = 'Fitted Values')+
  geom_point()


        ## 2.c) the histogram of the regression residuals 

ggplot(data = signif, aes(x = model_1$residuals)) +
  geom_histogram(bins='100', fill = 'red',color = 'black') +
  labs(title = 'Histogram of Residuals',y = 'Frequency', x = 'Residuals')



##  3. Perform the linear regression and report the values
    ##  of the estimated slope βˆ, the 95% CIs for β, the
      ##  value of t, the degree of freedom df, and the p-value.


model_1 <-  lm(Y~X, data= signif)
summary(model_1)
str(summary(model_1))
model_1_estimate <- summary(model_1)$coefficients[2,]
B <- model_1_estimate[1] # beta = -1.320119
B
model_1_estimate[3] # t-value = -55.77063
P <-  model_1_estimate[4] # p-value =  Pr(>|t|)  2.661222e-216 
P
summary(model_1)$df[2] #  degree of freedom = 498
confint(model) # lower CI : -1.36625
              #   Upper CI : -1.236127
#4. Write the “decision” of the test, either rejection or not rejection of the Null Hypothesis, at 5% significance level.

if(P<0.05){
  print("Rejection of the null hypothesis as the P-value is less than 0.05.")
  } else{
  print("Don't Reject the Null Hypothesis as p-value is >= 0.05")
  }        
#Rejection of the null hypothesis as the P-value is less than 0.05
       
##  5. Write a conclusion to the test, i.e., one or two sentences in English in which you explain the results and
##     describe the relationship or lack of relationship between X and Y .
if(P<0.05){
  if(B<0){
    print("Negative correlation between x & Y")
  }else{
    print("Positive correlation between x & Y.")
  }
} else{
  print("no corroletation")
  
} 

conclusion(P,B)
## writes conclusion pragmatically where p1 is p-value and B1 is beta^







not_signif <- read.csv("A3_Ex3_not_signif.csv")
##  since p-value is < 0.05 and beta is negative we reject the null hypothesis and there is a negative correlation between x & Y. 
##  2.a) y vs x
model_1 <- lm(Y~X,data= not_signif)
ggplot(model_1,aes(y=Y, x=X))+
  labs(title = 'Y VS X',y= 'Y', x='X')+
  geom_smooth()

##  2.b) the scatter plot of the regression residuals vs the fitted values

model_1 <- lm(Y~X,data= not_signif)
ggplot(model_1, aes(y =.resid, x=.fitted))+
  labs(title = 'Regression Residuals VS The Fitted Values',y = 'Regression Residuals', x = 'Fitted Values')+
  geom_point()


## 2.c) the histogram of the regression residuals 

ggplot(data = not_signif, aes(x = model_1$residuals)) +
  geom_histogram(bins='100', fill = 'red',color = 'black') +
  labs(title = 'Histogram of Residuals',y = 'Frequency', x = 'Residuals')



##  3. Perform the linear regression and report the values
##  of the estimated slope βˆ, the 95% CIs for β, the
##  value of t, the degree of freedom df, and the p-value.


model_1 <-  lm(Y~X, data= not_signif)
summary(model_1)
str(summary(model_1))
model_1_estimate <- summary(model_1)$coefficients[2,]
B1 <- model_1_estimate[1] # beta = -0.003123726 
B1
model_1_estimate[3] # t-value = 0.2365936 

P1 <-  model_1_estimate[4] # p-value =  Pr(>|t|)  0.8130694 
P1
summary(model_1)$df[2] #  degree of freedom = 498
paste(confint(model)[1,1 ],confint(model)[1,2]) # lower CI : -4.76193914849942 
                                                # Upper CI : 0.605278875414434


#4. Write the “decision” of the test, either rejection or not rejection of the Null Hypothesis, at 5% significance level.

if(P1<0.05){
  print("Rejection of the null hypothesis as the P-value is less than 0.05.")
} else{
  print("Don't Reject the Null Hypothesis as p-value is >= 0.05")
}        
#Don't Reject the Null Hypothesis as p-value is >= 0.05

##  5. Write a conclusion to the test, i.e., one or two sentences in English in which you explain the results and
##     describe the relationship or lack of relationship between X and Y .

conclusion <- function(P1, B1){
  if(P1<0.05){
    if(B1<0){
      print("Negative correlation between x & Y")
    }else{
      print("Positive correlation between x & Y.")
    }
  } else{
    print("no corroletation")
    
  }
}

## As p value is greater then 0.04, there is no correlation hence we don't reject the Null Hypothesis)

conclusion (P1,B1) 
##  conclusion generating function where P and B are P-vale and Beta respictivelly.



conclusion <- function(P, B){
if(P<0.05){
  if(B<0){
    print("Negative correlation between x & Y")
  }else{
    print("Positive correlation between x & Y.")
  }
} else{
  print("no corroletation")
  
}
}


#hypohesis function same for all tests
hypothesis <-  function(file_name){
  print("Null Hypothesis--> H0: β= 0")
  print("Alternative Hypothesis-->H1: β ≠ 0")
}
hypothesis()

##assumption function
assumptions <-  function(file_name){
  file <- read.csv(file_name)
  plot <- lm(Y~X, data= file)
  file$fitted <-  fitted(plot)
  file$residuals <-  residuals(plot)
  
  gplot <- ggplot(data=file)
  
  g1 <- gplot+ geom_smooth(mapping=aes(y=Y, x=X), colour= "red")+
    labs(title = 'Y VS X',y= 'Y', x='X')
  
  g2 <-  gplot+geom_point( mapping=aes(y = residuals, x=fitted), colour = "red")+
    labs(title = 'Regression Residuals VS The Fitted Values',y = 'Regression Residuals', x = 'Fitted Values')
  
  g3 <- gplot+geom_histogram(mapping=aes(x = residuals), bins='100', fill = 'red',color = 'black')+ ggtitle("Residuals Histogram")
  
  return(g1+g2+g3)
}
assumptions("A3_Ex3_signif.csv")
assumptions("A3_Ex3_not_signif.csv")
##fit function
fit <- function(file_name){
  file <- read.csv(file_name)
  model_1 <-  lm(Y~X, data= file)
  summary(model_1)
  str(summary(model_1))
  model_1_estimate <- summary(model_1)$coefficients[2,]
  B <- model_1_estimate[1] # beta
  B
  model_1_estimate[3] # t-value 
  P <-  model_1_estimate[4] # p-value 
  P
  summary(model_1)$df[2] #  degree of freedom
  confint(model) # lower CI : -1.36625
  
}

##descision(fit) function
descision <-  function(file_name){
  file <- read.csv(file_name)
  model_1 <-  lm(Y~X, data= file)
  model_1_estimate <- summary(model_1)$coefficients[2,]
  P <-  model_1_estimate[4] # p-value 
  if(P<0.05){
    print("Rejection of the null hypothesis as the P-value is less than 0.05.")
  } else{
    print("Don't Reject the Null Hypothesis as p-value is >= 0.05")
  }    
  
}

conclusion <- function(P, B){
  if(P<0.05){
    if(B<0){
      print("Negative correlation between x & Y")
    }else{
      print("Positive correlation between x & Y.")
    }
  } else{
    print("no corroletation")
    
  }
}



library(tidyverse)
library(ggplot2)
library(patchwork)
signif <- read.csv("A3_Ex3_signif.csv")
not_signif <- read.csv("A3_Ex3_not_signif.csv")

#hypohesis function same for all tests
hypothesis <-  function(file_name){
  print("Null Hypothesis--> H0: β= 0")
  print("Alternative Hypothesis-->H1: β ≠ 0")
}
hypothesis()


assumptions <-  function(file_name){
  file <- file_name")
  plot <- lm(Y~X, data= file)
  file$fitted <-  fitted(plot)
  file$residuals <-  resuidals(plot)
  
  gplot <- ggplot(data=file)
  
  g1 <- gplot+ geom_smooth(mapping=aes(y=Y, x=X), colour= "red")+
    labs(title = 'Y VS X',y= 'Y', x='X')

  g2 <-  gplot+geom_point( mapping=aes(y = residuals, x=fitted), colour = "red")+
    labs(title = 'Regression Residuals VS The Fitted Values',y = 'Regression Residuals', x = 'Fitted Values')
  
  g3 <- gplot+geom_histogram(mapping=aes(x = residuals), bins='100', fill = 'red',color = 'black')+ ggtitle("Residuals Histogram")
  
return(g1+g2+g3)
  }


















hist()



model_1 <-  lm(X~Y, data= signif)
summary(model_1)
str(model_1)
model_1_summary <- summary(model_1)
model_1_summary
model_1_summary

sloop::s3_class(model_1)
sloop::s3_dispatch(summary(model_1))
methods(generic.function="summary")


lmt <- function(...){ 
  fit <- lm(...)
  fit$runtime <-  Sys.time()
  class(fit) <- c("lmt", "lm")
  fit
}
class(model_1)

model_1 <- lmt(X~Y, data = signif)
class(model_1)
