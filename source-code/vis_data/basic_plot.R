# basic ploting system
plot(health$Age)
# histogram
hist(health$Age)

# boxplot

boxplot(health$Age)

boxplot(Age ~ Gender, data = health) 

# different and interactive plots
library(Hmisc)
Hmisc::histboxp(x = health$Age)
