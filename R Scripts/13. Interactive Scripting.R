#######################################################################
#                                                                     #
#                     INTERACTIVE SCRIPTING                           #
#                       (Text Functions)                              #
#                                                                     #
#######################################################################

#----- The `readline()` Function
#-->  takes user input from the console and returns a character string

?readline
readline(prompt = "What is your name? ")
readline(prompt = "How old are you? ")

name <- readline(prompt = "What is your name? ")
class(name)

age <- readline(prompt = "How old are you? ")
class(age)

age_1 <- as.numeric(readline(prompt = "How old are you? "))
class(age_1)




#----- The `paste()` and `paste0()` Functions
#-->  join multiple characters/strings into one character

?paste
paste("Hello", "Elijah")
paste("You are", 90, "years old.")
paste("A", "B", "C")
paste("A", "B", "C", sep = " ")
paste("A", "B", "C", sep = "")
paste("A", "B", "C", sep = "-")
paste("A", "B", "C", sep = "/")


paste0("A", "B", "C")
paste0("A ", "B ", "C")
paste0("user_", 1:3)
paste0("Row ", c(4, 10, 200))
paste0("Row", c(4, 10, 200))




#----- The `cat()` Function
#-->  outputs texts and values (no quotes)

name <- "Elijah"
age <- 90

?cat
cat("Hello", name, "you are", age, "years old.")
paste("Hello", name, "you are", age, "years old.")

# Special characters: \n (insert new line)
#                     \t (insert a tab)

cat("Hello", name, "\nyou are", age, "years old.")
cat("Hello", name, "\n", "you are", age, "years old.")
cat("Hello", name, "\n", "you are", age, "years old.", sep = "888")

cat("Hello", "\tElijah")
cat("Hello", "\nElijah")
cat("Hello", "\n\tElijah")


# Create Personalized Greeting

name <- readline(prompt = "What's your name? ")
age <- as.numeric(readline(prompt = "How old are you? "))

message_1 <- paste("Nice to meet you", name, "- you are", age, "years old.")
message_1

cat("Nice to meet you", name, "- you are", age, "years old.")



