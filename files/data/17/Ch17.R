# Chapter 17: Cousins or Just Good Friends?

# Using R to compute the r statistic

# Import our first data set
ch17ds1 <- read.csv(file.choose())

# View what we just imported. Did we get what we expected?
View(ch17ds1)

# Calculate the correlation
cor(ch17ds1$Qual.Marriage, ch17ds1$Qual.PC)

# Look at a scatterplot of the data
plot(ch17ds1$Qual.Marriage, ch17ds1$Qual.PC, 
     xlab = "Marriage Quality", ylab = "Parent-Child Interaction Quality",
     main = "Scatterplot")


# Get the correlation and a test of statistical significance
cor.test(ch17ds1$Qual.Marriage, ch17ds1$Qual.PC)

# Ask for one-tailed test results
cor.test(ch17ds1$Qual.Marriage, ch17ds1$Qual.PC, alternative = "greater")
