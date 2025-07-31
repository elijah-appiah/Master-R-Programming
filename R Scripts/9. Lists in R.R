#######################################################################
#                                                                     #
#                     DATA STRUCTURES IN R                            #
#                           (Lists)                                   #
#                                                                     #
#######################################################################

#---------------    CREATE LISTS    ----------------
# Create a list using `list()` function

list(1, 2, 3)

list("Elijah", "Appiah", 100, TRUE)


# Create a list of different data type
list_of_vectors <- list(
  c(23, 89, 10, 7, 11, 15, 12, 5), 
  c(100L, 34L, -90L), 
  c("R", "Python", "SQL"),
  c(TRUE, TRUE, TRUE, FALSE),
  c(2+7i, 10-3i)
)


# Create a list of list (or nested list)
nested_list <- list(
  c(12, 9, 80),
  list(
    c("vectors", "lists", "matrices", "arrays", "data frames"),
    c(TRUE, TRUE, FALSE)
  )
)



#---------------    LIST INDEXING    ----------------

# Create a list of different data types
list_of_vectors <- list(
  c(23, 89, 10, 7, 11, 15, 12, 5), 
  c(100L, 34L, -90L), 
  c("R", "Python", "SQL"),
  c(TRUE, TRUE, TRUE, FALSE),
  c(2+7i, 10-3i)
)


# Extracts the first list
list_of_vectors[[1]]

# Extracts the third list
list_of_vectors[[3]]

# Extracts the third item in the third list
list_of_vectors[[3]][3]




#---------------    NAMED LISTS AND INDEXING    ----------------

# Create a list called "named_list"
named_list <- list(
  numbers = c(100, 200, 300, 40.2),
  integers = c(90L, 40L,-6L),
  languages = c("Python", "R", "SQL"),
  booleans = c(TRUE, FALSE),
  complex_type = c(2+7i, 6-2i)
)

# select third list called 'languages'
named_list$languages

# select first list called 'numbers'
named_list$numbers

# replace 4th item in 'numbers' list by the value 400
named_list$numbers[4] <- 400


