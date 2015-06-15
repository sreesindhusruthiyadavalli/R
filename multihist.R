par(mfrow= c(3,1)) #Ask for three columns and one row in the graph
sampl <- vector() #Create an empty vector
for(i in 1:1000) #Start a loop with 1000 rounds
sampl <- c(sampl, mean(sample(NORMAL, 3, replace=T)))
#fill sampl with sampl, and the mean of three random items from NORMAL
mean(sampl) 
sd(sampl)
hist(sampl, xlim = c(-2, 2), main = " n = 3 " )
sampl <- vector()
for(i in 1:1000)
sampl <- c(sampl, mean(sample(NORMAL, 6, replace=T)))
mean(sampl)
sd(sampl)
hist(sampl, xlim = c(-2, 2), main = " n = 6 " )
sampl <- vector()
for(i in 1:1000)
sampl <- c(sampl, mean(sample(NORMAL, 300, replace=T)))
mean(sampl)
sd(sampl)
hist(sampl, xlim = c(-2, 2), main = " n = 300 " )
