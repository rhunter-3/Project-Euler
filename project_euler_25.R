## https://projecteuler.net/problem=25
## Solution to problem 25
Fibonacci <- function(n){
  index <-3
  x1 <- c(rep(0,n))
  x2 <- c(rep(0,n))
  x3 <- c(rep(0,n))
  
  if (n==1){
    return(1)
  }
  
  x1[n] <- 1
  x2[n] <- 1
  repeat{
    x3 <- x1 + x2
    for (i in length(x3):2){
      if (x3[i] > 9){
        x3[i] <- x3[i] %% 10
        x3[i-1] <- x3[i-1] +1
      }
    }
    if(x3[1] != 0){
      break
    }
    index <-index + 1
    x1 <- x2
    x2 <- x3
  }
  return(index)  
}

