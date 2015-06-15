rankhospital <- function(state, outcome, num = "best" ){
  
  df <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  if (!state %in% df$State) {
    stop("invalid state")
  }
  df <- df[df$State==state,]
  if (outcome == 'heart attack') {
    death <- as.numeric(df[,11])
  } 
  else if (outcome == 'heart failure') {
    death <- as.numeric(df[,17])
  } 
  else if (outcome == 'pneumonia') {
    death <- as.numeric(df[,23])
  } 
  else {
    stop("invalid outcome")
  }
  
  a <- rank(death, na.last=NA)
  
  if (num=="best") {
    r <- 1
  } 
  else if (num =="worst") {
    r <- length(a)
  } 
  else if (num <= length(a) ) {
    r <- num
  } 
  else {
    return(NA)
  }
  
  return(df$Hospital.Name[order(death, df$Hospital.Name)[r]])
}
