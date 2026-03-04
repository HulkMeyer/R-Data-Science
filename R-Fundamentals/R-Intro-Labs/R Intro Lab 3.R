library(openssl)
library(readxl)
housing <- read_excel("Academics/MSDS/DTSC 550 - Introduction to Statistical Modeling/housing.xlsx")
View(housing)

#Q1: Based on what you have learned about Nominal Data, find the first two nominal (or categorical) variables (from left to right). Create a vector with these two variable names and assign it to Q1. 
Q1 <- c("suburb", "type")

#Q2:The unique function returns the unique values of a column in a data frame.
# With that said, identify the only Ordinal Data column in the dataset. Get its unique values and assign it to Q2 using the following code:
Q2 <- unique(housing["price"])

#Q3: Identify the first Interval Data variable (from left to right) and assign its unique values to Q3 using the following code:
Q3 <- unique(housing["rooms"])

#Q4: Identify the first Ratio Data variable (from left to right) and assign its name to Q4 using the following code:
Q4 <- unique(housing["maintenance_score"])
  
#Q5: Identify all discrete variables in the dataset. Create a vector with all these variable names and assign it to Q5. 
Q5 <- data.frame("rooms", "maintenance_score", "bedroom2", "bathroom", "car")

#Q6: Identify all continuous variables in the dataset. Create a vector with all these variable names and assign it to
Q6 <- data.frame("price", "building_area")
