add2<-function(x,y)
{
  x+y
}

above10<-function(x,n=10)
{
  
  use <- x > n
  x[use]
  
  
}

colummmean <- function(y, removeNA = TRUE){
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] <- mean(y[,i], na.rm = removeNA)
    
  }
  means
}
