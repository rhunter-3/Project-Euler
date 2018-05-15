## Triangle formula

start_time <- Sys.time()

p1 <- 493
h1 <- 569

p <- 40755
h <- 40755

repeat{
    h1 <- h1 + 1
    
    h <- h + h1
    if(p==h){
        break
    }
    if(h>p){
        p1 <- p1 + 3
        p <- p + p1
    }
    if(p==h){
        break
    }
}
ans <- t1*(t1+1)/2
ans
t1

end_time <- Sys.time()
end_time - start_time