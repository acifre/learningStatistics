# Chapter 8 Just the Truth

# Test-retest reliability

# Create vectors for Time1 and Time2
Time1 <- c(54, 67, 67, 83, 87, 89, 84, 90, 98, 65)
Time2 <- c(56, 77, 87, 89, 89, 90, 87, 92, 99, 76)

# Use the function cor() to calculate test-retest reliability
cor(Time1, Time2)

# Parallel forms reliability

# Create vectors for FormA and FormB
FormA <- c(4, 5, 3, 6, 7, 5, 6, 4, 3, 3)
FormB <- c(5, 6, 5, 6, 7, 6, 7, 8, 7, 7)

# Use the function cor() to calculate parallel form reliability
cor(FormA, FormB)

# Using R to Calculate Cronbach's alpha

# The function we want to use in the psych library package, 
# so we need to tell R we want to use that package.
library(psych)

# Read in the data from a CSV file using the read.csv function or
# File > Import Dataset > From CSV ...
ch8ds1 <- read.csv(file.choose()) 

# Compute Cronbach's alpha
alpha(ch8ds1)
