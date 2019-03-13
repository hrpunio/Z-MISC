## Who am I

## Agenda

Statistics (nothing spectacular, just classical EDA)

Statistical software (modern, non-standard or hipster #youcall)

Poland (via statistical examples)

## Three components of Statistics
Theory (models) + Tools (programs) + Practice (real data)

Undergraduate courses in social sciences in Poland
concentrate on theory, use Spreadsheet as an universal computing tool
Office-like editor (MS Word/OO Writes)
as an universal publishing tool. Students works with artificial (clean)
and small data sets thus are unaware of problems related to
applying theory to practice.

It is claimed that the above scenario is optimal. More advanced
tools would be too difficult (and time consuming) to be acquinted
to by students, thus distracting them
from the main subject of the course, ie statistical methods. 

Office sofware has limits. Spreadheets are good for number crunching,
but are not so good in: data cleaning (Practice), advanced graphics,
spatial analysis (T), team work(Practice).
Office editors or Powerpoint/ are great tools
but are not quality publishing of statistical results.

In my (humble) opinion it is completny wrong not to use some modern
tools even in introductory courses as it is (often) the only
lectures undergraduta students complete.

I will try to demonstrate that using modern tools for statistical
analysis is the way to go. That (some) modern tools are not more
difficult that office software (at higher than basic level)

Conclusion: less theory, more pratice and common sense.

## Learnig curve comparison

## Learning statistic to social-science studies in Poland

Typically a statistical course for undergraduate students
in social sciences in Poland contains:
descriptive statistics for one variable,
descriptive methods for an association of two variables
elementary time series analysis (moving averages,
linear trend/seasonality)
Interference/probablity calculus is lectured marginally or omitted
as well as
graphical methods and information visualization.

Oversimplistic 'value chain' of statistical analysis

model/description -> interpretation

raw data -> consistent data -> results -> publishing

## Example: Full Time Equivalence (FTE)

Number of students.

Who is a student?

Student is a person attending to
a 3rd level status school in in the
3-stage education system (https://en.wikipedia.org/wiki/Educational_stage).
The answer is still non-obvious as there are many
forms of teriary education. For example:

The UNESCO stated that tertiary education focuses on learning
endeavors in specialized fields. It includes academic and higher
vocational education.

So according to the above definition the school do not belongs
to tertiary education if its status is not academic and/or higher
vocational. Example:  Dance Academy or
University for Elderly people (aka University of the 3rd Age).
Both are popular in Poland.

In many countries there are some certification scheme. For example
in Poland a school must apply (and get) a certificate to be
regarded as high school (ie part of tertiary level of education)

Heads vs Majors

Student can be enrolled to more than one course (major).
So for counting heads it is necessary  to remove duplicates
otherwise one would count majors not persons.

Part time studies

FTE stands for Full-Time-Equivalent, an approximation of the
number of students who would be enrolled full-time

Full time equivalent (FTE) -- FTE is based on student credit
hours. It is obtained by dividing student credit
hours by some a number of credit hours for full-time-study.

Conclusion: Majors, Persons or FTEs? Which is the best?

http://www.usu.edu/aaa/about_our_data.cfm
google:single multiple majors fte

## Example: measurement of tourism activity [concept of an Indicator]

Who is a tourist. According to
https://ec.europa.eu/eurostat/statistics-explained/index.php/Glossary:Tourism

Tourism means the activity of visitors taking a trip
to a main destination outside their usual environment,
for less than a year, for any main purpose, including business,
leisure or other personal purpose,
other than to be employed by a resident entity in the place visited.

According to the above definition to be regarded as tourist one has
to change her/his accomodation place for less than
one year (otherwise Eurostat would regard her/him as migrat)

The usual meaning (at least in Poland) is that tourist
is travelling for leasure not to work. Poeple travelling to work
has other needs/aims than those travelling to rest
(they usually do not use hotels for example)
so the above definition solves some problems but at the same time
creates many others.

Number of tourists: do not distinguish between various form of turists,
difficult to collect (who is a turist anyway?)

Various `number of' tourist-oriented establishments
(hotels, catering units, beds,
nights spent) etc. They do not measure turists per-se but
are highly related and more reliable (as easier to count).

Indicator of turist activity (by various tourist types).

Conclusion: measurement of tourism activity is not trival
Other similar: internet user, migrant, unemployed person,
illiterate person

## Example: measurement of tourism activity [data collection]

Tourism supply statistics (accommodation statistics): Data on rented accommodation ie. capacity and occupancy of tourist accommodation
establishments in the reporting country. How collected? Registers?

Quirks of data collection:
Data up to year 2015 inclusive refer to only those units that made the statistical reports.
Starting of data for January 2016,
the method of imputation data was implemented (ie replacing
missing data with some (possibly meaningful :-)) values.
https://bdl.stat.gov.pl/BDL/dane/podgrup/temat/18/240/2396

Tourism demand statistics: Data on participation in tourism of the residents of the reporting country.
How collected? Surveys?

Most of the time, data on domestic and outbound trips (where "outbound tourism" means residents of a country travelling in another country) is collected via sample surveys (cf https://ec.europa.eu/eurostat/cache/metadata/en/tour_dem_esms.htm and
https://ec.europa.eu/eurostat/statistics-explained/index.php/Tourism_statistics_-_top_destinations)

Regulations concerning data collection in turism (hundreds of pages):
https://ec.europa.eu/eurostat/statistics-explained/index.php?title=Glossary:Supply_side_tourism_statistics
https://eur-lex.europa.eu/legal-content/EN/ALL/?uri=CELEX:32011R0692

So now we know what we are dealing with...

## Example nights spent (demand side)

Share of nights spent at EU-28 tourist accommodation by tourists
travelling outside their own country of residence, 2017 

http://appsso.eurostat.ec.europa.eu/nui/submitViewTableAction.do

Country of residence -> Foreign country (estimated data)

2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 
10 173 237 9 609 447 10 064 628	10 620 264 11 876 599 12 471 268 12 992 241 13 757 657	15 579 225 16 705 215

*** insert graphics here ***

to be continued...


## Dreadful example: Purchasing Power Parity, inflation
and international comarison of GDP

** ADD HERE **

## Modern Approach

https://selectivv.com/czy-ukraincy-wiaza-swoja-przyszlosc-z-naszym-krajem-najnowsze-badanie-selectivv/

https://www.economist.com/the-economist-explains/2018/08/16/why-universities-for-the-elderly-are-booming-in-china
https://polon.nauka.gov.pl/opi/aa/rejestry/szkolnictwo?execution=e4s1


## Measures of central tendency, dispersion and skewness
(univariate analysis)


## Measures of concentration/inequality distribution (univariate analysis)

Some variables by definition are positive (or non-negative):
income, market share.

https://www.r-bloggers.com/sampling-distribution-of-gini-coefficient/
https://ourworldindata.org/income-inequality

## Diversion: R

## Diversion: Rstudio

## Charts (purpose of)

Decoration,

One graph is more effective than another if its quantitative
information can be decoded more quickly/easily [Robbins 2005]

## Types of charts

Recommended: (ordered) dot plots, bar charts, histograms and kernel
density estimates,
multipanel displays (instead of stacked bars multiple line/dot plots)
scatterplots (two variables)

Not recommended: Pie charts, bubble charts, stacked bar charts,

Bar/line/pie charts introduced by James Playfair in XVIII century.
Dot plots introduced by Cleveland (1980s).
Box-plots introduced by Tukey (1970s)

Never use (pseudo) 3D charts for 2D data. Virtually no-one
can read them

## Pie charts

## Dot plots

Jittering: adding random noise to data to avoid overlapping.

## Bar charts

## Histograms and kernel density functions

Histograms show the distribution of a set of data. To draw a histogram
the numbers (observations) are grouped
into bins (intervals or classes). There is
a tradeoff between showing details or showing an overall picture.
When bin width changes the scale at Y-axis changes as well (more bins less
observations in each bin).

kernel density functions

## Comparing distributions box-plots vs stacked/multiple bars

Box-plots are much better than histograms for comparing distributions
of more than one data sets.

Construction of a (typical) box-plot: The middle bar is a median. Top/bottom
bars of the rectangle shows the IQR (interquartille range is 1st and 3rd\
quartille), the fanciful bars above/below rectangle called whiskers
(google: whiskers mustache :-) are 1,5 times the IQR (or minimu/maximum if
those values are  less than plus/minus 1,5 IQR.
The symbols above/below whiskers (usually open circles)
are outliers (non typical/extreme values)

Note the trick: outliers are defined not as (for example) top/botom
1% fraction of values (every distribution would has outliers in such a case)
but as values less/more than Me - 1,5IQR (distributions with medium
variablity would not have outliers)

## Scatter-plots

A scatter-plot (aka scatter diagrams, xyplot) is a basic
form used for two (quantitive) variables.

To see the relationship between variables, a line is can be fitted.
Least square (LS) line which assumes linear relationship
between variables, is fitted by minimizing the sum of squares of the residuals
(residual is the difference between
a data-point and a relevant line-point ie a point computed from the formula
y = a +bx where x is the value of the x-axis variable.)

Alternatively loess curve can be used which do not assumes linearity.

## Scales

Logarithmic scale makes it possible to plot values with too
wide range for a linear scale. Base 10 logarithms `squeeze' the numbers
more than base 2 logarithms (log10(100)=2 wile log2(100)=6.64.
Moreover is the original scale contains multiplications of 10 use
log10 to get `nice' log-scale while it
contains multiplications of 2 use log2.

Logarithms transforms additive scale to `multiplicative' one

## Graphic perception tasks

Position along common scale
Position along common but nonaligned scales
Length
Angle (slope)
Area
Volume
Color (hue), Color (saturation), Color (density of black)

Angle judgement is not precise. Acute angles are underestimated
while obtuse angles (greater than 90) are  overestimated.

Area judgement is biased as well. It is impossible to distinguish
small differences in area, while quite easy when the same date
is plotted along common scale

The most accurate of graphic task is 
positioning along common scale

## General design rules

** ADD **

## Banking to 45

The ratio between the width and the height of a rectangle is called
its aspect ratio.

The aspect ratio describes the area that is occupied by the data in
the chart. A change in aspect ratio changes the perception
of the graph. The question is which aspect ratio is the best.

We can recognize change  most easily if absolute slopes
equals to 45 degree angle on the graph. It is much
harder to see change if the curves are nearly horizontal/vertical.
The idea (Cleveland, 1988) behind banking is therefore to adjust
the aspect ratio of the entire plot in such a way that most slopes are
at an approximate 45 degree angle.

Setting the aspect ratio so that the average of the values of the
orientations is 45 degrees is called "banking the average
orientation to 45 degrees".

Setting the aspect ratio so that the weighted mean of line segments
(weighted by segments' length is approx 45 degrees is called average
weighted orientation method (to 45 degrees).

## Diversion: R (making charts)

## The lie factor and data-ink ratio [Tufte]

## Example: education system in Poland



## Elementary spatial analysis (Heat maps/tematic maps)

Geocoding and reversegecoding

## Diversion: tools for geocoding and reversegecoding 

## Diversion: tools for building (heat/tematic maps)

QGis

## Example: Poland (population, incomes, distribution of)

## More examples of spatial charts

## Summary: bad graphics examples

## Bivariate analysis

## Example: tourist vs industry vs education (in Poland)

## Example:

## Timeseries analysis

## Bad example: tourists at Malbork castle
http://www.ojs.ukw.edu.pl/index.php/johs/article/view/4119/pdf

## Elementary spatial analysis

## Example: industry concentration (in Poland)

## Information presentation by Edward Tufte

## Tufte's famous slide

## Resources

https://www.rstudio.com/resources/cheatsheets/
https://www.qgistutorials.com/en/docs/
https://gis.stackexchange.com/

## Data banks

## Tourism cd
http://appsso.eurostat.ec.europa.eu/nui/submitViewTableAction.do

https://ec.europa.eu/eurostat/statistics-explained/index.php/Tourism_statistics#Nights_spent_by_non-residents_in_the_EU-28:_Spain_on_top <-- bad pie chart

## Kaggle (Coffee production/consumption)
https://www.kaggle.com/sbajew/icos-crop-data
https://www.kaggle.com/sbajew/exploring-coffee-production-and-consumption
https://www.kaggle.com/sbajew/ico-coffee-crop-data-data-wrangling

## Varia
https://data.oecd.org/emp/hours-worked.htm

## New practice [recap]

Introduce reproducible research approach

Use real (big and dirty) data sets.

Introduce some programming (Programing or using mouse?)

Introduce some new tools (R/Rstudio, QGIS, Github)

## Diversion: Github

## New Tools (hipster part)

R/Rstudio for computing and data visualization

Github for enhancing team work

markdown for reproducible research

## More Data banks

https://www.gov.uk/government/statistics/immigration-statistics-year-ending-september-2018-data-tables

## Example educational resources

https://git.generalassemb.ly/briancwq/classes/blob/master/week-01/lessons/python-descriptive_statistics_numpy-lesson-master/archive/LESSON.md

https://www.kaggle.com/piterfm/ukraine-deputies#ukraine_deputies.csv

## Questions

## Thanks
