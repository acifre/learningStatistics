# Chapter 15: Two Groups Too Many?

# Import our first data set
ch15ds1 <- read.csv(file.choose())

# View what we just imported. Did we get what we expected?
View(ch15ds1)

# Get descriptive statistics about each group

# Load the psych library
library(psych)

# Use the function
describeBy(ch15ds1$Language.Score, group = ch15ds1$Group)


# Run the ANOVA
m1 <- aov(Language.Score ~ Group, data = ch15ds1)

# Look at the results from the ANOVA
summary(m1)

# Plot by group
boxplot(Language.Score ~ Group, data = ch15ds1, main = "Language Scores",
        xlab = "Groups", ylab = "Scores")

# COmpare the pairs of groups
TukeyHSD(m1)


