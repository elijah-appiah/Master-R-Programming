#######################################################################
#                                                                     #
#                     DATA STRUCTURES IN R                            #
#                         (Matrices)                                  #
#                                                                     #
#######################################################################

#---------------    CREATE MATRICES    ----------------
# Create a matrix using `matrix()` function

# Check the documentation on `matrix()` function
help(matrix)
?matrix

# Create your first default matrix - Dimension is (1x1)
matrix()
matrix(data = NA, nrow = 1, ncol = 1)


# Create a (1x1) matrix with the value 45
matrix(data = 45, nrow = 1, ncol = 1)
matrix(data = 45)


# Create a (2x1) matrix with the value 45
matrix(data = 45, nrow = 2)


# Create a (2x2) matrix with the value 45
matrix(data = 45, nrow = 2, ncol = 2)


# Create a (2x2) matrix with numbers we specify
matrix(data = c(4, -1, 6, 10), nrow = 2, ncol = 2)


# Create a (2x2) matrix with numbers we specify: `byrow = FALSE` by default
matrix(data = c(4, -1, 6, 10), nrow = 2, ncol = 2, byrow = FALSE)


# Create a (2x2) matrix with numbers we specify: set `byrow = TRUE`
matrix(data = c(4, -1, 6, 10), nrow = 2, ncol = 2, byrow = TRUE)


# Create a (3x2) matrix with `byrow = FALSE` by default
matrix(data = c(3, 90, -1, 4, 8, 11), nrow = 3, ncol = 2)


# Create a (3x3) matrix with `byrow = TRUE`
matrix(data = c(8, 4, 3, -5, 6, -2, 7, 8, -9), nrow = 3, ncol = 3, byrow = TRUE)


# Arrange (3x3) matrix in R in a much cleaner way
matrix(
  data = c(8, 4, 3, -5, 6, -2, 7, 8, -9),
  nrow = 3,
  ncol = 3,
  byrow = TRUE
)


# Create a Symmetric Matrix (also an identity matrix)
matrix(data = c(1,0,0,0,1,0,0,0,1), nrow = 3, ncol = 3, byrow = FALSE)
matrix(data = c(1,0,0,0,1,0,0,0,1), nrow = 3, ncol = 3, byrow = TRUE)


# Create a (3x2) matrix
matrix(data = c(23, 67, 100, -67, 0, 3), nrow = 3, ncol = 2, byrow = FALSE)

# Create a (3x2) matrix without argument names but in order (check documentation)
matrix(c(23, 67, 100, -67, 0, 3), 3, 2, FALSE)

# Interchange arguments but specify the argument names
matrix(nrow = 3, data = c(23, 67, 100, -67, 0, 3), ncol = 2, byrow = FALSE)


# Create matrices with or without nrow or ncol
matrix(data = c(12, 90, 89, -6), nrow = 2)
matrix(data = c(12, 90, 89, -6), ncol = 2)
matrix(data = c(12, 90, 89, -6), nrow = 3)


# Create a diagonal matrix
?diag
diag(x = 1, nrow = 2, ncol = 2)    # (2x2) identity matrix
diag(x = 1, nrow = 3, ncol = 3)    # (3x3) identity matrix
diag(x = 4, nrow = 2, ncol = 2)    # (2x2) diagonal matrix
diag(x = 4, nrow = 3, ncol = 3)    # (3x3) diagonal matrix


# Diagonal matrix with your own values in the principal diagonal
diag(x = c(10, 1000), nrow = 2, ncol = 2)
diag(x = c(1, 2, 3), nrow = 3, ncol = 3)


# The `dimnames` argument (check documentation): `NULL` by default
matrix(
  data = 1:4,
  nrow = 2,
  dimnames = NULL
)


# The `dimnames` argument: empty list is also `NULL` by default
matrix(
  data = 1:4,
  nrow = 2,
  dimnames = list()
)


# The `dimnames` argument: List of length one as row names
matrix(
  data = 1:4,
  nrow = 2,
  dimnames = list(
    c("Row 1", "Row 2")
  )
)


# The `dimnames` argument: List of length two as row names
matrix(
  data = 1:4,
  nrow = 2,
  dimnames = list(
    c("Row 1", "Row 2"),
    c("Column 1", "Column 2")
  )
)


# Create (3x4) matrix A and give it row and column names, respectively 
A <- matrix(
  data = c(77, 89, 12, 100, 99, 87, 37, 12, 25, 8, 1, 9),
  nrow = 3,
  ncol = 4,
  dimnames = list(
    c("Alpha", "Beta", "Gamma"),
    c("North", "South", "East", "West")
  )
)





#---------  Accessing Rows and Columns of Matrices  -----------#

