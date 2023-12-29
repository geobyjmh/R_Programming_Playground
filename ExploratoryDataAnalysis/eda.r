library(tidyverse)
#variation is the tenancy of a measurement to change value to value.
diamonds %>% 
  ggplot(aes(carat))+
  geom_histogram(binwidth = 0.5)

#Q: Which values are most common and why.
#- values between 

diamonds %>% 
  filter(carat < 3) %>% 
  ggplot(aes(carat))+
  geom_histogram(binwidth = 0.01)


ggplot(diamonds, aes(x = cut, y = price)) +
  geom_boxplot() +
  labs(title = "Diamond Cost by Cut", x = "Cut", y = "Price")

ggplot(diamonds, aes(x = color , y = price)) +
  geom_boxplot() +
  labs(title = "Diamond Cost by Color ", x = "Color", y = "Price")

ggplot(diamonds, aes(x = clarity , y = price)) +
  geom_boxplot() +
  labs(title = "Diamond Cost by Clarity ", x = "Color", y = "Price")

# Creating the point plot
ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point() +
  geom_smooth() +
  labs(title = "Carat vs Cost for Different Cuts of Diamonds", x = "Carat", y = "Price")


covariance <- cov(diamonds$price, diamonds$carat)
print(covariance)

             