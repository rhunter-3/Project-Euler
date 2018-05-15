pandigital <- function(){
  c <- c()
  for (i in 2:99){
    for (j in i+1:9999){
      k <- i*j
      if(
        paste(as.character(i), as.character(j), as.character(k), sep = '') %>%
        strsplit("") %>%
        paste(sort(unlist()), collapse = "") == "123456789"){
        c <- c(c,k)
      }
    }
  }
  
  return(sum(c[!duplicated(c)]))
}
pandigital()

require(magrittr)
paste(as.character(17), as.character(189), as.character(7245), sep = '') %>%
  strsplit("") %>%
  unlist() %>%
  sort() %>%
  paste(collapse = "") 

if(paste(sort(unlist(strsplit(paste(as.character(i), as.character(j), as.character(k), sep = ''), ""))), collapse = "") == "123456789")