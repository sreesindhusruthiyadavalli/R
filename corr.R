corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  files_full <- list.files(directory, full.names = TRUE) 
  dat <- data.frame()
  crr <- c()
  
  for (i in id) {
    dat <-  read.csv(files_full[i])
    dat <- dat[complete.cases(dat),]
    
    if(nrow(dat) > threshold){
      crr <- c(crr, cor(dat$sulfate, dat$nitrate) )
    }
    
    
  }
  
}
