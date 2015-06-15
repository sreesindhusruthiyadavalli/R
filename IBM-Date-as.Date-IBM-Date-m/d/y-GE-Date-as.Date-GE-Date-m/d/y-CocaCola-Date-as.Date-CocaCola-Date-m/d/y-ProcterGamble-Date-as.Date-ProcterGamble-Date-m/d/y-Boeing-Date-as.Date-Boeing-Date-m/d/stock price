IBM$Date = as.Date(IBM$Date, "%m/%d/%y")
GE$Date = as.Date(GE$Date, "%m/%d/%y")

CocaCola$Date = as.Date(CocaCola$Date, "%m/%d/%y")

ProcterGamble$Date = as.Date(ProcterGamble$Date, "%m/%d/%y")

Boeing$Date = as.Date(Boeing$Date, "%m/%d/%y")

allstock = rbind(IBM,GE,CocaCola,ProcterGamble,Boeing)

min(allstock$Date)
max(allstock$Date)

View(IBM)

mean(IBM$StockPrice)

min(GE$StockPrice)

max(CocaCola$StockPrice)

median(Boeing$StockPrice)

sd(ProcterGamble$StockPrice)

plot(CocaCola$Date, CocaCola$StockPrice, type='l',col='red')
lines(ProcterGamble$Date,ProcterGamble$StockPrice, lty=4,col='blue')
abline(v=as.Date(c("1983-03-01")), lwd=2)


plot(CocaCola$Date[301:432], CocaCola$StockPrice[301:432], type="l", col="red", ylim=c(0,210))
lines(ProcterGamble$Date[301:432],ProcterGamble$StockPrice[301:432], col="blue")
lines(GE$Date[301:432],GE$StockPrice[301:432], col="purple")
lines(IBM$Date[301:432],IBM$StockPrice[301:432], col="orange",lty= 4)
lines(Boeing$Date[301:432],Boeing$StockPrice[301:432], col="green",lty=8)
abline(v=as.Date(c("2004-01-01")), lwd=2,col = "Pink")
abline(v=as.Date(c("2005-01-01")), lwd=2,col = "black")

tapply(IBM$StockPrice, months(IBM$Date),mean)

mean(IBM$StockPrice)

tapply(GE$StockPrice, months(GE$Date),mean)
tapply(Boeing$StockPrice, months(Boeing$Date),mean)
tapply(CocaCola$StockPrice, months(CocaCola$Date),mean)
tapply(ProcterGamble$StockPrice, months(ProcterGamble$Date),mean)

max(tapply(GE$StockPrice, months(GE$Date),mean))
max(tapply(CocaCola$StockPrice, months(CocaCola$Date),mean))
