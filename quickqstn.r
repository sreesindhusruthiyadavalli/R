baseball = read.csv("baseball.csv")
str(baseball)


moneyball = subset(baseball, Year < 2002)
str(moneyball)

moneyball$RD = moneyball$RS - moneyball$RA
str(moneyball)

WinsReg = lm(W ~ RD, data=moneyball)
WinsReg
summary(WinsReg)


RunsReg = lm(RS ~ OOBP + OSLG, data=moneyball)
RunsReg
summary(RunsReg)
