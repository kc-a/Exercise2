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
##--------Lists--------##
x <- list(1:5, 11:15, c("a", "b", "c"))
str(x)
class(x)
x
x <- list(x1 = 1:5, x2 = 11:15, x3 = c("a", "b", "c"))
str(x)
class(x)
x
x <- list(x1 = 1:5, x2 = 11:15, x3 = list(y1 = "a", y2 = "b", y3 = "c"))
str(x)
class(x)
x

##--------Data frames and tibbles--------##
x <- data.frame(
  season = c("winter", "winter", "spring", "spring"),
  month = c("Jan", "Feb", "Apr", "Apr"),
  station = c("Sydney", "New Castle", "Sydney", "Melbourne"),
  temperature = c(14, 17, 26, 25)
)
str(x)
typeof(x)
class(x)
x
x <- tibble(
  season = c("winter", "winter", "spring", "spring"),
  month = c("Jan", "Feb", "Apr", "Apr"),
  station = c("Sydney", "Newcastle", "Sydney", "Melbourne"),
  temperature = c(14, 17, 26, 25)
)
str(x)
typeof(x)
class(x)
x
x <- tribble(
  ~season, ~month, ~station, ~temperature,
  "winter", "Jan", "Sydney", 14,
  "winter", "Feb", "Newcastle", 17,
  "spring", "Apr", "Sydney", 26,
  "spring", "Apr", "Newcastle", 25
)
glimpse(x)
typeof(x)
class(x)
x
##--------writing a datarframe into csv file--------##
x <- tribble(
  ~season, ~month, ~station, ~temperature,
  "winter", "Jan", "Sydney", 14,
  "winter", "Feb", "Newcastle", 17,
  "spring", "Apr", "Sydney", 26,
  "spring", "Apr", "Newcastle", 25
)
str(x)
typeof(x)
class(x)
x
write_csv(x, file = "my_data_file.csv")

##--------R structures --------##
# Vector
x <- c("spring", "spring", "winter", "spring", "winter", "spring", "spring")
x[2]
x[c(2, 3, 5)]
x[2] <- "summer"
x
x[-2]
x[c(T, T, F, F, F, T, T)]

# Matrices
x <- matrix(1:9, nrow = 3)
x
x[2, 3]
x[2, c(1, 3)]
x[2, 3] <- 9
x
x[1:2, 1]
7
x[, 1]
x[, 1, drop = FALSE]
x[-2, ]
x[-2, -c(2, 3)]
x[c(T, F, T), ]
# Data frames & tibbles
x <- tribble(
  ~season, ~month, ~station, ~temperature,
  "winter", "Jan", "Sydney", 14,
  "winter", "Feb", "Newcastle", 17,
  "spring", "Apr", "Sydney", 26,
  "spring", "Apr", "Newcastle", 25
)
x
x[2, 3]
x[2, c(1, 3)]
x[3, 3] <- "Melbourne"
x
x[1:4, 1]
x[, 1]
x %>%
  pull(1)
x %>%
  pull(season)
x[-2, ]
x[-2, -c(2, 3)]
x[c(T, F, T, T), ]
x$temperature
x$temperature[2]
x$temperature[2] <- 16
x
x <- as.data.frame(x)
x[, 1]
x[, 1, drop = FALSE]
# Lists
x <- list(1:5, 11:15, c("a", "b", "c"))
x
x[[1]]
x[[2]]
x[[3]][2]
x[[3]][c(2, 3)]
x <- list(x1 = 1:5, x2 = 11:15, x3 = c("a", "b", "c"))
x
x[[1]]
8
x$x2
x$x3[2]
x$x3[c(2, 3)]
x <- list(x1 = 1:5, x2 = 11:15, x3 = list(y1 = "a", y2 = "b", y3 = "c"))
x
x$x3$y2
x$x3$y2 <- "house"
x