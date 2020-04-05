# https://projecteuler.net/problem=3

# helper function to determine whether a number is a prime
is.prime <- function(x) { 
  if (x == 1) {
    flag <- FALSE
  } 
  if (x == 2 | x == 3) {
    flag <-  TRUE
  } 
  else {
    flag <- !any(x %% 2:(floor(sqrt(x))) == 0)
  }
  return(flag)
}
# generate all primes between 2 and sqrt(600851475143)
y <- 600851475143
n <- floor(sqrt(y))
z <- c()

for (i in 1:n) {
  if (is.prime(i)==TRUE){
    z <- c(z,i)
  }
}

z2 <- y %% z
p003_answer <- max(z[z2==0])
p003_answer


