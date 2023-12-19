#install.packages("dplyr")
library(tidyverse)


data <- read.csv("data1.csv")
head(data)
names(data)

value_mean <- mean(data$Value)
value_range <- max(data$Value) - min(data$Value)

data01 <- data %>% 
  select(Value) %>% 
  mutate(value_range = value_range) %>% 
  mutate(value_mean = value_mean) %>%
  mutate(deviation = value_mean - data$Value) %>% 
  mutate(deviation2 = deviation^2)

head(data01)

value_variance <- mean(data01$deviation2)
print(value_variance)

value_sd <- sqrt(value_variance)
print(value_sd)

summary(data$Value)


