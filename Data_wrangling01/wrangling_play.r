#install.packages("dplyr")
library(dplyr)
library(tidyverse)


data <- read.csv("playdata.csv")
head(data)


selected_data <- data %>% 
  select(names, Age) %>%
  mutate(age_next_year = Age + 1) %>%
  filter(Age > 30)

head(selected_data)

