require(ggplot2)
## Western genre Actors by number of movies

d <- read.csv("Names_1.csv", sep = ';',  header=T, na.string="NA");

p <- ggplot(d, aes(x = no )) +
  geom_point(aes(y = movies, colour = 'movies'), size=1) +
  ylab(label="#") +
  ggtitle("##") +
  theme(plot.title = element_text(hjust = 0.5))
p


##logscale (base2)
p <- ggplot(d, aes(x = no )) +
  geom_point(aes(y = log2(movies), colour = 'movies'), size=1) +
  ylab(label="#") +
  ggtitle("##") +
  theme(plot.title = element_text(hjust = 0.5))
p

##logscale (base10)
p <- ggplot(d, aes(x = no )) +
  geom_point(aes(y = log10(movies), colour = 'movies'), size=1) +
  ylab(label="#") +
  ggtitle("##") +
  theme(plot.title = element_text(hjust = 0.5))
p
