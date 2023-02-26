# Chapter 12: Only the Lonely

# Using R to compute the z statistic

# Create a vector of raw scores
sampleScores <- c(12, 9, 7, 10, 11, 15, 16, 8, 9, 12)

# We are told the population standard deviation = 3

# Calculate the SEM and then show the result
sem <- 3/sqrt(10)
sem

# Calculate the z statistic and then show the result
zStat <- ( mean(sampleScores) - 13) / sem
zStat

# Get the probability of our z statistic based on the normal distribution
pnorm(abs(zStat))
      
# Subtract that probability from 1
1 - pnorm(abs(zStat))

# Double to get the probability of smaller or larger 
(1 - pnorm(abs(zStat))) * 2

# Install BSDA to access z.test function
install.packages("BSDA")

# Read the BSDA package into the environment
library(BSDA)

z.test(x = sampleScores, mu = 13, sigma.x = 3)
