spiral <- function(n){
  n <- ceiling(n/2)
  x <- 0
  for (i in 1:n){
    i <- i*2 -1
    x <- x + 4*(i**2) - (i-1)*6
  }
  x<-x-3
  return(x)
}

spiral(1000)
