#Mean of population data
mean(survey$austin)
hist(survey$austin)
sd(survey$austin)

#Mean for sample size n=5,15,25
#For n = 10
xbar10 <- rep(NA,1000)
for(i in  1:1000)
{
  x <- sample(survey$austin, size = 10)
  xbar10[i] <- mean(x)
}
mean(xbar10)
sd(xbar10)
hist(xbar10,xlim =c(2,10))
sd(survey$austin)/sqrt(10)

#For n = 15
xbar15 <- rep(NA,1000)
for(i in  1:1000)
{
  x <- sample(survey$austin, size = 15)
  xbar15[i] <- mean(x)
}
mean(xbar15)
sd(xbar15)
hist(xbar15,xlim =c(20,100))
sd(survey$austin)/sqrt(15)

#For n = 25
xbar25 <- rep(NA,1000)
for(i in  1:1000)
{
  x <- sample(survey$austin, size = 25)
  xbar25[i] <- mean(x)
}
mean(xbar25)
sd(xbar25)
hist(xbar25,xlim =c(20,100))
sd(survey$austin)/sqrt(25)
pnorm(0.3)
1-pnorm(0.3) + 1- pnorm(-2.25)
1-pnorm(3.1)
