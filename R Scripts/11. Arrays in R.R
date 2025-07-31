#######################################################################
#                                                                     #
#                     DATA STRUCTURES IN R                            #
#                          (Arrays)                                   #
#                                                                     #
#######################################################################

#---------------    CREATE ARRAYS    ----------------
# Create arrays using `array()` function

# Create a (3x3) matrix
A <- matrix(data = c(23, 8, 2, 3, 9, 1, 4, 3, 2), nrow = 3)
class(A)    # check the data structure
dim(A)      # check dimension of matrix


# Create a vector
x <- c(3, 12, 8, 9)
class(x)   # output: "numeric" (check lesson on creating vectors)
dim(x)     # output: NULL


# Check documentation on `array()` function
?array

# Create an array (like the vector above), and check data structure
y <- array(data = c(3, 12, 8, 9))
class(y)


# Create 1D Array
array(data = c(3, 12, 8, 9))            # 1D array: default length = 4
array(data = c(3, 12, 8, 9), dim = 4)   # 1D array: specify `dim = 4`
array(data = c(3, 12, 8, 9), dim = 1)   # 1D array: specify `dim = 1`
array(data = c(3, 12, 8, 9), dim = 2)   # 1D array: specify `dim = 2`
array(data = c(3, 12, 8, 9), dim = 6)   # 1D array: specify `dim = 6`



# Create 2D Array
A <- array(data = c(12, 9, 0, 5), dim = c(2,2)) # set `dim` to two numbers
class(A)
dim(A)

B <- array(data = c(12, 9, 0, 5, 6, 10), dim = c(3,2))
class(B)
dim(B)



# Create 3D Arrays
Z <- array(data = c(4, -1, 8, -10), dim = c(2,2,3)) # `dim` to 3 numbers
class(Z)
dim(Z)

# Populate each matrix in 3D with your own numbers
G <- array(
  data = c(
    4, -1, 8, -10,
    10, 100, 1000, 10000,
    1, 2, 3, 4
  ),
  dim = c(2,2,3)
)

# Extract 1st matrix in 3D array G
G[,,1]

# Extract 2nd matrix in 3D array G
G[,,2]

# Extract 3rd matrix in 3D array G
G[,,3]

# Extract element in 1st row and 2nd column in 2nd matrix in 3D array G 
G[1,2,2]
G[,,2][1, 2]



# Create 4D Array (very complex)
H <- array(data = c(4, -1, 8, 10), dim = c(2,2,3,2)) # `dim` to 4 numbers
class(H)
dim(H)


# Populate each matrix with your own numbers in 4D array
V <- array(
  data = c(
    7, 77, 777, 7777,
    100, 200, 300, 400,
    1, 1, 1, 1,
    9, 9, 9, 9,
    10, 10, 10, 10,
    3, 3, 3, 3
  ),
  dim = c(2,2,3,2)
)

# Extract 2nd matrix in 4D array V
V[,,2,1]

# Extract element in 2nd row and 1st column of 2nd matrix in 4D array
V[2,1,2,1]
V[,,2,1][2, 1]

