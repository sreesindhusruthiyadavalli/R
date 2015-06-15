#Creating variable to convert millinos to somelow number
world$internet.mil <- world$internet.users / 10000000

#Subset to get data greter than 1990
world_set <- world[world$year >= 1990,]

#A new variable that counts 1990 as 0 and adds another column
world_set$time <- world_set$year - 1990

#From 1990 t0 2006
world_set_10 <- world_set[world_set$time < 10,]

#Denmark country subset of world set
denmark <- world_set_10[world_set_10$Country.Code == "DNK",]
#Belarus country ubset
belarus <- world_set_10[world_set_10$Country.Code == "BLR",]



#exp fit for denmark and logistic Fit
expFit(denmark$time, denmark$internet.mil)
logisticFit(denmark$time, denmark$internet.mil)

#exp and log fit for belarus
expFit(belarus$time, belarus$internet.mil)
logisticFit(belarus$time, belarus$internet.mil)
