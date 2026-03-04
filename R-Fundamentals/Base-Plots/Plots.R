#Plots
  #Basics

Fibonacci <- c(1,1,2,3,5,8,13)

plot(Fibonacci)
  #Generates a nice basic scatterplot

plot(x = Fibonacci, 
        main = 'You specify title using the main arguement',
        sub = 'The subtitle appears here! (Use the sub  arguement for this',
        xlab = 'The x-axis label is "xlab"',
        ylab = 'The y-axis lable is "ylab"'
    )  

plot(x = Fibonacci,
      type = "b",
      col = "blue",
      pch = 19,
      cex = 5, 
      lty = 2, 
      lwd = 4)

library(tidyverse)
msleep
# create a basic Histogram 
hist(msleep$sleep_total)
# can add in the number of breaks we want in the data, this allows for further refinement of data set if you wanted to drill down a bit
hist(msleep$sleep_total, breaks = 20)

#create a stem and leaf plot
stem(msleep$sleep_total) #shows up in console

#create a boxplot
  #box plots contain Min, Max, 25th percentile, 75th percentile and Median
boxplot(msleep$sleep_total)
