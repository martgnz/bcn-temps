# getting the small multiples csv
library(tidyr)
library(plyr)

winter <- read.csv("long-data.csv", sep = ",")

## keep only our winter months columns
keeps <- c("year", "december", "january", "february")
winter <- winter[keeps]

## convert to long format
winter <- gather(winter, month, temp, december:february)

## rename the columns to spanish
winter$month[winter$month == "december"] <- "Diciembre"
winter$month[winter$month == "january"] <- "Enero"
winter$month[winter$month == "february"] <- "Febrero"

write.csv(winter, "winter.csv", row.names = FALSE)

# plots
temp <- read.csv("fabra-avg.csv", sep = ",")

## december plot
plot(temp$year, temp$december)
scatter.smooth(x=temp$year, y=temp$december, col="#CCCCCC", span = 0.2)

## january plot
plot(temp$year, temp$january)
scatter.smooth(x=temp$year, y=temp$january, col="#CCCCCC", span = 0.2)

## february plot
plot(temp$year, temp$february)
scatter.smooth(x=temp$year, y=temp$february, col="#CCCCCC", span = 0.2)
