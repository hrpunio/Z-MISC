require(ggplot2)
require(plyr)
### box-plot

d <- read.csv("nobel-prize-age.csv", sep = ';', dec = ",",  header=T, na.string="NA");

ggplot(d, aes(x=discipline, y=age, fill=discipline)) + geom_boxplot() + ylab("years") + xlab("");
