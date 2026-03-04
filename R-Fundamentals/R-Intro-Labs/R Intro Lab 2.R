library(airports)

#Q1: Using Airports library, creat Q1 with the number of observaions from the usairports dataset
Q1 <- nrow(usairports)
head(usairports)

#Q2: Assign the usairports class to Q2
Q2 <- class(usairports)

#Q3: Assign the Q2 class to Q3
Q3 <- class(Q2)

#Q4: Create a vector with the numbers 1,2,3 and assign it to Q4
Q4 <- c(1,2,3)

#Q5: Create a Vector with the Strings "Larry Fine", "Curly Howard", and "Mow Howard". Assign it to Q5
Q5 <- c("Larry Fine", "Curly Howard", "Moe Howard")

#Q6: Assign Q4 to Q6. Using Q5, assign the 3 Stooges Names in Q6
Q6 <- cbind(Q4,Q5)
Q6

#Q&: Create a vector with the years 1975, 1953, and 1975. Assign it to Q7
Q7 <- c(1975,1953,1975)

#Q8: Create a data frame with the 3 Stooges and their year of death. Assign it to Q8
Q8 <- data.frame(Q4, Q5, Q7)
Q8

#Q9: Using a function(not manually), assign to Q9 the mean of the year of death of the 3 stooges
Q9 <- mean(Q7)
Q9

#Q10: Assign Q8 to Q10. Change the year of death of Q10 into a factor.
Q10 <- Q8
Q10 <- as.factor(Q10$Q7)







