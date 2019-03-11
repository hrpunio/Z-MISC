require(ggplot2)
## Dot-plot (ordered acc value)

d <- read.csv("Fortune500.csv", sep = ';',  header=T, na.string="NA");

ggplot(d, aes(x = reorder(name, revenues) )) +
  geom_point(aes(y = revenues, colour = 'revenues' ), size=1) +
  xlab(label="#") +
  ylab(label="revenues ") +
  coord_flip()+
  ggtitle("Revenues of Fortune's 100 top companies (2005)") +
  theme(plot.title = element_text(hjust = 0.5))

ggplot(d, aes(x = reorder(name, revenues) )) +
  geom_point(aes(y = log2(revenues), colour = 'revenues' ), size=1) +
  xlab(label="#") +
  ylab(label="revenues ") +
  coord_flip()+
  ggtitle("Revenues of Fortune's 100 top companies (2005)") +
  theme(plot.title = element_text(hjust = 0.5))

ggplot(d, aes(x = reorder(name, revenues), y=revenues, fill=revenues )) +
  geom_bar(stat="identity", color = 'blue' ) +
  xlab(label="#") +
  ylab(label="revenues ") +
  coord_flip()+
  ggtitle("Revenues of Fortune's 100 top companies (2005)") +
  theme(plot.title = element_text(hjust = 0.5))
