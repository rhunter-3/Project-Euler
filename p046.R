## Goldbachs Conjecture

start_time <- Sys.time()

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

p <- 1

repeat{
    p <- p + 1
    if(is.prime(p) == 1 && p %% 2 != 0){
        for (i in 1:p){
            x <- p - 2*i^2
            if(is.prime(x) == 0){break}
            else if (i==p){
                ans <- p
                break
                }
            
        }
    if (exists("ans") || p == 6000){
        break
    }    
    }
}

ans

end_time <- Sys.time()
end_time - start_time