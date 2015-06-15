#subsetting data till 2006 forCFC.12 traning data
climate_sub = subset(climate, climate$Year <= 2006)

cliReg = lm(Temp ~ MEI + CO2 + CH4 + N2O + CFC.11 + CFC.12 + TSI + Aerosols, data = climate)
summary(cliReg)
cliReg

cor(climate_sub)

cliReg1 = lm(Temp ~ MEI + N2O + TSI + Aerosols, data = climate)
summary(cliReg1)
cliReg1

cliregstep = step(cliReg)
summary(cliregstep)

climate_test = subset(climate, climate$Year > 2006)
summary(climate_test)

climatePred = predict(cliregstep, newdata = climate_test)
climatePred
summary(climatePred)

# R square samples
SSE = sum((climatePred - climate_test$Temp) ^ 2)
SSE
SST = sum((mean(climate_sub$Temp) - climate_test$Temp) ^ 2 )
SST
R2 = 1 - SSE/SST
R2
  
