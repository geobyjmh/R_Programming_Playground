#install.packages("dplyr")
library(dplyr)
library(tidyverse)


data <- read.csv("playdata.csv")
head(data)


selected_data <- data %>% 
  select(names, Age, Country) %>%
  mutate(age_next_year = Age + 1) %>%
  filter(Age > 30) %>% 
  distinct() %>% 
  arrange(Age) %>% 
  group_by(Country) %>% 
  count()

head(selected_data)

