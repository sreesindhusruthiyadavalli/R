mean(tapply(pisatrain$male == "1", pisatrain$readingScore, mean))

mean(tapply(pisatrain$male == "0", pisatrain$readingScore, mean))
    
#pisatrain[is.na(pisatrain$readingScore),]
#pisatrain[is.na(pisatrain$schoolSize),]

#pisatrain[is.na(pisatrain$urban),]

#pisatrain[is.na(pisatrain$publicSchool),]
#pisatrain[is.na(pisatrain$schoolHasLibrary),]

#pisatrain[is.na(pisatrain$studentsInEnglish),]

#Find columns for which columns have Na
sapply(pisatrain, function(x) all(is.na(x)))

sapply(pisatrain, all(is.na(x)))  

#Removing na values 
pisaTrain = na.omit(pisatrain)
pisaTest = na.omit(pisatest)


factor(table(pisatrain$grade))

factor(table(pisatrain$male))

factor(table(pisatrain$raceeth))


#Relevel to change reference level of a column variable
pisaTrain$raceeth = relevel(pisaTrain$raceeth, "White")

pisaTest$raceeth = relevel(pisaTest$raceeth, "White")

#Building linear regression model

lmScore = lm(readingScore ~., data = pisaTrain)
summary(lmScore)

lmScore

#Predicting the model for test data

predTest = predict(lmScore, newdata = pisaTest)
summary(predTest)

SSE = sum((predTest - pisaTrain$readingScore)^2)
SSE
SST = sum((mean(pisaTrain$readingScore) - pisaTest$readingScore)^2)
SST
R2 = 1 - SSE/SST
R2

RMSE = sqrt(SSE/nrow(pisaTest))
RMSE
