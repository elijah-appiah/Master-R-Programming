########################################################################
#                                                                      #
#               RELATIONAL/COMPARISON OPERATIONS IN R                  #
#                                                                      #
########################################################################

# Assign some values to x and y
x <- 51
y <- 160

# Less than ( < )
x < y

# Less than or equal to ( <= )
x <= y

# Greater than ( > )
x > y

# Greater than or equal to ( >= )
x >= y

# Equal to ( == )
x == y
4 == 4
4 = 4   # result in an error

# Not Equal to ( != )
x != y
x != 51


# Complex logical statement with multiple relational operators
# "and" --->  `&` ......... "or" --->  `|`

(6 >= 7) & (52 == 3)
FALSE    &   FALSE  

(7 == 7 & 6 > 3) | (4 != 10)
(TRUE   & TRUE) |  TRUE
TRUE             |  TRUE


# Let's perform some complicated operations 
# combining arithmetic and relational operators
a <- 5
b <- 15
c <- 25

((a + b) > (c - 5)) & ((b - 2) == (a * 6)) | (c != (a * 5))










