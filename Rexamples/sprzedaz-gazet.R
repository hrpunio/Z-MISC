library(ggplot2)
## line plot with trend (for x as.Date)
## center title

##d <- read.csv("sprzedaz_dzienniki_1szyKw_t.csv", sep = ';',  header=T, na.string="NA");
d <- read.csv("newspaper_sales_2015-17.csv", sep = ';',  header=T, na.string="NA");

ggplot(d, aes(x = as.Date(date) )) +
 geom_line(aes(y = fakt, colour = "fakt"), size=2) + 
 geom_line(aes(y = se, colour = "se"), size=2) +
 geom_line(aes(y = gw, colour = "gw"), size=2) +
 geom_line(aes(y = rz, colour = "rz"), size=2) +
 ylab(label="sprzedaż (tys)") +
 labs(colour = "Tytuł: ") +
 theme(legend.position="top") +
 geom_smooth(aes(x = as.Date(date), y=fakt, colour="fakt"), method="lm", size=.5) +
 geom_smooth(aes(x = as.Date(date), y=se, colour="se"), method="lm", size=.5) +
 geom_smooth(aes(x = as.Date(date), y=gw, colour="gw"), method="lm", size=.5) +
 geom_smooth(aes(x = as.Date(date), y=rz, colour="rz"), method="lm", size=.5) +
 ggtitle("Sprzedaż gazet (tys egz.; dane miesięczne)") +
 theme(plot.title = element_text(hjust = 0.5)) +
 theme(legend.text=element_text(size=12));

## index base = firstObs
date <- d$date;
normalize <- function(x) { return (x /x[1] * 100 )  }
dN <- as.data.frame(lapply(d[-1], normalize))

dN["date"] <- date;

dN

ggplot(dN, aes(x = as.Date(date) )) +
 geom_line(aes(y = fakt, colour = "fakt"), size=2) +
 geom_line(aes(y = se, colour = "se"), size=2) +
 geom_line(aes(y = gw, colour = "gw"), size=2) +
 geom_line(aes(y = rz, colour = "rz"), size=2) +
 ylab(label="sprzedaż (tys)") +
 labs(colour = "Tytuł: ") +
 theme(legend.position="top") +
 geom_smooth(aes(x = as.Date(date), y=fakt, colour="fakt"), method="lm", size=.5) +
 geom_smooth(aes(x = as.Date(date), y=se, colour="se"), method="lm", size=.5) +
 geom_smooth(aes(x = as.Date(date), y=gw, colour="gw"), method="lm", size=.5) +
 geom_smooth(aes(x = as.Date(date), y=rz, colour="rz"), method="lm", size=.5) +
 ggtitle("Sprzedaż gazet (2015/1=100%; dane miesięczne)") +
 theme(plot.title = element_text(hjust = 0.5)) +
 theme(legend.text=element_text(size=12));


