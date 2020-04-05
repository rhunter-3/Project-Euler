# https://projecteuler.net/problem=1

x <- c(1:999)
x3 <- x %% 3
x5 <- x %% 5
x35 <- x3 * x5
p001_answer <- sum(x[x35==0])
p001_answer
