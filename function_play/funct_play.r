library(tidyverse)
init_variables <-function()
{
  x <<- c(20, 20, 30, 40) #global variable
}

read_number <-function()
{
  valid_number <-FALSE
  #numeric_value <- 0
  while(!valid_number)
  {
    string_input <- readline(prompt = "Enter a number: ")
    if (grepl("^-?\\d+\\.?\\d*$", string_input)) {
      numeric_value <- as.numeric(string_input)
      valid_number <-TRUE
    } else {
      cat("Invalid number.")
    }
  }
  return(numeric_value)
}

main <- function()
{
  init_variables()
  print("hello")
  print(seq(from=10, to=20, by=2))
  print(x[1])
  
  x <- read_number()
  if(x == 2)
  {
    print("you found 2")
  }
  else
  {
    print("you did not find 2")
  }
  
}

main()


