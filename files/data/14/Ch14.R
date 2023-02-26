# Chapter 14: t(ea) for Two (Again)

# Import our first data set
ch14ds1 <- read.csv(file.choose())

# View what we just imported. Did we get what we expected?
View(ch14ds1)

# Subtract the pretest scores from the posttest scores
ch14ds1$D <- ch14ds1$Posttest - ch14ds1$Pretest

# Square the difference
ch14ds1$Dsq <- ch14ds1$D^2

# Create sum scores for D and Dsq and look at the results
sumD <- sum(ch14ds1$D)
sumD

sumDsq <- sum(ch14ds1$Dsq)
sumDsq

# Enter Formula 14.1
sumD/sqrt((25*sumDsq - sumD^2)/(25 - 1))

# Repeat but save result in tStat
tStat <- sumD/sqrt((25*sumDsq - sumD^2)/(25 - 1))

# Get the exact p for our t statistic
pt(tStat, 24, lower = FALSE)

# Use the function for the t test
t.test(ch14ds1$Posttest, ch14ds1$Pretest, paired = TRUE, alternative = "greater")

# We need to obtain the standard deviations and correlation for our effect size
sd(ch14ds1$Pretest)
sd(ch14ds1$Posttest)

# Let's look at a scatterplot before calculating a correlation
plot(ch14ds1$Pretest, ch14ds1$Posttest, 
     xlab = "Pretest", ylab = "Posttest",
     main = "Pretest and Posttest Reading Achievement Scores")

cor(ch14ds1$Pretest, ch14ds1$Posttest)
