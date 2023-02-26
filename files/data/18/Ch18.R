# Chapter 18: Predicting the Future

# Import our first data set
ch18ds1 <- read.csv(file.choose())

# View what we just imported. Did we get what we expected?
View(ch18ds1)

# Estimate the regression of Injuries on Training
lm(Injuries ~ Training, data = ch18ds1)

# Run the model again and store the results in sr (simple regression)
sr <- lm(Injuries ~ Training, data = ch18ds1)

# Ask for the summary information for our model
summary(sr)

# Draw the scatterplot
plot(Injuries ~ Training, data = ch18ds1)

# Add the regression line
abline(sr)

# Continue with Trainings and Injuries example with another predictor
mr <- lm(Injuries ~ Training + Trainer, data = ch18ds1)
summary(mr)

# Compare the two models with anova
anova(sr, mr)
