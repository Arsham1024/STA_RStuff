# ----- Day 1 ----- #

# creating random data and getting the mean of it, storing into the xbar variable.
x <- c(1,2,3,4,10,15,24,10,4)
xbar <- mean(x)

# showing that the sum of the difference between each data value and the mean of the entire data set is 0 through R.
sum(x - xbar)

# showing how a smaller n is more influenced by outliers than a data set with large n.
small_n <- c(1,2,3,4,10,15,24,10,4,200)
mean(small_n)

large_n <- c(1,2,3,4,10,15,24,10,4,200, 1,2,3,4,10,15,24,10,4, 1,2,3,4,10,15,24,10,4)
mean(large_n)

# ----- Day 2 ----- #

# Doing variance and standard deviation by "hand" corresponding to example in notes.
x <- c(5,5,5,6,7,8) # creating the data

xbar <- mean(x); xbar # mean of the data
s_xx <- sum((x - xbar)^2); s_xx # sum of squares, s_xx
s2 <- s_xx / (length(x)-1); s2 # dividing sum of squares by n-1
stdev <- sqrt(s2); stdev # standard deviation

# thankfully, R has built-in functions for this
s2 <- var(x); s2
stdev <- sd(x); stdev

# ----- Boxplot Example ----- #

# ----- DISCLAIMER ----- #
# R boxplots do not ALWAYS come out the same as doing it by hand our way. 
#This has to do with how many algorithms there are for finding quartiles (slightly different than fourths). 
#Feel free to try it in R and see if it is the same since it's so easy, but always keep the above in mind.
# ----- ---------- ----- #

# creating the data
x <- c(211, 408, 171, 178, 359, 249, 205, 203, 201, 223, 234, 256, 218)
median(x)
?boxplot
boxplot(x) # ugly, lets make it horizontal
boxplot(x, horizontal=T)
box <- boxplot(x, horizontal=T) # storing the object in a variable to get the attributes via $
box$stats # five number summary

summary(x) # Gives a rough summary of the data
