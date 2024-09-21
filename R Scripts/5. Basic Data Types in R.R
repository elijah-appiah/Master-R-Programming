########################################################################
#                                                                      #
#                      BASIC DATA TYPES IN R                           #
#                                                                      #
########################################################################

# Use `class()` function to check the data type

# Numeric
class(78)

class(78.123456789)


# Integer
class(78L)

class(-67L)


# Character - wrap texts in double or single quotes
class("R programming")

class('programmer')

class('Elijah\'s Book')


# Logical
class(TRUE)

class(FALSE)

class(NA)


# Complex - real and imaginary a + bi
class(5i)

class(67 + 100i)


# Functions to check or verify data types
is.numeric()    # checks if the object in the function is numeric
is.integer()
is.character()
is.logical()
is.complex()


# Check if object is 'numeric'
a <- 57

is.numeric(a)


# Check if object is 'integer' or 'numeric'
b <- 99L

is.integer(b)

is.numeric(b)


# Check if object is 'character' or 'numeric'
c <- "R programmer"

is.character(c)

is.numeric(c)


# Check if object is 'logical' or 'numeric'
d <- TRUE

is.logical(d)

is.numeric(d)


# Check if object is 'complex' or 'logical' or 'numeric' data type
e <- 5 + 13i

is.complex(e)

is.logical(e)

is.numeric(e)

