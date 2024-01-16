library(tidyverse)

x <-c(10,20,NA,40,50)
df <- tibble(x)

df01 <- df %>% 
  mutate(y = x *2 + 3) %>% 
  mutate(b1 = y > 63) %>% 
  mutate(b2 = y < 43) %>% 
  mutate(b3 = is.na(x))
df01


df01 %>% 
  filter(is.na(x))


df01 %>% 
  filter(!is.na(x))

df01 %>% 
  summarise(Col1 = all(b1),
            Col2 = any(b1),
            Col3 = sum(b1, na.rm = TRUE),
            Col3 = mean(b1, na.rm = TRUE),
            n = n())

x <- c(-3, -2, -1, 0, 1, 2, 3)
if_else(x<0, "-ve", "+ve")

case_when( x== 0 ~ "0",
           x<0 ~ "-ve",
           x>0 ~ "+ve")





