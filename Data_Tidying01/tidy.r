#install.packages("dplyr")
library(tidyverse)


data <- read.csv("data.csv")
head(data)

longer_data <- data %>% pivot_longer(cols = 2:6,
                             names_to = "Days",
                             values_to = "Value")

wider_data <- longer_data %>%  pivot_wider(names_from = "Days",
                                           values_from = "Value")
