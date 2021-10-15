##  Exercise 2 [20 points] As output of this exercise,
  ##  you are required to submit an R script (A3_ex2.R)
    ##  able to complete the operations listed below.

##  0. Run set.seed(2048)
set.seed(2048)



#1. Create a list X with N = 100 slots, and in each slot
    ##  create a list of two elements:
      ##  • name, along the lines of “n1,” “n2,” “n3,” . . . , “n100”
        ##  • vect, a numeric vector of 5 elements
          ##  sampled from a normal distribution with
            ##  µ = 23 and σ = 5.

name <- (paste('n', 1:100, sep = ""))
vect <-  lapply(1:100, function(x) rnorm(5,23,5))
x <-  setNames(vect,name)
view(x)
##  2. Show the structure of X (str(X)).
    str(x)

    

##  3. Compute the sum of the values of vector in each slot and show the output. The output must be a vector of 100 values.
   lapply(x,sum)[1:3]

  ##  4. Create a matrix M (not a data frame) of size 100× 5 using the 100 vect objects in the slots of X.

   M <-  matrix(unlist(vect), 100, 5)
   M
#shows a matrix of 100*5   
##    5. Use a for loop to compute the sums by columns of M and show the result.
    
M <-  t(matrix(unlist(vect),5, 100))  

sumCols <- 0
for(i in 1:ncol(M)){
  sumCols[i] <-  sum(M[,i])
}
sumCols

#Answer:  [1] 2260.353
      ##  [2] 2246.963 
      ##  [3] 2291.927
      ##  [4] 2332.569
      ##  [5] 2244.665

        