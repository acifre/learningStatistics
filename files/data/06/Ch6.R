# Chapter 6: A Picture Really Is Worth a Thousand Words

# Create a vector of reading scores
Reading <- c(47, 2, 44, 41, 7, 6, 35, 38, 35, 36,
             10, 11, 14, 14, 30, 30, 32, 33, 34, 32,
             31, 31, 15, 16, 17, 16, 15, 19, 18, 16,
             25, 25, 26, 26, 27, 29, 29, 28, 29, 27,
             20, 21, 21, 21, 24, 24, 23, 20, 21, 20)
hist(Reading)

# Change the number of intervals
hist(Reading, breaks = 20)

# Create histogram with probability density curve
hist(Reading, probability = TRUE)
lines(density(Reading))

# Read in the data from a CSV file using the read.csv function or
# File > Import Dataset > From CSV ...
ch6ds1 <- read.csv(file.choose()) 

# Check the data to make sure R read in the file correctly
View(ch6ds1) 

# Create histogram of the reading comprehension data
hist(ch6ds1$Reading)

# Get summary statistics
summary(ch6ds1$Reading)
sd(ch6ds1$Reading)

# Change the x-axis label in the histogram
hist(ch6ds1$Reading, xlab = "Scores", main = "Reading")
abline(v = mean(ch6ds1$Reading))
abline(v = median(ch6ds1$Reading), lty = 2)
abline(v = mean(ch6ds1$Reading) - sd(ch6ds1$Reading))
abline(v = mean(ch6ds1$Reading) + sd(ch6ds1$Reading))

# Build a bar graph with summary data

# Create a vector of Party names
Party <- c("Republican", "Democrat", "Independent")

# Create another vector of memberhip counts
Members <- c(54, 63, 19)

# Plot counts on y-axis and name each bar
barplot(height = Members, names.arg = Party, ylim = c(0, 70),
        ylab = "Frequency")

# Create two vectors and then a line graph

# Use the seq function to create a sequence of numbers from 
# 1 to 10
Year <- seq(1:10)

# Build a vector of attendance scores
Attendance <- c(87, 88, 89, 76, 80, 96, 91, 97, 89, 79)       

# Years on the x-axis
# Attendance on the y-axis
# How attendance scores should be plotted using type with lowercase L for line
plot(x = Year, y = Attendance, type = "l", ylab = "Percent Attending")

# Other Graphs From R

# Create a boxplot of the reading comprehension data
boxplot(ch6ds1$Reading)

# Create a qqnorm to examine how normal your data is
# The closer the dots are on a diagonal line, the more normal your sample is
qqnorm(ch6ds1$Reading)

# Histogram, boxplot, and qqnorm plot from a single option in Desc()
library(DescTools)
Desc(ch6ds1$Reading, plotit = TRUE)


# http://www.r-graph-gallery.com/


#####################################################
# Figures in chapter
#####################################################

# Figure 6.6 - perfect, positive correlation

Sports <- c("Diving", "Swimming", "Snorkling",
            "Water Polo")

# Create another vector of average attitude scores
Frequency <- c(19, 39, 26, 7)

# Plot average attitude scores on y-axis and name each bar
barplot(height = Frequency, names.arg = Sports, ylim = c(0, 40),
        main = "Water Activity by Number of Participants",
        xlab = "Type of Activity", ylab = "Frequency")

# Figure 6.7 Line chart
Quarter <- c(1, 2, 3, 4)
Sales <- c(4400, 3700, 4600, 6200)

plot(Sales ~ Quarter, xlab = "Quarter", ylab = "Sales in Units",
     ylim = c(3000, 7000), type = "l", xaxt = "n")
axis(1, at = 1:4)
