library(tidyverse)
tribble( ~x, ~y, ~w, ~z,
         210, 300, 220, 180,
         102, 100, 119, 187,
         176, 175, 188, 173,
         87, 95, 91, 94,
         202, 210, 234, 218,
         110, 122, 131, 128,
) -> dt
dt
#1
map(dt, mean)

map(dt, sd)

map_df(dt, sqrt)

summary(dt)

#2
means <- numeric(10000)

for (i in 1:10000) {
  means[i] <- mean(rexp(5, rate = 1))
}

hist(means, breaks = 50, main = "Distribution Means", 
     xlab = "Samples", col = "pink")

meanmap<- map_dbl(1:10000, ~mean(rexp(5, rate = 1)))

hist(meanmap, breaks = 50, main = "Distribution Means", 
     xlab = "Samples", col = "pink")

repmean<- replicate(10000, mean(rexp(5, rate = 1)))

hist(repmean, breaks = 50, main = "Distribution Means", 
     xlab = "Samples", col = "pink")


twoc<- c(5, 10, 20)

par(mfrow = c(1, 3))

for (size in twoc) {
  means <- replicate(10000, mean(rexp(size, rate = 1)))

hist(means, breaks = 50, main = "Distribution Means", 
     xlab = "Samples", col = "pink")}



