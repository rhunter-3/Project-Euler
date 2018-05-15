num.seq <- 0:9
n <- 1e6
Lexico <- function(num.seq, n) {
  len <- length(num.seq)  
  if (n > prod(1:len) | n < 1) {
    print("Error. The number required is beyond.")
  }
  else {
    nth <- numeric(len)  
    for (i in 1:(len - 1)) {
      if (n == 0) {
        nth[i] <- num.seq[length(num.seq)]
      }
      else {
        tmp <- prod(1:(len - i)) 
        div <- floor((n - 1) / tmp)
        nth[i] <- num.seq[div + 1]
      }
      n <- n %% tmp
      num.seq <- num.seq[num.seq != nth[i]]
    }
    nth[len] <- num.seq
    return(nth)
  }
} 
cat("The result is:", Lexico(num.seq, n), "\n")