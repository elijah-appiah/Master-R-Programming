########################################################################
#                                                                      #
#             BASIC DATA TYPES IN R - TYPE CONVERSION                  #
#                                                                      #
########################################################################

# Use `class()` function to check the data type

# The following functions are used to convert one data type to another.
as.numeric()
as.integer()
as.character()
as.logical()
as.complex()


# Convert "numeric" to "integer" data type
x <- 400       # "numeric" assignment
class(x)       # check the data type

y <- as.integer(x)  # stored into another variable when converted
class(y)

# NOTE: You can save into the same variable and cause it to be overwritten


# Convert from "logical" to "integer"
a <- TRUE
class(a)

b <- as.integer(a)
class(b)


# Convert from "character" to "numeric" ---> somehow not possible, right?
c <- "Practice makes perfect!"
class(c)

as.numeric(c)


# IMPORTANT THING TO NOTE
#--------------------------
# Logical constants TRUE and FALSE are 1 and 0 respectively if "numeric"
as.numeric(TRUE)
as.numeric(FALSE)

# You can perform arithmetic operations on them
TRUE + TRUE
TRUE + FALSE
FALSE + FALSE
