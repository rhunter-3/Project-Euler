# https://projecteuler.net/problem=2

x1 <- 1
x2 <- 2

x <- c(x1,x2)

while (x[length(x)]< 4000000){
  x <- c(x,x[length(x)-1]+x[length(x)])
} 

x2 <- x %% 2

p002_answer <- sum(x[x2==0])
print(p002_answer)
