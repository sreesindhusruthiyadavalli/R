table(AnimalData$Outcome.Type)
adopted <- AnimalData[AnimalData$Outcome.Type=="Adoption",]
adopted
which(AnimalData$Days.Shelter==max(adopted))

daystoadopt <- adopted$Days.Shelter
which(AnimalData$Days.Shelter==max(daystoadopt))


hist(daystoadopt)
fivenum(daystoadopt)
daystoadopt
max(daystoadopt)
mean(daystoadopt)

animan <- AnimalData[425, ]
animan
table(AnimalData$Age.Intake)
animal_dog <- AnimalData[AnimalData$Animal.Type == "Dog",]
animal_dog


in_take_dog <- animal_dog$Intake.Type
in_take_dog
plot(in_take_dog)

in_take_owner_dog <- animal_dog[animal_dog$Intake.Type == "Owner Surrender",]
in_take_owner_dog

return_dog_owner <- in_take_owner_dog[in_take_owner_dog$Outcome.Type == "Return to Owner",]
return_dog_owner

shelter_dog <- mean(return_dog_owner$Days.Shelter)
shelter_dog
1-pnorm(1.2) + 1-pnorm(-1.9)
1-pnorm(2)  


which(bull$Rides == min(bull$BuckOuts))
hist(bull$RidePer)
plot(bull$RidePer,bull$Top10)
cor(bull$Rides,bull$Top10)
vars <- c("Top10", "RidePer")
cor(bull[,vars])
sd(bull$Top10)
mean(bull$Top10)
plot(bull$RidePer,bull$Top10)
abline(lm(bull$Top10~bull$RidePer))
which(bull$Top10==5 & bull$RidePer==.53)
mean(bull$RidePer)
sd(bull$RidePer)
hist(bull$Earnings)
mean(bull$Earnings)
max(bull$Earnings)
plot(bull$Earnings,bull$RidePer)
cor(bull$Earnings,bull$RidePer)
plot(bull$Earnings,bull$CupPoints)
cor(bull$Earnings,bull$CupPoints)
which(bull$Earnings == max(bull$Earnings))
plot(bull$CupPoints,bull$Earnings)
nooutlier <-bull[-1,]
cor(nooutlier$Earnings,nooutlier$CupPoints)
cor(nooutlier$Earnings,nooutlier$RidePer)
bull$RidesPerEvent <- bull$Rides/bull$Events
hist(bull$RidesPerEvent)
min(bull$RidesPerEvent)
median(bull$RidesPerEvent)
max(bull$RidesPerEvent)
plot(bull$RidesPerEvent, bull$Place)
abline(lm(bull$Place~bull$RidesPerEvent))
cor(bull$RidesPerEvent, bull$Place)
1 - 0.75
cor(Exam$Minutes.Spent.Studying, Exam$Exam.Grade)
plot(Exam$Minutes.Spent.Studying, Exam$Exam.Grade)
abline(lm(Exam$Exam.Grade~Exam$Minutes.Spent.Studying))
outlier_exam <- subset(Exam, Exam$Minutes.Spent.Studying != "0", select = c(Minutes.Spent.Studying, Exam.Grade))
cor(outlier_exam$Minutes.Spent.Studying, outlier_exam$Exam.Grade)
outlier_exam

gender <- table(acl$Gender)
gender
genre <- table(acl$Genre)
genre
twoway <- table (acl$Gender,acl$Genre)
twoway
barplot(twoway, legend=TRUE, beside=TRUE)
barplot(twoway, legend=TRUE)
prop.table(genre)
sum(prop.table(genre))
prop.table(twoway,1)
grammy <- acl[acl$Grammy == "Y",]
grammy
genre_gramm <- table(acl$Genre)
genre_gramm
prop.table(genre_gramm)
gen_gramm <- table(acl$Grammy, acl$Genre)
gen_gramm 
prop.table(gen_gramm, 2)
popular <- table(acl$Facebook.100k)
popular
pop_age <- table(acl$Facebook.100k, acl$Age.Group)
pop_age
prop.table(pop_age, 1)

linFit(menshot$Year,menshot$Record)
linFit(womenshot$Year,womenshot$Record)
