complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  
  files_full <- list.files(directory, full.names = TRUE) 
  complete_rows <- data.frame()
  
  dat <- data.frame()
    
  for (i in id) {
    dat <-  read.csv(files_full[i])
    Nobs <- sum(complete.cases(dat))
    completeCasesTemp <- cbind(i,Nobs)
    complete_rows <- rbind(complete_rows,completeCasesTemp)
  }
  
  colnames(complete_rows) <- c("id","nobs")
  complete_rows
  
}  
  

