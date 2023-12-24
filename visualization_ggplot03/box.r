library(tidyverse)
box_values = function(x)
{
  cat("Length: ", length(x), "\n")
  cat("Median: ", median(x), "\n")
  cat("Mean: ", mean(x), "\n")
  cat("Min: ", min(x), "\n")
  cat("Q1: ", quantile(x, 0.25, type = 6), "\n")
  cat("Q2: ", quantile(x, 0.50, type = 6), "\n")
  cat("Q3: ", quantile(x, 0.75, type = 6), "\n")
  cat("Max: ", max(x), "\n")
  cat("IQR: ", quantile(x, 0.75, type = 6) - quantile(x, 0.25, type = 6), "\n")
}

# This function takes the data set and manually calculates the parameters
# need for a boxplot, then feeds the values into the ggplot function. 
# I do this because I wanted the box plot to use quantile of type 6 and not the
# default quantile of type 7. This means that the output will be the same as 
# this YouTube video: https://youtu.be/mhaGAaL6Abw?si=6bqVt9vLwQi8eMwd
create_boxplot = function(y)
{
  df <- data.frame(
    x = 1,
    y0 = min(y),
    y25 = quantile(y, 0.25, type = 6), #quantile is type 6
    y50 = median(y),
    y75 = quantile(y, 0.75, type = 6), #quantile is type 6
    y100 = max(y),
    m = mean(y)
  )
  
  cat("Min: ", df$y0, "\n")
  cat("Q1: ", df$y25, "\n")
  cat("Median: ", df$y50, "\n")
  cat("Mean: ", df$m, "\n")
  cat("Q3: ", df$y75, "\n")
  cat("Max: ", df$y100, "\n")
  
  ggplot(df, aes(x)) +
    geom_boxplot(
      aes(ymin = y0, lower = y25, middle = y50, upper = y75, ymax = y100),
      stat = "identity")+
    geom_point(aes(y = m), colour = "red", size = 3) + 
    coord_flip()
}

box01 = read_csv("box01.csv")
summary(box01,quantile.type = 6) #quantile is type 6

#boxplot_with_average.png
create_boxplot(box01$value)

