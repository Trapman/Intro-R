# DATA TYPES #############################

# Numeric

n1 <- 15  #returns 15
n2 <- 1.5 #returns 1.5

# Character

c1 <- "c"
c2 <- "a string of text"

# Logical / Boolean

l1 <- TRUE  #returns True
l2 <- F     #returns False

# DATA STRUCTURES ####################

## Vector
# default structure in R, it's a one-dimensional collection (row or column)

v1 <- c(1,2,3,4,5)
v2 <- c("a", "b", "c")
v3 <- c(TRUE, TRUE, FALSE, FALSE, TRUE)

## Matrix  use matrix()
#higher dimensional
# can only use when you have data of all the same type

m1 <- matrix(c(TRUE, TRUE, FALSE, FALSE, TRUE, FALSE), nrow = 2)

m2 <- matrix(c("a", "b",
               "c", "d"),
               nrow = 2,
               byrow = T)
                 
## Array ####################################

# Give data, then dimensions (rows, columns, tables)
a1 <- array(c(1:24, c(4,3,2))

## Data Frame #############################################

# Can combine vectors of the same lengths
# Most common type to store large data sets
# use cbind()
# use as.data.frame()
# combine as.data.frame(cbine())

vNumeric  <- c(1,2,3)
vCharacter <-c("a", "b", "c")
vLogical   <-c(T, F, T)

df1 <- cbind(vNumeric, vCharacter, vLogical) 
df1 # Forces all values to most basic data type (in this case, switches everything to a character type, which might not be ideal)

df2 <- as.data.frame(cbind(vNumeric, vCharacter, vLogical))
df2 # makes a data frame with three different data types, usually a better choice

## List ###################################################

# use list()
# loosest structure in R.
# Lists can basically contain anything
# good for XML and JSON types

a1 <- c(1,2,3)
a2 <- c("a", "b", "c", "d")
a3 <- c(T, F, T, F, F)

list1 <- list(a1, a2, a3)

list2 <- list(a1, a2, a3, list1)   # lists within lists

# COERCING TYPES ##################################
# basically means taking a variable of one type and converting it to a variable of another type
# by default a variable goes to the least restrictive type (usually a character)

## Automatic Coercion #############################
# again, goes to the "least restrictive type"

(coerce1 <- c(1, "b", TRUE))
# coerces everything here to a character

## Coerce Numeric to Integer ####################################

(coerce2 <- 5)

(coerce3 <- as.integer(5))

## Coerce Character to Numeric ##################################
(coerce4 <- c("1", "2", "3"))
typeof(coerce4) # returns character

(coerce5 <- as.numeric(c("1", "2", "3")))
typeof(coerce5) # returns numeric

## Coerce Matrix to Data Frame ##################################

(coerce6 <- matrix(1:9, nrow  = 3))
is.matrix(coerce6) # returns True
            
(coerce7 <- as.data.frame(matrix(1:9, nrow = 3)))
is.data.frame(coerce7) # returns True

