# Chapter 13: t(ea) for Two

# Import our first data set
ch13ds1 <- read.csv(file.choose())

# View what we just imported. Did we get what we expected?
View(ch13ds1)

# Run the t test
t.test(MemoryTest ~ Group, data = ch13ds1, var.equal = TRUE)

# Look at the distribution of numbers in the two groups
memory <- boxplot(MemoryTest ~ Group, data = ch13ds1, main = "Memory Test Scores",
        xlab = "Groups", ylab = "Scores")

# Show the numbers used to create the boxplot
# [1] Lower whisker
# [2] 25th percentile value
# [3] 50th percentile value - median
# [4] 75th percentile value
# [5] Uppoer whisker
memory$stats

# Load the library car so we can run leveneTest
library(car)

# Test to see if the variances are equal in the two groups
leveneTest(MemoryTest ~ as.factor(Group), data = ch13ds1)

# Re-run t.test with var.equal omitted
t.test(MemoryTest ~ Group, data = ch13ds1)

# Look at help for t.test
?t.test

