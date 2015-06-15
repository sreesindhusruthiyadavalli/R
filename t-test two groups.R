chew <- c(79, 95,85, 82)
no_chew <- c(80, 94,87,84)

mean(chew)
sd(chew)
sd(chew)/sqrt(3)


mean(no_chew)
sd(no_chew)
sd(no_chew)/sqrt(3)

(sd(chew)/sqrt(3)) + (sd(no_chew)/sqrt(3))


chewing_gum <- mean(c(79, 95,85, 82))
no_gum <-mean()
diff <- chewing_gum - no_gum
diff

sub_post <- post[post$live_campus == 'yes' & post$ID <= 10,]


# Make a vector of happiness scores for each sample
underclass_happy <- post$happy[post$classification=='Freshman'|post$classification=='Sophomore']
underclass_happy
upperclass_happy <- post$happy[post$classification=='Junior'|post$classification=='Senior']
upperclass_happy

# Check the normality assumption
hist(underclass_happy, xlab='Underclassman Happiness', main='Percent of Time Happy')
hist(upperclass_happy, xlab='Upperclassman Happiness', main='Percent of Time Happy')

# Run independent t-test
t.test(underclass_happy, upperclass_happy)


# Make a vector of difference scores
post$diff_happy <- post$happy - post$post_happy

post$diff_happy
# Check the normality assumption
hist(post$diff_happy, xlab= 'Difference in Happiness over the Semester', main = 'Happy-Post Happy')

# Run dependent t-test
t.test(post$happy, post$post_happy, paired=T)

#Mean of hm time of high school and college
mean(post$hw_hours_HS)
mean(post$hw_hours_college)

#high school and college
post$homework_diff <- post$hw_hours_HS - post$hw_hours_college
post$homework_diff
mean(post$homework_diff)
#histogram
hist(post$homework_diff, xlab = 'Diff in homework hrs', main = 'homework hrs')

#Dependent t- test
t.test(post$homework_diff, post$hw_hours_college, paired = T)

t.test(post$hw_hours_HS, post$hw_hours_college, paired = T)


#sleep sat night who are greek and no greek
sleep_greek <- post$sleep_Sat[post$greek == 'yes']
sleep_greek
mean(sleep_greek)
hist(sleep_greek)

sleep_nogreek <- post$sleep_Sat[post$greek == 'no']
sleep_nogreek
mean(sleep_nogreek)
hist(sleep_nogreek)

mean(sleep_nogreek) - mean(sleep_greek)

# t- test
t.test(sleep_greek, sleep_nogreek)


#hrs spent in high school and college for major nursing and biology
maj_nurs <- post[post$major == 'Nursing',]
maj_nurs$hm_diff_nur <- maj_nurs$hw_hours_HS - maj_nurs$hw_hours_college
maj_nurs$hm_diff_nur

maj_bio <- post[post$major == 'Biology',]
maj_bio$hm_diff_bio <- maj_bio$hw_hours_HS - maj_bio$hw_hours_college
maj_bio$hm_diff_bio

#variable followed by vector for bio adn nurs
#variable to have diff of in high school and college
post$hm_diff <- post$hw_hours_HS - post$hw_hours_college

post$hm_diff

major_nur <- post$hm_diff[post$major == 'Nursing']
major_nur
mean(major_nur)
hist(major_nur)

major_bio <- post$hm_diff[post$major == 'Biology']
mean(major_bio)
hist(major_bio)  

#t-test
t.test(major_nur, major_bio)
