# Chapter 20: Some Other (Important) Statistical Procedures You
#             Should Know About

# MANOVA
?manova
example(manova)

# Repeated Measures
library(lme4)
fm1 <- lmer(Reaction ~ Days + (Days | Subject), sleepstudy)
summary(fm1)

# Analysis of Covariance - ANCOVA
# Just an example based on a Chapter 15 example - no data to run
m1 <- aov(Language.Score ~ Group + Hours.Reading, data = ch15ds1)

# Multiple Regression
# Just an example based on a Chapter 18 example - no data to run
m1 <- lm(Injuries ~ Training + Cardio + Team + Trainer, data = ch18ds1)

# Multilevel models
library(lme4)
fm1 <- lmer(Reaction ~ recipe * temperature + (1 | recipe:replicate), 
    	data = cake, REML = FALSE)
summary(fm1)

# Logistic Regression
# Just an example from IDRE Website
m1 <- glm(admit ~ gre + gpa + rank, data = mydata, family = "binomial")

# Factor analysis
library(psych)
pa <- fa(Harman74.cor$cov,4,fm="pa" ,rotate="varimax")
summary(pa)
print(pa, sort = TRUE)

# Structural Equation Modeling
install.packages("lavaan")
library(lavaan)
example(sem)
