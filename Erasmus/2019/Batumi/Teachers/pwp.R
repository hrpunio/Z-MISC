library(reshape)
require(ggplot2)

df <- read.csv("pwp.csv", sep = ';',  header=T, na.string="NA");

p0 <- ggplot(df, aes(x = as.Date(date))) +
  geom_point(aes(y = prc), colour="pink", size=1.5) +
  ylab(label="") +
  theme_bw() + theme(panel.border=element_blank(), panel.grid.minor=element_blank(), axis.line = element_line(colour = "black")) +
  coord_cartesian(ylim = c(0, 106)) +
  labs(colour = "") +
  theme(legend.position="top") +
  theme(aspect.ratio=0.4)

p1 <- ggplot(df, aes(x = as.Date(date))) +
  geom_line(aes(y = prc), colour="pink", size=1.5) +
  ylab(label="") +
  theme_bw() + theme(panel.border=element_blank(), panel.grid.minor=element_blank(), axis.line = element_line(colour = "black")) +
  coord_cartesian(ylim = c(0, 106)) +
  labs(colour = "") +
  theme(legend.position="top") +
  theme(aspect.ratio=0.4)

p2 <- ggplot(df, aes(x = as.Date(date))) +
  geom_point(aes(y = prc), colour="pink", size=1.5) +
  ylab(label="") +
  theme_bw() + theme(panel.border=element_blank(), panel.grid.minor=element_blank(), axis.line = element_line(colour = "black")) +
  labs(colour = "") +
  theme(legend.position="top") +
  theme(aspect.ratio=0.4)

p3 <- ggplot(df, aes(x = as.Date(date))) +
  geom_line(aes(y = prc), colour="pink", size=1.5) +
  ylab(label="") +
  theme_bw() + theme(panel.border=element_blank(), panel.grid.minor=element_blank(), axis.line = element_line(colour = "black")) +
  labs(colour = "") +
  theme(legend.position="top") +
  theme(aspect.ratio=0.4)

p0

p1

p2

p3
