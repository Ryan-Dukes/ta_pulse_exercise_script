#First, call your dataset from your machine. I do this
#by pasting the link to the spreadsheet with the
#read.csv command, then attach my data
my.data<-read.csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vTGb4vRG7wvQ_KrJPWVOhAfu-bD_J4iXpYE6mY7m-hlV_HK5dQ0F5LwKAxqJfk0zMF56yGtO_UdnTTG/pub?gid=0&single=true&output=csv",header=TRUE)
attach(my.data)

#I turn on the descriptive statistics package with the
#library command
library(descr)

#Since I attached my data, I can refer to it by header name
#I make a histogram, and check for Normality with the qq commands
hist(bpm)
qqnorm(bpm)
qqline(bpm)

#I then turn on my fit distribution pacakage
library(fitdistrplus)
fit<-fitdist(bpm,"norm")
summary(fit)
gofstat(fit)
