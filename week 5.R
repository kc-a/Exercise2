library(tidyverse)
library(glue)
# basic mapping
negatives <- list(-25, -31, -111)
map(negatives, abs)
list1 <- list(1, 2, 3, 4, 5)
map(list1, log)
list1 %>%
  map(log) %>%
  map(round)
list1 %>%
  map(log) %>%
  map(round, digits = 2)
# changing output format
map_dbl(list1, log)
x <- matrix(1:100, nrow = 25, ncol = 4)
## for: summing rows
rowsum <- vector(length = 25)
for (i in 1:25) {
  rowsum[i] <- sum(x[i, ])
}
rowsum
# solving it one time
.x <- 1
sum(x[.x, ])
# generalises it with map family and ~
map(1:25, ~ sum(x[.x, ]))
# putting it to a different/more appropriate output format
map_dbl(1:25, ~ sum(x[.x, ]))
## for: summing columns
colsum <- vector(length = 4)
for (j in 1:4) {
  colsum[j] <- sum(x[, j])
}