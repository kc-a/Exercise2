#---------- Q1 ----------#
#1)a exploration - part 1
x <- 1
x == 1
x>1
log(x)
if (x ==1) log(x)
if (x >1) log(x)

#1 a part b
foo <- function(x) {
  if (x > 2) {
    "a"
  } else if (x < 2) {
    "b"
  } else if (x == 1) {
    "c"
  } else {
    "d"
  }
}
foo(1)

#1 B) i) clean function- explain why the function would do this task

clean <- function(x) {
  if (x == -99) NA
  if (x == ".") NA
  if (x == "NaN") NA
  x
}
clean(-99)

#1 B_ ii) 
clean <-  function (x) {
  if (x==-99)
#1 B) i) replac

#---------- Q2 ----------#
#1) a) 
impatient_square <- function(x) {
  return(x)
  xˆ2
}
impatient_square2(2)}
# return stops when x value is placed and doenst cotinue operating code

# 2) b) In Part #1, we tried to use this function to clean up the missing value symbols.

clean <- function(x) {
  if (x == -99) NA
  if (x == ".") NA
  if (x == "NaN") NA
  x
}
clean(-99)
clean(".")
clean("NaN")
clean(1)

# 2) c)stop() behaves like return(), but instead of returning a value, stop() returns an error, complete with a custom error message. Run the following commands, and observe the output. Can you explain what is happening here?
 
immovable_square <- function(x) {
  stop("I refuse to proceed.")
  xˆ2
}
immovable_square(2)
 # 2) d) 
clean <- function(x) {
  if (is.null(x)==TRUE)
    return(NULL)
  if (x == -99) NA
  if (x == ".") NA
  if (x == "NaN") NA
  return(x)
}
clean(NULL)
#---------- Q3 ----------#
# 3) a) 
n <- 1
while (n <= 5) {
  print(n)
  n <- n + 1
}
is_prime <- function(x) {
  n <- 2
  repeat {
    if (n == x) {
      return(TRUE)
    }
    if (x %% n == 0) {
      FALSE
    }
    n <- n + 1
  }
}
is_prime(7)

# 3) b)
is_prime <-  function (x){
  n <- 2
  while{ 
        print(n)
           if(n == x) {
    return(TRUE)
  }
    if (x %% n == 0) {
      return(FALSE)
    }
    n <- n + 1
  }
}}





is_prime2 <- function(x) {
  n <- 2
  for(n in seq(2, x)) {
    print(n)
    if (n == x) {
      return(TRUE)
    }
    if (x %% n == 0) {
      return(FALSE)
    }
    n <- n + 1
  }
}
is_prime2(7)



x <- c(1, 2, 3, 4, 5)
y <- double(length = 5)
for (i in seq_along(x)) {
  y[i] <- sqrt(i)
}
y
x <- c(1, 2, 3, 4, 5)
y <- double(length = 5)
return( y[i] <- sqrt(i))





x <- -99
x == -99 | x == "."
x <- c(-99, 0, 1)
x == -99
x == "."
x == -99 | x == "."
x <- c(-99, 0, 1)
if (x == -99 | x == ".") NA
x <- -99
if (x == -99 || stop("if you eval_sol this.")) "I didn't eval_sol stop().