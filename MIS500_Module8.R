# retrieve data from 2017
AOD2017<-read.csv("C:\\Users\\Fartrell Cluggins\\Documents\\MIS500 Class\\accidentaldrugdeaths2017v2.csv",header=T,sep=",")

# retrieve data from 2016
AOD2016<-read.csv("C:\\Users\\Fartrell Cluggins\\Documents\\MIS500 Class\\accidentaldrugdeaths2016v2.csv",header=T,sep=",")

# view data
AOD2017

# data summary
summary(AOD2017)

# list of variables
names(AOD2017)

# mean age combining male and female
mean(AOD2017$Age)

# mean age by sex
tapply(AOD2017$Age, AOD2017$Sex, mean)

# mean age by race
tapply(AOD2017$Age, AOD2017$Race, mean)

# sd
tapply(AOD2017$Age, AOD2017$Sex, sd)

# median
tapply(AOD2017$Age, AOD2017$Sex, median)

# plot
boxplot(AOD2017$Age~AOD2017$Sex,data=AOD2017, main="Age of Death by Sex in 2017",
        xlab="Sex", ylab="Age")

# view 2016 data
summary(AOD2016)

# mean age of both male and female
mean(AOD2016$Age)

# plot 2016
boxplot(AOD2016$Age~AOD2016$Sex,data=AOD2016, main="Age of Death by Sex in 2016",
        xlab="Sex", ylab="Age")

# t test 2016
t.test(AOD2016$Age~AOD2016$Sex)

# mode
tapply(AOD2017$Age, AOD2017$Sex, mode)

# mean age by sex
tapply(AOD2016$Age, AOD2016$Sex, mean)


