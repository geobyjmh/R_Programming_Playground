library(tidyverse)

names(mpg)
#displ: A car engine size, in liters.
#hwy: A car fuel efficiency in miles per gallon.
#class: Type of car
#color.png
mpg %>% ggplot(aes(x=displ, y = hwy, color = class))+
  geom_point()

#Warning messages:
#  1: The shape palette can deal with a maximum of 6 discrete values because more than 6
#becomes difficult to discriminate; you have 7. Consider specifying shapes manually
#if you must have them. 
#2: Removed 62 rows containing missing values (`geom_point()`). 
#shape.png
mpg %>% ggplot(aes(x=displ, y = hwy, shape = class))+
  geom_point()

#class.png
mpg %>% ggplot(aes(x=displ, y = hwy, size = class))+
  geom_point()

#alpha.png
mpg %>% ggplot(aes(x=displ, y = hwy, alpha = class))+
  geom_point()

#blue.png
mpg %>% ggplot(aes(x=displ, y = hwy))+
  geom_point(color = "blue")

#green_size_shape.png
mpg %>% ggplot(aes(x=displ, y = hwy))+
  geom_point(color = "green", size = 5, shape = 2)

#smooth_red.png
mpg %>% ggplot(aes(x=displ, y = hwy))+
  geom_smooth(color = "red")

#linetype.png
mpg %>% ggplot(aes(x=displ, y = hwy, linetype = drv))+
  geom_smooth(color = "red")

#linetype_and_point.png
mpg %>% ggplot(aes(x=displ, y = hwy, color = drv))+
  geom_point() +
  geom_smooth(aes(linetype = drv))

#linetype_and_point2.png
mpg %>% ggplot(aes(x=displ, y = hwy))+
  geom_point(aes(colour = class)) +
  geom_smooth()

#dot_in _circle.png
mpg %>% ggplot(aes(x=displ, y = hwy))+
  geom_point() +
  geom_point( data = mpg %>% filter(class == "2seater"),
              color="red")+
  geom_point( data = mpg %>% filter(class == "2seater"),
              shape = "circle open", size = 3, color="red")

#geom_histogram.png
mpg %>% ggplot(aes(x=hwy))+
  geom_histogram(binwidth=2)

#geom_density.png
mpg %>% ggplot(aes(x=hwy))+
  geom_density()

#geom_boxploty.png
mpg %>% ggplot(aes(x=hwy))+
  geom_boxplot()

#facet_wrap.png
mpg %>%  ggplot(aes(x = displ, y = hwy)) +
  geom_point() +
  facet_wrap(~cyl)

#facet_grid.png
mpg %>%  ggplot(aes(x = displ, y = hwy)) +
  geom_point() +
  facet_grid(drv~cyl)