A <- matrix(
  data = c(3, 9, -1, 10, 45, 89, 12, 5, 7),
  nrow = 3,
  ncol = 3
)

# Extract 1st row of Matrix A
A[1, ]

# Extract 2nd row
A[2, ]

# Extract 3rd row
A[3, ]


# Extract 1st column
A[,1]

# Extract 2nd column
A[,2]

# Extract 3rd column
A[,3]


# Extract element in 1st row and 1st column
A[1, 1]

# Extract element in 1st row and 3rd column
A[1, 3]

# Extract element in 3rd row and 1st column
A[3, 1]


# Extract elements in 1st to 2nd rows, and 1st column
A[1:2 , 1]

# Extract elements in 1st to 3rd rows, and 1st column
A[1:3, 1]

# Extract elements in 1st and 3rd rows, and 1st column
A[c(1,3) , 1]

# Extract elements in 1st to 2nd rows, and 1st to 2nd columns
A[1:2 , 1:2]

# Extract elements in 1st and 3rd rows, and ALL COLUMNS
A[c(1,3) , ]
A[c(1,3) , 1:3]

# Extract elements in 1st and 3rd rows, and 1st to 2nd columns
A[c(1,3) , 1:2]

# Extract elements in 2nd row, then 1st and 3rd columns
A[2 , c(1,3)]






#---------  Matrix Operations - ARITHMETIC  -----------

#__________ Addition and Subtraction of Matrices
# NOTE: Two matrices, A and B, can be added and subtracted if they
#       have the same dimension.

# Create two matrices, A and B, with same dimension (2x2)
A <- matrix(data = c(5, 1, 6, 2), nrow = 2, ncol = 2, byrow = TRUE)
B <- matrix(data = c(-3, 1, 8, 9), nrow = 2, ncol = 2)

# Add the two matrices
A + B

# Subtract the two matrices
A - B


# Create two more matrices, C and D, with dimension (3x2)
C <- matrix(data = c(3,9,1,-9,6,8), nrow = 3, ncol = 2)
D <- matrix(data = c(7,11,0,4,20,100), nrow = 3, ncol = 2)

# Add matrices
C + D

# Subtract matrices
C - D


#__________ Multiplication of Matrices
# Conformability condition: Two matrices, A and B, are conformable for
#                           multiplication if the number of columns in the
#                           first matrix (matrix A) equals the number of 
#                           rows in the second matrix (matrix B)

# Create matrix E with dimension (2x2)
E <- matrix(data = c(3, 2, 4, 9), nrow = 2, ncol = 2)

# Create matrix F with dimension (2x3)
F <- matrix(data = c(6, 9, 4, 0, 3, 2), nrow = 2, ncol = 3)

# Check dimension of matrix using `dim()` function
dim(E)
dim(F)

# Pre-multiply matrix E by F
E %*% F


# Create matrix G with dimension (2x2)
G <- matrix(data = c(-4, 9, 6, 2), nrow = 2)

# Create matrix H with dimension (2x2)
H <- matrix(data = c(0, -1, 7, -8), ncol = 2)

# Check dimensions
dim(G)
dim(H)

# Pre-multiply G by H
G %*% H

# Pre-multiply H by G
H %*% G





#---------  Other Matrix Operations  -----------

# Create (2x2) matrix A
A <- matrix(data = c(45, 9, 1, -3), nrow = 2)

#...... Transpose of a matrix ---> `t()`
t(A)


# Create (2x2) matrix B
B <- matrix(data = c(45, 9, 1, -3), nrow = 2)

#........ Determinant of a matrix ---> `det()`
det(B)


# Create (3x3) matrix C
C <- matrix(data = c(3,9,-1,-4,9,10,5,14,20), nrow = 3)
det(C)     # determinant of matrix C


#....... Inverse of a matrix ----> `solve()`

# Calculate inverse of matrix A and matrix C
solve(A)
solve(C)


#....... Eigenvalues and Eigenvectors ----> `eigen()`

# Create (2x2) matrix D and find the eigenvalues and eigenvectors
D <- matrix(data = c(3, 1, 4, -2), nrow = 2)
eigen(D) 
  
#---------  Simultaneous Equations with Matrices  -----------#

# System of Linear Equations
#                       7x - 3y + 6z = 5
#                       5x - 2y + 2z = 11
#                       2x - 3y + 8z = 10

# Matrix form is Ax = b:
#   where A is matrix of coefficients,
#         x is matrix of variables,
#         b is matrix of constants

A <- matrix(data = c(7, -3, 6, 5, -2, 2, 2, -3, 8), nrow = 3, byrow = TRUE)
b <- matrix(data = c(5, 11, 10), nrow = 3)

solve(A) %*% b


