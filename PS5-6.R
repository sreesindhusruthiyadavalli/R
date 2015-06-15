world_brazil <- world[world$Country.Code == "BRA",]

world_brazil_95 <- world_brazil[world_brazil$year >= 1995,]

world_brazil_95$year <- world_brazil_95$year - 1995 

world_brazil_95$mobmil <- world_brazil_95$mobile.users/1000000
View(world_brazil_95)

value <- world_brazil_95[world_brazil_95$year == "10",]
value$mobmil

more_100 <- world_brazil_95[world_brazil_95$mobmil >= "100",]
View(more_100)
more_100$year

linFit(world_brazil_95$year,world_brazil_95$mobmil)
expFit(world_brazil_95$year,world_brazil_95$mobmil)
logisticFit(world_brazil_95$year,world_brazil_95$mobmil)

pred_value <- logisticFitPred(world_brazil_95$year,world_brazil_95$mobmil,30)
pred_value

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
  
