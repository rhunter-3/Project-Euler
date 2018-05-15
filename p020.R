amicable <- function(x) {
  vector1=c()
  for (i in 1:x-1){ 
        if(i==2){ vector1[i]<-i }
        else{}}
  return(vector1)
}

amicable <- function(x) {
  vector1=c()
  for (i in 1:x-1){ 
    if(i==5){ vector1[i]<- i}
    next }
  return(vector1)
}

amicable1 <- function(x) {
  vector1=c()
  for (i in 2:x-1){ 
    vector1[i]<- x %% i}
  vector2<-vector1==0
  vector3=seq(1,x-1)
  return(sum(vector3[vector2]))
}

amicable2 <- function(x) {
  vector1=c()
  for (i in 1:x-1){ 
    if(amicable1(amicable1(i))==i){ vector1[i]<- amicable1(i)}}
  return(vector1)
}
amicable2(10000)

amicable2 <- function(x) {
  vector1=c()
  j<-0
  for (i in 1:x-1){ 
    if(amicable1(amicable1(i))==i){
      j<-j+1
      vector1[j]<- i}}
  return(vector1)
}

amicable1 <- function(x) {
  vector1=c()
  for (i in 2:x-1){ 
    vector1[i]<- x %% i}
  vector2<-vector1==0
  vector3=seq(1,x-1)
  return(sum(vector3[vector2]))
}

amicable2 <- function(x) {
  vector1=c()
  j<-0
  for (i in 1:x){ 
    if(amicable1(amicable1(i))==i & amicable1(amicable1(i)) != amicable1(i)){
      j<-j+1
      vector1[j]<- i}}
  return(sum(vector1))
}
amicable2(10000)

