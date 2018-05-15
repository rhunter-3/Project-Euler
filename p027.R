# prime function returns 0 for prime numbers 1 for non-prime 
is.prime <- function(n){
  flag <- 0  # set a flag variable
  for (i in 2:(n-1)){ 
    if (n%%i==0){flag <- 1 # if number is evenly divisible reset flag 
    break
    }
  }
  return(flag)
}

# function to return the how many consective prime numbers are generated for certain coefficients
test.equation <- function(a,b) {
  c <- 0
  k <- 0
  flag <- 0
  # continue incrementing c until a prime number is not generated
  repeat {
    n <- c^2 + a*c  + b
    if(is.prime(n)){break}
    c <- c + 1
  }
  return(c)
}

# function to loop over all coefficients and return product of coefficients with most consecutive primes
all.equation <- function() {
  c <- 0
  coeff1 <- 0
  coeff2 <- 0
  for(i in -1000:1000){
    for(j in -1000:1000){
      if ( test.equation(i,j) > c){c <- test.equation(i,j)
      coeff1 <- i 
      coeff2 <- j}
    }
  }
  return(coeff1*coeff2)
}