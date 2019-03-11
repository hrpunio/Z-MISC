require(ggplot2)
## GoogleTrend Walues for 'Biedroń' ....
## Time trend plotted as linear plot
d <- read.csv("biedronkaczynskischetyna.csv", sep = ';',  header=T, na.string="NA");
##d <- subset (d, (date > 20181115 ));

p <- ggplot(d, aes(x = as.Date(date) )) +
  geom_point(aes(y = Biedron, colour = 'Biedron'), size=1) +
  geom_line(aes(y = Kaczynski, colour = 'Kaczynski'), size=.5) +
  geom_point(aes(y = Schetyna, colour = 'Schetyna'), size=1) +
  ylab(label="#") +
  ggtitle("Daily count from 77 twitter Polish (influential) users") +
  theme(plot.title = element_text(hjust = 0.5))

p

d["bs"] <- d["Biedron"] - d["Schetyna"];
d["bk"] <- d["Biedron"] - d["Kaczynski"];

p <- ggplot(d, aes(x = as.Date(date) )) +
  geom_line(aes(y = bs, colour = 'BS'), size=.5) +
  geom_line(aes(y = bk, colour = 'BK'), size=.5) +
  ylab(label="#") +
  ggtitle("Daily count difference 77 twitter Polish (influential) users\nBS=Biedroń - Schetyna/BK=Biedroń-Kaczyński") +
  theme(plot.title = element_text(hjust = 0.5))

p
