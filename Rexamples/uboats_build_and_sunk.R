## http://www.statmethods.net/stats/regression.html
## http://www.cookbook-r.com/Statistical_analysis/Regression_and_correlation/
## google:: trust wvs  Heston et al.
## http://tdhock.github.io/animint/geoms.html
library(reshape)
require(ggplot2)
library(scales)
# library(tidyr)
# http://stackoverflow.com/questions/11335836/increase-number-of-axis-ticks-in-ggplot2
number_ticks <- function(n) {function(limits) pretty(limits, n)}

# http://stackoverflow.com/questions/7381455/filtering-a-data-frame-by-values-in-a-column
d <- read.csv("uboats_build_and_sunk.csv", sep = ';',  header=T, na.string="NA");

commiss.cumsum <- cumsum(d$commiss)
sunk.cumsum <- cumsum(d$sunk)
csdiff <- commiss.cumsum - sunk.cumsum
d[,"csdiff"]  <- csdiff;

#commiss.cumsum
#
#sunk.cumsum
#
#csdiff;

#str(d);
#
#d39 <- filter(d, as.Date(d$rokmc) >= as.Date('1939-01-01'));
#
#str(d39);
#
# https://github.com/jtrecenti/falrec

d39 <- subset(d, as.Date(d$rokmc) >= as.Date('1939-01-01'))


ggplot(d39, aes(x = as.Date(rokmc))) +
  geom_line(aes(y = build, colour = 'build', group = 1), size=2) +
  geom_line(aes(y = commiss, colour = 'commiss', group = 1), size=2) +
  geom_line(aes(y = sunk, colour = "sunk", group = 1), size=2) +
  #geom_line(aes(y = csdiff, colour = "csdiff", group = 1), size=2) +
  ylab(label="#") +
  xlab(label="rok/miesiąc") +
  ##scale_y_continuous(breaks=number_ticks(15)) +
  ##scale_x_continuous(breaks=number_ticks(50)) +
  scale_x_date(breaks = date_breaks("3 months"), labels = date_format("%y%m")) +
  ##theme(legend.title=element_blank()) +
  labs(colour = "Uboats: ") +
  theme(legend.position="top") +
  ###geom_smooth(method=lm);
  theme(legend.text=element_text(size=12));

ggsave(file="Uboots_build_and_sunk.pdf", width=20, height=8)


ggplot(d39, aes(x = as.Date(rokmc))) +
  geom_line(aes(y = csdiff, colour = "csdiff", group = 1), size=2) +
  ylab(label="#") +
  xlab(label="rok/miesiąc") +
  ##scale_y_continuous(breaks=number_ticks(15)) +
  ##scale_x_continuous(breaks=number_ticks(50)) +
  scale_x_date(breaks = date_breaks("3 months"), labels = date_format("%y%m")) +
  ##theme(legend.title=element_blank()) +
  labs(colour = "Uboats: ") +
  theme(legend.position="top") +
  ###geom_smooth(method=lm);
  theme(legend.text=element_text(size=12));

ggsave(file="Uboots_build_and_sunk_diff.pdf", width=20, height=8)
