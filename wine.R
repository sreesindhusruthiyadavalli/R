#Linear model for Harvestrain and Winterrain

model4 = lm(Price ~ HarvestRain + WinterRain, data=wine)
summary(model4)

#Correlation between independent variables
cor1 = cor(wine$HarvestRain, wine$WinterRain)
cor1
