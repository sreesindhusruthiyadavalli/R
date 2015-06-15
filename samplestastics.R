xbar5 <- rep(NA,1000)
for(i in  1:1000)
{
  x <- sample(survey$name_letters, size = 5)
  xbar5[i] <- mean(x)
}
x
mean(survey$name_letters)
sd(survey$name_letters)

mean(xbar5)

#for sample size 15
xbar15 <- rep(NA,1000)
for(i in  1:1000)
{
  x <- sample(survey$name_letters, size = 15)
  xbar15[i] <- mean(x)
}
x


mean(xbar15)

#for sample size 25
xbar25 <- rep(NA,1000)
for(i in  1:1000)
{
  x <- sample(survey$name_letters, size = 25)
  xbar25[i] <- mean(x)
}
x
#Mean of sample size 5,15,25
mean(xbar5)
mean(xbar15)
mean(xbar25)

#sd of sample size 5,15,25
sd(xbar5)
sd(xbar15)
sd(xbar25)

#histogram of sample size 5,15,25
hist(xbar5,xlim=c(2,10))
hist(xbar15,xlim=c(2,10))
hist(xbar25,xlim=c(2,10))


#standard error of sample size 5,15,25

sd(survey$name_letters)/sqrt(5)
sd(survey$name_letters)/sqrt(15)
sd(survey$name_letters)/sqrt(25)


#Mean of population data
mean(survey$happy)
hist(survey$happy)
sd(survey$happy)

#Mean for sample size n=5,15,25
#For n = 5
xbar5 <- rep(NA,1000)
for(i in  1:1000)
{
  x <- sample(survey$happy, size = 5)
  xbar5[i] <- mean(x)
}
mean(xbar5)
sd(xbar5)
hist(xbar5,xlim =c(20,100))
sd(survey$happy)/sqrt(5)

#For n = 15
xbar15 <- rep(NA,1000)
for(i in  1:1000)
{
  x <- sample(survey$happy, size = 15)
  xbar15[i] <- mean(x)
}
mean(xbar15)
sd(xbar15)
hist(xbar15,xlim =c(20,100))
sd(survey$happy)/sqrt(15)

#For n = 25
xbar25 <- rep(NA,1000)
for(i in  1:1000)
{
  x <- sample(survey$happy, size = 25)
  xbar25[i] <- mean(x)
}
mean(xbar25)
sd(xbar25)
hist(xbar25,xlim =c(20,100))
sd(survey$happy)/sqrt(25)
