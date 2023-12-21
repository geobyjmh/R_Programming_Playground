library(tidyverse)


calculate_standard_deviation <- function(d)
{
  value_mean <- mean(d$Value)
  value_range <- max(d$Value) - min(d$Value)
  
  data01 <- d %>% 
    select(Value) %>% 
    mutate(value_range = value_range) %>% 
    mutate(value_mean = value_mean) %>%
    mutate(deviation = value_mean - data$Value) %>% 
    mutate(deviation2 = deviation^2)
  
  head(data01)
  
  # the SD command uses n-1 for sampled data which is why value_sd1 and value_sd2 
  # are not the same.
  value_variance_sample <- sum(data01$deviation2)/(length(data01$deviation2) - 1) # Sampled data
  value_variance <- mean(data01$deviation2) # not sampled data
  
  cat("value_variance=",value_variance,"\n")
  
  value_sd1 <- sqrt(value_variance)
  cat("value_sd1=",value_sd1,"\n")
  
  value_sd2 <- sqrt(value_variance_sample)
  cat("value_sd2=",value_sd2," (Sampled) \n")
  
  return(value_sd1)
}

data <- read.csv("data1.csv")
head(data)
names(data)

print(calculate_standard_deviation(data))

value_sd2 <- sd(data$Value, na.rm = FALSE)
print(value_sd2)


summary(data$Value)




