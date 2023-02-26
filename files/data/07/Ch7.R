# Chapter 7 Ice Cream and Crime: Computing Correlation Coefficients

# Example 1: Step by step calculation of r

# Create X and Y vectors
X <- c(2, 4, 5, 6, 4, 7, 8, 5, 6, 7)
Y <- c(3, 2, 6, 5, 3, 6, 5, 4, 4, 5)

# Square each value in X and then look at the result
Xsq <- X^2
Xsq

# Square each value in Y and then look at the result
Ysq <- Y^2
Ysq

# Multiply each X by Y
XY <- X*Y
XY

# Sum all items in vector X and then look at the results
sumX <- sum(X)
sumX

# Sum all items in vector Y and then look at the results
sumY <- sum(Y)
sumY

# Sum all items in vector X-squared and then look at the results
sumXsq <- sum(Xsq)
sumXsq

# Sum all items in vector Y-squared and then look at the results
sumYsq <- sum(Ysq)
sumYsq

# Sum all items in vector XY and then look at the results
sumXY <- sum(XY)
sumXY

# Set the length of the vector
n <- 10

# Calculate the correlation coefficient
rByHand <- ((n * sumXY) - (sumX * sumY))/
           sqrt((((n * sumXsq) - (sumX^2)) * ((n * sumYsq) - (sumY^2))))
rByHand

# Create a scatterplot of X and Y
plot(Y ~ X, xlim = c(0, 9), ylim = c(0, 9))
text(Y[2] ~ X[2], labels = "Datapoint(4,2)", pos = 4)

# Data Set 1, ch7ds1

# Enter data by hand
Income <- c(36577, 54365, 33542, 65654, 45765, 24354,  
            43233, 44321, 23216, 43454, 64543, 43433, 
            34644, 33213, 55654, 76545, 21324, 17645,
            23432, 44543)
Education <- c(11, 12, 10, 12, 11, 7, 12, 13, 9, 12, 
               12, 14, 12, 10, 15, 14, 11, 12, 11, 15)

cor(Income, Education) # Calculate correlation


# Test the same data but read in the data from an external file

# Read the data
ch7ds1 <- read.csv(file.choose())

# Check the data we just read in
View(ch7ds1)

# Calculate correlation with cor()
cor(ch7ds1$Income, ch7ds1$Education) 

# Create a scatterplot
plot(Income, Education)

# Install this new package
install.packages("car")

# Tell R that you want to use the car package
library(car)

# Create a scatterplot using a different function
scatterplot(Income, Education)

# Calculate correlation using the Kendall
cor(ch7ds1$Income, ch7ds1$Education, method = "kendall")  


# Let's calculate some partial correlations

# Enter data for 3 variables
IceCreamConsumption <- c(3.4, 5.4, 6.7, 2.3, 5.3, 
                         4.4, 5.1, 2.1, 3.2, 2.2)
CrimeRate <- c(62, 98, 76, 45, 94, 
               88, 90, 68, 76, 35)
AverageTemperature <- c(88, 89, 65, 44, 89,
                               62, 91, 33, 46, 41)

# Put the 3 variables into a single object
IceCream <- data.frame(IceCreamConsumption, CrimeRate, AverageTemperature)

# Now we want partial correlations. Let's first install a package
# that has a function for computing partial correlations.
install.packages("ppcor")

# Tell our current session about the ppcor library so we can use it.
library(ppcor)

pcor(IceCream)

# Another way to calculate the correlation coefficient
library(Hmisc)
rcorr(X, Y)

#####################################################
# Figures in chapter
#####################################################

# Figure 7.2 - perfect, positive correlation
X <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
Y <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

plot(Y ~ X)

# Figure 7.3 - strong, positive correlation
X <- c(3, 4, 5, 6, 6, 7, 7, 8, 8, 9)
Y <- c(3, 7, 6, 7, 8, 7, 9, 6, 8, 9)

plot(Y ~ X, xlim = c(1, 10), ylim = c(1, 10))

# Figure 7.4 - strong, negative correlation
X <- c(3, 4, 5, 6, 6, 7, 7, 8, 8, 9)
Y <- c(9, 5, 8, 3, 6, 4, 5, 1, 4, 1)

plot(Y ~ X, xlim = c(1, 10), ylim = c(1, 10))

Income <- c(36577, 54365, 33542, 65654, 45765, 24354,  
            43233, 44321, 23216, 43454, 64543, 43433, 34644, 33213, 
            55654, 76545, 21324, 17645,23432, 44543)
Education <- c(11, 12, 10, 12, 11, 7, 12, 13, 9, 12, 12, 
               14, 12, 10, 15, 14, 11, 12, 11, 15)

cor(Income, Education)

plot(Income, Education)

install.packages("car")
library(car)

scatterplot(Income, Education)
