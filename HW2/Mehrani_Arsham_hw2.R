#OSU data being saved
osu_data <- c(450, 420, 469, 360, 450, 390, 250, 415, 410, 480, 444,
461, 260, 440, 345, 435, 449)

#IIDX Beatmania data being saved
iidx_data <- c(350, 369, 275, 215, 249, 210, 360, 320, 215, 233, 280, 274, 290, 310, 320, 290, 304)



###PART A

#variance
osu_var <- var (osu_data)
#Standard Deviation
osu_sd <- sd (osu_data)
#box plot of OSU
osu_box <- boxplot(osu_data, horizontal = T)
##Observations
#1. Yes based on the box plot above the data for OSU has a negative skew. as we see in the box plot the median is leaning towards the right and majority of the data are located on the right side of the plot. There are extreme and mild outliares on located to the left that combined with the rest of the data create this skew shape.

##Spread of Fourths
sort(osu_data)
osu_X_bar <- median(osu_data)


#Extracting data from the boxplot
important_points_osuBoxPlot <- array(osu_box$stats) 

##Based on the above data the spread of fourths is:

#Smallest none outliar Xi = 345
#Fl = 390
#fm = 435
#fu = 450
#largest none outliar xi = 480

#1st Fourth : [345 - 390)
#2nd Fourth : [390-435)
#3rd Fourth : [435-450)
#4th Fourth : [450-480)






###PART B

#variance
iidx_var <- var(iidx_data)
#Standard Deviation
iidx_sd <- sd(iidx_data)
#Box plot of iidx
iidx_box <- boxplot(iidx_data, horizontal = T)

##Observations
#1. This data is fairly symemetrical with the data spreading evenly. There are no outliars.

#Spread of Fourths
sort(iidx_data)
iidx_X_bar <- median(iidx_data)

#Extracting important points of the boxplot
important_points_iidxBoxPlot <- array(iidx_box$stats)

##Based on the above data the spread of fourths is:

#Smallest none outliar Xi = 210
#Fl = 249
#fm = 290
#fu = 320
#largest none outliar xi = 369

#1st Fourth : [210 - 249)
#2nd Fourth : [249-290)
#3rd Fourth : [290-320)
#4th Fourth : [320-369)





###PART C
##1.
# iidx standard deviation = 50.026
# osu standard deviation = 67.837
#Based on the SD collected iidx data relative to osu data is more concentrated around the mean. I suspect this is because in osu data we have outliares that influence the data and sd. however the observations in part A and B still stand, the difference is because of the comparison.

##2. 
# The side by side box plots below: 
boxplot (osu_data,iidx_data, horizontal = T)
# This side by side view shows the data compared to each other. And I think this agrees with my observation above. in short relative to each other, osu data is more spread out while iidx data is more concentrated around the mean.

##3. 
#coefficient of variation (CV), expresses the standard deviation of a data set as a percentage of the mean.

# calculating the CV
?round
osu_CV <- round((osu_sd/osu_X_bar)*100, 3)
iidx_CV <- round((iidx_sd/iidx_X_bar)*100, 3)
#based on the above calculations iidx data has more variation than osu. This doesn't agree with what I said previously but I suspect this is because the outliars are influencing the data above but the CV data realy concentrates on the data around the mean in which case it is understandable that iidx has more variation since the data is further apart. 



###PART D
##OSU data with no outliars

osu_data <- c(450, 420, 469, 360, 450, 390, 250, 415, 410, 480, 444,
              461, 260, 440, 345, 435, 449)
osu_data_noOutliars <- c(345, 360, 390, 410, 415, 420, 435, 440, 444, 449, 450, 450, 461, 469, 480)

##SD of the data
osu_data_noOutliars_sd <- round(sd(osu_data_noOutliars), 3)
##Variance of the data
osu_data_noOutliars_var <- round(var(osu_data_noOutliars), 3)
##CV of the data
osu_data_noOutliars_Xbar <- median(osu_data_noOutliars)
osu_data_noOutliars_CV <- round((osu_data_noOutliars_sd/osu_data_noOutliars_Xbar)*100, 3)

##Box plot comparing all three data sets together
boxplot(osu_data, osu_data_noOutliars, iidx_data, horizontal = T)

#Observation: 
#1. Like you mention in the last page removing the outliars doesn't help since there will be new outliars created.
#2. for the osu data without the outliars the data got more concentrated and the mean moved right.
#3. comparing osu data with and without outliars the following sticks out:
#comparing cv datas: there is a dramatic change I guess it shows how much this stat is dependent on each data and outliars influence it greatly!
#comparing sd datas: The same dramatic change also happens here the sd number almost divides by 2! this also shows the same thing.
#comparing variance: the data with no outliars is almost a quarter of what it was with outliars.







