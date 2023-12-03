library(tidyverse)
library(palmerpenguins)
library(ggthemes)

penguins
glimpse(penguins)

ggplot(data=penguins, 
       mapping = aes(x=flipper_length_mm, y=body_mass_g)) +
  geom_point(mapping = aes(color=species, shape=species )) +
  geom_smooth(method = 'lm') +
  labs(
    title = "Body mass and flipper lenghth",
    subtitle = "Dimensions for Adelle, Chinstrap, and Gentoo Penguins",
    x="Flipper lenght (mm)", y="Body mass (g)",
    color = "Species", shape = "Species")+
  scale_color_colorblind()

