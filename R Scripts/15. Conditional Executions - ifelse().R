#######################################################################
#                                                                     #
#                     CONDITIONAL EXECUTIONS                          #
#                                                                     #
#######################################################################

#------------- `ifelse()` condition --------------------------

# Check documentation
?ifelse

# Create vector called `x`
x <- c(5, 9, 15)

# Evaluate to "High" if value greater than 10, or "Low" otherwise
ifelse(test = x > 10, yes = "High", no = "Low")

# Assign gender labels: 1 = Male, 2 = Female
gender <- c(1, 2, 1, 2, 1, 1, 2, 1, 2)
ifelse(gender == 1, "Male", "Female")


# Let's create marital_status where:
#     1 = Single
#     2 = Married
#     3 = Widowed
#     4 = Separated
#     5 = Divorced

marital <- c(1, 5, 3, 2, 4, 1, 5, 3, 2, 4, 1, 4, 3, 5, 5)
print(marital)

marital_status <- ifelse(marital == 1, "Single", 
                         ifelse(marital == 2, "Married", 
                                ifelse(marital == 3, "Widowed", 
                                       ifelse(marital == 4, "Separated", "Divorced"))))
print(marital_status)




