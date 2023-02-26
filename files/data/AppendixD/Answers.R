# Appendix D: Answers to Practice Questions

# Chapter 3
Numbers <- c(513, 545, 354, 675, 873)
summary(Numbers)

# Read in the file from CSV ...
ch3ds1 <- read.csv("03\\ch3ds1.csv") 

# Check the data to make sure R read in the file correctly
View(ch3ds1)

# Get summary information about our data set
summary(ch3ds1)

# Chapter 6

ch6ds2 <- read.csv("ch6ds2.csv") 

# Check the data to make sure R read in the file correctly
View(ch6ds2) 

hist(ch6ds2$Comprehension.Score, xlab = "Reading",
     main = "Histogram of Reading Comprehension")

abline(v = mean(ch6ds2$Comprehension.Score))
abline(v = median(ch6ds2$Comprehension.Score), lty = "dashed")
abline(v = mean(ch6ds2$Comprehension.Score) - sd(ch6ds2$Comprehension.Score), lty = "dotted")
abline(v = mean(ch6ds2$Comprehension.Score) + sd(ch6ds2$Comprehension.Score), lty = "dotted")


# Read in the file from CSV ...
ch6ds2 <- read.csv("06\\ch6ds2.csv") 

# Check the data to make sure R read in the file correctly
View(ch6ds2) 

# Create histogram of the comprehension score
hist(ch6ds2$Comprehension.Score, xlab = "Comprehension",
     main = "Histogram of Comprehension Score")


# Read in the file from CSV ...
ch6ds3 <- read.csv("06\\ch6ds3.csv") 

# Check the data to make sure R read in the file correctly
View(ch6ds3) 

# Add up everything in each column
DaySums <- colSums(ch6ds3)

# Plot counts on y-axis and name each bar
barplot(height = DaySums, ylab = "Frequency", ylim = c(0,160),
        main = "Barplot of Student Engagement", xlab = "Days of the Week")

# Chapter 7

# Read in the file from CSV ...
ch7ds2 <- read.csv("07\\ch7ds2.csv") 

# Check the data to make sure R read in the file correctly
View(ch7ds2) 

cor(ch7ds2$Number.Correct, ch7ds2$Attitude)

plot(ch7ds2$Number.Correct, ch7ds2$Attitude, 
     xlab = "Number Correct", ylab = "Attitude",
     main = "Scatterplot of Number Correct and Attitude")
