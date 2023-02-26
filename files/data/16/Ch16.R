# Chapter 16: Two Groups Too Many Factors

# Using R to compute the F statistic

# Import our first data set
ch16ds1 <- read.csv(file.choose())

# View what we just imported. Did we get what we expected?
View(ch16ds1)

# Get descriptive statistics about each group
library(psych)
describeBy(ch16ds1$Loss, group = list(ch16ds1$Treatment, ch16ds1$Gender))

# To access functions for Type III errors - the Corrected Model
library(car)

# Run the ANOVA

# Check the default contrasts used by aov
options("contrasts")

# Change the default for categorical variables
options(contrasts = c("contr.helmert", "contr.poly"))

# Check the contrasts again to make sure it worked
options("contrasts")

# Calculate your ANOVA
m1 <- aov(Loss ~ Treatment + Gender + Treatment*Gender, data = ch16ds1)

# Look at the results
summary(m1)
Anova(m1, type = 3)

# Check the homogeneity of variance assumption
leveneTest(Loss ~ Treatment*Gender, data = ch16ds1)

# Draw an interaction plot
interaction.plot(x.factor = ch16ds1$Treatment,
                 trace.factor = ch16ds1$Gender,
                 response = ch16ds1$Loss)

interaction.plot(x.factor = ch16ds1$Treatment,
                 trace.factor = ch16ds1$Gender,
                 response = ch16ds1$Loss,
                 fixed = TRUE,
                 leg.bty = "b",
                 xlab = "Treatment", 
                 ylab = "Weight Loss",
                 trace.label = "Gender",
                 ylim = c(60, 85))

# Test all pairs of groups at once with the Tukey HSD
TukeyHSD(m1)

