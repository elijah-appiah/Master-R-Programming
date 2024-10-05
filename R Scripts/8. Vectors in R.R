#######################################################################
#                                                                     #
#                     DATA STRUCTURES IN R                            #
#                          (Vectors)                                  #
#                                                                     #
#######################################################################

# Create a vector of numbers using `c()` function
x <- c(60, 78, 100)


#........ Create vectors of homogeneous data types .........#

#1. Vector of Numeric Data Type
numeric_vector <- c(67, 90, 12, -90)
class(numeric_vector)

#2. Vector of Integer Data Type
integer_vector <- c(67L, -90L, 56L)
class(integer_vector)

#3. Vector of Character Data Type
character_vector <- c("R programmer", "RStudio")
class(character_vector)

#4. Vector of Logical Data Type
logical_vector <- c(TRUE, FALSE, NA)
class(logical_vector)

#5. Vector of Complex Data Type
complex_vector <- c(67i, 6+78i)
class(complex_vector)


# What if you mix up the data types?
# Note: The strongest data type takes over
vec_1 <- c(67, 89L, "RStudio", TRUE, 56+100i)
class(vec_1)

vec_2 <- c(TRUE, FALSE, 45)
class(vec_2)


# Create a named vector
named_vector <- c(revenue = 1000, cost = 800, profit = 200)


# Use colon `:` to generate sequence of numbers as a vector
1:10

# Generate a vector of the sequence from 45 to 100
seq_vector <- 45:100

# Use `length()` to check number of items in a vector
length(seq_vector)




