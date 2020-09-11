set.seed(1) #this controls rand results. Run before simulating the data.

#?sample and ?seq for documentation
#seq(...) generates seq of numbers from x-y , inclusive, incrementing by 2
#replace=T means once a number is picked, it can be used again. replace=F is no replacements, so a numver won't appear more than once.

discrete_data <- sample (x=seq(from=0, to=75, by=1), size = 420, replace = T)




#rnorm (...) generates n random numbers from a normal distro with mean and standard div as specified. so a num won't appear more than once!

continuous_data <- rnorm (n=400, mean = 300, sd=5)

#LETTERS is just cap letters built in. "A", "B", "C", ETC. 
#PROB =... is list of probabilities corresponding to letters.

ordinal_data <- sample(LETTERS[c(1:4, 6)], size=420, replace=T, prob=c(0.5, 0.3, 0.15, 0.1, 0.05))








#Part a
#Here we will calculate the number of bins required for each.
discrete_data_numBins = ceiling(sqrt(length(discrete_data)))
continuous_data_numBins = ceiling(sqrt(length(continuous_data)))
ordinal_data_numBins = ceiling(sqrt(length(ordinal_data)))


#making the Histogram for discrete data
hist(discrete_data, breaks = discrete_data_numBins+1, right = F)
#making the histogram for continuous data
hist(continuous_data, breaks = continuous_data_numBins+1, right = F)
#barplot for the Ordinal data 
tabular_Ordinal <-table(ordinal_data)
#for a paret chart it has to be in decending order,
count <- tabular_Ordinal
barplot(count[order(count, decreasing=T)], main= "Ordinal Data")



#Part b
#copy the ordinal line once again.
set.seed(2)
ordinal_data <- sample(LETTERS[c(1:4, 7)], size=420, replace=T, prob=c(0.25, 0.125, 0.35, 0.12, 0.15))

tabular_Ordinal <-table(ordinal_data)
#for a paret chart it has to be in decending order,
count <- tabular_Ordinal
barplot(count[order(count, decreasing=F)], main= "Ordinal Data modified")



#Part c
set.seed(3)
#create a function that takes in a size of the data set argument.

data <- sample (x=seq(from=10,to=40,by=0.25),size = 1000, replace = T)

#example relative frequency of 20
freq <- length (which(data == 20))
n<-length(data)
relativeF <- freq/n

#figuring out the number of bins required
data_NumBins <- ceiling(sqrt(n)) +1

#drawing the histogram
hist(data, breaks=seq(min(data),max(data),length.out = data_NumBins),right = F)

#first sample of size 25
samp1 <- table(sample(seq(10,40), size = 25))
#drawing its hist
hist(samp1, breaks = seq(min(data), max(data), replace =T, right=F))

#second sample of size 300
sample (seq(10,40), size = 300)


#Most of it doesn't run but this was my best attempt at this I am still confused on these concepts.

