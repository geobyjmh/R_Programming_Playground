library(tidyverse)
library(tibble)
#https://youtu.be/X5NXDK6AVtU?si=6gH_UNMM3NecTixa

#set.seed(1) # we can set the seed for the random number.
options(digits = 2) # set the display options not the values that are stored.

random_numbers <- rnorm(n=2000, mean = 10, sd=2) # random number


rn <- tibble(x=random_numbers)

rn %>% ggplot(aes(x)) +
  geom_histogram(binwidth = 0.5, fill = "skyblue", color = "black") +
  ggtitle("Histogram of Random Numbers") +
  xlab("Random Numbers") +
  ylab("Frequency")

rn %>% ggplot(aes(x)) +
  geom_boxplot(fill = "skyblue", color = "black") +
  ggtitle("Box Plot of Random Numbers") +
  xlab("Random Numbers") +
  ylab("Values")

x <- seq(from=5, to=15, by=0.1)
d <- dnorm(x=xval, mean = 10, sd=2) 

rn <- tibble(dn = d, x=x)
rn %>% ggplot(aes(x=x, y = dn))+
  geom_point()



