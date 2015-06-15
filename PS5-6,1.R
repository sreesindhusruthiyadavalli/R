WR_types <- table(WR$Event)
WR_types

women_mile <- WR[WR$Event == "Womens Mile",]
women_mile
name <- which(women_mile$Record < 260)
name
menshot <- WR[WR$Event=='Mens Shotput',]
womenshot <- WR[WR$Event=='Womens Shotput',] 
plot(menshot$Year,menshot$Record,main='Mens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
plot(womenshot$Year,womenshot$Record,main='Womens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
#linfit(womenshot$Year,womenshot$Record)
abline(lm(womenshot$Record~womenshot$Year))
linFit(womenshot$Year,womenshot$Record)
linFit(menshot$Year,menshot$Record)
menshot




women_mile <- WR[WR$Event == "Womens Mile",]
women_mile
plot(women_mile$Year,women_mile$Record,main='Womens Mile World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
linFit(women_mile$Year,women_mile$Record)
men_mile <- WR[WR$Event == "Mens Mile",]
men_mile
plot(men_mile$Year,men_mile$Record,main='mens Mile World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
linFit(men_mile$Year,men_mile$Record)

men_pole<- WR[WR$Event == "Mens Polevault",]
men_pole
men_pole70 <- men_pole[men_pole$Year >= "1970", ]
men_pole70
plot(men_pole70$Year,men_pole70$Record,main='mens pole World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
which(men_pole70$Record == max(men_pole70$Record))
max(men_pole70$Record)
linFit(men_pole70$Year,men_pole70$Record)

us <- world[world$Country.Code == "USA",]
us
us_select <- us[us$year >= 1990, ]
us_select$internet.mil <- us_select$internet.users / 1000000
us_select$time <- us_select$year - 1990
us_select_10 <- us_select[us_select$time < 10,]

expFit(us_select_10$time, us_select_10$internet.mil)
logisticFit(us_select_10$time, us_select_10$internet.mil)

e <- expFitPred(us_select_10$time, us_select_10$internet.mil, 16)
e
l <- logisticFitPred(us_select_10$time, us_select_10$internet.mil, 22)
l
us_select[us_select$time == 16, c("Country", "year", "internet.mil")]

us_select$internet.mil[us_select$time == 16] - e
us_select$internet.mil[us_select$time == 16] - l
