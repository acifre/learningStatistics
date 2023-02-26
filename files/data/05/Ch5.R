# Chapter 5: Vive la Différence

# Read in the data from a CSV file using the read.csv function or
# File > Import Dataset > From CSV ...
ch5ds1 <- read.csv(file.choose()) 

# Check the data to make sure R read in the file correctly
View(ch5ds1) 

# Ask for some basic descriptive statistics
summary(ch5ds1$Reaction.Time)

# Use R as a calculator to get the range
2.8 - 0.2

# Start with range. Subtract the lowest value from the highest value
max(ch5ds1$Reaction.Time) - min(ch5ds1$Reaction.Time)

# Look at Reaction.Time in the R Console
ch5ds1$Reaction.Time

# Compute the mean for Reaction.Time and save it
RTmean <- mean(ch5ds1$Reaction.Time)
RTmean

# Calculate the mean deviation
RTminusMean <- ch5ds1$Reaction.Time - RTmean
RTminusMean

# Square the mean deviation
SqMeanDeviation <- RTminusMean^2
SqMeanDeviation

# Add every number in vector and divide by n
RTvariance <- sum(SqMeanDeviation) / length(SqMeanDeviation)
RTvariance

# Add every number in vector and divide by n - 1
RTvarianceS <- sum(SqMeanDeviation) / (length(SqMeanDeviation) - 1)
RTvarianceS

# What is the difference between n - 1 and n?
RTvarianceS - RTvariance

# Compute the sample variance
var(ch5ds1$Reaction.Time)

# Look at the help text for the var function
?var

# Take the square root of variance to get the standard deviation
sqrt(RTvarianceS)

# Compute the sample standard deviation
sd(ch5ds1$Reaction.Time)

# Other useful functions

# Show the minimum and maximum value
range(ch5ds1$Reaction.Time)

# Use describe in the psych package
install.packages("psych")
library(psych)

# More statistics describing the variability
describe(ch5ds1$Reaction.Time)
