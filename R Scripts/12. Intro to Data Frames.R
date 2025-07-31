#######################################################################
#                                                                     #
#                     DATA STRUCTURES IN R                            #
#                 (Data Frames - Introduction)                        #
#                                                                     #
#######################################################################

# Examples of built-in data frames in R

# Print `mtcars` data frame
mtcars

# Check documentation on `mtcars` data frame
?mtcars

# Another data frame called `AirPassengers`
AirPassengers

# AirPassengers is time series data frame, so plot it and see what happens
plot(AirPassengers)

# Check documentation on `AirPassengers` data frame
?AirPassengers


# There is a package called `datasets` which contains built-in data frames
# Type `datasets::` and you'll see the list of the built-in datasets.
datasets::mtcars

