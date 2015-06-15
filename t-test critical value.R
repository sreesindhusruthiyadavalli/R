#Bull riders weight and t- estimation

hist(bull$Weight, main='Histogram of Bull Rider Weights',xlab='Weight (lbs)')
mean(bull$Weight)
sd(bull$Weight)
t.test(bull$Weight, mu=190)

#bull riders ride percentage and t- estimation

mean(bull$RidePer)
sd(bull$RidePer)
t.test(bull$RidePer, mu=0.50)
hist(bull$RidePer, main = 'Histogram of Bull Rider Weights', xlab = 'Weight(lbs)')

#adding new variable to the bull table
bull$avgear <- (bull$Earnings/bull$Events)
View(bull)
hist(bull$avgear, main = 'Histogram of avg earnings')
mean(bull$avgear)
mean(bull$Earnings/bull$Events)
log(bull$avgear)
mean(log(bull$avgear))
t.test(log(bull$avgear), mu = 8.77)
t.test(bull$avgear, mu = 8517.123)

#Mean of vector values
gms_weight <- c(29.4 , 29.0, 28.4, 28.8, 28.9, 29.3, 28.5, 28.2)
mean(c(29.4 , 29.0, 28.4, 28.8, 28.9, 29.3, 28.5, 28.2))
sd(c(29.4 , 29.0, 28.4, 28.8, 28.9, 29.3, 28.5, 28.2))
t.test(gms_weight, mu = 28.5)
qnorm(0.05)
pnorm(-1.644)

#Critical values and confidence intervals

critical_value <- 1.796
standard_error <- 5.3/sqrt(12)
marg_err  <- critical_value * standard_error
mean_wings <- 42.6
con_lowerbnd <- mean_wings - marg_err
con_lowerbnd
con_upperrbnd <- mean_wings + marg_err
con_upperrbnd
standard_error
marg_err
