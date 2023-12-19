library(tidyverse)
# Load a default dataset (replace with your own loading if needed)
data(msleep)

# Open the dataset in a viewer window for visual inspection
view(msleep)

# Get a quick overview of the data structure and potential issues
glimpse(msleep)

# Print the first few rows to see the actual data
head(msleep)

# Check the data type of the "name" column
class(msleep$name) # Should be "character" for animal names

# Get the total number of observations (rows)
length(msleep)

# Confirm the number of entries in the "name" column (should match)
length(msleep$name)

# List all column names in the dataset
names(msleep)

# Find all unique categories in the "vore" column (diet)
unique(msleep$vore)

# Identify rows with missing values in any column
missing <- !complete.cases(msleep)

# Subset the dataset to keep only rows with missing data for further analysis
msleep[missing, ]