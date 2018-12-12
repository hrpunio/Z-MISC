library("forecast");

acc <- read.csv("AvData_USA_1982F_Agg.csv", header = T, sep = ";",  na.strings = ".")

acc.ts <- ts(acc$accidents, frequency=12, start=c(1982,1))

plot(acc.ts)


seasonplot(acc.ts );



