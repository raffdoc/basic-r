# read chicks data

chicks <- read.csv("data/chicks.csv")
View(chicks)

# Demonstrates `mean` calculation with NA values

average_weight <- mean(chicks$weight)
average_weight

# Demonstrates na.rm to remove NA values from mean calculation

average_weight <- mean(chicks$weight, na.rm = TRUE)
average_weight

# Demonstrates computing casein average with explicit indexes

casein_chicks <- chicks[c(1, 2, 3), ]
mean(casein_chicks$weight)

# Demonstrates constructing sequential vector with :

casein_chicks <- chicks[1:3, ]
mean(casein_chicks$weight)

# Demonstrates logical expression to identify rows with casein feed

chicks$feed == "casein"
# Demonstrates subsetting data frame with logical vector


filter <- chicks$feed == "casein"
casein_chicks <- chicks[filter, ]
mean(casein_chicks$weight)

# Demonstrates subsetting with `subset`

casein_chicks <- subset(chicks, feed == "casein")
mean(casein_chicks$weight, na.rm = TRUE)

# Demonstrates failing to remove NA values

chicks$weight != NA

# Demonstrates identifying NA values with `is.na`

is.na(chicks$weight)
!is.na(chicks$weight)

chicks$chick[is.na(chicks$weight)]

# Demonstrates removing NA values and resetting row names

chicks <- subset(chicks, !is.na(weight))
rownames(chicks)

rownames(chicks) <- NULL
rownames(chicks)
