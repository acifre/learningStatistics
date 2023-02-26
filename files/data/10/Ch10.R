# Chapter 10: Fun With a Bell-Shaped Curve

# Create a vector of raw scores
rawScores <- c(67, 54, 65, 33, 56, 76, 65, 33, 48, 76)

# Calculate and store the mean for the raw scores
rsMean <- mean(rawScores)
rsMean

# Calculate and store the standard deviation for the raw scores
rsSD <- sd(rawScores)
rsSD

# Calculate a vector of z scores
zScores <- (rawScores - rsMean) / rsSD
zScores

# Standardize the raw scores and then view the results
getZ <- scale(rawScores)
getZ

# Center raw scores on 0
rawScores - rsMean


