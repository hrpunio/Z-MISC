library(ggplot2)
library(ggpubr)

d <- read.csv("MZM.csv", sep = ';',  header=T, na.string="NA");

d

p1 <- ggplot(d, aes(x = as.Date(data))) + 
 geom_line(aes(y = razem, colour = "razem"), size=2) + 
 geom_line(aes(y = krajowi, colour = "krajowi"), size=2) + 
 geom_line(aes(y = zagraniczni, colour = "zagraniczni"), size=2) + 
 ylab(label="") +
 labs(colour = "") +
 theme(legend.position="top") +
 ggtitle("") +
 theme(plot.title = element_text(hjust = 0.5)) +
 theme(legend.text=element_text(size=12));

p1
