#Q1: Create a variable called Q1 containing the value of Pi(π) with 4 decimal places
Q1 <- 3.1415

#Q2: Create a vaiable called radius containg the value of 3963.
radius <- 3963
Q2 <- Q1 * 2 * (radius)

#Q3: Create a Vaiable called Fibonacci with a vector containing the first 10 numbers from the Bibonacci series, starting with 0.
Fibonacci <- c(0,1,1,2,3,5,8,13,21,34)
#Using Indexing get the 5th element of the Fibonacci Variable
Q3 <- Fibonacci[5]

#Q4:  Create a copy of the Fibonacci, called Q4.  Change the 10th value of Q4 to 99
Q4 <- Fibonacci
#change the 10th value to 99
Q4[10] <- 99; Fibonacci_copy

#Q5: Create Q5 with the sum of Q4
Q5 <- sum(Q4)

#Q6: The golden ratio is approximately 1.6180339887. Creat a variable called GR and assign that to it. 
GR <- 1.6180339887
    #In Mathematics the Fibonacci series and golden ratio are closely connected.  Whith the following expression we can calculate any Bibonacci number in the series:
    #FN = (GR^(n-1)-(1-GR)^(n-1)/sqrt(5))

position <- c(20,21,34,35)
n = 35
FN_position <- (GR^(n-1)-(1-GR)^(n-1)/sqrt(5))
print(FN_position)
Q6 <- c(9349, 15127, 7881196, 12752043)

#Q7: Calculate the mean of Q6 with 2 decimal places(using the round funciton), assign it to Q7
Q7 <- round(mean(Q6))

