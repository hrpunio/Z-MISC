# set working dir
# setwd("C:/Users/")

# data import:
d <- read.csv("MZM.csv", sep = ';',  header=T, na.string="NA");

# show the top few rows
head(d)

# number of observations
length(d)

# visitors.ts is of a class `time.series':
visitors.ts <- ts(d$razem, start = c(2015,1), frequency=12)
d["visitors"] <- visitors.ts

frequency(d$visitors)

## Plot
plot(d$visitors)

library("forecast")
## if not found:
#install.packages("forecast", dependencies=TRUE)
### https://www.r-bloggers.com/installing-r-packages/
### install.packages("ggplot2", lib="/data/Rpackages/")
### library(ggplot2, lib.loc="/data/Rpackages/")

##  seasonal plots
par(mfrow = c(2, 1))
monthplot(d$visitors, main = "wykres miesięczny")
seasonplot(d$visitors, year.labels = TRUE, col= rainbow(5), main="wykres sezonowy")

## Least squares
mzm.lt <-  tslm(d$visitors ~ trend)

summary(mzm.lt)

## LS with seasonality
mzm.lts <-  tslm(d$visitors ~ trend + season)

summary(mzm.lts)
##//end
