distinct.powers <- function(n){
  a <- c()
  for (i in 2:n){
    for (j in 2:n){
      if(i**j %in% a){}
      else {a[length(a)+1] <- i**j
    }
  }
  }
  return(length(a))
}

distinct.powers(100)