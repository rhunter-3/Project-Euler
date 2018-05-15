digit.fifth <- function(n){
  a <- c()
  b <- c()
  for (i in 10:n){
    a<- as.numeric(strsplit(as.character(i),"")[[1]]) # Split number into a vector of digits
    if(i == sum(a**5)){ # Test for whether the number is equal to the sum of the 5th powers of digits
      b <- c(b,i)  # Combine b with the new number satisfying the condition
    }
  }
  return(sum(b)) # Return the sum of vector b
  
}

# Call function with a number large enough to get the answer

digit.fifth(1000000)