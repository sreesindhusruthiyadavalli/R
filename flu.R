max(FluTrain$ILI)
max(FluTrain$Queries)
which(FluTrain$ILI == max(FluTrain$ILI))

FluTrain[which(FluTrain$ILI == max(FluTrain$ILI)),]

FluTrain[which(FluTrain$Queries == max(FluTrain$Queries)),]


table(FluTrain$ILI, FluTrain$Week)

hist(FluTrain$ILI)
hist(log(FluTrain$ILI), log(FluTrain$Queries), breaks = 10)

#Linear regression model 
Flut = na.omit(FluTrain)
lmreg = lm(Queries ~ log(ILI), data = Flut)
summary(lmreg)

#include.lowest = TRUE

#correlation between variables
corr = cor(FluTrain$ILI, FluTrain$Queries)
corr
corr ^ 2
log(1/corr)
exp(-0.5 * corr)
