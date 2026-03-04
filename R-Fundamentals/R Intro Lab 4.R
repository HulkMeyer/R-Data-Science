library(ggplot2)
txhousing
Data_set <- txhousing


#Q1) Calculate the mean of the volume variable using the mean function without parameters. Assign it to Q1.
Q1 <- mean(txhousing$volume,trim = 0.5, na.rm = FALSE)
Q1

#Q2) Calculate the mean of the volume again. This time use the parameter na.rm = TRUE
Q2 <- mean(txhousing$volume,trim = 0.5, na.rm = TRUE)
Q2
    #What change was that NA values are pulled out before the mean is computed.  False they are not stripped which leads to the NA Real, True they get stripped out so the mean can be computed. 

#Q3) Calculate the median of the listings variable. Assign it to Q3. Use what you have learned with Q1 and Q2 comparison
Q3 <- mean(txhousing$listings, trim = 0,na.rm = FALSE)
Q3
Q3 <- mean(txhousing$listings, trim = 0,na.rm = TRUE)
    #Same issue as with Q1 and Q2.  There are some NAs in the data set so you have to strip them away before you can compute the mean.

#Q4) Assign the min value of volume to Q4.
Q4 <- min(txhousing$volume, na.rm = TRUE)

#Q5) Assign the max value of volume to Q5
Q5 <- max(txhousing$volume, na.rm = TRUE)

#Q6) Calculate the range of the voluem. Assign it to Q6.
Q6 <- Q5 - Q4

#Q7) Calculate the variance of the year variable. Assign it to Q7.
Q7 <- var(txhousing$year, na.rm = TRUE)

#Q8) Calculate the standard deviation of the volume variable. Assign it to Q8.
Q8 <- sqrt(var(txhousing$volume, na.rm = TRUE))

#Q9) Using the summary Function, create the summary of txhousing data set. assign it to Q9.
Q9 <- summary(txhousing)
Q9

#Q10) Calculate the Z-Score of the volume of this observation (row). Assign it to Q10. 
Q10 <- (5380000-Q2)/Q8
    #This tells us that this observation is just below (-.07) the mean but within 1 standard deviation of it.  This house is close to the mean housing price in the state of TX. 
