#######################################################################
#                                                                     #
#                     CONDITIONAL EXECUTIONS                          #
#                          `switch()`                                 #
#                                                                     #
#######################################################################

# Character (named) switch – match the result of an expression 
#                           against named arguments.

?switch

fruit <- "banana"

message_1 <- switch(fruit, 
                  apple = "You chose Apple",
                  mango = "You chose Mango")

message_2 <- switch("apple", 
                  apple = "You chose Apple",
                  mango = "You chose Mango")


message_3 <- switch(fruit, 
                  apple = "You chose Apple",
                  mango = "You chose Mango",
                  "Unknown fruit")


# Numeric (positional) switch: use a numeric index to pick the nth argument.

message_4 <- switch(4, 
                    "You chose Apple",
                    "You chose Mango",
                    "You chose Banana")



# Exercise 1: Grade Message
# 
# Ask the user to enter a letter grade ("A", "B", "C", "D", "F").
# Use switch() to print a message:
#   
# A → "Excellent"
# B → "Good job"
# C → "Fair"
# D → "Needs improvement"
# F → "Failed"

grade <- readline(prompt = "Enter a letter grade: ")

message <- switch(grade, 
                  A = "Excellent",
                  B = "Good Job",
                  C = "Fair",
                  D = "Need Improvement",
                  F = "Failed")

cat("Your grade is", grade, "-", message)


