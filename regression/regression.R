library(tidyverse)
# Create a file for a line. The line has a small random error so it is
# not perfectly straight
randmax = 5
randmin = -1 * randmax
x_range <- 10:100
m <- 2 
y_values <- m * x_range + runif(length(x_range), min = randmin, max = randmax)

data <- data.frame(x = x_range, y = y_values)
write.csv(data, file = "data.csv", row.names = FALSE)

print("CSV file created successfully!")

#plot the line.
data1 <- read_csv("data.csv", col_types = cols(x =col_double() , y = col_double()))
names(data1)
glimpse(data1)

data1 %>% 
  ggplot(aes(x, y),)+
  geom_point(color = "red") +
  geom_smooth(method = "lm", color = "blue")


data1 %>% 
  lm(y ~ x, data = .) %>% 
  summary()

# this do the regression a different way to get access to is
# attributes
mod <- lm(y ~ x, data = data1)
attributes(mod)
hist(mod$residuals)

#make some kind of prediction
df <- data.frame(x = c(5,7,8))
predict(mod, df) %>% round(1)
