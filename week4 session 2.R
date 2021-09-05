lbrary (tidyverse)
x <- c(1:6)
x
typeof (x)
class(x)
str(x)

x <- 1:6
x
typeof(x)
class(x)
str(x)
x <- seq(1, 6, len = 6)
x
typeof(x)
class(x)
str(x)

##-----------atomic vectors integers-----------##
x <- c(1L, 2L, 3L, 4L, 5L, 6L)
x
typeof(x)
class(x)
str(x)
x <- c(1, 2, 3, 4, 5L, 6L)
x
typeof(x)
class(x)
str(x)
x <- as.integer(x)
x
typeof(x)
class(x)
str(x)
##-----------Atomic vectors, characters-----------##
x <- "This"
x
typeof(x)
class(x)
str(x)
x <- c("This", "unit", "is", "great.", "Do", "you", "agree?")
x
typeof(x)
class(x)
str(x)
x <- paste("This", "unit", "is", "great.", "Do", "you", "agree?", sep = "::")
x
typeof(x)
class(x)
str(x)
x <- paste("This", "unit", "is", "great.", "Do", "you", "agree?", sep = " ")
x
typeof(x)
class(x)
str(x)
cat("This", "unit", "is", "great.", "Do", "you", "agree?", sep = "\t")
cat("This", "unit", "is", "great.", "Do", "you", "agree?", sep = "\n")
cat("This", "unit", "is", "great.", "\n", "Do", "you", "agree?")
cat("This ", "unit ", "is ", "great.", "\n", "Do ", "you ", "agree? ", sep = "")
glue::glue("This unit is great. Do you agree?")
glue::glue("This unit is great.
Do you agree?")
##--------Atomic vectors, logicals--------#
1 > 0
1 < 0
1 <- 1
1 == 1
x <- c(TRUE, TRUE, FALSE)
x
typeof(x)
class(x)
str(x)
x <- c(T, T, F)
x
typeof(x)
class(x)
str(x)
x <- 1 > 0
x
typeof(x)
class(x)
str(x)
x <- c(1 > 0, 5 > 0, 5 > 10)
x
typeof(x)
class(x)
str(x)
##--------Atomic vectors, factors--------##
x <- c("spring", "spring", "winter", "spring", "winter", "spring", "spring")
x
typeof(x)
class(x)
str(x)
attributes(x)
x <- factor(c("spring", "spring", "winter", "spring", "winter", "spring", "spring"))
x
typeof(x)
class(x)
str(x)
attributes(x)
table(x)
as.character(x)
##-------Attributes--------##
x <- 1:6
attributes(x)
names(x)
names(x) <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun")
names(x)
attributes(x)
str(x)
class(x)
x
x <- 1:10
dim(x) <- c(2, 5)
attributes(x)
str(x)
class(x)
x
##--------Matrices--------##
m <- matrix(1:6, nrow = 2)
str(m)
class(m)
m
m <- matrix(1:6, nrow = 2, byrow = TRUE)
str(m)
class(m)
m
##--------Arrays--------##
x <- array(c(1:5, 11:15), dim = c(5, 5))
str(x)
class(x)
x
## R add to recycle values: we gave in input 10 values, but needed 25 (5*5)
x <- array(c(1:15, 21:30), dim = c(5, 5))
str(x)
class(x)
x
x <- array(c(1:15, 21:30, 101:125), dim = c(5, 5, 2))
str(x)
class(x)
x
x <- array(c(1:25, 101:125), dim = c(5, 5, 2))
str(x)
class(x)
x


install.packages(c("agridat", "catdata"))
library(agridat)
data(crampton.pig)
data(nass.soybean)
data(nass.corn)
data(nass.wheat)
library(catdata)
data("heart")
heart2 <- heart %>%
  as_tibble(heart) %>%
  mutate(
    family_history = ifelse(famhist == 1, "Yes", "No"),
    heart_disease = ifelse(y == 1, "Yes", "No")
  )
ggplot(crampton.pig, aes(weight1, weight2, colour = treatment, size = feed)) +
geom_point()  










