# Chapter 4: Means to an End

# Compute the average number of customers
(2150 + 1534 + 3564)/3

# Compute the average number of students
(18 + 21 + 24 + 23 + 22 + 24 + 25)/7

# Sort rehabilitation days from smallest to largest
sort(c(43, 34, 32, 12, 51, 6, 27))

# Look at a histogram on income with extreme value
hist(c(135456, 25500, 32456, 54365, 37668))

# Read in the data from a CSV file using the read.csv function or
# File > Import Dataset > From CSV ...
ch4ds1 <- read.csv(file.choose()) 

# Check the data to make sure R read in the file correctly
View(ch4ds1) 

# Use sum to add up all Prejudice scores
sum(ch4ds1$Predjudice)

# What is our n (sample size)?
length(ch4ds1$Predjudice)

# Put both commands in the same line
sum(ch4ds1$Predjudice) / length(ch4ds1$Predjudice)

# Use the mean function
mean(ch4ds1$Predjudice)

# Look at our 20 scores
ch4ds1$Predjudice

# Identify median of Prejudice
median(ch4ds1$Predjudice)

# Identify mode - We cannot use the mode(function) because that function
# will just return what type of variable we have. Try this. R should return
# numeric because the Prejudice column contains only numbers.
mode(ch4ds1$Predjudice)

# View frequencies
summary(as.factor(ch4ds1$Predjudice))

# A quick way to get the median and mean
summary(ch4ds1$Predjudice)
