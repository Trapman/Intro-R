#Basic math, same as Python
2+2

#Basic sequencing, similar to range()
1:100                                 #prints numners 1 to 100 across several lines

#Basic printing:
print("Hello World")
#######################################################################
# ASSIGNING VALUES
a <- 1            # Use <- and not =
c <- d <- e <-3   # Multiple assignments

x <- c(1,2,5,9)   # c = concatenate
x                 # print contents of x in console

########################################################################
# SEQUENCES

# Create sequential data
0:10              # 0 through 10
10:0              # 10 through 0
seq(10)           # 1 to 10. Similar to range() in PY
seq(30, 0, by = -3)  # Count down by 3. Similar to step size in PY

#########################################################################
# MATH

# Surround command with parentheses to also print 

(y <- c(5,1,0,10))  # so this assigns all of that concat to y, then also prints it right away
x + y
x + 2
2^6
sqrt(64)
log10(100)
########################################################################
