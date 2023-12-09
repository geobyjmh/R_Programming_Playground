#This example uses is based  on code taken from the book “R for Data Science”
#by Wickham, Cetinkaya-Rundel, and Grolemund.
library(tidyverse)
library(palmerpenguins)
library(ggthemes)

penguins
glimpse(penguins)

ggplot(
  data=penguins, 
  mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species, shape=species)) +
  geom_point() +
  geom_smooth(method = 'lm')+
  labs(
    title = "Body mass and flipper lenghth",
    subtitle = "Dimensions for Adelle, Chinstrap, and Gentoo Penguins",
    x="Flipper lenght (mm)", y="Body mass (g)")+
  scale_color_colorblind()

