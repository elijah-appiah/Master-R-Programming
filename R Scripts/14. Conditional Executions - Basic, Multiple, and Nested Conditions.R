#######################################################################
#                                                                     #
#                     CONDITIONAL EXECUTIONS                          #
#                                                                     #
#######################################################################

#------------- `if` condition --------------------------

#____ Syntax:
#        if(condition){execute if condition is TRUE}

#        if(condition){
#          execute if condition is TRUE
#        }

x <- 50

if(x > 100){
  print("x is greater than 100.")
}



#------------- `if`...`else` condition --------------------------

#______ Syntax:

#         if(condition){
#           execute if condition TRUE
#        } else {
#           execute if condition is FALSE
#         }

x <- 50

if(x > 100){
  print("x is greater than 100.")
} else {
  print("x is less than 100.")
}


age <- 25

if(age >= 60){
  print("You are eligible for social welfare.")
} else {
  print("You are not eligible.")
}


#++++++++++++++++ EXERCISE 1: EVEN OR ODD ++++++++++++++++++
# Write a program that reads an integer from the user. Then your 
# program should display a message indicating whether the integer 
# is even or odd.

number <- as.integer(readline(prompt = "Enter an integer: "))

if(number %% 2 == 0){
  cat(number, "is even.")
} else {
  cat(number, "is odd.")
}




#------------- Multiple conditions (`if`- `else` - `if`) ------------------

#______ Syntax:

#       if(condition 1){
#           execute if condition 1 is TRUE
#       } else if(condition 2){
#           execute if condition 2 is TRUE
#       } else if(condition 3){
#           execute if condition 3 is TRUE
#       } else {
#           execute if all conditions are FALSE
#       }


#+++++++++++++ EXERCISE 2: VOWEL OR CONSONANT ++++++++++++++++++
# In this exercise you will create a program that reads a letter
# of the alphabet from the user. If the user enters a, e, i, o or u 
# then your program should display a message indicating that the 
# entered letter is a vowel. If the user enters 'h' then your program 
# should display a message indicating that sometimes 'h' is a vowel, 
# and sometimes 'h' is a consonant. Otherwise your program should 
# display a message indicating that the letter is a consonant.

letter <- readline(prompt = "Enter a letter: ")

if(letter == "a" | 
   letter == "e" | 
   letter == "i" | 
   letter == "o" | 
   letter == "u"){
  print("The letter is a vowel.")
} else if(letter == "h"){
  print("Sometimes a vowel...sometimes a consonant.")
} else {
  print("The letter is a consonant.")
}


#+++++++++++++ EXERCISE 3: AGE CLASSIFICATION ++++++++++++++++++
# Write the R program that takes the age as input from a person
# and which implements the following conditional executions:
#     -> If the age of the person is greater than or equal to 60, 
#        the person is an "adult".
#     -> If the age of the person is from 20 to 59, the person is "young".
#     -> If the age of the person is from 11 to 19, the person is a "teenager".
#     -> If the age of the person is less than 11, the person is a "child".

age <- as.integer(readline(prompt = "Enter your age: "))

if(age >= 60){
  print("You are an adult.")
} else if(age >= 20 & age <= 59){
  print("You are young.")
} else if(age >= 11 & age <= 19){
  print("You are a teenager.")
} else {
  print("You are a child.")
}

#------------- Nested `if` conditions --------------------------

#+++++++++++++ EXERCISE 4: AGE CLASSIFICATION ++++++++++++++++++
# Write the R program that takes the age input from a person 
# and which implements the following conditional executions:
#   
# -> If the age of the person is greater than or equal to 60, 
#    the person is an "adult", but ...
#         >>  The person is not eligible for social welfare 
#              if above or equal to 60 but less than 76.
#         >>  The person is eligible for social welfare if above 
#              75 years old.
# -> If the age of the person is from 20 and 59, the person is "young".
# -> If the age of the person is from 11 to 19, the person is a "teenager".
# -> If the age of the person is less than 11, the person is a "child".

age <- as.integer(readline(prompt = "Enter your age: "))

if(age >= 60){
  print("You are an adult.")
  if(age >= 60 & age < 76){
    print("You are not eligible for social welfare.")
  } else {
    print("You are eligible for social welfare.")
  }
} else if(age >= 20 & age <= 59){
  print("You are young.")
} else if(age >= 11 & age <= 19){
  print("You are a teenager.")
} else {
  print("You are a child.")
}


