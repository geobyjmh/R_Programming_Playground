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

# the SD command uses n-1 for sampled data which is why value_sd1 and value_sd2 
# are not the same.
#value_variance <- sum(data01$deviation2)/(length(data01$deviation2) - 1) # Sampled data
value_variance <- mean(data01$deviation2) # not sampled data
print(value_variance)

value_sd1 <- sqrt(value_variance)
print(value_sd1)


value_sd2 <- sd(data$Value, na.rm = FALSE)
print(value_sd2)


summary(data$Value)




