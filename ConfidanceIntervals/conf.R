library(tidyverse)

confidance_interval <- function(data)
{
  n <- length(data)  # Sample size
  mean_val <- mean(data)  # Sample mean
  std_dev <- sd(data)  # Sample standard deviation
  
  confidence_level <- 0.95
  df <- n - 1  # Degrees of freedom
  t_value <- qt((1 + confidence_level) / 2, df)  # Critical t-value
  
  
  margin_of_error <- t_value * (std_dev / sqrt(n))  # Margin of error
  lower_bound <- mean_val - margin_of_error  # Lower bound of the interval
  upper_bound <- mean_val + margin_of_error  # Upper bound of the interval
  
  cat("Confidence Interval: [", lower_bound, ",", upper_bound, "]\n")
  
}



data1 <- c(5, 6, 7, 6, 7, 7, 7, 7, 3)
confidance_interval(data1)
hist(data1)
boxplot(data1)


data1 <- c(15, 12, 20 , 17, 18, 18, 15, 16, 19, 18, 17)
confidance_interval(data1)
boxplot(data1)

data1 <- c(15, 12, 20)
confidance_interval(data1)
boxplot(data1)




