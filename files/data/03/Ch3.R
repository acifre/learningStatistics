# Chapter 3: Much Easier Than You Think

# Perform some simple addition with R
4 + 6

# First attempt to solve
(3 + 5)^2/17 + 21

# Add some parentheses to help R with order of operations
(3 + 5)^2/(17 + 21)

# Create a vector called correct
correct <-  c(8, 6, 5, 8, 7, 8, 9, 6, 10, 8)

# View the vector called correct
correct

# List objects that R knows about
ls()

# List of objects that start with c
ls(pattern = "c")

# Create 3 data objects with ten numbers each
data1 <- c(45, 56, 34, 56, 25, 74, 35, 68, 98, 56)
data2 <- (7, 5, 3, 6, 4, 7, 6, 4, 5, 9)

# Oops, we forgot to concatenate our numbers
# Let's try again
data2 <- c(7, 5, 3, 6, 4, 7, 6, 4, 5, 9)
data3 <- c(1, 2, 1, 2, 2, 1, 2, 1, 2, 2)

# List all objects in the environment
ls()

# Remove data1
rm(data1)

# List all objects again
ls()

# Look at data1
data1

# Import data from a .csv file
example <- read.csv(file.choose(), header = TRUE)

# Look at the object example
example

# Look at the list of data sets available in R
data

# Calculate summary statistics
summary(example)

# Calculate the correlation between two vectors
cor(data1, data2)

# Create a scatterplot
plot(data1, data2)
