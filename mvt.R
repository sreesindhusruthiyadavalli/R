min_pop <- WHO$Population
min_pop
min(min_pop)

which(WHO$Country==min(WHO$Population))

which.min(WHO$Population)
WHO$Country[126]

which.min(WHO$Over60)
WHO$Population[183]
WHO$Country[183]

tapply(WHO$ChildMortality, WHO$Region, mean)
which.min(tapply(WHO$ChildMortality, WHO$Region, mean))


max(mvt$ID)
min(mvt$Beat)

nrow(mvt[mvt$Arrest== "TRUE",])

nrow(mvt[mvt$LocationDescription == "ALLEY",])

#conveting date variable to date object in R
DateConvert = as.Date(strptime(mvt$Date, "%m/%d/%y %H:%M"))
summary(DateConvert)

mvt$Month = months(DateConvert)
mvt$Month
mvt$Weekday = weekdays(DateConvert)
mvt$Weekday

mvt$Date = DateConvert
mvt$Date

table(mvt$Month)

x = min(table(mvt$Month))
x

table(mvt$Weekday)
y = max(table(mvt$Weekday))
y
mvt$month[y]

sub_mvt = mvt[mvt$Arrest == "TRUE",]
sub_mvt
table(sub_mvt$Month)

max(table(sub_mvt$Month))

hist(mvt$Date, breaks=100)

boxplot(mvt$Date, mvt$Arrest)


View(mvt)

#proportion of motor vechicle for which arrest made

yr_2012 = mvt[mvt$Year == "2001",]
yr_2012

table(yr_2012$Arrest)

yr_2007 = mvt[mvt$Year == "2007",]
yr_2007

table(yr_2007$Arrest)

yr_2012 = mvt[mvt$Year == "2012",]
yr_2012

table(yr_2012$Arrest)

#To list top 5 groups using sort based on the number of each value

sort(table(mvt$LocationDescription))

street = mvt[mvt$LocationDescription == "STREET",] 
parklot = mvt[mvt$LocationDescription == "PARKING LOT/GARAGE(NON.RESID.)",] 
gas = mvt[mvt$LocationDescription == "GAS STATION",] 
alley = mvt[mvt$LocationDescription == "ALLEY",] 
drive = mvt[mvt$LocationDescription == "DRIVEWAY - RESIDENTIAL",] 

top_5 = rbind(street,parklot,gas,alley,drive)
top_5$LocationDescription = factor(top_5$LocationDescription)
str(top_5)
table(top_5$LocationDescription,top_5$Arrest)

#day of week most motor vechicle theft happened at gas station
table(top_5$LocationDescription == 'GAS STATION', top_5$Weekday)
table(top_5$LocationDescription == 'DRIVEWAY - RESIDENTIAL', top_5$Weekday)

min(table(top_5$LocationDescription == 'DRIVEWAY - RESIDENTIAL', top_5$Weekday))
