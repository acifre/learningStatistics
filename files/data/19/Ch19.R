# Chapter 19: What to Do When You're Not Normal

# Import our first data set
ch19ds1 <- read.csv(file.choose())

# View what we just imported. Did we get what we expected?
View(ch19ds1)

# Obtain a count of the number of observations in each category
# We are calling it gfdata for goodness-of-fit data
gfdata <- summary(ch19ds1$Voucher)

# Look at our table
gfdata

# Run our chi-square goodness-of-fit test
chisq.test(gfdata, p = c(1/3, 1/3, 1/3))

# Import our second data set
ch19ds2 <- read.csv(file.choose())

# View what we just imported. Did we get what we expected?
View(ch19ds2)

# Obtain a count of the number of observations in each category
# We are calling it toidata for test of independence data
toidata <- table(ch19ds2$Sex, ch19ds2$Vote)

# Look at our table
toidata

# Run our chi-square goodness-of-fit test
chisq.test(toidata, p = c(1/4, 1/4, 1/4, 1/4), correct = FALSE)

# Run the test again using the data directly
chisq.test(ch19ds2$Sex, ch19ds2$Vote, correct = FALSE)
