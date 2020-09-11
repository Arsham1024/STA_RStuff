set.seed(1)
#Given
discrete_data <- sample (x=seq(from=0, to=75, by=1), size = 420, replace = T)
continuous_data <- rnorm(n=400, mean=300, sd=5)
ordinal_data<-sample (LETTERS[c(1:4, 6)], size = 420, replace = T, prob = c(0.5, 0.3,0.15, 0.1, 0.05))

#PART (A)
#Discrete data
#Gathering data
n <- length(discrete_data)
numBins <- ceiling(sqrt(n)) +1
minData <- min(discrete_data)
maxData <- max(discrete_data)

#draw the histo for discrete data
hist(discrete_data, breaks = seq(from=minData, to=maxData, length.out = numBins),right = F)

#continuous data
#gathering data
n <- length (continuous_data)
num_cont_Bins <- ceiling(sqrt(n)) +1
min_Cont_Data <- min(continuous_data)
max_Cont_Data <- max(continuous_data)

#draw the histo for continuous data
hist(continuous_data, breaks = seq(from=min_Cont_Data, to=max_Cont_Data, length.out = num_cont_Bins), right = F)


#Ordinal Data
#gathering data
Ordinal_table <- table(ordinal_data)
barplot(Ordinal_table)


#PART(B)
set.seed(2)
#copy the Ordinal data line
ordinal_data<-sample (LETTERS[c(1:4, 6)], size = 420, replace = T, prob = c(0.10, 0.40,0.25, 0.15, 0.05))
#barplot
barplot(table(ordinal_data))


#PART (C)
f1 <- function(n){
data1 <- sample(seq(from=10,to=40,by=0.25),size = n, replace=T)

#gathering data
numBins <- ceiling(sqrt(n)) +1
min_data1 <- min(data1)
max_data1 <- max(data1)

#draw a hist
hist(data1, breaks = seq(from=min_data1, to=max_data1, length.out = numBins), right = F)
}

f1(25)
f1(300)





