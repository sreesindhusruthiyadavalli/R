summary(CPS)
str(CPS)
table(CPS$Industry)
max(table(CPS$Industry))


sort(table(CPS$Region))

sort(table(CPS$State))
min(sort(table(CPS$State)))

max(sort(table(CPS$State)))

nrow(CPS[CPS$Citizenship == 'Citizen, Native' | 'Citizen, Naturalized',])

table(CPS$Race, CPS$Hispanic)

CPS[is.na(CPS$PeopleInHousehold),]
CPS[is.na(CPS$Region),]
CPS[is.na(CPS$Industry),]
CPS[is.na(CPS$EmploymentStatus),]

CPS[is.na(CPS$Citizenship),]

nrow(CPS[is.na(CPS$PeopleInHousehold),])

table(CPS$Region, is.na(CPS$Married))

table(CPS$Sex, is.na(CPS$Married))

table(CPS$Age, is.na(CPS$Married))

nrow(table(CPS$State, is.na(CPS$MetroAreaCode)))


states = table(CPS$State, is.na(CPS$MetroAreaCode))

table(CPS$Region, is.na(CPS$MetroAreaCode))

#tapply(CPS$State, CPS$MetroAreaCode, mean)

#tapply(CPS$State, mean(states))

#using tapply to get the proportion of values
sort(tapply(is.na(CPS$MetroAreaCode), CPS$State, mean))

#Merging two data frames like joins in SQL

CPS = merge(CPS, MetroAreaCodes, by.x="MetroAreaCode", by.y="Code", all.x=TRUE)

summary(CPS)
str(CPS)
View(CPS)

#Finding some max and min values of tables

nrow(CPS[is.na(CPS$MetroArea),])

sort(table(CPS$MetroArea))

max(sort(table(CPS$MetroArea)))

sort(tapply(CPS$Education == "No high school diploma", CPS$MetroArea, mean,na.rm = TRUE))

min(sort(tapply(CPS$Education == "No high school diploma", CPS$MetroArea, mean,na.rm = TRUE)))


#Highest proportion of interviewes of Hispanic ethnicity
sort(tapply(CPS$Hispanic == "1", CPS$MetroArea, mean))

sort(tapply(CPS$Race == "Asian", CPS$MetroArea, mean))


View(CountryCode)
#Merging two data frames
CPS = merge(CPS,CountryCode,by.x="CountryOfBirthCode", by.y = "Code", all.x = TRUE)
View(CPS)

nrow(CPS[is.na(CPS$Country),])
sort(table(CPS$Country))

#Proporition of people not from US
tapply(CPS$Country != "United States",CPS$MetroArea,mean, na.rm = TRUE)

sort(tapply(CPS$Country == "India", CPS$MetroArea, mean, na.rm = TRUE))

#max number of interviews who are from brazil and of metro aread
sort(tapply(CPS$Country == "Brazil", CPS$MetroArea, sum, na.rm = TRUE))

table(CPS$MetroArea, CPS$Country == "Somalia")
max(table(CPS$MetroArea, CPS$Country == "Somalia"))
sort(tapply(CPS$Country == "Somalia", CPS$MetroArea, sum, na.rm = TRUE))
